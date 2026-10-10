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
;
; shader hash: 1377ead0b6a792f09d4afc544bd6e954
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %423 = add i32 %60, 492
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
  %699 = add i32 %60, 440
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
  %751 = add i32 %60, 424
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
  %775 = add i32 %60, 376
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
  %798 = add i32 %60, 460
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
  %996 = add i32 %60, 392
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
  %1080 = add i32 %60, 408
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
  %1372 = add i32 %60, 444
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
  %1424 = add i32 %60, 428
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
  %1450 = add i32 %60, 380
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
  %1473 = add i32 %60, 464
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
  %1671 = add i32 %60, 396
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
  %1755 = add i32 %60, 412
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
  %2226 = add i32 %60, 448
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
  %2278 = add i32 %60, 432
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
  %2304 = add i32 %60, 384
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
  %2327 = add i32 %60, 468
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
  %2525 = add i32 %60, 400
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
  %2609 = add i32 %60, 416
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
  %3080 = add i32 %60, 452
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
  %3132 = add i32 %60, 436
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
  %3158 = add i32 %60, 388
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
  %3181 = add i32 %60, 472
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
  %3379 = add i32 %60, 404
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
  %3463 = add i32 %60, 420
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
  %3705 = add i32 %60, 360
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.i32 %3706, 1
  %3709 = bitcast i32 %3707 to float
  %3710 = bitcast i32 %3708 to float
  %3711 = fcmp fast oge float %3709, 0.000000e+00
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 0
  %3714 = select i1 %3711, float %3709, float %3713
  %3715 = add i32 %60, 456
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = add i32 %3717, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3719, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = fmul fast float %3721, %3710
  %3723 = fadd fast float %3722, %3714
  %3724 = call float @dx.op.dot2.f32(i32 54, float %3693, float %3694, float %3693, float %3694)  ; Dot2(ax,ay,bx,by)
  %3725 = fmul fast float %3724, 0x3FE3333340000000
  %3726 = fsub fast float 1.000000e+00, %3725
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3726, float %3693, float %3694, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = call float @dx.op.unary.f32(i32 25, float %3727)  ; Rsqrt(value)
  %3729 = fmul fast float %3728, %3693
  %3730 = fmul fast float %3728, %3694
  %3731 = fmul fast float %3726, %3728
  %3732 = fmul fast float %3731, %111
  %3733 = fmul fast float %3731, %112
  %3734 = fmul fast float %3731, %113
  %3735 = fmul fast float %3729, %76
  %3736 = fmul fast float %3729, %77
  %3737 = fmul fast float %3729, %78
  %3738 = fadd fast float %3732, %3735
  %3739 = fadd fast float %3733, %3736
  %3740 = fadd fast float %3734, %3737
  %3741 = fmul fast float %123, %3730
  %3742 = fmul fast float %124, %3730
  %3743 = fmul fast float %125, %3730
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = fadd fast float %3740, %3743
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3744, float %3745, float %3746, float %3744, float %3745, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call float @dx.op.unary.f32(i32 25, float %3747)  ; Rsqrt(value)
  %3749 = fmul fast float %3744, %3748
  %3750 = fmul fast float %3745, %3748
  %3751 = fmul fast float %3746, %3748
  %3752 = and i32 %62, 1
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3754, label %4262

; <label>:3754                                    ; preds = %3692
  %3755 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3756 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3757 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3758 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3759 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3760 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3761 = fadd fast float %3755, %167
  %3762 = fadd fast float %3756, %168
  %3763 = fadd fast float %3757, %169
  %3764 = fadd fast float %3758, %167
  %3765 = fadd fast float %3759, %168
  %3766 = fadd fast float %3760, %169
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3774 = fmul fast float %3768, %104
  %3775 = fmul fast float %3774, %3772
  %3776 = fmul fast float %3769, %105
  %3777 = fmul fast float %3776, %3773
  %3778 = fptoui float %3775 to i32
  %3779 = fptoui float %3777 to i32
  %3780 = fadd fast float %3768, -1.000000e+00
  %3781 = fadd fast float %3769, -1.000000e+00
  %3782 = fptoui float %3780 to i32
  %3783 = fptoui float %3781 to i32
  %3784 = call i32 @dx.op.binary.i32(i32 40, i32 %3778, i32 %3782)  ; UMin(a,b)
  %3785 = call i32 @dx.op.binary.i32(i32 40, i32 %3779, i32 %3783)  ; UMin(a,b)
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3789 = fmul fast float %3787, %92
  %3790 = fsub fast float %3789, %3788
  %3791 = fadd fast float %3770, -1.000000e+00
  %3792 = call float @dx.op.binary.f32(i32 36, float %3790, float %3791)  ; FMin(a,b)
  %3793 = fptoui float %3792 to i32
  %3794 = fptoui float %3768 to i32
  %3795 = fptoui float %3769 to i32
  %3796 = mul i32 %3793, %3795
  %3797 = add i32 %3796, %3785
  %3798 = mul i32 %3797, %3794
  %3799 = add i32 %3798, %3784
  %3800 = shl i32 %3799, 2
  %3801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.i32 %3801, 0
  %3803 = and i32 %3802, 1023
  %3804 = lshr i32 %3802, 10
  %3805 = icmp eq i32 %3803, 0
  br i1 %3805, label %4231, label %3806

; <label>:3806                                    ; preds = %3754
  %3807 = and i32 %3802, 1023
  br label %3808

; <label>:3808                                    ; preds = %3934, %3806
  %3809 = phi i32 [ %3884, %3934 ], [ 0, %3806 ]
  %3810 = phi float [ %3935, %3934 ], [ 0.000000e+00, %3806 ]
  %3811 = phi float [ %3936, %3934 ], [ %3723, %3806 ]
  %3812 = phi float [ %3937, %3934 ], [ %3704, %3806 ]
  %3813 = phi float [ %3938, %3934 ], [ 0.000000e+00, %3806 ]
  %3814 = phi float [ %3939, %3934 ], [ 0.000000e+00, %3806 ]
  %3815 = phi float [ %3940, %3934 ], [ %3698, %3806 ]
  %3816 = phi float [ %3941, %3934 ], [ %3699, %3806 ]
  %3817 = phi float [ %3942, %3934 ], [ %3700, %3806 ]
  %3818 = phi float [ %3943, %3934 ], [ %3749, %3806 ]
  %3819 = phi float [ %3944, %3934 ], [ %3750, %3806 ]
  %3820 = phi float [ %3945, %3934 ], [ %3751, %3806 ]
  %3821 = phi float [ %3946, %3934 ], [ %3703, %3806 ]
  %3822 = phi float [ %3947, %3934 ], [ %3702, %3806 ]
  %3823 = phi float [ %3948, %3934 ], [ 0.000000e+00, %3806 ]
  %3824 = phi float [ %3949, %3934 ], [ %3701, %3806 ]
  %3825 = phi float [ %3950, %3934 ], [ %3695, %3806 ]
  %3826 = phi float [ %3951, %3934 ], [ %3696, %3806 ]
  %3827 = phi float [ %3952, %3934 ], [ %3697, %3806 ]
  %3828 = add nuw nsw i32 %3809, %3804
  %3829 = shl i32 %3828, 2
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = shl i32 %3831, 8
  %3833 = or i32 %3832, 48
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = or i32 %3832, 64
  %3840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.i32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.i32 %3840, 1
  %3843 = or i32 %3832, 80
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3847 = or i32 %3832, 96
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = or i32 %3832, 112
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3856 = or i32 %3832, 128
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.ResRet.f32 %3857, 3
  %3862 = or i32 %3832, 144
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = or i32 %3832, 160
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3874 = or i32 %3832, 192
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = or i32 %3832, 208
  %3878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = or i32 %3832, 248
  %3881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.ResRet.f32 %3881, 1
  %3884 = add nuw nsw i32 %3809, 1
  %3885 = bitcast float %3838 to i32
  %3886 = and i32 %3885, 512
  %3887 = icmp eq i32 %3886, 0
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3889, float %3890, float %3891, float %3892, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = or i32 %3832, 16
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = or i32 %3832, 32
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = call float @dx.op.dot4.f32(i32 56, float %3903, float %3904, float %3905, float %3906, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3908 = call float @dx.op.unary.f32(i32 27, float %3893)  ; Round_ni(value)
  %3909 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3910 = call float @dx.op.unary.f32(i32 27, float %3900)  ; Round_ni(value)
  %3911 = call float @dx.op.unary.f32(i32 6, float %3910)  ; FAbs(value)
  %3912 = call float @dx.op.unary.f32(i32 6, float %3907)  ; FAbs(value)
  %3913 = call float @dx.op.unary.f32(i32 27, float %3912)  ; Round_ni(value)
  %3914 = fadd fast float %3911, %3909
  %3915 = fadd fast float %3914, %3913
  %3916 = fcmp fast oeq float %3915, 0.000000e+00
  %3917 = call float @dx.op.dot4.f32(i32 56, float %3889, float %3890, float %3891, float %3892, float %3761, float %3762, float %3763, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3918 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3761, float %3762, float %3763, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3919 = call float @dx.op.dot4.f32(i32 56, float %3889, float %3890, float %3891, float %3892, float %3764, float %3765, float %3766, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3920 = call float @dx.op.dot4.f32(i32 56, float %3896, float %3897, float %3898, float %3899, float %3764, float %3765, float %3766, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3921 = fsub fast float %3917, %3893
  %3922 = fsub fast float %3919, %3893
  %3923 = fsub fast float %3918, %3900
  %3924 = fsub fast float %3920, %3900
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3836, float %3837, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3928 = fadd fast float %3927, %3925
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3931 = fcmp fast ogt float %3929, %3930
  %3932 = and i1 %3916, %3931
  %3933 = and i1 %3887, %3932
  br i1 %3933, label %3954, label %3934

; <label>:3934                                    ; preds = %4217, %4035, %3954, %3808
  %3935 = phi float [ %3810, %3954 ], [ %4038, %4035 ], [ %4038, %4217 ], [ %3810, %3808 ]
  %3936 = phi float [ %3811, %3954 ], [ %3811, %4035 ], [ %4192, %4217 ], [ %3811, %3808 ]
  %3937 = phi float [ %3812, %3954 ], [ %3812, %4035 ], [ %4190, %4217 ], [ %3812, %3808 ]
  %3938 = phi float [ %3813, %3954 ], [ %3813, %4035 ], [ %4162, %4217 ], [ %3813, %3808 ]
  %3939 = phi float [ %3814, %3954 ], [ %3814, %4035 ], [ %4160, %4217 ], [ %3814, %3808 ]
  %3940 = phi float [ %3815, %3954 ], [ %3815, %4035 ], [ %4227, %4217 ], [ %3815, %3808 ]
  %3941 = phi float [ %3816, %3954 ], [ %3816, %4035 ], [ %4228, %4217 ], [ %3816, %3808 ]
  %3942 = phi float [ %3817, %3954 ], [ %3817, %4035 ], [ %4229, %4217 ], [ %3817, %3808 ]
  %3943 = phi float [ %3818, %3954 ], [ %3818, %4035 ], [ %4141, %4217 ], [ %3818, %3808 ]
  %3944 = phi float [ %3819, %3954 ], [ %3819, %4035 ], [ %4142, %4217 ], [ %3819, %3808 ]
  %3945 = phi float [ %3820, %3954 ], [ %3820, %4035 ], [ %4143, %4217 ], [ %3820, %3808 ]
  %3946 = phi float [ %3821, %3954 ], [ %3821, %4035 ], [ %4170, %4217 ], [ %3821, %3808 ]
  %3947 = phi float [ %3822, %3954 ], [ %3822, %4035 ], [ %4167, %4217 ], [ %3822, %3808 ]
  %3948 = phi float [ %3823, %3954 ], [ %3823, %4035 ], [ %4164, %4217 ], [ %3823, %3808 ]
  %3949 = phi float [ %3824, %3954 ], [ %3824, %4035 ], [ %4158, %4217 ], [ %3824, %3808 ]
  %3950 = phi float [ %3825, %3954 ], [ %3825, %4035 ], [ %4153, %4217 ], [ %3825, %3808 ]
  %3951 = phi float [ %3826, %3954 ], [ %3826, %4035 ], [ %4154, %4217 ], [ %3826, %3808 ]
  %3952 = phi float [ %3827, %3954 ], [ %3827, %4035 ], [ %4155, %4217 ], [ %3827, %3808 ]
  %3953 = icmp eq i32 %3884, %3807
  br i1 %3953, label %4230, label %3808

; <label>:3954                                    ; preds = %3808
  %3955 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3956 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3960 = extractvalue %dx.types.ResRet.i32 %3840, 3
  %3961 = extractvalue %dx.types.ResRet.i32 %3840, 2
  %3962 = add i32 %3960, 0
  %3963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3962, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3963, %dx.types.Handle %3964, float %3893, float %3900, float undef, float undef, i32 0, i32 0, i32 undef, float %3921, float %3923, float undef, float %3922, float %3924, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = fmul fast float %3966, %3959
  %3968 = fadd fast float %3967, %3958
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = fmul fast float %3893, %3849
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3900, float %3970)  ; FMad(a,b,c)
  %3972 = fadd fast float %3971, %3957
  %3973 = fmul fast float %3893, %3851
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3900, float %3973)  ; FMad(a,b,c)
  %3975 = fadd fast float %3974, %3956
  %3976 = fmul fast float %3921, %3849
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3923, float %3976)  ; FMad(a,b,c)
  %3978 = fmul fast float %3921, %3851
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3923, float %3978)  ; FMad(a,b,c)
  %3980 = fmul fast float %3922, %3849
  %3981 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3924, float %3980)  ; FMad(a,b,c)
  %3982 = fmul fast float %3922, %3851
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3924, float %3982)  ; FMad(a,b,c)
  %3984 = add i32 %3961, 0
  %3985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3986 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3985, %dx.types.Handle %3964, float %3972, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3979, float undef, float %3981, float %3983, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = and i32 %3885, 1024
  %3989 = icmp ne i32 %3988, 0
  %3990 = fcmp fast ogt float %3987, 0x3FE0101020000000
  %3991 = uitofp i1 %3990 to float
  %3992 = select i1 %3989, float %3991, float %3987
  %3993 = and i32 %3885, 8192
  %3994 = icmp ne i32 %3993, 0
  %3995 = select i1 %3994, float %3955, float 1.000000e+00
  %3996 = fmul fast float %3893, 2.000000e+00
  %3997 = fadd fast float %3996, -1.000000e+00
  %3998 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %3999 = fmul fast float %3998, %3882
  %4000 = fsub fast float %3999, %3882
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %3900, 2.000000e+00
  %4003 = fadd fast float %4002, -1.000000e+00
  %4004 = call float @dx.op.unary.f32(i32 6, float %4003)  ; FAbs(value)
  %4005 = fmul fast float %4004, %3883
  %4006 = fsub fast float %4005, %3883
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = fmul fast float %3912, %3845
  %4009 = fsub fast float %4008, %3845
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = fmul fast float %3969, %3995
  %4012 = fmul fast float %4011, %3966
  %4013 = fmul fast float %4012, %4001
  %4014 = fmul fast float %4013, %3992
  %4015 = fmul fast float %4014, %4007
  %4016 = fmul fast float %4015, %4010
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 1
  %4019 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4020 = fsub fast float %3929, %4019
  %4021 = fmul fast float %4020, %4018
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = fmul fast float %4016, %3846
  %4024 = fadd fast float %4016, %3846
  %4025 = fmul fast float %4024, %3855
  %4026 = fsub fast float %4025, %3855
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = and i32 %3885, 128
  %4029 = icmp ne i32 %4028, 0
  %4030 = select i1 %4029, float %4027, float %4023
  %4031 = fmul fast float %4030, %4022
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = fcmp fast ugt float %4031, %4033
  br i1 %4034, label %4035, label %3934

; <label>:4035                                    ; preds = %3954
  %4036 = select i1 %3994, float %4031, float 0.000000e+00
  %4037 = fadd fast float %4036, %3810
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  br i1 %3994, label %3934, label %4039

; <label>:4039                                    ; preds = %4035
  %4040 = and i32 %3885, 4
  %4041 = and i32 %3885, 8
  %4042 = add i32 %3841, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4043, %dx.types.Handle %4044, float %3972, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3979, float undef, float %3981, float %3983, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = bitcast float %3867 to i32
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = lshr i32 %4050, 8
  %4054 = and i32 %4053, 255
  %4055 = uitofp i32 %4054 to float
  %4056 = fmul fast float %4049, %4052
  %4057 = fadd fast float %4056, %4055
  %4058 = fmul fast float %4057, 0x3F70101000000000
  %4059 = add i32 %3842, 0
  %4060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4059, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4060, %dx.types.Handle %4044, float %3972, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3979, float undef, float %3981, float %3983, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = extractvalue %dx.types.ResRet.f32 %4061, 3
  %4066 = bitcast float %3861 to i32
  %4067 = and i32 %4066, 255
  %4068 = uitofp i32 %4067 to float
  %4069 = lshr i32 %4066, 8
  %4070 = and i32 %4069, 255
  %4071 = uitofp i32 %4070 to float
  %4072 = lshr i32 %4066, 16
  %4073 = and i32 %4072, 255
  %4074 = uitofp i32 %4073 to float
  %4075 = fmul fast float %4074, 0x3F70101000000000
  %4076 = fmul fast float %4062, %4068
  %4077 = fadd fast float %4076, %4071
  %4078 = fmul fast float %4077, 0x3F70101000000000
  %4079 = fadd fast float %4063, -5.000000e-01
  %4080 = fadd fast float %4065, -5.000000e-01
  %4081 = fmul fast float %4079, %4075
  %4082 = fmul fast float %4080, %4075
  %4083 = fadd fast float %4081, 5.000000e-01
  %4084 = fadd fast float %4082, 5.000000e-01
  %4085 = fmul fast float %4046, %3870
  %4086 = fmul fast float %4047, %3871
  %4087 = fmul fast float %4048, %3872
  %4088 = fmul fast float %4083, 2.000000e+00
  %4089 = fadd fast float %4088, -1.000000e+00
  %4090 = fmul fast float %4084, 2.000000e+00
  %4091 = fadd fast float %4090, -1.000000e+00
  %4092 = fadd fast float %4089, %4091
  %4093 = fmul fast float %4092, 5.000000e-01
  %4094 = fsub fast float %4089, %4091
  %4095 = fmul fast float %4094, 5.000000e-01
  %4096 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = call float @dx.op.unary.f32(i32 6, float %4095)  ; FAbs(value)
  %4099 = fsub fast float %4097, %4098
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4095, float %4099, float %4093, float %4095, float %4099)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = call float @dx.op.unary.f32(i32 25, float %4100)  ; Rsqrt(value)
  %4102 = fmul fast float %4093, %4101
  %4103 = fmul fast float %4095, %4101
  %4104 = fmul fast float %4101, %4099
  %4105 = fmul fast float %4104, %3835
  %4106 = fmul fast float %4104, %3836
  %4107 = fmul fast float %4104, %3837
  %4108 = fmul fast float %4102, %3858
  %4109 = fmul fast float %4102, %3859
  %4110 = fmul fast float %4102, %3860
  %4111 = fadd fast float %4108, %4105
  %4112 = fadd fast float %4109, %4106
  %4113 = fadd fast float %4110, %4107
  %4114 = fmul fast float %4103, %3864
  %4115 = fmul fast float %4103, %3865
  %4116 = fmul fast float %4103, %3866
  %4117 = fadd fast float %4111, %4114
  %4118 = fadd fast float %4112, %4115
  %4119 = fadd fast float %4113, %4116
  %4120 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float %4117, float %4118, float %4119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 25, float %4120)  ; Rsqrt(value)
  %4122 = fmul fast float %4117, %4121
  %4123 = fmul fast float %4118, %4121
  %4124 = fmul fast float %4119, %4121
  %4125 = icmp ne i32 %4041, 0
  %4126 = select i1 %4125, float 1.000000e+00, float 0.000000e+00
  %4127 = fmul fast float %4031, %4126
  %4128 = and i32 %3885, 1
  %4129 = icmp eq i32 %4128, 0
  br i1 %4129, label %4130, label %4134

; <label>:4130                                    ; preds = %4039
  %4131 = fsub fast float %4122, %3818
  %4132 = fsub fast float %4123, %3819
  %4133 = fsub fast float %4124, %3820
  br label %4134

; <label>:4134                                    ; preds = %4130, %4039
  %4135 = phi float [ %4131, %4130 ], [ %4122, %4039 ]
  %4136 = phi float [ %4132, %4130 ], [ %4123, %4039 ]
  %4137 = phi float [ %4133, %4130 ], [ %4124, %4039 ]
  %4138 = fmul float %4137, %4127
  %4139 = fmul float %4136, %4127
  %4140 = fmul float %4135, %4127
  %4141 = fadd fast float %4140, %3818
  %4142 = fadd fast float %4139, %3819
  %4143 = fadd fast float %4138, %3820
  %4144 = icmp ne i32 %4040, 0
  %4145 = select i1 %4144, float 1.000000e+00, float 0.000000e+00
  %4146 = fmul fast float %4031, %4145
  %4147 = fsub fast float %4085, %3825
  %4148 = fsub fast float %4086, %3826
  %4149 = fsub fast float %4087, %3827
  %4150 = fmul fast float %4147, %4146
  %4151 = fmul fast float %4148, %4146
  %4152 = fmul fast float %4149, %4146
  %4153 = fadd fast float %4150, %3825
  %4154 = fadd fast float %4151, %3826
  %4155 = fadd fast float %4152, %3827
  %4156 = fsub fast float %4058, %3824
  %4157 = fmul fast float %4156, %4146
  %4158 = fadd fast float %4157, %3824
  %4159 = fmul fast float %4146, %3814
  %4160 = fsub fast float %3814, %4159
  %4161 = fmul fast float %4146, %3813
  %4162 = fsub fast float %3813, %4161
  %4163 = fadd fast float %4031, %3823
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = fsub fast float %4078, %3822
  %4166 = fmul fast float %4165, %4127
  %4167 = fadd fast float %4166, %3822
  %4168 = fsub fast float %4064, %3821
  %4169 = fmul fast float %4168, %4127
  %4170 = fadd fast float %4169, %3821
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4085, float %4086, float %4087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4175 = fmul fast float %4174, %4171
  %4176 = fadd fast float %4175, %4173
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = bitcast float %3873 to i32
  %4179 = and i32 %4178, 65535
  %4180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4179)  ; LegacyF16ToF32(value)
  %4181 = lshr i32 %4178, 16
  %4182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4181)  ; LegacyF16ToF32(value)
  %4183 = fcmp fast oge float %4180, 0.000000e+00
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = select i1 %4183, float %4180, float %4185
  %4187 = fadd fast float %4186, %4182
  %4188 = fsub fast float %4177, %3812
  %4189 = fmul fast float %4188, %4031
  %4190 = fadd fast float %4189, %3812
  %4191 = fmul fast float %4187, %4031
  %4192 = call float @dx.op.binary.f32(i32 35, float %3811, float %4191)  ; FMax(a,b)
  %4193 = and i32 %3885, 16
  %4194 = icmp eq i32 %4193, 0
  br i1 %4194, label %4217, label %4195

; <label>:4195                                    ; preds = %4134
  %4196 = bitcast float %3879 to i32
  %4197 = add i32 %3876, 0
  %4198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4197, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4198, %dx.types.Handle %4044, float %3972, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3979, float undef, float %3981, float %3983, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = and i32 %4196, 65535
  %4204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4203)  ; LegacyF16ToF32(value)
  %4205 = fmul fast float %4200, %3870
  %4206 = fmul fast float %4201, %3871
  %4207 = fmul fast float %4202, %3872
  %4208 = and i32 %3885, 16384
  %4209 = icmp ne i32 %4208, 0
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = select i1 %4209, float %4211, float 1.000000e+00
  %4213 = fmul fast float %4212, %4204
  %4214 = fmul fast float %4205, %4213
  %4215 = fmul fast float %4206, %4213
  %4216 = fmul fast float %4207, %4213
  br label %4217

; <label>:4217                                    ; preds = %4195, %4134
  %4218 = phi float [ %4214, %4195 ], [ 0.000000e+00, %4134 ]
  %4219 = phi float [ %4215, %4195 ], [ 0.000000e+00, %4134 ]
  %4220 = phi float [ %4216, %4195 ], [ 0.000000e+00, %4134 ]
  %4221 = fsub fast float %4218, %3815
  %4222 = fsub fast float %4219, %3816
  %4223 = fsub fast float %4220, %3817
  %4224 = fmul fast float %4221, %4031
  %4225 = fmul fast float %4222, %4031
  %4226 = fmul fast float %4223, %4031
  %4227 = fadd fast float %4224, %3815
  %4228 = fadd fast float %4225, %3816
  %4229 = fadd fast float %4226, %3817
  br label %3934

; <label>:4230                                    ; preds = %3934
  br label %4231

; <label>:4231                                    ; preds = %4230, %3754
  %4232 = phi float [ 0.000000e+00, %3754 ], [ %3935, %4230 ]
  %4233 = phi float [ %3723, %3754 ], [ %3936, %4230 ]
  %4234 = phi float [ %3704, %3754 ], [ %3937, %4230 ]
  %4235 = phi float [ 0.000000e+00, %3754 ], [ %3938, %4230 ]
  %4236 = phi float [ 0.000000e+00, %3754 ], [ %3939, %4230 ]
  %4237 = phi float [ %3698, %3754 ], [ %3940, %4230 ]
  %4238 = phi float [ %3699, %3754 ], [ %3941, %4230 ]
  %4239 = phi float [ %3700, %3754 ], [ %3942, %4230 ]
  %4240 = phi float [ %3749, %3754 ], [ %3943, %4230 ]
  %4241 = phi float [ %3750, %3754 ], [ %3944, %4230 ]
  %4242 = phi float [ %3751, %3754 ], [ %3945, %4230 ]
  %4243 = phi float [ %3703, %3754 ], [ %3946, %4230 ]
  %4244 = phi float [ %3702, %3754 ], [ %3947, %4230 ]
  %4245 = phi float [ 0.000000e+00, %3754 ], [ %3948, %4230 ]
  %4246 = phi float [ %3701, %3754 ], [ %3949, %4230 ]
  %4247 = phi float [ %3695, %3754 ], [ %3950, %4230 ]
  %4248 = phi float [ %3696, %3754 ], [ %3951, %4230 ]
  %4249 = phi float [ %3697, %3754 ], [ %3952, %4230 ]
  %4250 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4241, float %4242, float %4240, float %4241, float %4242)  ; Dot3(ax,ay,az,bx,by,bz)
  %4251 = call float @dx.op.unary.f32(i32 25, float %4250)  ; Rsqrt(value)
  %4252 = fmul fast float %4251, %4240
  %4253 = fmul fast float %4251, %4241
  %4254 = fmul fast float %4251, %4242
  %4255 = fadd fast float %4245, %1139
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = call float @dx.op.dot3.f32(i32 55, float %4252, float %4253, float %4254, float %4252, float %4253, float %4254)  ; Dot3(ax,ay,az,bx,by,bz)
  %4258 = call float @dx.op.unary.f32(i32 25, float %4257)  ; Rsqrt(value)
  %4259 = fmul fast float %4258, %4252
  %4260 = fmul fast float %4258, %4253
  %4261 = fmul fast float %4258, %4254
  br label %4262

; <label>:4262                                    ; preds = %4231, %3692
  %4263 = phi float [ %4259, %4231 ], [ %3749, %3692 ]
  %4264 = phi float [ %4260, %4231 ], [ %3750, %3692 ]
  %4265 = phi float [ %4261, %4231 ], [ %3751, %3692 ]
  %4266 = phi float [ %4237, %4231 ], [ %3698, %3692 ]
  %4267 = phi float [ %4238, %4231 ], [ %3699, %3692 ]
  %4268 = phi float [ %4239, %4231 ], [ %3700, %3692 ]
  %4269 = phi float [ %4247, %4231 ], [ %3695, %3692 ]
  %4270 = phi float [ %4248, %4231 ], [ %3696, %3692 ]
  %4271 = phi float [ %4249, %4231 ], [ %3697, %3692 ]
  %4272 = phi float [ %4246, %4231 ], [ %3701, %3692 ]
  %4273 = phi float [ %4256, %4231 ], [ %1139, %3692 ]
  %4274 = phi float [ %4244, %4231 ], [ %3702, %3692 ]
  %4275 = phi float [ %4243, %4231 ], [ %3703, %3692 ]
  %4276 = phi float [ %4236, %4231 ], [ 0.000000e+00, %3692 ]
  %4277 = phi float [ %4235, %4231 ], [ 0.000000e+00, %3692 ]
  %4278 = phi float [ %4232, %4231 ], [ 0.000000e+00, %3692 ]
  %4279 = phi float [ %4233, %4231 ], [ %3723, %3692 ]
  %4280 = phi float [ %4234, %4231 ], [ %3704, %3692 ]
  %4281 = fadd fast float %4272, 0xBFB99999A0000000
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4282, 0x3FF1C71C80000000
  %4284 = call float @dx.op.binary.f32(i32 36, float %4272, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4285 = fsub fast float 1.000000e+00, %4283
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4286, %4269
  %4288 = fmul fast float %4286, %4270
  %4289 = fmul fast float %4286, %4271
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = fmul fast float %4283, %4269
  %4294 = fmul fast float %4283, %4270
  %4295 = fmul fast float %4283, %4271
  %4296 = fadd fast float %4293, %4284
  %4297 = fadd fast float %4294, %4284
  %4298 = fadd fast float %4295, %4284
  %4299 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.i32 %4303, 3
  %4305 = and i32 %4304, 8
  %4306 = icmp ne i32 %4305, 0
  %4307 = call float @dx.op.binary.f32(i32 35, float %4290, float %4269)  ; FMax(a,b)
  %4308 = call float @dx.op.binary.f32(i32 35, float %4291, float %4269)  ; FMax(a,b)
  %4309 = call float @dx.op.binary.f32(i32 35, float %4292, float %4269)  ; FMax(a,b)
  %4310 = call float @dx.op.dot3.f32(i32 55, float %4290, float %4291, float %4292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4311 = select i1 %229, float %4269, float %4290
  %4312 = select i1 %229, float %4310, float %4291
  %4313 = select i1 %229, float 1.000000e+00, float %4292
  %4314 = select i1 %4306, float %4307, float %4311
  %4315 = select i1 %4306, float %4308, float %4312
  %4316 = select i1 %4306, float %4309, float %4313
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4321 = fadd fast float %4318, %167
  %4322 = fadd fast float %4319, %168
  %4323 = fadd fast float %4320, %169
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4327 = fsub fast float %4321, %4325
  %4328 = fsub fast float %4322, %4326
  %4329 = fmul fast float %4327, %4327
  %4330 = fmul fast float %4328, %4328
  %4331 = fadd fast float %4329, %4330
  %4332 = call float @dx.op.unary.f32(i32 24, float %4331)  ; Sqrt(value)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4334 = fcmp fast olt float %4332, %4333
  br i1 %4334, label %4335, label %4402

; <label>:4335                                    ; preds = %4262
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.f32 %4336, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4338, 1
  %4344 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4345 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4346 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4347 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4348 = fadd fast float %4345, %4321
  %4349 = fadd fast float %4346, %4322
  %4350 = fadd fast float %4347, %4323
  %4351 = fmul fast float %4348, %4337
  %4352 = call float @dx.op.tertiary.f32(i32 46, float %4349, float %4339, float %4351)  ; FMad(a,b,c)
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4350, float %4341, float %4352)  ; FMad(a,b,c)
  %4354 = fmul fast float %4348, %4342
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4349, float %4343, float %4354)  ; FMad(a,b,c)
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4350, float %4344, float %4355)  ; FMad(a,b,c)
  %4357 = fsub fast float %4353, %4345
  %4358 = fsub fast float %4356, %4346
  %4359 = fsub fast float %4357, %4325
  %4360 = fadd fast float %4359, %4333
  %4361 = fsub fast float %4358, %4326
  %4362 = fadd fast float %4361, %4333
  %4363 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4364 = fmul fast float %4360, %4363
  %4365 = fmul fast float %4362, %4363
  %4366 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4368 = fsub fast float 1.000000e+00, %4366
  %4369 = fsub fast float 1.000000e+00, %4367
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = fcmp fast ugt float %4371, 0.000000e+00
  br i1 %4372, label %4373, label %4676

; <label>:4373                                    ; preds = %4335
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 2
  %4376 = fmul fast float %4375, %4371
  %4377 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4378 = fadd fast float %4377, %4376
  %4379 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4380 = fadd fast float %4378, %4347
  %4381 = fmul fast float %4353, %4341
  %4382 = call float @dx.op.tertiary.f32(i32 46, float %4356, float %4344, float %4381)  ; FMad(a,b,c)
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4379, float %4382)  ; FMad(a,b,c)
  %4384 = fsub fast float %4383, %4347
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4387 = fsub fast float %4384, %4386
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = fadd fast float %4393, %4389
  %4397 = fmul fast float %4396, 0x3F847AE140000000
  %4398 = fadd fast float %4394, %4390
  %4399 = fmul fast float %4398, 0x3F847AE140000000
  %4400 = fadd fast float %4395, %4391
  %4401 = fmul fast float %4400, 0x3F847AE140000000
  br label %4676

; <label>:4402                                    ; preds = %4262
  %4403 = and i32 %205, 1
  %4404 = icmp eq i32 %4403, 0
  br i1 %4404, label %4676, label %4405

; <label>:4405                                    ; preds = %4402
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4413 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4414 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4416 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4417 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4418 = fadd fast float %4415, %4321
  %4419 = fadd fast float %4416, %4322
  %4420 = fadd fast float %4417, %4323
  %4421 = fmul fast float %4418, %4407
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4419, float %4409, float %4421)  ; FMad(a,b,c)
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4411, float %4422)  ; FMad(a,b,c)
  %4424 = fmul fast float %4418, %4412
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4419, float %4413, float %4424)  ; FMad(a,b,c)
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4414, float %4425)  ; FMad(a,b,c)
  %4427 = fsub fast float %4423, %4415
  %4428 = fsub fast float %4426, %4416
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.CBufRet.f32 %4429, 1
  %4432 = extractvalue %dx.types.CBufRet.f32 %4429, 2
  %4433 = extractvalue %dx.types.CBufRet.f32 %4429, 3
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.i32 %4436, 0
  %4438 = extractvalue %dx.types.CBufRet.i32 %4436, 1
  %4439 = udiv i32 %4438, %4437
  %4440 = fsub fast float %4427, %4430
  %4441 = fsub fast float %4428, %4431
  %4442 = call float @dx.op.binary.f32(i32 35, float %4440, float 0.000000e+00)  ; FMax(a,b)
  %4443 = call float @dx.op.binary.f32(i32 35, float %4441, float 0.000000e+00)  ; FMax(a,b)
  %4444 = call float @dx.op.binary.f32(i32 36, float %4442, float %4432)  ; FMin(a,b)
  %4445 = call float @dx.op.binary.f32(i32 36, float %4443, float %4433)  ; FMin(a,b)
  %4446 = add i32 %4437, -1
  %4447 = add i32 %4439, -1
  %4448 = fmul fast float %4444, %4435
  %4449 = fmul fast float %4445, %4435
  %4450 = fptoui float %4448 to i32
  %4451 = fptoui float %4449 to i32
  %4452 = call i32 @dx.op.binary.i32(i32 40, i32 %4450, i32 %4446)  ; UMin(a,b)
  %4453 = call i32 @dx.op.binary.i32(i32 40, i32 %4451, i32 %4447)  ; UMin(a,b)
  %4454 = mul i32 %4453, %4437
  %4455 = add i32 %4454, %4452
  %4456 = shl i32 %4455, 2
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = icmp eq i32 %4458, -1
  br i1 %4459, label %4676, label %4460

; <label>:4460                                    ; preds = %4405
  %4461 = mul i32 %4458, 148
  %4462 = add i32 %4461, 4
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = add i32 %4461, 8
  %4466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4465, i32 undef)  ; BufferLoad(srv,index,wot)
  %4467 = extractvalue %dx.types.ResRet.f32 %4466, 0
  %4468 = add i32 %4461, 36
  %4469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4468, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = add i32 %4461, 60
  %4472 = add i32 %4461, 92
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = add i32 %4461, 116
  %4476 = fsub fast float %4427, %4464
  %4477 = fsub fast float %4428, %4467
  %4478 = fmul fast float %4435, %4476
  %4479 = fmul fast float %4435, %4477
  %4480 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4485 = call float @dx.op.unary.f32(i32 83, float %4480)  ; DerivCoarseX(value)
  %4486 = call float @dx.op.unary.f32(i32 83, float %4482)  ; DerivCoarseX(value)
  %4487 = call float @dx.op.unary.f32(i32 84, float %4480)  ; DerivCoarseY(value)
  %4488 = call float @dx.op.unary.f32(i32 84, float %4482)  ; DerivCoarseY(value)
  %4489 = fmul fast float %4485, %4484
  %4490 = fmul fast float %4486, %4484
  %4491 = fmul fast float %4487, %4484
  %4492 = fmul fast float %4488, %4484
  %4493 = call float @dx.op.dot2.f32(i32 54, float %4491, float %4492, float %4491, float %4492)  ; Dot2(ax,ay,bx,by)
  %4494 = call float @dx.op.dot2.f32(i32 54, float %4489, float %4490, float %4489, float %4490)  ; Dot2(ax,ay,bx,by)
  %4495 = call float @dx.op.binary.f32(i32 35, float %4494, float %4493)  ; FMax(a,b)
  %4496 = call float @dx.op.unary.f32(i32 23, float %4495)  ; Log(value)
  %4497 = fmul fast float %4496, 5.000000e-01
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4500 = fadd fast float %4499, %4497
  %4501 = call float @dx.op.binary.f32(i32 35, float %4500, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4504 = fadd fast float %4503, %4501
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4507 = fadd fast float %4504, %4506
  %4508 = add i32 %4474, 0
  %4509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4508, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4510 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4509, i32 0)  ; GetDimensions(handle,mipLevel)
  %4511 = extractvalue %dx.types.Dimensions %4510, 0
  %4512 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4511)  ; FirstbitLo(value)
  %4513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.i32 %4513, 1
  %4515 = sub nsw i32 %4514, %4512
  %4516 = sitofp i32 %4515 to float
  %4517 = fsub fast float %4507, %4516
  %4518 = call float @dx.op.binary.f32(i32 35, float %4517, float 0.000000e+00)  ; FMax(a,b)
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4509, %dx.types.Handle %52, float %4480, float %4482, float %4470, float undef, i32 0, i32 0, i32 undef, float %4518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = fcmp ule float %4520, 0x3FE0101020000000
  %4522 = extractvalue %dx.types.CBufRet.i32 %4513, 0
  %4523 = and i32 %4522, 128
  %4524 = icmp ne i32 %4523, 0
  %4525 = and i1 %4521, %4524
  br i1 %4525, label %4676, label %4526

; <label>:4526                                    ; preds = %4460
  %4527 = add i32 %4461, 20
  %4528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = add i32 %4461, 24
  %4531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.f32 %4531, 0
  %4533 = add i32 %4461, 40
  %4534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = add i32 %4461, 96
  %4537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.i32 %4537, 0
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4541 = fmul fast float %4540, %4480
  %4542 = fmul fast float %4540, %4482
  %4543 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4544 = fadd fast float %4541, %4543
  %4545 = fadd fast float %4542, %4543
  %4546 = add i32 %4538, 0
  %4547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4546, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4548 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4547, i32 0)  ; GetDimensions(handle,mipLevel)
  %4549 = extractvalue %dx.types.Dimensions %4548, 0
  %4550 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4549)  ; FirstbitLo(value)
  %4551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.i32 %4551, 1
  %4553 = sub nsw i32 %4552, %4550
  %4554 = sitofp i32 %4553 to float
  %4555 = fsub fast float %4504, %4554
  %4556 = call float @dx.op.binary.f32(i32 35, float %4555, float 0.000000e+00)  ; FMax(a,b)
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4547, %dx.types.Handle %52, float %4544, float %4545, float %4535, float undef, i32 0, i32 0, i32 undef, float %4556)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fmul fast float %4558, %4529
  %4560 = fadd fast float %4559, %4532
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4569 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4570 = fadd fast float %4566, %4427
  %4571 = fadd fast float %4568, %4428
  %4572 = fadd fast float %4560, %4569
  %4573 = fmul fast float %4570, %4562
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4563, float %4573)  ; FMad(a,b,c)
  %4575 = call float @dx.op.tertiary.f32(i32 46, float %4572, float %4564, float %4574)  ; FMad(a,b,c)
  %4576 = fsub fast float %4575, %4569
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 2
  %4579 = fsub fast float %4576, %4578
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 0
  %4582 = call i32 @dx.op.binary.i32(i32 40, i32 %4458, i32 %4581)  ; UMin(a,b)
  %4583 = mul i32 %4582, 36
  %4584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.i32 %4584, 0
  %4586 = add i32 %4583, 4
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = fmul fast float %4588, %4480
  %4590 = fmul fast float %4588, %4482
  %4591 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4592 = fadd fast float %4589, %4591
  %4593 = fadd fast float %4590, %4591
  %4594 = icmp eq i32 %4585, 0
  br i1 %4594, label %4663, label %4595

; <label>:4595                                    ; preds = %4526
  br label %4596

; <label>:4596                                    ; preds = %4653, %4595
  %4597 = phi float [ %4654, %4653 ], [ 0.000000e+00, %4595 ]
  %4598 = phi float [ %4655, %4653 ], [ 0.000000e+00, %4595 ]
  %4599 = phi float [ %4656, %4653 ], [ 0.000000e+00, %4595 ]
  %4600 = phi float [ %4657, %4653 ], [ 0.000000e+00, %4595 ]
  %4601 = phi float [ %4658, %4653 ], [ 0.000000e+00, %4595 ]
  %4602 = phi float [ %4659, %4653 ], [ 0.000000e+00, %4595 ]
  %4603 = phi i32 [ %4660, %4653 ], [ 0, %4595 ]
  %4604 = shl i32 %4603, 2
  %4605 = add i32 %4471, %4604
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = add i32 %4475, %4604
  %4609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.i32 %4609, 0
  %4611 = add i32 %4610, 0
  %4612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4611, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4613 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4612, i32 0)  ; GetDimensions(handle,mipLevel)
  %4614 = extractvalue %dx.types.Dimensions %4613, 0
  %4615 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4614)  ; FirstbitLo(value)
  %4616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.i32 %4616, 1
  %4618 = sub nsw i32 %4617, %4615
  %4619 = sitofp i32 %4618 to float
  %4620 = fsub fast float %4504, %4619
  %4621 = call float @dx.op.binary.f32(i32 35, float %4620, float 0.000000e+00)  ; FMax(a,b)
  %4622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4612, %dx.types.Handle %52, float %4592, float %4593, float %4607, float undef, i32 0, i32 0, i32 undef, float %4621)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = fcmp fast ogt float %4623, 0.000000e+00
  br i1 %4624, label %4625, label %4653

; <label>:4625                                    ; preds = %4596
  %4626 = add i32 %4586, %4604
  %4627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.i32 %4627, 0
  %4629 = and i32 %4628, 32767
  %4630 = mul nuw nsw i32 %4629, 928
  %4631 = add nuw nsw i32 %4630, 48
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = add nuw nsw i32 %4630, 60
  %4637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = fmul fast float %4633, %4623
  %4642 = fmul fast float %4634, %4623
  %4643 = fmul fast float %4635, %4623
  %4644 = fadd fast float %4641, %4597
  %4645 = fadd fast float %4642, %4598
  %4646 = fadd fast float %4643, %4599
  %4647 = fmul fast float %4638, %4623
  %4648 = fmul fast float %4639, %4623
  %4649 = fmul fast float %4640, %4623
  %4650 = fadd fast float %4647, %4600
  %4651 = fadd fast float %4648, %4601
  %4652 = fadd fast float %4649, %4602
  br label %4653

; <label>:4653                                    ; preds = %4625, %4596
  %4654 = phi float [ %4644, %4625 ], [ %4597, %4596 ]
  %4655 = phi float [ %4645, %4625 ], [ %4598, %4596 ]
  %4656 = phi float [ %4646, %4625 ], [ %4599, %4596 ]
  %4657 = phi float [ %4650, %4625 ], [ %4600, %4596 ]
  %4658 = phi float [ %4651, %4625 ], [ %4601, %4596 ]
  %4659 = phi float [ %4652, %4625 ], [ %4602, %4596 ]
  %4660 = add nuw i32 %4603, 1
  %4661 = icmp eq i32 %4660, %4585
  br i1 %4661, label %4662, label %4596

; <label>:4662                                    ; preds = %4653
  br label %4663

; <label>:4663                                    ; preds = %4662, %4526
  %4664 = phi float [ 0.000000e+00, %4526 ], [ %4654, %4662 ]
  %4665 = phi float [ 0.000000e+00, %4526 ], [ %4655, %4662 ]
  %4666 = phi float [ 0.000000e+00, %4526 ], [ %4656, %4662 ]
  %4667 = phi float [ 0.000000e+00, %4526 ], [ %4657, %4662 ]
  %4668 = phi float [ 0.000000e+00, %4526 ], [ %4658, %4662 ]
  %4669 = phi float [ 0.000000e+00, %4526 ], [ %4659, %4662 ]
  %4670 = fadd fast float %4667, %4664
  %4671 = fmul fast float %4670, 0x3F847AE140000000
  %4672 = fadd fast float %4668, %4665
  %4673 = fmul fast float %4672, 0x3F847AE140000000
  %4674 = fadd fast float %4669, %4666
  %4675 = fmul fast float %4674, 0x3F847AE140000000
  br label %4676

; <label>:4676                                    ; preds = %4663, %4460, %4405, %4402, %4373, %4335
  %4677 = phi float [ %4397, %4373 ], [ 0.000000e+00, %4335 ], [ %4671, %4663 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4460 ], [ 0.000000e+00, %4402 ]
  %4678 = phi float [ %4399, %4373 ], [ 0.000000e+00, %4335 ], [ %4673, %4663 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4460 ], [ 0.000000e+00, %4402 ]
  %4679 = phi float [ %4401, %4373 ], [ 0.000000e+00, %4335 ], [ %4675, %4663 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4460 ], [ 0.000000e+00, %4402 ]
  %4680 = phi float [ %4387, %4373 ], [ -1.310720e+05, %4335 ], [ %4579, %4663 ], [ -1.310720e+05, %4405 ], [ -1.310720e+05, %4460 ], [ -1.310720e+05, %4402 ]
  %4681 = phi i1 [ true, %4373 ], [ false, %4335 ], [ true, %4663 ], [ false, %4405 ], [ false, %4460 ], [ false, %4402 ]
  %4682 = and i32 %205, 3
  %4683 = icmp eq i32 %4682, 1
  %4684 = select i1 %4683, float 1.000000e+00, float 0.000000e+00
  %4685 = fsub fast float %4680, %169
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = select i1 %4681, float %4686, float 1.000000e+00
  %4688 = fmul fast float %4687, %4684
  %4689 = icmp eq i32 %4682, 3
  %4690 = select i1 %4689, float 1.000000e+00, float %4688
  %4691 = call float @dx.op.binary.f32(i32 35, float %4278, float %4690)  ; FMax(a,b)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fcmp fast une float %4692, 0.000000e+00
  %4694 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 25, float %4694)  ; Rsqrt(value)
  br i1 %4693, label %4703, label %4696

; <label>:4696                                    ; preds = %4676
  %4697 = fmul fast float %4695, %167
  %4698 = fmul fast float %4695, %168
  %4699 = fmul fast float %4695, %169
  %4700 = fsub fast float -0.000000e+00, %4697
  %4701 = fsub fast float -0.000000e+00, %4698
  %4702 = fsub fast float -0.000000e+00, %4699
  br label %4871

; <label>:4703                                    ; preds = %4676
  %4704 = fmul fast float %167, %4695
  %4705 = fsub fast float -0.000000e+00, %4704
  %4706 = fmul fast float %168, %4695
  %4707 = fsub fast float -0.000000e+00, %4706
  %4708 = fmul fast float %169, %4695
  %4709 = fsub fast float -0.000000e+00, %4708
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4707, float %4709, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = fmul fast float %4692, 2.500000e+00
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4692, 0x4013FFFFE0000000
  %4714 = fadd fast float %4713, 0xBFFFFFFFE0000000
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fmul fast float %4692, 0x4004000020000000
  %4717 = fadd fast float %4716, 0xBFF8000040000000
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4720 = fmul fast float %4281, 1.000000e+01
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4721, 2.000000e+00
  %4723 = fsub fast float 3.000000e+00, %4722
  %4724 = fmul fast float %4721, %4721
  %4725 = fmul fast float %4724, %4723
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = fsub fast float 0x3FE3333340000000, %4302
  %4728 = fmul fast float %4727, 0x400AAAAAA0000000
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4726, %4729
  %4731 = fmul fast float %4314, 0x3FEA2B8620000000
  %4732 = fmul fast float %4315, 0x3FEA2B8620000000
  %4733 = fmul fast float %4316, 0x3FEA2B8620000000
  %4734 = fadd fast float %4731, 0x3FC81DFBA0000000
  %4735 = fmul fast float %4734, %4314
  %4736 = fadd fast float %4735, 0x3F910E6020000000
  %4737 = fadd fast float %4732, 0x3FC81DFBA0000000
  %4738 = fmul fast float %4737, %4315
  %4739 = fadd fast float %4738, 0x3F910E6020000000
  %4740 = fadd fast float %4733, 0x3FC81DFBA0000000
  %4741 = fmul fast float %4740, %4316
  %4742 = fadd fast float %4741, 0x3F910E6020000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4745 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4746 = fsub fast float %4743, %4314
  %4747 = fsub fast float %4744, %4315
  %4748 = fsub fast float %4745, %4316
  %4749 = fmul fast float %4746, %4719
  %4750 = fmul fast float %4749, %4730
  %4751 = fmul fast float %4747, %4719
  %4752 = fmul fast float %4751, %4730
  %4753 = fmul fast float %4748, %4719
  %4754 = fmul fast float %4753, %4730
  %4755 = fadd fast float %4750, %4314
  %4756 = fadd fast float %4752, %4315
  %4757 = fadd fast float %4754, %4316
  %4758 = fmul fast float %4275, %4275
  %4759 = fmul fast float %4758, %4758
  %4760 = fadd fast float %4715, 1.000000e+00
  %4761 = fsub fast float %4760, %4730
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fsub fast float 1.000000e+00, %4759
  %4766 = call float @dx.op.binary.f32(i32 36, float %4762, float %4765)  ; FMin(a,b)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4768 = call float @dx.op.binary.f32(i32 35, float %4766, float %4767)  ; FMax(a,b)
  %4769 = fadd fast float %4764, 0xBFE4CCCCC0000000
  %4770 = fmul fast float %4769, 0x4006DB6DA0000000
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4771, 2.000000e+00
  %4773 = fsub fast float 3.000000e+00, %4772
  %4774 = bitcast float %4299 to i32
  %4775 = ashr i32 %4774, 1
  %4776 = add nsw i32 %4775, 532487669
  %4777 = bitcast i32 %4776 to float
  %4778 = fsub fast float 1.000000e+00, %4777
  %4779 = bitcast float %4778 to i32
  %4780 = sub nsw i32 2129859010, %4779
  %4781 = bitcast i32 %4780 to float
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = bitcast float %4300 to i32
  %4784 = ashr i32 %4783, 1
  %4785 = add nsw i32 %4784, 532487669
  %4786 = bitcast i32 %4785 to float
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = bitcast float %4787 to i32
  %4789 = sub nsw i32 2129859010, %4788
  %4790 = bitcast i32 %4789 to float
  %4791 = fmul fast float %4790, 2.000000e+00
  %4792 = bitcast float %4301 to i32
  %4793 = ashr i32 %4792, 1
  %4794 = add nsw i32 %4793, 532487669
  %4795 = bitcast i32 %4794 to float
  %4796 = fsub fast float 1.000000e+00, %4795
  %4797 = bitcast float %4796 to i32
  %4798 = sub nsw i32 2129859010, %4797
  %4799 = bitcast i32 %4798 to float
  %4800 = fmul fast float %4799, 2.000000e+00
  %4801 = fsub fast float 0x4002A9FBE0000000, %4782
  %4802 = fadd fast float %4782, 0x3FD54FDF00000000
  %4803 = bitcast float %4802 to i32
  %4804 = sub nsw i32 2129859010, %4803
  %4805 = bitcast i32 %4804 to float
  %4806 = fmul fast float %4805, %4801
  %4807 = fmul fast float %4806, %4806
  %4808 = fsub fast float 0x4002A9FBE0000000, %4791
  %4809 = fadd fast float %4791, 0x3FD54FDF00000000
  %4810 = bitcast float %4809 to i32
  %4811 = sub nsw i32 2129859010, %4810
  %4812 = bitcast i32 %4811 to float
  %4813 = fmul fast float %4812, %4808
  %4814 = fmul fast float %4813, %4813
  %4815 = fsub fast float 0x4002A9FBE0000000, %4800
  %4816 = fadd fast float %4800, 0x3FD54FDF00000000
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4819, %4815
  %4821 = fmul fast float %4820, %4820
  %4822 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4807)  ; FMax(a,b)
  %4823 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4814)  ; FMax(a,b)
  %4824 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4821)  ; FMax(a,b)
  %4825 = fsub fast float 1.000000e+00, %4710
  %4826 = fadd fast float %4825, %4726
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = fsub fast float 1.000000e+00, %4690
  %4829 = fmul fast float %4768, %4828
  %4830 = fmul fast float %4771, %4771
  %4831 = fmul fast float %4830, %4829
  %4832 = fmul fast float %4831, %4773
  %4833 = fmul fast float %4828, 0xBFE99999A0000000
  %4834 = fmul fast float %4833, %4719
  %4835 = fmul fast float %4834, %4730
  %4836 = fadd fast float %4835, 1.000000e+00
  %4837 = fadd fast float %4302, -1.000000e+00
  %4838 = fmul fast float %4836, %4837
  %4839 = fadd fast float %4838, 1.000000e+00
  %4840 = fsub fast float %4822, %4299
  %4841 = fsub fast float %4823, %4300
  %4842 = fsub fast float %4824, %4301
  %4843 = fmul fast float %4832, %4840
  %4844 = fmul fast float %4832, %4841
  %4845 = fmul fast float %4832, %4842
  %4846 = fadd fast float %4843, %4299
  %4847 = fadd fast float %4844, %4300
  %4848 = fadd fast float %4845, %4301
  %4849 = fsub fast float %111, %4263
  %4850 = fsub fast float %112, %4264
  %4851 = fsub fast float %113, %4265
  %4852 = fmul fast float %4832, %4849
  %4853 = fmul fast float %4832, %4850
  %4854 = fmul fast float %4832, %4851
  %4855 = fadd fast float %4852, %4263
  %4856 = fadd fast float %4853, %4264
  %4857 = fadd fast float %4854, %4265
  %4858 = fmul fast float %4832, %4827
  %4859 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = fmul fast float %4858, %4860
  %4862 = fadd fast float %4861, %4859
  %4863 = fsub fast float 1.000000e+00, %4275
  %4864 = fmul fast float %4832, %4863
  %4865 = fadd fast float %4864, %4275
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4855, float %4856, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call float @dx.op.unary.f32(i32 25, float %4866)  ; Rsqrt(value)
  %4868 = fmul fast float %4855, %4867
  %4869 = fmul fast float %4856, %4867
  %4870 = fmul fast float %4857, %4867
  br label %4871

; <label>:4871                                    ; preds = %4703, %4696
  %4872 = phi float [ %4702, %4696 ], [ %4709, %4703 ]
  %4873 = phi float [ %4701, %4696 ], [ %4707, %4703 ]
  %4874 = phi float [ %4700, %4696 ], [ %4705, %4703 ]
  %4875 = phi float [ %4699, %4696 ], [ %4708, %4703 ]
  %4876 = phi float [ %4698, %4696 ], [ %4706, %4703 ]
  %4877 = phi float [ %4697, %4696 ], [ %4704, %4703 ]
  %4878 = phi float [ %4299, %4696 ], [ %4846, %4703 ]
  %4879 = phi float [ %4300, %4696 ], [ %4847, %4703 ]
  %4880 = phi float [ %4301, %4696 ], [ %4848, %4703 ]
  %4881 = phi float [ %4314, %4696 ], [ %4755, %4703 ]
  %4882 = phi float [ %4315, %4696 ], [ %4756, %4703 ]
  %4883 = phi float [ %4316, %4696 ], [ %4757, %4703 ]
  %4884 = phi float [ %4263, %4696 ], [ %4868, %4703 ]
  %4885 = phi float [ %4264, %4696 ], [ %4869, %4703 ]
  %4886 = phi float [ %4265, %4696 ], [ %4870, %4703 ]
  %4887 = phi float [ %4302, %4696 ], [ %4862, %4703 ]
  %4888 = phi float [ %4275, %4696 ], [ %4865, %4703 ]
  %4889 = fsub fast float -0.000000e+00, %169
  %4890 = select i1 %229, float 0.000000e+00, float %4880
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %4874, float %4873, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4876, float %4875, float %4884, float %4885, float %4886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = fmul fast float %4893, 2.000000e+00
  %4895 = fmul fast float %4894, %4884
  %4896 = fmul fast float %4894, %4885
  %4897 = fmul fast float %4894, %4886
  %4898 = fsub fast float %4877, %4895
  %4899 = fsub fast float %4876, %4896
  %4900 = fsub fast float %4875, %4897
  %4901 = call float @dx.op.binary.f32(i32 36, float %4888, float 1.000000e+00)  ; FMin(a,b)
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = ashr i32 %4903, 1
  %4905 = add nsw i32 %4904, 532487669
  %4906 = bitcast i32 %4905 to float
  %4907 = fsub fast float 1.000000e+00, %4887
  %4908 = call float @dx.op.binary.f32(i32 35, float %4907, float 0x3F847AE140000000)  ; FMax(a,b)
  %4909 = fmul fast float %4908, %4908
  %4910 = fmul fast float %4909, %4909
  %4911 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4906, float %4910, float %4911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = fsub fast float 1.000000e+00, %4888
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = fsub fast float 1.000000e+00, %72
  %4919 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4919, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4921 = fdiv fast float %4918, %4920
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fmul fast float %4923, 5.000000e-01
  %4925 = fadd fast float %4924, 5.000000e-01
  %4926 = fmul fast float %4925, %72
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, %4921
  %4930 = fadd fast float %4926, %4929
  %4931 = fsub fast float 5.000000e-01, %4924
  %4932 = fmul fast float %4931, %4881
  %4933 = fmul fast float %4931, %4882
  %4934 = fmul fast float %4931, %4883
  %4935 = fadd fast float %4930, %4932
  %4936 = fadd fast float %4930, %4933
  %4937 = fadd fast float %4930, %4934
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, 5.000000e-01
  %4941 = fadd fast float %4940, 5.000000e-01
  %4942 = fmul fast float %4941, %72
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, %4921
  %4946 = fadd fast float %4942, %4945
  %4947 = fsub fast float 5.000000e-01, %4940
  %4948 = fmul fast float %4947, %4881
  %4949 = fmul fast float %4947, %4882
  %4950 = fmul fast float %4947, %4883
  %4951 = fadd fast float %4946, %4948
  %4952 = fadd fast float %4946, %4949
  %4953 = fadd fast float %4946, %4950
  %4954 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %4957 = call float @dx.op.binary.f32(i32 36, float %4881, float %4956)  ; FMin(a,b)
  %4958 = fmul fast float %4957, %4902
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = call float @dx.op.binary.f32(i32 36, float %4882, float %4956)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4902
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = call float @dx.op.binary.f32(i32 36, float %4883, float %4956)  ; FMin(a,b)
  %4970 = fmul fast float %4969, %4902
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4901, %73
  %4976 = fmul fast float %4975, %4935
  %4977 = fmul fast float %4976, %4962
  %4978 = fmul fast float %4901, %74
  %4979 = fmul fast float %4978, %4936
  %4980 = fmul fast float %4979, %4968
  %4981 = fmul fast float %4901, %75
  %4982 = fmul fast float %4981, %4937
  %4983 = fmul fast float %4982, %4974
  %4984 = call float @dx.op.binary.f32(i32 36, float %4878, float %4956)  ; FMin(a,b)
  %4985 = fmul fast float %4984, %4902
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = call float @dx.op.binary.f32(i32 36, float %4879, float %4956)  ; FMin(a,b)
  %4991 = fmul fast float %4990, %4902
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = call float @dx.op.binary.f32(i32 36, float %4890, float %4956)  ; FMin(a,b)
  %4997 = fmul fast float %4996, %4902
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %4975, %4951
  %5003 = fmul fast float %5002, %4989
  %5004 = fmul fast float %4978, %4952
  %5005 = fmul fast float %5004, %4995
  %5006 = fmul fast float %4981, %4953
  %5007 = fmul fast float %5006, %5001
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4980, float %4983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = select i1 %229, float 0.000000e+00, float %4977
  %5010 = select i1 %229, float %5008, float %4980
  %5011 = select i1 %229, float 0.000000e+00, float %4983
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5003, float %5005, float %5007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = select i1 %229, float 0.000000e+00, float %5003
  %5014 = select i1 %229, float %5012, float %5005
  %5015 = select i1 %229, float 0.000000e+00, float %5007
  %5016 = fmul fast float %4892, 9.843750e-01
  %5017 = fmul fast float %4887, 9.843750e-01
  %5018 = fadd fast float %5016, 7.812500e-03
  %5019 = fadd fast float %5017, 7.812500e-03
  %5020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 2
  %5022 = extractvalue %dx.types.ResRet.f32 %5020, 3
  %5023 = fmul fast float %5021, %4878
  %5024 = fmul fast float %5021, %4879
  %5025 = fmul fast float %5021, %4890
  %5026 = fadd fast float %5023, %5022
  %5027 = fadd fast float %5024, %5022
  %5028 = fadd fast float %5025, %5022
  %5029 = fcmp fast ogt float %4276, 0.000000e+00
  br i1 %5029, label %5030, label %5056

; <label>:5030                                    ; preds = %4871
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4276, float %4892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = fadd fast float %5032, -5.000000e-01
  %5036 = fadd fast float %5033, -5.000000e-01
  %5037 = fadd fast float %5034, -5.000000e-01
  %5038 = fsub fast float 1.000000e+00, %4878
  %5039 = fsub fast float 1.000000e+00, %4879
  %5040 = fsub fast float 1.000000e+00, %4890
  %5041 = fmul fast float %4878, 4.000000e+00
  %5042 = fmul fast float %5041, %5038
  %5043 = fmul fast float %5042, %5035
  %5044 = fmul fast float %4879, 4.000000e+00
  %5045 = fmul fast float %5044, %5039
  %5046 = fmul fast float %5045, %5036
  %5047 = fmul fast float %4890, 4.000000e+00
  %5048 = fmul fast float %5047, %5040
  %5049 = fmul fast float %5048, %5037
  %5050 = fadd fast float %5043, %5026
  %5051 = fadd fast float %5046, %5027
  %5052 = fadd fast float %5049, %5028
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  br label %5056

; <label>:5056                                    ; preds = %5030, %4871
  %5057 = phi float [ %5053, %5030 ], [ %5026, %4871 ]
  %5058 = phi float [ %5054, %5030 ], [ %5027, %4871 ]
  %5059 = phi float [ %5055, %5030 ], [ %5028, %4871 ]
  %5060 = call float @dx.op.binary.f32(i32 35, float %5058, float %5059)  ; FMax(a,b)
  %5061 = call float @dx.op.binary.f32(i32 35, float %5057, float %5060)  ; FMax(a,b)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = fmul fast float %5061, %4887
  %5064 = fadd fast float %5063, %4887
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 2
  %5067 = extractvalue %dx.types.CBufRet.f32 %5065, 3
  %5068 = fmul fast float %5064, %5066
  %5069 = fadd fast float %5068, %5067
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fsub fast float 1.000000e+00, %4913
  %5072 = fadd fast float %5071, %5070
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fcmp fast olt float %5073, 1.000000e+00
  br i1 %5074, label %5075, label %5551

; <label>:5075                                    ; preds = %5056
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5078 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5079 = fmul fast float %5077, %104
  %5080 = fmul fast float %5078, %105
  %5081 = fptoui float %5079 to i32
  %5082 = fptoui float %5080 to i32
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5086 = extractvalue %dx.types.CBufRet.f32 %5083, 3
  %5087 = fadd fast float %92, -4.000000e+00
  %5088 = call float @dx.op.binary.f32(i32 35, float %5087, float 0.000000e+00)  ; FMax(a,b)
  %5089 = fadd fast float %5088, %5084
  %5090 = fmul fast float %5089, %5085
  %5091 = call float @dx.op.unary.f32(i32 23, float %5090)  ; Log(value)
  %5092 = fmul fast float %5091, %5086
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5095 = fmul fast float %5092, %5094
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.i32 %5097, 1
  %5099 = add i32 %5098, -1
  %5100 = uitofp i32 %5098 to float
  %5101 = fmul fast float %5100, %5096
  %5102 = fptoui float %5101 to i32
  %5103 = call i32 @dx.op.binary.i32(i32 40, i32 %5102, i32 %5099)  ; UMin(a,b)
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 2
  %5106 = extractvalue %dx.types.CBufRet.i32 %5104, 3
  %5107 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5082, i32 %5105, i32 %5081)  ; UMad(a,b,c)
  %5108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5103, i32 %5106, i32 %5107)  ; UMad(a,b,c)
  %5109 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5110 = fptoui float %5109 to i32
  %5111 = lshr i32 %5110, 5
  %5112 = call i32 @dx.op.binary.i32(i32 40, i32 %5111, i32 8191)  ; UMin(a,b)
  %5113 = fsub fast float %4680, %169
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fcmp fast ogt float %5114, 0.000000e+00
  %5116 = fcmp fast ogt float %4900, 0.000000e+00
  %5117 = and i1 %5116, %5115
  br i1 %5117, label %5118, label %5147

; <label>:5118                                    ; preds = %5075
  %5119 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float -1.000000e+00)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5120, float 1.000000e+00)  ; FMin(a,b)
  %5122 = fmul fast float %5121, %5121
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fmul fast float %5123, 0x3FFC6E2300000000
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = fcmp fast ogt float %5125, 0.000000e+00
  %5127 = call float @dx.op.unary.f32(i32 24, float %5125)  ; Sqrt(value)
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = call float @dx.op.unary.f32(i32 23, float %5128)  ; Log(value)
  %5130 = fmul fast float %5129, 5.000000e+00
  %5131 = call float @dx.op.unary.f32(i32 21, float %5130)  ; Exp(value)
  %5132 = fmul fast float %5131, 0x3FEF591A60000000
  %5133 = fadd fast float %5132, 0x3F94DCB540000000
  %5134 = select i1 %5126, float %5133, float 1.000000e+00
  %5135 = fcmp fast oge float %5134, 1.000000e+00
  %5136 = fmul fast float %5119, 2.000000e+00
  %5137 = fadd fast float %5136, %4900
  %5138 = select i1 %5135, float %5137, float %4900
  %5139 = fsub fast float %5138, %4900
  %5140 = fmul fast float %5139, %5114
  %5141 = fadd fast float %5140, %4900
  %5142 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %5141, float %4898, float %4899, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.unary.f32(i32 25, float %5142)  ; Rsqrt(value)
  %5144 = fmul fast float %5143, %4898
  %5145 = fmul fast float %5143, %4899
  %5146 = fmul fast float %5141, %5143
  br label %5147

; <label>:5147                                    ; preds = %5118, %5075
  %5148 = phi float [ %5144, %5118 ], [ %4898, %5075 ]
  %5149 = phi float [ %5145, %5118 ], [ %4899, %5075 ]
  %5150 = phi float [ %5146, %5118 ], [ %4900, %5075 ]
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 2
  %5153 = add nsw i32 %5152, -1
  %5154 = call i32 @dx.op.binary.i32(i32 37, i32 %5153, i32 0)  ; IMax(a,b)
  %5155 = shl i32 %5112, 2
  %5156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5155, i32 undef)  ; BufferLoad(srv,index,wot)
  %5157 = extractvalue %dx.types.ResRet.i32 %5156, 0
  %5158 = lshr i32 %5157, 16
  %5159 = and i32 %5157, 65535
  %5160 = lshr i32 %5157, 21
  %5161 = lshr i32 %5159, 5
  %5162 = call i32 @dx.op.binary.i32(i32 40, i32 %5161, i32 %5154)  ; UMin(a,b)
  %5163 = icmp ugt i32 %5160, %5162
  br i1 %5163, label %5527, label %5164

; <label>:5164                                    ; preds = %5147
  br label %5165

; <label>:5165                                    ; preds = %5519, %5164
  %5166 = phi float [ %5520, %5519 ], [ 0.000000e+00, %5164 ]
  %5167 = phi float [ %5521, %5519 ], [ 0.000000e+00, %5164 ]
  %5168 = phi float [ %5522, %5519 ], [ 0.000000e+00, %5164 ]
  %5169 = phi float [ %5523, %5519 ], [ 1.000000e+00, %5164 ]
  %5170 = phi i32 [ %5524, %5519 ], [ %5160, %5164 ]
  %5171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.i32 %5171, 2
  %5173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5108, i32 %5172, i32 %5170)  ; UMad(a,b,c)
  %5174 = shl i32 %5173, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = shl i32 %5170, 5
  %5178 = sub nsw i32 %5158, %5177
  %5179 = call i32 @dx.op.binary.i32(i32 37, i32 %5178, i32 0)  ; IMax(a,b)
  %5180 = call i32 @dx.op.binary.i32(i32 38, i32 %5179, i32 31)  ; IMin(a,b)
  %5181 = sub nsw i32 1, %5158
  %5182 = add nsw i32 %5181, %5159
  %5183 = call i32 @dx.op.binary.i32(i32 37, i32 %5182, i32 0)  ; IMax(a,b)
  %5184 = call i32 @dx.op.binary.i32(i32 38, i32 %5183, i32 32)  ; IMin(a,b)
  %5185 = and i32 %5184, 31
  %5186 = shl i32 -1, %5185
  %5187 = xor i32 %5186, -1
  %5188 = and i32 %5180, 31
  %5189 = shl i32 %5187, %5188
  %5190 = icmp eq i32 %5184, 32
  %5191 = select i1 %5190, i32 -1, i32 %5189
  %5192 = and i32 %5191, %5176
  %5193 = icmp eq i32 %5192, 0
  br i1 %5193, label %5519, label %5194

; <label>:5194                                    ; preds = %5165
  br label %5195

; <label>:5195                                    ; preds = %5302, %5194
  %5196 = phi float [ %5303, %5302 ], [ %5166, %5194 ]
  %5197 = phi float [ %5304, %5302 ], [ %5167, %5194 ]
  %5198 = phi float [ %5305, %5302 ], [ %5168, %5194 ]
  %5199 = phi float [ %5306, %5302 ], [ %5169, %5194 ]
  %5200 = phi i32 [ %5205, %5302 ], [ %5192, %5194 ]
  %5201 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5200)  ; FirstbitLo(value)
  %5202 = add i32 %5201, %5177
  %5203 = and i32 %5201, 31
  %5204 = shl i32 1, %5203
  %5205 = xor i32 %5204, %5200
  %5206 = mul i32 %5202, 72
  %5207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5206, i32 undef)  ; BufferLoad(srv,index,wot)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.ResRet.f32 %5207, 1
  %5210 = extractvalue %dx.types.ResRet.f32 %5207, 2
  %5211 = add i32 %5206, 12
  %5212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.i32 %5212, 0
  %5214 = add i32 %5206, 16
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = add i32 %5206, 28
  %5220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5219, i32 undef)  ; BufferLoad(srv,index,wot)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = add i32 %5206, 32
  %5223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5222, i32 undef)  ; BufferLoad(srv,index,wot)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.ResRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.ResRet.f32 %5223, 2
  %5227 = extractvalue %dx.types.ResRet.f32 %5223, 3
  %5228 = add i32 %5206, 48
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = add i32 %5206, 56
  %5233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5232, i32 undef)  ; BufferLoad(srv,index,wot)
  %5234 = extractvalue %dx.types.ResRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.ResRet.f32 %5233, 1
  %5236 = add i32 %5206, 64
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = mul i32 %5202, 60
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = add i32 %5240, 12
  %5246 = add i32 %5240, 48
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = and i32 %5213, 32767
  %5252 = bitcast float %5208 to i32
  %5253 = icmp eq i32 %5252, -1
  %5254 = bitcast float %5209 to i32
  %5255 = and i32 %5213, 32768
  %5256 = icmp ne i32 %5255, 0
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5261 = fsub fast float %5242, %5258
  %5262 = fsub fast float %5243, %5259
  %5263 = fsub fast float %5244, %5260
  %5264 = fsub fast float %167, %5261
  %5265 = fsub fast float %168, %5262
  %5266 = fsub fast float %169, %5263
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 1
  %5270 = extractvalue %dx.types.ResRet.f32 %5267, 2
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5268, float %5269, float %5270)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = add i32 %5240, 24
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5274, float %5275, float %5276)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = add i32 %5240, 36
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5280, float %5281, float %5282)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = call float @dx.op.unary.f32(i32 6, float %5271)  ; FAbs(value)
  %5285 = call float @dx.op.unary.f32(i32 6, float %5277)  ; FAbs(value)
  %5286 = call float @dx.op.unary.f32(i32 6, float %5283)  ; FAbs(value)
  %5287 = fsub fast float %5248, %5284
  %5288 = fsub fast float %5249, %5285
  %5289 = fsub fast float %5250, %5286
  %5290 = fmul fast float %5287, %5216
  %5291 = fmul fast float %5288, %5217
  %5292 = fmul fast float %5289, %5218
  %5293 = call float @dx.op.binary.f32(i32 36, float %5291, float %5292)  ; FMin(a,b)
  %5294 = call float @dx.op.binary.f32(i32 36, float %5290, float %5293)  ; FMin(a,b)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = call float @dx.op.binary.f32(i32 36, float %5199, float %5295)  ; FMin(a,b)
  %5297 = uitofp i1 %5256 to float
  %5298 = fadd fast float %5114, 1.000000e+00
  %5299 = fsub fast float %5298, %5297
  %5300 = fmul fast float %5296, %5299
  %5301 = fcmp fast ogt float %5300, 0.000000e+00
  br i1 %5301, label %5308, label %5302

; <label>:5302                                    ; preds = %5450, %5195
  %5303 = phi float [ %5514, %5450 ], [ %5196, %5195 ]
  %5304 = phi float [ %5515, %5450 ], [ %5197, %5195 ]
  %5305 = phi float [ %5516, %5450 ], [ %5198, %5195 ]
  %5306 = phi float [ %5517, %5450 ], [ %5199, %5195 ]
  %5307 = icmp eq i32 %5200, %5204
  br i1 %5307, label %5518, label %5195

; <label>:5308                                    ; preds = %5195
  br i1 %5253, label %5366, label %5309

; <label>:5309                                    ; preds = %5308
  %5310 = fsub fast float -0.000000e+00, %5268
  %5311 = fsub fast float -0.000000e+00, %5269
  %5312 = fsub fast float -0.000000e+00, %5270
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = fsub fast float -0.000000e+00, %5313
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = fadd fast float %5315, %5231
  %5317 = fadd fast float %5230, %5315
  %5318 = fsub fast float -0.000000e+00, %5317
  %5319 = fcmp ogt float %5313, -0.000000e+00
  %5320 = select i1 %5319, float %5318, float %5316
  %5321 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5322 = fdiv fast float 1.000000e+00, %5321
  %5323 = fmul fast float %5320, %5322
  %5324 = call float @dx.op.binary.f32(i32 35, float %5323, float 0.000000e+00)  ; FMax(a,b)
  %5325 = fsub fast float -0.000000e+00, %5274
  %5326 = fsub fast float -0.000000e+00, %5275
  %5327 = fsub fast float -0.000000e+00, %5276
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = fsub fast float -0.000000e+00, %5328
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = fadd fast float %5330, %5235
  %5332 = fadd fast float %5234, %5330
  %5333 = fsub fast float -0.000000e+00, %5332
  %5334 = fcmp ogt float %5328, -0.000000e+00
  %5335 = select i1 %5334, float %5333, float %5331
  %5336 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5337 = fdiv fast float 1.000000e+00, %5336
  %5338 = fmul fast float %5335, %5337
  %5339 = call float @dx.op.binary.f32(i32 35, float %5338, float 0.000000e+00)  ; FMax(a,b)
  %5340 = fsub fast float -0.000000e+00, %5280
  %5341 = fsub fast float -0.000000e+00, %5281
  %5342 = fsub fast float -0.000000e+00, %5282
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fsub fast float -0.000000e+00, %5343
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fadd fast float %5345, %5239
  %5347 = fadd fast float %5238, %5345
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fcmp ogt float %5343, -0.000000e+00
  %5350 = select i1 %5349, float %5348, float %5346
  %5351 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5352 = fdiv fast float 1.000000e+00, %5351
  %5353 = fmul fast float %5350, %5352
  %5354 = call float @dx.op.binary.f32(i32 35, float %5353, float 0.000000e+00)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 36, float %5339, float %5354)  ; FMin(a,b)
  %5356 = call float @dx.op.binary.f32(i32 36, float %5324, float %5355)  ; FMin(a,b)
  %5357 = fmul fast float %5356, %5148
  %5358 = fmul fast float %5356, %5149
  %5359 = fmul fast float %5356, %5150
  %5360 = fadd fast float %5357, %167
  %5361 = fadd fast float %5358, %168
  %5362 = fadd fast float %5359, %169
  %5363 = fsub fast float %5360, %5208
  %5364 = fsub fast float %5361, %5209
  %5365 = fsub fast float %5362, %5210
  br label %5373

; <label>:5366                                    ; preds = %5308
  %5367 = fmul fast float %5148, 8.096000e+03
  %5368 = fmul fast float %5149, 8.096000e+03
  %5369 = fmul fast float %5150, 8.096000e+03
  %5370 = fadd fast float %5367, %167
  %5371 = fadd fast float %5368, %168
  %5372 = fadd fast float %5369, %169
  br label %5373

; <label>:5373                                    ; preds = %5366, %5309
  %5374 = phi float [ %5148, %5366 ], [ %5363, %5309 ]
  %5375 = phi float [ %5149, %5366 ], [ %5364, %5309 ]
  %5376 = phi float [ %5150, %5366 ], [ %5365, %5309 ]
  %5377 = phi float [ %5370, %5366 ], [ %5360, %5309 ]
  %5378 = phi float [ %5371, %5366 ], [ %5361, %5309 ]
  %5379 = phi float [ %5372, %5366 ], [ %5362, %5309 ]
  %5380 = fcmp fast olt float %5227, 1.000000e+00
  br i1 %5380, label %5381, label %5412, !dx.controlflow.hints !97

; <label>:5381                                    ; preds = %5373
  %5382 = fmul fast float %5376, %5225
  %5383 = fmul fast float %5375, %5226
  %5384 = fsub fast float %5382, %5383
  %5385 = fmul fast float %5374, %5226
  %5386 = fmul fast float %5376, %5224
  %5387 = fsub fast float %5385, %5386
  %5388 = fmul fast float %5375, %5224
  %5389 = fmul fast float %5374, %5225
  %5390 = fsub fast float %5388, %5389
  %5391 = fmul fast float %5384, 2.000000e+00
  %5392 = fmul fast float %5387, 2.000000e+00
  %5393 = fmul fast float %5390, 2.000000e+00
  %5394 = fmul fast float %5391, %5227
  %5395 = fmul fast float %5392, %5227
  %5396 = fmul fast float %5393, %5227
  %5397 = fmul fast float %5393, %5225
  %5398 = fmul fast float %5392, %5226
  %5399 = fmul fast float %5391, %5226
  %5400 = fmul fast float %5393, %5224
  %5401 = fmul fast float %5392, %5224
  %5402 = fmul fast float %5391, %5225
  %5403 = fadd fast float %5397, %5374
  %5404 = fadd fast float %5403, %5394
  %5405 = fsub fast float %5404, %5398
  %5406 = fsub fast float %5375, %5400
  %5407 = fadd fast float %5406, %5395
  %5408 = fadd fast float %5407, %5399
  %5409 = fadd fast float %5396, %5376
  %5410 = fsub fast float %5409, %5402
  %5411 = fadd fast float %5410, %5401
  br label %5412

; <label>:5412                                    ; preds = %5381, %5373
  %5413 = phi float [ %5405, %5381 ], [ %5374, %5373 ]
  %5414 = phi float [ %5408, %5381 ], [ %5375, %5373 ]
  %5415 = phi float [ %5411, %5381 ], [ %5376, %5373 ]
  br i1 %5253, label %5447, label %5416

; <label>:5416                                    ; preds = %5412
  %5417 = fmul fast float %4887, 0x400187C840000000
  %5418 = fadd fast float %5417, 0xC00EFC2120000000
  %5419 = fmul fast float %5418, %4887
  %5420 = fadd fast float %5419, 0x3FE5D16340000000
  %5421 = fmul fast float %5420, %4887
  %5422 = fadd fast float %5421, 1.000000e+00
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = fsub fast float %5377, %167
  %5425 = fsub fast float %5378, %168
  %5426 = fsub fast float %5379, %169
  %5427 = fsub fast float %5377, %5208
  %5428 = fsub fast float %5378, %5209
  %5429 = fsub fast float %5379, %5210
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fadd fast float %5431, 0x3EE4F8B580000000
  %5433 = fdiv fast float %5430, %5432
  %5434 = bitcast float %5433 to i32
  %5435 = ashr i32 %5434, 1
  %5436 = add nsw i32 %5435, 532487669
  %5437 = bitcast i32 %5436 to float
  %5438 = fmul fast float %5437, %5423
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fmul fast float %5439, 0x4009981AE0000000
  %5441 = fsub fast float 0x40111BBD80000000, %5440
  %5442 = fmul fast float %5441, %5439
  %5443 = fadd fast float %5442, 0xC0009F6020000000
  %5444 = fmul fast float %5443, %5439
  %5445 = fadd fast float %5444, 1.000000e+00
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  br label %5450

; <label>:5447                                    ; preds = %5412
  %5448 = icmp ne i32 %5254, -1
  %5449 = zext i1 %5448 to i32
  br label %5450

; <label>:5450                                    ; preds = %5447, %5416
  %5451 = phi float [ %4887, %5447 ], [ %5446, %5416 ]
  %5452 = phi i32 [ %5449, %5447 ], [ 0, %5416 ]
  %5453 = fmul float %5451, 5.000000e+00
  %5454 = fsub float 5.000000e+00, %5453
  %5455 = icmp ne i32 %5452, 0
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 3
  %5458 = fadd fast float %5457, %5454
  %5459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5458)  ; FMax(a,b)
  %5460 = call float @dx.op.unary.f32(i32 6, float %5413)  ; FAbs(value)
  %5461 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5462 = fadd fast float %5461, %5460
  %5463 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5464 = fadd fast float %5462, %5463
  %5465 = fcmp fast oeq float %5464, 0.000000e+00
  %5466 = fdiv fast float 1.000000e+00, %5464
  %5467 = select i1 %5465, float 1.000000e+00, float %5466
  %5468 = fmul fast float %5467, %5413
  %5469 = fmul fast float %5467, %5414
  %5470 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5471 = call float @dx.op.unary.f32(i32 6, float %5468)  ; FAbs(value)
  %5472 = fsub fast float 1.000000e+00, %5470
  %5473 = fsub fast float 1.000000e+00, %5471
  %5474 = fcmp fast oge float %5468, 0.000000e+00
  %5475 = fcmp fast oge float %5469, 0.000000e+00
  %5476 = select i1 %5474, float 1.000000e+00, float -1.000000e+00
  %5477 = select i1 %5475, float 1.000000e+00, float -1.000000e+00
  %5478 = fcmp fast ole float %5415, 0.000000e+00
  %5479 = fmul fast float %5476, %5472
  %5480 = fmul fast float %5477, %5473
  %5481 = select i1 %5478, float %5479, float %5468
  %5482 = select i1 %5478, float %5480, float %5469
  %5483 = fmul fast float %5481, 5.000000e-01
  %5484 = fmul fast float %5482, 5.000000e-01
  %5485 = fadd fast float %5483, 5.000000e-01
  %5486 = fadd fast float %5484, 5.000000e-01
  %5487 = uitofp i32 %5251 to float
  %5488 = call float @dx.op.binary.f32(i32 36, float %5459, float 3.000000e+00)  ; FMin(a,b)
  %5489 = fadd fast float %5488, 2.000000e+00
  %5490 = call float @dx.op.unary.f32(i32 21, float %5489)  ; Exp(value)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5492 = fmul fast float %5491, %5490
  %5493 = fmul fast float %5492, 2.000000e+00
  %5494 = fsub fast float 1.000000e+00, %5493
  %5495 = fmul fast float %5485, %5494
  %5496 = fmul fast float %5486, %5494
  %5497 = fadd fast float %5495, %5492
  %5498 = fadd fast float %5496, %5492
  %5499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5497, float %5498, float %5487, float undef, i32 0, i32 0, i32 undef, float %5459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 3
  %5505 = fmul fast float %5504, %5221
  %5506 = call float @dx.op.binary.f32(i32 36, float %4954, float %5505)  ; FMin(a,b)
  %5507 = select i1 %5455, float %5506, float %5505
  %5508 = fmul fast float %5500, %5300
  %5509 = fmul fast float %5508, %5507
  %5510 = fmul fast float %5501, %5300
  %5511 = fmul fast float %5510, %5507
  %5512 = fmul fast float %5502, %5300
  %5513 = fmul fast float %5512, %5507
  %5514 = fadd fast float %5509, %5196
  %5515 = fadd fast float %5511, %5197
  %5516 = fadd fast float %5513, %5198
  %5517 = fsub fast float %5199, %5300
  br label %5302

; <label>:5518                                    ; preds = %5302
  br label %5519

; <label>:5519                                    ; preds = %5518, %5165
  %5520 = phi float [ %5166, %5165 ], [ %5303, %5518 ]
  %5521 = phi float [ %5167, %5165 ], [ %5304, %5518 ]
  %5522 = phi float [ %5168, %5165 ], [ %5305, %5518 ]
  %5523 = phi float [ %5169, %5165 ], [ %5306, %5518 ]
  %5524 = add i32 %5170, 1
  %5525 = icmp ugt i32 %5524, %5162
  br i1 %5525, label %5526, label %5165, !llvm.loop !98

; <label>:5526                                    ; preds = %5519
  br label %5527

; <label>:5527                                    ; preds = %5526, %5147
  %5528 = phi float [ 0.000000e+00, %5147 ], [ %5520, %5526 ]
  %5529 = phi float [ 0.000000e+00, %5147 ], [ %5521, %5526 ]
  %5530 = phi float [ 0.000000e+00, %5147 ], [ %5522, %5526 ]
  %5531 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = select i1 %229, float 0.000000e+00, float %5528
  %5533 = select i1 %229, float %5531, float %5529
  %5534 = select i1 %229, float 0.000000e+00, float %5530
  %5535 = fcmp fast olt float %5073, 0.000000e+00
  %5536 = call float @dx.op.unary.f32(i32 6, float %5073)  ; FAbs(value)
  %5537 = fmul fast float %5536, %5013
  %5538 = fmul fast float %5536, %5014
  %5539 = fmul fast float %5536, %5015
  %5540 = select i1 %5535, float %5013, float %5537
  %5541 = select i1 %5535, float %5014, float %5538
  %5542 = select i1 %5535, float %5015, float %5539
  %5543 = fsub fast float 1.000000e+00, %5536
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5544, %5532
  %5546 = fmul fast float %5544, %5533
  %5547 = fmul fast float %5544, %5534
  %5548 = fadd fast float %5540, %5545
  %5549 = fadd fast float %5541, %5546
  %5550 = fadd fast float %5542, %5547
  br label %5551

; <label>:5551                                    ; preds = %5527, %5056
  %5552 = phi float [ %5013, %5056 ], [ %5548, %5527 ]
  %5553 = phi float [ %5014, %5056 ], [ %5549, %5527 ]
  %5554 = phi float [ %5015, %5056 ], [ %5550, %5527 ]
  %5555 = fmul fast float %5062, %5009
  %5556 = fmul fast float %5062, %5010
  %5557 = fmul fast float %5062, %5011
  %5558 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = fcmp fast ogt float %5558, 0x3E7FF19E20000000
  %5560 = fdiv fast float 1.000000e+00, %5558
  %5561 = select i1 %5559, float %5560, float 0.000000e+00
  %5562 = fmul fast float %5561, %4881
  %5563 = fmul fast float %5561, %4882
  %5564 = fmul fast float %5561, %4883
  %5565 = fadd fast float %5562, -1.000000e+00
  %5566 = fadd fast float %5563, -1.000000e+00
  %5567 = fadd fast float %5564, -1.000000e+00
  %5568 = fmul fast float %5565, 5.000000e-01
  %5569 = fmul fast float %5566, 5.000000e-01
  %5570 = fmul fast float %5567, 5.000000e-01
  %5571 = fadd fast float %5568, 1.000000e+00
  %5572 = fadd fast float %5569, 1.000000e+00
  %5573 = fadd fast float %5570, 1.000000e+00
  %5574 = fmul fast float %5552, %5057
  %5575 = fmul fast float %5553, %5058
  %5576 = fmul fast float %5554, %5059
  %5577 = fsub fast float 1.000000e+00, %4892
  %5578 = bitcast float %5577 to i32
  %5579 = sitofp i32 %5578 to float
  %5580 = fmul fast float %5579, 5.000000e+00
  %5581 = fadd fast float %5580, 0xC1EFBF8940000000
  %5582 = fptosi float %5581 to i32
  %5583 = bitcast i32 %5582 to float
  %5584 = fmul fast float %5583, %4277
  %5585 = fmul fast float %5009, %5584
  %5586 = fmul fast float %5585, %5062
  %5587 = fmul fast float %5586, %5571
  %5588 = fmul fast float %5010, %5584
  %5589 = fmul fast float %5588, %5062
  %5590 = fmul fast float %5589, %5572
  %5591 = fmul fast float %5011, %5584
  %5592 = fmul fast float %5591, %5062
  %5593 = fmul fast float %5592, %5573
  %5594 = fmul fast float %5555, %4273
  %5595 = fmul fast float %5556, %4273
  %5596 = fmul fast float %5557, %4273
  %5597 = fadd fast float %5574, %4266
  %5598 = fadd fast float %5597, %5587
  %5599 = fmul fast float %5598, %4273
  %5600 = fadd fast float %5575, %4267
  %5601 = fadd fast float %5600, %5590
  %5602 = fmul fast float %5601, %4273
  %5603 = fadd fast float %5576, %4268
  %5604 = fadd fast float %5603, %5593
  %5605 = fmul fast float %5604, %4273
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 3
  %5608 = fcmp fast oeq float %5607, 0.000000e+00
  br i1 %5608, label %7150, label %5609

; <label>:5609                                    ; preds = %5551
  %5610 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5611 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5612 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.CBufRet.f32 %5613, 1
  %5616 = extractvalue %dx.types.CBufRet.f32 %5613, 2
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = select i1 %229, float %5618, float %5614
  %5622 = select i1 %229, float %5620, float %5615
  %5623 = select i1 %229, float %5619, float %5616
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5626 = fmul fast float %5625, %111
  %5627 = fmul fast float %5625, %112
  %5628 = fmul fast float %5625, %113
  %5629 = fadd fast float %5626, %167
  %5630 = fadd fast float %5627, %168
  %5631 = fadd fast float %5628, %169
  %5632 = fcmp fast olt float %5607, 0.000000e+00
  br i1 %5632, label %6728, label %5633

; <label>:5633                                    ; preds = %5609
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.CBufRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %5638 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.f32 %5639, 1
  %5642 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5643 = extractvalue %dx.types.CBufRet.f32 %5639, 3
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5648 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5649 = fmul fast float %5635, %5629
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5636, float %5649)  ; FMad(a,b,c)
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5637, float %5650)  ; FMad(a,b,c)
  %5652 = fadd fast float %5651, %5638
  %5653 = fmul fast float %5640, %5629
  %5654 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5641, float %5653)  ; FMad(a,b,c)
  %5655 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5642, float %5654)  ; FMad(a,b,c)
  %5656 = fadd fast float %5655, %5643
  %5657 = fmul fast float %5645, %5629
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5646, float %5657)  ; FMad(a,b,c)
  %5659 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5647, float %5658)  ; FMad(a,b,c)
  %5660 = fadd fast float %5659, %5648
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5661, 3
  %5665 = fmul fast float %5664, %5652
  %5666 = fmul fast float %5664, %5656
  %5667 = fadd fast float %5665, %5662
  %5668 = fadd fast float %5666, %5663
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5673 = fmul fast float %5672, %5652
  %5674 = fmul fast float %5672, %5656
  %5675 = fadd fast float %5673, %5670
  %5676 = fadd fast float %5674, %5671
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5679 = fsub fast float %5678, %5660
  %5680 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5681 = fmul fast float %5679, %5680
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5687 = fadd fast float %5686, %5684
  %5688 = fcmp fast ogt float %5687, 0.000000e+00
  br i1 %5688, label %5689, label %5713

; <label>:5689                                    ; preds = %5633
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = fsub fast float %5675, %5691
  %5694 = fsub fast float %5676, %5692
  %5695 = fcmp fast olt float %5693, 0.000000e+00
  %5696 = fcmp fast olt float %5694, 0.000000e+00
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = extractvalue %dx.types.CBufRet.f32 %5697, 3
  %5702 = select i1 %5695, float %5698, float %5700
  %5703 = select i1 %5696, float %5699, float %5701
  %5704 = fmul fast float %5702, %5693
  %5705 = fmul fast float %5703, %5694
  %5706 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5707 = call float @dx.op.unary.f32(i32 6, float %5705)  ; FAbs(value)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5709 = call float @dx.op.binary.f32(i32 35, float %5706, float %5707)  ; FMax(a,b)
  %5710 = fsub fast float %5708, %5709
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = fmul fast float %5711, %5683
  br label %5713

; <label>:5713                                    ; preds = %5689, %5633
  %5714 = phi float [ %5712, %5689 ], [ 0.000000e+00, %5633 ]
  %5715 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5716 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5717 = fadd fast float %5716, %5715
  %5718 = fcmp fast ogt float %5717, 0.000000e+00
  %5719 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  br i1 %5718, label %5720, label %5743

; <label>:5720                                    ; preds = %5713
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5724 = fsub fast float %5667, %5722
  %5725 = fsub fast float %5668, %5723
  %5726 = fcmp fast olt float %5724, 0.000000e+00
  %5727 = fcmp fast olt float %5725, 0.000000e+00
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5733 = select i1 %5726, float %5729, float %5731
  %5734 = select i1 %5727, float %5730, float %5732
  %5735 = fmul fast float %5733, %5724
  %5736 = fmul fast float %5734, %5725
  %5737 = call float @dx.op.unary.f32(i32 6, float %5735)  ; FAbs(value)
  %5738 = call float @dx.op.unary.f32(i32 6, float %5736)  ; FAbs(value)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5740 = fsub fast float %5719, %5739
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = fmul fast float %5741, %5683
  br label %5743

; <label>:5743                                    ; preds = %5720, %5713
  %5744 = phi float [ %5742, %5720 ], [ 0.000000e+00, %5713 ]
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = fsub fast float %5652, %5749
  %5752 = fsub fast float %5656, %5750
  %5753 = fcmp fast olt float %5751, 0.000000e+00
  %5754 = fcmp fast olt float %5752, 0.000000e+00
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5759 = extractvalue %dx.types.CBufRet.f32 %5755, 3
  %5760 = select i1 %5753, float %5756, float %5758
  %5761 = select i1 %5754, float %5757, float %5759
  %5762 = fmul fast float %5760, %5751
  %5763 = fmul fast float %5761, %5752
  %5764 = call float @dx.op.unary.f32(i32 6, float %5762)  ; FAbs(value)
  %5765 = call float @dx.op.unary.f32(i32 6, float %5763)  ; FAbs(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5764, float %5765)  ; FMax(a,b)
  %5767 = fsub fast float %5719, %5766
  %5768 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5769 = call float @dx.op.binary.f32(i32 36, float %5768, float %5747)  ; FMin(a,b)
  %5770 = fmul fast float %5769, %5683
  %5771 = fsub fast float %5744, %5770
  %5772 = fsub fast float %5714, %5744
  %5773 = fsub fast float %5772, %5770
  %5774 = call float @dx.op.binary.f32(i32 35, float %5744, float %5714)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5770, float %5774)  ; FMax(a,b)
  %5776 = fcmp fast olt float %5775, 1.000000e+00
  br i1 %5776, label %5777, label %6175, !dx.controlflow.hints !100

; <label>:5777                                    ; preds = %5743
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = fcmp fast une float %5779, 0.000000e+00
  br i1 %5780, label %5781, label %6175, !dx.controlflow.hints !101

; <label>:5781                                    ; preds = %5777
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5797 = fmul fast float %5783, %5629
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5784, float %5797)  ; FMad(a,b,c)
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5785, float %5798)  ; FMad(a,b,c)
  %5800 = fadd fast float %5799, %5786
  %5801 = fmul fast float %5788, %5629
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5789, float %5801)  ; FMad(a,b,c)
  %5803 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5790, float %5802)  ; FMad(a,b,c)
  %5804 = fadd fast float %5803, %5791
  %5805 = fmul fast float %5793, %5629
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5794, float %5805)  ; FMad(a,b,c)
  %5807 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5795, float %5806)  ; FMad(a,b,c)
  %5808 = fadd fast float %5807, %5796
  %5809 = fcmp fast oge float %5800, 1.000000e+00
  %5810 = fcmp fast oge float %5804, 1.000000e+00
  %5811 = or i1 %5809, %5810
  %5812 = fcmp fast olt float %5800, 0.000000e+00
  %5813 = fcmp fast olt float %5804, 0.000000e+00
  %5814 = or i1 %5812, %5813
  %5815 = or i1 %5811, %5814
  br i1 %5815, label %6175, label %5816, !dx.controlflow.hints !102

; <label>:5816                                    ; preds = %5781
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.i32 %5821, 2
  %5823 = uitofp i32 %5822 to float
  %5824 = extractvalue %dx.types.CBufRet.i32 %5821, 3
  %5825 = uitofp i32 %5824 to float
  %5826 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5827 = fmul fast float %5826, 2.000000e+00
  %5828 = fsub fast float %5800, %5818
  %5829 = fsub fast float %5804, %5819
  %5830 = fmul fast float %5827, %5828
  %5831 = fmul fast float %5827, %5829
  %5832 = fdiv fast float 1.000000e+00, %5612
  %5833 = fmul fast float %5831, %5832
  %5834 = call float @dx.op.unary.f32(i32 6, float %5833)  ; FAbs(value)
  %5835 = fmul fast float %5820, %5631
  %5836 = fmul fast float %5835, %5827
  %5837 = call float @dx.op.unary.f32(i32 6, float %5836)  ; FAbs(value)
  %5838 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5837, float %5834)  ; FMax(a,b)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5838, float %5839)  ; FMax(a,b)
  %5841 = fmul fast float %5840, 2.000000e+00
  %5842 = call float @dx.op.unary.f32(i32 23, float %5841)  ; Log(value)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5842, float %5823)  ; FMax(a,b)
  %5844 = call float @dx.op.unary.f32(i32 22, float %5843)  ; Frc(value)
  %5845 = fadd fast float %5844, 0xBFEA666660000000
  %5846 = fmul fast float %5845, 8.000000e+00
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = call float @dx.op.unary.f32(i32 27, float %5843)  ; Round_ni(value)
  %5849 = fadd fast float %5848, %5847
  %5850 = call float @dx.op.binary.f32(i32 36, float %5849, float %5825)  ; FMin(a,b)
  %5851 = call float @dx.op.unary.f32(i32 27, float %5850)  ; Round_ni(value)
  %5852 = fsub fast float -0.000000e+00, %5851
  %5853 = call float @dx.op.unary.f32(i32 21, float %5852)  ; Exp(value)
  %5854 = fmul fast float %5853, %5827
  %5855 = fmul fast float %5854, %5800
  %5856 = fmul fast float %5854, %5804
  %5857 = fmul fast float %5855, 2.500000e-01
  %5858 = fmul fast float %5856, 2.500000e-01
  %5859 = fadd fast float %5857, 5.000000e-01
  %5860 = fadd fast float %5858, 5.000000e-01
  %5861 = fsub fast float %5825, %5823
  %5862 = fptoui float %5861 to i32
  %5863 = add i32 %5862, 320
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5863)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5867 = fcmp fast une float %5850, %5825
  %5868 = fsub fast float %5800, %5865
  %5869 = fsub fast float %5804, %5866
  %5870 = call float @dx.op.unary.f32(i32 6, float %5868)  ; FAbs(value)
  %5871 = call float @dx.op.unary.f32(i32 6, float %5869)  ; FAbs(value)
  %5872 = fmul fast float %5870, %5854
  %5873 = fmul fast float %5871, %5854
  %5874 = fcmp fast olt float %5872, 1.000000e+00
  %5875 = fcmp fast olt float %5873, 1.000000e+00
  %5876 = and i1 %5874, %5875
  %5877 = or i1 %5867, %5876
  br i1 %5877, label %5878, label %6175, !dx.controlflow.hints !103

; <label>:5878                                    ; preds = %5816
  %5879 = fmul fast float %5856, 5.000000e-01
  %5880 = fmul fast float %5855, 5.000000e-01
  %5881 = fadd fast float %5879, 5.000000e-01
  %5882 = fadd fast float %5880, 5.000000e-01
  %5883 = sitofp i32 %5822 to float
  %5884 = fsub fast float %5850, %5883
  %5885 = call float @dx.op.unary.f32(i32 27, float %5884)  ; Round_ni(value)
  %5886 = call float @dx.op.unary.f32(i32 22, float %5850)  ; Frc(value)
  %5887 = call float @dx.op.unary.f32(i32 22, float %5882)  ; Frc(value)
  %5888 = call float @dx.op.unary.f32(i32 22, float %5881)  ; Frc(value)
  %5889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5887, float %5888, float %5885, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.ResRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.ResRet.f32 %5889, 2
  %5893 = extractvalue %dx.types.ResRet.f32 %5889, 3
  %5894 = fcmp fast ogt float %5886, 0.000000e+00
  br i1 %5894, label %5895, label %5916, !dx.controlflow.hints !104

; <label>:5895                                    ; preds = %5878
  %5896 = fadd fast float %5885, 1.000000e+00
  %5897 = call float @dx.op.unary.f32(i32 22, float %5859)  ; Frc(value)
  %5898 = call float @dx.op.unary.f32(i32 22, float %5860)  ; Frc(value)
  %5899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5897, float %5898, float %5896, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.ResRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.ResRet.f32 %5899, 2
  %5903 = extractvalue %dx.types.ResRet.f32 %5899, 3
  %5904 = fsub fast float %5900, %5890
  %5905 = fsub fast float %5901, %5891
  %5906 = fsub fast float %5902, %5892
  %5907 = fsub fast float %5903, %5893
  %5908 = fmul fast float %5904, %5886
  %5909 = fmul fast float %5905, %5886
  %5910 = fmul fast float %5906, %5886
  %5911 = fmul fast float %5907, %5886
  %5912 = fadd fast float %5908, %5890
  %5913 = fadd fast float %5909, %5891
  %5914 = fadd fast float %5910, %5892
  %5915 = fadd fast float %5911, %5893
  br label %5916

; <label>:5916                                    ; preds = %5895, %5878
  %5917 = phi float [ %5912, %5895 ], [ %5890, %5878 ]
  %5918 = phi float [ %5913, %5895 ], [ %5891, %5878 ]
  %5919 = phi float [ %5914, %5895 ], [ %5892, %5878 ]
  %5920 = phi float [ %5915, %5895 ], [ %5893, %5878 ]
  %5921 = fadd fast float %5917, -5.000000e-01
  %5922 = fadd fast float %5919, -5.000000e-01
  %5923 = fmul fast float %5921, 0xBFD5555560000000
  %5924 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5922, float %5923)  ; FMad(a,b,c)
  %5925 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5918, float 0.000000e+00)  ; FMad(a,b,c)
  %5926 = fadd fast float %5925, %5920
  %5927 = fmul fast float %5921, -7.500000e-01
  %5928 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5922, float %5927)  ; FMad(a,b,c)
  %5929 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5918, float 0.000000e+00)  ; FMad(a,b,c)
  %5930 = fadd fast float %5929, %5920
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = fsub fast float %5934, %5924
  %5939 = fsub fast float %5935, %5926
  %5940 = fsub fast float %5936, %5928
  %5941 = fsub fast float %5937, %5930
  %5942 = fmul fast float %5938, %5932
  %5943 = fmul fast float %5939, %5932
  %5944 = fmul fast float %5940, %5932
  %5945 = fmul fast float %5941, %5932
  %5946 = fadd fast float %5942, %5924
  %5947 = fadd fast float %5943, %5926
  %5948 = fadd fast float %5944, %5928
  %5949 = fadd fast float %5945, %5930
  %5950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.i32 %5950, 0
  %5952 = and i32 %5951, 536870911
  %5953 = uitofp i32 %5952 to float
  %5954 = fmul fast float %5953, %5800
  %5955 = fmul fast float %5953, %5804
  %5956 = fptoui float %5954 to i32
  %5957 = fptoui float %5955 to i32
  %5958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.i32 %5958, 0
  %5960 = and i32 %5959, 31
  %5961 = lshr i32 %5956, %5960
  %5962 = lshr i32 %5957, %5960
  %5963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.i32 %5963, 0
  %5965 = and i32 %5964, 31
  %5966 = shl i32 1, %5965
  %5967 = call i32 @dx.op.binary.i32(i32 40, i32 %5966, i32 4)  ; UMin(a,b)
  %5968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.i32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.i32 %5968, 1
  %5971 = icmp eq i32 %5967, 0
  br i1 %5971, label %6013, label %5972

; <label>:5972                                    ; preds = %5916
  br label %5973

; <label>:5973                                    ; preds = %6001, %5972
  %5974 = phi i32 [ %6004, %6001 ], [ 0, %5972 ]
  %5975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.i32 %5975, 0
  %5977 = lshr i32 %5976, 16
  %5978 = and i32 %5977, 31
  %5979 = shl i32 %5962, %5978
  %5980 = add i32 %5979, %5961
  %5981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5982 = extractvalue %dx.types.ResRet.i32 %5981, 0
  %5983 = and i32 %5982, 31
  %5984 = shl i32 %5980, %5983
  %5985 = add i32 %5984, %5974
  %5986 = shl i32 %5985, 2
  %5987 = add i32 %5986, 32
  %5988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5987, i32 undef)  ; BufferLoad(srv,index,wot)
  %5989 = extractvalue %dx.types.ResRet.i32 %5988, 0
  %5990 = icmp slt i32 %5989, 0
  %5991 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5974
  %5992 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5974
  %5993 = bitcast float* %5991 to i32*
  %5994 = bitcast float* %5992 to i32*
  br i1 %5990, label %5995, label %6001

; <label>:5995                                    ; preds = %5973
  %5996 = and i32 %5989, 1073741823
  %5997 = add nuw nsw i32 %5996, 20
  %5998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5997, i32 undef)  ; BufferLoad(srv,index,wot)
  %5999 = extractvalue %dx.types.ResRet.i32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.i32 %5998, 1
  br label %6001

; <label>:6001                                    ; preds = %5995, %5973
  %6002 = phi i32 [ %5999, %5995 ], [ %5969, %5973 ]
  %6003 = phi i32 [ %6000, %5995 ], [ %5970, %5973 ]
  store i32 %6002, i32* %5993, align 4
  store i32 %6003, i32* %5994, align 4
  %6004 = add nuw i32 %5974, 1
  %6005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.i32 %6005, 2
  %6007 = icmp eq i32 %6006, 0
  %6008 = icmp ugt i32 %5989, -1073741825
  %6009 = and i1 %6008, %6007
  %6010 = icmp ult i32 %6004, %5967
  %6011 = and i1 %6009, %6010
  br i1 %6011, label %5973, label %6012

; <label>:6012                                    ; preds = %6001
  br label %6013

; <label>:6013                                    ; preds = %6012, %5916
  %6014 = phi i32 [ 0, %5916 ], [ %6004, %6012 ]
  %6015 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %6016 = fptoui float %6015 to i32
  %6017 = icmp eq i32 %6016, 0
  br i1 %6017, label %6069, label %6018

; <label>:6018                                    ; preds = %6013
  br label %6019

; <label>:6019                                    ; preds = %6064, %6018
  %6020 = phi i32 [ %6065, %6064 ], [ %6014, %6018 ]
  %6021 = phi i32 [ %6066, %6064 ], [ 0, %6018 ]
  %6022 = lshr i32 %6021, 2
  %6023 = and i32 %6021, 3
  %6024 = add nuw nsw i32 %6022, 83
  %6025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6024)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.i32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.i32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.i32 %6025, 2
  %6029 = extractvalue %dx.types.CBufRet.i32 %6025, 3
  %6030 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6026, i32* %6030, align 4
  %6031 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6027, i32* %6031, align 4
  %6032 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6028, i32* %6032, align 4
  %6033 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6029, i32* %6033, align 4
  %6034 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6023
  %6035 = load i32, i32* %6034, align 4, !tbaa !105, !noalias !109
  %6036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6037 = extractvalue %dx.types.ResRet.i32 %6036, 0
  %6038 = lshr i32 %6037, 16
  %6039 = and i32 %6038, 31
  %6040 = shl i32 %5962, %6039
  %6041 = add i32 %6040, %5961
  %6042 = shl i32 %6041, 2
  %6043 = add i32 %6042, %6035
  %6044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6043, i32 undef)  ; BufferLoad(srv,index,wot)
  %6045 = extractvalue %dx.types.ResRet.i32 %6044, 0
  %6046 = icmp eq i32 %6045, 0
  br i1 %6046, label %6064, label %6047

; <label>:6047                                    ; preds = %6019
  %6048 = icmp slt i32 %6045, 0
  %6049 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6020
  %6050 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6020
  %6051 = bitcast float* %6049 to i32*
  %6052 = bitcast float* %6050 to i32*
  br i1 %6048, label %6053, label %6060

; <label>:6053                                    ; preds = %6047
  %6054 = and i32 %6045, 1073741823
  %6055 = add i32 %6035, 20
  %6056 = add i32 %6055, %6054
  %6057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6056, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.i32 %6057, 0
  %6059 = extractvalue %dx.types.ResRet.i32 %6057, 1
  br label %6060

; <label>:6060                                    ; preds = %6053, %6047
  %6061 = phi i32 [ %6058, %6053 ], [ %5969, %6047 ]
  %6062 = phi i32 [ %6059, %6053 ], [ %5970, %6047 ]
  store i32 %6061, i32* %6051, align 4
  store i32 %6062, i32* %6052, align 4
  %6063 = add i32 %6020, 1
  br label %6064

; <label>:6064                                    ; preds = %6060, %6019
  %6065 = phi i32 [ %6020, %6019 ], [ %6063, %6060 ]
  %6066 = add nuw i32 %6021, 1
  %6067 = icmp eq i32 %6066, %6016
  br i1 %6067, label %6068, label %6019

; <label>:6068                                    ; preds = %6064
  br label %6069

; <label>:6069                                    ; preds = %6068, %6013
  %6070 = phi i32 [ %6014, %6013 ], [ %6065, %6068 ]
  %6071 = icmp eq i32 %6070, 1
  %6072 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6073 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6071, label %6074, label %6077

; <label>:6074                                    ; preds = %6069
  %6075 = load float, float* %6072, align 4
  %6076 = load float, float* %6073, align 4
  br label %6104

; <label>:6077                                    ; preds = %6069
  %6078 = load float, float* %6072, align 4
  %6079 = load float, float* %6073, align 4
  %6080 = fdiv fast float 1.000000e+00, %6079
  %6081 = fsub fast float %6078, %6080
  %6082 = icmp ugt i32 %6070, 1
  br i1 %6082, label %6083, label %6099

; <label>:6083                                    ; preds = %6077
  br label %6084

; <label>:6084                                    ; preds = %6084, %6083
  %6085 = phi float [ %6094, %6084 ], [ %6081, %6083 ]
  %6086 = phi float [ %6095, %6084 ], [ %6078, %6083 ]
  %6087 = phi i32 [ %6096, %6084 ], [ 1, %6083 ]
  %6088 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6087
  %6089 = load float, float* %6088, align 4
  %6090 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6087
  %6091 = load float, float* %6090, align 4
  %6092 = fdiv fast float 1.000000e+00, %6091
  %6093 = fsub fast float %6089, %6092
  %6094 = call float @dx.op.binary.f32(i32 36, float %6085, float %6093)  ; FMin(a,b)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6086, float %6089)  ; FMax(a,b)
  %6096 = add nuw i32 %6087, 1
  %6097 = icmp eq i32 %6096, %6070
  br i1 %6097, label %6098, label %6084

; <label>:6098                                    ; preds = %6084
  br label %6099

; <label>:6099                                    ; preds = %6098, %6077
  %6100 = phi float [ %6081, %6077 ], [ %6094, %6098 ]
  %6101 = phi float [ %6078, %6077 ], [ %6095, %6098 ]
  %6102 = fsub fast float %6101, %6100
  %6103 = fdiv fast float 1.000000e+00, %6102
  br label %6104

; <label>:6104                                    ; preds = %6099, %6074
  %6105 = phi float [ %6075, %6074 ], [ %6101, %6099 ]
  %6106 = phi float [ %6076, %6074 ], [ %6103, %6099 ]
  %6107 = fadd fast float %5808, %6105
  %6108 = fmul fast float %6107, %6106
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = fmul fast float %6109, 2.000000e+00
  %6111 = fsub fast float 1.000000e+00, %6110
  %6112 = fmul fast float %5946, %5946
  %6113 = fsub fast float %5947, %6112
  %6114 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6113)  ; FMax(a,b)
  %6115 = fdiv fast float 1.000000e+00, %6114
  %6116 = fmul fast float %5947, %5946
  %6117 = fsub fast float %5948, %6116
  %6118 = fsub fast float %6111, %5946
  %6119 = fmul fast float %6111, %6111
  %6120 = fsub fast float %6119, %5947
  %6121 = fmul fast float %6115, %6117
  %6122 = fmul fast float %6121, %6118
  %6123 = fsub fast float %6120, %6122
  %6124 = fmul fast float %5947, %5947
  %6125 = fsub fast float %5949, %6124
  %6126 = fmul fast float %6117, %6117
  %6127 = fmul fast float %6126, %6115
  %6128 = fsub fast float %6125, %6127
  %6129 = fdiv fast float %6123, %6128
  %6130 = fmul fast float %6129, %6117
  %6131 = fsub fast float %6118, %6130
  %6132 = fmul fast float %6131, %6115
  %6133 = fmul fast float %6132, %5946
  %6134 = fsub fast float 1.000000e+00, %6133
  %6135 = fmul fast float %6129, %5947
  %6136 = fsub fast float %6134, %6135
  %6137 = fmul fast float %6132, %6132
  %6138 = fmul fast float %6129, 4.000000e+00
  %6139 = fmul fast float %6138, %6136
  %6140 = fsub fast float %6137, %6139
  %6141 = call float @dx.op.unary.f32(i32 24, float %6140)  ; Sqrt(value)
  %6142 = fcmp fast oge float %6132, 0.000000e+00
  %6143 = fsub fast float -0.000000e+00, %6141
  %6144 = select i1 %6142, float %6143, float %6141
  %6145 = fsub fast float %6144, %6132
  %6146 = fdiv fast float %6145, %6129
  %6147 = fdiv fast float %6136, %6145
  %6148 = fmul fast float %6146, 5.000000e-01
  %6149 = fmul fast float %6147, 2.000000e+00
  %6150 = select i1 %6142, float %6148, float %6149
  %6151 = select i1 %6142, float %6149, float %6148
  %6152 = call float @dx.op.binary.f32(i32 35, float %6150, float %6151)  ; FMax(a,b)
  %6153 = call float @dx.op.binary.f32(i32 36, float %6150, float %6151)  ; FMin(a,b)
  %6154 = fcmp fast ogt float %6111, %6152
  %6155 = fsub fast float %6111, %6153
  %6156 = fsub fast float %6111, %6152
  %6157 = fsub fast float %6152, %6153
  %6158 = select i1 %6154, float %6156, float %6157
  %6159 = fmul float %6155, %6158
  %6160 = select i1 %6154, float %6153, float %6111
  %6161 = fcmp fast ogt float %6111, %6153
  %6162 = fmul fast float %6160, %6152
  %6163 = fadd fast float %6160, %6152
  %6164 = fmul fast float %6163, %5946
  %6165 = fadd fast float %6162, %5947
  %6166 = fsub fast float %6165, %6164
  %6167 = fdiv fast float %6166, %6159
  %6168 = select i1 %6161, float %6167, float 0.000000e+00
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = select i1 %6154, float %6169, float %6168
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %6173 = fmul fast float %6172, %6171
  %6174 = fsub fast float 1.000000e+00, %6173
  br label %6175

; <label>:6175                                    ; preds = %6104, %5816, %5781, %5777, %5743
  %6176 = phi float [ 1.000000e+00, %5743 ], [ %6174, %6104 ], [ 1.000000e+00, %5781 ], [ 1.000000e+00, %5816 ], [ 1.000000e+00, %5777 ]
  %6177 = fcmp fast ogt float %5773, 0.000000e+00
  br i1 %6177, label %6178, label %6340, !dx.controlflow.hints !118

; <label>:6178                                    ; preds = %6175
  %6179 = fadd fast float %5686, %5660
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 3
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6185 = call float @dx.op.binary.f32(i32 35, float %6179, float 0.000000e+00)  ; FMax(a,b)
  %6186 = fadd fast float %6185, 0x3F10000000000000
  %6187 = fcmp fast oeq float %6184, 0.000000e+00
  br i1 %6187, label %6188, label %6255

; <label>:6188                                    ; preds = %6178
  %6189 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6190 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6191 = fmul fast float %6190, %5675
  %6192 = fmul fast float %6189, %5676
  %6193 = fadd fast float %6191, 5.000000e-01
  %6194 = call float @dx.op.unary.f32(i32 27, float %6193)  ; Round_ni(value)
  %6195 = fadd fast float %6192, 5.000000e-01
  %6196 = call float @dx.op.unary.f32(i32 27, float %6195)  ; Round_ni(value)
  %6197 = fsub fast float %6193, %6194
  %6198 = fsub fast float %6195, %6196
  %6199 = fadd fast float %6194, -5.000000e-01
  %6200 = fadd fast float %6196, -5.000000e-01
  %6201 = fmul fast float %6197, 2.000000e+00
  %6202 = fsub fast float 3.000000e+00, %6201
  %6203 = fadd fast float %6201, 1.000000e+00
  %6204 = fsub fast float 2.000000e+00, %6197
  %6205 = bitcast float %6202 to i32
  %6206 = sub nsw i32 2129859010, %6205
  %6207 = bitcast i32 %6206 to float
  %6208 = fmul fast float %6207, %6204
  %6209 = fadd fast float %6208, -1.000000e+00
  %6210 = bitcast float %6203 to i32
  %6211 = sub nsw i32 2129859010, %6210
  %6212 = bitcast i32 %6211 to float
  %6213 = fmul fast float %6212, %6197
  %6214 = fadd fast float %6213, 1.000000e+00
  %6215 = fmul fast float %6198, 2.000000e+00
  %6216 = fsub fast float 3.000000e+00, %6215
  %6217 = fadd fast float %6215, 1.000000e+00
  %6218 = fsub fast float 2.000000e+00, %6198
  %6219 = bitcast float %6216 to i32
  %6220 = sub nsw i32 2129859010, %6219
  %6221 = bitcast i32 %6220 to float
  %6222 = fmul fast float %6221, %6218
  %6223 = fadd fast float %6222, -1.000000e+00
  %6224 = bitcast float %6217 to i32
  %6225 = sub nsw i32 2129859010, %6224
  %6226 = bitcast i32 %6225 to float
  %6227 = fmul fast float %6226, %6198
  %6228 = fadd fast float %6227, 1.000000e+00
  %6229 = fadd fast float %6209, %6199
  %6230 = fmul fast float %6229, %6181
  %6231 = fadd fast float %6223, %6200
  %6232 = fmul fast float %6231, %6182
  %6233 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6230, float %6232, float undef, float undef, i32 0, i32 0, i32 undef, float %6186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = fmul fast float %6234, %6202
  %6236 = fadd fast float %6214, %6199
  %6237 = fmul fast float %6236, %6181
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6237, float %6232, float undef, float undef, i32 0, i32 0, i32 undef, float %6186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = fmul fast float %6239, %6203
  %6241 = fadd fast float %6228, %6200
  %6242 = fmul fast float %6241, %6182
  %6243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6230, float %6242, float undef, float undef, i32 0, i32 0, i32 undef, float %6186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = fmul fast float %6244, %6202
  %6246 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6237, float %6242, float undef, float undef, i32 0, i32 0, i32 undef, float %6186)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = fmul fast float %6247, %6203
  %6249 = fadd fast float %6248, %6245
  %6250 = fmul fast float %6249, %6217
  %6251 = fadd fast float %6240, %6235
  %6252 = fmul fast float %6251, %6216
  %6253 = fadd fast float %6252, %6250
  %6254 = fmul fast float %6253, 6.250000e-02
  br label %6340

; <label>:6255                                    ; preds = %6178
  %6256 = fmul fast float %240, 0x401921FB60000000
  %6257 = call float @dx.op.unary.f32(i32 13, float %6256)  ; Sin(value)
  %6258 = call float @dx.op.unary.f32(i32 12, float %6256)  ; Cos(value)
  %6259 = fsub fast float -0.000000e+00, %6257
  br label %6260

; <label>:6260                                    ; preds = %6309, %6255
  %6261 = phi float [ 0.000000e+00, %6255 ], [ %6304, %6309 ]
  %6262 = phi float [ 0.000000e+00, %6255 ], [ %6306, %6309 ]
  %6263 = phi i32 [ 0, %6255 ], [ %6310, %6309 ]
  %6264 = mul i32 %6263, 2
  %6265 = add i32 0, %6264
  %6266 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6265
  %6267 = load float, float* %6266, align 4
  %6268 = mul i32 %6263, 2
  %6269 = add i32 1, %6268
  %6270 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6269
  %6271 = load float, float* %6270, align 4
  %6272 = fmul fast float %6267, %6258
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6259, float %6272)  ; FMad(a,b,c)
  %6274 = fmul fast float %6267, %6257
  %6275 = call float @dx.op.tertiary.f32(i32 46, float %6271, float %6258, float %6274)  ; FMad(a,b,c)
  %6276 = fmul fast float %6273, %6184
  %6277 = fmul fast float %6275, %6184
  %6278 = fadd fast float %6276, %5675
  %6279 = fadd fast float %6277, %5676
  %6280 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6278, float %6279, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6281 = extractvalue %dx.types.ResRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.ResRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.ResRet.f32 %6280, 2
  %6284 = extractvalue %dx.types.ResRet.f32 %6280, 3
  %6285 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6281, float* %6285, align 4
  %6286 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6282, float* %6286, align 4
  %6287 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6283, float* %6287, align 4
  %6288 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6284, float* %6288, align 4
  %6289 = fsub fast float %6281, %6186
  %6290 = fcmp fast olt float %6289, 0.000000e+00
  %6291 = select i1 %6290, float 0.000000e+00, float 1.000000e+00
  %6292 = fadd fast float %6291, %6261
  %6293 = fmul fast float %6291, %6289
  %6294 = fadd fast float %6293, %6262
  br label %6295

; <label>:6295                                    ; preds = %6295, %6260
  %6296 = phi i32 [ 1, %6260 ], [ %6307, %6295 ]
  %6297 = phi float [ %6294, %6260 ], [ %6306, %6295 ]
  %6298 = phi float [ %6292, %6260 ], [ %6304, %6295 ]
  %6299 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6296
  %6300 = load float, float* %6299, align 4, !tbaa !119, !noalias !109
  %6301 = fsub fast float %6300, %6186
  %6302 = fcmp fast olt float %6301, 0.000000e+00
  %6303 = select i1 %6302, float 0.000000e+00, float 1.000000e+00
  %6304 = fadd fast float %6303, %6298
  %6305 = fmul fast float %6303, %6301
  %6306 = fadd fast float %6305, %6297
  %6307 = add nuw nsw i32 %6296, 1
  %6308 = icmp eq i32 %6307, 4
  br i1 %6308, label %6309, label %6295, !llvm.loop !121

; <label>:6309                                    ; preds = %6295
  %6310 = add nuw nsw i32 %6263, 1
  %6311 = icmp eq i32 %6310, 8
  br i1 %6311, label %6312, label %6260, !llvm.loop !122

; <label>:6312                                    ; preds = %6309
  %6313 = fdiv fast float 1.000000e+00, %6304
  %6314 = fmul fast float %6313, %6306
  %6315 = fdiv fast float 1.000000e+00, %6186
  %6316 = fmul fast float %6314, %6315
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = call float @dx.op.binary.f32(i32 35, float %6317, float 0.000000e+00)  ; FMax(a,b)
  %6319 = fmul fast float %6304, 3.125000e-02
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6321 = fmul fast float %6320, 2.000000e+00
  %6322 = fadd fast float %6321, -1.000000e+00
  %6323 = fcmp fast ogt float %6322, 0.000000e+00
  %6324 = fcmp fast olt float %6322, 0.000000e+00
  %6325 = zext i1 %6323 to i32
  %6326 = zext i1 %6324 to i32
  %6327 = sub nsw i32 %6325, %6326
  %6328 = sitofp i32 %6327 to float
  %6329 = fmul fast float %6328, %6322
  %6330 = fsub fast float 1.000000e+00, %6329
  %6331 = fmul fast float %6330, %6330
  %6332 = fmul fast float %6331, %6330
  %6333 = fsub fast float %6330, %6332
  %6334 = fmul fast float %6333, %6318
  %6335 = fsub fast float 1.000000e+00, %6332
  %6336 = fsub fast float %6335, %6334
  %6337 = fmul fast float %6328, 5.000000e-01
  %6338 = fmul fast float %6337, %6336
  %6339 = fsub fast float 5.000000e-01, %6338
  br label %6340

; <label>:6340                                    ; preds = %6312, %6188, %6175
  %6341 = phi float [ 1.000000e+00, %6175 ], [ %6254, %6188 ], [ %6339, %6312 ]
  %6342 = fcmp fast ogt float %5771, 0.000000e+00
  br i1 %6342, label %6343, label %6507, !dx.controlflow.hints !123

; <label>:6343                                    ; preds = %6340
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6346 = fadd fast float %6345, %5660
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 3
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6352 = call float @dx.op.binary.f32(i32 35, float %6346, float 0.000000e+00)  ; FMax(a,b)
  %6353 = fadd fast float %6352, 0x3F10000000000000
  %6354 = fcmp fast oeq float %6351, 0.000000e+00
  br i1 %6354, label %6355, label %6422

; <label>:6355                                    ; preds = %6343
  %6356 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6357 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6358 = fmul fast float %6357, %5667
  %6359 = fmul fast float %6356, %5668
  %6360 = fadd fast float %6358, 5.000000e-01
  %6361 = call float @dx.op.unary.f32(i32 27, float %6360)  ; Round_ni(value)
  %6362 = fadd fast float %6359, 5.000000e-01
  %6363 = call float @dx.op.unary.f32(i32 27, float %6362)  ; Round_ni(value)
  %6364 = fsub fast float %6360, %6361
  %6365 = fsub fast float %6362, %6363
  %6366 = fadd fast float %6361, -5.000000e-01
  %6367 = fadd fast float %6363, -5.000000e-01
  %6368 = fmul fast float %6364, 2.000000e+00
  %6369 = fsub fast float 3.000000e+00, %6368
  %6370 = fadd fast float %6368, 1.000000e+00
  %6371 = fsub fast float 2.000000e+00, %6364
  %6372 = bitcast float %6369 to i32
  %6373 = sub nsw i32 2129859010, %6372
  %6374 = bitcast i32 %6373 to float
  %6375 = fmul fast float %6374, %6371
  %6376 = fadd fast float %6375, -1.000000e+00
  %6377 = bitcast float %6370 to i32
  %6378 = sub nsw i32 2129859010, %6377
  %6379 = bitcast i32 %6378 to float
  %6380 = fmul fast float %6379, %6364
  %6381 = fadd fast float %6380, 1.000000e+00
  %6382 = fmul fast float %6365, 2.000000e+00
  %6383 = fsub fast float 3.000000e+00, %6382
  %6384 = fadd fast float %6382, 1.000000e+00
  %6385 = fsub fast float 2.000000e+00, %6365
  %6386 = bitcast float %6383 to i32
  %6387 = sub nsw i32 2129859010, %6386
  %6388 = bitcast i32 %6387 to float
  %6389 = fmul fast float %6388, %6385
  %6390 = fadd fast float %6389, -1.000000e+00
  %6391 = bitcast float %6384 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6365
  %6395 = fadd fast float %6394, 1.000000e+00
  %6396 = fadd fast float %6376, %6366
  %6397 = fmul fast float %6396, %6348
  %6398 = fadd fast float %6390, %6367
  %6399 = fmul fast float %6398, %6349
  %6400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6397, float %6399, float undef, float undef, i32 0, i32 0, i32 undef, float %6353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6401 = extractvalue %dx.types.ResRet.f32 %6400, 0
  %6402 = fmul fast float %6401, %6369
  %6403 = fadd fast float %6381, %6366
  %6404 = fmul fast float %6403, %6348
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6404, float %6399, float undef, float undef, i32 0, i32 0, i32 undef, float %6353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = fmul fast float %6406, %6370
  %6408 = fadd fast float %6395, %6367
  %6409 = fmul fast float %6408, %6349
  %6410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6397, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float %6353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6411 = extractvalue %dx.types.ResRet.f32 %6410, 0
  %6412 = fmul fast float %6411, %6369
  %6413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6404, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float %6353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = fmul fast float %6414, %6370
  %6416 = fadd fast float %6415, %6412
  %6417 = fmul fast float %6416, %6384
  %6418 = fadd fast float %6407, %6402
  %6419 = fmul fast float %6418, %6383
  %6420 = fadd fast float %6419, %6417
  %6421 = fmul fast float %6420, 6.250000e-02
  br label %6507

; <label>:6422                                    ; preds = %6343
  %6423 = fmul fast float %240, 0x401921FB60000000
  %6424 = call float @dx.op.unary.f32(i32 13, float %6423)  ; Sin(value)
  %6425 = call float @dx.op.unary.f32(i32 12, float %6423)  ; Cos(value)
  %6426 = fsub fast float -0.000000e+00, %6424
  br label %6427

; <label>:6427                                    ; preds = %6476, %6422
  %6428 = phi float [ 0.000000e+00, %6422 ], [ %6471, %6476 ]
  %6429 = phi float [ 0.000000e+00, %6422 ], [ %6473, %6476 ]
  %6430 = phi i32 [ 0, %6422 ], [ %6477, %6476 ]
  %6431 = mul i32 %6430, 2
  %6432 = add i32 0, %6431
  %6433 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6432
  %6434 = load float, float* %6433, align 4
  %6435 = mul i32 %6430, 2
  %6436 = add i32 1, %6435
  %6437 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6436
  %6438 = load float, float* %6437, align 4
  %6439 = fmul fast float %6434, %6425
  %6440 = call float @dx.op.tertiary.f32(i32 46, float %6438, float %6426, float %6439)  ; FMad(a,b,c)
  %6441 = fmul fast float %6434, %6424
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %6438, float %6425, float %6441)  ; FMad(a,b,c)
  %6443 = fmul fast float %6440, %6351
  %6444 = fmul fast float %6442, %6351
  %6445 = fadd fast float %6443, %5667
  %6446 = fadd fast float %6444, %5668
  %6447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6445, float %6446, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.ResRet.f32 %6447, 3
  %6452 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6448, float* %6452, align 4
  %6453 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6449, float* %6453, align 4
  %6454 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6450, float* %6454, align 4
  %6455 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6451, float* %6455, align 4
  %6456 = fsub fast float %6448, %6353
  %6457 = fcmp fast olt float %6456, 0.000000e+00
  %6458 = select i1 %6457, float 0.000000e+00, float 1.000000e+00
  %6459 = fadd fast float %6458, %6428
  %6460 = fmul fast float %6458, %6456
  %6461 = fadd fast float %6460, %6429
  br label %6462

; <label>:6462                                    ; preds = %6462, %6427
  %6463 = phi i32 [ 1, %6427 ], [ %6474, %6462 ]
  %6464 = phi float [ %6461, %6427 ], [ %6473, %6462 ]
  %6465 = phi float [ %6459, %6427 ], [ %6471, %6462 ]
  %6466 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6463
  %6467 = load float, float* %6466, align 4, !tbaa !119, !noalias !109
  %6468 = fsub fast float %6467, %6353
  %6469 = fcmp fast olt float %6468, 0.000000e+00
  %6470 = select i1 %6469, float 0.000000e+00, float 1.000000e+00
  %6471 = fadd fast float %6470, %6465
  %6472 = fmul fast float %6470, %6468
  %6473 = fadd fast float %6472, %6464
  %6474 = add nuw nsw i32 %6463, 1
  %6475 = icmp eq i32 %6474, 4
  br i1 %6475, label %6476, label %6462, !llvm.loop !121

; <label>:6476                                    ; preds = %6462
  %6477 = add nuw nsw i32 %6430, 1
  %6478 = icmp eq i32 %6477, 8
  br i1 %6478, label %6479, label %6427, !llvm.loop !122

; <label>:6479                                    ; preds = %6476
  %6480 = fdiv fast float 1.000000e+00, %6471
  %6481 = fmul fast float %6480, %6473
  %6482 = fdiv fast float 1.000000e+00, %6353
  %6483 = fmul fast float %6481, %6482
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = call float @dx.op.binary.f32(i32 35, float %6484, float 0.000000e+00)  ; FMax(a,b)
  %6486 = fmul fast float %6471, 3.125000e-02
  %6487 = call float @dx.op.unary.f32(i32 7, float %6486)  ; Saturate(value)
  %6488 = fmul fast float %6487, 2.000000e+00
  %6489 = fadd fast float %6488, -1.000000e+00
  %6490 = fcmp fast ogt float %6489, 0.000000e+00
  %6491 = fcmp fast olt float %6489, 0.000000e+00
  %6492 = zext i1 %6490 to i32
  %6493 = zext i1 %6491 to i32
  %6494 = sub nsw i32 %6492, %6493
  %6495 = sitofp i32 %6494 to float
  %6496 = fmul fast float %6495, %6489
  %6497 = fsub fast float 1.000000e+00, %6496
  %6498 = fmul fast float %6497, %6497
  %6499 = fmul fast float %6498, %6497
  %6500 = fsub fast float %6497, %6499
  %6501 = fmul fast float %6500, %6485
  %6502 = fsub fast float 1.000000e+00, %6499
  %6503 = fsub fast float %6502, %6501
  %6504 = fmul fast float %6495, 5.000000e-01
  %6505 = fmul fast float %6504, %6503
  %6506 = fsub fast float 5.000000e-01, %6505
  br label %6507

; <label>:6507                                    ; preds = %6479, %6355, %6340
  %6508 = phi float [ 1.000000e+00, %6340 ], [ %6421, %6355 ], [ %6506, %6479 ]
  %6509 = fcmp fast ogt float %5770, 0.000000e+00
  br i1 %6509, label %6510, label %6674, !dx.controlflow.hints !124

; <label>:6510                                    ; preds = %6507
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = fadd fast float %6512, %5660
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6519 = call float @dx.op.binary.f32(i32 35, float %6513, float 0.000000e+00)  ; FMax(a,b)
  %6520 = fadd fast float %6519, 0x3F10000000000000
  %6521 = fcmp fast oeq float %6518, 0.000000e+00
  br i1 %6521, label %6522, label %6589

; <label>:6522                                    ; preds = %6510
  %6523 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6525 = fmul fast float %6524, %5652
  %6526 = fmul fast float %6523, %5656
  %6527 = fadd fast float %6525, 5.000000e-01
  %6528 = call float @dx.op.unary.f32(i32 27, float %6527)  ; Round_ni(value)
  %6529 = fadd fast float %6526, 5.000000e-01
  %6530 = call float @dx.op.unary.f32(i32 27, float %6529)  ; Round_ni(value)
  %6531 = fsub fast float %6527, %6528
  %6532 = fsub fast float %6529, %6530
  %6533 = fadd fast float %6528, -5.000000e-01
  %6534 = fadd fast float %6530, -5.000000e-01
  %6535 = fmul fast float %6531, 2.000000e+00
  %6536 = fsub fast float 3.000000e+00, %6535
  %6537 = fadd fast float %6535, 1.000000e+00
  %6538 = fsub fast float 2.000000e+00, %6531
  %6539 = bitcast float %6536 to i32
  %6540 = sub nsw i32 2129859010, %6539
  %6541 = bitcast i32 %6540 to float
  %6542 = fmul fast float %6541, %6538
  %6543 = fadd fast float %6542, -1.000000e+00
  %6544 = bitcast float %6537 to i32
  %6545 = sub nsw i32 2129859010, %6544
  %6546 = bitcast i32 %6545 to float
  %6547 = fmul fast float %6546, %6531
  %6548 = fadd fast float %6547, 1.000000e+00
  %6549 = fmul fast float %6532, 2.000000e+00
  %6550 = fsub fast float 3.000000e+00, %6549
  %6551 = fadd fast float %6549, 1.000000e+00
  %6552 = fsub fast float 2.000000e+00, %6532
  %6553 = bitcast float %6550 to i32
  %6554 = sub nsw i32 2129859010, %6553
  %6555 = bitcast i32 %6554 to float
  %6556 = fmul fast float %6555, %6552
  %6557 = fadd fast float %6556, -1.000000e+00
  %6558 = bitcast float %6551 to i32
  %6559 = sub nsw i32 2129859010, %6558
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %6532
  %6562 = fadd fast float %6561, 1.000000e+00
  %6563 = fadd fast float %6543, %6533
  %6564 = fmul fast float %6563, %6515
  %6565 = fadd fast float %6557, %6534
  %6566 = fmul fast float %6565, %6516
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6564, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float %6520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = fmul fast float %6568, %6536
  %6570 = fadd fast float %6548, %6533
  %6571 = fmul fast float %6570, %6515
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6571, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float %6520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = fmul fast float %6573, %6537
  %6575 = fadd fast float %6562, %6534
  %6576 = fmul fast float %6575, %6516
  %6577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6564, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float %6520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = fmul fast float %6578, %6536
  %6580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6571, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float %6520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6581 = extractvalue %dx.types.ResRet.f32 %6580, 0
  %6582 = fmul fast float %6581, %6537
  %6583 = fadd fast float %6582, %6579
  %6584 = fmul fast float %6583, %6551
  %6585 = fadd fast float %6574, %6569
  %6586 = fmul fast float %6585, %6550
  %6587 = fadd fast float %6586, %6584
  %6588 = fmul fast float %6587, 6.250000e-02
  br label %6674

; <label>:6589                                    ; preds = %6510
  %6590 = fmul fast float %240, 0x401921FB60000000
  %6591 = call float @dx.op.unary.f32(i32 13, float %6590)  ; Sin(value)
  %6592 = call float @dx.op.unary.f32(i32 12, float %6590)  ; Cos(value)
  %6593 = fsub fast float -0.000000e+00, %6591
  br label %6594

; <label>:6594                                    ; preds = %6643, %6589
  %6595 = phi float [ 0.000000e+00, %6589 ], [ %6638, %6643 ]
  %6596 = phi float [ 0.000000e+00, %6589 ], [ %6640, %6643 ]
  %6597 = phi i32 [ 0, %6589 ], [ %6644, %6643 ]
  %6598 = mul i32 %6597, 2
  %6599 = add i32 0, %6598
  %6600 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6599
  %6601 = load float, float* %6600, align 4
  %6602 = mul i32 %6597, 2
  %6603 = add i32 1, %6602
  %6604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6603
  %6605 = load float, float* %6604, align 4
  %6606 = fmul fast float %6601, %6592
  %6607 = call float @dx.op.tertiary.f32(i32 46, float %6605, float %6593, float %6606)  ; FMad(a,b,c)
  %6608 = fmul fast float %6601, %6591
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %6605, float %6592, float %6608)  ; FMad(a,b,c)
  %6610 = fmul fast float %6607, %6518
  %6611 = fmul fast float %6609, %6518
  %6612 = fadd fast float %6610, %5652
  %6613 = fadd fast float %6611, %5656
  %6614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6612, float %6613, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = extractvalue %dx.types.ResRet.f32 %6614, 3
  %6619 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6615, float* %6619, align 4
  %6620 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6616, float* %6620, align 4
  %6621 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6617, float* %6621, align 4
  %6622 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6618, float* %6622, align 4
  %6623 = fsub fast float %6615, %6520
  %6624 = fcmp fast olt float %6623, 0.000000e+00
  %6625 = select i1 %6624, float 0.000000e+00, float 1.000000e+00
  %6626 = fadd fast float %6625, %6595
  %6627 = fmul fast float %6625, %6623
  %6628 = fadd fast float %6627, %6596
  br label %6629

; <label>:6629                                    ; preds = %6629, %6594
  %6630 = phi i32 [ 1, %6594 ], [ %6641, %6629 ]
  %6631 = phi float [ %6628, %6594 ], [ %6640, %6629 ]
  %6632 = phi float [ %6626, %6594 ], [ %6638, %6629 ]
  %6633 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6630
  %6634 = load float, float* %6633, align 4, !tbaa !119, !noalias !109
  %6635 = fsub fast float %6634, %6520
  %6636 = fcmp fast olt float %6635, 0.000000e+00
  %6637 = select i1 %6636, float 0.000000e+00, float 1.000000e+00
  %6638 = fadd fast float %6637, %6632
  %6639 = fmul fast float %6637, %6635
  %6640 = fadd fast float %6639, %6631
  %6641 = add nuw nsw i32 %6630, 1
  %6642 = icmp eq i32 %6641, 4
  br i1 %6642, label %6643, label %6629, !llvm.loop !121

; <label>:6643                                    ; preds = %6629
  %6644 = add nuw nsw i32 %6597, 1
  %6645 = icmp eq i32 %6644, 8
  br i1 %6645, label %6646, label %6594, !llvm.loop !122

; <label>:6646                                    ; preds = %6643
  %6647 = fdiv fast float 1.000000e+00, %6638
  %6648 = fmul fast float %6647, %6640
  %6649 = fdiv fast float 1.000000e+00, %6520
  %6650 = fmul fast float %6648, %6649
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = call float @dx.op.binary.f32(i32 35, float %6651, float 0.000000e+00)  ; FMax(a,b)
  %6653 = fmul fast float %6638, 3.125000e-02
  %6654 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6655 = fmul fast float %6654, 2.000000e+00
  %6656 = fadd fast float %6655, -1.000000e+00
  %6657 = fcmp fast ogt float %6656, 0.000000e+00
  %6658 = fcmp fast olt float %6656, 0.000000e+00
  %6659 = zext i1 %6657 to i32
  %6660 = zext i1 %6658 to i32
  %6661 = sub nsw i32 %6659, %6660
  %6662 = sitofp i32 %6661 to float
  %6663 = fmul fast float %6662, %6656
  %6664 = fsub fast float 1.000000e+00, %6663
  %6665 = fmul fast float %6664, %6664
  %6666 = fmul fast float %6665, %6664
  %6667 = fsub fast float %6664, %6666
  %6668 = fmul fast float %6667, %6652
  %6669 = fsub fast float 1.000000e+00, %6666
  %6670 = fsub fast float %6669, %6668
  %6671 = fmul fast float %6662, 5.000000e-01
  %6672 = fmul fast float %6671, %6670
  %6673 = fsub fast float 5.000000e-01, %6672
  br label %6674

; <label>:6674                                    ; preds = %6646, %6522, %6507
  %6675 = phi float [ 1.000000e+00, %6507 ], [ %6588, %6522 ], [ %6673, %6646 ]
  %6676 = fsub fast float %6341, %6176
  %6677 = fmul fast float %6676, %5714
  %6678 = fadd fast float %6677, %6176
  %6679 = fsub fast float %6508, %6678
  %6680 = fmul fast float %6679, %5744
  %6681 = fadd fast float %6680, %6678
  %6682 = fsub fast float %6675, %6681
  %6683 = fmul fast float %6682, %5770
  %6684 = fadd fast float %6683, %6681
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6687 = fcmp fast ogt float %6686, 0.000000e+00
  br i1 %6687, label %6688, label %6728, !dx.controlflow.hints !125

; <label>:6688                                    ; preds = %6674
  %6689 = fcmp fast ugt float %6686, 0.000000e+00
  br i1 %6689, label %6690, label %6725

; <label>:6690                                    ; preds = %6688
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6707 = fadd fast float %6704, %5629
  %6708 = fadd fast float %6705, %5630
  %6709 = fadd fast float %6706, %5631
  %6710 = fmul fast float %6707, %6692
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6693, float %6708, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6694, float %6709, float %6711)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6695
  %6714 = fmul fast float %6707, %6697
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6708, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6709, float %6715)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6700
  %6718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6713, float %6717, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  %6720 = fmul fast float %6719, %6702
  %6721 = fadd fast float %6720, %6701
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fmul fast float %6722, %6686
  %6724 = fsub fast float 1.000000e+00, %6723
  br label %6725

; <label>:6725                                    ; preds = %6690, %6688
  %6726 = phi float [ %6724, %6690 ], [ 1.000000e+00, %6688 ]
  %6727 = fmul fast float %6726, %6684
  br label %6728

; <label>:6728                                    ; preds = %6725, %6674, %5609
  %6729 = phi float [ 1.000000e+00, %5609 ], [ %6727, %6725 ], [ %6684, %6674 ]
  %6730 = call float @dx.op.binary.f32(i32 36, float %6729, float %6729)  ; FMin(a,b)
  %6731 = call float @dx.op.binary.f32(i32 36, float %6729, float %6730)  ; FMin(a,b)
  %6732 = fcmp fast ogt float %6731, 0.000000e+00
  br i1 %6732, label %6733, label %6898, !dx.controlflow.hints !126

; <label>:6733                                    ; preds = %6728
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6738 = extractvalue %dx.types.CBufRet.f32 %6734, 3
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6749 = fmul fast float %6735, %5629
  %6750 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %6736, float %6749)  ; FMad(a,b,c)
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6737, float %6750)  ; FMad(a,b,c)
  %6752 = fadd fast float %6751, %6738
  %6753 = fmul fast float %6740, %5629
  %6754 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %6741, float %6753)  ; FMad(a,b,c)
  %6755 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6742, float %6754)  ; FMad(a,b,c)
  %6756 = fadd fast float %6755, %6743
  %6757 = fmul fast float %6745, %5629
  %6758 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %6746, float %6757)  ; FMad(a,b,c)
  %6759 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %6747, float %6758)  ; FMad(a,b,c)
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6763 = extractvalue %dx.types.CBufRet.f32 %6760, 3
  %6764 = fmul fast float %6763, %6752
  %6765 = fmul fast float %6763, %6756
  %6766 = fadd fast float %6764, %6761
  %6767 = fadd fast float %6765, %6762
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = fsub fast float %6766, %6769
  %6772 = fsub fast float %6767, %6770
  %6773 = fcmp fast olt float %6771, 0.000000e+00
  %6774 = fcmp fast olt float %6772, 0.000000e+00
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6780 = select i1 %6773, float %6776, float %6778
  %6781 = select i1 %6774, float %6777, float %6779
  %6782 = fmul fast float %6780, %6771
  %6783 = fmul fast float %6781, %6772
  %6784 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6785 = call float @dx.op.unary.f32(i32 6, float %6783)  ; FAbs(value)
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = call float @dx.op.binary.f32(i32 35, float %6784, float %6785)  ; FMax(a,b)
  %6789 = fsub fast float %6787, %6788
  %6790 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6791 = fcmp fast ogt float %6790, 0.000000e+00
  br i1 %6791, label %6792, label %6833, !dx.controlflow.hints !127

; <label>:6792                                    ; preds = %6733
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6766, float %6767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6795 = fcmp fast ogt float %6794, 0.000000e+00
  br i1 %6795, label %6796, label %6828

; <label>:6796                                    ; preds = %6792
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6766, float %6767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = extractvalue %dx.types.ResRet.f32 %6797, 3
  %6802 = fsub fast float 1.000000e+00, %6748
  %6803 = fsub fast float %6802, %6759
  %6804 = fmul fast float %6803, 0x400921FB60000000
  %6805 = fadd fast float %6804, 0x3FF921FB60000000
  %6806 = call float @dx.op.unary.f32(i32 13, float %6805)  ; Sin(value)
  %6807 = fadd fast float %6806, -1.000000e+00
  %6808 = fmul fast float %6807, 0x3FD45F3060000000
  %6809 = fmul fast float %6803, 0x401921FB60000000
  %6810 = fadd fast float %6809, 0x400921FB60000000
  %6811 = call float @dx.op.unary.f32(i32 13, float %6810)  ; Sin(value)
  %6812 = fadd fast float %6811, 0x3E7777A5C0000000
  %6813 = fmul fast float %6812, 0x3FC45F3060000000
  %6814 = fmul fast float %6803, 0x4022D97C80000000
  %6815 = fadd fast float %6814, 0x4012D97C80000000
  %6816 = call float @dx.op.unary.f32(i32 13, float %6815)  ; Sin(value)
  %6817 = fadd fast float %6816, 1.000000e+00
  %6818 = fmul fast float %6817, 0x3FBB2995E0000000
  %6819 = fmul fast float %6803, 0x402921FB60000000
  %6820 = fadd fast float %6819, 0x401921FB60000000
  %6821 = call float @dx.op.unary.f32(i32 13, float %6820)  ; Sin(value)
  %6822 = fadd fast float %6821, 0xBE8777A5C0000000
  %6823 = fmul fast float %6822, 0x3FB45F3060000000
  %6824 = call float @dx.op.dot4.f32(i32 56, float %6798, float %6799, float %6800, float %6801, float %6808, float %6813, float %6818, float %6823)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6825 = fmul fast float %6824, 0xBFF7154760000000
  %6826 = call float @dx.op.unary.f32(i32 21, float %6825)  ; Exp(value)
  %6827 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  br label %6828

; <label>:6828                                    ; preds = %6796, %6792
  %6829 = phi float [ %6827, %6796 ], [ 1.000000e+00, %6792 ]
  %6830 = fadd fast float %6829, -1.000000e+00
  %6831 = fmul fast float %6830, %6790
  %6832 = fadd fast float %6831, 1.000000e+00
  br label %6833

; <label>:6833                                    ; preds = %6828, %6733
  %6834 = phi float [ %6832, %6828 ], [ 1.000000e+00, %6733 ]
  %6835 = fmul fast float %6834, %6729
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = fadd fast float %6837, %167
  %6841 = fadd fast float %6838, %168
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = fsub fast float -0.000000e+00, %6840
  %6849 = fsub fast float -0.000000e+00, %6841
  %6850 = fsub fast float %4889, %6839
  %6851 = fadd fast float %6850, %6843
  %6852 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6848, float %6849, float %6851)  ; Dot3(ax,ay,az,bx,by,bz)
  %6853 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6845, float %6846, float %6847)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = fdiv fast float 1.000000e+00, %6853
  %6855 = fmul fast float %6854, %6852
  %6856 = fmul fast float %6845, %6855
  %6857 = fmul fast float %6846, %6855
  %6858 = fadd fast float %6856, %6840
  %6859 = fadd fast float %6857, %6841
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = fsub fast float %6858, %6861
  %6864 = fsub fast float %6859, %6862
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6865, 3
  %6868 = fmul fast float %6863, %6866
  %6869 = fmul fast float %6864, %6867
  %6870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.i32 %6870, 3
  %6872 = icmp eq i32 %6871, 0
  br i1 %6872, label %6878, label %6873

; <label>:6873                                    ; preds = %6833
  %6874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6875 = extractvalue %dx.types.ResRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.ResRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.ResRet.f32 %6874, 2
  br label %6883

; <label>:6878                                    ; preds = %6833
  %6879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6880 = extractvalue %dx.types.ResRet.f32 %6879, 0
  %6881 = extractvalue %dx.types.ResRet.f32 %6879, 1
  %6882 = extractvalue %dx.types.ResRet.f32 %6879, 2
  br label %6883

; <label>:6883                                    ; preds = %6878, %6873
  %6884 = phi float [ %6875, %6873 ], [ %6880, %6878 ]
  %6885 = phi float [ %6876, %6873 ], [ %6881, %6878 ]
  %6886 = phi float [ %6877, %6873 ], [ %6882, %6878 ]
  %6887 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6888 = fmul fast float %6887, %6884
  %6889 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6890 = fsub fast float %6855, %6889
  %6891 = fsub fast float %6890, %6888
  %6892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6891)  ; FMax(a,b)
  %6893 = fmul fast float %6892, %6885
  %6894 = call float @dx.op.binary.f32(i32 36, float %6886, float %6893)  ; FMin(a,b)
  %6895 = fmul fast float %6894, 0xBFF7154760000000
  %6896 = call float @dx.op.unary.f32(i32 21, float %6895)  ; Exp(value)
  %6897 = fmul fast float %6835, %6896
  br label %6898

; <label>:6898                                    ; preds = %6883, %6728
  %6899 = phi float [ %6897, %6883 ], [ %6729, %6728 ]
  %6900 = call float @dx.op.binary.f32(i32 36, float %6899, float %6899)  ; FMin(a,b)
  %6901 = call float @dx.op.binary.f32(i32 36, float %6899, float %6900)  ; FMin(a,b)
  %6902 = fcmp fast ogt float %6901, 0.000000e+00
  br i1 %6902, label %6903, label %7150, !dx.controlflow.hints !128

; <label>:6903                                    ; preds = %6898
  %6904 = fmul fast float %6899, %5621
  %6905 = fmul fast float %6899, %5622
  %6906 = fmul fast float %6899, %5623
  %6907 = fsub fast float %169, %4680
  %6908 = fcmp fast ogt float %6907, 0.000000e+00
  %6909 = fmul fast float %5610, 5.120000e+02
  %6910 = fmul fast float %5611, 5.120000e+02
  %6911 = fmul fast float %5612, 5.120000e+02
  %6912 = fadd fast float %6911, %169
  %6913 = fsub fast float %4680, %6912
  %6914 = fmul fast float %6913, 2.000000e+00
  %6915 = fadd fast float %6914, %6912
  %6916 = select i1 %6908, float %6915, float %6912
  %6917 = fsub fast float %6916, %169
  %6918 = call float @dx.op.dot3.f32(i32 55, float %6909, float %6910, float %6917, float %6909, float %6910, float %6917)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = call float @dx.op.unary.f32(i32 25, float %6918)  ; Rsqrt(value)
  %6920 = fmul fast float %6919, %6909
  %6921 = fmul fast float %6919, %6910
  %6922 = fmul fast float %6919, %6917
  %6923 = fsub fast float %4680, %169
  %6924 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6923)  ; Dot3(ax,ay,az,bx,by,bz)
  %6925 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6920, float %6921, float %6922)  ; Dot3(ax,ay,az,bx,by,bz)
  %6926 = fdiv fast float 1.000000e+00, %6925
  %6927 = fmul fast float %6926, %6924
  %6928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6907, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6929 = fcmp fast ogt float %6928, 0.000000e+00
  %6930 = fcmp fast olt float %6928, 0.000000e+00
  %6931 = zext i1 %6929 to i32
  %6932 = zext i1 %6930 to i32
  %6933 = sub nsw i32 %6931, %6932
  %6934 = sitofp i32 %6933 to float
  %6935 = fsub fast float %6916, %4680
  %6936 = call float @dx.op.dot3.f32(i32 55, float %6909, float %6910, float %6935, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6937 = fcmp fast ogt float %6936, 0.000000e+00
  %6938 = fcmp fast olt float %6936, 0.000000e+00
  %6939 = zext i1 %6937 to i32
  %6940 = zext i1 %6938 to i32
  %6941 = sub nsw i32 %6939, %6940
  %6942 = sitofp i32 %6941 to float
  %6943 = fcmp fast une float %6934, %6942
  br i1 %6943, label %6944, label %6954

; <label>:6944                                    ; preds = %6903
  %6945 = fmul fast float %6927, %6922
  %6946 = fmul fast float %6927, %6921
  %6947 = fmul fast float %6927, %6920
  %6948 = fmul fast float %6947, %6947
  %6949 = fmul fast float %6946, %6946
  %6950 = fadd fast float %6948, %6949
  %6951 = fmul fast float %6945, %6945
  %6952 = fadd fast float %6950, %6951
  %6953 = call float @dx.op.unary.f32(i32 24, float %6952)  ; Sqrt(value)
  br label %6964

; <label>:6954                                    ; preds = %6903
  %6955 = icmp slt i32 %6933, 0
  br i1 %6955, label %6956, label %6964

; <label>:6956                                    ; preds = %6954
  %6957 = fsub fast float %169, %6916
  %6958 = fmul fast float %6909, %6909
  %6959 = fmul fast float %6910, %6910
  %6960 = fadd fast float %6958, %6959
  %6961 = fmul fast float %6957, %6957
  %6962 = fadd fast float %6960, %6961
  %6963 = call float @dx.op.unary.f32(i32 24, float %6962)  ; Sqrt(value)
  br label %6964

; <label>:6964                                    ; preds = %6956, %6954, %6944
  %6965 = phi float [ %6953, %6944 ], [ %6963, %6956 ], [ 0.000000e+00, %6954 ]
  %6966 = fsub fast float -0.000000e+00, %6965
  %6967 = select i1 %6908, float -0.000000e+00, float %6966
  %6968 = fmul fast float %4677, 0x3FF7154760000000
  %6969 = fmul fast float %6968, %6967
  %6970 = fmul fast float %4678, 0x3FF7154760000000
  %6971 = fmul fast float %6970, %6967
  %6972 = fmul fast float %4679, 0x3FF7154760000000
  %6973 = fmul fast float %6972, %6967
  %6974 = call float @dx.op.unary.f32(i32 21, float %6969)  ; Exp(value)
  %6975 = call float @dx.op.unary.f32(i32 21, float %6971)  ; Exp(value)
  %6976 = call float @dx.op.unary.f32(i32 21, float %6973)  ; Exp(value)
  %6977 = call float @dx.op.unary.f32(i32 7, float %6974)  ; Saturate(value)
  %6978 = call float @dx.op.unary.f32(i32 7, float %6975)  ; Saturate(value)
  %6979 = call float @dx.op.unary.f32(i32 7, float %6976)  ; Saturate(value)
  %6980 = fmul fast float %6904, %6977
  %6981 = fmul fast float %6905, %6978
  %6982 = fmul fast float %6906, %6979
  %6983 = fsub fast float %5610, %4877
  %6984 = fsub fast float %5611, %4876
  %6985 = fsub fast float %5612, %4875
  %6986 = call float @dx.op.dot3.f32(i32 55, float %6983, float %6984, float %6985, float %6983, float %6984, float %6985)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = call float @dx.op.unary.f32(i32 25, float %6986)  ; Rsqrt(value)
  %6988 = fmul fast float %6987, %6983
  %6989 = fmul fast float %6987, %6984
  %6990 = fmul fast float %6987, %6985
  %6991 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float %4884, float %4885, float %4886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6992 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4873, float %4872, float %6988, float %6989, float %6990)  ; Dot3(ax,ay,az,bx,by,bz)
  %6993 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6994 = fmul fast float %6993, %6993
  %6995 = fmul fast float %6994, %4917
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = fmul fast float %6996, %6993
  %6998 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %6988, float %6989, float %6990)  ; Dot3(ax,ay,az,bx,by,bz)
  %6999 = fmul fast float %6998, %6998
  %7000 = call float @dx.op.unary.f32(i32 6, float %6991)  ; FAbs(value)
  %7001 = fsub fast float 1.000000e+00, %4910
  %7002 = fmul fast float %4892, %4892
  %7003 = fmul fast float %7002, %7001
  %7004 = fadd fast float %7003, %4910
  %7005 = bitcast float %7004 to i32
  %7006 = ashr i32 %7005, 1
  %7007 = add nsw i32 %7006, 532487669
  %7008 = bitcast i32 %7007 to float
  %7009 = fadd fast float %7008, %4892
  %7010 = fmul fast float %4910, %6999
  %7011 = fsub fast float 1.000000e+00, %6999
  %7012 = fadd fast float %7011, %7010
  %7013 = fmul fast float %7000, %7000
  %7014 = fmul fast float %7013, %7001
  %7015 = fadd fast float %7014, %4910
  %7016 = bitcast float %7015 to i32
  %7017 = ashr i32 %7016, 1
  %7018 = add nsw i32 %7017, 532487669
  %7019 = bitcast i32 %7018 to float
  %7020 = fadd fast float %7019, %7000
  %7021 = fmul fast float %7012, %7012
  %7022 = fmul fast float %7021, %7009
  %7023 = fmul fast float %7022, %7020
  %7024 = fdiv fast float 0x3FF0A00000000000, %7023
  %7025 = fmul fast float %7024, %4910
  %7026 = call float @dx.op.unary.f32(i32 6, float %6992)  ; FAbs(value)
  %7027 = fsub fast float 1.000000e+00, %7026
  %7028 = bitcast float %7027 to i32
  %7029 = sitofp i32 %7028 to float
  %7030 = fmul fast float %7029, 5.000000e+00
  %7031 = fadd fast float %7030, 0xC1EFBF8940000000
  %7032 = fptosi float %7031 to i32
  %7033 = bitcast i32 %7032 to float
  %7034 = fsub fast float 1.000000e+00, %4878
  %7035 = fsub fast float 1.000000e+00, %4879
  %7036 = fsub fast float 1.000000e+00, %4890
  %7037 = fmul fast float %7033, %7034
  %7038 = fmul fast float %7033, %7035
  %7039 = fmul fast float %7033, %7036
  %7040 = fadd fast float %7037, %4878
  %7041 = fadd fast float %7038, %4879
  %7042 = fadd fast float %7039, %4890
  br i1 %5029, label %7043, label %7066

; <label>:7043                                    ; preds = %6964
  %7044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4276, float %7026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7045 = extractvalue %dx.types.ResRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.ResRet.f32 %7044, 2
  %7048 = fadd fast float %7045, -5.000000e-01
  %7049 = fadd fast float %7046, -5.000000e-01
  %7050 = fadd fast float %7047, -5.000000e-01
  %7051 = fmul fast float %4878, 4.000000e+00
  %7052 = fmul fast float %7051, %7034
  %7053 = fmul fast float %7052, %7048
  %7054 = fmul fast float %4879, 4.000000e+00
  %7055 = fmul fast float %7054, %7035
  %7056 = fmul fast float %7055, %7049
  %7057 = fmul fast float %4890, 4.000000e+00
  %7058 = fmul fast float %7057, %7036
  %7059 = fmul fast float %7058, %7050
  %7060 = fadd fast float %7053, %7040
  %7061 = fadd fast float %7056, %7041
  %7062 = fadd fast float %7059, %7042
  %7063 = call float @dx.op.unary.f32(i32 7, float %7060)  ; Saturate(value)
  %7064 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7065 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  br label %7066

; <label>:7066                                    ; preds = %7043, %6964
  %7067 = phi float [ %7063, %7043 ], [ %7040, %6964 ]
  %7068 = phi float [ %7064, %7043 ], [ %7041, %6964 ]
  %7069 = phi float [ %7065, %7043 ], [ %7042, %6964 ]
  %7070 = fmul fast float %6991, 9.843750e-01
  %7071 = fadd fast float %7070, 7.812500e-03
  %7072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7071, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7073 = extractvalue %dx.types.ResRet.f32 %7072, 2
  %7074 = extractvalue %dx.types.ResRet.f32 %7072, 3
  %7075 = fmul fast float %7073, %4878
  %7076 = fmul fast float %7073, %4879
  %7077 = fmul fast float %7073, %4890
  %7078 = fadd fast float %7075, %7074
  %7079 = fadd fast float %7076, %7074
  %7080 = fadd fast float %7077, %7074
  br i1 %5029, label %7081, label %7104

; <label>:7081                                    ; preds = %7066
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4276, float %6991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = fadd fast float %7083, -5.000000e-01
  %7087 = fadd fast float %7084, -5.000000e-01
  %7088 = fadd fast float %7085, -5.000000e-01
  %7089 = fmul fast float %4878, 4.000000e+00
  %7090 = fmul fast float %7089, %7034
  %7091 = fmul fast float %7090, %7086
  %7092 = fmul fast float %4879, 4.000000e+00
  %7093 = fmul fast float %7092, %7035
  %7094 = fmul fast float %7093, %7087
  %7095 = fmul fast float %4890, 4.000000e+00
  %7096 = fmul fast float %7095, %7036
  %7097 = fmul fast float %7096, %7088
  %7098 = fadd fast float %7091, %7078
  %7099 = fadd fast float %7094, %7079
  %7100 = fadd fast float %7097, %7080
  %7101 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7102 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7103 = call float @dx.op.unary.f32(i32 7, float %7100)  ; Saturate(value)
  br label %7104

; <label>:7104                                    ; preds = %7081, %7066
  %7105 = phi float [ %7101, %7081 ], [ %7078, %7066 ]
  %7106 = phi float [ %7102, %7081 ], [ %7079, %7066 ]
  %7107 = phi float [ %7103, %7081 ], [ %7080, %7066 ]
  %7108 = call float @dx.op.binary.f32(i32 35, float %7106, float %7107)  ; FMax(a,b)
  %7109 = call float @dx.op.binary.f32(i32 35, float %7105, float %7108)  ; FMax(a,b)
  %7110 = fsub fast float 1.000000e+00, %7109
  %7111 = fmul fast float %7067, %7025
  %7112 = fmul fast float %7068, %7025
  %7113 = fmul fast float %7069, %7025
  %7114 = fsub fast float 1.000000e+00, %6992
  %7115 = bitcast float %7114 to i32
  %7116 = sitofp i32 %7115 to float
  %7117 = fmul fast float %7116, 5.000000e+00
  %7118 = fadd fast float %7117, 0xC1EFBF8940000000
  %7119 = fptosi float %7118 to i32
  %7120 = bitcast i32 %7119 to float
  %7121 = fmul fast float %7120, %4277
  %7122 = fmul fast float %7110, %7121
  %7123 = fmul fast float %7122, %5571
  %7124 = fmul fast float %7122, %5572
  %7125 = fmul fast float %7122, %5573
  %7126 = fadd fast float %7123, %7111
  %7127 = fadd fast float %7124, %7112
  %7128 = fadd fast float %7125, %7113
  %7129 = fmul fast float %6997, %6980
  %7130 = fmul fast float %7129, %7110
  %7131 = fmul fast float %6997, %6981
  %7132 = fmul fast float %7131, %7110
  %7133 = fmul fast float %6997, %6982
  %7134 = fmul fast float %7133, %7110
  %7135 = fmul fast float %7129, %7126
  %7136 = fmul fast float %7131, %7127
  %7137 = fmul fast float %7133, %7128
  %7138 = fadd fast float %7130, %5555
  %7139 = fmul fast float %7138, %4273
  %7140 = fadd fast float %7132, %5556
  %7141 = fmul fast float %7140, %4273
  %7142 = fadd fast float %7134, %5557
  %7143 = fmul fast float %7142, %4273
  %7144 = fadd fast float %7135, %5598
  %7145 = fmul fast float %7144, %4273
  %7146 = fadd fast float %7136, %5601
  %7147 = fmul fast float %7146, %4273
  %7148 = fadd fast float %7137, %5604
  %7149 = fmul fast float %7148, %4273
  br label %7150

; <label>:7150                                    ; preds = %7104, %6898, %5551
  %7151 = phi float [ %5599, %5551 ], [ %5599, %6898 ], [ %7145, %7104 ]
  %7152 = phi float [ %5602, %5551 ], [ %5602, %6898 ], [ %7147, %7104 ]
  %7153 = phi float [ %5605, %5551 ], [ %5605, %6898 ], [ %7149, %7104 ]
  %7154 = phi float [ %5594, %5551 ], [ %5594, %6898 ], [ %7139, %7104 ]
  %7155 = phi float [ %5595, %5551 ], [ %5595, %6898 ], [ %7141, %7104 ]
  %7156 = phi float [ %5596, %5551 ], [ %5596, %6898 ], [ %7143, %7104 ]
  %7157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.i32 %7157, 0
  %7159 = icmp eq i32 %7158, 0
  br i1 %7159, label %7822, label %7160

; <label>:7160                                    ; preds = %7150
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 2
  %7163 = extractvalue %dx.types.CBufRet.f32 %7161, 3
  %7164 = fmul fast float %7162, %104
  %7165 = fmul fast float %7163, %105
  %7166 = fptoui float %7164 to i32
  %7167 = fptoui float %7165 to i32
  %7168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7169 = extractvalue %dx.types.CBufRet.f32 %7168, 0
  %7170 = extractvalue %dx.types.CBufRet.f32 %7168, 2
  %7171 = extractvalue %dx.types.CBufRet.f32 %7168, 3
  %7172 = fadd fast float %92, -4.000000e+00
  %7173 = call float @dx.op.binary.f32(i32 35, float %7172, float 0.000000e+00)  ; FMax(a,b)
  %7174 = fadd fast float %7173, %7169
  %7175 = fmul fast float %7174, %7170
  %7176 = call float @dx.op.unary.f32(i32 23, float %7175)  ; Log(value)
  %7177 = fmul fast float %7176, %7171
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 2
  %7180 = fmul fast float %7177, %7179
  %7181 = call float @dx.op.unary.f32(i32 7, float %7180)  ; Saturate(value)
  %7182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.i32 %7182, 1
  %7184 = add i32 %7183, -1
  %7185 = uitofp i32 %7183 to float
  %7186 = fmul fast float %7185, %7181
  %7187 = fptoui float %7186 to i32
  %7188 = call i32 @dx.op.binary.i32(i32 40, i32 %7187, i32 %7184)  ; UMin(a,b)
  %7189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.i32 %7189, 2
  %7191 = extractvalue %dx.types.CBufRet.i32 %7189, 3
  %7192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7167, i32 %7190, i32 %7166)  ; UMad(a,b,c)
  %7193 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7188, i32 %7191, i32 %7192)  ; UMad(a,b,c)
  %7194 = add nsw i32 %7158, -1
  %7195 = call i32 @dx.op.binary.i32(i32 37, i32 %7194, i32 0)  ; IMax(a,b)
  %7196 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7197 = fptoui float %7196 to i32
  %7198 = lshr i32 %7197, 5
  %7199 = call i32 @dx.op.binary.i32(i32 40, i32 %7198, i32 8191)  ; UMin(a,b)
  %7200 = shl i32 %7199, 2
  %7201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7200, i32 undef)  ; BufferLoad(srv,index,wot)
  %7202 = extractvalue %dx.types.ResRet.i32 %7201, 0
  %7203 = lshr i32 %7202, 16
  %7204 = and i32 %7202, 65535
  %7205 = lshr i32 %7202, 21
  %7206 = lshr i32 %7204, 5
  %7207 = call i32 @dx.op.binary.i32(i32 40, i32 %7206, i32 %7195)  ; UMin(a,b)
  %7208 = icmp ugt i32 %7205, %7207
  br i1 %7208, label %7822, label %7209

; <label>:7209                                    ; preds = %7160
  br label %7210

; <label>:7210                                    ; preds = %7812, %7209
  %7211 = phi i32 [ %7819, %7812 ], [ %7205, %7209 ]
  %7212 = phi float [ %7813, %7812 ], [ %7151, %7209 ]
  %7213 = phi float [ %7814, %7812 ], [ %7152, %7209 ]
  %7214 = phi float [ %7815, %7812 ], [ %7153, %7209 ]
  %7215 = phi float [ %7816, %7812 ], [ %7154, %7209 ]
  %7216 = phi float [ %7817, %7812 ], [ %7155, %7209 ]
  %7217 = phi float [ %7818, %7812 ], [ %7156, %7209 ]
  %7218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.i32 %7218, 0
  %7220 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7193, i32 %7219, i32 %7211)  ; UMad(a,b,c)
  %7221 = shl i32 %7220, 2
  %7222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7221, i32 undef)  ; BufferLoad(srv,index,wot)
  %7223 = extractvalue %dx.types.ResRet.i32 %7222, 0
  %7224 = shl i32 %7211, 5
  %7225 = sub nsw i32 %7203, %7224
  %7226 = call i32 @dx.op.binary.i32(i32 37, i32 %7225, i32 0)  ; IMax(a,b)
  %7227 = call i32 @dx.op.binary.i32(i32 38, i32 %7226, i32 31)  ; IMin(a,b)
  %7228 = sub nsw i32 1, %7203
  %7229 = add nsw i32 %7228, %7204
  %7230 = call i32 @dx.op.binary.i32(i32 37, i32 %7229, i32 0)  ; IMax(a,b)
  %7231 = call i32 @dx.op.binary.i32(i32 38, i32 %7230, i32 32)  ; IMin(a,b)
  %7232 = and i32 %7231, 31
  %7233 = shl i32 -1, %7232
  %7234 = xor i32 %7233, -1
  %7235 = and i32 %7227, 31
  %7236 = shl i32 %7234, %7235
  %7237 = icmp eq i32 %7231, 32
  %7238 = select i1 %7237, i32 -1, i32 %7236
  %7239 = and i32 %7238, %7223
  %7240 = icmp eq i32 %7239, 0
  br i1 %7240, label %7812, label %7241

; <label>:7241                                    ; preds = %7210
  br label %7242

; <label>:7242                                    ; preds = %7376, %7241
  %7243 = phi i32 [ %7254, %7376 ], [ %7239, %7241 ]
  %7244 = phi float [ %7377, %7376 ], [ %7212, %7241 ]
  %7245 = phi float [ %7378, %7376 ], [ %7213, %7241 ]
  %7246 = phi float [ %7379, %7376 ], [ %7214, %7241 ]
  %7247 = phi float [ %7380, %7376 ], [ %7215, %7241 ]
  %7248 = phi float [ %7381, %7376 ], [ %7216, %7241 ]
  %7249 = phi float [ %7382, %7376 ], [ %7217, %7241 ]
  %7250 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7243)  ; FirstbitLo(value)
  %7251 = add i32 %7250, %7224
  %7252 = and i32 %7250, 31
  %7253 = shl i32 1, %7252
  %7254 = xor i32 %7253, %7243
  %7255 = mul i32 %7251, 112
  %7256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7255, i32 undef)  ; BufferLoad(srv,index,wot)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = extractvalue %dx.types.ResRet.f32 %7256, 1
  %7259 = extractvalue %dx.types.ResRet.f32 %7256, 2
  %7260 = or i32 %7255, 12
  %7261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7260, i32 undef)  ; BufferLoad(srv,index,wot)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = add i32 %7255, 16
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = add i32 %7255, 28
  %7269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.i32 %7269, 0
  %7271 = add i32 %7255, 44
  %7272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7271, i32 undef)  ; BufferLoad(srv,index,wot)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 0
  %7274 = add i32 %7255, 48
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7279 = extractvalue %dx.types.ResRet.f32 %7275, 3
  %7280 = add i32 %7255, 64
  %7281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7280, i32 undef)  ; BufferLoad(srv,index,wot)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  %7285 = extractvalue %dx.types.ResRet.f32 %7281, 3
  %7286 = add i32 %7255, 80
  %7287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7286, i32 undef)  ; BufferLoad(srv,index,wot)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 1
  %7289 = extractvalue %dx.types.ResRet.f32 %7287, 2
  %7290 = add i32 %7255, 92
  %7291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7290, i32 undef)  ; BufferLoad(srv,index,wot)
  %7292 = extractvalue %dx.types.ResRet.i32 %7291, 0
  %7293 = call float @dx.op.dot3.f32(i32 55, float %7257, float %7258, float %7259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7294 = select i1 %229, float %7288, float %7257
  %7295 = select i1 %229, float %7293, float %7258
  %7296 = select i1 %229, float %7289, float %7259
  %7297 = and i32 %7292, 65535
  %7298 = uitofp i32 %7297 to float
  %7299 = lshr i32 %7292, 16
  %7300 = uitofp i32 %7299 to float
  %7301 = and i32 %7270, 65535
  %7302 = and i32 %7270, 50331648
  %7303 = icmp eq i32 %7302, 33554432
  %7304 = fsub fast float %7276, %167
  %7305 = fsub fast float %7277, %168
  %7306 = fsub fast float %7278, %169
  %7307 = call float @dx.op.dot3.f32(i32 55, float %7304, float %7305, float %7306, float %7304, float %7305, float %7306)  ; Dot3(ax,ay,az,bx,by,bz)
  %7308 = call float @dx.op.unary.f32(i32 24, float %7307)  ; Sqrt(value)
  %7309 = fdiv fast float 1.000000e+00, %7308
  %7310 = fmul fast float %7309, %7304
  %7311 = fmul fast float %7309, %7305
  %7312 = fmul fast float %7309, %7306
  %7313 = fadd fast float %7308, %7262
  %7314 = fdiv fast float 1.000000e+00, %7313
  %7315 = fmul float %7273, %7314
  %7316 = fmul float %7315, %7315
  %7317 = call float @dx.op.unary.f32(i32 7, float %7316)  ; Saturate(value)
  br i1 %7303, label %7318, label %7339

; <label>:7318                                    ; preds = %7242
  %7319 = fmul fast float %7284, %7265
  %7320 = fmul fast float %7284, %7266
  %7321 = fmul fast float %7284, %7267
  %7322 = fadd fast float %7304, %7319
  %7323 = fadd fast float %7305, %7320
  %7324 = fadd fast float %7306, %7321
  %7325 = call float @dx.op.dot3.f32(i32 55, float %7322, float %7323, float %7324, float %7322, float %7323, float %7324)  ; Dot3(ax,ay,az,bx,by,bz)
  %7326 = call float @dx.op.unary.f32(i32 25, float %7325)  ; Rsqrt(value)
  %7327 = fmul fast float %7326, %7322
  %7328 = fmul fast float %7326, %7323
  %7329 = fmul fast float %7326, %7324
  %7330 = fsub fast float %167, %7276
  %7331 = fsub fast float %168, %7277
  %7332 = fsub fast float %169, %7278
  %7333 = fsub fast float -0.000000e+00, %7330
  %7334 = fsub fast float -0.000000e+00, %7331
  %7335 = fsub fast float -0.000000e+00, %7332
  %7336 = call float @dx.op.dot3.f32(i32 55, float %7333, float %7334, float %7335, float %7265, float %7266, float %7267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7337 = fcmp fast ogt float %7336, 0.000000e+00
  %7338 = uitofp i1 %7337 to float
  br label %7339

; <label>:7339                                    ; preds = %7318, %7242
  %7340 = phi float [ %7338, %7318 ], [ 1.000000e+00, %7242 ]
  %7341 = phi float [ %7327, %7318 ], [ %7310, %7242 ]
  %7342 = phi float [ %7328, %7318 ], [ %7311, %7242 ]
  %7343 = phi float [ %7329, %7318 ], [ %7312, %7242 ]
  %7344 = call float @dx.op.dot3.f32(i32 55, float %7265, float %7266, float %7267, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7345 = fmul fast float %7344, %7344
  %7346 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7347 = fsub fast float 1.000000e+00, %7346
  %7348 = fmul fast float %7347, 5.000000e-01
  %7349 = fcmp fast ogt float %7344, 0.000000e+00
  %7350 = fsub fast float 1.000000e+00, %7348
  %7351 = select i1 %7349, float %7348, float %7350
  %7352 = fmul fast float %7351, %7300
  %7353 = fadd fast float %7352, %7298
  %7354 = fmul fast float %7353, 0x3EF0001000000000
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7354, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = fmul fast float %7344, %7282
  %7358 = fadd fast float %7357, %7283
  %7359 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7360 = select i1 %7303, float 1.000000e+00, float %7359
  %7361 = select i1 %7303, float %7359, float 1.000000e+00
  %7362 = fmul fast float %7308, %7279
  %7363 = fsub fast float 1.000000e+00, %7362
  %7364 = fmul fast float %7363, %7285
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fmul fast float %7365, %7361
  %7367 = fmul fast float %7366, 2.000000e+00
  %7368 = fsub fast float 3.000000e+00, %7367
  %7369 = fmul fast float %7356, %7340
  %7370 = fmul fast float %7366, %7366
  %7371 = fmul fast float %7370, %7369
  %7372 = fmul fast float %7371, %7368
  %7373 = call float @dx.op.binary.f32(i32 36, float %7372, float %7372)  ; FMin(a,b)
  %7374 = call float @dx.op.binary.f32(i32 36, float %7372, float %7373)  ; FMin(a,b)
  %7375 = fcmp fast ogt float %7374, 0.000000e+00
  br i1 %7375, label %7384, label %7376, !dx.controlflow.hints !129

; <label>:7376                                    ; preds = %7768, %7530, %7339
  %7377 = phi float [ %7244, %7530 ], [ %7244, %7339 ], [ %7808, %7768 ]
  %7378 = phi float [ %7245, %7530 ], [ %7245, %7339 ], [ %7809, %7768 ]
  %7379 = phi float [ %7246, %7530 ], [ %7246, %7339 ], [ %7810, %7768 ]
  %7380 = phi float [ %7247, %7530 ], [ %7247, %7339 ], [ %7802, %7768 ]
  %7381 = phi float [ %7248, %7530 ], [ %7248, %7339 ], [ %7803, %7768 ]
  %7382 = phi float [ %7249, %7530 ], [ %7249, %7339 ], [ %7804, %7768 ]
  %7383 = icmp eq i32 %7243, %7253
  br i1 %7383, label %7811, label %7242

; <label>:7384                                    ; preds = %7339
  %7385 = icmp eq i32 %7301, 255
  br i1 %7385, label %7530, label %7386, !dx.controlflow.hints !130

; <label>:7386                                    ; preds = %7384
  %7387 = mul nuw nsw i32 %7301, 176
  %7388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7387, i32 undef)  ; BufferLoad(srv,index,wot)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.ResRet.f32 %7388, 3
  %7393 = add nuw nsw i32 %7387, 16
  %7394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7393, i32 undef)  ; BufferLoad(srv,index,wot)
  %7395 = extractvalue %dx.types.ResRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.ResRet.f32 %7394, 1
  %7397 = add nuw nsw i32 %7387, 32
  %7398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7397, i32 undef)  ; BufferLoad(srv,index,wot)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = add nuw nsw i32 %7387, 48
  %7403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7402, i32 undef)  ; BufferLoad(srv,index,wot)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.ResRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.ResRet.f32 %7403, 2
  %7407 = extractvalue %dx.types.ResRet.f32 %7403, 3
  %7408 = add nuw nsw i32 %7387, 64
  %7409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7408, i32 undef)  ; BufferLoad(srv,index,wot)
  %7410 = extractvalue %dx.types.ResRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.ResRet.f32 %7409, 1
  %7412 = extractvalue %dx.types.ResRet.f32 %7409, 2
  %7413 = extractvalue %dx.types.ResRet.f32 %7409, 3
  %7414 = add nuw nsw i32 %7387, 80
  %7415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7414, i32 undef)  ; BufferLoad(srv,index,wot)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = extractvalue %dx.types.ResRet.f32 %7415, 3
  %7420 = add nuw nsw i32 %7387, 96
  %7421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7420, i32 undef)  ; BufferLoad(srv,index,wot)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7426 = bitcast float %7396 to i32
  %7427 = fmul fast float %7401, %111
  %7428 = fmul fast float %7401, %112
  %7429 = fmul fast float %7401, %113
  %7430 = fadd fast float %7427, %167
  %7431 = fadd fast float %7428, %168
  %7432 = fadd fast float %7429, %169
  %7433 = fmul fast float %7430, %7404
  %7434 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7410, float %7433)  ; FMad(a,b,c)
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %7432, float %7416, float %7434)  ; FMad(a,b,c)
  %7436 = fadd fast float %7435, %7422
  %7437 = fmul fast float %7430, %7405
  %7438 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7411, float %7437)  ; FMad(a,b,c)
  %7439 = call float @dx.op.tertiary.f32(i32 46, float %7432, float %7417, float %7438)  ; FMad(a,b,c)
  %7440 = fadd fast float %7439, %7423
  %7441 = fmul fast float %7430, %7406
  %7442 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7412, float %7441)  ; FMad(a,b,c)
  %7443 = call float @dx.op.tertiary.f32(i32 46, float %7432, float %7418, float %7442)  ; FMad(a,b,c)
  %7444 = fadd fast float %7443, %7424
  %7445 = fmul fast float %7430, %7407
  %7446 = call float @dx.op.tertiary.f32(i32 46, float %7431, float %7413, float %7445)  ; FMad(a,b,c)
  %7447 = call float @dx.op.tertiary.f32(i32 46, float %7432, float %7419, float %7446)  ; FMad(a,b,c)
  %7448 = fadd fast float %7447, %7425
  %7449 = fdiv fast float %7436, %7448
  %7450 = fdiv fast float %7440, %7448
  %7451 = fdiv fast float %7444, %7448
  %7452 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7451)  ; FMax(a,b)
  %7453 = fmul fast float %240, 0x401921FB60000000
  %7454 = call float @dx.op.unary.f32(i32 13, float %7453)  ; Sin(value)
  %7455 = call float @dx.op.unary.f32(i32 12, float %7453)  ; Cos(value)
  %7456 = fmul fast float %7455, %7400
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7454, float %7400, float 0.000000e+00)  ; FMad(a,b,c)
  %7458 = fmul fast float %7400, %7454
  %7459 = fsub fast float -0.000000e+00, %7458
  %7460 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7400, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7461

; <label>:7461                                    ; preds = %7461, %7386
  %7462 = phi float [ 0.000000e+00, %7386 ], [ %7494, %7461 ]
  %7463 = phi float [ 0.000000e+00, %7386 ], [ %7496, %7461 ]
  %7464 = phi i32 [ 0, %7386 ], [ %7497, %7461 ]
  %7465 = mul i32 %7464, 2
  %7466 = add i32 0, %7465
  %7467 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7466
  %7468 = load float, float* %7467, align 4
  %7469 = mul i32 %7464, 2
  %7470 = add i32 1, %7469
  %7471 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7470
  %7472 = load float, float* %7471, align 4
  %7473 = fmul fast float %7456, %7468
  %7474 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7459, float %7473)  ; FMad(a,b,c)
  %7475 = fmul fast float %7468, %7457
  %7476 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7460, float %7475)  ; FMad(a,b,c)
  %7477 = fadd fast float %7474, %7449
  %7478 = fadd fast float %7476, %7450
  %7479 = fmul fast float %7477, %7395
  %7480 = fmul fast float %7478, %7395
  %7481 = call float @dx.op.binary.f32(i32 35, float %7479, float %7391)  ; FMax(a,b)
  %7482 = call float @dx.op.binary.f32(i32 35, float %7480, float %7391)  ; FMax(a,b)
  %7483 = call float @dx.op.binary.f32(i32 36, float %7481, float %7392)  ; FMin(a,b)
  %7484 = call float @dx.op.binary.f32(i32 36, float %7482, float %7392)  ; FMin(a,b)
  %7485 = fadd fast float %7483, %7389
  %7486 = fadd fast float %7484, %7390
  %7487 = uitofp i32 %7426 to float
  %7488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7485, float %7486, float %7487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = fsub fast float %7489, %7452
  %7491 = fsub fast float %7490, %7399
  %7492 = fcmp fast ogt float %7491, 0.000000e+00
  %7493 = select i1 %7492, float 1.000000e+00, float 0.000000e+00
  %7494 = fadd fast float %7493, %7462
  %7495 = select i1 %7492, float %7491, float 0.000000e+00
  %7496 = fadd fast float %7495, %7463
  %7497 = add nuw nsw i32 %7464, 1
  %7498 = icmp eq i32 %7497, 8
  br i1 %7498, label %7499, label %7461

; <label>:7499                                    ; preds = %7461
  %7500 = fdiv fast float 1.000000e+00, %7494
  %7501 = fmul fast float %7500, %7496
  %7502 = fdiv fast float 1.000000e+00, %7452
  %7503 = fmul fast float %7501, %7502
  %7504 = call float @dx.op.unary.f32(i32 7, float %7503)  ; Saturate(value)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7504, float 0.000000e+00)  ; FMax(a,b)
  %7506 = fmul fast float %7494, 1.250000e-01
  %7507 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7508 = fmul fast float %7507, 2.000000e+00
  %7509 = fadd fast float %7508, -1.000000e+00
  %7510 = fcmp fast ogt float %7509, 0.000000e+00
  %7511 = fcmp fast olt float %7509, 0.000000e+00
  %7512 = zext i1 %7510 to i32
  %7513 = zext i1 %7511 to i32
  %7514 = sub nsw i32 %7512, %7513
  %7515 = sitofp i32 %7514 to float
  %7516 = fmul fast float %7515, %7509
  %7517 = fsub fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7517
  %7519 = fmul fast float %7518, %7517
  %7520 = fsub fast float %7517, %7519
  %7521 = fmul fast float %7520, %7505
  %7522 = fsub fast float 1.000000e+00, %7519
  %7523 = fsub fast float %7522, %7521
  %7524 = fmul fast float %7515, 5.000000e-01
  %7525 = fmul fast float %7524, %7523
  %7526 = fsub fast float -5.000000e-01, %7525
  %7527 = fmul fast float %7526, %7360
  %7528 = fadd fast float %7527, 1.000000e+00
  %7529 = fmul fast float %7528, %7372
  br label %7530

; <label>:7530                                    ; preds = %7499, %7384
  %7531 = phi float [ %7529, %7499 ], [ %7372, %7384 ]
  %7532 = call float @dx.op.binary.f32(i32 36, float %7531, float %7531)  ; FMin(a,b)
  %7533 = call float @dx.op.binary.f32(i32 36, float %7531, float %7532)  ; FMin(a,b)
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  br i1 %7534, label %7535, label %7376, !dx.controlflow.hints !131

; <label>:7535                                    ; preds = %7530
  %7536 = fmul fast float %7531, %7294
  %7537 = fmul fast float %7531, %7295
  %7538 = fmul fast float %7531, %7296
  %7539 = fsub fast float %7278, %4680
  %7540 = fcmp fast ogt float %7539, 0.000000e+00
  %7541 = fsub fast float %169, %4680
  %7542 = fcmp fast ogt float %7541, 0.000000e+00
  %7543 = xor i1 %7542, %7540
  %7544 = fsub fast float %4680, %7278
  %7545 = fmul fast float %7544, 2.000000e+00
  %7546 = fadd fast float %7545, %7278
  %7547 = select i1 %7543, float %7278, float %7546
  %7548 = fsub fast float %7547, %169
  %7549 = call float @dx.op.dot3.f32(i32 55, float %7304, float %7305, float %7548, float %7304, float %7305, float %7548)  ; Dot3(ax,ay,az,bx,by,bz)
  %7550 = call float @dx.op.unary.f32(i32 25, float %7549)  ; Rsqrt(value)
  %7551 = fmul fast float %7550, %7304
  %7552 = fmul fast float %7550, %7305
  %7553 = fmul fast float %7550, %7548
  %7554 = fsub fast float %4680, %169
  %7555 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7554)  ; Dot3(ax,ay,az,bx,by,bz)
  %7556 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7551, float %7552, float %7553)  ; Dot3(ax,ay,az,bx,by,bz)
  %7557 = fdiv fast float 1.000000e+00, %7556
  %7558 = fmul fast float %7557, %7555
  %7559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7541, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7560 = fcmp fast ogt float %7559, 0.000000e+00
  %7561 = fcmp fast olt float %7559, 0.000000e+00
  %7562 = zext i1 %7560 to i32
  %7563 = zext i1 %7561 to i32
  %7564 = sub nsw i32 %7562, %7563
  %7565 = sitofp i32 %7564 to float
  %7566 = fsub fast float %7547, %4680
  %7567 = call float @dx.op.dot3.f32(i32 55, float %7304, float %7305, float %7566, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7568 = fcmp fast ogt float %7567, 0.000000e+00
  %7569 = fcmp fast olt float %7567, 0.000000e+00
  %7570 = zext i1 %7568 to i32
  %7571 = zext i1 %7569 to i32
  %7572 = sub nsw i32 %7570, %7571
  %7573 = sitofp i32 %7572 to float
  %7574 = fcmp fast une float %7565, %7573
  br i1 %7574, label %7575, label %7585

; <label>:7575                                    ; preds = %7535
  %7576 = fmul fast float %7558, %7553
  %7577 = fmul fast float %7558, %7552
  %7578 = fmul fast float %7558, %7551
  %7579 = fmul fast float %7578, %7578
  %7580 = fmul fast float %7577, %7577
  %7581 = fadd fast float %7579, %7580
  %7582 = fmul fast float %7576, %7576
  %7583 = fadd fast float %7581, %7582
  %7584 = call float @dx.op.unary.f32(i32 24, float %7583)  ; Sqrt(value)
  br label %7597

; <label>:7585                                    ; preds = %7535
  %7586 = icmp slt i32 %7564, 0
  br i1 %7586, label %7587, label %7597

; <label>:7587                                    ; preds = %7585
  %7588 = fsub fast float %167, %7276
  %7589 = fsub fast float %168, %7277
  %7590 = fsub fast float %169, %7547
  %7591 = fmul fast float %7588, %7588
  %7592 = fmul fast float %7589, %7589
  %7593 = fadd fast float %7591, %7592
  %7594 = fmul fast float %7590, %7590
  %7595 = fadd fast float %7593, %7594
  %7596 = call float @dx.op.unary.f32(i32 24, float %7595)  ; Sqrt(value)
  br label %7597

; <label>:7597                                    ; preds = %7587, %7585, %7575
  %7598 = phi float [ %7584, %7575 ], [ %7596, %7587 ], [ 0.000000e+00, %7585 ]
  %7599 = and i1 %7542, %7540
  %7600 = fsub fast float -0.000000e+00, %7598
  %7601 = select i1 %7599, float -0.000000e+00, float %7600
  %7602 = fmul fast float %4677, 0x3FF7154760000000
  %7603 = fmul fast float %7602, %7601
  %7604 = fmul fast float %4678, 0x3FF7154760000000
  %7605 = fmul fast float %7604, %7601
  %7606 = fmul fast float %4679, 0x3FF7154760000000
  %7607 = fmul fast float %7606, %7601
  %7608 = call float @dx.op.unary.f32(i32 21, float %7603)  ; Exp(value)
  %7609 = call float @dx.op.unary.f32(i32 21, float %7605)  ; Exp(value)
  %7610 = call float @dx.op.unary.f32(i32 21, float %7607)  ; Exp(value)
  %7611 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7612 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7613 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7614 = fmul fast float %7536, %7611
  %7615 = fmul fast float %7537, %7612
  %7616 = fmul fast float %7538, %7613
  %7617 = fsub fast float %7310, %4877
  %7618 = fsub fast float %7311, %4876
  %7619 = fsub fast float %7312, %4875
  %7620 = call float @dx.op.dot3.f32(i32 55, float %7617, float %7618, float %7619, float %7617, float %7618, float %7619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7621 = call float @dx.op.unary.f32(i32 25, float %7620)  ; Rsqrt(value)
  %7622 = fmul fast float %7621, %7617
  %7623 = fmul fast float %7621, %7618
  %7624 = fmul fast float %7621, %7619
  %7625 = call float @dx.op.dot3.f32(i32 55, float %7310, float %7311, float %7312, float %4884, float %4885, float %4886)  ; Dot3(ax,ay,az,bx,by,bz)
  %7626 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4873, float %4872, float %7622, float %7623, float %7624)  ; Dot3(ax,ay,az,bx,by,bz)
  %7627 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7628 = fmul fast float %7627, %7317
  %7629 = fmul fast float %7627, %7627
  %7630 = fmul fast float %7629, %4917
  %7631 = call float @dx.op.unary.f32(i32 7, float %7630)  ; Saturate(value)
  %7632 = fmul fast float %7628, %7631
  %7633 = bitcast float %7307 to i32
  %7634 = ashr i32 %7633, 1
  %7635 = sub nsw i32 1597463007, %7634
  %7636 = bitcast i32 %7635 to float
  %7637 = fmul fast float %7636, %7304
  %7638 = fmul fast float %7636, %7305
  %7639 = fmul fast float %7636, %7306
  %7640 = fsub fast float %7637, %4877
  %7641 = fsub fast float %7638, %4876
  %7642 = fsub fast float %7639, %4875
  %7643 = call float @dx.op.dot3.f32(i32 55, float %7640, float %7641, float %7642, float %7640, float %7641, float %7642)  ; Dot3(ax,ay,az,bx,by,bz)
  %7644 = call float @dx.op.unary.f32(i32 25, float %7643)  ; Rsqrt(value)
  %7645 = fmul fast float %7640, %7644
  %7646 = fmul fast float %7641, %7644
  %7647 = fmul fast float %7642, %7644
  %7648 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4885, float %4886, float %7645, float %7646, float %7647)  ; Dot3(ax,ay,az,bx,by,bz)
  %7649 = fmul fast float %7648, %7648
  %7650 = call float @dx.op.unary.f32(i32 6, float %7625)  ; FAbs(value)
  %7651 = fsub fast float 1.000000e+00, %4910
  %7652 = fmul fast float %4892, %4892
  %7653 = fmul fast float %7652, %7651
  %7654 = fadd fast float %7653, %4910
  %7655 = bitcast float %7654 to i32
  %7656 = ashr i32 %7655, 1
  %7657 = add nsw i32 %7656, 532487669
  %7658 = bitcast i32 %7657 to float
  %7659 = fadd fast float %7658, %4892
  %7660 = fmul fast float %4910, %7649
  %7661 = fsub fast float 1.000000e+00, %7649
  %7662 = fadd fast float %7661, %7660
  %7663 = fmul fast float %7650, %7650
  %7664 = fmul fast float %7663, %7651
  %7665 = fadd fast float %7664, %4910
  %7666 = bitcast float %7665 to i32
  %7667 = ashr i32 %7666, 1
  %7668 = add nsw i32 %7667, 532487669
  %7669 = bitcast i32 %7668 to float
  %7670 = fadd fast float %7669, %7650
  %7671 = fmul fast float %7662, %7662
  %7672 = fmul fast float %7671, %7659
  %7673 = fmul fast float %7672, %7670
  %7674 = fdiv fast float 1.000000e+00, %7673
  %7675 = bitcast float %4910 to i32
  %7676 = sitofp i32 %7675 to float
  %7677 = fmul fast float %7676, 0x3FE7F73180000000
  %7678 = fadd fast float %7677, 0x41AFE27C40000000
  %7679 = fptosi float %7678 to i32
  %7680 = bitcast i32 %7679 to float
  %7681 = fmul fast float %7273, 0x3FD80E9D60000000
  %7682 = fmul fast float %7681, %7636
  %7683 = fadd fast float %7680, %7682
  %7684 = bitcast float %7683 to i32
  %7685 = sub nsw i32 2129859010, %7684
  %7686 = bitcast i32 %7685 to float
  %7687 = fmul fast float %4910, %7674
  %7688 = fmul fast float %7687, %7680
  %7689 = fmul fast float %7688, %7686
  %7690 = call float @dx.op.unary.f32(i32 6, float %7626)  ; FAbs(value)
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = bitcast float %7691 to i32
  %7693 = sitofp i32 %7692 to float
  %7694 = fmul fast float %7693, 5.000000e+00
  %7695 = fadd fast float %7694, 0xC1EFBF8940000000
  %7696 = fptosi float %7695 to i32
  %7697 = bitcast i32 %7696 to float
  %7698 = fsub fast float 1.000000e+00, %4878
  %7699 = fsub fast float 1.000000e+00, %4879
  %7700 = fsub fast float 1.000000e+00, %4890
  %7701 = fmul fast float %7697, %7698
  %7702 = fmul fast float %7697, %7699
  %7703 = fmul fast float %7697, %7700
  %7704 = fadd fast float %7701, %4878
  %7705 = fadd fast float %7702, %4879
  %7706 = fadd fast float %7703, %4890
  br i1 %5029, label %7707, label %7730

; <label>:7707                                    ; preds = %7597
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4276, float %7690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = fadd fast float %7709, -5.000000e-01
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fadd fast float %7711, -5.000000e-01
  %7715 = fmul fast float %4878, 4.000000e+00
  %7716 = fmul fast float %7715, %7698
  %7717 = fmul fast float %7716, %7712
  %7718 = fmul fast float %4879, 4.000000e+00
  %7719 = fmul fast float %7718, %7699
  %7720 = fmul fast float %7719, %7713
  %7721 = fmul fast float %4890, 4.000000e+00
  %7722 = fmul fast float %7721, %7700
  %7723 = fmul fast float %7722, %7714
  %7724 = fadd fast float %7717, %7704
  %7725 = fadd fast float %7720, %7705
  %7726 = fadd fast float %7723, %7706
  %7727 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  br label %7730

; <label>:7730                                    ; preds = %7707, %7597
  %7731 = phi float [ %7727, %7707 ], [ %7704, %7597 ]
  %7732 = phi float [ %7728, %7707 ], [ %7705, %7597 ]
  %7733 = phi float [ %7729, %7707 ], [ %7706, %7597 ]
  %7734 = fmul fast float %7625, 9.843750e-01
  %7735 = fadd fast float %7734, 7.812500e-03
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7735, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 2
  %7738 = extractvalue %dx.types.ResRet.f32 %7736, 3
  %7739 = fmul fast float %7737, %4878
  %7740 = fmul fast float %7737, %4879
  %7741 = fmul fast float %7737, %4890
  %7742 = fadd fast float %7739, %7738
  %7743 = fadd fast float %7740, %7738
  %7744 = fadd fast float %7741, %7738
  br i1 %5029, label %7745, label %7768

; <label>:7745                                    ; preds = %7730
  %7746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4276, float %7625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.ResRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.ResRet.f32 %7746, 2
  %7750 = fadd fast float %7747, -5.000000e-01
  %7751 = fadd fast float %7748, -5.000000e-01
  %7752 = fadd fast float %7749, -5.000000e-01
  %7753 = fmul fast float %4878, 4.000000e+00
  %7754 = fmul fast float %7753, %7698
  %7755 = fmul fast float %7754, %7750
  %7756 = fmul fast float %4879, 4.000000e+00
  %7757 = fmul fast float %7756, %7699
  %7758 = fmul fast float %7757, %7751
  %7759 = fmul fast float %4890, 4.000000e+00
  %7760 = fmul fast float %7759, %7700
  %7761 = fmul fast float %7760, %7752
  %7762 = fadd fast float %7755, %7742
  %7763 = fadd fast float %7758, %7743
  %7764 = fadd fast float %7761, %7744
  %7765 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7766 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7767 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  br label %7768

; <label>:7768                                    ; preds = %7745, %7730
  %7769 = phi float [ %7765, %7745 ], [ %7742, %7730 ]
  %7770 = phi float [ %7766, %7745 ], [ %7743, %7730 ]
  %7771 = phi float [ %7767, %7745 ], [ %7744, %7730 ]
  %7772 = call float @dx.op.binary.f32(i32 35, float %7770, float %7771)  ; FMax(a,b)
  %7773 = call float @dx.op.binary.f32(i32 35, float %7769, float %7772)  ; FMax(a,b)
  %7774 = fsub fast float 1.000000e+00, %7773
  %7775 = fmul fast float %7731, %7689
  %7776 = fmul fast float %7732, %7689
  %7777 = fmul fast float %7733, %7689
  %7778 = fsub fast float 1.000000e+00, %7626
  %7779 = bitcast float %7778 to i32
  %7780 = sitofp i32 %7779 to float
  %7781 = fmul fast float %7780, 5.000000e+00
  %7782 = fadd fast float %7781, 0xC1EFBF8940000000
  %7783 = fptosi float %7782 to i32
  %7784 = bitcast i32 %7783 to float
  %7785 = fmul fast float %7784, %4277
  %7786 = fmul fast float %7774, %7785
  %7787 = fmul fast float %7786, %5571
  %7788 = fmul fast float %7786, %5572
  %7789 = fmul fast float %7786, %5573
  %7790 = fadd fast float %7787, %7775
  %7791 = fadd fast float %7788, %7776
  %7792 = fadd fast float %7789, %7777
  %7793 = fmul fast float %7614, %4273
  %7794 = fmul fast float %7793, %7632
  %7795 = fmul fast float %7794, %7774
  %7796 = fmul fast float %7615, %4273
  %7797 = fmul fast float %7796, %7632
  %7798 = fmul fast float %7797, %7774
  %7799 = fmul fast float %7616, %4273
  %7800 = fmul fast float %7799, %7632
  %7801 = fmul fast float %7800, %7774
  %7802 = fadd fast float %7795, %7247
  %7803 = fadd fast float %7798, %7248
  %7804 = fadd fast float %7801, %7249
  %7805 = fmul fast float %7794, %7790
  %7806 = fmul fast float %7797, %7791
  %7807 = fmul fast float %7800, %7792
  %7808 = fadd fast float %7805, %7244
  %7809 = fadd fast float %7806, %7245
  %7810 = fadd fast float %7807, %7246
  br label %7376

; <label>:7811                                    ; preds = %7376
  br label %7812

; <label>:7812                                    ; preds = %7811, %7210
  %7813 = phi float [ %7212, %7210 ], [ %7377, %7811 ]
  %7814 = phi float [ %7213, %7210 ], [ %7378, %7811 ]
  %7815 = phi float [ %7214, %7210 ], [ %7379, %7811 ]
  %7816 = phi float [ %7215, %7210 ], [ %7380, %7811 ]
  %7817 = phi float [ %7216, %7210 ], [ %7381, %7811 ]
  %7818 = phi float [ %7217, %7210 ], [ %7382, %7811 ]
  %7819 = add i32 %7211, 1
  %7820 = icmp ugt i32 %7819, %7207
  br i1 %7820, label %7821, label %7210

; <label>:7821                                    ; preds = %7812
  br label %7822

; <label>:7822                                    ; preds = %7821, %7160, %7150
  %7823 = phi float [ %7151, %7150 ], [ %7151, %7160 ], [ %7813, %7821 ]
  %7824 = phi float [ %7152, %7150 ], [ %7152, %7160 ], [ %7814, %7821 ]
  %7825 = phi float [ %7153, %7150 ], [ %7153, %7160 ], [ %7815, %7821 ]
  %7826 = phi float [ %7154, %7150 ], [ %7154, %7160 ], [ %7816, %7821 ]
  %7827 = phi float [ %7155, %7150 ], [ %7155, %7160 ], [ %7817, %7821 ]
  %7828 = phi float [ %7156, %7150 ], [ %7156, %7160 ], [ %7818, %7821 ]
  %7829 = fmul fast float %4273, %4273
  %7830 = fsub fast float 1.000000e+00, %7829
  %7831 = call float @dx.op.dot3.f32(i32 55, float %7830, float %7830, float %7830, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = fsub fast float 1.000000e+00, %7831
  %7833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7834 = extractvalue %dx.types.CBufRet.f32 %7833, 0
  %7835 = fmul fast float %7834, %5577
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7838 = fsub fast float 1.000000e+00, %4280
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fadd fast float %7828, %4279
  %7841 = fmul fast float %7840, %4280
  %7842 = fmul fast float %7839, %7837
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 3
  %7845 = fmul fast float %7826, %4881
  %7846 = fmul fast float %7827, %4882
  %7847 = fmul fast float %7828, %4883
  %7848 = fcmp fast ogt float %92, %189
  %7849 = and i1 %7848, %4683
  %7850 = or i1 %4689, %7849
  %7851 = icmp eq i32 %4682, 2
  %7852 = fcmp fast ole float %92, %189
  %7853 = and i1 %7852, %7851
  %7854 = or i1 %7853, %7850
  br i1 %7849, label %7855, label %8112

; <label>:7855                                    ; preds = %7822
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7858 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7859 = fmul fast float %7857, %104
  %7860 = fmul fast float %7858, %105
  %7861 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7862 = call float @dx.op.unary.f32(i32 7, float %7860)  ; Saturate(value)
  %7863 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7861, float %7862, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7864 = extractvalue %dx.types.ResRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.ResRet.f32 %7863, 1
  %7866 = extractvalue %dx.types.ResRet.f32 %7863, 2
  %7867 = extractvalue %dx.types.ResRet.f32 %7863, 3
  %7868 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7861, float %7862, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = extractvalue %dx.types.ResRet.f32 %7868, 3
  %7873 = call float @dx.op.binary.f32(i32 35, float %7865, float %7866)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7864, float %7873)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 35, float %7874, float %7867)  ; FMax(a,b)
  %7876 = call float @dx.op.binary.f32(i32 36, float %7870, float %7871)  ; FMin(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7869, float %7876)  ; FMin(a,b)
  %7878 = call float @dx.op.binary.f32(i32 36, float %7877, float %7872)  ; FMin(a,b)
  %7879 = fmul fast float %7875, 2.550000e+02
  %7880 = fadd fast float %7879, 0x3F70101020000000
  %7881 = fptoui float %7880 to i32
  %7882 = fmul fast float %7878, 2.550000e+02
  %7883 = fadd fast float %7882, 0x3F70101020000000
  %7884 = fptoui float %7883 to i32
  %7885 = icmp ult i32 %7881, %7884
  br i1 %7885, label %7886, label %8054

; <label>:7886                                    ; preds = %7855
  %7887 = fcmp fast ogt float %91, 9.843750e-01
  %7888 = fadd fast float %92, -4.000000e+00
  %7889 = select i1 %7887, float -4.000000e+00, float %7888
  %7890 = call float @dx.op.binary.f32(i32 35, float %7889, float 0.000000e+00)  ; FMax(a,b)
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 0
  %7893 = fadd fast float %7892, %7890
  %7894 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7895 = fmul fast float %7893, %7894
  %7896 = call float @dx.op.unary.f32(i32 23, float %7895)  ; Log(value)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7891, 3
  %7898 = fmul fast float %7897, %7896
  %7899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7899, 2
  %7901 = fmul fast float %7898, %7900
  %7902 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7903 = uitofp i32 %7881 to float
  %7904 = uitofp i32 %7884 to float
  %7905 = fadd fast float %7903, 5.000000e-01
  %7906 = fadd fast float %7904, 5.000000e-01
  %7907 = fmul fast float %7900, %7905
  %7908 = fmul fast float %7900, %7906
  %7909 = fadd fast float %7907, 0x3F0FFB4800000000
  %7910 = fadd fast float %7908, 0xBF0FFB4800000000
  %7911 = call float @dx.op.binary.f32(i32 35, float %7902, float %7909)  ; FMax(a,b)
  %7912 = call float @dx.op.binary.f32(i32 36, float %7911, float %7910)  ; FMin(a,b)
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7913, 2
  %7916 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %7917 = fmul fast float %7914, %7912
  %7918 = fadd fast float %7916, %7917
  %7919 = fadd fast float %7916, %7915
  %7920 = fsub fast float %7914, %7915
  %7921 = fadd fast float %7920, %7916
  %7922 = call float @dx.op.binary.f32(i32 35, float %7918, float %7919)  ; FMax(a,b)
  %7923 = call float @dx.op.binary.f32(i32 36, float %7922, float %7921)  ; FMin(a,b)
  %7924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7861, float %7862, float %7923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7925 = extractvalue %dx.types.ResRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.ResRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.ResRet.f32 %7924, 2
  %7928 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.i32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.i32 %7928, 1
  %7931 = uitofp i32 %7929 to float
  %7932 = uitofp i32 %7930 to float
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7936 = fmul fast float %7931, %7861
  %7937 = fmul fast float %7932, %7862
  %7938 = fadd fast float %7936, -5.000000e-01
  %7939 = fadd fast float %7937, -5.000000e-01
  %7940 = call float @dx.op.unary.f32(i32 22, float %7938)  ; Frc(value)
  %7941 = call float @dx.op.unary.f32(i32 22, float %7939)  ; Frc(value)
  %7942 = fmul fast float %7940, %7940
  %7943 = fmul fast float %7942, %7940
  %7944 = fsub fast float 3.000000e+00, %7940
  %7945 = fmul fast float %7942, %7944
  %7946 = fmul fast float %7940, 3.000000e+00
  %7947 = fmul fast float %7943, 3.000000e+00
  %7948 = fmul fast float %7942, 6.000000e+00
  %7949 = fsub fast float %7947, %7948
  %7950 = fadd fast float %7949, 4.000000e+00
  %7951 = fmul fast float %7950, 0x3FC5555560000000
  %7952 = fmul fast float %7943, -3.000000e+00
  %7953 = fadd fast float %7942, %7940
  %7954 = fmul fast float %7953, 3.000000e+00
  %7955 = fadd fast float %7952, 1.000000e+00
  %7956 = fadd fast float %7955, %7954
  %7957 = fmul fast float %7943, 0x3FC5555560000000
  %7958 = fmul fast float %7941, %7941
  %7959 = fmul fast float %7958, %7941
  %7960 = fsub fast float 3.000000e+00, %7941
  %7961 = fmul fast float %7958, %7960
  %7962 = fmul fast float %7941, 3.000000e+00
  %7963 = fmul fast float %7959, 3.000000e+00
  %7964 = fmul fast float %7958, 6.000000e+00
  %7965 = fsub fast float %7963, %7964
  %7966 = fadd fast float %7965, 4.000000e+00
  %7967 = fmul fast float %7966, 0x3FC5555560000000
  %7968 = fmul fast float %7959, -3.000000e+00
  %7969 = fadd fast float %7958, %7941
  %7970 = fmul fast float %7969, 3.000000e+00
  %7971 = fadd fast float %7968, 1.000000e+00
  %7972 = fadd fast float %7971, %7970
  %7973 = fmul fast float %7959, 0x3FC5555560000000
  %7974 = fadd fast float %7940, 1.000000e+00
  %7975 = fsub fast float 1.000000e+00, %7946
  %7976 = fadd fast float %7975, %7945
  %7977 = fadd fast float %7976, %7950
  %7978 = fmul fast float %7977, 0x3FC5555560000000
  %7979 = fdiv fast float %7951, %7978
  %7980 = fsub fast float %7974, %7979
  %7981 = fsub fast float 1.000000e+00, %7940
  %7982 = fadd fast float %7956, %7943
  %7983 = fmul fast float %7982, 0x3FC5555560000000
  %7984 = fdiv fast float %7957, %7983
  %7985 = fadd fast float %7981, %7984
  %7986 = fadd fast float %7941, 1.000000e+00
  %7987 = fsub fast float 1.000000e+00, %7962
  %7988 = fadd fast float %7987, %7961
  %7989 = fadd fast float %7988, %7966
  %7990 = fmul fast float %7989, 0x3FC5555560000000
  %7991 = fdiv fast float %7967, %7990
  %7992 = fsub fast float %7986, %7991
  %7993 = fsub fast float 1.000000e+00, %7941
  %7994 = fadd fast float %7972, %7959
  %7995 = fmul fast float %7994, 0x3FC5555560000000
  %7996 = fdiv fast float %7973, %7995
  %7997 = fadd fast float %7996, %7993
  %7998 = fmul fast float %7980, %7934
  %7999 = fsub fast float %7861, %7998
  %8000 = fmul fast float %7985, %7934
  %8001 = fadd fast float %8000, %7861
  %8002 = fmul fast float %7997, %7935
  %8003 = fadd fast float %8002, %7862
  %8004 = fmul fast float %7992, %7935
  %8005 = fsub fast float %7862, %8004
  %8006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7999, float %8005, float %7923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.ResRet.f32 %8006, 2
  %8010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8001, float %8005, float %7923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.ResRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.ResRet.f32 %8010, 2
  %8014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7999, float %8003, float %7923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.ResRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.ResRet.f32 %8014, 2
  %8018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8001, float %8003, float %7923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8019 = extractvalue %dx.types.ResRet.f32 %8018, 0
  %8020 = extractvalue %dx.types.ResRet.f32 %8018, 1
  %8021 = extractvalue %dx.types.ResRet.f32 %8018, 2
  %8022 = fsub fast float %8015, %8007
  %8023 = fsub fast float %8016, %8008
  %8024 = fsub fast float %8017, %8009
  %8025 = fmul fast float %8022, %7995
  %8026 = fmul fast float %8023, %7995
  %8027 = fmul fast float %8024, %7995
  %8028 = fadd fast float %8025, %8007
  %8029 = fadd fast float %8026, %8008
  %8030 = fadd fast float %8027, %8009
  %8031 = fsub fast float %8019, %8011
  %8032 = fsub fast float %8020, %8012
  %8033 = fsub fast float %8021, %8013
  %8034 = fmul fast float %8031, %7995
  %8035 = fmul fast float %8032, %7995
  %8036 = fmul fast float %8033, %7995
  %8037 = fsub fast float %8011, %8028
  %8038 = fadd fast float %8037, %8034
  %8039 = fsub fast float %8012, %8029
  %8040 = fadd fast float %8039, %8035
  %8041 = fsub fast float %8013, %8030
  %8042 = fadd fast float %8041, %8036
  %8043 = fmul fast float %8038, %7983
  %8044 = fmul fast float %8040, %7983
  %8045 = fmul fast float %8042, %7983
  %8046 = fadd fast float %8043, %8028
  %8047 = fadd fast float %8044, %8029
  %8048 = fadd fast float %8045, %8030
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 1
  %8051 = fmul fast float %8046, %8050
  %8052 = fmul fast float %8047, %8050
  %8053 = fmul fast float %8048, %8050
  br label %8054

; <label>:8054                                    ; preds = %7886, %7855
  %8055 = phi float [ %7925, %7886 ], [ 1.000000e+00, %7855 ]
  %8056 = phi float [ %7926, %7886 ], [ 1.000000e+00, %7855 ]
  %8057 = phi float [ %7927, %7886 ], [ 1.000000e+00, %7855 ]
  %8058 = phi float [ %8051, %7886 ], [ 0.000000e+00, %7855 ]
  %8059 = phi float [ %8052, %7886 ], [ 0.000000e+00, %7855 ]
  %8060 = phi float [ %8053, %7886 ], [ 0.000000e+00, %7855 ]
  %8061 = fmul fast float %8058, %7832
  %8062 = fmul fast float %8059, %7832
  %8063 = fmul fast float %8060, %7832
  %8064 = call float @dx.op.dot3.f32(i32 55, float %8055, float %8056, float %8057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8065 = call float @dx.op.dot3.f32(i32 55, float %8061, float %8062, float %8063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8066 = select i1 %229, float %8064, float %8055
  %8067 = select i1 %229, float %8064, float %8056
  %8068 = select i1 %229, float 1.000000e+00, float %8057
  %8069 = select i1 %229, float %8065, float %8061
  %8070 = select i1 %229, float 0.000000e+00, float %8062
  %8071 = select i1 %229, float 0.000000e+00, float %8063
  %8072 = fmul fast float %8066, %7845
  %8073 = fmul fast float %8067, %7846
  %8074 = fmul fast float %8068, %7847
  %8075 = fadd fast float %8072, %8069
  %8076 = fadd fast float %8073, %8070
  %8077 = fadd fast float %8071, %8074
  %8078 = fmul fast float %8066, %7823
  %8079 = fmul fast float %8067, %7824
  %8080 = fmul fast float %8068, %7825
  %8081 = fmul fast float %137, %7857
  %8082 = fmul fast float %139, %7858
  %8083 = fsub fast float 1.000000e+00, %8081
  %8084 = fsub fast float 1.000000e+00, %8082
  %8085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8086 = extractvalue %dx.types.CBufRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.CBufRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.CBufRet.f32 %8085, 2
  %8089 = fmul fast float %8083, %8086
  %8090 = fmul fast float %8083, %8087
  %8091 = fmul fast float %8083, %8088
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8096 = fmul fast float %8084, %8093
  %8097 = fmul fast float %8084, %8094
  %8098 = fmul fast float %8084, %8095
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = fadd fast float %8096, %8100
  %8104 = fadd fast float %8103, %8089
  %8105 = fadd fast float %8097, %8101
  %8106 = fadd fast float %8105, %8090
  %8107 = fadd fast float %8098, %8102
  %8108 = fadd fast float %8107, %8091
  %8109 = fmul fast float %8104, %189
  %8110 = fmul fast float %8106, %189
  %8111 = fmul fast float %8108, %189
  br label %8112

; <label>:8112                                    ; preds = %8054, %7822
  %8113 = phi float [ %8109, %8054 ], [ %167, %7822 ]
  %8114 = phi float [ %8110, %8054 ], [ %168, %7822 ]
  %8115 = phi float [ %8111, %8054 ], [ %169, %7822 ]
  %8116 = phi float [ %189, %8054 ], [ %92, %7822 ]
  %8117 = phi float [ %8075, %8054 ], [ %7845, %7822 ]
  %8118 = phi float [ %8076, %8054 ], [ %7846, %7822 ]
  %8119 = phi float [ %8077, %8054 ], [ %7847, %7822 ]
  %8120 = phi float [ %8078, %8054 ], [ %7823, %7822 ]
  %8121 = phi float [ %8079, %8054 ], [ %7824, %7822 ]
  %8122 = phi float [ %8080, %8054 ], [ %7825, %7822 ]
  %8123 = phi float [ %8055, %8054 ], [ 1.000000e+00, %7822 ]
  br i1 %7854, label %9278, label %8124

; <label>:8124                                    ; preds = %8112
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.CBufRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8129 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.CBufRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8134 = extractvalue %dx.types.CBufRet.f32 %8130, 3
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 0
  %8137 = extractvalue %dx.types.CBufRet.f32 %8135, 1
  %8138 = extractvalue %dx.types.CBufRet.f32 %8135, 2
  %8139 = extractvalue %dx.types.CBufRet.f32 %8135, 3
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.CBufRet.f32 %8140, 2
  %8144 = extractvalue %dx.types.CBufRet.f32 %8140, 3
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 3
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %8150 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %8151 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %8152 = fcmp fast olt float %8151, -5.000000e-01
  %8153 = call float @dx.op.dot3.f32(i32 55, float %8113, float %8114, float %8115, float %8113, float %8114, float %8115)  ; Dot3(ax,ay,az,bx,by,bz)
  %8154 = call float @dx.op.unary.f32(i32 25, float %8153)  ; Rsqrt(value)
  %8155 = fmul fast float %8154, %8153
  %8156 = fmul fast float %8154, %8113
  %8157 = fmul fast float %8154, %8114
  %8158 = fmul fast float %8154, %8115
  %8159 = fadd fast float %8155, %8129
  %8160 = call float @dx.op.dot3.f32(i32 55, float %8156, float %8157, float %8158, float %8126, float %8127, float %8128)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.i32 %8161, 1
  %8163 = and i32 %8162, 1
  %8164 = icmp ne i32 %8163, 0
  %8165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8165, 2
  %8167 = fcmp fast ogt float %8166, 0.000000e+00
  %8168 = and i1 %8164, %8167
  br i1 %8168, label %8169, label %8575, !dx.controlflow.hints !132

; <label>:8169                                    ; preds = %8124
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 3
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 2
  %8176 = fsub fast float %8173, %8175
  %8177 = and i32 %8162, 2
  %8178 = extractvalue %dx.types.CBufRet.i32 %8161, 0
  %8179 = call i32 @dx.op.binary.i32(i32 40, i32 %8178, i32 3)  ; UMin(a,b)
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8174, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8174, 1
  %8185 = fsub fast float %8181, %8183
  %8186 = fsub fast float %8182, %8184
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8189 = fcmp fast ogt float %8188, 0.000000e+00
  %8190 = fsub fast float -0.000000e+00, %8185
  %8191 = fsub fast float -0.000000e+00, %8186
  %8192 = call float @dx.op.dot2.f32(i32 54, float %8156, float %8157, float %8156, float %8157)  ; Dot2(ax,ay,bx,by)
  %8193 = call float @dx.op.dot2.f32(i32 54, float %8156, float %8157, float %8190, float %8191)  ; Dot2(ax,ay,bx,by)
  %8194 = fmul fast float %8193, 2.000000e+00
  %8195 = call float @dx.op.dot2.f32(i32 54, float %8190, float %8191, float %8190, float %8191)  ; Dot2(ax,ay,bx,by)
  %8196 = fmul fast float %8188, %8188
  %8197 = fsub fast float %8195, %8196
  %8198 = fmul fast float %8194, %8194
  %8199 = fmul fast float %8192, 4.000000e+00
  %8200 = fmul fast float %8199, %8197
  %8201 = fsub fast float %8198, %8200
  %8202 = fcmp fast ogt float %8201, 0.000000e+00
  br i1 %8202, label %8203, label %8218

; <label>:8203                                    ; preds = %8169
  %8204 = fcmp fast ogt float %8194, 0.000000e+00
  %8205 = call float @dx.op.unary.f32(i32 24, float %8201)  ; Sqrt(value)
  %8206 = fsub fast float -0.000000e+00, %8205
  %8207 = select i1 %8204, float %8205, float %8206
  %8208 = fadd fast float %8207, %8194
  %8209 = fmul float %8208, -5.000000e-01
  %8210 = fdiv fast float %8209, %8192
  %8211 = call float @dx.op.binary.f32(i32 35, float %8210, float 0.000000e+00)  ; FMax(a,b)
  %8212 = call float @dx.op.binary.f32(i32 36, float %8155, float %8211)  ; FMin(a,b)
  %8213 = fdiv fast float %8197, %8209
  %8214 = call float @dx.op.binary.f32(i32 35, float %8213, float 0.000000e+00)  ; FMax(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8155, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8212, float %8215)  ; FMin(a,b)
  %8217 = call float @dx.op.binary.f32(i32 35, float %8212, float %8215)  ; FMax(a,b)
  br label %8218

; <label>:8218                                    ; preds = %8203, %8169
  %8219 = phi float [ %8217, %8203 ], [ -1.000000e+00, %8169 ]
  %8220 = phi float [ %8216, %8203 ], [ -1.000000e+00, %8169 ]
  %8221 = phi i1 [ true, %8203 ], [ false, %8169 ]
  %8222 = and i1 %8189, %8221
  br i1 %8222, label %8223, label %8225

; <label>:8223                                    ; preds = %8218
  %8224 = fcmp fast oeq float %8220, %8219
  br i1 %8224, label %8528, label %8226

; <label>:8225                                    ; preds = %8218
  br i1 %8189, label %8528, label %8226

; <label>:8226                                    ; preds = %8225, %8223
  %8227 = phi float [ %8155, %8225 ], [ %8219, %8223 ]
  %8228 = phi float [ 0.000000e+00, %8225 ], [ %8220, %8223 ]
  %8229 = icmp ne i32 %8177, 0
  %8230 = fmul fast float %8227, %8158
  %8231 = fadd fast float %8230, %8171
  %8232 = fmul fast float %8231, %8227
  %8233 = select i1 %8229, float 0.000000e+00, float %8232
  %8234 = fcmp fast oeq float %8158, 0.000000e+00
  %8235 = fdiv fast float %8176, %8158
  %8236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8235)  ; FMax(a,b)
  %8237 = select i1 %8234, float %8227, float %8236
  %8238 = call float @dx.op.binary.f32(i32 36, float %8227, float %8237)  ; FMin(a,b)
  %8239 = fcmp fast ogt float %8158, 0.000000e+00
  %8240 = fcmp fast olt float %8176, 0.000000e+00
  br i1 %8239, label %8241, label %8298

; <label>:8241                                    ; preds = %8226
  %8242 = icmp eq i32 %8177, 0
  br i1 %8240, label %8243, label %8287

; <label>:8243                                    ; preds = %8241
  %8244 = select i1 %8242, float %8227, float 0.000000e+00
  %8245 = fsub fast float -0.000000e+00, %8244
  %8246 = call float @dx.op.unary.f32(i32 6, float %8245)  ; FAbs(value)
  %8247 = fmul fast float %8244, %8158
  %8248 = fadd fast float %8247, %8171
  %8249 = fmul fast float %8246, %8248
  %8250 = fsub fast float %8233, %8249
  %8251 = fsub fast float %8227, %8246
  %8252 = select i1 %8242, float %8251, float 0.000000e+00
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.CBufRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.CBufRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8264 = call float @dx.op.binary.f32(i32 36, float %8250, float %8263)  ; FMin(a,b)
  %8265 = fmul fast float %8261, %8252
  %8266 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8267 = fsub fast float %8258, %8254
  %8268 = fsub fast float %8259, %8255
  %8269 = fsub fast float %8260, %8256
  %8270 = fmul fast float %8266, %8267
  %8271 = fmul fast float %8266, %8268
  %8272 = fmul fast float %8266, %8269
  %8273 = fadd fast float %8270, %8254
  %8274 = fadd fast float %8271, %8255
  %8275 = fadd fast float %8272, %8256
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = fadd fast float %8278, %8277
  %8280 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8282 = extractvalue %dx.types.CBufRet.f32 %8276, 3
  %8283 = fadd fast float %8282, %8281
  %8284 = call float @dx.op.unary.f32(i32 7, float %8283)  ; Saturate(value)
  %8285 = fmul fast float %8280, %8264
  %8286 = fmul fast float %8285, %8284
  br label %8528

; <label>:8287                                    ; preds = %8241
  br i1 %8242, label %8288, label %8309

; <label>:8288                                    ; preds = %8287
  %8289 = call float @dx.op.binary.f32(i32 36, float %8238, float %8228)  ; FMin(a,b)
  %8290 = fsub fast float %8238, %8289
  %8291 = fsub fast float %8290, %8227
  %8292 = call float @dx.op.unary.f32(i32 6, float %8291)  ; FAbs(value)
  %8293 = fadd fast float %8290, %8227
  %8294 = fmul fast float %8293, %8158
  %8295 = fadd fast float %8294, %8171
  %8296 = fmul fast float %8295, %8292
  %8297 = fsub fast float %8233, %8296
  br label %8309

; <label>:8298                                    ; preds = %8226
  br i1 %8240, label %8299, label %8309

; <label>:8299                                    ; preds = %8298
  %8300 = call float @dx.op.binary.f32(i32 35, float %8228, float %8238)  ; FMax(a,b)
  %8301 = icmp eq i32 %8177, 0
  %8302 = select i1 %8301, float %8238, float 0.000000e+00
  %8303 = fsub fast float -0.000000e+00, %8302
  %8304 = call float @dx.op.unary.f32(i32 6, float %8303)  ; FAbs(value)
  %8305 = fmul fast float %8302, %8158
  %8306 = fadd fast float %8305, %8171
  %8307 = fmul fast float %8304, %8306
  %8308 = fsub fast float %8233, %8307
  br label %8309

; <label>:8309                                    ; preds = %8299, %8298, %8288, %8287
  %8310 = phi float [ %8228, %8287 ], [ %8228, %8288 ], [ %8300, %8299 ], [ %8228, %8298 ]
  %8311 = phi float [ 0.000000e+00, %8287 ], [ %8292, %8288 ], [ %8304, %8299 ], [ 0.000000e+00, %8298 ]
  %8312 = phi float [ %8233, %8287 ], [ %8297, %8288 ], [ %8308, %8299 ], [ %8233, %8298 ]
  %8313 = phi float [ %8238, %8287 ], [ %8238, %8288 ], [ %8227, %8299 ], [ %8227, %8298 ]
  %8314 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8314, align 4, !tbaa !119, !noalias !133
  %8315 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8315, align 4, !tbaa !119, !noalias !133
  %8316 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8316, align 4, !tbaa !119, !noalias !133
  %8317 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8317, align 4, !tbaa !119, !noalias !133
  %8318 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8318, align 4, !tbaa !119, !noalias !133
  %8319 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8319, align 4, !tbaa !119, !noalias !133
  %8320 = icmp sgt i32 %8179, 0
  br i1 %8320, label %8321, label %8382

; <label>:8321                                    ; preds = %8309
  br label %8322

; <label>:8322                                    ; preds = %8371, %8321
  %8323 = phi i32 [ %8372, %8371 ], [ 0, %8321 ]
  %8324 = phi i32 [ %8373, %8371 ], [ 0, %8321 ]
  %8325 = add nuw i32 %8324, 171
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8325)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.CBufRet.f32 %8326, 1
  %8329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8330 = extractvalue %dx.types.CBufRet.f32 %8329, 0
  %8331 = extractvalue %dx.types.CBufRet.f32 %8329, 1
  %8332 = fsub fast float %8327, %8330
  %8333 = fsub fast float %8328, %8331
  %8334 = extractvalue %dx.types.CBufRet.f32 %8326, 2
  %8335 = fsub fast float -0.000000e+00, %8332
  %8336 = fsub fast float -0.000000e+00, %8333
  %8337 = call float @dx.op.dot2.f32(i32 54, float %8156, float %8157, float %8335, float %8336)  ; Dot2(ax,ay,bx,by)
  %8338 = fmul fast float %8337, 2.000000e+00
  %8339 = call float @dx.op.dot2.f32(i32 54, float %8335, float %8336, float %8335, float %8336)  ; Dot2(ax,ay,bx,by)
  %8340 = fmul fast float %8334, %8334
  %8341 = fsub fast float %8339, %8340
  %8342 = fmul fast float %8338, %8338
  %8343 = fmul fast float %8199, %8341
  %8344 = fsub fast float %8342, %8343
  %8345 = fcmp fast ogt float %8344, 0.000000e+00
  br i1 %8345, label %8346, label %8361

; <label>:8346                                    ; preds = %8322
  %8347 = fcmp fast ogt float %8338, 0.000000e+00
  %8348 = call float @dx.op.unary.f32(i32 24, float %8344)  ; Sqrt(value)
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = select i1 %8347, float %8348, float %8349
  %8351 = fadd fast float %8350, %8338
  %8352 = fmul float %8351, -5.000000e-01
  %8353 = fdiv fast float %8352, %8192
  %8354 = call float @dx.op.binary.f32(i32 35, float %8353, float 0.000000e+00)  ; FMax(a,b)
  %8355 = call float @dx.op.binary.f32(i32 36, float %8227, float %8354)  ; FMin(a,b)
  %8356 = fdiv fast float %8341, %8352
  %8357 = call float @dx.op.binary.f32(i32 35, float %8356, float 0.000000e+00)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8227, float %8357)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 36, float %8355, float %8358)  ; FMin(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8355, float %8358)  ; FMax(a,b)
  br label %8361

; <label>:8361                                    ; preds = %8346, %8322
  %8362 = phi float [ %8360, %8346 ], [ -1.000000e+00, %8322 ]
  %8363 = phi float [ %8359, %8346 ], [ -1.000000e+00, %8322 ]
  %8364 = phi i1 [ true, %8346 ], [ false, %8322 ]
  br i1 %8364, label %8365, label %8371

; <label>:8365                                    ; preds = %8361
  %8366 = call float @dx.op.binary.f32(i32 35, float %8310, float %8363)  ; FMax(a,b)
  %8367 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8324
  store float %8366, float* %8367, align 4, !tbaa !119, !noalias !133
  %8368 = call float @dx.op.binary.f32(i32 35, float %8310, float %8362)  ; FMax(a,b)
  %8369 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8324
  store float %8368, float* %8369, align 4, !tbaa !119, !noalias !133
  %8370 = add nsw i32 %8323, 1
  br label %8371

; <label>:8371                                    ; preds = %8365, %8361
  %8372 = phi i32 [ %8370, %8365 ], [ %8323, %8361 ]
  %8373 = add nuw nsw i32 %8324, 1
  %8374 = icmp eq i32 %8373, %8179
  br i1 %8374, label %8375, label %8322

; <label>:8375                                    ; preds = %8371
  %8376 = load float, float* %8316, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8377 = load float, float* %8315, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  %8378 = load float, float* %8314, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  %8379 = load float, float* %8319, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8380 = load float, float* %8318, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  %8381 = load float, float* %8317, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  br label %8382

; <label>:8382                                    ; preds = %8375, %8309
  %8383 = phi float [ -1.000000e+00, %8309 ], [ %8381, %8375 ]
  %8384 = phi float [ -1.000000e+00, %8309 ], [ %8380, %8375 ]
  %8385 = phi float [ -1.000000e+00, %8309 ], [ %8379, %8375 ]
  %8386 = phi float [ -1.000000e+00, %8309 ], [ %8378, %8375 ]
  %8387 = phi float [ -1.000000e+00, %8309 ], [ %8377, %8375 ]
  %8388 = phi float [ -1.000000e+00, %8309 ], [ %8376, %8375 ]
  %8389 = phi i32 [ 0, %8309 ], [ %8372, %8375 ]
  %8390 = call float @dx.op.binary.f32(i32 36, float %8387, float %8388)  ; FMin(a,b)
  %8391 = call float @dx.op.binary.f32(i32 36, float %8386, float %8390)  ; FMin(a,b)
  %8392 = call float @dx.op.binary.f32(i32 35, float %8386, float %8387)  ; FMax(a,b)
  %8393 = call float @dx.op.binary.f32(i32 36, float %8392, float %8388)  ; FMin(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8386, float %8387)  ; FMin(a,b)
  %8395 = call float @dx.op.binary.f32(i32 35, float %8394, float %8393)  ; FMax(a,b)
  %8396 = call float @dx.op.binary.f32(i32 35, float %8387, float %8388)  ; FMax(a,b)
  %8397 = call float @dx.op.binary.f32(i32 35, float %8386, float %8396)  ; FMax(a,b)
  store float %8391, float* %8314, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  store float %8395, float* %8315, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %8397, float* %8316, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8398 = call float @dx.op.binary.f32(i32 36, float %8384, float %8385)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 36, float %8383, float %8398)  ; FMin(a,b)
  %8400 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8400, float %8385)  ; FMin(a,b)
  %8402 = call float @dx.op.binary.f32(i32 36, float %8383, float %8384)  ; FMin(a,b)
  %8403 = call float @dx.op.binary.f32(i32 35, float %8402, float %8401)  ; FMax(a,b)
  %8404 = call float @dx.op.binary.f32(i32 35, float %8384, float %8385)  ; FMax(a,b)
  %8405 = call float @dx.op.binary.f32(i32 35, float %8383, float %8404)  ; FMax(a,b)
  store float %8399, float* %8317, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  store float %8403, float* %8318, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  store float %8405, float* %8319, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8406 = sub nsw i32 3, %8389
  %8407 = icmp sgt i32 %8406, 2
  br i1 %8407, label %8408, label %8446

; <label>:8408                                    ; preds = %8382
  %8409 = icmp eq i32 %8177, 0
  %8410 = fsub fast float %8227, %8311
  %8411 = select i1 %8409, float %8410, float %8311
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.CBufRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.CBufRet.f32 %8412, 2
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8419 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8420 = extractvalue %dx.types.CBufRet.f32 %8416, 3
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 3
  %8423 = call float @dx.op.binary.f32(i32 36, float %8312, float %8422)  ; FMin(a,b)
  %8424 = fmul fast float %8420, %8411
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = fsub fast float %8417, %8413
  %8427 = fsub fast float %8418, %8414
  %8428 = fsub fast float %8419, %8415
  %8429 = fmul fast float %8425, %8426
  %8430 = fmul fast float %8425, %8427
  %8431 = fmul fast float %8425, %8428
  %8432 = fadd fast float %8429, %8413
  %8433 = fadd fast float %8430, %8414
  %8434 = fadd fast float %8431, %8415
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 1
  %8438 = fadd fast float %8437, %8436
  %8439 = call float @dx.op.unary.f32(i32 7, float %8438)  ; Saturate(value)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8435, 2
  %8441 = extractvalue %dx.types.CBufRet.f32 %8435, 3
  %8442 = fadd fast float %8441, %8440
  %8443 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8444 = fmul fast float %8439, %8423
  %8445 = fmul fast float %8444, %8443
  br label %8528

; <label>:8446                                    ; preds = %8382
  %8447 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8406
  %8448 = load float, float* %8447, align 4, !tbaa !119, !noalias !133
  %8449 = fcmp fast olt float %8448, %8313
  %8450 = icmp sgt i32 %8389, 0
  %8451 = and i1 %8450, %8449
  br i1 %8451, label %8452, label %8489

; <label>:8452                                    ; preds = %8446
  br label %8453

; <label>:8453                                    ; preds = %8482, %8452
  %8454 = phi float [ %8483, %8482 ], [ %8311, %8452 ]
  %8455 = phi float [ %8484, %8482 ], [ %8312, %8452 ]
  %8456 = phi float [ %8464, %8482 ], [ %8448, %8452 ]
  %8457 = phi i32 [ %8461, %8482 ], [ %8406, %8452 ]
  %8458 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8457
  %8459 = load float, float* %8458, align 4, !tbaa !119, !noalias !133
  %8460 = icmp slt i32 %8457, 2
  %8461 = add nsw i32 %8457, 1
  %8462 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8461
  %8463 = load float, float* %8462, align 4, !tbaa !119, !noalias !133
  %8464 = select i1 %8460, float %8463, float %8227
  %8465 = call float @dx.op.binary.f32(i32 36, float %8464, float %8459)  ; FMin(a,b)
  %8466 = call float @dx.op.binary.f32(i32 36, float %8313, float %8465)  ; FMin(a,b)
  %8467 = icmp eq i32 %8177, 0
  %8468 = fadd fast float %8466, %8456
  %8469 = fmul fast float %8468, %8158
  %8470 = fadd fast float %8469, %8171
  br i1 %8467, label %8476, label %8471

; <label>:8471                                    ; preds = %8453
  %8472 = fsub fast float %8466, %8456
  %8473 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8472)  ; FMax(a,b)
  %8474 = fmul fast float %8473, %8470
  %8475 = fadd fast float %8474, %8455
  br label %8482

; <label>:8476                                    ; preds = %8453
  %8477 = fsub fast float %8456, %8466
  %8478 = call float @dx.op.unary.f32(i32 6, float %8477)  ; FAbs(value)
  %8479 = fadd fast float %8478, %8454
  %8480 = fmul fast float %8478, %8470
  %8481 = fsub fast float %8455, %8480
  br label %8482

; <label>:8482                                    ; preds = %8476, %8471
  %8483 = phi float [ %8473, %8471 ], [ %8479, %8476 ]
  %8484 = phi float [ %8475, %8471 ], [ %8481, %8476 ]
  %8485 = fcmp fast olt float %8464, %8313
  %8486 = icmp slt i32 %8461, 3
  %8487 = and i1 %8486, %8485
  br i1 %8487, label %8453, label %8488

; <label>:8488                                    ; preds = %8482
  br label %8489

; <label>:8489                                    ; preds = %8488, %8446
  %8490 = phi float [ %8311, %8446 ], [ %8483, %8488 ]
  %8491 = phi float [ %8312, %8446 ], [ %8484, %8488 ]
  %8492 = fsub fast float %8227, %8490
  %8493 = select i1 %8229, float %8490, float %8492
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.CBufRet.f32 %8498, 2
  %8502 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8505 = call float @dx.op.binary.f32(i32 36, float %8491, float %8504)  ; FMin(a,b)
  %8506 = fmul fast float %8502, %8493
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = fsub fast float %8499, %8495
  %8509 = fsub fast float %8500, %8496
  %8510 = fsub fast float %8501, %8497
  %8511 = fmul fast float %8507, %8508
  %8512 = fmul fast float %8507, %8509
  %8513 = fmul fast float %8507, %8510
  %8514 = fadd fast float %8511, %8495
  %8515 = fadd fast float %8512, %8496
  %8516 = fadd fast float %8513, %8497
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = fadd fast float %8519, %8518
  %8521 = call float @dx.op.unary.f32(i32 7, float %8520)  ; Saturate(value)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8523 = extractvalue %dx.types.CBufRet.f32 %8517, 3
  %8524 = fadd fast float %8523, %8522
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fmul fast float %8521, %8505
  %8527 = fmul fast float %8526, %8525
  br label %8528

; <label>:8528                                    ; preds = %8489, %8408, %8243, %8225, %8223
  %8529 = phi float [ %8252, %8243 ], [ %8411, %8408 ], [ %8493, %8489 ], [ 0.000000e+00, %8223 ], [ 0.000000e+00, %8225 ]
  %8530 = phi float [ %8286, %8243 ], [ %8445, %8408 ], [ %8527, %8489 ], [ 0.000000e+00, %8223 ], [ 0.000000e+00, %8225 ]
  %8531 = phi float [ %8273, %8243 ], [ %8432, %8408 ], [ %8514, %8489 ], [ 0.000000e+00, %8223 ], [ 0.000000e+00, %8225 ]
  %8532 = phi float [ %8274, %8243 ], [ %8433, %8408 ], [ %8515, %8489 ], [ 0.000000e+00, %8223 ], [ 0.000000e+00, %8225 ]
  %8533 = phi float [ %8275, %8243 ], [ %8434, %8408 ], [ %8516, %8489 ], [ 0.000000e+00, %8223 ], [ 0.000000e+00, %8225 ]
  %8534 = fmul fast float %8166, %8530
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8537 = fsub fast float %8173, %8536
  %8538 = fcmp fast olt float %8534, -2.000000e+01
  %8539 = call float @dx.op.unary.f32(i32 21, float %8534)  ; Exp(value)
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8545 = fmul fast float %8542, %8537
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = fsub fast float 1.000000e+00, %8546
  %8548 = fmul fast float %8158, 5.000000e-01
  %8549 = fadd fast float %8548, 5.000000e-01
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fsub fast float 1.000000e+00, %8550
  %8552 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8547)  ; FMax(a,b)
  %8553 = fdiv fast float %8551, %8552
  %8554 = fsub fast float %8537, %8115
  %8555 = call float @dx.op.unary.f32(i32 6, float %8554)  ; FAbs(value)
  %8556 = fmul fast float %8555, %8541
  %8557 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8558 = fsub fast float 1.000000e+00, %8556
  %8559 = fmul fast float %8558, %8557
  %8560 = fadd fast float %8559, %8556
  %8561 = fmul fast float %8544, %8537
  %8562 = call float @dx.op.unary.f32(i32 7, float %8561)  ; Saturate(value)
  %8563 = fsub fast float 1.000000e+00, %8560
  %8564 = fmul fast float %8563, %8562
  %8565 = fadd fast float %8564, %8560
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fadd fast float %8539, -1.000000e+00
  %8568 = select i1 %8538, float -1.000000e+00, float %8567
  %8569 = fmul fast float %8566, %8568
  %8570 = fadd fast float %8569, 1.000000e+00
  %8571 = fsub fast float -0.000000e+00, %8569
  %8572 = fmul fast float %8531, %8571
  %8573 = fmul fast float %8532, %8571
  %8574 = fmul fast float %8533, %8571
  br label %8575

; <label>:8575                                    ; preds = %8528, %8124
  %8576 = phi float [ %8529, %8528 ], [ 0.000000e+00, %8124 ]
  %8577 = phi float [ %8570, %8528 ], [ 1.000000e+00, %8124 ]
  %8578 = phi float [ %8572, %8528 ], [ 0.000000e+00, %8124 ]
  %8579 = phi float [ %8573, %8528 ], [ 0.000000e+00, %8124 ]
  %8580 = phi float [ %8574, %8528 ], [ 0.000000e+00, %8124 ]
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8583 = fsub fast float 1.000000e+00, %8577
  %8584 = fmul fast float %8583, %8159
  %8585 = fmul fast float %8584, %8582
  %8586 = fsub fast float %8159, %8585
  br i1 %8152, label %8587, label %8616, !dx.controlflow.hints !169

; <label>:8587                                    ; preds = %8575
  %8588 = fmul fast float %8160, %8149
  %8589 = fadd fast float %8588, %8150
  %8590 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8591 = fmul fast float %8131, %8586
  %8592 = fsub fast float -0.000000e+00, %8591
  %8593 = fmul fast float %8132, %8586
  %8594 = fsub fast float -0.000000e+00, %8593
  %8595 = call float @dx.op.unary.f32(i32 21, float %8592)  ; Exp(value)
  %8596 = call float @dx.op.unary.f32(i32 21, float %8594)  ; Exp(value)
  %8597 = call float @dx.op.binary.f32(i32 35, float %8139, float %8595)  ; FMax(a,b)
  %8598 = call float @dx.op.binary.f32(i32 35, float %8139, float %8596)  ; FMax(a,b)
  %8599 = fsub fast float %8598, %8597
  %8600 = fmul fast float %8599, %8590
  %8601 = fadd fast float %8600, %8597
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fsub fast float %8136, %8141
  %8604 = fsub fast float %8137, %8142
  %8605 = fsub fast float %8138, %8143
  %8606 = fmul fast float %8590, %8603
  %8607 = fmul fast float %8590, %8604
  %8608 = fmul fast float %8590, %8605
  %8609 = fadd fast float %8606, %8141
  %8610 = fadd fast float %8607, %8142
  %8611 = fadd fast float %8608, %8143
  %8612 = fsub fast float 1.000000e+00, %8602
  %8613 = fmul fast float %8612, %8609
  %8614 = fmul fast float %8612, %8610
  %8615 = fmul fast float %8612, %8611
  br label %8675

; <label>:8616                                    ; preds = %8575
  %8617 = fmul fast float %8586, %8148
  %8618 = call float @dx.op.unary.f32(i32 7, float %8617)  ; Saturate(value)
  %8619 = fsub fast float 2.000000e+00, %8618
  %8620 = fmul fast float %8618, 9.921875e-01
  %8621 = fmul fast float %8620, %8619
  %8622 = fadd fast float %8621, 3.906250e-03
  %8623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8622, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8624 = extractvalue %dx.types.ResRet.f32 %8623, 0
  %8625 = fsub fast float %8618, %8624
  %8626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8625)  ; FMax(a,b)
  %8627 = fmul fast float %8134, %8115
  %8628 = call float @dx.op.unary.f32(i32 6, float %8627)  ; FAbs(value)
  %8629 = fcmp fast ogt float %8628, 0x3EB0C6F7A0000000
  br i1 %8629, label %8630, label %8636, !dx.controlflow.hints !170

; <label>:8630                                    ; preds = %8616
  %8631 = fmul fast float %8627, 0xBFF7154760000000
  %8632 = call float @dx.op.unary.f32(i32 21, float %8631)  ; Exp(value)
  %8633 = fsub fast float 1.000000e+00, %8632
  %8634 = fdiv fast float %8633, %8627
  %8635 = fmul fast float %8634, %8144
  br label %8636

; <label>:8636                                    ; preds = %8630, %8616
  %8637 = phi float [ %8635, %8630 ], [ %8144, %8616 ]
  %8638 = fadd fast float %8637, %8146
  %8639 = fmul fast float %8638, %8626
  %8640 = fmul fast float %8131, %8639
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = fmul fast float %8132, %8639
  %8643 = fsub fast float -0.000000e+00, %8642
  %8644 = fmul fast float %8133, %8639
  %8645 = fsub fast float -0.000000e+00, %8644
  %8646 = call float @dx.op.unary.f32(i32 21, float %8641)  ; Exp(value)
  %8647 = call float @dx.op.unary.f32(i32 21, float %8643)  ; Exp(value)
  %8648 = call float @dx.op.unary.f32(i32 21, float %8645)  ; Exp(value)
  %8649 = fmul fast float %8160, %8160
  %8650 = fadd fast float %8649, 1.000000e+00
  %8651 = fmul fast float %8650, 0x3FAE8EC8A0000000
  %8652 = fmul fast float %8651, %8141
  %8653 = fmul fast float %8651, %8142
  %8654 = fmul fast float %8651, %8143
  %8655 = fmul fast float %8160, %8139
  %8656 = fsub fast float 1.000000e+00, %8655
  %8657 = fmul fast float %8139, %8139
  %8658 = fsub fast float 1.000000e+00, %8657
  %8659 = fmul fast float %8658, 0x3FB45F3060000000
  %8660 = fmul fast float %8656, %8656
  %8661 = fdiv fast float 1.000000e+00, %8660
  %8662 = fmul fast float %8659, %8661
  %8663 = fmul fast float %8662, %8136
  %8664 = fmul fast float %8662, %8137
  %8665 = fmul fast float %8662, %8138
  %8666 = fadd fast float %8663, %8652
  %8667 = fadd fast float %8664, %8653
  %8668 = fadd fast float %8665, %8654
  %8669 = fsub fast float 1.000000e+00, %8646
  %8670 = fsub fast float 1.000000e+00, %8647
  %8671 = fsub fast float 1.000000e+00, %8648
  %8672 = fmul fast float %8666, %8669
  %8673 = fmul fast float %8667, %8670
  %8674 = fmul fast float %8668, %8671
  br label %8675

; <label>:8675                                    ; preds = %8636, %8587
  %8676 = phi float [ %8613, %8587 ], [ %8672, %8636 ]
  %8677 = phi float [ %8614, %8587 ], [ %8673, %8636 ]
  %8678 = phi float [ %8615, %8587 ], [ %8674, %8636 ]
  %8679 = phi float [ %8602, %8587 ], [ %8646, %8636 ]
  %8680 = phi float [ %8602, %8587 ], [ %8647, %8636 ]
  %8681 = phi float [ %8602, %8587 ], [ %8648, %8636 ]
  br i1 %8168, label %8682, label %8880, !dx.controlflow.hints !171

; <label>:8682                                    ; preds = %8675
  %8683 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8684 = fmul fast float %8683, %8583
  %8685 = fsub fast float %8578, %8676
  %8686 = fsub fast float %8579, %8677
  %8687 = fsub fast float %8580, %8678
  %8688 = fmul fast float %8684, %8685
  %8689 = fmul fast float %8684, %8686
  %8690 = fmul fast float %8684, %8687
  %8691 = fadd fast float %8688, %8676
  %8692 = fadd fast float %8689, %8677
  %8693 = fadd fast float %8690, %8678
  %8694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8679)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8680)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8681)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8577)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float %8576, float %8586)  ; FMax(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8698)  ; FMax(a,b)
  %8700 = fdiv fast float %8576, %8699
  %8701 = call float @dx.op.unary.f32(i32 7, float %8700)  ; Saturate(value)
  %8702 = fdiv fast float %8586, %8699
  %8703 = call float @dx.op.unary.f32(i32 7, float %8702)  ; Saturate(value)
  %8704 = fcmp fast une float %8697, 1.000000e+00
  br i1 %8704, label %8705, label %8718, !dx.controlflow.hints !172

; <label>:8705                                    ; preds = %8682
  %8706 = call float @dx.op.unary.f32(i32 23, float %8697)  ; Log(value)
  %8707 = fmul fast float %8706, 0x3FE62E4300000000
  %8708 = fmul fast float %8578, %8707
  %8709 = fsub fast float -0.000000e+00, %8708
  %8710 = fmul fast float %8579, %8707
  %8711 = fsub fast float -0.000000e+00, %8710
  %8712 = fmul fast float %8580, %8707
  %8713 = fsub fast float -0.000000e+00, %8712
  %8714 = fsub fast float 1.000000e+00, %8697
  %8715 = fdiv fast float %8709, %8714
  %8716 = fdiv fast float %8711, %8714
  %8717 = fdiv fast float %8713, %8714
  br label %8718

; <label>:8718                                    ; preds = %8705, %8682
  %8719 = phi float [ %8715, %8705 ], [ %8578, %8682 ]
  %8720 = phi float [ %8716, %8705 ], [ %8579, %8682 ]
  %8721 = phi float [ %8717, %8705 ], [ %8580, %8682 ]
  %8722 = phi float [ %8707, %8705 ], [ 0.000000e+00, %8682 ]
  %8723 = fcmp fast une float %8694, 1.000000e+00
  br i1 %8723, label %8724, label %8731, !dx.controlflow.hints !173

; <label>:8724                                    ; preds = %8718
  %8725 = call float @dx.op.unary.f32(i32 23, float %8694)  ; Log(value)
  %8726 = fmul fast float %8725, 0x3FE62E4300000000
  %8727 = fmul fast float %8691, %8726
  %8728 = fsub fast float -0.000000e+00, %8727
  %8729 = fsub fast float 1.000000e+00, %8694
  %8730 = fdiv fast float %8728, %8729
  br label %8731

; <label>:8731                                    ; preds = %8724, %8718
  %8732 = phi float [ %8730, %8724 ], [ %8691, %8718 ]
  %8733 = phi float [ %8726, %8724 ], [ 0.000000e+00, %8718 ]
  %8734 = fcmp fast une float %8695, 1.000000e+00
  br i1 %8734, label %8735, label %8742, !dx.controlflow.hints !173

; <label>:8735                                    ; preds = %8731
  %8736 = call float @dx.op.unary.f32(i32 23, float %8695)  ; Log(value)
  %8737 = fmul fast float %8736, 0x3FE62E4300000000
  %8738 = fmul fast float %8692, %8737
  %8739 = fsub fast float -0.000000e+00, %8738
  %8740 = fsub fast float 1.000000e+00, %8695
  %8741 = fdiv fast float %8739, %8740
  br label %8742

; <label>:8742                                    ; preds = %8735, %8731
  %8743 = phi float [ %8741, %8735 ], [ %8692, %8731 ]
  %8744 = phi float [ %8737, %8735 ], [ 0.000000e+00, %8731 ]
  %8745 = fcmp fast une float %8696, 1.000000e+00
  br i1 %8745, label %8746, label %8753, !dx.controlflow.hints !173

; <label>:8746                                    ; preds = %8742
  %8747 = call float @dx.op.unary.f32(i32 23, float %8696)  ; Log(value)
  %8748 = fmul fast float %8747, 0x3FE62E4300000000
  %8749 = fmul fast float %8693, %8748
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = fsub fast float 1.000000e+00, %8696
  %8752 = fdiv fast float %8750, %8751
  br label %8753

; <label>:8753                                    ; preds = %8746, %8742
  %8754 = phi float [ %8752, %8746 ], [ %8693, %8742 ]
  %8755 = phi float [ %8748, %8746 ], [ 0.000000e+00, %8742 ]
  %8756 = fmul fast float %8719, %8703
  %8757 = fmul fast float %8720, %8703
  %8758 = fmul fast float %8721, %8703
  %8759 = fmul fast float %8722, %8703
  %8760 = fmul fast float %8732, %8701
  %8761 = fmul fast float %8743, %8701
  %8762 = fmul fast float %8754, %8701
  %8763 = fmul fast float %8733, %8701
  %8764 = fmul fast float %8744, %8701
  %8765 = fmul fast float %8755, %8701
  %8766 = fadd fast float %8760, %8756
  %8767 = fadd fast float %8761, %8757
  %8768 = fadd fast float %8762, %8758
  %8769 = fadd fast float %8763, %8759
  %8770 = fadd fast float %8764, %8759
  %8771 = fadd fast float %8765, %8759
  %8772 = fcmp fast une float %8769, 0.000000e+00
  br i1 %8772, label %8773, label %8780, !dx.controlflow.hints !174

; <label>:8773                                    ; preds = %8753
  %8774 = fmul fast float %8769, 0x3FF7154760000000
  %8775 = call float @dx.op.unary.f32(i32 21, float %8774)  ; Exp(value)
  %8776 = fsub fast float 1.000000e+00, %8775
  %8777 = fmul fast float %8766, %8776
  %8778 = fsub fast float -0.000000e+00, %8777
  %8779 = fdiv fast float %8778, %8769
  br label %8780

; <label>:8780                                    ; preds = %8773, %8753
  %8781 = phi float [ %8775, %8773 ], [ 1.000000e+00, %8753 ]
  %8782 = phi float [ %8779, %8773 ], [ %8766, %8753 ]
  %8783 = fcmp fast une float %8770, 0.000000e+00
  br i1 %8783, label %8784, label %8791, !dx.controlflow.hints !174

; <label>:8784                                    ; preds = %8780
  %8785 = fmul fast float %8770, 0x3FF7154760000000
  %8786 = call float @dx.op.unary.f32(i32 21, float %8785)  ; Exp(value)
  %8787 = fsub fast float 1.000000e+00, %8786
  %8788 = fmul fast float %8767, %8787
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = fdiv fast float %8789, %8770
  br label %8791

; <label>:8791                                    ; preds = %8784, %8780
  %8792 = phi float [ %8786, %8784 ], [ 1.000000e+00, %8780 ]
  %8793 = phi float [ %8790, %8784 ], [ %8767, %8780 ]
  %8794 = fcmp fast une float %8771, 0.000000e+00
  br i1 %8794, label %8795, label %8802, !dx.controlflow.hints !174

; <label>:8795                                    ; preds = %8791
  %8796 = fmul fast float %8771, 0x3FF7154760000000
  %8797 = call float @dx.op.unary.f32(i32 21, float %8796)  ; Exp(value)
  %8798 = fsub fast float 1.000000e+00, %8797
  %8799 = fmul fast float %8768, %8798
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fdiv fast float %8800, %8771
  br label %8802

; <label>:8802                                    ; preds = %8795, %8791
  %8803 = phi float [ %8797, %8795 ], [ 1.000000e+00, %8791 ]
  %8804 = phi float [ %8801, %8795 ], [ %8768, %8791 ]
  %8805 = fcmp fast ogt float %8701, %8703
  br i1 %8805, label %8806, label %8826

; <label>:8806                                    ; preds = %8802
  %8807 = fsub fast float 1.000000e+00, %8703
  %8808 = fmul fast float %8719, %8807
  %8809 = fmul fast float %8720, %8807
  %8810 = fmul fast float %8721, %8807
  %8811 = fmul fast float %8722, %8807
  %8812 = fcmp fast une float %8811, 0.000000e+00
  br i1 %8812, label %8813, label %8864, !dx.controlflow.hints !175

; <label>:8813                                    ; preds = %8806
  %8814 = fmul fast float %8811, 0x3FF7154760000000
  %8815 = call float @dx.op.unary.f32(i32 21, float %8814)  ; Exp(value)
  %8816 = fsub fast float 1.000000e+00, %8815
  %8817 = fmul fast float %8808, %8816
  %8818 = fsub fast float -0.000000e+00, %8817
  %8819 = fmul fast float %8809, %8816
  %8820 = fsub fast float -0.000000e+00, %8819
  %8821 = fmul fast float %8810, %8816
  %8822 = fsub fast float -0.000000e+00, %8821
  %8823 = fdiv fast float %8818, %8811
  %8824 = fdiv fast float %8820, %8811
  %8825 = fdiv fast float %8822, %8811
  br label %8864

; <label>:8826                                    ; preds = %8802
  %8827 = fsub fast float 1.000000e+00, %8701
  %8828 = fmul fast float %8732, %8827
  %8829 = fmul fast float %8743, %8827
  %8830 = fmul fast float %8754, %8827
  %8831 = fmul fast float %8733, %8827
  %8832 = fmul fast float %8744, %8827
  %8833 = fmul fast float %8755, %8827
  %8834 = fcmp fast une float %8831, 0.000000e+00
  br i1 %8834, label %8835, label %8842, !dx.controlflow.hints !174

; <label>:8835                                    ; preds = %8826
  %8836 = fmul fast float %8831, 0x3FF7154760000000
  %8837 = call float @dx.op.unary.f32(i32 21, float %8836)  ; Exp(value)
  %8838 = fsub fast float 1.000000e+00, %8837
  %8839 = fmul fast float %8828, %8838
  %8840 = fsub fast float -0.000000e+00, %8839
  %8841 = fdiv fast float %8840, %8831
  br label %8842

; <label>:8842                                    ; preds = %8835, %8826
  %8843 = phi float [ %8841, %8835 ], [ %8828, %8826 ]
  %8844 = phi float [ %8837, %8835 ], [ 1.000000e+00, %8826 ]
  %8845 = fcmp fast une float %8832, 0.000000e+00
  br i1 %8845, label %8846, label %8853, !dx.controlflow.hints !174

; <label>:8846                                    ; preds = %8842
  %8847 = fmul fast float %8832, 0x3FF7154760000000
  %8848 = call float @dx.op.unary.f32(i32 21, float %8847)  ; Exp(value)
  %8849 = fsub fast float 1.000000e+00, %8848
  %8850 = fmul fast float %8829, %8849
  %8851 = fsub fast float -0.000000e+00, %8850
  %8852 = fdiv fast float %8851, %8832
  br label %8853

; <label>:8853                                    ; preds = %8846, %8842
  %8854 = phi float [ %8852, %8846 ], [ %8829, %8842 ]
  %8855 = phi float [ %8848, %8846 ], [ 1.000000e+00, %8842 ]
  %8856 = fcmp fast une float %8833, 0.000000e+00
  br i1 %8856, label %8857, label %8864, !dx.controlflow.hints !174

; <label>:8857                                    ; preds = %8853
  %8858 = fmul fast float %8833, 0x3FF7154760000000
  %8859 = call float @dx.op.unary.f32(i32 21, float %8858)  ; Exp(value)
  %8860 = fsub fast float 1.000000e+00, %8859
  %8861 = fmul fast float %8830, %8860
  %8862 = fsub fast float -0.000000e+00, %8861
  %8863 = fdiv fast float %8862, %8833
  br label %8864

; <label>:8864                                    ; preds = %8857, %8853, %8813, %8806
  %8865 = phi float [ %8863, %8857 ], [ %8825, %8813 ], [ %8810, %8806 ], [ %8830, %8853 ]
  %8866 = phi float [ %8854, %8857 ], [ %8824, %8813 ], [ %8809, %8806 ], [ %8854, %8853 ]
  %8867 = phi float [ %8843, %8857 ], [ %8823, %8813 ], [ %8808, %8806 ], [ %8843, %8853 ]
  %8868 = phi float [ %8859, %8857 ], [ %8815, %8813 ], [ 1.000000e+00, %8806 ], [ 1.000000e+00, %8853 ]
  %8869 = phi float [ %8855, %8857 ], [ %8815, %8813 ], [ 1.000000e+00, %8806 ], [ %8855, %8853 ]
  %8870 = phi float [ %8844, %8857 ], [ %8815, %8813 ], [ 1.000000e+00, %8806 ], [ %8844, %8853 ]
  %8871 = fmul fast float %8870, %8782
  %8872 = fmul fast float %8869, %8793
  %8873 = fmul fast float %8868, %8804
  %8874 = fadd fast float %8871, %8867
  %8875 = fadd fast float %8872, %8866
  %8876 = fadd fast float %8873, %8865
  %8877 = fmul fast float %8870, %8781
  %8878 = fmul fast float %8869, %8792
  %8879 = fmul fast float %8868, %8803
  br label %8880

; <label>:8880                                    ; preds = %8864, %8675
  %8881 = phi float [ %8879, %8864 ], [ %8681, %8675 ]
  %8882 = phi float [ %8878, %8864 ], [ %8680, %8675 ]
  %8883 = phi float [ %8877, %8864 ], [ %8679, %8675 ]
  %8884 = phi float [ %8876, %8864 ], [ %8678, %8675 ]
  %8885 = phi float [ %8875, %8864 ], [ %8677, %8675 ]
  %8886 = phi float [ %8874, %8864 ], [ %8676, %8675 ]
  %8887 = fmul fast float %8886, %7832
  %8888 = fmul fast float %8885, %7832
  %8889 = fmul fast float %8884, %7832
  %8890 = fmul fast float %8883, %8123
  %8891 = call float @dx.op.dot3.f32(i32 55, float %8883, float %8882, float %8881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8892 = call float @dx.op.dot3.f32(i32 55, float %8887, float %8888, float %8889, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8893 = select i1 %229, float %8891, float %8883
  %8894 = select i1 %229, float %8891, float %8882
  %8895 = select i1 %229, float 1.000000e+00, float %8881
  %8896 = select i1 %229, float %8892, float %8887
  %8897 = select i1 %229, float 0.000000e+00, float %8888
  %8898 = select i1 %229, float 0.000000e+00, float %8889
  %8899 = fmul fast float %8893, %8117
  %8900 = fmul fast float %8894, %8118
  %8901 = fmul fast float %8895, %8119
  %8902 = fadd fast float %8899, %8896
  %8903 = fadd fast float %8900, %8897
  %8904 = fadd fast float %8898, %8901
  %8905 = fmul fast float %8893, %8120
  %8906 = fmul fast float %8894, %8121
  %8907 = fmul fast float %8895, %8122
  %8908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.i32 %8908, 0
  %8910 = icmp eq i32 %8909, 0
  br i1 %8910, label %9278, label %8911, !dx.controlflow.hints !176

; <label>:8911                                    ; preds = %8880
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 2
  %8914 = extractvalue %dx.types.CBufRet.f32 %8912, 3
  %8915 = fmul fast float %8913, %104
  %8916 = fmul fast float %8914, %105
  %8917 = fmul fast float %8915, 2.000000e+00
  %8918 = fmul fast float %8916, 2.000000e+00
  %8919 = fsub fast float 1.000000e+00, %8917
  %8920 = fsub fast float 1.000000e+00, %8918
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 0
  %8923 = extractvalue %dx.types.CBufRet.f32 %8921, 1
  %8924 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8925 = fmul fast float %8919, %8922
  %8926 = fmul fast float %8919, %8923
  %8927 = fmul fast float %8919, %8924
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8932 = fmul fast float %8920, %8929
  %8933 = fmul fast float %8920, %8930
  %8934 = fmul fast float %8920, %8931
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 0
  %8937 = extractvalue %dx.types.CBufRet.f32 %8935, 1
  %8938 = extractvalue %dx.types.CBufRet.f32 %8935, 2
  %8939 = fadd fast float %8932, %8936
  %8940 = fadd fast float %8939, %8925
  %8941 = fadd fast float %8933, %8937
  %8942 = fadd fast float %8941, %8926
  %8943 = fadd fast float %8934, %8938
  %8944 = fadd fast float %8943, %8927
  %8945 = fmul fast float %8940, %8116
  %8946 = fmul fast float %8942, %8116
  %8947 = fmul fast float %8944, %8116
  %8948 = fmul fast float %8945, %8945
  %8949 = fmul fast float %8946, %8946
  %8950 = fadd fast float %8948, %8949
  %8951 = fmul fast float %8947, %8947
  %8952 = fadd fast float %8950, %8951
  %8953 = call float @dx.op.unary.f32(i32 24, float %8952)  ; Sqrt(value)
  %8954 = extractvalue %dx.types.CBufRet.f32 %7843, 0
  %8955 = fsub fast float %8953, %8954
  %8956 = extractvalue %dx.types.CBufRet.f32 %7843, 2
  %8957 = fmul fast float %8955, %8956
  %8958 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8959 = fadd fast float %8958, -5.000000e-01
  %8960 = fmul fast float %8959, 2.000000e+00
  %8961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8962 = extractvalue %dx.types.CBufRet.f32 %8961, 2
  %8963 = call float @dx.op.binary.f32(i32 36, float %8962, float %8960)  ; FMin(a,b)
  %8964 = fsub fast float -0.000000e+00, %8962
  %8965 = fcmp fast ogt float %8963, %8964
  br i1 %8965, label %8966, label %9278, !dx.controlflow.hints !177

; <label>:8966                                    ; preds = %8911
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 3
  %8969 = fcmp fast ogt float %8968, 0.000000e+00
  br i1 %8969, label %8970, label %9045, !dx.controlflow.hints !178

; <label>:8970                                    ; preds = %8966
  %8971 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8972 = extractvalue %dx.types.Dimensions %8971, 0
  %8973 = sitofp i32 %8972 to float
  %8974 = extractvalue %dx.types.Dimensions %8971, 1
  %8975 = sitofp i32 %8974 to float
  %8976 = fmul fast float %8915, %8973
  %8977 = fmul fast float %8916, %8975
  %8978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8978, 1
  %8980 = fsub fast float -0.000000e+00, %8979
  %8981 = fptoui float %8980 to i32
  %8982 = fptoui float %8976 to i32
  %8983 = fptoui float %8977 to i32
  %8984 = and i32 %8981, 31
  %8985 = lshr i32 %8982, %8984
  %8986 = lshr i32 %8983, %8984
  %8987 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8981, i32 %8985, i32 %8986, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8988 = extractvalue %dx.types.ResRet.f32 %8987, 0
  %8989 = fcmp fast olt float %8988, -1.000000e+00
  %8990 = fcmp fast ogt float %8988, -1.000000e+00
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8993 = select i1 %8990, float %8992, float 1.000000e+00
  %8994 = fadd fast float %8988, 1.000000e+00
  %8995 = fmul fast float %8993, %8994
  %8996 = call float @dx.op.unary.f32(i32 6, float %8995)  ; FAbs(value)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8991, 3
  %8998 = fcmp fast oge float %8996, %8997
  %8999 = select i1 %8998, float 0x4197782600000000, float %8996
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 0
  %9002 = extractvalue %dx.types.CBufRet.f32 %9000, 1
  %9003 = extractvalue %dx.types.CBufRet.f32 %9000, 2
  %9004 = select i1 %8989, float %9001, float %8922
  %9005 = select i1 %8989, float %9002, float %8923
  %9006 = select i1 %8989, float %9003, float %8924
  %9007 = fmul fast float %9004, %8919
  %9008 = fmul fast float %9005, %8919
  %9009 = fmul fast float %9006, %8919
  %9010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.CBufRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.CBufRet.f32 %9010, 2
  %9014 = select i1 %8989, float %9011, float %8929
  %9015 = select i1 %8989, float %9012, float %8930
  %9016 = select i1 %8989, float %9013, float %8931
  %9017 = fmul fast float %9014, %8920
  %9018 = fmul fast float %9015, %8920
  %9019 = fmul fast float %9016, %8920
  %9020 = fadd fast float %9017, %9007
  %9021 = fadd fast float %9018, %9008
  %9022 = fadd fast float %9019, %9009
  %9023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9023, 0
  %9025 = extractvalue %dx.types.CBufRet.f32 %9023, 1
  %9026 = extractvalue %dx.types.CBufRet.f32 %9023, 2
  %9027 = select i1 %8989, float %9024, float %8936
  %9028 = select i1 %8989, float %9025, float %8937
  %9029 = select i1 %8989, float %9026, float %8938
  %9030 = fadd fast float %9020, %9027
  %9031 = fadd fast float %9021, %9028
  %9032 = fadd fast float %9022, %9029
  %9033 = fmul fast float %9030, %8999
  %9034 = fmul fast float %9031, %8999
  %9035 = fmul fast float %9032, %8999
  %9036 = fmul fast float %9033, %9033
  %9037 = fmul fast float %9034, %9034
  %9038 = fadd fast float %9036, %9037
  %9039 = fmul fast float %9035, %9035
  %9040 = fadd fast float %9038, %9039
  %9041 = call float @dx.op.unary.f32(i32 24, float %9040)  ; Sqrt(value)
  %9042 = fsub fast float %9041, %8954
  %9043 = fmul fast float %9042, %8956
  %9044 = call float @dx.op.unary.f32(i32 7, float %9043)  ; Saturate(value)
  br label %9045

; <label>:9045                                    ; preds = %8970, %8966
  %9046 = phi float [ %9044, %8970 ], [ 1.000000e+00, %8966 ]
  %9047 = fmul fast float %8963, 5.000000e-01
  %9048 = fadd fast float %9047, 5.000000e-01
  %9049 = call float @dx.op.unary.f32(i32 22, float %9048)  ; Frc(value)
  %9050 = call float @dx.op.unary.f32(i32 27, float %9049)  ; Round_ni(value)
  %9051 = call float @dx.op.unary.f32(i32 22, float %9049)  ; Frc(value)
  %9052 = fmul fast float %9051, 2.000000e+00
  %9053 = fadd fast float %9052, -1.000000e+00
  %9054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8915, float %8916, float %9050, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9055 = extractvalue %dx.types.ResRet.f32 %9054, 0
  %9056 = extractvalue %dx.types.ResRet.f32 %9054, 1
  %9057 = extractvalue %dx.types.ResRet.f32 %9054, 2
  %9058 = extractvalue %dx.types.ResRet.f32 %9054, 3
  %9059 = fadd fast float %9055, -5.000000e-01
  %9060 = fadd fast float %9057, -5.000000e-01
  %9061 = fmul fast float %9059, 0xBFD5555560000000
  %9062 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9060, float %9061)  ; FMad(a,b,c)
  %9063 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9056, float 0.000000e+00)  ; FMad(a,b,c)
  %9064 = fadd fast float %9063, %9058
  %9065 = fmul fast float %9059, -7.500000e-01
  %9066 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9060, float %9065)  ; FMad(a,b,c)
  %9067 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9056, float 0.000000e+00)  ; FMad(a,b,c)
  %9068 = fadd fast float %9067, %9058
  %9069 = call float @dx.op.binary.f32(i32 35, float %9062, float -1.000000e+00)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float %9064, float -1.000000e+00)  ; FMax(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %9066, float -1.000000e+00)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 35, float %9068, float -1.000000e+00)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %9069, float 1.000000e+00)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 36, float %9070, float 1.000000e+00)  ; FMin(a,b)
  %9075 = call float @dx.op.binary.f32(i32 36, float %9071, float 1.000000e+00)  ; FMin(a,b)
  %9076 = call float @dx.op.binary.f32(i32 36, float %9072, float 1.000000e+00)  ; FMin(a,b)
  %9077 = fcmp fast olt float %9073, 0x3FEFFF8020000000
  br i1 %9077, label %9078, label %9193, !dx.controlflow.hints !179

; <label>:9078                                    ; preds = %9045
  %9079 = extractvalue %dx.types.CBufRet.f32 %8961, 3
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = extractvalue %dx.types.CBufRet.f32 %9080, 1
  %9083 = extractvalue %dx.types.CBufRet.f32 %9080, 2
  %9084 = extractvalue %dx.types.CBufRet.f32 %9080, 3
  %9085 = fsub fast float %9081, %9073
  %9086 = fsub fast float %9082, %9074
  %9087 = fsub fast float %9083, %9075
  %9088 = fsub fast float %9084, %9076
  %9089 = fmul fast float %9085, %9079
  %9090 = fmul fast float %9086, %9079
  %9091 = fmul fast float %9087, %9079
  %9092 = fmul fast float %9088, %9079
  %9093 = fadd fast float %9089, %9073
  %9094 = fadd fast float %9090, %9074
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fadd fast float %9091, %9075
  %9097 = fadd fast float %9092, %9076
  %9098 = fmul fast float %9093, %9093
  %9099 = fsub fast float %9094, %9098
  %9100 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9099)  ; FMax(a,b)
  %9101 = fdiv fast float 1.000000e+00, %9100
  %9102 = fmul fast float %9094, %9093
  %9103 = fsub fast float %9096, %9102
  %9104 = fsub fast float %9053, %9093
  %9105 = fmul fast float %9053, %9053
  %9106 = fsub fast float %9105, %9094
  %9107 = fmul fast float %9104, %9101
  %9108 = fmul fast float %9107, %9103
  %9109 = fsub fast float %9106, %9108
  %9110 = fmul fast float %9094, %9094
  %9111 = fsub fast float %9097, %9110
  %9112 = fmul fast float %9103, %9103
  %9113 = fmul fast float %9112, %9101
  %9114 = fsub fast float %9111, %9113
  %9115 = fdiv fast float %9109, %9114
  %9116 = fmul fast float %9103, %9115
  %9117 = fsub fast float %9104, %9116
  %9118 = fmul fast float %9117, %9101
  %9119 = fmul fast float %9118, %9093
  %9120 = fsub fast float 1.000000e+00, %9119
  %9121 = fmul fast float %9094, %9115
  %9122 = fsub fast float %9120, %9121
  %9123 = fmul fast float %9118, %9118
  %9124 = fmul fast float %9115, 4.000000e+00
  %9125 = fmul fast float %9124, %9122
  %9126 = fsub fast float %9123, %9125
  %9127 = call float @dx.op.unary.f32(i32 24, float %9126)  ; Sqrt(value)
  %9128 = fcmp fast oge float %9118, 0.000000e+00
  %9129 = fsub fast float -0.000000e+00, %9127
  %9130 = select i1 %9128, float %9129, float %9127
  %9131 = fsub fast float %9130, %9118
  %9132 = fdiv fast float %9131, %9115
  %9133 = fdiv fast float %9122, %9131
  %9134 = fmul fast float %9132, 5.000000e-01
  %9135 = fmul fast float %9133, 2.000000e+00
  %9136 = select i1 %9128, float %9134, float %9135
  %9137 = select i1 %9128, float %9135, float %9134
  %9138 = call float @dx.op.binary.f32(i32 35, float %9136, float %9137)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 36, float %9136, float %9137)  ; FMin(a,b)
  %9140 = fcmp fast ogt float %9053, %9139
  br i1 %9140, label %9141, label %9151

; <label>:9141                                    ; preds = %9078
  %9142 = fsub fast float %9053, %9139
  %9143 = fsub fast float %9138, %9139
  %9144 = fmul fast float %9142, %9143
  %9145 = fmul fast float %9138, %9053
  %9146 = fadd fast float %9138, %9053
  %9147 = fmul fast float %9146, %9093
  %9148 = fadd fast float %9145, %9094
  %9149 = fsub fast float %9148, %9147
  %9150 = fdiv fast float %9149, %9144
  br label %9151

; <label>:9151                                    ; preds = %9141, %9078
  %9152 = phi float [ %9150, %9141 ], [ 0.000000e+00, %9078 ]
  %9153 = fcmp fast ogt float %9053, %9138
  %9154 = fsub fast float %9053, %9138
  br i1 %9153, label %9155, label %9165

; <label>:9155                                    ; preds = %9151
  %9156 = fsub fast float %9138, %9139
  %9157 = fmul fast float %9156, %9154
  %9158 = fmul fast float %9139, %9053
  %9159 = fadd fast float %9139, %9053
  %9160 = fmul fast float %9159, %9093
  %9161 = fsub fast float %9095, %9158
  %9162 = fadd fast float %9161, %9160
  %9163 = fdiv fast float %9162, %9157
  %9164 = fadd fast float %9163, %9152
  br label %9165

; <label>:9165                                    ; preds = %9155, %9151
  %9166 = phi float [ %9164, %9155 ], [ %9152, %9151 ]
  %9167 = fsub fast float %9053, %9139
  %9168 = fmul fast float %9167, %9154
  %9169 = fmul fast float %9139, %9138
  %9170 = fadd fast float %9139, %9138
  %9171 = fmul fast float %9170, %9093
  %9172 = fadd fast float %9169, %9094
  %9173 = fsub fast float %9172, %9171
  %9174 = fdiv fast float %9173, %9168
  %9175 = call float @dx.op.unary.f32(i32 7, float %9166)  ; Saturate(value)
  %9176 = fcmp fast oeq float %7844, 0.000000e+00
  %9177 = extractvalue %dx.types.CBufRet.f32 %8961, 0
  %9178 = fcmp fast oeq float %9177, 0.000000e+00
  %9179 = or i1 %9176, %9178
  %9180 = fmul fast float %9177, 2.000000e+00
  %9181 = fadd fast float %8962, %8963
  %9182 = fdiv fast float %9181, %9180
  %9183 = call float @dx.op.unary.f32(i32 7, float %9182)  ; Saturate(value)
  %9184 = fmul fast float %9183, 2.000000e+00
  %9185 = fsub fast float 3.000000e+00, %9184
  %9186 = fmul fast float %9183, %9183
  %9187 = fmul fast float %9186, %9185
  %9188 = select i1 %9179, float 1.000000e+00, float %9187
  %9189 = fmul fast float %9174, %7844
  %9190 = fadd fast float %9175, %9189
  %9191 = call float @dx.op.unary.f32(i32 7, float %9190)  ; Saturate(value)
  %9192 = fmul fast float %9188, %9191
  br label %9193

; <label>:9193                                    ; preds = %9165, %9045
  %9194 = phi float [ %9192, %9165 ], [ 0.000000e+00, %9045 ]
  %9195 = fsub fast float 1.000000e+00, %9194
  %9196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8915, float %8916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9197 = extractvalue %dx.types.ResRet.f32 %9196, 0
  %9198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.i32 %9198, 2
  %9200 = icmp eq i32 %9199, 0
  br i1 %9200, label %9206, label %9201

; <label>:9201                                    ; preds = %9193
  %9202 = call float @dx.op.unary.f32(i32 7, float %9194)  ; Saturate(value)
  %9203 = fadd fast float %9197, -1.000000e+00
  %9204 = fmul fast float %9202, %9203
  %9205 = fadd fast float %9204, 1.000000e+00
  br label %9206

; <label>:9206                                    ; preds = %9201, %9193
  %9207 = phi float [ %9205, %9201 ], [ %9195, %9193 ]
  br i1 %8969, label %9208, label %9226

; <label>:9208                                    ; preds = %9206
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 1
  %9211 = fsub fast float %9046, %9210
  %9212 = call float @dx.op.unary.f32(i32 7, float %9211)  ; Saturate(value)
  %9213 = fsub fast float %9046, %8968
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fsub fast float %9212, %9214
  %9216 = fsub fast float %9048, %9214
  %9217 = fdiv fast float %9216, %9215
  %9218 = call float @dx.op.unary.f32(i32 7, float %9217)  ; Saturate(value)
  %9219 = fmul fast float %9218, 2.000000e+00
  %9220 = fsub fast float 3.000000e+00, %9219
  %9221 = fsub fast float %9197, %9207
  %9222 = fmul fast float %9218, %9218
  %9223 = fmul fast float %9222, %9221
  %9224 = fmul fast float %9223, %9220
  %9225 = fadd fast float %9224, %9207
  br label %9226

; <label>:9226                                    ; preds = %9208, %9206
  %9227 = phi float [ %9225, %9208 ], [ %9207, %9206 ]
  %9228 = call float @dx.op.binary.f32(i32 35, float %9197, float %9227)  ; FMax(a,b)
  %9229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9230 = extractvalue %dx.types.CBufRet.i32 %9229, 2
  %9231 = and i32 %9230, 1
  %9232 = icmp eq i32 %9231, 0
  %9233 = fcmp fast une float %9228, 1.000000e+00
  %9234 = and i1 %9233, %9232
  br i1 %9234, label %9235, label %9254

; <label>:9235                                    ; preds = %9226
  %9236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8915, float %8916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9237 = extractvalue %dx.types.ResRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.ResRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.ResRet.f32 %9236, 2
  %9240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9241 = extractvalue %dx.types.CBufRet.f32 %9240, 1
  %9242 = fmul fast float %9241, %9237
  %9243 = fmul fast float %9241, %9238
  %9244 = fmul fast float %9241, %9239
  %9245 = fcmp fast ogt float %9197, 0x3FEFFF2E40000000
  %9246 = fsub fast float 1.000000e+00, %9228
  %9247 = fsub fast float 1.000000e+00, %9197
  %9248 = fdiv fast float %9246, %9247
  %9249 = call float @dx.op.unary.f32(i32 7, float %9248)  ; Saturate(value)
  %9250 = select i1 %9245, float 0.000000e+00, float %9249
  %9251 = fmul fast float %9242, %9250
  %9252 = fmul fast float %9243, %9250
  %9253 = fmul fast float %9244, %9250
  br label %9254

; <label>:9254                                    ; preds = %9235, %9226
  %9255 = phi float [ 0.000000e+00, %9226 ], [ %9251, %9235 ]
  %9256 = phi float [ 0.000000e+00, %9226 ], [ %9252, %9235 ]
  %9257 = phi float [ 0.000000e+00, %9226 ], [ %9253, %9235 ]
  %9258 = fmul fast float %9255, %7832
  %9259 = fmul fast float %9256, %7832
  %9260 = fmul fast float %9257, %7832
  %9261 = fmul fast float %9228, %8890
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9228, float %9228, float %9228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = call float @dx.op.dot3.f32(i32 55, float %9258, float %9259, float %9260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9264 = select i1 %229, float %9262, float %9228
  %9265 = select i1 %229, float 1.000000e+00, float %9228
  %9266 = select i1 %229, float %9263, float %9258
  %9267 = select i1 %229, float 0.000000e+00, float %9259
  %9268 = select i1 %229, float 0.000000e+00, float %9260
  %9269 = fmul fast float %9264, %8902
  %9270 = fmul fast float %9264, %8903
  %9271 = fmul fast float %9265, %8904
  %9272 = fadd fast float %9269, %9266
  %9273 = fadd fast float %9270, %9267
  %9274 = fadd fast float %9268, %9271
  %9275 = fmul fast float %9264, %8905
  %9276 = fmul fast float %9264, %8906
  %9277 = fmul fast float %9265, %8907
  br label %9278

; <label>:9278                                    ; preds = %9254, %8911, %8880, %8112
  %9279 = phi float [ %8117, %8112 ], [ %8902, %8880 ], [ %9272, %9254 ], [ %8902, %8911 ]
  %9280 = phi float [ %8118, %8112 ], [ %8903, %8880 ], [ %9273, %9254 ], [ %8903, %8911 ]
  %9281 = phi float [ %8119, %8112 ], [ %8904, %8880 ], [ %9274, %9254 ], [ %8904, %8911 ]
  %9282 = phi float [ %8120, %8112 ], [ %8905, %8880 ], [ %9275, %9254 ], [ %8905, %8911 ]
  %9283 = phi float [ %8121, %8112 ], [ %8906, %8880 ], [ %9276, %9254 ], [ %8906, %8911 ]
  %9284 = phi float [ %8122, %8112 ], [ %8907, %8880 ], [ %9277, %9254 ], [ %8907, %8911 ]
  %9285 = phi float [ %8123, %8112 ], [ %8890, %8880 ], [ %9261, %9254 ], [ %8890, %8911 ]
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 2
  %9288 = extractvalue %dx.types.CBufRet.f32 %9286, 3
  %9289 = fmul fast float %9287, %104
  %9290 = fmul fast float %9288, %105
  %9291 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9292 = call float @dx.op.unary.f32(i32 7, float %9290)  ; Saturate(value)
  %9293 = select i1 %7854, i32 2, i32 0
  %9294 = or i32 %9293, 1
  %9295 = uitofp i32 %9294 to float
  %9296 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9291, float %9292, float %9295, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9297 = extractvalue %dx.types.ResRet.f32 %9296, 0
  %9298 = extractvalue %dx.types.ResRet.f32 %9296, 1
  %9299 = extractvalue %dx.types.ResRet.f32 %9296, 2
  %9300 = extractvalue %dx.types.ResRet.f32 %9296, 3
  %9301 = add nuw nsw i32 %9293, 2
  %9302 = uitofp i32 %9301 to float
  %9303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9291, float %9292, float %9302, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9304 = extractvalue %dx.types.ResRet.f32 %9303, 0
  %9305 = extractvalue %dx.types.ResRet.f32 %9303, 1
  %9306 = extractvalue %dx.types.ResRet.f32 %9303, 2
  %9307 = extractvalue %dx.types.ResRet.f32 %9303, 3
  %9308 = call float @dx.op.binary.f32(i32 35, float %9298, float %9299)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 35, float %9297, float %9308)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 35, float %9309, float %9300)  ; FMax(a,b)
  %9311 = call float @dx.op.binary.f32(i32 36, float %9305, float %9306)  ; FMin(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9304, float %9311)  ; FMin(a,b)
  %9313 = call float @dx.op.binary.f32(i32 36, float %9312, float %9307)  ; FMin(a,b)
  %9314 = fmul fast float %9310, 2.550000e+02
  %9315 = fadd fast float %9314, 0x3F70101020000000
  %9316 = fptoui float %9315 to i32
  %9317 = fmul fast float %9313, 2.550000e+02
  %9318 = fadd fast float %9317, 0x3F70101020000000
  %9319 = fptoui float %9318 to i32
  %9320 = icmp ult i32 %9316, %9319
  br i1 %9320, label %9321, label %9490

; <label>:9321                                    ; preds = %9278
  %9322 = fcmp fast ogt float %91, 9.843750e-01
  %9323 = fadd fast float %8116, -4.000000e+00
  %9324 = select i1 %9322, float -4.000000e+00, float %9323
  %9325 = call float @dx.op.binary.f32(i32 35, float %9324, float 0.000000e+00)  ; FMax(a,b)
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 0
  %9328 = fadd fast float %9327, %9325
  %9329 = extractvalue %dx.types.CBufRet.f32 %9326, 2
  %9330 = fmul fast float %9328, %9329
  %9331 = call float @dx.op.unary.f32(i32 23, float %9330)  ; Log(value)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9326, 3
  %9333 = fmul fast float %9332, %9331
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 2
  %9336 = fmul fast float %9333, %9335
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = uitofp i32 %9316 to float
  %9339 = uitofp i32 %9319 to float
  %9340 = fadd fast float %9338, 5.000000e-01
  %9341 = fadd fast float %9339, 5.000000e-01
  %9342 = fmul fast float %9335, %9340
  %9343 = fmul fast float %9335, %9341
  %9344 = fadd fast float %9342, 0x3F0FFB4800000000
  %9345 = fadd fast float %9343, 0xBF0FFB4800000000
  %9346 = call float @dx.op.binary.f32(i32 35, float %9337, float %9344)  ; FMax(a,b)
  %9347 = call float @dx.op.binary.f32(i32 36, float %9346, float %9345)  ; FMin(a,b)
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 1
  %9350 = extractvalue %dx.types.CBufRet.f32 %9348, 2
  %9351 = extractvalue %dx.types.CBufRet.f32 %9348, 0
  %9352 = select i1 %7854, float %9351, float 0.000000e+00
  %9353 = fmul fast float %9349, %9347
  %9354 = fadd fast float %9352, %9353
  %9355 = fadd fast float %9352, %9350
  %9356 = fsub fast float %9349, %9350
  %9357 = fadd fast float %9356, %9352
  %9358 = call float @dx.op.binary.f32(i32 35, float %9354, float %9355)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9358, float %9357)  ; FMin(a,b)
  %9360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9291, float %9292, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9361 = extractvalue %dx.types.ResRet.f32 %9360, 0
  %9362 = extractvalue %dx.types.ResRet.f32 %9360, 1
  %9363 = extractvalue %dx.types.ResRet.f32 %9360, 2
  %9364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.i32 %9364, 0
  %9366 = extractvalue %dx.types.CBufRet.i32 %9364, 1
  %9367 = uitofp i32 %9365 to float
  %9368 = uitofp i32 %9366 to float
  %9369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9369, 0
  %9371 = extractvalue %dx.types.CBufRet.f32 %9369, 1
  %9372 = fmul fast float %9367, %9291
  %9373 = fmul fast float %9368, %9292
  %9374 = fadd fast float %9372, -5.000000e-01
  %9375 = fadd fast float %9373, -5.000000e-01
  %9376 = call float @dx.op.unary.f32(i32 22, float %9374)  ; Frc(value)
  %9377 = call float @dx.op.unary.f32(i32 22, float %9375)  ; Frc(value)
  %9378 = fmul fast float %9376, %9376
  %9379 = fmul fast float %9378, %9376
  %9380 = fsub fast float 3.000000e+00, %9376
  %9381 = fmul fast float %9378, %9380
  %9382 = fmul fast float %9376, 3.000000e+00
  %9383 = fmul fast float %9379, 3.000000e+00
  %9384 = fmul fast float %9378, 6.000000e+00
  %9385 = fsub fast float %9383, %9384
  %9386 = fadd fast float %9385, 4.000000e+00
  %9387 = fmul fast float %9386, 0x3FC5555560000000
  %9388 = fmul fast float %9379, -3.000000e+00
  %9389 = fadd fast float %9378, %9376
  %9390 = fmul fast float %9389, 3.000000e+00
  %9391 = fadd fast float %9388, 1.000000e+00
  %9392 = fadd fast float %9391, %9390
  %9393 = fmul fast float %9379, 0x3FC5555560000000
  %9394 = fmul fast float %9377, %9377
  %9395 = fmul fast float %9394, %9377
  %9396 = fsub fast float 3.000000e+00, %9377
  %9397 = fmul fast float %9394, %9396
  %9398 = fmul fast float %9377, 3.000000e+00
  %9399 = fmul fast float %9395, 3.000000e+00
  %9400 = fmul fast float %9394, 6.000000e+00
  %9401 = fsub fast float %9399, %9400
  %9402 = fadd fast float %9401, 4.000000e+00
  %9403 = fmul fast float %9402, 0x3FC5555560000000
  %9404 = fmul fast float %9395, -3.000000e+00
  %9405 = fadd fast float %9394, %9377
  %9406 = fmul fast float %9405, 3.000000e+00
  %9407 = fadd fast float %9404, 1.000000e+00
  %9408 = fadd fast float %9407, %9406
  %9409 = fmul fast float %9395, 0x3FC5555560000000
  %9410 = fadd fast float %9376, 1.000000e+00
  %9411 = fsub fast float 1.000000e+00, %9382
  %9412 = fadd fast float %9411, %9381
  %9413 = fadd fast float %9412, %9386
  %9414 = fmul fast float %9413, 0x3FC5555560000000
  %9415 = fdiv fast float %9387, %9414
  %9416 = fsub fast float %9410, %9415
  %9417 = fsub fast float 1.000000e+00, %9376
  %9418 = fadd fast float %9392, %9379
  %9419 = fmul fast float %9418, 0x3FC5555560000000
  %9420 = fdiv fast float %9393, %9419
  %9421 = fadd fast float %9417, %9420
  %9422 = fadd fast float %9377, 1.000000e+00
  %9423 = fsub fast float 1.000000e+00, %9398
  %9424 = fadd fast float %9423, %9397
  %9425 = fadd fast float %9424, %9402
  %9426 = fmul fast float %9425, 0x3FC5555560000000
  %9427 = fdiv fast float %9403, %9426
  %9428 = fsub fast float %9422, %9427
  %9429 = fsub fast float 1.000000e+00, %9377
  %9430 = fadd fast float %9408, %9395
  %9431 = fmul fast float %9430, 0x3FC5555560000000
  %9432 = fdiv fast float %9409, %9431
  %9433 = fadd fast float %9432, %9429
  %9434 = fmul fast float %9416, %9370
  %9435 = fsub fast float %9291, %9434
  %9436 = fmul fast float %9421, %9370
  %9437 = fadd fast float %9436, %9291
  %9438 = fmul fast float %9433, %9371
  %9439 = fadd fast float %9438, %9292
  %9440 = fmul fast float %9428, %9371
  %9441 = fsub fast float %9292, %9440
  %9442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9435, float %9441, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9443 = extractvalue %dx.types.ResRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.ResRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.ResRet.f32 %9442, 2
  %9446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9437, float %9441, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9447 = extractvalue %dx.types.ResRet.f32 %9446, 0
  %9448 = extractvalue %dx.types.ResRet.f32 %9446, 1
  %9449 = extractvalue %dx.types.ResRet.f32 %9446, 2
  %9450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9435, float %9439, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9451 = extractvalue %dx.types.ResRet.f32 %9450, 0
  %9452 = extractvalue %dx.types.ResRet.f32 %9450, 1
  %9453 = extractvalue %dx.types.ResRet.f32 %9450, 2
  %9454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9437, float %9439, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9455 = extractvalue %dx.types.ResRet.f32 %9454, 0
  %9456 = extractvalue %dx.types.ResRet.f32 %9454, 1
  %9457 = extractvalue %dx.types.ResRet.f32 %9454, 2
  %9458 = fsub fast float %9451, %9443
  %9459 = fsub fast float %9452, %9444
  %9460 = fsub fast float %9453, %9445
  %9461 = fmul fast float %9458, %9431
  %9462 = fmul fast float %9459, %9431
  %9463 = fmul fast float %9460, %9431
  %9464 = fadd fast float %9461, %9443
  %9465 = fadd fast float %9462, %9444
  %9466 = fadd fast float %9463, %9445
  %9467 = fsub fast float %9455, %9447
  %9468 = fsub fast float %9456, %9448
  %9469 = fsub fast float %9457, %9449
  %9470 = fmul fast float %9467, %9431
  %9471 = fmul fast float %9468, %9431
  %9472 = fmul fast float %9469, %9431
  %9473 = fsub fast float %9447, %9464
  %9474 = fadd fast float %9473, %9470
  %9475 = fsub fast float %9448, %9465
  %9476 = fadd fast float %9475, %9471
  %9477 = fsub fast float %9449, %9466
  %9478 = fadd fast float %9477, %9472
  %9479 = fmul fast float %9474, %9419
  %9480 = fmul fast float %9476, %9419
  %9481 = fmul fast float %9478, %9419
  %9482 = fadd fast float %9479, %9464
  %9483 = fadd fast float %9480, %9465
  %9484 = fadd fast float %9481, %9466
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 1
  %9487 = fmul fast float %9482, %9486
  %9488 = fmul fast float %9483, %9486
  %9489 = fmul fast float %9484, %9486
  br label %9490

; <label>:9490                                    ; preds = %9321, %9278
  %9491 = phi float [ %9361, %9321 ], [ 1.000000e+00, %9278 ]
  %9492 = phi float [ %9362, %9321 ], [ 1.000000e+00, %9278 ]
  %9493 = phi float [ %9363, %9321 ], [ 1.000000e+00, %9278 ]
  %9494 = phi float [ %9487, %9321 ], [ 0.000000e+00, %9278 ]
  %9495 = phi float [ %9488, %9321 ], [ 0.000000e+00, %9278 ]
  %9496 = phi float [ %9489, %9321 ], [ 0.000000e+00, %9278 ]
  %9497 = fmul fast float %9494, %7832
  %9498 = fmul fast float %9495, %7832
  %9499 = fmul fast float %9496, %7832
  %9500 = fmul fast float %9491, %9285
  %9501 = call float @dx.op.dot3.f32(i32 55, float %9491, float %9492, float %9493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9502 = call float @dx.op.dot3.f32(i32 55, float %9497, float %9498, float %9499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9503 = select i1 %229, float %9501, float %9491
  %9504 = select i1 %229, float %9501, float %9492
  %9505 = select i1 %229, float 1.000000e+00, float %9493
  %9506 = select i1 %229, float %9502, float %9497
  %9507 = select i1 %229, float 0.000000e+00, float %9498
  %9508 = select i1 %229, float 0.000000e+00, float %9499
  %9509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.i32 %9509, 3
  %9511 = and i32 %9510, 3
  %9512 = icmp ne i32 %9511, 0
  %9513 = and i32 %9510, 4
  %9514 = icmp ne i32 %9513, 0
  %9515 = and i1 %9512, %9514
  %9516 = and i1 %229, %9515
  br i1 %9516, label %9517, label %9523

; <label>:9517                                    ; preds = %9490
  %9518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9519 = extractvalue %dx.types.CBufRet.f32 %9518, 1
  %9520 = fadd fast float %9500, -1.000000e+00
  %9521 = fmul fast float %9519, %9520
  %9522 = fadd fast float %9521, 1.000000e+00
  br label %9523

; <label>:9523                                    ; preds = %9517, %9490
  %9524 = phi float [ %9522, %9517 ], [ %9500, %9490 ]
  %9525 = fadd fast float %9282, %9279
  %9526 = fmul fast float %9503, %9525
  %9527 = fadd fast float %9526, %9506
  %9528 = fadd fast float %9283, %9280
  %9529 = fmul fast float %9504, %9528
  %9530 = fadd fast float %9529, %9507
  %9531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9532 = extractvalue %dx.types.CBufRet.f32 %9531, 0
  br i1 %229, label %9533, label %9556

; <label>:9533                                    ; preds = %9523
  %9534 = fadd fast float %9527, %9530
  %9535 = fmul fast float %9532, %9534
  %9536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9537 = extractvalue %dx.types.CBufRet.f32 %9536, 3
  %9538 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %9539 = fsub fast float %7841, %7835
  %9540 = fadd fast float %9539, %7842
  %9541 = fsub fast float %9540, %9538
  %9542 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %9543 = fmul fast float %9541, %9542
  %9544 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9545 = fsub fast float %9544, %9537
  %9546 = fmul fast float %9545, %9524
  %9547 = fadd fast float %9546, %9537
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9550 = fsub fast float %9547, %9549
  %9551 = fmul fast float %9550, 1.000000e+01
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fmul fast float %9552, %7831
  %9554 = fadd fast float %9553, %7832
  %9555 = fmul fast float %9554, %9547
  br label %9580

; <label>:9556                                    ; preds = %9523
  %9557 = fadd fast float %9284, %9281
  %9558 = fmul fast float %9505, %9557
  %9559 = fadd fast float %9558, %9508
  %9560 = fmul fast float %9532, %9527
  %9561 = fmul fast float %9532, %9530
  %9562 = fmul fast float %9532, %9559
  %9563 = call float @dx.op.binary.f32(i32 35, float %9561, float %9562)  ; FMax(a,b)
  %9564 = call float @dx.op.binary.f32(i32 35, float %9560, float %9563)  ; FMax(a,b)
  %9565 = call float @dx.op.binary.f32(i32 35, float %9564, float %7832)  ; FMax(a,b)
  %9566 = fcmp fast ugt float %9565, 0x3F10000000000000
  br i1 %9566, label %9568, label %9567

; <label>:9567                                    ; preds = %9556
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9568

; <label>:9568                                    ; preds = %9567, %9556
  %9569 = add i32 %60, 356
  %9570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9569, i32 undef)  ; BufferLoad(srv,index,wot)
  %9571 = extractvalue %dx.types.ResRet.i32 %9570, 0
  %9572 = and i32 %9571, 32
  %9573 = icmp eq i32 %9572, 0
  br i1 %9573, label %9580, label %9574

; <label>:9574                                    ; preds = %9568
  %9575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9576 = extractvalue %dx.types.CBufRet.f32 %9575, 0
  %9577 = fmul fast float %9576, 0x3FE99999A0000000
  %9578 = fadd fast float %9576, %9560
  %9579 = fadd fast float %9577, %9562
  br label %9580

; <label>:9580                                    ; preds = %9574, %9568, %9533
  %9581 = phi float [ %9535, %9533 ], [ %9578, %9574 ], [ %9560, %9568 ]
  %9582 = phi float [ %9555, %9533 ], [ %9561, %9574 ], [ %9561, %9568 ]
  %9583 = phi float [ %9554, %9533 ], [ %9579, %9574 ], [ %9562, %9568 ]
  %9584 = phi float [ %9554, %9533 ], [ %7832, %9574 ], [ %7832, %9568 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9585 = call float @dx.op.binary.f32(i32 36, float %9581, float 3.225500e+04)  ; FMin(a,b)
  %9586 = call float @dx.op.binary.f32(i32 36, float %9582, float 3.225500e+04)  ; FMin(a,b)
  %9587 = call float @dx.op.binary.f32(i32 36, float %9583, float 3.225500e+04)  ; FMin(a,b)
  %9588 = call float @dx.op.binary.f32(i32 36, float %9584, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !96}
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
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!96 = !{i32 0, i64 16}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !107, i64 0}
!121 = distinct !{!121, !99}
!122 = distinct !{!122, !99}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = !{!134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!134 = distinct !{!134, !135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!135 = distinct !{!135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!136 = distinct !{!136, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!137 = distinct !{!137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!138 = distinct !{!138, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!148 = distinct !{!148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!157 = !{!153}
!158 = !{!154, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!159 = !{!160}
!160 = distinct !{!160, !161, !"\01?sort@@YAXAIAM00@Z: %c"}
!161 = distinct !{!161, !"\01?sort@@YAXAIAM00@Z"}
!162 = !{!163, !164, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!163 = distinct !{!163, !161, !"\01?sort@@YAXAIAM00@Z: %a"}
!164 = distinct !{!164, !161, !"\01?sort@@YAXAIAM00@Z: %b"}
!165 = !{!164}
!166 = !{!163, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!167 = !{!163}
!168 = !{!164, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 2}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}

