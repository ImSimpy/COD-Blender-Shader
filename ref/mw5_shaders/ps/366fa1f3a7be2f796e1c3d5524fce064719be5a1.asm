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
; shader hash: 638e07fcf8cc16d2b16f881ad09acb2d
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %455 = add i32 %60, 536
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
  br i1 %511, label %1245, label %512

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
  %731 = add i32 %60, 472
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
  %783 = add i32 %60, 456
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
  %807 = add i32 %60, 408
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
  %830 = add i32 %60, 488
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
  %1028 = add i32 %60, 424
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
  %1112 = add i32 %60, 440
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
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 1024
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1182, label %1152

; <label>:1152                                    ; preds = %1144
  %1153 = add i32 %60, 152
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = lshr i32 %1155, 8
  %1160 = and i32 %1159, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = fmul fast float %1161, 0x3F70101020000000
  %1163 = lshr i32 %1155, 16
  %1164 = and i32 %1163, 255
  %1165 = uitofp i32 %1164 to float
  %1166 = fmul fast float %1165, 0x3F70101020000000
  %1167 = fmul fast float %1158, %1158
  %1168 = fmul fast float %1162, %1162
  %1169 = fmul fast float %1166, %1166
  %1170 = add i32 %60, 504
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = fmul fast float %1167, %1176
  %1180 = fmul fast float %1168, %1177
  %1181 = fmul fast float %1169, %1178
  br label %1182

; <label>:1182                                    ; preds = %1152, %1144
  %1183 = phi float [ %1179, %1152 ], [ 0.000000e+00, %1144 ]
  %1184 = phi float [ %1180, %1152 ], [ 0.000000e+00, %1144 ]
  %1185 = phi float [ %1181, %1152 ], [ 0.000000e+00, %1144 ]
  %1186 = fcmp fast ogt float %1183, 0.000000e+00
  %1187 = fcmp fast ogt float %1184, 0.000000e+00
  %1188 = fcmp fast ogt float %1185, 0.000000e+00
  %1189 = call float @dx.op.unary.f32(i32 23, float %1183)  ; Log(value)
  %1190 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1191 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = fmul fast float %1189, 0xBFE62E4300000000
  %1198 = fmul fast float %1197, %1196
  %1199 = fmul fast float %1190, 0xBFE62E4300000000
  %1200 = fmul fast float %1199, %1196
  %1201 = fmul fast float %1191, 0xBFE62E4300000000
  %1202 = fmul fast float %1201, %1196
  %1203 = select i1 %1186, float %1198, float 1.270000e+02
  %1204 = select i1 %1187, float %1200, float 1.270000e+02
  %1205 = select i1 %1188, float %1202, float 1.270000e+02
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 10240
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1230, label %1210

; <label>:1210                                    ; preds = %1182
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 2048
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1230, label %1215

; <label>:1215                                    ; preds = %1210
  %1216 = add i32 %60, 520
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1218, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1220, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = shl i32 %1224, 4
  %1226 = and i32 %1225, 32752
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = fmul fast float %1227, %1222
  %1229 = call float @dx.op.binary.f32(i32 35, float %1228, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1230

; <label>:1230                                    ; preds = %1215, %1210, %1182
  %1231 = phi float [ %1229, %1215 ], [ 0x3F70101020000000, %1210 ], [ 0x3F70101020000000, %1182 ]
  %1232 = add i32 %60, 96
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = lshr i32 %1234, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = fmul fast float %1239, %1240
  %1242 = fadd fast float %1241, %1236
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  br label %1245

; <label>:1245                                    ; preds = %1230, %497
  %1246 = phi float [ 0.000000e+00, %497 ], [ %1098, %1230 ]
  %1247 = phi float [ 0.000000e+00, %497 ], [ %1099, %1230 ]
  %1248 = phi float [ 0.000000e+00, %497 ], [ %1017, %1230 ]
  %1249 = phi float [ 0.000000e+00, %497 ], [ %1018, %1230 ]
  %1250 = phi float [ 0.000000e+00, %497 ], [ %1019, %1230 ]
  %1251 = phi float [ 0.000000e+00, %497 ], [ %1145, %1230 ]
  %1252 = phi float [ 0.000000e+00, %497 ], [ %1146, %1230 ]
  %1253 = phi float [ 0.000000e+00, %497 ], [ %1147, %1230 ]
  %1254 = phi float [ 0.000000e+00, %497 ], [ %1203, %1230 ]
  %1255 = phi float [ 0.000000e+00, %497 ], [ %1204, %1230 ]
  %1256 = phi float [ 0.000000e+00, %497 ], [ %1205, %1230 ]
  %1257 = phi float [ 0.000000e+00, %497 ], [ %1003, %1230 ]
  %1258 = phi float [ 0.000000e+00, %497 ], [ %799, %1230 ]
  %1259 = phi float [ 0.000000e+00, %497 ], [ %1097, %1230 ]
  %1260 = phi float [ 0.000000e+00, %497 ], [ %1100, %1230 ]
  %1261 = phi float [ 0.000000e+00, %497 ], [ %1231, %1230 ]
  %1262 = phi float [ 0.000000e+00, %497 ], [ %1244, %1230 ]
  br i1 %445, label %2249, label %1263

; <label>:1263                                    ; preds = %1245
  %1264 = icmp ult i32 %503, 2
  %1265 = add i32 %60, 40
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %60, 44
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = or i32 %1270, %1267
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %2249, label %1273

; <label>:1273                                    ; preds = %1263
  %1274 = and i32 %1267, 262144
  %1275 = icmp ne i32 %1274, 0
  %1276 = select i1 %1275, float %63, float 1.000000e+00
  %1277 = select i1 %1275, float %64, float 0.000000e+00
  %1278 = select i1 %1275, float %65, float 0.000000e+00
  %1279 = select i1 %1275, float %66, float 1.000000e+00
  %1280 = select i1 %1275, float %67, float %83
  %1281 = select i1 %1275, float %68, float %84
  %1282 = add i32 %60, 300
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = fmul fast float %1286, 0x3F50624DE0000000
  %1288 = add i32 %60, 104
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 16
  %1292 = and i32 %1291, 255
  %1293 = lshr i32 %1290, 24
  %1294 = add i32 %60, 308
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 65535
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = lshr i32 %1296, 16
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = add i32 %60, 48
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = lshr i32 %1303, 22
  %1305 = shl nuw nsw i32 %1304, 5
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = shl i32 %1303, 4
  %1308 = and i32 %1307, 32752
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1303, 7
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1315 = fmul fast float %1314, 1.000000e+03
  %1316 = fmul fast float %355, %1315
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fadd fast float %1317, %345
  %1319 = fmul fast float %356, %1315
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fadd fast float %1320, %347
  %1322 = fmul fast float %1287, %1315
  %1323 = call float @dx.op.unary.f32(i32 22, float %1322)  ; Frc(value)
  %1324 = fmul fast float %1323, 0x401921FB60000000
  %1325 = fadd fast float %1324, %1306
  %1326 = call float @dx.op.unary.f32(i32 13, float %1325)  ; Sin(value)
  %1327 = call float @dx.op.unary.f32(i32 12, float %1325)  ; Cos(value)
  %1328 = fsub fast float -0.000000e+00, %1326
  %1329 = fadd fast float %1280, -5.000000e-01
  %1330 = fadd fast float %1281, -5.000000e-01
  %1331 = fmul fast float %1298, %1329
  %1332 = fmul fast float %1300, %1330
  %1333 = fadd fast float %1331, 5.000000e-01
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = fmul fast float %1309, %1333
  %1336 = fmul fast float %1312, %1334
  %1337 = fmul fast float %1327, %1335
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1336, float %1337)  ; FMad(a,b,c)
  %1339 = fmul fast float %1326, %1335
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1336, float %1339)  ; FMad(a,b,c)
  %1341 = fadd fast float %1318, %1338
  %1342 = fadd fast float %1321, %1340
  %1343 = icmp ugt i32 %1292, 1
  %1344 = icmp ugt i32 %1290, 33554431
  %1345 = or i1 %1344, %1343
  br i1 %1345, label %1346, label %1371

; <label>:1346                                    ; preds = %1273
  %1347 = add i32 %60, 244
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = lshr i32 %1349, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = fmul fast float %1314, %1351
  %1353 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1354 = mul nuw nsw i32 %1292, %1293
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1353, %1355
  %1357 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1358 = fptoui float %1357 to i32
  %1359 = urem i32 %1358, %1292
  %1360 = udiv i32 %1358, %1293
  %1361 = call float @dx.op.unary.f32(i32 22, float %1341)  ; Frc(value)
  %1362 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1363 = uitofp i32 %1359 to float
  %1364 = uitofp i32 %1360 to float
  %1365 = fadd fast float %1361, %1363
  %1366 = fadd fast float %1362, %1364
  %1367 = uitofp i32 %1292 to float
  %1368 = uitofp i32 %1293 to float
  %1369 = fdiv fast float %1365, %1367
  %1370 = fdiv fast float %1366, %1368
  br label %1371

; <label>:1371                                    ; preds = %1346, %1273
  %1372 = phi float [ %1369, %1346 ], [ %1341, %1273 ]
  %1373 = phi float [ %1370, %1346 ], [ %1342, %1273 ]
  %1374 = and i32 %1267, 16777216
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1485, label %1376

; <label>:1376                                    ; preds = %1371
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = fadd fast float %1378, %167
  %1382 = fadd fast float %1379, %168
  %1383 = fadd fast float %1380, %169
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = icmp eq i32 %61, 65535
  br i1 %1387, label %1482, label %1388

; <label>:1388                                    ; preds = %1376
  %1389 = lshr i32 %61, 1
  %1390 = shl i32 %1389, 2
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %61, 1
  %1394 = icmp ne i32 %1393, 0
  %1395 = lshr i32 %1392, 16
  %1396 = and i32 %1392, 65535
  %1397 = select i1 %1394, i32 %1395, i32 %1396
  %1398 = icmp eq i32 %1397, 65535
  br i1 %1398, label %1478, label %1399

; <label>:1399                                    ; preds = %1388
  %1400 = mul nuw nsw i32 %1397, 40
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = add nuw nsw i32 %1400, 12
  %1406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = add nuw nsw i32 %1400, 24
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = add nuw nsw i32 %1400, 36
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = fsub fast float %1381, %1402
  %1419 = fsub fast float %1382, %1403
  %1420 = fsub fast float %1383, %1404
  %1421 = fmul fast float %1417, %1418
  %1422 = fmul fast float %1417, %1419
  %1423 = fmul fast float %1417, %1420
  %1424 = call float @dx.op.unary.f32(i32 27, float %1421)  ; Round_ni(value)
  %1425 = call float @dx.op.unary.f32(i32 27, float %1422)  ; Round_ni(value)
  %1426 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fmul fast float %1427, %1407
  %1431 = fmul fast float %1428, %1408
  %1432 = fmul fast float %1429, %1409
  %1433 = shl i32 %61, 2
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1435, 0
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1439 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1440 = call float @dx.op.unary.f32(i32 22, float %1432)  ; Frc(value)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1437, %dx.types.Handle %55, float %1438, float %1439, float %1440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = fmul fast float %1442, 1.023000e+03
  %1446 = fmul fast float %1443, 1.023000e+03
  %1447 = fmul fast float %1444, 1.023000e+03
  %1448 = fadd fast float %1445, 5.000000e-01
  %1449 = fadd fast float %1446, 5.000000e-01
  %1450 = fadd fast float %1447, 5.000000e-01
  %1451 = call float @dx.op.unary.f32(i32 27, float %1448)  ; Round_ni(value)
  %1452 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1453 = call float @dx.op.unary.f32(i32 27, float %1450)  ; Round_ni(value)
  %1454 = fsub fast float %1421, %1424
  %1455 = fsub fast float %1422, %1425
  %1456 = fsub fast float %1423, %1426
  %1457 = fmul fast float %1454, 7.500000e-01
  %1458 = fmul fast float %1455, 7.500000e-01
  %1459 = fmul fast float %1456, 7.500000e-01
  %1460 = fadd fast float %1424, 1.250000e-01
  %1461 = fadd fast float %1460, %1457
  %1462 = fadd fast float %1461, %1451
  %1463 = fadd fast float %1425, 1.250000e-01
  %1464 = fadd fast float %1463, %1458
  %1465 = fadd fast float %1464, %1452
  %1466 = fadd fast float %1426, 1.250000e-01
  %1467 = fadd fast float %1466, %1459
  %1468 = fadd fast float %1467, %1453
  %1469 = fmul fast float %1462, %1412
  %1470 = fmul fast float %1465, %1413
  %1471 = fmul fast float %1468, %1414
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = add i32 %1473, 0
  %1475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1475, %dx.types.Handle %53, float %1469, float %1470, float %1471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  br label %1478

; <label>:1478                                    ; preds = %1399, %1388
  %1479 = phi float [ %1477, %1399 ], [ -1.000000e+00, %1388 ]
  %1480 = fadd fast float %1479, %1386
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  br label %1482

; <label>:1482                                    ; preds = %1478, %1376
  %1483 = phi float [ %1481, %1478 ], [ %1386, %1376 ]
  %1484 = fmul fast float %1483, %500
  br label %1485

; <label>:1485                                    ; preds = %1482, %1371
  %1486 = phi float [ %1484, %1482 ], [ %500, %1371 ]
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 256
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1537, label %1491

; <label>:1491                                    ; preds = %1485
  %1492 = add i32 %60, 476
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = add i32 %1494, 0
  %1496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1496, %dx.types.Handle %101, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = add i32 %60, 116
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = shl i32 %1501, 4
  %1503 = and i32 %1502, 32752
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = lshr i32 %1501, 7
  %1506 = and i32 %1505, 32752
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fsub fast float 1.000000e+00, %1486
  %1509 = call float @dx.op.binary.f32(i32 35, float %1508, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1510 = bitcast float %1486 to i32
  %1511 = sitofp i32 %1510 to float
  %1512 = fadd fast float %1511, 0xC1CFBF8940000000
  %1513 = fmul fast float %1507, %1512
  %1514 = fadd fast float %1513, 0x41CFBF8940000000
  %1515 = fptosi float %1514 to i32
  %1516 = bitcast i32 %1515 to float
  %1517 = bitcast float %1509 to i32
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %1518, 0xC1CFBF8940000000
  %1520 = fmul fast float %1519, %1507
  %1521 = fadd fast float %1520, 0x41CFBF8940000000
  %1522 = fptosi float %1521 to i32
  %1523 = bitcast i32 %1522 to float
  %1524 = fmul fast float %1516, %1504
  %1525 = fmul fast float %1523, %1504
  %1526 = fsub fast float %1509, %1524
  %1527 = fadd fast float %1525, %1509
  %1528 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1529 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1530 = fsub fast float %1498, %1528
  %1531 = fsub fast float %1529, %1528
  %1532 = bitcast float %1531 to i32
  %1533 = sub nsw i32 2129859010, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1534, %1530
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  br label %1537

; <label>:1537                                    ; preds = %1491, %1485
  %1538 = phi float [ %1536, %1491 ], [ %1486, %1485 ]
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 128
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1559, label %1543

; <label>:1543                                    ; preds = %1537
  %1544 = add i32 %60, 460
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1546, 0
  %1548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1548, %dx.types.Handle %101, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 524288
  %1554 = icmp ne i32 %1553, 0
  %1555 = fcmp fast ogt float %1550, 0x3FE0101020000000
  %1556 = select i1 %1555, float 1.000000e+00, float 0.000000e+00
  %1557 = select i1 %1554, float %1556, float %1550
  %1558 = fmul fast float %1557, %1538
  br label %1559

; <label>:1559                                    ; preds = %1543, %1537
  %1560 = phi float [ %1558, %1543 ], [ %1538, %1537 ]
  %1561 = fcmp fast ult float %1560, 0x3F70101020000000
  br i1 %1561, label %2249, label %1562

; <label>:1562                                    ; preds = %1559
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 16
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1765, label %1567

; <label>:1567                                    ; preds = %1562
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %60, 412
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = add i32 %1572, 0
  %1574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1574, %dx.types.Handle %100, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.f32 %1575, 2
  %1579 = extractvalue %dx.types.ResRet.f32 %1575, 3
  %1580 = and i32 %1569, 255
  %1581 = uitofp i32 %1580 to float
  %1582 = lshr i32 %1569, 8
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1579, %1581
  %1586 = fadd fast float %1585, %1584
  %1587 = fmul fast float %1586, 0x3F70101000000000
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 512
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1600, label %1592

; <label>:1592                                    ; preds = %1567
  %1593 = add i32 %60, 492
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %101, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  br label %1600

; <label>:1600                                    ; preds = %1592, %1567
  %1601 = phi float [ %1599, %1592 ], [ 1.000000e+00, %1567 ]
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 33554432
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1712, label %1606

; <label>:1606                                    ; preds = %1600
  %1607 = add i32 %60, 240
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 65535
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = lshr i32 %1609, 16
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = add i32 %60, 244
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = lshr i32 %1620, 24
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = and i32 %1620, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = lshr i32 %1620, 8
  %1628 = and i32 %1627, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1620, 16
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = add i32 %60, 236
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = lshr i32 %1637, 24
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = and i32 %1637, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = lshr i32 %1637, 8
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = lshr i32 %1637, 16
  %1649 = and i32 %1648, 255
  %1650 = uitofp i32 %1649 to float
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = bitcast float %1576 to i32
  %1653 = ashr i32 %1652, 1
  %1654 = sub nsw i32 1597463174, %1653
  %1655 = bitcast i32 %1654 to float
  %1656 = fmul fast float %1576, 5.000000e-01
  %1657 = fmul fast float %1655, %1655
  %1658 = fmul fast float %1657, %1656
  %1659 = fsub fast float 1.500000e+00, %1658
  %1660 = fmul fast float %1655, %1576
  %1661 = fmul fast float %1660, %1659
  %1662 = bitcast float %1577 to i32
  %1663 = ashr i32 %1662, 1
  %1664 = sub nsw i32 1597463174, %1663
  %1665 = bitcast i32 %1664 to float
  %1666 = fmul fast float %1577, 5.000000e-01
  %1667 = fmul fast float %1665, %1665
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float 1.500000e+00, %1668
  %1670 = fmul fast float %1665, %1577
  %1671 = fmul fast float %1670, %1669
  %1672 = bitcast float %1578 to i32
  %1673 = ashr i32 %1672, 1
  %1674 = sub nsw i32 1597463174, %1673
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1578, 5.000000e-01
  %1677 = fmul fast float %1675, %1675
  %1678 = fmul fast float %1677, %1676
  %1679 = fsub fast float 1.500000e+00, %1678
  %1680 = fmul fast float %1675, %1578
  %1681 = fmul fast float %1680, %1679
  %1682 = fsub fast float %1661, %1643
  %1683 = fsub fast float %1671, %1647
  %1684 = fsub fast float %1681, %1651
  %1685 = fmul fast float %1682, %1611
  %1686 = fmul fast float %1683, %1613
  %1687 = fmul fast float %1684, %1618
  %1688 = fadd fast float %1685, %1626
  %1689 = fadd fast float %1686, %1630
  %1690 = fadd fast float %1687, %1634
  %1691 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = fmul fast float %1691, %1691
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1693, %1693
  %1697 = fsub fast float %1694, %1576
  %1698 = fsub fast float %1695, %1577
  %1699 = fsub fast float %1696, %1578
  %1700 = fmul fast float %1697, %1601
  %1701 = fmul fast float %1698, %1601
  %1702 = fmul fast float %1699, %1601
  %1703 = fadd fast float %1700, %1576
  %1704 = fadd fast float %1701, %1577
  %1705 = fadd fast float %1702, %1578
  %1706 = fadd fast float %1623, %1587
  %1707 = fsub fast float %1706, %1640
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fsub fast float %1708, %1587
  %1710 = fmul fast float %1709, %1601
  %1711 = fadd fast float %1710, %1587
  br label %1765

; <label>:1712                                    ; preds = %1600
  %1713 = and i32 %1603, 134217728
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1749, label %1715

; <label>:1715                                    ; preds = %1712
  %1716 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1719 = fadd fast float %1716, -5.000000e-01
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fmul fast float %1719, %1601
  %1723 = fmul fast float %1720, %1601
  %1724 = fmul fast float %1721, %1601
  %1725 = fadd fast float %1722, 5.000000e-01
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1729 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1730 = call float @dx.op.unary.f32(i32 24, float %1578)  ; Sqrt(value)
  %1731 = fmul fast float %1725, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1728
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1728
  %1736 = fmul fast float %1726, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1729
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1729
  %1741 = fmul fast float %1727, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1730
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1730
  %1746 = fmul fast float %1735, %1735
  %1747 = fmul fast float %1740, %1740
  %1748 = fmul fast float %1745, %1745
  br label %1765

; <label>:1749                                    ; preds = %1712
  %1750 = fmul fast float %332, %332
  %1751 = fmul fast float %336, %336
  %1752 = fmul fast float %340, %340
  %1753 = fadd fast float %1750, -1.000000e+00
  %1754 = fadd fast float %1751, -1.000000e+00
  %1755 = fadd fast float %1752, -1.000000e+00
  %1756 = fmul fast float %1601, %1753
  %1757 = fmul fast float %1601, %1754
  %1758 = fmul fast float %1601, %1755
  %1759 = fadd fast float %1756, 1.000000e+00
  %1760 = fadd fast float %1757, 1.000000e+00
  %1761 = fadd fast float %1758, 1.000000e+00
  %1762 = fmul fast float %1759, %1576
  %1763 = fmul fast float %1760, %1577
  %1764 = fmul fast float %1761, %1578
  br label %1765

; <label>:1765                                    ; preds = %1749, %1715, %1606, %1562
  %1766 = phi float [ %1711, %1606 ], [ %1587, %1715 ], [ %1587, %1749 ], [ 0x3FA23C0BE0000000, %1562 ]
  %1767 = phi float [ %1703, %1606 ], [ %1746, %1715 ], [ %1762, %1749 ], [ 1.000000e+00, %1562 ]
  %1768 = phi float [ %1704, %1606 ], [ %1747, %1715 ], [ %1763, %1749 ], [ 1.000000e+00, %1562 ]
  %1769 = phi float [ %1705, %1606 ], [ %1748, %1715 ], [ %1764, %1749 ], [ 1.000000e+00, %1562 ]
  %1770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.i32 %1770, 1
  %1772 = and i32 %1771, 1
  %1773 = icmp ne i32 %1772, 0
  %1774 = add i32 %60, 356
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp ne i32 %1777, 0
  %1779 = and i1 %1773, %1778
  %1780 = select i1 %1779, float 1.000000e+00, float %1767
  %1781 = select i1 %1779, float 0x3FD3333340000000, float %1768
  %1782 = select i1 %1779, float 0x3FD3333340000000, float %1769
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 32
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1859, label %1787

; <label>:1787                                    ; preds = %1765
  %1788 = add i32 %60, 108
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = add i32 %60, 428
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = add i32 %1793, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1795, %dx.types.Handle %100, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = and i32 %1790, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = lshr i32 %1790, 8
  %1804 = and i32 %1803, 255
  %1805 = uitofp i32 %1804 to float
  %1806 = lshr i32 %1790, 16
  %1807 = and i32 %1806, 255
  %1808 = uitofp i32 %1807 to float
  %1809 = fmul fast float %1808, 0x3F70101000000000
  %1810 = fmul fast float %1797, %1802
  %1811 = fadd fast float %1810, %1805
  %1812 = fmul fast float %1811, 0x3F70101000000000
  %1813 = fadd fast float %1798, -5.000000e-01
  %1814 = fadd fast float %1800, -5.000000e-01
  %1815 = fmul fast float %1813, %1809
  %1816 = fmul fast float %1814, %1809
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fmul fast float %1817, 2.000000e+00
  %1820 = fadd fast float %1819, -1.000000e+00
  %1821 = fmul fast float %1818, 2.000000e+00
  %1822 = fadd fast float %1821, -1.000000e+00
  %1823 = fadd fast float %1820, %1822
  %1824 = fmul fast float %1823, 5.000000e-01
  %1825 = fsub fast float %1820, %1822
  %1826 = fmul fast float %1825, 5.000000e-01
  %1827 = call float @dx.op.unary.f32(i32 6, float %1824)  ; FAbs(value)
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = call float @dx.op.unary.f32(i32 6, float %1826)  ; FAbs(value)
  %1830 = fsub fast float %1828, %1829
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1826, float %1830, float %1824, float %1826, float %1830)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = call float @dx.op.unary.f32(i32 25, float %1831)  ; Rsqrt(value)
  %1833 = fmul fast float %1824, %1832
  %1834 = fmul fast float %1826, %1832
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 67108864
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1855, label %1839

; <label>:1839                                    ; preds = %1787
  %1840 = add i32 %60, 296
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 65535
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 65535
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = lshr i32 %1842, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = fsub fast float %1812, %1850
  %1852 = fmul fast float %1851, %1844
  %1853 = fadd fast float %1852, %1848
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  br label %1855

; <label>:1855                                    ; preds = %1839, %1787
  %1856 = phi float [ %1854, %1839 ], [ %1812, %1787 ]
  %1857 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1858 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1278, float %1279)  ; Dot2(ax,ay,bx,by)
  br label %1859

; <label>:1859                                    ; preds = %1855, %1765
  %1860 = phi float [ %1856, %1855 ], [ 0x3FD6666660000000, %1765 ]
  %1861 = phi float [ %1857, %1855 ], [ 0.000000e+00, %1765 ]
  %1862 = phi float [ %1858, %1855 ], [ 0.000000e+00, %1765 ]
  %1863 = phi float [ %1799, %1855 ], [ 1.000000e+00, %1765 ]
  %1864 = add i32 %60, 176
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = lshr i32 %1866, 22
  %1868 = shl nuw nsw i32 %1867, 5
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 64
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1907, label %1874

; <label>:1874                                    ; preds = %1859
  %1875 = add i32 %60, 444
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = add i32 %1877, 0
  %1879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 131072
  %1883 = icmp eq i32 %1882, 0
  %1884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1879, %dx.types.Handle %100, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = fmul fast float %1885, %320
  %1889 = fmul fast float %1886, %323
  %1890 = fmul fast float %1887, %326
  br i1 %1883, label %1897, label %1891

; <label>:1891                                    ; preds = %1874
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = fmul fast float %1893, %1888
  %1895 = fmul fast float %1893, %1889
  %1896 = fmul fast float %1893, %1890
  br label %1897

; <label>:1897                                    ; preds = %1891, %1874
  %1898 = phi float [ %1894, %1891 ], [ %1888, %1874 ]
  %1899 = phi float [ %1895, %1891 ], [ %1889, %1874 ]
  %1900 = phi float [ %1896, %1891 ], [ %1890, %1874 ]
  %1901 = fmul fast float %1898, %1869
  %1902 = select i1 %261, float %1901, float %1898
  %1903 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1899, float %1900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1904 = select i1 %261, float 0.000000e+00, float %1898
  %1905 = select i1 %261, float %1903, float %1899
  %1906 = select i1 %261, float 0.000000e+00, float %1900
  br label %1907

; <label>:1907                                    ; preds = %1897, %1859
  %1908 = phi float [ %1904, %1897 ], [ 0.000000e+00, %1859 ]
  %1909 = phi float [ %1905, %1897 ], [ 0.000000e+00, %1859 ]
  %1910 = phi float [ %1906, %1897 ], [ 0.000000e+00, %1859 ]
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 1024
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1945, label %1915

; <label>:1915                                    ; preds = %1907
  %1916 = add i32 %60, 168
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = lshr i32 %1918, 8
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1924, 0x3F70101020000000
  %1926 = lshr i32 %1918, 16
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1928, 0x3F70101020000000
  %1930 = fmul fast float %1921, %1921
  %1931 = fmul fast float %1925, %1925
  %1932 = fmul fast float %1929, %1929
  %1933 = add i32 %60, 508
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %1935, 0
  %1937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1937, %dx.types.Handle %101, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = fmul fast float %1930, %1939
  %1943 = fmul fast float %1931, %1940
  %1944 = fmul fast float %1932, %1941
  br label %1945

; <label>:1945                                    ; preds = %1915, %1907
  %1946 = phi float [ %1942, %1915 ], [ 0.000000e+00, %1907 ]
  %1947 = phi float [ %1943, %1915 ], [ 0.000000e+00, %1907 ]
  %1948 = phi float [ %1944, %1915 ], [ 0.000000e+00, %1907 ]
  %1949 = fcmp fast ogt float %1946, 0.000000e+00
  %1950 = fcmp fast ogt float %1947, 0.000000e+00
  %1951 = fcmp fast ogt float %1948, 0.000000e+00
  %1952 = call float @dx.op.unary.f32(i32 23, float %1946)  ; Log(value)
  %1953 = call float @dx.op.unary.f32(i32 23, float %1947)  ; Log(value)
  %1954 = call float @dx.op.unary.f32(i32 23, float %1948)  ; Log(value)
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = lshr i32 %1956, 7
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = fmul fast float %1952, 0xBFE62E4300000000
  %1961 = fmul fast float %1960, %1959
  %1962 = fmul fast float %1953, 0xBFE62E4300000000
  %1963 = fmul fast float %1962, %1959
  %1964 = fmul fast float %1954, 0xBFE62E4300000000
  %1965 = fmul fast float %1964, %1959
  %1966 = select i1 %1949, float %1961, float 1.270000e+02
  %1967 = select i1 %1950, float %1963, float 1.270000e+02
  %1968 = select i1 %1951, float %1965, float 1.270000e+02
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 10240
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %1993, label %1973

; <label>:1973                                    ; preds = %1945
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 2048
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %1993, label %1978

; <label>:1978                                    ; preds = %1973
  %1979 = add i32 %60, 524
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = add i32 %1981, 0
  %1983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1983, %dx.types.Handle %101, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 3
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = shl i32 %1987, 4
  %1989 = and i32 %1988, 32752
  %1990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1989)  ; LegacyF16ToF32(value)
  %1991 = fmul fast float %1990, %1985
  %1992 = call float @dx.op.binary.f32(i32 35, float %1991, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1993

; <label>:1993                                    ; preds = %1978, %1973, %1945
  %1994 = phi float [ %1992, %1978 ], [ 0x3F70101020000000, %1973 ], [ 0x3F70101020000000, %1945 ]
  %1995 = add i32 %60, 112
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = lshr i32 %1997, 8
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = fmul fast float %2002, %2003
  %2005 = fadd fast float %2004, %1999
  %2006 = fmul fast float %2005, 0x3F70101020000000
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  br i1 %1264, label %2008, label %2043

; <label>:2008                                    ; preds = %1993
  %2009 = fmul fast float %1994, 2.000000e+00
  %2010 = fcmp fast olt float %1966, 1.270000e+02
  %2011 = fcmp fast olt float %1967, 1.270000e+02
  %2012 = fcmp fast olt float %1968, 1.270000e+02
  %2013 = fmul fast float %1966, 0xBFF7154760000000
  %2014 = fmul fast float %2013, %2009
  %2015 = fmul fast float %1967, 0xBFF7154760000000
  %2016 = fmul fast float %2015, %2009
  %2017 = fmul fast float %1968, 0xBFF7154760000000
  %2018 = fmul fast float %2017, %2009
  %2019 = call float @dx.op.unary.f32(i32 21, float %2014)  ; Exp(value)
  %2020 = call float @dx.op.unary.f32(i32 21, float %2016)  ; Exp(value)
  %2021 = call float @dx.op.unary.f32(i32 21, float %2018)  ; Exp(value)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2023 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2025 = fadd fast float %2022, -1.000000e+00
  %2026 = select i1 %2010, float %2025, float -1.000000e+00
  %2027 = fadd fast float %2023, -1.000000e+00
  %2028 = select i1 %2011, float %2027, float -1.000000e+00
  %2029 = fadd fast float %2024, -1.000000e+00
  %2030 = select i1 %2012, float %2029, float -1.000000e+00
  %2031 = fmul fast float %2026, %1560
  %2032 = fmul fast float %2028, %1560
  %2033 = fmul fast float %2030, %1560
  %2034 = fadd fast float %2031, 1.000000e+00
  %2035 = fadd fast float %2032, 1.000000e+00
  %2036 = fadd fast float %2033, 1.000000e+00
  %2037 = fmul fast float %2034, %1248
  %2038 = fmul fast float %2035, %1249
  %2039 = fmul fast float %2036, %1250
  %2040 = fmul fast float %2034, %1251
  %2041 = fmul fast float %2035, %1252
  %2042 = fmul fast float %2036, %1253
  br label %2043

; <label>:2043                                    ; preds = %2008, %1993
  %2044 = phi float [ %2037, %2008 ], [ %1248, %1993 ]
  %2045 = phi float [ %2038, %2008 ], [ %1249, %1993 ]
  %2046 = phi float [ %2039, %2008 ], [ %1250, %1993 ]
  %2047 = phi float [ %2040, %2008 ], [ %1251, %1993 ]
  %2048 = phi float [ %2041, %2008 ], [ %1252, %1993 ]
  %2049 = phi float [ %2042, %2008 ], [ %1253, %1993 ]
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 3
  %2053 = icmp eq i32 %2052, 3
  br i1 %2053, label %2132, label %2054

; <label>:2054                                    ; preds = %2043
  %2055 = and i32 %2051, 16
  %2056 = icmp ne i32 %2055, 0
  %2057 = select i1 %2056, float %1560, float 0.000000e+00
  %2058 = icmp eq i32 %2052, 0
  br i1 %2058, label %2059, label %2087

; <label>:2059                                    ; preds = %2054
  %2060 = and i32 %2051, 64
  %2061 = icmp ne i32 %2060, 0
  %2062 = select i1 %2061, float %1560, float 0.000000e+00
  %2063 = fsub fast float %1780, %2044
  %2064 = fsub fast float %1781, %2045
  %2065 = fsub fast float %1782, %2046
  %2066 = fmul fast float %2057, %2063
  %2067 = fmul fast float %2057, %2064
  %2068 = fmul fast float %2057, %2065
  %2069 = fadd fast float %2066, %2044
  %2070 = fadd fast float %2067, %2045
  %2071 = fadd fast float %2068, %2046
  %2072 = fsub fast float %1766, %1257
  %2073 = fmul fast float %2057, %2072
  %2074 = fadd fast float %2073, %1257
  %2075 = fsub fast float %1908, %2047
  %2076 = fsub fast float %1909, %2048
  %2077 = fsub fast float %1910, %2049
  %2078 = fmul fast float %2062, %2075
  %2079 = fmul fast float %2062, %2076
  %2080 = fmul fast float %2062, %2077
  %2081 = fadd fast float %2078, %2047
  %2082 = fadd fast float %2079, %2048
  %2083 = fadd fast float %2080, %2049
  %2084 = fsub fast float %2007, %1262
  %2085 = fmul fast float %2057, %2084
  %2086 = fadd fast float %2085, %1262
  br label %2132

; <label>:2087                                    ; preds = %2054
  %2088 = icmp eq i32 %2052, 1
  br i1 %2088, label %2089, label %2102

; <label>:2089                                    ; preds = %2087
  %2090 = fadd fast float %1780, -1.000000e+00
  %2091 = fadd fast float %1781, -1.000000e+00
  %2092 = fadd fast float %1782, -1.000000e+00
  %2093 = fmul fast float %2057, %2090
  %2094 = fmul fast float %2057, %2091
  %2095 = fmul fast float %2057, %2092
  %2096 = fadd fast float %2093, 1.000000e+00
  %2097 = fadd fast float %2094, 1.000000e+00
  %2098 = fadd fast float %2095, 1.000000e+00
  %2099 = fmul fast float %2096, %2044
  %2100 = fmul fast float %2097, %2045
  %2101 = fmul fast float %2098, %2046
  br label %2132

; <label>:2102                                    ; preds = %2087
  %2103 = icmp eq i32 %2052, 2
  br i1 %2103, label %2104, label %2132

; <label>:2104                                    ; preds = %2102
  %2105 = call float @dx.op.unary.f32(i32 24, float %1780)  ; Sqrt(value)
  %2106 = call float @dx.op.unary.f32(i32 24, float %1781)  ; Sqrt(value)
  %2107 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %2108 = fadd fast float %2105, -5.000000e-01
  %2109 = fadd fast float %2106, -5.000000e-01
  %2110 = fadd fast float %2107, -5.000000e-01
  %2111 = fmul fast float %2108, %2057
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2057
  %2114 = fadd fast float %2111, 5.000000e-01
  %2115 = fadd fast float %2112, 5.000000e-01
  %2116 = fadd fast float %2113, 5.000000e-01
  %2117 = fmul fast float %2114, 2.000000e+00
  %2118 = fsub fast float 1.000000e+00, %2117
  %2119 = fmul fast float %2118, %2044
  %2120 = fadd fast float %2119, %2117
  %2121 = fmul fast float %2120, %2044
  %2122 = fmul fast float %2115, 2.000000e+00
  %2123 = fsub fast float 1.000000e+00, %2122
  %2124 = fmul fast float %2123, %2045
  %2125 = fadd fast float %2124, %2122
  %2126 = fmul fast float %2125, %2045
  %2127 = fmul fast float %2116, 2.000000e+00
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = fmul fast float %2128, %2046
  %2130 = fadd fast float %2129, %2127
  %2131 = fmul fast float %2130, %2046
  br label %2132

; <label>:2132                                    ; preds = %2104, %2102, %2089, %2059, %2043
  %2133 = phi float [ %2044, %2043 ], [ %2121, %2104 ], [ %2044, %2102 ], [ %2099, %2089 ], [ %2069, %2059 ]
  %2134 = phi float [ %2045, %2043 ], [ %2126, %2104 ], [ %2045, %2102 ], [ %2100, %2089 ], [ %2070, %2059 ]
  %2135 = phi float [ %2046, %2043 ], [ %2131, %2104 ], [ %2046, %2102 ], [ %2101, %2089 ], [ %2071, %2059 ]
  %2136 = phi float [ %2047, %2043 ], [ %2047, %2104 ], [ %2047, %2102 ], [ %2047, %2089 ], [ %2081, %2059 ]
  %2137 = phi float [ %2048, %2043 ], [ %2048, %2104 ], [ %2048, %2102 ], [ %2048, %2089 ], [ %2082, %2059 ]
  %2138 = phi float [ %2049, %2043 ], [ %2049, %2104 ], [ %2049, %2102 ], [ %2049, %2089 ], [ %2083, %2059 ]
  %2139 = phi float [ %1257, %2043 ], [ %1257, %2104 ], [ %1257, %2102 ], [ %1257, %2089 ], [ %2074, %2059 ]
  %2140 = phi float [ %1262, %2043 ], [ %1262, %2104 ], [ %1262, %2102 ], [ %1262, %2089 ], [ %2086, %2059 ]
  %2141 = and i32 %2051, 12
  %2142 = icmp eq i32 %2141, 12
  br i1 %2142, label %2249, label %2143

; <label>:2143                                    ; preds = %2132
  %2144 = and i32 %2051, 2097184
  %2145 = icmp eq i32 %2144, 2097184
  %2146 = select i1 %2145, float %1560, float 0.000000e+00
  %2147 = and i32 %2051, 4194336
  %2148 = icmp eq i32 %2147, 4194336
  %2149 = select i1 %2148, float %1560, float 0.000000e+00
  %2150 = and i32 %2051, 8388640
  %2151 = icmp eq i32 %2150, 8388640
  %2152 = select i1 %2151, float %1560, float 0.000000e+00
  %2153 = and i32 %2051, 1024
  %2154 = icmp ne i32 %2153, 0
  %2155 = select i1 %2154, float %1560, float 0.000000e+00
  %2156 = and i32 %2051, 2048
  %2157 = icmp ne i32 %2156, 0
  %2158 = select i1 %2157, float %1560, float 0.000000e+00
  %2159 = icmp eq i32 %2141, 0
  br i1 %2159, label %2160, label %2185

; <label>:2160                                    ; preds = %2143
  %2161 = fsub fast float %1861, %1246
  %2162 = fsub fast float %1862, %1247
  %2163 = fmul fast float %2146, %2161
  %2164 = fmul fast float %2146, %2162
  %2165 = fadd fast float %2163, %1246
  %2166 = fadd fast float %2164, %1247
  %2167 = fsub fast float %1863, %1260
  %2168 = fmul fast float %2149, %2167
  %2169 = fadd fast float %2168, %1260
  %2170 = fsub fast float %1860, %1259
  %2171 = fmul fast float %2152, %2170
  %2172 = fadd fast float %2171, %1259
  %2173 = fsub fast float %1966, %1254
  %2174 = fsub fast float %1967, %1255
  %2175 = fsub fast float %1968, %1256
  %2176 = fmul fast float %2155, %2173
  %2177 = fmul fast float %2155, %2174
  %2178 = fmul fast float %2155, %2175
  %2179 = fadd fast float %2176, %1254
  %2180 = fadd fast float %2177, %1255
  %2181 = fadd fast float %2178, %1256
  %2182 = fsub fast float %1994, %1261
  %2183 = fmul fast float %2158, %2182
  %2184 = fadd fast float %2183, %1261
  br label %2249

; <label>:2185                                    ; preds = %2143
  %2186 = icmp eq i32 %2141, 4
  br i1 %2186, label %2187, label %2227

; <label>:2187                                    ; preds = %2185
  %2188 = fmul fast float %2146, %1861
  %2189 = fmul fast float %2146, %1862
  %2190 = fadd fast float %2188, %1246
  %2191 = fadd fast float %2189, %1247
  %2192 = call float @dx.op.binary.f32(i32 36, float %1260, float %1863)  ; FMin(a,b)
  %2193 = fsub fast float %2192, %1260
  %2194 = fmul fast float %2193, %2149
  %2195 = fadd fast float %2194, %1260
  %2196 = fadd fast float %1860, %1259
  %2197 = fmul fast float %2196, 0x3FF337FAE0000000
  %2198 = fmul fast float %1259, %1259
  %2199 = fmul fast float %1860, %1860
  %2200 = fadd fast float %2199, %2198
  %2201 = fmul fast float %2200, 0x3FE5152B00000000
  %2202 = fmul fast float %1259, 0xBFCC1F85E0000000
  %2203 = fmul fast float %2202, %1860
  %2204 = fadd fast float %2203, 0xBFE1363700000000
  %2205 = fadd fast float %2204, %2197
  %2206 = fsub fast float %2205, %2201
  %2207 = fmul fast float %2196, 0x3FBA6F0D00000000
  %2208 = fmul fast float %2200, 0x3FD0432880000000
  %2209 = fmul fast float %1259, 0xBFEF110800000000
  %2210 = fmul fast float %2209, %1860
  %2211 = fadd fast float %2210, 1.000000e+00
  %2212 = fsub fast float %2211, %2207
  %2213 = fadd fast float %2212, %2208
  %2214 = fdiv fast float %2206, %2213
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = fsub fast float %2215, %1259
  %2217 = fmul fast float %2216, %2152
  %2218 = fadd fast float %2217, %1259
  %2219 = fmul fast float %2155, %1966
  %2220 = fmul fast float %2155, %1967
  %2221 = fmul fast float %2155, %1968
  %2222 = fadd fast float %2219, %1254
  %2223 = fadd fast float %2220, %1255
  %2224 = fadd fast float %2221, %1256
  %2225 = fmul fast float %2158, %1994
  %2226 = fadd fast float %2225, %1261
  br label %2249

; <label>:2227                                    ; preds = %2185
  %2228 = icmp eq i32 %2141, 8
  br i1 %2228, label %2229, label %2249

; <label>:2229                                    ; preds = %2227
  %2230 = fmul fast float %2146, %1861
  %2231 = fmul fast float %2146, %1862
  %2232 = fadd fast float %2230, %1246
  %2233 = fadd fast float %2231, %1247
  %2234 = call float @dx.op.binary.f32(i32 36, float %1260, float %1863)  ; FMin(a,b)
  %2235 = fsub fast float %2234, %1260
  %2236 = fmul fast float %2235, %2149
  %2237 = fadd fast float %2236, %1260
  %2238 = fsub fast float %1860, %1259
  %2239 = fmul fast float %2152, %2238
  %2240 = fadd fast float %2239, %1259
  %2241 = fmul fast float %2155, %1966
  %2242 = fmul fast float %2155, %1967
  %2243 = fmul fast float %2155, %1968
  %2244 = fadd fast float %2241, %1254
  %2245 = fadd fast float %2242, %1255
  %2246 = fadd fast float %2243, %1256
  %2247 = fmul fast float %2158, %1994
  %2248 = fadd fast float %2247, %1261
  br label %2249

; <label>:2249                                    ; preds = %2229, %2227, %2187, %2160, %2132, %1559, %1263, %1245
  %2250 = phi float [ %1246, %2132 ], [ %1246, %1559 ], [ %1246, %1245 ], [ %2232, %2229 ], [ %1246, %2227 ], [ %2190, %2187 ], [ %2165, %2160 ], [ %1246, %1263 ]
  %2251 = phi float [ %1247, %2132 ], [ %1247, %1559 ], [ %1247, %1245 ], [ %2233, %2229 ], [ %1247, %2227 ], [ %2191, %2187 ], [ %2166, %2160 ], [ %1247, %1263 ]
  %2252 = phi float [ %2133, %2132 ], [ %1248, %1559 ], [ %1248, %1245 ], [ %2133, %2229 ], [ %2133, %2227 ], [ %2133, %2187 ], [ %2133, %2160 ], [ %1248, %1263 ]
  %2253 = phi float [ %2134, %2132 ], [ %1249, %1559 ], [ %1249, %1245 ], [ %2134, %2229 ], [ %2134, %2227 ], [ %2134, %2187 ], [ %2134, %2160 ], [ %1249, %1263 ]
  %2254 = phi float [ %2135, %2132 ], [ %1250, %1559 ], [ %1250, %1245 ], [ %2135, %2229 ], [ %2135, %2227 ], [ %2135, %2187 ], [ %2135, %2160 ], [ %1250, %1263 ]
  %2255 = phi float [ %2136, %2132 ], [ %1251, %1559 ], [ %1251, %1245 ], [ %2136, %2229 ], [ %2136, %2227 ], [ %2136, %2187 ], [ %2136, %2160 ], [ %1251, %1263 ]
  %2256 = phi float [ %2137, %2132 ], [ %1252, %1559 ], [ %1252, %1245 ], [ %2137, %2229 ], [ %2137, %2227 ], [ %2137, %2187 ], [ %2137, %2160 ], [ %1252, %1263 ]
  %2257 = phi float [ %2138, %2132 ], [ %1253, %1559 ], [ %1253, %1245 ], [ %2138, %2229 ], [ %2138, %2227 ], [ %2138, %2187 ], [ %2138, %2160 ], [ %1253, %1263 ]
  %2258 = phi float [ %1254, %2132 ], [ %1254, %1559 ], [ %1254, %1245 ], [ %2244, %2229 ], [ %1254, %2227 ], [ %2222, %2187 ], [ %2179, %2160 ], [ %1254, %1263 ]
  %2259 = phi float [ %1255, %2132 ], [ %1255, %1559 ], [ %1255, %1245 ], [ %2245, %2229 ], [ %1255, %2227 ], [ %2223, %2187 ], [ %2180, %2160 ], [ %1255, %1263 ]
  %2260 = phi float [ %1256, %2132 ], [ %1256, %1559 ], [ %1256, %1245 ], [ %2246, %2229 ], [ %1256, %2227 ], [ %2224, %2187 ], [ %2181, %2160 ], [ %1256, %1263 ]
  %2261 = phi float [ %2139, %2132 ], [ %1257, %1559 ], [ %1257, %1245 ], [ %2139, %2229 ], [ %2139, %2227 ], [ %2139, %2187 ], [ %2139, %2160 ], [ %1257, %1263 ]
  %2262 = phi float [ %1259, %2132 ], [ %1259, %1559 ], [ %1259, %1245 ], [ %2240, %2229 ], [ %1259, %2227 ], [ %2218, %2187 ], [ %2172, %2160 ], [ %1259, %1263 ]
  %2263 = phi float [ %1260, %2132 ], [ %1260, %1559 ], [ %1260, %1245 ], [ %2237, %2229 ], [ %1260, %2227 ], [ %2195, %2187 ], [ %2169, %2160 ], [ %1260, %1263 ]
  %2264 = phi float [ %1261, %2132 ], [ %1261, %1559 ], [ %1261, %1245 ], [ %2248, %2229 ], [ %1261, %2227 ], [ %2226, %2187 ], [ %2184, %2160 ], [ %1261, %1263 ]
  %2265 = phi float [ %2140, %2132 ], [ %1262, %1559 ], [ %1262, %1245 ], [ %2140, %2229 ], [ %2140, %2227 ], [ %2140, %2187 ], [ %2140, %2160 ], [ %1262, %1263 ]
  br i1 %447, label %3252, label %2266

; <label>:2266                                    ; preds = %2249
  %2267 = icmp ult i32 %503, 3
  %2268 = add i32 %60, 56
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %60, 60
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = or i32 %2273, %2270
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %3252, label %2276

; <label>:2276                                    ; preds = %2266
  %2277 = and i32 %2270, 262144
  %2278 = icmp ne i32 %2277, 0
  %2279 = select i1 %2278, float %63, float 1.000000e+00
  %2280 = select i1 %2278, float %64, float 0.000000e+00
  %2281 = select i1 %2278, float %65, float 0.000000e+00
  %2282 = select i1 %2278, float %66, float 1.000000e+00
  %2283 = select i1 %2278, float %67, float %83
  %2284 = select i1 %2278, float %68, float %84
  %2285 = add i32 %60, 316
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = lshr i32 %2287, 16
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = fmul fast float %2289, 0x3F50624DE0000000
  %2291 = add i32 %60, 120
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = lshr i32 %2293, 16
  %2295 = and i32 %2294, 255
  %2296 = lshr i32 %2293, 24
  %2297 = add i32 %60, 324
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 65535
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = lshr i32 %2299, 16
  %2303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2302)  ; LegacyF16ToF32(value)
  %2304 = add i32 %60, 64
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = lshr i32 %2306, 22
  %2308 = shl nuw nsw i32 %2307, 5
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = shl i32 %2306, 4
  %2311 = and i32 %2310, 32752
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = lshr i32 %2306, 7
  %2314 = and i32 %2313, 32752
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 3
  %2318 = fmul fast float %2317, 1.000000e+03
  %2319 = fmul fast float %397, %2318
  %2320 = call float @dx.op.unary.f32(i32 22, float %2319)  ; Frc(value)
  %2321 = fadd fast float %2320, %387
  %2322 = fmul fast float %398, %2318
  %2323 = call float @dx.op.unary.f32(i32 22, float %2322)  ; Frc(value)
  %2324 = fadd fast float %2323, %389
  %2325 = fmul fast float %2290, %2318
  %2326 = call float @dx.op.unary.f32(i32 22, float %2325)  ; Frc(value)
  %2327 = fmul fast float %2326, 0x401921FB60000000
  %2328 = fadd fast float %2327, %2309
  %2329 = call float @dx.op.unary.f32(i32 13, float %2328)  ; Sin(value)
  %2330 = call float @dx.op.unary.f32(i32 12, float %2328)  ; Cos(value)
  %2331 = fsub fast float -0.000000e+00, %2329
  %2332 = fadd fast float %2283, -5.000000e-01
  %2333 = fadd fast float %2284, -5.000000e-01
  %2334 = fmul fast float %2301, %2332
  %2335 = fmul fast float %2303, %2333
  %2336 = fadd fast float %2334, 5.000000e-01
  %2337 = fadd fast float %2335, 5.000000e-01
  %2338 = fmul fast float %2312, %2336
  %2339 = fmul fast float %2315, %2337
  %2340 = fmul fast float %2330, %2338
  %2341 = call float @dx.op.tertiary.f32(i32 46, float %2331, float %2339, float %2340)  ; FMad(a,b,c)
  %2342 = fmul fast float %2329, %2338
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %2330, float %2339, float %2342)  ; FMad(a,b,c)
  %2344 = fadd fast float %2321, %2341
  %2345 = fadd fast float %2324, %2343
  %2346 = icmp ugt i32 %2295, 1
  %2347 = icmp ugt i32 %2293, 33554431
  %2348 = or i1 %2347, %2346
  br i1 %2348, label %2349, label %2374

; <label>:2349                                    ; preds = %2276
  %2350 = add i32 %60, 260
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = lshr i32 %2352, 16
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = fmul fast float %2317, %2354
  %2356 = call float @dx.op.unary.f32(i32 22, float %2355)  ; Frc(value)
  %2357 = mul nuw nsw i32 %2295, %2296
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2356, %2358
  %2360 = call float @dx.op.unary.f32(i32 27, float %2359)  ; Round_ni(value)
  %2361 = fptoui float %2360 to i32
  %2362 = urem i32 %2361, %2295
  %2363 = udiv i32 %2361, %2296
  %2364 = call float @dx.op.unary.f32(i32 22, float %2344)  ; Frc(value)
  %2365 = call float @dx.op.unary.f32(i32 22, float %2345)  ; Frc(value)
  %2366 = uitofp i32 %2362 to float
  %2367 = uitofp i32 %2363 to float
  %2368 = fadd fast float %2364, %2366
  %2369 = fadd fast float %2365, %2367
  %2370 = uitofp i32 %2295 to float
  %2371 = uitofp i32 %2296 to float
  %2372 = fdiv fast float %2368, %2370
  %2373 = fdiv fast float %2369, %2371
  br label %2374

; <label>:2374                                    ; preds = %2349, %2276
  %2375 = phi float [ %2372, %2349 ], [ %2344, %2276 ]
  %2376 = phi float [ %2373, %2349 ], [ %2345, %2276 ]
  %2377 = and i32 %2270, 16777216
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2488, label %2379

; <label>:2379                                    ; preds = %2374
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.CBufRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2384 = fadd fast float %2381, %167
  %2385 = fadd fast float %2382, %168
  %2386 = fadd fast float %2383, %169
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = icmp eq i32 %61, 65535
  br i1 %2390, label %2485, label %2391

; <label>:2391                                    ; preds = %2379
  %2392 = lshr i32 %61, 1
  %2393 = shl i32 %2392, 2
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %61, 1
  %2397 = icmp ne i32 %2396, 0
  %2398 = lshr i32 %2395, 16
  %2399 = and i32 %2395, 65535
  %2400 = select i1 %2397, i32 %2398, i32 %2399
  %2401 = icmp eq i32 %2400, 65535
  br i1 %2401, label %2481, label %2402

; <label>:2402                                    ; preds = %2391
  %2403 = mul nuw nsw i32 %2400, 40
  %2404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = add nuw nsw i32 %2403, 12
  %2409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.f32 %2409, 0
  %2411 = extractvalue %dx.types.ResRet.f32 %2409, 1
  %2412 = extractvalue %dx.types.ResRet.f32 %2409, 2
  %2413 = add nuw nsw i32 %2403, 24
  %2414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.ResRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.ResRet.f32 %2414, 2
  %2418 = add nuw nsw i32 %2403, 36
  %2419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = fsub fast float %2384, %2405
  %2422 = fsub fast float %2385, %2406
  %2423 = fsub fast float %2386, %2407
  %2424 = fmul fast float %2420, %2421
  %2425 = fmul fast float %2420, %2422
  %2426 = fmul fast float %2420, %2423
  %2427 = call float @dx.op.unary.f32(i32 27, float %2424)  ; Round_ni(value)
  %2428 = call float @dx.op.unary.f32(i32 27, float %2425)  ; Round_ni(value)
  %2429 = call float @dx.op.unary.f32(i32 27, float %2426)  ; Round_ni(value)
  %2430 = fadd fast float %2427, 5.000000e-01
  %2431 = fadd fast float %2428, 5.000000e-01
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = fmul fast float %2430, %2410
  %2434 = fmul fast float %2431, %2411
  %2435 = fmul fast float %2432, %2412
  %2436 = shl i32 %61, 2
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2438, 0
  %2440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2441 = call float @dx.op.unary.f32(i32 22, float %2433)  ; Frc(value)
  %2442 = call float @dx.op.unary.f32(i32 22, float %2434)  ; Frc(value)
  %2443 = call float @dx.op.unary.f32(i32 22, float %2435)  ; Frc(value)
  %2444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2440, %dx.types.Handle %55, float %2441, float %2442, float %2443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = fmul fast float %2445, 1.023000e+03
  %2449 = fmul fast float %2446, 1.023000e+03
  %2450 = fmul fast float %2447, 1.023000e+03
  %2451 = fadd fast float %2448, 5.000000e-01
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = call float @dx.op.unary.f32(i32 27, float %2451)  ; Round_ni(value)
  %2455 = call float @dx.op.unary.f32(i32 27, float %2452)  ; Round_ni(value)
  %2456 = call float @dx.op.unary.f32(i32 27, float %2453)  ; Round_ni(value)
  %2457 = fsub fast float %2424, %2427
  %2458 = fsub fast float %2425, %2428
  %2459 = fsub fast float %2426, %2429
  %2460 = fmul fast float %2457, 7.500000e-01
  %2461 = fmul fast float %2458, 7.500000e-01
  %2462 = fmul fast float %2459, 7.500000e-01
  %2463 = fadd fast float %2427, 1.250000e-01
  %2464 = fadd fast float %2463, %2460
  %2465 = fadd fast float %2464, %2454
  %2466 = fadd fast float %2428, 1.250000e-01
  %2467 = fadd fast float %2466, %2461
  %2468 = fadd fast float %2467, %2455
  %2469 = fadd fast float %2429, 1.250000e-01
  %2470 = fadd fast float %2469, %2462
  %2471 = fadd fast float %2470, %2456
  %2472 = fmul fast float %2465, %2415
  %2473 = fmul fast float %2468, %2416
  %2474 = fmul fast float %2471, %2417
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = add i32 %2476, 0
  %2478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2478, %dx.types.Handle %53, float %2472, float %2473, float %2474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 0
  br label %2481

; <label>:2481                                    ; preds = %2402, %2391
  %2482 = phi float [ %2480, %2402 ], [ -1.000000e+00, %2391 ]
  %2483 = fadd fast float %2482, %2389
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  br label %2485

; <label>:2485                                    ; preds = %2481, %2379
  %2486 = phi float [ %2484, %2481 ], [ %2389, %2379 ]
  %2487 = fmul fast float %2486, %499
  br label %2488

; <label>:2488                                    ; preds = %2485, %2374
  %2489 = phi float [ %2487, %2485 ], [ %499, %2374 ]
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 256
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2540, label %2494

; <label>:2494                                    ; preds = %2488
  %2495 = add i32 %60, 480
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %2497, 0
  %2499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2499, %dx.types.Handle %101, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = add i32 %60, 132
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = shl i32 %2504, 4
  %2506 = and i32 %2505, 32752
  %2507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2506)  ; LegacyF16ToF32(value)
  %2508 = lshr i32 %2504, 7
  %2509 = and i32 %2508, 32752
  %2510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2509)  ; LegacyF16ToF32(value)
  %2511 = fsub fast float 1.000000e+00, %2489
  %2512 = call float @dx.op.binary.f32(i32 35, float %2511, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2513 = bitcast float %2489 to i32
  %2514 = sitofp i32 %2513 to float
  %2515 = fadd fast float %2514, 0xC1CFBF8940000000
  %2516 = fmul fast float %2510, %2515
  %2517 = fadd fast float %2516, 0x41CFBF8940000000
  %2518 = fptosi float %2517 to i32
  %2519 = bitcast i32 %2518 to float
  %2520 = bitcast float %2512 to i32
  %2521 = sitofp i32 %2520 to float
  %2522 = fadd fast float %2521, 0xC1CFBF8940000000
  %2523 = fmul fast float %2522, %2510
  %2524 = fadd fast float %2523, 0x41CFBF8940000000
  %2525 = fptosi float %2524 to i32
  %2526 = bitcast i32 %2525 to float
  %2527 = fmul fast float %2519, %2507
  %2528 = fmul fast float %2526, %2507
  %2529 = fsub fast float %2512, %2527
  %2530 = fadd fast float %2528, %2512
  %2531 = call float @dx.op.unary.f32(i32 7, float %2529)  ; Saturate(value)
  %2532 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  %2533 = fsub fast float %2501, %2531
  %2534 = fsub fast float %2532, %2531
  %2535 = bitcast float %2534 to i32
  %2536 = sub nsw i32 2129859010, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = fmul fast float %2537, %2533
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  br label %2540

; <label>:2540                                    ; preds = %2494, %2488
  %2541 = phi float [ %2539, %2494 ], [ %2489, %2488 ]
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 128
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2562, label %2546

; <label>:2546                                    ; preds = %2540
  %2547 = add i32 %60, 464
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = add i32 %2549, 0
  %2551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2552 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2551, %dx.types.Handle %101, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2553 = extractvalue %dx.types.ResRet.f32 %2552, 0
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 524288
  %2557 = icmp ne i32 %2556, 0
  %2558 = fcmp fast ogt float %2553, 0x3FE0101020000000
  %2559 = select i1 %2558, float 1.000000e+00, float 0.000000e+00
  %2560 = select i1 %2557, float %2559, float %2553
  %2561 = fmul fast float %2560, %2541
  br label %2562

; <label>:2562                                    ; preds = %2546, %2540
  %2563 = phi float [ %2561, %2546 ], [ %2541, %2540 ]
  %2564 = fcmp fast ult float %2563, 0x3F70101020000000
  br i1 %2564, label %3252, label %2565

; <label>:2565                                    ; preds = %2562
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 16
  %2569 = icmp eq i32 %2568, 0
  br i1 %2569, label %2768, label %2570

; <label>:2570                                    ; preds = %2565
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %60, 416
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = add i32 %2575, 0
  %2577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2576, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2577, %dx.types.Handle %100, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.ResRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.ResRet.f32 %2578, 2
  %2582 = extractvalue %dx.types.ResRet.f32 %2578, 3
  %2583 = and i32 %2572, 255
  %2584 = uitofp i32 %2583 to float
  %2585 = lshr i32 %2572, 8
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2582, %2584
  %2589 = fadd fast float %2588, %2587
  %2590 = fmul fast float %2589, 0x3F70101000000000
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 512
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2603, label %2595

; <label>:2595                                    ; preds = %2570
  %2596 = add i32 %60, 496
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2600, %dx.types.Handle %101, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  br label %2603

; <label>:2603                                    ; preds = %2595, %2570
  %2604 = phi float [ %2602, %2595 ], [ 1.000000e+00, %2570 ]
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 33554432
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2715, label %2609

; <label>:2609                                    ; preds = %2603
  %2610 = add i32 %60, 256
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 65535
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = lshr i32 %2612, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = add i32 %60, 260
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 65535
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 24
  %2625 = uitofp i32 %2624 to float
  %2626 = fmul fast float %2625, 0x3F70101020000000
  %2627 = and i32 %2623, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2628, 0x3F70101020000000
  %2630 = lshr i32 %2623, 8
  %2631 = and i32 %2630, 255
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2632, 0x3F70101020000000
  %2634 = lshr i32 %2623, 16
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = fmul fast float %2636, 0x3F70101020000000
  %2638 = add i32 %60, 252
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = lshr i32 %2640, 24
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = and i32 %2640, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = lshr i32 %2640, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = lshr i32 %2640, 16
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101020000000
  %2655 = bitcast float %2579 to i32
  %2656 = ashr i32 %2655, 1
  %2657 = sub nsw i32 1597463174, %2656
  %2658 = bitcast i32 %2657 to float
  %2659 = fmul fast float %2579, 5.000000e-01
  %2660 = fmul fast float %2658, %2658
  %2661 = fmul fast float %2660, %2659
  %2662 = fsub fast float 1.500000e+00, %2661
  %2663 = fmul fast float %2658, %2579
  %2664 = fmul fast float %2663, %2662
  %2665 = bitcast float %2580 to i32
  %2666 = ashr i32 %2665, 1
  %2667 = sub nsw i32 1597463174, %2666
  %2668 = bitcast i32 %2667 to float
  %2669 = fmul fast float %2580, 5.000000e-01
  %2670 = fmul fast float %2668, %2668
  %2671 = fmul fast float %2670, %2669
  %2672 = fsub fast float 1.500000e+00, %2671
  %2673 = fmul fast float %2668, %2580
  %2674 = fmul fast float %2673, %2672
  %2675 = bitcast float %2581 to i32
  %2676 = ashr i32 %2675, 1
  %2677 = sub nsw i32 1597463174, %2676
  %2678 = bitcast i32 %2677 to float
  %2679 = fmul fast float %2581, 5.000000e-01
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2680, %2679
  %2682 = fsub fast float 1.500000e+00, %2681
  %2683 = fmul fast float %2678, %2581
  %2684 = fmul fast float %2683, %2682
  %2685 = fsub fast float %2664, %2646
  %2686 = fsub fast float %2674, %2650
  %2687 = fsub fast float %2684, %2654
  %2688 = fmul fast float %2685, %2614
  %2689 = fmul fast float %2686, %2616
  %2690 = fmul fast float %2687, %2621
  %2691 = fadd fast float %2688, %2629
  %2692 = fadd fast float %2689, %2633
  %2693 = fadd fast float %2690, %2637
  %2694 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2695 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2696 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2697 = fmul fast float %2694, %2694
  %2698 = fmul fast float %2695, %2695
  %2699 = fmul fast float %2696, %2696
  %2700 = fsub fast float %2697, %2579
  %2701 = fsub fast float %2698, %2580
  %2702 = fsub fast float %2699, %2581
  %2703 = fmul fast float %2700, %2604
  %2704 = fmul fast float %2701, %2604
  %2705 = fmul fast float %2702, %2604
  %2706 = fadd fast float %2703, %2579
  %2707 = fadd fast float %2704, %2580
  %2708 = fadd fast float %2705, %2581
  %2709 = fadd fast float %2626, %2590
  %2710 = fsub fast float %2709, %2643
  %2711 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2712 = fsub fast float %2711, %2590
  %2713 = fmul fast float %2712, %2604
  %2714 = fadd fast float %2713, %2590
  br label %2768

; <label>:2715                                    ; preds = %2603
  %2716 = and i32 %2606, 134217728
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2752, label %2718

; <label>:2718                                    ; preds = %2715
  %2719 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fmul fast float %2722, %2604
  %2726 = fmul fast float %2723, %2604
  %2727 = fmul fast float %2724, %2604
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2732 = call float @dx.op.unary.f32(i32 24, float %2580)  ; Sqrt(value)
  %2733 = call float @dx.op.unary.f32(i32 24, float %2581)  ; Sqrt(value)
  %2734 = fmul fast float %2728, 2.000000e+00
  %2735 = fsub fast float 1.000000e+00, %2734
  %2736 = fmul fast float %2735, %2731
  %2737 = fadd fast float %2736, %2734
  %2738 = fmul fast float %2737, %2731
  %2739 = fmul fast float %2729, 2.000000e+00
  %2740 = fsub fast float 1.000000e+00, %2739
  %2741 = fmul fast float %2740, %2732
  %2742 = fadd fast float %2741, %2739
  %2743 = fmul fast float %2742, %2732
  %2744 = fmul fast float %2730, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2733
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2733
  %2749 = fmul fast float %2738, %2738
  %2750 = fmul fast float %2743, %2743
  %2751 = fmul fast float %2748, %2748
  br label %2768

; <label>:2752                                    ; preds = %2715
  %2753 = fmul fast float %374, %374
  %2754 = fmul fast float %378, %378
  %2755 = fmul fast float %382, %382
  %2756 = fadd fast float %2753, -1.000000e+00
  %2757 = fadd fast float %2754, -1.000000e+00
  %2758 = fadd fast float %2755, -1.000000e+00
  %2759 = fmul fast float %2604, %2756
  %2760 = fmul fast float %2604, %2757
  %2761 = fmul fast float %2604, %2758
  %2762 = fadd fast float %2759, 1.000000e+00
  %2763 = fadd fast float %2760, 1.000000e+00
  %2764 = fadd fast float %2761, 1.000000e+00
  %2765 = fmul fast float %2762, %2579
  %2766 = fmul fast float %2763, %2580
  %2767 = fmul fast float %2764, %2581
  br label %2768

; <label>:2768                                    ; preds = %2752, %2718, %2609, %2565
  %2769 = phi float [ %2714, %2609 ], [ %2590, %2718 ], [ %2590, %2752 ], [ 0x3FA23C0BE0000000, %2565 ]
  %2770 = phi float [ %2706, %2609 ], [ %2749, %2718 ], [ %2765, %2752 ], [ 1.000000e+00, %2565 ]
  %2771 = phi float [ %2707, %2609 ], [ %2750, %2718 ], [ %2766, %2752 ], [ 1.000000e+00, %2565 ]
  %2772 = phi float [ %2708, %2609 ], [ %2751, %2718 ], [ %2767, %2752 ], [ 1.000000e+00, %2565 ]
  %2773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.i32 %2773, 1
  %2775 = and i32 %2774, 1
  %2776 = icmp ne i32 %2775, 0
  %2777 = add i32 %60, 356
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 32
  %2781 = icmp ne i32 %2780, 0
  %2782 = and i1 %2776, %2781
  %2783 = select i1 %2782, float 1.000000e+00, float %2770
  %2784 = select i1 %2782, float 0x3FD3333340000000, float %2771
  %2785 = select i1 %2782, float 0x3FD3333340000000, float %2772
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 32
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2862, label %2790

; <label>:2790                                    ; preds = %2768
  %2791 = add i32 %60, 124
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = add i32 %60, 432
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = add i32 %2796, 0
  %2798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2798, %dx.types.Handle %100, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.ResRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.ResRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.ResRet.f32 %2799, 3
  %2804 = and i32 %2793, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = lshr i32 %2793, 8
  %2807 = and i32 %2806, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = lshr i32 %2793, 16
  %2810 = and i32 %2809, 255
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2811, 0x3F70101000000000
  %2813 = fmul fast float %2800, %2805
  %2814 = fadd fast float %2813, %2808
  %2815 = fmul fast float %2814, 0x3F70101000000000
  %2816 = fadd fast float %2801, -5.000000e-01
  %2817 = fadd fast float %2803, -5.000000e-01
  %2818 = fmul fast float %2816, %2812
  %2819 = fmul fast float %2817, %2812
  %2820 = fadd fast float %2818, 5.000000e-01
  %2821 = fadd fast float %2819, 5.000000e-01
  %2822 = fmul fast float %2820, 2.000000e+00
  %2823 = fadd fast float %2822, -1.000000e+00
  %2824 = fmul fast float %2821, 2.000000e+00
  %2825 = fadd fast float %2824, -1.000000e+00
  %2826 = fadd fast float %2823, %2825
  %2827 = fmul fast float %2826, 5.000000e-01
  %2828 = fsub fast float %2823, %2825
  %2829 = fmul fast float %2828, 5.000000e-01
  %2830 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = call float @dx.op.unary.f32(i32 6, float %2829)  ; FAbs(value)
  %2833 = fsub fast float %2831, %2832
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2827, float %2829, float %2833, float %2827, float %2829, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = call float @dx.op.unary.f32(i32 25, float %2834)  ; Rsqrt(value)
  %2836 = fmul fast float %2827, %2835
  %2837 = fmul fast float %2829, %2835
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 67108864
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %2858, label %2842

; <label>:2842                                    ; preds = %2790
  %2843 = add i32 %60, 312
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = and i32 %2845, 65535
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = and i32 %2849, 65535
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = lshr i32 %2845, 16
  %2853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2852)  ; LegacyF16ToF32(value)
  %2854 = fsub fast float %2815, %2853
  %2855 = fmul fast float %2854, %2847
  %2856 = fadd fast float %2855, %2851
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  br label %2858

; <label>:2858                                    ; preds = %2842, %2790
  %2859 = phi float [ %2857, %2842 ], [ %2815, %2790 ]
  %2860 = call float @dx.op.dot2.f32(i32 54, float %2836, float %2837, float %2279, float %2280)  ; Dot2(ax,ay,bx,by)
  %2861 = call float @dx.op.dot2.f32(i32 54, float %2836, float %2837, float %2281, float %2282)  ; Dot2(ax,ay,bx,by)
  br label %2862

; <label>:2862                                    ; preds = %2858, %2768
  %2863 = phi float [ %2859, %2858 ], [ 0x3FD6666660000000, %2768 ]
  %2864 = phi float [ %2860, %2858 ], [ 0.000000e+00, %2768 ]
  %2865 = phi float [ %2861, %2858 ], [ 0.000000e+00, %2768 ]
  %2866 = phi float [ %2802, %2858 ], [ 1.000000e+00, %2768 ]
  %2867 = add i32 %60, 192
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 22
  %2871 = shl nuw nsw i32 %2870, 5
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 64
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2910, label %2877

; <label>:2877                                    ; preds = %2862
  %2878 = add i32 %60, 448
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = add i32 %2880, 0
  %2882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 131072
  %2886 = icmp eq i32 %2885, 0
  %2887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2882, %dx.types.Handle %100, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.ResRet.f32 %2887, 2
  %2891 = fmul fast float %2888, %362
  %2892 = fmul fast float %2889, %365
  %2893 = fmul fast float %2890, %368
  br i1 %2886, label %2900, label %2894

; <label>:2894                                    ; preds = %2877
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2897 = fmul fast float %2896, %2891
  %2898 = fmul fast float %2896, %2892
  %2899 = fmul fast float %2896, %2893
  br label %2900

; <label>:2900                                    ; preds = %2894, %2877
  %2901 = phi float [ %2897, %2894 ], [ %2891, %2877 ]
  %2902 = phi float [ %2898, %2894 ], [ %2892, %2877 ]
  %2903 = phi float [ %2899, %2894 ], [ %2893, %2877 ]
  %2904 = fmul fast float %2901, %2872
  %2905 = select i1 %261, float %2904, float %2901
  %2906 = call float @dx.op.dot3.f32(i32 55, float %2905, float %2902, float %2903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = select i1 %261, float 0.000000e+00, float %2901
  %2908 = select i1 %261, float %2906, float %2902
  %2909 = select i1 %261, float 0.000000e+00, float %2903
  br label %2910

; <label>:2910                                    ; preds = %2900, %2862
  %2911 = phi float [ %2907, %2900 ], [ 0.000000e+00, %2862 ]
  %2912 = phi float [ %2908, %2900 ], [ 0.000000e+00, %2862 ]
  %2913 = phi float [ %2909, %2900 ], [ 0.000000e+00, %2862 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 1024
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2948, label %2918

; <label>:2918                                    ; preds = %2910
  %2919 = add i32 %60, 184
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2923, 0x3F70101020000000
  %2925 = lshr i32 %2921, 8
  %2926 = and i32 %2925, 255
  %2927 = uitofp i32 %2926 to float
  %2928 = fmul fast float %2927, 0x3F70101020000000
  %2929 = lshr i32 %2921, 16
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = fmul fast float %2931, 0x3F70101020000000
  %2933 = fmul fast float %2924, %2924
  %2934 = fmul fast float %2928, %2928
  %2935 = fmul fast float %2932, %2932
  %2936 = add i32 %60, 512
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = add i32 %2938, 0
  %2940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2940, %dx.types.Handle %101, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = fmul fast float %2933, %2942
  %2946 = fmul fast float %2934, %2943
  %2947 = fmul fast float %2935, %2944
  br label %2948

; <label>:2948                                    ; preds = %2918, %2910
  %2949 = phi float [ %2945, %2918 ], [ 0.000000e+00, %2910 ]
  %2950 = phi float [ %2946, %2918 ], [ 0.000000e+00, %2910 ]
  %2951 = phi float [ %2947, %2918 ], [ 0.000000e+00, %2910 ]
  %2952 = fcmp fast ogt float %2949, 0.000000e+00
  %2953 = fcmp fast ogt float %2950, 0.000000e+00
  %2954 = fcmp fast ogt float %2951, 0.000000e+00
  %2955 = call float @dx.op.unary.f32(i32 23, float %2949)  ; Log(value)
  %2956 = call float @dx.op.unary.f32(i32 23, float %2950)  ; Log(value)
  %2957 = call float @dx.op.unary.f32(i32 23, float %2951)  ; Log(value)
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = lshr i32 %2959, 7
  %2961 = and i32 %2960, 32752
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = fmul fast float %2955, 0xBFE62E4300000000
  %2964 = fmul fast float %2963, %2962
  %2965 = fmul fast float %2956, 0xBFE62E4300000000
  %2966 = fmul fast float %2965, %2962
  %2967 = fmul fast float %2957, 0xBFE62E4300000000
  %2968 = fmul fast float %2967, %2962
  %2969 = select i1 %2952, float %2964, float 1.270000e+02
  %2970 = select i1 %2953, float %2966, float 1.270000e+02
  %2971 = select i1 %2954, float %2968, float 1.270000e+02
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 10240
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %2996, label %2976

; <label>:2976                                    ; preds = %2948
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 2048
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %2996, label %2981

; <label>:2981                                    ; preds = %2976
  %2982 = add i32 %60, 528
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = add i32 %2984, 0
  %2986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2986, %dx.types.Handle %101, float %2375, float %2376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 3
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = shl i32 %2990, 4
  %2992 = and i32 %2991, 32752
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = fmul fast float %2993, %2988
  %2995 = call float @dx.op.binary.f32(i32 35, float %2994, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2996

; <label>:2996                                    ; preds = %2981, %2976, %2948
  %2997 = phi float [ %2995, %2981 ], [ 0x3F70101020000000, %2976 ], [ 0x3F70101020000000, %2948 ]
  %2998 = add i32 %60, 128
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 255
  %3002 = uitofp i32 %3001 to float
  %3003 = lshr i32 %3000, 8
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = call float @dx.op.dot3.f32(i32 55, float %2783, float %2784, float %2785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = fmul fast float %3005, %3006
  %3008 = fadd fast float %3007, %3002
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  br i1 %2267, label %3011, label %3046

; <label>:3011                                    ; preds = %2996
  %3012 = fmul fast float %2997, 2.000000e+00
  %3013 = fcmp fast olt float %2969, 1.270000e+02
  %3014 = fcmp fast olt float %2970, 1.270000e+02
  %3015 = fcmp fast olt float %2971, 1.270000e+02
  %3016 = fmul fast float %2969, 0xBFF7154760000000
  %3017 = fmul fast float %3016, %3012
  %3018 = fmul fast float %2970, 0xBFF7154760000000
  %3019 = fmul fast float %3018, %3012
  %3020 = fmul fast float %2971, 0xBFF7154760000000
  %3021 = fmul fast float %3020, %3012
  %3022 = call float @dx.op.unary.f32(i32 21, float %3017)  ; Exp(value)
  %3023 = call float @dx.op.unary.f32(i32 21, float %3019)  ; Exp(value)
  %3024 = call float @dx.op.unary.f32(i32 21, float %3021)  ; Exp(value)
  %3025 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3026 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3027 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3028 = fadd fast float %3025, -1.000000e+00
  %3029 = select i1 %3013, float %3028, float -1.000000e+00
  %3030 = fadd fast float %3026, -1.000000e+00
  %3031 = select i1 %3014, float %3030, float -1.000000e+00
  %3032 = fadd fast float %3027, -1.000000e+00
  %3033 = select i1 %3015, float %3032, float -1.000000e+00
  %3034 = fmul fast float %3029, %2563
  %3035 = fmul fast float %3031, %2563
  %3036 = fmul fast float %3033, %2563
  %3037 = fadd fast float %3034, 1.000000e+00
  %3038 = fadd fast float %3035, 1.000000e+00
  %3039 = fadd fast float %3036, 1.000000e+00
  %3040 = fmul fast float %3037, %2252
  %3041 = fmul fast float %3038, %2253
  %3042 = fmul fast float %3039, %2254
  %3043 = fmul fast float %3037, %2255
  %3044 = fmul fast float %3038, %2256
  %3045 = fmul fast float %3039, %2257
  br label %3046

; <label>:3046                                    ; preds = %3011, %2996
  %3047 = phi float [ %3040, %3011 ], [ %2252, %2996 ]
  %3048 = phi float [ %3041, %3011 ], [ %2253, %2996 ]
  %3049 = phi float [ %3042, %3011 ], [ %2254, %2996 ]
  %3050 = phi float [ %3043, %3011 ], [ %2255, %2996 ]
  %3051 = phi float [ %3044, %3011 ], [ %2256, %2996 ]
  %3052 = phi float [ %3045, %3011 ], [ %2257, %2996 ]
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %3054, 3
  %3056 = icmp eq i32 %3055, 3
  br i1 %3056, label %3135, label %3057

; <label>:3057                                    ; preds = %3046
  %3058 = and i32 %3054, 16
  %3059 = icmp ne i32 %3058, 0
  %3060 = select i1 %3059, float %2563, float 0.000000e+00
  %3061 = icmp eq i32 %3055, 0
  br i1 %3061, label %3062, label %3090

; <label>:3062                                    ; preds = %3057
  %3063 = and i32 %3054, 64
  %3064 = icmp ne i32 %3063, 0
  %3065 = select i1 %3064, float %2563, float 0.000000e+00
  %3066 = fsub fast float %2783, %3047
  %3067 = fsub fast float %2784, %3048
  %3068 = fsub fast float %2785, %3049
  %3069 = fmul fast float %3060, %3066
  %3070 = fmul fast float %3060, %3067
  %3071 = fmul fast float %3060, %3068
  %3072 = fadd fast float %3069, %3047
  %3073 = fadd fast float %3070, %3048
  %3074 = fadd fast float %3071, %3049
  %3075 = fsub fast float %2769, %2261
  %3076 = fmul fast float %3060, %3075
  %3077 = fadd fast float %3076, %2261
  %3078 = fsub fast float %2911, %3050
  %3079 = fsub fast float %2912, %3051
  %3080 = fsub fast float %2913, %3052
  %3081 = fmul fast float %3065, %3078
  %3082 = fmul fast float %3065, %3079
  %3083 = fmul fast float %3065, %3080
  %3084 = fadd fast float %3081, %3050
  %3085 = fadd fast float %3082, %3051
  %3086 = fadd fast float %3083, %3052
  %3087 = fsub fast float %3010, %2265
  %3088 = fmul fast float %3060, %3087
  %3089 = fadd fast float %3088, %2265
  br label %3135

; <label>:3090                                    ; preds = %3057
  %3091 = icmp eq i32 %3055, 1
  br i1 %3091, label %3092, label %3105

; <label>:3092                                    ; preds = %3090
  %3093 = fadd fast float %2783, -1.000000e+00
  %3094 = fadd fast float %2784, -1.000000e+00
  %3095 = fadd fast float %2785, -1.000000e+00
  %3096 = fmul fast float %3060, %3093
  %3097 = fmul fast float %3060, %3094
  %3098 = fmul fast float %3060, %3095
  %3099 = fadd fast float %3096, 1.000000e+00
  %3100 = fadd fast float %3097, 1.000000e+00
  %3101 = fadd fast float %3098, 1.000000e+00
  %3102 = fmul fast float %3099, %3047
  %3103 = fmul fast float %3100, %3048
  %3104 = fmul fast float %3101, %3049
  br label %3135

; <label>:3105                                    ; preds = %3090
  %3106 = icmp eq i32 %3055, 2
  br i1 %3106, label %3107, label %3135

; <label>:3107                                    ; preds = %3105
  %3108 = call float @dx.op.unary.f32(i32 24, float %2783)  ; Sqrt(value)
  %3109 = call float @dx.op.unary.f32(i32 24, float %2784)  ; Sqrt(value)
  %3110 = call float @dx.op.unary.f32(i32 24, float %2785)  ; Sqrt(value)
  %3111 = fadd fast float %3108, -5.000000e-01
  %3112 = fadd fast float %3109, -5.000000e-01
  %3113 = fadd fast float %3110, -5.000000e-01
  %3114 = fmul fast float %3111, %3060
  %3115 = fmul fast float %3112, %3060
  %3116 = fmul fast float %3113, %3060
  %3117 = fadd fast float %3114, 5.000000e-01
  %3118 = fadd fast float %3115, 5.000000e-01
  %3119 = fadd fast float %3116, 5.000000e-01
  %3120 = fmul fast float %3117, 2.000000e+00
  %3121 = fsub fast float 1.000000e+00, %3120
  %3122 = fmul fast float %3121, %3047
  %3123 = fadd fast float %3122, %3120
  %3124 = fmul fast float %3123, %3047
  %3125 = fmul fast float %3118, 2.000000e+00
  %3126 = fsub fast float 1.000000e+00, %3125
  %3127 = fmul fast float %3126, %3048
  %3128 = fadd fast float %3127, %3125
  %3129 = fmul fast float %3128, %3048
  %3130 = fmul fast float %3119, 2.000000e+00
  %3131 = fsub fast float 1.000000e+00, %3130
  %3132 = fmul fast float %3131, %3049
  %3133 = fadd fast float %3132, %3130
  %3134 = fmul fast float %3133, %3049
  br label %3135

; <label>:3135                                    ; preds = %3107, %3105, %3092, %3062, %3046
  %3136 = phi float [ %3047, %3046 ], [ %3124, %3107 ], [ %3047, %3105 ], [ %3102, %3092 ], [ %3072, %3062 ]
  %3137 = phi float [ %3048, %3046 ], [ %3129, %3107 ], [ %3048, %3105 ], [ %3103, %3092 ], [ %3073, %3062 ]
  %3138 = phi float [ %3049, %3046 ], [ %3134, %3107 ], [ %3049, %3105 ], [ %3104, %3092 ], [ %3074, %3062 ]
  %3139 = phi float [ %3050, %3046 ], [ %3050, %3107 ], [ %3050, %3105 ], [ %3050, %3092 ], [ %3084, %3062 ]
  %3140 = phi float [ %3051, %3046 ], [ %3051, %3107 ], [ %3051, %3105 ], [ %3051, %3092 ], [ %3085, %3062 ]
  %3141 = phi float [ %3052, %3046 ], [ %3052, %3107 ], [ %3052, %3105 ], [ %3052, %3092 ], [ %3086, %3062 ]
  %3142 = phi float [ %2261, %3046 ], [ %2261, %3107 ], [ %2261, %3105 ], [ %2261, %3092 ], [ %3077, %3062 ]
  %3143 = phi float [ %2265, %3046 ], [ %2265, %3107 ], [ %2265, %3105 ], [ %2265, %3092 ], [ %3089, %3062 ]
  %3144 = and i32 %3054, 12
  %3145 = icmp eq i32 %3144, 12
  br i1 %3145, label %3252, label %3146

; <label>:3146                                    ; preds = %3135
  %3147 = and i32 %3054, 2097184
  %3148 = icmp eq i32 %3147, 2097184
  %3149 = select i1 %3148, float %2563, float 0.000000e+00
  %3150 = and i32 %3054, 4194336
  %3151 = icmp eq i32 %3150, 4194336
  %3152 = select i1 %3151, float %2563, float 0.000000e+00
  %3153 = and i32 %3054, 8388640
  %3154 = icmp eq i32 %3153, 8388640
  %3155 = select i1 %3154, float %2563, float 0.000000e+00
  %3156 = and i32 %3054, 1024
  %3157 = icmp ne i32 %3156, 0
  %3158 = select i1 %3157, float %2563, float 0.000000e+00
  %3159 = and i32 %3054, 2048
  %3160 = icmp ne i32 %3159, 0
  %3161 = select i1 %3160, float %2563, float 0.000000e+00
  %3162 = icmp eq i32 %3144, 0
  br i1 %3162, label %3163, label %3188

; <label>:3163                                    ; preds = %3146
  %3164 = fsub fast float %2864, %2250
  %3165 = fsub fast float %2865, %2251
  %3166 = fmul fast float %3149, %3164
  %3167 = fmul fast float %3149, %3165
  %3168 = fadd fast float %3166, %2250
  %3169 = fadd fast float %3167, %2251
  %3170 = fsub fast float %2866, %2263
  %3171 = fmul fast float %3152, %3170
  %3172 = fadd fast float %3171, %2263
  %3173 = fsub fast float %2863, %2262
  %3174 = fmul fast float %3155, %3173
  %3175 = fadd fast float %3174, %2262
  %3176 = fsub fast float %2969, %2258
  %3177 = fsub fast float %2970, %2259
  %3178 = fsub fast float %2971, %2260
  %3179 = fmul fast float %3158, %3176
  %3180 = fmul fast float %3158, %3177
  %3181 = fmul fast float %3158, %3178
  %3182 = fadd fast float %3179, %2258
  %3183 = fadd fast float %3180, %2259
  %3184 = fadd fast float %3181, %2260
  %3185 = fsub fast float %2997, %2264
  %3186 = fmul fast float %3161, %3185
  %3187 = fadd fast float %3186, %2264
  br label %3252

; <label>:3188                                    ; preds = %3146
  %3189 = icmp eq i32 %3144, 4
  br i1 %3189, label %3190, label %3230

; <label>:3190                                    ; preds = %3188
  %3191 = fmul fast float %3149, %2864
  %3192 = fmul fast float %3149, %2865
  %3193 = fadd fast float %3191, %2250
  %3194 = fadd fast float %3192, %2251
  %3195 = call float @dx.op.binary.f32(i32 36, float %2263, float %2866)  ; FMin(a,b)
  %3196 = fsub fast float %3195, %2263
  %3197 = fmul fast float %3196, %3152
  %3198 = fadd fast float %3197, %2263
  %3199 = fadd fast float %2863, %2262
  %3200 = fmul fast float %3199, 0x3FF337FAE0000000
  %3201 = fmul fast float %2262, %2262
  %3202 = fmul fast float %2863, %2863
  %3203 = fadd fast float %3202, %3201
  %3204 = fmul fast float %3203, 0x3FE5152B00000000
  %3205 = fmul fast float %2262, 0xBFCC1F85E0000000
  %3206 = fmul fast float %3205, %2863
  %3207 = fadd fast float %3206, 0xBFE1363700000000
  %3208 = fadd fast float %3207, %3200
  %3209 = fsub fast float %3208, %3204
  %3210 = fmul fast float %3199, 0x3FBA6F0D00000000
  %3211 = fmul fast float %3203, 0x3FD0432880000000
  %3212 = fmul fast float %2262, 0xBFEF110800000000
  %3213 = fmul fast float %3212, %2863
  %3214 = fadd fast float %3213, 1.000000e+00
  %3215 = fsub fast float %3214, %3210
  %3216 = fadd fast float %3215, %3211
  %3217 = fdiv fast float %3209, %3216
  %3218 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3219 = fsub fast float %3218, %2262
  %3220 = fmul fast float %3219, %3155
  %3221 = fadd fast float %3220, %2262
  %3222 = fmul fast float %3158, %2969
  %3223 = fmul fast float %3158, %2970
  %3224 = fmul fast float %3158, %2971
  %3225 = fadd fast float %3222, %2258
  %3226 = fadd fast float %3223, %2259
  %3227 = fadd fast float %3224, %2260
  %3228 = fmul fast float %3161, %2997
  %3229 = fadd fast float %3228, %2264
  br label %3252

; <label>:3230                                    ; preds = %3188
  %3231 = icmp eq i32 %3144, 8
  br i1 %3231, label %3232, label %3252

; <label>:3232                                    ; preds = %3230
  %3233 = fmul fast float %3149, %2864
  %3234 = fmul fast float %3149, %2865
  %3235 = fadd fast float %3233, %2250
  %3236 = fadd fast float %3234, %2251
  %3237 = call float @dx.op.binary.f32(i32 36, float %2263, float %2866)  ; FMin(a,b)
  %3238 = fsub fast float %3237, %2263
  %3239 = fmul fast float %3238, %3152
  %3240 = fadd fast float %3239, %2263
  %3241 = fsub fast float %2863, %2262
  %3242 = fmul fast float %3155, %3241
  %3243 = fadd fast float %3242, %2262
  %3244 = fmul fast float %3158, %2969
  %3245 = fmul fast float %3158, %2970
  %3246 = fmul fast float %3158, %2971
  %3247 = fadd fast float %3244, %2258
  %3248 = fadd fast float %3245, %2259
  %3249 = fadd fast float %3246, %2260
  %3250 = fmul fast float %3161, %2997
  %3251 = fadd fast float %3250, %2264
  br label %3252

; <label>:3252                                    ; preds = %3232, %3230, %3190, %3163, %3135, %2562, %2266, %2249
  %3253 = phi float [ %2250, %3135 ], [ %2250, %2562 ], [ %2250, %2249 ], [ %3235, %3232 ], [ %2250, %3230 ], [ %3193, %3190 ], [ %3168, %3163 ], [ %2250, %2266 ]
  %3254 = phi float [ %2251, %3135 ], [ %2251, %2562 ], [ %2251, %2249 ], [ %3236, %3232 ], [ %2251, %3230 ], [ %3194, %3190 ], [ %3169, %3163 ], [ %2251, %2266 ]
  %3255 = phi float [ %3136, %3135 ], [ %2252, %2562 ], [ %2252, %2249 ], [ %3136, %3232 ], [ %3136, %3230 ], [ %3136, %3190 ], [ %3136, %3163 ], [ %2252, %2266 ]
  %3256 = phi float [ %3137, %3135 ], [ %2253, %2562 ], [ %2253, %2249 ], [ %3137, %3232 ], [ %3137, %3230 ], [ %3137, %3190 ], [ %3137, %3163 ], [ %2253, %2266 ]
  %3257 = phi float [ %3138, %3135 ], [ %2254, %2562 ], [ %2254, %2249 ], [ %3138, %3232 ], [ %3138, %3230 ], [ %3138, %3190 ], [ %3138, %3163 ], [ %2254, %2266 ]
  %3258 = phi float [ %3139, %3135 ], [ %2255, %2562 ], [ %2255, %2249 ], [ %3139, %3232 ], [ %3139, %3230 ], [ %3139, %3190 ], [ %3139, %3163 ], [ %2255, %2266 ]
  %3259 = phi float [ %3140, %3135 ], [ %2256, %2562 ], [ %2256, %2249 ], [ %3140, %3232 ], [ %3140, %3230 ], [ %3140, %3190 ], [ %3140, %3163 ], [ %2256, %2266 ]
  %3260 = phi float [ %3141, %3135 ], [ %2257, %2562 ], [ %2257, %2249 ], [ %3141, %3232 ], [ %3141, %3230 ], [ %3141, %3190 ], [ %3141, %3163 ], [ %2257, %2266 ]
  %3261 = phi float [ %2258, %3135 ], [ %2258, %2562 ], [ %2258, %2249 ], [ %3247, %3232 ], [ %2258, %3230 ], [ %3225, %3190 ], [ %3182, %3163 ], [ %2258, %2266 ]
  %3262 = phi float [ %2259, %3135 ], [ %2259, %2562 ], [ %2259, %2249 ], [ %3248, %3232 ], [ %2259, %3230 ], [ %3226, %3190 ], [ %3183, %3163 ], [ %2259, %2266 ]
  %3263 = phi float [ %2260, %3135 ], [ %2260, %2562 ], [ %2260, %2249 ], [ %3249, %3232 ], [ %2260, %3230 ], [ %3227, %3190 ], [ %3184, %3163 ], [ %2260, %2266 ]
  %3264 = phi float [ %3142, %3135 ], [ %2261, %2562 ], [ %2261, %2249 ], [ %3142, %3232 ], [ %3142, %3230 ], [ %3142, %3190 ], [ %3142, %3163 ], [ %2261, %2266 ]
  %3265 = phi float [ %2262, %3135 ], [ %2262, %2562 ], [ %2262, %2249 ], [ %3243, %3232 ], [ %2262, %3230 ], [ %3221, %3190 ], [ %3175, %3163 ], [ %2262, %2266 ]
  %3266 = phi float [ %2263, %3135 ], [ %2263, %2562 ], [ %2263, %2249 ], [ %3240, %3232 ], [ %2263, %3230 ], [ %3198, %3190 ], [ %3172, %3163 ], [ %2263, %2266 ]
  %3267 = phi float [ %2264, %3135 ], [ %2264, %2562 ], [ %2264, %2249 ], [ %3251, %3232 ], [ %2264, %3230 ], [ %3229, %3190 ], [ %3187, %3163 ], [ %2264, %2266 ]
  %3268 = phi float [ %3143, %3135 ], [ %2265, %2562 ], [ %2265, %2249 ], [ %3143, %3232 ], [ %3143, %3230 ], [ %3143, %3190 ], [ %3143, %3163 ], [ %2265, %2266 ]
  br i1 %449, label %4255, label %3269

; <label>:3269                                    ; preds = %3252
  %3270 = icmp ult i32 %503, 4
  %3271 = add i32 %60, 72
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = add i32 %60, 76
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = or i32 %3276, %3273
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %4255, label %3279

; <label>:3279                                    ; preds = %3269
  %3280 = and i32 %3273, 262144
  %3281 = icmp ne i32 %3280, 0
  %3282 = select i1 %3281, float %63, float 1.000000e+00
  %3283 = select i1 %3281, float %64, float 0.000000e+00
  %3284 = select i1 %3281, float %65, float 0.000000e+00
  %3285 = select i1 %3281, float %66, float 1.000000e+00
  %3286 = select i1 %3281, float %67, float %83
  %3287 = select i1 %3281, float %68, float %84
  %3288 = add i32 %60, 332
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = lshr i32 %3290, 16
  %3292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3291)  ; LegacyF16ToF32(value)
  %3293 = fmul fast float %3292, 0x3F50624DE0000000
  %3294 = add i32 %60, 136
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = lshr i32 %3296, 16
  %3298 = and i32 %3297, 255
  %3299 = lshr i32 %3296, 24
  %3300 = add i32 %60, 340
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 65535
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = lshr i32 %3302, 16
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = add i32 %60, 80
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = lshr i32 %3309, 22
  %3311 = shl nuw nsw i32 %3310, 5
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = shl i32 %3309, 4
  %3314 = and i32 %3313, 32752
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = lshr i32 %3309, 7
  %3317 = and i32 %3316, 32752
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3321 = fmul fast float %3320, 1.000000e+03
  %3322 = fmul fast float %439, %3321
  %3323 = call float @dx.op.unary.f32(i32 22, float %3322)  ; Frc(value)
  %3324 = fadd fast float %3323, %429
  %3325 = fmul fast float %440, %3321
  %3326 = call float @dx.op.unary.f32(i32 22, float %3325)  ; Frc(value)
  %3327 = fadd fast float %3326, %431
  %3328 = fmul fast float %3293, %3321
  %3329 = call float @dx.op.unary.f32(i32 22, float %3328)  ; Frc(value)
  %3330 = fmul fast float %3329, 0x401921FB60000000
  %3331 = fadd fast float %3330, %3312
  %3332 = call float @dx.op.unary.f32(i32 13, float %3331)  ; Sin(value)
  %3333 = call float @dx.op.unary.f32(i32 12, float %3331)  ; Cos(value)
  %3334 = fsub fast float -0.000000e+00, %3332
  %3335 = fadd fast float %3286, -5.000000e-01
  %3336 = fadd fast float %3287, -5.000000e-01
  %3337 = fmul fast float %3304, %3335
  %3338 = fmul fast float %3306, %3336
  %3339 = fadd fast float %3337, 5.000000e-01
  %3340 = fadd fast float %3338, 5.000000e-01
  %3341 = fmul fast float %3315, %3339
  %3342 = fmul fast float %3318, %3340
  %3343 = fmul fast float %3333, %3341
  %3344 = call float @dx.op.tertiary.f32(i32 46, float %3334, float %3342, float %3343)  ; FMad(a,b,c)
  %3345 = fmul fast float %3332, %3341
  %3346 = call float @dx.op.tertiary.f32(i32 46, float %3333, float %3342, float %3345)  ; FMad(a,b,c)
  %3347 = fadd fast float %3324, %3344
  %3348 = fadd fast float %3327, %3346
  %3349 = icmp ugt i32 %3298, 1
  %3350 = icmp ugt i32 %3296, 33554431
  %3351 = or i1 %3350, %3349
  br i1 %3351, label %3352, label %3377

; <label>:3352                                    ; preds = %3279
  %3353 = add i32 %60, 276
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = lshr i32 %3355, 16
  %3357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3356)  ; LegacyF16ToF32(value)
  %3358 = fmul fast float %3320, %3357
  %3359 = call float @dx.op.unary.f32(i32 22, float %3358)  ; Frc(value)
  %3360 = mul nuw nsw i32 %3298, %3299
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3359, %3361
  %3363 = call float @dx.op.unary.f32(i32 27, float %3362)  ; Round_ni(value)
  %3364 = fptoui float %3363 to i32
  %3365 = urem i32 %3364, %3298
  %3366 = udiv i32 %3364, %3299
  %3367 = call float @dx.op.unary.f32(i32 22, float %3347)  ; Frc(value)
  %3368 = call float @dx.op.unary.f32(i32 22, float %3348)  ; Frc(value)
  %3369 = uitofp i32 %3365 to float
  %3370 = uitofp i32 %3366 to float
  %3371 = fadd fast float %3367, %3369
  %3372 = fadd fast float %3368, %3370
  %3373 = uitofp i32 %3298 to float
  %3374 = uitofp i32 %3299 to float
  %3375 = fdiv fast float %3371, %3373
  %3376 = fdiv fast float %3372, %3374
  br label %3377

; <label>:3377                                    ; preds = %3352, %3279
  %3378 = phi float [ %3375, %3352 ], [ %3347, %3279 ]
  %3379 = phi float [ %3376, %3352 ], [ %3348, %3279 ]
  %3380 = and i32 %3273, 16777216
  %3381 = icmp eq i32 %3380, 0
  br i1 %3381, label %3491, label %3382

; <label>:3382                                    ; preds = %3377
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.CBufRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.CBufRet.f32 %3383, 2
  %3387 = fadd fast float %3384, %167
  %3388 = fadd fast float %3385, %168
  %3389 = fadd fast float %3386, %169
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = icmp eq i32 %61, 65535
  br i1 %3393, label %3488, label %3394

; <label>:3394                                    ; preds = %3382
  %3395 = lshr i32 %61, 1
  %3396 = shl i32 %3395, 2
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %61, 1
  %3400 = icmp ne i32 %3399, 0
  %3401 = lshr i32 %3398, 16
  %3402 = and i32 %3398, 65535
  %3403 = select i1 %3400, i32 %3401, i32 %3402
  %3404 = icmp eq i32 %3403, 65535
  br i1 %3404, label %3484, label %3405

; <label>:3405                                    ; preds = %3394
  %3406 = mul nuw nsw i32 %3403, 40
  %3407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3411 = add nuw nsw i32 %3406, 12
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = add nuw nsw i32 %3406, 24
  %3417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3419 = extractvalue %dx.types.ResRet.f32 %3417, 1
  %3420 = extractvalue %dx.types.ResRet.f32 %3417, 2
  %3421 = add nuw nsw i32 %3406, 36
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = fsub fast float %3387, %3408
  %3425 = fsub fast float %3388, %3409
  %3426 = fsub fast float %3389, %3410
  %3427 = fmul fast float %3423, %3424
  %3428 = fmul fast float %3423, %3425
  %3429 = fmul fast float %3423, %3426
  %3430 = call float @dx.op.unary.f32(i32 27, float %3427)  ; Round_ni(value)
  %3431 = call float @dx.op.unary.f32(i32 27, float %3428)  ; Round_ni(value)
  %3432 = call float @dx.op.unary.f32(i32 27, float %3429)  ; Round_ni(value)
  %3433 = fadd fast float %3430, 5.000000e-01
  %3434 = fadd fast float %3431, 5.000000e-01
  %3435 = fadd fast float %3432, 5.000000e-01
  %3436 = fmul fast float %3433, %3413
  %3437 = fmul fast float %3434, %3414
  %3438 = fmul fast float %3435, %3415
  %3439 = shl i32 %61, 2
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call float @dx.op.unary.f32(i32 22, float %3436)  ; Frc(value)
  %3445 = call float @dx.op.unary.f32(i32 22, float %3437)  ; Frc(value)
  %3446 = call float @dx.op.unary.f32(i32 22, float %3438)  ; Frc(value)
  %3447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3443, %dx.types.Handle %55, float %3444, float %3445, float %3446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = fmul fast float %3448, 1.023000e+03
  %3452 = fmul fast float %3449, 1.023000e+03
  %3453 = fmul fast float %3450, 1.023000e+03
  %3454 = fadd fast float %3451, 5.000000e-01
  %3455 = fadd fast float %3452, 5.000000e-01
  %3456 = fadd fast float %3453, 5.000000e-01
  %3457 = call float @dx.op.unary.f32(i32 27, float %3454)  ; Round_ni(value)
  %3458 = call float @dx.op.unary.f32(i32 27, float %3455)  ; Round_ni(value)
  %3459 = call float @dx.op.unary.f32(i32 27, float %3456)  ; Round_ni(value)
  %3460 = fsub fast float %3427, %3430
  %3461 = fsub fast float %3428, %3431
  %3462 = fsub fast float %3429, %3432
  %3463 = fmul fast float %3460, 7.500000e-01
  %3464 = fmul fast float %3461, 7.500000e-01
  %3465 = fmul fast float %3462, 7.500000e-01
  %3466 = fadd fast float %3430, 1.250000e-01
  %3467 = fadd fast float %3466, %3463
  %3468 = fadd fast float %3467, %3457
  %3469 = fadd fast float %3431, 1.250000e-01
  %3470 = fadd fast float %3469, %3464
  %3471 = fadd fast float %3470, %3458
  %3472 = fadd fast float %3432, 1.250000e-01
  %3473 = fadd fast float %3472, %3465
  %3474 = fadd fast float %3473, %3459
  %3475 = fmul fast float %3468, %3418
  %3476 = fmul fast float %3471, %3419
  %3477 = fmul fast float %3474, %3420
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = add i32 %3479, 0
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3481, %dx.types.Handle %53, float %3475, float %3476, float %3477, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  br label %3484

; <label>:3484                                    ; preds = %3405, %3394
  %3485 = phi float [ %3483, %3405 ], [ -1.000000e+00, %3394 ]
  %3486 = fadd fast float %3485, %3392
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  br label %3488

; <label>:3488                                    ; preds = %3484, %3382
  %3489 = phi float [ %3487, %3484 ], [ %3392, %3382 ]
  %3490 = fmul fast float %3489, %498
  br label %3491

; <label>:3491                                    ; preds = %3488, %3377
  %3492 = phi float [ %3490, %3488 ], [ %498, %3377 ]
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 256
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3543, label %3497

; <label>:3497                                    ; preds = %3491
  %3498 = add i32 %60, 484
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = add i32 %3500, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3502, %dx.types.Handle %101, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = add i32 %60, 148
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = shl i32 %3507, 4
  %3509 = and i32 %3508, 32752
  %3510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3509)  ; LegacyF16ToF32(value)
  %3511 = lshr i32 %3507, 7
  %3512 = and i32 %3511, 32752
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = fsub fast float 1.000000e+00, %3492
  %3515 = call float @dx.op.binary.f32(i32 35, float %3514, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3516 = bitcast float %3492 to i32
  %3517 = sitofp i32 %3516 to float
  %3518 = fadd fast float %3517, 0xC1CFBF8940000000
  %3519 = fmul fast float %3513, %3518
  %3520 = fadd fast float %3519, 0x41CFBF8940000000
  %3521 = fptosi float %3520 to i32
  %3522 = bitcast i32 %3521 to float
  %3523 = bitcast float %3515 to i32
  %3524 = sitofp i32 %3523 to float
  %3525 = fadd fast float %3524, 0xC1CFBF8940000000
  %3526 = fmul fast float %3525, %3513
  %3527 = fadd fast float %3526, 0x41CFBF8940000000
  %3528 = fptosi float %3527 to i32
  %3529 = bitcast i32 %3528 to float
  %3530 = fmul fast float %3522, %3510
  %3531 = fmul fast float %3529, %3510
  %3532 = fsub fast float %3515, %3530
  %3533 = fadd fast float %3531, %3515
  %3534 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3535 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  %3536 = fsub fast float %3504, %3534
  %3537 = fsub fast float %3535, %3534
  %3538 = bitcast float %3537 to i32
  %3539 = sub nsw i32 2129859010, %3538
  %3540 = bitcast i32 %3539 to float
  %3541 = fmul fast float %3540, %3536
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  br label %3543

; <label>:3543                                    ; preds = %3497, %3491
  %3544 = phi float [ %3542, %3497 ], [ %3492, %3491 ]
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 128
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3565, label %3549

; <label>:3549                                    ; preds = %3543
  %3550 = add i32 %60, 468
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = add i32 %3552, 0
  %3554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3554, %dx.types.Handle %101, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 524288
  %3560 = icmp ne i32 %3559, 0
  %3561 = fcmp fast ogt float %3556, 0x3FE0101020000000
  %3562 = select i1 %3561, float 1.000000e+00, float 0.000000e+00
  %3563 = select i1 %3560, float %3562, float %3556
  %3564 = fmul fast float %3563, %3544
  br label %3565

; <label>:3565                                    ; preds = %3549, %3543
  %3566 = phi float [ %3564, %3549 ], [ %3544, %3543 ]
  %3567 = fcmp fast ult float %3566, 0x3F70101020000000
  br i1 %3567, label %4255, label %3568

; <label>:3568                                    ; preds = %3565
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = and i32 %3570, 16
  %3572 = icmp eq i32 %3571, 0
  br i1 %3572, label %3771, label %3573

; <label>:3573                                    ; preds = %3568
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = add i32 %60, 420
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = add i32 %3578, 0
  %3580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3580, %dx.types.Handle %100, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3586 = and i32 %3575, 255
  %3587 = uitofp i32 %3586 to float
  %3588 = lshr i32 %3575, 8
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3585, %3587
  %3592 = fadd fast float %3591, %3590
  %3593 = fmul fast float %3592, 0x3F70101000000000
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = and i32 %3595, 512
  %3597 = icmp eq i32 %3596, 0
  br i1 %3597, label %3606, label %3598

; <label>:3598                                    ; preds = %3573
  %3599 = add i32 %60, 500
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %3601, 0
  %3603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3603, %dx.types.Handle %101, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  br label %3606

; <label>:3606                                    ; preds = %3598, %3573
  %3607 = phi float [ %3605, %3598 ], [ 1.000000e+00, %3573 ]
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = and i32 %3609, 33554432
  %3611 = icmp eq i32 %3610, 0
  br i1 %3611, label %3718, label %3612

; <label>:3612                                    ; preds = %3606
  %3613 = add i32 %60, 272
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = and i32 %3615, 65535
  %3617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3616)  ; LegacyF16ToF32(value)
  %3618 = lshr i32 %3615, 16
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = add i32 %60, 276
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = and i32 %3622, 65535
  %3624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3623)  ; LegacyF16ToF32(value)
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = lshr i32 %3626, 24
  %3628 = uitofp i32 %3627 to float
  %3629 = fmul fast float %3628, 0x3F70101020000000
  %3630 = and i32 %3626, 255
  %3631 = uitofp i32 %3630 to float
  %3632 = fmul fast float %3631, 0x3F70101020000000
  %3633 = lshr i32 %3626, 8
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = fmul fast float %3635, 0x3F70101020000000
  %3637 = lshr i32 %3626, 16
  %3638 = and i32 %3637, 255
  %3639 = uitofp i32 %3638 to float
  %3640 = fmul fast float %3639, 0x3F70101020000000
  %3641 = add i32 %60, 268
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = lshr i32 %3643, 24
  %3645 = uitofp i32 %3644 to float
  %3646 = fmul fast float %3645, 0x3F70101020000000
  %3647 = and i32 %3643, 255
  %3648 = uitofp i32 %3647 to float
  %3649 = fmul fast float %3648, 0x3F70101020000000
  %3650 = lshr i32 %3643, 8
  %3651 = and i32 %3650, 255
  %3652 = uitofp i32 %3651 to float
  %3653 = fmul fast float %3652, 0x3F70101020000000
  %3654 = lshr i32 %3643, 16
  %3655 = and i32 %3654, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = fmul fast float %3656, 0x3F70101020000000
  %3658 = bitcast float %3582 to i32
  %3659 = ashr i32 %3658, 1
  %3660 = sub nsw i32 1597463174, %3659
  %3661 = bitcast i32 %3660 to float
  %3662 = fmul fast float %3582, 5.000000e-01
  %3663 = fmul fast float %3661, %3661
  %3664 = fmul fast float %3663, %3662
  %3665 = fsub fast float 1.500000e+00, %3664
  %3666 = fmul fast float %3661, %3582
  %3667 = fmul fast float %3666, %3665
  %3668 = bitcast float %3583 to i32
  %3669 = ashr i32 %3668, 1
  %3670 = sub nsw i32 1597463174, %3669
  %3671 = bitcast i32 %3670 to float
  %3672 = fmul fast float %3583, 5.000000e-01
  %3673 = fmul fast float %3671, %3671
  %3674 = fmul fast float %3673, %3672
  %3675 = fsub fast float 1.500000e+00, %3674
  %3676 = fmul fast float %3671, %3583
  %3677 = fmul fast float %3676, %3675
  %3678 = bitcast float %3584 to i32
  %3679 = ashr i32 %3678, 1
  %3680 = sub nsw i32 1597463174, %3679
  %3681 = bitcast i32 %3680 to float
  %3682 = fmul fast float %3584, 5.000000e-01
  %3683 = fmul fast float %3681, %3681
  %3684 = fmul fast float %3683, %3682
  %3685 = fsub fast float 1.500000e+00, %3684
  %3686 = fmul fast float %3681, %3584
  %3687 = fmul fast float %3686, %3685
  %3688 = fsub fast float %3667, %3649
  %3689 = fsub fast float %3677, %3653
  %3690 = fsub fast float %3687, %3657
  %3691 = fmul fast float %3688, %3617
  %3692 = fmul fast float %3689, %3619
  %3693 = fmul fast float %3690, %3624
  %3694 = fadd fast float %3691, %3632
  %3695 = fadd fast float %3692, %3636
  %3696 = fadd fast float %3693, %3640
  %3697 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3698 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3700 = fmul fast float %3697, %3697
  %3701 = fmul fast float %3698, %3698
  %3702 = fmul fast float %3699, %3699
  %3703 = fsub fast float %3700, %3582
  %3704 = fsub fast float %3701, %3583
  %3705 = fsub fast float %3702, %3584
  %3706 = fmul fast float %3703, %3607
  %3707 = fmul fast float %3704, %3607
  %3708 = fmul fast float %3705, %3607
  %3709 = fadd fast float %3706, %3582
  %3710 = fadd fast float %3707, %3583
  %3711 = fadd fast float %3708, %3584
  %3712 = fadd fast float %3629, %3593
  %3713 = fsub fast float %3712, %3646
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fsub fast float %3714, %3593
  %3716 = fmul fast float %3715, %3607
  %3717 = fadd fast float %3716, %3593
  br label %3771

; <label>:3718                                    ; preds = %3606
  %3719 = and i32 %3609, 134217728
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3755, label %3721

; <label>:3721                                    ; preds = %3718
  %3722 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %3723 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3724 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3725 = fadd fast float %3722, -5.000000e-01
  %3726 = fadd fast float %3723, -5.000000e-01
  %3727 = fadd fast float %3724, -5.000000e-01
  %3728 = fmul fast float %3725, %3607
  %3729 = fmul fast float %3726, %3607
  %3730 = fmul fast float %3727, %3607
  %3731 = fadd fast float %3728, 5.000000e-01
  %3732 = fadd fast float %3729, 5.000000e-01
  %3733 = fadd fast float %3730, 5.000000e-01
  %3734 = call float @dx.op.unary.f32(i32 24, float %3582)  ; Sqrt(value)
  %3735 = call float @dx.op.unary.f32(i32 24, float %3583)  ; Sqrt(value)
  %3736 = call float @dx.op.unary.f32(i32 24, float %3584)  ; Sqrt(value)
  %3737 = fmul fast float %3731, 2.000000e+00
  %3738 = fsub fast float 1.000000e+00, %3737
  %3739 = fmul fast float %3738, %3734
  %3740 = fadd fast float %3739, %3737
  %3741 = fmul fast float %3740, %3734
  %3742 = fmul fast float %3732, 2.000000e+00
  %3743 = fsub fast float 1.000000e+00, %3742
  %3744 = fmul fast float %3743, %3735
  %3745 = fadd fast float %3744, %3742
  %3746 = fmul fast float %3745, %3735
  %3747 = fmul fast float %3733, 2.000000e+00
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = fmul fast float %3748, %3736
  %3750 = fadd fast float %3749, %3747
  %3751 = fmul fast float %3750, %3736
  %3752 = fmul fast float %3741, %3741
  %3753 = fmul fast float %3746, %3746
  %3754 = fmul fast float %3751, %3751
  br label %3771

; <label>:3755                                    ; preds = %3718
  %3756 = fmul fast float %416, %416
  %3757 = fmul fast float %420, %420
  %3758 = fmul fast float %424, %424
  %3759 = fadd fast float %3756, -1.000000e+00
  %3760 = fadd fast float %3757, -1.000000e+00
  %3761 = fadd fast float %3758, -1.000000e+00
  %3762 = fmul fast float %3607, %3759
  %3763 = fmul fast float %3607, %3760
  %3764 = fmul fast float %3607, %3761
  %3765 = fadd fast float %3762, 1.000000e+00
  %3766 = fadd fast float %3763, 1.000000e+00
  %3767 = fadd fast float %3764, 1.000000e+00
  %3768 = fmul fast float %3765, %3582
  %3769 = fmul fast float %3766, %3583
  %3770 = fmul fast float %3767, %3584
  br label %3771

; <label>:3771                                    ; preds = %3755, %3721, %3612, %3568
  %3772 = phi float [ %3717, %3612 ], [ %3593, %3721 ], [ %3593, %3755 ], [ 0x3FA23C0BE0000000, %3568 ]
  %3773 = phi float [ %3709, %3612 ], [ %3752, %3721 ], [ %3768, %3755 ], [ 1.000000e+00, %3568 ]
  %3774 = phi float [ %3710, %3612 ], [ %3753, %3721 ], [ %3769, %3755 ], [ 1.000000e+00, %3568 ]
  %3775 = phi float [ %3711, %3612 ], [ %3754, %3721 ], [ %3770, %3755 ], [ 1.000000e+00, %3568 ]
  %3776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.i32 %3776, 1
  %3778 = and i32 %3777, 1
  %3779 = icmp ne i32 %3778, 0
  %3780 = add i32 %60, 356
  %3781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.i32 %3781, 0
  %3783 = and i32 %3782, 32
  %3784 = icmp ne i32 %3783, 0
  %3785 = and i1 %3779, %3784
  %3786 = select i1 %3785, float 1.000000e+00, float %3773
  %3787 = select i1 %3785, float 0x3FD3333340000000, float %3774
  %3788 = select i1 %3785, float 0x3FD3333340000000, float %3775
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, 32
  %3792 = icmp eq i32 %3791, 0
  br i1 %3792, label %3865, label %3793

; <label>:3793                                    ; preds = %3771
  %3794 = add i32 %60, 140
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = add i32 %60, 436
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = add i32 %3799, 0
  %3801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3801, %dx.types.Handle %100, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.ResRet.f32 %3802, 3
  %3807 = and i32 %3796, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = lshr i32 %3796, 8
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = lshr i32 %3796, 16
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = fmul fast float %3803, %3808
  %3817 = fadd fast float %3816, %3811
  %3818 = fmul fast float %3817, 0x3F70101000000000
  %3819 = fadd fast float %3804, -5.000000e-01
  %3820 = fadd fast float %3806, -5.000000e-01
  %3821 = fmul fast float %3819, %3815
  %3822 = fmul fast float %3820, %3815
  %3823 = fadd fast float %3821, 5.000000e-01
  %3824 = fadd fast float %3822, 5.000000e-01
  %3825 = fmul fast float %3823, 2.000000e+00
  %3826 = fadd fast float %3825, -1.000000e+00
  %3827 = fmul fast float %3824, 2.000000e+00
  %3828 = fadd fast float %3827, -1.000000e+00
  %3829 = fadd fast float %3826, %3828
  %3830 = fmul fast float %3829, 5.000000e-01
  %3831 = fsub fast float %3826, %3828
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3836 = fsub fast float %3834, %3835
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3832, float %3836, float %3830, float %3832, float %3836)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.unary.f32(i32 25, float %3837)  ; Rsqrt(value)
  %3839 = fmul fast float %3830, %3838
  %3840 = fmul fast float %3832, %3838
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 67108864
  %3844 = icmp eq i32 %3843, 0
  br i1 %3844, label %3861, label %3845

; <label>:3845                                    ; preds = %3793
  %3846 = add i32 %60, 328
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = and i32 %3848, 65535
  %3850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3849)  ; LegacyF16ToF32(value)
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = and i32 %3852, 65535
  %3854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3853)  ; LegacyF16ToF32(value)
  %3855 = lshr i32 %3848, 16
  %3856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3855)  ; LegacyF16ToF32(value)
  %3857 = fsub fast float %3818, %3856
  %3858 = fmul fast float %3857, %3850
  %3859 = fadd fast float %3858, %3854
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  br label %3861

; <label>:3861                                    ; preds = %3845, %3793
  %3862 = phi float [ %3860, %3845 ], [ %3818, %3793 ]
  %3863 = call float @dx.op.dot2.f32(i32 54, float %3839, float %3840, float %3282, float %3283)  ; Dot2(ax,ay,bx,by)
  %3864 = call float @dx.op.dot2.f32(i32 54, float %3839, float %3840, float %3284, float %3285)  ; Dot2(ax,ay,bx,by)
  br label %3865

; <label>:3865                                    ; preds = %3861, %3771
  %3866 = phi float [ %3862, %3861 ], [ 0x3FD6666660000000, %3771 ]
  %3867 = phi float [ %3863, %3861 ], [ 0.000000e+00, %3771 ]
  %3868 = phi float [ %3864, %3861 ], [ 0.000000e+00, %3771 ]
  %3869 = phi float [ %3805, %3861 ], [ 1.000000e+00, %3771 ]
  %3870 = add i32 %60, 208
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = lshr i32 %3872, 22
  %3874 = shl nuw nsw i32 %3873, 5
  %3875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3874)  ; LegacyF16ToF32(value)
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 64
  %3879 = icmp eq i32 %3878, 0
  br i1 %3879, label %3913, label %3880

; <label>:3880                                    ; preds = %3865
  %3881 = add i32 %60, 452
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = add i32 %3883, 0
  %3885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3884, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.i32 %3886, 0
  %3888 = and i32 %3887, 131072
  %3889 = icmp eq i32 %3888, 0
  %3890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3885, %dx.types.Handle %100, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = fmul fast float %3891, %404
  %3895 = fmul fast float %3892, %407
  %3896 = fmul fast float %3893, %410
  br i1 %3889, label %3903, label %3897

; <label>:3897                                    ; preds = %3880
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = fmul fast float %3899, %3894
  %3901 = fmul fast float %3899, %3895
  %3902 = fmul fast float %3899, %3896
  br label %3903

; <label>:3903                                    ; preds = %3897, %3880
  %3904 = phi float [ %3900, %3897 ], [ %3894, %3880 ]
  %3905 = phi float [ %3901, %3897 ], [ %3895, %3880 ]
  %3906 = phi float [ %3902, %3897 ], [ %3896, %3880 ]
  %3907 = fmul fast float %3904, %3875
  %3908 = select i1 %261, float %3907, float %3904
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3908, float %3905, float %3906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = select i1 %261, float 0.000000e+00, float %3904
  %3911 = select i1 %261, float %3909, float %3905
  %3912 = select i1 %261, float 0.000000e+00, float %3906
  br label %3913

; <label>:3913                                    ; preds = %3903, %3865
  %3914 = phi float [ %3910, %3903 ], [ 0.000000e+00, %3865 ]
  %3915 = phi float [ %3911, %3903 ], [ 0.000000e+00, %3865 ]
  %3916 = phi float [ %3912, %3903 ], [ 0.000000e+00, %3865 ]
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = and i32 %3918, 1024
  %3920 = icmp eq i32 %3919, 0
  br i1 %3920, label %3951, label %3921

; <label>:3921                                    ; preds = %3913
  %3922 = add i32 %60, 200
  %3923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.i32 %3923, 0
  %3925 = and i32 %3924, 255
  %3926 = uitofp i32 %3925 to float
  %3927 = fmul fast float %3926, 0x3F70101020000000
  %3928 = lshr i32 %3924, 8
  %3929 = and i32 %3928, 255
  %3930 = uitofp i32 %3929 to float
  %3931 = fmul fast float %3930, 0x3F70101020000000
  %3932 = lshr i32 %3924, 16
  %3933 = and i32 %3932, 255
  %3934 = uitofp i32 %3933 to float
  %3935 = fmul fast float %3934, 0x3F70101020000000
  %3936 = fmul fast float %3927, %3927
  %3937 = fmul fast float %3931, %3931
  %3938 = fmul fast float %3935, %3935
  %3939 = add i32 %60, 516
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = add i32 %3941, 0
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3943, %dx.types.Handle %101, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = fmul fast float %3936, %3945
  %3949 = fmul fast float %3937, %3946
  %3950 = fmul fast float %3938, %3947
  br label %3951

; <label>:3951                                    ; preds = %3921, %3913
  %3952 = phi float [ %3948, %3921 ], [ 0.000000e+00, %3913 ]
  %3953 = phi float [ %3949, %3921 ], [ 0.000000e+00, %3913 ]
  %3954 = phi float [ %3950, %3921 ], [ 0.000000e+00, %3913 ]
  %3955 = fcmp fast ogt float %3952, 0.000000e+00
  %3956 = fcmp fast ogt float %3953, 0.000000e+00
  %3957 = fcmp fast ogt float %3954, 0.000000e+00
  %3958 = call float @dx.op.unary.f32(i32 23, float %3952)  ; Log(value)
  %3959 = call float @dx.op.unary.f32(i32 23, float %3953)  ; Log(value)
  %3960 = call float @dx.op.unary.f32(i32 23, float %3954)  ; Log(value)
  %3961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.i32 %3961, 0
  %3963 = lshr i32 %3962, 7
  %3964 = and i32 %3963, 32752
  %3965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3964)  ; LegacyF16ToF32(value)
  %3966 = fmul fast float %3958, 0xBFE62E4300000000
  %3967 = fmul fast float %3966, %3965
  %3968 = fmul fast float %3959, 0xBFE62E4300000000
  %3969 = fmul fast float %3968, %3965
  %3970 = fmul fast float %3960, 0xBFE62E4300000000
  %3971 = fmul fast float %3970, %3965
  %3972 = select i1 %3955, float %3967, float 1.270000e+02
  %3973 = select i1 %3956, float %3969, float 1.270000e+02
  %3974 = select i1 %3957, float %3971, float 1.270000e+02
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = and i32 %3976, 10240
  %3978 = icmp eq i32 %3977, 0
  br i1 %3978, label %3999, label %3979

; <label>:3979                                    ; preds = %3951
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = and i32 %3981, 2048
  %3983 = icmp eq i32 %3982, 0
  br i1 %3983, label %3999, label %3984

; <label>:3984                                    ; preds = %3979
  %3985 = add i32 %60, 532
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = add i32 %3987, 0
  %3989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3989, %dx.types.Handle %101, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.i32 %3992, 0
  %3994 = shl i32 %3993, 4
  %3995 = and i32 %3994, 32752
  %3996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3995)  ; LegacyF16ToF32(value)
  %3997 = fmul fast float %3996, %3991
  %3998 = call float @dx.op.binary.f32(i32 35, float %3997, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3999

; <label>:3999                                    ; preds = %3984, %3979, %3951
  %4000 = phi float [ %3998, %3984 ], [ 0x3F70101020000000, %3979 ], [ 0x3F70101020000000, %3951 ]
  %4001 = add i32 %60, 144
  %4002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.i32 %4002, 0
  %4004 = and i32 %4003, 255
  %4005 = uitofp i32 %4004 to float
  %4006 = lshr i32 %4003, 8
  %4007 = and i32 %4006, 255
  %4008 = uitofp i32 %4007 to float
  %4009 = call float @dx.op.dot3.f32(i32 55, float %3786, float %3787, float %3788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = fmul fast float %4008, %4009
  %4011 = fadd fast float %4010, %4005
  %4012 = fmul fast float %4011, 0x3F70101020000000
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  br i1 %3270, label %4014, label %4049

; <label>:4014                                    ; preds = %3999
  %4015 = fmul fast float %4000, 2.000000e+00
  %4016 = fcmp fast olt float %3972, 1.270000e+02
  %4017 = fcmp fast olt float %3973, 1.270000e+02
  %4018 = fcmp fast olt float %3974, 1.270000e+02
  %4019 = fmul fast float %3972, 0xBFF7154760000000
  %4020 = fmul fast float %4019, %4015
  %4021 = fmul fast float %3973, 0xBFF7154760000000
  %4022 = fmul fast float %4021, %4015
  %4023 = fmul fast float %3974, 0xBFF7154760000000
  %4024 = fmul fast float %4023, %4015
  %4025 = call float @dx.op.unary.f32(i32 21, float %4020)  ; Exp(value)
  %4026 = call float @dx.op.unary.f32(i32 21, float %4022)  ; Exp(value)
  %4027 = call float @dx.op.unary.f32(i32 21, float %4024)  ; Exp(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = fadd fast float %4028, -1.000000e+00
  %4032 = select i1 %4016, float %4031, float -1.000000e+00
  %4033 = fadd fast float %4029, -1.000000e+00
  %4034 = select i1 %4017, float %4033, float -1.000000e+00
  %4035 = fadd fast float %4030, -1.000000e+00
  %4036 = select i1 %4018, float %4035, float -1.000000e+00
  %4037 = fmul fast float %4032, %3566
  %4038 = fmul fast float %4034, %3566
  %4039 = fmul fast float %4036, %3566
  %4040 = fadd fast float %4037, 1.000000e+00
  %4041 = fadd fast float %4038, 1.000000e+00
  %4042 = fadd fast float %4039, 1.000000e+00
  %4043 = fmul fast float %4040, %3255
  %4044 = fmul fast float %4041, %3256
  %4045 = fmul fast float %4042, %3257
  %4046 = fmul fast float %4040, %3258
  %4047 = fmul fast float %4041, %3259
  %4048 = fmul fast float %4042, %3260
  br label %4049

; <label>:4049                                    ; preds = %4014, %3999
  %4050 = phi float [ %4043, %4014 ], [ %3255, %3999 ]
  %4051 = phi float [ %4044, %4014 ], [ %3256, %3999 ]
  %4052 = phi float [ %4045, %4014 ], [ %3257, %3999 ]
  %4053 = phi float [ %4046, %4014 ], [ %3258, %3999 ]
  %4054 = phi float [ %4047, %4014 ], [ %3259, %3999 ]
  %4055 = phi float [ %4048, %4014 ], [ %3260, %3999 ]
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = and i32 %4057, 3
  %4059 = icmp eq i32 %4058, 3
  br i1 %4059, label %4138, label %4060

; <label>:4060                                    ; preds = %4049
  %4061 = and i32 %4057, 16
  %4062 = icmp ne i32 %4061, 0
  %4063 = select i1 %4062, float %3566, float 0.000000e+00
  %4064 = icmp eq i32 %4058, 0
  br i1 %4064, label %4065, label %4093

; <label>:4065                                    ; preds = %4060
  %4066 = and i32 %4057, 64
  %4067 = icmp ne i32 %4066, 0
  %4068 = select i1 %4067, float %3566, float 0.000000e+00
  %4069 = fsub fast float %3786, %4050
  %4070 = fsub fast float %3787, %4051
  %4071 = fsub fast float %3788, %4052
  %4072 = fmul fast float %4063, %4069
  %4073 = fmul fast float %4063, %4070
  %4074 = fmul fast float %4063, %4071
  %4075 = fadd fast float %4072, %4050
  %4076 = fadd fast float %4073, %4051
  %4077 = fadd fast float %4074, %4052
  %4078 = fsub fast float %3772, %3264
  %4079 = fmul fast float %4063, %4078
  %4080 = fadd fast float %4079, %3264
  %4081 = fsub fast float %3914, %4053
  %4082 = fsub fast float %3915, %4054
  %4083 = fsub fast float %3916, %4055
  %4084 = fmul fast float %4068, %4081
  %4085 = fmul fast float %4068, %4082
  %4086 = fmul fast float %4068, %4083
  %4087 = fadd fast float %4084, %4053
  %4088 = fadd fast float %4085, %4054
  %4089 = fadd fast float %4086, %4055
  %4090 = fsub fast float %4013, %3268
  %4091 = fmul fast float %4063, %4090
  %4092 = fadd fast float %4091, %3268
  br label %4138

; <label>:4093                                    ; preds = %4060
  %4094 = icmp eq i32 %4058, 1
  br i1 %4094, label %4095, label %4108

; <label>:4095                                    ; preds = %4093
  %4096 = fadd fast float %3786, -1.000000e+00
  %4097 = fadd fast float %3787, -1.000000e+00
  %4098 = fadd fast float %3788, -1.000000e+00
  %4099 = fmul fast float %4063, %4096
  %4100 = fmul fast float %4063, %4097
  %4101 = fmul fast float %4063, %4098
  %4102 = fadd fast float %4099, 1.000000e+00
  %4103 = fadd fast float %4100, 1.000000e+00
  %4104 = fadd fast float %4101, 1.000000e+00
  %4105 = fmul fast float %4102, %4050
  %4106 = fmul fast float %4103, %4051
  %4107 = fmul fast float %4104, %4052
  br label %4138

; <label>:4108                                    ; preds = %4093
  %4109 = icmp eq i32 %4058, 2
  br i1 %4109, label %4110, label %4138

; <label>:4110                                    ; preds = %4108
  %4111 = call float @dx.op.unary.f32(i32 24, float %3786)  ; Sqrt(value)
  %4112 = call float @dx.op.unary.f32(i32 24, float %3787)  ; Sqrt(value)
  %4113 = call float @dx.op.unary.f32(i32 24, float %3788)  ; Sqrt(value)
  %4114 = fadd fast float %4111, -5.000000e-01
  %4115 = fadd fast float %4112, -5.000000e-01
  %4116 = fadd fast float %4113, -5.000000e-01
  %4117 = fmul fast float %4114, %4063
  %4118 = fmul fast float %4115, %4063
  %4119 = fmul fast float %4116, %4063
  %4120 = fadd fast float %4117, 5.000000e-01
  %4121 = fadd fast float %4118, 5.000000e-01
  %4122 = fadd fast float %4119, 5.000000e-01
  %4123 = fmul fast float %4120, 2.000000e+00
  %4124 = fsub fast float 1.000000e+00, %4123
  %4125 = fmul fast float %4124, %4050
  %4126 = fadd fast float %4125, %4123
  %4127 = fmul fast float %4126, %4050
  %4128 = fmul fast float %4121, 2.000000e+00
  %4129 = fsub fast float 1.000000e+00, %4128
  %4130 = fmul fast float %4129, %4051
  %4131 = fadd fast float %4130, %4128
  %4132 = fmul fast float %4131, %4051
  %4133 = fmul fast float %4122, 2.000000e+00
  %4134 = fsub fast float 1.000000e+00, %4133
  %4135 = fmul fast float %4134, %4052
  %4136 = fadd fast float %4135, %4133
  %4137 = fmul fast float %4136, %4052
  br label %4138

; <label>:4138                                    ; preds = %4110, %4108, %4095, %4065, %4049
  %4139 = phi float [ %4050, %4049 ], [ %4127, %4110 ], [ %4050, %4108 ], [ %4105, %4095 ], [ %4075, %4065 ]
  %4140 = phi float [ %4051, %4049 ], [ %4132, %4110 ], [ %4051, %4108 ], [ %4106, %4095 ], [ %4076, %4065 ]
  %4141 = phi float [ %4052, %4049 ], [ %4137, %4110 ], [ %4052, %4108 ], [ %4107, %4095 ], [ %4077, %4065 ]
  %4142 = phi float [ %4053, %4049 ], [ %4053, %4110 ], [ %4053, %4108 ], [ %4053, %4095 ], [ %4087, %4065 ]
  %4143 = phi float [ %4054, %4049 ], [ %4054, %4110 ], [ %4054, %4108 ], [ %4054, %4095 ], [ %4088, %4065 ]
  %4144 = phi float [ %4055, %4049 ], [ %4055, %4110 ], [ %4055, %4108 ], [ %4055, %4095 ], [ %4089, %4065 ]
  %4145 = phi float [ %3264, %4049 ], [ %3264, %4110 ], [ %3264, %4108 ], [ %3264, %4095 ], [ %4080, %4065 ]
  %4146 = phi float [ %3268, %4049 ], [ %3268, %4110 ], [ %3268, %4108 ], [ %3268, %4095 ], [ %4092, %4065 ]
  %4147 = and i32 %4057, 12
  %4148 = icmp eq i32 %4147, 12
  br i1 %4148, label %4255, label %4149

; <label>:4149                                    ; preds = %4138
  %4150 = and i32 %4057, 2097184
  %4151 = icmp eq i32 %4150, 2097184
  %4152 = select i1 %4151, float %3566, float 0.000000e+00
  %4153 = and i32 %4057, 4194336
  %4154 = icmp eq i32 %4153, 4194336
  %4155 = select i1 %4154, float %3566, float 0.000000e+00
  %4156 = and i32 %4057, 8388640
  %4157 = icmp eq i32 %4156, 8388640
  %4158 = select i1 %4157, float %3566, float 0.000000e+00
  %4159 = and i32 %4057, 1024
  %4160 = icmp ne i32 %4159, 0
  %4161 = select i1 %4160, float %3566, float 0.000000e+00
  %4162 = and i32 %4057, 2048
  %4163 = icmp ne i32 %4162, 0
  %4164 = select i1 %4163, float %3566, float 0.000000e+00
  %4165 = icmp eq i32 %4147, 0
  br i1 %4165, label %4166, label %4191

; <label>:4166                                    ; preds = %4149
  %4167 = fsub fast float %3867, %3253
  %4168 = fsub fast float %3868, %3254
  %4169 = fmul fast float %4152, %4167
  %4170 = fmul fast float %4152, %4168
  %4171 = fadd fast float %4169, %3253
  %4172 = fadd fast float %4170, %3254
  %4173 = fsub fast float %3869, %3266
  %4174 = fmul fast float %4155, %4173
  %4175 = fadd fast float %4174, %3266
  %4176 = fsub fast float %3866, %3265
  %4177 = fmul fast float %4158, %4176
  %4178 = fadd fast float %4177, %3265
  %4179 = fsub fast float %3972, %3261
  %4180 = fsub fast float %3973, %3262
  %4181 = fsub fast float %3974, %3263
  %4182 = fmul fast float %4161, %4179
  %4183 = fmul fast float %4161, %4180
  %4184 = fmul fast float %4161, %4181
  %4185 = fadd fast float %4182, %3261
  %4186 = fadd fast float %4183, %3262
  %4187 = fadd fast float %4184, %3263
  %4188 = fsub fast float %4000, %3267
  %4189 = fmul fast float %4164, %4188
  %4190 = fadd fast float %4189, %3267
  br label %4255

; <label>:4191                                    ; preds = %4149
  %4192 = icmp eq i32 %4147, 4
  br i1 %4192, label %4193, label %4233

; <label>:4193                                    ; preds = %4191
  %4194 = fmul fast float %4152, %3867
  %4195 = fmul fast float %4152, %3868
  %4196 = fadd fast float %4194, %3253
  %4197 = fadd fast float %4195, %3254
  %4198 = call float @dx.op.binary.f32(i32 36, float %3266, float %3869)  ; FMin(a,b)
  %4199 = fsub fast float %4198, %3266
  %4200 = fmul fast float %4199, %4155
  %4201 = fadd fast float %4200, %3266
  %4202 = fadd fast float %3866, %3265
  %4203 = fmul fast float %4202, 0x3FF337FAE0000000
  %4204 = fmul fast float %3265, %3265
  %4205 = fmul fast float %3866, %3866
  %4206 = fadd fast float %4205, %4204
  %4207 = fmul fast float %4206, 0x3FE5152B00000000
  %4208 = fmul fast float %3265, 0xBFCC1F85E0000000
  %4209 = fmul fast float %4208, %3866
  %4210 = fadd fast float %4209, 0xBFE1363700000000
  %4211 = fadd fast float %4210, %4203
  %4212 = fsub fast float %4211, %4207
  %4213 = fmul fast float %4202, 0x3FBA6F0D00000000
  %4214 = fmul fast float %4206, 0x3FD0432880000000
  %4215 = fmul fast float %3265, 0xBFEF110800000000
  %4216 = fmul fast float %4215, %3866
  %4217 = fadd fast float %4216, 1.000000e+00
  %4218 = fsub fast float %4217, %4213
  %4219 = fadd fast float %4218, %4214
  %4220 = fdiv fast float %4212, %4219
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4222 = fsub fast float %4221, %3265
  %4223 = fmul fast float %4222, %4158
  %4224 = fadd fast float %4223, %3265
  %4225 = fmul fast float %4161, %3972
  %4226 = fmul fast float %4161, %3973
  %4227 = fmul fast float %4161, %3974
  %4228 = fadd fast float %4225, %3261
  %4229 = fadd fast float %4226, %3262
  %4230 = fadd fast float %4227, %3263
  %4231 = fmul fast float %4164, %4000
  %4232 = fadd fast float %4231, %3267
  br label %4255

; <label>:4233                                    ; preds = %4191
  %4234 = icmp eq i32 %4147, 8
  br i1 %4234, label %4235, label %4255

; <label>:4235                                    ; preds = %4233
  %4236 = fmul fast float %4152, %3867
  %4237 = fmul fast float %4152, %3868
  %4238 = fadd fast float %4236, %3253
  %4239 = fadd fast float %4237, %3254
  %4240 = call float @dx.op.binary.f32(i32 36, float %3266, float %3869)  ; FMin(a,b)
  %4241 = fsub fast float %4240, %3266
  %4242 = fmul fast float %4241, %4155
  %4243 = fadd fast float %4242, %3266
  %4244 = fsub fast float %3866, %3265
  %4245 = fmul fast float %4158, %4244
  %4246 = fadd fast float %4245, %3265
  %4247 = fmul fast float %4161, %3972
  %4248 = fmul fast float %4161, %3973
  %4249 = fmul fast float %4161, %3974
  %4250 = fadd fast float %4247, %3261
  %4251 = fadd fast float %4248, %3262
  %4252 = fadd fast float %4249, %3263
  %4253 = fmul fast float %4164, %4000
  %4254 = fadd fast float %4253, %3267
  br label %4255

; <label>:4255                                    ; preds = %4235, %4233, %4193, %4166, %4138, %3565, %3269, %3252
  %4256 = phi float [ %3253, %4138 ], [ %3253, %3565 ], [ %3253, %3252 ], [ %3253, %3269 ], [ %4171, %4166 ], [ %4196, %4193 ], [ %3253, %4233 ], [ %4238, %4235 ]
  %4257 = phi float [ %3254, %4138 ], [ %3254, %3565 ], [ %3254, %3252 ], [ %3254, %3269 ], [ %4172, %4166 ], [ %4197, %4193 ], [ %3254, %4233 ], [ %4239, %4235 ]
  %4258 = phi float [ %4139, %4138 ], [ %3255, %3565 ], [ %3255, %3252 ], [ %3255, %3269 ], [ %4139, %4166 ], [ %4139, %4193 ], [ %4139, %4233 ], [ %4139, %4235 ]
  %4259 = phi float [ %4140, %4138 ], [ %3256, %3565 ], [ %3256, %3252 ], [ %3256, %3269 ], [ %4140, %4166 ], [ %4140, %4193 ], [ %4140, %4233 ], [ %4140, %4235 ]
  %4260 = phi float [ %4141, %4138 ], [ %3257, %3565 ], [ %3257, %3252 ], [ %3257, %3269 ], [ %4141, %4166 ], [ %4141, %4193 ], [ %4141, %4233 ], [ %4141, %4235 ]
  %4261 = phi float [ %4142, %4138 ], [ %3258, %3565 ], [ %3258, %3252 ], [ %3258, %3269 ], [ %4142, %4166 ], [ %4142, %4193 ], [ %4142, %4233 ], [ %4142, %4235 ]
  %4262 = phi float [ %4143, %4138 ], [ %3259, %3565 ], [ %3259, %3252 ], [ %3259, %3269 ], [ %4143, %4166 ], [ %4143, %4193 ], [ %4143, %4233 ], [ %4143, %4235 ]
  %4263 = phi float [ %4144, %4138 ], [ %3260, %3565 ], [ %3260, %3252 ], [ %3260, %3269 ], [ %4144, %4166 ], [ %4144, %4193 ], [ %4144, %4233 ], [ %4144, %4235 ]
  %4264 = phi float [ %3261, %4138 ], [ %3261, %3565 ], [ %3261, %3252 ], [ %3261, %3269 ], [ %4185, %4166 ], [ %4228, %4193 ], [ %3261, %4233 ], [ %4250, %4235 ]
  %4265 = phi float [ %3262, %4138 ], [ %3262, %3565 ], [ %3262, %3252 ], [ %3262, %3269 ], [ %4186, %4166 ], [ %4229, %4193 ], [ %3262, %4233 ], [ %4251, %4235 ]
  %4266 = phi float [ %3263, %4138 ], [ %3263, %3565 ], [ %3263, %3252 ], [ %3263, %3269 ], [ %4187, %4166 ], [ %4230, %4193 ], [ %3263, %4233 ], [ %4252, %4235 ]
  %4267 = phi float [ %4145, %4138 ], [ %3264, %3565 ], [ %3264, %3252 ], [ %3264, %3269 ], [ %4145, %4166 ], [ %4145, %4193 ], [ %4145, %4233 ], [ %4145, %4235 ]
  %4268 = phi float [ %3265, %4138 ], [ %3265, %3565 ], [ %3265, %3252 ], [ %3265, %3269 ], [ %4178, %4166 ], [ %4224, %4193 ], [ %3265, %4233 ], [ %4246, %4235 ]
  %4269 = phi float [ %3266, %4138 ], [ %3266, %3565 ], [ %3266, %3252 ], [ %3266, %3269 ], [ %4175, %4166 ], [ %4201, %4193 ], [ %3266, %4233 ], [ %4243, %4235 ]
  %4270 = phi float [ %3267, %4138 ], [ %3267, %3565 ], [ %3267, %3252 ], [ %3267, %3269 ], [ %4190, %4166 ], [ %4232, %4193 ], [ %3267, %4233 ], [ %4254, %4235 ]
  %4271 = phi float [ %4146, %4138 ], [ %3268, %3565 ], [ %3268, %3252 ], [ %3268, %3269 ], [ %4146, %4166 ], [ %4146, %4193 ], [ %4146, %4233 ], [ %4146, %4235 ]
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = call float @dx.op.dot2.f32(i32 54, float %4256, float %4257, float %4256, float %4257)  ; Dot2(ax,ay,bx,by)
  %4275 = fmul fast float %4274, 0x3FE3333340000000
  %4276 = fsub fast float 1.000000e+00, %4275
  %4277 = call float @dx.op.dot3.f32(i32 55, float %4256, float %4257, float %4276, float %4256, float %4257, float %4276)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = call float @dx.op.unary.f32(i32 25, float %4277)  ; Rsqrt(value)
  %4279 = fmul fast float %4278, %4256
  %4280 = fmul fast float %4278, %4257
  %4281 = fmul fast float %4276, %4278
  %4282 = fmul fast float %4281, %111
  %4283 = fmul fast float %4281, %112
  %4284 = fmul fast float %4281, %113
  %4285 = fmul fast float %4279, %76
  %4286 = fmul fast float %4279, %77
  %4287 = fmul fast float %4279, %78
  %4288 = fadd fast float %4282, %4285
  %4289 = fadd fast float %4283, %4286
  %4290 = fadd fast float %4284, %4287
  %4291 = fmul fast float %123, %4280
  %4292 = fmul fast float %124, %4280
  %4293 = fmul fast float %125, %4280
  %4294 = fadd fast float %4288, %4291
  %4295 = fadd fast float %4289, %4292
  %4296 = fadd fast float %4290, %4293
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float %4294, float %4295, float %4296)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call float @dx.op.unary.f32(i32 25, float %4297)  ; Rsqrt(value)
  %4299 = fmul fast float %4294, %4298
  %4300 = fmul fast float %4295, %4298
  %4301 = fmul fast float %4296, %4298
  %4302 = and i32 %62, 1
  %4303 = icmp eq i32 %4302, 0
  br i1 %4303, label %4304, label %4843

; <label>:4304                                    ; preds = %4255
  %4305 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4306 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %4307 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %4308 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4309 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %4310 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %4311 = fadd fast float %4305, %167
  %4312 = fadd fast float %4306, %168
  %4313 = fadd fast float %4307, %169
  %4314 = fadd fast float %4308, %167
  %4315 = fadd fast float %4309, %168
  %4316 = fadd fast float %4310, %169
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4323 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4324 = fmul fast float %4318, %104
  %4325 = fmul fast float %4324, %4322
  %4326 = fmul fast float %4319, %105
  %4327 = fmul fast float %4326, %4323
  %4328 = fptoui float %4325 to i32
  %4329 = fptoui float %4327 to i32
  %4330 = fadd fast float %4318, -1.000000e+00
  %4331 = fadd fast float %4319, -1.000000e+00
  %4332 = fptoui float %4330 to i32
  %4333 = fptoui float %4331 to i32
  %4334 = call i32 @dx.op.binary.i32(i32 40, i32 %4328, i32 %4332)  ; UMin(a,b)
  %4335 = call i32 @dx.op.binary.i32(i32 40, i32 %4329, i32 %4333)  ; UMin(a,b)
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 2
  %4338 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4339 = fmul fast float %4337, %92
  %4340 = fsub fast float %4339, %4338
  %4341 = fadd fast float %4320, -1.000000e+00
  %4342 = call float @dx.op.binary.f32(i32 36, float %4340, float %4341)  ; FMin(a,b)
  %4343 = fptoui float %4342 to i32
  %4344 = fptoui float %4318 to i32
  %4345 = fptoui float %4319 to i32
  %4346 = mul i32 %4343, %4345
  %4347 = add i32 %4346, %4335
  %4348 = mul i32 %4347, %4344
  %4349 = add i32 %4348, %4334
  %4350 = shl i32 %4349, 2
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = and i32 %4352, 1023
  %4354 = lshr i32 %4352, 10
  %4355 = icmp eq i32 %4353, 0
  br i1 %4355, label %4809, label %4356

; <label>:4356                                    ; preds = %4304
  %4357 = and i32 %4352, 1023
  br label %4358

; <label>:4358                                    ; preds = %4487, %4356
  %4359 = phi i32 [ %4437, %4487 ], [ 0, %4356 ]
  %4360 = phi float [ %4488, %4487 ], [ 0.000000e+00, %4356 ]
  %4361 = phi float [ %4489, %4487 ], [ %4273, %4356 ]
  %4362 = phi float [ %4490, %4487 ], [ %4271, %4356 ]
  %4363 = phi float [ %4491, %4487 ], [ %4264, %4356 ]
  %4364 = phi float [ %4492, %4487 ], [ %4265, %4356 ]
  %4365 = phi float [ %4493, %4487 ], [ %4266, %4356 ]
  %4366 = phi float [ %4494, %4487 ], [ 0.000000e+00, %4356 ]
  %4367 = phi float [ %4495, %4487 ], [ 0.000000e+00, %4356 ]
  %4368 = phi float [ %4496, %4487 ], [ %4261, %4356 ]
  %4369 = phi float [ %4497, %4487 ], [ %4262, %4356 ]
  %4370 = phi float [ %4498, %4487 ], [ %4263, %4356 ]
  %4371 = phi float [ %4499, %4487 ], [ %4299, %4356 ]
  %4372 = phi float [ %4500, %4487 ], [ %4300, %4356 ]
  %4373 = phi float [ %4501, %4487 ], [ %4301, %4356 ]
  %4374 = phi float [ %4502, %4487 ], [ %4269, %4356 ]
  %4375 = phi float [ %4503, %4487 ], [ %4268, %4356 ]
  %4376 = phi float [ %4504, %4487 ], [ 0.000000e+00, %4356 ]
  %4377 = phi float [ %4505, %4487 ], [ %4267, %4356 ]
  %4378 = phi float [ %4506, %4487 ], [ %4258, %4356 ]
  %4379 = phi float [ %4507, %4487 ], [ %4259, %4356 ]
  %4380 = phi float [ %4508, %4487 ], [ %4260, %4356 ]
  %4381 = add nuw nsw i32 %4359, %4354
  %4382 = shl i32 %4381, 2
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = shl i32 %4384, 8
  %4386 = or i32 %4385, 48
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = extractvalue %dx.types.ResRet.f32 %4387, 3
  %4392 = or i32 %4385, 64
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.i32 %4393, 1
  %4396 = or i32 %4385, 80
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4400 = or i32 %4385, 96
  %4401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4400, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.ResRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.ResRet.f32 %4401, 2
  %4405 = extractvalue %dx.types.ResRet.f32 %4401, 3
  %4406 = or i32 %4385, 112
  %4407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4409 = or i32 %4385, 128
  %4410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = extractvalue %dx.types.ResRet.f32 %4410, 3
  %4415 = or i32 %4385, 144
  %4416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = or i32 %4385, 160
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = extractvalue %dx.types.ResRet.f32 %4422, 3
  %4427 = or i32 %4385, 192
  %4428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.i32 %4428, 0
  %4430 = or i32 %4385, 208
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = or i32 %4385, 248
  %4434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = add nuw nsw i32 %4359, 1
  %4438 = bitcast float %4391 to i32
  %4439 = and i32 %4438, 512
  %4440 = icmp eq i32 %4439, 0
  %4441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.f32 %4441, 0
  %4443 = extractvalue %dx.types.ResRet.f32 %4441, 1
  %4444 = extractvalue %dx.types.ResRet.f32 %4441, 2
  %4445 = extractvalue %dx.types.ResRet.f32 %4441, 3
  %4446 = call float @dx.op.dot4.f32(i32 56, float %4442, float %4443, float %4444, float %4445, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4447 = or i32 %4385, 16
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = extractvalue %dx.types.ResRet.f32 %4448, 3
  %4453 = call float @dx.op.dot4.f32(i32 56, float %4449, float %4450, float %4451, float %4452, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4454 = or i32 %4385, 32
  %4455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4454, i32 undef)  ; BufferLoad(srv,index,wot)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.ResRet.f32 %4455, 1
  %4458 = extractvalue %dx.types.ResRet.f32 %4455, 2
  %4459 = extractvalue %dx.types.ResRet.f32 %4455, 3
  %4460 = call float @dx.op.dot4.f32(i32 56, float %4456, float %4457, float %4458, float %4459, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4461 = call float @dx.op.unary.f32(i32 27, float %4446)  ; Round_ni(value)
  %4462 = call float @dx.op.unary.f32(i32 6, float %4461)  ; FAbs(value)
  %4463 = call float @dx.op.unary.f32(i32 27, float %4453)  ; Round_ni(value)
  %4464 = call float @dx.op.unary.f32(i32 6, float %4463)  ; FAbs(value)
  %4465 = call float @dx.op.unary.f32(i32 6, float %4460)  ; FAbs(value)
  %4466 = call float @dx.op.unary.f32(i32 27, float %4465)  ; Round_ni(value)
  %4467 = fadd fast float %4464, %4462
  %4468 = fadd fast float %4467, %4466
  %4469 = fcmp fast oeq float %4468, 0.000000e+00
  %4470 = call float @dx.op.dot4.f32(i32 56, float %4442, float %4443, float %4444, float %4445, float %4311, float %4312, float %4313, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4471 = call float @dx.op.dot4.f32(i32 56, float %4449, float %4450, float %4451, float %4452, float %4311, float %4312, float %4313, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4472 = call float @dx.op.dot4.f32(i32 56, float %4442, float %4443, float %4444, float %4445, float %4314, float %4315, float %4316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4473 = call float @dx.op.dot4.f32(i32 56, float %4449, float %4450, float %4451, float %4452, float %4314, float %4315, float %4316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4474 = fsub fast float %4470, %4446
  %4475 = fsub fast float %4472, %4446
  %4476 = fsub fast float %4471, %4453
  %4477 = fsub fast float %4473, %4453
  %4478 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4389, float %4390, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4481 = fadd fast float %4480, %4478
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4484 = fcmp fast ogt float %4482, %4483
  %4485 = and i1 %4469, %4484
  %4486 = and i1 %4440, %4485
  br i1 %4486, label %4510, label %4487

; <label>:4487                                    ; preds = %4795, %4591, %4510, %4358
  %4488 = phi float [ %4360, %4510 ], [ %4594, %4591 ], [ %4594, %4795 ], [ %4360, %4358 ]
  %4489 = phi float [ %4361, %4510 ], [ %4361, %4591 ], [ %4771, %4795 ], [ %4361, %4358 ]
  %4490 = phi float [ %4362, %4510 ], [ %4362, %4591 ], [ %4769, %4795 ], [ %4362, %4358 ]
  %4491 = phi float [ %4363, %4510 ], [ %4363, %4591 ], [ %4747, %4795 ], [ %4363, %4358 ]
  %4492 = phi float [ %4364, %4510 ], [ %4364, %4591 ], [ %4748, %4795 ], [ %4364, %4358 ]
  %4493 = phi float [ %4365, %4510 ], [ %4365, %4591 ], [ %4749, %4795 ], [ %4365, %4358 ]
  %4494 = phi float [ %4366, %4510 ], [ %4366, %4591 ], [ %4718, %4795 ], [ %4366, %4358 ]
  %4495 = phi float [ %4367, %4510 ], [ %4367, %4591 ], [ %4716, %4795 ], [ %4367, %4358 ]
  %4496 = phi float [ %4368, %4510 ], [ %4368, %4591 ], [ %4805, %4795 ], [ %4368, %4358 ]
  %4497 = phi float [ %4369, %4510 ], [ %4369, %4591 ], [ %4806, %4795 ], [ %4369, %4358 ]
  %4498 = phi float [ %4370, %4510 ], [ %4370, %4591 ], [ %4807, %4795 ], [ %4370, %4358 ]
  %4499 = phi float [ %4371, %4510 ], [ %4371, %4591 ], [ %4697, %4795 ], [ %4371, %4358 ]
  %4500 = phi float [ %4372, %4510 ], [ %4372, %4591 ], [ %4698, %4795 ], [ %4372, %4358 ]
  %4501 = phi float [ %4373, %4510 ], [ %4373, %4591 ], [ %4699, %4795 ], [ %4373, %4358 ]
  %4502 = phi float [ %4374, %4510 ], [ %4374, %4591 ], [ %4727, %4795 ], [ %4374, %4358 ]
  %4503 = phi float [ %4375, %4510 ], [ %4375, %4591 ], [ %4724, %4795 ], [ %4375, %4358 ]
  %4504 = phi float [ %4376, %4510 ], [ %4376, %4591 ], [ %4721, %4795 ], [ %4376, %4358 ]
  %4505 = phi float [ %4377, %4510 ], [ %4377, %4591 ], [ %4714, %4795 ], [ %4377, %4358 ]
  %4506 = phi float [ %4378, %4510 ], [ %4378, %4591 ], [ %4709, %4795 ], [ %4378, %4358 ]
  %4507 = phi float [ %4379, %4510 ], [ %4379, %4591 ], [ %4710, %4795 ], [ %4379, %4358 ]
  %4508 = phi float [ %4380, %4510 ], [ %4380, %4591 ], [ %4711, %4795 ], [ %4380, %4358 ]
  %4509 = icmp eq i32 %4437, %4357
  br i1 %4509, label %4808, label %4358

; <label>:4510                                    ; preds = %4358
  %4511 = extractvalue %dx.types.ResRet.f32 %4407, 3
  %4512 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4513 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4516 = extractvalue %dx.types.ResRet.i32 %4393, 3
  %4517 = extractvalue %dx.types.ResRet.i32 %4393, 2
  %4518 = add i32 %4516, 0
  %4519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4518, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4519, %dx.types.Handle %4520, float %4446, float %4453, float undef, float undef, i32 0, i32 0, i32 undef, float %4474, float %4476, float undef, float %4475, float %4477, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = fmul fast float %4522, %4515
  %4524 = fadd fast float %4523, %4514
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4446, %4402
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4453, float %4526)  ; FMad(a,b,c)
  %4528 = fadd fast float %4527, %4513
  %4529 = fmul fast float %4446, %4404
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4453, float %4529)  ; FMad(a,b,c)
  %4531 = fadd fast float %4530, %4512
  %4532 = fmul fast float %4474, %4402
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4476, float %4532)  ; FMad(a,b,c)
  %4534 = fmul fast float %4474, %4404
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4476, float %4534)  ; FMad(a,b,c)
  %4536 = fmul fast float %4475, %4402
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4477, float %4536)  ; FMad(a,b,c)
  %4538 = fmul fast float %4475, %4404
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4477, float %4538)  ; FMad(a,b,c)
  %4540 = add i32 %4517, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4541, %dx.types.Handle %4520, float %4528, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4533, float %4535, float undef, float %4537, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = and i32 %4438, 1024
  %4545 = icmp ne i32 %4544, 0
  %4546 = fcmp fast ogt float %4543, 0x3FE0101020000000
  %4547 = uitofp i1 %4546 to float
  %4548 = select i1 %4545, float %4547, float %4543
  %4549 = and i32 %4438, 8192
  %4550 = icmp ne i32 %4549, 0
  %4551 = select i1 %4550, float %4511, float 1.000000e+00
  %4552 = fmul fast float %4446, 2.000000e+00
  %4553 = fadd fast float %4552, -1.000000e+00
  %4554 = call float @dx.op.unary.f32(i32 6, float %4553)  ; FAbs(value)
  %4555 = fmul fast float %4554, %4435
  %4556 = fsub fast float %4555, %4435
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fmul fast float %4453, 2.000000e+00
  %4559 = fadd fast float %4558, -1.000000e+00
  %4560 = call float @dx.op.unary.f32(i32 6, float %4559)  ; FAbs(value)
  %4561 = fmul fast float %4560, %4436
  %4562 = fsub fast float %4561, %4436
  %4563 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4564 = fmul fast float %4465, %4398
  %4565 = fsub fast float %4564, %4398
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = fmul fast float %4525, %4551
  %4568 = fmul fast float %4567, %4522
  %4569 = fmul fast float %4568, %4557
  %4570 = fmul fast float %4569, %4548
  %4571 = fmul fast float %4570, %4563
  %4572 = fmul fast float %4571, %4566
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4576 = fsub fast float %4482, %4575
  %4577 = fmul fast float %4576, %4574
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4572, %4399
  %4580 = fadd fast float %4572, %4399
  %4581 = fmul fast float %4580, %4408
  %4582 = fsub fast float %4581, %4408
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = and i32 %4438, 128
  %4585 = icmp ne i32 %4584, 0
  %4586 = select i1 %4585, float %4583, float %4579
  %4587 = fmul fast float %4586, %4578
  %4588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.f32 %4588, 0
  %4590 = fcmp fast ugt float %4587, %4589
  br i1 %4590, label %4591, label %4487

; <label>:4591                                    ; preds = %4510
  %4592 = select i1 %4550, float %4587, float 0.000000e+00
  %4593 = fadd fast float %4592, %4360
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  br i1 %4550, label %4487, label %4595

; <label>:4595                                    ; preds = %4591
  %4596 = and i32 %4438, 4
  %4597 = and i32 %4438, 8
  %4598 = add i32 %4394, 0
  %4599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4598, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4601 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4599, %dx.types.Handle %4600, float %4528, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4533, float %4535, float undef, float %4537, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = bitcast float %4420 to i32
  %4607 = and i32 %4606, 255
  %4608 = uitofp i32 %4607 to float
  %4609 = lshr i32 %4606, 8
  %4610 = and i32 %4609, 255
  %4611 = uitofp i32 %4610 to float
  %4612 = fmul fast float %4605, %4608
  %4613 = fadd fast float %4612, %4611
  %4614 = fmul fast float %4613, 0x3F70101000000000
  %4615 = add i32 %4395, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4616, %dx.types.Handle %4600, float %4528, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4533, float %4535, float undef, float %4537, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4622 = bitcast float %4414 to i32
  %4623 = and i32 %4622, 255
  %4624 = uitofp i32 %4623 to float
  %4625 = lshr i32 %4622, 8
  %4626 = and i32 %4625, 255
  %4627 = uitofp i32 %4626 to float
  %4628 = lshr i32 %4622, 16
  %4629 = and i32 %4628, 255
  %4630 = uitofp i32 %4629 to float
  %4631 = fmul fast float %4630, 0x3F70101000000000
  %4632 = fmul fast float %4618, %4624
  %4633 = fadd fast float %4632, %4627
  %4634 = fmul fast float %4633, 0x3F70101000000000
  %4635 = fadd fast float %4619, -5.000000e-01
  %4636 = fadd fast float %4621, -5.000000e-01
  %4637 = fmul fast float %4635, %4631
  %4638 = fmul fast float %4636, %4631
  %4639 = fadd fast float %4637, 5.000000e-01
  %4640 = fadd fast float %4638, 5.000000e-01
  %4641 = fmul fast float %4602, %4423
  %4642 = fmul fast float %4603, %4424
  %4643 = fmul fast float %4604, %4425
  %4644 = fmul fast float %4639, 2.000000e+00
  %4645 = fadd fast float %4644, -1.000000e+00
  %4646 = fmul fast float %4640, 2.000000e+00
  %4647 = fadd fast float %4646, -1.000000e+00
  %4648 = fadd fast float %4645, %4647
  %4649 = fmul fast float %4648, 5.000000e-01
  %4650 = fsub fast float %4645, %4647
  %4651 = fmul fast float %4650, 5.000000e-01
  %4652 = call float @dx.op.unary.f32(i32 6, float %4649)  ; FAbs(value)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = call float @dx.op.unary.f32(i32 6, float %4651)  ; FAbs(value)
  %4655 = fsub fast float %4653, %4654
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4651, float %4655, float %4649, float %4651, float %4655)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 25, float %4656)  ; Rsqrt(value)
  %4658 = fmul fast float %4649, %4657
  %4659 = fmul fast float %4651, %4657
  %4660 = fmul fast float %4657, %4655
  %4661 = fmul fast float %4660, %4388
  %4662 = fmul fast float %4660, %4389
  %4663 = fmul fast float %4660, %4390
  %4664 = fmul fast float %4658, %4411
  %4665 = fmul fast float %4658, %4412
  %4666 = fmul fast float %4658, %4413
  %4667 = fadd fast float %4664, %4661
  %4668 = fadd fast float %4665, %4662
  %4669 = fadd fast float %4666, %4663
  %4670 = fmul fast float %4659, %4417
  %4671 = fmul fast float %4659, %4418
  %4672 = fmul fast float %4659, %4419
  %4673 = fadd fast float %4667, %4670
  %4674 = fadd fast float %4668, %4671
  %4675 = fadd fast float %4669, %4672
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4674, float %4675, float %4673, float %4674, float %4675)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 25, float %4676)  ; Rsqrt(value)
  %4678 = fmul fast float %4673, %4677
  %4679 = fmul fast float %4674, %4677
  %4680 = fmul fast float %4675, %4677
  %4681 = icmp ne i32 %4597, 0
  %4682 = select i1 %4681, float 1.000000e+00, float 0.000000e+00
  %4683 = fmul fast float %4587, %4682
  %4684 = and i32 %4438, 1
  %4685 = icmp eq i32 %4684, 0
  br i1 %4685, label %4686, label %4690

; <label>:4686                                    ; preds = %4595
  %4687 = fsub fast float %4678, %4371
  %4688 = fsub fast float %4679, %4372
  %4689 = fsub fast float %4680, %4373
  br label %4690

; <label>:4690                                    ; preds = %4686, %4595
  %4691 = phi float [ %4687, %4686 ], [ %4678, %4595 ]
  %4692 = phi float [ %4688, %4686 ], [ %4679, %4595 ]
  %4693 = phi float [ %4689, %4686 ], [ %4680, %4595 ]
  %4694 = fmul float %4693, %4683
  %4695 = fmul float %4692, %4683
  %4696 = fmul float %4691, %4683
  %4697 = fadd fast float %4696, %4371
  %4698 = fadd fast float %4695, %4372
  %4699 = fadd fast float %4694, %4373
  %4700 = icmp ne i32 %4596, 0
  %4701 = select i1 %4700, float 1.000000e+00, float 0.000000e+00
  %4702 = fmul fast float %4587, %4701
  %4703 = fsub fast float %4641, %4378
  %4704 = fsub fast float %4642, %4379
  %4705 = fsub fast float %4643, %4380
  %4706 = fmul fast float %4703, %4702
  %4707 = fmul fast float %4704, %4702
  %4708 = fmul fast float %4705, %4702
  %4709 = fadd fast float %4706, %4378
  %4710 = fadd fast float %4707, %4379
  %4711 = fadd fast float %4708, %4380
  %4712 = fsub fast float %4614, %4377
  %4713 = fmul fast float %4712, %4702
  %4714 = fadd fast float %4713, %4377
  %4715 = fmul fast float %4702, %4367
  %4716 = fsub fast float %4367, %4715
  %4717 = fmul fast float %4702, %4366
  %4718 = fsub fast float %4366, %4717
  %4719 = bitcast float %4432 to i32
  %4720 = fadd fast float %4587, %4376
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fsub fast float %4634, %4375
  %4723 = fmul fast float %4722, %4683
  %4724 = fadd fast float %4723, %4375
  %4725 = fsub fast float %4620, %4374
  %4726 = fmul fast float %4725, %4683
  %4727 = fadd fast float %4726, %4374
  br i1 %4685, label %4736, label %4728

; <label>:4728                                    ; preds = %4690
  %4729 = and i32 %4438, 32768
  %4730 = icmp eq i32 %4729, 0
  br i1 %4730, label %4746, label %4731

; <label>:4731                                    ; preds = %4728
  %4732 = fmul fast float %4683, 1.270000e+02
  %4733 = fadd fast float %4732, %4363
  %4734 = fadd fast float %4732, %4364
  %4735 = fadd fast float %4732, %4365
  br label %4746

; <label>:4736                                    ; preds = %4690
  %4737 = fsub fast float 1.270000e+02, %4363
  %4738 = fsub fast float 1.270000e+02, %4364
  %4739 = fsub fast float 1.270000e+02, %4365
  %4740 = fmul fast float %4683, %4737
  %4741 = fmul fast float %4683, %4738
  %4742 = fmul fast float %4683, %4739
  %4743 = fadd fast float %4740, %4363
  %4744 = fadd fast float %4741, %4364
  %4745 = fadd fast float %4742, %4365
  br label %4746

; <label>:4746                                    ; preds = %4736, %4731, %4728
  %4747 = phi float [ %4733, %4731 ], [ %4363, %4728 ], [ %4743, %4736 ]
  %4748 = phi float [ %4734, %4731 ], [ %4364, %4728 ], [ %4744, %4736 ]
  %4749 = phi float [ %4735, %4731 ], [ %4365, %4728 ], [ %4745, %4736 ]
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4642, float %4643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4754 = fmul fast float %4753, %4750
  %4755 = fadd fast float %4754, %4752
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = bitcast float %4426 to i32
  %4758 = and i32 %4757, 65535
  %4759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4758)  ; LegacyF16ToF32(value)
  %4760 = lshr i32 %4757, 16
  %4761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4760)  ; LegacyF16ToF32(value)
  %4762 = fcmp fast oge float %4759, 0.000000e+00
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = select i1 %4762, float %4759, float %4764
  %4766 = fadd fast float %4765, %4761
  %4767 = fsub fast float %4756, %4362
  %4768 = fmul fast float %4767, %4587
  %4769 = fadd fast float %4768, %4362
  %4770 = fmul fast float %4766, %4587
  %4771 = call float @dx.op.binary.f32(i32 35, float %4361, float %4770)  ; FMax(a,b)
  %4772 = and i32 %4438, 16
  %4773 = icmp eq i32 %4772, 0
  br i1 %4773, label %4795, label %4774

; <label>:4774                                    ; preds = %4746
  %4775 = add i32 %4429, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %4600, float %4528, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4533, float %4535, float undef, float %4537, float %4539, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = and i32 %4719, 65535
  %4782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4781)  ; LegacyF16ToF32(value)
  %4783 = fmul fast float %4778, %4423
  %4784 = fmul fast float %4779, %4424
  %4785 = fmul fast float %4780, %4425
  %4786 = and i32 %4438, 16384
  %4787 = icmp ne i32 %4786, 0
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = select i1 %4787, float %4789, float 1.000000e+00
  %4791 = fmul fast float %4790, %4782
  %4792 = fmul fast float %4783, %4791
  %4793 = fmul fast float %4784, %4791
  %4794 = fmul fast float %4785, %4791
  br label %4795

; <label>:4795                                    ; preds = %4774, %4746
  %4796 = phi float [ %4792, %4774 ], [ 0.000000e+00, %4746 ]
  %4797 = phi float [ %4793, %4774 ], [ 0.000000e+00, %4746 ]
  %4798 = phi float [ %4794, %4774 ], [ 0.000000e+00, %4746 ]
  %4799 = fsub fast float %4796, %4368
  %4800 = fsub fast float %4797, %4369
  %4801 = fsub fast float %4798, %4370
  %4802 = fmul fast float %4799, %4587
  %4803 = fmul fast float %4800, %4587
  %4804 = fmul fast float %4801, %4587
  %4805 = fadd fast float %4802, %4368
  %4806 = fadd fast float %4803, %4369
  %4807 = fadd fast float %4804, %4370
  br label %4487

; <label>:4808                                    ; preds = %4487
  br label %4809

; <label>:4809                                    ; preds = %4808, %4304
  %4810 = phi float [ 0.000000e+00, %4304 ], [ %4488, %4808 ]
  %4811 = phi float [ %4273, %4304 ], [ %4489, %4808 ]
  %4812 = phi float [ %4271, %4304 ], [ %4490, %4808 ]
  %4813 = phi float [ %4264, %4304 ], [ %4491, %4808 ]
  %4814 = phi float [ %4265, %4304 ], [ %4492, %4808 ]
  %4815 = phi float [ %4266, %4304 ], [ %4493, %4808 ]
  %4816 = phi float [ 0.000000e+00, %4304 ], [ %4494, %4808 ]
  %4817 = phi float [ 0.000000e+00, %4304 ], [ %4495, %4808 ]
  %4818 = phi float [ %4261, %4304 ], [ %4496, %4808 ]
  %4819 = phi float [ %4262, %4304 ], [ %4497, %4808 ]
  %4820 = phi float [ %4263, %4304 ], [ %4498, %4808 ]
  %4821 = phi float [ %4299, %4304 ], [ %4499, %4808 ]
  %4822 = phi float [ %4300, %4304 ], [ %4500, %4808 ]
  %4823 = phi float [ %4301, %4304 ], [ %4501, %4808 ]
  %4824 = phi float [ %4269, %4304 ], [ %4502, %4808 ]
  %4825 = phi float [ %4268, %4304 ], [ %4503, %4808 ]
  %4826 = phi float [ 0.000000e+00, %4304 ], [ %4504, %4808 ]
  %4827 = phi float [ %4267, %4304 ], [ %4505, %4808 ]
  %4828 = phi float [ %4258, %4304 ], [ %4506, %4808 ]
  %4829 = phi float [ %4259, %4304 ], [ %4507, %4808 ]
  %4830 = phi float [ %4260, %4304 ], [ %4508, %4808 ]
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %4821, float %4822, float %4823)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  %4833 = fmul fast float %4832, %4821
  %4834 = fmul fast float %4832, %4822
  %4835 = fmul fast float %4832, %4823
  %4836 = fadd fast float %4826, %1258
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4833, float %4834, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = call float @dx.op.unary.f32(i32 25, float %4838)  ; Rsqrt(value)
  %4840 = fmul fast float %4839, %4833
  %4841 = fmul fast float %4839, %4834
  %4842 = fmul fast float %4839, %4835
  br label %4843

; <label>:4843                                    ; preds = %4809, %4255
  %4844 = phi float [ %4840, %4809 ], [ %4299, %4255 ]
  %4845 = phi float [ %4841, %4809 ], [ %4300, %4255 ]
  %4846 = phi float [ %4842, %4809 ], [ %4301, %4255 ]
  %4847 = phi float [ %4828, %4809 ], [ %4258, %4255 ]
  %4848 = phi float [ %4829, %4809 ], [ %4259, %4255 ]
  %4849 = phi float [ %4830, %4809 ], [ %4260, %4255 ]
  %4850 = phi float [ %4818, %4809 ], [ %4261, %4255 ]
  %4851 = phi float [ %4819, %4809 ], [ %4262, %4255 ]
  %4852 = phi float [ %4820, %4809 ], [ %4263, %4255 ]
  %4853 = phi float [ %4813, %4809 ], [ %4264, %4255 ]
  %4854 = phi float [ %4814, %4809 ], [ %4265, %4255 ]
  %4855 = phi float [ %4815, %4809 ], [ %4266, %4255 ]
  %4856 = phi float [ %4827, %4809 ], [ %4267, %4255 ]
  %4857 = phi float [ %4837, %4809 ], [ %1258, %4255 ]
  %4858 = phi float [ %4825, %4809 ], [ %4268, %4255 ]
  %4859 = phi float [ %4824, %4809 ], [ %4269, %4255 ]
  %4860 = phi float [ %4817, %4809 ], [ 0.000000e+00, %4255 ]
  %4861 = phi float [ %4816, %4809 ], [ 0.000000e+00, %4255 ]
  %4862 = phi float [ %4810, %4809 ], [ 0.000000e+00, %4255 ]
  %4863 = phi float [ %4811, %4809 ], [ %4273, %4255 ]
  %4864 = phi float [ %4812, %4809 ], [ %4271, %4255 ]
  %4865 = add i32 %60, 392
  %4866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.i32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.i32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.i32 %4866, 2
  %4870 = extractvalue %dx.types.ResRet.i32 %4866, 3
  %4871 = bitcast i32 %4867 to float
  %4872 = bitcast i32 %4868 to float
  %4873 = bitcast i32 %4869 to float
  %4874 = bitcast i32 %4870 to float
  %4875 = fsub fast float %4847, %4871
  %4876 = fsub fast float %4848, %4872
  %4877 = fsub fast float %4849, %4873
  %4878 = fmul fast float %4875, %201
  %4879 = fmul fast float %4876, %201
  %4880 = fmul fast float %4877, %201
  %4881 = fadd fast float %4878, %4871
  %4882 = fadd fast float %4879, %4872
  %4883 = fadd fast float %4880, %4873
  %4884 = fsub fast float %4857, %4874
  %4885 = fmul fast float %4884, %201
  %4886 = fadd fast float %4885, %4874
  %4887 = fadd fast float %4856, 0xBFB99999A0000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 0x3FF1C71C80000000
  %4890 = call float @dx.op.binary.f32(i32 36, float %4856, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4891 = fsub fast float 1.000000e+00, %4889
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4881, %4892
  %4894 = fmul fast float %4882, %4892
  %4895 = fmul fast float %4883, %4892
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = fmul fast float %4881, %4889
  %4900 = fmul fast float %4882, %4889
  %4901 = fmul fast float %4883, %4889
  %4902 = fadd fast float %4899, %4890
  %4903 = fadd fast float %4900, %4890
  %4904 = fadd fast float %4901, %4890
  %4905 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4909 = call float @dx.op.binary.f32(i32 36, float %4853, float 1.270000e+02)  ; FMin(a,b)
  %4910 = call float @dx.op.binary.f32(i32 36, float %4854, float 1.270000e+02)  ; FMin(a,b)
  %4911 = call float @dx.op.binary.f32(i32 36, float %4855, float 1.270000e+02)  ; FMin(a,b)
  %4912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.i32 %4912, 3
  %4914 = and i32 %4913, 8
  %4915 = icmp ne i32 %4914, 0
  %4916 = call float @dx.op.binary.f32(i32 35, float %4896, float %4881)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4897, float %4881)  ; FMax(a,b)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4898, float %4881)  ; FMax(a,b)
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = select i1 %261, float %4881, float %4896
  %4921 = select i1 %261, float %4919, float %4897
  %4922 = select i1 %261, float 1.000000e+00, float %4898
  %4923 = select i1 %4915, float %4916, float %4920
  %4924 = select i1 %4915, float %4917, float %4921
  %4925 = select i1 %4915, float %4918, float %4922
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4929 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4930 = fadd fast float %4927, %167
  %4931 = fadd fast float %4928, %168
  %4932 = fadd fast float %4929, %169
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4936 = fsub fast float %4930, %4934
  %4937 = fsub fast float %4931, %4935
  %4938 = fmul fast float %4936, %4936
  %4939 = fmul fast float %4937, %4937
  %4940 = fadd fast float %4938, %4939
  %4941 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4943 = fcmp fast olt float %4941, %4942
  br i1 %4943, label %4944, label %5011

; <label>:4944                                    ; preds = %4843
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.f32 %4947, 0
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4952 = extractvalue %dx.types.CBufRet.f32 %4947, 1
  %4953 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4954 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4955 = extractvalue %dx.types.CBufRet.f32 %4947, 3
  %4956 = extractvalue %dx.types.CBufRet.f32 %4949, 3
  %4957 = fadd fast float %4954, %4930
  %4958 = fadd fast float %4955, %4931
  %4959 = fadd fast float %4956, %4932
  %4960 = fmul fast float %4957, %4946
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4948, float %4960)  ; FMad(a,b,c)
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4959, float %4950, float %4961)  ; FMad(a,b,c)
  %4963 = fmul fast float %4957, %4951
  %4964 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4952, float %4963)  ; FMad(a,b,c)
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4959, float %4953, float %4964)  ; FMad(a,b,c)
  %4966 = fsub fast float %4962, %4954
  %4967 = fsub fast float %4965, %4955
  %4968 = fsub fast float %4966, %4934
  %4969 = fadd fast float %4968, %4942
  %4970 = fsub fast float %4967, %4935
  %4971 = fadd fast float %4970, %4942
  %4972 = extractvalue %dx.types.CBufRet.f32 %4933, 3
  %4973 = fmul fast float %4969, %4972
  %4974 = fmul fast float %4971, %4972
  %4975 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = fsub fast float 1.000000e+00, %4976
  %4979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4977, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = fcmp fast ugt float %4980, 0.000000e+00
  br i1 %4981, label %4982, label %5285

; <label>:4982                                    ; preds = %4944
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4985 = fmul fast float %4984, %4980
  %4986 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4987 = fadd fast float %4986, %4985
  %4988 = extractvalue %dx.types.CBufRet.f32 %4949, 2
  %4989 = fadd fast float %4987, %4956
  %4990 = fmul fast float %4962, %4950
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4965, float %4953, float %4990)  ; FMad(a,b,c)
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4989, float %4988, float %4991)  ; FMad(a,b,c)
  %4993 = fsub fast float %4992, %4956
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %4996 = fsub fast float %4993, %4995
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4977, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.ResRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.ResRet.f32 %4997, 2
  %5001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4977, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = fadd fast float %5002, %4998
  %5006 = fmul fast float %5005, 0x3F847AE140000000
  %5007 = fadd fast float %5003, %4999
  %5008 = fmul fast float %5007, 0x3F847AE140000000
  %5009 = fadd fast float %5004, %5000
  %5010 = fmul fast float %5009, 0x3F847AE140000000
  br label %5285

; <label>:5011                                    ; preds = %4843
  %5012 = and i32 %237, 1
  %5013 = icmp eq i32 %5012, 0
  br i1 %5013, label %5285, label %5014

; <label>:5014                                    ; preds = %5011
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5025 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5026 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5027 = fadd fast float %5024, %4930
  %5028 = fadd fast float %5025, %4931
  %5029 = fadd fast float %5026, %4932
  %5030 = fmul fast float %5027, %5016
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %5018, float %5030)  ; FMad(a,b,c)
  %5032 = call float @dx.op.tertiary.f32(i32 46, float %5029, float %5020, float %5031)  ; FMad(a,b,c)
  %5033 = fmul fast float %5027, %5021
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %5022, float %5033)  ; FMad(a,b,c)
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5029, float %5023, float %5034)  ; FMad(a,b,c)
  %5036 = fsub fast float %5032, %5024
  %5037 = fsub fast float %5035, %5025
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.i32 %5045, 0
  %5047 = extractvalue %dx.types.CBufRet.i32 %5045, 1
  %5048 = udiv i32 %5047, %5046
  %5049 = fsub fast float %5036, %5039
  %5050 = fsub fast float %5037, %5040
  %5051 = call float @dx.op.binary.f32(i32 35, float %5049, float 0.000000e+00)  ; FMax(a,b)
  %5052 = call float @dx.op.binary.f32(i32 35, float %5050, float 0.000000e+00)  ; FMax(a,b)
  %5053 = call float @dx.op.binary.f32(i32 36, float %5051, float %5041)  ; FMin(a,b)
  %5054 = call float @dx.op.binary.f32(i32 36, float %5052, float %5042)  ; FMin(a,b)
  %5055 = add i32 %5046, -1
  %5056 = add i32 %5048, -1
  %5057 = fmul fast float %5053, %5044
  %5058 = fmul fast float %5054, %5044
  %5059 = fptoui float %5057 to i32
  %5060 = fptoui float %5058 to i32
  %5061 = call i32 @dx.op.binary.i32(i32 40, i32 %5059, i32 %5055)  ; UMin(a,b)
  %5062 = call i32 @dx.op.binary.i32(i32 40, i32 %5060, i32 %5056)  ; UMin(a,b)
  %5063 = mul i32 %5062, %5046
  %5064 = add i32 %5063, %5061
  %5065 = shl i32 %5064, 2
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = icmp eq i32 %5067, -1
  br i1 %5068, label %5285, label %5069

; <label>:5069                                    ; preds = %5014
  %5070 = mul i32 %5067, 148
  %5071 = add i32 %5070, 4
  %5072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = add i32 %5070, 8
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = add i32 %5070, 36
  %5078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5077, i32 undef)  ; BufferLoad(srv,index,wot)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = add i32 %5070, 60
  %5081 = add i32 %5070, 92
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = add i32 %5070, 116
  %5085 = fsub fast float %5036, %5073
  %5086 = fsub fast float %5037, %5076
  %5087 = fmul fast float %5044, %5085
  %5088 = fmul fast float %5044, %5086
  %5089 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5094 = call float @dx.op.unary.f32(i32 83, float %5089)  ; DerivCoarseX(value)
  %5095 = call float @dx.op.unary.f32(i32 83, float %5091)  ; DerivCoarseX(value)
  %5096 = call float @dx.op.unary.f32(i32 84, float %5089)  ; DerivCoarseY(value)
  %5097 = call float @dx.op.unary.f32(i32 84, float %5091)  ; DerivCoarseY(value)
  %5098 = fmul fast float %5094, %5093
  %5099 = fmul fast float %5095, %5093
  %5100 = fmul fast float %5096, %5093
  %5101 = fmul fast float %5097, %5093
  %5102 = call float @dx.op.dot2.f32(i32 54, float %5100, float %5101, float %5100, float %5101)  ; Dot2(ax,ay,bx,by)
  %5103 = call float @dx.op.dot2.f32(i32 54, float %5098, float %5099, float %5098, float %5099)  ; Dot2(ax,ay,bx,by)
  %5104 = call float @dx.op.binary.f32(i32 35, float %5103, float %5102)  ; FMax(a,b)
  %5105 = call float @dx.op.unary.f32(i32 23, float %5104)  ; Log(value)
  %5106 = fmul fast float %5105, 5.000000e-01
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 1
  %5109 = fadd fast float %5108, %5106
  %5110 = call float @dx.op.binary.f32(i32 35, float %5109, float 0.000000e+00)  ; FMax(a,b)
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5113 = fadd fast float %5112, %5110
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5116 = fadd fast float %5113, %5115
  %5117 = add i32 %5083, 0
  %5118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5118, i32 0)  ; GetDimensions(handle,mipLevel)
  %5120 = extractvalue %dx.types.Dimensions %5119, 0
  %5121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5120)  ; FirstbitLo(value)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 1
  %5124 = sub nsw i32 %5123, %5121
  %5125 = sitofp i32 %5124 to float
  %5126 = fsub fast float %5116, %5125
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0.000000e+00)  ; FMax(a,b)
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5118, %dx.types.Handle %52, float %5089, float %5091, float %5079, float undef, i32 0, i32 0, i32 undef, float %5127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fcmp ule float %5129, 0x3FE0101020000000
  %5131 = extractvalue %dx.types.CBufRet.i32 %5122, 0
  %5132 = and i32 %5131, 128
  %5133 = icmp ne i32 %5132, 0
  %5134 = and i1 %5130, %5133
  br i1 %5134, label %5285, label %5135

; <label>:5135                                    ; preds = %5069
  %5136 = add i32 %5070, 20
  %5137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = add i32 %5070, 24
  %5140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = add i32 %5070, 40
  %5143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5142, i32 undef)  ; BufferLoad(srv,index,wot)
  %5144 = extractvalue %dx.types.ResRet.f32 %5143, 0
  %5145 = add i32 %5070, 96
  %5146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.i32 %5146, 0
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5150 = fmul fast float %5149, %5089
  %5151 = fmul fast float %5149, %5091
  %5152 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5153 = fadd fast float %5150, %5152
  %5154 = fadd fast float %5151, %5152
  %5155 = add i32 %5147, 0
  %5156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5156, i32 0)  ; GetDimensions(handle,mipLevel)
  %5158 = extractvalue %dx.types.Dimensions %5157, 0
  %5159 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5158)  ; FirstbitLo(value)
  %5160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.i32 %5160, 1
  %5162 = sub nsw i32 %5161, %5159
  %5163 = sitofp i32 %5162 to float
  %5164 = fsub fast float %5113, %5163
  %5165 = call float @dx.op.binary.f32(i32 35, float %5164, float 0.000000e+00)  ; FMax(a,b)
  %5166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5156, %dx.types.Handle %52, float %5153, float %5154, float %5144, float undef, i32 0, i32 0, i32 undef, float %5165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = fmul fast float %5167, %5138
  %5169 = fadd fast float %5168, %5141
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.CBufRet.f32 %5170, 2
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 3
  %5178 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5179 = fadd fast float %5175, %5036
  %5180 = fadd fast float %5177, %5037
  %5181 = fadd fast float %5169, %5178
  %5182 = fmul fast float %5179, %5171
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5172, float %5182)  ; FMad(a,b,c)
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5173, float %5183)  ; FMad(a,b,c)
  %5185 = fsub fast float %5184, %5178
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 2
  %5188 = fsub fast float %5185, %5187
  %5189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.i32 %5189, 0
  %5191 = call i32 @dx.op.binary.i32(i32 40, i32 %5067, i32 %5190)  ; UMin(a,b)
  %5192 = mul i32 %5191, 36
  %5193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5192, i32 undef)  ; BufferLoad(srv,index,wot)
  %5194 = extractvalue %dx.types.ResRet.i32 %5193, 0
  %5195 = add i32 %5192, 4
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = fmul fast float %5197, %5089
  %5199 = fmul fast float %5197, %5091
  %5200 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5201 = fadd fast float %5198, %5200
  %5202 = fadd fast float %5199, %5200
  %5203 = icmp eq i32 %5194, 0
  br i1 %5203, label %5272, label %5204

; <label>:5204                                    ; preds = %5135
  br label %5205

; <label>:5205                                    ; preds = %5262, %5204
  %5206 = phi float [ %5263, %5262 ], [ 0.000000e+00, %5204 ]
  %5207 = phi float [ %5264, %5262 ], [ 0.000000e+00, %5204 ]
  %5208 = phi float [ %5265, %5262 ], [ 0.000000e+00, %5204 ]
  %5209 = phi float [ %5266, %5262 ], [ 0.000000e+00, %5204 ]
  %5210 = phi float [ %5267, %5262 ], [ 0.000000e+00, %5204 ]
  %5211 = phi float [ %5268, %5262 ], [ 0.000000e+00, %5204 ]
  %5212 = phi i32 [ %5269, %5262 ], [ 0, %5204 ]
  %5213 = shl i32 %5212, 2
  %5214 = add i32 %5080, %5213
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = add i32 %5084, %5213
  %5218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.i32 %5218, 0
  %5220 = add i32 %5219, 0
  %5221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5221, i32 0)  ; GetDimensions(handle,mipLevel)
  %5223 = extractvalue %dx.types.Dimensions %5222, 0
  %5224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5223)  ; FirstbitLo(value)
  %5225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.i32 %5225, 1
  %5227 = sub nsw i32 %5226, %5224
  %5228 = sitofp i32 %5227 to float
  %5229 = fsub fast float %5113, %5228
  %5230 = call float @dx.op.binary.f32(i32 35, float %5229, float 0.000000e+00)  ; FMax(a,b)
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5221, %dx.types.Handle %52, float %5201, float %5202, float %5216, float undef, i32 0, i32 0, i32 undef, float %5230)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = fcmp fast ogt float %5232, 0.000000e+00
  br i1 %5233, label %5234, label %5262

; <label>:5234                                    ; preds = %5205
  %5235 = add i32 %5195, %5213
  %5236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5235, i32 undef)  ; BufferLoad(srv,index,wot)
  %5237 = extractvalue %dx.types.ResRet.i32 %5236, 0
  %5238 = and i32 %5237, 32767
  %5239 = mul nuw nsw i32 %5238, 928
  %5240 = add nuw nsw i32 %5239, 48
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = add nuw nsw i32 %5239, 60
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.ResRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.ResRet.f32 %5246, 2
  %5250 = fmul fast float %5242, %5232
  %5251 = fmul fast float %5243, %5232
  %5252 = fmul fast float %5244, %5232
  %5253 = fadd fast float %5250, %5206
  %5254 = fadd fast float %5251, %5207
  %5255 = fadd fast float %5252, %5208
  %5256 = fmul fast float %5247, %5232
  %5257 = fmul fast float %5248, %5232
  %5258 = fmul fast float %5249, %5232
  %5259 = fadd fast float %5256, %5209
  %5260 = fadd fast float %5257, %5210
  %5261 = fadd fast float %5258, %5211
  br label %5262

; <label>:5262                                    ; preds = %5234, %5205
  %5263 = phi float [ %5253, %5234 ], [ %5206, %5205 ]
  %5264 = phi float [ %5254, %5234 ], [ %5207, %5205 ]
  %5265 = phi float [ %5255, %5234 ], [ %5208, %5205 ]
  %5266 = phi float [ %5259, %5234 ], [ %5209, %5205 ]
  %5267 = phi float [ %5260, %5234 ], [ %5210, %5205 ]
  %5268 = phi float [ %5261, %5234 ], [ %5211, %5205 ]
  %5269 = add nuw i32 %5212, 1
  %5270 = icmp eq i32 %5269, %5194
  br i1 %5270, label %5271, label %5205

; <label>:5271                                    ; preds = %5262
  br label %5272

; <label>:5272                                    ; preds = %5271, %5135
  %5273 = phi float [ 0.000000e+00, %5135 ], [ %5263, %5271 ]
  %5274 = phi float [ 0.000000e+00, %5135 ], [ %5264, %5271 ]
  %5275 = phi float [ 0.000000e+00, %5135 ], [ %5265, %5271 ]
  %5276 = phi float [ 0.000000e+00, %5135 ], [ %5266, %5271 ]
  %5277 = phi float [ 0.000000e+00, %5135 ], [ %5267, %5271 ]
  %5278 = phi float [ 0.000000e+00, %5135 ], [ %5268, %5271 ]
  %5279 = fadd fast float %5276, %5273
  %5280 = fmul fast float %5279, 0x3F847AE140000000
  %5281 = fadd fast float %5277, %5274
  %5282 = fmul fast float %5281, 0x3F847AE140000000
  %5283 = fadd fast float %5278, %5275
  %5284 = fmul fast float %5283, 0x3F847AE140000000
  br label %5285

; <label>:5285                                    ; preds = %5272, %5069, %5014, %5011, %4982, %4944
  %5286 = phi float [ %4996, %4982 ], [ -1.310720e+05, %4944 ], [ %5188, %5272 ], [ -1.310720e+05, %5014 ], [ -1.310720e+05, %5069 ], [ -1.310720e+05, %5011 ]
  %5287 = phi float [ %5006, %4982 ], [ 0.000000e+00, %4944 ], [ %5280, %5272 ], [ 0.000000e+00, %5014 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5011 ]
  %5288 = phi float [ %5008, %4982 ], [ 0.000000e+00, %4944 ], [ %5282, %5272 ], [ 0.000000e+00, %5014 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5011 ]
  %5289 = phi float [ %5010, %4982 ], [ 0.000000e+00, %4944 ], [ %5284, %5272 ], [ 0.000000e+00, %5014 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5011 ]
  %5290 = phi i1 [ true, %4982 ], [ false, %4944 ], [ true, %5272 ], [ false, %5014 ], [ false, %5069 ], [ false, %5011 ]
  %5291 = and i32 %237, 3
  %5292 = icmp eq i32 %5291, 1
  %5293 = select i1 %5292, float 1.000000e+00, float 0.000000e+00
  %5294 = fsub fast float %5286, %169
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = select i1 %5290, float %5295, float 1.000000e+00
  %5297 = fmul fast float %5296, %5293
  %5298 = icmp eq i32 %5291, 3
  %5299 = select i1 %5298, float 1.000000e+00, float %5297
  %5300 = call float @dx.op.binary.f32(i32 35, float %4862, float %5299)  ; FMax(a,b)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fcmp fast une float %5301, 0.000000e+00
  %5303 = fsub fast float -0.000000e+00, %187
  %5304 = fsub fast float -0.000000e+00, %188
  %5305 = fsub fast float -0.000000e+00, %189
  br i1 %5302, label %5306, label %5468

; <label>:5306                                    ; preds = %5285
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = fmul fast float %5301, 2.500000e+00
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5301, 0x4013FFFFE0000000
  %5311 = fadd fast float %5310, 0xBFFFFFFFE0000000
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = fmul fast float %5301, 0x4004000020000000
  %5314 = fadd fast float %5313, 0xBFF8000040000000
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5317 = fmul fast float %4887, 1.000000e+01
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = fmul fast float %5318, 2.000000e+00
  %5320 = fsub fast float 3.000000e+00, %5319
  %5321 = fmul fast float %5318, %5318
  %5322 = fmul fast float %5321, %5320
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = fsub fast float 0x3FE3333340000000, %4908
  %5325 = fmul fast float %5324, 0x400AAAAAA0000000
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = fmul fast float %5323, %5326
  %5328 = fmul fast float %4923, 0x3FEA2B8620000000
  %5329 = fmul fast float %4924, 0x3FEA2B8620000000
  %5330 = fmul fast float %4925, 0x3FEA2B8620000000
  %5331 = fadd fast float %5328, 0x3FC81DFBA0000000
  %5332 = fmul fast float %5331, %4923
  %5333 = fadd fast float %5332, 0x3F910E6020000000
  %5334 = fadd fast float %5329, 0x3FC81DFBA0000000
  %5335 = fmul fast float %5334, %4924
  %5336 = fadd fast float %5335, 0x3F910E6020000000
  %5337 = fadd fast float %5330, 0x3FC81DFBA0000000
  %5338 = fmul fast float %5337, %4925
  %5339 = fadd fast float %5338, 0x3F910E6020000000
  %5340 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5341 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = fsub fast float %5340, %4923
  %5344 = fsub fast float %5341, %4924
  %5345 = fsub fast float %5342, %4925
  %5346 = fmul fast float %5343, %5316
  %5347 = fmul fast float %5346, %5327
  %5348 = fmul fast float %5344, %5316
  %5349 = fmul fast float %5348, %5327
  %5350 = fmul fast float %5345, %5316
  %5351 = fmul fast float %5350, %5327
  %5352 = fadd fast float %5347, %4923
  %5353 = fadd fast float %5349, %4924
  %5354 = fadd fast float %5351, %4925
  %5355 = fmul fast float %4859, %4859
  %5356 = fmul fast float %5355, %5355
  %5357 = fadd fast float %5312, 1.000000e+00
  %5358 = fsub fast float %5357, %5327
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fsub fast float 1.000000e+00, %5356
  %5363 = call float @dx.op.binary.f32(i32 36, float %5359, float %5362)  ; FMin(a,b)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5365 = call float @dx.op.binary.f32(i32 35, float %5363, float %5364)  ; FMax(a,b)
  %5366 = fadd fast float %5361, 0xBFE4CCCCC0000000
  %5367 = fmul fast float %5366, 0x4006DB6DA0000000
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fmul fast float %5368, 2.000000e+00
  %5370 = fsub fast float 3.000000e+00, %5369
  %5371 = bitcast float %4905 to i32
  %5372 = ashr i32 %5371, 1
  %5373 = add nsw i32 %5372, 532487669
  %5374 = bitcast i32 %5373 to float
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5378, 2.000000e+00
  %5380 = bitcast float %4906 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = add nsw i32 %5381, 532487669
  %5383 = bitcast i32 %5382 to float
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, 2.000000e+00
  %5389 = bitcast float %4907 to i32
  %5390 = ashr i32 %5389, 1
  %5391 = add nsw i32 %5390, 532487669
  %5392 = bitcast i32 %5391 to float
  %5393 = fsub fast float 1.000000e+00, %5392
  %5394 = bitcast float %5393 to i32
  %5395 = sub nsw i32 2129859010, %5394
  %5396 = bitcast i32 %5395 to float
  %5397 = fmul fast float %5396, 2.000000e+00
  %5398 = fsub fast float 0x4002A9FBE0000000, %5379
  %5399 = fadd fast float %5379, 0x3FD54FDF00000000
  %5400 = bitcast float %5399 to i32
  %5401 = sub nsw i32 2129859010, %5400
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5402, %5398
  %5404 = fmul fast float %5403, %5403
  %5405 = fsub fast float 0x4002A9FBE0000000, %5388
  %5406 = fadd fast float %5388, 0x3FD54FDF00000000
  %5407 = bitcast float %5406 to i32
  %5408 = sub nsw i32 2129859010, %5407
  %5409 = bitcast i32 %5408 to float
  %5410 = fmul fast float %5409, %5405
  %5411 = fmul fast float %5410, %5410
  %5412 = fsub fast float 0x4002A9FBE0000000, %5397
  %5413 = fadd fast float %5397, 0x3FD54FDF00000000
  %5414 = bitcast float %5413 to i32
  %5415 = sub nsw i32 2129859010, %5414
  %5416 = bitcast i32 %5415 to float
  %5417 = fmul fast float %5416, %5412
  %5418 = fmul fast float %5417, %5417
  %5419 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5404)  ; FMax(a,b)
  %5420 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5411)  ; FMax(a,b)
  %5421 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5418)  ; FMax(a,b)
  %5422 = fsub fast float 1.000000e+00, %5307
  %5423 = fadd fast float %5422, %5323
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fsub fast float 1.000000e+00, %5299
  %5426 = fmul fast float %5365, %5425
  %5427 = fmul fast float %5368, %5368
  %5428 = fmul fast float %5427, %5426
  %5429 = fmul fast float %5428, %5370
  %5430 = fmul fast float %5425, 0xBFE99999A0000000
  %5431 = fmul fast float %5430, %5316
  %5432 = fmul fast float %5431, %5327
  %5433 = fadd fast float %5432, 1.000000e+00
  %5434 = fadd fast float %4908, -1.000000e+00
  %5435 = fmul fast float %5433, %5434
  %5436 = fadd fast float %5435, 1.000000e+00
  %5437 = fsub fast float %5419, %4905
  %5438 = fsub fast float %5420, %4906
  %5439 = fsub fast float %5421, %4907
  %5440 = fmul fast float %5429, %5437
  %5441 = fmul fast float %5429, %5438
  %5442 = fmul fast float %5429, %5439
  %5443 = fadd fast float %5440, %4905
  %5444 = fadd fast float %5441, %4906
  %5445 = fadd fast float %5442, %4907
  %5446 = fsub fast float %111, %4844
  %5447 = fsub fast float %112, %4845
  %5448 = fsub fast float %113, %4846
  %5449 = fmul fast float %5429, %5446
  %5450 = fmul fast float %5429, %5447
  %5451 = fmul fast float %5429, %5448
  %5452 = fadd fast float %5449, %4844
  %5453 = fadd fast float %5450, %4845
  %5454 = fadd fast float %5451, %4846
  %5455 = fmul fast float %5429, %5424
  %5456 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = fmul fast float %5455, %5457
  %5459 = fadd fast float %5458, %5456
  %5460 = fsub fast float 1.000000e+00, %4859
  %5461 = fmul fast float %5429, %5460
  %5462 = fadd fast float %5461, %4859
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = call float @dx.op.unary.f32(i32 25, float %5463)  ; Rsqrt(value)
  %5465 = fmul fast float %5452, %5464
  %5466 = fmul fast float %5453, %5464
  %5467 = fmul fast float %5454, %5464
  br label %5468

; <label>:5468                                    ; preds = %5306, %5285
  %5469 = phi float [ %5443, %5306 ], [ %4905, %5285 ]
  %5470 = phi float [ %5444, %5306 ], [ %4906, %5285 ]
  %5471 = phi float [ %5445, %5306 ], [ %4907, %5285 ]
  %5472 = phi float [ %5352, %5306 ], [ %4923, %5285 ]
  %5473 = phi float [ %5353, %5306 ], [ %4924, %5285 ]
  %5474 = phi float [ %5354, %5306 ], [ %4925, %5285 ]
  %5475 = phi float [ %5465, %5306 ], [ %4844, %5285 ]
  %5476 = phi float [ %5466, %5306 ], [ %4845, %5285 ]
  %5477 = phi float [ %5467, %5306 ], [ %4846, %5285 ]
  %5478 = phi float [ %5459, %5306 ], [ %4908, %5285 ]
  %5479 = phi float [ %5462, %5306 ], [ %4859, %5285 ]
  %5480 = fsub fast float -0.000000e+00, %169
  %5481 = select i1 %261, float 0.000000e+00, float %5471
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5303, float %5304, float %5305)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = fmul fast float %5484, 2.000000e+00
  %5486 = fmul fast float %5485, %5475
  %5487 = fmul fast float %5485, %5476
  %5488 = fmul fast float %5485, %5477
  %5489 = fsub fast float %187, %5486
  %5490 = fsub fast float %188, %5487
  %5491 = fsub fast float %189, %5488
  %5492 = call float @dx.op.binary.f32(i32 36, float %5479, float 1.000000e+00)  ; FMin(a,b)
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = ashr i32 %5494, 1
  %5496 = add nsw i32 %5495, 532487669
  %5497 = bitcast i32 %5496 to float
  %5498 = fsub fast float 1.000000e+00, %5478
  %5499 = call float @dx.op.binary.f32(i32 35, float %5498, float 0x3F847AE140000000)  ; FMax(a,b)
  %5500 = fmul fast float %5499, %5499
  %5501 = fmul fast float %5500, %5500
  %5502 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5497, float %5501, float %5502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = fsub fast float 1.000000e+00, %5479
  %5506 = bitcast float %5505 to i32
  %5507 = sub nsw i32 2129859010, %5506
  %5508 = fsub fast float 1.000000e+00, %72
  %5509 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.binary.f32(i32 35, float %5509, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5511 = fdiv fast float %5508, %5510
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5514 = fmul fast float %5513, 5.000000e-01
  %5515 = fadd fast float %5514, 5.000000e-01
  %5516 = fmul fast float %5515, %72
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = fmul fast float %5518, %5511
  %5520 = fadd fast float %5516, %5519
  %5521 = fsub fast float 5.000000e-01, %5514
  %5522 = fmul fast float %5521, %5472
  %5523 = fmul fast float %5521, %5473
  %5524 = fmul fast float %5521, %5474
  %5525 = fadd fast float %5520, %5522
  %5526 = fadd fast float %5520, %5523
  %5527 = fadd fast float %5520, %5524
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fmul fast float %5529, 5.000000e-01
  %5531 = fadd fast float %5530, 5.000000e-01
  %5532 = fmul fast float %5531, %72
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = fmul fast float %5534, %5511
  %5536 = fadd fast float %5532, %5535
  %5537 = fsub fast float 5.000000e-01, %5530
  %5538 = fmul fast float %5537, %5472
  %5539 = fmul fast float %5537, %5473
  %5540 = fmul fast float %5537, %5474
  %5541 = fadd fast float %5536, %5538
  %5542 = fadd fast float %5536, %5539
  %5543 = fadd fast float %5536, %5540
  %5544 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5545, 0
  %5547 = call float @dx.op.binary.f32(i32 36, float %5472, float %5546)  ; FMin(a,b)
  %5548 = fmul fast float %5547, %5493
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = bitcast float %5549 to i32
  %5551 = sub nsw i32 2129859010, %5550
  %5552 = bitcast i32 %5551 to float
  %5553 = call float @dx.op.binary.f32(i32 36, float %5473, float %5546)  ; FMin(a,b)
  %5554 = fmul fast float %5553, %5493
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = sub nsw i32 2129859010, %5556
  %5558 = bitcast i32 %5557 to float
  %5559 = call float @dx.op.binary.f32(i32 36, float %5474, float %5546)  ; FMin(a,b)
  %5560 = fmul fast float %5559, %5493
  %5561 = fsub fast float 1.000000e+00, %5560
  %5562 = bitcast float %5561 to i32
  %5563 = sub nsw i32 2129859010, %5562
  %5564 = bitcast i32 %5563 to float
  %5565 = fmul fast float %5492, %73
  %5566 = fmul fast float %5565, %5525
  %5567 = fmul fast float %5566, %5552
  %5568 = fmul fast float %5492, %74
  %5569 = fmul fast float %5568, %5526
  %5570 = fmul fast float %5569, %5558
  %5571 = fmul fast float %5492, %75
  %5572 = fmul fast float %5571, %5527
  %5573 = fmul fast float %5572, %5564
  %5574 = call float @dx.op.binary.f32(i32 36, float %5469, float %5546)  ; FMin(a,b)
  %5575 = fmul fast float %5574, %5493
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = bitcast float %5576 to i32
  %5578 = sub nsw i32 2129859010, %5577
  %5579 = bitcast i32 %5578 to float
  %5580 = call float @dx.op.binary.f32(i32 36, float %5470, float %5546)  ; FMin(a,b)
  %5581 = fmul fast float %5580, %5493
  %5582 = fsub fast float 1.000000e+00, %5581
  %5583 = bitcast float %5582 to i32
  %5584 = sub nsw i32 2129859010, %5583
  %5585 = bitcast i32 %5584 to float
  %5586 = call float @dx.op.binary.f32(i32 36, float %5481, float %5546)  ; FMin(a,b)
  %5587 = fmul fast float %5586, %5493
  %5588 = fsub fast float 1.000000e+00, %5587
  %5589 = bitcast float %5588 to i32
  %5590 = sub nsw i32 2129859010, %5589
  %5591 = bitcast i32 %5590 to float
  %5592 = fmul fast float %5565, %5541
  %5593 = fmul fast float %5592, %5579
  %5594 = fmul fast float %5568, %5542
  %5595 = fmul fast float %5594, %5585
  %5596 = fmul fast float %5571, %5543
  %5597 = fmul fast float %5596, %5591
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5570, float %5573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = select i1 %261, float 0.000000e+00, float %5567
  %5600 = select i1 %261, float %5598, float %5570
  %5601 = select i1 %261, float 0.000000e+00, float %5573
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5595, float %5597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = select i1 %261, float 0.000000e+00, float %5593
  %5604 = select i1 %261, float %5602, float %5595
  %5605 = select i1 %261, float 0.000000e+00, float %5597
  %5606 = fmul fast float %4270, %4270
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %5483, 9.843750e-01
  %5609 = fmul fast float %5478, 9.843750e-01
  %5610 = fadd fast float %5608, 7.812500e-03
  %5611 = fadd fast float %5609, 7.812500e-03
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5610, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5617 = fsub fast float 1.000000e+00, %5607
  %5618 = fsub fast float %5615, %5613
  %5619 = fsub fast float %5616, %5614
  %5620 = fmul fast float %5618, %5617
  %5621 = fmul fast float %5619, %5617
  %5622 = fadd fast float %5620, %5613
  %5623 = fadd fast float %5621, %5614
  %5624 = fmul fast float %5622, %5469
  %5625 = fmul fast float %5622, %5470
  %5626 = fmul fast float %5622, %5481
  %5627 = fadd fast float %5624, %5623
  %5628 = fadd fast float %5625, %5623
  %5629 = fadd fast float %5626, %5623
  %5630 = fcmp fast ogt float %4860, 0.000000e+00
  br i1 %5630, label %5631, label %5657

; <label>:5631                                    ; preds = %5468
  %5632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4860, float %5483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.ResRet.f32 %5632, 2
  %5636 = fadd fast float %5633, -5.000000e-01
  %5637 = fadd fast float %5634, -5.000000e-01
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fsub fast float 1.000000e+00, %5469
  %5640 = fsub fast float 1.000000e+00, %5470
  %5641 = fsub fast float 1.000000e+00, %5481
  %5642 = fmul fast float %5469, 4.000000e+00
  %5643 = fmul fast float %5642, %5639
  %5644 = fmul fast float %5643, %5636
  %5645 = fmul fast float %5470, 4.000000e+00
  %5646 = fmul fast float %5645, %5640
  %5647 = fmul fast float %5646, %5637
  %5648 = fmul fast float %5481, 4.000000e+00
  %5649 = fmul fast float %5648, %5641
  %5650 = fmul fast float %5649, %5638
  %5651 = fadd fast float %5644, %5627
  %5652 = fadd fast float %5647, %5628
  %5653 = fadd fast float %5650, %5629
  %5654 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  br label %5657

; <label>:5657                                    ; preds = %5631, %5468
  %5658 = phi float [ %5654, %5631 ], [ %5627, %5468 ]
  %5659 = phi float [ %5655, %5631 ], [ %5628, %5468 ]
  %5660 = phi float [ %5656, %5631 ], [ %5629, %5468 ]
  %5661 = call float @dx.op.binary.f32(i32 35, float %5659, float %5660)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float %5658, float %5661)  ; FMax(a,b)
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5662, %5478
  %5665 = fadd fast float %5664, %5478
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5669 = fmul fast float %5665, %5667
  %5670 = fadd fast float %5669, %5668
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fsub fast float 1.000000e+00, %5504
  %5673 = fadd fast float %5672, %5671
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5675 = fcmp fast olt float %5674, 1.000000e+00
  br i1 %5675, label %5676, label %6152

; <label>:5676                                    ; preds = %5657
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %104
  %5681 = fmul fast float %5679, %105
  %5682 = fptoui float %5680 to i32
  %5683 = fptoui float %5681 to i32
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5684, 3
  %5688 = fadd fast float %92, -4.000000e+00
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float 0.000000e+00)  ; FMax(a,b)
  %5690 = fadd fast float %5689, %5685
  %5691 = fmul fast float %5690, %5686
  %5692 = call float @dx.op.unary.f32(i32 23, float %5691)  ; Log(value)
  %5693 = fmul fast float %5692, %5687
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = fmul fast float %5693, %5695
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.i32 %5698, 1
  %5700 = add i32 %5699, -1
  %5701 = uitofp i32 %5699 to float
  %5702 = fmul fast float %5701, %5697
  %5703 = fptoui float %5702 to i32
  %5704 = call i32 @dx.op.binary.i32(i32 40, i32 %5703, i32 %5700)  ; UMin(a,b)
  %5705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.i32 %5705, 2
  %5707 = extractvalue %dx.types.CBufRet.i32 %5705, 3
  %5708 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5683, i32 %5706, i32 %5682)  ; UMad(a,b,c)
  %5709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5704, i32 %5707, i32 %5708)  ; UMad(a,b,c)
  %5710 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5711 = fptoui float %5710 to i32
  %5712 = lshr i32 %5711, 5
  %5713 = call i32 @dx.op.binary.i32(i32 40, i32 %5712, i32 8191)  ; UMin(a,b)
  %5714 = fsub fast float %5286, %169
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fcmp fast ogt float %5715, 0.000000e+00
  %5717 = fcmp fast ogt float %5491, 0.000000e+00
  %5718 = and i1 %5717, %5716
  br i1 %5718, label %5719, label %5748

; <label>:5719                                    ; preds = %5676
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5720, float -1.000000e+00)  ; FMax(a,b)
  %5722 = call float @dx.op.binary.f32(i32 36, float %5721, float 1.000000e+00)  ; FMin(a,b)
  %5723 = fmul fast float %5722, %5722
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5724, 0x3FFC6E2300000000
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  %5728 = call float @dx.op.unary.f32(i32 24, float %5726)  ; Sqrt(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = call float @dx.op.unary.f32(i32 23, float %5729)  ; Log(value)
  %5731 = fmul fast float %5730, 5.000000e+00
  %5732 = call float @dx.op.unary.f32(i32 21, float %5731)  ; Exp(value)
  %5733 = fmul fast float %5732, 0x3FEF591A60000000
  %5734 = fadd fast float %5733, 0x3F94DCB540000000
  %5735 = select i1 %5727, float %5734, float 1.000000e+00
  %5736 = fcmp fast oge float %5735, 1.000000e+00
  %5737 = fmul fast float %5720, 2.000000e+00
  %5738 = fadd fast float %5737, %5491
  %5739 = select i1 %5736, float %5738, float %5491
  %5740 = fsub fast float %5739, %5491
  %5741 = fmul fast float %5740, %5715
  %5742 = fadd fast float %5741, %5491
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5742, float %5489, float %5490, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 25, float %5743)  ; Rsqrt(value)
  %5745 = fmul fast float %5744, %5489
  %5746 = fmul fast float %5744, %5490
  %5747 = fmul fast float %5742, %5744
  br label %5748

; <label>:5748                                    ; preds = %5719, %5676
  %5749 = phi float [ %5745, %5719 ], [ %5489, %5676 ]
  %5750 = phi float [ %5746, %5719 ], [ %5490, %5676 ]
  %5751 = phi float [ %5747, %5719 ], [ %5491, %5676 ]
  %5752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.i32 %5752, 2
  %5754 = add nsw i32 %5753, -1
  %5755 = call i32 @dx.op.binary.i32(i32 37, i32 %5754, i32 0)  ; IMax(a,b)
  %5756 = shl i32 %5713, 2
  %5757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.i32 %5757, 0
  %5759 = lshr i32 %5758, 16
  %5760 = and i32 %5758, 65535
  %5761 = lshr i32 %5758, 21
  %5762 = lshr i32 %5760, 5
  %5763 = call i32 @dx.op.binary.i32(i32 40, i32 %5762, i32 %5755)  ; UMin(a,b)
  %5764 = icmp ugt i32 %5761, %5763
  br i1 %5764, label %6128, label %5765

; <label>:5765                                    ; preds = %5748
  br label %5766

; <label>:5766                                    ; preds = %6120, %5765
  %5767 = phi float [ %6121, %6120 ], [ 0.000000e+00, %5765 ]
  %5768 = phi float [ %6122, %6120 ], [ 0.000000e+00, %5765 ]
  %5769 = phi float [ %6123, %6120 ], [ 0.000000e+00, %5765 ]
  %5770 = phi float [ %6124, %6120 ], [ 1.000000e+00, %5765 ]
  %5771 = phi i32 [ %6125, %6120 ], [ %5761, %5765 ]
  %5772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.i32 %5772, 2
  %5774 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5709, i32 %5773, i32 %5771)  ; UMad(a,b,c)
  %5775 = shl i32 %5774, 2
  %5776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.i32 %5776, 0
  %5778 = shl i32 %5771, 5
  %5779 = sub nsw i32 %5759, %5778
  %5780 = call i32 @dx.op.binary.i32(i32 37, i32 %5779, i32 0)  ; IMax(a,b)
  %5781 = call i32 @dx.op.binary.i32(i32 38, i32 %5780, i32 31)  ; IMin(a,b)
  %5782 = sub nsw i32 1, %5759
  %5783 = add nsw i32 %5782, %5760
  %5784 = call i32 @dx.op.binary.i32(i32 37, i32 %5783, i32 0)  ; IMax(a,b)
  %5785 = call i32 @dx.op.binary.i32(i32 38, i32 %5784, i32 32)  ; IMin(a,b)
  %5786 = and i32 %5785, 31
  %5787 = shl i32 -1, %5786
  %5788 = xor i32 %5787, -1
  %5789 = and i32 %5781, 31
  %5790 = shl i32 %5788, %5789
  %5791 = icmp eq i32 %5785, 32
  %5792 = select i1 %5791, i32 -1, i32 %5790
  %5793 = and i32 %5792, %5777
  %5794 = icmp eq i32 %5793, 0
  br i1 %5794, label %6120, label %5795

; <label>:5795                                    ; preds = %5766
  br label %5796

; <label>:5796                                    ; preds = %5903, %5795
  %5797 = phi float [ %5904, %5903 ], [ %5767, %5795 ]
  %5798 = phi float [ %5905, %5903 ], [ %5768, %5795 ]
  %5799 = phi float [ %5906, %5903 ], [ %5769, %5795 ]
  %5800 = phi float [ %5907, %5903 ], [ %5770, %5795 ]
  %5801 = phi i32 [ %5806, %5903 ], [ %5793, %5795 ]
  %5802 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5801)  ; FirstbitLo(value)
  %5803 = add i32 %5802, %5778
  %5804 = and i32 %5802, 31
  %5805 = shl i32 1, %5804
  %5806 = xor i32 %5805, %5801
  %5807 = mul i32 %5803, 72
  %5808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = add i32 %5807, 12
  %5813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.i32 %5813, 0
  %5815 = add i32 %5807, 16
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = add i32 %5807, 28
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = add i32 %5807, 32
  %5824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5823, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = extractvalue %dx.types.ResRet.f32 %5824, 3
  %5829 = add i32 %5807, 48
  %5830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = add i32 %5807, 56
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.ResRet.f32 %5834, 1
  %5837 = add i32 %5807, 64
  %5838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.ResRet.f32 %5838, 1
  %5841 = mul i32 %5803, 60
  %5842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5846 = add i32 %5841, 12
  %5847 = add i32 %5841, 48
  %5848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5847, i32 undef)  ; BufferLoad(srv,index,wot)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = and i32 %5814, 32767
  %5853 = bitcast float %5809 to i32
  %5854 = icmp eq i32 %5853, -1
  %5855 = bitcast float %5810 to i32
  %5856 = and i32 %5814, 32768
  %5857 = icmp ne i32 %5856, 0
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = fsub fast float %5843, %5859
  %5863 = fsub fast float %5844, %5860
  %5864 = fsub fast float %5845, %5861
  %5865 = fsub fast float %167, %5862
  %5866 = fsub fast float %168, %5863
  %5867 = fsub fast float %169, %5864
  %5868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = add i32 %5841, 24
  %5874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5873, i32 undef)  ; BufferLoad(srv,index,wot)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.ResRet.f32 %5874, 2
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5875, float %5876, float %5877)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = add i32 %5841, 36
  %5880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5879, i32 undef)  ; BufferLoad(srv,index,wot)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5881, float %5882, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5886 = call float @dx.op.unary.f32(i32 6, float %5878)  ; FAbs(value)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5884)  ; FAbs(value)
  %5888 = fsub fast float %5849, %5885
  %5889 = fsub fast float %5850, %5886
  %5890 = fsub fast float %5851, %5887
  %5891 = fmul fast float %5888, %5817
  %5892 = fmul fast float %5889, %5818
  %5893 = fmul fast float %5890, %5819
  %5894 = call float @dx.op.binary.f32(i32 36, float %5892, float %5893)  ; FMin(a,b)
  %5895 = call float @dx.op.binary.f32(i32 36, float %5891, float %5894)  ; FMin(a,b)
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5800, float %5896)  ; FMin(a,b)
  %5898 = uitofp i1 %5857 to float
  %5899 = fadd fast float %5715, 1.000000e+00
  %5900 = fsub fast float %5899, %5898
  %5901 = fmul fast float %5897, %5900
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  br i1 %5902, label %5909, label %5903

; <label>:5903                                    ; preds = %6051, %5796
  %5904 = phi float [ %6115, %6051 ], [ %5797, %5796 ]
  %5905 = phi float [ %6116, %6051 ], [ %5798, %5796 ]
  %5906 = phi float [ %6117, %6051 ], [ %5799, %5796 ]
  %5907 = phi float [ %6118, %6051 ], [ %5800, %5796 ]
  %5908 = icmp eq i32 %5801, %5805
  br i1 %5908, label %6119, label %5796

; <label>:5909                                    ; preds = %5796
  br i1 %5854, label %5967, label %5910

; <label>:5910                                    ; preds = %5909
  %5911 = fsub fast float -0.000000e+00, %5869
  %5912 = fsub fast float -0.000000e+00, %5870
  %5913 = fsub fast float -0.000000e+00, %5871
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fsub fast float -0.000000e+00, %5914
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fadd fast float %5916, %5832
  %5918 = fadd fast float %5831, %5916
  %5919 = fsub fast float -0.000000e+00, %5918
  %5920 = fcmp ogt float %5914, -0.000000e+00
  %5921 = select i1 %5920, float %5919, float %5917
  %5922 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5923 = fdiv fast float 1.000000e+00, %5922
  %5924 = fmul fast float %5921, %5923
  %5925 = call float @dx.op.binary.f32(i32 35, float %5924, float 0.000000e+00)  ; FMax(a,b)
  %5926 = fsub fast float -0.000000e+00, %5875
  %5927 = fsub fast float -0.000000e+00, %5876
  %5928 = fsub fast float -0.000000e+00, %5877
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fsub fast float -0.000000e+00, %5929
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = fadd fast float %5931, %5836
  %5933 = fadd fast float %5835, %5931
  %5934 = fsub fast float -0.000000e+00, %5933
  %5935 = fcmp ogt float %5929, -0.000000e+00
  %5936 = select i1 %5935, float %5934, float %5932
  %5937 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5938 = fdiv fast float 1.000000e+00, %5937
  %5939 = fmul fast float %5936, %5938
  %5940 = call float @dx.op.binary.f32(i32 35, float %5939, float 0.000000e+00)  ; FMax(a,b)
  %5941 = fsub fast float -0.000000e+00, %5881
  %5942 = fsub fast float -0.000000e+00, %5882
  %5943 = fsub fast float -0.000000e+00, %5883
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = fadd fast float %5946, %5840
  %5948 = fadd fast float %5839, %5946
  %5949 = fsub fast float -0.000000e+00, %5948
  %5950 = fcmp ogt float %5944, -0.000000e+00
  %5951 = select i1 %5950, float %5949, float %5947
  %5952 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5953 = fdiv fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5951, %5953
  %5955 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call float @dx.op.binary.f32(i32 36, float %5940, float %5955)  ; FMin(a,b)
  %5957 = call float @dx.op.binary.f32(i32 36, float %5925, float %5956)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5749
  %5959 = fmul fast float %5957, %5750
  %5960 = fmul fast float %5957, %5751
  %5961 = fadd fast float %5958, %167
  %5962 = fadd fast float %5959, %168
  %5963 = fadd fast float %5960, %169
  %5964 = fsub fast float %5961, %5809
  %5965 = fsub fast float %5962, %5810
  %5966 = fsub fast float %5963, %5811
  br label %5974

; <label>:5967                                    ; preds = %5909
  %5968 = fmul fast float %5749, 8.096000e+03
  %5969 = fmul fast float %5750, 8.096000e+03
  %5970 = fmul fast float %5751, 8.096000e+03
  %5971 = fadd fast float %5968, %167
  %5972 = fadd fast float %5969, %168
  %5973 = fadd fast float %5970, %169
  br label %5974

; <label>:5974                                    ; preds = %5967, %5910
  %5975 = phi float [ %5749, %5967 ], [ %5964, %5910 ]
  %5976 = phi float [ %5750, %5967 ], [ %5965, %5910 ]
  %5977 = phi float [ %5751, %5967 ], [ %5966, %5910 ]
  %5978 = phi float [ %5971, %5967 ], [ %5961, %5910 ]
  %5979 = phi float [ %5972, %5967 ], [ %5962, %5910 ]
  %5980 = phi float [ %5973, %5967 ], [ %5963, %5910 ]
  %5981 = fcmp fast olt float %5828, 1.000000e+00
  br i1 %5981, label %5982, label %6013, !dx.controlflow.hints !99

; <label>:5982                                    ; preds = %5974
  %5983 = fmul fast float %5977, %5826
  %5984 = fmul fast float %5976, %5827
  %5985 = fsub fast float %5983, %5984
  %5986 = fmul fast float %5975, %5827
  %5987 = fmul fast float %5977, %5825
  %5988 = fsub fast float %5986, %5987
  %5989 = fmul fast float %5976, %5825
  %5990 = fmul fast float %5975, %5826
  %5991 = fsub fast float %5989, %5990
  %5992 = fmul fast float %5985, 2.000000e+00
  %5993 = fmul fast float %5988, 2.000000e+00
  %5994 = fmul fast float %5991, 2.000000e+00
  %5995 = fmul fast float %5992, %5828
  %5996 = fmul fast float %5993, %5828
  %5997 = fmul fast float %5994, %5828
  %5998 = fmul fast float %5994, %5826
  %5999 = fmul fast float %5993, %5827
  %6000 = fmul fast float %5992, %5827
  %6001 = fmul fast float %5994, %5825
  %6002 = fmul fast float %5993, %5825
  %6003 = fmul fast float %5992, %5826
  %6004 = fadd fast float %5998, %5975
  %6005 = fadd fast float %6004, %5995
  %6006 = fsub fast float %6005, %5999
  %6007 = fsub fast float %5976, %6001
  %6008 = fadd fast float %6007, %5996
  %6009 = fadd fast float %6008, %6000
  %6010 = fadd fast float %5997, %5977
  %6011 = fsub fast float %6010, %6003
  %6012 = fadd fast float %6011, %6002
  br label %6013

; <label>:6013                                    ; preds = %5982, %5974
  %6014 = phi float [ %6006, %5982 ], [ %5975, %5974 ]
  %6015 = phi float [ %6009, %5982 ], [ %5976, %5974 ]
  %6016 = phi float [ %6012, %5982 ], [ %5977, %5974 ]
  br i1 %5854, label %6048, label %6017

; <label>:6017                                    ; preds = %6013
  %6018 = fmul fast float %5478, 0x400187C840000000
  %6019 = fadd fast float %6018, 0xC00EFC2120000000
  %6020 = fmul fast float %6019, %5478
  %6021 = fadd fast float %6020, 0x3FE5D16340000000
  %6022 = fmul fast float %6021, %5478
  %6023 = fadd fast float %6022, 1.000000e+00
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fsub fast float %5978, %167
  %6026 = fsub fast float %5979, %168
  %6027 = fsub fast float %5980, %169
  %6028 = fsub fast float %5978, %5809
  %6029 = fsub fast float %5979, %5810
  %6030 = fsub fast float %5980, %5811
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6028, float %6029, float %6030, float %6028, float %6029, float %6030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = fadd fast float %6032, 0x3EE4F8B580000000
  %6034 = fdiv fast float %6031, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = ashr i32 %6035, 1
  %6037 = add nsw i32 %6036, 532487669
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %6038, %6024
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = fmul fast float %6040, 0x4009981AE0000000
  %6042 = fsub fast float 0x40111BBD80000000, %6041
  %6043 = fmul fast float %6042, %6040
  %6044 = fadd fast float %6043, 0xC0009F6020000000
  %6045 = fmul fast float %6044, %6040
  %6046 = fadd fast float %6045, 1.000000e+00
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  br label %6051

; <label>:6048                                    ; preds = %6013
  %6049 = icmp ne i32 %5855, -1
  %6050 = zext i1 %6049 to i32
  br label %6051

; <label>:6051                                    ; preds = %6048, %6017
  %6052 = phi float [ %5478, %6048 ], [ %6047, %6017 ]
  %6053 = phi i32 [ %6050, %6048 ], [ 0, %6017 ]
  %6054 = fmul float %6052, 5.000000e+00
  %6055 = fsub float 5.000000e+00, %6054
  %6056 = icmp ne i32 %6053, 0
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6059 = fadd fast float %6058, %6055
  %6060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6059)  ; FMax(a,b)
  %6061 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6062 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6063 = fadd fast float %6062, %6061
  %6064 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6065 = fadd fast float %6063, %6064
  %6066 = fcmp fast oeq float %6065, 0.000000e+00
  %6067 = fdiv fast float 1.000000e+00, %6065
  %6068 = select i1 %6066, float 1.000000e+00, float %6067
  %6069 = fmul fast float %6068, %6014
  %6070 = fmul fast float %6068, %6015
  %6071 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6072 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6073 = fsub fast float 1.000000e+00, %6071
  %6074 = fsub fast float 1.000000e+00, %6072
  %6075 = fcmp fast oge float %6069, 0.000000e+00
  %6076 = fcmp fast oge float %6070, 0.000000e+00
  %6077 = select i1 %6075, float 1.000000e+00, float -1.000000e+00
  %6078 = select i1 %6076, float 1.000000e+00, float -1.000000e+00
  %6079 = fcmp fast ole float %6016, 0.000000e+00
  %6080 = fmul fast float %6077, %6073
  %6081 = fmul fast float %6078, %6074
  %6082 = select i1 %6079, float %6080, float %6069
  %6083 = select i1 %6079, float %6081, float %6070
  %6084 = fmul fast float %6082, 5.000000e-01
  %6085 = fmul fast float %6083, 5.000000e-01
  %6086 = fadd fast float %6084, 5.000000e-01
  %6087 = fadd fast float %6085, 5.000000e-01
  %6088 = uitofp i32 %5852 to float
  %6089 = call float @dx.op.binary.f32(i32 36, float %6060, float 3.000000e+00)  ; FMin(a,b)
  %6090 = fadd fast float %6089, 2.000000e+00
  %6091 = call float @dx.op.unary.f32(i32 21, float %6090)  ; Exp(value)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6093 = fmul fast float %6092, %6091
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6086, %6095
  %6097 = fmul fast float %6087, %6095
  %6098 = fadd fast float %6096, %6093
  %6099 = fadd fast float %6097, %6093
  %6100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6098, float %6099, float %6088, float undef, i32 0, i32 0, i32 undef, float %6060)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.ResRet.f32 %6100, 2
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6106 = fmul fast float %6105, %5822
  %6107 = call float @dx.op.binary.f32(i32 36, float %5544, float %6106)  ; FMin(a,b)
  %6108 = select i1 %6056, float %6107, float %6106
  %6109 = fmul fast float %6101, %5901
  %6110 = fmul fast float %6109, %6108
  %6111 = fmul fast float %6102, %5901
  %6112 = fmul fast float %6111, %6108
  %6113 = fmul fast float %6103, %5901
  %6114 = fmul fast float %6113, %6108
  %6115 = fadd fast float %6110, %5797
  %6116 = fadd fast float %6112, %5798
  %6117 = fadd fast float %6114, %5799
  %6118 = fsub fast float %5800, %5901
  br label %5903

; <label>:6119                                    ; preds = %5903
  br label %6120

; <label>:6120                                    ; preds = %6119, %5766
  %6121 = phi float [ %5767, %5766 ], [ %5904, %6119 ]
  %6122 = phi float [ %5768, %5766 ], [ %5905, %6119 ]
  %6123 = phi float [ %5769, %5766 ], [ %5906, %6119 ]
  %6124 = phi float [ %5770, %5766 ], [ %5907, %6119 ]
  %6125 = add i32 %5771, 1
  %6126 = icmp ugt i32 %6125, %5763
  br i1 %6126, label %6127, label %5766, !llvm.loop !100

; <label>:6127                                    ; preds = %6120
  br label %6128

; <label>:6128                                    ; preds = %6127, %5748
  %6129 = phi float [ 0.000000e+00, %5748 ], [ %6121, %6127 ]
  %6130 = phi float [ 0.000000e+00, %5748 ], [ %6122, %6127 ]
  %6131 = phi float [ 0.000000e+00, %5748 ], [ %6123, %6127 ]
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = select i1 %261, float 0.000000e+00, float %6129
  %6134 = select i1 %261, float %6132, float %6130
  %6135 = select i1 %261, float 0.000000e+00, float %6131
  %6136 = fcmp fast olt float %5674, 0.000000e+00
  %6137 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %6138 = fmul fast float %6137, %5603
  %6139 = fmul fast float %6137, %5604
  %6140 = fmul fast float %6137, %5605
  %6141 = select i1 %6136, float %5603, float %6138
  %6142 = select i1 %6136, float %5604, float %6139
  %6143 = select i1 %6136, float %5605, float %6140
  %6144 = fsub fast float 1.000000e+00, %6137
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, %6133
  %6147 = fmul fast float %6145, %6134
  %6148 = fmul fast float %6145, %6135
  %6149 = fadd fast float %6141, %6146
  %6150 = fadd fast float %6142, %6147
  %6151 = fadd fast float %6143, %6148
  br label %6152

; <label>:6152                                    ; preds = %6128, %5657
  %6153 = phi float [ %5603, %5657 ], [ %6149, %6128 ]
  %6154 = phi float [ %5604, %5657 ], [ %6150, %6128 ]
  %6155 = phi float [ %5605, %5657 ], [ %6151, %6128 ]
  %6156 = fmul fast float %5663, %5599
  %6157 = fmul fast float %5663, %5600
  %6158 = fmul fast float %5663, %5601
  %6159 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = fcmp fast ogt float %6159, 0x3E7FF19E20000000
  %6161 = fdiv fast float 1.000000e+00, %6159
  %6162 = select i1 %6160, float %6161, float 0.000000e+00
  %6163 = fmul fast float %6162, %5472
  %6164 = fmul fast float %6162, %5473
  %6165 = fmul fast float %6162, %5474
  %6166 = fadd fast float %6163, -1.000000e+00
  %6167 = fadd fast float %6164, -1.000000e+00
  %6168 = fadd fast float %6165, -1.000000e+00
  %6169 = fmul fast float %6166, 5.000000e-01
  %6170 = fmul fast float %6167, 5.000000e-01
  %6171 = fmul fast float %6168, 5.000000e-01
  %6172 = fadd fast float %6169, 1.000000e+00
  %6173 = fadd fast float %6170, 1.000000e+00
  %6174 = fadd fast float %6171, 1.000000e+00
  %6175 = call float @dx.op.binary.f32(i32 35, float %5483, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6176 = fdiv fast float %4270, %6175
  %6177 = fcmp fast olt float %4909, 1.270000e+02
  %6178 = fcmp fast olt float %4910, 1.270000e+02
  %6179 = fcmp fast olt float %4911, 1.270000e+02
  %6180 = fmul fast float %4909, 0xBFF7154760000000
  %6181 = fmul fast float %6180, %6176
  %6182 = fmul fast float %4910, 0xBFF7154760000000
  %6183 = fmul fast float %6182, %6176
  %6184 = fmul fast float %4911, 0xBFF7154760000000
  %6185 = fmul fast float %6184, %6176
  %6186 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6187 = call float @dx.op.unary.f32(i32 21, float %6183)  ; Exp(value)
  %6188 = call float @dx.op.unary.f32(i32 21, float %6185)  ; Exp(value)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6191 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6192 = select i1 %6177, float %6189, float 0.000000e+00
  %6193 = select i1 %6178, float %6190, float 0.000000e+00
  %6194 = select i1 %6179, float %6191, float 0.000000e+00
  %6195 = fmul fast float %6192, %5663
  %6196 = fmul fast float %6193, %5663
  %6197 = fmul fast float %6194, %5663
  %6198 = fadd fast float %6195, -1.000000e+00
  %6199 = fadd fast float %6196, -1.000000e+00
  %6200 = fadd fast float %6197, -1.000000e+00
  %6201 = fmul fast float %6153, %5658
  %6202 = fmul fast float %6154, %5659
  %6203 = fmul fast float %6155, %5660
  %6204 = fsub fast float 1.000000e+00, %5483
  %6205 = bitcast float %6204 to i32
  %6206 = sitofp i32 %6205 to float
  %6207 = fmul fast float %6206, 5.000000e+00
  %6208 = fadd fast float %6207, 0xC1EFBF8940000000
  %6209 = fptosi float %6208 to i32
  %6210 = bitcast i32 %6209 to float
  %6211 = fmul fast float %6210, %4861
  %6212 = fmul fast float %5599, %6211
  %6213 = fmul fast float %6212, %5663
  %6214 = fmul fast float %6213, %6172
  %6215 = fmul fast float %5600, %6211
  %6216 = fmul fast float %6215, %5663
  %6217 = fmul fast float %6216, %6173
  %6218 = fmul fast float %5601, %6211
  %6219 = fmul fast float %6218, %5663
  %6220 = fmul fast float %6219, %6174
  %6221 = fmul fast float %6156, %4886
  %6222 = fmul fast float %6157, %4886
  %6223 = fmul fast float %6158, %4886
  %6224 = fadd fast float %6201, %4850
  %6225 = fadd fast float %6224, %6214
  %6226 = fmul fast float %6225, %4886
  %6227 = fadd fast float %6202, %4851
  %6228 = fadd fast float %6227, %6217
  %6229 = fmul fast float %6228, %4886
  %6230 = fadd fast float %6203, %4852
  %6231 = fadd fast float %6230, %6220
  %6232 = fmul fast float %6231, %4886
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6235 = fcmp fast oeq float %6234, 0.000000e+00
  br i1 %6235, label %7790, label %6236

; <label>:6236                                    ; preds = %6152
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.CBufRet.f32 %6240, 2
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.CBufRet.f32 %6244, 1
  %6247 = call float @dx.op.dot3.f32(i32 55, float %6241, float %6242, float %6243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6248 = select i1 %261, float %6245, float %6241
  %6249 = select i1 %261, float %6247, float %6242
  %6250 = select i1 %261, float %6246, float %6243
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6253 = fmul fast float %6252, %111
  %6254 = fmul fast float %6252, %112
  %6255 = fmul fast float %6252, %113
  %6256 = fadd fast float %6253, %167
  %6257 = fadd fast float %6254, %168
  %6258 = fadd fast float %6255, %169
  %6259 = fcmp fast olt float %6234, 0.000000e+00
  br i1 %6259, label %7355, label %6260

; <label>:6260                                    ; preds = %6236
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6270 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6276 = fmul fast float %6262, %6256
  %6277 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6263, float %6276)  ; FMad(a,b,c)
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6264, float %6277)  ; FMad(a,b,c)
  %6279 = fadd fast float %6278, %6265
  %6280 = fmul fast float %6267, %6256
  %6281 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6268, float %6280)  ; FMad(a,b,c)
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6269, float %6281)  ; FMad(a,b,c)
  %6283 = fadd fast float %6282, %6270
  %6284 = fmul fast float %6272, %6256
  %6285 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6273, float %6284)  ; FMad(a,b,c)
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6274, float %6285)  ; FMad(a,b,c)
  %6287 = fadd fast float %6286, %6275
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 3
  %6292 = fmul fast float %6291, %6279
  %6293 = fmul fast float %6291, %6283
  %6294 = fadd fast float %6292, %6289
  %6295 = fadd fast float %6293, %6290
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6299 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6300 = fmul fast float %6299, %6279
  %6301 = fmul fast float %6299, %6283
  %6302 = fadd fast float %6300, %6297
  %6303 = fadd fast float %6301, %6298
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6306 = fsub fast float %6305, %6287
  %6307 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6308 = fmul fast float %6306, %6307
  %6309 = fsub fast float 1.000000e+00, %6308
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6314 = fadd fast float %6313, %6311
  %6315 = fcmp fast ogt float %6314, 0.000000e+00
  br i1 %6315, label %6316, label %6340

; <label>:6316                                    ; preds = %6260
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6320 = fsub fast float %6302, %6318
  %6321 = fsub fast float %6303, %6319
  %6322 = fcmp fast olt float %6320, 0.000000e+00
  %6323 = fcmp fast olt float %6321, 0.000000e+00
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6328 = extractvalue %dx.types.CBufRet.f32 %6324, 3
  %6329 = select i1 %6322, float %6325, float %6327
  %6330 = select i1 %6323, float %6326, float %6328
  %6331 = fmul fast float %6329, %6320
  %6332 = fmul fast float %6330, %6321
  %6333 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6334 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6336 = call float @dx.op.binary.f32(i32 35, float %6333, float %6334)  ; FMax(a,b)
  %6337 = fsub fast float %6335, %6336
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = fmul fast float %6338, %6310
  br label %6340

; <label>:6340                                    ; preds = %6316, %6260
  %6341 = phi float [ %6339, %6316 ], [ 0.000000e+00, %6260 ]
  %6342 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6343 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6344 = fadd fast float %6343, %6342
  %6345 = fcmp fast ogt float %6344, 0.000000e+00
  %6346 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  br i1 %6345, label %6347, label %6370

; <label>:6347                                    ; preds = %6340
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = fsub fast float %6294, %6349
  %6352 = fsub fast float %6295, %6350
  %6353 = fcmp fast olt float %6351, 0.000000e+00
  %6354 = fcmp fast olt float %6352, 0.000000e+00
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = select i1 %6353, float %6356, float %6358
  %6361 = select i1 %6354, float %6357, float %6359
  %6362 = fmul fast float %6360, %6351
  %6363 = fmul fast float %6361, %6352
  %6364 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6365 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6366 = call float @dx.op.binary.f32(i32 35, float %6364, float %6365)  ; FMax(a,b)
  %6367 = fsub fast float %6346, %6366
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = fmul fast float %6368, %6310
  br label %6370

; <label>:6370                                    ; preds = %6347, %6340
  %6371 = phi float [ %6369, %6347 ], [ 0.000000e+00, %6340 ]
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6378 = fsub fast float %6279, %6376
  %6379 = fsub fast float %6283, %6377
  %6380 = fcmp fast olt float %6378, 0.000000e+00
  %6381 = fcmp fast olt float %6379, 0.000000e+00
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6386 = extractvalue %dx.types.CBufRet.f32 %6382, 3
  %6387 = select i1 %6380, float %6383, float %6385
  %6388 = select i1 %6381, float %6384, float %6386
  %6389 = fmul fast float %6387, %6378
  %6390 = fmul fast float %6388, %6379
  %6391 = call float @dx.op.unary.f32(i32 6, float %6389)  ; FAbs(value)
  %6392 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6393 = call float @dx.op.binary.f32(i32 35, float %6391, float %6392)  ; FMax(a,b)
  %6394 = fsub fast float %6346, %6393
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = call float @dx.op.binary.f32(i32 36, float %6395, float %6374)  ; FMin(a,b)
  %6397 = fmul fast float %6396, %6310
  %6398 = fsub fast float %6371, %6397
  %6399 = fsub fast float %6341, %6371
  %6400 = fsub fast float %6399, %6397
  %6401 = call float @dx.op.binary.f32(i32 35, float %6371, float %6341)  ; FMax(a,b)
  %6402 = call float @dx.op.binary.f32(i32 35, float %6397, float %6401)  ; FMax(a,b)
  %6403 = fcmp fast olt float %6402, 1.000000e+00
  br i1 %6403, label %6404, label %6802, !dx.controlflow.hints !102

; <label>:6404                                    ; preds = %6370
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = fcmp fast une float %6406, 0.000000e+00
  br i1 %6407, label %6408, label %6802, !dx.controlflow.hints !103

; <label>:6408                                    ; preds = %6404
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6409, 3
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6414, 3
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6424 = fmul fast float %6410, %6256
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6411, float %6424)  ; FMad(a,b,c)
  %6426 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6412, float %6425)  ; FMad(a,b,c)
  %6427 = fadd fast float %6426, %6413
  %6428 = fmul fast float %6415, %6256
  %6429 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6416, float %6428)  ; FMad(a,b,c)
  %6430 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6417, float %6429)  ; FMad(a,b,c)
  %6431 = fadd fast float %6430, %6418
  %6432 = fmul fast float %6420, %6256
  %6433 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6421, float %6432)  ; FMad(a,b,c)
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6422, float %6433)  ; FMad(a,b,c)
  %6435 = fadd fast float %6434, %6423
  %6436 = fcmp fast oge float %6427, 1.000000e+00
  %6437 = fcmp fast oge float %6431, 1.000000e+00
  %6438 = or i1 %6436, %6437
  %6439 = fcmp fast olt float %6427, 0.000000e+00
  %6440 = fcmp fast olt float %6431, 0.000000e+00
  %6441 = or i1 %6439, %6440
  %6442 = or i1 %6438, %6441
  br i1 %6442, label %6802, label %6443, !dx.controlflow.hints !104

; <label>:6443                                    ; preds = %6408
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.i32 %6448, 2
  %6450 = uitofp i32 %6449 to float
  %6451 = extractvalue %dx.types.CBufRet.i32 %6448, 3
  %6452 = uitofp i32 %6451 to float
  %6453 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6454 = fmul fast float %6453, 2.000000e+00
  %6455 = fsub fast float %6427, %6445
  %6456 = fsub fast float %6431, %6446
  %6457 = fmul fast float %6454, %6455
  %6458 = fmul fast float %6454, %6456
  %6459 = fdiv fast float 1.000000e+00, %6239
  %6460 = fmul fast float %6458, %6459
  %6461 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6462 = fmul fast float %6447, %6258
  %6463 = fmul fast float %6462, %6454
  %6464 = call float @dx.op.unary.f32(i32 6, float %6463)  ; FAbs(value)
  %6465 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6466 = call float @dx.op.binary.f32(i32 35, float %6464, float %6461)  ; FMax(a,b)
  %6467 = call float @dx.op.binary.f32(i32 35, float %6465, float %6466)  ; FMax(a,b)
  %6468 = fmul fast float %6467, 2.000000e+00
  %6469 = call float @dx.op.unary.f32(i32 23, float %6468)  ; Log(value)
  %6470 = call float @dx.op.binary.f32(i32 35, float %6469, float %6450)  ; FMax(a,b)
  %6471 = call float @dx.op.unary.f32(i32 22, float %6470)  ; Frc(value)
  %6472 = fadd fast float %6471, 0xBFEA666660000000
  %6473 = fmul fast float %6472, 8.000000e+00
  %6474 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  %6475 = call float @dx.op.unary.f32(i32 27, float %6470)  ; Round_ni(value)
  %6476 = fadd fast float %6475, %6474
  %6477 = call float @dx.op.binary.f32(i32 36, float %6476, float %6452)  ; FMin(a,b)
  %6478 = call float @dx.op.unary.f32(i32 27, float %6477)  ; Round_ni(value)
  %6479 = fsub fast float -0.000000e+00, %6478
  %6480 = call float @dx.op.unary.f32(i32 21, float %6479)  ; Exp(value)
  %6481 = fmul fast float %6480, %6454
  %6482 = fmul fast float %6481, %6427
  %6483 = fmul fast float %6481, %6431
  %6484 = fmul fast float %6482, 2.500000e-01
  %6485 = fmul fast float %6483, 2.500000e-01
  %6486 = fadd fast float %6484, 5.000000e-01
  %6487 = fadd fast float %6485, 5.000000e-01
  %6488 = fsub fast float %6452, %6450
  %6489 = fptoui float %6488 to i32
  %6490 = add i32 %6489, 320
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6490)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = fcmp fast une float %6477, %6452
  %6495 = fsub fast float %6427, %6492
  %6496 = fsub fast float %6431, %6493
  %6497 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6498 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6499 = fmul fast float %6497, %6481
  %6500 = fmul fast float %6498, %6481
  %6501 = fcmp fast olt float %6499, 1.000000e+00
  %6502 = fcmp fast olt float %6500, 1.000000e+00
  %6503 = and i1 %6501, %6502
  %6504 = or i1 %6494, %6503
  br i1 %6504, label %6505, label %6802, !dx.controlflow.hints !105

; <label>:6505                                    ; preds = %6443
  %6506 = fmul fast float %6483, 5.000000e-01
  %6507 = fmul fast float %6482, 5.000000e-01
  %6508 = fadd fast float %6506, 5.000000e-01
  %6509 = fadd fast float %6507, 5.000000e-01
  %6510 = sitofp i32 %6449 to float
  %6511 = fsub fast float %6477, %6510
  %6512 = call float @dx.op.unary.f32(i32 27, float %6511)  ; Round_ni(value)
  %6513 = call float @dx.op.unary.f32(i32 22, float %6477)  ; Frc(value)
  %6514 = call float @dx.op.unary.f32(i32 22, float %6509)  ; Frc(value)
  %6515 = call float @dx.op.unary.f32(i32 22, float %6508)  ; Frc(value)
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6514, float %6515, float %6512, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.ResRet.f32 %6516, 2
  %6520 = extractvalue %dx.types.ResRet.f32 %6516, 3
  %6521 = fcmp fast ogt float %6513, 0.000000e+00
  br i1 %6521, label %6522, label %6543, !dx.controlflow.hints !106

; <label>:6522                                    ; preds = %6505
  %6523 = fadd fast float %6512, 1.000000e+00
  %6524 = call float @dx.op.unary.f32(i32 22, float %6486)  ; Frc(value)
  %6525 = call float @dx.op.unary.f32(i32 22, float %6487)  ; Frc(value)
  %6526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6524, float %6525, float %6523, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.ResRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.ResRet.f32 %6526, 3
  %6531 = fsub fast float %6527, %6517
  %6532 = fsub fast float %6528, %6518
  %6533 = fsub fast float %6529, %6519
  %6534 = fsub fast float %6530, %6520
  %6535 = fmul fast float %6531, %6513
  %6536 = fmul fast float %6532, %6513
  %6537 = fmul fast float %6533, %6513
  %6538 = fmul fast float %6534, %6513
  %6539 = fadd fast float %6535, %6517
  %6540 = fadd fast float %6536, %6518
  %6541 = fadd fast float %6537, %6519
  %6542 = fadd fast float %6538, %6520
  br label %6543

; <label>:6543                                    ; preds = %6522, %6505
  %6544 = phi float [ %6539, %6522 ], [ %6517, %6505 ]
  %6545 = phi float [ %6540, %6522 ], [ %6518, %6505 ]
  %6546 = phi float [ %6541, %6522 ], [ %6519, %6505 ]
  %6547 = phi float [ %6542, %6522 ], [ %6520, %6505 ]
  %6548 = fadd fast float %6544, -5.000000e-01
  %6549 = fadd fast float %6546, -5.000000e-01
  %6550 = fmul fast float %6548, 0xBFD5555560000000
  %6551 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6549, float %6550)  ; FMad(a,b,c)
  %6552 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6545, float 0.000000e+00)  ; FMad(a,b,c)
  %6553 = fadd fast float %6552, %6547
  %6554 = fmul fast float %6548, -7.500000e-01
  %6555 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6549, float %6554)  ; FMad(a,b,c)
  %6556 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6545, float 0.000000e+00)  ; FMad(a,b,c)
  %6557 = fadd fast float %6556, %6547
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6563 = extractvalue %dx.types.CBufRet.f32 %6560, 2
  %6564 = extractvalue %dx.types.CBufRet.f32 %6560, 3
  %6565 = fsub fast float %6561, %6551
  %6566 = fsub fast float %6562, %6553
  %6567 = fsub fast float %6563, %6555
  %6568 = fsub fast float %6564, %6557
  %6569 = fmul fast float %6565, %6559
  %6570 = fmul fast float %6566, %6559
  %6571 = fmul fast float %6567, %6559
  %6572 = fmul fast float %6568, %6559
  %6573 = fadd fast float %6569, %6551
  %6574 = fadd fast float %6570, %6553
  %6575 = fadd fast float %6571, %6555
  %6576 = fadd fast float %6572, %6557
  %6577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6578 = extractvalue %dx.types.ResRet.i32 %6577, 0
  %6579 = and i32 %6578, 536870911
  %6580 = uitofp i32 %6579 to float
  %6581 = fmul fast float %6580, %6427
  %6582 = fmul fast float %6580, %6431
  %6583 = fptoui float %6581 to i32
  %6584 = fptoui float %6582 to i32
  %6585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6586 = extractvalue %dx.types.ResRet.i32 %6585, 0
  %6587 = and i32 %6586, 31
  %6588 = lshr i32 %6583, %6587
  %6589 = lshr i32 %6584, %6587
  %6590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.i32 %6590, 0
  %6592 = and i32 %6591, 31
  %6593 = shl i32 1, %6592
  %6594 = call i32 @dx.op.binary.i32(i32 40, i32 %6593, i32 4)  ; UMin(a,b)
  %6595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6596 = extractvalue %dx.types.ResRet.i32 %6595, 0
  %6597 = extractvalue %dx.types.ResRet.i32 %6595, 1
  %6598 = icmp eq i32 %6594, 0
  br i1 %6598, label %6640, label %6599

; <label>:6599                                    ; preds = %6543
  br label %6600

; <label>:6600                                    ; preds = %6628, %6599
  %6601 = phi i32 [ %6631, %6628 ], [ 0, %6599 ]
  %6602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6603 = extractvalue %dx.types.ResRet.i32 %6602, 0
  %6604 = lshr i32 %6603, 16
  %6605 = and i32 %6604, 31
  %6606 = shl i32 %6589, %6605
  %6607 = add i32 %6606, %6588
  %6608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6609 = extractvalue %dx.types.ResRet.i32 %6608, 0
  %6610 = and i32 %6609, 31
  %6611 = shl i32 %6607, %6610
  %6612 = add i32 %6611, %6601
  %6613 = shl i32 %6612, 2
  %6614 = add i32 %6613, 32
  %6615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6614, i32 undef)  ; BufferLoad(srv,index,wot)
  %6616 = extractvalue %dx.types.ResRet.i32 %6615, 0
  %6617 = icmp slt i32 %6616, 0
  %6618 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6601
  %6619 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6601
  %6620 = bitcast float* %6618 to i32*
  %6621 = bitcast float* %6619 to i32*
  br i1 %6617, label %6622, label %6628

; <label>:6622                                    ; preds = %6600
  %6623 = and i32 %6616, 1073741823
  %6624 = add nuw nsw i32 %6623, 20
  %6625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6624, i32 undef)  ; BufferLoad(srv,index,wot)
  %6626 = extractvalue %dx.types.ResRet.i32 %6625, 0
  %6627 = extractvalue %dx.types.ResRet.i32 %6625, 1
  br label %6628

; <label>:6628                                    ; preds = %6622, %6600
  %6629 = phi i32 [ %6626, %6622 ], [ %6596, %6600 ]
  %6630 = phi i32 [ %6627, %6622 ], [ %6597, %6600 ]
  store i32 %6629, i32* %6620, align 4
  store i32 %6630, i32* %6621, align 4
  %6631 = add nuw i32 %6601, 1
  %6632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.i32 %6632, 2
  %6634 = icmp eq i32 %6633, 0
  %6635 = icmp ugt i32 %6616, -1073741825
  %6636 = and i1 %6635, %6634
  %6637 = icmp ult i32 %6631, %6594
  %6638 = and i1 %6636, %6637
  br i1 %6638, label %6600, label %6639

; <label>:6639                                    ; preds = %6628
  br label %6640

; <label>:6640                                    ; preds = %6639, %6543
  %6641 = phi i32 [ 0, %6543 ], [ %6631, %6639 ]
  %6642 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6643 = fptoui float %6642 to i32
  %6644 = icmp eq i32 %6643, 0
  br i1 %6644, label %6696, label %6645

; <label>:6645                                    ; preds = %6640
  br label %6646

; <label>:6646                                    ; preds = %6691, %6645
  %6647 = phi i32 [ %6692, %6691 ], [ %6641, %6645 ]
  %6648 = phi i32 [ %6693, %6691 ], [ 0, %6645 ]
  %6649 = lshr i32 %6648, 2
  %6650 = and i32 %6648, 3
  %6651 = add nuw nsw i32 %6649, 83
  %6652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6651)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.i32 %6652, 0
  %6654 = extractvalue %dx.types.CBufRet.i32 %6652, 1
  %6655 = extractvalue %dx.types.CBufRet.i32 %6652, 2
  %6656 = extractvalue %dx.types.CBufRet.i32 %6652, 3
  %6657 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6653, i32* %6657, align 4
  %6658 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6654, i32* %6658, align 4
  %6659 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6655, i32* %6659, align 4
  %6660 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6656, i32* %6660, align 4
  %6661 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6650
  %6662 = load i32, i32* %6661, align 4, !tbaa !107, !noalias !111
  %6663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6664 = extractvalue %dx.types.ResRet.i32 %6663, 0
  %6665 = lshr i32 %6664, 16
  %6666 = and i32 %6665, 31
  %6667 = shl i32 %6589, %6666
  %6668 = add i32 %6667, %6588
  %6669 = shl i32 %6668, 2
  %6670 = add i32 %6669, %6662
  %6671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6670, i32 undef)  ; BufferLoad(srv,index,wot)
  %6672 = extractvalue %dx.types.ResRet.i32 %6671, 0
  %6673 = icmp eq i32 %6672, 0
  br i1 %6673, label %6691, label %6674

; <label>:6674                                    ; preds = %6646
  %6675 = icmp slt i32 %6672, 0
  %6676 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6647
  %6677 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6647
  %6678 = bitcast float* %6676 to i32*
  %6679 = bitcast float* %6677 to i32*
  br i1 %6675, label %6680, label %6687

; <label>:6680                                    ; preds = %6674
  %6681 = and i32 %6672, 1073741823
  %6682 = add i32 %6662, 20
  %6683 = add i32 %6682, %6681
  %6684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6683, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.i32 %6684, 0
  %6686 = extractvalue %dx.types.ResRet.i32 %6684, 1
  br label %6687

; <label>:6687                                    ; preds = %6680, %6674
  %6688 = phi i32 [ %6685, %6680 ], [ %6596, %6674 ]
  %6689 = phi i32 [ %6686, %6680 ], [ %6597, %6674 ]
  store i32 %6688, i32* %6678, align 4
  store i32 %6689, i32* %6679, align 4
  %6690 = add i32 %6647, 1
  br label %6691

; <label>:6691                                    ; preds = %6687, %6646
  %6692 = phi i32 [ %6647, %6646 ], [ %6690, %6687 ]
  %6693 = add nuw i32 %6648, 1
  %6694 = icmp eq i32 %6693, %6643
  br i1 %6694, label %6695, label %6646

; <label>:6695                                    ; preds = %6691
  br label %6696

; <label>:6696                                    ; preds = %6695, %6640
  %6697 = phi i32 [ %6641, %6640 ], [ %6692, %6695 ]
  %6698 = icmp eq i32 %6697, 1
  %6699 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6700 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6698, label %6701, label %6704

; <label>:6701                                    ; preds = %6696
  %6702 = load float, float* %6699, align 4
  %6703 = load float, float* %6700, align 4
  br label %6731

; <label>:6704                                    ; preds = %6696
  %6705 = load float, float* %6699, align 4
  %6706 = load float, float* %6700, align 4
  %6707 = fdiv fast float 1.000000e+00, %6706
  %6708 = fsub fast float %6705, %6707
  %6709 = icmp ugt i32 %6697, 1
  br i1 %6709, label %6710, label %6726

; <label>:6710                                    ; preds = %6704
  br label %6711

; <label>:6711                                    ; preds = %6711, %6710
  %6712 = phi float [ %6721, %6711 ], [ %6708, %6710 ]
  %6713 = phi float [ %6722, %6711 ], [ %6705, %6710 ]
  %6714 = phi i32 [ %6723, %6711 ], [ 1, %6710 ]
  %6715 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6714
  %6716 = load float, float* %6715, align 4
  %6717 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6714
  %6718 = load float, float* %6717, align 4
  %6719 = fdiv fast float 1.000000e+00, %6718
  %6720 = fsub fast float %6716, %6719
  %6721 = call float @dx.op.binary.f32(i32 36, float %6712, float %6720)  ; FMin(a,b)
  %6722 = call float @dx.op.binary.f32(i32 35, float %6713, float %6716)  ; FMax(a,b)
  %6723 = add nuw i32 %6714, 1
  %6724 = icmp eq i32 %6723, %6697
  br i1 %6724, label %6725, label %6711

; <label>:6725                                    ; preds = %6711
  br label %6726

; <label>:6726                                    ; preds = %6725, %6704
  %6727 = phi float [ %6708, %6704 ], [ %6721, %6725 ]
  %6728 = phi float [ %6705, %6704 ], [ %6722, %6725 ]
  %6729 = fsub fast float %6728, %6727
  %6730 = fdiv fast float 1.000000e+00, %6729
  br label %6731

; <label>:6731                                    ; preds = %6726, %6701
  %6732 = phi float [ %6702, %6701 ], [ %6728, %6726 ]
  %6733 = phi float [ %6703, %6701 ], [ %6730, %6726 ]
  %6734 = fadd fast float %6435, %6732
  %6735 = fmul fast float %6734, %6733
  %6736 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6737 = fmul fast float %6736, 2.000000e+00
  %6738 = fsub fast float 1.000000e+00, %6737
  %6739 = fmul fast float %6573, %6573
  %6740 = fsub fast float %6574, %6739
  %6741 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6740)  ; FMax(a,b)
  %6742 = fdiv fast float 1.000000e+00, %6741
  %6743 = fmul fast float %6574, %6573
  %6744 = fsub fast float %6575, %6743
  %6745 = fsub fast float %6738, %6573
  %6746 = fmul fast float %6738, %6738
  %6747 = fsub fast float %6746, %6574
  %6748 = fmul fast float %6742, %6744
  %6749 = fmul fast float %6748, %6745
  %6750 = fsub fast float %6747, %6749
  %6751 = fmul fast float %6574, %6574
  %6752 = fsub fast float %6576, %6751
  %6753 = fmul fast float %6744, %6744
  %6754 = fmul fast float %6753, %6742
  %6755 = fsub fast float %6752, %6754
  %6756 = fdiv fast float %6750, %6755
  %6757 = fmul fast float %6756, %6744
  %6758 = fsub fast float %6745, %6757
  %6759 = fmul fast float %6758, %6742
  %6760 = fmul fast float %6759, %6573
  %6761 = fsub fast float 1.000000e+00, %6760
  %6762 = fmul fast float %6756, %6574
  %6763 = fsub fast float %6761, %6762
  %6764 = fmul fast float %6759, %6759
  %6765 = fmul fast float %6756, 4.000000e+00
  %6766 = fmul fast float %6765, %6763
  %6767 = fsub fast float %6764, %6766
  %6768 = call float @dx.op.unary.f32(i32 24, float %6767)  ; Sqrt(value)
  %6769 = fcmp fast oge float %6759, 0.000000e+00
  %6770 = fsub fast float -0.000000e+00, %6768
  %6771 = select i1 %6769, float %6770, float %6768
  %6772 = fsub fast float %6771, %6759
  %6773 = fdiv fast float %6772, %6756
  %6774 = fdiv fast float %6763, %6772
  %6775 = fmul fast float %6773, 5.000000e-01
  %6776 = fmul fast float %6774, 2.000000e+00
  %6777 = select i1 %6769, float %6775, float %6776
  %6778 = select i1 %6769, float %6776, float %6775
  %6779 = call float @dx.op.binary.f32(i32 35, float %6777, float %6778)  ; FMax(a,b)
  %6780 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6781 = fcmp fast ogt float %6738, %6779
  %6782 = fsub fast float %6738, %6780
  %6783 = fsub fast float %6738, %6779
  %6784 = fsub fast float %6779, %6780
  %6785 = select i1 %6781, float %6783, float %6784
  %6786 = fmul float %6782, %6785
  %6787 = select i1 %6781, float %6780, float %6738
  %6788 = fcmp fast ogt float %6738, %6780
  %6789 = fmul fast float %6787, %6779
  %6790 = fadd fast float %6787, %6779
  %6791 = fmul fast float %6790, %6573
  %6792 = fadd fast float %6789, %6574
  %6793 = fsub fast float %6792, %6791
  %6794 = fdiv fast float %6793, %6786
  %6795 = select i1 %6788, float %6794, float 0.000000e+00
  %6796 = fsub fast float 1.000000e+00, %6795
  %6797 = select i1 %6781, float %6796, float %6795
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6558, 3
  %6800 = fmul fast float %6799, %6798
  %6801 = fsub fast float 1.000000e+00, %6800
  br label %6802

; <label>:6802                                    ; preds = %6731, %6443, %6408, %6404, %6370
  %6803 = phi float [ 1.000000e+00, %6370 ], [ %6801, %6731 ], [ 1.000000e+00, %6408 ], [ 1.000000e+00, %6443 ], [ 1.000000e+00, %6404 ]
  %6804 = fcmp fast ogt float %6400, 0.000000e+00
  br i1 %6804, label %6805, label %6967, !dx.controlflow.hints !120

; <label>:6805                                    ; preds = %6802
  %6806 = fadd fast float %6313, %6287
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6807, 3
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6812 = call float @dx.op.binary.f32(i32 35, float %6806, float 0.000000e+00)  ; FMax(a,b)
  %6813 = fadd fast float %6812, 0x3F10000000000000
  %6814 = fcmp fast oeq float %6811, 0.000000e+00
  br i1 %6814, label %6815, label %6882

; <label>:6815                                    ; preds = %6805
  %6816 = extractvalue %dx.types.CBufRet.f32 %6807, 1
  %6817 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6818 = fmul fast float %6817, %6302
  %6819 = fmul fast float %6816, %6303
  %6820 = fadd fast float %6818, 5.000000e-01
  %6821 = call float @dx.op.unary.f32(i32 27, float %6820)  ; Round_ni(value)
  %6822 = fadd fast float %6819, 5.000000e-01
  %6823 = call float @dx.op.unary.f32(i32 27, float %6822)  ; Round_ni(value)
  %6824 = fsub fast float %6820, %6821
  %6825 = fsub fast float %6822, %6823
  %6826 = fadd fast float %6821, -5.000000e-01
  %6827 = fadd fast float %6823, -5.000000e-01
  %6828 = fmul fast float %6824, 2.000000e+00
  %6829 = fsub fast float 3.000000e+00, %6828
  %6830 = fadd fast float %6828, 1.000000e+00
  %6831 = fsub fast float 2.000000e+00, %6824
  %6832 = bitcast float %6829 to i32
  %6833 = sub nsw i32 2129859010, %6832
  %6834 = bitcast i32 %6833 to float
  %6835 = fmul fast float %6834, %6831
  %6836 = fadd fast float %6835, -1.000000e+00
  %6837 = bitcast float %6830 to i32
  %6838 = sub nsw i32 2129859010, %6837
  %6839 = bitcast i32 %6838 to float
  %6840 = fmul fast float %6839, %6824
  %6841 = fadd fast float %6840, 1.000000e+00
  %6842 = fmul fast float %6825, 2.000000e+00
  %6843 = fsub fast float 3.000000e+00, %6842
  %6844 = fadd fast float %6842, 1.000000e+00
  %6845 = fsub fast float 2.000000e+00, %6825
  %6846 = bitcast float %6843 to i32
  %6847 = sub nsw i32 2129859010, %6846
  %6848 = bitcast i32 %6847 to float
  %6849 = fmul fast float %6848, %6845
  %6850 = fadd fast float %6849, -1.000000e+00
  %6851 = bitcast float %6844 to i32
  %6852 = sub nsw i32 2129859010, %6851
  %6853 = bitcast i32 %6852 to float
  %6854 = fmul fast float %6853, %6825
  %6855 = fadd fast float %6854, 1.000000e+00
  %6856 = fadd fast float %6836, %6826
  %6857 = fmul fast float %6856, %6808
  %6858 = fadd fast float %6850, %6827
  %6859 = fmul fast float %6858, %6809
  %6860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6857, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6861 = extractvalue %dx.types.ResRet.f32 %6860, 0
  %6862 = fmul fast float %6861, %6829
  %6863 = fadd fast float %6841, %6826
  %6864 = fmul fast float %6863, %6808
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6864, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = fmul fast float %6866, %6830
  %6868 = fadd fast float %6855, %6827
  %6869 = fmul fast float %6868, %6809
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6857, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6829
  %6873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6864, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  %6875 = fmul fast float %6874, %6830
  %6876 = fadd fast float %6875, %6872
  %6877 = fmul fast float %6876, %6844
  %6878 = fadd fast float %6867, %6862
  %6879 = fmul fast float %6878, %6843
  %6880 = fadd fast float %6879, %6877
  %6881 = fmul fast float %6880, 6.250000e-02
  br label %6967

; <label>:6882                                    ; preds = %6805
  %6883 = fmul fast float %272, 0x401921FB60000000
  %6884 = call float @dx.op.unary.f32(i32 13, float %6883)  ; Sin(value)
  %6885 = call float @dx.op.unary.f32(i32 12, float %6883)  ; Cos(value)
  %6886 = fsub fast float -0.000000e+00, %6884
  br label %6887

; <label>:6887                                    ; preds = %6936, %6882
  %6888 = phi float [ 0.000000e+00, %6882 ], [ %6931, %6936 ]
  %6889 = phi float [ 0.000000e+00, %6882 ], [ %6933, %6936 ]
  %6890 = phi i32 [ 0, %6882 ], [ %6937, %6936 ]
  %6891 = mul i32 %6890, 2
  %6892 = add i32 0, %6891
  %6893 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6892
  %6894 = load float, float* %6893, align 4
  %6895 = mul i32 %6890, 2
  %6896 = add i32 1, %6895
  %6897 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6896
  %6898 = load float, float* %6897, align 4
  %6899 = fmul fast float %6894, %6885
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6898, float %6886, float %6899)  ; FMad(a,b,c)
  %6901 = fmul fast float %6894, %6884
  %6902 = call float @dx.op.tertiary.f32(i32 46, float %6898, float %6885, float %6901)  ; FMad(a,b,c)
  %6903 = fmul fast float %6900, %6811
  %6904 = fmul fast float %6902, %6811
  %6905 = fadd fast float %6903, %6302
  %6906 = fadd fast float %6904, %6303
  %6907 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6905, float %6906, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  %6911 = extractvalue %dx.types.ResRet.f32 %6907, 3
  %6912 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6908, float* %6912, align 4
  %6913 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6909, float* %6913, align 4
  %6914 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6910, float* %6914, align 4
  %6915 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6911, float* %6915, align 4
  %6916 = fsub fast float %6908, %6813
  %6917 = fcmp fast olt float %6916, 0.000000e+00
  %6918 = select i1 %6917, float 0.000000e+00, float 1.000000e+00
  %6919 = fadd fast float %6918, %6888
  %6920 = fmul fast float %6918, %6916
  %6921 = fadd fast float %6920, %6889
  br label %6922

; <label>:6922                                    ; preds = %6922, %6887
  %6923 = phi i32 [ 1, %6887 ], [ %6934, %6922 ]
  %6924 = phi float [ %6921, %6887 ], [ %6933, %6922 ]
  %6925 = phi float [ %6919, %6887 ], [ %6931, %6922 ]
  %6926 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6923
  %6927 = load float, float* %6926, align 4, !tbaa !121, !noalias !111
  %6928 = fsub fast float %6927, %6813
  %6929 = fcmp fast olt float %6928, 0.000000e+00
  %6930 = select i1 %6929, float 0.000000e+00, float 1.000000e+00
  %6931 = fadd fast float %6930, %6925
  %6932 = fmul fast float %6930, %6928
  %6933 = fadd fast float %6932, %6924
  %6934 = add nuw nsw i32 %6923, 1
  %6935 = icmp eq i32 %6934, 4
  br i1 %6935, label %6936, label %6922, !llvm.loop !123

; <label>:6936                                    ; preds = %6922
  %6937 = add nuw nsw i32 %6890, 1
  %6938 = icmp eq i32 %6937, 8
  br i1 %6938, label %6939, label %6887, !llvm.loop !124

; <label>:6939                                    ; preds = %6936
  %6940 = fdiv fast float 1.000000e+00, %6931
  %6941 = fmul fast float %6940, %6933
  %6942 = fdiv fast float 1.000000e+00, %6813
  %6943 = fmul fast float %6941, %6942
  %6944 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  %6945 = call float @dx.op.binary.f32(i32 35, float %6944, float 0.000000e+00)  ; FMax(a,b)
  %6946 = fmul fast float %6931, 3.125000e-02
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = fmul fast float %6947, 2.000000e+00
  %6949 = fadd fast float %6948, -1.000000e+00
  %6950 = fcmp fast ogt float %6949, 0.000000e+00
  %6951 = fcmp fast olt float %6949, 0.000000e+00
  %6952 = zext i1 %6950 to i32
  %6953 = zext i1 %6951 to i32
  %6954 = sub nsw i32 %6952, %6953
  %6955 = sitofp i32 %6954 to float
  %6956 = fmul fast float %6955, %6949
  %6957 = fsub fast float 1.000000e+00, %6956
  %6958 = fmul fast float %6957, %6957
  %6959 = fmul fast float %6958, %6957
  %6960 = fsub fast float %6957, %6959
  %6961 = fmul fast float %6960, %6945
  %6962 = fsub fast float 1.000000e+00, %6959
  %6963 = fsub fast float %6962, %6961
  %6964 = fmul fast float %6955, 5.000000e-01
  %6965 = fmul fast float %6964, %6963
  %6966 = fsub fast float 5.000000e-01, %6965
  br label %6967

; <label>:6967                                    ; preds = %6939, %6815, %6802
  %6968 = phi float [ 1.000000e+00, %6802 ], [ %6881, %6815 ], [ %6966, %6939 ]
  %6969 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6969, label %6970, label %7134, !dx.controlflow.hints !125

; <label>:6970                                    ; preds = %6967
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6973 = fadd fast float %6972, %6287
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 3
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 1
  %6979 = call float @dx.op.binary.f32(i32 35, float %6973, float 0.000000e+00)  ; FMax(a,b)
  %6980 = fadd fast float %6979, 0x3F10000000000000
  %6981 = fcmp fast oeq float %6978, 0.000000e+00
  br i1 %6981, label %6982, label %7049

; <label>:6982                                    ; preds = %6970
  %6983 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6985 = fmul fast float %6984, %6294
  %6986 = fmul fast float %6983, %6295
  %6987 = fadd fast float %6985, 5.000000e-01
  %6988 = call float @dx.op.unary.f32(i32 27, float %6987)  ; Round_ni(value)
  %6989 = fadd fast float %6986, 5.000000e-01
  %6990 = call float @dx.op.unary.f32(i32 27, float %6989)  ; Round_ni(value)
  %6991 = fsub fast float %6987, %6988
  %6992 = fsub fast float %6989, %6990
  %6993 = fadd fast float %6988, -5.000000e-01
  %6994 = fadd fast float %6990, -5.000000e-01
  %6995 = fmul fast float %6991, 2.000000e+00
  %6996 = fsub fast float 3.000000e+00, %6995
  %6997 = fadd fast float %6995, 1.000000e+00
  %6998 = fsub fast float 2.000000e+00, %6991
  %6999 = bitcast float %6996 to i32
  %7000 = sub nsw i32 2129859010, %6999
  %7001 = bitcast i32 %7000 to float
  %7002 = fmul fast float %7001, %6998
  %7003 = fadd fast float %7002, -1.000000e+00
  %7004 = bitcast float %6997 to i32
  %7005 = sub nsw i32 2129859010, %7004
  %7006 = bitcast i32 %7005 to float
  %7007 = fmul fast float %7006, %6991
  %7008 = fadd fast float %7007, 1.000000e+00
  %7009 = fmul fast float %6992, 2.000000e+00
  %7010 = fsub fast float 3.000000e+00, %7009
  %7011 = fadd fast float %7009, 1.000000e+00
  %7012 = fsub fast float 2.000000e+00, %6992
  %7013 = bitcast float %7010 to i32
  %7014 = sub nsw i32 2129859010, %7013
  %7015 = bitcast i32 %7014 to float
  %7016 = fmul fast float %7015, %7012
  %7017 = fadd fast float %7016, -1.000000e+00
  %7018 = bitcast float %7011 to i32
  %7019 = sub nsw i32 2129859010, %7018
  %7020 = bitcast i32 %7019 to float
  %7021 = fmul fast float %7020, %6992
  %7022 = fadd fast float %7021, 1.000000e+00
  %7023 = fadd fast float %7003, %6993
  %7024 = fmul fast float %7023, %6975
  %7025 = fadd fast float %7017, %6994
  %7026 = fmul fast float %7025, %6976
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7024, float %7026, float undef, float undef, i32 0, i32 0, i32 undef, float %6980)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = fmul fast float %7028, %6996
  %7030 = fadd fast float %7008, %6993
  %7031 = fmul fast float %7030, %6975
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7031, float %7026, float undef, float undef, i32 0, i32 0, i32 undef, float %6980)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = fmul fast float %7033, %6997
  %7035 = fadd fast float %7022, %6994
  %7036 = fmul fast float %7035, %6976
  %7037 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7024, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float %6980)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = fmul fast float %7038, %6996
  %7040 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7031, float %7036, float undef, float undef, i32 0, i32 0, i32 undef, float %6980)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = fmul fast float %7041, %6997
  %7043 = fadd fast float %7042, %7039
  %7044 = fmul fast float %7043, %7011
  %7045 = fadd fast float %7034, %7029
  %7046 = fmul fast float %7045, %7010
  %7047 = fadd fast float %7046, %7044
  %7048 = fmul fast float %7047, 6.250000e-02
  br label %7134

; <label>:7049                                    ; preds = %6970
  %7050 = fmul fast float %272, 0x401921FB60000000
  %7051 = call float @dx.op.unary.f32(i32 13, float %7050)  ; Sin(value)
  %7052 = call float @dx.op.unary.f32(i32 12, float %7050)  ; Cos(value)
  %7053 = fsub fast float -0.000000e+00, %7051
  br label %7054

; <label>:7054                                    ; preds = %7103, %7049
  %7055 = phi float [ 0.000000e+00, %7049 ], [ %7098, %7103 ]
  %7056 = phi float [ 0.000000e+00, %7049 ], [ %7100, %7103 ]
  %7057 = phi i32 [ 0, %7049 ], [ %7104, %7103 ]
  %7058 = mul i32 %7057, 2
  %7059 = add i32 0, %7058
  %7060 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7059
  %7061 = load float, float* %7060, align 4
  %7062 = mul i32 %7057, 2
  %7063 = add i32 1, %7062
  %7064 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7063
  %7065 = load float, float* %7064, align 4
  %7066 = fmul fast float %7061, %7052
  %7067 = call float @dx.op.tertiary.f32(i32 46, float %7065, float %7053, float %7066)  ; FMad(a,b,c)
  %7068 = fmul fast float %7061, %7051
  %7069 = call float @dx.op.tertiary.f32(i32 46, float %7065, float %7052, float %7068)  ; FMad(a,b,c)
  %7070 = fmul fast float %7067, %6978
  %7071 = fmul fast float %7069, %6978
  %7072 = fadd fast float %7070, %6294
  %7073 = fadd fast float %7071, %6295
  %7074 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7072, float %7073, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.ResRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.ResRet.f32 %7074, 3
  %7079 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %7075, float* %7079, align 4
  %7080 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %7076, float* %7080, align 4
  %7081 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %7077, float* %7081, align 4
  %7082 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %7078, float* %7082, align 4
  %7083 = fsub fast float %7075, %6980
  %7084 = fcmp fast olt float %7083, 0.000000e+00
  %7085 = select i1 %7084, float 0.000000e+00, float 1.000000e+00
  %7086 = fadd fast float %7085, %7055
  %7087 = fmul fast float %7085, %7083
  %7088 = fadd fast float %7087, %7056
  br label %7089

; <label>:7089                                    ; preds = %7089, %7054
  %7090 = phi i32 [ 1, %7054 ], [ %7101, %7089 ]
  %7091 = phi float [ %7088, %7054 ], [ %7100, %7089 ]
  %7092 = phi float [ %7086, %7054 ], [ %7098, %7089 ]
  %7093 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %7090
  %7094 = load float, float* %7093, align 4, !tbaa !121, !noalias !111
  %7095 = fsub fast float %7094, %6980
  %7096 = fcmp fast olt float %7095, 0.000000e+00
  %7097 = select i1 %7096, float 0.000000e+00, float 1.000000e+00
  %7098 = fadd fast float %7097, %7092
  %7099 = fmul fast float %7097, %7095
  %7100 = fadd fast float %7099, %7091
  %7101 = add nuw nsw i32 %7090, 1
  %7102 = icmp eq i32 %7101, 4
  br i1 %7102, label %7103, label %7089, !llvm.loop !123

; <label>:7103                                    ; preds = %7089
  %7104 = add nuw nsw i32 %7057, 1
  %7105 = icmp eq i32 %7104, 8
  br i1 %7105, label %7106, label %7054, !llvm.loop !124

; <label>:7106                                    ; preds = %7103
  %7107 = fdiv fast float 1.000000e+00, %7098
  %7108 = fmul fast float %7107, %7100
  %7109 = fdiv fast float 1.000000e+00, %6980
  %7110 = fmul fast float %7108, %7109
  %7111 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7112 = call float @dx.op.binary.f32(i32 35, float %7111, float 0.000000e+00)  ; FMax(a,b)
  %7113 = fmul fast float %7098, 3.125000e-02
  %7114 = call float @dx.op.unary.f32(i32 7, float %7113)  ; Saturate(value)
  %7115 = fmul fast float %7114, 2.000000e+00
  %7116 = fadd fast float %7115, -1.000000e+00
  %7117 = fcmp fast ogt float %7116, 0.000000e+00
  %7118 = fcmp fast olt float %7116, 0.000000e+00
  %7119 = zext i1 %7117 to i32
  %7120 = zext i1 %7118 to i32
  %7121 = sub nsw i32 %7119, %7120
  %7122 = sitofp i32 %7121 to float
  %7123 = fmul fast float %7122, %7116
  %7124 = fsub fast float 1.000000e+00, %7123
  %7125 = fmul fast float %7124, %7124
  %7126 = fmul fast float %7125, %7124
  %7127 = fsub fast float %7124, %7126
  %7128 = fmul fast float %7127, %7112
  %7129 = fsub fast float 1.000000e+00, %7126
  %7130 = fsub fast float %7129, %7128
  %7131 = fmul fast float %7122, 5.000000e-01
  %7132 = fmul fast float %7131, %7130
  %7133 = fsub fast float 5.000000e-01, %7132
  br label %7134

; <label>:7134                                    ; preds = %7106, %6982, %6967
  %7135 = phi float [ 1.000000e+00, %6967 ], [ %7048, %6982 ], [ %7133, %7106 ]
  %7136 = fcmp fast ogt float %6397, 0.000000e+00
  br i1 %7136, label %7137, label %7301, !dx.controlflow.hints !126

; <label>:7137                                    ; preds = %7134
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 0
  %7140 = fadd fast float %7139, %6287
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 3
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7146 = call float @dx.op.binary.f32(i32 35, float %7140, float 0.000000e+00)  ; FMax(a,b)
  %7147 = fadd fast float %7146, 0x3F10000000000000
  %7148 = fcmp fast oeq float %7145, 0.000000e+00
  br i1 %7148, label %7149, label %7216

; <label>:7149                                    ; preds = %7137
  %7150 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7151 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7152 = fmul fast float %7151, %6279
  %7153 = fmul fast float %7150, %6283
  %7154 = fadd fast float %7152, 5.000000e-01
  %7155 = call float @dx.op.unary.f32(i32 27, float %7154)  ; Round_ni(value)
  %7156 = fadd fast float %7153, 5.000000e-01
  %7157 = call float @dx.op.unary.f32(i32 27, float %7156)  ; Round_ni(value)
  %7158 = fsub fast float %7154, %7155
  %7159 = fsub fast float %7156, %7157
  %7160 = fadd fast float %7155, -5.000000e-01
  %7161 = fadd fast float %7157, -5.000000e-01
  %7162 = fmul fast float %7158, 2.000000e+00
  %7163 = fsub fast float 3.000000e+00, %7162
  %7164 = fadd fast float %7162, 1.000000e+00
  %7165 = fsub fast float 2.000000e+00, %7158
  %7166 = bitcast float %7163 to i32
  %7167 = sub nsw i32 2129859010, %7166
  %7168 = bitcast i32 %7167 to float
  %7169 = fmul fast float %7168, %7165
  %7170 = fadd fast float %7169, -1.000000e+00
  %7171 = bitcast float %7164 to i32
  %7172 = sub nsw i32 2129859010, %7171
  %7173 = bitcast i32 %7172 to float
  %7174 = fmul fast float %7173, %7158
  %7175 = fadd fast float %7174, 1.000000e+00
  %7176 = fmul fast float %7159, 2.000000e+00
  %7177 = fsub fast float 3.000000e+00, %7176
  %7178 = fadd fast float %7176, 1.000000e+00
  %7179 = fsub fast float 2.000000e+00, %7159
  %7180 = bitcast float %7177 to i32
  %7181 = sub nsw i32 2129859010, %7180
  %7182 = bitcast i32 %7181 to float
  %7183 = fmul fast float %7182, %7179
  %7184 = fadd fast float %7183, -1.000000e+00
  %7185 = bitcast float %7178 to i32
  %7186 = sub nsw i32 2129859010, %7185
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %7159
  %7189 = fadd fast float %7188, 1.000000e+00
  %7190 = fadd fast float %7170, %7160
  %7191 = fmul fast float %7190, %7142
  %7192 = fadd fast float %7184, %7161
  %7193 = fmul fast float %7192, %7143
  %7194 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7191, float %7193, float undef, float undef, i32 0, i32 0, i32 undef, float %7147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = fmul fast float %7195, %7163
  %7197 = fadd fast float %7175, %7160
  %7198 = fmul fast float %7197, %7142
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7198, float %7193, float undef, float undef, i32 0, i32 0, i32 undef, float %7147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = fmul fast float %7200, %7164
  %7202 = fadd fast float %7189, %7161
  %7203 = fmul fast float %7202, %7143
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7191, float %7203, float undef, float undef, i32 0, i32 0, i32 undef, float %7147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = fmul fast float %7205, %7163
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7198, float %7203, float undef, float undef, i32 0, i32 0, i32 undef, float %7147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = fmul fast float %7208, %7164
  %7210 = fadd fast float %7209, %7206
  %7211 = fmul fast float %7210, %7178
  %7212 = fadd fast float %7201, %7196
  %7213 = fmul fast float %7212, %7177
  %7214 = fadd fast float %7213, %7211
  %7215 = fmul fast float %7214, 6.250000e-02
  br label %7301

; <label>:7216                                    ; preds = %7137
  %7217 = fmul fast float %272, 0x401921FB60000000
  %7218 = call float @dx.op.unary.f32(i32 13, float %7217)  ; Sin(value)
  %7219 = call float @dx.op.unary.f32(i32 12, float %7217)  ; Cos(value)
  %7220 = fsub fast float -0.000000e+00, %7218
  br label %7221

; <label>:7221                                    ; preds = %7270, %7216
  %7222 = phi float [ 0.000000e+00, %7216 ], [ %7265, %7270 ]
  %7223 = phi float [ 0.000000e+00, %7216 ], [ %7267, %7270 ]
  %7224 = phi i32 [ 0, %7216 ], [ %7271, %7270 ]
  %7225 = mul i32 %7224, 2
  %7226 = add i32 0, %7225
  %7227 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7226
  %7228 = load float, float* %7227, align 4
  %7229 = mul i32 %7224, 2
  %7230 = add i32 1, %7229
  %7231 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7230
  %7232 = load float, float* %7231, align 4
  %7233 = fmul fast float %7228, %7219
  %7234 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7220, float %7233)  ; FMad(a,b,c)
  %7235 = fmul fast float %7228, %7218
  %7236 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7219, float %7235)  ; FMad(a,b,c)
  %7237 = fmul fast float %7234, %7145
  %7238 = fmul fast float %7236, %7145
  %7239 = fadd fast float %7237, %6279
  %7240 = fadd fast float %7238, %6283
  %7241 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7239, float %7240, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7242 = extractvalue %dx.types.ResRet.f32 %7241, 0
  %7243 = extractvalue %dx.types.ResRet.f32 %7241, 1
  %7244 = extractvalue %dx.types.ResRet.f32 %7241, 2
  %7245 = extractvalue %dx.types.ResRet.f32 %7241, 3
  %7246 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %7242, float* %7246, align 4
  %7247 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %7243, float* %7247, align 4
  %7248 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %7244, float* %7248, align 4
  %7249 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %7245, float* %7249, align 4
  %7250 = fsub fast float %7242, %7147
  %7251 = fcmp fast olt float %7250, 0.000000e+00
  %7252 = select i1 %7251, float 0.000000e+00, float 1.000000e+00
  %7253 = fadd fast float %7252, %7222
  %7254 = fmul fast float %7252, %7250
  %7255 = fadd fast float %7254, %7223
  br label %7256

; <label>:7256                                    ; preds = %7256, %7221
  %7257 = phi i32 [ 1, %7221 ], [ %7268, %7256 ]
  %7258 = phi float [ %7255, %7221 ], [ %7267, %7256 ]
  %7259 = phi float [ %7253, %7221 ], [ %7265, %7256 ]
  %7260 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %7257
  %7261 = load float, float* %7260, align 4, !tbaa !121, !noalias !111
  %7262 = fsub fast float %7261, %7147
  %7263 = fcmp fast olt float %7262, 0.000000e+00
  %7264 = select i1 %7263, float 0.000000e+00, float 1.000000e+00
  %7265 = fadd fast float %7264, %7259
  %7266 = fmul fast float %7264, %7262
  %7267 = fadd fast float %7266, %7258
  %7268 = add nuw nsw i32 %7257, 1
  %7269 = icmp eq i32 %7268, 4
  br i1 %7269, label %7270, label %7256, !llvm.loop !123

; <label>:7270                                    ; preds = %7256
  %7271 = add nuw nsw i32 %7224, 1
  %7272 = icmp eq i32 %7271, 8
  br i1 %7272, label %7273, label %7221, !llvm.loop !124

; <label>:7273                                    ; preds = %7270
  %7274 = fdiv fast float 1.000000e+00, %7265
  %7275 = fmul fast float %7274, %7267
  %7276 = fdiv fast float 1.000000e+00, %7147
  %7277 = fmul fast float %7275, %7276
  %7278 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  %7279 = call float @dx.op.binary.f32(i32 35, float %7278, float 0.000000e+00)  ; FMax(a,b)
  %7280 = fmul fast float %7265, 3.125000e-02
  %7281 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7282 = fmul fast float %7281, 2.000000e+00
  %7283 = fadd fast float %7282, -1.000000e+00
  %7284 = fcmp fast ogt float %7283, 0.000000e+00
  %7285 = fcmp fast olt float %7283, 0.000000e+00
  %7286 = zext i1 %7284 to i32
  %7287 = zext i1 %7285 to i32
  %7288 = sub nsw i32 %7286, %7287
  %7289 = sitofp i32 %7288 to float
  %7290 = fmul fast float %7289, %7283
  %7291 = fsub fast float 1.000000e+00, %7290
  %7292 = fmul fast float %7291, %7291
  %7293 = fmul fast float %7292, %7291
  %7294 = fsub fast float %7291, %7293
  %7295 = fmul fast float %7294, %7279
  %7296 = fsub fast float 1.000000e+00, %7293
  %7297 = fsub fast float %7296, %7295
  %7298 = fmul fast float %7289, 5.000000e-01
  %7299 = fmul fast float %7298, %7297
  %7300 = fsub fast float 5.000000e-01, %7299
  br label %7301

; <label>:7301                                    ; preds = %7273, %7149, %7134
  %7302 = phi float [ 1.000000e+00, %7134 ], [ %7215, %7149 ], [ %7300, %7273 ]
  %7303 = fsub fast float %6968, %6803
  %7304 = fmul fast float %7303, %6341
  %7305 = fadd fast float %7304, %6803
  %7306 = fsub fast float %7135, %7305
  %7307 = fmul fast float %7306, %6371
  %7308 = fadd fast float %7307, %7305
  %7309 = fsub fast float %7302, %7308
  %7310 = fmul fast float %7309, %6397
  %7311 = fadd fast float %7310, %7308
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7314 = fcmp fast ogt float %7313, 0.000000e+00
  br i1 %7314, label %7315, label %7355, !dx.controlflow.hints !127

; <label>:7315                                    ; preds = %7301
  %7316 = fcmp fast ugt float %7313, 0.000000e+00
  br i1 %7316, label %7317, label %7352

; <label>:7317                                    ; preds = %7315
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7322 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7327 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7328 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7329 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7334 = fadd fast float %7331, %6256
  %7335 = fadd fast float %7332, %6257
  %7336 = fadd fast float %7333, %6258
  %7337 = fmul fast float %7334, %7319
  %7338 = call float @dx.op.tertiary.f32(i32 46, float %7320, float %7335, float %7337)  ; FMad(a,b,c)
  %7339 = call float @dx.op.tertiary.f32(i32 46, float %7321, float %7336, float %7338)  ; FMad(a,b,c)
  %7340 = fadd fast float %7339, %7322
  %7341 = fmul fast float %7334, %7324
  %7342 = call float @dx.op.tertiary.f32(i32 46, float %7325, float %7335, float %7341)  ; FMad(a,b,c)
  %7343 = call float @dx.op.tertiary.f32(i32 46, float %7326, float %7336, float %7342)  ; FMad(a,b,c)
  %7344 = fadd fast float %7343, %7327
  %7345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7340, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7329
  %7348 = fadd fast float %7347, %7328
  %7349 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  %7350 = fmul fast float %7349, %7313
  %7351 = fsub fast float 1.000000e+00, %7350
  br label %7352

; <label>:7352                                    ; preds = %7317, %7315
  %7353 = phi float [ %7351, %7317 ], [ 1.000000e+00, %7315 ]
  %7354 = fmul fast float %7353, %7311
  br label %7355

; <label>:7355                                    ; preds = %7352, %7301, %6236
  %7356 = phi float [ 1.000000e+00, %6236 ], [ %7354, %7352 ], [ %7311, %7301 ]
  %7357 = call float @dx.op.binary.f32(i32 36, float %7356, float %7356)  ; FMin(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7356, float %7357)  ; FMin(a,b)
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  br i1 %7359, label %7360, label %7525, !dx.controlflow.hints !128

; <label>:7360                                    ; preds = %7355
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7366, 3
  %7371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.CBufRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.CBufRet.f32 %7371, 2
  %7375 = extractvalue %dx.types.CBufRet.f32 %7371, 3
  %7376 = fmul fast float %7362, %6256
  %7377 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %7363, float %7376)  ; FMad(a,b,c)
  %7378 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %7364, float %7377)  ; FMad(a,b,c)
  %7379 = fadd fast float %7378, %7365
  %7380 = fmul fast float %7367, %6256
  %7381 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %7368, float %7380)  ; FMad(a,b,c)
  %7382 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %7369, float %7381)  ; FMad(a,b,c)
  %7383 = fadd fast float %7382, %7370
  %7384 = fmul fast float %7372, %6256
  %7385 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %7373, float %7384)  ; FMad(a,b,c)
  %7386 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %7374, float %7385)  ; FMad(a,b,c)
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7387, 3
  %7391 = fmul fast float %7390, %7379
  %7392 = fmul fast float %7390, %7383
  %7393 = fadd fast float %7391, %7388
  %7394 = fadd fast float %7392, %7389
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7398 = fsub fast float %7393, %7396
  %7399 = fsub fast float %7394, %7397
  %7400 = fcmp fast olt float %7398, 0.000000e+00
  %7401 = fcmp fast olt float %7399, 0.000000e+00
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = select i1 %7400, float %7403, float %7405
  %7408 = select i1 %7401, float %7404, float %7406
  %7409 = fmul fast float %7407, %7398
  %7410 = fmul fast float %7408, %7399
  %7411 = call float @dx.op.unary.f32(i32 6, float %7409)  ; FAbs(value)
  %7412 = call float @dx.op.unary.f32(i32 6, float %7410)  ; FAbs(value)
  %7413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.f32 %7413, 0
  %7415 = call float @dx.op.binary.f32(i32 35, float %7411, float %7412)  ; FMax(a,b)
  %7416 = fsub fast float %7414, %7415
  %7417 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  %7418 = fcmp fast ogt float %7417, 0.000000e+00
  br i1 %7418, label %7419, label %7460, !dx.controlflow.hints !129

; <label>:7419                                    ; preds = %7360
  %7420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7393, float %7394, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7421 = extractvalue %dx.types.ResRet.f32 %7420, 1
  %7422 = fcmp fast ogt float %7421, 0.000000e+00
  br i1 %7422, label %7423, label %7455

; <label>:7423                                    ; preds = %7419
  %7424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7393, float %7394, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.ResRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.ResRet.f32 %7424, 2
  %7428 = extractvalue %dx.types.ResRet.f32 %7424, 3
  %7429 = fsub fast float 1.000000e+00, %7375
  %7430 = fsub fast float %7429, %7386
  %7431 = fmul fast float %7430, 0x400921FB60000000
  %7432 = fadd fast float %7431, 0x3FF921FB60000000
  %7433 = call float @dx.op.unary.f32(i32 13, float %7432)  ; Sin(value)
  %7434 = fadd fast float %7433, -1.000000e+00
  %7435 = fmul fast float %7434, 0x3FD45F3060000000
  %7436 = fmul fast float %7430, 0x401921FB60000000
  %7437 = fadd fast float %7436, 0x400921FB60000000
  %7438 = call float @dx.op.unary.f32(i32 13, float %7437)  ; Sin(value)
  %7439 = fadd fast float %7438, 0x3E7777A5C0000000
  %7440 = fmul fast float %7439, 0x3FC45F3060000000
  %7441 = fmul fast float %7430, 0x4022D97C80000000
  %7442 = fadd fast float %7441, 0x4012D97C80000000
  %7443 = call float @dx.op.unary.f32(i32 13, float %7442)  ; Sin(value)
  %7444 = fadd fast float %7443, 1.000000e+00
  %7445 = fmul fast float %7444, 0x3FBB2995E0000000
  %7446 = fmul fast float %7430, 0x402921FB60000000
  %7447 = fadd fast float %7446, 0x401921FB60000000
  %7448 = call float @dx.op.unary.f32(i32 13, float %7447)  ; Sin(value)
  %7449 = fadd fast float %7448, 0xBE8777A5C0000000
  %7450 = fmul fast float %7449, 0x3FB45F3060000000
  %7451 = call float @dx.op.dot4.f32(i32 56, float %7425, float %7426, float %7427, float %7428, float %7435, float %7440, float %7445, float %7450)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7452 = fmul fast float %7451, 0xBFF7154760000000
  %7453 = call float @dx.op.unary.f32(i32 21, float %7452)  ; Exp(value)
  %7454 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  br label %7455

; <label>:7455                                    ; preds = %7423, %7419
  %7456 = phi float [ %7454, %7423 ], [ 1.000000e+00, %7419 ]
  %7457 = fadd fast float %7456, -1.000000e+00
  %7458 = fmul fast float %7457, %7417
  %7459 = fadd fast float %7458, 1.000000e+00
  br label %7460

; <label>:7460                                    ; preds = %7455, %7360
  %7461 = phi float [ %7459, %7455 ], [ 1.000000e+00, %7360 ]
  %7462 = fmul fast float %7461, %7356
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.CBufRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7467 = fadd fast float %7464, %167
  %7468 = fadd fast float %7465, %168
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7475 = fsub fast float -0.000000e+00, %7467
  %7476 = fsub fast float -0.000000e+00, %7468
  %7477 = fsub fast float %5480, %7466
  %7478 = fadd fast float %7477, %7470
  %7479 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7475, float %7476, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7480 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7472, float %7473, float %7474)  ; Dot3(ax,ay,az,bx,by,bz)
  %7481 = fdiv fast float 1.000000e+00, %7480
  %7482 = fmul fast float %7481, %7479
  %7483 = fmul fast float %7472, %7482
  %7484 = fmul fast float %7473, %7482
  %7485 = fadd fast float %7483, %7467
  %7486 = fadd fast float %7484, %7468
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7490 = fsub fast float %7485, %7488
  %7491 = fsub fast float %7486, %7489
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 2
  %7494 = extractvalue %dx.types.CBufRet.f32 %7492, 3
  %7495 = fmul fast float %7490, %7493
  %7496 = fmul fast float %7491, %7494
  %7497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.i32 %7497, 3
  %7499 = icmp eq i32 %7498, 0
  br i1 %7499, label %7505, label %7500

; <label>:7500                                    ; preds = %7460
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7495, float %7496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  br label %7510

; <label>:7505                                    ; preds = %7460
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7495, float %7496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.ResRet.f32 %7506, 1
  %7509 = extractvalue %dx.types.ResRet.f32 %7506, 2
  br label %7510

; <label>:7510                                    ; preds = %7505, %7500
  %7511 = phi float [ %7502, %7500 ], [ %7507, %7505 ]
  %7512 = phi float [ %7503, %7500 ], [ %7508, %7505 ]
  %7513 = phi float [ %7504, %7500 ], [ %7509, %7505 ]
  %7514 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7515 = fmul fast float %7514, %7511
  %7516 = extractvalue %dx.types.CBufRet.f32 %7469, 0
  %7517 = fsub fast float %7482, %7516
  %7518 = fsub fast float %7517, %7515
  %7519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7518)  ; FMax(a,b)
  %7520 = fmul fast float %7519, %7512
  %7521 = call float @dx.op.binary.f32(i32 36, float %7513, float %7520)  ; FMin(a,b)
  %7522 = fmul fast float %7521, 0xBFF7154760000000
  %7523 = call float @dx.op.unary.f32(i32 21, float %7522)  ; Exp(value)
  %7524 = fmul fast float %7462, %7523
  br label %7525

; <label>:7525                                    ; preds = %7510, %7355
  %7526 = phi float [ %7524, %7510 ], [ %7356, %7355 ]
  %7527 = call float @dx.op.binary.f32(i32 36, float %7526, float %7526)  ; FMin(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7526, float %7527)  ; FMin(a,b)
  %7529 = fcmp fast ogt float %7528, 0.000000e+00
  br i1 %7529, label %7530, label %7790, !dx.controlflow.hints !130

; <label>:7530                                    ; preds = %7525
  %7531 = fmul fast float %7526, %6248
  %7532 = fmul fast float %7526, %6249
  %7533 = fmul fast float %7526, %6250
  %7534 = fsub fast float %169, %5286
  %7535 = fcmp fast ogt float %7534, 0.000000e+00
  %7536 = fmul fast float %6237, 5.120000e+02
  %7537 = fmul fast float %6238, 5.120000e+02
  %7538 = fmul fast float %6239, 5.120000e+02
  %7539 = fadd fast float %7538, %169
  %7540 = fsub fast float %5286, %7539
  %7541 = fmul fast float %7540, 2.000000e+00
  %7542 = fadd fast float %7541, %7539
  %7543 = select i1 %7535, float %7542, float %7539
  %7544 = fsub fast float %7543, %169
  %7545 = call float @dx.op.dot3.f32(i32 55, float %7536, float %7537, float %7544, float %7536, float %7537, float %7544)  ; Dot3(ax,ay,az,bx,by,bz)
  %7546 = call float @dx.op.unary.f32(i32 25, float %7545)  ; Rsqrt(value)
  %7547 = fmul fast float %7546, %7536
  %7548 = fmul fast float %7546, %7537
  %7549 = fmul fast float %7546, %7544
  %7550 = fsub fast float %5286, %169
  %7551 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7550)  ; Dot3(ax,ay,az,bx,by,bz)
  %7552 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7547, float %7548, float %7549)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = fdiv fast float 1.000000e+00, %7552
  %7554 = fmul fast float %7553, %7551
  %7555 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7534, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7556 = fcmp fast ogt float %7555, 0.000000e+00
  %7557 = fcmp fast olt float %7555, 0.000000e+00
  %7558 = zext i1 %7556 to i32
  %7559 = zext i1 %7557 to i32
  %7560 = sub nsw i32 %7558, %7559
  %7561 = sitofp i32 %7560 to float
  %7562 = fsub fast float %7543, %5286
  %7563 = call float @dx.op.dot3.f32(i32 55, float %7536, float %7537, float %7562, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = fcmp fast olt float %7563, 0.000000e+00
  %7566 = zext i1 %7564 to i32
  %7567 = zext i1 %7565 to i32
  %7568 = sub nsw i32 %7566, %7567
  %7569 = sitofp i32 %7568 to float
  %7570 = fcmp fast une float %7561, %7569
  br i1 %7570, label %7571, label %7581

; <label>:7571                                    ; preds = %7530
  %7572 = fmul fast float %7554, %7549
  %7573 = fmul fast float %7554, %7548
  %7574 = fmul fast float %7554, %7547
  %7575 = fmul fast float %7574, %7574
  %7576 = fmul fast float %7573, %7573
  %7577 = fadd fast float %7575, %7576
  %7578 = fmul fast float %7572, %7572
  %7579 = fadd fast float %7577, %7578
  %7580 = call float @dx.op.unary.f32(i32 24, float %7579)  ; Sqrt(value)
  br label %7591

; <label>:7581                                    ; preds = %7530
  %7582 = icmp slt i32 %7560, 0
  br i1 %7582, label %7583, label %7591

; <label>:7583                                    ; preds = %7581
  %7584 = fsub fast float %169, %7543
  %7585 = fmul fast float %7536, %7536
  %7586 = fmul fast float %7537, %7537
  %7587 = fadd fast float %7585, %7586
  %7588 = fmul fast float %7584, %7584
  %7589 = fadd fast float %7587, %7588
  %7590 = call float @dx.op.unary.f32(i32 24, float %7589)  ; Sqrt(value)
  br label %7591

; <label>:7591                                    ; preds = %7583, %7581, %7571
  %7592 = phi float [ %7580, %7571 ], [ %7590, %7583 ], [ 0.000000e+00, %7581 ]
  %7593 = fsub fast float -0.000000e+00, %7592
  %7594 = select i1 %7535, float -0.000000e+00, float %7593
  %7595 = fmul fast float %5287, 0x3FF7154760000000
  %7596 = fmul fast float %7595, %7594
  %7597 = fmul fast float %5288, 0x3FF7154760000000
  %7598 = fmul fast float %7597, %7594
  %7599 = fmul fast float %5289, 0x3FF7154760000000
  %7600 = fmul fast float %7599, %7594
  %7601 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7602 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7603 = call float @dx.op.unary.f32(i32 21, float %7600)  ; Exp(value)
  %7604 = call float @dx.op.unary.f32(i32 7, float %7601)  ; Saturate(value)
  %7605 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7606 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7607 = fmul fast float %7531, %7604
  %7608 = fmul fast float %7532, %7605
  %7609 = fmul fast float %7533, %7606
  %7610 = fsub fast float %6237, %187
  %7611 = fsub fast float %6238, %188
  %7612 = fsub fast float %6239, %189
  %7613 = call float @dx.op.dot3.f32(i32 55, float %7610, float %7611, float %7612, float %7610, float %7611, float %7612)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = call float @dx.op.unary.f32(i32 25, float %7613)  ; Rsqrt(value)
  %7615 = fmul fast float %7614, %7610
  %7616 = fmul fast float %7614, %7611
  %7617 = fmul fast float %7614, %7612
  %7618 = call float @dx.op.dot3.f32(i32 55, float %6237, float %6238, float %6239, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %7619 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %7615, float %7616, float %7617)  ; Dot3(ax,ay,az,bx,by,bz)
  %7620 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7621 = bitcast i32 %5507 to float
  %7622 = fmul fast float %7620, %7620
  %7623 = fmul fast float %7622, %7621
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = fmul fast float %7624, %7620
  %7626 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %7615, float %7616, float %7617)  ; Dot3(ax,ay,az,bx,by,bz)
  %7627 = fmul fast float %7626, %7626
  %7628 = call float @dx.op.unary.f32(i32 6, float %7618)  ; FAbs(value)
  %7629 = fsub fast float 1.000000e+00, %5501
  %7630 = fmul fast float %5483, %5483
  %7631 = fmul fast float %7630, %7629
  %7632 = fadd fast float %7631, %5501
  %7633 = bitcast float %7632 to i32
  %7634 = ashr i32 %7633, 1
  %7635 = add nsw i32 %7634, 532487669
  %7636 = bitcast i32 %7635 to float
  %7637 = fadd fast float %7636, %5483
  %7638 = fmul fast float %5501, %7627
  %7639 = fsub fast float 1.000000e+00, %7627
  %7640 = fadd fast float %7639, %7638
  %7641 = fmul fast float %7628, %7628
  %7642 = fmul fast float %7641, %7629
  %7643 = fadd fast float %7642, %5501
  %7644 = bitcast float %7643 to i32
  %7645 = ashr i32 %7644, 1
  %7646 = add nsw i32 %7645, 532487669
  %7647 = bitcast i32 %7646 to float
  %7648 = fadd fast float %7647, %7628
  %7649 = fmul fast float %7640, %7640
  %7650 = fmul fast float %7649, %7637
  %7651 = fmul fast float %7650, %7648
  %7652 = fdiv fast float 0x3FF0A00000000000, %7651
  %7653 = fmul fast float %7652, %5501
  %7654 = fmul fast float %5607, 0x3FF9999980000000
  %7655 = fsub fast float 5.000000e+00, %7654
  %7656 = call float @dx.op.unary.f32(i32 6, float %7619)  ; FAbs(value)
  %7657 = fsub fast float 1.000000e+00, %7656
  %7658 = fmul fast float %5607, 0x41D9660740000000
  %7659 = fadd fast float %7658, 0xC1EFBF8940000000
  %7660 = bitcast float %7657 to i32
  %7661 = sitofp i32 %7660 to float
  %7662 = fmul fast float %7661, %7655
  %7663 = fadd fast float %7659, %7662
  %7664 = fptosi float %7663 to i32
  %7665 = bitcast i32 %7664 to float
  %7666 = fsub fast float 1.000000e+00, %5469
  %7667 = fsub fast float 1.000000e+00, %5470
  %7668 = fsub fast float 1.000000e+00, %5481
  %7669 = fmul fast float %7665, %7666
  %7670 = fmul fast float %7665, %7667
  %7671 = fmul fast float %7665, %7668
  %7672 = fadd fast float %7669, %5469
  %7673 = fadd fast float %7670, %5470
  %7674 = fadd fast float %7671, %5481
  br i1 %5630, label %7675, label %7698

; <label>:7675                                    ; preds = %7591
  %7676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4860, float %7656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7677 = extractvalue %dx.types.ResRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.ResRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.ResRet.f32 %7676, 2
  %7680 = fadd fast float %7677, -5.000000e-01
  %7681 = fadd fast float %7678, -5.000000e-01
  %7682 = fadd fast float %7679, -5.000000e-01
  %7683 = fmul fast float %5469, 4.000000e+00
  %7684 = fmul fast float %7683, %7666
  %7685 = fmul fast float %7684, %7680
  %7686 = fmul fast float %5470, 4.000000e+00
  %7687 = fmul fast float %7686, %7667
  %7688 = fmul fast float %7687, %7681
  %7689 = fmul fast float %5481, 4.000000e+00
  %7690 = fmul fast float %7689, %7668
  %7691 = fmul fast float %7690, %7682
  %7692 = fadd fast float %7685, %7672
  %7693 = fadd fast float %7688, %7673
  %7694 = fadd fast float %7691, %7674
  %7695 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7697 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  br label %7698

; <label>:7698                                    ; preds = %7675, %7591
  %7699 = phi float [ %7695, %7675 ], [ %7672, %7591 ]
  %7700 = phi float [ %7696, %7675 ], [ %7673, %7591 ]
  %7701 = phi float [ %7697, %7675 ], [ %7674, %7591 ]
  %7702 = fmul fast float %7618, 9.843750e-01
  %7703 = fadd fast float %7702, 7.812500e-03
  %7704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7703, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.ResRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.ResRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.ResRet.f32 %7704, 3
  %7709 = fsub fast float %7707, %7705
  %7710 = fsub fast float %7708, %7706
  %7711 = fmul fast float %7709, %5617
  %7712 = fmul fast float %7710, %5617
  %7713 = fadd fast float %7711, %7705
  %7714 = fadd fast float %7712, %7706
  %7715 = fmul fast float %7713, %5469
  %7716 = fmul fast float %7713, %5470
  %7717 = fmul fast float %7713, %5481
  %7718 = fadd fast float %7715, %7714
  %7719 = fadd fast float %7716, %7714
  %7720 = fadd fast float %7717, %7714
  br i1 %5630, label %7721, label %7744

; <label>:7721                                    ; preds = %7698
  %7722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4860, float %7618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 0
  %7724 = extractvalue %dx.types.ResRet.f32 %7722, 1
  %7725 = extractvalue %dx.types.ResRet.f32 %7722, 2
  %7726 = fadd fast float %7723, -5.000000e-01
  %7727 = fadd fast float %7724, -5.000000e-01
  %7728 = fadd fast float %7725, -5.000000e-01
  %7729 = fmul fast float %5469, 4.000000e+00
  %7730 = fmul fast float %7729, %7666
  %7731 = fmul fast float %7730, %7726
  %7732 = fmul fast float %5470, 4.000000e+00
  %7733 = fmul fast float %7732, %7667
  %7734 = fmul fast float %7733, %7727
  %7735 = fmul fast float %5481, 4.000000e+00
  %7736 = fmul fast float %7735, %7668
  %7737 = fmul fast float %7736, %7728
  %7738 = fadd fast float %7731, %7718
  %7739 = fadd fast float %7734, %7719
  %7740 = fadd fast float %7737, %7720
  %7741 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7742 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7743 = call float @dx.op.unary.f32(i32 7, float %7740)  ; Saturate(value)
  br label %7744

; <label>:7744                                    ; preds = %7721, %7698
  %7745 = phi float [ %7741, %7721 ], [ %7718, %7698 ]
  %7746 = phi float [ %7742, %7721 ], [ %7719, %7698 ]
  %7747 = phi float [ %7743, %7721 ], [ %7720, %7698 ]
  %7748 = call float @dx.op.binary.f32(i32 35, float %7746, float %7747)  ; FMax(a,b)
  %7749 = call float @dx.op.binary.f32(i32 35, float %7745, float %7748)  ; FMax(a,b)
  %7750 = fsub fast float 1.000000e+00, %7749
  %7751 = fmul fast float %7699, %7653
  %7752 = fmul fast float %7700, %7653
  %7753 = fmul fast float %7701, %7653
  %7754 = fsub fast float 1.000000e+00, %7619
  %7755 = bitcast float %7754 to i32
  %7756 = sitofp i32 %7755 to float
  %7757 = fmul fast float %7756, 5.000000e+00
  %7758 = fadd fast float %7757, 0xC1EFBF8940000000
  %7759 = fptosi float %7758 to i32
  %7760 = bitcast i32 %7759 to float
  %7761 = fmul fast float %7760, %4861
  %7762 = fmul fast float %7750, %7761
  %7763 = fmul fast float %7762, %6172
  %7764 = fmul fast float %7762, %6173
  %7765 = fmul fast float %7762, %6174
  %7766 = fadd fast float %7763, %7751
  %7767 = fadd fast float %7764, %7752
  %7768 = fadd fast float %7765, %7753
  %7769 = fmul fast float %7625, %7607
  %7770 = fmul fast float %7769, %7750
  %7771 = fmul fast float %7625, %7608
  %7772 = fmul fast float %7771, %7750
  %7773 = fmul fast float %7625, %7609
  %7774 = fmul fast float %7773, %7750
  %7775 = fmul fast float %7769, %7766
  %7776 = fmul fast float %7771, %7767
  %7777 = fmul fast float %7773, %7768
  %7778 = fadd fast float %7770, %6156
  %7779 = fmul fast float %7778, %4886
  %7780 = fadd fast float %7772, %6157
  %7781 = fmul fast float %7780, %4886
  %7782 = fadd fast float %7774, %6158
  %7783 = fmul fast float %7782, %4886
  %7784 = fadd fast float %7775, %6225
  %7785 = fmul fast float %7784, %4886
  %7786 = fadd fast float %7776, %6228
  %7787 = fmul fast float %7786, %4886
  %7788 = fadd fast float %7777, %6231
  %7789 = fmul fast float %7788, %4886
  br label %7790

; <label>:7790                                    ; preds = %7744, %7525, %6152
  %7791 = phi float [ %6226, %6152 ], [ %6226, %7525 ], [ %7785, %7744 ]
  %7792 = phi float [ %6229, %6152 ], [ %6229, %7525 ], [ %7787, %7744 ]
  %7793 = phi float [ %6232, %6152 ], [ %6232, %7525 ], [ %7789, %7744 ]
  %7794 = phi float [ %6221, %6152 ], [ %6221, %7525 ], [ %7779, %7744 ]
  %7795 = phi float [ %6222, %6152 ], [ %6222, %7525 ], [ %7781, %7744 ]
  %7796 = phi float [ %6223, %6152 ], [ %6223, %7525 ], [ %7783, %7744 ]
  %7797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.i32 %7797, 0
  %7799 = icmp eq i32 %7798, 0
  br i1 %7799, label %8475, label %7800

; <label>:7800                                    ; preds = %7790
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 2
  %7803 = extractvalue %dx.types.CBufRet.f32 %7801, 3
  %7804 = fmul fast float %7802, %104
  %7805 = fmul fast float %7803, %105
  %7806 = fptoui float %7804 to i32
  %7807 = fptoui float %7805 to i32
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7812 = fadd fast float %92, -4.000000e+00
  %7813 = call float @dx.op.binary.f32(i32 35, float %7812, float 0.000000e+00)  ; FMax(a,b)
  %7814 = fadd fast float %7813, %7809
  %7815 = fmul fast float %7814, %7810
  %7816 = call float @dx.op.unary.f32(i32 23, float %7815)  ; Log(value)
  %7817 = fmul fast float %7816, %7811
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7820 = fmul fast float %7817, %7819
  %7821 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  %7822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.i32 %7822, 1
  %7824 = add i32 %7823, -1
  %7825 = uitofp i32 %7823 to float
  %7826 = fmul fast float %7825, %7821
  %7827 = fptoui float %7826 to i32
  %7828 = call i32 @dx.op.binary.i32(i32 40, i32 %7827, i32 %7824)  ; UMin(a,b)
  %7829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7830 = extractvalue %dx.types.CBufRet.i32 %7829, 2
  %7831 = extractvalue %dx.types.CBufRet.i32 %7829, 3
  %7832 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7807, i32 %7830, i32 %7806)  ; UMad(a,b,c)
  %7833 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7828, i32 %7831, i32 %7832)  ; UMad(a,b,c)
  %7834 = add nsw i32 %7798, -1
  %7835 = call i32 @dx.op.binary.i32(i32 37, i32 %7834, i32 0)  ; IMax(a,b)
  %7836 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7837 = fptoui float %7836 to i32
  %7838 = lshr i32 %7837, 5
  %7839 = call i32 @dx.op.binary.i32(i32 40, i32 %7838, i32 8191)  ; UMin(a,b)
  %7840 = shl i32 %7839, 2
  %7841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7840, i32 undef)  ; BufferLoad(srv,index,wot)
  %7842 = extractvalue %dx.types.ResRet.i32 %7841, 0
  %7843 = lshr i32 %7842, 16
  %7844 = and i32 %7842, 65535
  %7845 = lshr i32 %7842, 21
  %7846 = lshr i32 %7844, 5
  %7847 = call i32 @dx.op.binary.i32(i32 40, i32 %7846, i32 %7835)  ; UMin(a,b)
  %7848 = icmp ugt i32 %7845, %7847
  br i1 %7848, label %8475, label %7849

; <label>:7849                                    ; preds = %7800
  br label %7850

; <label>:7850                                    ; preds = %8465, %7849
  %7851 = phi i32 [ %8472, %8465 ], [ %7845, %7849 ]
  %7852 = phi float [ %8466, %8465 ], [ %7791, %7849 ]
  %7853 = phi float [ %8467, %8465 ], [ %7792, %7849 ]
  %7854 = phi float [ %8468, %8465 ], [ %7793, %7849 ]
  %7855 = phi float [ %8469, %8465 ], [ %7794, %7849 ]
  %7856 = phi float [ %8470, %8465 ], [ %7795, %7849 ]
  %7857 = phi float [ %8471, %8465 ], [ %7796, %7849 ]
  %7858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.i32 %7858, 0
  %7860 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7833, i32 %7859, i32 %7851)  ; UMad(a,b,c)
  %7861 = shl i32 %7860, 2
  %7862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7861, i32 undef)  ; BufferLoad(srv,index,wot)
  %7863 = extractvalue %dx.types.ResRet.i32 %7862, 0
  %7864 = shl i32 %7851, 5
  %7865 = sub nsw i32 %7843, %7864
  %7866 = call i32 @dx.op.binary.i32(i32 37, i32 %7865, i32 0)  ; IMax(a,b)
  %7867 = call i32 @dx.op.binary.i32(i32 38, i32 %7866, i32 31)  ; IMin(a,b)
  %7868 = sub nsw i32 1, %7843
  %7869 = add nsw i32 %7868, %7844
  %7870 = call i32 @dx.op.binary.i32(i32 37, i32 %7869, i32 0)  ; IMax(a,b)
  %7871 = call i32 @dx.op.binary.i32(i32 38, i32 %7870, i32 32)  ; IMin(a,b)
  %7872 = and i32 %7871, 31
  %7873 = shl i32 -1, %7872
  %7874 = xor i32 %7873, -1
  %7875 = and i32 %7867, 31
  %7876 = shl i32 %7874, %7875
  %7877 = icmp eq i32 %7871, 32
  %7878 = select i1 %7877, i32 -1, i32 %7876
  %7879 = and i32 %7878, %7863
  %7880 = icmp eq i32 %7879, 0
  br i1 %7880, label %8465, label %7881

; <label>:7881                                    ; preds = %7850
  br label %7882

; <label>:7882                                    ; preds = %8016, %7881
  %7883 = phi i32 [ %7894, %8016 ], [ %7879, %7881 ]
  %7884 = phi float [ %8017, %8016 ], [ %7852, %7881 ]
  %7885 = phi float [ %8018, %8016 ], [ %7853, %7881 ]
  %7886 = phi float [ %8019, %8016 ], [ %7854, %7881 ]
  %7887 = phi float [ %8020, %8016 ], [ %7855, %7881 ]
  %7888 = phi float [ %8021, %8016 ], [ %7856, %7881 ]
  %7889 = phi float [ %8022, %8016 ], [ %7857, %7881 ]
  %7890 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7883)  ; FirstbitLo(value)
  %7891 = add i32 %7890, %7864
  %7892 = and i32 %7890, 31
  %7893 = shl i32 1, %7892
  %7894 = xor i32 %7893, %7883
  %7895 = mul i32 %7891, 112
  %7896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7895, i32 undef)  ; BufferLoad(srv,index,wot)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.ResRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.ResRet.f32 %7896, 2
  %7900 = or i32 %7895, 12
  %7901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7900, i32 undef)  ; BufferLoad(srv,index,wot)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = add i32 %7895, 16
  %7904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7903, i32 undef)  ; BufferLoad(srv,index,wot)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.ResRet.f32 %7904, 2
  %7908 = add i32 %7895, 28
  %7909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7908, i32 undef)  ; BufferLoad(srv,index,wot)
  %7910 = extractvalue %dx.types.ResRet.i32 %7909, 0
  %7911 = add i32 %7895, 44
  %7912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7911, i32 undef)  ; BufferLoad(srv,index,wot)
  %7913 = extractvalue %dx.types.ResRet.f32 %7912, 0
  %7914 = add i32 %7895, 48
  %7915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7914, i32 undef)  ; BufferLoad(srv,index,wot)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  %7919 = extractvalue %dx.types.ResRet.f32 %7915, 3
  %7920 = add i32 %7895, 64
  %7921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7920, i32 undef)  ; BufferLoad(srv,index,wot)
  %7922 = extractvalue %dx.types.ResRet.f32 %7921, 0
  %7923 = extractvalue %dx.types.ResRet.f32 %7921, 1
  %7924 = extractvalue %dx.types.ResRet.f32 %7921, 2
  %7925 = extractvalue %dx.types.ResRet.f32 %7921, 3
  %7926 = add i32 %7895, 80
  %7927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7926, i32 undef)  ; BufferLoad(srv,index,wot)
  %7928 = extractvalue %dx.types.ResRet.f32 %7927, 1
  %7929 = extractvalue %dx.types.ResRet.f32 %7927, 2
  %7930 = add i32 %7895, 92
  %7931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7930, i32 undef)  ; BufferLoad(srv,index,wot)
  %7932 = extractvalue %dx.types.ResRet.i32 %7931, 0
  %7933 = call float @dx.op.dot3.f32(i32 55, float %7897, float %7898, float %7899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = select i1 %261, float %7928, float %7897
  %7935 = select i1 %261, float %7933, float %7898
  %7936 = select i1 %261, float %7929, float %7899
  %7937 = and i32 %7932, 65535
  %7938 = uitofp i32 %7937 to float
  %7939 = lshr i32 %7932, 16
  %7940 = uitofp i32 %7939 to float
  %7941 = and i32 %7910, 65535
  %7942 = and i32 %7910, 50331648
  %7943 = icmp eq i32 %7942, 33554432
  %7944 = fsub fast float %7916, %167
  %7945 = fsub fast float %7917, %168
  %7946 = fsub fast float %7918, %169
  %7947 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %7946, float %7944, float %7945, float %7946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = call float @dx.op.unary.f32(i32 24, float %7947)  ; Sqrt(value)
  %7949 = fdiv fast float 1.000000e+00, %7948
  %7950 = fmul fast float %7949, %7944
  %7951 = fmul fast float %7949, %7945
  %7952 = fmul fast float %7949, %7946
  %7953 = fadd fast float %7948, %7902
  %7954 = fdiv fast float 1.000000e+00, %7953
  %7955 = fmul float %7913, %7954
  %7956 = fmul float %7955, %7955
  %7957 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  br i1 %7943, label %7958, label %7979

; <label>:7958                                    ; preds = %7882
  %7959 = fmul fast float %7924, %7905
  %7960 = fmul fast float %7924, %7906
  %7961 = fmul fast float %7924, %7907
  %7962 = fadd fast float %7944, %7959
  %7963 = fadd fast float %7945, %7960
  %7964 = fadd fast float %7946, %7961
  %7965 = call float @dx.op.dot3.f32(i32 55, float %7962, float %7963, float %7964, float %7962, float %7963, float %7964)  ; Dot3(ax,ay,az,bx,by,bz)
  %7966 = call float @dx.op.unary.f32(i32 25, float %7965)  ; Rsqrt(value)
  %7967 = fmul fast float %7966, %7962
  %7968 = fmul fast float %7966, %7963
  %7969 = fmul fast float %7966, %7964
  %7970 = fsub fast float %167, %7916
  %7971 = fsub fast float %168, %7917
  %7972 = fsub fast float %169, %7918
  %7973 = fsub fast float -0.000000e+00, %7970
  %7974 = fsub fast float -0.000000e+00, %7971
  %7975 = fsub fast float -0.000000e+00, %7972
  %7976 = call float @dx.op.dot3.f32(i32 55, float %7973, float %7974, float %7975, float %7905, float %7906, float %7907)  ; Dot3(ax,ay,az,bx,by,bz)
  %7977 = fcmp fast ogt float %7976, 0.000000e+00
  %7978 = uitofp i1 %7977 to float
  br label %7979

; <label>:7979                                    ; preds = %7958, %7882
  %7980 = phi float [ %7978, %7958 ], [ 1.000000e+00, %7882 ]
  %7981 = phi float [ %7967, %7958 ], [ %7950, %7882 ]
  %7982 = phi float [ %7968, %7958 ], [ %7951, %7882 ]
  %7983 = phi float [ %7969, %7958 ], [ %7952, %7882 ]
  %7984 = call float @dx.op.dot3.f32(i32 55, float %7905, float %7906, float %7907, float %7981, float %7982, float %7983)  ; Dot3(ax,ay,az,bx,by,bz)
  %7985 = fmul fast float %7984, %7984
  %7986 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7987 = fsub fast float 1.000000e+00, %7986
  %7988 = fmul fast float %7987, 5.000000e-01
  %7989 = fcmp fast ogt float %7984, 0.000000e+00
  %7990 = fsub fast float 1.000000e+00, %7988
  %7991 = select i1 %7989, float %7988, float %7990
  %7992 = fmul fast float %7991, %7940
  %7993 = fadd fast float %7992, %7938
  %7994 = fmul fast float %7993, 0x3EF0001000000000
  %7995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7994, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7996 = extractvalue %dx.types.ResRet.f32 %7995, 0
  %7997 = fmul fast float %7984, %7922
  %7998 = fadd fast float %7997, %7923
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = select i1 %7943, float 1.000000e+00, float %7999
  %8001 = select i1 %7943, float %7999, float 1.000000e+00
  %8002 = fmul fast float %7948, %7919
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = fmul fast float %8003, %7925
  %8005 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  %8006 = fmul fast float %8005, %8001
  %8007 = fmul fast float %8006, 2.000000e+00
  %8008 = fsub fast float 3.000000e+00, %8007
  %8009 = fmul fast float %7996, %7980
  %8010 = fmul fast float %8006, %8006
  %8011 = fmul fast float %8010, %8009
  %8012 = fmul fast float %8011, %8008
  %8013 = call float @dx.op.binary.f32(i32 36, float %8012, float %8012)  ; FMin(a,b)
  %8014 = call float @dx.op.binary.f32(i32 36, float %8012, float %8013)  ; FMin(a,b)
  %8015 = fcmp fast ogt float %8014, 0.000000e+00
  br i1 %8015, label %8024, label %8016, !dx.controlflow.hints !131

; <label>:8016                                    ; preds = %8421, %8170, %7979
  %8017 = phi float [ %7884, %8170 ], [ %7884, %7979 ], [ %8461, %8421 ]
  %8018 = phi float [ %7885, %8170 ], [ %7885, %7979 ], [ %8462, %8421 ]
  %8019 = phi float [ %7886, %8170 ], [ %7886, %7979 ], [ %8463, %8421 ]
  %8020 = phi float [ %7887, %8170 ], [ %7887, %7979 ], [ %8455, %8421 ]
  %8021 = phi float [ %7888, %8170 ], [ %7888, %7979 ], [ %8456, %8421 ]
  %8022 = phi float [ %7889, %8170 ], [ %7889, %7979 ], [ %8457, %8421 ]
  %8023 = icmp eq i32 %7883, %7893
  br i1 %8023, label %8464, label %7882

; <label>:8024                                    ; preds = %7979
  %8025 = icmp eq i32 %7941, 255
  br i1 %8025, label %8170, label %8026, !dx.controlflow.hints !132

; <label>:8026                                    ; preds = %8024
  %8027 = mul nuw nsw i32 %7941, 176
  %8028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8027, i32 undef)  ; BufferLoad(srv,index,wot)
  %8029 = extractvalue %dx.types.ResRet.f32 %8028, 0
  %8030 = extractvalue %dx.types.ResRet.f32 %8028, 1
  %8031 = extractvalue %dx.types.ResRet.f32 %8028, 2
  %8032 = extractvalue %dx.types.ResRet.f32 %8028, 3
  %8033 = add nuw nsw i32 %8027, 16
  %8034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8033, i32 undef)  ; BufferLoad(srv,index,wot)
  %8035 = extractvalue %dx.types.ResRet.f32 %8034, 0
  %8036 = extractvalue %dx.types.ResRet.f32 %8034, 1
  %8037 = add nuw nsw i32 %8027, 32
  %8038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8037, i32 undef)  ; BufferLoad(srv,index,wot)
  %8039 = extractvalue %dx.types.ResRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.ResRet.f32 %8038, 1
  %8041 = extractvalue %dx.types.ResRet.f32 %8038, 2
  %8042 = add nuw nsw i32 %8027, 48
  %8043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8042, i32 undef)  ; BufferLoad(srv,index,wot)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.ResRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.ResRet.f32 %8043, 2
  %8047 = extractvalue %dx.types.ResRet.f32 %8043, 3
  %8048 = add nuw nsw i32 %8027, 64
  %8049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8048, i32 undef)  ; BufferLoad(srv,index,wot)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = extractvalue %dx.types.ResRet.f32 %8049, 1
  %8052 = extractvalue %dx.types.ResRet.f32 %8049, 2
  %8053 = extractvalue %dx.types.ResRet.f32 %8049, 3
  %8054 = add nuw nsw i32 %8027, 80
  %8055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8054, i32 undef)  ; BufferLoad(srv,index,wot)
  %8056 = extractvalue %dx.types.ResRet.f32 %8055, 0
  %8057 = extractvalue %dx.types.ResRet.f32 %8055, 1
  %8058 = extractvalue %dx.types.ResRet.f32 %8055, 2
  %8059 = extractvalue %dx.types.ResRet.f32 %8055, 3
  %8060 = add nuw nsw i32 %8027, 96
  %8061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8060, i32 undef)  ; BufferLoad(srv,index,wot)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.ResRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.ResRet.f32 %8061, 2
  %8065 = extractvalue %dx.types.ResRet.f32 %8061, 3
  %8066 = bitcast float %8036 to i32
  %8067 = fmul fast float %8041, %111
  %8068 = fmul fast float %8041, %112
  %8069 = fmul fast float %8041, %113
  %8070 = fadd fast float %8067, %167
  %8071 = fadd fast float %8068, %168
  %8072 = fadd fast float %8069, %169
  %8073 = fmul fast float %8070, %8044
  %8074 = call float @dx.op.tertiary.f32(i32 46, float %8071, float %8050, float %8073)  ; FMad(a,b,c)
  %8075 = call float @dx.op.tertiary.f32(i32 46, float %8072, float %8056, float %8074)  ; FMad(a,b,c)
  %8076 = fadd fast float %8075, %8062
  %8077 = fmul fast float %8070, %8045
  %8078 = call float @dx.op.tertiary.f32(i32 46, float %8071, float %8051, float %8077)  ; FMad(a,b,c)
  %8079 = call float @dx.op.tertiary.f32(i32 46, float %8072, float %8057, float %8078)  ; FMad(a,b,c)
  %8080 = fadd fast float %8079, %8063
  %8081 = fmul fast float %8070, %8046
  %8082 = call float @dx.op.tertiary.f32(i32 46, float %8071, float %8052, float %8081)  ; FMad(a,b,c)
  %8083 = call float @dx.op.tertiary.f32(i32 46, float %8072, float %8058, float %8082)  ; FMad(a,b,c)
  %8084 = fadd fast float %8083, %8064
  %8085 = fmul fast float %8070, %8047
  %8086 = call float @dx.op.tertiary.f32(i32 46, float %8071, float %8053, float %8085)  ; FMad(a,b,c)
  %8087 = call float @dx.op.tertiary.f32(i32 46, float %8072, float %8059, float %8086)  ; FMad(a,b,c)
  %8088 = fadd fast float %8087, %8065
  %8089 = fdiv fast float %8076, %8088
  %8090 = fdiv fast float %8080, %8088
  %8091 = fdiv fast float %8084, %8088
  %8092 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8091)  ; FMax(a,b)
  %8093 = fmul fast float %272, 0x401921FB60000000
  %8094 = call float @dx.op.unary.f32(i32 13, float %8093)  ; Sin(value)
  %8095 = call float @dx.op.unary.f32(i32 12, float %8093)  ; Cos(value)
  %8096 = fmul fast float %8095, %8040
  %8097 = call float @dx.op.tertiary.f32(i32 46, float %8094, float %8040, float 0.000000e+00)  ; FMad(a,b,c)
  %8098 = fmul fast float %8040, %8094
  %8099 = fsub fast float -0.000000e+00, %8098
  %8100 = call float @dx.op.tertiary.f32(i32 46, float %8095, float %8040, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8101

; <label>:8101                                    ; preds = %8101, %8026
  %8102 = phi float [ 0.000000e+00, %8026 ], [ %8134, %8101 ]
  %8103 = phi float [ 0.000000e+00, %8026 ], [ %8136, %8101 ]
  %8104 = phi i32 [ 0, %8026 ], [ %8137, %8101 ]
  %8105 = mul i32 %8104, 2
  %8106 = add i32 0, %8105
  %8107 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8106
  %8108 = load float, float* %8107, align 4
  %8109 = mul i32 %8104, 2
  %8110 = add i32 1, %8109
  %8111 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8110
  %8112 = load float, float* %8111, align 4
  %8113 = fmul fast float %8096, %8108
  %8114 = call float @dx.op.tertiary.f32(i32 46, float %8112, float %8099, float %8113)  ; FMad(a,b,c)
  %8115 = fmul fast float %8108, %8097
  %8116 = call float @dx.op.tertiary.f32(i32 46, float %8112, float %8100, float %8115)  ; FMad(a,b,c)
  %8117 = fadd fast float %8114, %8089
  %8118 = fadd fast float %8116, %8090
  %8119 = fmul fast float %8117, %8035
  %8120 = fmul fast float %8118, %8035
  %8121 = call float @dx.op.binary.f32(i32 35, float %8119, float %8031)  ; FMax(a,b)
  %8122 = call float @dx.op.binary.f32(i32 35, float %8120, float %8031)  ; FMax(a,b)
  %8123 = call float @dx.op.binary.f32(i32 36, float %8121, float %8032)  ; FMin(a,b)
  %8124 = call float @dx.op.binary.f32(i32 36, float %8122, float %8032)  ; FMin(a,b)
  %8125 = fadd fast float %8123, %8029
  %8126 = fadd fast float %8124, %8030
  %8127 = uitofp i32 %8066 to float
  %8128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8125, float %8126, float %8127, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8129 = extractvalue %dx.types.ResRet.f32 %8128, 0
  %8130 = fsub fast float %8129, %8092
  %8131 = fsub fast float %8130, %8039
  %8132 = fcmp fast ogt float %8131, 0.000000e+00
  %8133 = select i1 %8132, float 1.000000e+00, float 0.000000e+00
  %8134 = fadd fast float %8133, %8102
  %8135 = select i1 %8132, float %8131, float 0.000000e+00
  %8136 = fadd fast float %8135, %8103
  %8137 = add nuw nsw i32 %8104, 1
  %8138 = icmp eq i32 %8137, 8
  br i1 %8138, label %8139, label %8101

; <label>:8139                                    ; preds = %8101
  %8140 = fdiv fast float 1.000000e+00, %8134
  %8141 = fmul fast float %8140, %8136
  %8142 = fdiv fast float 1.000000e+00, %8092
  %8143 = fmul fast float %8141, %8142
  %8144 = call float @dx.op.unary.f32(i32 7, float %8143)  ; Saturate(value)
  %8145 = call float @dx.op.binary.f32(i32 35, float %8144, float 0.000000e+00)  ; FMax(a,b)
  %8146 = fmul fast float %8134, 1.250000e-01
  %8147 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8148 = fmul fast float %8147, 2.000000e+00
  %8149 = fadd fast float %8148, -1.000000e+00
  %8150 = fcmp fast ogt float %8149, 0.000000e+00
  %8151 = fcmp fast olt float %8149, 0.000000e+00
  %8152 = zext i1 %8150 to i32
  %8153 = zext i1 %8151 to i32
  %8154 = sub nsw i32 %8152, %8153
  %8155 = sitofp i32 %8154 to float
  %8156 = fmul fast float %8155, %8149
  %8157 = fsub fast float 1.000000e+00, %8156
  %8158 = fmul fast float %8157, %8157
  %8159 = fmul fast float %8158, %8157
  %8160 = fsub fast float %8157, %8159
  %8161 = fmul fast float %8160, %8145
  %8162 = fsub fast float 1.000000e+00, %8159
  %8163 = fsub fast float %8162, %8161
  %8164 = fmul fast float %8155, 5.000000e-01
  %8165 = fmul fast float %8164, %8163
  %8166 = fsub fast float -5.000000e-01, %8165
  %8167 = fmul fast float %8166, %8000
  %8168 = fadd fast float %8167, 1.000000e+00
  %8169 = fmul fast float %8168, %8012
  br label %8170

; <label>:8170                                    ; preds = %8139, %8024
  %8171 = phi float [ %8169, %8139 ], [ %8012, %8024 ]
  %8172 = call float @dx.op.binary.f32(i32 36, float %8171, float %8171)  ; FMin(a,b)
  %8173 = call float @dx.op.binary.f32(i32 36, float %8171, float %8172)  ; FMin(a,b)
  %8174 = fcmp fast ogt float %8173, 0.000000e+00
  br i1 %8174, label %8175, label %8016, !dx.controlflow.hints !133

; <label>:8175                                    ; preds = %8170
  %8176 = fmul fast float %8171, %7934
  %8177 = fmul fast float %8171, %7935
  %8178 = fmul fast float %8171, %7936
  %8179 = fsub fast float %7918, %5286
  %8180 = fcmp fast ogt float %8179, 0.000000e+00
  %8181 = fsub fast float %169, %5286
  %8182 = fcmp fast ogt float %8181, 0.000000e+00
  %8183 = xor i1 %8182, %8180
  %8184 = fsub fast float %5286, %7918
  %8185 = fmul fast float %8184, 2.000000e+00
  %8186 = fadd fast float %8185, %7918
  %8187 = select i1 %8183, float %7918, float %8186
  %8188 = fsub fast float %8187, %169
  %8189 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %8188, float %7944, float %7945, float %8188)  ; Dot3(ax,ay,az,bx,by,bz)
  %8190 = call float @dx.op.unary.f32(i32 25, float %8189)  ; Rsqrt(value)
  %8191 = fmul fast float %8190, %7944
  %8192 = fmul fast float %8190, %7945
  %8193 = fmul fast float %8190, %8188
  %8194 = fsub fast float %5286, %169
  %8195 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8194)  ; Dot3(ax,ay,az,bx,by,bz)
  %8196 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8191, float %8192, float %8193)  ; Dot3(ax,ay,az,bx,by,bz)
  %8197 = fdiv fast float 1.000000e+00, %8196
  %8198 = fmul fast float %8197, %8195
  %8199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8200 = fcmp fast ogt float %8199, 0.000000e+00
  %8201 = fcmp fast olt float %8199, 0.000000e+00
  %8202 = zext i1 %8200 to i32
  %8203 = zext i1 %8201 to i32
  %8204 = sub nsw i32 %8202, %8203
  %8205 = sitofp i32 %8204 to float
  %8206 = fsub fast float %8187, %5286
  %8207 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %8206, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8208 = fcmp fast ogt float %8207, 0.000000e+00
  %8209 = fcmp fast olt float %8207, 0.000000e+00
  %8210 = zext i1 %8208 to i32
  %8211 = zext i1 %8209 to i32
  %8212 = sub nsw i32 %8210, %8211
  %8213 = sitofp i32 %8212 to float
  %8214 = fcmp fast une float %8205, %8213
  br i1 %8214, label %8215, label %8225

; <label>:8215                                    ; preds = %8175
  %8216 = fmul fast float %8198, %8193
  %8217 = fmul fast float %8198, %8192
  %8218 = fmul fast float %8198, %8191
  %8219 = fmul fast float %8218, %8218
  %8220 = fmul fast float %8217, %8217
  %8221 = fadd fast float %8219, %8220
  %8222 = fmul fast float %8216, %8216
  %8223 = fadd fast float %8221, %8222
  %8224 = call float @dx.op.unary.f32(i32 24, float %8223)  ; Sqrt(value)
  br label %8237

; <label>:8225                                    ; preds = %8175
  %8226 = icmp slt i32 %8204, 0
  br i1 %8226, label %8227, label %8237

; <label>:8227                                    ; preds = %8225
  %8228 = fsub fast float %167, %7916
  %8229 = fsub fast float %168, %7917
  %8230 = fsub fast float %169, %8187
  %8231 = fmul fast float %8228, %8228
  %8232 = fmul fast float %8229, %8229
  %8233 = fadd fast float %8231, %8232
  %8234 = fmul fast float %8230, %8230
  %8235 = fadd fast float %8233, %8234
  %8236 = call float @dx.op.unary.f32(i32 24, float %8235)  ; Sqrt(value)
  br label %8237

; <label>:8237                                    ; preds = %8227, %8225, %8215
  %8238 = phi float [ %8224, %8215 ], [ %8236, %8227 ], [ 0.000000e+00, %8225 ]
  %8239 = and i1 %8182, %8180
  %8240 = fsub fast float -0.000000e+00, %8238
  %8241 = select i1 %8239, float -0.000000e+00, float %8240
  %8242 = fmul fast float %5287, 0x3FF7154760000000
  %8243 = fmul fast float %8242, %8241
  %8244 = fmul fast float %5288, 0x3FF7154760000000
  %8245 = fmul fast float %8244, %8241
  %8246 = fmul fast float %5289, 0x3FF7154760000000
  %8247 = fmul fast float %8246, %8241
  %8248 = call float @dx.op.unary.f32(i32 21, float %8243)  ; Exp(value)
  %8249 = call float @dx.op.unary.f32(i32 21, float %8245)  ; Exp(value)
  %8250 = call float @dx.op.unary.f32(i32 21, float %8247)  ; Exp(value)
  %8251 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8252 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  %8253 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  %8254 = fmul fast float %8176, %8251
  %8255 = fmul fast float %8177, %8252
  %8256 = fmul fast float %8178, %8253
  %8257 = fsub fast float %7950, %187
  %8258 = fsub fast float %7951, %188
  %8259 = fsub fast float %7952, %189
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8257, float %8258, float %8259, float %8257, float %8258, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.unary.f32(i32 25, float %8260)  ; Rsqrt(value)
  %8262 = fmul fast float %8261, %8257
  %8263 = fmul fast float %8261, %8258
  %8264 = fmul fast float %8261, %8259
  %8265 = call float @dx.op.dot3.f32(i32 55, float %7950, float %7951, float %7952, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %8266 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %8262, float %8263, float %8264)  ; Dot3(ax,ay,az,bx,by,bz)
  %8267 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8268 = fmul fast float %8267, %7957
  %8269 = bitcast i32 %5507 to float
  %8270 = fmul fast float %8267, %8267
  %8271 = fmul fast float %8270, %8269
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = fmul fast float %8268, %8272
  %8274 = bitcast float %7947 to i32
  %8275 = ashr i32 %8274, 1
  %8276 = sub nsw i32 1597463007, %8275
  %8277 = bitcast i32 %8276 to float
  %8278 = fmul fast float %8277, %7944
  %8279 = fmul fast float %8277, %7945
  %8280 = fmul fast float %8277, %7946
  %8281 = fsub fast float %8278, %187
  %8282 = fsub fast float %8279, %188
  %8283 = fsub fast float %8280, %189
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = call float @dx.op.unary.f32(i32 25, float %8284)  ; Rsqrt(value)
  %8286 = fmul fast float %8281, %8285
  %8287 = fmul fast float %8282, %8285
  %8288 = fmul fast float %8283, %8285
  %8289 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %8286, float %8287, float %8288)  ; Dot3(ax,ay,az,bx,by,bz)
  %8290 = fmul fast float %8289, %8289
  %8291 = call float @dx.op.unary.f32(i32 6, float %8265)  ; FAbs(value)
  %8292 = fsub fast float 1.000000e+00, %5501
  %8293 = fmul fast float %5483, %5483
  %8294 = fmul fast float %8293, %8292
  %8295 = fadd fast float %8294, %5501
  %8296 = bitcast float %8295 to i32
  %8297 = ashr i32 %8296, 1
  %8298 = add nsw i32 %8297, 532487669
  %8299 = bitcast i32 %8298 to float
  %8300 = fadd fast float %8299, %5483
  %8301 = fmul fast float %5501, %8290
  %8302 = fsub fast float 1.000000e+00, %8290
  %8303 = fadd fast float %8302, %8301
  %8304 = fmul fast float %8291, %8291
  %8305 = fmul fast float %8304, %8292
  %8306 = fadd fast float %8305, %5501
  %8307 = bitcast float %8306 to i32
  %8308 = ashr i32 %8307, 1
  %8309 = add nsw i32 %8308, 532487669
  %8310 = bitcast i32 %8309 to float
  %8311 = fadd fast float %8310, %8291
  %8312 = fmul fast float %8303, %8303
  %8313 = fmul fast float %8312, %8300
  %8314 = fmul fast float %8313, %8311
  %8315 = fdiv fast float 1.000000e+00, %8314
  %8316 = bitcast float %5501 to i32
  %8317 = sitofp i32 %8316 to float
  %8318 = fmul fast float %8317, 0x3FE7F73180000000
  %8319 = fadd fast float %8318, 0x41AFE27C40000000
  %8320 = fptosi float %8319 to i32
  %8321 = bitcast i32 %8320 to float
  %8322 = fmul fast float %7913, 0x3FD80E9D60000000
  %8323 = fmul fast float %8322, %8277
  %8324 = fadd fast float %8321, %8323
  %8325 = bitcast float %8324 to i32
  %8326 = sub nsw i32 2129859010, %8325
  %8327 = bitcast i32 %8326 to float
  %8328 = fmul fast float %5501, %8315
  %8329 = fmul fast float %8328, %8321
  %8330 = fmul fast float %8329, %8327
  %8331 = fmul fast float %5607, 0x3FF9999980000000
  %8332 = fsub fast float 5.000000e+00, %8331
  %8333 = call float @dx.op.unary.f32(i32 6, float %8266)  ; FAbs(value)
  %8334 = fsub fast float 1.000000e+00, %8333
  %8335 = fmul fast float %5607, 0x41D9660740000000
  %8336 = fadd fast float %8335, 0xC1EFBF8940000000
  %8337 = bitcast float %8334 to i32
  %8338 = sitofp i32 %8337 to float
  %8339 = fmul fast float %8338, %8332
  %8340 = fadd fast float %8336, %8339
  %8341 = fptosi float %8340 to i32
  %8342 = bitcast i32 %8341 to float
  %8343 = fsub fast float 1.000000e+00, %5469
  %8344 = fsub fast float 1.000000e+00, %5470
  %8345 = fsub fast float 1.000000e+00, %5481
  %8346 = fmul fast float %8342, %8343
  %8347 = fmul fast float %8342, %8344
  %8348 = fmul fast float %8342, %8345
  %8349 = fadd fast float %8346, %5469
  %8350 = fadd fast float %8347, %5470
  %8351 = fadd fast float %8348, %5481
  br i1 %5630, label %8352, label %8375

; <label>:8352                                    ; preds = %8237
  %8353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4860, float %8333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.ResRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.ResRet.f32 %8353, 2
  %8357 = fadd fast float %8354, -5.000000e-01
  %8358 = fadd fast float %8355, -5.000000e-01
  %8359 = fadd fast float %8356, -5.000000e-01
  %8360 = fmul fast float %5469, 4.000000e+00
  %8361 = fmul fast float %8360, %8343
  %8362 = fmul fast float %8361, %8357
  %8363 = fmul fast float %5470, 4.000000e+00
  %8364 = fmul fast float %8363, %8344
  %8365 = fmul fast float %8364, %8358
  %8366 = fmul fast float %5481, 4.000000e+00
  %8367 = fmul fast float %8366, %8345
  %8368 = fmul fast float %8367, %8359
  %8369 = fadd fast float %8362, %8349
  %8370 = fadd fast float %8365, %8350
  %8371 = fadd fast float %8368, %8351
  %8372 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8373 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8374 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  br label %8375

; <label>:8375                                    ; preds = %8352, %8237
  %8376 = phi float [ %8372, %8352 ], [ %8349, %8237 ]
  %8377 = phi float [ %8373, %8352 ], [ %8350, %8237 ]
  %8378 = phi float [ %8374, %8352 ], [ %8351, %8237 ]
  %8379 = fmul fast float %8265, 9.843750e-01
  %8380 = fadd fast float %8379, 7.812500e-03
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8380, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = extractvalue %dx.types.ResRet.f32 %8381, 3
  %8386 = fsub fast float %8384, %8382
  %8387 = fsub fast float %8385, %8383
  %8388 = fmul fast float %8386, %5617
  %8389 = fmul fast float %8387, %5617
  %8390 = fadd fast float %8388, %8382
  %8391 = fadd fast float %8389, %8383
  %8392 = fmul fast float %8390, %5469
  %8393 = fmul fast float %8390, %5470
  %8394 = fmul fast float %8390, %5481
  %8395 = fadd fast float %8392, %8391
  %8396 = fadd fast float %8393, %8391
  %8397 = fadd fast float %8394, %8391
  br i1 %5630, label %8398, label %8421

; <label>:8398                                    ; preds = %8375
  %8399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4860, float %8265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8400 = extractvalue %dx.types.ResRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.ResRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.ResRet.f32 %8399, 2
  %8403 = fadd fast float %8400, -5.000000e-01
  %8404 = fadd fast float %8401, -5.000000e-01
  %8405 = fadd fast float %8402, -5.000000e-01
  %8406 = fmul fast float %5469, 4.000000e+00
  %8407 = fmul fast float %8406, %8343
  %8408 = fmul fast float %8407, %8403
  %8409 = fmul fast float %5470, 4.000000e+00
  %8410 = fmul fast float %8409, %8344
  %8411 = fmul fast float %8410, %8404
  %8412 = fmul fast float %5481, 4.000000e+00
  %8413 = fmul fast float %8412, %8345
  %8414 = fmul fast float %8413, %8405
  %8415 = fadd fast float %8408, %8395
  %8416 = fadd fast float %8411, %8396
  %8417 = fadd fast float %8414, %8397
  %8418 = call float @dx.op.unary.f32(i32 7, float %8415)  ; Saturate(value)
  %8419 = call float @dx.op.unary.f32(i32 7, float %8416)  ; Saturate(value)
  %8420 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  br label %8421

; <label>:8421                                    ; preds = %8398, %8375
  %8422 = phi float [ %8418, %8398 ], [ %8395, %8375 ]
  %8423 = phi float [ %8419, %8398 ], [ %8396, %8375 ]
  %8424 = phi float [ %8420, %8398 ], [ %8397, %8375 ]
  %8425 = call float @dx.op.binary.f32(i32 35, float %8423, float %8424)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 35, float %8422, float %8425)  ; FMax(a,b)
  %8427 = fsub fast float 1.000000e+00, %8426
  %8428 = fmul fast float %8376, %8330
  %8429 = fmul fast float %8377, %8330
  %8430 = fmul fast float %8378, %8330
  %8431 = fsub fast float 1.000000e+00, %8266
  %8432 = bitcast float %8431 to i32
  %8433 = sitofp i32 %8432 to float
  %8434 = fmul fast float %8433, 5.000000e+00
  %8435 = fadd fast float %8434, 0xC1EFBF8940000000
  %8436 = fptosi float %8435 to i32
  %8437 = bitcast i32 %8436 to float
  %8438 = fmul fast float %8437, %4861
  %8439 = fmul fast float %8427, %8438
  %8440 = fmul fast float %8439, %6172
  %8441 = fmul fast float %8439, %6173
  %8442 = fmul fast float %8439, %6174
  %8443 = fadd fast float %8440, %8428
  %8444 = fadd fast float %8441, %8429
  %8445 = fadd fast float %8442, %8430
  %8446 = fmul fast float %8254, %4886
  %8447 = fmul fast float %8446, %8273
  %8448 = fmul fast float %8447, %8427
  %8449 = fmul fast float %8255, %4886
  %8450 = fmul fast float %8449, %8273
  %8451 = fmul fast float %8450, %8427
  %8452 = fmul fast float %8256, %4886
  %8453 = fmul fast float %8452, %8273
  %8454 = fmul fast float %8453, %8427
  %8455 = fadd fast float %8448, %7887
  %8456 = fadd fast float %8451, %7888
  %8457 = fadd fast float %8454, %7889
  %8458 = fmul fast float %8447, %8443
  %8459 = fmul fast float %8450, %8444
  %8460 = fmul fast float %8453, %8445
  %8461 = fadd fast float %8458, %7884
  %8462 = fadd fast float %8459, %7885
  %8463 = fadd fast float %8460, %7886
  br label %8016

; <label>:8464                                    ; preds = %8016
  br label %8465

; <label>:8465                                    ; preds = %8464, %7850
  %8466 = phi float [ %7852, %7850 ], [ %8017, %8464 ]
  %8467 = phi float [ %7853, %7850 ], [ %8018, %8464 ]
  %8468 = phi float [ %7854, %7850 ], [ %8019, %8464 ]
  %8469 = phi float [ %7855, %7850 ], [ %8020, %8464 ]
  %8470 = phi float [ %7856, %7850 ], [ %8021, %8464 ]
  %8471 = phi float [ %7857, %7850 ], [ %8022, %8464 ]
  %8472 = add i32 %7851, 1
  %8473 = icmp ugt i32 %8472, %7847
  br i1 %8473, label %8474, label %7850

; <label>:8474                                    ; preds = %8465
  br label %8475

; <label>:8475                                    ; preds = %8474, %7800, %7790
  %8476 = phi float [ %7791, %7790 ], [ %7791, %7800 ], [ %8466, %8474 ]
  %8477 = phi float [ %7792, %7790 ], [ %7792, %7800 ], [ %8467, %8474 ]
  %8478 = phi float [ %7793, %7790 ], [ %7793, %7800 ], [ %8468, %8474 ]
  %8479 = phi float [ %7794, %7790 ], [ %7794, %7800 ], [ %8469, %8474 ]
  %8480 = phi float [ %7795, %7790 ], [ %7795, %7800 ], [ %8470, %8474 ]
  %8481 = phi float [ %7796, %7790 ], [ %7796, %7800 ], [ %8471, %8474 ]
  %8482 = fmul fast float %4886, %4886
  %8483 = fmul fast float %8482, %6198
  %8484 = fsub fast float -0.000000e+00, %8483
  %8485 = fmul fast float %8482, %6199
  %8486 = fsub fast float -0.000000e+00, %8485
  %8487 = fmul fast float %8482, %6200
  %8488 = fsub fast float -0.000000e+00, %8487
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = fmul fast float %8490, %6204
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8494 = fsub fast float 1.000000e+00, %4864
  %8495 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8496 = fadd fast float %8481, %4863
  %8497 = fmul fast float %8496, %4864
  %8498 = fmul fast float %8495, %8493
  %8499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %8500 = extractvalue %dx.types.ResRet.i32 %8499, 3
  %8501 = bitcast i32 %8500 to float
  %8502 = fsub fast float %8484, %8501
  %8503 = fsub fast float %8486, %8501
  %8504 = fsub fast float %8488, %8501
  %8505 = fmul fast float %8502, %201
  %8506 = fmul fast float %8503, %201
  %8507 = fmul fast float %8504, %201
  %8508 = fadd fast float %8505, %8501
  %8509 = fadd fast float %8506, %8501
  %8510 = fadd fast float %8507, %8501
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8513 = fmul fast float %8479, %5472
  %8514 = fmul fast float %8480, %5473
  %8515 = fmul fast float %8481, %5474
  %8516 = fcmp fast ogt float %92, %221
  %8517 = and i1 %8516, %5292
  %8518 = or i1 %5298, %8517
  %8519 = icmp eq i32 %5291, 2
  %8520 = fcmp fast ole float %92, %221
  %8521 = and i1 %8520, %8519
  %8522 = or i1 %8521, %8518
  br i1 %8517, label %8523, label %8780

; <label>:8523                                    ; preds = %8475
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 3
  %8527 = fmul fast float %8525, %104
  %8528 = fmul fast float %8526, %105
  %8529 = call float @dx.op.unary.f32(i32 7, float %8527)  ; Saturate(value)
  %8530 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8531 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8529, float %8530, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8532 = extractvalue %dx.types.ResRet.f32 %8531, 0
  %8533 = extractvalue %dx.types.ResRet.f32 %8531, 1
  %8534 = extractvalue %dx.types.ResRet.f32 %8531, 2
  %8535 = extractvalue %dx.types.ResRet.f32 %8531, 3
  %8536 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8529, float %8530, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = extractvalue %dx.types.ResRet.f32 %8536, 3
  %8541 = call float @dx.op.binary.f32(i32 35, float %8533, float %8534)  ; FMax(a,b)
  %8542 = call float @dx.op.binary.f32(i32 35, float %8532, float %8541)  ; FMax(a,b)
  %8543 = call float @dx.op.binary.f32(i32 35, float %8542, float %8535)  ; FMax(a,b)
  %8544 = call float @dx.op.binary.f32(i32 36, float %8538, float %8539)  ; FMin(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8537, float %8544)  ; FMin(a,b)
  %8546 = call float @dx.op.binary.f32(i32 36, float %8545, float %8540)  ; FMin(a,b)
  %8547 = fmul fast float %8543, 2.550000e+02
  %8548 = fadd fast float %8547, 0x3F70101020000000
  %8549 = fptoui float %8548 to i32
  %8550 = fmul fast float %8546, 2.550000e+02
  %8551 = fadd fast float %8550, 0x3F70101020000000
  %8552 = fptoui float %8551 to i32
  %8553 = icmp ult i32 %8549, %8552
  br i1 %8553, label %8554, label %8722

; <label>:8554                                    ; preds = %8523
  %8555 = fcmp fast ogt float %91, 9.843750e-01
  %8556 = fadd fast float %92, -4.000000e+00
  %8557 = select i1 %8555, float -4.000000e+00, float %8556
  %8558 = call float @dx.op.binary.f32(i32 35, float %8557, float 0.000000e+00)  ; FMax(a,b)
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 0
  %8561 = fadd fast float %8560, %8558
  %8562 = extractvalue %dx.types.CBufRet.f32 %8559, 2
  %8563 = fmul fast float %8561, %8562
  %8564 = call float @dx.op.unary.f32(i32 23, float %8563)  ; Log(value)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8559, 3
  %8566 = fmul fast float %8565, %8564
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 2
  %8569 = fmul fast float %8566, %8568
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = uitofp i32 %8549 to float
  %8572 = uitofp i32 %8552 to float
  %8573 = fadd fast float %8571, 5.000000e-01
  %8574 = fadd fast float %8572, 5.000000e-01
  %8575 = fmul fast float %8568, %8573
  %8576 = fmul fast float %8568, %8574
  %8577 = fadd fast float %8575, 0x3F0FFB4800000000
  %8578 = fadd fast float %8576, 0xBF0FFB4800000000
  %8579 = call float @dx.op.binary.f32(i32 35, float %8570, float %8577)  ; FMax(a,b)
  %8580 = call float @dx.op.binary.f32(i32 36, float %8579, float %8578)  ; FMin(a,b)
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8581, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8585 = fmul fast float %8582, %8580
  %8586 = fadd fast float %8584, %8585
  %8587 = fadd fast float %8584, %8583
  %8588 = fsub fast float %8582, %8583
  %8589 = fadd fast float %8588, %8584
  %8590 = call float @dx.op.binary.f32(i32 35, float %8586, float %8587)  ; FMax(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8590, float %8589)  ; FMin(a,b)
  %8592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8529, float %8530, float %8591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.i32 %8596, 0
  %8598 = extractvalue %dx.types.CBufRet.i32 %8596, 1
  %8599 = uitofp i32 %8597 to float
  %8600 = uitofp i32 %8598 to float
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = fmul fast float %8599, %8529
  %8605 = fmul fast float %8600, %8530
  %8606 = fadd fast float %8604, -5.000000e-01
  %8607 = fadd fast float %8605, -5.000000e-01
  %8608 = call float @dx.op.unary.f32(i32 22, float %8606)  ; Frc(value)
  %8609 = call float @dx.op.unary.f32(i32 22, float %8607)  ; Frc(value)
  %8610 = fmul fast float %8608, %8608
  %8611 = fmul fast float %8610, %8608
  %8612 = fsub fast float 3.000000e+00, %8608
  %8613 = fmul fast float %8610, %8612
  %8614 = fmul fast float %8608, 3.000000e+00
  %8615 = fmul fast float %8611, 3.000000e+00
  %8616 = fmul fast float %8610, 6.000000e+00
  %8617 = fsub fast float %8615, %8616
  %8618 = fadd fast float %8617, 4.000000e+00
  %8619 = fmul fast float %8618, 0x3FC5555560000000
  %8620 = fmul fast float %8611, -3.000000e+00
  %8621 = fadd fast float %8610, %8608
  %8622 = fmul fast float %8621, 3.000000e+00
  %8623 = fadd fast float %8620, 1.000000e+00
  %8624 = fadd fast float %8623, %8622
  %8625 = fmul fast float %8611, 0x3FC5555560000000
  %8626 = fmul fast float %8609, %8609
  %8627 = fmul fast float %8626, %8609
  %8628 = fsub fast float 3.000000e+00, %8609
  %8629 = fmul fast float %8626, %8628
  %8630 = fmul fast float %8609, 3.000000e+00
  %8631 = fmul fast float %8627, 3.000000e+00
  %8632 = fmul fast float %8626, 6.000000e+00
  %8633 = fsub fast float %8631, %8632
  %8634 = fadd fast float %8633, 4.000000e+00
  %8635 = fmul fast float %8634, 0x3FC5555560000000
  %8636 = fmul fast float %8627, -3.000000e+00
  %8637 = fadd fast float %8626, %8609
  %8638 = fmul fast float %8637, 3.000000e+00
  %8639 = fadd fast float %8636, 1.000000e+00
  %8640 = fadd fast float %8639, %8638
  %8641 = fmul fast float %8627, 0x3FC5555560000000
  %8642 = fadd fast float %8608, 1.000000e+00
  %8643 = fsub fast float 1.000000e+00, %8614
  %8644 = fadd fast float %8643, %8613
  %8645 = fadd fast float %8644, %8618
  %8646 = fmul fast float %8645, 0x3FC5555560000000
  %8647 = fdiv fast float %8619, %8646
  %8648 = fsub fast float %8642, %8647
  %8649 = fsub fast float 1.000000e+00, %8608
  %8650 = fadd fast float %8624, %8611
  %8651 = fmul fast float %8650, 0x3FC5555560000000
  %8652 = fdiv fast float %8625, %8651
  %8653 = fadd fast float %8649, %8652
  %8654 = fadd fast float %8609, 1.000000e+00
  %8655 = fsub fast float 1.000000e+00, %8630
  %8656 = fadd fast float %8655, %8629
  %8657 = fadd fast float %8656, %8634
  %8658 = fmul fast float %8657, 0x3FC5555560000000
  %8659 = fdiv fast float %8635, %8658
  %8660 = fsub fast float %8654, %8659
  %8661 = fsub fast float 1.000000e+00, %8609
  %8662 = fadd fast float %8640, %8627
  %8663 = fmul fast float %8662, 0x3FC5555560000000
  %8664 = fdiv fast float %8641, %8663
  %8665 = fadd fast float %8664, %8661
  %8666 = fmul fast float %8648, %8602
  %8667 = fsub fast float %8529, %8666
  %8668 = fmul fast float %8653, %8602
  %8669 = fadd fast float %8668, %8529
  %8670 = fmul fast float %8665, %8603
  %8671 = fadd fast float %8670, %8530
  %8672 = fmul fast float %8660, %8603
  %8673 = fsub fast float %8530, %8672
  %8674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8667, float %8673, float %8591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8675 = extractvalue %dx.types.ResRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.ResRet.f32 %8674, 1
  %8677 = extractvalue %dx.types.ResRet.f32 %8674, 2
  %8678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8669, float %8673, float %8591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8679 = extractvalue %dx.types.ResRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.ResRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.ResRet.f32 %8678, 2
  %8682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8667, float %8671, float %8591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8683 = extractvalue %dx.types.ResRet.f32 %8682, 0
  %8684 = extractvalue %dx.types.ResRet.f32 %8682, 1
  %8685 = extractvalue %dx.types.ResRet.f32 %8682, 2
  %8686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8669, float %8671, float %8591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8687 = extractvalue %dx.types.ResRet.f32 %8686, 0
  %8688 = extractvalue %dx.types.ResRet.f32 %8686, 1
  %8689 = extractvalue %dx.types.ResRet.f32 %8686, 2
  %8690 = fsub fast float %8683, %8675
  %8691 = fsub fast float %8684, %8676
  %8692 = fsub fast float %8685, %8677
  %8693 = fmul fast float %8690, %8663
  %8694 = fmul fast float %8691, %8663
  %8695 = fmul fast float %8692, %8663
  %8696 = fadd fast float %8693, %8675
  %8697 = fadd fast float %8694, %8676
  %8698 = fadd fast float %8695, %8677
  %8699 = fsub fast float %8687, %8679
  %8700 = fsub fast float %8688, %8680
  %8701 = fsub fast float %8689, %8681
  %8702 = fmul fast float %8699, %8663
  %8703 = fmul fast float %8700, %8663
  %8704 = fmul fast float %8701, %8663
  %8705 = fsub fast float %8679, %8696
  %8706 = fadd fast float %8705, %8702
  %8707 = fsub fast float %8680, %8697
  %8708 = fadd fast float %8707, %8703
  %8709 = fsub fast float %8681, %8698
  %8710 = fadd fast float %8709, %8704
  %8711 = fmul fast float %8706, %8651
  %8712 = fmul fast float %8708, %8651
  %8713 = fmul fast float %8710, %8651
  %8714 = fadd fast float %8711, %8696
  %8715 = fadd fast float %8712, %8697
  %8716 = fadd fast float %8713, %8698
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8719 = fmul fast float %8714, %8718
  %8720 = fmul fast float %8715, %8718
  %8721 = fmul fast float %8716, %8718
  br label %8722

; <label>:8722                                    ; preds = %8554, %8523
  %8723 = phi float [ %8593, %8554 ], [ 1.000000e+00, %8523 ]
  %8724 = phi float [ %8594, %8554 ], [ 1.000000e+00, %8523 ]
  %8725 = phi float [ %8595, %8554 ], [ 1.000000e+00, %8523 ]
  %8726 = phi float [ %8719, %8554 ], [ 0.000000e+00, %8523 ]
  %8727 = phi float [ %8720, %8554 ], [ 0.000000e+00, %8523 ]
  %8728 = phi float [ %8721, %8554 ], [ 0.000000e+00, %8523 ]
  %8729 = fmul fast float %8726, %8508
  %8730 = fmul fast float %8727, %8509
  %8731 = fmul fast float %8728, %8510
  %8732 = call float @dx.op.dot3.f32(i32 55, float %8723, float %8724, float %8725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8733 = call float @dx.op.dot3.f32(i32 55, float %8729, float %8730, float %8731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8734 = select i1 %261, float %8732, float %8723
  %8735 = select i1 %261, float %8732, float %8724
  %8736 = select i1 %261, float 1.000000e+00, float %8725
  %8737 = select i1 %261, float %8733, float %8729
  %8738 = select i1 %261, float 0.000000e+00, float %8730
  %8739 = select i1 %261, float 0.000000e+00, float %8731
  %8740 = fmul fast float %8734, %8513
  %8741 = fmul fast float %8735, %8514
  %8742 = fmul fast float %8736, %8515
  %8743 = fadd fast float %8740, %8737
  %8744 = fadd fast float %8741, %8738
  %8745 = fadd fast float %8739, %8742
  %8746 = fmul fast float %8734, %8476
  %8747 = fmul fast float %8735, %8477
  %8748 = fmul fast float %8736, %8478
  %8749 = fmul fast float %137, %8525
  %8750 = fmul fast float %139, %8526
  %8751 = fsub fast float 1.000000e+00, %8749
  %8752 = fsub fast float 1.000000e+00, %8750
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8757 = fmul fast float %8751, %8754
  %8758 = fmul fast float %8751, %8755
  %8759 = fmul fast float %8751, %8756
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 0
  %8762 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8763 = extractvalue %dx.types.CBufRet.f32 %8760, 2
  %8764 = fmul fast float %8752, %8761
  %8765 = fmul fast float %8752, %8762
  %8766 = fmul fast float %8752, %8763
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 0
  %8769 = extractvalue %dx.types.CBufRet.f32 %8767, 1
  %8770 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8771 = fadd fast float %8764, %8768
  %8772 = fadd fast float %8771, %8757
  %8773 = fadd fast float %8765, %8769
  %8774 = fadd fast float %8773, %8758
  %8775 = fadd fast float %8766, %8770
  %8776 = fadd fast float %8775, %8759
  %8777 = fmul fast float %8772, %221
  %8778 = fmul fast float %8774, %221
  %8779 = fmul fast float %8776, %221
  br label %8780

; <label>:8780                                    ; preds = %8722, %8475
  %8781 = phi float [ %8777, %8722 ], [ %167, %8475 ]
  %8782 = phi float [ %8778, %8722 ], [ %168, %8475 ]
  %8783 = phi float [ %8779, %8722 ], [ %169, %8475 ]
  %8784 = phi float [ %221, %8722 ], [ %92, %8475 ]
  %8785 = phi float [ %8743, %8722 ], [ %8513, %8475 ]
  %8786 = phi float [ %8744, %8722 ], [ %8514, %8475 ]
  %8787 = phi float [ %8745, %8722 ], [ %8515, %8475 ]
  %8788 = phi float [ %8746, %8722 ], [ %8476, %8475 ]
  %8789 = phi float [ %8747, %8722 ], [ %8477, %8475 ]
  %8790 = phi float [ %8748, %8722 ], [ %8478, %8475 ]
  %8791 = phi float [ %8723, %8722 ], [ 1.000000e+00, %8475 ]
  br i1 %8522, label %9946, label %8792

; <label>:8792                                    ; preds = %8780
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %8796 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8797 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8798, 0
  %8800 = extractvalue %dx.types.CBufRet.f32 %8798, 1
  %8801 = extractvalue %dx.types.CBufRet.f32 %8798, 2
  %8802 = extractvalue %dx.types.CBufRet.f32 %8798, 3
  %8803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8804 = extractvalue %dx.types.CBufRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.CBufRet.f32 %8803, 1
  %8806 = extractvalue %dx.types.CBufRet.f32 %8803, 2
  %8807 = extractvalue %dx.types.CBufRet.f32 %8803, 3
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.CBufRet.f32 %8808, 1
  %8811 = extractvalue %dx.types.CBufRet.f32 %8808, 2
  %8812 = extractvalue %dx.types.CBufRet.f32 %8808, 3
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 0
  %8818 = extractvalue %dx.types.CBufRet.f32 %8815, 1
  %8819 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8820 = fcmp fast olt float %8819, -5.000000e-01
  %8821 = call float @dx.op.dot3.f32(i32 55, float %8781, float %8782, float %8783, float %8781, float %8782, float %8783)  ; Dot3(ax,ay,az,bx,by,bz)
  %8822 = call float @dx.op.unary.f32(i32 25, float %8821)  ; Rsqrt(value)
  %8823 = fmul fast float %8822, %8821
  %8824 = fmul fast float %8822, %8781
  %8825 = fmul fast float %8822, %8782
  %8826 = fmul fast float %8822, %8783
  %8827 = fadd fast float %8823, %8797
  %8828 = call float @dx.op.dot3.f32(i32 55, float %8824, float %8825, float %8826, float %8794, float %8795, float %8796)  ; Dot3(ax,ay,az,bx,by,bz)
  %8829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.i32 %8829, 1
  %8831 = and i32 %8830, 1
  %8832 = icmp ne i32 %8831, 0
  %8833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8834 = extractvalue %dx.types.CBufRet.f32 %8833, 2
  %8835 = fcmp fast ogt float %8834, 0.000000e+00
  %8836 = and i1 %8832, %8835
  br i1 %8836, label %8837, label %9243, !dx.controlflow.hints !134

; <label>:8837                                    ; preds = %8792
  %8838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8839 = extractvalue %dx.types.CBufRet.f32 %8838, 3
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8844 = fsub fast float %8841, %8843
  %8845 = and i32 %8830, 2
  %8846 = extractvalue %dx.types.CBufRet.i32 %8829, 0
  %8847 = call i32 @dx.op.binary.i32(i32 40, i32 %8846, i32 3)  ; UMin(a,b)
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 0
  %8850 = extractvalue %dx.types.CBufRet.f32 %8848, 1
  %8851 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8852 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8853 = fsub fast float %8849, %8851
  %8854 = fsub fast float %8850, %8852
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = fcmp fast ogt float %8856, 0.000000e+00
  %8858 = fsub fast float -0.000000e+00, %8853
  %8859 = fsub fast float -0.000000e+00, %8854
  %8860 = call float @dx.op.dot2.f32(i32 54, float %8824, float %8825, float %8824, float %8825)  ; Dot2(ax,ay,bx,by)
  %8861 = call float @dx.op.dot2.f32(i32 54, float %8824, float %8825, float %8858, float %8859)  ; Dot2(ax,ay,bx,by)
  %8862 = fmul fast float %8861, 2.000000e+00
  %8863 = call float @dx.op.dot2.f32(i32 54, float %8858, float %8859, float %8858, float %8859)  ; Dot2(ax,ay,bx,by)
  %8864 = fmul fast float %8856, %8856
  %8865 = fsub fast float %8863, %8864
  %8866 = fmul fast float %8862, %8862
  %8867 = fmul fast float %8860, 4.000000e+00
  %8868 = fmul fast float %8867, %8865
  %8869 = fsub fast float %8866, %8868
  %8870 = fcmp fast ogt float %8869, 0.000000e+00
  br i1 %8870, label %8871, label %8886

; <label>:8871                                    ; preds = %8837
  %8872 = fcmp fast ogt float %8862, 0.000000e+00
  %8873 = call float @dx.op.unary.f32(i32 24, float %8869)  ; Sqrt(value)
  %8874 = fsub fast float -0.000000e+00, %8873
  %8875 = select i1 %8872, float %8873, float %8874
  %8876 = fadd fast float %8875, %8862
  %8877 = fmul float %8876, -5.000000e-01
  %8878 = fdiv fast float %8877, %8860
  %8879 = call float @dx.op.binary.f32(i32 35, float %8878, float 0.000000e+00)  ; FMax(a,b)
  %8880 = call float @dx.op.binary.f32(i32 36, float %8823, float %8879)  ; FMin(a,b)
  %8881 = fdiv fast float %8865, %8877
  %8882 = call float @dx.op.binary.f32(i32 35, float %8881, float 0.000000e+00)  ; FMax(a,b)
  %8883 = call float @dx.op.binary.f32(i32 36, float %8823, float %8882)  ; FMin(a,b)
  %8884 = call float @dx.op.binary.f32(i32 36, float %8880, float %8883)  ; FMin(a,b)
  %8885 = call float @dx.op.binary.f32(i32 35, float %8880, float %8883)  ; FMax(a,b)
  br label %8886

; <label>:8886                                    ; preds = %8871, %8837
  %8887 = phi float [ %8885, %8871 ], [ -1.000000e+00, %8837 ]
  %8888 = phi float [ %8884, %8871 ], [ -1.000000e+00, %8837 ]
  %8889 = phi i1 [ true, %8871 ], [ false, %8837 ]
  %8890 = and i1 %8857, %8889
  br i1 %8890, label %8891, label %8893

; <label>:8891                                    ; preds = %8886
  %8892 = fcmp fast oeq float %8888, %8887
  br i1 %8892, label %9196, label %8894

; <label>:8893                                    ; preds = %8886
  br i1 %8857, label %9196, label %8894

; <label>:8894                                    ; preds = %8893, %8891
  %8895 = phi float [ %8823, %8893 ], [ %8887, %8891 ]
  %8896 = phi float [ 0.000000e+00, %8893 ], [ %8888, %8891 ]
  %8897 = icmp ne i32 %8845, 0
  %8898 = fmul fast float %8895, %8826
  %8899 = fadd fast float %8898, %8839
  %8900 = fmul fast float %8899, %8895
  %8901 = select i1 %8897, float 0.000000e+00, float %8900
  %8902 = fcmp fast oeq float %8826, 0.000000e+00
  %8903 = fdiv fast float %8844, %8826
  %8904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8903)  ; FMax(a,b)
  %8905 = select i1 %8902, float %8895, float %8904
  %8906 = call float @dx.op.binary.f32(i32 36, float %8895, float %8905)  ; FMin(a,b)
  %8907 = fcmp fast ogt float %8826, 0.000000e+00
  %8908 = fcmp fast olt float %8844, 0.000000e+00
  br i1 %8907, label %8909, label %8966

; <label>:8909                                    ; preds = %8894
  %8910 = icmp eq i32 %8845, 0
  br i1 %8908, label %8911, label %8955

; <label>:8911                                    ; preds = %8909
  %8912 = select i1 %8910, float %8895, float 0.000000e+00
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = call float @dx.op.unary.f32(i32 6, float %8913)  ; FAbs(value)
  %8915 = fmul fast float %8912, %8826
  %8916 = fadd fast float %8915, %8839
  %8917 = fmul fast float %8914, %8916
  %8918 = fsub fast float %8901, %8917
  %8919 = fsub fast float %8895, %8914
  %8920 = select i1 %8910, float %8919, float 0.000000e+00
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 0
  %8923 = extractvalue %dx.types.CBufRet.f32 %8921, 1
  %8924 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8927 = extractvalue %dx.types.CBufRet.f32 %8925, 1
  %8928 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8929 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8932 = call float @dx.op.binary.f32(i32 36, float %8918, float %8931)  ; FMin(a,b)
  %8933 = fmul fast float %8929, %8920
  %8934 = call float @dx.op.unary.f32(i32 7, float %8933)  ; Saturate(value)
  %8935 = fsub fast float %8926, %8922
  %8936 = fsub fast float %8927, %8923
  %8937 = fsub fast float %8928, %8924
  %8938 = fmul fast float %8934, %8935
  %8939 = fmul fast float %8934, %8936
  %8940 = fmul fast float %8934, %8937
  %8941 = fadd fast float %8938, %8922
  %8942 = fadd fast float %8939, %8923
  %8943 = fadd fast float %8940, %8924
  %8944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8945 = extractvalue %dx.types.CBufRet.f32 %8944, 0
  %8946 = extractvalue %dx.types.CBufRet.f32 %8944, 1
  %8947 = fadd fast float %8946, %8945
  %8948 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8944, 2
  %8950 = extractvalue %dx.types.CBufRet.f32 %8944, 3
  %8951 = fadd fast float %8950, %8949
  %8952 = call float @dx.op.unary.f32(i32 7, float %8951)  ; Saturate(value)
  %8953 = fmul fast float %8948, %8932
  %8954 = fmul fast float %8953, %8952
  br label %9196

; <label>:8955                                    ; preds = %8909
  br i1 %8910, label %8956, label %8977

; <label>:8956                                    ; preds = %8955
  %8957 = call float @dx.op.binary.f32(i32 36, float %8906, float %8896)  ; FMin(a,b)
  %8958 = fsub fast float %8906, %8957
  %8959 = fsub fast float %8958, %8895
  %8960 = call float @dx.op.unary.f32(i32 6, float %8959)  ; FAbs(value)
  %8961 = fadd fast float %8958, %8895
  %8962 = fmul fast float %8961, %8826
  %8963 = fadd fast float %8962, %8839
  %8964 = fmul fast float %8963, %8960
  %8965 = fsub fast float %8901, %8964
  br label %8977

; <label>:8966                                    ; preds = %8894
  br i1 %8908, label %8967, label %8977

; <label>:8967                                    ; preds = %8966
  %8968 = call float @dx.op.binary.f32(i32 35, float %8896, float %8906)  ; FMax(a,b)
  %8969 = icmp eq i32 %8845, 0
  %8970 = select i1 %8969, float %8906, float 0.000000e+00
  %8971 = fsub fast float -0.000000e+00, %8970
  %8972 = call float @dx.op.unary.f32(i32 6, float %8971)  ; FAbs(value)
  %8973 = fmul fast float %8970, %8826
  %8974 = fadd fast float %8973, %8839
  %8975 = fmul fast float %8972, %8974
  %8976 = fsub fast float %8901, %8975
  br label %8977

; <label>:8977                                    ; preds = %8967, %8966, %8956, %8955
  %8978 = phi float [ %8896, %8955 ], [ %8896, %8956 ], [ %8968, %8967 ], [ %8896, %8966 ]
  %8979 = phi float [ 0.000000e+00, %8955 ], [ %8960, %8956 ], [ %8972, %8967 ], [ 0.000000e+00, %8966 ]
  %8980 = phi float [ %8901, %8955 ], [ %8965, %8956 ], [ %8976, %8967 ], [ %8901, %8966 ]
  %8981 = phi float [ %8906, %8955 ], [ %8906, %8956 ], [ %8895, %8967 ], [ %8895, %8966 ]
  %8982 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8982, align 4, !tbaa !121, !noalias !135
  %8983 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8983, align 4, !tbaa !121, !noalias !135
  %8984 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8984, align 4, !tbaa !121, !noalias !135
  %8985 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8985, align 4, !tbaa !121, !noalias !135
  %8986 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8986, align 4, !tbaa !121, !noalias !135
  %8987 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8987, align 4, !tbaa !121, !noalias !135
  %8988 = icmp sgt i32 %8847, 0
  br i1 %8988, label %8989, label %9050

; <label>:8989                                    ; preds = %8977
  br label %8990

; <label>:8990                                    ; preds = %9039, %8989
  %8991 = phi i32 [ %9040, %9039 ], [ 0, %8989 ]
  %8992 = phi i32 [ %9041, %9039 ], [ 0, %8989 ]
  %8993 = add nuw i32 %8992, 171
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8993)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 0
  %8999 = extractvalue %dx.types.CBufRet.f32 %8997, 1
  %9000 = fsub fast float %8995, %8998
  %9001 = fsub fast float %8996, %8999
  %9002 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %9003 = fsub fast float -0.000000e+00, %9000
  %9004 = fsub fast float -0.000000e+00, %9001
  %9005 = call float @dx.op.dot2.f32(i32 54, float %8824, float %8825, float %9003, float %9004)  ; Dot2(ax,ay,bx,by)
  %9006 = fmul fast float %9005, 2.000000e+00
  %9007 = call float @dx.op.dot2.f32(i32 54, float %9003, float %9004, float %9003, float %9004)  ; Dot2(ax,ay,bx,by)
  %9008 = fmul fast float %9002, %9002
  %9009 = fsub fast float %9007, %9008
  %9010 = fmul fast float %9006, %9006
  %9011 = fmul fast float %8867, %9009
  %9012 = fsub fast float %9010, %9011
  %9013 = fcmp fast ogt float %9012, 0.000000e+00
  br i1 %9013, label %9014, label %9029

; <label>:9014                                    ; preds = %8990
  %9015 = fcmp fast ogt float %9006, 0.000000e+00
  %9016 = call float @dx.op.unary.f32(i32 24, float %9012)  ; Sqrt(value)
  %9017 = fsub fast float -0.000000e+00, %9016
  %9018 = select i1 %9015, float %9016, float %9017
  %9019 = fadd fast float %9018, %9006
  %9020 = fmul float %9019, -5.000000e-01
  %9021 = fdiv fast float %9020, %8860
  %9022 = call float @dx.op.binary.f32(i32 35, float %9021, float 0.000000e+00)  ; FMax(a,b)
  %9023 = call float @dx.op.binary.f32(i32 36, float %8895, float %9022)  ; FMin(a,b)
  %9024 = fdiv fast float %9009, %9020
  %9025 = call float @dx.op.binary.f32(i32 35, float %9024, float 0.000000e+00)  ; FMax(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %8895, float %9025)  ; FMin(a,b)
  %9027 = call float @dx.op.binary.f32(i32 36, float %9023, float %9026)  ; FMin(a,b)
  %9028 = call float @dx.op.binary.f32(i32 35, float %9023, float %9026)  ; FMax(a,b)
  br label %9029

; <label>:9029                                    ; preds = %9014, %8990
  %9030 = phi float [ %9028, %9014 ], [ -1.000000e+00, %8990 ]
  %9031 = phi float [ %9027, %9014 ], [ -1.000000e+00, %8990 ]
  %9032 = phi i1 [ true, %9014 ], [ false, %8990 ]
  br i1 %9032, label %9033, label %9039

; <label>:9033                                    ; preds = %9029
  %9034 = call float @dx.op.binary.f32(i32 35, float %8978, float %9031)  ; FMax(a,b)
  %9035 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8992
  store float %9034, float* %9035, align 4, !tbaa !121, !noalias !135
  %9036 = call float @dx.op.binary.f32(i32 35, float %8978, float %9030)  ; FMax(a,b)
  %9037 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8992
  store float %9036, float* %9037, align 4, !tbaa !121, !noalias !135
  %9038 = add nsw i32 %8991, 1
  br label %9039

; <label>:9039                                    ; preds = %9033, %9029
  %9040 = phi i32 [ %9038, %9033 ], [ %8991, %9029 ]
  %9041 = add nuw nsw i32 %8992, 1
  %9042 = icmp eq i32 %9041, %8847
  br i1 %9042, label %9043, label %8990

; <label>:9043                                    ; preds = %9039
  %9044 = load float, float* %8984, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %9045 = load float, float* %8983, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  %9046 = load float, float* %8982, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  %9047 = load float, float* %8987, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %9048 = load float, float* %8986, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  %9049 = load float, float* %8985, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  br label %9050

; <label>:9050                                    ; preds = %9043, %8977
  %9051 = phi float [ -1.000000e+00, %8977 ], [ %9049, %9043 ]
  %9052 = phi float [ -1.000000e+00, %8977 ], [ %9048, %9043 ]
  %9053 = phi float [ -1.000000e+00, %8977 ], [ %9047, %9043 ]
  %9054 = phi float [ -1.000000e+00, %8977 ], [ %9046, %9043 ]
  %9055 = phi float [ -1.000000e+00, %8977 ], [ %9045, %9043 ]
  %9056 = phi float [ -1.000000e+00, %8977 ], [ %9044, %9043 ]
  %9057 = phi i32 [ 0, %8977 ], [ %9040, %9043 ]
  %9058 = call float @dx.op.binary.f32(i32 36, float %9055, float %9056)  ; FMin(a,b)
  %9059 = call float @dx.op.binary.f32(i32 36, float %9054, float %9058)  ; FMin(a,b)
  %9060 = call float @dx.op.binary.f32(i32 35, float %9054, float %9055)  ; FMax(a,b)
  %9061 = call float @dx.op.binary.f32(i32 36, float %9060, float %9056)  ; FMin(a,b)
  %9062 = call float @dx.op.binary.f32(i32 36, float %9054, float %9055)  ; FMin(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float %9062, float %9061)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 35, float %9055, float %9056)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float %9054, float %9064)  ; FMax(a,b)
  store float %9059, float* %8982, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  store float %9063, float* %8983, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %9065, float* %8984, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %9066 = call float @dx.op.binary.f32(i32 36, float %9052, float %9053)  ; FMin(a,b)
  %9067 = call float @dx.op.binary.f32(i32 36, float %9051, float %9066)  ; FMin(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float %9051, float %9052)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 36, float %9068, float %9053)  ; FMin(a,b)
  %9070 = call float @dx.op.binary.f32(i32 36, float %9051, float %9052)  ; FMin(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %9070, float %9069)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 35, float %9052, float %9053)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 35, float %9051, float %9072)  ; FMax(a,b)
  store float %9067, float* %8985, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  store float %9071, float* %8986, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  store float %9073, float* %8987, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %9074 = sub nsw i32 3, %9057
  %9075 = icmp sgt i32 %9074, 2
  br i1 %9075, label %9076, label %9114

; <label>:9076                                    ; preds = %9050
  %9077 = icmp eq i32 %8845, 0
  %9078 = fsub fast float %8895, %8979
  %9079 = select i1 %9077, float %9078, float %8979
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = extractvalue %dx.types.CBufRet.f32 %9080, 1
  %9083 = extractvalue %dx.types.CBufRet.f32 %9080, 2
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = extractvalue %dx.types.CBufRet.f32 %9084, 3
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 3
  %9091 = call float @dx.op.binary.f32(i32 36, float %8980, float %9090)  ; FMin(a,b)
  %9092 = fmul fast float %9088, %9079
  %9093 = call float @dx.op.unary.f32(i32 7, float %9092)  ; Saturate(value)
  %9094 = fsub fast float %9085, %9081
  %9095 = fsub fast float %9086, %9082
  %9096 = fsub fast float %9087, %9083
  %9097 = fmul fast float %9093, %9094
  %9098 = fmul fast float %9093, %9095
  %9099 = fmul fast float %9093, %9096
  %9100 = fadd fast float %9097, %9081
  %9101 = fadd fast float %9098, %9082
  %9102 = fadd fast float %9099, %9083
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 0
  %9105 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9106 = fadd fast float %9105, %9104
  %9107 = call float @dx.op.unary.f32(i32 7, float %9106)  ; Saturate(value)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9103, 2
  %9109 = extractvalue %dx.types.CBufRet.f32 %9103, 3
  %9110 = fadd fast float %9109, %9108
  %9111 = call float @dx.op.unary.f32(i32 7, float %9110)  ; Saturate(value)
  %9112 = fmul fast float %9107, %9091
  %9113 = fmul fast float %9112, %9111
  br label %9196

; <label>:9114                                    ; preds = %9050
  %9115 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9074
  %9116 = load float, float* %9115, align 4, !tbaa !121, !noalias !135
  %9117 = fcmp fast olt float %9116, %8981
  %9118 = icmp sgt i32 %9057, 0
  %9119 = and i1 %9118, %9117
  br i1 %9119, label %9120, label %9157

; <label>:9120                                    ; preds = %9114
  br label %9121

; <label>:9121                                    ; preds = %9150, %9120
  %9122 = phi float [ %9151, %9150 ], [ %8979, %9120 ]
  %9123 = phi float [ %9152, %9150 ], [ %8980, %9120 ]
  %9124 = phi float [ %9132, %9150 ], [ %9116, %9120 ]
  %9125 = phi i32 [ %9129, %9150 ], [ %9074, %9120 ]
  %9126 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9125
  %9127 = load float, float* %9126, align 4, !tbaa !121, !noalias !135
  %9128 = icmp slt i32 %9125, 2
  %9129 = add nsw i32 %9125, 1
  %9130 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9129
  %9131 = load float, float* %9130, align 4, !tbaa !121, !noalias !135
  %9132 = select i1 %9128, float %9131, float %8895
  %9133 = call float @dx.op.binary.f32(i32 36, float %9132, float %9127)  ; FMin(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %8981, float %9133)  ; FMin(a,b)
  %9135 = icmp eq i32 %8845, 0
  %9136 = fadd fast float %9134, %9124
  %9137 = fmul fast float %9136, %8826
  %9138 = fadd fast float %9137, %8839
  br i1 %9135, label %9144, label %9139

; <label>:9139                                    ; preds = %9121
  %9140 = fsub fast float %9134, %9124
  %9141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9140)  ; FMax(a,b)
  %9142 = fmul fast float %9141, %9138
  %9143 = fadd fast float %9142, %9123
  br label %9150

; <label>:9144                                    ; preds = %9121
  %9145 = fsub fast float %9124, %9134
  %9146 = call float @dx.op.unary.f32(i32 6, float %9145)  ; FAbs(value)
  %9147 = fadd fast float %9146, %9122
  %9148 = fmul fast float %9146, %9138
  %9149 = fsub fast float %9123, %9148
  br label %9150

; <label>:9150                                    ; preds = %9144, %9139
  %9151 = phi float [ %9141, %9139 ], [ %9147, %9144 ]
  %9152 = phi float [ %9143, %9139 ], [ %9149, %9144 ]
  %9153 = fcmp fast olt float %9132, %8981
  %9154 = icmp slt i32 %9129, 3
  %9155 = and i1 %9154, %9153
  br i1 %9155, label %9121, label %9156

; <label>:9156                                    ; preds = %9150
  br label %9157

; <label>:9157                                    ; preds = %9156, %9114
  %9158 = phi float [ %8979, %9114 ], [ %9151, %9156 ]
  %9159 = phi float [ %8980, %9114 ], [ %9152, %9156 ]
  %9160 = fsub fast float %8895, %9158
  %9161 = select i1 %8897, float %9158, float %9160
  %9162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.f32 %9162, 0
  %9164 = extractvalue %dx.types.CBufRet.f32 %9162, 1
  %9165 = extractvalue %dx.types.CBufRet.f32 %9162, 2
  %9166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9167 = extractvalue %dx.types.CBufRet.f32 %9166, 0
  %9168 = extractvalue %dx.types.CBufRet.f32 %9166, 1
  %9169 = extractvalue %dx.types.CBufRet.f32 %9166, 2
  %9170 = extractvalue %dx.types.CBufRet.f32 %9166, 3
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 3
  %9173 = call float @dx.op.binary.f32(i32 36, float %9159, float %9172)  ; FMin(a,b)
  %9174 = fmul fast float %9170, %9161
  %9175 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9176 = fsub fast float %9167, %9163
  %9177 = fsub fast float %9168, %9164
  %9178 = fsub fast float %9169, %9165
  %9179 = fmul fast float %9175, %9176
  %9180 = fmul fast float %9175, %9177
  %9181 = fmul fast float %9175, %9178
  %9182 = fadd fast float %9179, %9163
  %9183 = fadd fast float %9180, %9164
  %9184 = fadd fast float %9181, %9165
  %9185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9186 = extractvalue %dx.types.CBufRet.f32 %9185, 0
  %9187 = extractvalue %dx.types.CBufRet.f32 %9185, 1
  %9188 = fadd fast float %9187, %9186
  %9189 = call float @dx.op.unary.f32(i32 7, float %9188)  ; Saturate(value)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9185, 2
  %9191 = extractvalue %dx.types.CBufRet.f32 %9185, 3
  %9192 = fadd fast float %9191, %9190
  %9193 = call float @dx.op.unary.f32(i32 7, float %9192)  ; Saturate(value)
  %9194 = fmul fast float %9189, %9173
  %9195 = fmul fast float %9194, %9193
  br label %9196

; <label>:9196                                    ; preds = %9157, %9076, %8911, %8893, %8891
  %9197 = phi float [ %8920, %8911 ], [ %9079, %9076 ], [ %9161, %9157 ], [ 0.000000e+00, %8891 ], [ 0.000000e+00, %8893 ]
  %9198 = phi float [ %8954, %8911 ], [ %9113, %9076 ], [ %9195, %9157 ], [ 0.000000e+00, %8891 ], [ 0.000000e+00, %8893 ]
  %9199 = phi float [ %8941, %8911 ], [ %9100, %9076 ], [ %9182, %9157 ], [ 0.000000e+00, %8891 ], [ 0.000000e+00, %8893 ]
  %9200 = phi float [ %8942, %8911 ], [ %9101, %9076 ], [ %9183, %9157 ], [ 0.000000e+00, %8891 ], [ 0.000000e+00, %8893 ]
  %9201 = phi float [ %8943, %8911 ], [ %9102, %9076 ], [ %9184, %9157 ], [ 0.000000e+00, %8891 ], [ 0.000000e+00, %8893 ]
  %9202 = fmul fast float %8834, %9198
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 2
  %9205 = fsub fast float %8841, %9204
  %9206 = fcmp fast olt float %9202, -2.000000e+01
  %9207 = call float @dx.op.unary.f32(i32 21, float %9202)  ; Exp(value)
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 2
  %9210 = extractvalue %dx.types.CBufRet.f32 %9208, 3
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9213 = fmul fast float %9210, %9205
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fsub fast float 1.000000e+00, %9214
  %9216 = fmul fast float %8826, 5.000000e-01
  %9217 = fadd fast float %9216, 5.000000e-01
  %9218 = call float @dx.op.unary.f32(i32 7, float %9217)  ; Saturate(value)
  %9219 = fsub fast float 1.000000e+00, %9218
  %9220 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9215)  ; FMax(a,b)
  %9221 = fdiv fast float %9219, %9220
  %9222 = fsub fast float %9205, %8783
  %9223 = call float @dx.op.unary.f32(i32 6, float %9222)  ; FAbs(value)
  %9224 = fmul fast float %9223, %9209
  %9225 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9226 = fsub fast float 1.000000e+00, %9224
  %9227 = fmul fast float %9226, %9225
  %9228 = fadd fast float %9227, %9224
  %9229 = fmul fast float %9212, %9205
  %9230 = call float @dx.op.unary.f32(i32 7, float %9229)  ; Saturate(value)
  %9231 = fsub fast float 1.000000e+00, %9228
  %9232 = fmul fast float %9231, %9230
  %9233 = fadd fast float %9232, %9228
  %9234 = call float @dx.op.unary.f32(i32 7, float %9233)  ; Saturate(value)
  %9235 = fadd fast float %9207, -1.000000e+00
  %9236 = select i1 %9206, float -1.000000e+00, float %9235
  %9237 = fmul fast float %9234, %9236
  %9238 = fadd fast float %9237, 1.000000e+00
  %9239 = fsub fast float -0.000000e+00, %9237
  %9240 = fmul fast float %9199, %9239
  %9241 = fmul fast float %9200, %9239
  %9242 = fmul fast float %9201, %9239
  br label %9243

; <label>:9243                                    ; preds = %9196, %8792
  %9244 = phi float [ %9197, %9196 ], [ 0.000000e+00, %8792 ]
  %9245 = phi float [ %9238, %9196 ], [ 1.000000e+00, %8792 ]
  %9246 = phi float [ %9240, %9196 ], [ 0.000000e+00, %8792 ]
  %9247 = phi float [ %9241, %9196 ], [ 0.000000e+00, %8792 ]
  %9248 = phi float [ %9242, %9196 ], [ 0.000000e+00, %8792 ]
  %9249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9249, 1
  %9251 = fsub fast float 1.000000e+00, %9245
  %9252 = fmul fast float %9251, %8827
  %9253 = fmul fast float %9252, %9250
  %9254 = fsub fast float %8827, %9253
  br i1 %8820, label %9255, label %9284, !dx.controlflow.hints !171

; <label>:9255                                    ; preds = %9243
  %9256 = fmul fast float %8828, %8817
  %9257 = fadd fast float %9256, %8818
  %9258 = call float @dx.op.unary.f32(i32 7, float %9257)  ; Saturate(value)
  %9259 = fmul fast float %8799, %9254
  %9260 = fsub fast float -0.000000e+00, %9259
  %9261 = fmul fast float %8800, %9254
  %9262 = fsub fast float -0.000000e+00, %9261
  %9263 = call float @dx.op.unary.f32(i32 21, float %9260)  ; Exp(value)
  %9264 = call float @dx.op.unary.f32(i32 21, float %9262)  ; Exp(value)
  %9265 = call float @dx.op.binary.f32(i32 35, float %8807, float %9263)  ; FMax(a,b)
  %9266 = call float @dx.op.binary.f32(i32 35, float %8807, float %9264)  ; FMax(a,b)
  %9267 = fsub fast float %9266, %9265
  %9268 = fmul fast float %9267, %9258
  %9269 = fadd fast float %9268, %9265
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = fsub fast float %8804, %8809
  %9272 = fsub fast float %8805, %8810
  %9273 = fsub fast float %8806, %8811
  %9274 = fmul fast float %9258, %9271
  %9275 = fmul fast float %9258, %9272
  %9276 = fmul fast float %9258, %9273
  %9277 = fadd fast float %9274, %8809
  %9278 = fadd fast float %9275, %8810
  %9279 = fadd fast float %9276, %8811
  %9280 = fsub fast float 1.000000e+00, %9270
  %9281 = fmul fast float %9280, %9277
  %9282 = fmul fast float %9280, %9278
  %9283 = fmul fast float %9280, %9279
  br label %9343

; <label>:9284                                    ; preds = %9243
  %9285 = fmul fast float %9254, %8816
  %9286 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9287 = fsub fast float 2.000000e+00, %9286
  %9288 = fmul fast float %9286, 9.921875e-01
  %9289 = fmul fast float %9288, %9287
  %9290 = fadd fast float %9289, 3.906250e-03
  %9291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9290, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9292 = extractvalue %dx.types.ResRet.f32 %9291, 0
  %9293 = fsub fast float %9286, %9292
  %9294 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9293)  ; FMax(a,b)
  %9295 = fmul fast float %8802, %8783
  %9296 = call float @dx.op.unary.f32(i32 6, float %9295)  ; FAbs(value)
  %9297 = fcmp fast ogt float %9296, 0x3EB0C6F7A0000000
  br i1 %9297, label %9298, label %9304, !dx.controlflow.hints !172

; <label>:9298                                    ; preds = %9284
  %9299 = fmul fast float %9295, 0xBFF7154760000000
  %9300 = call float @dx.op.unary.f32(i32 21, float %9299)  ; Exp(value)
  %9301 = fsub fast float 1.000000e+00, %9300
  %9302 = fdiv fast float %9301, %9295
  %9303 = fmul fast float %9302, %8812
  br label %9304

; <label>:9304                                    ; preds = %9298, %9284
  %9305 = phi float [ %9303, %9298 ], [ %8812, %9284 ]
  %9306 = fadd fast float %9305, %8814
  %9307 = fmul fast float %9306, %9294
  %9308 = fmul fast float %8799, %9307
  %9309 = fsub fast float -0.000000e+00, %9308
  %9310 = fmul fast float %8800, %9307
  %9311 = fsub fast float -0.000000e+00, %9310
  %9312 = fmul fast float %8801, %9307
  %9313 = fsub fast float -0.000000e+00, %9312
  %9314 = call float @dx.op.unary.f32(i32 21, float %9309)  ; Exp(value)
  %9315 = call float @dx.op.unary.f32(i32 21, float %9311)  ; Exp(value)
  %9316 = call float @dx.op.unary.f32(i32 21, float %9313)  ; Exp(value)
  %9317 = fmul fast float %8828, %8828
  %9318 = fadd fast float %9317, 1.000000e+00
  %9319 = fmul fast float %9318, 0x3FAE8EC8A0000000
  %9320 = fmul fast float %9319, %8809
  %9321 = fmul fast float %9319, %8810
  %9322 = fmul fast float %9319, %8811
  %9323 = fmul fast float %8828, %8807
  %9324 = fsub fast float 1.000000e+00, %9323
  %9325 = fmul fast float %8807, %8807
  %9326 = fsub fast float 1.000000e+00, %9325
  %9327 = fmul fast float %9326, 0x3FB45F3060000000
  %9328 = fmul fast float %9324, %9324
  %9329 = fdiv fast float 1.000000e+00, %9328
  %9330 = fmul fast float %9327, %9329
  %9331 = fmul fast float %9330, %8804
  %9332 = fmul fast float %9330, %8805
  %9333 = fmul fast float %9330, %8806
  %9334 = fadd fast float %9331, %9320
  %9335 = fadd fast float %9332, %9321
  %9336 = fadd fast float %9333, %9322
  %9337 = fsub fast float 1.000000e+00, %9314
  %9338 = fsub fast float 1.000000e+00, %9315
  %9339 = fsub fast float 1.000000e+00, %9316
  %9340 = fmul fast float %9334, %9337
  %9341 = fmul fast float %9335, %9338
  %9342 = fmul fast float %9336, %9339
  br label %9343

; <label>:9343                                    ; preds = %9304, %9255
  %9344 = phi float [ %9281, %9255 ], [ %9340, %9304 ]
  %9345 = phi float [ %9282, %9255 ], [ %9341, %9304 ]
  %9346 = phi float [ %9283, %9255 ], [ %9342, %9304 ]
  %9347 = phi float [ %9270, %9255 ], [ %9314, %9304 ]
  %9348 = phi float [ %9270, %9255 ], [ %9315, %9304 ]
  %9349 = phi float [ %9270, %9255 ], [ %9316, %9304 ]
  br i1 %8836, label %9350, label %9548, !dx.controlflow.hints !173

; <label>:9350                                    ; preds = %9343
  %9351 = extractvalue %dx.types.CBufRet.f32 %9249, 0
  %9352 = fmul fast float %9351, %9251
  %9353 = fsub fast float %9246, %9344
  %9354 = fsub fast float %9247, %9345
  %9355 = fsub fast float %9248, %9346
  %9356 = fmul fast float %9352, %9353
  %9357 = fmul fast float %9352, %9354
  %9358 = fmul fast float %9352, %9355
  %9359 = fadd fast float %9356, %9344
  %9360 = fadd fast float %9357, %9345
  %9361 = fadd fast float %9358, %9346
  %9362 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9347)  ; FMax(a,b)
  %9363 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9348)  ; FMax(a,b)
  %9364 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9349)  ; FMax(a,b)
  %9365 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9245)  ; FMax(a,b)
  %9366 = call float @dx.op.binary.f32(i32 35, float %9244, float %9254)  ; FMax(a,b)
  %9367 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9366)  ; FMax(a,b)
  %9368 = fdiv fast float %9244, %9367
  %9369 = call float @dx.op.unary.f32(i32 7, float %9368)  ; Saturate(value)
  %9370 = fdiv fast float %9254, %9367
  %9371 = call float @dx.op.unary.f32(i32 7, float %9370)  ; Saturate(value)
  %9372 = fcmp fast une float %9365, 1.000000e+00
  br i1 %9372, label %9373, label %9386, !dx.controlflow.hints !174

; <label>:9373                                    ; preds = %9350
  %9374 = call float @dx.op.unary.f32(i32 23, float %9365)  ; Log(value)
  %9375 = fmul fast float %9374, 0x3FE62E4300000000
  %9376 = fmul fast float %9246, %9375
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = fmul fast float %9247, %9375
  %9379 = fsub fast float -0.000000e+00, %9378
  %9380 = fmul fast float %9248, %9375
  %9381 = fsub fast float -0.000000e+00, %9380
  %9382 = fsub fast float 1.000000e+00, %9365
  %9383 = fdiv fast float %9377, %9382
  %9384 = fdiv fast float %9379, %9382
  %9385 = fdiv fast float %9381, %9382
  br label %9386

; <label>:9386                                    ; preds = %9373, %9350
  %9387 = phi float [ %9383, %9373 ], [ %9246, %9350 ]
  %9388 = phi float [ %9384, %9373 ], [ %9247, %9350 ]
  %9389 = phi float [ %9385, %9373 ], [ %9248, %9350 ]
  %9390 = phi float [ %9375, %9373 ], [ 0.000000e+00, %9350 ]
  %9391 = fcmp fast une float %9362, 1.000000e+00
  br i1 %9391, label %9392, label %9399, !dx.controlflow.hints !175

; <label>:9392                                    ; preds = %9386
  %9393 = call float @dx.op.unary.f32(i32 23, float %9362)  ; Log(value)
  %9394 = fmul fast float %9393, 0x3FE62E4300000000
  %9395 = fmul fast float %9359, %9394
  %9396 = fsub fast float -0.000000e+00, %9395
  %9397 = fsub fast float 1.000000e+00, %9362
  %9398 = fdiv fast float %9396, %9397
  br label %9399

; <label>:9399                                    ; preds = %9392, %9386
  %9400 = phi float [ %9398, %9392 ], [ %9359, %9386 ]
  %9401 = phi float [ %9394, %9392 ], [ 0.000000e+00, %9386 ]
  %9402 = fcmp fast une float %9363, 1.000000e+00
  br i1 %9402, label %9403, label %9410, !dx.controlflow.hints !175

; <label>:9403                                    ; preds = %9399
  %9404 = call float @dx.op.unary.f32(i32 23, float %9363)  ; Log(value)
  %9405 = fmul fast float %9404, 0x3FE62E4300000000
  %9406 = fmul fast float %9360, %9405
  %9407 = fsub fast float -0.000000e+00, %9406
  %9408 = fsub fast float 1.000000e+00, %9363
  %9409 = fdiv fast float %9407, %9408
  br label %9410

; <label>:9410                                    ; preds = %9403, %9399
  %9411 = phi float [ %9409, %9403 ], [ %9360, %9399 ]
  %9412 = phi float [ %9405, %9403 ], [ 0.000000e+00, %9399 ]
  %9413 = fcmp fast une float %9364, 1.000000e+00
  br i1 %9413, label %9414, label %9421, !dx.controlflow.hints !175

; <label>:9414                                    ; preds = %9410
  %9415 = call float @dx.op.unary.f32(i32 23, float %9364)  ; Log(value)
  %9416 = fmul fast float %9415, 0x3FE62E4300000000
  %9417 = fmul fast float %9361, %9416
  %9418 = fsub fast float -0.000000e+00, %9417
  %9419 = fsub fast float 1.000000e+00, %9364
  %9420 = fdiv fast float %9418, %9419
  br label %9421

; <label>:9421                                    ; preds = %9414, %9410
  %9422 = phi float [ %9420, %9414 ], [ %9361, %9410 ]
  %9423 = phi float [ %9416, %9414 ], [ 0.000000e+00, %9410 ]
  %9424 = fmul fast float %9387, %9371
  %9425 = fmul fast float %9388, %9371
  %9426 = fmul fast float %9389, %9371
  %9427 = fmul fast float %9390, %9371
  %9428 = fmul fast float %9400, %9369
  %9429 = fmul fast float %9411, %9369
  %9430 = fmul fast float %9422, %9369
  %9431 = fmul fast float %9401, %9369
  %9432 = fmul fast float %9412, %9369
  %9433 = fmul fast float %9423, %9369
  %9434 = fadd fast float %9428, %9424
  %9435 = fadd fast float %9429, %9425
  %9436 = fadd fast float %9430, %9426
  %9437 = fadd fast float %9431, %9427
  %9438 = fadd fast float %9432, %9427
  %9439 = fadd fast float %9433, %9427
  %9440 = fcmp fast une float %9437, 0.000000e+00
  br i1 %9440, label %9441, label %9448, !dx.controlflow.hints !176

; <label>:9441                                    ; preds = %9421
  %9442 = fmul fast float %9437, 0x3FF7154760000000
  %9443 = call float @dx.op.unary.f32(i32 21, float %9442)  ; Exp(value)
  %9444 = fsub fast float 1.000000e+00, %9443
  %9445 = fmul fast float %9434, %9444
  %9446 = fsub fast float -0.000000e+00, %9445
  %9447 = fdiv fast float %9446, %9437
  br label %9448

; <label>:9448                                    ; preds = %9441, %9421
  %9449 = phi float [ %9443, %9441 ], [ 1.000000e+00, %9421 ]
  %9450 = phi float [ %9447, %9441 ], [ %9434, %9421 ]
  %9451 = fcmp fast une float %9438, 0.000000e+00
  br i1 %9451, label %9452, label %9459, !dx.controlflow.hints !176

; <label>:9452                                    ; preds = %9448
  %9453 = fmul fast float %9438, 0x3FF7154760000000
  %9454 = call float @dx.op.unary.f32(i32 21, float %9453)  ; Exp(value)
  %9455 = fsub fast float 1.000000e+00, %9454
  %9456 = fmul fast float %9435, %9455
  %9457 = fsub fast float -0.000000e+00, %9456
  %9458 = fdiv fast float %9457, %9438
  br label %9459

; <label>:9459                                    ; preds = %9452, %9448
  %9460 = phi float [ %9454, %9452 ], [ 1.000000e+00, %9448 ]
  %9461 = phi float [ %9458, %9452 ], [ %9435, %9448 ]
  %9462 = fcmp fast une float %9439, 0.000000e+00
  br i1 %9462, label %9463, label %9470, !dx.controlflow.hints !176

; <label>:9463                                    ; preds = %9459
  %9464 = fmul fast float %9439, 0x3FF7154760000000
  %9465 = call float @dx.op.unary.f32(i32 21, float %9464)  ; Exp(value)
  %9466 = fsub fast float 1.000000e+00, %9465
  %9467 = fmul fast float %9436, %9466
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = fdiv fast float %9468, %9439
  br label %9470

; <label>:9470                                    ; preds = %9463, %9459
  %9471 = phi float [ %9465, %9463 ], [ 1.000000e+00, %9459 ]
  %9472 = phi float [ %9469, %9463 ], [ %9436, %9459 ]
  %9473 = fcmp fast ogt float %9369, %9371
  br i1 %9473, label %9474, label %9494

; <label>:9474                                    ; preds = %9470
  %9475 = fsub fast float 1.000000e+00, %9371
  %9476 = fmul fast float %9387, %9475
  %9477 = fmul fast float %9388, %9475
  %9478 = fmul fast float %9389, %9475
  %9479 = fmul fast float %9390, %9475
  %9480 = fcmp fast une float %9479, 0.000000e+00
  br i1 %9480, label %9481, label %9532, !dx.controlflow.hints !177

; <label>:9481                                    ; preds = %9474
  %9482 = fmul fast float %9479, 0x3FF7154760000000
  %9483 = call float @dx.op.unary.f32(i32 21, float %9482)  ; Exp(value)
  %9484 = fsub fast float 1.000000e+00, %9483
  %9485 = fmul fast float %9476, %9484
  %9486 = fsub fast float -0.000000e+00, %9485
  %9487 = fmul fast float %9477, %9484
  %9488 = fsub fast float -0.000000e+00, %9487
  %9489 = fmul fast float %9478, %9484
  %9490 = fsub fast float -0.000000e+00, %9489
  %9491 = fdiv fast float %9486, %9479
  %9492 = fdiv fast float %9488, %9479
  %9493 = fdiv fast float %9490, %9479
  br label %9532

; <label>:9494                                    ; preds = %9470
  %9495 = fsub fast float 1.000000e+00, %9369
  %9496 = fmul fast float %9400, %9495
  %9497 = fmul fast float %9411, %9495
  %9498 = fmul fast float %9422, %9495
  %9499 = fmul fast float %9401, %9495
  %9500 = fmul fast float %9412, %9495
  %9501 = fmul fast float %9423, %9495
  %9502 = fcmp fast une float %9499, 0.000000e+00
  br i1 %9502, label %9503, label %9510, !dx.controlflow.hints !176

; <label>:9503                                    ; preds = %9494
  %9504 = fmul fast float %9499, 0x3FF7154760000000
  %9505 = call float @dx.op.unary.f32(i32 21, float %9504)  ; Exp(value)
  %9506 = fsub fast float 1.000000e+00, %9505
  %9507 = fmul fast float %9496, %9506
  %9508 = fsub fast float -0.000000e+00, %9507
  %9509 = fdiv fast float %9508, %9499
  br label %9510

; <label>:9510                                    ; preds = %9503, %9494
  %9511 = phi float [ %9509, %9503 ], [ %9496, %9494 ]
  %9512 = phi float [ %9505, %9503 ], [ 1.000000e+00, %9494 ]
  %9513 = fcmp fast une float %9500, 0.000000e+00
  br i1 %9513, label %9514, label %9521, !dx.controlflow.hints !176

; <label>:9514                                    ; preds = %9510
  %9515 = fmul fast float %9500, 0x3FF7154760000000
  %9516 = call float @dx.op.unary.f32(i32 21, float %9515)  ; Exp(value)
  %9517 = fsub fast float 1.000000e+00, %9516
  %9518 = fmul fast float %9497, %9517
  %9519 = fsub fast float -0.000000e+00, %9518
  %9520 = fdiv fast float %9519, %9500
  br label %9521

; <label>:9521                                    ; preds = %9514, %9510
  %9522 = phi float [ %9520, %9514 ], [ %9497, %9510 ]
  %9523 = phi float [ %9516, %9514 ], [ 1.000000e+00, %9510 ]
  %9524 = fcmp fast une float %9501, 0.000000e+00
  br i1 %9524, label %9525, label %9532, !dx.controlflow.hints !176

; <label>:9525                                    ; preds = %9521
  %9526 = fmul fast float %9501, 0x3FF7154760000000
  %9527 = call float @dx.op.unary.f32(i32 21, float %9526)  ; Exp(value)
  %9528 = fsub fast float 1.000000e+00, %9527
  %9529 = fmul fast float %9498, %9528
  %9530 = fsub fast float -0.000000e+00, %9529
  %9531 = fdiv fast float %9530, %9501
  br label %9532

; <label>:9532                                    ; preds = %9525, %9521, %9481, %9474
  %9533 = phi float [ %9531, %9525 ], [ %9493, %9481 ], [ %9478, %9474 ], [ %9498, %9521 ]
  %9534 = phi float [ %9522, %9525 ], [ %9492, %9481 ], [ %9477, %9474 ], [ %9522, %9521 ]
  %9535 = phi float [ %9511, %9525 ], [ %9491, %9481 ], [ %9476, %9474 ], [ %9511, %9521 ]
  %9536 = phi float [ %9527, %9525 ], [ %9483, %9481 ], [ 1.000000e+00, %9474 ], [ 1.000000e+00, %9521 ]
  %9537 = phi float [ %9523, %9525 ], [ %9483, %9481 ], [ 1.000000e+00, %9474 ], [ %9523, %9521 ]
  %9538 = phi float [ %9512, %9525 ], [ %9483, %9481 ], [ 1.000000e+00, %9474 ], [ %9512, %9521 ]
  %9539 = fmul fast float %9538, %9450
  %9540 = fmul fast float %9537, %9461
  %9541 = fmul fast float %9536, %9472
  %9542 = fadd fast float %9539, %9535
  %9543 = fadd fast float %9540, %9534
  %9544 = fadd fast float %9541, %9533
  %9545 = fmul fast float %9538, %9449
  %9546 = fmul fast float %9537, %9460
  %9547 = fmul fast float %9536, %9471
  br label %9548

; <label>:9548                                    ; preds = %9532, %9343
  %9549 = phi float [ %9547, %9532 ], [ %9349, %9343 ]
  %9550 = phi float [ %9546, %9532 ], [ %9348, %9343 ]
  %9551 = phi float [ %9545, %9532 ], [ %9347, %9343 ]
  %9552 = phi float [ %9544, %9532 ], [ %9346, %9343 ]
  %9553 = phi float [ %9543, %9532 ], [ %9345, %9343 ]
  %9554 = phi float [ %9542, %9532 ], [ %9344, %9343 ]
  %9555 = fmul fast float %9554, %8508
  %9556 = fmul fast float %9553, %8509
  %9557 = fmul fast float %9552, %8510
  %9558 = fmul fast float %9551, %8791
  %9559 = call float @dx.op.dot3.f32(i32 55, float %9551, float %9550, float %9549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9560 = call float @dx.op.dot3.f32(i32 55, float %9555, float %9556, float %9557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9561 = select i1 %261, float %9559, float %9551
  %9562 = select i1 %261, float %9559, float %9550
  %9563 = select i1 %261, float 1.000000e+00, float %9549
  %9564 = select i1 %261, float %9560, float %9555
  %9565 = select i1 %261, float 0.000000e+00, float %9556
  %9566 = select i1 %261, float 0.000000e+00, float %9557
  %9567 = fmul fast float %9561, %8785
  %9568 = fmul fast float %9562, %8786
  %9569 = fmul fast float %9563, %8787
  %9570 = fadd fast float %9567, %9564
  %9571 = fadd fast float %9568, %9565
  %9572 = fadd fast float %9566, %9569
  %9573 = fmul fast float %9561, %8788
  %9574 = fmul fast float %9562, %8789
  %9575 = fmul fast float %9563, %8790
  %9576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.i32 %9576, 0
  %9578 = icmp eq i32 %9577, 0
  br i1 %9578, label %9946, label %9579, !dx.controlflow.hints !178

; <label>:9579                                    ; preds = %9548
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 2
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 3
  %9583 = fmul fast float %9581, %104
  %9584 = fmul fast float %9582, %105
  %9585 = fmul fast float %9583, 2.000000e+00
  %9586 = fmul fast float %9584, 2.000000e+00
  %9587 = fsub fast float 1.000000e+00, %9585
  %9588 = fsub fast float 1.000000e+00, %9586
  %9589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9589, 0
  %9591 = extractvalue %dx.types.CBufRet.f32 %9589, 1
  %9592 = extractvalue %dx.types.CBufRet.f32 %9589, 2
  %9593 = fmul fast float %9587, %9590
  %9594 = fmul fast float %9587, %9591
  %9595 = fmul fast float %9587, %9592
  %9596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.f32 %9596, 0
  %9598 = extractvalue %dx.types.CBufRet.f32 %9596, 1
  %9599 = extractvalue %dx.types.CBufRet.f32 %9596, 2
  %9600 = fmul fast float %9588, %9597
  %9601 = fmul fast float %9588, %9598
  %9602 = fmul fast float %9588, %9599
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.CBufRet.f32 %9603, 2
  %9607 = fadd fast float %9600, %9604
  %9608 = fadd fast float %9607, %9593
  %9609 = fadd fast float %9601, %9605
  %9610 = fadd fast float %9609, %9594
  %9611 = fadd fast float %9602, %9606
  %9612 = fadd fast float %9611, %9595
  %9613 = fmul fast float %9608, %8784
  %9614 = fmul fast float %9610, %8784
  %9615 = fmul fast float %9612, %8784
  %9616 = fmul fast float %9613, %9613
  %9617 = fmul fast float %9614, %9614
  %9618 = fadd fast float %9616, %9617
  %9619 = fmul fast float %9615, %9615
  %9620 = fadd fast float %9618, %9619
  %9621 = call float @dx.op.unary.f32(i32 24, float %9620)  ; Sqrt(value)
  %9622 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %9623 = fsub fast float %9621, %9622
  %9624 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %9625 = fmul fast float %9623, %9624
  %9626 = call float @dx.op.unary.f32(i32 7, float %9625)  ; Saturate(value)
  %9627 = fadd fast float %9626, -5.000000e-01
  %9628 = fmul fast float %9627, 2.000000e+00
  %9629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.f32 %9629, 2
  %9631 = call float @dx.op.binary.f32(i32 36, float %9630, float %9628)  ; FMin(a,b)
  %9632 = fsub fast float -0.000000e+00, %9630
  %9633 = fcmp fast ogt float %9631, %9632
  br i1 %9633, label %9634, label %9946, !dx.controlflow.hints !179

; <label>:9634                                    ; preds = %9579
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9637 = fcmp fast ogt float %9636, 0.000000e+00
  br i1 %9637, label %9638, label %9713, !dx.controlflow.hints !180

; <label>:9638                                    ; preds = %9634
  %9639 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9640 = extractvalue %dx.types.Dimensions %9639, 0
  %9641 = sitofp i32 %9640 to float
  %9642 = extractvalue %dx.types.Dimensions %9639, 1
  %9643 = sitofp i32 %9642 to float
  %9644 = fmul fast float %9583, %9641
  %9645 = fmul fast float %9584, %9643
  %9646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9647 = extractvalue %dx.types.CBufRet.f32 %9646, 1
  %9648 = fsub fast float -0.000000e+00, %9647
  %9649 = fptoui float %9648 to i32
  %9650 = fptoui float %9644 to i32
  %9651 = fptoui float %9645 to i32
  %9652 = and i32 %9649, 31
  %9653 = lshr i32 %9650, %9652
  %9654 = lshr i32 %9651, %9652
  %9655 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9649, i32 %9653, i32 %9654, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9656 = extractvalue %dx.types.ResRet.f32 %9655, 0
  %9657 = fcmp fast olt float %9656, -1.000000e+00
  %9658 = fcmp fast ogt float %9656, -1.000000e+00
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 1
  %9661 = select i1 %9658, float %9660, float 1.000000e+00
  %9662 = fadd fast float %9656, 1.000000e+00
  %9663 = fmul fast float %9661, %9662
  %9664 = call float @dx.op.unary.f32(i32 6, float %9663)  ; FAbs(value)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9659, 3
  %9666 = fcmp fast oge float %9664, %9665
  %9667 = select i1 %9666, float 0x4197782600000000, float %9664
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.f32 %9668, 1
  %9671 = extractvalue %dx.types.CBufRet.f32 %9668, 2
  %9672 = select i1 %9657, float %9669, float %9590
  %9673 = select i1 %9657, float %9670, float %9591
  %9674 = select i1 %9657, float %9671, float %9592
  %9675 = fmul fast float %9672, %9587
  %9676 = fmul fast float %9673, %9587
  %9677 = fmul fast float %9674, %9587
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 0
  %9680 = extractvalue %dx.types.CBufRet.f32 %9678, 1
  %9681 = extractvalue %dx.types.CBufRet.f32 %9678, 2
  %9682 = select i1 %9657, float %9679, float %9597
  %9683 = select i1 %9657, float %9680, float %9598
  %9684 = select i1 %9657, float %9681, float %9599
  %9685 = fmul fast float %9682, %9588
  %9686 = fmul fast float %9683, %9588
  %9687 = fmul fast float %9684, %9588
  %9688 = fadd fast float %9685, %9675
  %9689 = fadd fast float %9686, %9676
  %9690 = fadd fast float %9687, %9677
  %9691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9692 = extractvalue %dx.types.CBufRet.f32 %9691, 0
  %9693 = extractvalue %dx.types.CBufRet.f32 %9691, 1
  %9694 = extractvalue %dx.types.CBufRet.f32 %9691, 2
  %9695 = select i1 %9657, float %9692, float %9604
  %9696 = select i1 %9657, float %9693, float %9605
  %9697 = select i1 %9657, float %9694, float %9606
  %9698 = fadd fast float %9688, %9695
  %9699 = fadd fast float %9689, %9696
  %9700 = fadd fast float %9690, %9697
  %9701 = fmul fast float %9698, %9667
  %9702 = fmul fast float %9699, %9667
  %9703 = fmul fast float %9700, %9667
  %9704 = fmul fast float %9701, %9701
  %9705 = fmul fast float %9702, %9702
  %9706 = fadd fast float %9704, %9705
  %9707 = fmul fast float %9703, %9703
  %9708 = fadd fast float %9706, %9707
  %9709 = call float @dx.op.unary.f32(i32 24, float %9708)  ; Sqrt(value)
  %9710 = fsub fast float %9709, %9622
  %9711 = fmul fast float %9710, %9624
  %9712 = call float @dx.op.unary.f32(i32 7, float %9711)  ; Saturate(value)
  br label %9713

; <label>:9713                                    ; preds = %9638, %9634
  %9714 = phi float [ %9712, %9638 ], [ 1.000000e+00, %9634 ]
  %9715 = fmul fast float %9631, 5.000000e-01
  %9716 = fadd fast float %9715, 5.000000e-01
  %9717 = call float @dx.op.unary.f32(i32 22, float %9716)  ; Frc(value)
  %9718 = call float @dx.op.unary.f32(i32 27, float %9717)  ; Round_ni(value)
  %9719 = call float @dx.op.unary.f32(i32 22, float %9717)  ; Frc(value)
  %9720 = fmul fast float %9719, 2.000000e+00
  %9721 = fadd fast float %9720, -1.000000e+00
  %9722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9583, float %9584, float %9718, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9723 = extractvalue %dx.types.ResRet.f32 %9722, 0
  %9724 = extractvalue %dx.types.ResRet.f32 %9722, 1
  %9725 = extractvalue %dx.types.ResRet.f32 %9722, 2
  %9726 = extractvalue %dx.types.ResRet.f32 %9722, 3
  %9727 = fadd fast float %9723, -5.000000e-01
  %9728 = fadd fast float %9725, -5.000000e-01
  %9729 = fmul fast float %9727, 0xBFD5555560000000
  %9730 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9728, float %9729)  ; FMad(a,b,c)
  %9731 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9724, float 0.000000e+00)  ; FMad(a,b,c)
  %9732 = fadd fast float %9731, %9726
  %9733 = fmul fast float %9727, -7.500000e-01
  %9734 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9728, float %9733)  ; FMad(a,b,c)
  %9735 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9724, float 0.000000e+00)  ; FMad(a,b,c)
  %9736 = fadd fast float %9735, %9726
  %9737 = call float @dx.op.binary.f32(i32 35, float %9730, float -1.000000e+00)  ; FMax(a,b)
  %9738 = call float @dx.op.binary.f32(i32 35, float %9732, float -1.000000e+00)  ; FMax(a,b)
  %9739 = call float @dx.op.binary.f32(i32 35, float %9734, float -1.000000e+00)  ; FMax(a,b)
  %9740 = call float @dx.op.binary.f32(i32 35, float %9736, float -1.000000e+00)  ; FMax(a,b)
  %9741 = call float @dx.op.binary.f32(i32 36, float %9737, float 1.000000e+00)  ; FMin(a,b)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9738, float 1.000000e+00)  ; FMin(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9739, float 1.000000e+00)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 36, float %9740, float 1.000000e+00)  ; FMin(a,b)
  %9745 = fcmp fast olt float %9741, 0x3FEFFF8020000000
  br i1 %9745, label %9746, label %9861, !dx.controlflow.hints !181

; <label>:9746                                    ; preds = %9713
  %9747 = extractvalue %dx.types.CBufRet.f32 %9629, 3
  %9748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9749 = extractvalue %dx.types.CBufRet.f32 %9748, 0
  %9750 = extractvalue %dx.types.CBufRet.f32 %9748, 1
  %9751 = extractvalue %dx.types.CBufRet.f32 %9748, 2
  %9752 = extractvalue %dx.types.CBufRet.f32 %9748, 3
  %9753 = fsub fast float %9749, %9741
  %9754 = fsub fast float %9750, %9742
  %9755 = fsub fast float %9751, %9743
  %9756 = fsub fast float %9752, %9744
  %9757 = fmul fast float %9753, %9747
  %9758 = fmul fast float %9754, %9747
  %9759 = fmul fast float %9755, %9747
  %9760 = fmul fast float %9756, %9747
  %9761 = fadd fast float %9757, %9741
  %9762 = fadd fast float %9758, %9742
  %9763 = fsub fast float -0.000000e+00, %9762
  %9764 = fadd fast float %9759, %9743
  %9765 = fadd fast float %9760, %9744
  %9766 = fmul fast float %9761, %9761
  %9767 = fsub fast float %9762, %9766
  %9768 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9767)  ; FMax(a,b)
  %9769 = fdiv fast float 1.000000e+00, %9768
  %9770 = fmul fast float %9762, %9761
  %9771 = fsub fast float %9764, %9770
  %9772 = fsub fast float %9721, %9761
  %9773 = fmul fast float %9721, %9721
  %9774 = fsub fast float %9773, %9762
  %9775 = fmul fast float %9772, %9769
  %9776 = fmul fast float %9775, %9771
  %9777 = fsub fast float %9774, %9776
  %9778 = fmul fast float %9762, %9762
  %9779 = fsub fast float %9765, %9778
  %9780 = fmul fast float %9771, %9771
  %9781 = fmul fast float %9780, %9769
  %9782 = fsub fast float %9779, %9781
  %9783 = fdiv fast float %9777, %9782
  %9784 = fmul fast float %9771, %9783
  %9785 = fsub fast float %9772, %9784
  %9786 = fmul fast float %9785, %9769
  %9787 = fmul fast float %9786, %9761
  %9788 = fsub fast float 1.000000e+00, %9787
  %9789 = fmul fast float %9762, %9783
  %9790 = fsub fast float %9788, %9789
  %9791 = fmul fast float %9786, %9786
  %9792 = fmul fast float %9783, 4.000000e+00
  %9793 = fmul fast float %9792, %9790
  %9794 = fsub fast float %9791, %9793
  %9795 = call float @dx.op.unary.f32(i32 24, float %9794)  ; Sqrt(value)
  %9796 = fcmp fast oge float %9786, 0.000000e+00
  %9797 = fsub fast float -0.000000e+00, %9795
  %9798 = select i1 %9796, float %9797, float %9795
  %9799 = fsub fast float %9798, %9786
  %9800 = fdiv fast float %9799, %9783
  %9801 = fdiv fast float %9790, %9799
  %9802 = fmul fast float %9800, 5.000000e-01
  %9803 = fmul fast float %9801, 2.000000e+00
  %9804 = select i1 %9796, float %9802, float %9803
  %9805 = select i1 %9796, float %9803, float %9802
  %9806 = call float @dx.op.binary.f32(i32 35, float %9804, float %9805)  ; FMax(a,b)
  %9807 = call float @dx.op.binary.f32(i32 36, float %9804, float %9805)  ; FMin(a,b)
  %9808 = fcmp fast ogt float %9721, %9807
  br i1 %9808, label %9809, label %9819

; <label>:9809                                    ; preds = %9746
  %9810 = fsub fast float %9721, %9807
  %9811 = fsub fast float %9806, %9807
  %9812 = fmul fast float %9810, %9811
  %9813 = fmul fast float %9806, %9721
  %9814 = fadd fast float %9806, %9721
  %9815 = fmul fast float %9814, %9761
  %9816 = fadd fast float %9813, %9762
  %9817 = fsub fast float %9816, %9815
  %9818 = fdiv fast float %9817, %9812
  br label %9819

; <label>:9819                                    ; preds = %9809, %9746
  %9820 = phi float [ %9818, %9809 ], [ 0.000000e+00, %9746 ]
  %9821 = fcmp fast ogt float %9721, %9806
  %9822 = fsub fast float %9721, %9806
  br i1 %9821, label %9823, label %9833

; <label>:9823                                    ; preds = %9819
  %9824 = fsub fast float %9806, %9807
  %9825 = fmul fast float %9824, %9822
  %9826 = fmul fast float %9807, %9721
  %9827 = fadd fast float %9807, %9721
  %9828 = fmul fast float %9827, %9761
  %9829 = fsub fast float %9763, %9826
  %9830 = fadd fast float %9829, %9828
  %9831 = fdiv fast float %9830, %9825
  %9832 = fadd fast float %9831, %9820
  br label %9833

; <label>:9833                                    ; preds = %9823, %9819
  %9834 = phi float [ %9832, %9823 ], [ %9820, %9819 ]
  %9835 = fsub fast float %9721, %9807
  %9836 = fmul fast float %9835, %9822
  %9837 = fmul fast float %9807, %9806
  %9838 = fadd fast float %9807, %9806
  %9839 = fmul fast float %9838, %9761
  %9840 = fadd fast float %9837, %9762
  %9841 = fsub fast float %9840, %9839
  %9842 = fdiv fast float %9841, %9836
  %9843 = call float @dx.op.unary.f32(i32 7, float %9834)  ; Saturate(value)
  %9844 = fcmp fast oeq float %8512, 0.000000e+00
  %9845 = extractvalue %dx.types.CBufRet.f32 %9629, 0
  %9846 = fcmp fast oeq float %9845, 0.000000e+00
  %9847 = or i1 %9844, %9846
  %9848 = fmul fast float %9845, 2.000000e+00
  %9849 = fadd fast float %9630, %9631
  %9850 = fdiv fast float %9849, %9848
  %9851 = call float @dx.op.unary.f32(i32 7, float %9850)  ; Saturate(value)
  %9852 = fmul fast float %9851, 2.000000e+00
  %9853 = fsub fast float 3.000000e+00, %9852
  %9854 = fmul fast float %9851, %9851
  %9855 = fmul fast float %9854, %9853
  %9856 = select i1 %9847, float 1.000000e+00, float %9855
  %9857 = fmul fast float %9842, %8512
  %9858 = fadd fast float %9843, %9857
  %9859 = call float @dx.op.unary.f32(i32 7, float %9858)  ; Saturate(value)
  %9860 = fmul fast float %9856, %9859
  br label %9861

; <label>:9861                                    ; preds = %9833, %9713
  %9862 = phi float [ %9860, %9833 ], [ 0.000000e+00, %9713 ]
  %9863 = fsub fast float 1.000000e+00, %9862
  %9864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9583, float %9584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9865 = extractvalue %dx.types.ResRet.f32 %9864, 0
  %9866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.i32 %9866, 2
  %9868 = icmp eq i32 %9867, 0
  br i1 %9868, label %9874, label %9869

; <label>:9869                                    ; preds = %9861
  %9870 = call float @dx.op.unary.f32(i32 7, float %9862)  ; Saturate(value)
  %9871 = fadd fast float %9865, -1.000000e+00
  %9872 = fmul fast float %9870, %9871
  %9873 = fadd fast float %9872, 1.000000e+00
  br label %9874

; <label>:9874                                    ; preds = %9869, %9861
  %9875 = phi float [ %9873, %9869 ], [ %9863, %9861 ]
  br i1 %9637, label %9876, label %9894

; <label>:9876                                    ; preds = %9874
  %9877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9878 = extractvalue %dx.types.CBufRet.f32 %9877, 1
  %9879 = fsub fast float %9714, %9878
  %9880 = call float @dx.op.unary.f32(i32 7, float %9879)  ; Saturate(value)
  %9881 = fsub fast float %9714, %9636
  %9882 = call float @dx.op.unary.f32(i32 7, float %9881)  ; Saturate(value)
  %9883 = fsub fast float %9880, %9882
  %9884 = fsub fast float %9716, %9882
  %9885 = fdiv fast float %9884, %9883
  %9886 = call float @dx.op.unary.f32(i32 7, float %9885)  ; Saturate(value)
  %9887 = fmul fast float %9886, 2.000000e+00
  %9888 = fsub fast float 3.000000e+00, %9887
  %9889 = fsub fast float %9865, %9875
  %9890 = fmul fast float %9886, %9886
  %9891 = fmul fast float %9890, %9889
  %9892 = fmul fast float %9891, %9888
  %9893 = fadd fast float %9892, %9875
  br label %9894

; <label>:9894                                    ; preds = %9876, %9874
  %9895 = phi float [ %9893, %9876 ], [ %9875, %9874 ]
  %9896 = call float @dx.op.binary.f32(i32 35, float %9865, float %9895)  ; FMax(a,b)
  %9897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9898 = extractvalue %dx.types.CBufRet.i32 %9897, 2
  %9899 = and i32 %9898, 1
  %9900 = icmp eq i32 %9899, 0
  %9901 = fcmp fast une float %9896, 1.000000e+00
  %9902 = and i1 %9901, %9900
  br i1 %9902, label %9903, label %9922

; <label>:9903                                    ; preds = %9894
  %9904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9583, float %9584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9905 = extractvalue %dx.types.ResRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.ResRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.ResRet.f32 %9904, 2
  %9908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9909 = extractvalue %dx.types.CBufRet.f32 %9908, 1
  %9910 = fmul fast float %9909, %9905
  %9911 = fmul fast float %9909, %9906
  %9912 = fmul fast float %9909, %9907
  %9913 = fcmp fast ogt float %9865, 0x3FEFFF2E40000000
  %9914 = fsub fast float 1.000000e+00, %9896
  %9915 = fsub fast float 1.000000e+00, %9865
  %9916 = fdiv fast float %9914, %9915
  %9917 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  %9918 = select i1 %9913, float 0.000000e+00, float %9917
  %9919 = fmul fast float %9910, %9918
  %9920 = fmul fast float %9911, %9918
  %9921 = fmul fast float %9912, %9918
  br label %9922

; <label>:9922                                    ; preds = %9903, %9894
  %9923 = phi float [ 0.000000e+00, %9894 ], [ %9919, %9903 ]
  %9924 = phi float [ 0.000000e+00, %9894 ], [ %9920, %9903 ]
  %9925 = phi float [ 0.000000e+00, %9894 ], [ %9921, %9903 ]
  %9926 = fmul fast float %9923, %8508
  %9927 = fmul fast float %9924, %8509
  %9928 = fmul fast float %9925, %8510
  %9929 = fmul fast float %9896, %9558
  %9930 = call float @dx.op.dot3.f32(i32 55, float %9896, float %9896, float %9896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9931 = call float @dx.op.dot3.f32(i32 55, float %9926, float %9927, float %9928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9932 = select i1 %261, float %9930, float %9896
  %9933 = select i1 %261, float 1.000000e+00, float %9896
  %9934 = select i1 %261, float %9931, float %9926
  %9935 = select i1 %261, float 0.000000e+00, float %9927
  %9936 = select i1 %261, float 0.000000e+00, float %9928
  %9937 = fmul fast float %9932, %9570
  %9938 = fmul fast float %9932, %9571
  %9939 = fmul fast float %9933, %9572
  %9940 = fadd fast float %9937, %9934
  %9941 = fadd fast float %9938, %9935
  %9942 = fadd fast float %9936, %9939
  %9943 = fmul fast float %9932, %9573
  %9944 = fmul fast float %9932, %9574
  %9945 = fmul fast float %9933, %9575
  br label %9946

; <label>:9946                                    ; preds = %9922, %9579, %9548, %8780
  %9947 = phi float [ %8785, %8780 ], [ %9570, %9548 ], [ %9940, %9922 ], [ %9570, %9579 ]
  %9948 = phi float [ %8786, %8780 ], [ %9571, %9548 ], [ %9941, %9922 ], [ %9571, %9579 ]
  %9949 = phi float [ %8787, %8780 ], [ %9572, %9548 ], [ %9942, %9922 ], [ %9572, %9579 ]
  %9950 = phi float [ %8788, %8780 ], [ %9573, %9548 ], [ %9943, %9922 ], [ %9573, %9579 ]
  %9951 = phi float [ %8789, %8780 ], [ %9574, %9548 ], [ %9944, %9922 ], [ %9574, %9579 ]
  %9952 = phi float [ %8790, %8780 ], [ %9575, %9548 ], [ %9945, %9922 ], [ %9575, %9579 ]
  %9953 = phi float [ %8791, %8780 ], [ %9558, %9548 ], [ %9929, %9922 ], [ %9558, %9579 ]
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 2
  %9956 = extractvalue %dx.types.CBufRet.f32 %9954, 3
  %9957 = fmul fast float %9955, %104
  %9958 = fmul fast float %9956, %105
  %9959 = call float @dx.op.unary.f32(i32 7, float %9957)  ; Saturate(value)
  %9960 = call float @dx.op.unary.f32(i32 7, float %9958)  ; Saturate(value)
  %9961 = select i1 %8522, i32 2, i32 0
  %9962 = or i32 %9961, 1
  %9963 = uitofp i32 %9962 to float
  %9964 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9959, float %9960, float %9963, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9965 = extractvalue %dx.types.ResRet.f32 %9964, 0
  %9966 = extractvalue %dx.types.ResRet.f32 %9964, 1
  %9967 = extractvalue %dx.types.ResRet.f32 %9964, 2
  %9968 = extractvalue %dx.types.ResRet.f32 %9964, 3
  %9969 = add nuw nsw i32 %9961, 2
  %9970 = uitofp i32 %9969 to float
  %9971 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9959, float %9960, float %9970, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9972 = extractvalue %dx.types.ResRet.f32 %9971, 0
  %9973 = extractvalue %dx.types.ResRet.f32 %9971, 1
  %9974 = extractvalue %dx.types.ResRet.f32 %9971, 2
  %9975 = extractvalue %dx.types.ResRet.f32 %9971, 3
  %9976 = call float @dx.op.binary.f32(i32 35, float %9966, float %9967)  ; FMax(a,b)
  %9977 = call float @dx.op.binary.f32(i32 35, float %9965, float %9976)  ; FMax(a,b)
  %9978 = call float @dx.op.binary.f32(i32 35, float %9977, float %9968)  ; FMax(a,b)
  %9979 = call float @dx.op.binary.f32(i32 36, float %9973, float %9974)  ; FMin(a,b)
  %9980 = call float @dx.op.binary.f32(i32 36, float %9972, float %9979)  ; FMin(a,b)
  %9981 = call float @dx.op.binary.f32(i32 36, float %9980, float %9975)  ; FMin(a,b)
  %9982 = fmul fast float %9978, 2.550000e+02
  %9983 = fadd fast float %9982, 0x3F70101020000000
  %9984 = fptoui float %9983 to i32
  %9985 = fmul fast float %9981, 2.550000e+02
  %9986 = fadd fast float %9985, 0x3F70101020000000
  %9987 = fptoui float %9986 to i32
  %9988 = icmp ult i32 %9984, %9987
  br i1 %9988, label %9989, label %10158

; <label>:9989                                    ; preds = %9946
  %9990 = fcmp fast ogt float %91, 9.843750e-01
  %9991 = fadd fast float %8784, -4.000000e+00
  %9992 = select i1 %9990, float -4.000000e+00, float %9991
  %9993 = call float @dx.op.binary.f32(i32 35, float %9992, float 0.000000e+00)  ; FMax(a,b)
  %9994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9995 = extractvalue %dx.types.CBufRet.f32 %9994, 0
  %9996 = fadd fast float %9995, %9993
  %9997 = extractvalue %dx.types.CBufRet.f32 %9994, 2
  %9998 = fmul fast float %9996, %9997
  %9999 = call float @dx.op.unary.f32(i32 23, float %9998)  ; Log(value)
  %10000 = extractvalue %dx.types.CBufRet.f32 %9994, 3
  %10001 = fmul fast float %10000, %9999
  %10002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10003 = extractvalue %dx.types.CBufRet.f32 %10002, 2
  %10004 = fmul fast float %10001, %10003
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = uitofp i32 %9984 to float
  %10007 = uitofp i32 %9987 to float
  %10008 = fadd fast float %10006, 5.000000e-01
  %10009 = fadd fast float %10007, 5.000000e-01
  %10010 = fmul fast float %10003, %10008
  %10011 = fmul fast float %10003, %10009
  %10012 = fadd fast float %10010, 0x3F0FFB4800000000
  %10013 = fadd fast float %10011, 0xBF0FFB4800000000
  %10014 = call float @dx.op.binary.f32(i32 35, float %10005, float %10012)  ; FMax(a,b)
  %10015 = call float @dx.op.binary.f32(i32 36, float %10014, float %10013)  ; FMin(a,b)
  %10016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10017 = extractvalue %dx.types.CBufRet.f32 %10016, 1
  %10018 = extractvalue %dx.types.CBufRet.f32 %10016, 2
  %10019 = extractvalue %dx.types.CBufRet.f32 %10016, 0
  %10020 = select i1 %8522, float %10019, float 0.000000e+00
  %10021 = fmul fast float %10017, %10015
  %10022 = fadd fast float %10020, %10021
  %10023 = fadd fast float %10020, %10018
  %10024 = fsub fast float %10017, %10018
  %10025 = fadd fast float %10024, %10020
  %10026 = call float @dx.op.binary.f32(i32 35, float %10022, float %10023)  ; FMax(a,b)
  %10027 = call float @dx.op.binary.f32(i32 36, float %10026, float %10025)  ; FMin(a,b)
  %10028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9959, float %9960, float %10027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10029 = extractvalue %dx.types.ResRet.f32 %10028, 0
  %10030 = extractvalue %dx.types.ResRet.f32 %10028, 1
  %10031 = extractvalue %dx.types.ResRet.f32 %10028, 2
  %10032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10033 = extractvalue %dx.types.CBufRet.i32 %10032, 0
  %10034 = extractvalue %dx.types.CBufRet.i32 %10032, 1
  %10035 = uitofp i32 %10033 to float
  %10036 = uitofp i32 %10034 to float
  %10037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10038 = extractvalue %dx.types.CBufRet.f32 %10037, 0
  %10039 = extractvalue %dx.types.CBufRet.f32 %10037, 1
  %10040 = fmul fast float %10035, %9959
  %10041 = fmul fast float %10036, %9960
  %10042 = fadd fast float %10040, -5.000000e-01
  %10043 = fadd fast float %10041, -5.000000e-01
  %10044 = call float @dx.op.unary.f32(i32 22, float %10042)  ; Frc(value)
  %10045 = call float @dx.op.unary.f32(i32 22, float %10043)  ; Frc(value)
  %10046 = fmul fast float %10044, %10044
  %10047 = fmul fast float %10046, %10044
  %10048 = fsub fast float 3.000000e+00, %10044
  %10049 = fmul fast float %10046, %10048
  %10050 = fmul fast float %10044, 3.000000e+00
  %10051 = fmul fast float %10047, 3.000000e+00
  %10052 = fmul fast float %10046, 6.000000e+00
  %10053 = fsub fast float %10051, %10052
  %10054 = fadd fast float %10053, 4.000000e+00
  %10055 = fmul fast float %10054, 0x3FC5555560000000
  %10056 = fmul fast float %10047, -3.000000e+00
  %10057 = fadd fast float %10046, %10044
  %10058 = fmul fast float %10057, 3.000000e+00
  %10059 = fadd fast float %10056, 1.000000e+00
  %10060 = fadd fast float %10059, %10058
  %10061 = fmul fast float %10047, 0x3FC5555560000000
  %10062 = fmul fast float %10045, %10045
  %10063 = fmul fast float %10062, %10045
  %10064 = fsub fast float 3.000000e+00, %10045
  %10065 = fmul fast float %10062, %10064
  %10066 = fmul fast float %10045, 3.000000e+00
  %10067 = fmul fast float %10063, 3.000000e+00
  %10068 = fmul fast float %10062, 6.000000e+00
  %10069 = fsub fast float %10067, %10068
  %10070 = fadd fast float %10069, 4.000000e+00
  %10071 = fmul fast float %10070, 0x3FC5555560000000
  %10072 = fmul fast float %10063, -3.000000e+00
  %10073 = fadd fast float %10062, %10045
  %10074 = fmul fast float %10073, 3.000000e+00
  %10075 = fadd fast float %10072, 1.000000e+00
  %10076 = fadd fast float %10075, %10074
  %10077 = fmul fast float %10063, 0x3FC5555560000000
  %10078 = fadd fast float %10044, 1.000000e+00
  %10079 = fsub fast float 1.000000e+00, %10050
  %10080 = fadd fast float %10079, %10049
  %10081 = fadd fast float %10080, %10054
  %10082 = fmul fast float %10081, 0x3FC5555560000000
  %10083 = fdiv fast float %10055, %10082
  %10084 = fsub fast float %10078, %10083
  %10085 = fsub fast float 1.000000e+00, %10044
  %10086 = fadd fast float %10060, %10047
  %10087 = fmul fast float %10086, 0x3FC5555560000000
  %10088 = fdiv fast float %10061, %10087
  %10089 = fadd fast float %10085, %10088
  %10090 = fadd fast float %10045, 1.000000e+00
  %10091 = fsub fast float 1.000000e+00, %10066
  %10092 = fadd fast float %10091, %10065
  %10093 = fadd fast float %10092, %10070
  %10094 = fmul fast float %10093, 0x3FC5555560000000
  %10095 = fdiv fast float %10071, %10094
  %10096 = fsub fast float %10090, %10095
  %10097 = fsub fast float 1.000000e+00, %10045
  %10098 = fadd fast float %10076, %10063
  %10099 = fmul fast float %10098, 0x3FC5555560000000
  %10100 = fdiv fast float %10077, %10099
  %10101 = fadd fast float %10100, %10097
  %10102 = fmul fast float %10084, %10038
  %10103 = fsub fast float %9959, %10102
  %10104 = fmul fast float %10089, %10038
  %10105 = fadd fast float %10104, %9959
  %10106 = fmul fast float %10101, %10039
  %10107 = fadd fast float %10106, %9960
  %10108 = fmul fast float %10096, %10039
  %10109 = fsub fast float %9960, %10108
  %10110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10103, float %10109, float %10027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10111 = extractvalue %dx.types.ResRet.f32 %10110, 0
  %10112 = extractvalue %dx.types.ResRet.f32 %10110, 1
  %10113 = extractvalue %dx.types.ResRet.f32 %10110, 2
  %10114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10105, float %10109, float %10027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10115 = extractvalue %dx.types.ResRet.f32 %10114, 0
  %10116 = extractvalue %dx.types.ResRet.f32 %10114, 1
  %10117 = extractvalue %dx.types.ResRet.f32 %10114, 2
  %10118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10103, float %10107, float %10027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10119 = extractvalue %dx.types.ResRet.f32 %10118, 0
  %10120 = extractvalue %dx.types.ResRet.f32 %10118, 1
  %10121 = extractvalue %dx.types.ResRet.f32 %10118, 2
  %10122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10105, float %10107, float %10027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10123 = extractvalue %dx.types.ResRet.f32 %10122, 0
  %10124 = extractvalue %dx.types.ResRet.f32 %10122, 1
  %10125 = extractvalue %dx.types.ResRet.f32 %10122, 2
  %10126 = fsub fast float %10119, %10111
  %10127 = fsub fast float %10120, %10112
  %10128 = fsub fast float %10121, %10113
  %10129 = fmul fast float %10126, %10099
  %10130 = fmul fast float %10127, %10099
  %10131 = fmul fast float %10128, %10099
  %10132 = fadd fast float %10129, %10111
  %10133 = fadd fast float %10130, %10112
  %10134 = fadd fast float %10131, %10113
  %10135 = fsub fast float %10123, %10115
  %10136 = fsub fast float %10124, %10116
  %10137 = fsub fast float %10125, %10117
  %10138 = fmul fast float %10135, %10099
  %10139 = fmul fast float %10136, %10099
  %10140 = fmul fast float %10137, %10099
  %10141 = fsub fast float %10115, %10132
  %10142 = fadd fast float %10141, %10138
  %10143 = fsub fast float %10116, %10133
  %10144 = fadd fast float %10143, %10139
  %10145 = fsub fast float %10117, %10134
  %10146 = fadd fast float %10145, %10140
  %10147 = fmul fast float %10142, %10087
  %10148 = fmul fast float %10144, %10087
  %10149 = fmul fast float %10146, %10087
  %10150 = fadd fast float %10147, %10132
  %10151 = fadd fast float %10148, %10133
  %10152 = fadd fast float %10149, %10134
  %10153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10154 = extractvalue %dx.types.CBufRet.f32 %10153, 1
  %10155 = fmul fast float %10150, %10154
  %10156 = fmul fast float %10151, %10154
  %10157 = fmul fast float %10152, %10154
  br label %10158

; <label>:10158                                   ; preds = %9989, %9946
  %10159 = phi float [ %10029, %9989 ], [ 1.000000e+00, %9946 ]
  %10160 = phi float [ %10030, %9989 ], [ 1.000000e+00, %9946 ]
  %10161 = phi float [ %10031, %9989 ], [ 1.000000e+00, %9946 ]
  %10162 = phi float [ %10155, %9989 ], [ 0.000000e+00, %9946 ]
  %10163 = phi float [ %10156, %9989 ], [ 0.000000e+00, %9946 ]
  %10164 = phi float [ %10157, %9989 ], [ 0.000000e+00, %9946 ]
  %10165 = fmul fast float %10162, %8508
  %10166 = fmul fast float %10163, %8509
  %10167 = fmul fast float %10164, %8510
  %10168 = fmul fast float %10159, %9953
  %10169 = call float @dx.op.dot3.f32(i32 55, float %10159, float %10160, float %10161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10170 = call float @dx.op.dot3.f32(i32 55, float %10165, float %10166, float %10167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10171 = select i1 %261, float %10169, float %10159
  %10172 = select i1 %261, float %10169, float %10160
  %10173 = select i1 %261, float 1.000000e+00, float %10161
  %10174 = select i1 %261, float %10170, float %10165
  %10175 = select i1 %261, float 0.000000e+00, float %10166
  %10176 = select i1 %261, float 0.000000e+00, float %10167
  %10177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10178 = extractvalue %dx.types.CBufRet.i32 %10177, 3
  %10179 = and i32 %10178, 3
  %10180 = icmp ne i32 %10179, 0
  %10181 = and i32 %10178, 4
  %10182 = icmp ne i32 %10181, 0
  %10183 = and i1 %10180, %10182
  %10184 = and i1 %261, %10183
  br i1 %10184, label %10185, label %10191

; <label>:10185                                   ; preds = %10158
  %10186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10187 = extractvalue %dx.types.CBufRet.f32 %10186, 1
  %10188 = fadd fast float %10168, -1.000000e+00
  %10189 = fmul fast float %10187, %10188
  %10190 = fadd fast float %10189, 1.000000e+00
  br label %10191

; <label>:10191                                   ; preds = %10185, %10158
  %10192 = phi float [ %10190, %10185 ], [ %10168, %10158 ]
  %10193 = fadd fast float %9950, %9947
  %10194 = fmul fast float %10171, %10193
  %10195 = fadd fast float %10194, %10174
  %10196 = fadd fast float %9951, %9948
  %10197 = fmul fast float %10172, %10196
  %10198 = fadd fast float %10197, %10175
  %10199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10200 = extractvalue %dx.types.CBufRet.f32 %10199, 0
  br i1 %261, label %10201, label %10216

; <label>:10201                                   ; preds = %10191
  %10202 = fadd fast float %10195, %10198
  %10203 = fmul fast float %10200, %10202
  %10204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10205 = extractvalue %dx.types.CBufRet.f32 %10204, 3
  %10206 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %10207 = fsub fast float %8497, %8491
  %10208 = fadd fast float %10207, %8498
  %10209 = fsub fast float %10208, %10206
  %10210 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %10211 = fmul fast float %10209, %10210
  %10212 = call float @dx.op.unary.f32(i32 7, float %10211)  ; Saturate(value)
  %10213 = fsub fast float %10212, %10205
  %10214 = fmul fast float %10213, %10192
  %10215 = fadd fast float %10214, %10205
  br label %10242

; <label>:10216                                   ; preds = %10191
  %10217 = fadd fast float %9952, %9949
  %10218 = fmul fast float %10173, %10217
  %10219 = fadd fast float %10218, %10176
  %10220 = fmul fast float %10200, %10195
  %10221 = fmul fast float %10200, %10198
  %10222 = fmul fast float %10200, %10219
  %10223 = call float @dx.op.binary.f32(i32 35, float %10221, float %10222)  ; FMax(a,b)
  %10224 = call float @dx.op.binary.f32(i32 35, float %10220, float %10223)  ; FMax(a,b)
  %10225 = call float @dx.op.binary.f32(i32 35, float %8509, float %8510)  ; FMax(a,b)
  %10226 = call float @dx.op.binary.f32(i32 35, float %8508, float %10225)  ; FMax(a,b)
  %10227 = call float @dx.op.binary.f32(i32 35, float %10224, float %10226)  ; FMax(a,b)
  %10228 = fcmp fast ugt float %10227, 0x3F10000000000000
  br i1 %10228, label %10230, label %10229

; <label>:10229                                   ; preds = %10216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10230

; <label>:10230                                   ; preds = %10229, %10216
  %10231 = add i32 %60, 356
  %10232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10231, i32 undef)  ; BufferLoad(srv,index,wot)
  %10233 = extractvalue %dx.types.ResRet.i32 %10232, 0
  %10234 = and i32 %10233, 32
  %10235 = icmp eq i32 %10234, 0
  br i1 %10235, label %10242, label %10236

; <label>:10236                                   ; preds = %10230
  %10237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10238 = extractvalue %dx.types.CBufRet.f32 %10237, 0
  %10239 = fmul fast float %10238, 0x3FE99999A0000000
  %10240 = fadd fast float %10238, %10220
  %10241 = fadd fast float %10239, %10222
  br label %10242

; <label>:10242                                   ; preds = %10236, %10230, %10201
  %10243 = phi float [ 1.000000e+00, %10201 ], [ %8509, %10236 ], [ %8509, %10230 ]
  %10244 = phi float [ 1.000000e+00, %10201 ], [ %8510, %10236 ], [ %8510, %10230 ]
  %10245 = phi float [ %10203, %10201 ], [ %10240, %10236 ], [ %10220, %10230 ]
  %10246 = phi float [ %10215, %10201 ], [ %10221, %10236 ], [ %10221, %10230 ]
  %10247 = phi float [ 1.000000e+00, %10201 ], [ %10241, %10236 ], [ %10222, %10230 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10248 = call float @dx.op.binary.f32(i32 36, float %10245, float 3.225500e+04)  ; FMin(a,b)
  %10249 = call float @dx.op.binary.f32(i32 36, float %10246, float 3.225500e+04)  ; FMin(a,b)
  %10250 = call float @dx.op.binary.f32(i32 36, float %10247, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10249)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10251 = call float @dx.op.binary.f32(i32 36, float %8508, float 3.225500e+04)  ; FMin(a,b)
  %10252 = call float @dx.op.binary.f32(i32 36, float %10243, float 3.225500e+04)  ; FMin(a,b)
  %10253 = call float @dx.op.binary.f32(i32 36, float %10244, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10252)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10253)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!74 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
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

