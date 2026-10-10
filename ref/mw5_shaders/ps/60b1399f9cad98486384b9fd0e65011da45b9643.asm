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
; shader hash: 6bfc00c93bb645f043b3ba8f2afed669
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
  %170 = fmul fast float %104, 5.000000e-01
  %171 = fmul fast float %105, 5.000000e-01
  %172 = fptosi float %170 to i32
  %173 = fptosi float %171 to i32
  %174 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %172, i32 %173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 18
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F4C00EBA0000000
  %179 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = sitofp i32 %182 to float
  %184 = extractvalue %dx.types.Dimensions %181, 1
  %185 = sitofp i32 %184 to float
  %186 = fcmp fast oge float %170, %183
  %187 = fcmp fast oge float %171, %185
  %188 = or i1 %186, %187
  %189 = select i1 %188, float 0x4197782600000000, float %180
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %104
  %194 = fmul fast float %192, %105
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = select i1 %198, i32 %204, i32 0
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %209 = and i32 %208, 3
  %210 = icmp ne i32 %209, 0
  %211 = and i32 %208, 4
  %212 = icmp ne i32 %211, 0
  %213 = and i1 %210, %212
  br i1 %213, label %214, label %225

; <label>:214                                     ; preds = %0
  %215 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %216 = fmul fast float %215, %105
  %217 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %218 = fmul fast float %217, %104
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %218, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fsub fast float 1.000000e+00, %220
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = fcmp fast olt float %221, %223
  br label %228

; <label>:225                                     ; preds = %0
  %226 = icmp eq i32 %211, 0
  %227 = and i1 %210, %226
  br label %228

; <label>:228                                     ; preds = %225, %214
  %229 = phi i1 [ %224, %214 ], [ %227, %225 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = fmul fast float %231, 0x3FE3C6EF40000000
  %233 = frem fast float %104, 2.560000e+02
  %234 = frem fast float %105, 2.560000e+02
  %235 = fptoui float %233 to i32
  %236 = fptoui float %234 to i32
  %237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %235, i32 %236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fadd fast float %238, %232
  %240 = call float @dx.op.unary.f32(i32 22, float %239)  ; Frc(value)
  %241 = add i32 %60, 156
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %60, 216
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %60, 36
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %60, 288
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %60, 172
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %60, 232
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %60, 52
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %60, 304
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = add i32 %60, 188
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = shl i32 %327, 4
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %327, 7
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 22
  %335 = shl nuw nsw i32 %334, 5
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %60, 248
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %339, 8
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %339, 16
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = add i32 %60, 68
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %60, 320
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = fmul fast float %362, 0x3F50624DE0000000
  %366 = fmul fast float %364, 0x3F50624DE0000000
  %367 = add i32 %60, 204
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = shl i32 %369, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %369, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %369, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %60, 264
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = lshr i32 %381, 8
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = lshr i32 %381, 16
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = add i32 %60, 84
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %60, 336
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = fmul fast float %404, 0x3F50624DE0000000
  %408 = fmul fast float %406, 0x3F50624DE0000000
  %409 = add i32 %60, 348
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 32
  %413 = icmp eq i32 %412, 0
  %414 = and i32 %411, 64
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %411, 128
  %417 = icmp eq i32 %416, 0
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 2
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %437, label %422

; <label>:422                                     ; preds = %228
  %423 = add i32 %60, 472
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %425, 0
  %427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %427, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = extractvalue %dx.types.ResRet.f32 %428, 3
  %433 = fmul fast float %432, %85
  %434 = fmul fast float %429, %86
  %435 = fmul fast float %430, %87
  %436 = fmul fast float %431, %88
  br label %437

; <label>:437                                     ; preds = %422, %228
  %438 = phi float [ %88, %228 ], [ %436, %422 ]
  %439 = phi float [ %87, %228 ], [ %435, %422 ]
  %440 = phi float [ %86, %228 ], [ %434, %422 ]
  %441 = phi float [ %85, %228 ], [ %433, %422 ]
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 2
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %465, label %446

; <label>:446                                     ; preds = %437
  %447 = add i32 %60, 44
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %440, float 1.000000e+00
  %453 = add i32 %60, 60
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 1
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %457, float %439, float 1.000000e+00
  %459 = add i32 %60, 76
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 1
  %463 = icmp ne i32 %462, 0
  %464 = select i1 %463, float %438, float 1.000000e+00
  br label %465

; <label>:465                                     ; preds = %446, %437
  %466 = phi float [ %438, %437 ], [ %464, %446 ]
  %467 = phi float [ %439, %437 ], [ %458, %446 ]
  %468 = phi float [ %440, %437 ], [ %452, %446 ]
  %469 = lshr i32 %443, 20
  %470 = and i32 %469, 3
  %471 = add nuw nsw i32 %470, 1
  %472 = add i32 %60, 24
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %60, 28
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = or i32 %477, %474
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %1129, label %480

; <label>:480                                     ; preds = %465
  %481 = and i32 %474, 262144
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %63, float 1.000000e+00
  %484 = select i1 %482, float %64, float 0.000000e+00
  %485 = select i1 %482, float %65, float 0.000000e+00
  %486 = select i1 %482, float %66, float 1.000000e+00
  %487 = select i1 %482, float %67, float %83
  %488 = select i1 %482, float %68, float %84
  %489 = add i32 %60, 284
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 16
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = fmul fast float %493, 0x3F50624DE0000000
  %495 = add i32 %60, 88
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 16
  %499 = and i32 %498, 255
  %500 = lshr i32 %497, 24
  %501 = add i32 %60, 292
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 65535
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %503, 16
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = add i32 %60, 32
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = lshr i32 %510, 22
  %512 = shl nuw nsw i32 %511, 5
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = shl i32 %510, 4
  %515 = and i32 %514, 32752
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = lshr i32 %510, 7
  %518 = and i32 %517, 32752
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 3
  %522 = fmul fast float %521, 1.000000e+03
  %523 = fmul fast float %281, %522
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = fadd fast float %524, %271
  %526 = fmul fast float %282, %522
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = fadd fast float %527, %273
  %529 = fmul fast float %494, %522
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = fmul fast float %530, 0x401921FB60000000
  %532 = fadd fast float %531, %513
  %533 = call float @dx.op.unary.f32(i32 13, float %532)  ; Sin(value)
  %534 = call float @dx.op.unary.f32(i32 12, float %532)  ; Cos(value)
  %535 = fsub fast float -0.000000e+00, %533
  %536 = fadd fast float %487, -5.000000e-01
  %537 = fadd fast float %488, -5.000000e-01
  %538 = fmul fast float %505, %536
  %539 = fmul fast float %507, %537
  %540 = fadd fast float %538, 5.000000e-01
  %541 = fadd fast float %539, 5.000000e-01
  %542 = fmul fast float %516, %540
  %543 = fmul fast float %519, %541
  %544 = fmul fast float %534, %542
  %545 = call float @dx.op.tertiary.f32(i32 46, float %535, float %543, float %544)  ; FMad(a,b,c)
  %546 = fmul fast float %533, %542
  %547 = call float @dx.op.tertiary.f32(i32 46, float %534, float %543, float %546)  ; FMad(a,b,c)
  %548 = fadd fast float %525, %545
  %549 = fadd fast float %528, %547
  %550 = icmp ugt i32 %499, 1
  %551 = icmp ugt i32 %497, 33554431
  %552 = or i1 %551, %550
  br i1 %552, label %553, label %578

; <label>:553                                     ; preds = %480
  %554 = add i32 %60, 228
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = lshr i32 %556, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = fmul fast float %521, %558
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = mul nuw nsw i32 %499, %500
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %560, %562
  %564 = call float @dx.op.unary.f32(i32 27, float %563)  ; Round_ni(value)
  %565 = fptoui float %564 to i32
  %566 = urem i32 %565, %499
  %567 = udiv i32 %565, %500
  %568 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %569 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %570 = uitofp i32 %566 to float
  %571 = uitofp i32 %567 to float
  %572 = fadd fast float %568, %570
  %573 = fadd fast float %569, %571
  %574 = uitofp i32 %499 to float
  %575 = uitofp i32 %500 to float
  %576 = fdiv fast float %572, %574
  %577 = fdiv fast float %573, %575
  br label %578

; <label>:578                                     ; preds = %553, %480
  %579 = phi float [ %576, %553 ], [ %548, %480 ]
  %580 = phi float [ %577, %553 ], [ %549, %480 ]
  %581 = and i32 %474, 16777216
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %692, label %583

; <label>:583                                     ; preds = %578
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %588 = fadd fast float %585, %167
  %589 = fadd fast float %586, %168
  %590 = fadd fast float %587, %169
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = icmp eq i32 %61, 65535
  br i1 %594, label %689, label %595

; <label>:595                                     ; preds = %583
  %596 = lshr i32 %61, 1
  %597 = shl i32 %596, 2
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %61, 1
  %601 = icmp ne i32 %600, 0
  %602 = lshr i32 %599, 16
  %603 = and i32 %599, 65535
  %604 = select i1 %601, i32 %602, i32 %603
  %605 = icmp eq i32 %604, 65535
  br i1 %605, label %685, label %606

; <label>:606                                     ; preds = %595
  %607 = mul nuw nsw i32 %604, 40
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = add nuw nsw i32 %607, 12
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = add nuw nsw i32 %607, 24
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = add nuw nsw i32 %607, 36
  %623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = fsub fast float %588, %609
  %626 = fsub fast float %589, %610
  %627 = fsub fast float %590, %611
  %628 = fmul fast float %624, %625
  %629 = fmul fast float %624, %626
  %630 = fmul fast float %624, %627
  %631 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %632 = call float @dx.op.unary.f32(i32 27, float %629)  ; Round_ni(value)
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = fadd fast float %631, 5.000000e-01
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fmul fast float %634, %614
  %638 = fmul fast float %635, %615
  %639 = fmul fast float %636, %616
  %640 = shl i32 %61, 2
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %646 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %644, %dx.types.Handle %55, float %645, float %646, float %647, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = fmul fast float %649, 1.023000e+03
  %653 = fmul fast float %650, 1.023000e+03
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fadd fast float %654, 5.000000e-01
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = fsub fast float %628, %631
  %662 = fsub fast float %629, %632
  %663 = fsub fast float %630, %633
  %664 = fmul fast float %661, 7.500000e-01
  %665 = fmul fast float %662, 7.500000e-01
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fadd fast float %631, 1.250000e-01
  %668 = fadd fast float %667, %664
  %669 = fadd fast float %668, %658
  %670 = fadd fast float %632, 1.250000e-01
  %671 = fadd fast float %670, %665
  %672 = fadd fast float %671, %659
  %673 = fadd fast float %633, 1.250000e-01
  %674 = fadd fast float %673, %666
  %675 = fadd fast float %674, %660
  %676 = fmul fast float %669, %619
  %677 = fmul fast float %672, %620
  %678 = fmul fast float %675, %621
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %682, %dx.types.Handle %53, float %676, float %677, float %678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  br label %685

; <label>:685                                     ; preds = %606, %595
  %686 = phi float [ %684, %606 ], [ -1.000000e+00, %595 ]
  %687 = fadd fast float %686, %593
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  br label %689

; <label>:689                                     ; preds = %685, %583
  %690 = phi float [ %688, %685 ], [ %593, %583 ]
  %691 = fmul fast float %690, %441
  br label %692

; <label>:692                                     ; preds = %689, %578
  %693 = phi float [ %691, %689 ], [ %441, %578 ]
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 256
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %744, label %698

; <label>:698                                     ; preds = %692
  %699 = add i32 %60, 424
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %101, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = add i32 %60, 100
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = shl i32 %708, 4
  %710 = and i32 %709, 32752
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %708, 7
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = fsub fast float 1.000000e+00, %693
  %716 = call float @dx.op.binary.f32(i32 35, float %715, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %717 = bitcast float %693 to i32
  %718 = sitofp i32 %717 to float
  %719 = fadd fast float %718, 0xC1CFBF8940000000
  %720 = fmul fast float %714, %719
  %721 = fadd fast float %720, 0x41CFBF8940000000
  %722 = fptosi float %721 to i32
  %723 = bitcast i32 %722 to float
  %724 = bitcast float %716 to i32
  %725 = sitofp i32 %724 to float
  %726 = fadd fast float %725, 0xC1CFBF8940000000
  %727 = fmul fast float %726, %714
  %728 = fadd fast float %727, 0x41CFBF8940000000
  %729 = fptosi float %728 to i32
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %723, %711
  %732 = fmul fast float %730, %711
  %733 = fsub fast float %716, %731
  %734 = fadd fast float %732, %716
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = fsub fast float %705, %735
  %738 = fsub fast float %736, %735
  %739 = bitcast float %738 to i32
  %740 = sub nsw i32 2129859010, %739
  %741 = bitcast i32 %740 to float
  %742 = fmul fast float %741, %737
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  br label %744

; <label>:744                                     ; preds = %698, %692
  %745 = phi float [ %743, %698 ], [ %693, %692 ]
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 128
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %766, label %750

; <label>:750                                     ; preds = %744
  %751 = add i32 %60, 408
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %753, 0
  %755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %755, %dx.types.Handle %101, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 524288
  %761 = icmp ne i32 %760, 0
  %762 = fcmp fast ogt float %757, 0x3FE0101020000000
  %763 = select i1 %762, float 1.000000e+00, float 0.000000e+00
  %764 = select i1 %761, float %763, float %757
  %765 = fmul fast float %764, %745
  br label %766

; <label>:766                                     ; preds = %750, %744
  %767 = phi float [ %765, %750 ], [ %745, %744 ]
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 16
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %970, label %772

; <label>:772                                     ; preds = %766
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %60, 360
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %777, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %779, %dx.types.Handle %100, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = and i32 %774, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %774, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %784, %786
  %791 = fadd fast float %790, %789
  %792 = fmul fast float %791, 0x3F70101000000000
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 512
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %805, label %797

; <label>:797                                     ; preds = %772
  %798 = add i32 %60, 440
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = add i32 %800, 0
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %802, %dx.types.Handle %101, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  br label %805

; <label>:805                                     ; preds = %797, %772
  %806 = phi float [ %804, %797 ], [ 1.000000e+00, %772 ]
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 33554432
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %917, label %811

; <label>:811                                     ; preds = %805
  %812 = add i32 %60, 224
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = lshr i32 %814, 16
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = add i32 %60, 228
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = lshr i32 %825, 24
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = and i32 %825, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = lshr i32 %825, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = lshr i32 %825, 16
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = add i32 %60, 220
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = lshr i32 %842, 24
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = and i32 %842, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = lshr i32 %842, 8
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F70101020000000
  %853 = lshr i32 %842, 16
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = bitcast float %781 to i32
  %858 = ashr i32 %857, 1
  %859 = sub nsw i32 1597463174, %858
  %860 = bitcast i32 %859 to float
  %861 = fmul fast float %781, 5.000000e-01
  %862 = fmul fast float %860, %860
  %863 = fmul fast float %862, %861
  %864 = fsub fast float 1.500000e+00, %863
  %865 = fmul fast float %860, %781
  %866 = fmul fast float %865, %864
  %867 = bitcast float %782 to i32
  %868 = ashr i32 %867, 1
  %869 = sub nsw i32 1597463174, %868
  %870 = bitcast i32 %869 to float
  %871 = fmul fast float %782, 5.000000e-01
  %872 = fmul fast float %870, %870
  %873 = fmul fast float %872, %871
  %874 = fsub fast float 1.500000e+00, %873
  %875 = fmul fast float %870, %782
  %876 = fmul fast float %875, %874
  %877 = bitcast float %783 to i32
  %878 = ashr i32 %877, 1
  %879 = sub nsw i32 1597463174, %878
  %880 = bitcast i32 %879 to float
  %881 = fmul fast float %783, 5.000000e-01
  %882 = fmul fast float %880, %880
  %883 = fmul fast float %882, %881
  %884 = fsub fast float 1.500000e+00, %883
  %885 = fmul fast float %880, %783
  %886 = fmul fast float %885, %884
  %887 = fsub fast float %866, %848
  %888 = fsub fast float %876, %852
  %889 = fsub fast float %886, %856
  %890 = fmul fast float %887, %816
  %891 = fmul fast float %888, %818
  %892 = fmul fast float %889, %823
  %893 = fadd fast float %890, %831
  %894 = fadd fast float %891, %835
  %895 = fadd fast float %892, %839
  %896 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = fmul fast float %896, %896
  %900 = fmul fast float %897, %897
  %901 = fmul fast float %898, %898
  %902 = fsub fast float %899, %781
  %903 = fsub fast float %900, %782
  %904 = fsub fast float %901, %783
  %905 = fmul fast float %902, %806
  %906 = fmul fast float %903, %806
  %907 = fmul fast float %904, %806
  %908 = fadd fast float %905, %781
  %909 = fadd fast float %906, %782
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %828, %792
  %912 = fsub fast float %911, %845
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fsub fast float %913, %792
  %915 = fmul fast float %914, %806
  %916 = fadd fast float %915, %792
  br label %970

; <label>:917                                     ; preds = %805
  %918 = and i32 %808, 134217728
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %954, label %920

; <label>:920                                     ; preds = %917
  %921 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %924 = fadd fast float %921, -5.000000e-01
  %925 = fadd fast float %922, -5.000000e-01
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fmul fast float %924, %806
  %928 = fmul fast float %925, %806
  %929 = fmul fast float %926, %806
  %930 = fadd fast float %927, 5.000000e-01
  %931 = fadd fast float %928, 5.000000e-01
  %932 = fadd fast float %929, 5.000000e-01
  %933 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %934 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = fmul fast float %930, 2.000000e+00
  %937 = fsub fast float 1.000000e+00, %936
  %938 = fmul fast float %937, %933
  %939 = fadd fast float %938, %936
  %940 = fmul fast float %939, %933
  %941 = fmul fast float %931, 2.000000e+00
  %942 = fsub fast float 1.000000e+00, %941
  %943 = fmul fast float %942, %934
  %944 = fadd fast float %943, %941
  %945 = fmul fast float %944, %934
  %946 = fmul fast float %932, 2.000000e+00
  %947 = fsub fast float 1.000000e+00, %946
  %948 = fmul fast float %947, %935
  %949 = fadd fast float %948, %946
  %950 = fmul fast float %949, %935
  %951 = fmul fast float %940, %940
  %952 = fmul fast float %945, %945
  %953 = fmul fast float %950, %950
  br label %970

; <label>:954                                     ; preds = %917
  %955 = fmul fast float %258, %258
  %956 = fmul fast float %262, %262
  %957 = fmul fast float %266, %266
  %958 = fadd fast float %955, -1.000000e+00
  %959 = fadd fast float %956, -1.000000e+00
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fmul fast float %806, %958
  %962 = fmul fast float %806, %959
  %963 = fmul fast float %806, %960
  %964 = fadd fast float %961, 1.000000e+00
  %965 = fadd fast float %962, 1.000000e+00
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fmul fast float %964, %781
  %968 = fmul fast float %965, %782
  %969 = fmul fast float %966, %783
  br label %970

; <label>:970                                     ; preds = %954, %920, %811, %766
  %971 = phi float [ %916, %811 ], [ %792, %920 ], [ %792, %954 ], [ 0x3FA23C0BE0000000, %766 ]
  %972 = phi float [ %908, %811 ], [ %951, %920 ], [ %967, %954 ], [ 1.000000e+00, %766 ]
  %973 = phi float [ %909, %811 ], [ %952, %920 ], [ %968, %954 ], [ 1.000000e+00, %766 ]
  %974 = phi float [ %910, %811 ], [ %953, %920 ], [ %969, %954 ], [ 1.000000e+00, %766 ]
  %975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.i32 %975, 1
  %977 = and i32 %976, 1
  %978 = icmp ne i32 %977, 0
  %979 = add i32 %60, 356
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 32
  %983 = icmp ne i32 %982, 0
  %984 = and i1 %978, %983
  %985 = select i1 %984, float 1.000000e+00, float %972
  %986 = select i1 %984, float 0x3FD3333340000000, float %973
  %987 = select i1 %984, float 0x3FD3333340000000, float %974
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 32
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1064, label %992

; <label>:992                                     ; preds = %970
  %993 = add i32 %60, 92
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %60, 376
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %100, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1006 = and i32 %995, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = lshr i32 %995, 8
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = lshr i32 %995, 16
  %1012 = and i32 %1011, 255
  %1013 = uitofp i32 %1012 to float
  %1014 = fmul fast float %1013, 0x3F70101000000000
  %1015 = fmul fast float %1002, %1007
  %1016 = fadd fast float %1015, %1010
  %1017 = fmul fast float %1016, 0x3F70101000000000
  %1018 = fadd fast float %1003, -5.000000e-01
  %1019 = fadd fast float %1005, -5.000000e-01
  %1020 = fmul fast float %1018, %1014
  %1021 = fmul fast float %1019, %1014
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fmul fast float %1022, 2.000000e+00
  %1025 = fadd fast float %1024, -1.000000e+00
  %1026 = fmul fast float %1023, 2.000000e+00
  %1027 = fadd fast float %1026, -1.000000e+00
  %1028 = fadd fast float %1025, %1027
  %1029 = fmul fast float %1028, 5.000000e-01
  %1030 = fsub fast float %1025, %1027
  %1031 = fmul fast float %1030, 5.000000e-01
  %1032 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1033 = fsub fast float 1.000000e+00, %1032
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float %1033, %1034
  %1036 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1031, float %1035, float %1029, float %1031, float %1035)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = call float @dx.op.unary.f32(i32 25, float %1036)  ; Rsqrt(value)
  %1038 = fmul fast float %1029, %1037
  %1039 = fmul fast float %1031, %1037
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 67108864
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1060, label %1044

; <label>:1044                                    ; preds = %992
  %1045 = add i32 %60, 280
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 65535
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 65535
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = lshr i32 %1047, 16
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = fsub fast float %1017, %1055
  %1057 = fmul fast float %1056, %1049
  %1058 = fadd fast float %1057, %1053
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  br label %1060

; <label>:1060                                    ; preds = %1044, %992
  %1061 = phi float [ %1059, %1044 ], [ %1017, %992 ]
  %1062 = call float @dx.op.dot2.f32(i32 54, float %1038, float %1039, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  %1063 = call float @dx.op.dot2.f32(i32 54, float %1038, float %1039, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  br label %1064

; <label>:1064                                    ; preds = %1060, %970
  %1065 = phi float [ %1061, %1060 ], [ 0x3FD6666660000000, %970 ]
  %1066 = phi float [ %1062, %1060 ], [ 0.000000e+00, %970 ]
  %1067 = phi float [ %1063, %1060 ], [ 0.000000e+00, %970 ]
  %1068 = phi float [ %1004, %1060 ], [ 1.000000e+00, %970 ]
  %1069 = add i32 %60, 160
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = lshr i32 %1071, 22
  %1073 = shl nuw nsw i32 %1072, 5
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 64
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1112, label %1079

; <label>:1079                                    ; preds = %1064
  %1080 = add i32 %60, 392
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 131072
  %1088 = icmp eq i32 %1087, 0
  %1089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1084, %dx.types.Handle %100, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = fmul fast float %1090, %246
  %1094 = fmul fast float %1091, %249
  %1095 = fmul fast float %1092, %252
  br i1 %1088, label %1102, label %1096

; <label>:1096                                    ; preds = %1079
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = fmul fast float %1098, %1093
  %1100 = fmul fast float %1098, %1094
  %1101 = fmul fast float %1098, %1095
  br label %1102

; <label>:1102                                    ; preds = %1096, %1079
  %1103 = phi float [ %1099, %1096 ], [ %1093, %1079 ]
  %1104 = phi float [ %1100, %1096 ], [ %1094, %1079 ]
  %1105 = phi float [ %1101, %1096 ], [ %1095, %1079 ]
  %1106 = fmul fast float %1103, %1074
  %1107 = select i1 %229, float %1106, float %1103
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1104, float %1105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = select i1 %229, float 0.000000e+00, float %1103
  %1110 = select i1 %229, float %1108, float %1104
  %1111 = select i1 %229, float 0.000000e+00, float %1105
  br label %1112

; <label>:1112                                    ; preds = %1102, %1064
  %1113 = phi float [ %1109, %1102 ], [ 0.000000e+00, %1064 ]
  %1114 = phi float [ %1110, %1102 ], [ 0.000000e+00, %1064 ]
  %1115 = phi float [ %1111, %1102 ], [ 0.000000e+00, %1064 ]
  %1116 = add i32 %60, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1118, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = call float @dx.op.dot3.f32(i32 55, float %985, float %986, float %987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1123, %1124
  %1126 = fadd fast float %1125, %1120
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1112, %465
  %1130 = phi float [ 0.000000e+00, %465 ], [ %1066, %1112 ]
  %1131 = phi float [ 0.000000e+00, %465 ], [ %1067, %1112 ]
  %1132 = phi float [ 0.000000e+00, %465 ], [ %985, %1112 ]
  %1133 = phi float [ 0.000000e+00, %465 ], [ %986, %1112 ]
  %1134 = phi float [ 0.000000e+00, %465 ], [ %987, %1112 ]
  %1135 = phi float [ 0.000000e+00, %465 ], [ %1113, %1112 ]
  %1136 = phi float [ 0.000000e+00, %465 ], [ %1114, %1112 ]
  %1137 = phi float [ 0.000000e+00, %465 ], [ %1115, %1112 ]
  %1138 = phi float [ 0.000000e+00, %465 ], [ %971, %1112 ]
  %1139 = phi float [ 0.000000e+00, %465 ], [ %767, %1112 ]
  %1140 = phi float [ 0.000000e+00, %465 ], [ %1065, %1112 ]
  %1141 = phi float [ 0.000000e+00, %465 ], [ %1068, %1112 ]
  %1142 = phi float [ 0.000000e+00, %465 ], [ %1128, %1112 ]
  br i1 %413, label %1984, label %1143

; <label>:1143                                    ; preds = %1129
  %1144 = icmp ult i32 %471, 2
  %1145 = add i32 %60, 40
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = add i32 %60, 44
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = or i32 %1150, %1147
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1984, label %1153

; <label>:1153                                    ; preds = %1143
  %1154 = and i32 %1147, 262144
  %1155 = icmp ne i32 %1154, 0
  %1156 = select i1 %1155, float %63, float 1.000000e+00
  %1157 = select i1 %1155, float %64, float 0.000000e+00
  %1158 = select i1 %1155, float %65, float 0.000000e+00
  %1159 = select i1 %1155, float %66, float 1.000000e+00
  %1160 = select i1 %1155, float %67, float %83
  %1161 = select i1 %1155, float %68, float %84
  %1162 = add i32 %60, 300
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 16
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = fmul fast float %1166, 0x3F50624DE0000000
  %1168 = add i32 %60, 104
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = lshr i32 %1170, 16
  %1172 = and i32 %1171, 255
  %1173 = lshr i32 %1170, 24
  %1174 = add i32 %60, 308
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 65535
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1176, 16
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = add i32 %60, 48
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = lshr i32 %1183, 22
  %1185 = shl nuw nsw i32 %1184, 5
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = shl i32 %1183, 4
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = lshr i32 %1183, 7
  %1191 = and i32 %1190, 32752
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1195 = fmul fast float %1194, 1.000000e+03
  %1196 = fmul fast float %323, %1195
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fadd fast float %1197, %313
  %1199 = fmul fast float %324, %1195
  %1200 = call float @dx.op.unary.f32(i32 22, float %1199)  ; Frc(value)
  %1201 = fadd fast float %1200, %315
  %1202 = fmul fast float %1167, %1195
  %1203 = call float @dx.op.unary.f32(i32 22, float %1202)  ; Frc(value)
  %1204 = fmul fast float %1203, 0x401921FB60000000
  %1205 = fadd fast float %1204, %1186
  %1206 = call float @dx.op.unary.f32(i32 13, float %1205)  ; Sin(value)
  %1207 = call float @dx.op.unary.f32(i32 12, float %1205)  ; Cos(value)
  %1208 = fsub fast float -0.000000e+00, %1206
  %1209 = fadd fast float %1160, -5.000000e-01
  %1210 = fadd fast float %1161, -5.000000e-01
  %1211 = fmul fast float %1178, %1209
  %1212 = fmul fast float %1180, %1210
  %1213 = fadd fast float %1211, 5.000000e-01
  %1214 = fadd fast float %1212, 5.000000e-01
  %1215 = fmul fast float %1189, %1213
  %1216 = fmul fast float %1192, %1214
  %1217 = fmul fast float %1207, %1215
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1216, float %1217)  ; FMad(a,b,c)
  %1219 = fmul fast float %1206, %1215
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1207, float %1216, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1198, %1218
  %1222 = fadd fast float %1201, %1220
  %1223 = icmp ugt i32 %1172, 1
  %1224 = icmp ugt i32 %1170, 33554431
  %1225 = or i1 %1224, %1223
  br i1 %1225, label %1226, label %1251

; <label>:1226                                    ; preds = %1153
  %1227 = add i32 %60, 244
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 16
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = fmul fast float %1194, %1231
  %1233 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1234 = mul nuw nsw i32 %1172, %1173
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1233, %1235
  %1237 = call float @dx.op.unary.f32(i32 27, float %1236)  ; Round_ni(value)
  %1238 = fptoui float %1237 to i32
  %1239 = urem i32 %1238, %1172
  %1240 = udiv i32 %1238, %1173
  %1241 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1242 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1243 = uitofp i32 %1239 to float
  %1244 = uitofp i32 %1240 to float
  %1245 = fadd fast float %1241, %1243
  %1246 = fadd fast float %1242, %1244
  %1247 = uitofp i32 %1172 to float
  %1248 = uitofp i32 %1173 to float
  %1249 = fdiv fast float %1245, %1247
  %1250 = fdiv fast float %1246, %1248
  br label %1251

; <label>:1251                                    ; preds = %1226, %1153
  %1252 = phi float [ %1249, %1226 ], [ %1221, %1153 ]
  %1253 = phi float [ %1250, %1226 ], [ %1222, %1153 ]
  %1254 = and i32 %1147, 16777216
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1365, label %1256

; <label>:1256                                    ; preds = %1251
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = fadd fast float %1258, %167
  %1262 = fadd fast float %1259, %168
  %1263 = fadd fast float %1260, %169
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = icmp eq i32 %61, 65535
  br i1 %1267, label %1362, label %1268

; <label>:1268                                    ; preds = %1256
  %1269 = lshr i32 %61, 1
  %1270 = shl i32 %1269, 2
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = and i32 %61, 1
  %1274 = icmp ne i32 %1273, 0
  %1275 = lshr i32 %1272, 16
  %1276 = and i32 %1272, 65535
  %1277 = select i1 %1274, i32 %1275, i32 %1276
  %1278 = icmp eq i32 %1277, 65535
  br i1 %1278, label %1358, label %1279

; <label>:1279                                    ; preds = %1268
  %1280 = mul nuw nsw i32 %1277, 40
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1285 = add nuw nsw i32 %1280, 12
  %1286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = add nuw nsw i32 %1280, 24
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = add nuw nsw i32 %1280, 36
  %1296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = fsub fast float %1261, %1282
  %1299 = fsub fast float %1262, %1283
  %1300 = fsub fast float %1263, %1284
  %1301 = fmul fast float %1297, %1298
  %1302 = fmul fast float %1297, %1299
  %1303 = fmul fast float %1297, %1300
  %1304 = call float @dx.op.unary.f32(i32 27, float %1301)  ; Round_ni(value)
  %1305 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1306 = call float @dx.op.unary.f32(i32 27, float %1303)  ; Round_ni(value)
  %1307 = fadd fast float %1304, 5.000000e-01
  %1308 = fadd fast float %1305, 5.000000e-01
  %1309 = fadd fast float %1306, 5.000000e-01
  %1310 = fmul fast float %1307, %1287
  %1311 = fmul fast float %1308, %1288
  %1312 = fmul fast float %1309, %1289
  %1313 = shl i32 %61, 2
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %1315, 0
  %1317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1318 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1320 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1317, %dx.types.Handle %55, float %1318, float %1319, float %1320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = fmul fast float %1322, 1.023000e+03
  %1326 = fmul fast float %1323, 1.023000e+03
  %1327 = fmul fast float %1324, 1.023000e+03
  %1328 = fadd fast float %1325, 5.000000e-01
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = call float @dx.op.unary.f32(i32 27, float %1328)  ; Round_ni(value)
  %1332 = call float @dx.op.unary.f32(i32 27, float %1329)  ; Round_ni(value)
  %1333 = call float @dx.op.unary.f32(i32 27, float %1330)  ; Round_ni(value)
  %1334 = fsub fast float %1301, %1304
  %1335 = fsub fast float %1302, %1305
  %1336 = fsub fast float %1303, %1306
  %1337 = fmul fast float %1334, 7.500000e-01
  %1338 = fmul fast float %1335, 7.500000e-01
  %1339 = fmul fast float %1336, 7.500000e-01
  %1340 = fadd fast float %1304, 1.250000e-01
  %1341 = fadd fast float %1340, %1337
  %1342 = fadd fast float %1341, %1331
  %1343 = fadd fast float %1305, 1.250000e-01
  %1344 = fadd fast float %1343, %1338
  %1345 = fadd fast float %1344, %1332
  %1346 = fadd fast float %1306, 1.250000e-01
  %1347 = fadd fast float %1346, %1339
  %1348 = fadd fast float %1347, %1333
  %1349 = fmul fast float %1342, %1292
  %1350 = fmul fast float %1345, %1293
  %1351 = fmul fast float %1348, %1294
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = add i32 %1353, 0
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1355, %dx.types.Handle %53, float %1349, float %1350, float %1351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  br label %1358

; <label>:1358                                    ; preds = %1279, %1268
  %1359 = phi float [ %1357, %1279 ], [ -1.000000e+00, %1268 ]
  %1360 = fadd fast float %1359, %1266
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  br label %1362

; <label>:1362                                    ; preds = %1358, %1256
  %1363 = phi float [ %1361, %1358 ], [ %1266, %1256 ]
  %1364 = fmul fast float %1363, %468
  br label %1365

; <label>:1365                                    ; preds = %1362, %1251
  %1366 = phi float [ %1364, %1362 ], [ %468, %1251 ]
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 256
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1417, label %1371

; <label>:1371                                    ; preds = %1365
  %1372 = add i32 %60, 428
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = add i32 %1374, 0
  %1376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1376, %dx.types.Handle %101, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = add i32 %60, 116
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = shl i32 %1381, 4
  %1383 = and i32 %1382, 32752
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = lshr i32 %1381, 7
  %1386 = and i32 %1385, 32752
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = fsub fast float 1.000000e+00, %1366
  %1389 = call float @dx.op.binary.f32(i32 35, float %1388, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1390 = bitcast float %1366 to i32
  %1391 = sitofp i32 %1390 to float
  %1392 = fadd fast float %1391, 0xC1CFBF8940000000
  %1393 = fmul fast float %1387, %1392
  %1394 = fadd fast float %1393, 0x41CFBF8940000000
  %1395 = fptosi float %1394 to i32
  %1396 = bitcast i32 %1395 to float
  %1397 = bitcast float %1389 to i32
  %1398 = sitofp i32 %1397 to float
  %1399 = fadd fast float %1398, 0xC1CFBF8940000000
  %1400 = fmul fast float %1399, %1387
  %1401 = fadd fast float %1400, 0x41CFBF8940000000
  %1402 = fptosi float %1401 to i32
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1396, %1384
  %1405 = fmul fast float %1403, %1384
  %1406 = fsub fast float %1389, %1404
  %1407 = fadd fast float %1405, %1389
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1410 = fsub fast float %1378, %1408
  %1411 = fsub fast float %1409, %1408
  %1412 = bitcast float %1411 to i32
  %1413 = sub nsw i32 2129859010, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1414, %1410
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  br label %1417

; <label>:1417                                    ; preds = %1371, %1365
  %1418 = phi float [ %1416, %1371 ], [ %1366, %1365 ]
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 128
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1439, label %1423

; <label>:1423                                    ; preds = %1417
  %1424 = add i32 %60, 412
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1428, %dx.types.Handle %101, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 524288
  %1434 = icmp ne i32 %1433, 0
  %1435 = fcmp fast ogt float %1430, 0x3FE0101020000000
  %1436 = select i1 %1435, float 1.000000e+00, float 0.000000e+00
  %1437 = select i1 %1434, float %1436, float %1430
  %1438 = fmul fast float %1437, %1418
  br label %1439

; <label>:1439                                    ; preds = %1423, %1417
  %1440 = phi float [ %1438, %1423 ], [ %1418, %1417 ]
  %1441 = fcmp fast ult float %1440, 0x3F70101020000000
  br i1 %1441, label %1984, label %1442

; <label>:1442                                    ; preds = %1439
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 16
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1645, label %1447

; <label>:1447                                    ; preds = %1442
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %60, 364
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = add i32 %1452, 0
  %1454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1454, %dx.types.Handle %100, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.ResRet.f32 %1455, 1
  %1458 = extractvalue %dx.types.ResRet.f32 %1455, 2
  %1459 = extractvalue %dx.types.ResRet.f32 %1455, 3
  %1460 = and i32 %1449, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = lshr i32 %1449, 8
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1459, %1461
  %1466 = fadd fast float %1465, %1464
  %1467 = fmul fast float %1466, 0x3F70101000000000
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 512
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1480, label %1472

; <label>:1472                                    ; preds = %1447
  %1473 = add i32 %60, 444
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = add i32 %1475, 0
  %1477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1477, %dx.types.Handle %101, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  br label %1480

; <label>:1480                                    ; preds = %1472, %1447
  %1481 = phi float [ %1479, %1472 ], [ 1.000000e+00, %1447 ]
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 33554432
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1592, label %1486

; <label>:1486                                    ; preds = %1480
  %1487 = add i32 %60, 240
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1489, 16
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = add i32 %60, 244
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = lshr i32 %1500, 24
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = and i32 %1500, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = fmul fast float %1505, 0x3F70101020000000
  %1507 = lshr i32 %1500, 8
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1500, 16
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = add i32 %60, 236
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = lshr i32 %1517, 24
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = and i32 %1517, 255
  %1522 = uitofp i32 %1521 to float
  %1523 = fmul fast float %1522, 0x3F70101020000000
  %1524 = lshr i32 %1517, 8
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = lshr i32 %1517, 16
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = bitcast float %1456 to i32
  %1533 = ashr i32 %1532, 1
  %1534 = sub nsw i32 1597463174, %1533
  %1535 = bitcast i32 %1534 to float
  %1536 = fmul fast float %1456, 5.000000e-01
  %1537 = fmul fast float %1535, %1535
  %1538 = fmul fast float %1537, %1536
  %1539 = fsub fast float 1.500000e+00, %1538
  %1540 = fmul fast float %1535, %1456
  %1541 = fmul fast float %1540, %1539
  %1542 = bitcast float %1457 to i32
  %1543 = ashr i32 %1542, 1
  %1544 = sub nsw i32 1597463174, %1543
  %1545 = bitcast i32 %1544 to float
  %1546 = fmul fast float %1457, 5.000000e-01
  %1547 = fmul fast float %1545, %1545
  %1548 = fmul fast float %1547, %1546
  %1549 = fsub fast float 1.500000e+00, %1548
  %1550 = fmul fast float %1545, %1457
  %1551 = fmul fast float %1550, %1549
  %1552 = bitcast float %1458 to i32
  %1553 = ashr i32 %1552, 1
  %1554 = sub nsw i32 1597463174, %1553
  %1555 = bitcast i32 %1554 to float
  %1556 = fmul fast float %1458, 5.000000e-01
  %1557 = fmul fast float %1555, %1555
  %1558 = fmul fast float %1557, %1556
  %1559 = fsub fast float 1.500000e+00, %1558
  %1560 = fmul fast float %1555, %1458
  %1561 = fmul fast float %1560, %1559
  %1562 = fsub fast float %1541, %1523
  %1563 = fsub fast float %1551, %1527
  %1564 = fsub fast float %1561, %1531
  %1565 = fmul fast float %1562, %1491
  %1566 = fmul fast float %1563, %1493
  %1567 = fmul fast float %1564, %1498
  %1568 = fadd fast float %1565, %1506
  %1569 = fadd fast float %1566, %1510
  %1570 = fadd fast float %1567, %1514
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = fmul fast float %1571, %1571
  %1575 = fmul fast float %1572, %1572
  %1576 = fmul fast float %1573, %1573
  %1577 = fsub fast float %1574, %1456
  %1578 = fsub fast float %1575, %1457
  %1579 = fsub fast float %1576, %1458
  %1580 = fmul fast float %1577, %1481
  %1581 = fmul fast float %1578, %1481
  %1582 = fmul fast float %1579, %1481
  %1583 = fadd fast float %1580, %1456
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1503, %1467
  %1587 = fsub fast float %1586, %1520
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fsub fast float %1588, %1467
  %1590 = fmul fast float %1589, %1481
  %1591 = fadd fast float %1590, %1467
  br label %1645

; <label>:1592                                    ; preds = %1480
  %1593 = and i32 %1483, 134217728
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1629, label %1595

; <label>:1595                                    ; preds = %1592
  %1596 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1599 = fadd fast float %1596, -5.000000e-01
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fmul fast float %1599, %1481
  %1603 = fmul fast float %1600, %1481
  %1604 = fmul fast float %1601, %1481
  %1605 = fadd fast float %1602, 5.000000e-01
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = fmul fast float %1605, 2.000000e+00
  %1612 = fsub fast float 1.000000e+00, %1611
  %1613 = fmul fast float %1612, %1608
  %1614 = fadd fast float %1613, %1611
  %1615 = fmul fast float %1614, %1608
  %1616 = fmul fast float %1606, 2.000000e+00
  %1617 = fsub fast float 1.000000e+00, %1616
  %1618 = fmul fast float %1617, %1609
  %1619 = fadd fast float %1618, %1616
  %1620 = fmul fast float %1619, %1609
  %1621 = fmul fast float %1607, 2.000000e+00
  %1622 = fsub fast float 1.000000e+00, %1621
  %1623 = fmul fast float %1622, %1610
  %1624 = fadd fast float %1623, %1621
  %1625 = fmul fast float %1624, %1610
  %1626 = fmul fast float %1615, %1615
  %1627 = fmul fast float %1620, %1620
  %1628 = fmul fast float %1625, %1625
  br label %1645

; <label>:1629                                    ; preds = %1592
  %1630 = fmul fast float %300, %300
  %1631 = fmul fast float %304, %304
  %1632 = fmul fast float %308, %308
  %1633 = fadd fast float %1630, -1.000000e+00
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fmul fast float %1481, %1633
  %1637 = fmul fast float %1481, %1634
  %1638 = fmul fast float %1481, %1635
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fmul fast float %1639, %1456
  %1643 = fmul fast float %1640, %1457
  %1644 = fmul fast float %1641, %1458
  br label %1645

; <label>:1645                                    ; preds = %1629, %1595, %1486, %1442
  %1646 = phi float [ %1591, %1486 ], [ %1467, %1595 ], [ %1467, %1629 ], [ 0x3FA23C0BE0000000, %1442 ]
  %1647 = phi float [ %1583, %1486 ], [ %1626, %1595 ], [ %1642, %1629 ], [ 1.000000e+00, %1442 ]
  %1648 = phi float [ %1584, %1486 ], [ %1627, %1595 ], [ %1643, %1629 ], [ 1.000000e+00, %1442 ]
  %1649 = phi float [ %1585, %1486 ], [ %1628, %1595 ], [ %1644, %1629 ], [ 1.000000e+00, %1442 ]
  %1650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.i32 %1650, 1
  %1652 = and i32 %1651, 1
  %1653 = icmp ne i32 %1652, 0
  %1654 = add i32 %60, 356
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = and i32 %1656, 32
  %1658 = icmp ne i32 %1657, 0
  %1659 = and i1 %1653, %1658
  %1660 = select i1 %1659, float 1.000000e+00, float %1647
  %1661 = select i1 %1659, float 0x3FD3333340000000, float %1648
  %1662 = select i1 %1659, float 0x3FD3333340000000, float %1649
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 32
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1739, label %1667

; <label>:1667                                    ; preds = %1645
  %1668 = add i32 %60, 108
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = add i32 %60, 380
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = add i32 %1673, 0
  %1675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1675, %dx.types.Handle %100, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  %1681 = and i32 %1670, 255
  %1682 = uitofp i32 %1681 to float
  %1683 = lshr i32 %1670, 8
  %1684 = and i32 %1683, 255
  %1685 = uitofp i32 %1684 to float
  %1686 = lshr i32 %1670, 16
  %1687 = and i32 %1686, 255
  %1688 = uitofp i32 %1687 to float
  %1689 = fmul fast float %1688, 0x3F70101000000000
  %1690 = fmul fast float %1677, %1682
  %1691 = fadd fast float %1690, %1685
  %1692 = fmul fast float %1691, 0x3F70101000000000
  %1693 = fadd fast float %1678, -5.000000e-01
  %1694 = fadd fast float %1680, -5.000000e-01
  %1695 = fmul fast float %1693, %1689
  %1696 = fmul fast float %1694, %1689
  %1697 = fadd fast float %1695, 5.000000e-01
  %1698 = fadd fast float %1696, 5.000000e-01
  %1699 = fmul fast float %1697, 2.000000e+00
  %1700 = fadd fast float %1699, -1.000000e+00
  %1701 = fmul fast float %1698, 2.000000e+00
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = fadd fast float %1700, %1702
  %1704 = fmul fast float %1703, 5.000000e-01
  %1705 = fsub fast float %1700, %1702
  %1706 = fmul fast float %1705, 5.000000e-01
  %1707 = call float @dx.op.unary.f32(i32 6, float %1704)  ; FAbs(value)
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1710 = fsub fast float %1708, %1709
  %1711 = call float @dx.op.dot3.f32(i32 55, float %1704, float %1706, float %1710, float %1704, float %1706, float %1710)  ; Dot3(ax,ay,az,bx,by,bz)
  %1712 = call float @dx.op.unary.f32(i32 25, float %1711)  ; Rsqrt(value)
  %1713 = fmul fast float %1704, %1712
  %1714 = fmul fast float %1706, %1712
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 67108864
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1735, label %1719

; <label>:1719                                    ; preds = %1667
  %1720 = add i32 %60, 296
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = and i32 %1722, 65535
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 65535
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = lshr i32 %1722, 16
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = fsub fast float %1692, %1730
  %1732 = fmul fast float %1731, %1724
  %1733 = fadd fast float %1732, %1728
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  br label %1735

; <label>:1735                                    ; preds = %1719, %1667
  %1736 = phi float [ %1734, %1719 ], [ %1692, %1667 ]
  %1737 = call float @dx.op.dot2.f32(i32 54, float %1713, float %1714, float %1156, float %1157)  ; Dot2(ax,ay,bx,by)
  %1738 = call float @dx.op.dot2.f32(i32 54, float %1713, float %1714, float %1158, float %1159)  ; Dot2(ax,ay,bx,by)
  br label %1739

; <label>:1739                                    ; preds = %1735, %1645
  %1740 = phi float [ %1736, %1735 ], [ 0x3FD6666660000000, %1645 ]
  %1741 = phi float [ %1737, %1735 ], [ 0.000000e+00, %1645 ]
  %1742 = phi float [ %1738, %1735 ], [ 0.000000e+00, %1645 ]
  %1743 = phi float [ %1679, %1735 ], [ 1.000000e+00, %1645 ]
  %1744 = add i32 %60, 176
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = lshr i32 %1746, 22
  %1748 = shl nuw nsw i32 %1747, 5
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 64
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1787, label %1754

; <label>:1754                                    ; preds = %1739
  %1755 = add i32 %60, 396
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = add i32 %1757, 0
  %1759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 131072
  %1763 = icmp eq i32 %1762, 0
  %1764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1759, %dx.types.Handle %100, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = fmul fast float %1765, %288
  %1769 = fmul fast float %1766, %291
  %1770 = fmul fast float %1767, %294
  br i1 %1763, label %1777, label %1771

; <label>:1771                                    ; preds = %1754
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = fmul fast float %1773, %1768
  %1775 = fmul fast float %1773, %1769
  %1776 = fmul fast float %1773, %1770
  br label %1777

; <label>:1777                                    ; preds = %1771, %1754
  %1778 = phi float [ %1774, %1771 ], [ %1768, %1754 ]
  %1779 = phi float [ %1775, %1771 ], [ %1769, %1754 ]
  %1780 = phi float [ %1776, %1771 ], [ %1770, %1754 ]
  %1781 = fmul fast float %1778, %1749
  %1782 = select i1 %229, float %1781, float %1778
  %1783 = call float @dx.op.dot3.f32(i32 55, float %1782, float %1779, float %1780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1784 = select i1 %229, float 0.000000e+00, float %1778
  %1785 = select i1 %229, float %1783, float %1779
  %1786 = select i1 %229, float 0.000000e+00, float %1780
  br label %1787

; <label>:1787                                    ; preds = %1777, %1739
  %1788 = phi float [ %1784, %1777 ], [ 0.000000e+00, %1739 ]
  %1789 = phi float [ %1785, %1777 ], [ 0.000000e+00, %1739 ]
  %1790 = phi float [ %1786, %1777 ], [ 0.000000e+00, %1739 ]
  %1791 = add i32 %60, 112
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = lshr i32 %1793, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1660, float %1661, float %1662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = fmul fast float %1798, %1799
  %1801 = fadd fast float %1800, %1795
  %1802 = fmul fast float %1801, 0x3F70101020000000
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  br i1 %1144, label %1804, label %1812

; <label>:1804                                    ; preds = %1787
  %1805 = fsub fast float 1.000000e+00, %1440
  %1806 = fmul fast float %1805, %1132
  %1807 = fmul fast float %1805, %1133
  %1808 = fmul fast float %1805, %1134
  %1809 = fmul fast float %1805, %1135
  %1810 = fmul fast float %1805, %1136
  %1811 = fmul fast float %1805, %1137
  br label %1812

; <label>:1812                                    ; preds = %1804, %1787
  %1813 = phi float [ %1806, %1804 ], [ %1132, %1787 ]
  %1814 = phi float [ %1807, %1804 ], [ %1133, %1787 ]
  %1815 = phi float [ %1808, %1804 ], [ %1134, %1787 ]
  %1816 = phi float [ %1809, %1804 ], [ %1135, %1787 ]
  %1817 = phi float [ %1810, %1804 ], [ %1136, %1787 ]
  %1818 = phi float [ %1811, %1804 ], [ %1137, %1787 ]
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 3
  %1822 = icmp eq i32 %1821, 3
  br i1 %1822, label %1901, label %1823

; <label>:1823                                    ; preds = %1812
  %1824 = and i32 %1820, 16
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %1440, float 0.000000e+00
  %1827 = icmp eq i32 %1821, 0
  br i1 %1827, label %1828, label %1856

; <label>:1828                                    ; preds = %1823
  %1829 = and i32 %1820, 64
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1440, float 0.000000e+00
  %1832 = fsub fast float %1660, %1813
  %1833 = fsub fast float %1661, %1814
  %1834 = fsub fast float %1662, %1815
  %1835 = fmul fast float %1826, %1832
  %1836 = fmul fast float %1826, %1833
  %1837 = fmul fast float %1826, %1834
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fsub fast float %1646, %1138
  %1842 = fmul fast float %1826, %1841
  %1843 = fadd fast float %1842, %1138
  %1844 = fsub fast float %1788, %1816
  %1845 = fsub fast float %1789, %1817
  %1846 = fsub fast float %1790, %1818
  %1847 = fmul fast float %1831, %1844
  %1848 = fmul fast float %1831, %1845
  %1849 = fmul fast float %1831, %1846
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fsub fast float %1803, %1142
  %1854 = fmul fast float %1826, %1853
  %1855 = fadd fast float %1854, %1142
  br label %1901

; <label>:1856                                    ; preds = %1823
  %1857 = icmp eq i32 %1821, 1
  br i1 %1857, label %1858, label %1871

; <label>:1858                                    ; preds = %1856
  %1859 = fadd fast float %1660, -1.000000e+00
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fmul fast float %1826, %1859
  %1863 = fmul fast float %1826, %1860
  %1864 = fmul fast float %1826, %1861
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  br label %1901

; <label>:1871                                    ; preds = %1856
  %1872 = icmp eq i32 %1821, 2
  br i1 %1872, label %1873, label %1901

; <label>:1873                                    ; preds = %1871
  %1874 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fmul fast float %1877, %1826
  %1881 = fmul fast float %1878, %1826
  %1882 = fmul fast float %1879, %1826
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fmul fast float %1883, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1813
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1813
  %1891 = fmul fast float %1884, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1814
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1814
  %1896 = fmul fast float %1885, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1815
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1815
  br label %1901

; <label>:1901                                    ; preds = %1873, %1871, %1858, %1828, %1812
  %1902 = phi float [ %1813, %1812 ], [ %1890, %1873 ], [ %1813, %1871 ], [ %1868, %1858 ], [ %1838, %1828 ]
  %1903 = phi float [ %1814, %1812 ], [ %1895, %1873 ], [ %1814, %1871 ], [ %1869, %1858 ], [ %1839, %1828 ]
  %1904 = phi float [ %1815, %1812 ], [ %1900, %1873 ], [ %1815, %1871 ], [ %1870, %1858 ], [ %1840, %1828 ]
  %1905 = phi float [ %1816, %1812 ], [ %1816, %1873 ], [ %1816, %1871 ], [ %1816, %1858 ], [ %1850, %1828 ]
  %1906 = phi float [ %1817, %1812 ], [ %1817, %1873 ], [ %1817, %1871 ], [ %1817, %1858 ], [ %1851, %1828 ]
  %1907 = phi float [ %1818, %1812 ], [ %1818, %1873 ], [ %1818, %1871 ], [ %1818, %1858 ], [ %1852, %1828 ]
  %1908 = phi float [ %1138, %1812 ], [ %1138, %1873 ], [ %1138, %1871 ], [ %1138, %1858 ], [ %1843, %1828 ]
  %1909 = phi float [ %1142, %1812 ], [ %1142, %1873 ], [ %1142, %1871 ], [ %1142, %1858 ], [ %1855, %1828 ]
  %1910 = and i32 %1820, 12
  %1911 = icmp eq i32 %1910, 12
  br i1 %1911, label %1984, label %1912

; <label>:1912                                    ; preds = %1901
  %1913 = and i32 %1820, 2097184
  %1914 = icmp eq i32 %1913, 2097184
  %1915 = select i1 %1914, float %1440, float 0.000000e+00
  %1916 = and i32 %1820, 4194336
  %1917 = icmp eq i32 %1916, 4194336
  %1918 = select i1 %1917, float %1440, float 0.000000e+00
  %1919 = and i32 %1820, 8388640
  %1920 = icmp eq i32 %1919, 8388640
  %1921 = select i1 %1920, float %1440, float 0.000000e+00
  %1922 = icmp eq i32 %1910, 0
  br i1 %1922, label %1923, label %1936

; <label>:1923                                    ; preds = %1912
  %1924 = fsub fast float %1741, %1130
  %1925 = fsub fast float %1742, %1131
  %1926 = fmul fast float %1915, %1924
  %1927 = fmul fast float %1915, %1925
  %1928 = fadd fast float %1926, %1130
  %1929 = fadd fast float %1927, %1131
  %1930 = fsub fast float %1743, %1141
  %1931 = fmul fast float %1918, %1930
  %1932 = fadd fast float %1931, %1141
  %1933 = fsub fast float %1740, %1140
  %1934 = fmul fast float %1921, %1933
  %1935 = fadd fast float %1934, %1140
  br label %1984

; <label>:1936                                    ; preds = %1912
  %1937 = icmp eq i32 %1910, 4
  br i1 %1937, label %1938, label %1970

; <label>:1938                                    ; preds = %1936
  %1939 = fmul fast float %1915, %1741
  %1940 = fmul fast float %1915, %1742
  %1941 = fadd fast float %1939, %1130
  %1942 = fadd fast float %1940, %1131
  %1943 = call float @dx.op.binary.f32(i32 36, float %1141, float %1743)  ; FMin(a,b)
  %1944 = fsub fast float %1943, %1141
  %1945 = fmul fast float %1944, %1918
  %1946 = fadd fast float %1945, %1141
  %1947 = fadd fast float %1740, %1140
  %1948 = fmul fast float %1947, 0x3FF337FAE0000000
  %1949 = fmul fast float %1140, %1140
  %1950 = fmul fast float %1740, %1740
  %1951 = fadd fast float %1950, %1949
  %1952 = fmul fast float %1951, 0x3FE5152B00000000
  %1953 = fmul fast float %1140, 0xBFCC1F85E0000000
  %1954 = fmul fast float %1953, %1740
  %1955 = fadd fast float %1954, 0xBFE1363700000000
  %1956 = fadd fast float %1955, %1948
  %1957 = fsub fast float %1956, %1952
  %1958 = fmul fast float %1947, 0x3FBA6F0D00000000
  %1959 = fmul fast float %1951, 0x3FD0432880000000
  %1960 = fmul fast float %1140, 0xBFEF110800000000
  %1961 = fmul fast float %1960, %1740
  %1962 = fadd fast float %1961, 1.000000e+00
  %1963 = fsub fast float %1962, %1958
  %1964 = fadd fast float %1963, %1959
  %1965 = fdiv fast float %1957, %1964
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = fsub fast float %1966, %1140
  %1968 = fmul fast float %1967, %1921
  %1969 = fadd fast float %1968, %1140
  br label %1984

; <label>:1970                                    ; preds = %1936
  %1971 = icmp eq i32 %1910, 8
  br i1 %1971, label %1972, label %1984

; <label>:1972                                    ; preds = %1970
  %1973 = fmul fast float %1915, %1741
  %1974 = fmul fast float %1915, %1742
  %1975 = fadd fast float %1973, %1130
  %1976 = fadd fast float %1974, %1131
  %1977 = call float @dx.op.binary.f32(i32 36, float %1141, float %1743)  ; FMin(a,b)
  %1978 = fsub fast float %1977, %1141
  %1979 = fmul fast float %1978, %1918
  %1980 = fadd fast float %1979, %1141
  %1981 = fsub fast float %1740, %1140
  %1982 = fmul fast float %1921, %1981
  %1983 = fadd fast float %1982, %1140
  br label %1984

; <label>:1984                                    ; preds = %1972, %1970, %1938, %1923, %1901, %1439, %1143, %1129
  %1985 = phi float [ %1130, %1901 ], [ %1130, %1439 ], [ %1130, %1129 ], [ %1975, %1972 ], [ %1130, %1970 ], [ %1941, %1938 ], [ %1928, %1923 ], [ %1130, %1143 ]
  %1986 = phi float [ %1131, %1901 ], [ %1131, %1439 ], [ %1131, %1129 ], [ %1976, %1972 ], [ %1131, %1970 ], [ %1942, %1938 ], [ %1929, %1923 ], [ %1131, %1143 ]
  %1987 = phi float [ %1902, %1901 ], [ %1132, %1439 ], [ %1132, %1129 ], [ %1902, %1972 ], [ %1902, %1970 ], [ %1902, %1938 ], [ %1902, %1923 ], [ %1132, %1143 ]
  %1988 = phi float [ %1903, %1901 ], [ %1133, %1439 ], [ %1133, %1129 ], [ %1903, %1972 ], [ %1903, %1970 ], [ %1903, %1938 ], [ %1903, %1923 ], [ %1133, %1143 ]
  %1989 = phi float [ %1904, %1901 ], [ %1134, %1439 ], [ %1134, %1129 ], [ %1904, %1972 ], [ %1904, %1970 ], [ %1904, %1938 ], [ %1904, %1923 ], [ %1134, %1143 ]
  %1990 = phi float [ %1905, %1901 ], [ %1135, %1439 ], [ %1135, %1129 ], [ %1905, %1972 ], [ %1905, %1970 ], [ %1905, %1938 ], [ %1905, %1923 ], [ %1135, %1143 ]
  %1991 = phi float [ %1906, %1901 ], [ %1136, %1439 ], [ %1136, %1129 ], [ %1906, %1972 ], [ %1906, %1970 ], [ %1906, %1938 ], [ %1906, %1923 ], [ %1136, %1143 ]
  %1992 = phi float [ %1907, %1901 ], [ %1137, %1439 ], [ %1137, %1129 ], [ %1907, %1972 ], [ %1907, %1970 ], [ %1907, %1938 ], [ %1907, %1923 ], [ %1137, %1143 ]
  %1993 = phi float [ %1908, %1901 ], [ %1138, %1439 ], [ %1138, %1129 ], [ %1908, %1972 ], [ %1908, %1970 ], [ %1908, %1938 ], [ %1908, %1923 ], [ %1138, %1143 ]
  %1994 = phi float [ %1140, %1901 ], [ %1140, %1439 ], [ %1140, %1129 ], [ %1983, %1972 ], [ %1140, %1970 ], [ %1969, %1938 ], [ %1935, %1923 ], [ %1140, %1143 ]
  %1995 = phi float [ %1141, %1901 ], [ %1141, %1439 ], [ %1141, %1129 ], [ %1980, %1972 ], [ %1141, %1970 ], [ %1946, %1938 ], [ %1932, %1923 ], [ %1141, %1143 ]
  %1996 = phi float [ %1909, %1901 ], [ %1142, %1439 ], [ %1142, %1129 ], [ %1909, %1972 ], [ %1909, %1970 ], [ %1909, %1938 ], [ %1909, %1923 ], [ %1142, %1143 ]
  br i1 %415, label %2838, label %1997

; <label>:1997                                    ; preds = %1984
  %1998 = icmp ult i32 %471, 3
  %1999 = add i32 %60, 56
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = add i32 %60, 60
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = or i32 %2004, %2001
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2838, label %2007

; <label>:2007                                    ; preds = %1997
  %2008 = and i32 %2001, 262144
  %2009 = icmp ne i32 %2008, 0
  %2010 = select i1 %2009, float %63, float 1.000000e+00
  %2011 = select i1 %2009, float %64, float 0.000000e+00
  %2012 = select i1 %2009, float %65, float 0.000000e+00
  %2013 = select i1 %2009, float %66, float 1.000000e+00
  %2014 = select i1 %2009, float %67, float %83
  %2015 = select i1 %2009, float %68, float %84
  %2016 = add i32 %60, 316
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 16
  %2020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2019)  ; LegacyF16ToF32(value)
  %2021 = fmul fast float %2020, 0x3F50624DE0000000
  %2022 = add i32 %60, 120
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 16
  %2026 = and i32 %2025, 255
  %2027 = lshr i32 %2024, 24
  %2028 = add i32 %60, 324
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 65535
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = lshr i32 %2030, 16
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = add i32 %60, 64
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = lshr i32 %2037, 22
  %2039 = shl nuw nsw i32 %2038, 5
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = shl i32 %2037, 4
  %2042 = and i32 %2041, 32752
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = lshr i32 %2037, 7
  %2045 = and i32 %2044, 32752
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2049 = fmul fast float %2048, 1.000000e+03
  %2050 = fmul fast float %365, %2049
  %2051 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2052 = fadd fast float %2051, %355
  %2053 = fmul fast float %366, %2049
  %2054 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2055 = fadd fast float %2054, %357
  %2056 = fmul fast float %2021, %2049
  %2057 = call float @dx.op.unary.f32(i32 22, float %2056)  ; Frc(value)
  %2058 = fmul fast float %2057, 0x401921FB60000000
  %2059 = fadd fast float %2058, %2040
  %2060 = call float @dx.op.unary.f32(i32 13, float %2059)  ; Sin(value)
  %2061 = call float @dx.op.unary.f32(i32 12, float %2059)  ; Cos(value)
  %2062 = fsub fast float -0.000000e+00, %2060
  %2063 = fadd fast float %2014, -5.000000e-01
  %2064 = fadd fast float %2015, -5.000000e-01
  %2065 = fmul fast float %2032, %2063
  %2066 = fmul fast float %2034, %2064
  %2067 = fadd fast float %2065, 5.000000e-01
  %2068 = fadd fast float %2066, 5.000000e-01
  %2069 = fmul fast float %2043, %2067
  %2070 = fmul fast float %2046, %2068
  %2071 = fmul fast float %2061, %2069
  %2072 = call float @dx.op.tertiary.f32(i32 46, float %2062, float %2070, float %2071)  ; FMad(a,b,c)
  %2073 = fmul fast float %2060, %2069
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %2061, float %2070, float %2073)  ; FMad(a,b,c)
  %2075 = fadd fast float %2052, %2072
  %2076 = fadd fast float %2055, %2074
  %2077 = icmp ugt i32 %2026, 1
  %2078 = icmp ugt i32 %2024, 33554431
  %2079 = or i1 %2078, %2077
  br i1 %2079, label %2080, label %2105

; <label>:2080                                    ; preds = %2007
  %2081 = add i32 %60, 260
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = lshr i32 %2083, 16
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = fmul fast float %2048, %2085
  %2087 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2088 = mul nuw nsw i32 %2026, %2027
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2087, %2089
  %2091 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2092 = fptoui float %2091 to i32
  %2093 = urem i32 %2092, %2026
  %2094 = udiv i32 %2092, %2027
  %2095 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2096 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2097 = uitofp i32 %2093 to float
  %2098 = uitofp i32 %2094 to float
  %2099 = fadd fast float %2095, %2097
  %2100 = fadd fast float %2096, %2098
  %2101 = uitofp i32 %2026 to float
  %2102 = uitofp i32 %2027 to float
  %2103 = fdiv fast float %2099, %2101
  %2104 = fdiv fast float %2100, %2102
  br label %2105

; <label>:2105                                    ; preds = %2080, %2007
  %2106 = phi float [ %2103, %2080 ], [ %2075, %2007 ]
  %2107 = phi float [ %2104, %2080 ], [ %2076, %2007 ]
  %2108 = and i32 %2001, 16777216
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2219, label %2110

; <label>:2110                                    ; preds = %2105
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2115 = fadd fast float %2112, %167
  %2116 = fadd fast float %2113, %168
  %2117 = fadd fast float %2114, %169
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = icmp eq i32 %61, 65535
  br i1 %2121, label %2216, label %2122

; <label>:2122                                    ; preds = %2110
  %2123 = lshr i32 %61, 1
  %2124 = shl i32 %2123, 2
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = and i32 %61, 1
  %2128 = icmp ne i32 %2127, 0
  %2129 = lshr i32 %2126, 16
  %2130 = and i32 %2126, 65535
  %2131 = select i1 %2128, i32 %2129, i32 %2130
  %2132 = icmp eq i32 %2131, 65535
  br i1 %2132, label %2212, label %2133

; <label>:2133                                    ; preds = %2122
  %2134 = mul nuw nsw i32 %2131, 40
  %2135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = add nuw nsw i32 %2134, 12
  %2140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.ResRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.ResRet.f32 %2140, 2
  %2144 = add nuw nsw i32 %2134, 24
  %2145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = add nuw nsw i32 %2134, 36
  %2150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.f32 %2150, 0
  %2152 = fsub fast float %2115, %2136
  %2153 = fsub fast float %2116, %2137
  %2154 = fsub fast float %2117, %2138
  %2155 = fmul fast float %2151, %2152
  %2156 = fmul fast float %2151, %2153
  %2157 = fmul fast float %2151, %2154
  %2158 = call float @dx.op.unary.f32(i32 27, float %2155)  ; Round_ni(value)
  %2159 = call float @dx.op.unary.f32(i32 27, float %2156)  ; Round_ni(value)
  %2160 = call float @dx.op.unary.f32(i32 27, float %2157)  ; Round_ni(value)
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fmul fast float %2161, %2141
  %2165 = fmul fast float %2162, %2142
  %2166 = fmul fast float %2163, %2143
  %2167 = shl i32 %61, 2
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2173 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2171, %dx.types.Handle %55, float %2172, float %2173, float %2174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = fmul fast float %2176, 1.023000e+03
  %2180 = fmul fast float %2177, 1.023000e+03
  %2181 = fmul fast float %2178, 1.023000e+03
  %2182 = fadd fast float %2179, 5.000000e-01
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2186 = call float @dx.op.unary.f32(i32 27, float %2183)  ; Round_ni(value)
  %2187 = call float @dx.op.unary.f32(i32 27, float %2184)  ; Round_ni(value)
  %2188 = fsub fast float %2155, %2158
  %2189 = fsub fast float %2156, %2159
  %2190 = fsub fast float %2157, %2160
  %2191 = fmul fast float %2188, 7.500000e-01
  %2192 = fmul fast float %2189, 7.500000e-01
  %2193 = fmul fast float %2190, 7.500000e-01
  %2194 = fadd fast float %2158, 1.250000e-01
  %2195 = fadd fast float %2194, %2191
  %2196 = fadd fast float %2195, %2185
  %2197 = fadd fast float %2159, 1.250000e-01
  %2198 = fadd fast float %2197, %2192
  %2199 = fadd fast float %2198, %2186
  %2200 = fadd fast float %2160, 1.250000e-01
  %2201 = fadd fast float %2200, %2193
  %2202 = fadd fast float %2201, %2187
  %2203 = fmul fast float %2196, %2146
  %2204 = fmul fast float %2199, %2147
  %2205 = fmul fast float %2202, %2148
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = add i32 %2207, 0
  %2209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2209, %dx.types.Handle %53, float %2203, float %2204, float %2205, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  br label %2212

; <label>:2212                                    ; preds = %2133, %2122
  %2213 = phi float [ %2211, %2133 ], [ -1.000000e+00, %2122 ]
  %2214 = fadd fast float %2213, %2120
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  br label %2216

; <label>:2216                                    ; preds = %2212, %2110
  %2217 = phi float [ %2215, %2212 ], [ %2120, %2110 ]
  %2218 = fmul fast float %2217, %467
  br label %2219

; <label>:2219                                    ; preds = %2216, %2105
  %2220 = phi float [ %2218, %2216 ], [ %467, %2105 ]
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 256
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2271, label %2225

; <label>:2225                                    ; preds = %2219
  %2226 = add i32 %60, 432
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %2228, 0
  %2230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2230, %dx.types.Handle %101, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = add i32 %60, 132
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = shl i32 %2235, 4
  %2237 = and i32 %2236, 32752
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = lshr i32 %2235, 7
  %2240 = and i32 %2239, 32752
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = fsub fast float 1.000000e+00, %2220
  %2243 = call float @dx.op.binary.f32(i32 35, float %2242, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2244 = bitcast float %2220 to i32
  %2245 = sitofp i32 %2244 to float
  %2246 = fadd fast float %2245, 0xC1CFBF8940000000
  %2247 = fmul fast float %2241, %2246
  %2248 = fadd fast float %2247, 0x41CFBF8940000000
  %2249 = fptosi float %2248 to i32
  %2250 = bitcast i32 %2249 to float
  %2251 = bitcast float %2243 to i32
  %2252 = sitofp i32 %2251 to float
  %2253 = fadd fast float %2252, 0xC1CFBF8940000000
  %2254 = fmul fast float %2253, %2241
  %2255 = fadd fast float %2254, 0x41CFBF8940000000
  %2256 = fptosi float %2255 to i32
  %2257 = bitcast i32 %2256 to float
  %2258 = fmul fast float %2250, %2238
  %2259 = fmul fast float %2257, %2238
  %2260 = fsub fast float %2243, %2258
  %2261 = fadd fast float %2259, %2243
  %2262 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2264 = fsub fast float %2232, %2262
  %2265 = fsub fast float %2263, %2262
  %2266 = bitcast float %2265 to i32
  %2267 = sub nsw i32 2129859010, %2266
  %2268 = bitcast i32 %2267 to float
  %2269 = fmul fast float %2268, %2264
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  br label %2271

; <label>:2271                                    ; preds = %2225, %2219
  %2272 = phi float [ %2270, %2225 ], [ %2220, %2219 ]
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 128
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2293, label %2277

; <label>:2277                                    ; preds = %2271
  %2278 = add i32 %60, 416
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = add i32 %2280, 0
  %2282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2282, %dx.types.Handle %101, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2284 = extractvalue %dx.types.ResRet.f32 %2283, 0
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 524288
  %2288 = icmp ne i32 %2287, 0
  %2289 = fcmp fast ogt float %2284, 0x3FE0101020000000
  %2290 = select i1 %2289, float 1.000000e+00, float 0.000000e+00
  %2291 = select i1 %2288, float %2290, float %2284
  %2292 = fmul fast float %2291, %2272
  br label %2293

; <label>:2293                                    ; preds = %2277, %2271
  %2294 = phi float [ %2292, %2277 ], [ %2272, %2271 ]
  %2295 = fcmp fast ult float %2294, 0x3F70101020000000
  br i1 %2295, label %2838, label %2296

; <label>:2296                                    ; preds = %2293
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 16
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2499, label %2301

; <label>:2301                                    ; preds = %2296
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = add i32 %60, 368
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2308, %dx.types.Handle %100, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = and i32 %2303, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = lshr i32 %2303, 8
  %2317 = and i32 %2316, 255
  %2318 = uitofp i32 %2317 to float
  %2319 = fmul fast float %2313, %2315
  %2320 = fadd fast float %2319, %2318
  %2321 = fmul fast float %2320, 0x3F70101000000000
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 512
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2334, label %2326

; <label>:2326                                    ; preds = %2301
  %2327 = add i32 %60, 448
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %101, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  br label %2334

; <label>:2334                                    ; preds = %2326, %2301
  %2335 = phi float [ %2333, %2326 ], [ 1.000000e+00, %2301 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 33554432
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2446, label %2340

; <label>:2340                                    ; preds = %2334
  %2341 = add i32 %60, 256
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = lshr i32 %2343, 16
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = add i32 %60, 260
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 65535
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = lshr i32 %2354, 24
  %2356 = uitofp i32 %2355 to float
  %2357 = fmul fast float %2356, 0x3F70101020000000
  %2358 = and i32 %2354, 255
  %2359 = uitofp i32 %2358 to float
  %2360 = fmul fast float %2359, 0x3F70101020000000
  %2361 = lshr i32 %2354, 8
  %2362 = and i32 %2361, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = lshr i32 %2354, 16
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = add i32 %60, 252
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = lshr i32 %2371, 24
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 0x3F70101020000000
  %2375 = and i32 %2371, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = lshr i32 %2371, 8
  %2379 = and i32 %2378, 255
  %2380 = uitofp i32 %2379 to float
  %2381 = fmul fast float %2380, 0x3F70101020000000
  %2382 = lshr i32 %2371, 16
  %2383 = and i32 %2382, 255
  %2384 = uitofp i32 %2383 to float
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = bitcast float %2310 to i32
  %2387 = ashr i32 %2386, 1
  %2388 = sub nsw i32 1597463174, %2387
  %2389 = bitcast i32 %2388 to float
  %2390 = fmul fast float %2310, 5.000000e-01
  %2391 = fmul fast float %2389, %2389
  %2392 = fmul fast float %2391, %2390
  %2393 = fsub fast float 1.500000e+00, %2392
  %2394 = fmul fast float %2389, %2310
  %2395 = fmul fast float %2394, %2393
  %2396 = bitcast float %2311 to i32
  %2397 = ashr i32 %2396, 1
  %2398 = sub nsw i32 1597463174, %2397
  %2399 = bitcast i32 %2398 to float
  %2400 = fmul fast float %2311, 5.000000e-01
  %2401 = fmul fast float %2399, %2399
  %2402 = fmul fast float %2401, %2400
  %2403 = fsub fast float 1.500000e+00, %2402
  %2404 = fmul fast float %2399, %2311
  %2405 = fmul fast float %2404, %2403
  %2406 = bitcast float %2312 to i32
  %2407 = ashr i32 %2406, 1
  %2408 = sub nsw i32 1597463174, %2407
  %2409 = bitcast i32 %2408 to float
  %2410 = fmul fast float %2312, 5.000000e-01
  %2411 = fmul fast float %2409, %2409
  %2412 = fmul fast float %2411, %2410
  %2413 = fsub fast float 1.500000e+00, %2412
  %2414 = fmul fast float %2409, %2312
  %2415 = fmul fast float %2414, %2413
  %2416 = fsub fast float %2395, %2377
  %2417 = fsub fast float %2405, %2381
  %2418 = fsub fast float %2415, %2385
  %2419 = fmul fast float %2416, %2345
  %2420 = fmul fast float %2417, %2347
  %2421 = fmul fast float %2418, %2352
  %2422 = fadd fast float %2419, %2360
  %2423 = fadd fast float %2420, %2364
  %2424 = fadd fast float %2421, %2368
  %2425 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2428 = fmul fast float %2425, %2425
  %2429 = fmul fast float %2426, %2426
  %2430 = fmul fast float %2427, %2427
  %2431 = fsub fast float %2428, %2310
  %2432 = fsub fast float %2429, %2311
  %2433 = fsub fast float %2430, %2312
  %2434 = fmul fast float %2431, %2335
  %2435 = fmul fast float %2432, %2335
  %2436 = fmul fast float %2433, %2335
  %2437 = fadd fast float %2434, %2310
  %2438 = fadd fast float %2435, %2311
  %2439 = fadd fast float %2436, %2312
  %2440 = fadd fast float %2357, %2321
  %2441 = fsub fast float %2440, %2374
  %2442 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2443 = fsub fast float %2442, %2321
  %2444 = fmul fast float %2443, %2335
  %2445 = fadd fast float %2444, %2321
  br label %2499

; <label>:2446                                    ; preds = %2334
  %2447 = and i32 %2337, 134217728
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2483, label %2449

; <label>:2449                                    ; preds = %2446
  %2450 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2452 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fmul fast float %2453, %2335
  %2457 = fmul fast float %2454, %2335
  %2458 = fmul fast float %2455, %2335
  %2459 = fadd fast float %2456, 5.000000e-01
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2464 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2465 = fmul fast float %2459, 2.000000e+00
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2466, %2462
  %2468 = fadd fast float %2467, %2465
  %2469 = fmul fast float %2468, %2462
  %2470 = fmul fast float %2460, 2.000000e+00
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2471, %2463
  %2473 = fadd fast float %2472, %2470
  %2474 = fmul fast float %2473, %2463
  %2475 = fmul fast float %2461, 2.000000e+00
  %2476 = fsub fast float 1.000000e+00, %2475
  %2477 = fmul fast float %2476, %2464
  %2478 = fadd fast float %2477, %2475
  %2479 = fmul fast float %2478, %2464
  %2480 = fmul fast float %2469, %2469
  %2481 = fmul fast float %2474, %2474
  %2482 = fmul fast float %2479, %2479
  br label %2499

; <label>:2483                                    ; preds = %2446
  %2484 = fmul fast float %342, %342
  %2485 = fmul fast float %346, %346
  %2486 = fmul fast float %350, %350
  %2487 = fadd fast float %2484, -1.000000e+00
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fmul fast float %2335, %2487
  %2491 = fmul fast float %2335, %2488
  %2492 = fmul fast float %2335, %2489
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fmul fast float %2493, %2310
  %2497 = fmul fast float %2494, %2311
  %2498 = fmul fast float %2495, %2312
  br label %2499

; <label>:2499                                    ; preds = %2483, %2449, %2340, %2296
  %2500 = phi float [ %2445, %2340 ], [ %2321, %2449 ], [ %2321, %2483 ], [ 0x3FA23C0BE0000000, %2296 ]
  %2501 = phi float [ %2437, %2340 ], [ %2480, %2449 ], [ %2496, %2483 ], [ 1.000000e+00, %2296 ]
  %2502 = phi float [ %2438, %2340 ], [ %2481, %2449 ], [ %2497, %2483 ], [ 1.000000e+00, %2296 ]
  %2503 = phi float [ %2439, %2340 ], [ %2482, %2449 ], [ %2498, %2483 ], [ 1.000000e+00, %2296 ]
  %2504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.i32 %2504, 1
  %2506 = and i32 %2505, 1
  %2507 = icmp ne i32 %2506, 0
  %2508 = add i32 %60, 356
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = and i32 %2510, 32
  %2512 = icmp ne i32 %2511, 0
  %2513 = and i1 %2507, %2512
  %2514 = select i1 %2513, float 1.000000e+00, float %2501
  %2515 = select i1 %2513, float 0x3FD3333340000000, float %2502
  %2516 = select i1 %2513, float 0x3FD3333340000000, float %2503
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 32
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2593, label %2521

; <label>:2521                                    ; preds = %2499
  %2522 = add i32 %60, 124
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %60, 384
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = add i32 %2527, 0
  %2529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2529, %dx.types.Handle %100, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = extractvalue %dx.types.ResRet.f32 %2530, 3
  %2535 = and i32 %2524, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = lshr i32 %2524, 8
  %2538 = and i32 %2537, 255
  %2539 = uitofp i32 %2538 to float
  %2540 = lshr i32 %2524, 16
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = fmul fast float %2542, 0x3F70101000000000
  %2544 = fmul fast float %2531, %2536
  %2545 = fadd fast float %2544, %2539
  %2546 = fmul fast float %2545, 0x3F70101000000000
  %2547 = fadd fast float %2532, -5.000000e-01
  %2548 = fadd fast float %2534, -5.000000e-01
  %2549 = fmul fast float %2547, %2543
  %2550 = fmul fast float %2548, %2543
  %2551 = fadd fast float %2549, 5.000000e-01
  %2552 = fadd fast float %2550, 5.000000e-01
  %2553 = fmul fast float %2551, 2.000000e+00
  %2554 = fadd fast float %2553, -1.000000e+00
  %2555 = fmul fast float %2552, 2.000000e+00
  %2556 = fadd fast float %2555, -1.000000e+00
  %2557 = fadd fast float %2554, %2556
  %2558 = fmul fast float %2557, 5.000000e-01
  %2559 = fsub fast float %2554, %2556
  %2560 = fmul fast float %2559, 5.000000e-01
  %2561 = call float @dx.op.unary.f32(i32 6, float %2558)  ; FAbs(value)
  %2562 = fsub fast float 1.000000e+00, %2561
  %2563 = call float @dx.op.unary.f32(i32 6, float %2560)  ; FAbs(value)
  %2564 = fsub fast float %2562, %2563
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2560, float %2564, float %2558, float %2560, float %2564)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = call float @dx.op.unary.f32(i32 25, float %2565)  ; Rsqrt(value)
  %2567 = fmul fast float %2558, %2566
  %2568 = fmul fast float %2560, %2566
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 67108864
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2589, label %2573

; <label>:2573                                    ; preds = %2521
  %2574 = add i32 %60, 312
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 65535
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 65535
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = lshr i32 %2576, 16
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = fsub fast float %2546, %2584
  %2586 = fmul fast float %2585, %2578
  %2587 = fadd fast float %2586, %2582
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  br label %2589

; <label>:2589                                    ; preds = %2573, %2521
  %2590 = phi float [ %2588, %2573 ], [ %2546, %2521 ]
  %2591 = call float @dx.op.dot2.f32(i32 54, float %2567, float %2568, float %2010, float %2011)  ; Dot2(ax,ay,bx,by)
  %2592 = call float @dx.op.dot2.f32(i32 54, float %2567, float %2568, float %2012, float %2013)  ; Dot2(ax,ay,bx,by)
  br label %2593

; <label>:2593                                    ; preds = %2589, %2499
  %2594 = phi float [ %2590, %2589 ], [ 0x3FD6666660000000, %2499 ]
  %2595 = phi float [ %2591, %2589 ], [ 0.000000e+00, %2499 ]
  %2596 = phi float [ %2592, %2589 ], [ 0.000000e+00, %2499 ]
  %2597 = phi float [ %2533, %2589 ], [ 1.000000e+00, %2499 ]
  %2598 = add i32 %60, 192
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = lshr i32 %2600, 22
  %2602 = shl nuw nsw i32 %2601, 5
  %2603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2602)  ; LegacyF16ToF32(value)
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 64
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2641, label %2608

; <label>:2608                                    ; preds = %2593
  %2609 = add i32 %60, 400
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 131072
  %2617 = icmp eq i32 %2616, 0
  %2618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %100, float %2106, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = fmul fast float %2619, %330
  %2623 = fmul fast float %2620, %333
  %2624 = fmul fast float %2621, %336
  br i1 %2617, label %2631, label %2625

; <label>:2625                                    ; preds = %2608
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = fmul fast float %2627, %2622
  %2629 = fmul fast float %2627, %2623
  %2630 = fmul fast float %2627, %2624
  br label %2631

; <label>:2631                                    ; preds = %2625, %2608
  %2632 = phi float [ %2628, %2625 ], [ %2622, %2608 ]
  %2633 = phi float [ %2629, %2625 ], [ %2623, %2608 ]
  %2634 = phi float [ %2630, %2625 ], [ %2624, %2608 ]
  %2635 = fmul fast float %2632, %2603
  %2636 = select i1 %229, float %2635, float %2632
  %2637 = call float @dx.op.dot3.f32(i32 55, float %2636, float %2633, float %2634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2638 = select i1 %229, float 0.000000e+00, float %2632
  %2639 = select i1 %229, float %2637, float %2633
  %2640 = select i1 %229, float 0.000000e+00, float %2634
  br label %2641

; <label>:2641                                    ; preds = %2631, %2593
  %2642 = phi float [ %2638, %2631 ], [ 0.000000e+00, %2593 ]
  %2643 = phi float [ %2639, %2631 ], [ 0.000000e+00, %2593 ]
  %2644 = phi float [ %2640, %2631 ], [ 0.000000e+00, %2593 ]
  %2645 = add i32 %60, 128
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = lshr i32 %2647, 8
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2514, float %2515, float %2516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = fmul fast float %2652, %2653
  %2655 = fadd fast float %2654, %2649
  %2656 = fmul fast float %2655, 0x3F70101020000000
  %2657 = call float @dx.op.unary.f32(i32 7, float %2656)  ; Saturate(value)
  br i1 %1998, label %2658, label %2666

; <label>:2658                                    ; preds = %2641
  %2659 = fsub fast float 1.000000e+00, %2294
  %2660 = fmul fast float %2659, %1987
  %2661 = fmul fast float %2659, %1988
  %2662 = fmul fast float %2659, %1989
  %2663 = fmul fast float %2659, %1990
  %2664 = fmul fast float %2659, %1991
  %2665 = fmul fast float %2659, %1992
  br label %2666

; <label>:2666                                    ; preds = %2658, %2641
  %2667 = phi float [ %2660, %2658 ], [ %1987, %2641 ]
  %2668 = phi float [ %2661, %2658 ], [ %1988, %2641 ]
  %2669 = phi float [ %2662, %2658 ], [ %1989, %2641 ]
  %2670 = phi float [ %2663, %2658 ], [ %1990, %2641 ]
  %2671 = phi float [ %2664, %2658 ], [ %1991, %2641 ]
  %2672 = phi float [ %2665, %2658 ], [ %1992, %2641 ]
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 3
  %2676 = icmp eq i32 %2675, 3
  br i1 %2676, label %2755, label %2677

; <label>:2677                                    ; preds = %2666
  %2678 = and i32 %2674, 16
  %2679 = icmp ne i32 %2678, 0
  %2680 = select i1 %2679, float %2294, float 0.000000e+00
  %2681 = icmp eq i32 %2675, 0
  br i1 %2681, label %2682, label %2710

; <label>:2682                                    ; preds = %2677
  %2683 = and i32 %2674, 64
  %2684 = icmp ne i32 %2683, 0
  %2685 = select i1 %2684, float %2294, float 0.000000e+00
  %2686 = fsub fast float %2514, %2667
  %2687 = fsub fast float %2515, %2668
  %2688 = fsub fast float %2516, %2669
  %2689 = fmul fast float %2680, %2686
  %2690 = fmul fast float %2680, %2687
  %2691 = fmul fast float %2680, %2688
  %2692 = fadd fast float %2689, %2667
  %2693 = fadd fast float %2690, %2668
  %2694 = fadd fast float %2691, %2669
  %2695 = fsub fast float %2500, %1993
  %2696 = fmul fast float %2680, %2695
  %2697 = fadd fast float %2696, %1993
  %2698 = fsub fast float %2642, %2670
  %2699 = fsub fast float %2643, %2671
  %2700 = fsub fast float %2644, %2672
  %2701 = fmul fast float %2685, %2698
  %2702 = fmul fast float %2685, %2699
  %2703 = fmul fast float %2685, %2700
  %2704 = fadd fast float %2701, %2670
  %2705 = fadd fast float %2702, %2671
  %2706 = fadd fast float %2703, %2672
  %2707 = fsub fast float %2657, %1996
  %2708 = fmul fast float %2680, %2707
  %2709 = fadd fast float %2708, %1996
  br label %2755

; <label>:2710                                    ; preds = %2677
  %2711 = icmp eq i32 %2675, 1
  br i1 %2711, label %2712, label %2725

; <label>:2712                                    ; preds = %2710
  %2713 = fadd fast float %2514, -1.000000e+00
  %2714 = fadd fast float %2515, -1.000000e+00
  %2715 = fadd fast float %2516, -1.000000e+00
  %2716 = fmul fast float %2680, %2713
  %2717 = fmul fast float %2680, %2714
  %2718 = fmul fast float %2680, %2715
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2668
  %2724 = fmul fast float %2721, %2669
  br label %2755

; <label>:2725                                    ; preds = %2710
  %2726 = icmp eq i32 %2675, 2
  br i1 %2726, label %2727, label %2755

; <label>:2727                                    ; preds = %2725
  %2728 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2729 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2730 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fmul fast float %2731, %2680
  %2735 = fmul fast float %2732, %2680
  %2736 = fmul fast float %2733, %2680
  %2737 = fadd fast float %2734, 5.000000e-01
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fmul fast float %2737, 2.000000e+00
  %2741 = fsub fast float 1.000000e+00, %2740
  %2742 = fmul fast float %2741, %2667
  %2743 = fadd fast float %2742, %2740
  %2744 = fmul fast float %2743, %2667
  %2745 = fmul fast float %2738, 2.000000e+00
  %2746 = fsub fast float 1.000000e+00, %2745
  %2747 = fmul fast float %2746, %2668
  %2748 = fadd fast float %2747, %2745
  %2749 = fmul fast float %2748, %2668
  %2750 = fmul fast float %2739, 2.000000e+00
  %2751 = fsub fast float 1.000000e+00, %2750
  %2752 = fmul fast float %2751, %2669
  %2753 = fadd fast float %2752, %2750
  %2754 = fmul fast float %2753, %2669
  br label %2755

; <label>:2755                                    ; preds = %2727, %2725, %2712, %2682, %2666
  %2756 = phi float [ %2667, %2666 ], [ %2744, %2727 ], [ %2667, %2725 ], [ %2722, %2712 ], [ %2692, %2682 ]
  %2757 = phi float [ %2668, %2666 ], [ %2749, %2727 ], [ %2668, %2725 ], [ %2723, %2712 ], [ %2693, %2682 ]
  %2758 = phi float [ %2669, %2666 ], [ %2754, %2727 ], [ %2669, %2725 ], [ %2724, %2712 ], [ %2694, %2682 ]
  %2759 = phi float [ %2670, %2666 ], [ %2670, %2727 ], [ %2670, %2725 ], [ %2670, %2712 ], [ %2704, %2682 ]
  %2760 = phi float [ %2671, %2666 ], [ %2671, %2727 ], [ %2671, %2725 ], [ %2671, %2712 ], [ %2705, %2682 ]
  %2761 = phi float [ %2672, %2666 ], [ %2672, %2727 ], [ %2672, %2725 ], [ %2672, %2712 ], [ %2706, %2682 ]
  %2762 = phi float [ %1993, %2666 ], [ %1993, %2727 ], [ %1993, %2725 ], [ %1993, %2712 ], [ %2697, %2682 ]
  %2763 = phi float [ %1996, %2666 ], [ %1996, %2727 ], [ %1996, %2725 ], [ %1996, %2712 ], [ %2709, %2682 ]
  %2764 = and i32 %2674, 12
  %2765 = icmp eq i32 %2764, 12
  br i1 %2765, label %2838, label %2766

; <label>:2766                                    ; preds = %2755
  %2767 = and i32 %2674, 2097184
  %2768 = icmp eq i32 %2767, 2097184
  %2769 = select i1 %2768, float %2294, float 0.000000e+00
  %2770 = and i32 %2674, 4194336
  %2771 = icmp eq i32 %2770, 4194336
  %2772 = select i1 %2771, float %2294, float 0.000000e+00
  %2773 = and i32 %2674, 8388640
  %2774 = icmp eq i32 %2773, 8388640
  %2775 = select i1 %2774, float %2294, float 0.000000e+00
  %2776 = icmp eq i32 %2764, 0
  br i1 %2776, label %2777, label %2790

; <label>:2777                                    ; preds = %2766
  %2778 = fsub fast float %2595, %1985
  %2779 = fsub fast float %2596, %1986
  %2780 = fmul fast float %2769, %2778
  %2781 = fmul fast float %2769, %2779
  %2782 = fadd fast float %2780, %1985
  %2783 = fadd fast float %2781, %1986
  %2784 = fsub fast float %2597, %1995
  %2785 = fmul fast float %2772, %2784
  %2786 = fadd fast float %2785, %1995
  %2787 = fsub fast float %2594, %1994
  %2788 = fmul fast float %2775, %2787
  %2789 = fadd fast float %2788, %1994
  br label %2838

; <label>:2790                                    ; preds = %2766
  %2791 = icmp eq i32 %2764, 4
  br i1 %2791, label %2792, label %2824

; <label>:2792                                    ; preds = %2790
  %2793 = fmul fast float %2769, %2595
  %2794 = fmul fast float %2769, %2596
  %2795 = fadd fast float %2793, %1985
  %2796 = fadd fast float %2794, %1986
  %2797 = call float @dx.op.binary.f32(i32 36, float %1995, float %2597)  ; FMin(a,b)
  %2798 = fsub fast float %2797, %1995
  %2799 = fmul fast float %2798, %2772
  %2800 = fadd fast float %2799, %1995
  %2801 = fadd fast float %2594, %1994
  %2802 = fmul fast float %2801, 0x3FF337FAE0000000
  %2803 = fmul fast float %1994, %1994
  %2804 = fmul fast float %2594, %2594
  %2805 = fadd fast float %2804, %2803
  %2806 = fmul fast float %2805, 0x3FE5152B00000000
  %2807 = fmul fast float %1994, 0xBFCC1F85E0000000
  %2808 = fmul fast float %2807, %2594
  %2809 = fadd fast float %2808, 0xBFE1363700000000
  %2810 = fadd fast float %2809, %2802
  %2811 = fsub fast float %2810, %2806
  %2812 = fmul fast float %2801, 0x3FBA6F0D00000000
  %2813 = fmul fast float %2805, 0x3FD0432880000000
  %2814 = fmul fast float %1994, 0xBFEF110800000000
  %2815 = fmul fast float %2814, %2594
  %2816 = fadd fast float %2815, 1.000000e+00
  %2817 = fsub fast float %2816, %2812
  %2818 = fadd fast float %2817, %2813
  %2819 = fdiv fast float %2811, %2818
  %2820 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2821 = fsub fast float %2820, %1994
  %2822 = fmul fast float %2821, %2775
  %2823 = fadd fast float %2822, %1994
  br label %2838

; <label>:2824                                    ; preds = %2790
  %2825 = icmp eq i32 %2764, 8
  br i1 %2825, label %2826, label %2838

; <label>:2826                                    ; preds = %2824
  %2827 = fmul fast float %2769, %2595
  %2828 = fmul fast float %2769, %2596
  %2829 = fadd fast float %2827, %1985
  %2830 = fadd fast float %2828, %1986
  %2831 = call float @dx.op.binary.f32(i32 36, float %1995, float %2597)  ; FMin(a,b)
  %2832 = fsub fast float %2831, %1995
  %2833 = fmul fast float %2832, %2772
  %2834 = fadd fast float %2833, %1995
  %2835 = fsub fast float %2594, %1994
  %2836 = fmul fast float %2775, %2835
  %2837 = fadd fast float %2836, %1994
  br label %2838

; <label>:2838                                    ; preds = %2826, %2824, %2792, %2777, %2755, %2293, %1997, %1984
  %2839 = phi float [ %1985, %2755 ], [ %1985, %2293 ], [ %1985, %1984 ], [ %2829, %2826 ], [ %1985, %2824 ], [ %2795, %2792 ], [ %2782, %2777 ], [ %1985, %1997 ]
  %2840 = phi float [ %1986, %2755 ], [ %1986, %2293 ], [ %1986, %1984 ], [ %2830, %2826 ], [ %1986, %2824 ], [ %2796, %2792 ], [ %2783, %2777 ], [ %1986, %1997 ]
  %2841 = phi float [ %2756, %2755 ], [ %1987, %2293 ], [ %1987, %1984 ], [ %2756, %2826 ], [ %2756, %2824 ], [ %2756, %2792 ], [ %2756, %2777 ], [ %1987, %1997 ]
  %2842 = phi float [ %2757, %2755 ], [ %1988, %2293 ], [ %1988, %1984 ], [ %2757, %2826 ], [ %2757, %2824 ], [ %2757, %2792 ], [ %2757, %2777 ], [ %1988, %1997 ]
  %2843 = phi float [ %2758, %2755 ], [ %1989, %2293 ], [ %1989, %1984 ], [ %2758, %2826 ], [ %2758, %2824 ], [ %2758, %2792 ], [ %2758, %2777 ], [ %1989, %1997 ]
  %2844 = phi float [ %2759, %2755 ], [ %1990, %2293 ], [ %1990, %1984 ], [ %2759, %2826 ], [ %2759, %2824 ], [ %2759, %2792 ], [ %2759, %2777 ], [ %1990, %1997 ]
  %2845 = phi float [ %2760, %2755 ], [ %1991, %2293 ], [ %1991, %1984 ], [ %2760, %2826 ], [ %2760, %2824 ], [ %2760, %2792 ], [ %2760, %2777 ], [ %1991, %1997 ]
  %2846 = phi float [ %2761, %2755 ], [ %1992, %2293 ], [ %1992, %1984 ], [ %2761, %2826 ], [ %2761, %2824 ], [ %2761, %2792 ], [ %2761, %2777 ], [ %1992, %1997 ]
  %2847 = phi float [ %2762, %2755 ], [ %1993, %2293 ], [ %1993, %1984 ], [ %2762, %2826 ], [ %2762, %2824 ], [ %2762, %2792 ], [ %2762, %2777 ], [ %1993, %1997 ]
  %2848 = phi float [ %1994, %2755 ], [ %1994, %2293 ], [ %1994, %1984 ], [ %2837, %2826 ], [ %1994, %2824 ], [ %2823, %2792 ], [ %2789, %2777 ], [ %1994, %1997 ]
  %2849 = phi float [ %1995, %2755 ], [ %1995, %2293 ], [ %1995, %1984 ], [ %2834, %2826 ], [ %1995, %2824 ], [ %2800, %2792 ], [ %2786, %2777 ], [ %1995, %1997 ]
  %2850 = phi float [ %2763, %2755 ], [ %1996, %2293 ], [ %1996, %1984 ], [ %2763, %2826 ], [ %2763, %2824 ], [ %2763, %2792 ], [ %2763, %2777 ], [ %1996, %1997 ]
  br i1 %417, label %3692, label %2851

; <label>:2851                                    ; preds = %2838
  %2852 = icmp ult i32 %471, 4
  %2853 = add i32 %60, 72
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = add i32 %60, 76
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = or i32 %2858, %2855
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %3692, label %2861

; <label>:2861                                    ; preds = %2851
  %2862 = and i32 %2855, 262144
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %63, float 1.000000e+00
  %2865 = select i1 %2863, float %64, float 0.000000e+00
  %2866 = select i1 %2863, float %65, float 0.000000e+00
  %2867 = select i1 %2863, float %66, float 1.000000e+00
  %2868 = select i1 %2863, float %67, float %83
  %2869 = select i1 %2863, float %68, float %84
  %2870 = add i32 %60, 332
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = lshr i32 %2872, 16
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = fmul fast float %2874, 0x3F50624DE0000000
  %2876 = add i32 %60, 136
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 16
  %2880 = and i32 %2879, 255
  %2881 = lshr i32 %2878, 24
  %2882 = add i32 %60, 340
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = lshr i32 %2884, 16
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = add i32 %60, 80
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 22
  %2893 = shl nuw nsw i32 %2892, 5
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = shl i32 %2891, 4
  %2896 = and i32 %2895, 32752
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2891, 7
  %2899 = and i32 %2898, 32752
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2903 = fmul fast float %2902, 1.000000e+03
  %2904 = fmul fast float %407, %2903
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = fadd fast float %2905, %397
  %2907 = fmul fast float %408, %2903
  %2908 = call float @dx.op.unary.f32(i32 22, float %2907)  ; Frc(value)
  %2909 = fadd fast float %2908, %399
  %2910 = fmul fast float %2875, %2903
  %2911 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2912 = fmul fast float %2911, 0x401921FB60000000
  %2913 = fadd fast float %2912, %2894
  %2914 = call float @dx.op.unary.f32(i32 13, float %2913)  ; Sin(value)
  %2915 = call float @dx.op.unary.f32(i32 12, float %2913)  ; Cos(value)
  %2916 = fsub fast float -0.000000e+00, %2914
  %2917 = fadd fast float %2868, -5.000000e-01
  %2918 = fadd fast float %2869, -5.000000e-01
  %2919 = fmul fast float %2886, %2917
  %2920 = fmul fast float %2888, %2918
  %2921 = fadd fast float %2919, 5.000000e-01
  %2922 = fadd fast float %2920, 5.000000e-01
  %2923 = fmul fast float %2897, %2921
  %2924 = fmul fast float %2900, %2922
  %2925 = fmul fast float %2915, %2923
  %2926 = call float @dx.op.tertiary.f32(i32 46, float %2916, float %2924, float %2925)  ; FMad(a,b,c)
  %2927 = fmul fast float %2914, %2923
  %2928 = call float @dx.op.tertiary.f32(i32 46, float %2915, float %2924, float %2927)  ; FMad(a,b,c)
  %2929 = fadd fast float %2906, %2926
  %2930 = fadd fast float %2909, %2928
  %2931 = icmp ugt i32 %2880, 1
  %2932 = icmp ugt i32 %2878, 33554431
  %2933 = or i1 %2932, %2931
  br i1 %2933, label %2934, label %2959

; <label>:2934                                    ; preds = %2861
  %2935 = add i32 %60, 276
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fmul fast float %2902, %2939
  %2941 = call float @dx.op.unary.f32(i32 22, float %2940)  ; Frc(value)
  %2942 = mul nuw nsw i32 %2880, %2881
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2941, %2943
  %2945 = call float @dx.op.unary.f32(i32 27, float %2944)  ; Round_ni(value)
  %2946 = fptoui float %2945 to i32
  %2947 = urem i32 %2946, %2880
  %2948 = udiv i32 %2946, %2881
  %2949 = call float @dx.op.unary.f32(i32 22, float %2929)  ; Frc(value)
  %2950 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2951 = uitofp i32 %2947 to float
  %2952 = uitofp i32 %2948 to float
  %2953 = fadd fast float %2949, %2951
  %2954 = fadd fast float %2950, %2952
  %2955 = uitofp i32 %2880 to float
  %2956 = uitofp i32 %2881 to float
  %2957 = fdiv fast float %2953, %2955
  %2958 = fdiv fast float %2954, %2956
  br label %2959

; <label>:2959                                    ; preds = %2934, %2861
  %2960 = phi float [ %2957, %2934 ], [ %2929, %2861 ]
  %2961 = phi float [ %2958, %2934 ], [ %2930, %2861 ]
  %2962 = and i32 %2855, 16777216
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3073, label %2964

; <label>:2964                                    ; preds = %2959
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2969 = fadd fast float %2966, %167
  %2970 = fadd fast float %2967, %168
  %2971 = fadd fast float %2968, %169
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2975 = icmp eq i32 %61, 65535
  br i1 %2975, label %3070, label %2976

; <label>:2976                                    ; preds = %2964
  %2977 = lshr i32 %61, 1
  %2978 = shl i32 %2977, 2
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %61, 1
  %2982 = icmp ne i32 %2981, 0
  %2983 = lshr i32 %2980, 16
  %2984 = and i32 %2980, 65535
  %2985 = select i1 %2982, i32 %2983, i32 %2984
  %2986 = icmp eq i32 %2985, 65535
  br i1 %2986, label %3066, label %2987

; <label>:2987                                    ; preds = %2976
  %2988 = mul nuw nsw i32 %2985, 40
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = add nuw nsw i32 %2988, 12
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = add nuw nsw i32 %2988, 24
  %2999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.ResRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.ResRet.f32 %2999, 2
  %3003 = add nuw nsw i32 %2988, 36
  %3004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = fsub fast float %2969, %2990
  %3007 = fsub fast float %2970, %2991
  %3008 = fsub fast float %2971, %2992
  %3009 = fmul fast float %3005, %3006
  %3010 = fmul fast float %3005, %3007
  %3011 = fmul fast float %3005, %3008
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fmul fast float %3015, %2995
  %3019 = fmul fast float %3016, %2996
  %3020 = fmul fast float %3017, %2997
  %3021 = shl i32 %61, 2
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = add i32 %3023, 0
  %3025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3026 = call float @dx.op.unary.f32(i32 22, float %3018)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3028 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3025, %dx.types.Handle %55, float %3026, float %3027, float %3028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = fmul fast float %3030, 1.023000e+03
  %3034 = fmul fast float %3031, 1.023000e+03
  %3035 = fmul fast float %3032, 1.023000e+03
  %3036 = fadd fast float %3033, 5.000000e-01
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3040 = call float @dx.op.unary.f32(i32 27, float %3037)  ; Round_ni(value)
  %3041 = call float @dx.op.unary.f32(i32 27, float %3038)  ; Round_ni(value)
  %3042 = fsub fast float %3009, %3012
  %3043 = fsub fast float %3010, %3013
  %3044 = fsub fast float %3011, %3014
  %3045 = fmul fast float %3042, 7.500000e-01
  %3046 = fmul fast float %3043, 7.500000e-01
  %3047 = fmul fast float %3044, 7.500000e-01
  %3048 = fadd fast float %3012, 1.250000e-01
  %3049 = fadd fast float %3048, %3045
  %3050 = fadd fast float %3049, %3039
  %3051 = fadd fast float %3013, 1.250000e-01
  %3052 = fadd fast float %3051, %3046
  %3053 = fadd fast float %3052, %3040
  %3054 = fadd fast float %3014, 1.250000e-01
  %3055 = fadd fast float %3054, %3047
  %3056 = fadd fast float %3055, %3041
  %3057 = fmul fast float %3050, %3000
  %3058 = fmul fast float %3053, %3001
  %3059 = fmul fast float %3056, %3002
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = add i32 %3061, 0
  %3063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3063, %dx.types.Handle %53, float %3057, float %3058, float %3059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  br label %3066

; <label>:3066                                    ; preds = %2987, %2976
  %3067 = phi float [ %3065, %2987 ], [ -1.000000e+00, %2976 ]
  %3068 = fadd fast float %3067, %2974
  %3069 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  br label %3070

; <label>:3070                                    ; preds = %3066, %2964
  %3071 = phi float [ %3069, %3066 ], [ %2974, %2964 ]
  %3072 = fmul fast float %3071, %466
  br label %3073

; <label>:3073                                    ; preds = %3070, %2959
  %3074 = phi float [ %3072, %3070 ], [ %466, %2959 ]
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = and i32 %3076, 256
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3125, label %3079

; <label>:3079                                    ; preds = %3073
  %3080 = add i32 %60, 436
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = add i32 %3082, 0
  %3084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3084, %dx.types.Handle %101, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = add i32 %60, 148
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = shl i32 %3089, 4
  %3091 = and i32 %3090, 32752
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = lshr i32 %3089, 7
  %3094 = and i32 %3093, 32752
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = fsub fast float 1.000000e+00, %3074
  %3097 = call float @dx.op.binary.f32(i32 35, float %3096, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3098 = bitcast float %3074 to i32
  %3099 = sitofp i32 %3098 to float
  %3100 = fadd fast float %3099, 0xC1CFBF8940000000
  %3101 = fmul fast float %3095, %3100
  %3102 = fadd fast float %3101, 0x41CFBF8940000000
  %3103 = fptosi float %3102 to i32
  %3104 = bitcast i32 %3103 to float
  %3105 = bitcast float %3097 to i32
  %3106 = sitofp i32 %3105 to float
  %3107 = fadd fast float %3106, 0xC1CFBF8940000000
  %3108 = fmul fast float %3107, %3095
  %3109 = fadd fast float %3108, 0x41CFBF8940000000
  %3110 = fptosi float %3109 to i32
  %3111 = bitcast i32 %3110 to float
  %3112 = fmul fast float %3104, %3092
  %3113 = fmul fast float %3111, %3092
  %3114 = fsub fast float %3097, %3112
  %3115 = fadd fast float %3113, %3097
  %3116 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3117 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3118 = fsub fast float %3086, %3116
  %3119 = fsub fast float %3117, %3116
  %3120 = bitcast float %3119 to i32
  %3121 = sub nsw i32 2129859010, %3120
  %3122 = bitcast i32 %3121 to float
  %3123 = fmul fast float %3122, %3118
  %3124 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  br label %3125

; <label>:3125                                    ; preds = %3079, %3073
  %3126 = phi float [ %3124, %3079 ], [ %3074, %3073 ]
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 128
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3147, label %3131

; <label>:3131                                    ; preds = %3125
  %3132 = add i32 %60, 420
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %3134, 0
  %3136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3136, %dx.types.Handle %101, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 524288
  %3142 = icmp ne i32 %3141, 0
  %3143 = fcmp fast ogt float %3138, 0x3FE0101020000000
  %3144 = select i1 %3143, float 1.000000e+00, float 0.000000e+00
  %3145 = select i1 %3142, float %3144, float %3138
  %3146 = fmul fast float %3145, %3126
  br label %3147

; <label>:3147                                    ; preds = %3131, %3125
  %3148 = phi float [ %3146, %3131 ], [ %3126, %3125 ]
  %3149 = fcmp fast ult float %3148, 0x3F70101020000000
  br i1 %3149, label %3692, label %3150

; <label>:3150                                    ; preds = %3147
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 16
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3353, label %3155

; <label>:3155                                    ; preds = %3150
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %60, 372
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %3160, 0
  %3162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3162, %dx.types.Handle %100, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = extractvalue %dx.types.ResRet.f32 %3163, 3
  %3168 = and i32 %3157, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = lshr i32 %3157, 8
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3167, %3169
  %3174 = fadd fast float %3173, %3172
  %3175 = fmul fast float %3174, 0x3F70101000000000
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 512
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3188, label %3180

; <label>:3180                                    ; preds = %3155
  %3181 = add i32 %60, 452
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %101, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  br label %3188

; <label>:3188                                    ; preds = %3180, %3155
  %3189 = phi float [ %3187, %3180 ], [ 1.000000e+00, %3155 ]
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 33554432
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3300, label %3194

; <label>:3194                                    ; preds = %3188
  %3195 = add i32 %60, 272
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = lshr i32 %3197, 16
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = add i32 %60, 276
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 65535
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = lshr i32 %3208, 24
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = and i32 %3208, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = lshr i32 %3208, 8
  %3216 = and i32 %3215, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3208, 16
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = add i32 %60, 268
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = lshr i32 %3225, 24
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = and i32 %3225, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F70101020000000
  %3232 = lshr i32 %3225, 8
  %3233 = and i32 %3232, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = fmul fast float %3234, 0x3F70101020000000
  %3236 = lshr i32 %3225, 16
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = bitcast float %3164 to i32
  %3241 = ashr i32 %3240, 1
  %3242 = sub nsw i32 1597463174, %3241
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3164, 5.000000e-01
  %3245 = fmul fast float %3243, %3243
  %3246 = fmul fast float %3245, %3244
  %3247 = fsub fast float 1.500000e+00, %3246
  %3248 = fmul fast float %3243, %3164
  %3249 = fmul fast float %3248, %3247
  %3250 = bitcast float %3165 to i32
  %3251 = ashr i32 %3250, 1
  %3252 = sub nsw i32 1597463174, %3251
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3165, 5.000000e-01
  %3255 = fmul fast float %3253, %3253
  %3256 = fmul fast float %3255, %3254
  %3257 = fsub fast float 1.500000e+00, %3256
  %3258 = fmul fast float %3253, %3165
  %3259 = fmul fast float %3258, %3257
  %3260 = bitcast float %3166 to i32
  %3261 = ashr i32 %3260, 1
  %3262 = sub nsw i32 1597463174, %3261
  %3263 = bitcast i32 %3262 to float
  %3264 = fmul fast float %3166, 5.000000e-01
  %3265 = fmul fast float %3263, %3263
  %3266 = fmul fast float %3265, %3264
  %3267 = fsub fast float 1.500000e+00, %3266
  %3268 = fmul fast float %3263, %3166
  %3269 = fmul fast float %3268, %3267
  %3270 = fsub fast float %3249, %3231
  %3271 = fsub fast float %3259, %3235
  %3272 = fsub fast float %3269, %3239
  %3273 = fmul fast float %3270, %3199
  %3274 = fmul fast float %3271, %3201
  %3275 = fmul fast float %3272, %3206
  %3276 = fadd fast float %3273, %3214
  %3277 = fadd fast float %3274, %3218
  %3278 = fadd fast float %3275, %3222
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = fmul fast float %3279, %3279
  %3283 = fmul fast float %3280, %3280
  %3284 = fmul fast float %3281, %3281
  %3285 = fsub fast float %3282, %3164
  %3286 = fsub fast float %3283, %3165
  %3287 = fsub fast float %3284, %3166
  %3288 = fmul fast float %3285, %3189
  %3289 = fmul fast float %3286, %3189
  %3290 = fmul fast float %3287, %3189
  %3291 = fadd fast float %3288, %3164
  %3292 = fadd fast float %3289, %3165
  %3293 = fadd fast float %3290, %3166
  %3294 = fadd fast float %3211, %3175
  %3295 = fsub fast float %3294, %3228
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = fsub fast float %3296, %3175
  %3298 = fmul fast float %3297, %3189
  %3299 = fadd fast float %3298, %3175
  br label %3353

; <label>:3300                                    ; preds = %3188
  %3301 = and i32 %3191, 134217728
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3337, label %3303

; <label>:3303                                    ; preds = %3300
  %3304 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %3306 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %3307 = fadd fast float %3304, -5.000000e-01
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fmul fast float %3307, %3189
  %3311 = fmul fast float %3308, %3189
  %3312 = fmul fast float %3309, %3189
  %3313 = fadd fast float %3310, 5.000000e-01
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3318 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3319 = fmul fast float %3313, 2.000000e+00
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3320, %3316
  %3322 = fadd fast float %3321, %3319
  %3323 = fmul fast float %3322, %3316
  %3324 = fmul fast float %3314, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3317
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3317
  %3329 = fmul fast float %3315, 2.000000e+00
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3330, %3318
  %3332 = fadd fast float %3331, %3329
  %3333 = fmul fast float %3332, %3318
  %3334 = fmul fast float %3323, %3323
  %3335 = fmul fast float %3328, %3328
  %3336 = fmul fast float %3333, %3333
  br label %3353

; <label>:3337                                    ; preds = %3300
  %3338 = fmul fast float %384, %384
  %3339 = fmul fast float %388, %388
  %3340 = fmul fast float %392, %392
  %3341 = fadd fast float %3338, -1.000000e+00
  %3342 = fadd fast float %3339, -1.000000e+00
  %3343 = fadd fast float %3340, -1.000000e+00
  %3344 = fmul fast float %3189, %3341
  %3345 = fmul fast float %3189, %3342
  %3346 = fmul fast float %3189, %3343
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fmul fast float %3347, %3164
  %3351 = fmul fast float %3348, %3165
  %3352 = fmul fast float %3349, %3166
  br label %3353

; <label>:3353                                    ; preds = %3337, %3303, %3194, %3150
  %3354 = phi float [ %3299, %3194 ], [ %3175, %3303 ], [ %3175, %3337 ], [ 0x3FA23C0BE0000000, %3150 ]
  %3355 = phi float [ %3291, %3194 ], [ %3334, %3303 ], [ %3350, %3337 ], [ 1.000000e+00, %3150 ]
  %3356 = phi float [ %3292, %3194 ], [ %3335, %3303 ], [ %3351, %3337 ], [ 1.000000e+00, %3150 ]
  %3357 = phi float [ %3293, %3194 ], [ %3336, %3303 ], [ %3352, %3337 ], [ 1.000000e+00, %3150 ]
  %3358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.i32 %3358, 1
  %3360 = and i32 %3359, 1
  %3361 = icmp ne i32 %3360, 0
  %3362 = add i32 %60, 356
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = and i32 %3364, 32
  %3366 = icmp ne i32 %3365, 0
  %3367 = and i1 %3361, %3366
  %3368 = select i1 %3367, float 1.000000e+00, float %3355
  %3369 = select i1 %3367, float 0x3FD3333340000000, float %3356
  %3370 = select i1 %3367, float 0x3FD3333340000000, float %3357
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, 32
  %3374 = icmp eq i32 %3373, 0
  br i1 %3374, label %3447, label %3375

; <label>:3375                                    ; preds = %3353
  %3376 = add i32 %60, 140
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = add i32 %60, 388
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = add i32 %3381, 0
  %3383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3383, %dx.types.Handle %100, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3389 = and i32 %3378, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = lshr i32 %3378, 8
  %3392 = and i32 %3391, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = lshr i32 %3378, 16
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = fmul fast float %3396, 0x3F70101000000000
  %3398 = fmul fast float %3385, %3390
  %3399 = fadd fast float %3398, %3393
  %3400 = fmul fast float %3399, 0x3F70101000000000
  %3401 = fadd fast float %3386, -5.000000e-01
  %3402 = fadd fast float %3388, -5.000000e-01
  %3403 = fmul fast float %3401, %3397
  %3404 = fmul fast float %3402, %3397
  %3405 = fadd fast float %3403, 5.000000e-01
  %3406 = fadd fast float %3404, 5.000000e-01
  %3407 = fmul fast float %3405, 2.000000e+00
  %3408 = fadd fast float %3407, -1.000000e+00
  %3409 = fmul fast float %3406, 2.000000e+00
  %3410 = fadd fast float %3409, -1.000000e+00
  %3411 = fadd fast float %3408, %3410
  %3412 = fmul fast float %3411, 5.000000e-01
  %3413 = fsub fast float %3408, %3410
  %3414 = fmul fast float %3413, 5.000000e-01
  %3415 = call float @dx.op.unary.f32(i32 6, float %3412)  ; FAbs(value)
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3418 = fsub fast float %3416, %3417
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3414, float %3418, float %3412, float %3414, float %3418)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = call float @dx.op.unary.f32(i32 25, float %3419)  ; Rsqrt(value)
  %3421 = fmul fast float %3412, %3420
  %3422 = fmul fast float %3414, %3420
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 67108864
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3443, label %3427

; <label>:3427                                    ; preds = %3375
  %3428 = add i32 %60, 328
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 65535
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 65535
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = lshr i32 %3430, 16
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = fsub fast float %3400, %3438
  %3440 = fmul fast float %3439, %3432
  %3441 = fadd fast float %3440, %3436
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  br label %3443

; <label>:3443                                    ; preds = %3427, %3375
  %3444 = phi float [ %3442, %3427 ], [ %3400, %3375 ]
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3421, float %3422, float %2864, float %2865)  ; Dot2(ax,ay,bx,by)
  %3446 = call float @dx.op.dot2.f32(i32 54, float %3421, float %3422, float %2866, float %2867)  ; Dot2(ax,ay,bx,by)
  br label %3447

; <label>:3447                                    ; preds = %3443, %3353
  %3448 = phi float [ %3444, %3443 ], [ 0x3FD6666660000000, %3353 ]
  %3449 = phi float [ %3445, %3443 ], [ 0.000000e+00, %3353 ]
  %3450 = phi float [ %3446, %3443 ], [ 0.000000e+00, %3353 ]
  %3451 = phi float [ %3387, %3443 ], [ 1.000000e+00, %3353 ]
  %3452 = add i32 %60, 208
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = lshr i32 %3454, 22
  %3456 = shl nuw nsw i32 %3455, 5
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 64
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3495, label %3462

; <label>:3462                                    ; preds = %3447
  %3463 = add i32 %60, 404
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = add i32 %3465, 0
  %3467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 131072
  %3471 = icmp eq i32 %3470, 0
  %3472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3467, %dx.types.Handle %100, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = fmul fast float %3473, %372
  %3477 = fmul fast float %3474, %375
  %3478 = fmul fast float %3475, %378
  br i1 %3471, label %3485, label %3479

; <label>:3479                                    ; preds = %3462
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = fmul fast float %3481, %3476
  %3483 = fmul fast float %3481, %3477
  %3484 = fmul fast float %3481, %3478
  br label %3485

; <label>:3485                                    ; preds = %3479, %3462
  %3486 = phi float [ %3482, %3479 ], [ %3476, %3462 ]
  %3487 = phi float [ %3483, %3479 ], [ %3477, %3462 ]
  %3488 = phi float [ %3484, %3479 ], [ %3478, %3462 ]
  %3489 = fmul fast float %3486, %3457
  %3490 = select i1 %229, float %3489, float %3486
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3487, float %3488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = select i1 %229, float 0.000000e+00, float %3486
  %3493 = select i1 %229, float %3491, float %3487
  %3494 = select i1 %229, float 0.000000e+00, float %3488
  br label %3495

; <label>:3495                                    ; preds = %3485, %3447
  %3496 = phi float [ %3492, %3485 ], [ 0.000000e+00, %3447 ]
  %3497 = phi float [ %3493, %3485 ], [ 0.000000e+00, %3447 ]
  %3498 = phi float [ %3494, %3485 ], [ 0.000000e+00, %3447 ]
  %3499 = add i32 %60, 144
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 255
  %3503 = uitofp i32 %3502 to float
  %3504 = lshr i32 %3501, 8
  %3505 = and i32 %3504, 255
  %3506 = uitofp i32 %3505 to float
  %3507 = call float @dx.op.dot3.f32(i32 55, float %3368, float %3369, float %3370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3508 = fmul fast float %3506, %3507
  %3509 = fadd fast float %3508, %3503
  %3510 = fmul fast float %3509, 0x3F70101020000000
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  br i1 %2852, label %3512, label %3520

; <label>:3512                                    ; preds = %3495
  %3513 = fsub fast float 1.000000e+00, %3148
  %3514 = fmul fast float %3513, %2841
  %3515 = fmul fast float %3513, %2842
  %3516 = fmul fast float %3513, %2843
  %3517 = fmul fast float %3513, %2844
  %3518 = fmul fast float %3513, %2845
  %3519 = fmul fast float %3513, %2846
  br label %3520

; <label>:3520                                    ; preds = %3512, %3495
  %3521 = phi float [ %3514, %3512 ], [ %2841, %3495 ]
  %3522 = phi float [ %3515, %3512 ], [ %2842, %3495 ]
  %3523 = phi float [ %3516, %3512 ], [ %2843, %3495 ]
  %3524 = phi float [ %3517, %3512 ], [ %2844, %3495 ]
  %3525 = phi float [ %3518, %3512 ], [ %2845, %3495 ]
  %3526 = phi float [ %3519, %3512 ], [ %2846, %3495 ]
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 3
  %3530 = icmp eq i32 %3529, 3
  br i1 %3530, label %3609, label %3531

; <label>:3531                                    ; preds = %3520
  %3532 = and i32 %3528, 16
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %3148, float 0.000000e+00
  %3535 = icmp eq i32 %3529, 0
  br i1 %3535, label %3536, label %3564

; <label>:3536                                    ; preds = %3531
  %3537 = and i32 %3528, 64
  %3538 = icmp ne i32 %3537, 0
  %3539 = select i1 %3538, float %3148, float 0.000000e+00
  %3540 = fsub fast float %3368, %3521
  %3541 = fsub fast float %3369, %3522
  %3542 = fsub fast float %3370, %3523
  %3543 = fmul fast float %3534, %3540
  %3544 = fmul fast float %3534, %3541
  %3545 = fmul fast float %3534, %3542
  %3546 = fadd fast float %3543, %3521
  %3547 = fadd fast float %3544, %3522
  %3548 = fadd fast float %3545, %3523
  %3549 = fsub fast float %3354, %2847
  %3550 = fmul fast float %3534, %3549
  %3551 = fadd fast float %3550, %2847
  %3552 = fsub fast float %3496, %3524
  %3553 = fsub fast float %3497, %3525
  %3554 = fsub fast float %3498, %3526
  %3555 = fmul fast float %3539, %3552
  %3556 = fmul fast float %3539, %3553
  %3557 = fmul fast float %3539, %3554
  %3558 = fadd fast float %3555, %3524
  %3559 = fadd fast float %3556, %3525
  %3560 = fadd fast float %3557, %3526
  %3561 = fsub fast float %3511, %2850
  %3562 = fmul fast float %3534, %3561
  %3563 = fadd fast float %3562, %2850
  br label %3609

; <label>:3564                                    ; preds = %3531
  %3565 = icmp eq i32 %3529, 1
  br i1 %3565, label %3566, label %3579

; <label>:3566                                    ; preds = %3564
  %3567 = fadd fast float %3368, -1.000000e+00
  %3568 = fadd fast float %3369, -1.000000e+00
  %3569 = fadd fast float %3370, -1.000000e+00
  %3570 = fmul fast float %3534, %3567
  %3571 = fmul fast float %3534, %3568
  %3572 = fmul fast float %3534, %3569
  %3573 = fadd fast float %3570, 1.000000e+00
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fmul fast float %3573, %3521
  %3577 = fmul fast float %3574, %3522
  %3578 = fmul fast float %3575, %3523
  br label %3609

; <label>:3579                                    ; preds = %3564
  %3580 = icmp eq i32 %3529, 2
  br i1 %3580, label %3581, label %3609

; <label>:3581                                    ; preds = %3579
  %3582 = call float @dx.op.unary.f32(i32 24, float %3368)  ; Sqrt(value)
  %3583 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3584 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3585 = fadd fast float %3582, -5.000000e-01
  %3586 = fadd fast float %3583, -5.000000e-01
  %3587 = fadd fast float %3584, -5.000000e-01
  %3588 = fmul fast float %3585, %3534
  %3589 = fmul fast float %3586, %3534
  %3590 = fmul fast float %3587, %3534
  %3591 = fadd fast float %3588, 5.000000e-01
  %3592 = fadd fast float %3589, 5.000000e-01
  %3593 = fadd fast float %3590, 5.000000e-01
  %3594 = fmul fast float %3591, 2.000000e+00
  %3595 = fsub fast float 1.000000e+00, %3594
  %3596 = fmul fast float %3595, %3521
  %3597 = fadd fast float %3596, %3594
  %3598 = fmul fast float %3597, %3521
  %3599 = fmul fast float %3592, 2.000000e+00
  %3600 = fsub fast float 1.000000e+00, %3599
  %3601 = fmul fast float %3600, %3522
  %3602 = fadd fast float %3601, %3599
  %3603 = fmul fast float %3602, %3522
  %3604 = fmul fast float %3593, 2.000000e+00
  %3605 = fsub fast float 1.000000e+00, %3604
  %3606 = fmul fast float %3605, %3523
  %3607 = fadd fast float %3606, %3604
  %3608 = fmul fast float %3607, %3523
  br label %3609

; <label>:3609                                    ; preds = %3581, %3579, %3566, %3536, %3520
  %3610 = phi float [ %3521, %3520 ], [ %3598, %3581 ], [ %3521, %3579 ], [ %3576, %3566 ], [ %3546, %3536 ]
  %3611 = phi float [ %3522, %3520 ], [ %3603, %3581 ], [ %3522, %3579 ], [ %3577, %3566 ], [ %3547, %3536 ]
  %3612 = phi float [ %3523, %3520 ], [ %3608, %3581 ], [ %3523, %3579 ], [ %3578, %3566 ], [ %3548, %3536 ]
  %3613 = phi float [ %3524, %3520 ], [ %3524, %3581 ], [ %3524, %3579 ], [ %3524, %3566 ], [ %3558, %3536 ]
  %3614 = phi float [ %3525, %3520 ], [ %3525, %3581 ], [ %3525, %3579 ], [ %3525, %3566 ], [ %3559, %3536 ]
  %3615 = phi float [ %3526, %3520 ], [ %3526, %3581 ], [ %3526, %3579 ], [ %3526, %3566 ], [ %3560, %3536 ]
  %3616 = phi float [ %2847, %3520 ], [ %2847, %3581 ], [ %2847, %3579 ], [ %2847, %3566 ], [ %3551, %3536 ]
  %3617 = phi float [ %2850, %3520 ], [ %2850, %3581 ], [ %2850, %3579 ], [ %2850, %3566 ], [ %3563, %3536 ]
  %3618 = and i32 %3528, 12
  %3619 = icmp eq i32 %3618, 12
  br i1 %3619, label %3692, label %3620

; <label>:3620                                    ; preds = %3609
  %3621 = and i32 %3528, 2097184
  %3622 = icmp eq i32 %3621, 2097184
  %3623 = select i1 %3622, float %3148, float 0.000000e+00
  %3624 = and i32 %3528, 4194336
  %3625 = icmp eq i32 %3624, 4194336
  %3626 = select i1 %3625, float %3148, float 0.000000e+00
  %3627 = and i32 %3528, 8388640
  %3628 = icmp eq i32 %3627, 8388640
  %3629 = select i1 %3628, float %3148, float 0.000000e+00
  %3630 = icmp eq i32 %3618, 0
  br i1 %3630, label %3631, label %3644

; <label>:3631                                    ; preds = %3620
  %3632 = fsub fast float %3449, %2839
  %3633 = fsub fast float %3450, %2840
  %3634 = fmul fast float %3623, %3632
  %3635 = fmul fast float %3623, %3633
  %3636 = fadd fast float %3634, %2839
  %3637 = fadd fast float %3635, %2840
  %3638 = fsub fast float %3451, %2849
  %3639 = fmul fast float %3626, %3638
  %3640 = fadd fast float %3639, %2849
  %3641 = fsub fast float %3448, %2848
  %3642 = fmul fast float %3629, %3641
  %3643 = fadd fast float %3642, %2848
  br label %3692

; <label>:3644                                    ; preds = %3620
  %3645 = icmp eq i32 %3618, 4
  br i1 %3645, label %3646, label %3678

; <label>:3646                                    ; preds = %3644
  %3647 = fmul fast float %3623, %3449
  %3648 = fmul fast float %3623, %3450
  %3649 = fadd fast float %3647, %2839
  %3650 = fadd fast float %3648, %2840
  %3651 = call float @dx.op.binary.f32(i32 36, float %2849, float %3451)  ; FMin(a,b)
  %3652 = fsub fast float %3651, %2849
  %3653 = fmul fast float %3652, %3626
  %3654 = fadd fast float %3653, %2849
  %3655 = fadd fast float %3448, %2848
  %3656 = fmul fast float %3655, 0x3FF337FAE0000000
  %3657 = fmul fast float %2848, %2848
  %3658 = fmul fast float %3448, %3448
  %3659 = fadd fast float %3658, %3657
  %3660 = fmul fast float %3659, 0x3FE5152B00000000
  %3661 = fmul fast float %2848, 0xBFCC1F85E0000000
  %3662 = fmul fast float %3661, %3448
  %3663 = fadd fast float %3662, 0xBFE1363700000000
  %3664 = fadd fast float %3663, %3656
  %3665 = fsub fast float %3664, %3660
  %3666 = fmul fast float %3655, 0x3FBA6F0D00000000
  %3667 = fmul fast float %3659, 0x3FD0432880000000
  %3668 = fmul fast float %2848, 0xBFEF110800000000
  %3669 = fmul fast float %3668, %3448
  %3670 = fadd fast float %3669, 1.000000e+00
  %3671 = fsub fast float %3670, %3666
  %3672 = fadd fast float %3671, %3667
  %3673 = fdiv fast float %3665, %3672
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = fsub fast float %3674, %2848
  %3676 = fmul fast float %3675, %3629
  %3677 = fadd fast float %3676, %2848
  br label %3692

; <label>:3678                                    ; preds = %3644
  %3679 = icmp eq i32 %3618, 8
  br i1 %3679, label %3680, label %3692

; <label>:3680                                    ; preds = %3678
  %3681 = fmul fast float %3623, %3449
  %3682 = fmul fast float %3623, %3450
  %3683 = fadd fast float %3681, %2839
  %3684 = fadd fast float %3682, %2840
  %3685 = call float @dx.op.binary.f32(i32 36, float %2849, float %3451)  ; FMin(a,b)
  %3686 = fsub fast float %3685, %2849
  %3687 = fmul fast float %3686, %3626
  %3688 = fadd fast float %3687, %2849
  %3689 = fsub fast float %3448, %2848
  %3690 = fmul fast float %3629, %3689
  %3691 = fadd fast float %3690, %2848
  br label %3692

; <label>:3692                                    ; preds = %3680, %3678, %3646, %3631, %3609, %3147, %2851, %2838
  %3693 = phi float [ %2839, %3609 ], [ %2839, %3147 ], [ %2839, %2838 ], [ %2839, %2851 ], [ %3636, %3631 ], [ %3649, %3646 ], [ %2839, %3678 ], [ %3683, %3680 ]
  %3694 = phi float [ %2840, %3609 ], [ %2840, %3147 ], [ %2840, %2838 ], [ %2840, %2851 ], [ %3637, %3631 ], [ %3650, %3646 ], [ %2840, %3678 ], [ %3684, %3680 ]
  %3695 = phi float [ %3610, %3609 ], [ %2841, %3147 ], [ %2841, %2838 ], [ %2841, %2851 ], [ %3610, %3631 ], [ %3610, %3646 ], [ %3610, %3678 ], [ %3610, %3680 ]
  %3696 = phi float [ %3611, %3609 ], [ %2842, %3147 ], [ %2842, %2838 ], [ %2842, %2851 ], [ %3611, %3631 ], [ %3611, %3646 ], [ %3611, %3678 ], [ %3611, %3680 ]
  %3697 = phi float [ %3612, %3609 ], [ %2843, %3147 ], [ %2843, %2838 ], [ %2843, %2851 ], [ %3612, %3631 ], [ %3612, %3646 ], [ %3612, %3678 ], [ %3612, %3680 ]
  %3698 = phi float [ %3613, %3609 ], [ %2844, %3147 ], [ %2844, %2838 ], [ %2844, %2851 ], [ %3613, %3631 ], [ %3613, %3646 ], [ %3613, %3678 ], [ %3613, %3680 ]
  %3699 = phi float [ %3614, %3609 ], [ %2845, %3147 ], [ %2845, %2838 ], [ %2845, %2851 ], [ %3614, %3631 ], [ %3614, %3646 ], [ %3614, %3678 ], [ %3614, %3680 ]
  %3700 = phi float [ %3615, %3609 ], [ %2846, %3147 ], [ %2846, %2838 ], [ %2846, %2851 ], [ %3615, %3631 ], [ %3615, %3646 ], [ %3615, %3678 ], [ %3615, %3680 ]
  %3701 = phi float [ %3616, %3609 ], [ %2847, %3147 ], [ %2847, %2838 ], [ %2847, %2851 ], [ %3616, %3631 ], [ %3616, %3646 ], [ %3616, %3678 ], [ %3616, %3680 ]
  %3702 = phi float [ %2848, %3609 ], [ %2848, %3147 ], [ %2848, %2838 ], [ %2848, %2851 ], [ %3643, %3631 ], [ %3677, %3646 ], [ %2848, %3678 ], [ %3691, %3680 ]
  %3703 = phi float [ %2849, %3609 ], [ %2849, %3147 ], [ %2849, %2838 ], [ %2849, %2851 ], [ %3640, %3631 ], [ %3654, %3646 ], [ %2849, %3678 ], [ %3688, %3680 ]
  %3704 = phi float [ %3617, %3609 ], [ %2850, %3147 ], [ %2850, %2838 ], [ %2850, %2851 ], [ %3617, %3631 ], [ %3617, %3646 ], [ %3617, %3678 ], [ %3617, %3680 ]
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 0
  %3707 = call float @dx.op.dot2.f32(i32 54, float %3693, float %3694, float %3693, float %3694)  ; Dot2(ax,ay,bx,by)
  %3708 = fmul fast float %3707, 0x3FE3333340000000
  %3709 = fsub fast float 1.000000e+00, %3708
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3709, float %3693, float %3694, float %3709)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = call float @dx.op.unary.f32(i32 25, float %3710)  ; Rsqrt(value)
  %3712 = fmul fast float %3711, %3693
  %3713 = fmul fast float %3711, %3694
  %3714 = fmul fast float %3709, %3711
  %3715 = fmul fast float %3714, %111
  %3716 = fmul fast float %3714, %112
  %3717 = fmul fast float %3714, %113
  %3718 = fmul fast float %3712, %76
  %3719 = fmul fast float %3712, %77
  %3720 = fmul fast float %3712, %78
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = fmul fast float %123, %3713
  %3725 = fmul fast float %124, %3713
  %3726 = fmul fast float %125, %3713
  %3727 = fadd fast float %3721, %3724
  %3728 = fadd fast float %3722, %3725
  %3729 = fadd fast float %3723, %3726
  %3730 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3728, float %3729, float %3727, float %3728, float %3729)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call float @dx.op.unary.f32(i32 25, float %3730)  ; Rsqrt(value)
  %3732 = fmul fast float %3727, %3731
  %3733 = fmul fast float %3728, %3731
  %3734 = fmul fast float %3729, %3731
  %3735 = and i32 %62, 1
  %3736 = icmp eq i32 %3735, 0
  br i1 %3736, label %3737, label %4245

; <label>:3737                                    ; preds = %3692
  %3738 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3739 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3740 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3741 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3742 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3743 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3744 = fadd fast float %3738, %167
  %3745 = fadd fast float %3739, %168
  %3746 = fadd fast float %3740, %169
  %3747 = fadd fast float %3741, %167
  %3748 = fadd fast float %3742, %168
  %3749 = fadd fast float %3743, %169
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3757 = fmul fast float %3751, %104
  %3758 = fmul fast float %3757, %3755
  %3759 = fmul fast float %3752, %105
  %3760 = fmul fast float %3759, %3756
  %3761 = fptoui float %3758 to i32
  %3762 = fptoui float %3760 to i32
  %3763 = fadd fast float %3751, -1.000000e+00
  %3764 = fadd fast float %3752, -1.000000e+00
  %3765 = fptoui float %3763 to i32
  %3766 = fptoui float %3764 to i32
  %3767 = call i32 @dx.op.binary.i32(i32 40, i32 %3761, i32 %3765)  ; UMin(a,b)
  %3768 = call i32 @dx.op.binary.i32(i32 40, i32 %3762, i32 %3766)  ; UMin(a,b)
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3772 = fmul fast float %3770, %92
  %3773 = fsub fast float %3772, %3771
  %3774 = fadd fast float %3753, -1.000000e+00
  %3775 = call float @dx.op.binary.f32(i32 36, float %3773, float %3774)  ; FMin(a,b)
  %3776 = fptoui float %3775 to i32
  %3777 = fptoui float %3751 to i32
  %3778 = fptoui float %3752 to i32
  %3779 = mul i32 %3776, %3778
  %3780 = add i32 %3779, %3768
  %3781 = mul i32 %3780, %3777
  %3782 = add i32 %3781, %3767
  %3783 = shl i32 %3782, 2
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = and i32 %3785, 1023
  %3787 = lshr i32 %3785, 10
  %3788 = icmp eq i32 %3786, 0
  br i1 %3788, label %4214, label %3789

; <label>:3789                                    ; preds = %3737
  %3790 = and i32 %3785, 1023
  br label %3791

; <label>:3791                                    ; preds = %3917, %3789
  %3792 = phi i32 [ %3867, %3917 ], [ 0, %3789 ]
  %3793 = phi float [ %3918, %3917 ], [ 0.000000e+00, %3789 ]
  %3794 = phi float [ %3919, %3917 ], [ %3706, %3789 ]
  %3795 = phi float [ %3920, %3917 ], [ %3704, %3789 ]
  %3796 = phi float [ %3921, %3917 ], [ 0.000000e+00, %3789 ]
  %3797 = phi float [ %3922, %3917 ], [ 0.000000e+00, %3789 ]
  %3798 = phi float [ %3923, %3917 ], [ %3698, %3789 ]
  %3799 = phi float [ %3924, %3917 ], [ %3699, %3789 ]
  %3800 = phi float [ %3925, %3917 ], [ %3700, %3789 ]
  %3801 = phi float [ %3926, %3917 ], [ %3732, %3789 ]
  %3802 = phi float [ %3927, %3917 ], [ %3733, %3789 ]
  %3803 = phi float [ %3928, %3917 ], [ %3734, %3789 ]
  %3804 = phi float [ %3929, %3917 ], [ %3703, %3789 ]
  %3805 = phi float [ %3930, %3917 ], [ %3702, %3789 ]
  %3806 = phi float [ %3931, %3917 ], [ 0.000000e+00, %3789 ]
  %3807 = phi float [ %3932, %3917 ], [ %3701, %3789 ]
  %3808 = phi float [ %3933, %3917 ], [ %3695, %3789 ]
  %3809 = phi float [ %3934, %3917 ], [ %3696, %3789 ]
  %3810 = phi float [ %3935, %3917 ], [ %3697, %3789 ]
  %3811 = add nuw nsw i32 %3792, %3787
  %3812 = shl i32 %3811, 2
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = shl i32 %3814, 8
  %3816 = or i32 %3815, 48
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = or i32 %3815, 64
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.i32 %3823, 1
  %3826 = or i32 %3815, 80
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3830 = or i32 %3815, 96
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3815, 112
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3839 = or i32 %3815, 128
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = or i32 %3815, 144
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = or i32 %3815, 160
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3815, 192
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = or i32 %3815, 208
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = or i32 %3815, 248
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = add nuw nsw i32 %3792, 1
  %3868 = bitcast float %3821 to i32
  %3869 = and i32 %3868, 512
  %3870 = icmp eq i32 %3869, 0
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = or i32 %3815, 16
  %3878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = extractvalue %dx.types.ResRet.f32 %3878, 3
  %3883 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3884 = or i32 %3815, 32
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3886, float %3887, float %3888, float %3889, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.unary.f32(i32 27, float %3876)  ; Round_ni(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3897 = fadd fast float %3894, %3892
  %3898 = fadd fast float %3897, %3896
  %3899 = fcmp fast oeq float %3898, 0.000000e+00
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3747, float %3748, float %3749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3747, float %3748, float %3749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = fsub fast float %3900, %3876
  %3905 = fsub fast float %3902, %3876
  %3906 = fsub fast float %3901, %3883
  %3907 = fsub fast float %3903, %3883
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3820, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3911 = fadd fast float %3910, %3908
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3914 = fcmp fast ogt float %3912, %3913
  %3915 = and i1 %3899, %3914
  %3916 = and i1 %3870, %3915
  br i1 %3916, label %3937, label %3917

; <label>:3917                                    ; preds = %4200, %4018, %3937, %3791
  %3918 = phi float [ %3793, %3937 ], [ %4021, %4018 ], [ %4021, %4200 ], [ %3793, %3791 ]
  %3919 = phi float [ %3794, %3937 ], [ %3794, %4018 ], [ %4175, %4200 ], [ %3794, %3791 ]
  %3920 = phi float [ %3795, %3937 ], [ %3795, %4018 ], [ %4173, %4200 ], [ %3795, %3791 ]
  %3921 = phi float [ %3796, %3937 ], [ %3796, %4018 ], [ %4145, %4200 ], [ %3796, %3791 ]
  %3922 = phi float [ %3797, %3937 ], [ %3797, %4018 ], [ %4143, %4200 ], [ %3797, %3791 ]
  %3923 = phi float [ %3798, %3937 ], [ %3798, %4018 ], [ %4210, %4200 ], [ %3798, %3791 ]
  %3924 = phi float [ %3799, %3937 ], [ %3799, %4018 ], [ %4211, %4200 ], [ %3799, %3791 ]
  %3925 = phi float [ %3800, %3937 ], [ %3800, %4018 ], [ %4212, %4200 ], [ %3800, %3791 ]
  %3926 = phi float [ %3801, %3937 ], [ %3801, %4018 ], [ %4124, %4200 ], [ %3801, %3791 ]
  %3927 = phi float [ %3802, %3937 ], [ %3802, %4018 ], [ %4125, %4200 ], [ %3802, %3791 ]
  %3928 = phi float [ %3803, %3937 ], [ %3803, %4018 ], [ %4126, %4200 ], [ %3803, %3791 ]
  %3929 = phi float [ %3804, %3937 ], [ %3804, %4018 ], [ %4153, %4200 ], [ %3804, %3791 ]
  %3930 = phi float [ %3805, %3937 ], [ %3805, %4018 ], [ %4150, %4200 ], [ %3805, %3791 ]
  %3931 = phi float [ %3806, %3937 ], [ %3806, %4018 ], [ %4147, %4200 ], [ %3806, %3791 ]
  %3932 = phi float [ %3807, %3937 ], [ %3807, %4018 ], [ %4141, %4200 ], [ %3807, %3791 ]
  %3933 = phi float [ %3808, %3937 ], [ %3808, %4018 ], [ %4136, %4200 ], [ %3808, %3791 ]
  %3934 = phi float [ %3809, %3937 ], [ %3809, %4018 ], [ %4137, %4200 ], [ %3809, %3791 ]
  %3935 = phi float [ %3810, %3937 ], [ %3810, %4018 ], [ %4138, %4200 ], [ %3810, %3791 ]
  %3936 = icmp eq i32 %3867, %3790
  br i1 %3936, label %4213, label %3791

; <label>:3937                                    ; preds = %3791
  %3938 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3939 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3943 = extractvalue %dx.types.ResRet.i32 %3823, 3
  %3944 = extractvalue %dx.types.ResRet.i32 %3823, 2
  %3945 = add i32 %3943, 0
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3946, %dx.types.Handle %3947, float %3876, float %3883, float undef, float undef, i32 0, i32 0, i32 undef, float %3904, float %3906, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = fmul fast float %3949, %3942
  %3951 = fadd fast float %3950, %3941
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fmul fast float %3876, %3832
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3883, float %3953)  ; FMad(a,b,c)
  %3955 = fadd fast float %3954, %3940
  %3956 = fmul fast float %3876, %3834
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3883, float %3956)  ; FMad(a,b,c)
  %3958 = fadd fast float %3957, %3939
  %3959 = fmul fast float %3904, %3832
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3906, float %3959)  ; FMad(a,b,c)
  %3961 = fmul fast float %3904, %3834
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3906, float %3961)  ; FMad(a,b,c)
  %3963 = fmul fast float %3905, %3832
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3907, float %3963)  ; FMad(a,b,c)
  %3965 = fmul fast float %3905, %3834
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3907, float %3965)  ; FMad(a,b,c)
  %3967 = add i32 %3944, 0
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3967, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3968, %dx.types.Handle %3947, float %3955, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3960, float %3962, float undef, float %3964, float %3966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = and i32 %3868, 1024
  %3972 = icmp ne i32 %3971, 0
  %3973 = fcmp fast ogt float %3970, 0x3FE0101020000000
  %3974 = uitofp i1 %3973 to float
  %3975 = select i1 %3972, float %3974, float %3970
  %3976 = and i32 %3868, 8192
  %3977 = icmp ne i32 %3976, 0
  %3978 = select i1 %3977, float %3938, float 1.000000e+00
  %3979 = fmul fast float %3876, 2.000000e+00
  %3980 = fadd fast float %3979, -1.000000e+00
  %3981 = call float @dx.op.unary.f32(i32 6, float %3980)  ; FAbs(value)
  %3982 = fmul fast float %3981, %3865
  %3983 = fsub fast float %3982, %3865
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3883, 2.000000e+00
  %3986 = fadd fast float %3985, -1.000000e+00
  %3987 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3988 = fmul fast float %3987, %3866
  %3989 = fsub fast float %3988, %3866
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fmul fast float %3895, %3828
  %3992 = fsub fast float %3991, %3828
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = fmul fast float %3952, %3978
  %3995 = fmul fast float %3994, %3949
  %3996 = fmul fast float %3995, %3984
  %3997 = fmul fast float %3996, %3975
  %3998 = fmul fast float %3997, %3990
  %3999 = fmul fast float %3998, %3993
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4003 = fsub fast float %3912, %4002
  %4004 = fmul fast float %4003, %4001
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fmul fast float %3999, %3829
  %4007 = fadd fast float %3999, %3829
  %4008 = fmul fast float %4007, %3838
  %4009 = fsub fast float %4008, %3838
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = and i32 %3868, 128
  %4012 = icmp ne i32 %4011, 0
  %4013 = select i1 %4012, float %4010, float %4006
  %4014 = fmul fast float %4013, %4005
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = fcmp fast ugt float %4014, %4016
  br i1 %4017, label %4018, label %3917

; <label>:4018                                    ; preds = %3937
  %4019 = select i1 %3977, float %4014, float 0.000000e+00
  %4020 = fadd fast float %4019, %3793
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  br i1 %3977, label %3917, label %4022

; <label>:4022                                    ; preds = %4018
  %4023 = and i32 %3868, 4
  %4024 = and i32 %3868, 8
  %4025 = add i32 %3824, 0
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4025, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4028 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4026, %dx.types.Handle %4027, float %3955, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3960, float %3962, float undef, float %3964, float %3966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.ResRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.ResRet.f32 %4028, 2
  %4032 = extractvalue %dx.types.ResRet.f32 %4028, 3
  %4033 = bitcast float %3850 to i32
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = lshr i32 %4033, 8
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = fmul fast float %4032, %4035
  %4040 = fadd fast float %4039, %4038
  %4041 = fmul fast float %4040, 0x3F70101000000000
  %4042 = add i32 %3825, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4043, %dx.types.Handle %4027, float %3955, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3960, float %3962, float undef, float %3964, float %3966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = bitcast float %3844 to i32
  %4050 = and i32 %4049, 255
  %4051 = uitofp i32 %4050 to float
  %4052 = lshr i32 %4049, 8
  %4053 = and i32 %4052, 255
  %4054 = uitofp i32 %4053 to float
  %4055 = lshr i32 %4049, 16
  %4056 = and i32 %4055, 255
  %4057 = uitofp i32 %4056 to float
  %4058 = fmul fast float %4057, 0x3F70101000000000
  %4059 = fmul fast float %4045, %4051
  %4060 = fadd fast float %4059, %4054
  %4061 = fmul fast float %4060, 0x3F70101000000000
  %4062 = fadd fast float %4046, -5.000000e-01
  %4063 = fadd fast float %4048, -5.000000e-01
  %4064 = fmul fast float %4062, %4058
  %4065 = fmul fast float %4063, %4058
  %4066 = fadd fast float %4064, 5.000000e-01
  %4067 = fadd fast float %4065, 5.000000e-01
  %4068 = fmul fast float %4029, %3853
  %4069 = fmul fast float %4030, %3854
  %4070 = fmul fast float %4031, %3855
  %4071 = fmul fast float %4066, 2.000000e+00
  %4072 = fadd fast float %4071, -1.000000e+00
  %4073 = fmul fast float %4067, 2.000000e+00
  %4074 = fadd fast float %4073, -1.000000e+00
  %4075 = fadd fast float %4072, %4074
  %4076 = fmul fast float %4075, 5.000000e-01
  %4077 = fsub fast float %4072, %4074
  %4078 = fmul fast float %4077, 5.000000e-01
  %4079 = call float @dx.op.unary.f32(i32 6, float %4076)  ; FAbs(value)
  %4080 = fsub fast float 1.000000e+00, %4079
  %4081 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4082 = fsub fast float %4080, %4081
  %4083 = call float @dx.op.dot3.f32(i32 55, float %4076, float %4078, float %4082, float %4076, float %4078, float %4082)  ; Dot3(ax,ay,az,bx,by,bz)
  %4084 = call float @dx.op.unary.f32(i32 25, float %4083)  ; Rsqrt(value)
  %4085 = fmul fast float %4076, %4084
  %4086 = fmul fast float %4078, %4084
  %4087 = fmul fast float %4084, %4082
  %4088 = fmul fast float %4087, %3818
  %4089 = fmul fast float %4087, %3819
  %4090 = fmul fast float %4087, %3820
  %4091 = fmul fast float %4085, %3841
  %4092 = fmul fast float %4085, %3842
  %4093 = fmul fast float %4085, %3843
  %4094 = fadd fast float %4091, %4088
  %4095 = fadd fast float %4092, %4089
  %4096 = fadd fast float %4093, %4090
  %4097 = fmul fast float %4086, %3847
  %4098 = fmul fast float %4086, %3848
  %4099 = fmul fast float %4086, %3849
  %4100 = fadd fast float %4094, %4097
  %4101 = fadd fast float %4095, %4098
  %4102 = fadd fast float %4096, %4099
  %4103 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4102, float %4100, float %4101, float %4102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4104 = call float @dx.op.unary.f32(i32 25, float %4103)  ; Rsqrt(value)
  %4105 = fmul fast float %4100, %4104
  %4106 = fmul fast float %4101, %4104
  %4107 = fmul fast float %4102, %4104
  %4108 = icmp ne i32 %4024, 0
  %4109 = select i1 %4108, float 1.000000e+00, float 0.000000e+00
  %4110 = fmul fast float %4014, %4109
  %4111 = and i32 %3868, 1
  %4112 = icmp eq i32 %4111, 0
  br i1 %4112, label %4113, label %4117

; <label>:4113                                    ; preds = %4022
  %4114 = fsub fast float %4105, %3801
  %4115 = fsub fast float %4106, %3802
  %4116 = fsub fast float %4107, %3803
  br label %4117

; <label>:4117                                    ; preds = %4113, %4022
  %4118 = phi float [ %4114, %4113 ], [ %4105, %4022 ]
  %4119 = phi float [ %4115, %4113 ], [ %4106, %4022 ]
  %4120 = phi float [ %4116, %4113 ], [ %4107, %4022 ]
  %4121 = fmul float %4120, %4110
  %4122 = fmul float %4119, %4110
  %4123 = fmul float %4118, %4110
  %4124 = fadd fast float %4123, %3801
  %4125 = fadd fast float %4122, %3802
  %4126 = fadd fast float %4121, %3803
  %4127 = icmp ne i32 %4023, 0
  %4128 = select i1 %4127, float 1.000000e+00, float 0.000000e+00
  %4129 = fmul fast float %4014, %4128
  %4130 = fsub fast float %4068, %3808
  %4131 = fsub fast float %4069, %3809
  %4132 = fsub fast float %4070, %3810
  %4133 = fmul fast float %4130, %4129
  %4134 = fmul fast float %4131, %4129
  %4135 = fmul fast float %4132, %4129
  %4136 = fadd fast float %4133, %3808
  %4137 = fadd fast float %4134, %3809
  %4138 = fadd fast float %4135, %3810
  %4139 = fsub fast float %4041, %3807
  %4140 = fmul fast float %4139, %4129
  %4141 = fadd fast float %4140, %3807
  %4142 = fmul fast float %4129, %3797
  %4143 = fsub fast float %3797, %4142
  %4144 = fmul fast float %4129, %3796
  %4145 = fsub fast float %3796, %4144
  %4146 = fadd fast float %4014, %3806
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = fsub fast float %4061, %3805
  %4149 = fmul fast float %4148, %4110
  %4150 = fadd fast float %4149, %3805
  %4151 = fsub fast float %4047, %3804
  %4152 = fmul fast float %4151, %4110
  %4153 = fadd fast float %4152, %3804
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4069, float %4070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = fmul fast float %4157, %4154
  %4159 = fadd fast float %4158, %4156
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = bitcast float %3856 to i32
  %4162 = and i32 %4161, 65535
  %4163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4162)  ; LegacyF16ToF32(value)
  %4164 = lshr i32 %4161, 16
  %4165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4164)  ; LegacyF16ToF32(value)
  %4166 = fcmp fast oge float %4163, 0.000000e+00
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = select i1 %4166, float %4163, float %4168
  %4170 = fadd fast float %4169, %4165
  %4171 = fsub fast float %4160, %3795
  %4172 = fmul fast float %4171, %4014
  %4173 = fadd fast float %4172, %3795
  %4174 = fmul fast float %4170, %4014
  %4175 = call float @dx.op.binary.f32(i32 35, float %3794, float %4174)  ; FMax(a,b)
  %4176 = and i32 %3868, 16
  %4177 = icmp eq i32 %4176, 0
  br i1 %4177, label %4200, label %4178

; <label>:4178                                    ; preds = %4117
  %4179 = bitcast float %3862 to i32
  %4180 = add i32 %3859, 0
  %4181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4180, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4181, %dx.types.Handle %4027, float %3955, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3960, float %3962, float undef, float %3964, float %3966, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = and i32 %4179, 65535
  %4187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4186)  ; LegacyF16ToF32(value)
  %4188 = fmul fast float %4183, %3853
  %4189 = fmul fast float %4184, %3854
  %4190 = fmul fast float %4185, %3855
  %4191 = and i32 %3868, 16384
  %4192 = icmp ne i32 %4191, 0
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = select i1 %4192, float %4194, float 1.000000e+00
  %4196 = fmul fast float %4195, %4187
  %4197 = fmul fast float %4188, %4196
  %4198 = fmul fast float %4189, %4196
  %4199 = fmul fast float %4190, %4196
  br label %4200

; <label>:4200                                    ; preds = %4178, %4117
  %4201 = phi float [ %4197, %4178 ], [ 0.000000e+00, %4117 ]
  %4202 = phi float [ %4198, %4178 ], [ 0.000000e+00, %4117 ]
  %4203 = phi float [ %4199, %4178 ], [ 0.000000e+00, %4117 ]
  %4204 = fsub fast float %4201, %3798
  %4205 = fsub fast float %4202, %3799
  %4206 = fsub fast float %4203, %3800
  %4207 = fmul fast float %4204, %4014
  %4208 = fmul fast float %4205, %4014
  %4209 = fmul fast float %4206, %4014
  %4210 = fadd fast float %4207, %3798
  %4211 = fadd fast float %4208, %3799
  %4212 = fadd fast float %4209, %3800
  br label %3917

; <label>:4213                                    ; preds = %3917
  br label %4214

; <label>:4214                                    ; preds = %4213, %3737
  %4215 = phi float [ 0.000000e+00, %3737 ], [ %3918, %4213 ]
  %4216 = phi float [ %3706, %3737 ], [ %3919, %4213 ]
  %4217 = phi float [ %3704, %3737 ], [ %3920, %4213 ]
  %4218 = phi float [ 0.000000e+00, %3737 ], [ %3921, %4213 ]
  %4219 = phi float [ 0.000000e+00, %3737 ], [ %3922, %4213 ]
  %4220 = phi float [ %3698, %3737 ], [ %3923, %4213 ]
  %4221 = phi float [ %3699, %3737 ], [ %3924, %4213 ]
  %4222 = phi float [ %3700, %3737 ], [ %3925, %4213 ]
  %4223 = phi float [ %3732, %3737 ], [ %3926, %4213 ]
  %4224 = phi float [ %3733, %3737 ], [ %3927, %4213 ]
  %4225 = phi float [ %3734, %3737 ], [ %3928, %4213 ]
  %4226 = phi float [ %3703, %3737 ], [ %3929, %4213 ]
  %4227 = phi float [ %3702, %3737 ], [ %3930, %4213 ]
  %4228 = phi float [ 0.000000e+00, %3737 ], [ %3931, %4213 ]
  %4229 = phi float [ %3701, %3737 ], [ %3932, %4213 ]
  %4230 = phi float [ %3695, %3737 ], [ %3933, %4213 ]
  %4231 = phi float [ %3696, %3737 ], [ %3934, %4213 ]
  %4232 = phi float [ %3697, %3737 ], [ %3935, %4213 ]
  %4233 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4234 = call float @dx.op.unary.f32(i32 25, float %4233)  ; Rsqrt(value)
  %4235 = fmul fast float %4234, %4223
  %4236 = fmul fast float %4234, %4224
  %4237 = fmul fast float %4234, %4225
  %4238 = fadd fast float %4228, %1139
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4236, float %4237, float %4235, float %4236, float %4237)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = call float @dx.op.unary.f32(i32 25, float %4240)  ; Rsqrt(value)
  %4242 = fmul fast float %4241, %4235
  %4243 = fmul fast float %4241, %4236
  %4244 = fmul fast float %4241, %4237
  br label %4245

; <label>:4245                                    ; preds = %4214, %3692
  %4246 = phi float [ %4242, %4214 ], [ %3732, %3692 ]
  %4247 = phi float [ %4243, %4214 ], [ %3733, %3692 ]
  %4248 = phi float [ %4244, %4214 ], [ %3734, %3692 ]
  %4249 = phi float [ %4230, %4214 ], [ %3695, %3692 ]
  %4250 = phi float [ %4231, %4214 ], [ %3696, %3692 ]
  %4251 = phi float [ %4232, %4214 ], [ %3697, %3692 ]
  %4252 = phi float [ %4220, %4214 ], [ %3698, %3692 ]
  %4253 = phi float [ %4221, %4214 ], [ %3699, %3692 ]
  %4254 = phi float [ %4222, %4214 ], [ %3700, %3692 ]
  %4255 = phi float [ %4229, %4214 ], [ %3701, %3692 ]
  %4256 = phi float [ %4239, %4214 ], [ %1139, %3692 ]
  %4257 = phi float [ %4227, %4214 ], [ %3702, %3692 ]
  %4258 = phi float [ %4226, %4214 ], [ %3703, %3692 ]
  %4259 = phi float [ %4219, %4214 ], [ 0.000000e+00, %3692 ]
  %4260 = phi float [ %4218, %4214 ], [ 0.000000e+00, %3692 ]
  %4261 = phi float [ %4215, %4214 ], [ 0.000000e+00, %3692 ]
  %4262 = phi float [ %4216, %4214 ], [ %3706, %3692 ]
  %4263 = phi float [ %4217, %4214 ], [ %3704, %3692 ]
  %4264 = fadd fast float %4255, 0xBFB99999A0000000
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4265, 0x3FF1C71C80000000
  %4267 = call float @dx.op.binary.f32(i32 36, float %4255, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4268 = fsub fast float 1.000000e+00, %4266
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = fmul fast float %4269, %4249
  %4271 = fmul fast float %4269, %4250
  %4272 = fmul fast float %4269, %4251
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = fmul fast float %4266, %4249
  %4277 = fmul fast float %4266, %4250
  %4278 = fmul fast float %4266, %4251
  %4279 = fadd fast float %4276, %4267
  %4280 = fadd fast float %4277, %4267
  %4281 = fadd fast float %4278, %4267
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.i32 %4286, 3
  %4288 = and i32 %4287, 8
  %4289 = icmp ne i32 %4288, 0
  %4290 = call float @dx.op.binary.f32(i32 35, float %4273, float %4249)  ; FMax(a,b)
  %4291 = call float @dx.op.binary.f32(i32 35, float %4274, float %4249)  ; FMax(a,b)
  %4292 = call float @dx.op.binary.f32(i32 35, float %4275, float %4249)  ; FMax(a,b)
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4273, float %4274, float %4275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = select i1 %229, float %4249, float %4273
  %4295 = select i1 %229, float %4293, float %4274
  %4296 = select i1 %229, float 1.000000e+00, float %4275
  %4297 = select i1 %4289, float %4290, float %4294
  %4298 = select i1 %4289, float %4291, float %4295
  %4299 = select i1 %4289, float %4292, float %4296
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4304 = fadd fast float %4301, %167
  %4305 = fadd fast float %4302, %168
  %4306 = fadd fast float %4303, %169
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4310 = fsub fast float %4304, %4308
  %4311 = fsub fast float %4305, %4309
  %4312 = fmul fast float %4310, %4310
  %4313 = fmul fast float %4311, %4311
  %4314 = fadd fast float %4312, %4313
  %4315 = call float @dx.op.unary.f32(i32 24, float %4314)  ; Sqrt(value)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4317 = fcmp fast olt float %4315, %4316
  br i1 %4317, label %4318, label %4385

; <label>:4318                                    ; preds = %4245
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4326 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4323, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4329 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4330 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4331 = fadd fast float %4328, %4304
  %4332 = fadd fast float %4329, %4305
  %4333 = fadd fast float %4330, %4306
  %4334 = fmul fast float %4331, %4320
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4332, float %4322, float %4334)  ; FMad(a,b,c)
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4333, float %4324, float %4335)  ; FMad(a,b,c)
  %4337 = fmul fast float %4331, %4325
  %4338 = call float @dx.op.tertiary.f32(i32 46, float %4332, float %4326, float %4337)  ; FMad(a,b,c)
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4333, float %4327, float %4338)  ; FMad(a,b,c)
  %4340 = fsub fast float %4336, %4328
  %4341 = fsub fast float %4339, %4329
  %4342 = fsub fast float %4340, %4308
  %4343 = fadd fast float %4342, %4316
  %4344 = fsub fast float %4341, %4309
  %4345 = fadd fast float %4344, %4316
  %4346 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4347 = fmul fast float %4343, %4346
  %4348 = fmul fast float %4345, %4346
  %4349 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4351 = fsub fast float 1.000000e+00, %4349
  %4352 = fsub fast float 1.000000e+00, %4350
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4351, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = fcmp fast ugt float %4354, 0.000000e+00
  br i1 %4355, label %4356, label %4659

; <label>:4356                                    ; preds = %4318
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4359 = fmul fast float %4358, %4354
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4361 = fadd fast float %4360, %4359
  %4362 = extractvalue %dx.types.CBufRet.f32 %4323, 2
  %4363 = fadd fast float %4361, %4330
  %4364 = fmul fast float %4336, %4324
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4327, float %4364)  ; FMad(a,b,c)
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4362, float %4365)  ; FMad(a,b,c)
  %4367 = fsub fast float %4366, %4330
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 2
  %4370 = fsub fast float %4367, %4369
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4351, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4351, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = fadd fast float %4376, %4372
  %4380 = fmul fast float %4379, 0x3F847AE140000000
  %4381 = fadd fast float %4377, %4373
  %4382 = fmul fast float %4381, 0x3F847AE140000000
  %4383 = fadd fast float %4378, %4374
  %4384 = fmul fast float %4383, 0x3F847AE140000000
  br label %4659

; <label>:4385                                    ; preds = %4245
  %4386 = and i32 %205, 1
  %4387 = icmp eq i32 %4386, 0
  br i1 %4387, label %4659, label %4388

; <label>:4388                                    ; preds = %4385
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 0
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4391, 1
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4399 = extractvalue %dx.types.CBufRet.f32 %4391, 3
  %4400 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4401 = fadd fast float %4398, %4304
  %4402 = fadd fast float %4399, %4305
  %4403 = fadd fast float %4400, %4306
  %4404 = fmul fast float %4401, %4390
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4402, float %4392, float %4404)  ; FMad(a,b,c)
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4394, float %4405)  ; FMad(a,b,c)
  %4407 = fmul fast float %4401, %4395
  %4408 = call float @dx.op.tertiary.f32(i32 46, float %4402, float %4396, float %4407)  ; FMad(a,b,c)
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4397, float %4408)  ; FMad(a,b,c)
  %4410 = fsub fast float %4406, %4398
  %4411 = fsub fast float %4409, %4399
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.i32 %4419, 0
  %4421 = extractvalue %dx.types.CBufRet.i32 %4419, 1
  %4422 = udiv i32 %4421, %4420
  %4423 = fsub fast float %4410, %4413
  %4424 = fsub fast float %4411, %4414
  %4425 = call float @dx.op.binary.f32(i32 35, float %4423, float 0.000000e+00)  ; FMax(a,b)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4424, float 0.000000e+00)  ; FMax(a,b)
  %4427 = call float @dx.op.binary.f32(i32 36, float %4425, float %4415)  ; FMin(a,b)
  %4428 = call float @dx.op.binary.f32(i32 36, float %4426, float %4416)  ; FMin(a,b)
  %4429 = add i32 %4420, -1
  %4430 = add i32 %4422, -1
  %4431 = fmul fast float %4427, %4418
  %4432 = fmul fast float %4428, %4418
  %4433 = fptoui float %4431 to i32
  %4434 = fptoui float %4432 to i32
  %4435 = call i32 @dx.op.binary.i32(i32 40, i32 %4433, i32 %4429)  ; UMin(a,b)
  %4436 = call i32 @dx.op.binary.i32(i32 40, i32 %4434, i32 %4430)  ; UMin(a,b)
  %4437 = mul i32 %4436, %4420
  %4438 = add i32 %4437, %4435
  %4439 = shl i32 %4438, 2
  %4440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.i32 %4440, 0
  %4442 = icmp eq i32 %4441, -1
  br i1 %4442, label %4659, label %4443

; <label>:4443                                    ; preds = %4388
  %4444 = mul i32 %4441, 148
  %4445 = add i32 %4444, 4
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = add i32 %4444, 8
  %4449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = add i32 %4444, 36
  %4452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = add i32 %4444, 60
  %4455 = add i32 %4444, 92
  %4456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.i32 %4456, 0
  %4458 = add i32 %4444, 116
  %4459 = fsub fast float %4410, %4447
  %4460 = fsub fast float %4411, %4450
  %4461 = fmul fast float %4418, %4459
  %4462 = fmul fast float %4418, %4460
  %4463 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4465 = fsub fast float 1.000000e+00, %4464
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = call float @dx.op.unary.f32(i32 83, float %4463)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 83, float %4465)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 84, float %4463)  ; DerivCoarseY(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %4465)  ; DerivCoarseY(value)
  %4472 = fmul fast float %4468, %4467
  %4473 = fmul fast float %4469, %4467
  %4474 = fmul fast float %4470, %4467
  %4475 = fmul fast float %4471, %4467
  %4476 = call float @dx.op.dot2.f32(i32 54, float %4474, float %4475, float %4474, float %4475)  ; Dot2(ax,ay,bx,by)
  %4477 = call float @dx.op.dot2.f32(i32 54, float %4472, float %4473, float %4472, float %4473)  ; Dot2(ax,ay,bx,by)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4477, float %4476)  ; FMax(a,b)
  %4479 = call float @dx.op.unary.f32(i32 23, float %4478)  ; Log(value)
  %4480 = fmul fast float %4479, 5.000000e-01
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4483 = fadd fast float %4482, %4480
  %4484 = call float @dx.op.binary.f32(i32 35, float %4483, float 0.000000e+00)  ; FMax(a,b)
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4487 = fadd fast float %4486, %4484
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4490 = fadd fast float %4487, %4489
  %4491 = add i32 %4457, 0
  %4492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4491, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4493 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4492, i32 0)  ; GetDimensions(handle,mipLevel)
  %4494 = extractvalue %dx.types.Dimensions %4493, 0
  %4495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4494)  ; FirstbitLo(value)
  %4496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.i32 %4496, 1
  %4498 = sub nsw i32 %4497, %4495
  %4499 = sitofp i32 %4498 to float
  %4500 = fsub fast float %4490, %4499
  %4501 = call float @dx.op.binary.f32(i32 35, float %4500, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4492, %dx.types.Handle %52, float %4463, float %4465, float %4453, float undef, i32 0, i32 0, i32 undef, float %4501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = fcmp ule float %4503, 0x3FE0101020000000
  %4505 = extractvalue %dx.types.CBufRet.i32 %4496, 0
  %4506 = and i32 %4505, 128
  %4507 = icmp ne i32 %4506, 0
  %4508 = and i1 %4504, %4507
  br i1 %4508, label %4659, label %4509

; <label>:4509                                    ; preds = %4443
  %4510 = add i32 %4444, 20
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = add i32 %4444, 24
  %4514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = add i32 %4444, 40
  %4517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4516, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = add i32 %4444, 96
  %4520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4521 = extractvalue %dx.types.ResRet.i32 %4520, 0
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4524 = fmul fast float %4523, %4463
  %4525 = fmul fast float %4523, %4465
  %4526 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4527 = fadd fast float %4524, %4526
  %4528 = fadd fast float %4525, %4526
  %4529 = add i32 %4521, 0
  %4530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4529, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4531 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4530, i32 0)  ; GetDimensions(handle,mipLevel)
  %4532 = extractvalue %dx.types.Dimensions %4531, 0
  %4533 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4532)  ; FirstbitLo(value)
  %4534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.i32 %4534, 1
  %4536 = sub nsw i32 %4535, %4533
  %4537 = sitofp i32 %4536 to float
  %4538 = fsub fast float %4487, %4537
  %4539 = call float @dx.op.binary.f32(i32 35, float %4538, float 0.000000e+00)  ; FMax(a,b)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4530, %dx.types.Handle %52, float %4527, float %4528, float %4518, float undef, i32 0, i32 0, i32 undef, float %4539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fmul fast float %4541, %4512
  %4543 = fadd fast float %4542, %4515
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4552 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4553 = fadd fast float %4549, %4410
  %4554 = fadd fast float %4551, %4411
  %4555 = fadd fast float %4543, %4552
  %4556 = fmul fast float %4553, %4545
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4546, float %4556)  ; FMad(a,b,c)
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4547, float %4557)  ; FMad(a,b,c)
  %4559 = fsub fast float %4558, %4552
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4562 = fsub fast float %4559, %4561
  %4563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.i32 %4563, 0
  %4565 = call i32 @dx.op.binary.i32(i32 40, i32 %4441, i32 %4564)  ; UMin(a,b)
  %4566 = mul i32 %4565, 36
  %4567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.i32 %4567, 0
  %4569 = add i32 %4566, 4
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = fmul fast float %4571, %4463
  %4573 = fmul fast float %4571, %4465
  %4574 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4575 = fadd fast float %4572, %4574
  %4576 = fadd fast float %4573, %4574
  %4577 = icmp eq i32 %4568, 0
  br i1 %4577, label %4646, label %4578

; <label>:4578                                    ; preds = %4509
  br label %4579

; <label>:4579                                    ; preds = %4636, %4578
  %4580 = phi float [ %4637, %4636 ], [ 0.000000e+00, %4578 ]
  %4581 = phi float [ %4638, %4636 ], [ 0.000000e+00, %4578 ]
  %4582 = phi float [ %4639, %4636 ], [ 0.000000e+00, %4578 ]
  %4583 = phi float [ %4640, %4636 ], [ 0.000000e+00, %4578 ]
  %4584 = phi float [ %4641, %4636 ], [ 0.000000e+00, %4578 ]
  %4585 = phi float [ %4642, %4636 ], [ 0.000000e+00, %4578 ]
  %4586 = phi i32 [ %4643, %4636 ], [ 0, %4578 ]
  %4587 = shl i32 %4586, 2
  %4588 = add i32 %4454, %4587
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = add i32 %4458, %4587
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = add i32 %4593, 0
  %4595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4594, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4596 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4595, i32 0)  ; GetDimensions(handle,mipLevel)
  %4597 = extractvalue %dx.types.Dimensions %4596, 0
  %4598 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4597)  ; FirstbitLo(value)
  %4599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.i32 %4599, 1
  %4601 = sub nsw i32 %4600, %4598
  %4602 = sitofp i32 %4601 to float
  %4603 = fsub fast float %4487, %4602
  %4604 = call float @dx.op.binary.f32(i32 35, float %4603, float 0.000000e+00)  ; FMax(a,b)
  %4605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4595, %dx.types.Handle %52, float %4575, float %4576, float %4590, float undef, i32 0, i32 0, i32 undef, float %4604)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = fcmp fast ogt float %4606, 0.000000e+00
  br i1 %4607, label %4608, label %4636

; <label>:4608                                    ; preds = %4579
  %4609 = add i32 %4569, %4587
  %4610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.i32 %4610, 0
  %4612 = and i32 %4611, 32767
  %4613 = mul nuw nsw i32 %4612, 928
  %4614 = add nuw nsw i32 %4613, 48
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = add nuw nsw i32 %4613, 60
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = fmul fast float %4616, %4606
  %4625 = fmul fast float %4617, %4606
  %4626 = fmul fast float %4618, %4606
  %4627 = fadd fast float %4624, %4580
  %4628 = fadd fast float %4625, %4581
  %4629 = fadd fast float %4626, %4582
  %4630 = fmul fast float %4621, %4606
  %4631 = fmul fast float %4622, %4606
  %4632 = fmul fast float %4623, %4606
  %4633 = fadd fast float %4630, %4583
  %4634 = fadd fast float %4631, %4584
  %4635 = fadd fast float %4632, %4585
  br label %4636

; <label>:4636                                    ; preds = %4608, %4579
  %4637 = phi float [ %4627, %4608 ], [ %4580, %4579 ]
  %4638 = phi float [ %4628, %4608 ], [ %4581, %4579 ]
  %4639 = phi float [ %4629, %4608 ], [ %4582, %4579 ]
  %4640 = phi float [ %4633, %4608 ], [ %4583, %4579 ]
  %4641 = phi float [ %4634, %4608 ], [ %4584, %4579 ]
  %4642 = phi float [ %4635, %4608 ], [ %4585, %4579 ]
  %4643 = add nuw i32 %4586, 1
  %4644 = icmp eq i32 %4643, %4568
  br i1 %4644, label %4645, label %4579

; <label>:4645                                    ; preds = %4636
  br label %4646

; <label>:4646                                    ; preds = %4645, %4509
  %4647 = phi float [ 0.000000e+00, %4509 ], [ %4637, %4645 ]
  %4648 = phi float [ 0.000000e+00, %4509 ], [ %4638, %4645 ]
  %4649 = phi float [ 0.000000e+00, %4509 ], [ %4639, %4645 ]
  %4650 = phi float [ 0.000000e+00, %4509 ], [ %4640, %4645 ]
  %4651 = phi float [ 0.000000e+00, %4509 ], [ %4641, %4645 ]
  %4652 = phi float [ 0.000000e+00, %4509 ], [ %4642, %4645 ]
  %4653 = fadd fast float %4650, %4647
  %4654 = fmul fast float %4653, 0x3F847AE140000000
  %4655 = fadd fast float %4651, %4648
  %4656 = fmul fast float %4655, 0x3F847AE140000000
  %4657 = fadd fast float %4652, %4649
  %4658 = fmul fast float %4657, 0x3F847AE140000000
  br label %4659

; <label>:4659                                    ; preds = %4646, %4443, %4388, %4385, %4356, %4318
  %4660 = phi float [ %4370, %4356 ], [ -1.310720e+05, %4318 ], [ %4562, %4646 ], [ -1.310720e+05, %4388 ], [ -1.310720e+05, %4443 ], [ -1.310720e+05, %4385 ]
  %4661 = phi float [ %4380, %4356 ], [ 0.000000e+00, %4318 ], [ %4654, %4646 ], [ 0.000000e+00, %4388 ], [ 0.000000e+00, %4443 ], [ 0.000000e+00, %4385 ]
  %4662 = phi float [ %4382, %4356 ], [ 0.000000e+00, %4318 ], [ %4656, %4646 ], [ 0.000000e+00, %4388 ], [ 0.000000e+00, %4443 ], [ 0.000000e+00, %4385 ]
  %4663 = phi float [ %4384, %4356 ], [ 0.000000e+00, %4318 ], [ %4658, %4646 ], [ 0.000000e+00, %4388 ], [ 0.000000e+00, %4443 ], [ 0.000000e+00, %4385 ]
  %4664 = phi i1 [ true, %4356 ], [ false, %4318 ], [ true, %4646 ], [ false, %4388 ], [ false, %4443 ], [ false, %4385 ]
  %4665 = and i32 %205, 3
  %4666 = icmp eq i32 %4665, 1
  %4667 = select i1 %4666, float 1.000000e+00, float 0.000000e+00
  %4668 = fsub fast float %4660, %169
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = select i1 %4664, float %4669, float 1.000000e+00
  %4671 = fmul fast float %4670, %4667
  %4672 = icmp eq i32 %4665, 3
  %4673 = select i1 %4672, float 1.000000e+00, float %4671
  %4674 = call float @dx.op.binary.f32(i32 35, float %4261, float %4673)  ; FMax(a,b)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fcmp fast une float %4675, 0.000000e+00
  %4677 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 25, float %4677)  ; Rsqrt(value)
  br i1 %4676, label %4686, label %4679

; <label>:4679                                    ; preds = %4659
  %4680 = fmul fast float %4678, %167
  %4681 = fmul fast float %4678, %168
  %4682 = fmul fast float %4678, %169
  %4683 = fsub fast float -0.000000e+00, %4680
  %4684 = fsub fast float -0.000000e+00, %4681
  %4685 = fsub fast float -0.000000e+00, %4682
  br label %4854

; <label>:4686                                    ; preds = %4659
  %4687 = fmul fast float %167, %4678
  %4688 = fsub fast float -0.000000e+00, %4687
  %4689 = fmul fast float %168, %4678
  %4690 = fsub fast float -0.000000e+00, %4689
  %4691 = fmul fast float %169, %4678
  %4692 = fsub fast float -0.000000e+00, %4691
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4690, float %4692, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = fmul fast float %4675, 2.500000e+00
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = fmul fast float %4675, 0x4013FFFFE0000000
  %4697 = fadd fast float %4696, 0xBFFFFFFFE0000000
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4675, 0x4004000020000000
  %4700 = fadd fast float %4699, 0xBFF8000040000000
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4703 = fmul fast float %4264, 1.000000e+01
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, 2.000000e+00
  %4706 = fsub fast float 3.000000e+00, %4705
  %4707 = fmul fast float %4704, %4704
  %4708 = fmul fast float %4707, %4706
  %4709 = fsub fast float 1.000000e+00, %4708
  %4710 = fsub fast float 0x3FE3333340000000, %4285
  %4711 = fmul fast float %4710, 0x400AAAAAA0000000
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4709, %4712
  %4714 = fmul fast float %4297, 0x3FEA2B8620000000
  %4715 = fmul fast float %4298, 0x3FEA2B8620000000
  %4716 = fmul fast float %4299, 0x3FEA2B8620000000
  %4717 = fadd fast float %4714, 0x3FC81DFBA0000000
  %4718 = fmul fast float %4717, %4297
  %4719 = fadd fast float %4718, 0x3F910E6020000000
  %4720 = fadd fast float %4715, 0x3FC81DFBA0000000
  %4721 = fmul fast float %4720, %4298
  %4722 = fadd fast float %4721, 0x3F910E6020000000
  %4723 = fadd fast float %4716, 0x3FC81DFBA0000000
  %4724 = fmul fast float %4723, %4299
  %4725 = fadd fast float %4724, 0x3F910E6020000000
  %4726 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = fsub fast float %4726, %4297
  %4730 = fsub fast float %4727, %4298
  %4731 = fsub fast float %4728, %4299
  %4732 = fmul fast float %4729, %4702
  %4733 = fmul fast float %4732, %4713
  %4734 = fmul fast float %4730, %4702
  %4735 = fmul fast float %4734, %4713
  %4736 = fmul fast float %4731, %4702
  %4737 = fmul fast float %4736, %4713
  %4738 = fadd fast float %4733, %4297
  %4739 = fadd fast float %4735, %4298
  %4740 = fadd fast float %4737, %4299
  %4741 = fmul fast float %4258, %4258
  %4742 = fmul fast float %4741, %4741
  %4743 = fadd fast float %4698, 1.000000e+00
  %4744 = fsub fast float %4743, %4713
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fsub fast float 1.000000e+00, %4742
  %4749 = call float @dx.op.binary.f32(i32 36, float %4745, float %4748)  ; FMin(a,b)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4751 = call float @dx.op.binary.f32(i32 35, float %4749, float %4750)  ; FMax(a,b)
  %4752 = fadd fast float %4747, 0xBFE4CCCCC0000000
  %4753 = fmul fast float %4752, 0x4006DB6DA0000000
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = fsub fast float 3.000000e+00, %4755
  %4757 = bitcast float %4282 to i32
  %4758 = ashr i32 %4757, 1
  %4759 = add nsw i32 %4758, 532487669
  %4760 = bitcast i32 %4759 to float
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = bitcast float %4761 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4764, 2.000000e+00
  %4766 = bitcast float %4283 to i32
  %4767 = ashr i32 %4766, 1
  %4768 = add nsw i32 %4767, 532487669
  %4769 = bitcast i32 %4768 to float
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fmul fast float %4773, 2.000000e+00
  %4775 = bitcast float %4284 to i32
  %4776 = ashr i32 %4775, 1
  %4777 = add nsw i32 %4776, 532487669
  %4778 = bitcast i32 %4777 to float
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = bitcast float %4779 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = bitcast i32 %4781 to float
  %4783 = fmul fast float %4782, 2.000000e+00
  %4784 = fsub fast float 0x4002A9FBE0000000, %4765
  %4785 = fadd fast float %4765, 0x3FD54FDF00000000
  %4786 = bitcast float %4785 to i32
  %4787 = sub nsw i32 2129859010, %4786
  %4788 = bitcast i32 %4787 to float
  %4789 = fmul fast float %4788, %4784
  %4790 = fmul fast float %4789, %4789
  %4791 = fsub fast float 0x4002A9FBE0000000, %4774
  %4792 = fadd fast float %4774, 0x3FD54FDF00000000
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = fmul fast float %4795, %4791
  %4797 = fmul fast float %4796, %4796
  %4798 = fsub fast float 0x4002A9FBE0000000, %4783
  %4799 = fadd fast float %4783, 0x3FD54FDF00000000
  %4800 = bitcast float %4799 to i32
  %4801 = sub nsw i32 2129859010, %4800
  %4802 = bitcast i32 %4801 to float
  %4803 = fmul fast float %4802, %4798
  %4804 = fmul fast float %4803, %4803
  %4805 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4790)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4797)  ; FMax(a,b)
  %4807 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4804)  ; FMax(a,b)
  %4808 = fsub fast float 1.000000e+00, %4693
  %4809 = fadd fast float %4808, %4709
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fsub fast float 1.000000e+00, %4673
  %4812 = fmul fast float %4751, %4811
  %4813 = fmul fast float %4754, %4754
  %4814 = fmul fast float %4813, %4812
  %4815 = fmul fast float %4814, %4756
  %4816 = fmul fast float %4811, 0xBFE99999A0000000
  %4817 = fmul fast float %4816, %4702
  %4818 = fmul fast float %4817, %4713
  %4819 = fadd fast float %4818, 1.000000e+00
  %4820 = fadd fast float %4285, -1.000000e+00
  %4821 = fmul fast float %4819, %4820
  %4822 = fadd fast float %4821, 1.000000e+00
  %4823 = fsub fast float %4805, %4282
  %4824 = fsub fast float %4806, %4283
  %4825 = fsub fast float %4807, %4284
  %4826 = fmul fast float %4815, %4823
  %4827 = fmul fast float %4815, %4824
  %4828 = fmul fast float %4815, %4825
  %4829 = fadd fast float %4826, %4282
  %4830 = fadd fast float %4827, %4283
  %4831 = fadd fast float %4828, %4284
  %4832 = fsub fast float %111, %4246
  %4833 = fsub fast float %112, %4247
  %4834 = fsub fast float %113, %4248
  %4835 = fmul fast float %4815, %4832
  %4836 = fmul fast float %4815, %4833
  %4837 = fmul fast float %4815, %4834
  %4838 = fadd fast float %4835, %4246
  %4839 = fadd fast float %4836, %4247
  %4840 = fadd fast float %4837, %4248
  %4841 = fmul fast float %4815, %4810
  %4842 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = fmul fast float %4841, %4843
  %4845 = fadd fast float %4844, %4842
  %4846 = fsub fast float 1.000000e+00, %4258
  %4847 = fmul fast float %4815, %4846
  %4848 = fadd fast float %4847, %4258
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float %4838, float %4839, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 25, float %4849)  ; Rsqrt(value)
  %4851 = fmul fast float %4838, %4850
  %4852 = fmul fast float %4839, %4850
  %4853 = fmul fast float %4840, %4850
  br label %4854

; <label>:4854                                    ; preds = %4686, %4679
  %4855 = phi float [ %4685, %4679 ], [ %4692, %4686 ]
  %4856 = phi float [ %4684, %4679 ], [ %4690, %4686 ]
  %4857 = phi float [ %4683, %4679 ], [ %4688, %4686 ]
  %4858 = phi float [ %4682, %4679 ], [ %4691, %4686 ]
  %4859 = phi float [ %4681, %4679 ], [ %4689, %4686 ]
  %4860 = phi float [ %4680, %4679 ], [ %4687, %4686 ]
  %4861 = phi float [ %4282, %4679 ], [ %4829, %4686 ]
  %4862 = phi float [ %4283, %4679 ], [ %4830, %4686 ]
  %4863 = phi float [ %4284, %4679 ], [ %4831, %4686 ]
  %4864 = phi float [ %4297, %4679 ], [ %4738, %4686 ]
  %4865 = phi float [ %4298, %4679 ], [ %4739, %4686 ]
  %4866 = phi float [ %4299, %4679 ], [ %4740, %4686 ]
  %4867 = phi float [ %4246, %4679 ], [ %4851, %4686 ]
  %4868 = phi float [ %4247, %4679 ], [ %4852, %4686 ]
  %4869 = phi float [ %4248, %4679 ], [ %4853, %4686 ]
  %4870 = phi float [ %4285, %4679 ], [ %4845, %4686 ]
  %4871 = phi float [ %4258, %4679 ], [ %4848, %4686 ]
  %4872 = fsub fast float -0.000000e+00, %169
  %4873 = select i1 %229, float 0.000000e+00, float %4863
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %4857, float %4856, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4859, float %4858, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = fmul fast float %4876, 2.000000e+00
  %4878 = fmul fast float %4877, %4867
  %4879 = fmul fast float %4877, %4868
  %4880 = fmul fast float %4877, %4869
  %4881 = fsub fast float %4860, %4878
  %4882 = fsub fast float %4859, %4879
  %4883 = fsub fast float %4858, %4880
  %4884 = call float @dx.op.binary.f32(i32 36, float %4871, float 1.000000e+00)  ; FMin(a,b)
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = bitcast float %4885 to i32
  %4887 = ashr i32 %4886, 1
  %4888 = add nsw i32 %4887, 532487669
  %4889 = bitcast i32 %4888 to float
  %4890 = fsub fast float 1.000000e+00, %4870
  %4891 = call float @dx.op.binary.f32(i32 35, float %4890, float 0x3F847AE140000000)  ; FMax(a,b)
  %4892 = fmul fast float %4891, %4891
  %4893 = fmul fast float %4892, %4892
  %4894 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4889, float %4893, float %4894, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = fsub fast float 1.000000e+00, %4871
  %4898 = bitcast float %4897 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = fsub fast float 1.000000e+00, %72
  %4902 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4902, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4904 = fdiv fast float %4901, %4903
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 5.000000e-01
  %4908 = fadd fast float %4907, 5.000000e-01
  %4909 = fmul fast float %4908, %72
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, %4904
  %4913 = fadd fast float %4909, %4912
  %4914 = fsub fast float 5.000000e-01, %4907
  %4915 = fmul fast float %4914, %4864
  %4916 = fmul fast float %4914, %4865
  %4917 = fmul fast float %4914, %4866
  %4918 = fadd fast float %4913, %4915
  %4919 = fadd fast float %4913, %4916
  %4920 = fadd fast float %4913, %4917
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 5.000000e-01
  %4924 = fadd fast float %4923, 5.000000e-01
  %4925 = fmul fast float %4924, %72
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, %4904
  %4929 = fadd fast float %4925, %4928
  %4930 = fsub fast float 5.000000e-01, %4923
  %4931 = fmul fast float %4930, %4864
  %4932 = fmul fast float %4930, %4865
  %4933 = fmul fast float %4930, %4866
  %4934 = fadd fast float %4929, %4931
  %4935 = fadd fast float %4929, %4932
  %4936 = fadd fast float %4929, %4933
  %4937 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = call float @dx.op.binary.f32(i32 36, float %4864, float %4939)  ; FMin(a,b)
  %4941 = fmul fast float %4940, %4885
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = call float @dx.op.binary.f32(i32 36, float %4865, float %4939)  ; FMin(a,b)
  %4947 = fmul fast float %4946, %4885
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = call float @dx.op.binary.f32(i32 36, float %4866, float %4939)  ; FMin(a,b)
  %4953 = fmul fast float %4952, %4885
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4884, %73
  %4959 = fmul fast float %4958, %4918
  %4960 = fmul fast float %4959, %4945
  %4961 = fmul fast float %4884, %74
  %4962 = fmul fast float %4961, %4919
  %4963 = fmul fast float %4962, %4951
  %4964 = fmul fast float %4884, %75
  %4965 = fmul fast float %4964, %4920
  %4966 = fmul fast float %4965, %4957
  %4967 = call float @dx.op.binary.f32(i32 36, float %4861, float %4939)  ; FMin(a,b)
  %4968 = fmul fast float %4967, %4885
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = call float @dx.op.binary.f32(i32 36, float %4862, float %4939)  ; FMin(a,b)
  %4974 = fmul fast float %4973, %4885
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = call float @dx.op.binary.f32(i32 36, float %4873, float %4939)  ; FMin(a,b)
  %4980 = fmul fast float %4979, %4885
  %4981 = fsub fast float 1.000000e+00, %4980
  %4982 = bitcast float %4981 to i32
  %4983 = sub nsw i32 2129859010, %4982
  %4984 = bitcast i32 %4983 to float
  %4985 = fmul fast float %4958, %4934
  %4986 = fmul fast float %4985, %4972
  %4987 = fmul fast float %4961, %4935
  %4988 = fmul fast float %4987, %4978
  %4989 = fmul fast float %4964, %4936
  %4990 = fmul fast float %4989, %4984
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4963, float %4966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = select i1 %229, float 0.000000e+00, float %4960
  %4993 = select i1 %229, float %4991, float %4963
  %4994 = select i1 %229, float 0.000000e+00, float %4966
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4988, float %4990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = select i1 %229, float 0.000000e+00, float %4986
  %4997 = select i1 %229, float %4995, float %4988
  %4998 = select i1 %229, float 0.000000e+00, float %4990
  %4999 = fmul fast float %4875, 9.843750e-01
  %5000 = fmul fast float %4870, 9.843750e-01
  %5001 = fadd fast float %4999, 7.812500e-03
  %5002 = fadd fast float %5000, 7.812500e-03
  %5003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 2
  %5005 = extractvalue %dx.types.ResRet.f32 %5003, 3
  %5006 = fmul fast float %5004, %4861
  %5007 = fmul fast float %5004, %4862
  %5008 = fmul fast float %5004, %4873
  %5009 = fadd fast float %5006, %5005
  %5010 = fadd fast float %5007, %5005
  %5011 = fadd fast float %5008, %5005
  %5012 = fcmp fast ogt float %4259, 0.000000e+00
  br i1 %5012, label %5013, label %5039

; <label>:5013                                    ; preds = %4854
  %5014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4259, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = fadd fast float %5015, -5.000000e-01
  %5019 = fadd fast float %5016, -5.000000e-01
  %5020 = fadd fast float %5017, -5.000000e-01
  %5021 = fsub fast float 1.000000e+00, %4861
  %5022 = fsub fast float 1.000000e+00, %4862
  %5023 = fsub fast float 1.000000e+00, %4873
  %5024 = fmul fast float %4861, 4.000000e+00
  %5025 = fmul fast float %5024, %5021
  %5026 = fmul fast float %5025, %5018
  %5027 = fmul fast float %4862, 4.000000e+00
  %5028 = fmul fast float %5027, %5022
  %5029 = fmul fast float %5028, %5019
  %5030 = fmul fast float %4873, 4.000000e+00
  %5031 = fmul fast float %5030, %5023
  %5032 = fmul fast float %5031, %5020
  %5033 = fadd fast float %5026, %5009
  %5034 = fadd fast float %5029, %5010
  %5035 = fadd fast float %5032, %5011
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5037 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  br label %5039

; <label>:5039                                    ; preds = %5013, %4854
  %5040 = phi float [ %5036, %5013 ], [ %5009, %4854 ]
  %5041 = phi float [ %5037, %5013 ], [ %5010, %4854 ]
  %5042 = phi float [ %5038, %5013 ], [ %5011, %4854 ]
  %5043 = call float @dx.op.binary.f32(i32 35, float %5041, float %5042)  ; FMax(a,b)
  %5044 = call float @dx.op.binary.f32(i32 35, float %5040, float %5043)  ; FMax(a,b)
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = fmul fast float %5044, %4870
  %5047 = fadd fast float %5046, %4870
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5051 = fmul fast float %5047, %5049
  %5052 = fadd fast float %5051, %5050
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fsub fast float 1.000000e+00, %4896
  %5055 = fadd fast float %5054, %5053
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fcmp fast olt float %5056, 1.000000e+00
  br i1 %5057, label %5058, label %5534

; <label>:5058                                    ; preds = %5039
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 3
  %5062 = fmul fast float %5060, %104
  %5063 = fmul fast float %5061, %105
  %5064 = fptoui float %5062 to i32
  %5065 = fptoui float %5063 to i32
  %5066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.CBufRet.f32 %5066, 2
  %5069 = extractvalue %dx.types.CBufRet.f32 %5066, 3
  %5070 = fadd fast float %92, -4.000000e+00
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0.000000e+00)  ; FMax(a,b)
  %5072 = fadd fast float %5071, %5067
  %5073 = fmul fast float %5072, %5068
  %5074 = call float @dx.op.unary.f32(i32 23, float %5073)  ; Log(value)
  %5075 = fmul fast float %5074, %5069
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5078 = fmul fast float %5075, %5077
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.i32 %5080, 1
  %5082 = add i32 %5081, -1
  %5083 = uitofp i32 %5081 to float
  %5084 = fmul fast float %5083, %5079
  %5085 = fptoui float %5084 to i32
  %5086 = call i32 @dx.op.binary.i32(i32 40, i32 %5085, i32 %5082)  ; UMin(a,b)
  %5087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.i32 %5087, 2
  %5089 = extractvalue %dx.types.CBufRet.i32 %5087, 3
  %5090 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5065, i32 %5088, i32 %5064)  ; UMad(a,b,c)
  %5091 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5086, i32 %5089, i32 %5090)  ; UMad(a,b,c)
  %5092 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5093 = fptoui float %5092 to i32
  %5094 = lshr i32 %5093, 5
  %5095 = call i32 @dx.op.binary.i32(i32 40, i32 %5094, i32 8191)  ; UMin(a,b)
  %5096 = fsub fast float %4660, %169
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fcmp fast ogt float %5097, 0.000000e+00
  %5099 = fcmp fast ogt float %4883, 0.000000e+00
  %5100 = and i1 %5099, %5098
  br i1 %5100, label %5101, label %5130

; <label>:5101                                    ; preds = %5058
  %5102 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5102, float -1.000000e+00)  ; FMax(a,b)
  %5104 = call float @dx.op.binary.f32(i32 36, float %5103, float 1.000000e+00)  ; FMin(a,b)
  %5105 = fmul fast float %5104, %5104
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = fmul fast float %5106, 0x3FFC6E2300000000
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = fcmp fast ogt float %5108, 0.000000e+00
  %5110 = call float @dx.op.unary.f32(i32 24, float %5108)  ; Sqrt(value)
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = call float @dx.op.unary.f32(i32 23, float %5111)  ; Log(value)
  %5113 = fmul fast float %5112, 5.000000e+00
  %5114 = call float @dx.op.unary.f32(i32 21, float %5113)  ; Exp(value)
  %5115 = fmul fast float %5114, 0x3FEF591A60000000
  %5116 = fadd fast float %5115, 0x3F94DCB540000000
  %5117 = select i1 %5109, float %5116, float 1.000000e+00
  %5118 = fcmp fast oge float %5117, 1.000000e+00
  %5119 = fmul fast float %5102, 2.000000e+00
  %5120 = fadd fast float %5119, %4883
  %5121 = select i1 %5118, float %5120, float %4883
  %5122 = fsub fast float %5121, %4883
  %5123 = fmul fast float %5122, %5097
  %5124 = fadd fast float %5123, %4883
  %5125 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %5124, float %4881, float %4882, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = call float @dx.op.unary.f32(i32 25, float %5125)  ; Rsqrt(value)
  %5127 = fmul fast float %5126, %4881
  %5128 = fmul fast float %5126, %4882
  %5129 = fmul fast float %5124, %5126
  br label %5130

; <label>:5130                                    ; preds = %5101, %5058
  %5131 = phi float [ %5127, %5101 ], [ %4881, %5058 ]
  %5132 = phi float [ %5128, %5101 ], [ %4882, %5058 ]
  %5133 = phi float [ %5129, %5101 ], [ %4883, %5058 ]
  %5134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.i32 %5134, 2
  %5136 = add nsw i32 %5135, -1
  %5137 = call i32 @dx.op.binary.i32(i32 37, i32 %5136, i32 0)  ; IMax(a,b)
  %5138 = shl i32 %5095, 2
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = lshr i32 %5140, 16
  %5142 = and i32 %5140, 65535
  %5143 = lshr i32 %5140, 21
  %5144 = lshr i32 %5142, 5
  %5145 = call i32 @dx.op.binary.i32(i32 40, i32 %5144, i32 %5137)  ; UMin(a,b)
  %5146 = icmp ugt i32 %5143, %5145
  br i1 %5146, label %5510, label %5147

; <label>:5147                                    ; preds = %5130
  br label %5148

; <label>:5148                                    ; preds = %5502, %5147
  %5149 = phi float [ %5503, %5502 ], [ 0.000000e+00, %5147 ]
  %5150 = phi float [ %5504, %5502 ], [ 0.000000e+00, %5147 ]
  %5151 = phi float [ %5505, %5502 ], [ 0.000000e+00, %5147 ]
  %5152 = phi float [ %5506, %5502 ], [ 1.000000e+00, %5147 ]
  %5153 = phi i32 [ %5507, %5502 ], [ %5143, %5147 ]
  %5154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.i32 %5154, 2
  %5156 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5091, i32 %5155, i32 %5153)  ; UMad(a,b,c)
  %5157 = shl i32 %5156, 2
  %5158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.i32 %5158, 0
  %5160 = shl i32 %5153, 5
  %5161 = sub nsw i32 %5141, %5160
  %5162 = call i32 @dx.op.binary.i32(i32 37, i32 %5161, i32 0)  ; IMax(a,b)
  %5163 = call i32 @dx.op.binary.i32(i32 38, i32 %5162, i32 31)  ; IMin(a,b)
  %5164 = sub nsw i32 1, %5141
  %5165 = add nsw i32 %5164, %5142
  %5166 = call i32 @dx.op.binary.i32(i32 37, i32 %5165, i32 0)  ; IMax(a,b)
  %5167 = call i32 @dx.op.binary.i32(i32 38, i32 %5166, i32 32)  ; IMin(a,b)
  %5168 = and i32 %5167, 31
  %5169 = shl i32 -1, %5168
  %5170 = xor i32 %5169, -1
  %5171 = and i32 %5163, 31
  %5172 = shl i32 %5170, %5171
  %5173 = icmp eq i32 %5167, 32
  %5174 = select i1 %5173, i32 -1, i32 %5172
  %5175 = and i32 %5174, %5159
  %5176 = icmp eq i32 %5175, 0
  br i1 %5176, label %5502, label %5177

; <label>:5177                                    ; preds = %5148
  br label %5178

; <label>:5178                                    ; preds = %5285, %5177
  %5179 = phi float [ %5286, %5285 ], [ %5149, %5177 ]
  %5180 = phi float [ %5287, %5285 ], [ %5150, %5177 ]
  %5181 = phi float [ %5288, %5285 ], [ %5151, %5177 ]
  %5182 = phi float [ %5289, %5285 ], [ %5152, %5177 ]
  %5183 = phi i32 [ %5188, %5285 ], [ %5175, %5177 ]
  %5184 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5183)  ; FirstbitLo(value)
  %5185 = add i32 %5184, %5160
  %5186 = and i32 %5184, 31
  %5187 = shl i32 1, %5186
  %5188 = xor i32 %5187, %5183
  %5189 = mul i32 %5185, 72
  %5190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = add i32 %5189, 12
  %5195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.i32 %5195, 0
  %5197 = add i32 %5189, 16
  %5198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5197, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5202 = add i32 %5189, 28
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = add i32 %5189, 32
  %5206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5205, i32 undef)  ; BufferLoad(srv,index,wot)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5210 = extractvalue %dx.types.ResRet.f32 %5206, 3
  %5211 = add i32 %5189, 48
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = add i32 %5189, 56
  %5216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = add i32 %5189, 64
  %5220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5219, i32 undef)  ; BufferLoad(srv,index,wot)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = mul i32 %5185, 60
  %5224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5223, i32 undef)  ; BufferLoad(srv,index,wot)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = add i32 %5223, 12
  %5229 = add i32 %5223, 48
  %5230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5229, i32 undef)  ; BufferLoad(srv,index,wot)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5234 = and i32 %5196, 32767
  %5235 = bitcast float %5191 to i32
  %5236 = icmp eq i32 %5235, -1
  %5237 = bitcast float %5192 to i32
  %5238 = and i32 %5196, 32768
  %5239 = icmp ne i32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5243 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5244 = fsub fast float %5225, %5241
  %5245 = fsub fast float %5226, %5242
  %5246 = fsub fast float %5227, %5243
  %5247 = fsub fast float %167, %5244
  %5248 = fsub fast float %168, %5245
  %5249 = fsub fast float %169, %5246
  %5250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = add i32 %5223, 24
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5257, float %5258, float %5259)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = add i32 %5223, 36
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5268 = call float @dx.op.unary.f32(i32 6, float %5260)  ; FAbs(value)
  %5269 = call float @dx.op.unary.f32(i32 6, float %5266)  ; FAbs(value)
  %5270 = fsub fast float %5231, %5267
  %5271 = fsub fast float %5232, %5268
  %5272 = fsub fast float %5233, %5269
  %5273 = fmul fast float %5270, %5199
  %5274 = fmul fast float %5271, %5200
  %5275 = fmul fast float %5272, %5201
  %5276 = call float @dx.op.binary.f32(i32 36, float %5274, float %5275)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5273, float %5276)  ; FMin(a,b)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = call float @dx.op.binary.f32(i32 36, float %5182, float %5278)  ; FMin(a,b)
  %5280 = uitofp i1 %5239 to float
  %5281 = fadd fast float %5097, 1.000000e+00
  %5282 = fsub fast float %5281, %5280
  %5283 = fmul fast float %5279, %5282
  %5284 = fcmp fast ogt float %5283, 0.000000e+00
  br i1 %5284, label %5291, label %5285

; <label>:5285                                    ; preds = %5433, %5178
  %5286 = phi float [ %5497, %5433 ], [ %5179, %5178 ]
  %5287 = phi float [ %5498, %5433 ], [ %5180, %5178 ]
  %5288 = phi float [ %5499, %5433 ], [ %5181, %5178 ]
  %5289 = phi float [ %5500, %5433 ], [ %5182, %5178 ]
  %5290 = icmp eq i32 %5183, %5187
  br i1 %5290, label %5501, label %5178

; <label>:5291                                    ; preds = %5178
  br i1 %5236, label %5349, label %5292

; <label>:5292                                    ; preds = %5291
  %5293 = fsub fast float -0.000000e+00, %5251
  %5294 = fsub fast float -0.000000e+00, %5252
  %5295 = fsub fast float -0.000000e+00, %5253
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = fadd fast float %5298, %5214
  %5300 = fadd fast float %5213, %5298
  %5301 = fsub fast float -0.000000e+00, %5300
  %5302 = fcmp ogt float %5296, -0.000000e+00
  %5303 = select i1 %5302, float %5301, float %5299
  %5304 = call float @dx.op.unary.f32(i32 6, float %5297)  ; FAbs(value)
  %5305 = fdiv fast float 1.000000e+00, %5304
  %5306 = fmul fast float %5303, %5305
  %5307 = call float @dx.op.binary.f32(i32 35, float %5306, float 0.000000e+00)  ; FMax(a,b)
  %5308 = fsub fast float -0.000000e+00, %5257
  %5309 = fsub fast float -0.000000e+00, %5258
  %5310 = fsub fast float -0.000000e+00, %5259
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5308, float %5309, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = fsub fast float -0.000000e+00, %5311
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5308, float %5309, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = fadd fast float %5313, %5218
  %5315 = fadd fast float %5217, %5313
  %5316 = fsub fast float -0.000000e+00, %5315
  %5317 = fcmp ogt float %5311, -0.000000e+00
  %5318 = select i1 %5317, float %5316, float %5314
  %5319 = call float @dx.op.unary.f32(i32 6, float %5312)  ; FAbs(value)
  %5320 = fdiv fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5318, %5320
  %5322 = call float @dx.op.binary.f32(i32 35, float %5321, float 0.000000e+00)  ; FMax(a,b)
  %5323 = fsub fast float -0.000000e+00, %5263
  %5324 = fsub fast float -0.000000e+00, %5264
  %5325 = fsub fast float -0.000000e+00, %5265
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = fsub fast float -0.000000e+00, %5326
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5323, float %5324, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = fadd fast float %5328, %5222
  %5330 = fadd fast float %5221, %5328
  %5331 = fsub fast float -0.000000e+00, %5330
  %5332 = fcmp ogt float %5326, -0.000000e+00
  %5333 = select i1 %5332, float %5331, float %5329
  %5334 = call float @dx.op.unary.f32(i32 6, float %5327)  ; FAbs(value)
  %5335 = fdiv fast float 1.000000e+00, %5334
  %5336 = fmul fast float %5333, %5335
  %5337 = call float @dx.op.binary.f32(i32 35, float %5336, float 0.000000e+00)  ; FMax(a,b)
  %5338 = call float @dx.op.binary.f32(i32 36, float %5322, float %5337)  ; FMin(a,b)
  %5339 = call float @dx.op.binary.f32(i32 36, float %5307, float %5338)  ; FMin(a,b)
  %5340 = fmul fast float %5339, %5131
  %5341 = fmul fast float %5339, %5132
  %5342 = fmul fast float %5339, %5133
  %5343 = fadd fast float %5340, %167
  %5344 = fadd fast float %5341, %168
  %5345 = fadd fast float %5342, %169
  %5346 = fsub fast float %5343, %5191
  %5347 = fsub fast float %5344, %5192
  %5348 = fsub fast float %5345, %5193
  br label %5356

; <label>:5349                                    ; preds = %5291
  %5350 = fmul fast float %5131, 8.096000e+03
  %5351 = fmul fast float %5132, 8.096000e+03
  %5352 = fmul fast float %5133, 8.096000e+03
  %5353 = fadd fast float %5350, %167
  %5354 = fadd fast float %5351, %168
  %5355 = fadd fast float %5352, %169
  br label %5356

; <label>:5356                                    ; preds = %5349, %5292
  %5357 = phi float [ %5131, %5349 ], [ %5346, %5292 ]
  %5358 = phi float [ %5132, %5349 ], [ %5347, %5292 ]
  %5359 = phi float [ %5133, %5349 ], [ %5348, %5292 ]
  %5360 = phi float [ %5353, %5349 ], [ %5343, %5292 ]
  %5361 = phi float [ %5354, %5349 ], [ %5344, %5292 ]
  %5362 = phi float [ %5355, %5349 ], [ %5345, %5292 ]
  %5363 = fcmp fast olt float %5210, 1.000000e+00
  br i1 %5363, label %5364, label %5395, !dx.controlflow.hints !99

; <label>:5364                                    ; preds = %5356
  %5365 = fmul fast float %5359, %5208
  %5366 = fmul fast float %5358, %5209
  %5367 = fsub fast float %5365, %5366
  %5368 = fmul fast float %5357, %5209
  %5369 = fmul fast float %5359, %5207
  %5370 = fsub fast float %5368, %5369
  %5371 = fmul fast float %5358, %5207
  %5372 = fmul fast float %5357, %5208
  %5373 = fsub fast float %5371, %5372
  %5374 = fmul fast float %5367, 2.000000e+00
  %5375 = fmul fast float %5370, 2.000000e+00
  %5376 = fmul fast float %5373, 2.000000e+00
  %5377 = fmul fast float %5374, %5210
  %5378 = fmul fast float %5375, %5210
  %5379 = fmul fast float %5376, %5210
  %5380 = fmul fast float %5376, %5208
  %5381 = fmul fast float %5375, %5209
  %5382 = fmul fast float %5374, %5209
  %5383 = fmul fast float %5376, %5207
  %5384 = fmul fast float %5375, %5207
  %5385 = fmul fast float %5374, %5208
  %5386 = fadd fast float %5380, %5357
  %5387 = fadd fast float %5386, %5377
  %5388 = fsub fast float %5387, %5381
  %5389 = fsub fast float %5358, %5383
  %5390 = fadd fast float %5389, %5378
  %5391 = fadd fast float %5390, %5382
  %5392 = fadd fast float %5379, %5359
  %5393 = fsub fast float %5392, %5385
  %5394 = fadd fast float %5393, %5384
  br label %5395

; <label>:5395                                    ; preds = %5364, %5356
  %5396 = phi float [ %5388, %5364 ], [ %5357, %5356 ]
  %5397 = phi float [ %5391, %5364 ], [ %5358, %5356 ]
  %5398 = phi float [ %5394, %5364 ], [ %5359, %5356 ]
  br i1 %5236, label %5430, label %5399

; <label>:5399                                    ; preds = %5395
  %5400 = fmul fast float %4870, 0x400187C840000000
  %5401 = fadd fast float %5400, 0xC00EFC2120000000
  %5402 = fmul fast float %5401, %4870
  %5403 = fadd fast float %5402, 0x3FE5D16340000000
  %5404 = fmul fast float %5403, %4870
  %5405 = fadd fast float %5404, 1.000000e+00
  %5406 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5407 = fsub fast float %5360, %167
  %5408 = fsub fast float %5361, %168
  %5409 = fsub fast float %5362, %169
  %5410 = fsub fast float %5360, %5191
  %5411 = fsub fast float %5361, %5192
  %5412 = fsub fast float %5362, %5193
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5407, float %5408, float %5409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %5412, float %5410, float %5411, float %5412)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fadd fast float %5414, 0x3EE4F8B580000000
  %5416 = fdiv fast float %5413, %5415
  %5417 = bitcast float %5416 to i32
  %5418 = ashr i32 %5417, 1
  %5419 = add nsw i32 %5418, 532487669
  %5420 = bitcast i32 %5419 to float
  %5421 = fmul fast float %5420, %5406
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = fmul fast float %5422, 0x4009981AE0000000
  %5424 = fsub fast float 0x40111BBD80000000, %5423
  %5425 = fmul fast float %5424, %5422
  %5426 = fadd fast float %5425, 0xC0009F6020000000
  %5427 = fmul fast float %5426, %5422
  %5428 = fadd fast float %5427, 1.000000e+00
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  br label %5433

; <label>:5430                                    ; preds = %5395
  %5431 = icmp ne i32 %5237, -1
  %5432 = zext i1 %5431 to i32
  br label %5433

; <label>:5433                                    ; preds = %5430, %5399
  %5434 = phi float [ %4870, %5430 ], [ %5429, %5399 ]
  %5435 = phi i32 [ %5432, %5430 ], [ 0, %5399 ]
  %5436 = fmul float %5434, 5.000000e+00
  %5437 = fsub float 5.000000e+00, %5436
  %5438 = icmp ne i32 %5435, 0
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5441 = fadd fast float %5440, %5437
  %5442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5441)  ; FMax(a,b)
  %5443 = call float @dx.op.unary.f32(i32 6, float %5396)  ; FAbs(value)
  %5444 = call float @dx.op.unary.f32(i32 6, float %5397)  ; FAbs(value)
  %5445 = fadd fast float %5444, %5443
  %5446 = call float @dx.op.unary.f32(i32 6, float %5398)  ; FAbs(value)
  %5447 = fadd fast float %5445, %5446
  %5448 = fcmp fast oeq float %5447, 0.000000e+00
  %5449 = fdiv fast float 1.000000e+00, %5447
  %5450 = select i1 %5448, float 1.000000e+00, float %5449
  %5451 = fmul fast float %5450, %5396
  %5452 = fmul fast float %5450, %5397
  %5453 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5454 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5455 = fsub fast float 1.000000e+00, %5453
  %5456 = fsub fast float 1.000000e+00, %5454
  %5457 = fcmp fast oge float %5451, 0.000000e+00
  %5458 = fcmp fast oge float %5452, 0.000000e+00
  %5459 = select i1 %5457, float 1.000000e+00, float -1.000000e+00
  %5460 = select i1 %5458, float 1.000000e+00, float -1.000000e+00
  %5461 = fcmp fast ole float %5398, 0.000000e+00
  %5462 = fmul fast float %5459, %5455
  %5463 = fmul fast float %5460, %5456
  %5464 = select i1 %5461, float %5462, float %5451
  %5465 = select i1 %5461, float %5463, float %5452
  %5466 = fmul fast float %5464, 5.000000e-01
  %5467 = fmul fast float %5465, 5.000000e-01
  %5468 = fadd fast float %5466, 5.000000e-01
  %5469 = fadd fast float %5467, 5.000000e-01
  %5470 = uitofp i32 %5234 to float
  %5471 = call float @dx.op.binary.f32(i32 36, float %5442, float 3.000000e+00)  ; FMin(a,b)
  %5472 = fadd fast float %5471, 2.000000e+00
  %5473 = call float @dx.op.unary.f32(i32 21, float %5472)  ; Exp(value)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5475 = fmul fast float %5474, %5473
  %5476 = fmul fast float %5475, 2.000000e+00
  %5477 = fsub fast float 1.000000e+00, %5476
  %5478 = fmul fast float %5468, %5477
  %5479 = fmul fast float %5469, %5477
  %5480 = fadd fast float %5478, %5475
  %5481 = fadd fast float %5479, %5475
  %5482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5480, float %5481, float %5470, float undef, i32 0, i32 0, i32 undef, float %5442)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.ResRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.ResRet.f32 %5482, 2
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5488 = fmul fast float %5487, %5204
  %5489 = call float @dx.op.binary.f32(i32 36, float %4937, float %5488)  ; FMin(a,b)
  %5490 = select i1 %5438, float %5489, float %5488
  %5491 = fmul fast float %5483, %5283
  %5492 = fmul fast float %5491, %5490
  %5493 = fmul fast float %5484, %5283
  %5494 = fmul fast float %5493, %5490
  %5495 = fmul fast float %5485, %5283
  %5496 = fmul fast float %5495, %5490
  %5497 = fadd fast float %5492, %5179
  %5498 = fadd fast float %5494, %5180
  %5499 = fadd fast float %5496, %5181
  %5500 = fsub fast float %5182, %5283
  br label %5285

; <label>:5501                                    ; preds = %5285
  br label %5502

; <label>:5502                                    ; preds = %5501, %5148
  %5503 = phi float [ %5149, %5148 ], [ %5286, %5501 ]
  %5504 = phi float [ %5150, %5148 ], [ %5287, %5501 ]
  %5505 = phi float [ %5151, %5148 ], [ %5288, %5501 ]
  %5506 = phi float [ %5152, %5148 ], [ %5289, %5501 ]
  %5507 = add i32 %5153, 1
  %5508 = icmp ugt i32 %5507, %5145
  br i1 %5508, label %5509, label %5148, !llvm.loop !100

; <label>:5509                                    ; preds = %5502
  br label %5510

; <label>:5510                                    ; preds = %5509, %5130
  %5511 = phi float [ 0.000000e+00, %5130 ], [ %5503, %5509 ]
  %5512 = phi float [ 0.000000e+00, %5130 ], [ %5504, %5509 ]
  %5513 = phi float [ 0.000000e+00, %5130 ], [ %5505, %5509 ]
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = select i1 %229, float 0.000000e+00, float %5511
  %5516 = select i1 %229, float %5514, float %5512
  %5517 = select i1 %229, float 0.000000e+00, float %5513
  %5518 = fcmp fast olt float %5056, 0.000000e+00
  %5519 = call float @dx.op.unary.f32(i32 6, float %5056)  ; FAbs(value)
  %5520 = fmul fast float %5519, %4996
  %5521 = fmul fast float %5519, %4997
  %5522 = fmul fast float %5519, %4998
  %5523 = select i1 %5518, float %4996, float %5520
  %5524 = select i1 %5518, float %4997, float %5521
  %5525 = select i1 %5518, float %4998, float %5522
  %5526 = fsub fast float 1.000000e+00, %5519
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = fmul fast float %5527, %5515
  %5529 = fmul fast float %5527, %5516
  %5530 = fmul fast float %5527, %5517
  %5531 = fadd fast float %5523, %5528
  %5532 = fadd fast float %5524, %5529
  %5533 = fadd fast float %5525, %5530
  br label %5534

; <label>:5534                                    ; preds = %5510, %5039
  %5535 = phi float [ %4996, %5039 ], [ %5531, %5510 ]
  %5536 = phi float [ %4997, %5039 ], [ %5532, %5510 ]
  %5537 = phi float [ %4998, %5039 ], [ %5533, %5510 ]
  %5538 = fmul fast float %5045, %4992
  %5539 = fmul fast float %5045, %4993
  %5540 = fmul fast float %5045, %4994
  %5541 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fcmp fast ogt float %5541, 0x3E7FF19E20000000
  %5543 = fdiv fast float 1.000000e+00, %5541
  %5544 = select i1 %5542, float %5543, float 0.000000e+00
  %5545 = fmul fast float %5544, %4864
  %5546 = fmul fast float %5544, %4865
  %5547 = fmul fast float %5544, %4866
  %5548 = fadd fast float %5545, -1.000000e+00
  %5549 = fadd fast float %5546, -1.000000e+00
  %5550 = fadd fast float %5547, -1.000000e+00
  %5551 = fmul fast float %5548, 5.000000e-01
  %5552 = fmul fast float %5549, 5.000000e-01
  %5553 = fmul fast float %5550, 5.000000e-01
  %5554 = fadd fast float %5551, 1.000000e+00
  %5555 = fadd fast float %5552, 1.000000e+00
  %5556 = fadd fast float %5553, 1.000000e+00
  %5557 = fmul fast float %5535, %5040
  %5558 = fmul fast float %5536, %5041
  %5559 = fmul fast float %5537, %5042
  %5560 = fsub fast float 1.000000e+00, %4875
  %5561 = bitcast float %5560 to i32
  %5562 = sitofp i32 %5561 to float
  %5563 = fmul fast float %5562, 5.000000e+00
  %5564 = fadd fast float %5563, 0xC1EFBF8940000000
  %5565 = fptosi float %5564 to i32
  %5566 = bitcast i32 %5565 to float
  %5567 = fmul fast float %5566, %4260
  %5568 = fmul fast float %4992, %5567
  %5569 = fmul fast float %5568, %5045
  %5570 = fmul fast float %5569, %5554
  %5571 = fmul fast float %4993, %5567
  %5572 = fmul fast float %5571, %5045
  %5573 = fmul fast float %5572, %5555
  %5574 = fmul fast float %4994, %5567
  %5575 = fmul fast float %5574, %5045
  %5576 = fmul fast float %5575, %5556
  %5577 = fmul fast float %5538, %4256
  %5578 = fmul fast float %5539, %4256
  %5579 = fmul fast float %5540, %4256
  %5580 = fadd fast float %5557, %4252
  %5581 = fadd fast float %5580, %5570
  %5582 = fmul fast float %5581, %4256
  %5583 = fadd fast float %5558, %4253
  %5584 = fadd fast float %5583, %5573
  %5585 = fmul fast float %5584, %4256
  %5586 = fadd fast float %5559, %4254
  %5587 = fadd fast float %5586, %5576
  %5588 = fmul fast float %5587, %4256
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 3
  %5591 = fcmp fast oeq float %5590, 0.000000e+00
  br i1 %5591, label %7133, label %5592

; <label>:5592                                    ; preds = %5534
  %5593 = extractvalue %dx.types.CBufRet.f32 %5589, 0
  %5594 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5595 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.CBufRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.CBufRet.f32 %5596, 2
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = select i1 %229, float %5601, float %5597
  %5605 = select i1 %229, float %5603, float %5598
  %5606 = select i1 %229, float %5602, float %5599
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 2
  %5609 = fmul fast float %5608, %111
  %5610 = fmul fast float %5608, %112
  %5611 = fmul fast float %5608, %113
  %5612 = fadd fast float %5609, %167
  %5613 = fadd fast float %5610, %168
  %5614 = fadd fast float %5611, %169
  %5615 = fcmp fast olt float %5590, 0.000000e+00
  br i1 %5615, label %6711, label %5616

; <label>:5616                                    ; preds = %5592
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5632 = fmul fast float %5618, %5612
  %5633 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5619, float %5632)  ; FMad(a,b,c)
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5620, float %5633)  ; FMad(a,b,c)
  %5635 = fadd fast float %5634, %5621
  %5636 = fmul fast float %5623, %5612
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5624, float %5636)  ; FMad(a,b,c)
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5625, float %5637)  ; FMad(a,b,c)
  %5639 = fadd fast float %5638, %5626
  %5640 = fmul fast float %5628, %5612
  %5641 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5629, float %5640)  ; FMad(a,b,c)
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5630, float %5641)  ; FMad(a,b,c)
  %5643 = fadd fast float %5642, %5631
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5648 = fmul fast float %5647, %5635
  %5649 = fmul fast float %5647, %5639
  %5650 = fadd fast float %5648, %5645
  %5651 = fadd fast float %5649, %5646
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5656 = fmul fast float %5655, %5635
  %5657 = fmul fast float %5655, %5639
  %5658 = fadd fast float %5656, %5653
  %5659 = fadd fast float %5657, %5654
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5662 = fsub fast float %5661, %5643
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = fmul fast float %5662, %5663
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5670 = fadd fast float %5669, %5667
  %5671 = fcmp fast ogt float %5670, 0.000000e+00
  br i1 %5671, label %5672, label %5696

; <label>:5672                                    ; preds = %5616
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = fsub fast float %5658, %5674
  %5677 = fsub fast float %5659, %5675
  %5678 = fcmp fast olt float %5676, 0.000000e+00
  %5679 = fcmp fast olt float %5677, 0.000000e+00
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5685 = select i1 %5678, float %5681, float %5683
  %5686 = select i1 %5679, float %5682, float %5684
  %5687 = fmul fast float %5685, %5676
  %5688 = fmul fast float %5686, %5677
  %5689 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5690 = call float @dx.op.unary.f32(i32 6, float %5688)  ; FAbs(value)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5692 = call float @dx.op.binary.f32(i32 35, float %5689, float %5690)  ; FMax(a,b)
  %5693 = fsub fast float %5691, %5692
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5666
  br label %5696

; <label>:5696                                    ; preds = %5672, %5616
  %5697 = phi float [ %5695, %5672 ], [ 0.000000e+00, %5616 ]
  %5698 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5700 = fadd fast float %5699, %5698
  %5701 = fcmp fast ogt float %5700, 0.000000e+00
  %5702 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  br i1 %5701, label %5703, label %5726

; <label>:5703                                    ; preds = %5696
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = fsub fast float %5650, %5705
  %5708 = fsub fast float %5651, %5706
  %5709 = fcmp fast olt float %5707, 0.000000e+00
  %5710 = fcmp fast olt float %5708, 0.000000e+00
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5714 = extractvalue %dx.types.CBufRet.f32 %5711, 2
  %5715 = extractvalue %dx.types.CBufRet.f32 %5711, 3
  %5716 = select i1 %5709, float %5712, float %5714
  %5717 = select i1 %5710, float %5713, float %5715
  %5718 = fmul fast float %5716, %5707
  %5719 = fmul fast float %5717, %5708
  %5720 = call float @dx.op.unary.f32(i32 6, float %5718)  ; FAbs(value)
  %5721 = call float @dx.op.unary.f32(i32 6, float %5719)  ; FAbs(value)
  %5722 = call float @dx.op.binary.f32(i32 35, float %5720, float %5721)  ; FMax(a,b)
  %5723 = fsub fast float %5702, %5722
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = fmul fast float %5724, %5666
  br label %5726

; <label>:5726                                    ; preds = %5703, %5696
  %5727 = phi float [ %5725, %5703 ], [ 0.000000e+00, %5696 ]
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = fsub fast float %5635, %5732
  %5735 = fsub fast float %5639, %5733
  %5736 = fcmp fast olt float %5734, 0.000000e+00
  %5737 = fcmp fast olt float %5735, 0.000000e+00
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5743 = select i1 %5736, float %5739, float %5741
  %5744 = select i1 %5737, float %5740, float %5742
  %5745 = fmul fast float %5743, %5734
  %5746 = fmul fast float %5744, %5735
  %5747 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5748 = call float @dx.op.unary.f32(i32 6, float %5746)  ; FAbs(value)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5747, float %5748)  ; FMax(a,b)
  %5750 = fsub fast float %5702, %5749
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5751, float %5730)  ; FMin(a,b)
  %5753 = fmul fast float %5752, %5666
  %5754 = fsub fast float %5727, %5753
  %5755 = fsub fast float %5697, %5727
  %5756 = fsub fast float %5755, %5753
  %5757 = call float @dx.op.binary.f32(i32 35, float %5727, float %5697)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5753, float %5757)  ; FMax(a,b)
  %5759 = fcmp fast olt float %5758, 1.000000e+00
  br i1 %5759, label %5760, label %6158, !dx.controlflow.hints !102

; <label>:5760                                    ; preds = %5726
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = fcmp fast une float %5762, 0.000000e+00
  br i1 %5763, label %5764, label %6158, !dx.controlflow.hints !103

; <label>:5764                                    ; preds = %5760
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5769 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %5780 = fmul fast float %5766, %5612
  %5781 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5767, float %5780)  ; FMad(a,b,c)
  %5782 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5768, float %5781)  ; FMad(a,b,c)
  %5783 = fadd fast float %5782, %5769
  %5784 = fmul fast float %5771, %5612
  %5785 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5772, float %5784)  ; FMad(a,b,c)
  %5786 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5773, float %5785)  ; FMad(a,b,c)
  %5787 = fadd fast float %5786, %5774
  %5788 = fmul fast float %5776, %5612
  %5789 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5777, float %5788)  ; FMad(a,b,c)
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %5778, float %5789)  ; FMad(a,b,c)
  %5791 = fadd fast float %5790, %5779
  %5792 = fcmp fast oge float %5783, 1.000000e+00
  %5793 = fcmp fast oge float %5787, 1.000000e+00
  %5794 = or i1 %5792, %5793
  %5795 = fcmp fast olt float %5783, 0.000000e+00
  %5796 = fcmp fast olt float %5787, 0.000000e+00
  %5797 = or i1 %5795, %5796
  %5798 = or i1 %5794, %5797
  br i1 %5798, label %6158, label %5799, !dx.controlflow.hints !104

; <label>:5799                                    ; preds = %5764
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.i32 %5804, 2
  %5806 = uitofp i32 %5805 to float
  %5807 = extractvalue %dx.types.CBufRet.i32 %5804, 3
  %5808 = uitofp i32 %5807 to float
  %5809 = extractvalue %dx.types.CBufRet.f32 %5800, 3
  %5810 = fmul fast float %5809, 2.000000e+00
  %5811 = fsub fast float %5783, %5801
  %5812 = fsub fast float %5787, %5802
  %5813 = fmul fast float %5810, %5811
  %5814 = fmul fast float %5810, %5812
  %5815 = fdiv fast float 1.000000e+00, %5595
  %5816 = fmul fast float %5814, %5815
  %5817 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5818 = fmul fast float %5803, %5614
  %5819 = fmul fast float %5818, %5810
  %5820 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5821 = call float @dx.op.unary.f32(i32 6, float %5813)  ; FAbs(value)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5820, float %5817)  ; FMax(a,b)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5821, float %5822)  ; FMax(a,b)
  %5824 = fmul fast float %5823, 2.000000e+00
  %5825 = call float @dx.op.unary.f32(i32 23, float %5824)  ; Log(value)
  %5826 = call float @dx.op.binary.f32(i32 35, float %5825, float %5806)  ; FMax(a,b)
  %5827 = call float @dx.op.unary.f32(i32 22, float %5826)  ; Frc(value)
  %5828 = fadd fast float %5827, 0xBFEA666660000000
  %5829 = fmul fast float %5828, 8.000000e+00
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = call float @dx.op.unary.f32(i32 27, float %5826)  ; Round_ni(value)
  %5832 = fadd fast float %5831, %5830
  %5833 = call float @dx.op.binary.f32(i32 36, float %5832, float %5808)  ; FMin(a,b)
  %5834 = call float @dx.op.unary.f32(i32 27, float %5833)  ; Round_ni(value)
  %5835 = fsub fast float -0.000000e+00, %5834
  %5836 = call float @dx.op.unary.f32(i32 21, float %5835)  ; Exp(value)
  %5837 = fmul fast float %5836, %5810
  %5838 = fmul fast float %5837, %5783
  %5839 = fmul fast float %5837, %5787
  %5840 = fmul fast float %5838, 2.500000e-01
  %5841 = fmul fast float %5839, 2.500000e-01
  %5842 = fadd fast float %5840, 5.000000e-01
  %5843 = fadd fast float %5841, 5.000000e-01
  %5844 = fsub fast float %5808, %5806
  %5845 = fptoui float %5844 to i32
  %5846 = add i32 %5845, 320
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5846)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = fcmp fast une float %5833, %5808
  %5851 = fsub fast float %5783, %5848
  %5852 = fsub fast float %5787, %5849
  %5853 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %5854 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5855 = fmul fast float %5853, %5837
  %5856 = fmul fast float %5854, %5837
  %5857 = fcmp fast olt float %5855, 1.000000e+00
  %5858 = fcmp fast olt float %5856, 1.000000e+00
  %5859 = and i1 %5857, %5858
  %5860 = or i1 %5850, %5859
  br i1 %5860, label %5861, label %6158, !dx.controlflow.hints !105

; <label>:5861                                    ; preds = %5799
  %5862 = fmul fast float %5839, 5.000000e-01
  %5863 = fmul fast float %5838, 5.000000e-01
  %5864 = fadd fast float %5862, 5.000000e-01
  %5865 = fadd fast float %5863, 5.000000e-01
  %5866 = sitofp i32 %5805 to float
  %5867 = fsub fast float %5833, %5866
  %5868 = call float @dx.op.unary.f32(i32 27, float %5867)  ; Round_ni(value)
  %5869 = call float @dx.op.unary.f32(i32 22, float %5833)  ; Frc(value)
  %5870 = call float @dx.op.unary.f32(i32 22, float %5865)  ; Frc(value)
  %5871 = call float @dx.op.unary.f32(i32 22, float %5864)  ; Frc(value)
  %5872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5870, float %5871, float %5868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5873 = extractvalue %dx.types.ResRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.ResRet.f32 %5872, 1
  %5875 = extractvalue %dx.types.ResRet.f32 %5872, 2
  %5876 = extractvalue %dx.types.ResRet.f32 %5872, 3
  %5877 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5877, label %5878, label %5899, !dx.controlflow.hints !106

; <label>:5878                                    ; preds = %5861
  %5879 = fadd fast float %5868, 1.000000e+00
  %5880 = call float @dx.op.unary.f32(i32 22, float %5842)  ; Frc(value)
  %5881 = call float @dx.op.unary.f32(i32 22, float %5843)  ; Frc(value)
  %5882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5880, float %5881, float %5879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.ResRet.f32 %5882, 3
  %5887 = fsub fast float %5883, %5873
  %5888 = fsub fast float %5884, %5874
  %5889 = fsub fast float %5885, %5875
  %5890 = fsub fast float %5886, %5876
  %5891 = fmul fast float %5887, %5869
  %5892 = fmul fast float %5888, %5869
  %5893 = fmul fast float %5889, %5869
  %5894 = fmul fast float %5890, %5869
  %5895 = fadd fast float %5891, %5873
  %5896 = fadd fast float %5892, %5874
  %5897 = fadd fast float %5893, %5875
  %5898 = fadd fast float %5894, %5876
  br label %5899

; <label>:5899                                    ; preds = %5878, %5861
  %5900 = phi float [ %5895, %5878 ], [ %5873, %5861 ]
  %5901 = phi float [ %5896, %5878 ], [ %5874, %5861 ]
  %5902 = phi float [ %5897, %5878 ], [ %5875, %5861 ]
  %5903 = phi float [ %5898, %5878 ], [ %5876, %5861 ]
  %5904 = fadd fast float %5900, -5.000000e-01
  %5905 = fadd fast float %5902, -5.000000e-01
  %5906 = fmul fast float %5904, 0xBFD5555560000000
  %5907 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5905, float %5906)  ; FMad(a,b,c)
  %5908 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5901, float 0.000000e+00)  ; FMad(a,b,c)
  %5909 = fadd fast float %5908, %5903
  %5910 = fmul fast float %5904, -7.500000e-01
  %5911 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5905, float %5910)  ; FMad(a,b,c)
  %5912 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5901, float 0.000000e+00)  ; FMad(a,b,c)
  %5913 = fadd fast float %5912, %5903
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5920 = extractvalue %dx.types.CBufRet.f32 %5916, 3
  %5921 = fsub fast float %5917, %5907
  %5922 = fsub fast float %5918, %5909
  %5923 = fsub fast float %5919, %5911
  %5924 = fsub fast float %5920, %5913
  %5925 = fmul fast float %5921, %5915
  %5926 = fmul fast float %5922, %5915
  %5927 = fmul fast float %5923, %5915
  %5928 = fmul fast float %5924, %5915
  %5929 = fadd fast float %5925, %5907
  %5930 = fadd fast float %5926, %5909
  %5931 = fadd fast float %5927, %5911
  %5932 = fadd fast float %5928, %5913
  %5933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.i32 %5933, 0
  %5935 = and i32 %5934, 536870911
  %5936 = uitofp i32 %5935 to float
  %5937 = fmul fast float %5936, %5783
  %5938 = fmul fast float %5936, %5787
  %5939 = fptoui float %5937 to i32
  %5940 = fptoui float %5938 to i32
  %5941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5942 = extractvalue %dx.types.ResRet.i32 %5941, 0
  %5943 = and i32 %5942, 31
  %5944 = lshr i32 %5939, %5943
  %5945 = lshr i32 %5940, %5943
  %5946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.i32 %5946, 0
  %5948 = and i32 %5947, 31
  %5949 = shl i32 1, %5948
  %5950 = call i32 @dx.op.binary.i32(i32 40, i32 %5949, i32 4)  ; UMin(a,b)
  %5951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5952 = extractvalue %dx.types.ResRet.i32 %5951, 0
  %5953 = extractvalue %dx.types.ResRet.i32 %5951, 1
  %5954 = icmp eq i32 %5950, 0
  br i1 %5954, label %5996, label %5955

; <label>:5955                                    ; preds = %5899
  br label %5956

; <label>:5956                                    ; preds = %5984, %5955
  %5957 = phi i32 [ %5987, %5984 ], [ 0, %5955 ]
  %5958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.i32 %5958, 0
  %5960 = lshr i32 %5959, 16
  %5961 = and i32 %5960, 31
  %5962 = shl i32 %5945, %5961
  %5963 = add i32 %5962, %5944
  %5964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5965 = extractvalue %dx.types.ResRet.i32 %5964, 0
  %5966 = and i32 %5965, 31
  %5967 = shl i32 %5963, %5966
  %5968 = add i32 %5967, %5957
  %5969 = shl i32 %5968, 2
  %5970 = add i32 %5969, 32
  %5971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5970, i32 undef)  ; BufferLoad(srv,index,wot)
  %5972 = extractvalue %dx.types.ResRet.i32 %5971, 0
  %5973 = icmp slt i32 %5972, 0
  %5974 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5957
  %5975 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5957
  %5976 = bitcast float* %5974 to i32*
  %5977 = bitcast float* %5975 to i32*
  br i1 %5973, label %5978, label %5984

; <label>:5978                                    ; preds = %5956
  %5979 = and i32 %5972, 1073741823
  %5980 = add nuw nsw i32 %5979, 20
  %5981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5980, i32 undef)  ; BufferLoad(srv,index,wot)
  %5982 = extractvalue %dx.types.ResRet.i32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.i32 %5981, 1
  br label %5984

; <label>:5984                                    ; preds = %5978, %5956
  %5985 = phi i32 [ %5982, %5978 ], [ %5952, %5956 ]
  %5986 = phi i32 [ %5983, %5978 ], [ %5953, %5956 ]
  store i32 %5985, i32* %5976, align 4
  store i32 %5986, i32* %5977, align 4
  %5987 = add nuw i32 %5957, 1
  %5988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.i32 %5988, 2
  %5990 = icmp eq i32 %5989, 0
  %5991 = icmp ugt i32 %5972, -1073741825
  %5992 = and i1 %5991, %5990
  %5993 = icmp ult i32 %5987, %5950
  %5994 = and i1 %5992, %5993
  br i1 %5994, label %5956, label %5995

; <label>:5995                                    ; preds = %5984
  br label %5996

; <label>:5996                                    ; preds = %5995, %5899
  %5997 = phi i32 [ 0, %5899 ], [ %5987, %5995 ]
  %5998 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5999 = fptoui float %5998 to i32
  %6000 = icmp eq i32 %5999, 0
  br i1 %6000, label %6052, label %6001

; <label>:6001                                    ; preds = %5996
  br label %6002

; <label>:6002                                    ; preds = %6047, %6001
  %6003 = phi i32 [ %6048, %6047 ], [ %5997, %6001 ]
  %6004 = phi i32 [ %6049, %6047 ], [ 0, %6001 ]
  %6005 = lshr i32 %6004, 2
  %6006 = and i32 %6004, 3
  %6007 = add nuw nsw i32 %6005, 83
  %6008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6007)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.i32 %6008, 0
  %6010 = extractvalue %dx.types.CBufRet.i32 %6008, 1
  %6011 = extractvalue %dx.types.CBufRet.i32 %6008, 2
  %6012 = extractvalue %dx.types.CBufRet.i32 %6008, 3
  %6013 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6009, i32* %6013, align 4
  %6014 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6010, i32* %6014, align 4
  %6015 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6011, i32* %6015, align 4
  %6016 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6012, i32* %6016, align 4
  %6017 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6006
  %6018 = load i32, i32* %6017, align 4, !tbaa !107, !noalias !111
  %6019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6020 = extractvalue %dx.types.ResRet.i32 %6019, 0
  %6021 = lshr i32 %6020, 16
  %6022 = and i32 %6021, 31
  %6023 = shl i32 %5945, %6022
  %6024 = add i32 %6023, %5944
  %6025 = shl i32 %6024, 2
  %6026 = add i32 %6025, %6018
  %6027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6026, i32 undef)  ; BufferLoad(srv,index,wot)
  %6028 = extractvalue %dx.types.ResRet.i32 %6027, 0
  %6029 = icmp eq i32 %6028, 0
  br i1 %6029, label %6047, label %6030

; <label>:6030                                    ; preds = %6002
  %6031 = icmp slt i32 %6028, 0
  %6032 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6003
  %6033 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6003
  %6034 = bitcast float* %6032 to i32*
  %6035 = bitcast float* %6033 to i32*
  br i1 %6031, label %6036, label %6043

; <label>:6036                                    ; preds = %6030
  %6037 = and i32 %6028, 1073741823
  %6038 = add i32 %6018, 20
  %6039 = add i32 %6038, %6037
  %6040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6039, i32 undef)  ; BufferLoad(srv,index,wot)
  %6041 = extractvalue %dx.types.ResRet.i32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.i32 %6040, 1
  br label %6043

; <label>:6043                                    ; preds = %6036, %6030
  %6044 = phi i32 [ %6041, %6036 ], [ %5952, %6030 ]
  %6045 = phi i32 [ %6042, %6036 ], [ %5953, %6030 ]
  store i32 %6044, i32* %6034, align 4
  store i32 %6045, i32* %6035, align 4
  %6046 = add i32 %6003, 1
  br label %6047

; <label>:6047                                    ; preds = %6043, %6002
  %6048 = phi i32 [ %6003, %6002 ], [ %6046, %6043 ]
  %6049 = add nuw i32 %6004, 1
  %6050 = icmp eq i32 %6049, %5999
  br i1 %6050, label %6051, label %6002

; <label>:6051                                    ; preds = %6047
  br label %6052

; <label>:6052                                    ; preds = %6051, %5996
  %6053 = phi i32 [ %5997, %5996 ], [ %6048, %6051 ]
  %6054 = icmp eq i32 %6053, 1
  %6055 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6056 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6054, label %6057, label %6060

; <label>:6057                                    ; preds = %6052
  %6058 = load float, float* %6055, align 4
  %6059 = load float, float* %6056, align 4
  br label %6087

; <label>:6060                                    ; preds = %6052
  %6061 = load float, float* %6055, align 4
  %6062 = load float, float* %6056, align 4
  %6063 = fdiv fast float 1.000000e+00, %6062
  %6064 = fsub fast float %6061, %6063
  %6065 = icmp ugt i32 %6053, 1
  br i1 %6065, label %6066, label %6082

; <label>:6066                                    ; preds = %6060
  br label %6067

; <label>:6067                                    ; preds = %6067, %6066
  %6068 = phi float [ %6077, %6067 ], [ %6064, %6066 ]
  %6069 = phi float [ %6078, %6067 ], [ %6061, %6066 ]
  %6070 = phi i32 [ %6079, %6067 ], [ 1, %6066 ]
  %6071 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6070
  %6072 = load float, float* %6071, align 4
  %6073 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6070
  %6074 = load float, float* %6073, align 4
  %6075 = fdiv fast float 1.000000e+00, %6074
  %6076 = fsub fast float %6072, %6075
  %6077 = call float @dx.op.binary.f32(i32 36, float %6068, float %6076)  ; FMin(a,b)
  %6078 = call float @dx.op.binary.f32(i32 35, float %6069, float %6072)  ; FMax(a,b)
  %6079 = add nuw i32 %6070, 1
  %6080 = icmp eq i32 %6079, %6053
  br i1 %6080, label %6081, label %6067

; <label>:6081                                    ; preds = %6067
  br label %6082

; <label>:6082                                    ; preds = %6081, %6060
  %6083 = phi float [ %6064, %6060 ], [ %6077, %6081 ]
  %6084 = phi float [ %6061, %6060 ], [ %6078, %6081 ]
  %6085 = fsub fast float %6084, %6083
  %6086 = fdiv fast float 1.000000e+00, %6085
  br label %6087

; <label>:6087                                    ; preds = %6082, %6057
  %6088 = phi float [ %6058, %6057 ], [ %6084, %6082 ]
  %6089 = phi float [ %6059, %6057 ], [ %6086, %6082 ]
  %6090 = fadd fast float %5791, %6088
  %6091 = fmul fast float %6090, %6089
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = fmul fast float %6092, 2.000000e+00
  %6094 = fsub fast float 1.000000e+00, %6093
  %6095 = fmul fast float %5929, %5929
  %6096 = fsub fast float %5930, %6095
  %6097 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6096)  ; FMax(a,b)
  %6098 = fdiv fast float 1.000000e+00, %6097
  %6099 = fmul fast float %5930, %5929
  %6100 = fsub fast float %5931, %6099
  %6101 = fsub fast float %6094, %5929
  %6102 = fmul fast float %6094, %6094
  %6103 = fsub fast float %6102, %5930
  %6104 = fmul fast float %6098, %6100
  %6105 = fmul fast float %6104, %6101
  %6106 = fsub fast float %6103, %6105
  %6107 = fmul fast float %5930, %5930
  %6108 = fsub fast float %5932, %6107
  %6109 = fmul fast float %6100, %6100
  %6110 = fmul fast float %6109, %6098
  %6111 = fsub fast float %6108, %6110
  %6112 = fdiv fast float %6106, %6111
  %6113 = fmul fast float %6112, %6100
  %6114 = fsub fast float %6101, %6113
  %6115 = fmul fast float %6114, %6098
  %6116 = fmul fast float %6115, %5929
  %6117 = fsub fast float 1.000000e+00, %6116
  %6118 = fmul fast float %6112, %5930
  %6119 = fsub fast float %6117, %6118
  %6120 = fmul fast float %6115, %6115
  %6121 = fmul fast float %6112, 4.000000e+00
  %6122 = fmul fast float %6121, %6119
  %6123 = fsub fast float %6120, %6122
  %6124 = call float @dx.op.unary.f32(i32 24, float %6123)  ; Sqrt(value)
  %6125 = fcmp fast oge float %6115, 0.000000e+00
  %6126 = fsub fast float -0.000000e+00, %6124
  %6127 = select i1 %6125, float %6126, float %6124
  %6128 = fsub fast float %6127, %6115
  %6129 = fdiv fast float %6128, %6112
  %6130 = fdiv fast float %6119, %6128
  %6131 = fmul fast float %6129, 5.000000e-01
  %6132 = fmul fast float %6130, 2.000000e+00
  %6133 = select i1 %6125, float %6131, float %6132
  %6134 = select i1 %6125, float %6132, float %6131
  %6135 = call float @dx.op.binary.f32(i32 35, float %6133, float %6134)  ; FMax(a,b)
  %6136 = call float @dx.op.binary.f32(i32 36, float %6133, float %6134)  ; FMin(a,b)
  %6137 = fcmp fast ogt float %6094, %6135
  %6138 = fsub fast float %6094, %6136
  %6139 = fsub fast float %6094, %6135
  %6140 = fsub fast float %6135, %6136
  %6141 = select i1 %6137, float %6139, float %6140
  %6142 = fmul float %6138, %6141
  %6143 = select i1 %6137, float %6136, float %6094
  %6144 = fcmp fast ogt float %6094, %6136
  %6145 = fmul fast float %6143, %6135
  %6146 = fadd fast float %6143, %6135
  %6147 = fmul fast float %6146, %5929
  %6148 = fadd fast float %6145, %5930
  %6149 = fsub fast float %6148, %6147
  %6150 = fdiv fast float %6149, %6142
  %6151 = select i1 %6144, float %6150, float 0.000000e+00
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = select i1 %6137, float %6152, float %6151
  %6154 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6155 = extractvalue %dx.types.CBufRet.f32 %5914, 3
  %6156 = fmul fast float %6155, %6154
  %6157 = fsub fast float 1.000000e+00, %6156
  br label %6158

; <label>:6158                                    ; preds = %6087, %5799, %5764, %5760, %5726
  %6159 = phi float [ 1.000000e+00, %5726 ], [ %6157, %6087 ], [ 1.000000e+00, %5764 ], [ 1.000000e+00, %5799 ], [ 1.000000e+00, %5760 ]
  %6160 = fcmp fast ogt float %5756, 0.000000e+00
  br i1 %6160, label %6161, label %6323, !dx.controlflow.hints !120

; <label>:6161                                    ; preds = %6158
  %6162 = fadd fast float %5669, %5643
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6165 = extractvalue %dx.types.CBufRet.f32 %6163, 3
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6168 = call float @dx.op.binary.f32(i32 35, float %6162, float 0.000000e+00)  ; FMax(a,b)
  %6169 = fadd fast float %6168, 0x3F10000000000000
  %6170 = fcmp fast oeq float %6167, 0.000000e+00
  br i1 %6170, label %6171, label %6238

; <label>:6171                                    ; preds = %6161
  %6172 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6173 = extractvalue %dx.types.CBufRet.f32 %6163, 0
  %6174 = fmul fast float %6173, %5658
  %6175 = fmul fast float %6172, %5659
  %6176 = fadd fast float %6174, 5.000000e-01
  %6177 = call float @dx.op.unary.f32(i32 27, float %6176)  ; Round_ni(value)
  %6178 = fadd fast float %6175, 5.000000e-01
  %6179 = call float @dx.op.unary.f32(i32 27, float %6178)  ; Round_ni(value)
  %6180 = fsub fast float %6176, %6177
  %6181 = fsub fast float %6178, %6179
  %6182 = fadd fast float %6177, -5.000000e-01
  %6183 = fadd fast float %6179, -5.000000e-01
  %6184 = fmul fast float %6180, 2.000000e+00
  %6185 = fsub fast float 3.000000e+00, %6184
  %6186 = fadd fast float %6184, 1.000000e+00
  %6187 = fsub fast float 2.000000e+00, %6180
  %6188 = bitcast float %6185 to i32
  %6189 = sub nsw i32 2129859010, %6188
  %6190 = bitcast i32 %6189 to float
  %6191 = fmul fast float %6190, %6187
  %6192 = fadd fast float %6191, -1.000000e+00
  %6193 = bitcast float %6186 to i32
  %6194 = sub nsw i32 2129859010, %6193
  %6195 = bitcast i32 %6194 to float
  %6196 = fmul fast float %6195, %6180
  %6197 = fadd fast float %6196, 1.000000e+00
  %6198 = fmul fast float %6181, 2.000000e+00
  %6199 = fsub fast float 3.000000e+00, %6198
  %6200 = fadd fast float %6198, 1.000000e+00
  %6201 = fsub fast float 2.000000e+00, %6181
  %6202 = bitcast float %6199 to i32
  %6203 = sub nsw i32 2129859010, %6202
  %6204 = bitcast i32 %6203 to float
  %6205 = fmul fast float %6204, %6201
  %6206 = fadd fast float %6205, -1.000000e+00
  %6207 = bitcast float %6200 to i32
  %6208 = sub nsw i32 2129859010, %6207
  %6209 = bitcast i32 %6208 to float
  %6210 = fmul fast float %6209, %6181
  %6211 = fadd fast float %6210, 1.000000e+00
  %6212 = fadd fast float %6192, %6182
  %6213 = fmul fast float %6212, %6164
  %6214 = fadd fast float %6206, %6183
  %6215 = fmul fast float %6214, %6165
  %6216 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6213, float %6215, float undef, float undef, i32 0, i32 0, i32 undef, float %6169)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6217 = extractvalue %dx.types.ResRet.f32 %6216, 0
  %6218 = fmul fast float %6217, %6185
  %6219 = fadd fast float %6197, %6182
  %6220 = fmul fast float %6219, %6164
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6220, float %6215, float undef, float undef, i32 0, i32 0, i32 undef, float %6169)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = fmul fast float %6222, %6186
  %6224 = fadd fast float %6211, %6183
  %6225 = fmul fast float %6224, %6165
  %6226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6213, float %6225, float undef, float undef, i32 0, i32 0, i32 undef, float %6169)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = fmul fast float %6227, %6185
  %6229 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6220, float %6225, float undef, float undef, i32 0, i32 0, i32 undef, float %6169)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = fmul fast float %6230, %6186
  %6232 = fadd fast float %6231, %6228
  %6233 = fmul fast float %6232, %6200
  %6234 = fadd fast float %6223, %6218
  %6235 = fmul fast float %6234, %6199
  %6236 = fadd fast float %6235, %6233
  %6237 = fmul fast float %6236, 6.250000e-02
  br label %6323

; <label>:6238                                    ; preds = %6161
  %6239 = fmul fast float %240, 0x401921FB60000000
  %6240 = call float @dx.op.unary.f32(i32 13, float %6239)  ; Sin(value)
  %6241 = call float @dx.op.unary.f32(i32 12, float %6239)  ; Cos(value)
  %6242 = fsub fast float -0.000000e+00, %6240
  br label %6243

; <label>:6243                                    ; preds = %6292, %6238
  %6244 = phi float [ 0.000000e+00, %6238 ], [ %6287, %6292 ]
  %6245 = phi float [ 0.000000e+00, %6238 ], [ %6289, %6292 ]
  %6246 = phi i32 [ 0, %6238 ], [ %6293, %6292 ]
  %6247 = mul i32 %6246, 2
  %6248 = add i32 0, %6247
  %6249 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6248
  %6250 = load float, float* %6249, align 4
  %6251 = mul i32 %6246, 2
  %6252 = add i32 1, %6251
  %6253 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6252
  %6254 = load float, float* %6253, align 4
  %6255 = fmul fast float %6250, %6241
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6242, float %6255)  ; FMad(a,b,c)
  %6257 = fmul fast float %6250, %6240
  %6258 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6241, float %6257)  ; FMad(a,b,c)
  %6259 = fmul fast float %6256, %6167
  %6260 = fmul fast float %6258, %6167
  %6261 = fadd fast float %6259, %5658
  %6262 = fadd fast float %6260, %5659
  %6263 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6261, float %6262, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.ResRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.ResRet.f32 %6263, 3
  %6268 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6264, float* %6268, align 4
  %6269 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6265, float* %6269, align 4
  %6270 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6266, float* %6270, align 4
  %6271 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6267, float* %6271, align 4
  %6272 = fsub fast float %6264, %6169
  %6273 = fcmp fast olt float %6272, 0.000000e+00
  %6274 = select i1 %6273, float 0.000000e+00, float 1.000000e+00
  %6275 = fadd fast float %6274, %6244
  %6276 = fmul fast float %6274, %6272
  %6277 = fadd fast float %6276, %6245
  br label %6278

; <label>:6278                                    ; preds = %6278, %6243
  %6279 = phi i32 [ 1, %6243 ], [ %6290, %6278 ]
  %6280 = phi float [ %6277, %6243 ], [ %6289, %6278 ]
  %6281 = phi float [ %6275, %6243 ], [ %6287, %6278 ]
  %6282 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6279
  %6283 = load float, float* %6282, align 4, !tbaa !121, !noalias !111
  %6284 = fsub fast float %6283, %6169
  %6285 = fcmp fast olt float %6284, 0.000000e+00
  %6286 = select i1 %6285, float 0.000000e+00, float 1.000000e+00
  %6287 = fadd fast float %6286, %6281
  %6288 = fmul fast float %6286, %6284
  %6289 = fadd fast float %6288, %6280
  %6290 = add nuw nsw i32 %6279, 1
  %6291 = icmp eq i32 %6290, 4
  br i1 %6291, label %6292, label %6278, !llvm.loop !123

; <label>:6292                                    ; preds = %6278
  %6293 = add nuw nsw i32 %6246, 1
  %6294 = icmp eq i32 %6293, 8
  br i1 %6294, label %6295, label %6243, !llvm.loop !124

; <label>:6295                                    ; preds = %6292
  %6296 = fdiv fast float 1.000000e+00, %6287
  %6297 = fmul fast float %6296, %6289
  %6298 = fdiv fast float 1.000000e+00, %6169
  %6299 = fmul fast float %6297, %6298
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = call float @dx.op.binary.f32(i32 35, float %6300, float 0.000000e+00)  ; FMax(a,b)
  %6302 = fmul fast float %6287, 3.125000e-02
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = fmul fast float %6303, 2.000000e+00
  %6305 = fadd fast float %6304, -1.000000e+00
  %6306 = fcmp fast ogt float %6305, 0.000000e+00
  %6307 = fcmp fast olt float %6305, 0.000000e+00
  %6308 = zext i1 %6306 to i32
  %6309 = zext i1 %6307 to i32
  %6310 = sub nsw i32 %6308, %6309
  %6311 = sitofp i32 %6310 to float
  %6312 = fmul fast float %6311, %6305
  %6313 = fsub fast float 1.000000e+00, %6312
  %6314 = fmul fast float %6313, %6313
  %6315 = fmul fast float %6314, %6313
  %6316 = fsub fast float %6313, %6315
  %6317 = fmul fast float %6316, %6301
  %6318 = fsub fast float 1.000000e+00, %6315
  %6319 = fsub fast float %6318, %6317
  %6320 = fmul fast float %6311, 5.000000e-01
  %6321 = fmul fast float %6320, %6319
  %6322 = fsub fast float 5.000000e-01, %6321
  br label %6323

; <label>:6323                                    ; preds = %6295, %6171, %6158
  %6324 = phi float [ 1.000000e+00, %6158 ], [ %6237, %6171 ], [ %6322, %6295 ]
  %6325 = fcmp fast ogt float %5754, 0.000000e+00
  br i1 %6325, label %6326, label %6490, !dx.controlflow.hints !125

; <label>:6326                                    ; preds = %6323
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 1
  %6329 = fadd fast float %6328, %5643
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6335 = call float @dx.op.binary.f32(i32 35, float %6329, float 0.000000e+00)  ; FMax(a,b)
  %6336 = fadd fast float %6335, 0x3F10000000000000
  %6337 = fcmp fast oeq float %6334, 0.000000e+00
  br i1 %6337, label %6338, label %6405

; <label>:6338                                    ; preds = %6326
  %6339 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6340 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6341 = fmul fast float %6340, %5650
  %6342 = fmul fast float %6339, %5651
  %6343 = fadd fast float %6341, 5.000000e-01
  %6344 = call float @dx.op.unary.f32(i32 27, float %6343)  ; Round_ni(value)
  %6345 = fadd fast float %6342, 5.000000e-01
  %6346 = call float @dx.op.unary.f32(i32 27, float %6345)  ; Round_ni(value)
  %6347 = fsub fast float %6343, %6344
  %6348 = fsub fast float %6345, %6346
  %6349 = fadd fast float %6344, -5.000000e-01
  %6350 = fadd fast float %6346, -5.000000e-01
  %6351 = fmul fast float %6347, 2.000000e+00
  %6352 = fsub fast float 3.000000e+00, %6351
  %6353 = fadd fast float %6351, 1.000000e+00
  %6354 = fsub fast float 2.000000e+00, %6347
  %6355 = bitcast float %6352 to i32
  %6356 = sub nsw i32 2129859010, %6355
  %6357 = bitcast i32 %6356 to float
  %6358 = fmul fast float %6357, %6354
  %6359 = fadd fast float %6358, -1.000000e+00
  %6360 = bitcast float %6353 to i32
  %6361 = sub nsw i32 2129859010, %6360
  %6362 = bitcast i32 %6361 to float
  %6363 = fmul fast float %6362, %6347
  %6364 = fadd fast float %6363, 1.000000e+00
  %6365 = fmul fast float %6348, 2.000000e+00
  %6366 = fsub fast float 3.000000e+00, %6365
  %6367 = fadd fast float %6365, 1.000000e+00
  %6368 = fsub fast float 2.000000e+00, %6348
  %6369 = bitcast float %6366 to i32
  %6370 = sub nsw i32 2129859010, %6369
  %6371 = bitcast i32 %6370 to float
  %6372 = fmul fast float %6371, %6368
  %6373 = fadd fast float %6372, -1.000000e+00
  %6374 = bitcast float %6367 to i32
  %6375 = sub nsw i32 2129859010, %6374
  %6376 = bitcast i32 %6375 to float
  %6377 = fmul fast float %6376, %6348
  %6378 = fadd fast float %6377, 1.000000e+00
  %6379 = fadd fast float %6359, %6349
  %6380 = fmul fast float %6379, %6331
  %6381 = fadd fast float %6373, %6350
  %6382 = fmul fast float %6381, %6332
  %6383 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6380, float %6382, float undef, float undef, i32 0, i32 0, i32 undef, float %6336)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6384 = extractvalue %dx.types.ResRet.f32 %6383, 0
  %6385 = fmul fast float %6384, %6352
  %6386 = fadd fast float %6364, %6349
  %6387 = fmul fast float %6386, %6331
  %6388 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6387, float %6382, float undef, float undef, i32 0, i32 0, i32 undef, float %6336)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6389 = extractvalue %dx.types.ResRet.f32 %6388, 0
  %6390 = fmul fast float %6389, %6353
  %6391 = fadd fast float %6378, %6350
  %6392 = fmul fast float %6391, %6332
  %6393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6380, float %6392, float undef, float undef, i32 0, i32 0, i32 undef, float %6336)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6394 = extractvalue %dx.types.ResRet.f32 %6393, 0
  %6395 = fmul fast float %6394, %6352
  %6396 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6387, float %6392, float undef, float undef, i32 0, i32 0, i32 undef, float %6336)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 0
  %6398 = fmul fast float %6397, %6353
  %6399 = fadd fast float %6398, %6395
  %6400 = fmul fast float %6399, %6367
  %6401 = fadd fast float %6390, %6385
  %6402 = fmul fast float %6401, %6366
  %6403 = fadd fast float %6402, %6400
  %6404 = fmul fast float %6403, 6.250000e-02
  br label %6490

; <label>:6405                                    ; preds = %6326
  %6406 = fmul fast float %240, 0x401921FB60000000
  %6407 = call float @dx.op.unary.f32(i32 13, float %6406)  ; Sin(value)
  %6408 = call float @dx.op.unary.f32(i32 12, float %6406)  ; Cos(value)
  %6409 = fsub fast float -0.000000e+00, %6407
  br label %6410

; <label>:6410                                    ; preds = %6459, %6405
  %6411 = phi float [ 0.000000e+00, %6405 ], [ %6454, %6459 ]
  %6412 = phi float [ 0.000000e+00, %6405 ], [ %6456, %6459 ]
  %6413 = phi i32 [ 0, %6405 ], [ %6460, %6459 ]
  %6414 = mul i32 %6413, 2
  %6415 = add i32 0, %6414
  %6416 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6415
  %6417 = load float, float* %6416, align 4
  %6418 = mul i32 %6413, 2
  %6419 = add i32 1, %6418
  %6420 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6419
  %6421 = load float, float* %6420, align 4
  %6422 = fmul fast float %6417, %6408
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6421, float %6409, float %6422)  ; FMad(a,b,c)
  %6424 = fmul fast float %6417, %6407
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6421, float %6408, float %6424)  ; FMad(a,b,c)
  %6426 = fmul fast float %6423, %6334
  %6427 = fmul fast float %6425, %6334
  %6428 = fadd fast float %6426, %5650
  %6429 = fadd fast float %6427, %5651
  %6430 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6428, float %6429, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.ResRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.ResRet.f32 %6430, 2
  %6434 = extractvalue %dx.types.ResRet.f32 %6430, 3
  %6435 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6431, float* %6435, align 4
  %6436 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6432, float* %6436, align 4
  %6437 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6433, float* %6437, align 4
  %6438 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6434, float* %6438, align 4
  %6439 = fsub fast float %6431, %6336
  %6440 = fcmp fast olt float %6439, 0.000000e+00
  %6441 = select i1 %6440, float 0.000000e+00, float 1.000000e+00
  %6442 = fadd fast float %6441, %6411
  %6443 = fmul fast float %6441, %6439
  %6444 = fadd fast float %6443, %6412
  br label %6445

; <label>:6445                                    ; preds = %6445, %6410
  %6446 = phi i32 [ 1, %6410 ], [ %6457, %6445 ]
  %6447 = phi float [ %6444, %6410 ], [ %6456, %6445 ]
  %6448 = phi float [ %6442, %6410 ], [ %6454, %6445 ]
  %6449 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6446
  %6450 = load float, float* %6449, align 4, !tbaa !121, !noalias !111
  %6451 = fsub fast float %6450, %6336
  %6452 = fcmp fast olt float %6451, 0.000000e+00
  %6453 = select i1 %6452, float 0.000000e+00, float 1.000000e+00
  %6454 = fadd fast float %6453, %6448
  %6455 = fmul fast float %6453, %6451
  %6456 = fadd fast float %6455, %6447
  %6457 = add nuw nsw i32 %6446, 1
  %6458 = icmp eq i32 %6457, 4
  br i1 %6458, label %6459, label %6445, !llvm.loop !123

; <label>:6459                                    ; preds = %6445
  %6460 = add nuw nsw i32 %6413, 1
  %6461 = icmp eq i32 %6460, 8
  br i1 %6461, label %6462, label %6410, !llvm.loop !124

; <label>:6462                                    ; preds = %6459
  %6463 = fdiv fast float 1.000000e+00, %6454
  %6464 = fmul fast float %6463, %6456
  %6465 = fdiv fast float 1.000000e+00, %6336
  %6466 = fmul fast float %6464, %6465
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = call float @dx.op.binary.f32(i32 35, float %6467, float 0.000000e+00)  ; FMax(a,b)
  %6469 = fmul fast float %6454, 3.125000e-02
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = fmul fast float %6470, 2.000000e+00
  %6472 = fadd fast float %6471, -1.000000e+00
  %6473 = fcmp fast ogt float %6472, 0.000000e+00
  %6474 = fcmp fast olt float %6472, 0.000000e+00
  %6475 = zext i1 %6473 to i32
  %6476 = zext i1 %6474 to i32
  %6477 = sub nsw i32 %6475, %6476
  %6478 = sitofp i32 %6477 to float
  %6479 = fmul fast float %6478, %6472
  %6480 = fsub fast float 1.000000e+00, %6479
  %6481 = fmul fast float %6480, %6480
  %6482 = fmul fast float %6481, %6480
  %6483 = fsub fast float %6480, %6482
  %6484 = fmul fast float %6483, %6468
  %6485 = fsub fast float 1.000000e+00, %6482
  %6486 = fsub fast float %6485, %6484
  %6487 = fmul fast float %6478, 5.000000e-01
  %6488 = fmul fast float %6487, %6486
  %6489 = fsub fast float 5.000000e-01, %6488
  br label %6490

; <label>:6490                                    ; preds = %6462, %6338, %6323
  %6491 = phi float [ 1.000000e+00, %6323 ], [ %6404, %6338 ], [ %6489, %6462 ]
  %6492 = fcmp fast ogt float %5753, 0.000000e+00
  br i1 %6492, label %6493, label %6657, !dx.controlflow.hints !126

; <label>:6493                                    ; preds = %6490
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = fadd fast float %6495, %5643
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = call float @dx.op.binary.f32(i32 35, float %6496, float 0.000000e+00)  ; FMax(a,b)
  %6503 = fadd fast float %6502, 0x3F10000000000000
  %6504 = fcmp fast oeq float %6501, 0.000000e+00
  br i1 %6504, label %6505, label %6572

; <label>:6505                                    ; preds = %6493
  %6506 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6507 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6508 = fmul fast float %6507, %5635
  %6509 = fmul fast float %6506, %5639
  %6510 = fadd fast float %6508, 5.000000e-01
  %6511 = call float @dx.op.unary.f32(i32 27, float %6510)  ; Round_ni(value)
  %6512 = fadd fast float %6509, 5.000000e-01
  %6513 = call float @dx.op.unary.f32(i32 27, float %6512)  ; Round_ni(value)
  %6514 = fsub fast float %6510, %6511
  %6515 = fsub fast float %6512, %6513
  %6516 = fadd fast float %6511, -5.000000e-01
  %6517 = fadd fast float %6513, -5.000000e-01
  %6518 = fmul fast float %6514, 2.000000e+00
  %6519 = fsub fast float 3.000000e+00, %6518
  %6520 = fadd fast float %6518, 1.000000e+00
  %6521 = fsub fast float 2.000000e+00, %6514
  %6522 = bitcast float %6519 to i32
  %6523 = sub nsw i32 2129859010, %6522
  %6524 = bitcast i32 %6523 to float
  %6525 = fmul fast float %6524, %6521
  %6526 = fadd fast float %6525, -1.000000e+00
  %6527 = bitcast float %6520 to i32
  %6528 = sub nsw i32 2129859010, %6527
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %6514
  %6531 = fadd fast float %6530, 1.000000e+00
  %6532 = fmul fast float %6515, 2.000000e+00
  %6533 = fsub fast float 3.000000e+00, %6532
  %6534 = fadd fast float %6532, 1.000000e+00
  %6535 = fsub fast float 2.000000e+00, %6515
  %6536 = bitcast float %6533 to i32
  %6537 = sub nsw i32 2129859010, %6536
  %6538 = bitcast i32 %6537 to float
  %6539 = fmul fast float %6538, %6535
  %6540 = fadd fast float %6539, -1.000000e+00
  %6541 = bitcast float %6534 to i32
  %6542 = sub nsw i32 2129859010, %6541
  %6543 = bitcast i32 %6542 to float
  %6544 = fmul fast float %6543, %6515
  %6545 = fadd fast float %6544, 1.000000e+00
  %6546 = fadd fast float %6526, %6516
  %6547 = fmul fast float %6546, %6498
  %6548 = fadd fast float %6540, %6517
  %6549 = fmul fast float %6548, %6499
  %6550 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6547, float %6549, float undef, float undef, i32 0, i32 0, i32 undef, float %6503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6551 = extractvalue %dx.types.ResRet.f32 %6550, 0
  %6552 = fmul fast float %6551, %6519
  %6553 = fadd fast float %6531, %6516
  %6554 = fmul fast float %6553, %6498
  %6555 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6554, float %6549, float undef, float undef, i32 0, i32 0, i32 undef, float %6503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6556 = extractvalue %dx.types.ResRet.f32 %6555, 0
  %6557 = fmul fast float %6556, %6520
  %6558 = fadd fast float %6545, %6517
  %6559 = fmul fast float %6558, %6499
  %6560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6547, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float %6503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 0
  %6562 = fmul fast float %6561, %6519
  %6563 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6554, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float %6503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6564 = extractvalue %dx.types.ResRet.f32 %6563, 0
  %6565 = fmul fast float %6564, %6520
  %6566 = fadd fast float %6565, %6562
  %6567 = fmul fast float %6566, %6534
  %6568 = fadd fast float %6557, %6552
  %6569 = fmul fast float %6568, %6533
  %6570 = fadd fast float %6569, %6567
  %6571 = fmul fast float %6570, 6.250000e-02
  br label %6657

; <label>:6572                                    ; preds = %6493
  %6573 = fmul fast float %240, 0x401921FB60000000
  %6574 = call float @dx.op.unary.f32(i32 13, float %6573)  ; Sin(value)
  %6575 = call float @dx.op.unary.f32(i32 12, float %6573)  ; Cos(value)
  %6576 = fsub fast float -0.000000e+00, %6574
  br label %6577

; <label>:6577                                    ; preds = %6626, %6572
  %6578 = phi float [ 0.000000e+00, %6572 ], [ %6621, %6626 ]
  %6579 = phi float [ 0.000000e+00, %6572 ], [ %6623, %6626 ]
  %6580 = phi i32 [ 0, %6572 ], [ %6627, %6626 ]
  %6581 = mul i32 %6580, 2
  %6582 = add i32 0, %6581
  %6583 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6582
  %6584 = load float, float* %6583, align 4
  %6585 = mul i32 %6580, 2
  %6586 = add i32 1, %6585
  %6587 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6586
  %6588 = load float, float* %6587, align 4
  %6589 = fmul fast float %6584, %6575
  %6590 = call float @dx.op.tertiary.f32(i32 46, float %6588, float %6576, float %6589)  ; FMad(a,b,c)
  %6591 = fmul fast float %6584, %6574
  %6592 = call float @dx.op.tertiary.f32(i32 46, float %6588, float %6575, float %6591)  ; FMad(a,b,c)
  %6593 = fmul fast float %6590, %6501
  %6594 = fmul fast float %6592, %6501
  %6595 = fadd fast float %6593, %5635
  %6596 = fadd fast float %6594, %5639
  %6597 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6595, float %6596, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6598 = extractvalue %dx.types.ResRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.ResRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.ResRet.f32 %6597, 2
  %6601 = extractvalue %dx.types.ResRet.f32 %6597, 3
  %6602 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6598, float* %6602, align 4
  %6603 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6599, float* %6603, align 4
  %6604 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6600, float* %6604, align 4
  %6605 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6601, float* %6605, align 4
  %6606 = fsub fast float %6598, %6503
  %6607 = fcmp fast olt float %6606, 0.000000e+00
  %6608 = select i1 %6607, float 0.000000e+00, float 1.000000e+00
  %6609 = fadd fast float %6608, %6578
  %6610 = fmul fast float %6608, %6606
  %6611 = fadd fast float %6610, %6579
  br label %6612

; <label>:6612                                    ; preds = %6612, %6577
  %6613 = phi i32 [ 1, %6577 ], [ %6624, %6612 ]
  %6614 = phi float [ %6611, %6577 ], [ %6623, %6612 ]
  %6615 = phi float [ %6609, %6577 ], [ %6621, %6612 ]
  %6616 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6613
  %6617 = load float, float* %6616, align 4, !tbaa !121, !noalias !111
  %6618 = fsub fast float %6617, %6503
  %6619 = fcmp fast olt float %6618, 0.000000e+00
  %6620 = select i1 %6619, float 0.000000e+00, float 1.000000e+00
  %6621 = fadd fast float %6620, %6615
  %6622 = fmul fast float %6620, %6618
  %6623 = fadd fast float %6622, %6614
  %6624 = add nuw nsw i32 %6613, 1
  %6625 = icmp eq i32 %6624, 4
  br i1 %6625, label %6626, label %6612, !llvm.loop !123

; <label>:6626                                    ; preds = %6612
  %6627 = add nuw nsw i32 %6580, 1
  %6628 = icmp eq i32 %6627, 8
  br i1 %6628, label %6629, label %6577, !llvm.loop !124

; <label>:6629                                    ; preds = %6626
  %6630 = fdiv fast float 1.000000e+00, %6621
  %6631 = fmul fast float %6630, %6623
  %6632 = fdiv fast float 1.000000e+00, %6503
  %6633 = fmul fast float %6631, %6632
  %6634 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6635 = call float @dx.op.binary.f32(i32 35, float %6634, float 0.000000e+00)  ; FMax(a,b)
  %6636 = fmul fast float %6621, 3.125000e-02
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6638 = fmul fast float %6637, 2.000000e+00
  %6639 = fadd fast float %6638, -1.000000e+00
  %6640 = fcmp fast ogt float %6639, 0.000000e+00
  %6641 = fcmp fast olt float %6639, 0.000000e+00
  %6642 = zext i1 %6640 to i32
  %6643 = zext i1 %6641 to i32
  %6644 = sub nsw i32 %6642, %6643
  %6645 = sitofp i32 %6644 to float
  %6646 = fmul fast float %6645, %6639
  %6647 = fsub fast float 1.000000e+00, %6646
  %6648 = fmul fast float %6647, %6647
  %6649 = fmul fast float %6648, %6647
  %6650 = fsub fast float %6647, %6649
  %6651 = fmul fast float %6650, %6635
  %6652 = fsub fast float 1.000000e+00, %6649
  %6653 = fsub fast float %6652, %6651
  %6654 = fmul fast float %6645, 5.000000e-01
  %6655 = fmul fast float %6654, %6653
  %6656 = fsub fast float 5.000000e-01, %6655
  br label %6657

; <label>:6657                                    ; preds = %6629, %6505, %6490
  %6658 = phi float [ 1.000000e+00, %6490 ], [ %6571, %6505 ], [ %6656, %6629 ]
  %6659 = fsub fast float %6324, %6159
  %6660 = fmul fast float %6659, %5697
  %6661 = fadd fast float %6660, %6159
  %6662 = fsub fast float %6491, %6661
  %6663 = fmul fast float %6662, %5727
  %6664 = fadd fast float %6663, %6661
  %6665 = fsub fast float %6658, %6664
  %6666 = fmul fast float %6665, %5753
  %6667 = fadd fast float %6666, %6664
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6670 = fcmp fast ogt float %6669, 0.000000e+00
  br i1 %6670, label %6671, label %6711, !dx.controlflow.hints !127

; <label>:6671                                    ; preds = %6657
  %6672 = fcmp fast ugt float %6669, 0.000000e+00
  br i1 %6672, label %6673, label %6708

; <label>:6673                                    ; preds = %6671
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.CBufRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.CBufRet.f32 %6674, 2
  %6678 = extractvalue %dx.types.CBufRet.f32 %6674, 3
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6684 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6668, 1
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.CBufRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.CBufRet.f32 %6686, 2
  %6690 = fadd fast float %6687, %5612
  %6691 = fadd fast float %6688, %5613
  %6692 = fadd fast float %6689, %5614
  %6693 = fmul fast float %6690, %6675
  %6694 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6691, float %6693)  ; FMad(a,b,c)
  %6695 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6692, float %6694)  ; FMad(a,b,c)
  %6696 = fadd fast float %6695, %6678
  %6697 = fmul fast float %6690, %6680
  %6698 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6691, float %6697)  ; FMad(a,b,c)
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6692, float %6698)  ; FMad(a,b,c)
  %6700 = fadd fast float %6699, %6683
  %6701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6696, float %6700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6702 = extractvalue %dx.types.ResRet.f32 %6701, 0
  %6703 = fmul fast float %6702, %6685
  %6704 = fadd fast float %6703, %6684
  %6705 = call float @dx.op.unary.f32(i32 7, float %6704)  ; Saturate(value)
  %6706 = fmul fast float %6705, %6669
  %6707 = fsub fast float 1.000000e+00, %6706
  br label %6708

; <label>:6708                                    ; preds = %6673, %6671
  %6709 = phi float [ %6707, %6673 ], [ 1.000000e+00, %6671 ]
  %6710 = fmul fast float %6709, %6667
  br label %6711

; <label>:6711                                    ; preds = %6708, %6657, %5592
  %6712 = phi float [ 1.000000e+00, %5592 ], [ %6710, %6708 ], [ %6667, %6657 ]
  %6713 = call float @dx.op.binary.f32(i32 36, float %6712, float %6712)  ; FMin(a,b)
  %6714 = call float @dx.op.binary.f32(i32 36, float %6712, float %6713)  ; FMin(a,b)
  %6715 = fcmp fast ogt float %6714, 0.000000e+00
  br i1 %6715, label %6716, label %6881, !dx.controlflow.hints !128

; <label>:6716                                    ; preds = %6711
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6721 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.CBufRet.f32 %6722, 3
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = fmul fast float %6718, %5612
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %6719, float %6732)  ; FMad(a,b,c)
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %6720, float %6733)  ; FMad(a,b,c)
  %6735 = fadd fast float %6734, %6721
  %6736 = fmul fast float %6723, %5612
  %6737 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %6724, float %6736)  ; FMad(a,b,c)
  %6738 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %6725, float %6737)  ; FMad(a,b,c)
  %6739 = fadd fast float %6738, %6726
  %6740 = fmul fast float %6728, %5612
  %6741 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %6729, float %6740)  ; FMad(a,b,c)
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %5614, float %6730, float %6741)  ; FMad(a,b,c)
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6747 = fmul fast float %6746, %6735
  %6748 = fmul fast float %6746, %6739
  %6749 = fadd fast float %6747, %6744
  %6750 = fadd fast float %6748, %6745
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6754 = fsub fast float %6749, %6752
  %6755 = fsub fast float %6750, %6753
  %6756 = fcmp fast olt float %6754, 0.000000e+00
  %6757 = fcmp fast olt float %6755, 0.000000e+00
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6763 = select i1 %6756, float %6759, float %6761
  %6764 = select i1 %6757, float %6760, float %6762
  %6765 = fmul fast float %6763, %6754
  %6766 = fmul fast float %6764, %6755
  %6767 = call float @dx.op.unary.f32(i32 6, float %6765)  ; FAbs(value)
  %6768 = call float @dx.op.unary.f32(i32 6, float %6766)  ; FAbs(value)
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 0
  %6771 = call float @dx.op.binary.f32(i32 35, float %6767, float %6768)  ; FMax(a,b)
  %6772 = fsub fast float %6770, %6771
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = fcmp fast ogt float %6773, 0.000000e+00
  br i1 %6774, label %6775, label %6816, !dx.controlflow.hints !129

; <label>:6775                                    ; preds = %6716
  %6776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6749, float %6750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 1
  %6778 = fcmp fast ogt float %6777, 0.000000e+00
  br i1 %6778, label %6779, label %6811

; <label>:6779                                    ; preds = %6775
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6749, float %6750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.ResRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.ResRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.ResRet.f32 %6780, 3
  %6785 = fsub fast float 1.000000e+00, %6731
  %6786 = fsub fast float %6785, %6742
  %6787 = fmul fast float %6786, 0x400921FB60000000
  %6788 = fadd fast float %6787, 0x3FF921FB60000000
  %6789 = call float @dx.op.unary.f32(i32 13, float %6788)  ; Sin(value)
  %6790 = fadd fast float %6789, -1.000000e+00
  %6791 = fmul fast float %6790, 0x3FD45F3060000000
  %6792 = fmul fast float %6786, 0x401921FB60000000
  %6793 = fadd fast float %6792, 0x400921FB60000000
  %6794 = call float @dx.op.unary.f32(i32 13, float %6793)  ; Sin(value)
  %6795 = fadd fast float %6794, 0x3E7777A5C0000000
  %6796 = fmul fast float %6795, 0x3FC45F3060000000
  %6797 = fmul fast float %6786, 0x4022D97C80000000
  %6798 = fadd fast float %6797, 0x4012D97C80000000
  %6799 = call float @dx.op.unary.f32(i32 13, float %6798)  ; Sin(value)
  %6800 = fadd fast float %6799, 1.000000e+00
  %6801 = fmul fast float %6800, 0x3FBB2995E0000000
  %6802 = fmul fast float %6786, 0x402921FB60000000
  %6803 = fadd fast float %6802, 0x401921FB60000000
  %6804 = call float @dx.op.unary.f32(i32 13, float %6803)  ; Sin(value)
  %6805 = fadd fast float %6804, 0xBE8777A5C0000000
  %6806 = fmul fast float %6805, 0x3FB45F3060000000
  %6807 = call float @dx.op.dot4.f32(i32 56, float %6781, float %6782, float %6783, float %6784, float %6791, float %6796, float %6801, float %6806)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6808 = fmul fast float %6807, 0xBFF7154760000000
  %6809 = call float @dx.op.unary.f32(i32 21, float %6808)  ; Exp(value)
  %6810 = call float @dx.op.unary.f32(i32 7, float %6809)  ; Saturate(value)
  br label %6811

; <label>:6811                                    ; preds = %6779, %6775
  %6812 = phi float [ %6810, %6779 ], [ 1.000000e+00, %6775 ]
  %6813 = fadd fast float %6812, -1.000000e+00
  %6814 = fmul fast float %6813, %6773
  %6815 = fadd fast float %6814, 1.000000e+00
  br label %6816

; <label>:6816                                    ; preds = %6811, %6716
  %6817 = phi float [ %6815, %6811 ], [ 1.000000e+00, %6716 ]
  %6818 = fmul fast float %6817, %6712
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = fadd fast float %6820, %167
  %6824 = fadd fast float %6821, %168
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = fsub fast float -0.000000e+00, %6823
  %6832 = fsub fast float -0.000000e+00, %6824
  %6833 = fsub fast float %4872, %6822
  %6834 = fadd fast float %6833, %6826
  %6835 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6831, float %6832, float %6834)  ; Dot3(ax,ay,az,bx,by,bz)
  %6836 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6828, float %6829, float %6830)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = fdiv fast float 1.000000e+00, %6836
  %6838 = fmul fast float %6837, %6835
  %6839 = fmul fast float %6828, %6838
  %6840 = fmul fast float %6829, %6838
  %6841 = fadd fast float %6839, %6823
  %6842 = fadd fast float %6840, %6824
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = fsub fast float %6841, %6844
  %6847 = fsub fast float %6842, %6845
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6851 = fmul fast float %6846, %6849
  %6852 = fmul fast float %6847, %6850
  %6853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.i32 %6853, 3
  %6855 = icmp eq i32 %6854, 0
  br i1 %6855, label %6861, label %6856

; <label>:6856                                    ; preds = %6816
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6851, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.ResRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.ResRet.f32 %6857, 2
  br label %6866

; <label>:6861                                    ; preds = %6816
  %6862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6851, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6863 = extractvalue %dx.types.ResRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.ResRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.ResRet.f32 %6862, 2
  br label %6866

; <label>:6866                                    ; preds = %6861, %6856
  %6867 = phi float [ %6858, %6856 ], [ %6863, %6861 ]
  %6868 = phi float [ %6859, %6856 ], [ %6864, %6861 ]
  %6869 = phi float [ %6860, %6856 ], [ %6865, %6861 ]
  %6870 = extractvalue %dx.types.CBufRet.f32 %6825, 2
  %6871 = fmul fast float %6870, %6867
  %6872 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6873 = fsub fast float %6838, %6872
  %6874 = fsub fast float %6873, %6871
  %6875 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6874)  ; FMax(a,b)
  %6876 = fmul fast float %6875, %6868
  %6877 = call float @dx.op.binary.f32(i32 36, float %6869, float %6876)  ; FMin(a,b)
  %6878 = fmul fast float %6877, 0xBFF7154760000000
  %6879 = call float @dx.op.unary.f32(i32 21, float %6878)  ; Exp(value)
  %6880 = fmul fast float %6818, %6879
  br label %6881

; <label>:6881                                    ; preds = %6866, %6711
  %6882 = phi float [ %6880, %6866 ], [ %6712, %6711 ]
  %6883 = call float @dx.op.binary.f32(i32 36, float %6882, float %6882)  ; FMin(a,b)
  %6884 = call float @dx.op.binary.f32(i32 36, float %6882, float %6883)  ; FMin(a,b)
  %6885 = fcmp fast ogt float %6884, 0.000000e+00
  br i1 %6885, label %6886, label %7133, !dx.controlflow.hints !130

; <label>:6886                                    ; preds = %6881
  %6887 = fmul fast float %6882, %5604
  %6888 = fmul fast float %6882, %5605
  %6889 = fmul fast float %6882, %5606
  %6890 = fsub fast float %169, %4660
  %6891 = fcmp fast ogt float %6890, 0.000000e+00
  %6892 = fmul fast float %5593, 5.120000e+02
  %6893 = fmul fast float %5594, 5.120000e+02
  %6894 = fmul fast float %5595, 5.120000e+02
  %6895 = fadd fast float %6894, %169
  %6896 = fsub fast float %4660, %6895
  %6897 = fmul fast float %6896, 2.000000e+00
  %6898 = fadd fast float %6897, %6895
  %6899 = select i1 %6891, float %6898, float %6895
  %6900 = fsub fast float %6899, %169
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6892, float %6893, float %6900, float %6892, float %6893, float %6900)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = call float @dx.op.unary.f32(i32 25, float %6901)  ; Rsqrt(value)
  %6903 = fmul fast float %6902, %6892
  %6904 = fmul fast float %6902, %6893
  %6905 = fmul fast float %6902, %6900
  %6906 = fsub fast float %4660, %169
  %6907 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6906)  ; Dot3(ax,ay,az,bx,by,bz)
  %6908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6903, float %6904, float %6905)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = fdiv fast float 1.000000e+00, %6908
  %6910 = fmul fast float %6909, %6907
  %6911 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6890, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = fcmp fast ogt float %6911, 0.000000e+00
  %6913 = fcmp fast olt float %6911, 0.000000e+00
  %6914 = zext i1 %6912 to i32
  %6915 = zext i1 %6913 to i32
  %6916 = sub nsw i32 %6914, %6915
  %6917 = sitofp i32 %6916 to float
  %6918 = fsub fast float %6899, %4660
  %6919 = call float @dx.op.dot3.f32(i32 55, float %6892, float %6893, float %6918, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6920 = fcmp fast ogt float %6919, 0.000000e+00
  %6921 = fcmp fast olt float %6919, 0.000000e+00
  %6922 = zext i1 %6920 to i32
  %6923 = zext i1 %6921 to i32
  %6924 = sub nsw i32 %6922, %6923
  %6925 = sitofp i32 %6924 to float
  %6926 = fcmp fast une float %6917, %6925
  br i1 %6926, label %6927, label %6937

; <label>:6927                                    ; preds = %6886
  %6928 = fmul fast float %6910, %6905
  %6929 = fmul fast float %6910, %6904
  %6930 = fmul fast float %6910, %6903
  %6931 = fmul fast float %6930, %6930
  %6932 = fmul fast float %6929, %6929
  %6933 = fadd fast float %6931, %6932
  %6934 = fmul fast float %6928, %6928
  %6935 = fadd fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 24, float %6935)  ; Sqrt(value)
  br label %6947

; <label>:6937                                    ; preds = %6886
  %6938 = icmp slt i32 %6916, 0
  br i1 %6938, label %6939, label %6947

; <label>:6939                                    ; preds = %6937
  %6940 = fsub fast float %169, %6899
  %6941 = fmul fast float %6892, %6892
  %6942 = fmul fast float %6893, %6893
  %6943 = fadd fast float %6941, %6942
  %6944 = fmul fast float %6940, %6940
  %6945 = fadd fast float %6943, %6944
  %6946 = call float @dx.op.unary.f32(i32 24, float %6945)  ; Sqrt(value)
  br label %6947

; <label>:6947                                    ; preds = %6939, %6937, %6927
  %6948 = phi float [ %6936, %6927 ], [ %6946, %6939 ], [ 0.000000e+00, %6937 ]
  %6949 = fsub fast float -0.000000e+00, %6948
  %6950 = select i1 %6891, float -0.000000e+00, float %6949
  %6951 = fmul fast float %4661, 0x3FF7154760000000
  %6952 = fmul fast float %6951, %6950
  %6953 = fmul fast float %4662, 0x3FF7154760000000
  %6954 = fmul fast float %6953, %6950
  %6955 = fmul fast float %4663, 0x3FF7154760000000
  %6956 = fmul fast float %6955, %6950
  %6957 = call float @dx.op.unary.f32(i32 21, float %6952)  ; Exp(value)
  %6958 = call float @dx.op.unary.f32(i32 21, float %6954)  ; Exp(value)
  %6959 = call float @dx.op.unary.f32(i32 21, float %6956)  ; Exp(value)
  %6960 = call float @dx.op.unary.f32(i32 7, float %6957)  ; Saturate(value)
  %6961 = call float @dx.op.unary.f32(i32 7, float %6958)  ; Saturate(value)
  %6962 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6963 = fmul fast float %6887, %6960
  %6964 = fmul fast float %6888, %6961
  %6965 = fmul fast float %6889, %6962
  %6966 = fsub fast float %5593, %4860
  %6967 = fsub fast float %5594, %4859
  %6968 = fsub fast float %5595, %4858
  %6969 = call float @dx.op.dot3.f32(i32 55, float %6966, float %6967, float %6968, float %6966, float %6967, float %6968)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = call float @dx.op.unary.f32(i32 25, float %6969)  ; Rsqrt(value)
  %6971 = fmul fast float %6970, %6966
  %6972 = fmul fast float %6970, %6967
  %6973 = fmul fast float %6970, %6968
  %6974 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5594, float %5595, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4856, float %4855, float %6971, float %6972, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6976 = call float @dx.op.unary.f32(i32 7, float %6974)  ; Saturate(value)
  %6977 = fmul fast float %6976, %6976
  %6978 = fmul fast float %6977, %4900
  %6979 = call float @dx.op.unary.f32(i32 7, float %6978)  ; Saturate(value)
  %6980 = fmul fast float %6979, %6976
  %6981 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %6971, float %6972, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6982 = fmul fast float %6981, %6981
  %6983 = call float @dx.op.unary.f32(i32 6, float %6974)  ; FAbs(value)
  %6984 = fsub fast float 1.000000e+00, %4893
  %6985 = fmul fast float %4875, %4875
  %6986 = fmul fast float %6985, %6984
  %6987 = fadd fast float %6986, %4893
  %6988 = bitcast float %6987 to i32
  %6989 = ashr i32 %6988, 1
  %6990 = add nsw i32 %6989, 532487669
  %6991 = bitcast i32 %6990 to float
  %6992 = fadd fast float %6991, %4875
  %6993 = fmul fast float %4893, %6982
  %6994 = fsub fast float 1.000000e+00, %6982
  %6995 = fadd fast float %6994, %6993
  %6996 = fmul fast float %6983, %6983
  %6997 = fmul fast float %6996, %6984
  %6998 = fadd fast float %6997, %4893
  %6999 = bitcast float %6998 to i32
  %7000 = ashr i32 %6999, 1
  %7001 = add nsw i32 %7000, 532487669
  %7002 = bitcast i32 %7001 to float
  %7003 = fadd fast float %7002, %6983
  %7004 = fmul fast float %6995, %6995
  %7005 = fmul fast float %7004, %6992
  %7006 = fmul fast float %7005, %7003
  %7007 = fdiv fast float 0x3FF0A00000000000, %7006
  %7008 = fmul fast float %7007, %4893
  %7009 = call float @dx.op.unary.f32(i32 6, float %6975)  ; FAbs(value)
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = bitcast float %7010 to i32
  %7012 = sitofp i32 %7011 to float
  %7013 = fmul fast float %7012, 5.000000e+00
  %7014 = fadd fast float %7013, 0xC1EFBF8940000000
  %7015 = fptosi float %7014 to i32
  %7016 = bitcast i32 %7015 to float
  %7017 = fsub fast float 1.000000e+00, %4861
  %7018 = fsub fast float 1.000000e+00, %4862
  %7019 = fsub fast float 1.000000e+00, %4873
  %7020 = fmul fast float %7016, %7017
  %7021 = fmul fast float %7016, %7018
  %7022 = fmul fast float %7016, %7019
  %7023 = fadd fast float %7020, %4861
  %7024 = fadd fast float %7021, %4862
  %7025 = fadd fast float %7022, %4873
  br i1 %5012, label %7026, label %7049

; <label>:7026                                    ; preds = %6947
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4259, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.ResRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.ResRet.f32 %7027, 2
  %7031 = fadd fast float %7028, -5.000000e-01
  %7032 = fadd fast float %7029, -5.000000e-01
  %7033 = fadd fast float %7030, -5.000000e-01
  %7034 = fmul fast float %4861, 4.000000e+00
  %7035 = fmul fast float %7034, %7017
  %7036 = fmul fast float %7035, %7031
  %7037 = fmul fast float %4862, 4.000000e+00
  %7038 = fmul fast float %7037, %7018
  %7039 = fmul fast float %7038, %7032
  %7040 = fmul fast float %4873, 4.000000e+00
  %7041 = fmul fast float %7040, %7019
  %7042 = fmul fast float %7041, %7033
  %7043 = fadd fast float %7036, %7023
  %7044 = fadd fast float %7039, %7024
  %7045 = fadd fast float %7042, %7025
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7048 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  br label %7049

; <label>:7049                                    ; preds = %7026, %6947
  %7050 = phi float [ %7046, %7026 ], [ %7023, %6947 ]
  %7051 = phi float [ %7047, %7026 ], [ %7024, %6947 ]
  %7052 = phi float [ %7048, %7026 ], [ %7025, %6947 ]
  %7053 = fmul fast float %6974, 9.843750e-01
  %7054 = fadd fast float %7053, 7.812500e-03
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7054, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 2
  %7057 = extractvalue %dx.types.ResRet.f32 %7055, 3
  %7058 = fmul fast float %7056, %4861
  %7059 = fmul fast float %7056, %4862
  %7060 = fmul fast float %7056, %4873
  %7061 = fadd fast float %7058, %7057
  %7062 = fadd fast float %7059, %7057
  %7063 = fadd fast float %7060, %7057
  br i1 %5012, label %7064, label %7087

; <label>:7064                                    ; preds = %7049
  %7065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4259, float %6974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.ResRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7065, 2
  %7069 = fadd fast float %7066, -5.000000e-01
  %7070 = fadd fast float %7067, -5.000000e-01
  %7071 = fadd fast float %7068, -5.000000e-01
  %7072 = fmul fast float %4861, 4.000000e+00
  %7073 = fmul fast float %7072, %7017
  %7074 = fmul fast float %7073, %7069
  %7075 = fmul fast float %4862, 4.000000e+00
  %7076 = fmul fast float %7075, %7018
  %7077 = fmul fast float %7076, %7070
  %7078 = fmul fast float %4873, 4.000000e+00
  %7079 = fmul fast float %7078, %7019
  %7080 = fmul fast float %7079, %7071
  %7081 = fadd fast float %7074, %7061
  %7082 = fadd fast float %7077, %7062
  %7083 = fadd fast float %7080, %7063
  %7084 = call float @dx.op.unary.f32(i32 7, float %7081)  ; Saturate(value)
  %7085 = call float @dx.op.unary.f32(i32 7, float %7082)  ; Saturate(value)
  %7086 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  br label %7087

; <label>:7087                                    ; preds = %7064, %7049
  %7088 = phi float [ %7084, %7064 ], [ %7061, %7049 ]
  %7089 = phi float [ %7085, %7064 ], [ %7062, %7049 ]
  %7090 = phi float [ %7086, %7064 ], [ %7063, %7049 ]
  %7091 = call float @dx.op.binary.f32(i32 35, float %7089, float %7090)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 35, float %7088, float %7091)  ; FMax(a,b)
  %7093 = fsub fast float 1.000000e+00, %7092
  %7094 = fmul fast float %7050, %7008
  %7095 = fmul fast float %7051, %7008
  %7096 = fmul fast float %7052, %7008
  %7097 = fsub fast float 1.000000e+00, %6975
  %7098 = bitcast float %7097 to i32
  %7099 = sitofp i32 %7098 to float
  %7100 = fmul fast float %7099, 5.000000e+00
  %7101 = fadd fast float %7100, 0xC1EFBF8940000000
  %7102 = fptosi float %7101 to i32
  %7103 = bitcast i32 %7102 to float
  %7104 = fmul fast float %7103, %4260
  %7105 = fmul fast float %7093, %7104
  %7106 = fmul fast float %7105, %5554
  %7107 = fmul fast float %7105, %5555
  %7108 = fmul fast float %7105, %5556
  %7109 = fadd fast float %7106, %7094
  %7110 = fadd fast float %7107, %7095
  %7111 = fadd fast float %7108, %7096
  %7112 = fmul fast float %6980, %6963
  %7113 = fmul fast float %7112, %7093
  %7114 = fmul fast float %6980, %6964
  %7115 = fmul fast float %7114, %7093
  %7116 = fmul fast float %6980, %6965
  %7117 = fmul fast float %7116, %7093
  %7118 = fmul fast float %7112, %7109
  %7119 = fmul fast float %7114, %7110
  %7120 = fmul fast float %7116, %7111
  %7121 = fadd fast float %7113, %5538
  %7122 = fmul fast float %7121, %4256
  %7123 = fadd fast float %7115, %5539
  %7124 = fmul fast float %7123, %4256
  %7125 = fadd fast float %7117, %5540
  %7126 = fmul fast float %7125, %4256
  %7127 = fadd fast float %7118, %5581
  %7128 = fmul fast float %7127, %4256
  %7129 = fadd fast float %7119, %5584
  %7130 = fmul fast float %7129, %4256
  %7131 = fadd fast float %7120, %5587
  %7132 = fmul fast float %7131, %4256
  br label %7133

; <label>:7133                                    ; preds = %7087, %6881, %5534
  %7134 = phi float [ %5582, %5534 ], [ %5582, %6881 ], [ %7128, %7087 ]
  %7135 = phi float [ %5585, %5534 ], [ %5585, %6881 ], [ %7130, %7087 ]
  %7136 = phi float [ %5588, %5534 ], [ %5588, %6881 ], [ %7132, %7087 ]
  %7137 = phi float [ %5577, %5534 ], [ %5577, %6881 ], [ %7122, %7087 ]
  %7138 = phi float [ %5578, %5534 ], [ %5578, %6881 ], [ %7124, %7087 ]
  %7139 = phi float [ %5579, %5534 ], [ %5579, %6881 ], [ %7126, %7087 ]
  %7140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.i32 %7140, 0
  %7142 = icmp eq i32 %7141, 0
  br i1 %7142, label %7805, label %7143

; <label>:7143                                    ; preds = %7133
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7147 = fmul fast float %7145, %104
  %7148 = fmul fast float %7146, %105
  %7149 = fptoui float %7147 to i32
  %7150 = fptoui float %7148 to i32
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7155 = fadd fast float %92, -4.000000e+00
  %7156 = call float @dx.op.binary.f32(i32 35, float %7155, float 0.000000e+00)  ; FMax(a,b)
  %7157 = fadd fast float %7156, %7152
  %7158 = fmul fast float %7157, %7153
  %7159 = call float @dx.op.unary.f32(i32 23, float %7158)  ; Log(value)
  %7160 = fmul fast float %7159, %7154
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 2
  %7163 = fmul fast float %7160, %7162
  %7164 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.i32 %7165, 1
  %7167 = add i32 %7166, -1
  %7168 = uitofp i32 %7166 to float
  %7169 = fmul fast float %7168, %7164
  %7170 = fptoui float %7169 to i32
  %7171 = call i32 @dx.op.binary.i32(i32 40, i32 %7170, i32 %7167)  ; UMin(a,b)
  %7172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7173 = extractvalue %dx.types.CBufRet.i32 %7172, 2
  %7174 = extractvalue %dx.types.CBufRet.i32 %7172, 3
  %7175 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7150, i32 %7173, i32 %7149)  ; UMad(a,b,c)
  %7176 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7171, i32 %7174, i32 %7175)  ; UMad(a,b,c)
  %7177 = add nsw i32 %7141, -1
  %7178 = call i32 @dx.op.binary.i32(i32 37, i32 %7177, i32 0)  ; IMax(a,b)
  %7179 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7180 = fptoui float %7179 to i32
  %7181 = lshr i32 %7180, 5
  %7182 = call i32 @dx.op.binary.i32(i32 40, i32 %7181, i32 8191)  ; UMin(a,b)
  %7183 = shl i32 %7182, 2
  %7184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7183, i32 undef)  ; BufferLoad(srv,index,wot)
  %7185 = extractvalue %dx.types.ResRet.i32 %7184, 0
  %7186 = lshr i32 %7185, 16
  %7187 = and i32 %7185, 65535
  %7188 = lshr i32 %7185, 21
  %7189 = lshr i32 %7187, 5
  %7190 = call i32 @dx.op.binary.i32(i32 40, i32 %7189, i32 %7178)  ; UMin(a,b)
  %7191 = icmp ugt i32 %7188, %7190
  br i1 %7191, label %7805, label %7192

; <label>:7192                                    ; preds = %7143
  br label %7193

; <label>:7193                                    ; preds = %7795, %7192
  %7194 = phi i32 [ %7802, %7795 ], [ %7188, %7192 ]
  %7195 = phi float [ %7796, %7795 ], [ %7134, %7192 ]
  %7196 = phi float [ %7797, %7795 ], [ %7135, %7192 ]
  %7197 = phi float [ %7798, %7795 ], [ %7136, %7192 ]
  %7198 = phi float [ %7799, %7795 ], [ %7137, %7192 ]
  %7199 = phi float [ %7800, %7795 ], [ %7138, %7192 ]
  %7200 = phi float [ %7801, %7795 ], [ %7139, %7192 ]
  %7201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7202 = extractvalue %dx.types.CBufRet.i32 %7201, 0
  %7203 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7176, i32 %7202, i32 %7194)  ; UMad(a,b,c)
  %7204 = shl i32 %7203, 2
  %7205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7204, i32 undef)  ; BufferLoad(srv,index,wot)
  %7206 = extractvalue %dx.types.ResRet.i32 %7205, 0
  %7207 = shl i32 %7194, 5
  %7208 = sub nsw i32 %7186, %7207
  %7209 = call i32 @dx.op.binary.i32(i32 37, i32 %7208, i32 0)  ; IMax(a,b)
  %7210 = call i32 @dx.op.binary.i32(i32 38, i32 %7209, i32 31)  ; IMin(a,b)
  %7211 = sub nsw i32 1, %7186
  %7212 = add nsw i32 %7211, %7187
  %7213 = call i32 @dx.op.binary.i32(i32 37, i32 %7212, i32 0)  ; IMax(a,b)
  %7214 = call i32 @dx.op.binary.i32(i32 38, i32 %7213, i32 32)  ; IMin(a,b)
  %7215 = and i32 %7214, 31
  %7216 = shl i32 -1, %7215
  %7217 = xor i32 %7216, -1
  %7218 = and i32 %7210, 31
  %7219 = shl i32 %7217, %7218
  %7220 = icmp eq i32 %7214, 32
  %7221 = select i1 %7220, i32 -1, i32 %7219
  %7222 = and i32 %7221, %7206
  %7223 = icmp eq i32 %7222, 0
  br i1 %7223, label %7795, label %7224

; <label>:7224                                    ; preds = %7193
  br label %7225

; <label>:7225                                    ; preds = %7359, %7224
  %7226 = phi i32 [ %7237, %7359 ], [ %7222, %7224 ]
  %7227 = phi float [ %7360, %7359 ], [ %7195, %7224 ]
  %7228 = phi float [ %7361, %7359 ], [ %7196, %7224 ]
  %7229 = phi float [ %7362, %7359 ], [ %7197, %7224 ]
  %7230 = phi float [ %7363, %7359 ], [ %7198, %7224 ]
  %7231 = phi float [ %7364, %7359 ], [ %7199, %7224 ]
  %7232 = phi float [ %7365, %7359 ], [ %7200, %7224 ]
  %7233 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7226)  ; FirstbitLo(value)
  %7234 = add i32 %7233, %7207
  %7235 = and i32 %7233, 31
  %7236 = shl i32 1, %7235
  %7237 = xor i32 %7236, %7226
  %7238 = mul i32 %7234, 112
  %7239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7238, i32 undef)  ; BufferLoad(srv,index,wot)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = or i32 %7238, 12
  %7244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = add i32 %7238, 16
  %7247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7246, i32 undef)  ; BufferLoad(srv,index,wot)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = add i32 %7238, 28
  %7252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7251, i32 undef)  ; BufferLoad(srv,index,wot)
  %7253 = extractvalue %dx.types.ResRet.i32 %7252, 0
  %7254 = add i32 %7238, 44
  %7255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = add i32 %7238, 48
  %7258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7257, i32 undef)  ; BufferLoad(srv,index,wot)
  %7259 = extractvalue %dx.types.ResRet.f32 %7258, 0
  %7260 = extractvalue %dx.types.ResRet.f32 %7258, 1
  %7261 = extractvalue %dx.types.ResRet.f32 %7258, 2
  %7262 = extractvalue %dx.types.ResRet.f32 %7258, 3
  %7263 = add i32 %7238, 64
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = extractvalue %dx.types.ResRet.f32 %7264, 3
  %7269 = add i32 %7238, 80
  %7270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7269, i32 undef)  ; BufferLoad(srv,index,wot)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7273 = add i32 %7238, 92
  %7274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7273, i32 undef)  ; BufferLoad(srv,index,wot)
  %7275 = extractvalue %dx.types.ResRet.i32 %7274, 0
  %7276 = call float @dx.op.dot3.f32(i32 55, float %7240, float %7241, float %7242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7277 = select i1 %229, float %7271, float %7240
  %7278 = select i1 %229, float %7276, float %7241
  %7279 = select i1 %229, float %7272, float %7242
  %7280 = and i32 %7275, 65535
  %7281 = uitofp i32 %7280 to float
  %7282 = lshr i32 %7275, 16
  %7283 = uitofp i32 %7282 to float
  %7284 = and i32 %7253, 65535
  %7285 = and i32 %7253, 50331648
  %7286 = icmp eq i32 %7285, 33554432
  %7287 = fsub fast float %7259, %167
  %7288 = fsub fast float %7260, %168
  %7289 = fsub fast float %7261, %169
  %7290 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7289, float %7287, float %7288, float %7289)  ; Dot3(ax,ay,az,bx,by,bz)
  %7291 = call float @dx.op.unary.f32(i32 24, float %7290)  ; Sqrt(value)
  %7292 = fdiv fast float 1.000000e+00, %7291
  %7293 = fmul fast float %7292, %7287
  %7294 = fmul fast float %7292, %7288
  %7295 = fmul fast float %7292, %7289
  %7296 = fadd fast float %7291, %7245
  %7297 = fdiv fast float 1.000000e+00, %7296
  %7298 = fmul float %7256, %7297
  %7299 = fmul float %7298, %7298
  %7300 = call float @dx.op.unary.f32(i32 7, float %7299)  ; Saturate(value)
  br i1 %7286, label %7301, label %7322

; <label>:7301                                    ; preds = %7225
  %7302 = fmul fast float %7267, %7248
  %7303 = fmul fast float %7267, %7249
  %7304 = fmul fast float %7267, %7250
  %7305 = fadd fast float %7287, %7302
  %7306 = fadd fast float %7288, %7303
  %7307 = fadd fast float %7289, %7304
  %7308 = call float @dx.op.dot3.f32(i32 55, float %7305, float %7306, float %7307, float %7305, float %7306, float %7307)  ; Dot3(ax,ay,az,bx,by,bz)
  %7309 = call float @dx.op.unary.f32(i32 25, float %7308)  ; Rsqrt(value)
  %7310 = fmul fast float %7309, %7305
  %7311 = fmul fast float %7309, %7306
  %7312 = fmul fast float %7309, %7307
  %7313 = fsub fast float %167, %7259
  %7314 = fsub fast float %168, %7260
  %7315 = fsub fast float %169, %7261
  %7316 = fsub fast float -0.000000e+00, %7313
  %7317 = fsub fast float -0.000000e+00, %7314
  %7318 = fsub fast float -0.000000e+00, %7315
  %7319 = call float @dx.op.dot3.f32(i32 55, float %7316, float %7317, float %7318, float %7248, float %7249, float %7250)  ; Dot3(ax,ay,az,bx,by,bz)
  %7320 = fcmp fast ogt float %7319, 0.000000e+00
  %7321 = uitofp i1 %7320 to float
  br label %7322

; <label>:7322                                    ; preds = %7301, %7225
  %7323 = phi float [ %7321, %7301 ], [ 1.000000e+00, %7225 ]
  %7324 = phi float [ %7310, %7301 ], [ %7293, %7225 ]
  %7325 = phi float [ %7311, %7301 ], [ %7294, %7225 ]
  %7326 = phi float [ %7312, %7301 ], [ %7295, %7225 ]
  %7327 = call float @dx.op.dot3.f32(i32 55, float %7248, float %7249, float %7250, float %7324, float %7325, float %7326)  ; Dot3(ax,ay,az,bx,by,bz)
  %7328 = fmul fast float %7327, %7327
  %7329 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7330 = fsub fast float 1.000000e+00, %7329
  %7331 = fmul fast float %7330, 5.000000e-01
  %7332 = fcmp fast ogt float %7327, 0.000000e+00
  %7333 = fsub fast float 1.000000e+00, %7331
  %7334 = select i1 %7332, float %7331, float %7333
  %7335 = fmul fast float %7334, %7283
  %7336 = fadd fast float %7335, %7281
  %7337 = fmul fast float %7336, 0x3EF0001000000000
  %7338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7337, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7339 = extractvalue %dx.types.ResRet.f32 %7338, 0
  %7340 = fmul fast float %7327, %7265
  %7341 = fadd fast float %7340, %7266
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = select i1 %7286, float 1.000000e+00, float %7342
  %7344 = select i1 %7286, float %7342, float 1.000000e+00
  %7345 = fmul fast float %7291, %7262
  %7346 = fsub fast float 1.000000e+00, %7345
  %7347 = fmul fast float %7346, %7268
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = fmul fast float %7348, %7344
  %7350 = fmul fast float %7349, 2.000000e+00
  %7351 = fsub fast float 3.000000e+00, %7350
  %7352 = fmul fast float %7339, %7323
  %7353 = fmul fast float %7349, %7349
  %7354 = fmul fast float %7353, %7352
  %7355 = fmul fast float %7354, %7351
  %7356 = call float @dx.op.binary.f32(i32 36, float %7355, float %7355)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 36, float %7355, float %7356)  ; FMin(a,b)
  %7358 = fcmp fast ogt float %7357, 0.000000e+00
  br i1 %7358, label %7367, label %7359, !dx.controlflow.hints !131

; <label>:7359                                    ; preds = %7751, %7513, %7322
  %7360 = phi float [ %7227, %7513 ], [ %7227, %7322 ], [ %7791, %7751 ]
  %7361 = phi float [ %7228, %7513 ], [ %7228, %7322 ], [ %7792, %7751 ]
  %7362 = phi float [ %7229, %7513 ], [ %7229, %7322 ], [ %7793, %7751 ]
  %7363 = phi float [ %7230, %7513 ], [ %7230, %7322 ], [ %7785, %7751 ]
  %7364 = phi float [ %7231, %7513 ], [ %7231, %7322 ], [ %7786, %7751 ]
  %7365 = phi float [ %7232, %7513 ], [ %7232, %7322 ], [ %7787, %7751 ]
  %7366 = icmp eq i32 %7226, %7236
  br i1 %7366, label %7794, label %7225

; <label>:7367                                    ; preds = %7322
  %7368 = icmp eq i32 %7284, 255
  br i1 %7368, label %7513, label %7369, !dx.controlflow.hints !132

; <label>:7369                                    ; preds = %7367
  %7370 = mul nuw nsw i32 %7284, 176
  %7371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7370, i32 undef)  ; BufferLoad(srv,index,wot)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = extractvalue %dx.types.ResRet.f32 %7371, 3
  %7376 = add nuw nsw i32 %7370, 16
  %7377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7376, i32 undef)  ; BufferLoad(srv,index,wot)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.ResRet.f32 %7377, 1
  %7380 = add nuw nsw i32 %7370, 32
  %7381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7380, i32 undef)  ; BufferLoad(srv,index,wot)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.ResRet.f32 %7381, 1
  %7384 = extractvalue %dx.types.ResRet.f32 %7381, 2
  %7385 = add nuw nsw i32 %7370, 48
  %7386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7385, i32 undef)  ; BufferLoad(srv,index,wot)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = extractvalue %dx.types.ResRet.f32 %7386, 3
  %7391 = add nuw nsw i32 %7370, 64
  %7392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7391, i32 undef)  ; BufferLoad(srv,index,wot)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7392, 3
  %7397 = add nuw nsw i32 %7370, 80
  %7398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7397, i32 undef)  ; BufferLoad(srv,index,wot)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = extractvalue %dx.types.ResRet.f32 %7398, 3
  %7403 = add nuw nsw i32 %7370, 96
  %7404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7403, i32 undef)  ; BufferLoad(srv,index,wot)
  %7405 = extractvalue %dx.types.ResRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.ResRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.ResRet.f32 %7404, 2
  %7408 = extractvalue %dx.types.ResRet.f32 %7404, 3
  %7409 = bitcast float %7379 to i32
  %7410 = fmul fast float %7384, %111
  %7411 = fmul fast float %7384, %112
  %7412 = fmul fast float %7384, %113
  %7413 = fadd fast float %7410, %167
  %7414 = fadd fast float %7411, %168
  %7415 = fadd fast float %7412, %169
  %7416 = fmul fast float %7413, %7387
  %7417 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7393, float %7416)  ; FMad(a,b,c)
  %7418 = call float @dx.op.tertiary.f32(i32 46, float %7415, float %7399, float %7417)  ; FMad(a,b,c)
  %7419 = fadd fast float %7418, %7405
  %7420 = fmul fast float %7413, %7388
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7394, float %7420)  ; FMad(a,b,c)
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7415, float %7400, float %7421)  ; FMad(a,b,c)
  %7423 = fadd fast float %7422, %7406
  %7424 = fmul fast float %7413, %7389
  %7425 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7395, float %7424)  ; FMad(a,b,c)
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %7415, float %7401, float %7425)  ; FMad(a,b,c)
  %7427 = fadd fast float %7426, %7407
  %7428 = fmul fast float %7413, %7390
  %7429 = call float @dx.op.tertiary.f32(i32 46, float %7414, float %7396, float %7428)  ; FMad(a,b,c)
  %7430 = call float @dx.op.tertiary.f32(i32 46, float %7415, float %7402, float %7429)  ; FMad(a,b,c)
  %7431 = fadd fast float %7430, %7408
  %7432 = fdiv fast float %7419, %7431
  %7433 = fdiv fast float %7423, %7431
  %7434 = fdiv fast float %7427, %7431
  %7435 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7434)  ; FMax(a,b)
  %7436 = fmul fast float %240, 0x401921FB60000000
  %7437 = call float @dx.op.unary.f32(i32 13, float %7436)  ; Sin(value)
  %7438 = call float @dx.op.unary.f32(i32 12, float %7436)  ; Cos(value)
  %7439 = fmul fast float %7438, %7383
  %7440 = call float @dx.op.tertiary.f32(i32 46, float %7437, float %7383, float 0.000000e+00)  ; FMad(a,b,c)
  %7441 = fmul fast float %7383, %7437
  %7442 = fsub fast float -0.000000e+00, %7441
  %7443 = call float @dx.op.tertiary.f32(i32 46, float %7438, float %7383, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7444

; <label>:7444                                    ; preds = %7444, %7369
  %7445 = phi float [ 0.000000e+00, %7369 ], [ %7477, %7444 ]
  %7446 = phi float [ 0.000000e+00, %7369 ], [ %7479, %7444 ]
  %7447 = phi i32 [ 0, %7369 ], [ %7480, %7444 ]
  %7448 = mul i32 %7447, 2
  %7449 = add i32 0, %7448
  %7450 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7449
  %7451 = load float, float* %7450, align 4
  %7452 = mul i32 %7447, 2
  %7453 = add i32 1, %7452
  %7454 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7453
  %7455 = load float, float* %7454, align 4
  %7456 = fmul fast float %7439, %7451
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7442, float %7456)  ; FMad(a,b,c)
  %7458 = fmul fast float %7451, %7440
  %7459 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7443, float %7458)  ; FMad(a,b,c)
  %7460 = fadd fast float %7457, %7432
  %7461 = fadd fast float %7459, %7433
  %7462 = fmul fast float %7460, %7378
  %7463 = fmul fast float %7461, %7378
  %7464 = call float @dx.op.binary.f32(i32 35, float %7462, float %7374)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7463, float %7374)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7464, float %7375)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7465, float %7375)  ; FMin(a,b)
  %7468 = fadd fast float %7466, %7372
  %7469 = fadd fast float %7467, %7373
  %7470 = uitofp i32 %7409 to float
  %7471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7468, float %7469, float %7470, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = fsub fast float %7472, %7435
  %7474 = fsub fast float %7473, %7382
  %7475 = fcmp fast ogt float %7474, 0.000000e+00
  %7476 = select i1 %7475, float 1.000000e+00, float 0.000000e+00
  %7477 = fadd fast float %7476, %7445
  %7478 = select i1 %7475, float %7474, float 0.000000e+00
  %7479 = fadd fast float %7478, %7446
  %7480 = add nuw nsw i32 %7447, 1
  %7481 = icmp eq i32 %7480, 8
  br i1 %7481, label %7482, label %7444

; <label>:7482                                    ; preds = %7444
  %7483 = fdiv fast float 1.000000e+00, %7477
  %7484 = fmul fast float %7483, %7479
  %7485 = fdiv fast float 1.000000e+00, %7435
  %7486 = fmul fast float %7484, %7485
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = call float @dx.op.binary.f32(i32 35, float %7487, float 0.000000e+00)  ; FMax(a,b)
  %7489 = fmul fast float %7477, 1.250000e-01
  %7490 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  %7491 = fmul fast float %7490, 2.000000e+00
  %7492 = fadd fast float %7491, -1.000000e+00
  %7493 = fcmp fast ogt float %7492, 0.000000e+00
  %7494 = fcmp fast olt float %7492, 0.000000e+00
  %7495 = zext i1 %7493 to i32
  %7496 = zext i1 %7494 to i32
  %7497 = sub nsw i32 %7495, %7496
  %7498 = sitofp i32 %7497 to float
  %7499 = fmul fast float %7498, %7492
  %7500 = fsub fast float 1.000000e+00, %7499
  %7501 = fmul fast float %7500, %7500
  %7502 = fmul fast float %7501, %7500
  %7503 = fsub fast float %7500, %7502
  %7504 = fmul fast float %7503, %7488
  %7505 = fsub fast float 1.000000e+00, %7502
  %7506 = fsub fast float %7505, %7504
  %7507 = fmul fast float %7498, 5.000000e-01
  %7508 = fmul fast float %7507, %7506
  %7509 = fsub fast float -5.000000e-01, %7508
  %7510 = fmul fast float %7509, %7343
  %7511 = fadd fast float %7510, 1.000000e+00
  %7512 = fmul fast float %7511, %7355
  br label %7513

; <label>:7513                                    ; preds = %7482, %7367
  %7514 = phi float [ %7512, %7482 ], [ %7355, %7367 ]
  %7515 = call float @dx.op.binary.f32(i32 36, float %7514, float %7514)  ; FMin(a,b)
  %7516 = call float @dx.op.binary.f32(i32 36, float %7514, float %7515)  ; FMin(a,b)
  %7517 = fcmp fast ogt float %7516, 0.000000e+00
  br i1 %7517, label %7518, label %7359, !dx.controlflow.hints !133

; <label>:7518                                    ; preds = %7513
  %7519 = fmul fast float %7514, %7277
  %7520 = fmul fast float %7514, %7278
  %7521 = fmul fast float %7514, %7279
  %7522 = fsub fast float %7261, %4660
  %7523 = fcmp fast ogt float %7522, 0.000000e+00
  %7524 = fsub fast float %169, %4660
  %7525 = fcmp fast ogt float %7524, 0.000000e+00
  %7526 = xor i1 %7525, %7523
  %7527 = fsub fast float %4660, %7261
  %7528 = fmul fast float %7527, 2.000000e+00
  %7529 = fadd fast float %7528, %7261
  %7530 = select i1 %7526, float %7261, float %7529
  %7531 = fsub fast float %7530, %169
  %7532 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7531, float %7287, float %7288, float %7531)  ; Dot3(ax,ay,az,bx,by,bz)
  %7533 = call float @dx.op.unary.f32(i32 25, float %7532)  ; Rsqrt(value)
  %7534 = fmul fast float %7533, %7287
  %7535 = fmul fast float %7533, %7288
  %7536 = fmul fast float %7533, %7531
  %7537 = fsub fast float %4660, %169
  %7538 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7537)  ; Dot3(ax,ay,az,bx,by,bz)
  %7539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7534, float %7535, float %7536)  ; Dot3(ax,ay,az,bx,by,bz)
  %7540 = fdiv fast float 1.000000e+00, %7539
  %7541 = fmul fast float %7540, %7538
  %7542 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7524, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7543 = fcmp fast ogt float %7542, 0.000000e+00
  %7544 = fcmp fast olt float %7542, 0.000000e+00
  %7545 = zext i1 %7543 to i32
  %7546 = zext i1 %7544 to i32
  %7547 = sub nsw i32 %7545, %7546
  %7548 = sitofp i32 %7547 to float
  %7549 = fsub fast float %7530, %4660
  %7550 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7549, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = fcmp fast ogt float %7550, 0.000000e+00
  %7552 = fcmp fast olt float %7550, 0.000000e+00
  %7553 = zext i1 %7551 to i32
  %7554 = zext i1 %7552 to i32
  %7555 = sub nsw i32 %7553, %7554
  %7556 = sitofp i32 %7555 to float
  %7557 = fcmp fast une float %7548, %7556
  br i1 %7557, label %7558, label %7568

; <label>:7558                                    ; preds = %7518
  %7559 = fmul fast float %7541, %7536
  %7560 = fmul fast float %7541, %7535
  %7561 = fmul fast float %7541, %7534
  %7562 = fmul fast float %7561, %7561
  %7563 = fmul fast float %7560, %7560
  %7564 = fadd fast float %7562, %7563
  %7565 = fmul fast float %7559, %7559
  %7566 = fadd fast float %7564, %7565
  %7567 = call float @dx.op.unary.f32(i32 24, float %7566)  ; Sqrt(value)
  br label %7580

; <label>:7568                                    ; preds = %7518
  %7569 = icmp slt i32 %7547, 0
  br i1 %7569, label %7570, label %7580

; <label>:7570                                    ; preds = %7568
  %7571 = fsub fast float %167, %7259
  %7572 = fsub fast float %168, %7260
  %7573 = fsub fast float %169, %7530
  %7574 = fmul fast float %7571, %7571
  %7575 = fmul fast float %7572, %7572
  %7576 = fadd fast float %7574, %7575
  %7577 = fmul fast float %7573, %7573
  %7578 = fadd fast float %7576, %7577
  %7579 = call float @dx.op.unary.f32(i32 24, float %7578)  ; Sqrt(value)
  br label %7580

; <label>:7580                                    ; preds = %7570, %7568, %7558
  %7581 = phi float [ %7567, %7558 ], [ %7579, %7570 ], [ 0.000000e+00, %7568 ]
  %7582 = and i1 %7525, %7523
  %7583 = fsub fast float -0.000000e+00, %7581
  %7584 = select i1 %7582, float -0.000000e+00, float %7583
  %7585 = fmul fast float %4661, 0x3FF7154760000000
  %7586 = fmul fast float %7585, %7584
  %7587 = fmul fast float %4662, 0x3FF7154760000000
  %7588 = fmul fast float %7587, %7584
  %7589 = fmul fast float %4663, 0x3FF7154760000000
  %7590 = fmul fast float %7589, %7584
  %7591 = call float @dx.op.unary.f32(i32 21, float %7586)  ; Exp(value)
  %7592 = call float @dx.op.unary.f32(i32 21, float %7588)  ; Exp(value)
  %7593 = call float @dx.op.unary.f32(i32 21, float %7590)  ; Exp(value)
  %7594 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7595 = call float @dx.op.unary.f32(i32 7, float %7592)  ; Saturate(value)
  %7596 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7597 = fmul fast float %7519, %7594
  %7598 = fmul fast float %7520, %7595
  %7599 = fmul fast float %7521, %7596
  %7600 = fsub fast float %7293, %4860
  %7601 = fsub fast float %7294, %4859
  %7602 = fsub fast float %7295, %4858
  %7603 = call float @dx.op.dot3.f32(i32 55, float %7600, float %7601, float %7602, float %7600, float %7601, float %7602)  ; Dot3(ax,ay,az,bx,by,bz)
  %7604 = call float @dx.op.unary.f32(i32 25, float %7603)  ; Rsqrt(value)
  %7605 = fmul fast float %7604, %7600
  %7606 = fmul fast float %7604, %7601
  %7607 = fmul fast float %7604, %7602
  %7608 = call float @dx.op.dot3.f32(i32 55, float %7293, float %7294, float %7295, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7609 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4856, float %4855, float %7605, float %7606, float %7607)  ; Dot3(ax,ay,az,bx,by,bz)
  %7610 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7611 = fmul fast float %7610, %7300
  %7612 = fmul fast float %7610, %7610
  %7613 = fmul fast float %7612, %4900
  %7614 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7615 = fmul fast float %7611, %7614
  %7616 = bitcast float %7290 to i32
  %7617 = ashr i32 %7616, 1
  %7618 = sub nsw i32 1597463007, %7617
  %7619 = bitcast i32 %7618 to float
  %7620 = fmul fast float %7619, %7287
  %7621 = fmul fast float %7619, %7288
  %7622 = fmul fast float %7619, %7289
  %7623 = fsub fast float %7620, %4860
  %7624 = fsub fast float %7621, %4859
  %7625 = fsub fast float %7622, %4858
  %7626 = call float @dx.op.dot3.f32(i32 55, float %7623, float %7624, float %7625, float %7623, float %7624, float %7625)  ; Dot3(ax,ay,az,bx,by,bz)
  %7627 = call float @dx.op.unary.f32(i32 25, float %7626)  ; Rsqrt(value)
  %7628 = fmul fast float %7623, %7627
  %7629 = fmul fast float %7624, %7627
  %7630 = fmul fast float %7625, %7627
  %7631 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %7628, float %7629, float %7630)  ; Dot3(ax,ay,az,bx,by,bz)
  %7632 = fmul fast float %7631, %7631
  %7633 = call float @dx.op.unary.f32(i32 6, float %7608)  ; FAbs(value)
  %7634 = fsub fast float 1.000000e+00, %4893
  %7635 = fmul fast float %4875, %4875
  %7636 = fmul fast float %7635, %7634
  %7637 = fadd fast float %7636, %4893
  %7638 = bitcast float %7637 to i32
  %7639 = ashr i32 %7638, 1
  %7640 = add nsw i32 %7639, 532487669
  %7641 = bitcast i32 %7640 to float
  %7642 = fadd fast float %7641, %4875
  %7643 = fmul fast float %4893, %7632
  %7644 = fsub fast float 1.000000e+00, %7632
  %7645 = fadd fast float %7644, %7643
  %7646 = fmul fast float %7633, %7633
  %7647 = fmul fast float %7646, %7634
  %7648 = fadd fast float %7647, %4893
  %7649 = bitcast float %7648 to i32
  %7650 = ashr i32 %7649, 1
  %7651 = add nsw i32 %7650, 532487669
  %7652 = bitcast i32 %7651 to float
  %7653 = fadd fast float %7652, %7633
  %7654 = fmul fast float %7645, %7645
  %7655 = fmul fast float %7654, %7642
  %7656 = fmul fast float %7655, %7653
  %7657 = fdiv fast float 1.000000e+00, %7656
  %7658 = bitcast float %4893 to i32
  %7659 = sitofp i32 %7658 to float
  %7660 = fmul fast float %7659, 0x3FE7F73180000000
  %7661 = fadd fast float %7660, 0x41AFE27C40000000
  %7662 = fptosi float %7661 to i32
  %7663 = bitcast i32 %7662 to float
  %7664 = fmul fast float %7256, 0x3FD80E9D60000000
  %7665 = fmul fast float %7664, %7619
  %7666 = fadd fast float %7663, %7665
  %7667 = bitcast float %7666 to i32
  %7668 = sub nsw i32 2129859010, %7667
  %7669 = bitcast i32 %7668 to float
  %7670 = fmul fast float %4893, %7657
  %7671 = fmul fast float %7670, %7663
  %7672 = fmul fast float %7671, %7669
  %7673 = call float @dx.op.unary.f32(i32 6, float %7609)  ; FAbs(value)
  %7674 = fsub fast float 1.000000e+00, %7673
  %7675 = bitcast float %7674 to i32
  %7676 = sitofp i32 %7675 to float
  %7677 = fmul fast float %7676, 5.000000e+00
  %7678 = fadd fast float %7677, 0xC1EFBF8940000000
  %7679 = fptosi float %7678 to i32
  %7680 = bitcast i32 %7679 to float
  %7681 = fsub fast float 1.000000e+00, %4861
  %7682 = fsub fast float 1.000000e+00, %4862
  %7683 = fsub fast float 1.000000e+00, %4873
  %7684 = fmul fast float %7680, %7681
  %7685 = fmul fast float %7680, %7682
  %7686 = fmul fast float %7680, %7683
  %7687 = fadd fast float %7684, %4861
  %7688 = fadd fast float %7685, %4862
  %7689 = fadd fast float %7686, %4873
  br i1 %5012, label %7690, label %7713

; <label>:7690                                    ; preds = %7580
  %7691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4259, float %7673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.ResRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.ResRet.f32 %7691, 2
  %7695 = fadd fast float %7692, -5.000000e-01
  %7696 = fadd fast float %7693, -5.000000e-01
  %7697 = fadd fast float %7694, -5.000000e-01
  %7698 = fmul fast float %4861, 4.000000e+00
  %7699 = fmul fast float %7698, %7681
  %7700 = fmul fast float %7699, %7695
  %7701 = fmul fast float %4862, 4.000000e+00
  %7702 = fmul fast float %7701, %7682
  %7703 = fmul fast float %7702, %7696
  %7704 = fmul fast float %4873, 4.000000e+00
  %7705 = fmul fast float %7704, %7683
  %7706 = fmul fast float %7705, %7697
  %7707 = fadd fast float %7700, %7687
  %7708 = fadd fast float %7703, %7688
  %7709 = fadd fast float %7706, %7689
  %7710 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7711 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7712 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  br label %7713

; <label>:7713                                    ; preds = %7690, %7580
  %7714 = phi float [ %7710, %7690 ], [ %7687, %7580 ]
  %7715 = phi float [ %7711, %7690 ], [ %7688, %7580 ]
  %7716 = phi float [ %7712, %7690 ], [ %7689, %7580 ]
  %7717 = fmul fast float %7608, 9.843750e-01
  %7718 = fadd fast float %7717, 7.812500e-03
  %7719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7718, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7720 = extractvalue %dx.types.ResRet.f32 %7719, 2
  %7721 = extractvalue %dx.types.ResRet.f32 %7719, 3
  %7722 = fmul fast float %7720, %4861
  %7723 = fmul fast float %7720, %4862
  %7724 = fmul fast float %7720, %4873
  %7725 = fadd fast float %7722, %7721
  %7726 = fadd fast float %7723, %7721
  %7727 = fadd fast float %7724, %7721
  br i1 %5012, label %7728, label %7751

; <label>:7728                                    ; preds = %7713
  %7729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4259, float %7608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7730 = extractvalue %dx.types.ResRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.ResRet.f32 %7729, 1
  %7732 = extractvalue %dx.types.ResRet.f32 %7729, 2
  %7733 = fadd fast float %7730, -5.000000e-01
  %7734 = fadd fast float %7731, -5.000000e-01
  %7735 = fadd fast float %7732, -5.000000e-01
  %7736 = fmul fast float %4861, 4.000000e+00
  %7737 = fmul fast float %7736, %7681
  %7738 = fmul fast float %7737, %7733
  %7739 = fmul fast float %4862, 4.000000e+00
  %7740 = fmul fast float %7739, %7682
  %7741 = fmul fast float %7740, %7734
  %7742 = fmul fast float %4873, 4.000000e+00
  %7743 = fmul fast float %7742, %7683
  %7744 = fmul fast float %7743, %7735
  %7745 = fadd fast float %7738, %7725
  %7746 = fadd fast float %7741, %7726
  %7747 = fadd fast float %7744, %7727
  %7748 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  %7749 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7750 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  br label %7751

; <label>:7751                                    ; preds = %7728, %7713
  %7752 = phi float [ %7748, %7728 ], [ %7725, %7713 ]
  %7753 = phi float [ %7749, %7728 ], [ %7726, %7713 ]
  %7754 = phi float [ %7750, %7728 ], [ %7727, %7713 ]
  %7755 = call float @dx.op.binary.f32(i32 35, float %7753, float %7754)  ; FMax(a,b)
  %7756 = call float @dx.op.binary.f32(i32 35, float %7752, float %7755)  ; FMax(a,b)
  %7757 = fsub fast float 1.000000e+00, %7756
  %7758 = fmul fast float %7714, %7672
  %7759 = fmul fast float %7715, %7672
  %7760 = fmul fast float %7716, %7672
  %7761 = fsub fast float 1.000000e+00, %7609
  %7762 = bitcast float %7761 to i32
  %7763 = sitofp i32 %7762 to float
  %7764 = fmul fast float %7763, 5.000000e+00
  %7765 = fadd fast float %7764, 0xC1EFBF8940000000
  %7766 = fptosi float %7765 to i32
  %7767 = bitcast i32 %7766 to float
  %7768 = fmul fast float %7767, %4260
  %7769 = fmul fast float %7757, %7768
  %7770 = fmul fast float %7769, %5554
  %7771 = fmul fast float %7769, %5555
  %7772 = fmul fast float %7769, %5556
  %7773 = fadd fast float %7770, %7758
  %7774 = fadd fast float %7771, %7759
  %7775 = fadd fast float %7772, %7760
  %7776 = fmul fast float %7597, %4256
  %7777 = fmul fast float %7776, %7615
  %7778 = fmul fast float %7777, %7757
  %7779 = fmul fast float %7598, %4256
  %7780 = fmul fast float %7779, %7615
  %7781 = fmul fast float %7780, %7757
  %7782 = fmul fast float %7599, %4256
  %7783 = fmul fast float %7782, %7615
  %7784 = fmul fast float %7783, %7757
  %7785 = fadd fast float %7778, %7230
  %7786 = fadd fast float %7781, %7231
  %7787 = fadd fast float %7784, %7232
  %7788 = fmul fast float %7777, %7773
  %7789 = fmul fast float %7780, %7774
  %7790 = fmul fast float %7783, %7775
  %7791 = fadd fast float %7788, %7227
  %7792 = fadd fast float %7789, %7228
  %7793 = fadd fast float %7790, %7229
  br label %7359

; <label>:7794                                    ; preds = %7359
  br label %7795

; <label>:7795                                    ; preds = %7794, %7193
  %7796 = phi float [ %7195, %7193 ], [ %7360, %7794 ]
  %7797 = phi float [ %7196, %7193 ], [ %7361, %7794 ]
  %7798 = phi float [ %7197, %7193 ], [ %7362, %7794 ]
  %7799 = phi float [ %7198, %7193 ], [ %7363, %7794 ]
  %7800 = phi float [ %7199, %7193 ], [ %7364, %7794 ]
  %7801 = phi float [ %7200, %7193 ], [ %7365, %7794 ]
  %7802 = add i32 %7194, 1
  %7803 = icmp ugt i32 %7802, %7190
  br i1 %7803, label %7804, label %7193

; <label>:7804                                    ; preds = %7795
  br label %7805

; <label>:7805                                    ; preds = %7804, %7143, %7133
  %7806 = phi float [ %7134, %7133 ], [ %7134, %7143 ], [ %7796, %7804 ]
  %7807 = phi float [ %7135, %7133 ], [ %7135, %7143 ], [ %7797, %7804 ]
  %7808 = phi float [ %7136, %7133 ], [ %7136, %7143 ], [ %7798, %7804 ]
  %7809 = phi float [ %7137, %7133 ], [ %7137, %7143 ], [ %7799, %7804 ]
  %7810 = phi float [ %7138, %7133 ], [ %7138, %7143 ], [ %7800, %7804 ]
  %7811 = phi float [ %7139, %7133 ], [ %7139, %7143 ], [ %7801, %7804 ]
  %7812 = fmul fast float %4256, %4256
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = fmul fast float %7814, %5560
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7818 = fsub fast float 1.000000e+00, %4263
  %7819 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7820 = fadd fast float %7811, %4262
  %7821 = fmul fast float %7820, %4263
  %7822 = fmul fast float %7819, %7817
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7825 = fmul fast float %7809, %4864
  %7826 = fmul fast float %7810, %4865
  %7827 = fmul fast float %7811, %4866
  %7828 = fcmp fast ogt float %92, %189
  %7829 = and i1 %7828, %4666
  %7830 = or i1 %4672, %7829
  %7831 = icmp eq i32 %4665, 2
  %7832 = fcmp fast ole float %92, %189
  %7833 = and i1 %7832, %7831
  %7834 = or i1 %7833, %7830
  br i1 %7829, label %7835, label %8092

; <label>:7835                                    ; preds = %7805
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7839 = fmul fast float %7837, %104
  %7840 = fmul fast float %7838, %105
  %7841 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7842 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7843 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7841, float %7842, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = extractvalue %dx.types.ResRet.f32 %7843, 3
  %7848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7841, float %7842, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7849 = extractvalue %dx.types.ResRet.f32 %7848, 0
  %7850 = extractvalue %dx.types.ResRet.f32 %7848, 1
  %7851 = extractvalue %dx.types.ResRet.f32 %7848, 2
  %7852 = extractvalue %dx.types.ResRet.f32 %7848, 3
  %7853 = call float @dx.op.binary.f32(i32 35, float %7845, float %7846)  ; FMax(a,b)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7844, float %7853)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float %7847)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7850, float %7851)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 36, float %7849, float %7856)  ; FMin(a,b)
  %7858 = call float @dx.op.binary.f32(i32 36, float %7857, float %7852)  ; FMin(a,b)
  %7859 = fmul fast float %7855, 2.550000e+02
  %7860 = fadd fast float %7859, 0x3F70101020000000
  %7861 = fptoui float %7860 to i32
  %7862 = fmul fast float %7858, 2.550000e+02
  %7863 = fadd fast float %7862, 0x3F70101020000000
  %7864 = fptoui float %7863 to i32
  %7865 = icmp ult i32 %7861, %7864
  br i1 %7865, label %7866, label %8034

; <label>:7866                                    ; preds = %7835
  %7867 = fcmp fast ogt float %91, 9.843750e-01
  %7868 = fadd fast float %92, -4.000000e+00
  %7869 = select i1 %7867, float -4.000000e+00, float %7868
  %7870 = call float @dx.op.binary.f32(i32 35, float %7869, float 0.000000e+00)  ; FMax(a,b)
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = fadd fast float %7872, %7870
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 2
  %7875 = fmul fast float %7873, %7874
  %7876 = call float @dx.op.unary.f32(i32 23, float %7875)  ; Log(value)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7871, 3
  %7878 = fmul fast float %7877, %7876
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7881 = fmul fast float %7878, %7880
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = uitofp i32 %7861 to float
  %7884 = uitofp i32 %7864 to float
  %7885 = fadd fast float %7883, 5.000000e-01
  %7886 = fadd fast float %7884, 5.000000e-01
  %7887 = fmul fast float %7880, %7885
  %7888 = fmul fast float %7880, %7886
  %7889 = fadd fast float %7887, 0x3F0FFB4800000000
  %7890 = fadd fast float %7888, 0xBF0FFB4800000000
  %7891 = call float @dx.op.binary.f32(i32 35, float %7882, float %7889)  ; FMax(a,b)
  %7892 = call float @dx.op.binary.f32(i32 36, float %7891, float %7890)  ; FMin(a,b)
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7897 = fmul fast float %7894, %7892
  %7898 = fadd fast float %7896, %7897
  %7899 = fadd fast float %7896, %7895
  %7900 = fsub fast float %7894, %7895
  %7901 = fadd fast float %7900, %7896
  %7902 = call float @dx.op.binary.f32(i32 35, float %7898, float %7899)  ; FMax(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7902, float %7901)  ; FMin(a,b)
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7841, float %7842, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.ResRet.f32 %7904, 2
  %7908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.i32 %7908, 0
  %7910 = extractvalue %dx.types.CBufRet.i32 %7908, 1
  %7911 = uitofp i32 %7909 to float
  %7912 = uitofp i32 %7910 to float
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %7915 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7916 = fmul fast float %7911, %7841
  %7917 = fmul fast float %7912, %7842
  %7918 = fadd fast float %7916, -5.000000e-01
  %7919 = fadd fast float %7917, -5.000000e-01
  %7920 = call float @dx.op.unary.f32(i32 22, float %7918)  ; Frc(value)
  %7921 = call float @dx.op.unary.f32(i32 22, float %7919)  ; Frc(value)
  %7922 = fmul fast float %7920, %7920
  %7923 = fmul fast float %7922, %7920
  %7924 = fsub fast float 3.000000e+00, %7920
  %7925 = fmul fast float %7922, %7924
  %7926 = fmul fast float %7920, 3.000000e+00
  %7927 = fmul fast float %7923, 3.000000e+00
  %7928 = fmul fast float %7922, 6.000000e+00
  %7929 = fsub fast float %7927, %7928
  %7930 = fadd fast float %7929, 4.000000e+00
  %7931 = fmul fast float %7930, 0x3FC5555560000000
  %7932 = fmul fast float %7923, -3.000000e+00
  %7933 = fadd fast float %7922, %7920
  %7934 = fmul fast float %7933, 3.000000e+00
  %7935 = fadd fast float %7932, 1.000000e+00
  %7936 = fadd fast float %7935, %7934
  %7937 = fmul fast float %7923, 0x3FC5555560000000
  %7938 = fmul fast float %7921, %7921
  %7939 = fmul fast float %7938, %7921
  %7940 = fsub fast float 3.000000e+00, %7921
  %7941 = fmul fast float %7938, %7940
  %7942 = fmul fast float %7921, 3.000000e+00
  %7943 = fmul fast float %7939, 3.000000e+00
  %7944 = fmul fast float %7938, 6.000000e+00
  %7945 = fsub fast float %7943, %7944
  %7946 = fadd fast float %7945, 4.000000e+00
  %7947 = fmul fast float %7946, 0x3FC5555560000000
  %7948 = fmul fast float %7939, -3.000000e+00
  %7949 = fadd fast float %7938, %7921
  %7950 = fmul fast float %7949, 3.000000e+00
  %7951 = fadd fast float %7948, 1.000000e+00
  %7952 = fadd fast float %7951, %7950
  %7953 = fmul fast float %7939, 0x3FC5555560000000
  %7954 = fadd fast float %7920, 1.000000e+00
  %7955 = fsub fast float 1.000000e+00, %7926
  %7956 = fadd fast float %7955, %7925
  %7957 = fadd fast float %7956, %7930
  %7958 = fmul fast float %7957, 0x3FC5555560000000
  %7959 = fdiv fast float %7931, %7958
  %7960 = fsub fast float %7954, %7959
  %7961 = fsub fast float 1.000000e+00, %7920
  %7962 = fadd fast float %7936, %7923
  %7963 = fmul fast float %7962, 0x3FC5555560000000
  %7964 = fdiv fast float %7937, %7963
  %7965 = fadd fast float %7961, %7964
  %7966 = fadd fast float %7921, 1.000000e+00
  %7967 = fsub fast float 1.000000e+00, %7942
  %7968 = fadd fast float %7967, %7941
  %7969 = fadd fast float %7968, %7946
  %7970 = fmul fast float %7969, 0x3FC5555560000000
  %7971 = fdiv fast float %7947, %7970
  %7972 = fsub fast float %7966, %7971
  %7973 = fsub fast float 1.000000e+00, %7921
  %7974 = fadd fast float %7952, %7939
  %7975 = fmul fast float %7974, 0x3FC5555560000000
  %7976 = fdiv fast float %7953, %7975
  %7977 = fadd fast float %7976, %7973
  %7978 = fmul fast float %7960, %7914
  %7979 = fsub fast float %7841, %7978
  %7980 = fmul fast float %7965, %7914
  %7981 = fadd fast float %7980, %7841
  %7982 = fmul fast float %7977, %7915
  %7983 = fadd fast float %7982, %7842
  %7984 = fmul fast float %7972, %7915
  %7985 = fsub fast float %7842, %7984
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7979, float %7985, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.ResRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.ResRet.f32 %7986, 2
  %7990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7981, float %7985, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7991 = extractvalue %dx.types.ResRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.ResRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.ResRet.f32 %7990, 2
  %7994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7979, float %7983, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7995 = extractvalue %dx.types.ResRet.f32 %7994, 0
  %7996 = extractvalue %dx.types.ResRet.f32 %7994, 1
  %7997 = extractvalue %dx.types.ResRet.f32 %7994, 2
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7981, float %7983, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8002 = fsub fast float %7995, %7987
  %8003 = fsub fast float %7996, %7988
  %8004 = fsub fast float %7997, %7989
  %8005 = fmul fast float %8002, %7975
  %8006 = fmul fast float %8003, %7975
  %8007 = fmul fast float %8004, %7975
  %8008 = fadd fast float %8005, %7987
  %8009 = fadd fast float %8006, %7988
  %8010 = fadd fast float %8007, %7989
  %8011 = fsub fast float %7999, %7991
  %8012 = fsub fast float %8000, %7992
  %8013 = fsub fast float %8001, %7993
  %8014 = fmul fast float %8011, %7975
  %8015 = fmul fast float %8012, %7975
  %8016 = fmul fast float %8013, %7975
  %8017 = fsub fast float %7991, %8008
  %8018 = fadd fast float %8017, %8014
  %8019 = fsub fast float %7992, %8009
  %8020 = fadd fast float %8019, %8015
  %8021 = fsub fast float %7993, %8010
  %8022 = fadd fast float %8021, %8016
  %8023 = fmul fast float %8018, %7963
  %8024 = fmul fast float %8020, %7963
  %8025 = fmul fast float %8022, %7963
  %8026 = fadd fast float %8023, %8008
  %8027 = fadd fast float %8024, %8009
  %8028 = fadd fast float %8025, %8010
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8031 = fmul fast float %8026, %8030
  %8032 = fmul fast float %8027, %8030
  %8033 = fmul fast float %8028, %8030
  br label %8034

; <label>:8034                                    ; preds = %7866, %7835
  %8035 = phi float [ %7905, %7866 ], [ 1.000000e+00, %7835 ]
  %8036 = phi float [ %7906, %7866 ], [ 1.000000e+00, %7835 ]
  %8037 = phi float [ %7907, %7866 ], [ 1.000000e+00, %7835 ]
  %8038 = phi float [ %8031, %7866 ], [ 0.000000e+00, %7835 ]
  %8039 = phi float [ %8032, %7866 ], [ 0.000000e+00, %7835 ]
  %8040 = phi float [ %8033, %7866 ], [ 0.000000e+00, %7835 ]
  %8041 = fmul fast float %8038, %7812
  %8042 = fmul fast float %8039, %7812
  %8043 = fmul fast float %8040, %7812
  %8044 = call float @dx.op.dot3.f32(i32 55, float %8035, float %8036, float %8037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = call float @dx.op.dot3.f32(i32 55, float %8041, float %8042, float %8043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8046 = select i1 %229, float %8044, float %8035
  %8047 = select i1 %229, float %8044, float %8036
  %8048 = select i1 %229, float 1.000000e+00, float %8037
  %8049 = select i1 %229, float %8045, float %8041
  %8050 = select i1 %229, float 0.000000e+00, float %8042
  %8051 = select i1 %229, float 0.000000e+00, float %8043
  %8052 = fmul fast float %8046, %7825
  %8053 = fmul fast float %8047, %7826
  %8054 = fmul fast float %8048, %7827
  %8055 = fadd fast float %8052, %8049
  %8056 = fadd fast float %8053, %8050
  %8057 = fadd fast float %8051, %8054
  %8058 = fmul fast float %8046, %7806
  %8059 = fmul fast float %8047, %7807
  %8060 = fmul fast float %8048, %7808
  %8061 = fmul fast float %137, %7837
  %8062 = fmul fast float %139, %7838
  %8063 = fsub fast float 1.000000e+00, %8061
  %8064 = fsub fast float 1.000000e+00, %8062
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.CBufRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8069 = fmul fast float %8063, %8066
  %8070 = fmul fast float %8063, %8067
  %8071 = fmul fast float %8063, %8068
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 0
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 1
  %8075 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8076 = fmul fast float %8064, %8073
  %8077 = fmul fast float %8064, %8074
  %8078 = fmul fast float %8064, %8075
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8083 = fadd fast float %8076, %8080
  %8084 = fadd fast float %8083, %8069
  %8085 = fadd fast float %8077, %8081
  %8086 = fadd fast float %8085, %8070
  %8087 = fadd fast float %8078, %8082
  %8088 = fadd fast float %8087, %8071
  %8089 = fmul fast float %8084, %189
  %8090 = fmul fast float %8086, %189
  %8091 = fmul fast float %8088, %189
  br label %8092

; <label>:8092                                    ; preds = %8034, %7805
  %8093 = phi float [ %8089, %8034 ], [ %167, %7805 ]
  %8094 = phi float [ %8090, %8034 ], [ %168, %7805 ]
  %8095 = phi float [ %8091, %8034 ], [ %169, %7805 ]
  %8096 = phi float [ %189, %8034 ], [ %92, %7805 ]
  %8097 = phi float [ %8055, %8034 ], [ %7825, %7805 ]
  %8098 = phi float [ %8056, %8034 ], [ %7826, %7805 ]
  %8099 = phi float [ %8057, %8034 ], [ %7827, %7805 ]
  %8100 = phi float [ %8058, %8034 ], [ %7806, %7805 ]
  %8101 = phi float [ %8059, %8034 ], [ %7807, %7805 ]
  %8102 = phi float [ %8060, %8034 ], [ %7808, %7805 ]
  %8103 = phi float [ %8035, %8034 ], [ 1.000000e+00, %7805 ]
  br i1 %7834, label %9258, label %8104

; <label>:8104                                    ; preds = %8092
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8114 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = extractvalue %dx.types.CBufRet.f32 %8115, 3
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 3
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8130 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8131 = extractvalue %dx.types.CBufRet.f32 %8127, 2
  %8132 = fcmp fast olt float %8131, -5.000000e-01
  %8133 = call float @dx.op.dot3.f32(i32 55, float %8093, float %8094, float %8095, float %8093, float %8094, float %8095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8134 = call float @dx.op.unary.f32(i32 25, float %8133)  ; Rsqrt(value)
  %8135 = fmul fast float %8134, %8133
  %8136 = fmul fast float %8134, %8093
  %8137 = fmul fast float %8134, %8094
  %8138 = fmul fast float %8134, %8095
  %8139 = fadd fast float %8135, %8109
  %8140 = call float @dx.op.dot3.f32(i32 55, float %8136, float %8137, float %8138, float %8106, float %8107, float %8108)  ; Dot3(ax,ay,az,bx,by,bz)
  %8141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.i32 %8141, 1
  %8143 = and i32 %8142, 1
  %8144 = icmp ne i32 %8143, 0
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8147 = fcmp fast ogt float %8146, 0.000000e+00
  %8148 = and i1 %8144, %8147
  br i1 %8148, label %8149, label %8555, !dx.controlflow.hints !134

; <label>:8149                                    ; preds = %8104
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 3
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 2
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8156 = fsub fast float %8153, %8155
  %8157 = and i32 %8142, 2
  %8158 = extractvalue %dx.types.CBufRet.i32 %8141, 0
  %8159 = call i32 @dx.op.binary.i32(i32 40, i32 %8158, i32 3)  ; UMin(a,b)
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8164 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8165 = fsub fast float %8161, %8163
  %8166 = fsub fast float %8162, %8164
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  %8170 = fsub fast float -0.000000e+00, %8165
  %8171 = fsub fast float -0.000000e+00, %8166
  %8172 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8136, float %8137)  ; Dot2(ax,ay,bx,by)
  %8173 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8170, float %8171)  ; Dot2(ax,ay,bx,by)
  %8174 = fmul fast float %8173, 2.000000e+00
  %8175 = call float @dx.op.dot2.f32(i32 54, float %8170, float %8171, float %8170, float %8171)  ; Dot2(ax,ay,bx,by)
  %8176 = fmul fast float %8168, %8168
  %8177 = fsub fast float %8175, %8176
  %8178 = fmul fast float %8174, %8174
  %8179 = fmul fast float %8172, 4.000000e+00
  %8180 = fmul fast float %8179, %8177
  %8181 = fsub fast float %8178, %8180
  %8182 = fcmp fast ogt float %8181, 0.000000e+00
  br i1 %8182, label %8183, label %8198

; <label>:8183                                    ; preds = %8149
  %8184 = fcmp fast ogt float %8174, 0.000000e+00
  %8185 = call float @dx.op.unary.f32(i32 24, float %8181)  ; Sqrt(value)
  %8186 = fsub fast float -0.000000e+00, %8185
  %8187 = select i1 %8184, float %8185, float %8186
  %8188 = fadd fast float %8187, %8174
  %8189 = fmul float %8188, -5.000000e-01
  %8190 = fdiv fast float %8189, %8172
  %8191 = call float @dx.op.binary.f32(i32 35, float %8190, float 0.000000e+00)  ; FMax(a,b)
  %8192 = call float @dx.op.binary.f32(i32 36, float %8135, float %8191)  ; FMin(a,b)
  %8193 = fdiv fast float %8177, %8189
  %8194 = call float @dx.op.binary.f32(i32 35, float %8193, float 0.000000e+00)  ; FMax(a,b)
  %8195 = call float @dx.op.binary.f32(i32 36, float %8135, float %8194)  ; FMin(a,b)
  %8196 = call float @dx.op.binary.f32(i32 36, float %8192, float %8195)  ; FMin(a,b)
  %8197 = call float @dx.op.binary.f32(i32 35, float %8192, float %8195)  ; FMax(a,b)
  br label %8198

; <label>:8198                                    ; preds = %8183, %8149
  %8199 = phi float [ %8197, %8183 ], [ -1.000000e+00, %8149 ]
  %8200 = phi float [ %8196, %8183 ], [ -1.000000e+00, %8149 ]
  %8201 = phi i1 [ true, %8183 ], [ false, %8149 ]
  %8202 = and i1 %8169, %8201
  br i1 %8202, label %8203, label %8205

; <label>:8203                                    ; preds = %8198
  %8204 = fcmp fast oeq float %8200, %8199
  br i1 %8204, label %8508, label %8206

; <label>:8205                                    ; preds = %8198
  br i1 %8169, label %8508, label %8206

; <label>:8206                                    ; preds = %8205, %8203
  %8207 = phi float [ %8135, %8205 ], [ %8199, %8203 ]
  %8208 = phi float [ 0.000000e+00, %8205 ], [ %8200, %8203 ]
  %8209 = icmp ne i32 %8157, 0
  %8210 = fmul fast float %8207, %8138
  %8211 = fadd fast float %8210, %8151
  %8212 = fmul fast float %8211, %8207
  %8213 = select i1 %8209, float 0.000000e+00, float %8212
  %8214 = fcmp fast oeq float %8138, 0.000000e+00
  %8215 = fdiv fast float %8156, %8138
  %8216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8215)  ; FMax(a,b)
  %8217 = select i1 %8214, float %8207, float %8216
  %8218 = call float @dx.op.binary.f32(i32 36, float %8207, float %8217)  ; FMin(a,b)
  %8219 = fcmp fast ogt float %8138, 0.000000e+00
  %8220 = fcmp fast olt float %8156, 0.000000e+00
  br i1 %8219, label %8221, label %8278

; <label>:8221                                    ; preds = %8206
  %8222 = icmp eq i32 %8157, 0
  br i1 %8220, label %8223, label %8267

; <label>:8223                                    ; preds = %8221
  %8224 = select i1 %8222, float %8207, float 0.000000e+00
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = call float @dx.op.unary.f32(i32 6, float %8225)  ; FAbs(value)
  %8227 = fmul fast float %8224, %8138
  %8228 = fadd fast float %8227, %8151
  %8229 = fmul fast float %8226, %8228
  %8230 = fsub fast float %8213, %8229
  %8231 = fsub fast float %8207, %8226
  %8232 = select i1 %8222, float %8231, float 0.000000e+00
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8241 = extractvalue %dx.types.CBufRet.f32 %8237, 3
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8244 = call float @dx.op.binary.f32(i32 36, float %8230, float %8243)  ; FMin(a,b)
  %8245 = fmul fast float %8241, %8232
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = fsub fast float %8238, %8234
  %8248 = fsub fast float %8239, %8235
  %8249 = fsub fast float %8240, %8236
  %8250 = fmul fast float %8246, %8247
  %8251 = fmul fast float %8246, %8248
  %8252 = fmul fast float %8246, %8249
  %8253 = fadd fast float %8250, %8234
  %8254 = fadd fast float %8251, %8235
  %8255 = fadd fast float %8252, %8236
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = fadd fast float %8258, %8257
  %8260 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8262 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8263 = fadd fast float %8262, %8261
  %8264 = call float @dx.op.unary.f32(i32 7, float %8263)  ; Saturate(value)
  %8265 = fmul fast float %8260, %8244
  %8266 = fmul fast float %8265, %8264
  br label %8508

; <label>:8267                                    ; preds = %8221
  br i1 %8222, label %8268, label %8289

; <label>:8268                                    ; preds = %8267
  %8269 = call float @dx.op.binary.f32(i32 36, float %8218, float %8208)  ; FMin(a,b)
  %8270 = fsub fast float %8218, %8269
  %8271 = fsub fast float %8270, %8207
  %8272 = call float @dx.op.unary.f32(i32 6, float %8271)  ; FAbs(value)
  %8273 = fadd fast float %8270, %8207
  %8274 = fmul fast float %8273, %8138
  %8275 = fadd fast float %8274, %8151
  %8276 = fmul fast float %8275, %8272
  %8277 = fsub fast float %8213, %8276
  br label %8289

; <label>:8278                                    ; preds = %8206
  br i1 %8220, label %8279, label %8289

; <label>:8279                                    ; preds = %8278
  %8280 = call float @dx.op.binary.f32(i32 35, float %8208, float %8218)  ; FMax(a,b)
  %8281 = icmp eq i32 %8157, 0
  %8282 = select i1 %8281, float %8218, float 0.000000e+00
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = call float @dx.op.unary.f32(i32 6, float %8283)  ; FAbs(value)
  %8285 = fmul fast float %8282, %8138
  %8286 = fadd fast float %8285, %8151
  %8287 = fmul fast float %8284, %8286
  %8288 = fsub fast float %8213, %8287
  br label %8289

; <label>:8289                                    ; preds = %8279, %8278, %8268, %8267
  %8290 = phi float [ %8208, %8267 ], [ %8208, %8268 ], [ %8280, %8279 ], [ %8208, %8278 ]
  %8291 = phi float [ 0.000000e+00, %8267 ], [ %8272, %8268 ], [ %8284, %8279 ], [ 0.000000e+00, %8278 ]
  %8292 = phi float [ %8213, %8267 ], [ %8277, %8268 ], [ %8288, %8279 ], [ %8213, %8278 ]
  %8293 = phi float [ %8218, %8267 ], [ %8218, %8268 ], [ %8207, %8279 ], [ %8207, %8278 ]
  %8294 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8294, align 4, !tbaa !121, !noalias !135
  %8295 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8295, align 4, !tbaa !121, !noalias !135
  %8296 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8296, align 4, !tbaa !121, !noalias !135
  %8297 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8297, align 4, !tbaa !121, !noalias !135
  %8298 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8298, align 4, !tbaa !121, !noalias !135
  %8299 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8299, align 4, !tbaa !121, !noalias !135
  %8300 = icmp sgt i32 %8159, 0
  br i1 %8300, label %8301, label %8362

; <label>:8301                                    ; preds = %8289
  br label %8302

; <label>:8302                                    ; preds = %8351, %8301
  %8303 = phi i32 [ %8352, %8351 ], [ 0, %8301 ]
  %8304 = phi i32 [ %8353, %8351 ], [ 0, %8301 ]
  %8305 = add nuw i32 %8304, 171
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8305)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 0
  %8311 = extractvalue %dx.types.CBufRet.f32 %8309, 1
  %8312 = fsub fast float %8307, %8310
  %8313 = fsub fast float %8308, %8311
  %8314 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8315 = fsub fast float -0.000000e+00, %8312
  %8316 = fsub fast float -0.000000e+00, %8313
  %8317 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8318 = fmul fast float %8317, 2.000000e+00
  %8319 = call float @dx.op.dot2.f32(i32 54, float %8315, float %8316, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8320 = fmul fast float %8314, %8314
  %8321 = fsub fast float %8319, %8320
  %8322 = fmul fast float %8318, %8318
  %8323 = fmul fast float %8179, %8321
  %8324 = fsub fast float %8322, %8323
  %8325 = fcmp fast ogt float %8324, 0.000000e+00
  br i1 %8325, label %8326, label %8341

; <label>:8326                                    ; preds = %8302
  %8327 = fcmp fast ogt float %8318, 0.000000e+00
  %8328 = call float @dx.op.unary.f32(i32 24, float %8324)  ; Sqrt(value)
  %8329 = fsub fast float -0.000000e+00, %8328
  %8330 = select i1 %8327, float %8328, float %8329
  %8331 = fadd fast float %8330, %8318
  %8332 = fmul float %8331, -5.000000e-01
  %8333 = fdiv fast float %8332, %8172
  %8334 = call float @dx.op.binary.f32(i32 35, float %8333, float 0.000000e+00)  ; FMax(a,b)
  %8335 = call float @dx.op.binary.f32(i32 36, float %8207, float %8334)  ; FMin(a,b)
  %8336 = fdiv fast float %8321, %8332
  %8337 = call float @dx.op.binary.f32(i32 35, float %8336, float 0.000000e+00)  ; FMax(a,b)
  %8338 = call float @dx.op.binary.f32(i32 36, float %8207, float %8337)  ; FMin(a,b)
  %8339 = call float @dx.op.binary.f32(i32 36, float %8335, float %8338)  ; FMin(a,b)
  %8340 = call float @dx.op.binary.f32(i32 35, float %8335, float %8338)  ; FMax(a,b)
  br label %8341

; <label>:8341                                    ; preds = %8326, %8302
  %8342 = phi float [ %8340, %8326 ], [ -1.000000e+00, %8302 ]
  %8343 = phi float [ %8339, %8326 ], [ -1.000000e+00, %8302 ]
  %8344 = phi i1 [ true, %8326 ], [ false, %8302 ]
  br i1 %8344, label %8345, label %8351

; <label>:8345                                    ; preds = %8341
  %8346 = call float @dx.op.binary.f32(i32 35, float %8290, float %8343)  ; FMax(a,b)
  %8347 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8304
  store float %8346, float* %8347, align 4, !tbaa !121, !noalias !135
  %8348 = call float @dx.op.binary.f32(i32 35, float %8290, float %8342)  ; FMax(a,b)
  %8349 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8304
  store float %8348, float* %8349, align 4, !tbaa !121, !noalias !135
  %8350 = add nsw i32 %8303, 1
  br label %8351

; <label>:8351                                    ; preds = %8345, %8341
  %8352 = phi i32 [ %8350, %8345 ], [ %8303, %8341 ]
  %8353 = add nuw nsw i32 %8304, 1
  %8354 = icmp eq i32 %8353, %8159
  br i1 %8354, label %8355, label %8302

; <label>:8355                                    ; preds = %8351
  %8356 = load float, float* %8296, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8357 = load float, float* %8295, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  %8358 = load float, float* %8294, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  %8359 = load float, float* %8299, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8360 = load float, float* %8298, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  %8361 = load float, float* %8297, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  br label %8362

; <label>:8362                                    ; preds = %8355, %8289
  %8363 = phi float [ -1.000000e+00, %8289 ], [ %8361, %8355 ]
  %8364 = phi float [ -1.000000e+00, %8289 ], [ %8360, %8355 ]
  %8365 = phi float [ -1.000000e+00, %8289 ], [ %8359, %8355 ]
  %8366 = phi float [ -1.000000e+00, %8289 ], [ %8358, %8355 ]
  %8367 = phi float [ -1.000000e+00, %8289 ], [ %8357, %8355 ]
  %8368 = phi float [ -1.000000e+00, %8289 ], [ %8356, %8355 ]
  %8369 = phi i32 [ 0, %8289 ], [ %8352, %8355 ]
  %8370 = call float @dx.op.binary.f32(i32 36, float %8367, float %8368)  ; FMin(a,b)
  %8371 = call float @dx.op.binary.f32(i32 36, float %8366, float %8370)  ; FMin(a,b)
  %8372 = call float @dx.op.binary.f32(i32 35, float %8366, float %8367)  ; FMax(a,b)
  %8373 = call float @dx.op.binary.f32(i32 36, float %8372, float %8368)  ; FMin(a,b)
  %8374 = call float @dx.op.binary.f32(i32 36, float %8366, float %8367)  ; FMin(a,b)
  %8375 = call float @dx.op.binary.f32(i32 35, float %8374, float %8373)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 35, float %8367, float %8368)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %8366, float %8376)  ; FMax(a,b)
  store float %8371, float* %8294, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  store float %8375, float* %8295, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8377, float* %8296, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8378 = call float @dx.op.binary.f32(i32 36, float %8364, float %8365)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8363, float %8378)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %8363, float %8364)  ; FMax(a,b)
  %8381 = call float @dx.op.binary.f32(i32 36, float %8380, float %8365)  ; FMin(a,b)
  %8382 = call float @dx.op.binary.f32(i32 36, float %8363, float %8364)  ; FMin(a,b)
  %8383 = call float @dx.op.binary.f32(i32 35, float %8382, float %8381)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 35, float %8364, float %8365)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8363, float %8384)  ; FMax(a,b)
  store float %8379, float* %8297, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  store float %8383, float* %8298, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  store float %8385, float* %8299, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8386 = sub nsw i32 3, %8369
  %8387 = icmp sgt i32 %8386, 2
  br i1 %8387, label %8388, label %8426

; <label>:8388                                    ; preds = %8362
  %8389 = icmp eq i32 %8157, 0
  %8390 = fsub fast float %8207, %8291
  %8391 = select i1 %8389, float %8390, float %8291
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.CBufRet.f32 %8392, 1
  %8395 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8400 = extractvalue %dx.types.CBufRet.f32 %8396, 3
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8403 = call float @dx.op.binary.f32(i32 36, float %8292, float %8402)  ; FMin(a,b)
  %8404 = fmul fast float %8400, %8391
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  %8406 = fsub fast float %8397, %8393
  %8407 = fsub fast float %8398, %8394
  %8408 = fsub fast float %8399, %8395
  %8409 = fmul fast float %8405, %8406
  %8410 = fmul fast float %8405, %8407
  %8411 = fmul fast float %8405, %8408
  %8412 = fadd fast float %8409, %8393
  %8413 = fadd fast float %8410, %8394
  %8414 = fadd fast float %8411, %8395
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = fadd fast float %8417, %8416
  %8419 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8421 = extractvalue %dx.types.CBufRet.f32 %8415, 3
  %8422 = fadd fast float %8421, %8420
  %8423 = call float @dx.op.unary.f32(i32 7, float %8422)  ; Saturate(value)
  %8424 = fmul fast float %8419, %8403
  %8425 = fmul fast float %8424, %8423
  br label %8508

; <label>:8426                                    ; preds = %8362
  %8427 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8386
  %8428 = load float, float* %8427, align 4, !tbaa !121, !noalias !135
  %8429 = fcmp fast olt float %8428, %8293
  %8430 = icmp sgt i32 %8369, 0
  %8431 = and i1 %8430, %8429
  br i1 %8431, label %8432, label %8469

; <label>:8432                                    ; preds = %8426
  br label %8433

; <label>:8433                                    ; preds = %8462, %8432
  %8434 = phi float [ %8463, %8462 ], [ %8291, %8432 ]
  %8435 = phi float [ %8464, %8462 ], [ %8292, %8432 ]
  %8436 = phi float [ %8444, %8462 ], [ %8428, %8432 ]
  %8437 = phi i32 [ %8441, %8462 ], [ %8386, %8432 ]
  %8438 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8437
  %8439 = load float, float* %8438, align 4, !tbaa !121, !noalias !135
  %8440 = icmp slt i32 %8437, 2
  %8441 = add nsw i32 %8437, 1
  %8442 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8441
  %8443 = load float, float* %8442, align 4, !tbaa !121, !noalias !135
  %8444 = select i1 %8440, float %8443, float %8207
  %8445 = call float @dx.op.binary.f32(i32 36, float %8444, float %8439)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8293, float %8445)  ; FMin(a,b)
  %8447 = icmp eq i32 %8157, 0
  %8448 = fadd fast float %8446, %8436
  %8449 = fmul fast float %8448, %8138
  %8450 = fadd fast float %8449, %8151
  br i1 %8447, label %8456, label %8451

; <label>:8451                                    ; preds = %8433
  %8452 = fsub fast float %8446, %8436
  %8453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8452)  ; FMax(a,b)
  %8454 = fmul fast float %8453, %8450
  %8455 = fadd fast float %8454, %8435
  br label %8462

; <label>:8456                                    ; preds = %8433
  %8457 = fsub fast float %8436, %8446
  %8458 = call float @dx.op.unary.f32(i32 6, float %8457)  ; FAbs(value)
  %8459 = fadd fast float %8458, %8434
  %8460 = fmul fast float %8458, %8450
  %8461 = fsub fast float %8435, %8460
  br label %8462

; <label>:8462                                    ; preds = %8456, %8451
  %8463 = phi float [ %8453, %8451 ], [ %8459, %8456 ]
  %8464 = phi float [ %8455, %8451 ], [ %8461, %8456 ]
  %8465 = fcmp fast olt float %8444, %8293
  %8466 = icmp slt i32 %8441, 3
  %8467 = and i1 %8466, %8465
  br i1 %8467, label %8433, label %8468

; <label>:8468                                    ; preds = %8462
  br label %8469

; <label>:8469                                    ; preds = %8468, %8426
  %8470 = phi float [ %8291, %8426 ], [ %8463, %8468 ]
  %8471 = phi float [ %8292, %8426 ], [ %8464, %8468 ]
  %8472 = fsub fast float %8207, %8470
  %8473 = select i1 %8209, float %8470, float %8472
  %8474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.CBufRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.CBufRet.f32 %8474, 2
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8485 = call float @dx.op.binary.f32(i32 36, float %8471, float %8484)  ; FMin(a,b)
  %8486 = fmul fast float %8482, %8473
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fsub fast float %8479, %8475
  %8489 = fsub fast float %8480, %8476
  %8490 = fsub fast float %8481, %8477
  %8491 = fmul fast float %8487, %8488
  %8492 = fmul fast float %8487, %8489
  %8493 = fmul fast float %8487, %8490
  %8494 = fadd fast float %8491, %8475
  %8495 = fadd fast float %8492, %8476
  %8496 = fadd fast float %8493, %8477
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = fadd fast float %8499, %8498
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8503 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8504 = fadd fast float %8503, %8502
  %8505 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  %8506 = fmul fast float %8501, %8485
  %8507 = fmul fast float %8506, %8505
  br label %8508

; <label>:8508                                    ; preds = %8469, %8388, %8223, %8205, %8203
  %8509 = phi float [ %8232, %8223 ], [ %8391, %8388 ], [ %8473, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8510 = phi float [ %8266, %8223 ], [ %8425, %8388 ], [ %8507, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8511 = phi float [ %8253, %8223 ], [ %8412, %8388 ], [ %8494, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8512 = phi float [ %8254, %8223 ], [ %8413, %8388 ], [ %8495, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8513 = phi float [ %8255, %8223 ], [ %8414, %8388 ], [ %8496, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8514 = fmul fast float %8146, %8510
  %8515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.f32 %8515, 2
  %8517 = fsub fast float %8153, %8516
  %8518 = fcmp fast olt float %8514, -2.000000e+01
  %8519 = call float @dx.op.unary.f32(i32 21, float %8514)  ; Exp(value)
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8523, 2
  %8525 = fmul fast float %8522, %8517
  %8526 = call float @dx.op.unary.f32(i32 7, float %8525)  ; Saturate(value)
  %8527 = fsub fast float 1.000000e+00, %8526
  %8528 = fmul fast float %8138, 5.000000e-01
  %8529 = fadd fast float %8528, 5.000000e-01
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fsub fast float 1.000000e+00, %8530
  %8532 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8527)  ; FMax(a,b)
  %8533 = fdiv fast float %8531, %8532
  %8534 = fsub fast float %8517, %8095
  %8535 = call float @dx.op.unary.f32(i32 6, float %8534)  ; FAbs(value)
  %8536 = fmul fast float %8535, %8521
  %8537 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8538 = fsub fast float 1.000000e+00, %8536
  %8539 = fmul fast float %8538, %8537
  %8540 = fadd fast float %8539, %8536
  %8541 = fmul fast float %8524, %8517
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = fsub fast float 1.000000e+00, %8540
  %8544 = fmul fast float %8543, %8542
  %8545 = fadd fast float %8544, %8540
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = fadd fast float %8519, -1.000000e+00
  %8548 = select i1 %8518, float -1.000000e+00, float %8547
  %8549 = fmul fast float %8546, %8548
  %8550 = fadd fast float %8549, 1.000000e+00
  %8551 = fsub fast float -0.000000e+00, %8549
  %8552 = fmul fast float %8511, %8551
  %8553 = fmul fast float %8512, %8551
  %8554 = fmul fast float %8513, %8551
  br label %8555

; <label>:8555                                    ; preds = %8508, %8104
  %8556 = phi float [ %8509, %8508 ], [ 0.000000e+00, %8104 ]
  %8557 = phi float [ %8550, %8508 ], [ 1.000000e+00, %8104 ]
  %8558 = phi float [ %8552, %8508 ], [ 0.000000e+00, %8104 ]
  %8559 = phi float [ %8553, %8508 ], [ 0.000000e+00, %8104 ]
  %8560 = phi float [ %8554, %8508 ], [ 0.000000e+00, %8104 ]
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8563 = fsub fast float 1.000000e+00, %8557
  %8564 = fmul fast float %8563, %8139
  %8565 = fmul fast float %8564, %8562
  %8566 = fsub fast float %8139, %8565
  br i1 %8132, label %8567, label %8596, !dx.controlflow.hints !171

; <label>:8567                                    ; preds = %8555
  %8568 = fmul fast float %8140, %8129
  %8569 = fadd fast float %8568, %8130
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = fmul fast float %8111, %8566
  %8572 = fsub fast float -0.000000e+00, %8571
  %8573 = fmul fast float %8112, %8566
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = call float @dx.op.unary.f32(i32 21, float %8572)  ; Exp(value)
  %8576 = call float @dx.op.unary.f32(i32 21, float %8574)  ; Exp(value)
  %8577 = call float @dx.op.binary.f32(i32 35, float %8119, float %8575)  ; FMax(a,b)
  %8578 = call float @dx.op.binary.f32(i32 35, float %8119, float %8576)  ; FMax(a,b)
  %8579 = fsub fast float %8578, %8577
  %8580 = fmul fast float %8579, %8570
  %8581 = fadd fast float %8580, %8577
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = fsub fast float %8116, %8121
  %8584 = fsub fast float %8117, %8122
  %8585 = fsub fast float %8118, %8123
  %8586 = fmul fast float %8570, %8583
  %8587 = fmul fast float %8570, %8584
  %8588 = fmul fast float %8570, %8585
  %8589 = fadd fast float %8586, %8121
  %8590 = fadd fast float %8587, %8122
  %8591 = fadd fast float %8588, %8123
  %8592 = fsub fast float 1.000000e+00, %8582
  %8593 = fmul fast float %8592, %8589
  %8594 = fmul fast float %8592, %8590
  %8595 = fmul fast float %8592, %8591
  br label %8655

; <label>:8596                                    ; preds = %8555
  %8597 = fmul fast float %8566, %8128
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = fsub fast float 2.000000e+00, %8598
  %8600 = fmul fast float %8598, 9.921875e-01
  %8601 = fmul fast float %8600, %8599
  %8602 = fadd fast float %8601, 3.906250e-03
  %8603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8602, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = fsub fast float %8598, %8604
  %8606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8605)  ; FMax(a,b)
  %8607 = fmul fast float %8114, %8095
  %8608 = call float @dx.op.unary.f32(i32 6, float %8607)  ; FAbs(value)
  %8609 = fcmp fast ogt float %8608, 0x3EB0C6F7A0000000
  br i1 %8609, label %8610, label %8616, !dx.controlflow.hints !172

; <label>:8610                                    ; preds = %8596
  %8611 = fmul fast float %8607, 0xBFF7154760000000
  %8612 = call float @dx.op.unary.f32(i32 21, float %8611)  ; Exp(value)
  %8613 = fsub fast float 1.000000e+00, %8612
  %8614 = fdiv fast float %8613, %8607
  %8615 = fmul fast float %8614, %8124
  br label %8616

; <label>:8616                                    ; preds = %8610, %8596
  %8617 = phi float [ %8615, %8610 ], [ %8124, %8596 ]
  %8618 = fadd fast float %8617, %8126
  %8619 = fmul fast float %8618, %8606
  %8620 = fmul fast float %8111, %8619
  %8621 = fsub fast float -0.000000e+00, %8620
  %8622 = fmul fast float %8112, %8619
  %8623 = fsub fast float -0.000000e+00, %8622
  %8624 = fmul fast float %8113, %8619
  %8625 = fsub fast float -0.000000e+00, %8624
  %8626 = call float @dx.op.unary.f32(i32 21, float %8621)  ; Exp(value)
  %8627 = call float @dx.op.unary.f32(i32 21, float %8623)  ; Exp(value)
  %8628 = call float @dx.op.unary.f32(i32 21, float %8625)  ; Exp(value)
  %8629 = fmul fast float %8140, %8140
  %8630 = fadd fast float %8629, 1.000000e+00
  %8631 = fmul fast float %8630, 0x3FAE8EC8A0000000
  %8632 = fmul fast float %8631, %8121
  %8633 = fmul fast float %8631, %8122
  %8634 = fmul fast float %8631, %8123
  %8635 = fmul fast float %8140, %8119
  %8636 = fsub fast float 1.000000e+00, %8635
  %8637 = fmul fast float %8119, %8119
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = fmul fast float %8638, 0x3FB45F3060000000
  %8640 = fmul fast float %8636, %8636
  %8641 = fdiv fast float 1.000000e+00, %8640
  %8642 = fmul fast float %8639, %8641
  %8643 = fmul fast float %8642, %8116
  %8644 = fmul fast float %8642, %8117
  %8645 = fmul fast float %8642, %8118
  %8646 = fadd fast float %8643, %8632
  %8647 = fadd fast float %8644, %8633
  %8648 = fadd fast float %8645, %8634
  %8649 = fsub fast float 1.000000e+00, %8626
  %8650 = fsub fast float 1.000000e+00, %8627
  %8651 = fsub fast float 1.000000e+00, %8628
  %8652 = fmul fast float %8646, %8649
  %8653 = fmul fast float %8647, %8650
  %8654 = fmul fast float %8648, %8651
  br label %8655

; <label>:8655                                    ; preds = %8616, %8567
  %8656 = phi float [ %8593, %8567 ], [ %8652, %8616 ]
  %8657 = phi float [ %8594, %8567 ], [ %8653, %8616 ]
  %8658 = phi float [ %8595, %8567 ], [ %8654, %8616 ]
  %8659 = phi float [ %8582, %8567 ], [ %8626, %8616 ]
  %8660 = phi float [ %8582, %8567 ], [ %8627, %8616 ]
  %8661 = phi float [ %8582, %8567 ], [ %8628, %8616 ]
  br i1 %8148, label %8662, label %8860, !dx.controlflow.hints !173

; <label>:8662                                    ; preds = %8655
  %8663 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8664 = fmul fast float %8663, %8563
  %8665 = fsub fast float %8558, %8656
  %8666 = fsub fast float %8559, %8657
  %8667 = fsub fast float %8560, %8658
  %8668 = fmul fast float %8664, %8665
  %8669 = fmul fast float %8664, %8666
  %8670 = fmul fast float %8664, %8667
  %8671 = fadd fast float %8668, %8656
  %8672 = fadd fast float %8669, %8657
  %8673 = fadd fast float %8670, %8658
  %8674 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8659)  ; FMax(a,b)
  %8675 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8660)  ; FMax(a,b)
  %8676 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8661)  ; FMax(a,b)
  %8677 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8557)  ; FMax(a,b)
  %8678 = call float @dx.op.binary.f32(i32 35, float %8556, float %8566)  ; FMax(a,b)
  %8679 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8678)  ; FMax(a,b)
  %8680 = fdiv fast float %8556, %8679
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fdiv fast float %8566, %8679
  %8683 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8684 = fcmp fast une float %8677, 1.000000e+00
  br i1 %8684, label %8685, label %8698, !dx.controlflow.hints !174

; <label>:8685                                    ; preds = %8662
  %8686 = call float @dx.op.unary.f32(i32 23, float %8677)  ; Log(value)
  %8687 = fmul fast float %8686, 0x3FE62E4300000000
  %8688 = fmul fast float %8558, %8687
  %8689 = fsub fast float -0.000000e+00, %8688
  %8690 = fmul fast float %8559, %8687
  %8691 = fsub fast float -0.000000e+00, %8690
  %8692 = fmul fast float %8560, %8687
  %8693 = fsub fast float -0.000000e+00, %8692
  %8694 = fsub fast float 1.000000e+00, %8677
  %8695 = fdiv fast float %8689, %8694
  %8696 = fdiv fast float %8691, %8694
  %8697 = fdiv fast float %8693, %8694
  br label %8698

; <label>:8698                                    ; preds = %8685, %8662
  %8699 = phi float [ %8695, %8685 ], [ %8558, %8662 ]
  %8700 = phi float [ %8696, %8685 ], [ %8559, %8662 ]
  %8701 = phi float [ %8697, %8685 ], [ %8560, %8662 ]
  %8702 = phi float [ %8687, %8685 ], [ 0.000000e+00, %8662 ]
  %8703 = fcmp fast une float %8674, 1.000000e+00
  br i1 %8703, label %8704, label %8711, !dx.controlflow.hints !175

; <label>:8704                                    ; preds = %8698
  %8705 = call float @dx.op.unary.f32(i32 23, float %8674)  ; Log(value)
  %8706 = fmul fast float %8705, 0x3FE62E4300000000
  %8707 = fmul fast float %8671, %8706
  %8708 = fsub fast float -0.000000e+00, %8707
  %8709 = fsub fast float 1.000000e+00, %8674
  %8710 = fdiv fast float %8708, %8709
  br label %8711

; <label>:8711                                    ; preds = %8704, %8698
  %8712 = phi float [ %8710, %8704 ], [ %8671, %8698 ]
  %8713 = phi float [ %8706, %8704 ], [ 0.000000e+00, %8698 ]
  %8714 = fcmp fast une float %8675, 1.000000e+00
  br i1 %8714, label %8715, label %8722, !dx.controlflow.hints !175

; <label>:8715                                    ; preds = %8711
  %8716 = call float @dx.op.unary.f32(i32 23, float %8675)  ; Log(value)
  %8717 = fmul fast float %8716, 0x3FE62E4300000000
  %8718 = fmul fast float %8672, %8717
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = fsub fast float 1.000000e+00, %8675
  %8721 = fdiv fast float %8719, %8720
  br label %8722

; <label>:8722                                    ; preds = %8715, %8711
  %8723 = phi float [ %8721, %8715 ], [ %8672, %8711 ]
  %8724 = phi float [ %8717, %8715 ], [ 0.000000e+00, %8711 ]
  %8725 = fcmp fast une float %8676, 1.000000e+00
  br i1 %8725, label %8726, label %8733, !dx.controlflow.hints !175

; <label>:8726                                    ; preds = %8722
  %8727 = call float @dx.op.unary.f32(i32 23, float %8676)  ; Log(value)
  %8728 = fmul fast float %8727, 0x3FE62E4300000000
  %8729 = fmul fast float %8673, %8728
  %8730 = fsub fast float -0.000000e+00, %8729
  %8731 = fsub fast float 1.000000e+00, %8676
  %8732 = fdiv fast float %8730, %8731
  br label %8733

; <label>:8733                                    ; preds = %8726, %8722
  %8734 = phi float [ %8732, %8726 ], [ %8673, %8722 ]
  %8735 = phi float [ %8728, %8726 ], [ 0.000000e+00, %8722 ]
  %8736 = fmul fast float %8699, %8683
  %8737 = fmul fast float %8700, %8683
  %8738 = fmul fast float %8701, %8683
  %8739 = fmul fast float %8702, %8683
  %8740 = fmul fast float %8712, %8681
  %8741 = fmul fast float %8723, %8681
  %8742 = fmul fast float %8734, %8681
  %8743 = fmul fast float %8713, %8681
  %8744 = fmul fast float %8724, %8681
  %8745 = fmul fast float %8735, %8681
  %8746 = fadd fast float %8740, %8736
  %8747 = fadd fast float %8741, %8737
  %8748 = fadd fast float %8742, %8738
  %8749 = fadd fast float %8743, %8739
  %8750 = fadd fast float %8744, %8739
  %8751 = fadd fast float %8745, %8739
  %8752 = fcmp fast une float %8749, 0.000000e+00
  br i1 %8752, label %8753, label %8760, !dx.controlflow.hints !176

; <label>:8753                                    ; preds = %8733
  %8754 = fmul fast float %8749, 0x3FF7154760000000
  %8755 = call float @dx.op.unary.f32(i32 21, float %8754)  ; Exp(value)
  %8756 = fsub fast float 1.000000e+00, %8755
  %8757 = fmul fast float %8746, %8756
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = fdiv fast float %8758, %8749
  br label %8760

; <label>:8760                                    ; preds = %8753, %8733
  %8761 = phi float [ %8755, %8753 ], [ 1.000000e+00, %8733 ]
  %8762 = phi float [ %8759, %8753 ], [ %8746, %8733 ]
  %8763 = fcmp fast une float %8750, 0.000000e+00
  br i1 %8763, label %8764, label %8771, !dx.controlflow.hints !176

; <label>:8764                                    ; preds = %8760
  %8765 = fmul fast float %8750, 0x3FF7154760000000
  %8766 = call float @dx.op.unary.f32(i32 21, float %8765)  ; Exp(value)
  %8767 = fsub fast float 1.000000e+00, %8766
  %8768 = fmul fast float %8747, %8767
  %8769 = fsub fast float -0.000000e+00, %8768
  %8770 = fdiv fast float %8769, %8750
  br label %8771

; <label>:8771                                    ; preds = %8764, %8760
  %8772 = phi float [ %8766, %8764 ], [ 1.000000e+00, %8760 ]
  %8773 = phi float [ %8770, %8764 ], [ %8747, %8760 ]
  %8774 = fcmp fast une float %8751, 0.000000e+00
  br i1 %8774, label %8775, label %8782, !dx.controlflow.hints !176

; <label>:8775                                    ; preds = %8771
  %8776 = fmul fast float %8751, 0x3FF7154760000000
  %8777 = call float @dx.op.unary.f32(i32 21, float %8776)  ; Exp(value)
  %8778 = fsub fast float 1.000000e+00, %8777
  %8779 = fmul fast float %8748, %8778
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = fdiv fast float %8780, %8751
  br label %8782

; <label>:8782                                    ; preds = %8775, %8771
  %8783 = phi float [ %8777, %8775 ], [ 1.000000e+00, %8771 ]
  %8784 = phi float [ %8781, %8775 ], [ %8748, %8771 ]
  %8785 = fcmp fast ogt float %8681, %8683
  br i1 %8785, label %8786, label %8806

; <label>:8786                                    ; preds = %8782
  %8787 = fsub fast float 1.000000e+00, %8683
  %8788 = fmul fast float %8699, %8787
  %8789 = fmul fast float %8700, %8787
  %8790 = fmul fast float %8701, %8787
  %8791 = fmul fast float %8702, %8787
  %8792 = fcmp fast une float %8791, 0.000000e+00
  br i1 %8792, label %8793, label %8844, !dx.controlflow.hints !177

; <label>:8793                                    ; preds = %8786
  %8794 = fmul fast float %8791, 0x3FF7154760000000
  %8795 = call float @dx.op.unary.f32(i32 21, float %8794)  ; Exp(value)
  %8796 = fsub fast float 1.000000e+00, %8795
  %8797 = fmul fast float %8788, %8796
  %8798 = fsub fast float -0.000000e+00, %8797
  %8799 = fmul fast float %8789, %8796
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fmul fast float %8790, %8796
  %8802 = fsub fast float -0.000000e+00, %8801
  %8803 = fdiv fast float %8798, %8791
  %8804 = fdiv fast float %8800, %8791
  %8805 = fdiv fast float %8802, %8791
  br label %8844

; <label>:8806                                    ; preds = %8782
  %8807 = fsub fast float 1.000000e+00, %8681
  %8808 = fmul fast float %8712, %8807
  %8809 = fmul fast float %8723, %8807
  %8810 = fmul fast float %8734, %8807
  %8811 = fmul fast float %8713, %8807
  %8812 = fmul fast float %8724, %8807
  %8813 = fmul fast float %8735, %8807
  %8814 = fcmp fast une float %8811, 0.000000e+00
  br i1 %8814, label %8815, label %8822, !dx.controlflow.hints !176

; <label>:8815                                    ; preds = %8806
  %8816 = fmul fast float %8811, 0x3FF7154760000000
  %8817 = call float @dx.op.unary.f32(i32 21, float %8816)  ; Exp(value)
  %8818 = fsub fast float 1.000000e+00, %8817
  %8819 = fmul fast float %8808, %8818
  %8820 = fsub fast float -0.000000e+00, %8819
  %8821 = fdiv fast float %8820, %8811
  br label %8822

; <label>:8822                                    ; preds = %8815, %8806
  %8823 = phi float [ %8821, %8815 ], [ %8808, %8806 ]
  %8824 = phi float [ %8817, %8815 ], [ 1.000000e+00, %8806 ]
  %8825 = fcmp fast une float %8812, 0.000000e+00
  br i1 %8825, label %8826, label %8833, !dx.controlflow.hints !176

; <label>:8826                                    ; preds = %8822
  %8827 = fmul fast float %8812, 0x3FF7154760000000
  %8828 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8829 = fsub fast float 1.000000e+00, %8828
  %8830 = fmul fast float %8809, %8829
  %8831 = fsub fast float -0.000000e+00, %8830
  %8832 = fdiv fast float %8831, %8812
  br label %8833

; <label>:8833                                    ; preds = %8826, %8822
  %8834 = phi float [ %8832, %8826 ], [ %8809, %8822 ]
  %8835 = phi float [ %8828, %8826 ], [ 1.000000e+00, %8822 ]
  %8836 = fcmp fast une float %8813, 0.000000e+00
  br i1 %8836, label %8837, label %8844, !dx.controlflow.hints !176

; <label>:8837                                    ; preds = %8833
  %8838 = fmul fast float %8813, 0x3FF7154760000000
  %8839 = call float @dx.op.unary.f32(i32 21, float %8838)  ; Exp(value)
  %8840 = fsub fast float 1.000000e+00, %8839
  %8841 = fmul fast float %8810, %8840
  %8842 = fsub fast float -0.000000e+00, %8841
  %8843 = fdiv fast float %8842, %8813
  br label %8844

; <label>:8844                                    ; preds = %8837, %8833, %8793, %8786
  %8845 = phi float [ %8843, %8837 ], [ %8805, %8793 ], [ %8790, %8786 ], [ %8810, %8833 ]
  %8846 = phi float [ %8834, %8837 ], [ %8804, %8793 ], [ %8789, %8786 ], [ %8834, %8833 ]
  %8847 = phi float [ %8823, %8837 ], [ %8803, %8793 ], [ %8788, %8786 ], [ %8823, %8833 ]
  %8848 = phi float [ %8839, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ 1.000000e+00, %8833 ]
  %8849 = phi float [ %8835, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ %8835, %8833 ]
  %8850 = phi float [ %8824, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ %8824, %8833 ]
  %8851 = fmul fast float %8850, %8762
  %8852 = fmul fast float %8849, %8773
  %8853 = fmul fast float %8848, %8784
  %8854 = fadd fast float %8851, %8847
  %8855 = fadd fast float %8852, %8846
  %8856 = fadd fast float %8853, %8845
  %8857 = fmul fast float %8850, %8761
  %8858 = fmul fast float %8849, %8772
  %8859 = fmul fast float %8848, %8783
  br label %8860

; <label>:8860                                    ; preds = %8844, %8655
  %8861 = phi float [ %8859, %8844 ], [ %8661, %8655 ]
  %8862 = phi float [ %8858, %8844 ], [ %8660, %8655 ]
  %8863 = phi float [ %8857, %8844 ], [ %8659, %8655 ]
  %8864 = phi float [ %8856, %8844 ], [ %8658, %8655 ]
  %8865 = phi float [ %8855, %8844 ], [ %8657, %8655 ]
  %8866 = phi float [ %8854, %8844 ], [ %8656, %8655 ]
  %8867 = fmul fast float %8866, %7812
  %8868 = fmul fast float %8865, %7812
  %8869 = fmul fast float %8864, %7812
  %8870 = fmul fast float %8863, %8103
  %8871 = call float @dx.op.dot3.f32(i32 55, float %8863, float %8862, float %8861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8872 = call float @dx.op.dot3.f32(i32 55, float %8867, float %8868, float %8869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8873 = select i1 %229, float %8871, float %8863
  %8874 = select i1 %229, float %8871, float %8862
  %8875 = select i1 %229, float 1.000000e+00, float %8861
  %8876 = select i1 %229, float %8872, float %8867
  %8877 = select i1 %229, float 0.000000e+00, float %8868
  %8878 = select i1 %229, float 0.000000e+00, float %8869
  %8879 = fmul fast float %8873, %8097
  %8880 = fmul fast float %8874, %8098
  %8881 = fmul fast float %8875, %8099
  %8882 = fadd fast float %8879, %8876
  %8883 = fadd fast float %8880, %8877
  %8884 = fadd fast float %8878, %8881
  %8885 = fmul fast float %8873, %8100
  %8886 = fmul fast float %8874, %8101
  %8887 = fmul fast float %8875, %8102
  %8888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.i32 %8888, 0
  %8890 = icmp eq i32 %8889, 0
  br i1 %8890, label %9258, label %8891, !dx.controlflow.hints !178

; <label>:8891                                    ; preds = %8860
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 3
  %8895 = fmul fast float %8893, %104
  %8896 = fmul fast float %8894, %105
  %8897 = fmul fast float %8895, 2.000000e+00
  %8898 = fmul fast float %8896, 2.000000e+00
  %8899 = fsub fast float 1.000000e+00, %8897
  %8900 = fsub fast float 1.000000e+00, %8898
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = extractvalue %dx.types.CBufRet.f32 %8901, 1
  %8904 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8905 = fmul fast float %8899, %8902
  %8906 = fmul fast float %8899, %8903
  %8907 = fmul fast float %8899, %8904
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.CBufRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8912 = fmul fast float %8900, %8909
  %8913 = fmul fast float %8900, %8910
  %8914 = fmul fast float %8900, %8911
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = fadd fast float %8912, %8916
  %8920 = fadd fast float %8919, %8905
  %8921 = fadd fast float %8913, %8917
  %8922 = fadd fast float %8921, %8906
  %8923 = fadd fast float %8914, %8918
  %8924 = fadd fast float %8923, %8907
  %8925 = fmul fast float %8920, %8096
  %8926 = fmul fast float %8922, %8096
  %8927 = fmul fast float %8924, %8096
  %8928 = fmul fast float %8925, %8925
  %8929 = fmul fast float %8926, %8926
  %8930 = fadd fast float %8928, %8929
  %8931 = fmul fast float %8927, %8927
  %8932 = fadd fast float %8930, %8931
  %8933 = call float @dx.op.unary.f32(i32 24, float %8932)  ; Sqrt(value)
  %8934 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %8935 = fsub fast float %8933, %8934
  %8936 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %8937 = fmul fast float %8935, %8936
  %8938 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8939 = fadd fast float %8938, -5.000000e-01
  %8940 = fmul fast float %8939, 2.000000e+00
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 2
  %8943 = call float @dx.op.binary.f32(i32 36, float %8942, float %8940)  ; FMin(a,b)
  %8944 = fsub fast float -0.000000e+00, %8942
  %8945 = fcmp fast ogt float %8943, %8944
  br i1 %8945, label %8946, label %9258, !dx.controlflow.hints !179

; <label>:8946                                    ; preds = %8891
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8949 = fcmp fast ogt float %8948, 0.000000e+00
  br i1 %8949, label %8950, label %9025, !dx.controlflow.hints !180

; <label>:8950                                    ; preds = %8946
  %8951 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8952 = extractvalue %dx.types.Dimensions %8951, 0
  %8953 = sitofp i32 %8952 to float
  %8954 = extractvalue %dx.types.Dimensions %8951, 1
  %8955 = sitofp i32 %8954 to float
  %8956 = fmul fast float %8895, %8953
  %8957 = fmul fast float %8896, %8955
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8960 = fsub fast float -0.000000e+00, %8959
  %8961 = fptoui float %8960 to i32
  %8962 = fptoui float %8956 to i32
  %8963 = fptoui float %8957 to i32
  %8964 = and i32 %8961, 31
  %8965 = lshr i32 %8962, %8964
  %8966 = lshr i32 %8963, %8964
  %8967 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8961, i32 %8965, i32 %8966, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8968 = extractvalue %dx.types.ResRet.f32 %8967, 0
  %8969 = fcmp fast olt float %8968, -1.000000e+00
  %8970 = fcmp fast ogt float %8968, -1.000000e+00
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8973 = select i1 %8970, float %8972, float 1.000000e+00
  %8974 = fadd fast float %8968, 1.000000e+00
  %8975 = fmul fast float %8973, %8974
  %8976 = call float @dx.op.unary.f32(i32 6, float %8975)  ; FAbs(value)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8971, 3
  %8978 = fcmp fast oge float %8976, %8977
  %8979 = select i1 %8978, float 0x4197782600000000, float %8976
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 0
  %8982 = extractvalue %dx.types.CBufRet.f32 %8980, 1
  %8983 = extractvalue %dx.types.CBufRet.f32 %8980, 2
  %8984 = select i1 %8969, float %8981, float %8902
  %8985 = select i1 %8969, float %8982, float %8903
  %8986 = select i1 %8969, float %8983, float %8904
  %8987 = fmul fast float %8984, %8899
  %8988 = fmul fast float %8985, %8899
  %8989 = fmul fast float %8986, %8899
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8994 = select i1 %8969, float %8991, float %8909
  %8995 = select i1 %8969, float %8992, float %8910
  %8996 = select i1 %8969, float %8993, float %8911
  %8997 = fmul fast float %8994, %8900
  %8998 = fmul fast float %8995, %8900
  %8999 = fmul fast float %8996, %8900
  %9000 = fadd fast float %8997, %8987
  %9001 = fadd fast float %8998, %8988
  %9002 = fadd fast float %8999, %8989
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9007 = select i1 %8969, float %9004, float %8916
  %9008 = select i1 %8969, float %9005, float %8917
  %9009 = select i1 %8969, float %9006, float %8918
  %9010 = fadd fast float %9000, %9007
  %9011 = fadd fast float %9001, %9008
  %9012 = fadd fast float %9002, %9009
  %9013 = fmul fast float %9010, %8979
  %9014 = fmul fast float %9011, %8979
  %9015 = fmul fast float %9012, %8979
  %9016 = fmul fast float %9013, %9013
  %9017 = fmul fast float %9014, %9014
  %9018 = fadd fast float %9016, %9017
  %9019 = fmul fast float %9015, %9015
  %9020 = fadd fast float %9018, %9019
  %9021 = call float @dx.op.unary.f32(i32 24, float %9020)  ; Sqrt(value)
  %9022 = fsub fast float %9021, %8934
  %9023 = fmul fast float %9022, %8936
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  br label %9025

; <label>:9025                                    ; preds = %8950, %8946
  %9026 = phi float [ %9024, %8950 ], [ 1.000000e+00, %8946 ]
  %9027 = fmul fast float %8943, 5.000000e-01
  %9028 = fadd fast float %9027, 5.000000e-01
  %9029 = call float @dx.op.unary.f32(i32 22, float %9028)  ; Frc(value)
  %9030 = call float @dx.op.unary.f32(i32 27, float %9029)  ; Round_ni(value)
  %9031 = call float @dx.op.unary.f32(i32 22, float %9029)  ; Frc(value)
  %9032 = fmul fast float %9031, 2.000000e+00
  %9033 = fadd fast float %9032, -1.000000e+00
  %9034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8895, float %8896, float %9030, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9035 = extractvalue %dx.types.ResRet.f32 %9034, 0
  %9036 = extractvalue %dx.types.ResRet.f32 %9034, 1
  %9037 = extractvalue %dx.types.ResRet.f32 %9034, 2
  %9038 = extractvalue %dx.types.ResRet.f32 %9034, 3
  %9039 = fadd fast float %9035, -5.000000e-01
  %9040 = fadd fast float %9037, -5.000000e-01
  %9041 = fmul fast float %9039, 0xBFD5555560000000
  %9042 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9040, float %9041)  ; FMad(a,b,c)
  %9043 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9036, float 0.000000e+00)  ; FMad(a,b,c)
  %9044 = fadd fast float %9043, %9038
  %9045 = fmul fast float %9039, -7.500000e-01
  %9046 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9040, float %9045)  ; FMad(a,b,c)
  %9047 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9036, float 0.000000e+00)  ; FMad(a,b,c)
  %9048 = fadd fast float %9047, %9038
  %9049 = call float @dx.op.binary.f32(i32 35, float %9042, float -1.000000e+00)  ; FMax(a,b)
  %9050 = call float @dx.op.binary.f32(i32 35, float %9044, float -1.000000e+00)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float %9046, float -1.000000e+00)  ; FMax(a,b)
  %9052 = call float @dx.op.binary.f32(i32 35, float %9048, float -1.000000e+00)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 36, float %9049, float 1.000000e+00)  ; FMin(a,b)
  %9054 = call float @dx.op.binary.f32(i32 36, float %9050, float 1.000000e+00)  ; FMin(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9051, float 1.000000e+00)  ; FMin(a,b)
  %9056 = call float @dx.op.binary.f32(i32 36, float %9052, float 1.000000e+00)  ; FMin(a,b)
  %9057 = fcmp fast olt float %9053, 0x3FEFFF8020000000
  br i1 %9057, label %9058, label %9173, !dx.controlflow.hints !181

; <label>:9058                                    ; preds = %9025
  %9059 = extractvalue %dx.types.CBufRet.f32 %8941, 3
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.CBufRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9064 = extractvalue %dx.types.CBufRet.f32 %9060, 3
  %9065 = fsub fast float %9061, %9053
  %9066 = fsub fast float %9062, %9054
  %9067 = fsub fast float %9063, %9055
  %9068 = fsub fast float %9064, %9056
  %9069 = fmul fast float %9065, %9059
  %9070 = fmul fast float %9066, %9059
  %9071 = fmul fast float %9067, %9059
  %9072 = fmul fast float %9068, %9059
  %9073 = fadd fast float %9069, %9053
  %9074 = fadd fast float %9070, %9054
  %9075 = fsub fast float -0.000000e+00, %9074
  %9076 = fadd fast float %9071, %9055
  %9077 = fadd fast float %9072, %9056
  %9078 = fmul fast float %9073, %9073
  %9079 = fsub fast float %9074, %9078
  %9080 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9079)  ; FMax(a,b)
  %9081 = fdiv fast float 1.000000e+00, %9080
  %9082 = fmul fast float %9074, %9073
  %9083 = fsub fast float %9076, %9082
  %9084 = fsub fast float %9033, %9073
  %9085 = fmul fast float %9033, %9033
  %9086 = fsub fast float %9085, %9074
  %9087 = fmul fast float %9084, %9081
  %9088 = fmul fast float %9087, %9083
  %9089 = fsub fast float %9086, %9088
  %9090 = fmul fast float %9074, %9074
  %9091 = fsub fast float %9077, %9090
  %9092 = fmul fast float %9083, %9083
  %9093 = fmul fast float %9092, %9081
  %9094 = fsub fast float %9091, %9093
  %9095 = fdiv fast float %9089, %9094
  %9096 = fmul fast float %9083, %9095
  %9097 = fsub fast float %9084, %9096
  %9098 = fmul fast float %9097, %9081
  %9099 = fmul fast float %9098, %9073
  %9100 = fsub fast float 1.000000e+00, %9099
  %9101 = fmul fast float %9074, %9095
  %9102 = fsub fast float %9100, %9101
  %9103 = fmul fast float %9098, %9098
  %9104 = fmul fast float %9095, 4.000000e+00
  %9105 = fmul fast float %9104, %9102
  %9106 = fsub fast float %9103, %9105
  %9107 = call float @dx.op.unary.f32(i32 24, float %9106)  ; Sqrt(value)
  %9108 = fcmp fast oge float %9098, 0.000000e+00
  %9109 = fsub fast float -0.000000e+00, %9107
  %9110 = select i1 %9108, float %9109, float %9107
  %9111 = fsub fast float %9110, %9098
  %9112 = fdiv fast float %9111, %9095
  %9113 = fdiv fast float %9102, %9111
  %9114 = fmul fast float %9112, 5.000000e-01
  %9115 = fmul fast float %9113, 2.000000e+00
  %9116 = select i1 %9108, float %9114, float %9115
  %9117 = select i1 %9108, float %9115, float %9114
  %9118 = call float @dx.op.binary.f32(i32 35, float %9116, float %9117)  ; FMax(a,b)
  %9119 = call float @dx.op.binary.f32(i32 36, float %9116, float %9117)  ; FMin(a,b)
  %9120 = fcmp fast ogt float %9033, %9119
  br i1 %9120, label %9121, label %9131

; <label>:9121                                    ; preds = %9058
  %9122 = fsub fast float %9033, %9119
  %9123 = fsub fast float %9118, %9119
  %9124 = fmul fast float %9122, %9123
  %9125 = fmul fast float %9118, %9033
  %9126 = fadd fast float %9118, %9033
  %9127 = fmul fast float %9126, %9073
  %9128 = fadd fast float %9125, %9074
  %9129 = fsub fast float %9128, %9127
  %9130 = fdiv fast float %9129, %9124
  br label %9131

; <label>:9131                                    ; preds = %9121, %9058
  %9132 = phi float [ %9130, %9121 ], [ 0.000000e+00, %9058 ]
  %9133 = fcmp fast ogt float %9033, %9118
  %9134 = fsub fast float %9033, %9118
  br i1 %9133, label %9135, label %9145

; <label>:9135                                    ; preds = %9131
  %9136 = fsub fast float %9118, %9119
  %9137 = fmul fast float %9136, %9134
  %9138 = fmul fast float %9119, %9033
  %9139 = fadd fast float %9119, %9033
  %9140 = fmul fast float %9139, %9073
  %9141 = fsub fast float %9075, %9138
  %9142 = fadd fast float %9141, %9140
  %9143 = fdiv fast float %9142, %9137
  %9144 = fadd fast float %9143, %9132
  br label %9145

; <label>:9145                                    ; preds = %9135, %9131
  %9146 = phi float [ %9144, %9135 ], [ %9132, %9131 ]
  %9147 = fsub fast float %9033, %9119
  %9148 = fmul fast float %9147, %9134
  %9149 = fmul fast float %9119, %9118
  %9150 = fadd fast float %9119, %9118
  %9151 = fmul fast float %9150, %9073
  %9152 = fadd fast float %9149, %9074
  %9153 = fsub fast float %9152, %9151
  %9154 = fdiv fast float %9153, %9148
  %9155 = call float @dx.op.unary.f32(i32 7, float %9146)  ; Saturate(value)
  %9156 = fcmp fast oeq float %7824, 0.000000e+00
  %9157 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %9158 = fcmp fast oeq float %9157, 0.000000e+00
  %9159 = or i1 %9156, %9158
  %9160 = fmul fast float %9157, 2.000000e+00
  %9161 = fadd fast float %8942, %8943
  %9162 = fdiv fast float %9161, %9160
  %9163 = call float @dx.op.unary.f32(i32 7, float %9162)  ; Saturate(value)
  %9164 = fmul fast float %9163, 2.000000e+00
  %9165 = fsub fast float 3.000000e+00, %9164
  %9166 = fmul fast float %9163, %9163
  %9167 = fmul fast float %9166, %9165
  %9168 = select i1 %9159, float 1.000000e+00, float %9167
  %9169 = fmul fast float %9154, %7824
  %9170 = fadd fast float %9155, %9169
  %9171 = call float @dx.op.unary.f32(i32 7, float %9170)  ; Saturate(value)
  %9172 = fmul fast float %9168, %9171
  br label %9173

; <label>:9173                                    ; preds = %9145, %9025
  %9174 = phi float [ %9172, %9145 ], [ 0.000000e+00, %9025 ]
  %9175 = fsub fast float 1.000000e+00, %9174
  %9176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8895, float %8896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9177 = extractvalue %dx.types.ResRet.f32 %9176, 0
  %9178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.i32 %9178, 2
  %9180 = icmp eq i32 %9179, 0
  br i1 %9180, label %9186, label %9181

; <label>:9181                                    ; preds = %9173
  %9182 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9183 = fadd fast float %9177, -1.000000e+00
  %9184 = fmul fast float %9182, %9183
  %9185 = fadd fast float %9184, 1.000000e+00
  br label %9186

; <label>:9186                                    ; preds = %9181, %9173
  %9187 = phi float [ %9185, %9181 ], [ %9175, %9173 ]
  br i1 %8949, label %9188, label %9206

; <label>:9188                                    ; preds = %9186
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 1
  %9191 = fsub fast float %9026, %9190
  %9192 = call float @dx.op.unary.f32(i32 7, float %9191)  ; Saturate(value)
  %9193 = fsub fast float %9026, %8948
  %9194 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9195 = fsub fast float %9192, %9194
  %9196 = fsub fast float %9028, %9194
  %9197 = fdiv fast float %9196, %9195
  %9198 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9199 = fmul fast float %9198, 2.000000e+00
  %9200 = fsub fast float 3.000000e+00, %9199
  %9201 = fsub fast float %9177, %9187
  %9202 = fmul fast float %9198, %9198
  %9203 = fmul fast float %9202, %9201
  %9204 = fmul fast float %9203, %9200
  %9205 = fadd fast float %9204, %9187
  br label %9206

; <label>:9206                                    ; preds = %9188, %9186
  %9207 = phi float [ %9205, %9188 ], [ %9187, %9186 ]
  %9208 = call float @dx.op.binary.f32(i32 35, float %9177, float %9207)  ; FMax(a,b)
  %9209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.i32 %9209, 2
  %9211 = and i32 %9210, 1
  %9212 = icmp eq i32 %9211, 0
  %9213 = fcmp fast une float %9208, 1.000000e+00
  %9214 = and i1 %9213, %9212
  br i1 %9214, label %9215, label %9234

; <label>:9215                                    ; preds = %9206
  %9216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8895, float %8896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9217 = extractvalue %dx.types.ResRet.f32 %9216, 0
  %9218 = extractvalue %dx.types.ResRet.f32 %9216, 1
  %9219 = extractvalue %dx.types.ResRet.f32 %9216, 2
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9222 = fmul fast float %9221, %9217
  %9223 = fmul fast float %9221, %9218
  %9224 = fmul fast float %9221, %9219
  %9225 = fcmp fast ogt float %9177, 0x3FEFFF2E40000000
  %9226 = fsub fast float 1.000000e+00, %9208
  %9227 = fsub fast float 1.000000e+00, %9177
  %9228 = fdiv fast float %9226, %9227
  %9229 = call float @dx.op.unary.f32(i32 7, float %9228)  ; Saturate(value)
  %9230 = select i1 %9225, float 0.000000e+00, float %9229
  %9231 = fmul fast float %9222, %9230
  %9232 = fmul fast float %9223, %9230
  %9233 = fmul fast float %9224, %9230
  br label %9234

; <label>:9234                                    ; preds = %9215, %9206
  %9235 = phi float [ 0.000000e+00, %9206 ], [ %9231, %9215 ]
  %9236 = phi float [ 0.000000e+00, %9206 ], [ %9232, %9215 ]
  %9237 = phi float [ 0.000000e+00, %9206 ], [ %9233, %9215 ]
  %9238 = fmul fast float %9235, %7812
  %9239 = fmul fast float %9236, %7812
  %9240 = fmul fast float %9237, %7812
  %9241 = fmul fast float %9208, %8870
  %9242 = call float @dx.op.dot3.f32(i32 55, float %9208, float %9208, float %9208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9243 = call float @dx.op.dot3.f32(i32 55, float %9238, float %9239, float %9240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9244 = select i1 %229, float %9242, float %9208
  %9245 = select i1 %229, float 1.000000e+00, float %9208
  %9246 = select i1 %229, float %9243, float %9238
  %9247 = select i1 %229, float 0.000000e+00, float %9239
  %9248 = select i1 %229, float 0.000000e+00, float %9240
  %9249 = fmul fast float %9244, %8882
  %9250 = fmul fast float %9244, %8883
  %9251 = fmul fast float %9245, %8884
  %9252 = fadd fast float %9249, %9246
  %9253 = fadd fast float %9250, %9247
  %9254 = fadd fast float %9248, %9251
  %9255 = fmul fast float %9244, %8885
  %9256 = fmul fast float %9244, %8886
  %9257 = fmul fast float %9245, %8887
  br label %9258

; <label>:9258                                    ; preds = %9234, %8891, %8860, %8092
  %9259 = phi float [ %8097, %8092 ], [ %8882, %8860 ], [ %9252, %9234 ], [ %8882, %8891 ]
  %9260 = phi float [ %8098, %8092 ], [ %8883, %8860 ], [ %9253, %9234 ], [ %8883, %8891 ]
  %9261 = phi float [ %8099, %8092 ], [ %8884, %8860 ], [ %9254, %9234 ], [ %8884, %8891 ]
  %9262 = phi float [ %8100, %8092 ], [ %8885, %8860 ], [ %9255, %9234 ], [ %8885, %8891 ]
  %9263 = phi float [ %8101, %8092 ], [ %8886, %8860 ], [ %9256, %9234 ], [ %8886, %8891 ]
  %9264 = phi float [ %8102, %8092 ], [ %8887, %8860 ], [ %9257, %9234 ], [ %8887, %8891 ]
  %9265 = phi float [ %8103, %8092 ], [ %8870, %8860 ], [ %9241, %9234 ], [ %8870, %8891 ]
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 2
  %9268 = extractvalue %dx.types.CBufRet.f32 %9266, 3
  %9269 = fmul fast float %9267, %104
  %9270 = fmul fast float %9268, %105
  %9271 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9272 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9273 = select i1 %7834, i32 2, i32 0
  %9274 = or i32 %9273, 1
  %9275 = uitofp i32 %9274 to float
  %9276 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9271, float %9272, float %9275, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9277 = extractvalue %dx.types.ResRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.ResRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.ResRet.f32 %9276, 2
  %9280 = extractvalue %dx.types.ResRet.f32 %9276, 3
  %9281 = add nuw nsw i32 %9273, 2
  %9282 = uitofp i32 %9281 to float
  %9283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9271, float %9272, float %9282, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.ResRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.ResRet.f32 %9283, 2
  %9287 = extractvalue %dx.types.ResRet.f32 %9283, 3
  %9288 = call float @dx.op.binary.f32(i32 35, float %9278, float %9279)  ; FMax(a,b)
  %9289 = call float @dx.op.binary.f32(i32 35, float %9277, float %9288)  ; FMax(a,b)
  %9290 = call float @dx.op.binary.f32(i32 35, float %9289, float %9280)  ; FMax(a,b)
  %9291 = call float @dx.op.binary.f32(i32 36, float %9285, float %9286)  ; FMin(a,b)
  %9292 = call float @dx.op.binary.f32(i32 36, float %9284, float %9291)  ; FMin(a,b)
  %9293 = call float @dx.op.binary.f32(i32 36, float %9292, float %9287)  ; FMin(a,b)
  %9294 = fmul fast float %9290, 2.550000e+02
  %9295 = fadd fast float %9294, 0x3F70101020000000
  %9296 = fptoui float %9295 to i32
  %9297 = fmul fast float %9293, 2.550000e+02
  %9298 = fadd fast float %9297, 0x3F70101020000000
  %9299 = fptoui float %9298 to i32
  %9300 = icmp ult i32 %9296, %9299
  br i1 %9300, label %9301, label %9470

; <label>:9301                                    ; preds = %9258
  %9302 = fcmp fast ogt float %91, 9.843750e-01
  %9303 = fadd fast float %8096, -4.000000e+00
  %9304 = select i1 %9302, float -4.000000e+00, float %9303
  %9305 = call float @dx.op.binary.f32(i32 35, float %9304, float 0.000000e+00)  ; FMax(a,b)
  %9306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9306, 0
  %9308 = fadd fast float %9307, %9305
  %9309 = extractvalue %dx.types.CBufRet.f32 %9306, 2
  %9310 = fmul fast float %9308, %9309
  %9311 = call float @dx.op.unary.f32(i32 23, float %9310)  ; Log(value)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9306, 3
  %9313 = fmul fast float %9312, %9311
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 2
  %9316 = fmul fast float %9313, %9315
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = uitofp i32 %9296 to float
  %9319 = uitofp i32 %9299 to float
  %9320 = fadd fast float %9318, 5.000000e-01
  %9321 = fadd fast float %9319, 5.000000e-01
  %9322 = fmul fast float %9315, %9320
  %9323 = fmul fast float %9315, %9321
  %9324 = fadd fast float %9322, 0x3F0FFB4800000000
  %9325 = fadd fast float %9323, 0xBF0FFB4800000000
  %9326 = call float @dx.op.binary.f32(i32 35, float %9317, float %9324)  ; FMax(a,b)
  %9327 = call float @dx.op.binary.f32(i32 36, float %9326, float %9325)  ; FMin(a,b)
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9332 = select i1 %7834, float %9331, float 0.000000e+00
  %9333 = fmul fast float %9329, %9327
  %9334 = fadd fast float %9332, %9333
  %9335 = fadd fast float %9332, %9330
  %9336 = fsub fast float %9329, %9330
  %9337 = fadd fast float %9336, %9332
  %9338 = call float @dx.op.binary.f32(i32 35, float %9334, float %9335)  ; FMax(a,b)
  %9339 = call float @dx.op.binary.f32(i32 36, float %9338, float %9337)  ; FMin(a,b)
  %9340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9271, float %9272, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9341 = extractvalue %dx.types.ResRet.f32 %9340, 0
  %9342 = extractvalue %dx.types.ResRet.f32 %9340, 1
  %9343 = extractvalue %dx.types.ResRet.f32 %9340, 2
  %9344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.i32 %9344, 0
  %9346 = extractvalue %dx.types.CBufRet.i32 %9344, 1
  %9347 = uitofp i32 %9345 to float
  %9348 = uitofp i32 %9346 to float
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 0
  %9351 = extractvalue %dx.types.CBufRet.f32 %9349, 1
  %9352 = fmul fast float %9347, %9271
  %9353 = fmul fast float %9348, %9272
  %9354 = fadd fast float %9352, -5.000000e-01
  %9355 = fadd fast float %9353, -5.000000e-01
  %9356 = call float @dx.op.unary.f32(i32 22, float %9354)  ; Frc(value)
  %9357 = call float @dx.op.unary.f32(i32 22, float %9355)  ; Frc(value)
  %9358 = fmul fast float %9356, %9356
  %9359 = fmul fast float %9358, %9356
  %9360 = fsub fast float 3.000000e+00, %9356
  %9361 = fmul fast float %9358, %9360
  %9362 = fmul fast float %9356, 3.000000e+00
  %9363 = fmul fast float %9359, 3.000000e+00
  %9364 = fmul fast float %9358, 6.000000e+00
  %9365 = fsub fast float %9363, %9364
  %9366 = fadd fast float %9365, 4.000000e+00
  %9367 = fmul fast float %9366, 0x3FC5555560000000
  %9368 = fmul fast float %9359, -3.000000e+00
  %9369 = fadd fast float %9358, %9356
  %9370 = fmul fast float %9369, 3.000000e+00
  %9371 = fadd fast float %9368, 1.000000e+00
  %9372 = fadd fast float %9371, %9370
  %9373 = fmul fast float %9359, 0x3FC5555560000000
  %9374 = fmul fast float %9357, %9357
  %9375 = fmul fast float %9374, %9357
  %9376 = fsub fast float 3.000000e+00, %9357
  %9377 = fmul fast float %9374, %9376
  %9378 = fmul fast float %9357, 3.000000e+00
  %9379 = fmul fast float %9375, 3.000000e+00
  %9380 = fmul fast float %9374, 6.000000e+00
  %9381 = fsub fast float %9379, %9380
  %9382 = fadd fast float %9381, 4.000000e+00
  %9383 = fmul fast float %9382, 0x3FC5555560000000
  %9384 = fmul fast float %9375, -3.000000e+00
  %9385 = fadd fast float %9374, %9357
  %9386 = fmul fast float %9385, 3.000000e+00
  %9387 = fadd fast float %9384, 1.000000e+00
  %9388 = fadd fast float %9387, %9386
  %9389 = fmul fast float %9375, 0x3FC5555560000000
  %9390 = fadd fast float %9356, 1.000000e+00
  %9391 = fsub fast float 1.000000e+00, %9362
  %9392 = fadd fast float %9391, %9361
  %9393 = fadd fast float %9392, %9366
  %9394 = fmul fast float %9393, 0x3FC5555560000000
  %9395 = fdiv fast float %9367, %9394
  %9396 = fsub fast float %9390, %9395
  %9397 = fsub fast float 1.000000e+00, %9356
  %9398 = fadd fast float %9372, %9359
  %9399 = fmul fast float %9398, 0x3FC5555560000000
  %9400 = fdiv fast float %9373, %9399
  %9401 = fadd fast float %9397, %9400
  %9402 = fadd fast float %9357, 1.000000e+00
  %9403 = fsub fast float 1.000000e+00, %9378
  %9404 = fadd fast float %9403, %9377
  %9405 = fadd fast float %9404, %9382
  %9406 = fmul fast float %9405, 0x3FC5555560000000
  %9407 = fdiv fast float %9383, %9406
  %9408 = fsub fast float %9402, %9407
  %9409 = fsub fast float 1.000000e+00, %9357
  %9410 = fadd fast float %9388, %9375
  %9411 = fmul fast float %9410, 0x3FC5555560000000
  %9412 = fdiv fast float %9389, %9411
  %9413 = fadd fast float %9412, %9409
  %9414 = fmul fast float %9396, %9350
  %9415 = fsub fast float %9271, %9414
  %9416 = fmul fast float %9401, %9350
  %9417 = fadd fast float %9416, %9271
  %9418 = fmul fast float %9413, %9351
  %9419 = fadd fast float %9418, %9272
  %9420 = fmul fast float %9408, %9351
  %9421 = fsub fast float %9272, %9420
  %9422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9415, float %9421, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9423 = extractvalue %dx.types.ResRet.f32 %9422, 0
  %9424 = extractvalue %dx.types.ResRet.f32 %9422, 1
  %9425 = extractvalue %dx.types.ResRet.f32 %9422, 2
  %9426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9417, float %9421, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9427 = extractvalue %dx.types.ResRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.ResRet.f32 %9426, 1
  %9429 = extractvalue %dx.types.ResRet.f32 %9426, 2
  %9430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9415, float %9419, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9431 = extractvalue %dx.types.ResRet.f32 %9430, 0
  %9432 = extractvalue %dx.types.ResRet.f32 %9430, 1
  %9433 = extractvalue %dx.types.ResRet.f32 %9430, 2
  %9434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9417, float %9419, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9435 = extractvalue %dx.types.ResRet.f32 %9434, 0
  %9436 = extractvalue %dx.types.ResRet.f32 %9434, 1
  %9437 = extractvalue %dx.types.ResRet.f32 %9434, 2
  %9438 = fsub fast float %9431, %9423
  %9439 = fsub fast float %9432, %9424
  %9440 = fsub fast float %9433, %9425
  %9441 = fmul fast float %9438, %9411
  %9442 = fmul fast float %9439, %9411
  %9443 = fmul fast float %9440, %9411
  %9444 = fadd fast float %9441, %9423
  %9445 = fadd fast float %9442, %9424
  %9446 = fadd fast float %9443, %9425
  %9447 = fsub fast float %9435, %9427
  %9448 = fsub fast float %9436, %9428
  %9449 = fsub fast float %9437, %9429
  %9450 = fmul fast float %9447, %9411
  %9451 = fmul fast float %9448, %9411
  %9452 = fmul fast float %9449, %9411
  %9453 = fsub fast float %9427, %9444
  %9454 = fadd fast float %9453, %9450
  %9455 = fsub fast float %9428, %9445
  %9456 = fadd fast float %9455, %9451
  %9457 = fsub fast float %9429, %9446
  %9458 = fadd fast float %9457, %9452
  %9459 = fmul fast float %9454, %9399
  %9460 = fmul fast float %9456, %9399
  %9461 = fmul fast float %9458, %9399
  %9462 = fadd fast float %9459, %9444
  %9463 = fadd fast float %9460, %9445
  %9464 = fadd fast float %9461, %9446
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9467 = fmul fast float %9462, %9466
  %9468 = fmul fast float %9463, %9466
  %9469 = fmul fast float %9464, %9466
  br label %9470

; <label>:9470                                    ; preds = %9301, %9258
  %9471 = phi float [ %9341, %9301 ], [ 1.000000e+00, %9258 ]
  %9472 = phi float [ %9342, %9301 ], [ 1.000000e+00, %9258 ]
  %9473 = phi float [ %9343, %9301 ], [ 1.000000e+00, %9258 ]
  %9474 = phi float [ %9467, %9301 ], [ 0.000000e+00, %9258 ]
  %9475 = phi float [ %9468, %9301 ], [ 0.000000e+00, %9258 ]
  %9476 = phi float [ %9469, %9301 ], [ 0.000000e+00, %9258 ]
  %9477 = fmul fast float %9474, %7812
  %9478 = fmul fast float %9475, %7812
  %9479 = fmul fast float %9476, %7812
  %9480 = fmul fast float %9471, %9265
  %9481 = call float @dx.op.dot3.f32(i32 55, float %9471, float %9472, float %9473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9482 = call float @dx.op.dot3.f32(i32 55, float %9477, float %9478, float %9479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9483 = select i1 %229, float %9481, float %9471
  %9484 = select i1 %229, float %9481, float %9472
  %9485 = select i1 %229, float 1.000000e+00, float %9473
  %9486 = select i1 %229, float %9482, float %9477
  %9487 = select i1 %229, float 0.000000e+00, float %9478
  %9488 = select i1 %229, float 0.000000e+00, float %9479
  %9489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9490 = extractvalue %dx.types.CBufRet.i32 %9489, 3
  %9491 = and i32 %9490, 3
  %9492 = icmp ne i32 %9491, 0
  %9493 = and i32 %9490, 4
  %9494 = icmp ne i32 %9493, 0
  %9495 = and i1 %9492, %9494
  %9496 = and i1 %229, %9495
  br i1 %9496, label %9497, label %9503

; <label>:9497                                    ; preds = %9470
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 1
  %9500 = fadd fast float %9480, -1.000000e+00
  %9501 = fmul fast float %9499, %9500
  %9502 = fadd fast float %9501, 1.000000e+00
  br label %9503

; <label>:9503                                    ; preds = %9497, %9470
  %9504 = phi float [ %9502, %9497 ], [ %9480, %9470 ]
  %9505 = fadd fast float %9262, %9259
  %9506 = fmul fast float %9483, %9505
  %9507 = fadd fast float %9506, %9486
  %9508 = fadd fast float %9263, %9260
  %9509 = fmul fast float %9484, %9508
  %9510 = fadd fast float %9509, %9487
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  br i1 %229, label %9513, label %9528

; <label>:9513                                    ; preds = %9503
  %9514 = fadd fast float %9507, %9510
  %9515 = fmul fast float %9512, %9514
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 3
  %9518 = extractvalue %dx.types.CBufRet.f32 %7816, 1
  %9519 = fsub fast float %7821, %7815
  %9520 = fadd fast float %9519, %7822
  %9521 = fsub fast float %9520, %9518
  %9522 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %9523 = fmul fast float %9521, %9522
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fsub fast float %9524, %9517
  %9526 = fmul fast float %9525, %9504
  %9527 = fadd fast float %9526, %9517
  br label %9554

; <label>:9528                                    ; preds = %9503
  %9529 = fadd fast float %9264, %9261
  %9530 = fmul fast float %9485, %9529
  %9531 = fadd fast float %9530, %9488
  %9532 = fmul fast float %9512, %9507
  %9533 = fmul fast float %9512, %9510
  %9534 = fmul fast float %9512, %9531
  %9535 = call float @dx.op.binary.f32(i32 35, float %9533, float %9534)  ; FMax(a,b)
  %9536 = call float @dx.op.binary.f32(i32 35, float %9532, float %9535)  ; FMax(a,b)
  %9537 = call float @dx.op.binary.f32(i32 35, float %7812, float %7812)  ; FMax(a,b)
  %9538 = call float @dx.op.binary.f32(i32 35, float %7812, float %9537)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 35, float %9536, float %9538)  ; FMax(a,b)
  %9540 = fcmp fast ugt float %9539, 0x3F10000000000000
  br i1 %9540, label %9542, label %9541

; <label>:9541                                    ; preds = %9528
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9542

; <label>:9542                                    ; preds = %9541, %9528
  %9543 = add i32 %60, 356
  %9544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9543, i32 undef)  ; BufferLoad(srv,index,wot)
  %9545 = extractvalue %dx.types.ResRet.i32 %9544, 0
  %9546 = and i32 %9545, 32
  %9547 = icmp eq i32 %9546, 0
  br i1 %9547, label %9554, label %9548

; <label>:9548                                    ; preds = %9542
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 0
  %9551 = fmul fast float %9550, 0x3FE99999A0000000
  %9552 = fadd fast float %9550, %9532
  %9553 = fadd fast float %9551, %9534
  br label %9554

; <label>:9554                                    ; preds = %9548, %9542, %9513
  %9555 = phi float [ 1.000000e+00, %9513 ], [ %7812, %9548 ], [ %7812, %9542 ]
  %9556 = phi float [ %9515, %9513 ], [ %9552, %9548 ], [ %9532, %9542 ]
  %9557 = phi float [ %9527, %9513 ], [ %9533, %9548 ], [ %9533, %9542 ]
  %9558 = phi float [ 1.000000e+00, %9513 ], [ %9553, %9548 ], [ %9534, %9542 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9559 = call float @dx.op.binary.f32(i32 36, float %9556, float 3.225500e+04)  ; FMin(a,b)
  %9560 = call float @dx.op.binary.f32(i32 36, float %9557, float 3.225500e+04)  ; FMin(a,b)
  %9561 = call float @dx.op.binary.f32(i32 36, float %9558, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9559)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9560)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9562 = call float @dx.op.binary.f32(i32 36, float %7812, float 3.225500e+04)  ; FMin(a,b)
  %9563 = call float @dx.op.binary.f32(i32 36, float %9555, float 3.225500e+04)  ; FMin(a,b)
  %9564 = call float @dx.op.binary.f32(i32 36, float %9555, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

