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
; shader hash: 4768c6ef2f8d9e971fce2387fd223eb9
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
  br i1 %3785, label %3786, label %4298

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
  br i1 %3837, label %4266, label %3838

; <label>:3838                                    ; preds = %3786
  %3839 = and i32 %3834, 1023
  br label %3840

; <label>:3840                                    ; preds = %3967, %3838
  %3841 = phi i32 [ %3917, %3967 ], [ 0, %3838 ]
  %3842 = phi float [ %3968, %3967 ], [ 0.000000e+00, %3838 ]
  %3843 = phi float [ %3969, %3967 ], [ %1171, %3838 ]
  %3844 = phi float [ %3970, %3967 ], [ %3755, %3838 ]
  %3845 = phi float [ %3971, %3967 ], [ %3736, %3838 ]
  %3846 = phi float [ %3972, %3967 ], [ 0.000000e+00, %3838 ]
  %3847 = phi float [ %3973, %3967 ], [ 0.000000e+00, %3838 ]
  %3848 = phi float [ %3974, %3967 ], [ %3730, %3838 ]
  %3849 = phi float [ %3975, %3967 ], [ %3731, %3838 ]
  %3850 = phi float [ %3976, %3967 ], [ %3732, %3838 ]
  %3851 = phi float [ %3977, %3967 ], [ %3781, %3838 ]
  %3852 = phi float [ %3978, %3967 ], [ %3782, %3838 ]
  %3853 = phi float [ %3979, %3967 ], [ %3783, %3838 ]
  %3854 = phi float [ %3980, %3967 ], [ %3735, %3838 ]
  %3855 = phi float [ %3981, %3967 ], [ %3734, %3838 ]
  %3856 = phi float [ %3982, %3967 ], [ 0.000000e+00, %3838 ]
  %3857 = phi float [ %3983, %3967 ], [ %3733, %3838 ]
  %3858 = phi float [ %3984, %3967 ], [ %3727, %3838 ]
  %3859 = phi float [ %3985, %3967 ], [ %3728, %3838 ]
  %3860 = phi float [ %3986, %3967 ], [ %3729, %3838 ]
  %3861 = add nuw nsw i32 %3841, %3836
  %3862 = shl i32 %3861, 2
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = shl i32 %3864, 8
  %3866 = or i32 %3865, 48
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3872 = or i32 %3865, 64
  %3873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.i32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.i32 %3873, 1
  %3876 = or i32 %3865, 80
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 2
  %3879 = extractvalue %dx.types.ResRet.f32 %3877, 3
  %3880 = or i32 %3865, 96
  %3881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.ResRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.ResRet.f32 %3881, 2
  %3885 = extractvalue %dx.types.ResRet.f32 %3881, 3
  %3886 = or i32 %3865, 112
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3889 = or i32 %3865, 128
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = extractvalue %dx.types.ResRet.f32 %3890, 3
  %3895 = or i32 %3865, 144
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3901 = or i32 %3865, 160
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = or i32 %3865, 192
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = or i32 %3865, 208
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = or i32 %3865, 248
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = add nuw nsw i32 %3841, 1
  %3918 = bitcast float %3871 to i32
  %3919 = and i32 %3918, 512
  %3920 = icmp eq i32 %3919, 0
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = call float @dx.op.dot4.f32(i32 56, float %3922, float %3923, float %3924, float %3925, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3927 = or i32 %3865, 16
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3934 = or i32 %3865, 32
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %3940 = call float @dx.op.dot4.f32(i32 56, float %3936, float %3937, float %3938, float %3939, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3941 = call float @dx.op.unary.f32(i32 27, float %3926)  ; Round_ni(value)
  %3942 = call float @dx.op.unary.f32(i32 6, float %3941)  ; FAbs(value)
  %3943 = call float @dx.op.unary.f32(i32 27, float %3933)  ; Round_ni(value)
  %3944 = call float @dx.op.unary.f32(i32 6, float %3943)  ; FAbs(value)
  %3945 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3946 = call float @dx.op.unary.f32(i32 27, float %3945)  ; Round_ni(value)
  %3947 = fadd fast float %3944, %3942
  %3948 = fadd fast float %3947, %3946
  %3949 = fcmp fast oeq float %3948, 0.000000e+00
  %3950 = call float @dx.op.dot4.f32(i32 56, float %3922, float %3923, float %3924, float %3925, float %3793, float %3794, float %3795, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %3793, float %3794, float %3795, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3922, float %3923, float %3924, float %3925, float %3796, float %3797, float %3798, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = call float @dx.op.dot4.f32(i32 56, float %3929, float %3930, float %3931, float %3932, float %3796, float %3797, float %3798, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3954 = fsub fast float %3950, %3926
  %3955 = fsub fast float %3952, %3926
  %3956 = fsub fast float %3951, %3933
  %3957 = fsub fast float %3953, %3933
  %3958 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 2
  %3961 = fadd fast float %3960, %3958
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3964 = fcmp fast ogt float %3962, %3963
  %3965 = and i1 %3949, %3964
  %3966 = and i1 %3920, %3965
  br i1 %3966, label %3988, label %3967

; <label>:3967                                    ; preds = %4252, %4069, %3988, %3840
  %3968 = phi float [ %3842, %3988 ], [ %4072, %4069 ], [ %4072, %4252 ], [ %3842, %3840 ]
  %3969 = phi float [ %3843, %3988 ], [ %3843, %4069 ], [ %4227, %4252 ], [ %3843, %3840 ]
  %3970 = phi float [ %3844, %3988 ], [ %3844, %4069 ], [ %4226, %4252 ], [ %3844, %3840 ]
  %3971 = phi float [ %3845, %3988 ], [ %3845, %4069 ], [ %4224, %4252 ], [ %3845, %3840 ]
  %3972 = phi float [ %3846, %3988 ], [ %3846, %4069 ], [ %4196, %4252 ], [ %3846, %3840 ]
  %3973 = phi float [ %3847, %3988 ], [ %3847, %4069 ], [ %4194, %4252 ], [ %3847, %3840 ]
  %3974 = phi float [ %3848, %3988 ], [ %3848, %4069 ], [ %4262, %4252 ], [ %3848, %3840 ]
  %3975 = phi float [ %3849, %3988 ], [ %3849, %4069 ], [ %4263, %4252 ], [ %3849, %3840 ]
  %3976 = phi float [ %3850, %3988 ], [ %3850, %4069 ], [ %4264, %4252 ], [ %3850, %3840 ]
  %3977 = phi float [ %3851, %3988 ], [ %3851, %4069 ], [ %4175, %4252 ], [ %3851, %3840 ]
  %3978 = phi float [ %3852, %3988 ], [ %3852, %4069 ], [ %4176, %4252 ], [ %3852, %3840 ]
  %3979 = phi float [ %3853, %3988 ], [ %3853, %4069 ], [ %4177, %4252 ], [ %3853, %3840 ]
  %3980 = phi float [ %3854, %3988 ], [ %3854, %4069 ], [ %4204, %4252 ], [ %3854, %3840 ]
  %3981 = phi float [ %3855, %3988 ], [ %3855, %4069 ], [ %4201, %4252 ], [ %3855, %3840 ]
  %3982 = phi float [ %3856, %3988 ], [ %3856, %4069 ], [ %4198, %4252 ], [ %3856, %3840 ]
  %3983 = phi float [ %3857, %3988 ], [ %3857, %4069 ], [ %4192, %4252 ], [ %3857, %3840 ]
  %3984 = phi float [ %3858, %3988 ], [ %3858, %4069 ], [ %4187, %4252 ], [ %3858, %3840 ]
  %3985 = phi float [ %3859, %3988 ], [ %3859, %4069 ], [ %4188, %4252 ], [ %3859, %3840 ]
  %3986 = phi float [ %3860, %3988 ], [ %3860, %4069 ], [ %4189, %4252 ], [ %3860, %3840 ]
  %3987 = icmp eq i32 %3917, %3839
  br i1 %3987, label %4265, label %3840

; <label>:3988                                    ; preds = %3840
  %3989 = extractvalue %dx.types.ResRet.f32 %3887, 3
  %3990 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3877, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3994 = extractvalue %dx.types.ResRet.i32 %3873, 3
  %3995 = extractvalue %dx.types.ResRet.i32 %3873, 2
  %3996 = add i32 %3994, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3996, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3997, %dx.types.Handle %3998, float %3926, float %3933, float undef, float undef, i32 0, i32 0, i32 undef, float %3954, float %3956, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = fmul fast float %4000, %3993
  %4002 = fadd fast float %4001, %3992
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = fmul fast float %3926, %3882
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %3883, float %3933, float %4004)  ; FMad(a,b,c)
  %4006 = fadd fast float %4005, %3991
  %4007 = fmul fast float %3926, %3884
  %4008 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3933, float %4007)  ; FMad(a,b,c)
  %4009 = fadd fast float %4008, %3990
  %4010 = fmul fast float %3954, %3882
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %3883, float %3956, float %4010)  ; FMad(a,b,c)
  %4012 = fmul fast float %3954, %3884
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3956, float %4012)  ; FMad(a,b,c)
  %4014 = fmul fast float %3955, %3882
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %3883, float %3957, float %4014)  ; FMad(a,b,c)
  %4016 = fmul fast float %3955, %3884
  %4017 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3957, float %4016)  ; FMad(a,b,c)
  %4018 = add i32 %3995, 0
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4019, %dx.types.Handle %3998, float %4006, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %4011, float %4013, float undef, float %4015, float %4017, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = and i32 %3918, 1024
  %4023 = icmp ne i32 %4022, 0
  %4024 = fcmp fast ogt float %4021, 0x3FE0101020000000
  %4025 = uitofp i1 %4024 to float
  %4026 = select i1 %4023, float %4025, float %4021
  %4027 = and i32 %3918, 8192
  %4028 = icmp ne i32 %4027, 0
  %4029 = select i1 %4028, float %3989, float 1.000000e+00
  %4030 = fmul fast float %3926, 2.000000e+00
  %4031 = fadd fast float %4030, -1.000000e+00
  %4032 = call float @dx.op.unary.f32(i32 6, float %4031)  ; FAbs(value)
  %4033 = fmul fast float %4032, %3915
  %4034 = fsub fast float %4033, %3915
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = fmul fast float %3933, 2.000000e+00
  %4037 = fadd fast float %4036, -1.000000e+00
  %4038 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4039 = fmul fast float %4038, %3916
  %4040 = fsub fast float %4039, %3916
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %3945, %3878
  %4043 = fsub fast float %4042, %3878
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = fmul fast float %4003, %4029
  %4046 = fmul fast float %4045, %4000
  %4047 = fmul fast float %4046, %4035
  %4048 = fmul fast float %4047, %4026
  %4049 = fmul fast float %4048, %4041
  %4050 = fmul fast float %4049, %4044
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4054 = fsub fast float %3962, %4053
  %4055 = fmul fast float %4054, %4052
  %4056 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4057 = fmul fast float %4050, %3879
  %4058 = fadd fast float %4050, %3879
  %4059 = fmul fast float %4058, %3888
  %4060 = fsub fast float %4059, %3888
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = and i32 %3918, 128
  %4063 = icmp ne i32 %4062, 0
  %4064 = select i1 %4063, float %4061, float %4057
  %4065 = fmul fast float %4064, %4056
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = fcmp fast ugt float %4065, %4067
  br i1 %4068, label %4069, label %3967

; <label>:4069                                    ; preds = %3988
  %4070 = select i1 %4028, float %4065, float 0.000000e+00
  %4071 = fadd fast float %4070, %3842
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  br i1 %4028, label %3967, label %4073

; <label>:4073                                    ; preds = %4069
  %4074 = and i32 %3918, 4
  %4075 = and i32 %3918, 8
  %4076 = add i32 %3874, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4077, %dx.types.Handle %4078, float %4006, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %4011, float %4013, float undef, float %4015, float %4017, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4084 = bitcast float %3900 to i32
  %4085 = and i32 %4084, 255
  %4086 = uitofp i32 %4085 to float
  %4087 = lshr i32 %4084, 8
  %4088 = and i32 %4087, 255
  %4089 = uitofp i32 %4088 to float
  %4090 = fmul fast float %4083, %4086
  %4091 = fadd fast float %4090, %4089
  %4092 = fmul fast float %4091, 0x3F70101000000000
  %4093 = add i32 %3875, 0
  %4094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4093, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4094, %dx.types.Handle %4078, float %4006, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %4011, float %4013, float undef, float %4015, float %4017, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = extractvalue %dx.types.ResRet.f32 %4095, 3
  %4100 = bitcast float %3894 to i32
  %4101 = and i32 %4100, 255
  %4102 = uitofp i32 %4101 to float
  %4103 = lshr i32 %4100, 8
  %4104 = and i32 %4103, 255
  %4105 = uitofp i32 %4104 to float
  %4106 = lshr i32 %4100, 16
  %4107 = and i32 %4106, 255
  %4108 = uitofp i32 %4107 to float
  %4109 = fmul fast float %4108, 0x3F70101000000000
  %4110 = fmul fast float %4096, %4102
  %4111 = fadd fast float %4110, %4105
  %4112 = fmul fast float %4111, 0x3F70101000000000
  %4113 = fadd fast float %4097, -5.000000e-01
  %4114 = fadd fast float %4099, -5.000000e-01
  %4115 = fmul fast float %4113, %4109
  %4116 = fmul fast float %4114, %4109
  %4117 = fadd fast float %4115, 5.000000e-01
  %4118 = fadd fast float %4116, 5.000000e-01
  %4119 = fmul fast float %4080, %3903
  %4120 = fmul fast float %4081, %3904
  %4121 = fmul fast float %4082, %3905
  %4122 = fmul fast float %4117, 2.000000e+00
  %4123 = fadd fast float %4122, -1.000000e+00
  %4124 = fmul fast float %4118, 2.000000e+00
  %4125 = fadd fast float %4124, -1.000000e+00
  %4126 = fadd fast float %4123, %4125
  %4127 = fmul fast float %4126, 5.000000e-01
  %4128 = fsub fast float %4123, %4125
  %4129 = fmul fast float %4128, 5.000000e-01
  %4130 = call float @dx.op.unary.f32(i32 6, float %4127)  ; FAbs(value)
  %4131 = fsub fast float 1.000000e+00, %4130
  %4132 = call float @dx.op.unary.f32(i32 6, float %4129)  ; FAbs(value)
  %4133 = fsub fast float %4131, %4132
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4129, float %4133, float %4127, float %4129, float %4133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = call float @dx.op.unary.f32(i32 25, float %4134)  ; Rsqrt(value)
  %4136 = fmul fast float %4127, %4135
  %4137 = fmul fast float %4129, %4135
  %4138 = fmul fast float %4135, %4133
  %4139 = fmul fast float %4138, %3868
  %4140 = fmul fast float %4138, %3869
  %4141 = fmul fast float %4138, %3870
  %4142 = fmul fast float %4136, %3891
  %4143 = fmul fast float %4136, %3892
  %4144 = fmul fast float %4136, %3893
  %4145 = fadd fast float %4142, %4139
  %4146 = fadd fast float %4143, %4140
  %4147 = fadd fast float %4144, %4141
  %4148 = fmul fast float %4137, %3897
  %4149 = fmul fast float %4137, %3898
  %4150 = fmul fast float %4137, %3899
  %4151 = fadd fast float %4145, %4148
  %4152 = fadd fast float %4146, %4149
  %4153 = fadd fast float %4147, %4150
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float %4151, float %4152, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 25, float %4154)  ; Rsqrt(value)
  %4156 = fmul fast float %4151, %4155
  %4157 = fmul fast float %4152, %4155
  %4158 = fmul fast float %4153, %4155
  %4159 = icmp ne i32 %4075, 0
  %4160 = select i1 %4159, float 1.000000e+00, float 0.000000e+00
  %4161 = fmul fast float %4065, %4160
  %4162 = and i32 %3918, 1
  %4163 = icmp eq i32 %4162, 0
  br i1 %4163, label %4164, label %4168

; <label>:4164                                    ; preds = %4073
  %4165 = fsub fast float %4156, %3851
  %4166 = fsub fast float %4157, %3852
  %4167 = fsub fast float %4158, %3853
  br label %4168

; <label>:4168                                    ; preds = %4164, %4073
  %4169 = phi float [ %4165, %4164 ], [ %4156, %4073 ]
  %4170 = phi float [ %4166, %4164 ], [ %4157, %4073 ]
  %4171 = phi float [ %4167, %4164 ], [ %4158, %4073 ]
  %4172 = fmul float %4171, %4161
  %4173 = fmul float %4170, %4161
  %4174 = fmul float %4169, %4161
  %4175 = fadd fast float %4174, %3851
  %4176 = fadd fast float %4173, %3852
  %4177 = fadd fast float %4172, %3853
  %4178 = icmp ne i32 %4074, 0
  %4179 = select i1 %4178, float 1.000000e+00, float 0.000000e+00
  %4180 = fmul fast float %4065, %4179
  %4181 = fsub fast float %4119, %3858
  %4182 = fsub fast float %4120, %3859
  %4183 = fsub fast float %4121, %3860
  %4184 = fmul fast float %4181, %4180
  %4185 = fmul fast float %4182, %4180
  %4186 = fmul fast float %4183, %4180
  %4187 = fadd fast float %4184, %3858
  %4188 = fadd fast float %4185, %3859
  %4189 = fadd fast float %4186, %3860
  %4190 = fsub fast float %4092, %3857
  %4191 = fmul fast float %4190, %4180
  %4192 = fadd fast float %4191, %3857
  %4193 = fmul fast float %4180, %3847
  %4194 = fsub fast float %3847, %4193
  %4195 = fmul fast float %4180, %3846
  %4196 = fsub fast float %3846, %4195
  %4197 = fadd fast float %4065, %3856
  %4198 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4199 = fsub fast float %4112, %3855
  %4200 = fmul fast float %4199, %4161
  %4201 = fadd fast float %4200, %3855
  %4202 = fsub fast float %4098, %3854
  %4203 = fmul fast float %4202, %4161
  %4204 = fadd fast float %4203, %3854
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4119, float %4120, float %4121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4209 = fmul fast float %4208, %4205
  %4210 = fadd fast float %4209, %4207
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = bitcast float %3906 to i32
  %4213 = and i32 %4212, 65535
  %4214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4213)  ; LegacyF16ToF32(value)
  %4215 = lshr i32 %4212, 16
  %4216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4215)  ; LegacyF16ToF32(value)
  %4217 = fcmp fast oge float %4214, 0.000000e+00
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = select i1 %4217, float %4214, float %4219
  %4221 = fadd fast float %4220, %4216
  %4222 = fsub fast float %4211, %3845
  %4223 = fmul fast float %4222, %4065
  %4224 = fadd fast float %4223, %3845
  %4225 = fmul fast float %4221, %4065
  %4226 = call float @dx.op.binary.f32(i32 35, float %3844, float %4225)  ; FMax(a,b)
  %4227 = call float @dx.op.binary.f32(i32 35, float %3843, float %4065)  ; FMax(a,b)
  %4228 = and i32 %3918, 16
  %4229 = icmp eq i32 %4228, 0
  br i1 %4229, label %4252, label %4230

; <label>:4230                                    ; preds = %4168
  %4231 = bitcast float %3912 to i32
  %4232 = add i32 %3909, 0
  %4233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4233, %dx.types.Handle %4078, float %4006, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %4011, float %4013, float undef, float %4015, float %4017, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = and i32 %4231, 65535
  %4239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4238)  ; LegacyF16ToF32(value)
  %4240 = fmul fast float %4235, %3903
  %4241 = fmul fast float %4236, %3904
  %4242 = fmul fast float %4237, %3905
  %4243 = and i32 %3918, 16384
  %4244 = icmp ne i32 %4243, 0
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = select i1 %4244, float %4246, float 1.000000e+00
  %4248 = fmul fast float %4247, %4239
  %4249 = fmul fast float %4240, %4248
  %4250 = fmul fast float %4241, %4248
  %4251 = fmul fast float %4242, %4248
  br label %4252

; <label>:4252                                    ; preds = %4230, %4168
  %4253 = phi float [ %4249, %4230 ], [ 0.000000e+00, %4168 ]
  %4254 = phi float [ %4250, %4230 ], [ 0.000000e+00, %4168 ]
  %4255 = phi float [ %4251, %4230 ], [ 0.000000e+00, %4168 ]
  %4256 = fsub fast float %4253, %3848
  %4257 = fsub fast float %4254, %3849
  %4258 = fsub fast float %4255, %3850
  %4259 = fmul fast float %4256, %4065
  %4260 = fmul fast float %4257, %4065
  %4261 = fmul fast float %4258, %4065
  %4262 = fadd fast float %4259, %3848
  %4263 = fadd fast float %4260, %3849
  %4264 = fadd fast float %4261, %3850
  br label %3967

; <label>:4265                                    ; preds = %3967
  br label %4266

; <label>:4266                                    ; preds = %4265, %3786
  %4267 = phi float [ 0.000000e+00, %3786 ], [ %3968, %4265 ]
  %4268 = phi float [ %1171, %3786 ], [ %3969, %4265 ]
  %4269 = phi float [ %3755, %3786 ], [ %3970, %4265 ]
  %4270 = phi float [ %3736, %3786 ], [ %3971, %4265 ]
  %4271 = phi float [ 0.000000e+00, %3786 ], [ %3972, %4265 ]
  %4272 = phi float [ 0.000000e+00, %3786 ], [ %3973, %4265 ]
  %4273 = phi float [ %3730, %3786 ], [ %3974, %4265 ]
  %4274 = phi float [ %3731, %3786 ], [ %3975, %4265 ]
  %4275 = phi float [ %3732, %3786 ], [ %3976, %4265 ]
  %4276 = phi float [ %3781, %3786 ], [ %3977, %4265 ]
  %4277 = phi float [ %3782, %3786 ], [ %3978, %4265 ]
  %4278 = phi float [ %3783, %3786 ], [ %3979, %4265 ]
  %4279 = phi float [ %3735, %3786 ], [ %3980, %4265 ]
  %4280 = phi float [ %3734, %3786 ], [ %3981, %4265 ]
  %4281 = phi float [ 0.000000e+00, %3786 ], [ %3982, %4265 ]
  %4282 = phi float [ %3733, %3786 ], [ %3983, %4265 ]
  %4283 = phi float [ %3727, %3786 ], [ %3984, %4265 ]
  %4284 = phi float [ %3728, %3786 ], [ %3985, %4265 ]
  %4285 = phi float [ %3729, %3786 ], [ %3986, %4265 ]
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4276, float %4277, float %4278, float %4276, float %4277, float %4278)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call float @dx.op.unary.f32(i32 25, float %4286)  ; Rsqrt(value)
  %4288 = fmul fast float %4287, %4276
  %4289 = fmul fast float %4287, %4277
  %4290 = fmul fast float %4287, %4278
  %4291 = fadd fast float %4281, %1171
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4288, float %4289, float %4290, float %4288, float %4289, float %4290)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = call float @dx.op.unary.f32(i32 25, float %4293)  ; Rsqrt(value)
  %4295 = fmul fast float %4294, %4288
  %4296 = fmul fast float %4294, %4289
  %4297 = fmul fast float %4294, %4290
  br label %4298

; <label>:4298                                    ; preds = %4266, %3724
  %4299 = phi float [ %4295, %4266 ], [ %3781, %3724 ]
  %4300 = phi float [ %4296, %4266 ], [ %3782, %3724 ]
  %4301 = phi float [ %4297, %4266 ], [ %3783, %3724 ]
  %4302 = phi float [ %4283, %4266 ], [ %3727, %3724 ]
  %4303 = phi float [ %4284, %4266 ], [ %3728, %3724 ]
  %4304 = phi float [ %4285, %4266 ], [ %3729, %3724 ]
  %4305 = phi float [ %4273, %4266 ], [ %3730, %3724 ]
  %4306 = phi float [ %4274, %4266 ], [ %3731, %3724 ]
  %4307 = phi float [ %4275, %4266 ], [ %3732, %3724 ]
  %4308 = phi float [ %4282, %4266 ], [ %3733, %3724 ]
  %4309 = phi float [ %4292, %4266 ], [ %1171, %3724 ]
  %4310 = phi float [ %4280, %4266 ], [ %3734, %3724 ]
  %4311 = phi float [ %4279, %4266 ], [ %3735, %3724 ]
  %4312 = phi float [ %4272, %4266 ], [ 0.000000e+00, %3724 ]
  %4313 = phi float [ %4271, %4266 ], [ 0.000000e+00, %3724 ]
  %4314 = phi float [ %4267, %4266 ], [ 0.000000e+00, %3724 ]
  %4315 = phi float [ %4269, %4266 ], [ %3755, %3724 ]
  %4316 = phi float [ %4268, %4266 ], [ %1171, %3724 ]
  %4317 = phi float [ %4270, %4266 ], [ %3736, %3724 ]
  %4318 = add i32 %60, 392
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = extractvalue %dx.types.ResRet.i32 %4319, 1
  %4322 = extractvalue %dx.types.ResRet.i32 %4319, 2
  %4323 = extractvalue %dx.types.ResRet.i32 %4319, 3
  %4324 = bitcast i32 %4320 to float
  %4325 = bitcast i32 %4321 to float
  %4326 = bitcast i32 %4322 to float
  %4327 = bitcast i32 %4323 to float
  %4328 = fsub fast float %4302, %4324
  %4329 = fsub fast float %4303, %4325
  %4330 = fsub fast float %4304, %4326
  %4331 = fmul fast float %4328, %201
  %4332 = fmul fast float %4329, %201
  %4333 = fmul fast float %4330, %201
  %4334 = fadd fast float %4331, %4324
  %4335 = fadd fast float %4332, %4325
  %4336 = fadd fast float %4333, %4326
  %4337 = fsub fast float %4309, %4327
  %4338 = fmul fast float %4337, %201
  %4339 = fadd fast float %4338, %4327
  %4340 = fadd fast float %4308, 0xBFB99999A0000000
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4341, 0x3FF1C71C80000000
  %4343 = call float @dx.op.binary.f32(i32 36, float %4308, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4344 = fsub fast float 1.000000e+00, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4334, %4345
  %4347 = fmul fast float %4335, %4345
  %4348 = fmul fast float %4336, %4345
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = fmul fast float %4334, %4342
  %4353 = fmul fast float %4335, %4342
  %4354 = fmul fast float %4336, %4342
  %4355 = fadd fast float %4352, %4343
  %4356 = fadd fast float %4353, %4343
  %4357 = fadd fast float %4354, %4343
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 3
  %4364 = and i32 %4363, 8
  %4365 = icmp ne i32 %4364, 0
  %4366 = call float @dx.op.binary.f32(i32 35, float %4349, float %4334)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4350, float %4334)  ; FMax(a,b)
  %4368 = call float @dx.op.binary.f32(i32 35, float %4351, float %4334)  ; FMax(a,b)
  %4369 = call float @dx.op.dot3.f32(i32 55, float %4349, float %4350, float %4351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = select i1 %261, float %4334, float %4349
  %4371 = select i1 %261, float %4369, float %4350
  %4372 = select i1 %261, float 1.000000e+00, float %4351
  %4373 = select i1 %4365, float %4366, float %4370
  %4374 = select i1 %4365, float %4367, float %4371
  %4375 = select i1 %4365, float %4368, float %4372
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4380 = fadd fast float %4377, %167
  %4381 = fadd fast float %4378, %168
  %4382 = fadd fast float %4379, %169
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.CBufRet.f32 %4383, 1
  %4386 = fsub fast float %4380, %4384
  %4387 = fsub fast float %4381, %4385
  %4388 = fmul fast float %4386, %4386
  %4389 = fmul fast float %4387, %4387
  %4390 = fadd fast float %4388, %4389
  %4391 = call float @dx.op.unary.f32(i32 24, float %4390)  ; Sqrt(value)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4383, 2
  %4393 = fcmp fast olt float %4391, %4392
  br i1 %4393, label %4394, label %4461

; <label>:4394                                    ; preds = %4298
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4402 = extractvalue %dx.types.CBufRet.f32 %4397, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4405 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4406 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4407 = fadd fast float %4404, %4380
  %4408 = fadd fast float %4405, %4381
  %4409 = fadd fast float %4406, %4382
  %4410 = fmul fast float %4407, %4396
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4398, float %4410)  ; FMad(a,b,c)
  %4412 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4400, float %4411)  ; FMad(a,b,c)
  %4413 = fmul fast float %4407, %4401
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4403, float %4414)  ; FMad(a,b,c)
  %4416 = fsub fast float %4412, %4404
  %4417 = fsub fast float %4415, %4405
  %4418 = fsub fast float %4416, %4384
  %4419 = fadd fast float %4418, %4392
  %4420 = fsub fast float %4417, %4385
  %4421 = fadd fast float %4420, %4392
  %4422 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4423 = fmul fast float %4419, %4422
  %4424 = fmul fast float %4421, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4427 = fsub fast float 1.000000e+00, %4425
  %4428 = fsub fast float 1.000000e+00, %4426
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fcmp fast ugt float %4430, 0.000000e+00
  br i1 %4431, label %4432, label %4735

; <label>:4432                                    ; preds = %4394
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4435 = fmul fast float %4434, %4430
  %4436 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4437 = fadd fast float %4436, %4435
  %4438 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %4439 = fadd fast float %4437, %4406
  %4440 = fmul fast float %4412, %4400
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4403, float %4440)  ; FMad(a,b,c)
  %4442 = call float @dx.op.tertiary.f32(i32 46, float %4439, float %4438, float %4441)  ; FMad(a,b,c)
  %4443 = fsub fast float %4442, %4406
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = fsub fast float %4443, %4445
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fadd fast float %4452, %4448
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  %4457 = fadd fast float %4453, %4449
  %4458 = fmul fast float %4457, 0x3F847AE140000000
  %4459 = fadd fast float %4454, %4450
  %4460 = fmul fast float %4459, 0x3F847AE140000000
  br label %4735

; <label>:4461                                    ; preds = %4298
  %4462 = and i32 %237, 1
  %4463 = icmp eq i32 %4462, 0
  br i1 %4463, label %4735, label %4464

; <label>:4464                                    ; preds = %4461
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4475 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4476 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4477 = fadd fast float %4474, %4380
  %4478 = fadd fast float %4475, %4381
  %4479 = fadd fast float %4476, %4382
  %4480 = fmul fast float %4477, %4466
  %4481 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4468, float %4480)  ; FMad(a,b,c)
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4479, float %4470, float %4481)  ; FMad(a,b,c)
  %4483 = fmul fast float %4477, %4471
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = call float @dx.op.tertiary.f32(i32 46, float %4479, float %4473, float %4484)  ; FMad(a,b,c)
  %4486 = fsub fast float %4482, %4474
  %4487 = fsub fast float %4485, %4475
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.i32 %4495, 0
  %4497 = extractvalue %dx.types.CBufRet.i32 %4495, 1
  %4498 = udiv i32 %4497, %4496
  %4499 = fsub fast float %4486, %4489
  %4500 = fsub fast float %4487, %4490
  %4501 = call float @dx.op.binary.f32(i32 35, float %4499, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 35, float %4500, float 0.000000e+00)  ; FMax(a,b)
  %4503 = call float @dx.op.binary.f32(i32 36, float %4501, float %4491)  ; FMin(a,b)
  %4504 = call float @dx.op.binary.f32(i32 36, float %4502, float %4492)  ; FMin(a,b)
  %4505 = add i32 %4496, -1
  %4506 = add i32 %4498, -1
  %4507 = fmul fast float %4503, %4494
  %4508 = fmul fast float %4504, %4494
  %4509 = fptoui float %4507 to i32
  %4510 = fptoui float %4508 to i32
  %4511 = call i32 @dx.op.binary.i32(i32 40, i32 %4509, i32 %4505)  ; UMin(a,b)
  %4512 = call i32 @dx.op.binary.i32(i32 40, i32 %4510, i32 %4506)  ; UMin(a,b)
  %4513 = mul i32 %4512, %4496
  %4514 = add i32 %4513, %4511
  %4515 = shl i32 %4514, 2
  %4516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.i32 %4516, 0
  %4518 = icmp eq i32 %4517, -1
  br i1 %4518, label %4735, label %4519

; <label>:4519                                    ; preds = %4464
  %4520 = mul i32 %4517, 148
  %4521 = add i32 %4520, 4
  %4522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = add i32 %4520, 8
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = add i32 %4520, 36
  %4528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = add i32 %4520, 60
  %4531 = add i32 %4520, 92
  %4532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.i32 %4532, 0
  %4534 = add i32 %4520, 116
  %4535 = fsub fast float %4486, %4523
  %4536 = fsub fast float %4487, %4526
  %4537 = fmul fast float %4494, %4535
  %4538 = fmul fast float %4494, %4536
  %4539 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4540 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 2
  %4544 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4545 = call float @dx.op.unary.f32(i32 83, float %4541)  ; DerivCoarseX(value)
  %4546 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4547 = call float @dx.op.unary.f32(i32 84, float %4541)  ; DerivCoarseY(value)
  %4548 = fmul fast float %4544, %4543
  %4549 = fmul fast float %4545, %4543
  %4550 = fmul fast float %4546, %4543
  %4551 = fmul fast float %4547, %4543
  %4552 = call float @dx.op.dot2.f32(i32 54, float %4550, float %4551, float %4550, float %4551)  ; Dot2(ax,ay,bx,by)
  %4553 = call float @dx.op.dot2.f32(i32 54, float %4548, float %4549, float %4548, float %4549)  ; Dot2(ax,ay,bx,by)
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float %4552)  ; FMax(a,b)
  %4555 = call float @dx.op.unary.f32(i32 23, float %4554)  ; Log(value)
  %4556 = fmul fast float %4555, 5.000000e-01
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 1
  %4559 = fadd fast float %4558, %4556
  %4560 = call float @dx.op.binary.f32(i32 35, float %4559, float 0.000000e+00)  ; FMax(a,b)
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4563 = fadd fast float %4562, %4560
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4566 = fadd fast float %4563, %4565
  %4567 = add i32 %4533, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4568, i32 0)  ; GetDimensions(handle,mipLevel)
  %4570 = extractvalue %dx.types.Dimensions %4569, 0
  %4571 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4570)  ; FirstbitLo(value)
  %4572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.i32 %4572, 1
  %4574 = sub nsw i32 %4573, %4571
  %4575 = sitofp i32 %4574 to float
  %4576 = fsub fast float %4566, %4575
  %4577 = call float @dx.op.binary.f32(i32 35, float %4576, float 0.000000e+00)  ; FMax(a,b)
  %4578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4568, %dx.types.Handle %52, float %4539, float %4541, float %4529, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = fcmp ule float %4579, 0x3FE0101020000000
  %4581 = extractvalue %dx.types.CBufRet.i32 %4572, 0
  %4582 = and i32 %4581, 128
  %4583 = icmp ne i32 %4582, 0
  %4584 = and i1 %4580, %4583
  br i1 %4584, label %4735, label %4585

; <label>:4585                                    ; preds = %4519
  %4586 = add i32 %4520, 20
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = add i32 %4520, 24
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4520, 40
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = add i32 %4520, 96
  %4596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.i32 %4596, 0
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4600 = fmul fast float %4599, %4539
  %4601 = fmul fast float %4599, %4541
  %4602 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4603 = fadd fast float %4600, %4602
  %4604 = fadd fast float %4601, %4602
  %4605 = add i32 %4597, 0
  %4606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4607 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4606, i32 0)  ; GetDimensions(handle,mipLevel)
  %4608 = extractvalue %dx.types.Dimensions %4607, 0
  %4609 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4608)  ; FirstbitLo(value)
  %4610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.i32 %4610, 1
  %4612 = sub nsw i32 %4611, %4609
  %4613 = sitofp i32 %4612 to float
  %4614 = fsub fast float %4563, %4613
  %4615 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4606, %dx.types.Handle %52, float %4603, float %4604, float %4594, float undef, i32 0, i32 0, i32 undef, float %4615)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = fmul fast float %4617, %4588
  %4619 = fadd fast float %4618, %4591
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4628 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4629 = fadd fast float %4625, %4486
  %4630 = fadd fast float %4627, %4487
  %4631 = fadd fast float %4619, %4628
  %4632 = fmul fast float %4629, %4621
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4622, float %4632)  ; FMad(a,b,c)
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %4631, float %4623, float %4633)  ; FMad(a,b,c)
  %4635 = fsub fast float %4634, %4628
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4638 = fsub fast float %4635, %4637
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 0
  %4641 = call i32 @dx.op.binary.i32(i32 40, i32 %4517, i32 %4640)  ; UMin(a,b)
  %4642 = mul i32 %4641, 36
  %4643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.i32 %4643, 0
  %4645 = add i32 %4642, 4
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = fmul fast float %4647, %4539
  %4649 = fmul fast float %4647, %4541
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4651 = fadd fast float %4648, %4650
  %4652 = fadd fast float %4649, %4650
  %4653 = icmp eq i32 %4644, 0
  br i1 %4653, label %4722, label %4654

; <label>:4654                                    ; preds = %4585
  br label %4655

; <label>:4655                                    ; preds = %4712, %4654
  %4656 = phi float [ %4713, %4712 ], [ 0.000000e+00, %4654 ]
  %4657 = phi float [ %4714, %4712 ], [ 0.000000e+00, %4654 ]
  %4658 = phi float [ %4715, %4712 ], [ 0.000000e+00, %4654 ]
  %4659 = phi float [ %4716, %4712 ], [ 0.000000e+00, %4654 ]
  %4660 = phi float [ %4717, %4712 ], [ 0.000000e+00, %4654 ]
  %4661 = phi float [ %4718, %4712 ], [ 0.000000e+00, %4654 ]
  %4662 = phi i32 [ %4719, %4712 ], [ 0, %4654 ]
  %4663 = shl i32 %4662, 2
  %4664 = add i32 %4530, %4663
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4534, %4663
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = add i32 %4669, 0
  %4671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4670, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4672 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4671, i32 0)  ; GetDimensions(handle,mipLevel)
  %4673 = extractvalue %dx.types.Dimensions %4672, 0
  %4674 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4673)  ; FirstbitLo(value)
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 1
  %4677 = sub nsw i32 %4676, %4674
  %4678 = sitofp i32 %4677 to float
  %4679 = fsub fast float %4563, %4678
  %4680 = call float @dx.op.binary.f32(i32 35, float %4679, float 0.000000e+00)  ; FMax(a,b)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4671, %dx.types.Handle %52, float %4651, float %4652, float %4666, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fcmp fast ogt float %4682, 0.000000e+00
  br i1 %4683, label %4684, label %4712

; <label>:4684                                    ; preds = %4655
  %4685 = add i32 %4645, %4663
  %4686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4685, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.i32 %4686, 0
  %4688 = and i32 %4687, 32767
  %4689 = mul nuw nsw i32 %4688, 928
  %4690 = add nuw nsw i32 %4689, 48
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.ResRet.f32 %4691, 2
  %4695 = add nuw nsw i32 %4689, 60
  %4696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4695, i32 undef)  ; BufferLoad(srv,index,wot)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  %4700 = fmul fast float %4692, %4682
  %4701 = fmul fast float %4693, %4682
  %4702 = fmul fast float %4694, %4682
  %4703 = fadd fast float %4700, %4656
  %4704 = fadd fast float %4701, %4657
  %4705 = fadd fast float %4702, %4658
  %4706 = fmul fast float %4697, %4682
  %4707 = fmul fast float %4698, %4682
  %4708 = fmul fast float %4699, %4682
  %4709 = fadd fast float %4706, %4659
  %4710 = fadd fast float %4707, %4660
  %4711 = fadd fast float %4708, %4661
  br label %4712

; <label>:4712                                    ; preds = %4684, %4655
  %4713 = phi float [ %4703, %4684 ], [ %4656, %4655 ]
  %4714 = phi float [ %4704, %4684 ], [ %4657, %4655 ]
  %4715 = phi float [ %4705, %4684 ], [ %4658, %4655 ]
  %4716 = phi float [ %4709, %4684 ], [ %4659, %4655 ]
  %4717 = phi float [ %4710, %4684 ], [ %4660, %4655 ]
  %4718 = phi float [ %4711, %4684 ], [ %4661, %4655 ]
  %4719 = add nuw i32 %4662, 1
  %4720 = icmp eq i32 %4719, %4644
  br i1 %4720, label %4721, label %4655

; <label>:4721                                    ; preds = %4712
  br label %4722

; <label>:4722                                    ; preds = %4721, %4585
  %4723 = phi float [ 0.000000e+00, %4585 ], [ %4713, %4721 ]
  %4724 = phi float [ 0.000000e+00, %4585 ], [ %4714, %4721 ]
  %4725 = phi float [ 0.000000e+00, %4585 ], [ %4715, %4721 ]
  %4726 = phi float [ 0.000000e+00, %4585 ], [ %4716, %4721 ]
  %4727 = phi float [ 0.000000e+00, %4585 ], [ %4717, %4721 ]
  %4728 = phi float [ 0.000000e+00, %4585 ], [ %4718, %4721 ]
  %4729 = fadd fast float %4726, %4723
  %4730 = fmul fast float %4729, 0x3F847AE140000000
  %4731 = fadd fast float %4727, %4724
  %4732 = fmul fast float %4731, 0x3F847AE140000000
  %4733 = fadd fast float %4728, %4725
  %4734 = fmul fast float %4733, 0x3F847AE140000000
  br label %4735

; <label>:4735                                    ; preds = %4722, %4519, %4464, %4461, %4432, %4394
  %4736 = phi float [ %4446, %4432 ], [ -1.310720e+05, %4394 ], [ %4638, %4722 ], [ -1.310720e+05, %4464 ], [ -1.310720e+05, %4519 ], [ -1.310720e+05, %4461 ]
  %4737 = phi float [ %4456, %4432 ], [ 0.000000e+00, %4394 ], [ %4730, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4738 = phi float [ %4458, %4432 ], [ 0.000000e+00, %4394 ], [ %4732, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4739 = phi float [ %4460, %4432 ], [ 0.000000e+00, %4394 ], [ %4734, %4722 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4461 ]
  %4740 = phi i1 [ true, %4432 ], [ false, %4394 ], [ true, %4722 ], [ false, %4464 ], [ false, %4519 ], [ false, %4461 ]
  %4741 = and i32 %237, 3
  %4742 = icmp eq i32 %4741, 1
  %4743 = select i1 %4742, float 1.000000e+00, float 0.000000e+00
  %4744 = fsub fast float %4736, %169
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = select i1 %4740, float %4745, float 1.000000e+00
  %4747 = fmul fast float %4746, %4743
  %4748 = icmp eq i32 %4741, 3
  %4749 = select i1 %4748, float 1.000000e+00, float %4747
  %4750 = call float @dx.op.binary.f32(i32 35, float %4314, float %4749)  ; FMax(a,b)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fcmp fast une float %4751, 0.000000e+00
  %4753 = fsub fast float -0.000000e+00, %187
  %4754 = fsub fast float -0.000000e+00, %188
  %4755 = fsub fast float -0.000000e+00, %189
  br i1 %4752, label %4756, label %4918

; <label>:4756                                    ; preds = %4735
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fmul fast float %4751, 2.500000e+00
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4751, 0x4013FFFFE0000000
  %4761 = fadd fast float %4760, 0xBFFFFFFFE0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4751, 0x4004000020000000
  %4764 = fadd fast float %4763, 0xBFF8000040000000
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4767 = fmul fast float %4340, 1.000000e+01
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4768, 2.000000e+00
  %4770 = fsub fast float 3.000000e+00, %4769
  %4771 = fmul fast float %4768, %4768
  %4772 = fmul fast float %4771, %4770
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = fsub fast float 0x3FE3333340000000, %4361
  %4775 = fmul fast float %4774, 0x400AAAAAA0000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4773, %4776
  %4778 = fmul fast float %4373, 0x3FEA2B8620000000
  %4779 = fmul fast float %4374, 0x3FEA2B8620000000
  %4780 = fmul fast float %4375, 0x3FEA2B8620000000
  %4781 = fadd fast float %4778, 0x3FC81DFBA0000000
  %4782 = fmul fast float %4781, %4373
  %4783 = fadd fast float %4782, 0x3F910E6020000000
  %4784 = fadd fast float %4779, 0x3FC81DFBA0000000
  %4785 = fmul fast float %4784, %4374
  %4786 = fadd fast float %4785, 0x3F910E6020000000
  %4787 = fadd fast float %4780, 0x3FC81DFBA0000000
  %4788 = fmul fast float %4787, %4375
  %4789 = fadd fast float %4788, 0x3F910E6020000000
  %4790 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = fsub fast float %4790, %4373
  %4794 = fsub fast float %4791, %4374
  %4795 = fsub fast float %4792, %4375
  %4796 = fmul fast float %4793, %4766
  %4797 = fmul fast float %4796, %4777
  %4798 = fmul fast float %4794, %4766
  %4799 = fmul fast float %4798, %4777
  %4800 = fmul fast float %4795, %4766
  %4801 = fmul fast float %4800, %4777
  %4802 = fadd fast float %4797, %4373
  %4803 = fadd fast float %4799, %4374
  %4804 = fadd fast float %4801, %4375
  %4805 = fmul fast float %4311, %4311
  %4806 = fmul fast float %4805, %4805
  %4807 = fadd fast float %4762, 1.000000e+00
  %4808 = fsub fast float %4807, %4777
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fsub fast float 1.000000e+00, %4806
  %4813 = call float @dx.op.binary.f32(i32 36, float %4809, float %4812)  ; FMin(a,b)
  %4814 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4813, float %4814)  ; FMax(a,b)
  %4816 = fadd fast float %4811, 0xBFE4CCCCC0000000
  %4817 = fmul fast float %4816, 0x4006DB6DA0000000
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4818, 2.000000e+00
  %4820 = fsub fast float 3.000000e+00, %4819
  %4821 = bitcast float %4358 to i32
  %4822 = ashr i32 %4821, 1
  %4823 = add nsw i32 %4822, 532487669
  %4824 = bitcast i32 %4823 to float
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = fmul fast float %4828, 2.000000e+00
  %4830 = bitcast float %4359 to i32
  %4831 = ashr i32 %4830, 1
  %4832 = add nsw i32 %4831, 532487669
  %4833 = bitcast i32 %4832 to float
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = fmul fast float %4837, 2.000000e+00
  %4839 = bitcast float %4360 to i32
  %4840 = ashr i32 %4839, 1
  %4841 = add nsw i32 %4840, 532487669
  %4842 = bitcast i32 %4841 to float
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = bitcast float %4843 to i32
  %4845 = sub nsw i32 2129859010, %4844
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, 2.000000e+00
  %4848 = fsub fast float 0x4002A9FBE0000000, %4829
  %4849 = fadd fast float %4829, 0x3FD54FDF00000000
  %4850 = bitcast float %4849 to i32
  %4851 = sub nsw i32 2129859010, %4850
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4853, %4853
  %4855 = fsub fast float 0x4002A9FBE0000000, %4838
  %4856 = fadd fast float %4838, 0x3FD54FDF00000000
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = fmul fast float %4859, %4855
  %4861 = fmul fast float %4860, %4860
  %4862 = fsub fast float 0x4002A9FBE0000000, %4847
  %4863 = fadd fast float %4847, 0x3FD54FDF00000000
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4867, %4867
  %4869 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4854)  ; FMax(a,b)
  %4870 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4861)  ; FMax(a,b)
  %4871 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4868)  ; FMax(a,b)
  %4872 = fsub fast float 1.000000e+00, %4757
  %4873 = fadd fast float %4872, %4773
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = fsub fast float 1.000000e+00, %4749
  %4876 = fmul fast float %4815, %4875
  %4877 = fmul fast float %4818, %4818
  %4878 = fmul fast float %4877, %4876
  %4879 = fmul fast float %4878, %4820
  %4880 = fmul fast float %4875, 0xBFE99999A0000000
  %4881 = fmul fast float %4880, %4766
  %4882 = fmul fast float %4881, %4777
  %4883 = fadd fast float %4882, 1.000000e+00
  %4884 = fadd fast float %4361, -1.000000e+00
  %4885 = fmul fast float %4883, %4884
  %4886 = fadd fast float %4885, 1.000000e+00
  %4887 = fsub fast float %4869, %4358
  %4888 = fsub fast float %4870, %4359
  %4889 = fsub fast float %4871, %4360
  %4890 = fmul fast float %4879, %4887
  %4891 = fmul fast float %4879, %4888
  %4892 = fmul fast float %4879, %4889
  %4893 = fadd fast float %4890, %4358
  %4894 = fadd fast float %4891, %4359
  %4895 = fadd fast float %4892, %4360
  %4896 = fsub fast float %111, %4299
  %4897 = fsub fast float %112, %4300
  %4898 = fsub fast float %113, %4301
  %4899 = fmul fast float %4879, %4896
  %4900 = fmul fast float %4879, %4897
  %4901 = fmul fast float %4879, %4898
  %4902 = fadd fast float %4899, %4299
  %4903 = fadd fast float %4900, %4300
  %4904 = fadd fast float %4901, %4301
  %4905 = fmul fast float %4879, %4874
  %4906 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = fmul fast float %4905, %4907
  %4909 = fadd fast float %4908, %4906
  %4910 = fsub fast float 1.000000e+00, %4311
  %4911 = fmul fast float %4879, %4910
  %4912 = fadd fast float %4911, %4311
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = call float @dx.op.unary.f32(i32 25, float %4913)  ; Rsqrt(value)
  %4915 = fmul fast float %4902, %4914
  %4916 = fmul fast float %4903, %4914
  %4917 = fmul fast float %4904, %4914
  br label %4918

; <label>:4918                                    ; preds = %4756, %4735
  %4919 = phi float [ %4802, %4756 ], [ %4373, %4735 ]
  %4920 = phi float [ %4803, %4756 ], [ %4374, %4735 ]
  %4921 = phi float [ %4804, %4756 ], [ %4375, %4735 ]
  %4922 = phi float [ %4893, %4756 ], [ %4358, %4735 ]
  %4923 = phi float [ %4894, %4756 ], [ %4359, %4735 ]
  %4924 = phi float [ %4895, %4756 ], [ %4360, %4735 ]
  %4925 = phi float [ %4915, %4756 ], [ %4299, %4735 ]
  %4926 = phi float [ %4916, %4756 ], [ %4300, %4735 ]
  %4927 = phi float [ %4917, %4756 ], [ %4301, %4735 ]
  %4928 = phi float [ %4909, %4756 ], [ %4361, %4735 ]
  %4929 = phi float [ %4912, %4756 ], [ %4311, %4735 ]
  %4930 = fsub fast float -0.000000e+00, %169
  %4931 = select i1 %261, float 0.000000e+00, float %4924
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = fmul fast float %4934, 2.000000e+00
  %4936 = fmul fast float %4935, %4925
  %4937 = fmul fast float %4935, %4926
  %4938 = fmul fast float %4935, %4927
  %4939 = fsub fast float %187, %4936
  %4940 = fsub fast float %188, %4937
  %4941 = fsub fast float %189, %4938
  %4942 = call float @dx.op.binary.f32(i32 36, float %4929, float 1.000000e+00)  ; FMin(a,b)
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = bitcast float %4943 to i32
  %4945 = ashr i32 %4944, 1
  %4946 = add nsw i32 %4945, 532487669
  %4947 = bitcast i32 %4946 to float
  %4948 = fsub fast float 1.000000e+00, %4928
  %4949 = call float @dx.op.binary.f32(i32 35, float %4948, float 0x3F847AE140000000)  ; FMax(a,b)
  %4950 = fmul fast float %4949, %4949
  %4951 = fmul fast float %4950, %4950
  %4952 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4947, float %4951, float %4952, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = fsub fast float 1.000000e+00, %4929
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fsub fast float 1.000000e+00, %72
  %4960 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4960, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4962 = fdiv fast float %4959, %4961
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 5.000000e-01
  %4966 = fadd fast float %4965, 5.000000e-01
  %4967 = fmul fast float %4966, %72
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, %4962
  %4971 = fadd fast float %4967, %4970
  %4972 = fsub fast float 5.000000e-01, %4965
  %4973 = fmul fast float %4972, %4919
  %4974 = fmul fast float %4972, %4920
  %4975 = fmul fast float %4972, %4921
  %4976 = fadd fast float %4971, %4973
  %4977 = fadd fast float %4971, %4974
  %4978 = fadd fast float %4971, %4975
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4980, 5.000000e-01
  %4982 = fadd fast float %4981, 5.000000e-01
  %4983 = fmul fast float %4982, %72
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fmul fast float %4985, %4962
  %4987 = fadd fast float %4983, %4986
  %4988 = fsub fast float 5.000000e-01, %4981
  %4989 = fmul fast float %4988, %4919
  %4990 = fmul fast float %4988, %4920
  %4991 = fmul fast float %4988, %4921
  %4992 = fadd fast float %4987, %4989
  %4993 = fadd fast float %4987, %4990
  %4994 = fadd fast float %4987, %4991
  %4995 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = call float @dx.op.binary.f32(i32 36, float %4919, float %4997)  ; FMin(a,b)
  %4999 = fmul fast float %4998, %4943
  %5000 = fsub fast float 1.000000e+00, %4999
  %5001 = bitcast float %5000 to i32
  %5002 = sub nsw i32 2129859010, %5001
  %5003 = bitcast i32 %5002 to float
  %5004 = call float @dx.op.binary.f32(i32 36, float %4920, float %4997)  ; FMin(a,b)
  %5005 = fmul fast float %5004, %4943
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = call float @dx.op.binary.f32(i32 36, float %4921, float %4997)  ; FMin(a,b)
  %5011 = fmul fast float %5010, %4943
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %4942, %73
  %5017 = fmul fast float %5016, %4976
  %5018 = fmul fast float %5017, %5003
  %5019 = fmul fast float %4942, %74
  %5020 = fmul fast float %5019, %4977
  %5021 = fmul fast float %5020, %5009
  %5022 = fmul fast float %4942, %75
  %5023 = fmul fast float %5022, %4978
  %5024 = fmul fast float %5023, %5015
  %5025 = call float @dx.op.binary.f32(i32 36, float %4922, float %4997)  ; FMin(a,b)
  %5026 = fmul fast float %5025, %4943
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = call float @dx.op.binary.f32(i32 36, float %4923, float %4997)  ; FMin(a,b)
  %5032 = fmul fast float %5031, %4943
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = call float @dx.op.binary.f32(i32 36, float %4931, float %4997)  ; FMin(a,b)
  %5038 = fmul fast float %5037, %4943
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5016, %4992
  %5044 = fmul fast float %5043, %5030
  %5045 = fmul fast float %5019, %4993
  %5046 = fmul fast float %5045, %5036
  %5047 = fmul fast float %5022, %4994
  %5048 = fmul fast float %5047, %5042
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5021, float %5024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = select i1 %261, float 0.000000e+00, float %5018
  %5051 = select i1 %261, float %5049, float %5021
  %5052 = select i1 %261, float 0.000000e+00, float %5024
  %5053 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5046, float %5048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = select i1 %261, float 0.000000e+00, float %5044
  %5055 = select i1 %261, float %5053, float %5046
  %5056 = select i1 %261, float 0.000000e+00, float %5048
  %5057 = fmul fast float %4933, 9.843750e-01
  %5058 = fmul fast float %4928, 9.843750e-01
  %5059 = fadd fast float %5057, 7.812500e-03
  %5060 = fadd fast float %5058, 7.812500e-03
  %5061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 3
  %5064 = fmul fast float %5062, %4922
  %5065 = fmul fast float %5062, %4923
  %5066 = fmul fast float %5062, %4931
  %5067 = fadd fast float %5064, %5063
  %5068 = fadd fast float %5065, %5063
  %5069 = fadd fast float %5066, %5063
  %5070 = fcmp fast ogt float %4312, 0.000000e+00
  br i1 %5070, label %5071, label %5097

; <label>:5071                                    ; preds = %4918
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4312, float %4933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = extractvalue %dx.types.ResRet.f32 %5072, 1
  %5075 = extractvalue %dx.types.ResRet.f32 %5072, 2
  %5076 = fadd fast float %5073, -5.000000e-01
  %5077 = fadd fast float %5074, -5.000000e-01
  %5078 = fadd fast float %5075, -5.000000e-01
  %5079 = fsub fast float 1.000000e+00, %4922
  %5080 = fsub fast float 1.000000e+00, %4923
  %5081 = fsub fast float 1.000000e+00, %4931
  %5082 = fmul fast float %4922, 4.000000e+00
  %5083 = fmul fast float %5082, %5079
  %5084 = fmul fast float %5083, %5076
  %5085 = fmul fast float %4923, 4.000000e+00
  %5086 = fmul fast float %5085, %5080
  %5087 = fmul fast float %5086, %5077
  %5088 = fmul fast float %4931, 4.000000e+00
  %5089 = fmul fast float %5088, %5081
  %5090 = fmul fast float %5089, %5078
  %5091 = fadd fast float %5084, %5067
  %5092 = fadd fast float %5087, %5068
  %5093 = fadd fast float %5090, %5069
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  br label %5097

; <label>:5097                                    ; preds = %5071, %4918
  %5098 = phi float [ %5094, %5071 ], [ %5067, %4918 ]
  %5099 = phi float [ %5095, %5071 ], [ %5068, %4918 ]
  %5100 = phi float [ %5096, %5071 ], [ %5069, %4918 ]
  %5101 = call float @dx.op.binary.f32(i32 35, float %5099, float %5100)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5098, float %5101)  ; FMax(a,b)
  %5103 = fsub fast float 1.000000e+00, %5102
  %5104 = fmul fast float %5102, %4928
  %5105 = fadd fast float %5104, %4928
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5108 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5109 = fmul fast float %5105, %5107
  %5110 = fadd fast float %5109, %5108
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fsub fast float 1.000000e+00, %4954
  %5113 = fadd fast float %5112, %5111
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fcmp fast olt float %5114, 1.000000e+00
  br i1 %5115, label %5116, label %5592

; <label>:5116                                    ; preds = %5097
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5120 = fmul fast float %5118, %104
  %5121 = fmul fast float %5119, %105
  %5122 = fptoui float %5120 to i32
  %5123 = fptoui float %5121 to i32
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5127 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5128 = fadd fast float %92, -4.000000e+00
  %5129 = call float @dx.op.binary.f32(i32 35, float %5128, float 0.000000e+00)  ; FMax(a,b)
  %5130 = fadd fast float %5129, %5125
  %5131 = fmul fast float %5130, %5126
  %5132 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5133 = fmul fast float %5132, %5127
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5136 = fmul fast float %5133, %5135
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.i32 %5138, 1
  %5140 = add i32 %5139, -1
  %5141 = uitofp i32 %5139 to float
  %5142 = fmul fast float %5141, %5137
  %5143 = fptoui float %5142 to i32
  %5144 = call i32 @dx.op.binary.i32(i32 40, i32 %5143, i32 %5140)  ; UMin(a,b)
  %5145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.i32 %5145, 2
  %5147 = extractvalue %dx.types.CBufRet.i32 %5145, 3
  %5148 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5123, i32 %5146, i32 %5122)  ; UMad(a,b,c)
  %5149 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5144, i32 %5147, i32 %5148)  ; UMad(a,b,c)
  %5150 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5151 = fptoui float %5150 to i32
  %5152 = lshr i32 %5151, 5
  %5153 = call i32 @dx.op.binary.i32(i32 40, i32 %5152, i32 8191)  ; UMin(a,b)
  %5154 = fsub fast float %4736, %169
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fcmp fast ogt float %5155, 0.000000e+00
  %5157 = fcmp fast ogt float %4941, 0.000000e+00
  %5158 = and i1 %5157, %5156
  br i1 %5158, label %5159, label %5188

; <label>:5159                                    ; preds = %5116
  %5160 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.binary.f32(i32 35, float %5160, float -1.000000e+00)  ; FMax(a,b)
  %5162 = call float @dx.op.binary.f32(i32 36, float %5161, float 1.000000e+00)  ; FMin(a,b)
  %5163 = fmul fast float %5162, %5162
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = fmul fast float %5164, 0x3FFC6E2300000000
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = fcmp fast ogt float %5166, 0.000000e+00
  %5168 = call float @dx.op.unary.f32(i32 24, float %5166)  ; Sqrt(value)
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = call float @dx.op.unary.f32(i32 23, float %5169)  ; Log(value)
  %5171 = fmul fast float %5170, 5.000000e+00
  %5172 = call float @dx.op.unary.f32(i32 21, float %5171)  ; Exp(value)
  %5173 = fmul fast float %5172, 0x3FEF591A60000000
  %5174 = fadd fast float %5173, 0x3F94DCB540000000
  %5175 = select i1 %5167, float %5174, float 1.000000e+00
  %5176 = fcmp fast oge float %5175, 1.000000e+00
  %5177 = fmul fast float %5160, 2.000000e+00
  %5178 = fadd fast float %5177, %4941
  %5179 = select i1 %5176, float %5178, float %4941
  %5180 = fsub fast float %5179, %4941
  %5181 = fmul fast float %5180, %5155
  %5182 = fadd fast float %5181, %4941
  %5183 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %5182, float %4939, float %4940, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.unary.f32(i32 25, float %5183)  ; Rsqrt(value)
  %5185 = fmul fast float %5184, %4939
  %5186 = fmul fast float %5184, %4940
  %5187 = fmul fast float %5182, %5184
  br label %5188

; <label>:5188                                    ; preds = %5159, %5116
  %5189 = phi float [ %5185, %5159 ], [ %4939, %5116 ]
  %5190 = phi float [ %5186, %5159 ], [ %4940, %5116 ]
  %5191 = phi float [ %5187, %5159 ], [ %4941, %5116 ]
  %5192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.i32 %5192, 2
  %5194 = add nsw i32 %5193, -1
  %5195 = call i32 @dx.op.binary.i32(i32 37, i32 %5194, i32 0)  ; IMax(a,b)
  %5196 = shl i32 %5153, 2
  %5197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.i32 %5197, 0
  %5199 = lshr i32 %5198, 16
  %5200 = and i32 %5198, 65535
  %5201 = lshr i32 %5198, 21
  %5202 = lshr i32 %5200, 5
  %5203 = call i32 @dx.op.binary.i32(i32 40, i32 %5202, i32 %5195)  ; UMin(a,b)
  %5204 = icmp ugt i32 %5201, %5203
  br i1 %5204, label %5568, label %5205

; <label>:5205                                    ; preds = %5188
  br label %5206

; <label>:5206                                    ; preds = %5560, %5205
  %5207 = phi float [ %5561, %5560 ], [ 0.000000e+00, %5205 ]
  %5208 = phi float [ %5562, %5560 ], [ 0.000000e+00, %5205 ]
  %5209 = phi float [ %5563, %5560 ], [ 0.000000e+00, %5205 ]
  %5210 = phi float [ %5564, %5560 ], [ 1.000000e+00, %5205 ]
  %5211 = phi i32 [ %5565, %5560 ], [ %5201, %5205 ]
  %5212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.i32 %5212, 2
  %5214 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5149, i32 %5213, i32 %5211)  ; UMad(a,b,c)
  %5215 = shl i32 %5214, 2
  %5216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.i32 %5216, 0
  %5218 = shl i32 %5211, 5
  %5219 = sub nsw i32 %5199, %5218
  %5220 = call i32 @dx.op.binary.i32(i32 37, i32 %5219, i32 0)  ; IMax(a,b)
  %5221 = call i32 @dx.op.binary.i32(i32 38, i32 %5220, i32 31)  ; IMin(a,b)
  %5222 = sub nsw i32 1, %5199
  %5223 = add nsw i32 %5222, %5200
  %5224 = call i32 @dx.op.binary.i32(i32 37, i32 %5223, i32 0)  ; IMax(a,b)
  %5225 = call i32 @dx.op.binary.i32(i32 38, i32 %5224, i32 32)  ; IMin(a,b)
  %5226 = and i32 %5225, 31
  %5227 = shl i32 -1, %5226
  %5228 = xor i32 %5227, -1
  %5229 = and i32 %5221, 31
  %5230 = shl i32 %5228, %5229
  %5231 = icmp eq i32 %5225, 32
  %5232 = select i1 %5231, i32 -1, i32 %5230
  %5233 = and i32 %5232, %5217
  %5234 = icmp eq i32 %5233, 0
  br i1 %5234, label %5560, label %5235

; <label>:5235                                    ; preds = %5206
  br label %5236

; <label>:5236                                    ; preds = %5343, %5235
  %5237 = phi float [ %5344, %5343 ], [ %5207, %5235 ]
  %5238 = phi float [ %5345, %5343 ], [ %5208, %5235 ]
  %5239 = phi float [ %5346, %5343 ], [ %5209, %5235 ]
  %5240 = phi float [ %5347, %5343 ], [ %5210, %5235 ]
  %5241 = phi i32 [ %5246, %5343 ], [ %5233, %5235 ]
  %5242 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5241)  ; FirstbitLo(value)
  %5243 = add i32 %5242, %5218
  %5244 = and i32 %5242, 31
  %5245 = shl i32 1, %5244
  %5246 = xor i32 %5245, %5241
  %5247 = mul i32 %5243, 72
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.ResRet.f32 %5248, 2
  %5252 = add i32 %5247, 12
  %5253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.i32 %5253, 0
  %5255 = add i32 %5247, 16
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = add i32 %5247, 28
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = add i32 %5247, 32
  %5264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = extractvalue %dx.types.ResRet.f32 %5264, 3
  %5269 = add i32 %5247, 48
  %5270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5271 = extractvalue %dx.types.ResRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.ResRet.f32 %5270, 1
  %5273 = add i32 %5247, 56
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = add i32 %5247, 64
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = mul i32 %5243, 60
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 1
  %5285 = extractvalue %dx.types.ResRet.f32 %5282, 2
  %5286 = add i32 %5281, 12
  %5287 = add i32 %5281, 48
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = and i32 %5254, 32767
  %5293 = bitcast float %5249 to i32
  %5294 = icmp eq i32 %5293, -1
  %5295 = bitcast float %5250 to i32
  %5296 = and i32 %5254, 32768
  %5297 = icmp ne i32 %5296, 0
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = fsub fast float %5283, %5299
  %5303 = fsub fast float %5284, %5300
  %5304 = fsub fast float %5285, %5301
  %5305 = fsub fast float %167, %5302
  %5306 = fsub fast float %168, %5303
  %5307 = fsub fast float %169, %5304
  %5308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.ResRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.ResRet.f32 %5308, 2
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5309, float %5310, float %5311)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = add i32 %5281, 24
  %5314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = add i32 %5281, 36
  %5320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 6, float %5312)  ; FAbs(value)
  %5326 = call float @dx.op.unary.f32(i32 6, float %5318)  ; FAbs(value)
  %5327 = call float @dx.op.unary.f32(i32 6, float %5324)  ; FAbs(value)
  %5328 = fsub fast float %5289, %5325
  %5329 = fsub fast float %5290, %5326
  %5330 = fsub fast float %5291, %5327
  %5331 = fmul fast float %5328, %5257
  %5332 = fmul fast float %5329, %5258
  %5333 = fmul fast float %5330, %5259
  %5334 = call float @dx.op.binary.f32(i32 36, float %5332, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.binary.f32(i32 36, float %5331, float %5334)  ; FMin(a,b)
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = call float @dx.op.binary.f32(i32 36, float %5240, float %5336)  ; FMin(a,b)
  %5338 = uitofp i1 %5297 to float
  %5339 = fadd fast float %5155, 1.000000e+00
  %5340 = fsub fast float %5339, %5338
  %5341 = fmul fast float %5337, %5340
  %5342 = fcmp fast ogt float %5341, 0.000000e+00
  br i1 %5342, label %5349, label %5343

; <label>:5343                                    ; preds = %5491, %5236
  %5344 = phi float [ %5555, %5491 ], [ %5237, %5236 ]
  %5345 = phi float [ %5556, %5491 ], [ %5238, %5236 ]
  %5346 = phi float [ %5557, %5491 ], [ %5239, %5236 ]
  %5347 = phi float [ %5558, %5491 ], [ %5240, %5236 ]
  %5348 = icmp eq i32 %5241, %5245
  br i1 %5348, label %5559, label %5236

; <label>:5349                                    ; preds = %5236
  br i1 %5294, label %5407, label %5350

; <label>:5350                                    ; preds = %5349
  %5351 = fsub fast float -0.000000e+00, %5309
  %5352 = fsub fast float -0.000000e+00, %5310
  %5353 = fsub fast float -0.000000e+00, %5311
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fadd fast float %5356, %5272
  %5358 = fadd fast float %5271, %5356
  %5359 = fsub fast float -0.000000e+00, %5358
  %5360 = fcmp ogt float %5354, -0.000000e+00
  %5361 = select i1 %5360, float %5359, float %5357
  %5362 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5363 = fdiv fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5361, %5363
  %5365 = call float @dx.op.binary.f32(i32 35, float %5364, float 0.000000e+00)  ; FMax(a,b)
  %5366 = fsub fast float -0.000000e+00, %5315
  %5367 = fsub fast float -0.000000e+00, %5316
  %5368 = fsub fast float -0.000000e+00, %5317
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fadd fast float %5371, %5276
  %5373 = fadd fast float %5275, %5371
  %5374 = fsub fast float -0.000000e+00, %5373
  %5375 = fcmp ogt float %5369, -0.000000e+00
  %5376 = select i1 %5375, float %5374, float %5372
  %5377 = call float @dx.op.unary.f32(i32 6, float %5370)  ; FAbs(value)
  %5378 = fdiv fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5376, %5378
  %5380 = call float @dx.op.binary.f32(i32 35, float %5379, float 0.000000e+00)  ; FMax(a,b)
  %5381 = fsub fast float -0.000000e+00, %5321
  %5382 = fsub fast float -0.000000e+00, %5322
  %5383 = fsub fast float -0.000000e+00, %5323
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fadd fast float %5386, %5280
  %5388 = fadd fast float %5279, %5386
  %5389 = fsub fast float -0.000000e+00, %5388
  %5390 = fcmp ogt float %5384, -0.000000e+00
  %5391 = select i1 %5390, float %5389, float %5387
  %5392 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5393 = fdiv fast float 1.000000e+00, %5392
  %5394 = fmul fast float %5391, %5393
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float 0.000000e+00)  ; FMax(a,b)
  %5396 = call float @dx.op.binary.f32(i32 36, float %5380, float %5395)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5365, float %5396)  ; FMin(a,b)
  %5398 = fmul fast float %5397, %5189
  %5399 = fmul fast float %5397, %5190
  %5400 = fmul fast float %5397, %5191
  %5401 = fadd fast float %5398, %167
  %5402 = fadd fast float %5399, %168
  %5403 = fadd fast float %5400, %169
  %5404 = fsub fast float %5401, %5249
  %5405 = fsub fast float %5402, %5250
  %5406 = fsub fast float %5403, %5251
  br label %5414

; <label>:5407                                    ; preds = %5349
  %5408 = fmul fast float %5189, 8.096000e+03
  %5409 = fmul fast float %5190, 8.096000e+03
  %5410 = fmul fast float %5191, 8.096000e+03
  %5411 = fadd fast float %5408, %167
  %5412 = fadd fast float %5409, %168
  %5413 = fadd fast float %5410, %169
  br label %5414

; <label>:5414                                    ; preds = %5407, %5350
  %5415 = phi float [ %5189, %5407 ], [ %5404, %5350 ]
  %5416 = phi float [ %5190, %5407 ], [ %5405, %5350 ]
  %5417 = phi float [ %5191, %5407 ], [ %5406, %5350 ]
  %5418 = phi float [ %5411, %5407 ], [ %5401, %5350 ]
  %5419 = phi float [ %5412, %5407 ], [ %5402, %5350 ]
  %5420 = phi float [ %5413, %5407 ], [ %5403, %5350 ]
  %5421 = fcmp fast olt float %5268, 1.000000e+00
  br i1 %5421, label %5422, label %5453, !dx.controlflow.hints !97

; <label>:5422                                    ; preds = %5414
  %5423 = fmul fast float %5417, %5266
  %5424 = fmul fast float %5416, %5267
  %5425 = fsub fast float %5423, %5424
  %5426 = fmul fast float %5415, %5267
  %5427 = fmul fast float %5417, %5265
  %5428 = fsub fast float %5426, %5427
  %5429 = fmul fast float %5416, %5265
  %5430 = fmul fast float %5415, %5266
  %5431 = fsub fast float %5429, %5430
  %5432 = fmul fast float %5425, 2.000000e+00
  %5433 = fmul fast float %5428, 2.000000e+00
  %5434 = fmul fast float %5431, 2.000000e+00
  %5435 = fmul fast float %5432, %5268
  %5436 = fmul fast float %5433, %5268
  %5437 = fmul fast float %5434, %5268
  %5438 = fmul fast float %5434, %5266
  %5439 = fmul fast float %5433, %5267
  %5440 = fmul fast float %5432, %5267
  %5441 = fmul fast float %5434, %5265
  %5442 = fmul fast float %5433, %5265
  %5443 = fmul fast float %5432, %5266
  %5444 = fadd fast float %5438, %5415
  %5445 = fadd fast float %5444, %5435
  %5446 = fsub fast float %5445, %5439
  %5447 = fsub fast float %5416, %5441
  %5448 = fadd fast float %5447, %5436
  %5449 = fadd fast float %5448, %5440
  %5450 = fadd fast float %5437, %5417
  %5451 = fsub fast float %5450, %5443
  %5452 = fadd fast float %5451, %5442
  br label %5453

; <label>:5453                                    ; preds = %5422, %5414
  %5454 = phi float [ %5446, %5422 ], [ %5415, %5414 ]
  %5455 = phi float [ %5449, %5422 ], [ %5416, %5414 ]
  %5456 = phi float [ %5452, %5422 ], [ %5417, %5414 ]
  br i1 %5294, label %5488, label %5457

; <label>:5457                                    ; preds = %5453
  %5458 = fmul fast float %4928, 0x400187C840000000
  %5459 = fadd fast float %5458, 0xC00EFC2120000000
  %5460 = fmul fast float %5459, %4928
  %5461 = fadd fast float %5460, 0x3FE5D16340000000
  %5462 = fmul fast float %5461, %4928
  %5463 = fadd fast float %5462, 1.000000e+00
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fsub fast float %5418, %167
  %5466 = fsub fast float %5419, %168
  %5467 = fsub fast float %5420, %169
  %5468 = fsub fast float %5418, %5249
  %5469 = fsub fast float %5419, %5250
  %5470 = fsub fast float %5420, %5251
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fadd fast float %5472, 0x3EE4F8B580000000
  %5474 = fdiv fast float %5471, %5473
  %5475 = bitcast float %5474 to i32
  %5476 = ashr i32 %5475, 1
  %5477 = add nsw i32 %5476, 532487669
  %5478 = bitcast i32 %5477 to float
  %5479 = fmul fast float %5478, %5464
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %5480, 0x4009981AE0000000
  %5482 = fsub fast float 0x40111BBD80000000, %5481
  %5483 = fmul fast float %5482, %5480
  %5484 = fadd fast float %5483, 0xC0009F6020000000
  %5485 = fmul fast float %5484, %5480
  %5486 = fadd fast float %5485, 1.000000e+00
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  br label %5491

; <label>:5488                                    ; preds = %5453
  %5489 = icmp ne i32 %5295, -1
  %5490 = zext i1 %5489 to i32
  br label %5491

; <label>:5491                                    ; preds = %5488, %5457
  %5492 = phi float [ %4928, %5488 ], [ %5487, %5457 ]
  %5493 = phi i32 [ %5490, %5488 ], [ 0, %5457 ]
  %5494 = fmul float %5492, 5.000000e+00
  %5495 = fsub float 5.000000e+00, %5494
  %5496 = icmp ne i32 %5493, 0
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 3
  %5499 = fadd fast float %5498, %5495
  %5500 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5499)  ; FMax(a,b)
  %5501 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5502 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5503 = fadd fast float %5502, %5501
  %5504 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5505 = fadd fast float %5503, %5504
  %5506 = fcmp fast oeq float %5505, 0.000000e+00
  %5507 = fdiv fast float 1.000000e+00, %5505
  %5508 = select i1 %5506, float 1.000000e+00, float %5507
  %5509 = fmul fast float %5508, %5454
  %5510 = fmul fast float %5508, %5455
  %5511 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5512 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5513 = fsub fast float 1.000000e+00, %5511
  %5514 = fsub fast float 1.000000e+00, %5512
  %5515 = fcmp fast oge float %5509, 0.000000e+00
  %5516 = fcmp fast oge float %5510, 0.000000e+00
  %5517 = select i1 %5515, float 1.000000e+00, float -1.000000e+00
  %5518 = select i1 %5516, float 1.000000e+00, float -1.000000e+00
  %5519 = fcmp fast ole float %5456, 0.000000e+00
  %5520 = fmul fast float %5517, %5513
  %5521 = fmul fast float %5518, %5514
  %5522 = select i1 %5519, float %5520, float %5509
  %5523 = select i1 %5519, float %5521, float %5510
  %5524 = fmul fast float %5522, 5.000000e-01
  %5525 = fmul fast float %5523, 5.000000e-01
  %5526 = fadd fast float %5524, 5.000000e-01
  %5527 = fadd fast float %5525, 5.000000e-01
  %5528 = uitofp i32 %5292 to float
  %5529 = call float @dx.op.binary.f32(i32 36, float %5500, float 3.000000e+00)  ; FMin(a,b)
  %5530 = fadd fast float %5529, 2.000000e+00
  %5531 = call float @dx.op.unary.f32(i32 21, float %5530)  ; Exp(value)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5533 = fmul fast float %5532, %5531
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fsub fast float 1.000000e+00, %5534
  %5536 = fmul fast float %5526, %5535
  %5537 = fmul fast float %5527, %5535
  %5538 = fadd fast float %5536, %5533
  %5539 = fadd fast float %5537, %5533
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5538, float %5539, float %5528, float undef, i32 0, i32 0, i32 undef, float %5500)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.ResRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.ResRet.f32 %5540, 2
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5546 = fmul fast float %5545, %5262
  %5547 = call float @dx.op.binary.f32(i32 36, float %4995, float %5546)  ; FMin(a,b)
  %5548 = select i1 %5496, float %5547, float %5546
  %5549 = fmul fast float %5541, %5341
  %5550 = fmul fast float %5549, %5548
  %5551 = fmul fast float %5542, %5341
  %5552 = fmul fast float %5551, %5548
  %5553 = fmul fast float %5543, %5341
  %5554 = fmul fast float %5553, %5548
  %5555 = fadd fast float %5550, %5237
  %5556 = fadd fast float %5552, %5238
  %5557 = fadd fast float %5554, %5239
  %5558 = fsub fast float %5240, %5341
  br label %5343

; <label>:5559                                    ; preds = %5343
  br label %5560

; <label>:5560                                    ; preds = %5559, %5206
  %5561 = phi float [ %5207, %5206 ], [ %5344, %5559 ]
  %5562 = phi float [ %5208, %5206 ], [ %5345, %5559 ]
  %5563 = phi float [ %5209, %5206 ], [ %5346, %5559 ]
  %5564 = phi float [ %5210, %5206 ], [ %5347, %5559 ]
  %5565 = add i32 %5211, 1
  %5566 = icmp ugt i32 %5565, %5203
  br i1 %5566, label %5567, label %5206, !llvm.loop !98

; <label>:5567                                    ; preds = %5560
  br label %5568

; <label>:5568                                    ; preds = %5567, %5188
  %5569 = phi float [ 0.000000e+00, %5188 ], [ %5561, %5567 ]
  %5570 = phi float [ 0.000000e+00, %5188 ], [ %5562, %5567 ]
  %5571 = phi float [ 0.000000e+00, %5188 ], [ %5563, %5567 ]
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5569, float %5570, float %5571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = select i1 %261, float 0.000000e+00, float %5569
  %5574 = select i1 %261, float %5572, float %5570
  %5575 = select i1 %261, float 0.000000e+00, float %5571
  %5576 = fcmp fast olt float %5114, 0.000000e+00
  %5577 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5578 = fmul fast float %5577, %5054
  %5579 = fmul fast float %5577, %5055
  %5580 = fmul fast float %5577, %5056
  %5581 = select i1 %5576, float %5054, float %5578
  %5582 = select i1 %5576, float %5055, float %5579
  %5583 = select i1 %5576, float %5056, float %5580
  %5584 = fsub fast float 1.000000e+00, %5577
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, %5573
  %5587 = fmul fast float %5585, %5574
  %5588 = fmul fast float %5585, %5575
  %5589 = fadd fast float %5581, %5586
  %5590 = fadd fast float %5582, %5587
  %5591 = fadd fast float %5583, %5588
  br label %5592

; <label>:5592                                    ; preds = %5568, %5097
  %5593 = phi float [ %5054, %5097 ], [ %5589, %5568 ]
  %5594 = phi float [ %5055, %5097 ], [ %5590, %5568 ]
  %5595 = phi float [ %5056, %5097 ], [ %5591, %5568 ]
  %5596 = fmul fast float %5103, %5050
  %5597 = fmul fast float %5103, %5051
  %5598 = fmul fast float %5103, %5052
  %5599 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fcmp fast ogt float %5599, 0x3E7FF19E20000000
  %5601 = fdiv fast float 1.000000e+00, %5599
  %5602 = select i1 %5600, float %5601, float 0.000000e+00
  %5603 = fmul fast float %5602, %4919
  %5604 = fmul fast float %5602, %4920
  %5605 = fmul fast float %5602, %4921
  %5606 = fadd fast float %5603, -1.000000e+00
  %5607 = fadd fast float %5604, -1.000000e+00
  %5608 = fadd fast float %5605, -1.000000e+00
  %5609 = fmul fast float %5606, 5.000000e-01
  %5610 = fmul fast float %5607, 5.000000e-01
  %5611 = fmul fast float %5608, 5.000000e-01
  %5612 = fadd fast float %5609, 1.000000e+00
  %5613 = fadd fast float %5610, 1.000000e+00
  %5614 = fadd fast float %5611, 1.000000e+00
  %5615 = fmul fast float %5593, %5098
  %5616 = fmul fast float %5594, %5099
  %5617 = fmul fast float %5595, %5100
  %5618 = fsub fast float 1.000000e+00, %4933
  %5619 = bitcast float %5618 to i32
  %5620 = sitofp i32 %5619 to float
  %5621 = fmul fast float %5620, 5.000000e+00
  %5622 = fadd fast float %5621, 0xC1EFBF8940000000
  %5623 = fptosi float %5622 to i32
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %4313
  %5626 = fmul fast float %5050, %5625
  %5627 = fmul fast float %5626, %5103
  %5628 = fmul fast float %5627, %5612
  %5629 = fmul fast float %5051, %5625
  %5630 = fmul fast float %5629, %5103
  %5631 = fmul fast float %5630, %5613
  %5632 = fmul fast float %5052, %5625
  %5633 = fmul fast float %5632, %5103
  %5634 = fmul fast float %5633, %5614
  %5635 = fmul fast float %5596, %4339
  %5636 = fmul fast float %5597, %4339
  %5637 = fmul fast float %5598, %4339
  %5638 = fadd fast float %5615, %4305
  %5639 = fadd fast float %5638, %5628
  %5640 = fmul fast float %5639, %4339
  %5641 = fadd fast float %5616, %4306
  %5642 = fadd fast float %5641, %5631
  %5643 = fmul fast float %5642, %4339
  %5644 = fadd fast float %5617, %4307
  %5645 = fadd fast float %5644, %5634
  %5646 = fmul fast float %5645, %4339
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5649 = fcmp fast oeq float %5648, 0.000000e+00
  br i1 %5649, label %7191, label %5650

; <label>:5650                                    ; preds = %5592
  %5651 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5653 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5657 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5655, float %5656, float %5657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = select i1 %261, float %5659, float %5655
  %5663 = select i1 %261, float %5661, float %5656
  %5664 = select i1 %261, float %5660, float %5657
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5667 = fmul fast float %5666, %111
  %5668 = fmul fast float %5666, %112
  %5669 = fmul fast float %5666, %113
  %5670 = fadd fast float %5667, %167
  %5671 = fadd fast float %5668, %168
  %5672 = fadd fast float %5669, %169
  %5673 = fcmp fast olt float %5648, 0.000000e+00
  br i1 %5673, label %6769, label %5674

; <label>:5674                                    ; preds = %5650
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5690 = fmul fast float %5676, %5670
  %5691 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5677, float %5690)  ; FMad(a,b,c)
  %5692 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5678, float %5691)  ; FMad(a,b,c)
  %5693 = fadd fast float %5692, %5679
  %5694 = fmul fast float %5681, %5670
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5682, float %5694)  ; FMad(a,b,c)
  %5696 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5683, float %5695)  ; FMad(a,b,c)
  %5697 = fadd fast float %5696, %5684
  %5698 = fmul fast float %5686, %5670
  %5699 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5687, float %5698)  ; FMad(a,b,c)
  %5700 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5688, float %5699)  ; FMad(a,b,c)
  %5701 = fadd fast float %5700, %5689
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 3
  %5706 = fmul fast float %5705, %5693
  %5707 = fmul fast float %5705, %5697
  %5708 = fadd fast float %5706, %5703
  %5709 = fadd fast float %5707, %5704
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.CBufRet.f32 %5710, 3
  %5714 = fmul fast float %5713, %5693
  %5715 = fmul fast float %5713, %5697
  %5716 = fadd fast float %5714, %5711
  %5717 = fadd fast float %5715, %5712
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5720 = fsub fast float %5719, %5701
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = fmul fast float %5720, %5721
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5728 = fadd fast float %5727, %5725
  %5729 = fcmp fast ogt float %5728, 0.000000e+00
  br i1 %5729, label %5730, label %5754

; <label>:5730                                    ; preds = %5674
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = fsub fast float %5716, %5732
  %5735 = fsub fast float %5717, %5733
  %5736 = fcmp fast olt float %5734, 0.000000e+00
  %5737 = fcmp fast olt float %5735, 0.000000e+00
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5749 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5750 = call float @dx.op.binary.f32(i32 35, float %5747, float %5748)  ; FMax(a,b)
  %5751 = fsub fast float %5749, %5750
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fmul fast float %5752, %5724
  br label %5754

; <label>:5754                                    ; preds = %5730, %5674
  %5755 = phi float [ %5753, %5730 ], [ 0.000000e+00, %5674 ]
  %5756 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5758 = fadd fast float %5757, %5756
  %5759 = fcmp fast ogt float %5758, 0.000000e+00
  %5760 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  br i1 %5759, label %5761, label %5784

; <label>:5761                                    ; preds = %5754
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = fsub fast float %5708, %5763
  %5766 = fsub fast float %5709, %5764
  %5767 = fcmp fast olt float %5765, 0.000000e+00
  %5768 = fcmp fast olt float %5766, 0.000000e+00
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5774 = select i1 %5767, float %5770, float %5772
  %5775 = select i1 %5768, float %5771, float %5773
  %5776 = fmul fast float %5774, %5765
  %5777 = fmul fast float %5775, %5766
  %5778 = call float @dx.op.unary.f32(i32 6, float %5776)  ; FAbs(value)
  %5779 = call float @dx.op.unary.f32(i32 6, float %5777)  ; FAbs(value)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5778, float %5779)  ; FMax(a,b)
  %5781 = fsub fast float %5760, %5780
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = fmul fast float %5782, %5724
  br label %5784

; <label>:5784                                    ; preds = %5761, %5754
  %5785 = phi float [ %5783, %5761 ], [ 0.000000e+00, %5754 ]
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = fsub fast float %5693, %5790
  %5793 = fsub fast float %5697, %5791
  %5794 = fcmp fast olt float %5792, 0.000000e+00
  %5795 = fcmp fast olt float %5793, 0.000000e+00
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5801 = select i1 %5794, float %5797, float %5799
  %5802 = select i1 %5795, float %5798, float %5800
  %5803 = fmul fast float %5801, %5792
  %5804 = fmul fast float %5802, %5793
  %5805 = call float @dx.op.unary.f32(i32 6, float %5803)  ; FAbs(value)
  %5806 = call float @dx.op.unary.f32(i32 6, float %5804)  ; FAbs(value)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5808 = fsub fast float %5760, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = call float @dx.op.binary.f32(i32 36, float %5809, float %5788)  ; FMin(a,b)
  %5811 = fmul fast float %5810, %5724
  %5812 = fsub fast float %5785, %5811
  %5813 = fsub fast float %5755, %5785
  %5814 = fsub fast float %5813, %5811
  %5815 = call float @dx.op.binary.f32(i32 35, float %5785, float %5755)  ; FMax(a,b)
  %5816 = call float @dx.op.binary.f32(i32 35, float %5811, float %5815)  ; FMax(a,b)
  %5817 = fcmp fast olt float %5816, 1.000000e+00
  br i1 %5817, label %5818, label %6216, !dx.controlflow.hints !100

; <label>:5818                                    ; preds = %5784
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  %5821 = fcmp fast une float %5820, 0.000000e+00
  br i1 %5821, label %5822, label %6216, !dx.controlflow.hints !101

; <label>:5822                                    ; preds = %5818
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5828, 2
  %5832 = extractvalue %dx.types.CBufRet.f32 %5828, 3
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5836 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5838 = fmul fast float %5824, %5670
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5825, float %5838)  ; FMad(a,b,c)
  %5840 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5826, float %5839)  ; FMad(a,b,c)
  %5841 = fadd fast float %5840, %5827
  %5842 = fmul fast float %5829, %5670
  %5843 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5830, float %5842)  ; FMad(a,b,c)
  %5844 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5831, float %5843)  ; FMad(a,b,c)
  %5845 = fadd fast float %5844, %5832
  %5846 = fmul fast float %5834, %5670
  %5847 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %5835, float %5846)  ; FMad(a,b,c)
  %5848 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %5836, float %5847)  ; FMad(a,b,c)
  %5849 = fadd fast float %5848, %5837
  %5850 = fcmp fast oge float %5841, 1.000000e+00
  %5851 = fcmp fast oge float %5845, 1.000000e+00
  %5852 = or i1 %5850, %5851
  %5853 = fcmp fast olt float %5841, 0.000000e+00
  %5854 = fcmp fast olt float %5845, 0.000000e+00
  %5855 = or i1 %5853, %5854
  %5856 = or i1 %5852, %5855
  br i1 %5856, label %6216, label %5857, !dx.controlflow.hints !102

; <label>:5857                                    ; preds = %5822
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.i32 %5862, 2
  %5864 = uitofp i32 %5863 to float
  %5865 = extractvalue %dx.types.CBufRet.i32 %5862, 3
  %5866 = uitofp i32 %5865 to float
  %5867 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5868 = fmul fast float %5867, 2.000000e+00
  %5869 = fsub fast float %5841, %5859
  %5870 = fsub fast float %5845, %5860
  %5871 = fmul fast float %5868, %5869
  %5872 = fmul fast float %5868, %5870
  %5873 = fdiv fast float 1.000000e+00, %5653
  %5874 = fmul fast float %5872, %5873
  %5875 = call float @dx.op.unary.f32(i32 6, float %5874)  ; FAbs(value)
  %5876 = fmul fast float %5861, %5672
  %5877 = fmul fast float %5876, %5868
  %5878 = call float @dx.op.unary.f32(i32 6, float %5877)  ; FAbs(value)
  %5879 = call float @dx.op.unary.f32(i32 6, float %5871)  ; FAbs(value)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5878, float %5875)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5879, float %5880)  ; FMax(a,b)
  %5882 = fmul fast float %5881, 2.000000e+00
  %5883 = call float @dx.op.unary.f32(i32 23, float %5882)  ; Log(value)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5883, float %5864)  ; FMax(a,b)
  %5885 = call float @dx.op.unary.f32(i32 22, float %5884)  ; Frc(value)
  %5886 = fadd fast float %5885, 0xBFEA666660000000
  %5887 = fmul fast float %5886, 8.000000e+00
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = call float @dx.op.unary.f32(i32 27, float %5884)  ; Round_ni(value)
  %5890 = fadd fast float %5889, %5888
  %5891 = call float @dx.op.binary.f32(i32 36, float %5890, float %5866)  ; FMin(a,b)
  %5892 = call float @dx.op.unary.f32(i32 27, float %5891)  ; Round_ni(value)
  %5893 = fsub fast float -0.000000e+00, %5892
  %5894 = call float @dx.op.unary.f32(i32 21, float %5893)  ; Exp(value)
  %5895 = fmul fast float %5894, %5868
  %5896 = fmul fast float %5895, %5841
  %5897 = fmul fast float %5895, %5845
  %5898 = fmul fast float %5896, 2.500000e-01
  %5899 = fmul fast float %5897, 2.500000e-01
  %5900 = fadd fast float %5898, 5.000000e-01
  %5901 = fadd fast float %5899, 5.000000e-01
  %5902 = fsub fast float %5866, %5864
  %5903 = fptoui float %5902 to i32
  %5904 = add i32 %5903, 320
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5904)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = fcmp fast une float %5891, %5866
  %5909 = fsub fast float %5841, %5906
  %5910 = fsub fast float %5845, %5907
  %5911 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5912 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5913 = fmul fast float %5911, %5895
  %5914 = fmul fast float %5912, %5895
  %5915 = fcmp fast olt float %5913, 1.000000e+00
  %5916 = fcmp fast olt float %5914, 1.000000e+00
  %5917 = and i1 %5915, %5916
  %5918 = or i1 %5908, %5917
  br i1 %5918, label %5919, label %6216, !dx.controlflow.hints !103

; <label>:5919                                    ; preds = %5857
  %5920 = fmul fast float %5897, 5.000000e-01
  %5921 = fmul fast float %5896, 5.000000e-01
  %5922 = fadd fast float %5920, 5.000000e-01
  %5923 = fadd fast float %5921, 5.000000e-01
  %5924 = sitofp i32 %5863 to float
  %5925 = fsub fast float %5891, %5924
  %5926 = call float @dx.op.unary.f32(i32 27, float %5925)  ; Round_ni(value)
  %5927 = call float @dx.op.unary.f32(i32 22, float %5891)  ; Frc(value)
  %5928 = call float @dx.op.unary.f32(i32 22, float %5923)  ; Frc(value)
  %5929 = call float @dx.op.unary.f32(i32 22, float %5922)  ; Frc(value)
  %5930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5928, float %5929, float %5926, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.ResRet.f32 %5930, 3
  %5935 = fcmp fast ogt float %5927, 0.000000e+00
  br i1 %5935, label %5936, label %5957, !dx.controlflow.hints !104

; <label>:5936                                    ; preds = %5919
  %5937 = fadd fast float %5926, 1.000000e+00
  %5938 = call float @dx.op.unary.f32(i32 22, float %5900)  ; Frc(value)
  %5939 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5938, float %5939, float %5937, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.ResRet.f32 %5940, 3
  %5945 = fsub fast float %5941, %5931
  %5946 = fsub fast float %5942, %5932
  %5947 = fsub fast float %5943, %5933
  %5948 = fsub fast float %5944, %5934
  %5949 = fmul fast float %5945, %5927
  %5950 = fmul fast float %5946, %5927
  %5951 = fmul fast float %5947, %5927
  %5952 = fmul fast float %5948, %5927
  %5953 = fadd fast float %5949, %5931
  %5954 = fadd fast float %5950, %5932
  %5955 = fadd fast float %5951, %5933
  %5956 = fadd fast float %5952, %5934
  br label %5957

; <label>:5957                                    ; preds = %5936, %5919
  %5958 = phi float [ %5953, %5936 ], [ %5931, %5919 ]
  %5959 = phi float [ %5954, %5936 ], [ %5932, %5919 ]
  %5960 = phi float [ %5955, %5936 ], [ %5933, %5919 ]
  %5961 = phi float [ %5956, %5936 ], [ %5934, %5919 ]
  %5962 = fadd fast float %5958, -5.000000e-01
  %5963 = fadd fast float %5960, -5.000000e-01
  %5964 = fmul fast float %5962, 0xBFD5555560000000
  %5965 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5963, float %5964)  ; FMad(a,b,c)
  %5966 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5959, float 0.000000e+00)  ; FMad(a,b,c)
  %5967 = fadd fast float %5966, %5961
  %5968 = fmul fast float %5962, -7.500000e-01
  %5969 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5963, float %5968)  ; FMad(a,b,c)
  %5970 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5959, float 0.000000e+00)  ; FMad(a,b,c)
  %5971 = fadd fast float %5970, %5961
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %5979 = fsub fast float %5975, %5965
  %5980 = fsub fast float %5976, %5967
  %5981 = fsub fast float %5977, %5969
  %5982 = fsub fast float %5978, %5971
  %5983 = fmul fast float %5979, %5973
  %5984 = fmul fast float %5980, %5973
  %5985 = fmul fast float %5981, %5973
  %5986 = fmul fast float %5982, %5973
  %5987 = fadd fast float %5983, %5965
  %5988 = fadd fast float %5984, %5967
  %5989 = fadd fast float %5985, %5969
  %5990 = fadd fast float %5986, %5971
  %5991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5992 = extractvalue %dx.types.ResRet.i32 %5991, 0
  %5993 = and i32 %5992, 536870911
  %5994 = uitofp i32 %5993 to float
  %5995 = fmul fast float %5994, %5841
  %5996 = fmul fast float %5994, %5845
  %5997 = fptoui float %5995 to i32
  %5998 = fptoui float %5996 to i32
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = and i32 %6000, 31
  %6002 = lshr i32 %5997, %6001
  %6003 = lshr i32 %5998, %6001
  %6004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6005 = extractvalue %dx.types.ResRet.i32 %6004, 0
  %6006 = and i32 %6005, 31
  %6007 = shl i32 1, %6006
  %6008 = call i32 @dx.op.binary.i32(i32 40, i32 %6007, i32 4)  ; UMin(a,b)
  %6009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6010 = extractvalue %dx.types.ResRet.i32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.i32 %6009, 1
  %6012 = icmp eq i32 %6008, 0
  br i1 %6012, label %6054, label %6013

; <label>:6013                                    ; preds = %5957
  br label %6014

; <label>:6014                                    ; preds = %6042, %6013
  %6015 = phi i32 [ %6045, %6042 ], [ 0, %6013 ]
  %6016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.i32 %6016, 0
  %6018 = lshr i32 %6017, 16
  %6019 = and i32 %6018, 31
  %6020 = shl i32 %6003, %6019
  %6021 = add i32 %6020, %6002
  %6022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.i32 %6022, 0
  %6024 = and i32 %6023, 31
  %6025 = shl i32 %6021, %6024
  %6026 = add i32 %6025, %6015
  %6027 = shl i32 %6026, 2
  %6028 = add i32 %6027, 32
  %6029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6028, i32 undef)  ; BufferLoad(srv,index,wot)
  %6030 = extractvalue %dx.types.ResRet.i32 %6029, 0
  %6031 = icmp slt i32 %6030, 0
  %6032 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6015
  %6033 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6015
  %6034 = bitcast float* %6032 to i32*
  %6035 = bitcast float* %6033 to i32*
  br i1 %6031, label %6036, label %6042

; <label>:6036                                    ; preds = %6014
  %6037 = and i32 %6030, 1073741823
  %6038 = add nuw nsw i32 %6037, 20
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6038, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = extractvalue %dx.types.ResRet.i32 %6039, 1
  br label %6042

; <label>:6042                                    ; preds = %6036, %6014
  %6043 = phi i32 [ %6040, %6036 ], [ %6010, %6014 ]
  %6044 = phi i32 [ %6041, %6036 ], [ %6011, %6014 ]
  store i32 %6043, i32* %6034, align 4
  store i32 %6044, i32* %6035, align 4
  %6045 = add nuw i32 %6015, 1
  %6046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.i32 %6046, 2
  %6048 = icmp eq i32 %6047, 0
  %6049 = icmp ugt i32 %6030, -1073741825
  %6050 = and i1 %6049, %6048
  %6051 = icmp ult i32 %6045, %6008
  %6052 = and i1 %6050, %6051
  br i1 %6052, label %6014, label %6053

; <label>:6053                                    ; preds = %6042
  br label %6054

; <label>:6054                                    ; preds = %6053, %5957
  %6055 = phi i32 [ 0, %5957 ], [ %6045, %6053 ]
  %6056 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %6057 = fptoui float %6056 to i32
  %6058 = icmp eq i32 %6057, 0
  br i1 %6058, label %6110, label %6059

; <label>:6059                                    ; preds = %6054
  br label %6060

; <label>:6060                                    ; preds = %6105, %6059
  %6061 = phi i32 [ %6106, %6105 ], [ %6055, %6059 ]
  %6062 = phi i32 [ %6107, %6105 ], [ 0, %6059 ]
  %6063 = lshr i32 %6062, 2
  %6064 = and i32 %6062, 3
  %6065 = add nuw nsw i32 %6063, 83
  %6066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6065)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.i32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.i32 %6066, 1
  %6069 = extractvalue %dx.types.CBufRet.i32 %6066, 2
  %6070 = extractvalue %dx.types.CBufRet.i32 %6066, 3
  %6071 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6067, i32* %6071, align 4
  %6072 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6068, i32* %6072, align 4
  %6073 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6069, i32* %6073, align 4
  %6074 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6070, i32* %6074, align 4
  %6075 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6064
  %6076 = load i32, i32* %6075, align 4, !tbaa !105, !noalias !109
  %6077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.i32 %6077, 0
  %6079 = lshr i32 %6078, 16
  %6080 = and i32 %6079, 31
  %6081 = shl i32 %6003, %6080
  %6082 = add i32 %6081, %6002
  %6083 = shl i32 %6082, 2
  %6084 = add i32 %6083, %6076
  %6085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6084, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.i32 %6085, 0
  %6087 = icmp eq i32 %6086, 0
  br i1 %6087, label %6105, label %6088

; <label>:6088                                    ; preds = %6060
  %6089 = icmp slt i32 %6086, 0
  %6090 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6061
  %6091 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6061
  %6092 = bitcast float* %6090 to i32*
  %6093 = bitcast float* %6091 to i32*
  br i1 %6089, label %6094, label %6101

; <label>:6094                                    ; preds = %6088
  %6095 = and i32 %6086, 1073741823
  %6096 = add i32 %6076, 20
  %6097 = add i32 %6096, %6095
  %6098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6097, i32 undef)  ; BufferLoad(srv,index,wot)
  %6099 = extractvalue %dx.types.ResRet.i32 %6098, 0
  %6100 = extractvalue %dx.types.ResRet.i32 %6098, 1
  br label %6101

; <label>:6101                                    ; preds = %6094, %6088
  %6102 = phi i32 [ %6099, %6094 ], [ %6010, %6088 ]
  %6103 = phi i32 [ %6100, %6094 ], [ %6011, %6088 ]
  store i32 %6102, i32* %6092, align 4
  store i32 %6103, i32* %6093, align 4
  %6104 = add i32 %6061, 1
  br label %6105

; <label>:6105                                    ; preds = %6101, %6060
  %6106 = phi i32 [ %6061, %6060 ], [ %6104, %6101 ]
  %6107 = add nuw i32 %6062, 1
  %6108 = icmp eq i32 %6107, %6057
  br i1 %6108, label %6109, label %6060

; <label>:6109                                    ; preds = %6105
  br label %6110

; <label>:6110                                    ; preds = %6109, %6054
  %6111 = phi i32 [ %6055, %6054 ], [ %6106, %6109 ]
  %6112 = icmp eq i32 %6111, 1
  %6113 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6114 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6112, label %6115, label %6118

; <label>:6115                                    ; preds = %6110
  %6116 = load float, float* %6113, align 4
  %6117 = load float, float* %6114, align 4
  br label %6145

; <label>:6118                                    ; preds = %6110
  %6119 = load float, float* %6113, align 4
  %6120 = load float, float* %6114, align 4
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = fsub fast float %6119, %6121
  %6123 = icmp ugt i32 %6111, 1
  br i1 %6123, label %6124, label %6140

; <label>:6124                                    ; preds = %6118
  br label %6125

; <label>:6125                                    ; preds = %6125, %6124
  %6126 = phi float [ %6135, %6125 ], [ %6122, %6124 ]
  %6127 = phi float [ %6136, %6125 ], [ %6119, %6124 ]
  %6128 = phi i32 [ %6137, %6125 ], [ 1, %6124 ]
  %6129 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6128
  %6130 = load float, float* %6129, align 4
  %6131 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6128
  %6132 = load float, float* %6131, align 4
  %6133 = fdiv fast float 1.000000e+00, %6132
  %6134 = fsub fast float %6130, %6133
  %6135 = call float @dx.op.binary.f32(i32 36, float %6126, float %6134)  ; FMin(a,b)
  %6136 = call float @dx.op.binary.f32(i32 35, float %6127, float %6130)  ; FMax(a,b)
  %6137 = add nuw i32 %6128, 1
  %6138 = icmp eq i32 %6137, %6111
  br i1 %6138, label %6139, label %6125

; <label>:6139                                    ; preds = %6125
  br label %6140

; <label>:6140                                    ; preds = %6139, %6118
  %6141 = phi float [ %6122, %6118 ], [ %6135, %6139 ]
  %6142 = phi float [ %6119, %6118 ], [ %6136, %6139 ]
  %6143 = fsub fast float %6142, %6141
  %6144 = fdiv fast float 1.000000e+00, %6143
  br label %6145

; <label>:6145                                    ; preds = %6140, %6115
  %6146 = phi float [ %6116, %6115 ], [ %6142, %6140 ]
  %6147 = phi float [ %6117, %6115 ], [ %6144, %6140 ]
  %6148 = fadd fast float %5849, %6146
  %6149 = fmul fast float %6148, %6147
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = fmul fast float %6150, 2.000000e+00
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = fmul fast float %5987, %5987
  %6154 = fsub fast float %5988, %6153
  %6155 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6154)  ; FMax(a,b)
  %6156 = fdiv fast float 1.000000e+00, %6155
  %6157 = fmul fast float %5988, %5987
  %6158 = fsub fast float %5989, %6157
  %6159 = fsub fast float %6152, %5987
  %6160 = fmul fast float %6152, %6152
  %6161 = fsub fast float %6160, %5988
  %6162 = fmul fast float %6156, %6158
  %6163 = fmul fast float %6162, %6159
  %6164 = fsub fast float %6161, %6163
  %6165 = fmul fast float %5988, %5988
  %6166 = fsub fast float %5990, %6165
  %6167 = fmul fast float %6158, %6158
  %6168 = fmul fast float %6167, %6156
  %6169 = fsub fast float %6166, %6168
  %6170 = fdiv fast float %6164, %6169
  %6171 = fmul fast float %6170, %6158
  %6172 = fsub fast float %6159, %6171
  %6173 = fmul fast float %6172, %6156
  %6174 = fmul fast float %6173, %5987
  %6175 = fsub fast float 1.000000e+00, %6174
  %6176 = fmul fast float %6170, %5988
  %6177 = fsub fast float %6175, %6176
  %6178 = fmul fast float %6173, %6173
  %6179 = fmul fast float %6170, 4.000000e+00
  %6180 = fmul fast float %6179, %6177
  %6181 = fsub fast float %6178, %6180
  %6182 = call float @dx.op.unary.f32(i32 24, float %6181)  ; Sqrt(value)
  %6183 = fcmp fast oge float %6173, 0.000000e+00
  %6184 = fsub fast float -0.000000e+00, %6182
  %6185 = select i1 %6183, float %6184, float %6182
  %6186 = fsub fast float %6185, %6173
  %6187 = fdiv fast float %6186, %6170
  %6188 = fdiv fast float %6177, %6186
  %6189 = fmul fast float %6187, 5.000000e-01
  %6190 = fmul fast float %6188, 2.000000e+00
  %6191 = select i1 %6183, float %6189, float %6190
  %6192 = select i1 %6183, float %6190, float %6189
  %6193 = call float @dx.op.binary.f32(i32 35, float %6191, float %6192)  ; FMax(a,b)
  %6194 = call float @dx.op.binary.f32(i32 36, float %6191, float %6192)  ; FMin(a,b)
  %6195 = fcmp fast ogt float %6152, %6193
  %6196 = fsub fast float %6152, %6194
  %6197 = fsub fast float %6152, %6193
  %6198 = fsub fast float %6193, %6194
  %6199 = select i1 %6195, float %6197, float %6198
  %6200 = fmul float %6196, %6199
  %6201 = select i1 %6195, float %6194, float %6152
  %6202 = fcmp fast ogt float %6152, %6194
  %6203 = fmul fast float %6201, %6193
  %6204 = fadd fast float %6201, %6193
  %6205 = fmul fast float %6204, %5987
  %6206 = fadd fast float %6203, %5988
  %6207 = fsub fast float %6206, %6205
  %6208 = fdiv fast float %6207, %6200
  %6209 = select i1 %6202, float %6208, float 0.000000e+00
  %6210 = fsub fast float 1.000000e+00, %6209
  %6211 = select i1 %6195, float %6210, float %6209
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %5972, 3
  %6214 = fmul fast float %6213, %6212
  %6215 = fsub fast float 1.000000e+00, %6214
  br label %6216

; <label>:6216                                    ; preds = %6145, %5857, %5822, %5818, %5784
  %6217 = phi float [ 1.000000e+00, %5784 ], [ %6215, %6145 ], [ 1.000000e+00, %5822 ], [ 1.000000e+00, %5857 ], [ 1.000000e+00, %5818 ]
  %6218 = fcmp fast ogt float %5814, 0.000000e+00
  br i1 %6218, label %6219, label %6381, !dx.controlflow.hints !118

; <label>:6219                                    ; preds = %6216
  %6220 = fadd fast float %5727, %5701
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6223 = extractvalue %dx.types.CBufRet.f32 %6221, 3
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6226 = call float @dx.op.binary.f32(i32 35, float %6220, float 0.000000e+00)  ; FMax(a,b)
  %6227 = fadd fast float %6226, 0x3F10000000000000
  %6228 = fcmp fast oeq float %6225, 0.000000e+00
  br i1 %6228, label %6229, label %6296

; <label>:6229                                    ; preds = %6219
  %6230 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6232 = fmul fast float %6231, %5716
  %6233 = fmul fast float %6230, %5717
  %6234 = fadd fast float %6232, 5.000000e-01
  %6235 = call float @dx.op.unary.f32(i32 27, float %6234)  ; Round_ni(value)
  %6236 = fadd fast float %6233, 5.000000e-01
  %6237 = call float @dx.op.unary.f32(i32 27, float %6236)  ; Round_ni(value)
  %6238 = fsub fast float %6234, %6235
  %6239 = fsub fast float %6236, %6237
  %6240 = fadd fast float %6235, -5.000000e-01
  %6241 = fadd fast float %6237, -5.000000e-01
  %6242 = fmul fast float %6238, 2.000000e+00
  %6243 = fsub fast float 3.000000e+00, %6242
  %6244 = fadd fast float %6242, 1.000000e+00
  %6245 = fsub fast float 2.000000e+00, %6238
  %6246 = bitcast float %6243 to i32
  %6247 = sub nsw i32 2129859010, %6246
  %6248 = bitcast i32 %6247 to float
  %6249 = fmul fast float %6248, %6245
  %6250 = fadd fast float %6249, -1.000000e+00
  %6251 = bitcast float %6244 to i32
  %6252 = sub nsw i32 2129859010, %6251
  %6253 = bitcast i32 %6252 to float
  %6254 = fmul fast float %6253, %6238
  %6255 = fadd fast float %6254, 1.000000e+00
  %6256 = fmul fast float %6239, 2.000000e+00
  %6257 = fsub fast float 3.000000e+00, %6256
  %6258 = fadd fast float %6256, 1.000000e+00
  %6259 = fsub fast float 2.000000e+00, %6239
  %6260 = bitcast float %6257 to i32
  %6261 = sub nsw i32 2129859010, %6260
  %6262 = bitcast i32 %6261 to float
  %6263 = fmul fast float %6262, %6259
  %6264 = fadd fast float %6263, -1.000000e+00
  %6265 = bitcast float %6258 to i32
  %6266 = sub nsw i32 2129859010, %6265
  %6267 = bitcast i32 %6266 to float
  %6268 = fmul fast float %6267, %6239
  %6269 = fadd fast float %6268, 1.000000e+00
  %6270 = fadd fast float %6250, %6240
  %6271 = fmul fast float %6270, %6222
  %6272 = fadd fast float %6264, %6241
  %6273 = fmul fast float %6272, %6223
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6271, float %6273, float undef, float undef, i32 0, i32 0, i32 undef, float %6227)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = fmul fast float %6275, %6243
  %6277 = fadd fast float %6255, %6240
  %6278 = fmul fast float %6277, %6222
  %6279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6278, float %6273, float undef, float undef, i32 0, i32 0, i32 undef, float %6227)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = fmul fast float %6280, %6244
  %6282 = fadd fast float %6269, %6241
  %6283 = fmul fast float %6282, %6223
  %6284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6271, float %6283, float undef, float undef, i32 0, i32 0, i32 undef, float %6227)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = fmul fast float %6285, %6243
  %6287 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6278, float %6283, float undef, float undef, i32 0, i32 0, i32 undef, float %6227)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = fmul fast float %6288, %6244
  %6290 = fadd fast float %6289, %6286
  %6291 = fmul fast float %6290, %6258
  %6292 = fadd fast float %6281, %6276
  %6293 = fmul fast float %6292, %6257
  %6294 = fadd fast float %6293, %6291
  %6295 = fmul fast float %6294, 6.250000e-02
  br label %6381

; <label>:6296                                    ; preds = %6219
  %6297 = fmul fast float %272, 0x401921FB60000000
  %6298 = call float @dx.op.unary.f32(i32 13, float %6297)  ; Sin(value)
  %6299 = call float @dx.op.unary.f32(i32 12, float %6297)  ; Cos(value)
  %6300 = fsub fast float -0.000000e+00, %6298
  br label %6301

; <label>:6301                                    ; preds = %6350, %6296
  %6302 = phi float [ 0.000000e+00, %6296 ], [ %6345, %6350 ]
  %6303 = phi float [ 0.000000e+00, %6296 ], [ %6347, %6350 ]
  %6304 = phi i32 [ 0, %6296 ], [ %6351, %6350 ]
  %6305 = mul i32 %6304, 2
  %6306 = add i32 0, %6305
  %6307 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6306
  %6308 = load float, float* %6307, align 4
  %6309 = mul i32 %6304, 2
  %6310 = add i32 1, %6309
  %6311 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6310
  %6312 = load float, float* %6311, align 4
  %6313 = fmul fast float %6308, %6299
  %6314 = call float @dx.op.tertiary.f32(i32 46, float %6312, float %6300, float %6313)  ; FMad(a,b,c)
  %6315 = fmul fast float %6308, %6298
  %6316 = call float @dx.op.tertiary.f32(i32 46, float %6312, float %6299, float %6315)  ; FMad(a,b,c)
  %6317 = fmul fast float %6314, %6225
  %6318 = fmul fast float %6316, %6225
  %6319 = fadd fast float %6317, %5716
  %6320 = fadd fast float %6318, %5717
  %6321 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6319, float %6320, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.ResRet.f32 %6321, 2
  %6325 = extractvalue %dx.types.ResRet.f32 %6321, 3
  %6326 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6322, float* %6326, align 4
  %6327 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6323, float* %6327, align 4
  %6328 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6324, float* %6328, align 4
  %6329 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6325, float* %6329, align 4
  %6330 = fsub fast float %6322, %6227
  %6331 = fcmp fast olt float %6330, 0.000000e+00
  %6332 = select i1 %6331, float 0.000000e+00, float 1.000000e+00
  %6333 = fadd fast float %6332, %6302
  %6334 = fmul fast float %6332, %6330
  %6335 = fadd fast float %6334, %6303
  br label %6336

; <label>:6336                                    ; preds = %6336, %6301
  %6337 = phi i32 [ 1, %6301 ], [ %6348, %6336 ]
  %6338 = phi float [ %6335, %6301 ], [ %6347, %6336 ]
  %6339 = phi float [ %6333, %6301 ], [ %6345, %6336 ]
  %6340 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6337
  %6341 = load float, float* %6340, align 4, !tbaa !119, !noalias !109
  %6342 = fsub fast float %6341, %6227
  %6343 = fcmp fast olt float %6342, 0.000000e+00
  %6344 = select i1 %6343, float 0.000000e+00, float 1.000000e+00
  %6345 = fadd fast float %6344, %6339
  %6346 = fmul fast float %6344, %6342
  %6347 = fadd fast float %6346, %6338
  %6348 = add nuw nsw i32 %6337, 1
  %6349 = icmp eq i32 %6348, 4
  br i1 %6349, label %6350, label %6336, !llvm.loop !121

; <label>:6350                                    ; preds = %6336
  %6351 = add nuw nsw i32 %6304, 1
  %6352 = icmp eq i32 %6351, 8
  br i1 %6352, label %6353, label %6301, !llvm.loop !122

; <label>:6353                                    ; preds = %6350
  %6354 = fdiv fast float 1.000000e+00, %6345
  %6355 = fmul fast float %6354, %6347
  %6356 = fdiv fast float 1.000000e+00, %6227
  %6357 = fmul fast float %6355, %6356
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6359 = call float @dx.op.binary.f32(i32 35, float %6358, float 0.000000e+00)  ; FMax(a,b)
  %6360 = fmul fast float %6345, 3.125000e-02
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = fadd fast float %6362, -1.000000e+00
  %6364 = fcmp fast ogt float %6363, 0.000000e+00
  %6365 = fcmp fast olt float %6363, 0.000000e+00
  %6366 = zext i1 %6364 to i32
  %6367 = zext i1 %6365 to i32
  %6368 = sub nsw i32 %6366, %6367
  %6369 = sitofp i32 %6368 to float
  %6370 = fmul fast float %6369, %6363
  %6371 = fsub fast float 1.000000e+00, %6370
  %6372 = fmul fast float %6371, %6371
  %6373 = fmul fast float %6372, %6371
  %6374 = fsub fast float %6371, %6373
  %6375 = fmul fast float %6374, %6359
  %6376 = fsub fast float 1.000000e+00, %6373
  %6377 = fsub fast float %6376, %6375
  %6378 = fmul fast float %6369, 5.000000e-01
  %6379 = fmul fast float %6378, %6377
  %6380 = fsub fast float 5.000000e-01, %6379
  br label %6381

; <label>:6381                                    ; preds = %6353, %6229, %6216
  %6382 = phi float [ 1.000000e+00, %6216 ], [ %6295, %6229 ], [ %6380, %6353 ]
  %6383 = fcmp fast ogt float %5812, 0.000000e+00
  br i1 %6383, label %6384, label %6548, !dx.controlflow.hints !123

; <label>:6384                                    ; preds = %6381
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6387 = fadd fast float %6386, %5701
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 3
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6393 = call float @dx.op.binary.f32(i32 35, float %6387, float 0.000000e+00)  ; FMax(a,b)
  %6394 = fadd fast float %6393, 0x3F10000000000000
  %6395 = fcmp fast oeq float %6392, 0.000000e+00
  br i1 %6395, label %6396, label %6463

; <label>:6396                                    ; preds = %6384
  %6397 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6399 = fmul fast float %6398, %5708
  %6400 = fmul fast float %6397, %5709
  %6401 = fadd fast float %6399, 5.000000e-01
  %6402 = call float @dx.op.unary.f32(i32 27, float %6401)  ; Round_ni(value)
  %6403 = fadd fast float %6400, 5.000000e-01
  %6404 = call float @dx.op.unary.f32(i32 27, float %6403)  ; Round_ni(value)
  %6405 = fsub fast float %6401, %6402
  %6406 = fsub fast float %6403, %6404
  %6407 = fadd fast float %6402, -5.000000e-01
  %6408 = fadd fast float %6404, -5.000000e-01
  %6409 = fmul fast float %6405, 2.000000e+00
  %6410 = fsub fast float 3.000000e+00, %6409
  %6411 = fadd fast float %6409, 1.000000e+00
  %6412 = fsub fast float 2.000000e+00, %6405
  %6413 = bitcast float %6410 to i32
  %6414 = sub nsw i32 2129859010, %6413
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %6412
  %6417 = fadd fast float %6416, -1.000000e+00
  %6418 = bitcast float %6411 to i32
  %6419 = sub nsw i32 2129859010, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %6420, %6405
  %6422 = fadd fast float %6421, 1.000000e+00
  %6423 = fmul fast float %6406, 2.000000e+00
  %6424 = fsub fast float 3.000000e+00, %6423
  %6425 = fadd fast float %6423, 1.000000e+00
  %6426 = fsub fast float 2.000000e+00, %6406
  %6427 = bitcast float %6424 to i32
  %6428 = sub nsw i32 2129859010, %6427
  %6429 = bitcast i32 %6428 to float
  %6430 = fmul fast float %6429, %6426
  %6431 = fadd fast float %6430, -1.000000e+00
  %6432 = bitcast float %6425 to i32
  %6433 = sub nsw i32 2129859010, %6432
  %6434 = bitcast i32 %6433 to float
  %6435 = fmul fast float %6434, %6406
  %6436 = fadd fast float %6435, 1.000000e+00
  %6437 = fadd fast float %6417, %6407
  %6438 = fmul fast float %6437, %6389
  %6439 = fadd fast float %6431, %6408
  %6440 = fmul fast float %6439, %6390
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6438, float %6440, float undef, float undef, i32 0, i32 0, i32 undef, float %6394)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = fmul fast float %6442, %6410
  %6444 = fadd fast float %6422, %6407
  %6445 = fmul fast float %6444, %6389
  %6446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6445, float %6440, float undef, float undef, i32 0, i32 0, i32 undef, float %6394)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = fmul fast float %6447, %6411
  %6449 = fadd fast float %6436, %6408
  %6450 = fmul fast float %6449, %6390
  %6451 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6438, float %6450, float undef, float undef, i32 0, i32 0, i32 undef, float %6394)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6452 = extractvalue %dx.types.ResRet.f32 %6451, 0
  %6453 = fmul fast float %6452, %6410
  %6454 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6445, float %6450, float undef, float undef, i32 0, i32 0, i32 undef, float %6394)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = fmul fast float %6455, %6411
  %6457 = fadd fast float %6456, %6453
  %6458 = fmul fast float %6457, %6425
  %6459 = fadd fast float %6448, %6443
  %6460 = fmul fast float %6459, %6424
  %6461 = fadd fast float %6460, %6458
  %6462 = fmul fast float %6461, 6.250000e-02
  br label %6548

; <label>:6463                                    ; preds = %6384
  %6464 = fmul fast float %272, 0x401921FB60000000
  %6465 = call float @dx.op.unary.f32(i32 13, float %6464)  ; Sin(value)
  %6466 = call float @dx.op.unary.f32(i32 12, float %6464)  ; Cos(value)
  %6467 = fsub fast float -0.000000e+00, %6465
  br label %6468

; <label>:6468                                    ; preds = %6517, %6463
  %6469 = phi float [ 0.000000e+00, %6463 ], [ %6512, %6517 ]
  %6470 = phi float [ 0.000000e+00, %6463 ], [ %6514, %6517 ]
  %6471 = phi i32 [ 0, %6463 ], [ %6518, %6517 ]
  %6472 = mul i32 %6471, 2
  %6473 = add i32 0, %6472
  %6474 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6473
  %6475 = load float, float* %6474, align 4
  %6476 = mul i32 %6471, 2
  %6477 = add i32 1, %6476
  %6478 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6477
  %6479 = load float, float* %6478, align 4
  %6480 = fmul fast float %6475, %6466
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6479, float %6467, float %6480)  ; FMad(a,b,c)
  %6482 = fmul fast float %6475, %6465
  %6483 = call float @dx.op.tertiary.f32(i32 46, float %6479, float %6466, float %6482)  ; FMad(a,b,c)
  %6484 = fmul fast float %6481, %6392
  %6485 = fmul fast float %6483, %6392
  %6486 = fadd fast float %6484, %5708
  %6487 = fadd fast float %6485, %5709
  %6488 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6486, float %6487, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.ResRet.f32 %6488, 3
  %6493 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6489, float* %6493, align 4
  %6494 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6490, float* %6494, align 4
  %6495 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6491, float* %6495, align 4
  %6496 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6492, float* %6496, align 4
  %6497 = fsub fast float %6489, %6394
  %6498 = fcmp fast olt float %6497, 0.000000e+00
  %6499 = select i1 %6498, float 0.000000e+00, float 1.000000e+00
  %6500 = fadd fast float %6499, %6469
  %6501 = fmul fast float %6499, %6497
  %6502 = fadd fast float %6501, %6470
  br label %6503

; <label>:6503                                    ; preds = %6503, %6468
  %6504 = phi i32 [ 1, %6468 ], [ %6515, %6503 ]
  %6505 = phi float [ %6502, %6468 ], [ %6514, %6503 ]
  %6506 = phi float [ %6500, %6468 ], [ %6512, %6503 ]
  %6507 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6504
  %6508 = load float, float* %6507, align 4, !tbaa !119, !noalias !109
  %6509 = fsub fast float %6508, %6394
  %6510 = fcmp fast olt float %6509, 0.000000e+00
  %6511 = select i1 %6510, float 0.000000e+00, float 1.000000e+00
  %6512 = fadd fast float %6511, %6506
  %6513 = fmul fast float %6511, %6509
  %6514 = fadd fast float %6513, %6505
  %6515 = add nuw nsw i32 %6504, 1
  %6516 = icmp eq i32 %6515, 4
  br i1 %6516, label %6517, label %6503, !llvm.loop !121

; <label>:6517                                    ; preds = %6503
  %6518 = add nuw nsw i32 %6471, 1
  %6519 = icmp eq i32 %6518, 8
  br i1 %6519, label %6520, label %6468, !llvm.loop !122

; <label>:6520                                    ; preds = %6517
  %6521 = fdiv fast float 1.000000e+00, %6512
  %6522 = fmul fast float %6521, %6514
  %6523 = fdiv fast float 1.000000e+00, %6394
  %6524 = fmul fast float %6522, %6523
  %6525 = call float @dx.op.unary.f32(i32 7, float %6524)  ; Saturate(value)
  %6526 = call float @dx.op.binary.f32(i32 35, float %6525, float 0.000000e+00)  ; FMax(a,b)
  %6527 = fmul fast float %6512, 3.125000e-02
  %6528 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6529 = fmul fast float %6528, 2.000000e+00
  %6530 = fadd fast float %6529, -1.000000e+00
  %6531 = fcmp fast ogt float %6530, 0.000000e+00
  %6532 = fcmp fast olt float %6530, 0.000000e+00
  %6533 = zext i1 %6531 to i32
  %6534 = zext i1 %6532 to i32
  %6535 = sub nsw i32 %6533, %6534
  %6536 = sitofp i32 %6535 to float
  %6537 = fmul fast float %6536, %6530
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = fmul fast float %6538, %6538
  %6540 = fmul fast float %6539, %6538
  %6541 = fsub fast float %6538, %6540
  %6542 = fmul fast float %6541, %6526
  %6543 = fsub fast float 1.000000e+00, %6540
  %6544 = fsub fast float %6543, %6542
  %6545 = fmul fast float %6536, 5.000000e-01
  %6546 = fmul fast float %6545, %6544
  %6547 = fsub fast float 5.000000e-01, %6546
  br label %6548

; <label>:6548                                    ; preds = %6520, %6396, %6381
  %6549 = phi float [ 1.000000e+00, %6381 ], [ %6462, %6396 ], [ %6547, %6520 ]
  %6550 = fcmp fast ogt float %5811, 0.000000e+00
  br i1 %6550, label %6551, label %6715, !dx.controlflow.hints !124

; <label>:6551                                    ; preds = %6548
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = fadd fast float %6553, %5701
  %6555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.f32 %6555, 2
  %6557 = extractvalue %dx.types.CBufRet.f32 %6555, 3
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = call float @dx.op.binary.f32(i32 35, float %6554, float 0.000000e+00)  ; FMax(a,b)
  %6561 = fadd fast float %6560, 0x3F10000000000000
  %6562 = fcmp fast oeq float %6559, 0.000000e+00
  br i1 %6562, label %6563, label %6630

; <label>:6563                                    ; preds = %6551
  %6564 = extractvalue %dx.types.CBufRet.f32 %6555, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6555, 0
  %6566 = fmul fast float %6565, %5693
  %6567 = fmul fast float %6564, %5697
  %6568 = fadd fast float %6566, 5.000000e-01
  %6569 = call float @dx.op.unary.f32(i32 27, float %6568)  ; Round_ni(value)
  %6570 = fadd fast float %6567, 5.000000e-01
  %6571 = call float @dx.op.unary.f32(i32 27, float %6570)  ; Round_ni(value)
  %6572 = fsub fast float %6568, %6569
  %6573 = fsub fast float %6570, %6571
  %6574 = fadd fast float %6569, -5.000000e-01
  %6575 = fadd fast float %6571, -5.000000e-01
  %6576 = fmul fast float %6572, 2.000000e+00
  %6577 = fsub fast float 3.000000e+00, %6576
  %6578 = fadd fast float %6576, 1.000000e+00
  %6579 = fsub fast float 2.000000e+00, %6572
  %6580 = bitcast float %6577 to i32
  %6581 = sub nsw i32 2129859010, %6580
  %6582 = bitcast i32 %6581 to float
  %6583 = fmul fast float %6582, %6579
  %6584 = fadd fast float %6583, -1.000000e+00
  %6585 = bitcast float %6578 to i32
  %6586 = sub nsw i32 2129859010, %6585
  %6587 = bitcast i32 %6586 to float
  %6588 = fmul fast float %6587, %6572
  %6589 = fadd fast float %6588, 1.000000e+00
  %6590 = fmul fast float %6573, 2.000000e+00
  %6591 = fsub fast float 3.000000e+00, %6590
  %6592 = fadd fast float %6590, 1.000000e+00
  %6593 = fsub fast float 2.000000e+00, %6573
  %6594 = bitcast float %6591 to i32
  %6595 = sub nsw i32 2129859010, %6594
  %6596 = bitcast i32 %6595 to float
  %6597 = fmul fast float %6596, %6593
  %6598 = fadd fast float %6597, -1.000000e+00
  %6599 = bitcast float %6592 to i32
  %6600 = sub nsw i32 2129859010, %6599
  %6601 = bitcast i32 %6600 to float
  %6602 = fmul fast float %6601, %6573
  %6603 = fadd fast float %6602, 1.000000e+00
  %6604 = fadd fast float %6584, %6574
  %6605 = fmul fast float %6604, %6556
  %6606 = fadd fast float %6598, %6575
  %6607 = fmul fast float %6606, %6557
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6605, float %6607, float undef, float undef, i32 0, i32 0, i32 undef, float %6561)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = fmul fast float %6609, %6577
  %6611 = fadd fast float %6589, %6574
  %6612 = fmul fast float %6611, %6556
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6612, float %6607, float undef, float undef, i32 0, i32 0, i32 undef, float %6561)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = fmul fast float %6614, %6578
  %6616 = fadd fast float %6603, %6575
  %6617 = fmul fast float %6616, %6557
  %6618 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6605, float %6617, float undef, float undef, i32 0, i32 0, i32 undef, float %6561)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6619 = extractvalue %dx.types.ResRet.f32 %6618, 0
  %6620 = fmul fast float %6619, %6577
  %6621 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6612, float %6617, float undef, float undef, i32 0, i32 0, i32 undef, float %6561)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6622 = extractvalue %dx.types.ResRet.f32 %6621, 0
  %6623 = fmul fast float %6622, %6578
  %6624 = fadd fast float %6623, %6620
  %6625 = fmul fast float %6624, %6592
  %6626 = fadd fast float %6615, %6610
  %6627 = fmul fast float %6626, %6591
  %6628 = fadd fast float %6627, %6625
  %6629 = fmul fast float %6628, 6.250000e-02
  br label %6715

; <label>:6630                                    ; preds = %6551
  %6631 = fmul fast float %272, 0x401921FB60000000
  %6632 = call float @dx.op.unary.f32(i32 13, float %6631)  ; Sin(value)
  %6633 = call float @dx.op.unary.f32(i32 12, float %6631)  ; Cos(value)
  %6634 = fsub fast float -0.000000e+00, %6632
  br label %6635

; <label>:6635                                    ; preds = %6684, %6630
  %6636 = phi float [ 0.000000e+00, %6630 ], [ %6679, %6684 ]
  %6637 = phi float [ 0.000000e+00, %6630 ], [ %6681, %6684 ]
  %6638 = phi i32 [ 0, %6630 ], [ %6685, %6684 ]
  %6639 = mul i32 %6638, 2
  %6640 = add i32 0, %6639
  %6641 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6640
  %6642 = load float, float* %6641, align 4
  %6643 = mul i32 %6638, 2
  %6644 = add i32 1, %6643
  %6645 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6644
  %6646 = load float, float* %6645, align 4
  %6647 = fmul fast float %6642, %6633
  %6648 = call float @dx.op.tertiary.f32(i32 46, float %6646, float %6634, float %6647)  ; FMad(a,b,c)
  %6649 = fmul fast float %6642, %6632
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6646, float %6633, float %6649)  ; FMad(a,b,c)
  %6651 = fmul fast float %6648, %6559
  %6652 = fmul fast float %6650, %6559
  %6653 = fadd fast float %6651, %5693
  %6654 = fadd fast float %6652, %5697
  %6655 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6653, float %6654, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.ResRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.ResRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.ResRet.f32 %6655, 3
  %6660 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6656, float* %6660, align 4
  %6661 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6657, float* %6661, align 4
  %6662 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6658, float* %6662, align 4
  %6663 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6659, float* %6663, align 4
  %6664 = fsub fast float %6656, %6561
  %6665 = fcmp fast olt float %6664, 0.000000e+00
  %6666 = select i1 %6665, float 0.000000e+00, float 1.000000e+00
  %6667 = fadd fast float %6666, %6636
  %6668 = fmul fast float %6666, %6664
  %6669 = fadd fast float %6668, %6637
  br label %6670

; <label>:6670                                    ; preds = %6670, %6635
  %6671 = phi i32 [ 1, %6635 ], [ %6682, %6670 ]
  %6672 = phi float [ %6669, %6635 ], [ %6681, %6670 ]
  %6673 = phi float [ %6667, %6635 ], [ %6679, %6670 ]
  %6674 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6671
  %6675 = load float, float* %6674, align 4, !tbaa !119, !noalias !109
  %6676 = fsub fast float %6675, %6561
  %6677 = fcmp fast olt float %6676, 0.000000e+00
  %6678 = select i1 %6677, float 0.000000e+00, float 1.000000e+00
  %6679 = fadd fast float %6678, %6673
  %6680 = fmul fast float %6678, %6676
  %6681 = fadd fast float %6680, %6672
  %6682 = add nuw nsw i32 %6671, 1
  %6683 = icmp eq i32 %6682, 4
  br i1 %6683, label %6684, label %6670, !llvm.loop !121

; <label>:6684                                    ; preds = %6670
  %6685 = add nuw nsw i32 %6638, 1
  %6686 = icmp eq i32 %6685, 8
  br i1 %6686, label %6687, label %6635, !llvm.loop !122

; <label>:6687                                    ; preds = %6684
  %6688 = fdiv fast float 1.000000e+00, %6679
  %6689 = fmul fast float %6688, %6681
  %6690 = fdiv fast float 1.000000e+00, %6561
  %6691 = fmul fast float %6689, %6690
  %6692 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6693 = call float @dx.op.binary.f32(i32 35, float %6692, float 0.000000e+00)  ; FMax(a,b)
  %6694 = fmul fast float %6679, 3.125000e-02
  %6695 = call float @dx.op.unary.f32(i32 7, float %6694)  ; Saturate(value)
  %6696 = fmul fast float %6695, 2.000000e+00
  %6697 = fadd fast float %6696, -1.000000e+00
  %6698 = fcmp fast ogt float %6697, 0.000000e+00
  %6699 = fcmp fast olt float %6697, 0.000000e+00
  %6700 = zext i1 %6698 to i32
  %6701 = zext i1 %6699 to i32
  %6702 = sub nsw i32 %6700, %6701
  %6703 = sitofp i32 %6702 to float
  %6704 = fmul fast float %6703, %6697
  %6705 = fsub fast float 1.000000e+00, %6704
  %6706 = fmul fast float %6705, %6705
  %6707 = fmul fast float %6706, %6705
  %6708 = fsub fast float %6705, %6707
  %6709 = fmul fast float %6708, %6693
  %6710 = fsub fast float 1.000000e+00, %6707
  %6711 = fsub fast float %6710, %6709
  %6712 = fmul fast float %6703, 5.000000e-01
  %6713 = fmul fast float %6712, %6711
  %6714 = fsub fast float 5.000000e-01, %6713
  br label %6715

; <label>:6715                                    ; preds = %6687, %6563, %6548
  %6716 = phi float [ 1.000000e+00, %6548 ], [ %6629, %6563 ], [ %6714, %6687 ]
  %6717 = fsub fast float %6382, %6217
  %6718 = fmul fast float %6717, %5755
  %6719 = fadd fast float %6718, %6217
  %6720 = fsub fast float %6549, %6719
  %6721 = fmul fast float %6720, %5785
  %6722 = fadd fast float %6721, %6719
  %6723 = fsub fast float %6716, %6722
  %6724 = fmul fast float %6723, %5811
  %6725 = fadd fast float %6724, %6722
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6728 = fcmp fast ogt float %6727, 0.000000e+00
  br i1 %6728, label %6729, label %6769, !dx.controlflow.hints !125

; <label>:6729                                    ; preds = %6715
  %6730 = fcmp fast ugt float %6727, 0.000000e+00
  br i1 %6730, label %6731, label %6766

; <label>:6731                                    ; preds = %6729
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.CBufRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.CBufRet.f32 %6737, 2
  %6741 = extractvalue %dx.types.CBufRet.f32 %6737, 3
  %6742 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6743 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6748 = fadd fast float %6745, %5670
  %6749 = fadd fast float %6746, %5671
  %6750 = fadd fast float %6747, %5672
  %6751 = fmul fast float %6748, %6733
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6734, float %6749, float %6751)  ; FMad(a,b,c)
  %6753 = call float @dx.op.tertiary.f32(i32 46, float %6735, float %6750, float %6752)  ; FMad(a,b,c)
  %6754 = fadd fast float %6753, %6736
  %6755 = fmul fast float %6748, %6738
  %6756 = call float @dx.op.tertiary.f32(i32 46, float %6739, float %6749, float %6755)  ; FMad(a,b,c)
  %6757 = call float @dx.op.tertiary.f32(i32 46, float %6740, float %6750, float %6756)  ; FMad(a,b,c)
  %6758 = fadd fast float %6757, %6741
  %6759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6754, float %6758, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = fmul fast float %6760, %6743
  %6762 = fadd fast float %6761, %6742
  %6763 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6764 = fmul fast float %6763, %6727
  %6765 = fsub fast float 1.000000e+00, %6764
  br label %6766

; <label>:6766                                    ; preds = %6731, %6729
  %6767 = phi float [ %6765, %6731 ], [ 1.000000e+00, %6729 ]
  %6768 = fmul fast float %6767, %6725
  br label %6769

; <label>:6769                                    ; preds = %6766, %6715, %5650
  %6770 = phi float [ 1.000000e+00, %5650 ], [ %6768, %6766 ], [ %6725, %6715 ]
  %6771 = call float @dx.op.binary.f32(i32 36, float %6770, float %6770)  ; FMin(a,b)
  %6772 = call float @dx.op.binary.f32(i32 36, float %6770, float %6771)  ; FMin(a,b)
  %6773 = fcmp fast ogt float %6772, 0.000000e+00
  br i1 %6773, label %6774, label %6939, !dx.controlflow.hints !126

; <label>:6774                                    ; preds = %6769
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = fmul fast float %6776, %5670
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %6777, float %6790)  ; FMad(a,b,c)
  %6792 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %6778, float %6791)  ; FMad(a,b,c)
  %6793 = fadd fast float %6792, %6779
  %6794 = fmul fast float %6781, %5670
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %6782, float %6794)  ; FMad(a,b,c)
  %6796 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %6783, float %6795)  ; FMad(a,b,c)
  %6797 = fadd fast float %6796, %6784
  %6798 = fmul fast float %6786, %5670
  %6799 = call float @dx.op.tertiary.f32(i32 46, float %5671, float %6787, float %6798)  ; FMad(a,b,c)
  %6800 = call float @dx.op.tertiary.f32(i32 46, float %5672, float %6788, float %6799)  ; FMad(a,b,c)
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6805 = fmul fast float %6804, %6793
  %6806 = fmul fast float %6804, %6797
  %6807 = fadd fast float %6805, %6802
  %6808 = fadd fast float %6806, %6803
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = fsub fast float %6807, %6810
  %6813 = fsub fast float %6808, %6811
  %6814 = fcmp fast olt float %6812, 0.000000e+00
  %6815 = fcmp fast olt float %6813, 0.000000e+00
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6820 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6821 = select i1 %6814, float %6817, float %6819
  %6822 = select i1 %6815, float %6818, float %6820
  %6823 = fmul fast float %6821, %6812
  %6824 = fmul fast float %6822, %6813
  %6825 = call float @dx.op.unary.f32(i32 6, float %6823)  ; FAbs(value)
  %6826 = call float @dx.op.unary.f32(i32 6, float %6824)  ; FAbs(value)
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = call float @dx.op.binary.f32(i32 35, float %6825, float %6826)  ; FMax(a,b)
  %6830 = fsub fast float %6828, %6829
  %6831 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6832 = fcmp fast ogt float %6831, 0.000000e+00
  br i1 %6832, label %6833, label %6874, !dx.controlflow.hints !127

; <label>:6833                                    ; preds = %6774
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6807, float %6808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 1
  %6836 = fcmp fast ogt float %6835, 0.000000e+00
  br i1 %6836, label %6837, label %6869

; <label>:6837                                    ; preds = %6833
  %6838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6807, float %6808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.ResRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.ResRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.ResRet.f32 %6838, 3
  %6843 = fsub fast float 1.000000e+00, %6789
  %6844 = fsub fast float %6843, %6800
  %6845 = fmul fast float %6844, 0x400921FB60000000
  %6846 = fadd fast float %6845, 0x3FF921FB60000000
  %6847 = call float @dx.op.unary.f32(i32 13, float %6846)  ; Sin(value)
  %6848 = fadd fast float %6847, -1.000000e+00
  %6849 = fmul fast float %6848, 0x3FD45F3060000000
  %6850 = fmul fast float %6844, 0x401921FB60000000
  %6851 = fadd fast float %6850, 0x400921FB60000000
  %6852 = call float @dx.op.unary.f32(i32 13, float %6851)  ; Sin(value)
  %6853 = fadd fast float %6852, 0x3E7777A5C0000000
  %6854 = fmul fast float %6853, 0x3FC45F3060000000
  %6855 = fmul fast float %6844, 0x4022D97C80000000
  %6856 = fadd fast float %6855, 0x4012D97C80000000
  %6857 = call float @dx.op.unary.f32(i32 13, float %6856)  ; Sin(value)
  %6858 = fadd fast float %6857, 1.000000e+00
  %6859 = fmul fast float %6858, 0x3FBB2995E0000000
  %6860 = fmul fast float %6844, 0x402921FB60000000
  %6861 = fadd fast float %6860, 0x401921FB60000000
  %6862 = call float @dx.op.unary.f32(i32 13, float %6861)  ; Sin(value)
  %6863 = fadd fast float %6862, 0xBE8777A5C0000000
  %6864 = fmul fast float %6863, 0x3FB45F3060000000
  %6865 = call float @dx.op.dot4.f32(i32 56, float %6839, float %6840, float %6841, float %6842, float %6849, float %6854, float %6859, float %6864)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6866 = fmul fast float %6865, 0xBFF7154760000000
  %6867 = call float @dx.op.unary.f32(i32 21, float %6866)  ; Exp(value)
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  br label %6869

; <label>:6869                                    ; preds = %6837, %6833
  %6870 = phi float [ %6868, %6837 ], [ 1.000000e+00, %6833 ]
  %6871 = fadd fast float %6870, -1.000000e+00
  %6872 = fmul fast float %6871, %6831
  %6873 = fadd fast float %6872, 1.000000e+00
  br label %6874

; <label>:6874                                    ; preds = %6869, %6774
  %6875 = phi float [ %6873, %6869 ], [ 1.000000e+00, %6774 ]
  %6876 = fmul fast float %6875, %6770
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6881 = fadd fast float %6878, %167
  %6882 = fadd fast float %6879, %168
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 1
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = fsub fast float -0.000000e+00, %6881
  %6890 = fsub fast float -0.000000e+00, %6882
  %6891 = fsub fast float %4930, %6880
  %6892 = fadd fast float %6891, %6884
  %6893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6889, float %6890, float %6892)  ; Dot3(ax,ay,az,bx,by,bz)
  %6894 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6886, float %6887, float %6888)  ; Dot3(ax,ay,az,bx,by,bz)
  %6895 = fdiv fast float 1.000000e+00, %6894
  %6896 = fmul fast float %6895, %6893
  %6897 = fmul fast float %6886, %6896
  %6898 = fmul fast float %6887, %6896
  %6899 = fadd fast float %6897, %6881
  %6900 = fadd fast float %6898, %6882
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6904 = fsub fast float %6899, %6902
  %6905 = fsub fast float %6900, %6903
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 3
  %6909 = fmul fast float %6904, %6907
  %6910 = fmul fast float %6905, %6908
  %6911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.i32 %6911, 3
  %6913 = icmp eq i32 %6912, 0
  br i1 %6913, label %6919, label %6914

; <label>:6914                                    ; preds = %6874
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6909, float %6910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  br label %6924

; <label>:6919                                    ; preds = %6874
  %6920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6909, float %6910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.ResRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.ResRet.f32 %6920, 2
  br label %6924

; <label>:6924                                    ; preds = %6919, %6914
  %6925 = phi float [ %6916, %6914 ], [ %6921, %6919 ]
  %6926 = phi float [ %6917, %6914 ], [ %6922, %6919 ]
  %6927 = phi float [ %6918, %6914 ], [ %6923, %6919 ]
  %6928 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6929 = fmul fast float %6928, %6925
  %6930 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6931 = fsub fast float %6896, %6930
  %6932 = fsub fast float %6931, %6929
  %6933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6932)  ; FMax(a,b)
  %6934 = fmul fast float %6933, %6926
  %6935 = call float @dx.op.binary.f32(i32 36, float %6927, float %6934)  ; FMin(a,b)
  %6936 = fmul fast float %6935, 0xBFF7154760000000
  %6937 = call float @dx.op.unary.f32(i32 21, float %6936)  ; Exp(value)
  %6938 = fmul fast float %6876, %6937
  br label %6939

; <label>:6939                                    ; preds = %6924, %6769
  %6940 = phi float [ %6938, %6924 ], [ %6770, %6769 ]
  %6941 = call float @dx.op.binary.f32(i32 36, float %6940, float %6940)  ; FMin(a,b)
  %6942 = call float @dx.op.binary.f32(i32 36, float %6940, float %6941)  ; FMin(a,b)
  %6943 = fcmp fast ogt float %6942, 0.000000e+00
  br i1 %6943, label %6944, label %7191, !dx.controlflow.hints !128

; <label>:6944                                    ; preds = %6939
  %6945 = fmul fast float %6940, %5662
  %6946 = fmul fast float %6940, %5663
  %6947 = fmul fast float %6940, %5664
  %6948 = fsub fast float %169, %4736
  %6949 = fcmp fast ogt float %6948, 0.000000e+00
  %6950 = fmul fast float %5651, 5.120000e+02
  %6951 = fmul fast float %5652, 5.120000e+02
  %6952 = fmul fast float %5653, 5.120000e+02
  %6953 = fadd fast float %6952, %169
  %6954 = fsub fast float %4736, %6953
  %6955 = fmul fast float %6954, 2.000000e+00
  %6956 = fadd fast float %6955, %6953
  %6957 = select i1 %6949, float %6956, float %6953
  %6958 = fsub fast float %6957, %169
  %6959 = call float @dx.op.dot3.f32(i32 55, float %6950, float %6951, float %6958, float %6950, float %6951, float %6958)  ; Dot3(ax,ay,az,bx,by,bz)
  %6960 = call float @dx.op.unary.f32(i32 25, float %6959)  ; Rsqrt(value)
  %6961 = fmul fast float %6960, %6950
  %6962 = fmul fast float %6960, %6951
  %6963 = fmul fast float %6960, %6958
  %6964 = fsub fast float %4736, %169
  %6965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6964)  ; Dot3(ax,ay,az,bx,by,bz)
  %6966 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6961, float %6962, float %6963)  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = fdiv fast float 1.000000e+00, %6966
  %6968 = fmul fast float %6967, %6965
  %6969 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6948, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = fcmp fast ogt float %6969, 0.000000e+00
  %6971 = fcmp fast olt float %6969, 0.000000e+00
  %6972 = zext i1 %6970 to i32
  %6973 = zext i1 %6971 to i32
  %6974 = sub nsw i32 %6972, %6973
  %6975 = sitofp i32 %6974 to float
  %6976 = fsub fast float %6957, %4736
  %6977 = call float @dx.op.dot3.f32(i32 55, float %6950, float %6951, float %6976, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6978 = fcmp fast ogt float %6977, 0.000000e+00
  %6979 = fcmp fast olt float %6977, 0.000000e+00
  %6980 = zext i1 %6978 to i32
  %6981 = zext i1 %6979 to i32
  %6982 = sub nsw i32 %6980, %6981
  %6983 = sitofp i32 %6982 to float
  %6984 = fcmp fast une float %6975, %6983
  br i1 %6984, label %6985, label %6995

; <label>:6985                                    ; preds = %6944
  %6986 = fmul fast float %6968, %6963
  %6987 = fmul fast float %6968, %6962
  %6988 = fmul fast float %6968, %6961
  %6989 = fmul fast float %6988, %6988
  %6990 = fmul fast float %6987, %6987
  %6991 = fadd fast float %6989, %6990
  %6992 = fmul fast float %6986, %6986
  %6993 = fadd fast float %6991, %6992
  %6994 = call float @dx.op.unary.f32(i32 24, float %6993)  ; Sqrt(value)
  br label %7005

; <label>:6995                                    ; preds = %6944
  %6996 = icmp slt i32 %6974, 0
  br i1 %6996, label %6997, label %7005

; <label>:6997                                    ; preds = %6995
  %6998 = fsub fast float %169, %6957
  %6999 = fmul fast float %6950, %6950
  %7000 = fmul fast float %6951, %6951
  %7001 = fadd fast float %6999, %7000
  %7002 = fmul fast float %6998, %6998
  %7003 = fadd fast float %7001, %7002
  %7004 = call float @dx.op.unary.f32(i32 24, float %7003)  ; Sqrt(value)
  br label %7005

; <label>:7005                                    ; preds = %6997, %6995, %6985
  %7006 = phi float [ %6994, %6985 ], [ %7004, %6997 ], [ 0.000000e+00, %6995 ]
  %7007 = fsub fast float -0.000000e+00, %7006
  %7008 = select i1 %6949, float -0.000000e+00, float %7007
  %7009 = fmul fast float %4737, 0x3FF7154760000000
  %7010 = fmul fast float %7009, %7008
  %7011 = fmul fast float %4738, 0x3FF7154760000000
  %7012 = fmul fast float %7011, %7008
  %7013 = fmul fast float %4739, 0x3FF7154760000000
  %7014 = fmul fast float %7013, %7008
  %7015 = call float @dx.op.unary.f32(i32 21, float %7010)  ; Exp(value)
  %7016 = call float @dx.op.unary.f32(i32 21, float %7012)  ; Exp(value)
  %7017 = call float @dx.op.unary.f32(i32 21, float %7014)  ; Exp(value)
  %7018 = call float @dx.op.unary.f32(i32 7, float %7015)  ; Saturate(value)
  %7019 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7020 = call float @dx.op.unary.f32(i32 7, float %7017)  ; Saturate(value)
  %7021 = fmul fast float %6945, %7018
  %7022 = fmul fast float %6946, %7019
  %7023 = fmul fast float %6947, %7020
  %7024 = fsub fast float %5651, %187
  %7025 = fsub fast float %5652, %188
  %7026 = fsub fast float %5653, %189
  %7027 = call float @dx.op.dot3.f32(i32 55, float %7024, float %7025, float %7026, float %7024, float %7025, float %7026)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = call float @dx.op.unary.f32(i32 25, float %7027)  ; Rsqrt(value)
  %7029 = fmul fast float %7028, %7024
  %7030 = fmul fast float %7028, %7025
  %7031 = fmul fast float %7028, %7026
  %7032 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7033 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %7029, float %7030, float %7031)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  %7035 = fmul fast float %7034, %7034
  %7036 = fmul fast float %7035, %4958
  %7037 = call float @dx.op.unary.f32(i32 7, float %7036)  ; Saturate(value)
  %7038 = fmul fast float %7037, %7034
  %7039 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %7029, float %7030, float %7031)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = fmul fast float %7039, %7039
  %7041 = call float @dx.op.unary.f32(i32 6, float %7032)  ; FAbs(value)
  %7042 = fsub fast float 1.000000e+00, %4951
  %7043 = fmul fast float %4933, %4933
  %7044 = fmul fast float %7043, %7042
  %7045 = fadd fast float %7044, %4951
  %7046 = bitcast float %7045 to i32
  %7047 = ashr i32 %7046, 1
  %7048 = add nsw i32 %7047, 532487669
  %7049 = bitcast i32 %7048 to float
  %7050 = fadd fast float %7049, %4933
  %7051 = fmul fast float %4951, %7040
  %7052 = fsub fast float 1.000000e+00, %7040
  %7053 = fadd fast float %7052, %7051
  %7054 = fmul fast float %7041, %7041
  %7055 = fmul fast float %7054, %7042
  %7056 = fadd fast float %7055, %4951
  %7057 = bitcast float %7056 to i32
  %7058 = ashr i32 %7057, 1
  %7059 = add nsw i32 %7058, 532487669
  %7060 = bitcast i32 %7059 to float
  %7061 = fadd fast float %7060, %7041
  %7062 = fmul fast float %7053, %7053
  %7063 = fmul fast float %7062, %7050
  %7064 = fmul fast float %7063, %7061
  %7065 = fdiv fast float 0x3FF0A00000000000, %7064
  %7066 = fmul fast float %7065, %4951
  %7067 = call float @dx.op.unary.f32(i32 6, float %7033)  ; FAbs(value)
  %7068 = fsub fast float 1.000000e+00, %7067
  %7069 = bitcast float %7068 to i32
  %7070 = sitofp i32 %7069 to float
  %7071 = fmul fast float %7070, 5.000000e+00
  %7072 = fadd fast float %7071, 0xC1EFBF8940000000
  %7073 = fptosi float %7072 to i32
  %7074 = bitcast i32 %7073 to float
  %7075 = fsub fast float 1.000000e+00, %4922
  %7076 = fsub fast float 1.000000e+00, %4923
  %7077 = fsub fast float 1.000000e+00, %4931
  %7078 = fmul fast float %7074, %7075
  %7079 = fmul fast float %7074, %7076
  %7080 = fmul fast float %7074, %7077
  %7081 = fadd fast float %7078, %4922
  %7082 = fadd fast float %7079, %4923
  %7083 = fadd fast float %7080, %4931
  br i1 %5070, label %7084, label %7107

; <label>:7084                                    ; preds = %7005
  %7085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4312, float %7067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7086 = extractvalue %dx.types.ResRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.ResRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.ResRet.f32 %7085, 2
  %7089 = fadd fast float %7086, -5.000000e-01
  %7090 = fadd fast float %7087, -5.000000e-01
  %7091 = fadd fast float %7088, -5.000000e-01
  %7092 = fmul fast float %4922, 4.000000e+00
  %7093 = fmul fast float %7092, %7075
  %7094 = fmul fast float %7093, %7089
  %7095 = fmul fast float %4923, 4.000000e+00
  %7096 = fmul fast float %7095, %7076
  %7097 = fmul fast float %7096, %7090
  %7098 = fmul fast float %4931, 4.000000e+00
  %7099 = fmul fast float %7098, %7077
  %7100 = fmul fast float %7099, %7091
  %7101 = fadd fast float %7094, %7081
  %7102 = fadd fast float %7097, %7082
  %7103 = fadd fast float %7100, %7083
  %7104 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  %7105 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7106 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  br label %7107

; <label>:7107                                    ; preds = %7084, %7005
  %7108 = phi float [ %7104, %7084 ], [ %7081, %7005 ]
  %7109 = phi float [ %7105, %7084 ], [ %7082, %7005 ]
  %7110 = phi float [ %7106, %7084 ], [ %7083, %7005 ]
  %7111 = fmul fast float %7032, 9.843750e-01
  %7112 = fadd fast float %7111, 7.812500e-03
  %7113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7112, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7114 = extractvalue %dx.types.ResRet.f32 %7113, 2
  %7115 = extractvalue %dx.types.ResRet.f32 %7113, 3
  %7116 = fmul fast float %7114, %4922
  %7117 = fmul fast float %7114, %4923
  %7118 = fmul fast float %7114, %4931
  %7119 = fadd fast float %7116, %7115
  %7120 = fadd fast float %7117, %7115
  %7121 = fadd fast float %7118, %7115
  br i1 %5070, label %7122, label %7145

; <label>:7122                                    ; preds = %7107
  %7123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4312, float %7032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7124 = extractvalue %dx.types.ResRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.ResRet.f32 %7123, 1
  %7126 = extractvalue %dx.types.ResRet.f32 %7123, 2
  %7127 = fadd fast float %7124, -5.000000e-01
  %7128 = fadd fast float %7125, -5.000000e-01
  %7129 = fadd fast float %7126, -5.000000e-01
  %7130 = fmul fast float %4922, 4.000000e+00
  %7131 = fmul fast float %7130, %7075
  %7132 = fmul fast float %7131, %7127
  %7133 = fmul fast float %4923, 4.000000e+00
  %7134 = fmul fast float %7133, %7076
  %7135 = fmul fast float %7134, %7128
  %7136 = fmul fast float %4931, 4.000000e+00
  %7137 = fmul fast float %7136, %7077
  %7138 = fmul fast float %7137, %7129
  %7139 = fadd fast float %7132, %7119
  %7140 = fadd fast float %7135, %7120
  %7141 = fadd fast float %7138, %7121
  %7142 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  %7143 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  %7144 = call float @dx.op.unary.f32(i32 7, float %7141)  ; Saturate(value)
  br label %7145

; <label>:7145                                    ; preds = %7122, %7107
  %7146 = phi float [ %7142, %7122 ], [ %7119, %7107 ]
  %7147 = phi float [ %7143, %7122 ], [ %7120, %7107 ]
  %7148 = phi float [ %7144, %7122 ], [ %7121, %7107 ]
  %7149 = call float @dx.op.binary.f32(i32 35, float %7147, float %7148)  ; FMax(a,b)
  %7150 = call float @dx.op.binary.f32(i32 35, float %7146, float %7149)  ; FMax(a,b)
  %7151 = fsub fast float 1.000000e+00, %7150
  %7152 = fmul fast float %7108, %7066
  %7153 = fmul fast float %7109, %7066
  %7154 = fmul fast float %7110, %7066
  %7155 = fsub fast float 1.000000e+00, %7033
  %7156 = bitcast float %7155 to i32
  %7157 = sitofp i32 %7156 to float
  %7158 = fmul fast float %7157, 5.000000e+00
  %7159 = fadd fast float %7158, 0xC1EFBF8940000000
  %7160 = fptosi float %7159 to i32
  %7161 = bitcast i32 %7160 to float
  %7162 = fmul fast float %7161, %4313
  %7163 = fmul fast float %7151, %7162
  %7164 = fmul fast float %7163, %5612
  %7165 = fmul fast float %7163, %5613
  %7166 = fmul fast float %7163, %5614
  %7167 = fadd fast float %7164, %7152
  %7168 = fadd fast float %7165, %7153
  %7169 = fadd fast float %7166, %7154
  %7170 = fmul fast float %7038, %7021
  %7171 = fmul fast float %7170, %7151
  %7172 = fmul fast float %7038, %7022
  %7173 = fmul fast float %7172, %7151
  %7174 = fmul fast float %7038, %7023
  %7175 = fmul fast float %7174, %7151
  %7176 = fmul fast float %7170, %7167
  %7177 = fmul fast float %7172, %7168
  %7178 = fmul fast float %7174, %7169
  %7179 = fadd fast float %7171, %5596
  %7180 = fmul fast float %7179, %4339
  %7181 = fadd fast float %7173, %5597
  %7182 = fmul fast float %7181, %4339
  %7183 = fadd fast float %7175, %5598
  %7184 = fmul fast float %7183, %4339
  %7185 = fadd fast float %7176, %5639
  %7186 = fmul fast float %7185, %4339
  %7187 = fadd fast float %7177, %5642
  %7188 = fmul fast float %7187, %4339
  %7189 = fadd fast float %7178, %5645
  %7190 = fmul fast float %7189, %4339
  br label %7191

; <label>:7191                                    ; preds = %7145, %6939, %5592
  %7192 = phi float [ %5640, %5592 ], [ %5640, %6939 ], [ %7186, %7145 ]
  %7193 = phi float [ %5643, %5592 ], [ %5643, %6939 ], [ %7188, %7145 ]
  %7194 = phi float [ %5646, %5592 ], [ %5646, %6939 ], [ %7190, %7145 ]
  %7195 = phi float [ %5635, %5592 ], [ %5635, %6939 ], [ %7180, %7145 ]
  %7196 = phi float [ %5636, %5592 ], [ %5636, %6939 ], [ %7182, %7145 ]
  %7197 = phi float [ %5637, %5592 ], [ %5637, %6939 ], [ %7184, %7145 ]
  %7198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7199 = extractvalue %dx.types.CBufRet.i32 %7198, 0
  %7200 = icmp eq i32 %7199, 0
  br i1 %7200, label %7863, label %7201

; <label>:7201                                    ; preds = %7191
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 2
  %7204 = extractvalue %dx.types.CBufRet.f32 %7202, 3
  %7205 = fmul fast float %7203, %104
  %7206 = fmul fast float %7204, %105
  %7207 = fptoui float %7205 to i32
  %7208 = fptoui float %7206 to i32
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 2
  %7212 = extractvalue %dx.types.CBufRet.f32 %7209, 3
  %7213 = fadd fast float %92, -4.000000e+00
  %7214 = call float @dx.op.binary.f32(i32 35, float %7213, float 0.000000e+00)  ; FMax(a,b)
  %7215 = fadd fast float %7214, %7210
  %7216 = fmul fast float %7215, %7211
  %7217 = call float @dx.op.unary.f32(i32 23, float %7216)  ; Log(value)
  %7218 = fmul fast float %7217, %7212
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7221 = fmul fast float %7218, %7220
  %7222 = call float @dx.op.unary.f32(i32 7, float %7221)  ; Saturate(value)
  %7223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.i32 %7223, 1
  %7225 = add i32 %7224, -1
  %7226 = uitofp i32 %7224 to float
  %7227 = fmul fast float %7226, %7222
  %7228 = fptoui float %7227 to i32
  %7229 = call i32 @dx.op.binary.i32(i32 40, i32 %7228, i32 %7225)  ; UMin(a,b)
  %7230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.i32 %7230, 2
  %7232 = extractvalue %dx.types.CBufRet.i32 %7230, 3
  %7233 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7208, i32 %7231, i32 %7207)  ; UMad(a,b,c)
  %7234 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7229, i32 %7232, i32 %7233)  ; UMad(a,b,c)
  %7235 = add nsw i32 %7199, -1
  %7236 = call i32 @dx.op.binary.i32(i32 37, i32 %7235, i32 0)  ; IMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7238 = fptoui float %7237 to i32
  %7239 = lshr i32 %7238, 5
  %7240 = call i32 @dx.op.binary.i32(i32 40, i32 %7239, i32 8191)  ; UMin(a,b)
  %7241 = shl i32 %7240, 2
  %7242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7241, i32 undef)  ; BufferLoad(srv,index,wot)
  %7243 = extractvalue %dx.types.ResRet.i32 %7242, 0
  %7244 = lshr i32 %7243, 16
  %7245 = and i32 %7243, 65535
  %7246 = lshr i32 %7243, 21
  %7247 = lshr i32 %7245, 5
  %7248 = call i32 @dx.op.binary.i32(i32 40, i32 %7247, i32 %7236)  ; UMin(a,b)
  %7249 = icmp ugt i32 %7246, %7248
  br i1 %7249, label %7863, label %7250

; <label>:7250                                    ; preds = %7201
  br label %7251

; <label>:7251                                    ; preds = %7853, %7250
  %7252 = phi i32 [ %7860, %7853 ], [ %7246, %7250 ]
  %7253 = phi float [ %7854, %7853 ], [ %7192, %7250 ]
  %7254 = phi float [ %7855, %7853 ], [ %7193, %7250 ]
  %7255 = phi float [ %7856, %7853 ], [ %7194, %7250 ]
  %7256 = phi float [ %7857, %7853 ], [ %7195, %7250 ]
  %7257 = phi float [ %7858, %7853 ], [ %7196, %7250 ]
  %7258 = phi float [ %7859, %7853 ], [ %7197, %7250 ]
  %7259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.i32 %7259, 0
  %7261 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7234, i32 %7260, i32 %7252)  ; UMad(a,b,c)
  %7262 = shl i32 %7261, 2
  %7263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7262, i32 undef)  ; BufferLoad(srv,index,wot)
  %7264 = extractvalue %dx.types.ResRet.i32 %7263, 0
  %7265 = shl i32 %7252, 5
  %7266 = sub nsw i32 %7244, %7265
  %7267 = call i32 @dx.op.binary.i32(i32 37, i32 %7266, i32 0)  ; IMax(a,b)
  %7268 = call i32 @dx.op.binary.i32(i32 38, i32 %7267, i32 31)  ; IMin(a,b)
  %7269 = sub nsw i32 1, %7244
  %7270 = add nsw i32 %7269, %7245
  %7271 = call i32 @dx.op.binary.i32(i32 37, i32 %7270, i32 0)  ; IMax(a,b)
  %7272 = call i32 @dx.op.binary.i32(i32 38, i32 %7271, i32 32)  ; IMin(a,b)
  %7273 = and i32 %7272, 31
  %7274 = shl i32 -1, %7273
  %7275 = xor i32 %7274, -1
  %7276 = and i32 %7268, 31
  %7277 = shl i32 %7275, %7276
  %7278 = icmp eq i32 %7272, 32
  %7279 = select i1 %7278, i32 -1, i32 %7277
  %7280 = and i32 %7279, %7264
  %7281 = icmp eq i32 %7280, 0
  br i1 %7281, label %7853, label %7282

; <label>:7282                                    ; preds = %7251
  br label %7283

; <label>:7283                                    ; preds = %7417, %7282
  %7284 = phi i32 [ %7295, %7417 ], [ %7280, %7282 ]
  %7285 = phi float [ %7418, %7417 ], [ %7253, %7282 ]
  %7286 = phi float [ %7419, %7417 ], [ %7254, %7282 ]
  %7287 = phi float [ %7420, %7417 ], [ %7255, %7282 ]
  %7288 = phi float [ %7421, %7417 ], [ %7256, %7282 ]
  %7289 = phi float [ %7422, %7417 ], [ %7257, %7282 ]
  %7290 = phi float [ %7423, %7417 ], [ %7258, %7282 ]
  %7291 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7284)  ; FirstbitLo(value)
  %7292 = add i32 %7291, %7265
  %7293 = and i32 %7291, 31
  %7294 = shl i32 1, %7293
  %7295 = xor i32 %7294, %7284
  %7296 = mul i32 %7292, 112
  %7297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7296, i32 undef)  ; BufferLoad(srv,index,wot)
  %7298 = extractvalue %dx.types.ResRet.f32 %7297, 0
  %7299 = extractvalue %dx.types.ResRet.f32 %7297, 1
  %7300 = extractvalue %dx.types.ResRet.f32 %7297, 2
  %7301 = or i32 %7296, 12
  %7302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7301, i32 undef)  ; BufferLoad(srv,index,wot)
  %7303 = extractvalue %dx.types.ResRet.f32 %7302, 0
  %7304 = add i32 %7296, 16
  %7305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7304, i32 undef)  ; BufferLoad(srv,index,wot)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.ResRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7305, 2
  %7309 = add i32 %7296, 28
  %7310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7309, i32 undef)  ; BufferLoad(srv,index,wot)
  %7311 = extractvalue %dx.types.ResRet.i32 %7310, 0
  %7312 = add i32 %7296, 44
  %7313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7312, i32 undef)  ; BufferLoad(srv,index,wot)
  %7314 = extractvalue %dx.types.ResRet.f32 %7313, 0
  %7315 = add i32 %7296, 48
  %7316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7315, i32 undef)  ; BufferLoad(srv,index,wot)
  %7317 = extractvalue %dx.types.ResRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.ResRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.ResRet.f32 %7316, 2
  %7320 = extractvalue %dx.types.ResRet.f32 %7316, 3
  %7321 = add i32 %7296, 64
  %7322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7321, i32 undef)  ; BufferLoad(srv,index,wot)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.ResRet.f32 %7322, 1
  %7325 = extractvalue %dx.types.ResRet.f32 %7322, 2
  %7326 = extractvalue %dx.types.ResRet.f32 %7322, 3
  %7327 = add i32 %7296, 80
  %7328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7327, i32 undef)  ; BufferLoad(srv,index,wot)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 1
  %7330 = extractvalue %dx.types.ResRet.f32 %7328, 2
  %7331 = add i32 %7296, 92
  %7332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7331, i32 undef)  ; BufferLoad(srv,index,wot)
  %7333 = extractvalue %dx.types.ResRet.i32 %7332, 0
  %7334 = call float @dx.op.dot3.f32(i32 55, float %7298, float %7299, float %7300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7335 = select i1 %261, float %7329, float %7298
  %7336 = select i1 %261, float %7334, float %7299
  %7337 = select i1 %261, float %7330, float %7300
  %7338 = and i32 %7333, 65535
  %7339 = uitofp i32 %7338 to float
  %7340 = lshr i32 %7333, 16
  %7341 = uitofp i32 %7340 to float
  %7342 = and i32 %7311, 65535
  %7343 = and i32 %7311, 50331648
  %7344 = icmp eq i32 %7343, 33554432
  %7345 = fsub fast float %7317, %167
  %7346 = fsub fast float %7318, %168
  %7347 = fsub fast float %7319, %169
  %7348 = call float @dx.op.dot3.f32(i32 55, float %7345, float %7346, float %7347, float %7345, float %7346, float %7347)  ; Dot3(ax,ay,az,bx,by,bz)
  %7349 = call float @dx.op.unary.f32(i32 24, float %7348)  ; Sqrt(value)
  %7350 = fdiv fast float 1.000000e+00, %7349
  %7351 = fmul fast float %7350, %7345
  %7352 = fmul fast float %7350, %7346
  %7353 = fmul fast float %7350, %7347
  %7354 = fadd fast float %7349, %7303
  %7355 = fdiv fast float 1.000000e+00, %7354
  %7356 = fmul float %7314, %7355
  %7357 = fmul float %7356, %7356
  %7358 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  br i1 %7344, label %7359, label %7380

; <label>:7359                                    ; preds = %7283
  %7360 = fmul fast float %7325, %7306
  %7361 = fmul fast float %7325, %7307
  %7362 = fmul fast float %7325, %7308
  %7363 = fadd fast float %7345, %7360
  %7364 = fadd fast float %7346, %7361
  %7365 = fadd fast float %7347, %7362
  %7366 = call float @dx.op.dot3.f32(i32 55, float %7363, float %7364, float %7365, float %7363, float %7364, float %7365)  ; Dot3(ax,ay,az,bx,by,bz)
  %7367 = call float @dx.op.unary.f32(i32 25, float %7366)  ; Rsqrt(value)
  %7368 = fmul fast float %7367, %7363
  %7369 = fmul fast float %7367, %7364
  %7370 = fmul fast float %7367, %7365
  %7371 = fsub fast float %167, %7317
  %7372 = fsub fast float %168, %7318
  %7373 = fsub fast float %169, %7319
  %7374 = fsub fast float -0.000000e+00, %7371
  %7375 = fsub fast float -0.000000e+00, %7372
  %7376 = fsub fast float -0.000000e+00, %7373
  %7377 = call float @dx.op.dot3.f32(i32 55, float %7374, float %7375, float %7376, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7378 = fcmp fast ogt float %7377, 0.000000e+00
  %7379 = uitofp i1 %7378 to float
  br label %7380

; <label>:7380                                    ; preds = %7359, %7283
  %7381 = phi float [ %7379, %7359 ], [ 1.000000e+00, %7283 ]
  %7382 = phi float [ %7368, %7359 ], [ %7351, %7283 ]
  %7383 = phi float [ %7369, %7359 ], [ %7352, %7283 ]
  %7384 = phi float [ %7370, %7359 ], [ %7353, %7283 ]
  %7385 = call float @dx.op.dot3.f32(i32 55, float %7306, float %7307, float %7308, float %7382, float %7383, float %7384)  ; Dot3(ax,ay,az,bx,by,bz)
  %7386 = fmul fast float %7385, %7385
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = fsub fast float 1.000000e+00, %7387
  %7389 = fmul fast float %7388, 5.000000e-01
  %7390 = fcmp fast ogt float %7385, 0.000000e+00
  %7391 = fsub fast float 1.000000e+00, %7389
  %7392 = select i1 %7390, float %7389, float %7391
  %7393 = fmul fast float %7392, %7341
  %7394 = fadd fast float %7393, %7339
  %7395 = fmul fast float %7394, 0x3EF0001000000000
  %7396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7395, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7397 = extractvalue %dx.types.ResRet.f32 %7396, 0
  %7398 = fmul fast float %7385, %7323
  %7399 = fadd fast float %7398, %7324
  %7400 = call float @dx.op.unary.f32(i32 7, float %7399)  ; Saturate(value)
  %7401 = select i1 %7344, float 1.000000e+00, float %7400
  %7402 = select i1 %7344, float %7400, float 1.000000e+00
  %7403 = fmul fast float %7349, %7320
  %7404 = fsub fast float 1.000000e+00, %7403
  %7405 = fmul fast float %7404, %7326
  %7406 = call float @dx.op.unary.f32(i32 7, float %7405)  ; Saturate(value)
  %7407 = fmul fast float %7406, %7402
  %7408 = fmul fast float %7407, 2.000000e+00
  %7409 = fsub fast float 3.000000e+00, %7408
  %7410 = fmul fast float %7397, %7381
  %7411 = fmul fast float %7407, %7407
  %7412 = fmul fast float %7411, %7410
  %7413 = fmul fast float %7412, %7409
  %7414 = call float @dx.op.binary.f32(i32 36, float %7413, float %7413)  ; FMin(a,b)
  %7415 = call float @dx.op.binary.f32(i32 36, float %7413, float %7414)  ; FMin(a,b)
  %7416 = fcmp fast ogt float %7415, 0.000000e+00
  br i1 %7416, label %7425, label %7417, !dx.controlflow.hints !129

; <label>:7417                                    ; preds = %7809, %7571, %7380
  %7418 = phi float [ %7285, %7571 ], [ %7285, %7380 ], [ %7849, %7809 ]
  %7419 = phi float [ %7286, %7571 ], [ %7286, %7380 ], [ %7850, %7809 ]
  %7420 = phi float [ %7287, %7571 ], [ %7287, %7380 ], [ %7851, %7809 ]
  %7421 = phi float [ %7288, %7571 ], [ %7288, %7380 ], [ %7843, %7809 ]
  %7422 = phi float [ %7289, %7571 ], [ %7289, %7380 ], [ %7844, %7809 ]
  %7423 = phi float [ %7290, %7571 ], [ %7290, %7380 ], [ %7845, %7809 ]
  %7424 = icmp eq i32 %7284, %7294
  br i1 %7424, label %7852, label %7283

; <label>:7425                                    ; preds = %7380
  %7426 = icmp eq i32 %7342, 255
  br i1 %7426, label %7571, label %7427, !dx.controlflow.hints !130

; <label>:7427                                    ; preds = %7425
  %7428 = mul nuw nsw i32 %7342, 176
  %7429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7428, i32 undef)  ; BufferLoad(srv,index,wot)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7429, 3
  %7434 = add nuw nsw i32 %7428, 16
  %7435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7434, i32 undef)  ; BufferLoad(srv,index,wot)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.ResRet.f32 %7435, 1
  %7438 = add nuw nsw i32 %7428, 32
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = add nuw nsw i32 %7428, 48
  %7444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = extractvalue %dx.types.ResRet.f32 %7444, 3
  %7449 = add nuw nsw i32 %7428, 64
  %7450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7449, i32 undef)  ; BufferLoad(srv,index,wot)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.ResRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.ResRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.ResRet.f32 %7450, 3
  %7455 = add nuw nsw i32 %7428, 80
  %7456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7455, i32 undef)  ; BufferLoad(srv,index,wot)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.ResRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.ResRet.f32 %7456, 2
  %7460 = extractvalue %dx.types.ResRet.f32 %7456, 3
  %7461 = add nuw nsw i32 %7428, 96
  %7462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7461, i32 undef)  ; BufferLoad(srv,index,wot)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.ResRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.ResRet.f32 %7462, 2
  %7466 = extractvalue %dx.types.ResRet.f32 %7462, 3
  %7467 = bitcast float %7437 to i32
  %7468 = fmul fast float %7442, %111
  %7469 = fmul fast float %7442, %112
  %7470 = fmul fast float %7442, %113
  %7471 = fadd fast float %7468, %167
  %7472 = fadd fast float %7469, %168
  %7473 = fadd fast float %7470, %169
  %7474 = fmul fast float %7471, %7445
  %7475 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7451, float %7474)  ; FMad(a,b,c)
  %7476 = call float @dx.op.tertiary.f32(i32 46, float %7473, float %7457, float %7475)  ; FMad(a,b,c)
  %7477 = fadd fast float %7476, %7463
  %7478 = fmul fast float %7471, %7446
  %7479 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7452, float %7478)  ; FMad(a,b,c)
  %7480 = call float @dx.op.tertiary.f32(i32 46, float %7473, float %7458, float %7479)  ; FMad(a,b,c)
  %7481 = fadd fast float %7480, %7464
  %7482 = fmul fast float %7471, %7447
  %7483 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7453, float %7482)  ; FMad(a,b,c)
  %7484 = call float @dx.op.tertiary.f32(i32 46, float %7473, float %7459, float %7483)  ; FMad(a,b,c)
  %7485 = fadd fast float %7484, %7465
  %7486 = fmul fast float %7471, %7448
  %7487 = call float @dx.op.tertiary.f32(i32 46, float %7472, float %7454, float %7486)  ; FMad(a,b,c)
  %7488 = call float @dx.op.tertiary.f32(i32 46, float %7473, float %7460, float %7487)  ; FMad(a,b,c)
  %7489 = fadd fast float %7488, %7466
  %7490 = fdiv fast float %7477, %7489
  %7491 = fdiv fast float %7481, %7489
  %7492 = fdiv fast float %7485, %7489
  %7493 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7492)  ; FMax(a,b)
  %7494 = fmul fast float %272, 0x401921FB60000000
  %7495 = call float @dx.op.unary.f32(i32 13, float %7494)  ; Sin(value)
  %7496 = call float @dx.op.unary.f32(i32 12, float %7494)  ; Cos(value)
  %7497 = fmul fast float %7496, %7441
  %7498 = call float @dx.op.tertiary.f32(i32 46, float %7495, float %7441, float 0.000000e+00)  ; FMad(a,b,c)
  %7499 = fmul fast float %7441, %7495
  %7500 = fsub fast float -0.000000e+00, %7499
  %7501 = call float @dx.op.tertiary.f32(i32 46, float %7496, float %7441, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7502

; <label>:7502                                    ; preds = %7502, %7427
  %7503 = phi float [ 0.000000e+00, %7427 ], [ %7535, %7502 ]
  %7504 = phi float [ 0.000000e+00, %7427 ], [ %7537, %7502 ]
  %7505 = phi i32 [ 0, %7427 ], [ %7538, %7502 ]
  %7506 = mul i32 %7505, 2
  %7507 = add i32 0, %7506
  %7508 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7507
  %7509 = load float, float* %7508, align 4
  %7510 = mul i32 %7505, 2
  %7511 = add i32 1, %7510
  %7512 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7511
  %7513 = load float, float* %7512, align 4
  %7514 = fmul fast float %7497, %7509
  %7515 = call float @dx.op.tertiary.f32(i32 46, float %7513, float %7500, float %7514)  ; FMad(a,b,c)
  %7516 = fmul fast float %7509, %7498
  %7517 = call float @dx.op.tertiary.f32(i32 46, float %7513, float %7501, float %7516)  ; FMad(a,b,c)
  %7518 = fadd fast float %7515, %7490
  %7519 = fadd fast float %7517, %7491
  %7520 = fmul fast float %7518, %7436
  %7521 = fmul fast float %7519, %7436
  %7522 = call float @dx.op.binary.f32(i32 35, float %7520, float %7432)  ; FMax(a,b)
  %7523 = call float @dx.op.binary.f32(i32 35, float %7521, float %7432)  ; FMax(a,b)
  %7524 = call float @dx.op.binary.f32(i32 36, float %7522, float %7433)  ; FMin(a,b)
  %7525 = call float @dx.op.binary.f32(i32 36, float %7523, float %7433)  ; FMin(a,b)
  %7526 = fadd fast float %7524, %7430
  %7527 = fadd fast float %7525, %7431
  %7528 = uitofp i32 %7467 to float
  %7529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7526, float %7527, float %7528, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 0
  %7531 = fsub fast float %7530, %7493
  %7532 = fsub fast float %7531, %7440
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  %7534 = select i1 %7533, float 1.000000e+00, float 0.000000e+00
  %7535 = fadd fast float %7534, %7503
  %7536 = select i1 %7533, float %7532, float 0.000000e+00
  %7537 = fadd fast float %7536, %7504
  %7538 = add nuw nsw i32 %7505, 1
  %7539 = icmp eq i32 %7538, 8
  br i1 %7539, label %7540, label %7502

; <label>:7540                                    ; preds = %7502
  %7541 = fdiv fast float 1.000000e+00, %7535
  %7542 = fmul fast float %7541, %7537
  %7543 = fdiv fast float 1.000000e+00, %7493
  %7544 = fmul fast float %7542, %7543
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = call float @dx.op.binary.f32(i32 35, float %7545, float 0.000000e+00)  ; FMax(a,b)
  %7547 = fmul fast float %7535, 1.250000e-01
  %7548 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7549 = fmul fast float %7548, 2.000000e+00
  %7550 = fadd fast float %7549, -1.000000e+00
  %7551 = fcmp fast ogt float %7550, 0.000000e+00
  %7552 = fcmp fast olt float %7550, 0.000000e+00
  %7553 = zext i1 %7551 to i32
  %7554 = zext i1 %7552 to i32
  %7555 = sub nsw i32 %7553, %7554
  %7556 = sitofp i32 %7555 to float
  %7557 = fmul fast float %7556, %7550
  %7558 = fsub fast float 1.000000e+00, %7557
  %7559 = fmul fast float %7558, %7558
  %7560 = fmul fast float %7559, %7558
  %7561 = fsub fast float %7558, %7560
  %7562 = fmul fast float %7561, %7546
  %7563 = fsub fast float 1.000000e+00, %7560
  %7564 = fsub fast float %7563, %7562
  %7565 = fmul fast float %7556, 5.000000e-01
  %7566 = fmul fast float %7565, %7564
  %7567 = fsub fast float -5.000000e-01, %7566
  %7568 = fmul fast float %7567, %7401
  %7569 = fadd fast float %7568, 1.000000e+00
  %7570 = fmul fast float %7569, %7413
  br label %7571

; <label>:7571                                    ; preds = %7540, %7425
  %7572 = phi float [ %7570, %7540 ], [ %7413, %7425 ]
  %7573 = call float @dx.op.binary.f32(i32 36, float %7572, float %7572)  ; FMin(a,b)
  %7574 = call float @dx.op.binary.f32(i32 36, float %7572, float %7573)  ; FMin(a,b)
  %7575 = fcmp fast ogt float %7574, 0.000000e+00
  br i1 %7575, label %7576, label %7417, !dx.controlflow.hints !131

; <label>:7576                                    ; preds = %7571
  %7577 = fmul fast float %7572, %7335
  %7578 = fmul fast float %7572, %7336
  %7579 = fmul fast float %7572, %7337
  %7580 = fsub fast float %7319, %4736
  %7581 = fcmp fast ogt float %7580, 0.000000e+00
  %7582 = fsub fast float %169, %4736
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  %7584 = xor i1 %7583, %7581
  %7585 = fsub fast float %4736, %7319
  %7586 = fmul fast float %7585, 2.000000e+00
  %7587 = fadd fast float %7586, %7319
  %7588 = select i1 %7584, float %7319, float %7587
  %7589 = fsub fast float %7588, %169
  %7590 = call float @dx.op.dot3.f32(i32 55, float %7345, float %7346, float %7589, float %7345, float %7346, float %7589)  ; Dot3(ax,ay,az,bx,by,bz)
  %7591 = call float @dx.op.unary.f32(i32 25, float %7590)  ; Rsqrt(value)
  %7592 = fmul fast float %7591, %7345
  %7593 = fmul fast float %7591, %7346
  %7594 = fmul fast float %7591, %7589
  %7595 = fsub fast float %4736, %169
  %7596 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7595)  ; Dot3(ax,ay,az,bx,by,bz)
  %7597 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7592, float %7593, float %7594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7598 = fdiv fast float 1.000000e+00, %7597
  %7599 = fmul fast float %7598, %7596
  %7600 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7582, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7601 = fcmp fast ogt float %7600, 0.000000e+00
  %7602 = fcmp fast olt float %7600, 0.000000e+00
  %7603 = zext i1 %7601 to i32
  %7604 = zext i1 %7602 to i32
  %7605 = sub nsw i32 %7603, %7604
  %7606 = sitofp i32 %7605 to float
  %7607 = fsub fast float %7588, %4736
  %7608 = call float @dx.op.dot3.f32(i32 55, float %7345, float %7346, float %7607, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7609 = fcmp fast ogt float %7608, 0.000000e+00
  %7610 = fcmp fast olt float %7608, 0.000000e+00
  %7611 = zext i1 %7609 to i32
  %7612 = zext i1 %7610 to i32
  %7613 = sub nsw i32 %7611, %7612
  %7614 = sitofp i32 %7613 to float
  %7615 = fcmp fast une float %7606, %7614
  br i1 %7615, label %7616, label %7626

; <label>:7616                                    ; preds = %7576
  %7617 = fmul fast float %7599, %7594
  %7618 = fmul fast float %7599, %7593
  %7619 = fmul fast float %7599, %7592
  %7620 = fmul fast float %7619, %7619
  %7621 = fmul fast float %7618, %7618
  %7622 = fadd fast float %7620, %7621
  %7623 = fmul fast float %7617, %7617
  %7624 = fadd fast float %7622, %7623
  %7625 = call float @dx.op.unary.f32(i32 24, float %7624)  ; Sqrt(value)
  br label %7638

; <label>:7626                                    ; preds = %7576
  %7627 = icmp slt i32 %7605, 0
  br i1 %7627, label %7628, label %7638

; <label>:7628                                    ; preds = %7626
  %7629 = fsub fast float %167, %7317
  %7630 = fsub fast float %168, %7318
  %7631 = fsub fast float %169, %7588
  %7632 = fmul fast float %7629, %7629
  %7633 = fmul fast float %7630, %7630
  %7634 = fadd fast float %7632, %7633
  %7635 = fmul fast float %7631, %7631
  %7636 = fadd fast float %7634, %7635
  %7637 = call float @dx.op.unary.f32(i32 24, float %7636)  ; Sqrt(value)
  br label %7638

; <label>:7638                                    ; preds = %7628, %7626, %7616
  %7639 = phi float [ %7625, %7616 ], [ %7637, %7628 ], [ 0.000000e+00, %7626 ]
  %7640 = and i1 %7583, %7581
  %7641 = fsub fast float -0.000000e+00, %7639
  %7642 = select i1 %7640, float -0.000000e+00, float %7641
  %7643 = fmul fast float %4737, 0x3FF7154760000000
  %7644 = fmul fast float %7643, %7642
  %7645 = fmul fast float %4738, 0x3FF7154760000000
  %7646 = fmul fast float %7645, %7642
  %7647 = fmul fast float %4739, 0x3FF7154760000000
  %7648 = fmul fast float %7647, %7642
  %7649 = call float @dx.op.unary.f32(i32 21, float %7644)  ; Exp(value)
  %7650 = call float @dx.op.unary.f32(i32 21, float %7646)  ; Exp(value)
  %7651 = call float @dx.op.unary.f32(i32 21, float %7648)  ; Exp(value)
  %7652 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7653 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7654 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7655 = fmul fast float %7577, %7652
  %7656 = fmul fast float %7578, %7653
  %7657 = fmul fast float %7579, %7654
  %7658 = fsub fast float %7351, %187
  %7659 = fsub fast float %7352, %188
  %7660 = fsub fast float %7353, %189
  %7661 = call float @dx.op.dot3.f32(i32 55, float %7658, float %7659, float %7660, float %7658, float %7659, float %7660)  ; Dot3(ax,ay,az,bx,by,bz)
  %7662 = call float @dx.op.unary.f32(i32 25, float %7661)  ; Rsqrt(value)
  %7663 = fmul fast float %7662, %7658
  %7664 = fmul fast float %7662, %7659
  %7665 = fmul fast float %7662, %7660
  %7666 = call float @dx.op.dot3.f32(i32 55, float %7351, float %7352, float %7353, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %7663, float %7664, float %7665)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7669 = fmul fast float %7668, %7358
  %7670 = fmul fast float %7668, %7668
  %7671 = fmul fast float %7670, %4958
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = fmul fast float %7669, %7672
  %7674 = bitcast float %7348 to i32
  %7675 = ashr i32 %7674, 1
  %7676 = sub nsw i32 1597463007, %7675
  %7677 = bitcast i32 %7676 to float
  %7678 = fmul fast float %7677, %7345
  %7679 = fmul fast float %7677, %7346
  %7680 = fmul fast float %7677, %7347
  %7681 = fsub fast float %7678, %187
  %7682 = fsub fast float %7679, %188
  %7683 = fsub fast float %7680, %189
  %7684 = call float @dx.op.dot3.f32(i32 55, float %7681, float %7682, float %7683, float %7681, float %7682, float %7683)  ; Dot3(ax,ay,az,bx,by,bz)
  %7685 = call float @dx.op.unary.f32(i32 25, float %7684)  ; Rsqrt(value)
  %7686 = fmul fast float %7681, %7685
  %7687 = fmul fast float %7682, %7685
  %7688 = fmul fast float %7683, %7685
  %7689 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %7686, float %7687, float %7688)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = fmul fast float %7689, %7689
  %7691 = call float @dx.op.unary.f32(i32 6, float %7666)  ; FAbs(value)
  %7692 = fsub fast float 1.000000e+00, %4951
  %7693 = fmul fast float %4933, %4933
  %7694 = fmul fast float %7693, %7692
  %7695 = fadd fast float %7694, %4951
  %7696 = bitcast float %7695 to i32
  %7697 = ashr i32 %7696, 1
  %7698 = add nsw i32 %7697, 532487669
  %7699 = bitcast i32 %7698 to float
  %7700 = fadd fast float %7699, %4933
  %7701 = fmul fast float %4951, %7690
  %7702 = fsub fast float 1.000000e+00, %7690
  %7703 = fadd fast float %7702, %7701
  %7704 = fmul fast float %7691, %7691
  %7705 = fmul fast float %7704, %7692
  %7706 = fadd fast float %7705, %4951
  %7707 = bitcast float %7706 to i32
  %7708 = ashr i32 %7707, 1
  %7709 = add nsw i32 %7708, 532487669
  %7710 = bitcast i32 %7709 to float
  %7711 = fadd fast float %7710, %7691
  %7712 = fmul fast float %7703, %7703
  %7713 = fmul fast float %7712, %7700
  %7714 = fmul fast float %7713, %7711
  %7715 = fdiv fast float 1.000000e+00, %7714
  %7716 = bitcast float %4951 to i32
  %7717 = sitofp i32 %7716 to float
  %7718 = fmul fast float %7717, 0x3FE7F73180000000
  %7719 = fadd fast float %7718, 0x41AFE27C40000000
  %7720 = fptosi float %7719 to i32
  %7721 = bitcast i32 %7720 to float
  %7722 = fmul fast float %7314, 0x3FD80E9D60000000
  %7723 = fmul fast float %7722, %7677
  %7724 = fadd fast float %7721, %7723
  %7725 = bitcast float %7724 to i32
  %7726 = sub nsw i32 2129859010, %7725
  %7727 = bitcast i32 %7726 to float
  %7728 = fmul fast float %4951, %7715
  %7729 = fmul fast float %7728, %7721
  %7730 = fmul fast float %7729, %7727
  %7731 = call float @dx.op.unary.f32(i32 6, float %7667)  ; FAbs(value)
  %7732 = fsub fast float 1.000000e+00, %7731
  %7733 = bitcast float %7732 to i32
  %7734 = sitofp i32 %7733 to float
  %7735 = fmul fast float %7734, 5.000000e+00
  %7736 = fadd fast float %7735, 0xC1EFBF8940000000
  %7737 = fptosi float %7736 to i32
  %7738 = bitcast i32 %7737 to float
  %7739 = fsub fast float 1.000000e+00, %4922
  %7740 = fsub fast float 1.000000e+00, %4923
  %7741 = fsub fast float 1.000000e+00, %4931
  %7742 = fmul fast float %7738, %7739
  %7743 = fmul fast float %7738, %7740
  %7744 = fmul fast float %7738, %7741
  %7745 = fadd fast float %7742, %4922
  %7746 = fadd fast float %7743, %4923
  %7747 = fadd fast float %7744, %4931
  br i1 %5070, label %7748, label %7771

; <label>:7748                                    ; preds = %7638
  %7749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4312, float %7731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.ResRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.ResRet.f32 %7749, 2
  %7753 = fadd fast float %7750, -5.000000e-01
  %7754 = fadd fast float %7751, -5.000000e-01
  %7755 = fadd fast float %7752, -5.000000e-01
  %7756 = fmul fast float %4922, 4.000000e+00
  %7757 = fmul fast float %7756, %7739
  %7758 = fmul fast float %7757, %7753
  %7759 = fmul fast float %4923, 4.000000e+00
  %7760 = fmul fast float %7759, %7740
  %7761 = fmul fast float %7760, %7754
  %7762 = fmul fast float %4931, 4.000000e+00
  %7763 = fmul fast float %7762, %7741
  %7764 = fmul fast float %7763, %7755
  %7765 = fadd fast float %7758, %7745
  %7766 = fadd fast float %7761, %7746
  %7767 = fadd fast float %7764, %7747
  %7768 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7769 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  br label %7771

; <label>:7771                                    ; preds = %7748, %7638
  %7772 = phi float [ %7768, %7748 ], [ %7745, %7638 ]
  %7773 = phi float [ %7769, %7748 ], [ %7746, %7638 ]
  %7774 = phi float [ %7770, %7748 ], [ %7747, %7638 ]
  %7775 = fmul fast float %7666, 9.843750e-01
  %7776 = fadd fast float %7775, 7.812500e-03
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7776, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 2
  %7779 = extractvalue %dx.types.ResRet.f32 %7777, 3
  %7780 = fmul fast float %7778, %4922
  %7781 = fmul fast float %7778, %4923
  %7782 = fmul fast float %7778, %4931
  %7783 = fadd fast float %7780, %7779
  %7784 = fadd fast float %7781, %7779
  %7785 = fadd fast float %7782, %7779
  br i1 %5070, label %7786, label %7809

; <label>:7786                                    ; preds = %7771
  %7787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4312, float %7666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7788 = extractvalue %dx.types.ResRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.ResRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.ResRet.f32 %7787, 2
  %7791 = fadd fast float %7788, -5.000000e-01
  %7792 = fadd fast float %7789, -5.000000e-01
  %7793 = fadd fast float %7790, -5.000000e-01
  %7794 = fmul fast float %4922, 4.000000e+00
  %7795 = fmul fast float %7794, %7739
  %7796 = fmul fast float %7795, %7791
  %7797 = fmul fast float %4923, 4.000000e+00
  %7798 = fmul fast float %7797, %7740
  %7799 = fmul fast float %7798, %7792
  %7800 = fmul fast float %4931, 4.000000e+00
  %7801 = fmul fast float %7800, %7741
  %7802 = fmul fast float %7801, %7793
  %7803 = fadd fast float %7796, %7783
  %7804 = fadd fast float %7799, %7784
  %7805 = fadd fast float %7802, %7785
  %7806 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7807 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  br label %7809

; <label>:7809                                    ; preds = %7786, %7771
  %7810 = phi float [ %7806, %7786 ], [ %7783, %7771 ]
  %7811 = phi float [ %7807, %7786 ], [ %7784, %7771 ]
  %7812 = phi float [ %7808, %7786 ], [ %7785, %7771 ]
  %7813 = call float @dx.op.binary.f32(i32 35, float %7811, float %7812)  ; FMax(a,b)
  %7814 = call float @dx.op.binary.f32(i32 35, float %7810, float %7813)  ; FMax(a,b)
  %7815 = fsub fast float 1.000000e+00, %7814
  %7816 = fmul fast float %7772, %7730
  %7817 = fmul fast float %7773, %7730
  %7818 = fmul fast float %7774, %7730
  %7819 = fsub fast float 1.000000e+00, %7667
  %7820 = bitcast float %7819 to i32
  %7821 = sitofp i32 %7820 to float
  %7822 = fmul fast float %7821, 5.000000e+00
  %7823 = fadd fast float %7822, 0xC1EFBF8940000000
  %7824 = fptosi float %7823 to i32
  %7825 = bitcast i32 %7824 to float
  %7826 = fmul fast float %7825, %4313
  %7827 = fmul fast float %7815, %7826
  %7828 = fmul fast float %7827, %5612
  %7829 = fmul fast float %7827, %5613
  %7830 = fmul fast float %7827, %5614
  %7831 = fadd fast float %7828, %7816
  %7832 = fadd fast float %7829, %7817
  %7833 = fadd fast float %7830, %7818
  %7834 = fmul fast float %7655, %4339
  %7835 = fmul fast float %7834, %7673
  %7836 = fmul fast float %7835, %7815
  %7837 = fmul fast float %7656, %4339
  %7838 = fmul fast float %7837, %7673
  %7839 = fmul fast float %7838, %7815
  %7840 = fmul fast float %7657, %4339
  %7841 = fmul fast float %7840, %7673
  %7842 = fmul fast float %7841, %7815
  %7843 = fadd fast float %7836, %7288
  %7844 = fadd fast float %7839, %7289
  %7845 = fadd fast float %7842, %7290
  %7846 = fmul fast float %7835, %7831
  %7847 = fmul fast float %7838, %7832
  %7848 = fmul fast float %7841, %7833
  %7849 = fadd fast float %7846, %7285
  %7850 = fadd fast float %7847, %7286
  %7851 = fadd fast float %7848, %7287
  br label %7417

; <label>:7852                                    ; preds = %7417
  br label %7853

; <label>:7853                                    ; preds = %7852, %7251
  %7854 = phi float [ %7253, %7251 ], [ %7418, %7852 ]
  %7855 = phi float [ %7254, %7251 ], [ %7419, %7852 ]
  %7856 = phi float [ %7255, %7251 ], [ %7420, %7852 ]
  %7857 = phi float [ %7256, %7251 ], [ %7421, %7852 ]
  %7858 = phi float [ %7257, %7251 ], [ %7422, %7852 ]
  %7859 = phi float [ %7258, %7251 ], [ %7423, %7852 ]
  %7860 = add i32 %7252, 1
  %7861 = icmp ugt i32 %7860, %7248
  br i1 %7861, label %7862, label %7251

; <label>:7862                                    ; preds = %7853
  br label %7863

; <label>:7863                                    ; preds = %7862, %7201, %7191
  %7864 = phi float [ %7192, %7191 ], [ %7192, %7201 ], [ %7854, %7862 ]
  %7865 = phi float [ %7193, %7191 ], [ %7193, %7201 ], [ %7855, %7862 ]
  %7866 = phi float [ %7194, %7191 ], [ %7194, %7201 ], [ %7856, %7862 ]
  %7867 = phi float [ %7195, %7191 ], [ %7195, %7201 ], [ %7857, %7862 ]
  %7868 = phi float [ %7196, %7191 ], [ %7196, %7201 ], [ %7858, %7862 ]
  %7869 = phi float [ %7197, %7191 ], [ %7197, %7201 ], [ %7859, %7862 ]
  %7870 = fmul fast float %4339, %4339
  %7871 = fsub fast float 1.000000e+00, %7870
  %7872 = call float @dx.op.dot3.f32(i32 55, float %7871, float %7871, float %7871, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7873 = fsub fast float 1.000000e+00, %7872
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = fmul fast float %7875, %5618
  %7877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7878 = extractvalue %dx.types.CBufRet.f32 %7877, 3
  %7879 = fsub fast float 1.000000e+00, %4317
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fadd fast float %7869, %4315
  %7882 = fmul fast float %7881, %4317
  %7883 = fmul fast float %7880, %7878
  %7884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %7885 = extractvalue %dx.types.ResRet.i32 %7884, 3
  %7886 = bitcast i32 %7885 to float
  %7887 = fsub fast float %7873, %7886
  %7888 = fmul fast float %7887, %201
  %7889 = fadd fast float %7888, %7886
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 3
  %7892 = fmul fast float %7867, %4919
  %7893 = fmul fast float %7868, %4920
  %7894 = fmul fast float %7869, %4921
  %7895 = fcmp fast ogt float %92, %221
  %7896 = and i1 %7895, %4742
  %7897 = or i1 %4748, %7896
  %7898 = icmp eq i32 %4741, 2
  %7899 = fcmp fast ole float %92, %221
  %7900 = and i1 %7899, %7898
  %7901 = or i1 %7900, %7897
  br i1 %7896, label %7902, label %8159

; <label>:7902                                    ; preds = %7863
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 3
  %7906 = fmul fast float %7904, %104
  %7907 = fmul fast float %7905, %105
  %7908 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7907)  ; Saturate(value)
  %7910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7908, float %7909, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7911 = extractvalue %dx.types.ResRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.ResRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.ResRet.f32 %7910, 2
  %7914 = extractvalue %dx.types.ResRet.f32 %7910, 3
  %7915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7908, float %7909, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  %7919 = extractvalue %dx.types.ResRet.f32 %7915, 3
  %7920 = call float @dx.op.binary.f32(i32 35, float %7912, float %7913)  ; FMax(a,b)
  %7921 = call float @dx.op.binary.f32(i32 35, float %7911, float %7920)  ; FMax(a,b)
  %7922 = call float @dx.op.binary.f32(i32 35, float %7921, float %7914)  ; FMax(a,b)
  %7923 = call float @dx.op.binary.f32(i32 36, float %7917, float %7918)  ; FMin(a,b)
  %7924 = call float @dx.op.binary.f32(i32 36, float %7916, float %7923)  ; FMin(a,b)
  %7925 = call float @dx.op.binary.f32(i32 36, float %7924, float %7919)  ; FMin(a,b)
  %7926 = fmul fast float %7922, 2.550000e+02
  %7927 = fadd fast float %7926, 0x3F70101020000000
  %7928 = fptoui float %7927 to i32
  %7929 = fmul fast float %7925, 2.550000e+02
  %7930 = fadd fast float %7929, 0x3F70101020000000
  %7931 = fptoui float %7930 to i32
  %7932 = icmp ult i32 %7928, %7931
  br i1 %7932, label %7933, label %8101

; <label>:7933                                    ; preds = %7902
  %7934 = fcmp fast ogt float %91, 9.843750e-01
  %7935 = fadd fast float %92, -4.000000e+00
  %7936 = select i1 %7934, float -4.000000e+00, float %7935
  %7937 = call float @dx.op.binary.f32(i32 35, float %7936, float 0.000000e+00)  ; FMax(a,b)
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %7940 = fadd fast float %7939, %7937
  %7941 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7942 = fmul fast float %7940, %7941
  %7943 = call float @dx.op.unary.f32(i32 23, float %7942)  ; Log(value)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7938, 3
  %7945 = fmul fast float %7944, %7943
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 2
  %7948 = fmul fast float %7945, %7947
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = uitofp i32 %7928 to float
  %7951 = uitofp i32 %7931 to float
  %7952 = fadd fast float %7950, 5.000000e-01
  %7953 = fadd fast float %7951, 5.000000e-01
  %7954 = fmul fast float %7947, %7952
  %7955 = fmul fast float %7947, %7953
  %7956 = fadd fast float %7954, 0x3F0FFB4800000000
  %7957 = fadd fast float %7955, 0xBF0FFB4800000000
  %7958 = call float @dx.op.binary.f32(i32 35, float %7949, float %7956)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 36, float %7958, float %7957)  ; FMin(a,b)
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7964 = fmul fast float %7961, %7959
  %7965 = fadd fast float %7963, %7964
  %7966 = fadd fast float %7963, %7962
  %7967 = fsub fast float %7961, %7962
  %7968 = fadd fast float %7967, %7963
  %7969 = call float @dx.op.binary.f32(i32 35, float %7965, float %7966)  ; FMax(a,b)
  %7970 = call float @dx.op.binary.f32(i32 36, float %7969, float %7968)  ; FMin(a,b)
  %7971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7908, float %7909, float %7970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7972 = extractvalue %dx.types.ResRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.ResRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.ResRet.f32 %7971, 2
  %7975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.i32 %7975, 0
  %7977 = extractvalue %dx.types.CBufRet.i32 %7975, 1
  %7978 = uitofp i32 %7976 to float
  %7979 = uitofp i32 %7977 to float
  %7980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7981 = extractvalue %dx.types.CBufRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.CBufRet.f32 %7980, 1
  %7983 = fmul fast float %7978, %7908
  %7984 = fmul fast float %7979, %7909
  %7985 = fadd fast float %7983, -5.000000e-01
  %7986 = fadd fast float %7984, -5.000000e-01
  %7987 = call float @dx.op.unary.f32(i32 22, float %7985)  ; Frc(value)
  %7988 = call float @dx.op.unary.f32(i32 22, float %7986)  ; Frc(value)
  %7989 = fmul fast float %7987, %7987
  %7990 = fmul fast float %7989, %7987
  %7991 = fsub fast float 3.000000e+00, %7987
  %7992 = fmul fast float %7989, %7991
  %7993 = fmul fast float %7987, 3.000000e+00
  %7994 = fmul fast float %7990, 3.000000e+00
  %7995 = fmul fast float %7989, 6.000000e+00
  %7996 = fsub fast float %7994, %7995
  %7997 = fadd fast float %7996, 4.000000e+00
  %7998 = fmul fast float %7997, 0x3FC5555560000000
  %7999 = fmul fast float %7990, -3.000000e+00
  %8000 = fadd fast float %7989, %7987
  %8001 = fmul fast float %8000, 3.000000e+00
  %8002 = fadd fast float %7999, 1.000000e+00
  %8003 = fadd fast float %8002, %8001
  %8004 = fmul fast float %7990, 0x3FC5555560000000
  %8005 = fmul fast float %7988, %7988
  %8006 = fmul fast float %8005, %7988
  %8007 = fsub fast float 3.000000e+00, %7988
  %8008 = fmul fast float %8005, %8007
  %8009 = fmul fast float %7988, 3.000000e+00
  %8010 = fmul fast float %8006, 3.000000e+00
  %8011 = fmul fast float %8005, 6.000000e+00
  %8012 = fsub fast float %8010, %8011
  %8013 = fadd fast float %8012, 4.000000e+00
  %8014 = fmul fast float %8013, 0x3FC5555560000000
  %8015 = fmul fast float %8006, -3.000000e+00
  %8016 = fadd fast float %8005, %7988
  %8017 = fmul fast float %8016, 3.000000e+00
  %8018 = fadd fast float %8015, 1.000000e+00
  %8019 = fadd fast float %8018, %8017
  %8020 = fmul fast float %8006, 0x3FC5555560000000
  %8021 = fadd fast float %7987, 1.000000e+00
  %8022 = fsub fast float 1.000000e+00, %7993
  %8023 = fadd fast float %8022, %7992
  %8024 = fadd fast float %8023, %7997
  %8025 = fmul fast float %8024, 0x3FC5555560000000
  %8026 = fdiv fast float %7998, %8025
  %8027 = fsub fast float %8021, %8026
  %8028 = fsub fast float 1.000000e+00, %7987
  %8029 = fadd fast float %8003, %7990
  %8030 = fmul fast float %8029, 0x3FC5555560000000
  %8031 = fdiv fast float %8004, %8030
  %8032 = fadd fast float %8028, %8031
  %8033 = fadd fast float %7988, 1.000000e+00
  %8034 = fsub fast float 1.000000e+00, %8009
  %8035 = fadd fast float %8034, %8008
  %8036 = fadd fast float %8035, %8013
  %8037 = fmul fast float %8036, 0x3FC5555560000000
  %8038 = fdiv fast float %8014, %8037
  %8039 = fsub fast float %8033, %8038
  %8040 = fsub fast float 1.000000e+00, %7988
  %8041 = fadd fast float %8019, %8006
  %8042 = fmul fast float %8041, 0x3FC5555560000000
  %8043 = fdiv fast float %8020, %8042
  %8044 = fadd fast float %8043, %8040
  %8045 = fmul fast float %8027, %7981
  %8046 = fsub fast float %7908, %8045
  %8047 = fmul fast float %8032, %7981
  %8048 = fadd fast float %8047, %7908
  %8049 = fmul fast float %8044, %7982
  %8050 = fadd fast float %8049, %7909
  %8051 = fmul fast float %8039, %7982
  %8052 = fsub fast float %7909, %8051
  %8053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8046, float %8052, float %7970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8048, float %8052, float %7970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.ResRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.ResRet.f32 %8057, 2
  %8061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8046, float %8050, float %7970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.ResRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.ResRet.f32 %8061, 2
  %8065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8048, float %8050, float %7970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8066 = extractvalue %dx.types.ResRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.ResRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.ResRet.f32 %8065, 2
  %8069 = fsub fast float %8062, %8054
  %8070 = fsub fast float %8063, %8055
  %8071 = fsub fast float %8064, %8056
  %8072 = fmul fast float %8069, %8042
  %8073 = fmul fast float %8070, %8042
  %8074 = fmul fast float %8071, %8042
  %8075 = fadd fast float %8072, %8054
  %8076 = fadd fast float %8073, %8055
  %8077 = fadd fast float %8074, %8056
  %8078 = fsub fast float %8066, %8058
  %8079 = fsub fast float %8067, %8059
  %8080 = fsub fast float %8068, %8060
  %8081 = fmul fast float %8078, %8042
  %8082 = fmul fast float %8079, %8042
  %8083 = fmul fast float %8080, %8042
  %8084 = fsub fast float %8058, %8075
  %8085 = fadd fast float %8084, %8081
  %8086 = fsub fast float %8059, %8076
  %8087 = fadd fast float %8086, %8082
  %8088 = fsub fast float %8060, %8077
  %8089 = fadd fast float %8088, %8083
  %8090 = fmul fast float %8085, %8030
  %8091 = fmul fast float %8087, %8030
  %8092 = fmul fast float %8089, %8030
  %8093 = fadd fast float %8090, %8075
  %8094 = fadd fast float %8091, %8076
  %8095 = fadd fast float %8092, %8077
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 1
  %8098 = fmul fast float %8093, %8097
  %8099 = fmul fast float %8094, %8097
  %8100 = fmul fast float %8095, %8097
  br label %8101

; <label>:8101                                    ; preds = %7933, %7902
  %8102 = phi float [ %7972, %7933 ], [ 1.000000e+00, %7902 ]
  %8103 = phi float [ %7973, %7933 ], [ 1.000000e+00, %7902 ]
  %8104 = phi float [ %7974, %7933 ], [ 1.000000e+00, %7902 ]
  %8105 = phi float [ %8098, %7933 ], [ 0.000000e+00, %7902 ]
  %8106 = phi float [ %8099, %7933 ], [ 0.000000e+00, %7902 ]
  %8107 = phi float [ %8100, %7933 ], [ 0.000000e+00, %7902 ]
  %8108 = fmul fast float %8105, %7889
  %8109 = fmul fast float %8106, %7889
  %8110 = fmul fast float %8107, %7889
  %8111 = call float @dx.op.dot3.f32(i32 55, float %8102, float %8103, float %8104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8112 = call float @dx.op.dot3.f32(i32 55, float %8108, float %8109, float %8110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8113 = select i1 %261, float %8111, float %8102
  %8114 = select i1 %261, float %8111, float %8103
  %8115 = select i1 %261, float 1.000000e+00, float %8104
  %8116 = select i1 %261, float %8112, float %8108
  %8117 = select i1 %261, float 0.000000e+00, float %8109
  %8118 = select i1 %261, float 0.000000e+00, float %8110
  %8119 = fmul fast float %8113, %7892
  %8120 = fmul fast float %8114, %7893
  %8121 = fmul fast float %8115, %7894
  %8122 = fadd fast float %8119, %8116
  %8123 = fadd fast float %8120, %8117
  %8124 = fadd fast float %8118, %8121
  %8125 = fmul fast float %8113, %7864
  %8126 = fmul fast float %8114, %7865
  %8127 = fmul fast float %8115, %7866
  %8128 = fmul fast float %137, %7904
  %8129 = fmul fast float %139, %7905
  %8130 = fsub fast float 1.000000e+00, %8128
  %8131 = fsub fast float 1.000000e+00, %8129
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8136 = fmul fast float %8130, %8133
  %8137 = fmul fast float %8130, %8134
  %8138 = fmul fast float %8130, %8135
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8143 = fmul fast float %8131, %8140
  %8144 = fmul fast float %8131, %8141
  %8145 = fmul fast float %8131, %8142
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8148 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %8149 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %8150 = fadd fast float %8143, %8147
  %8151 = fadd fast float %8150, %8136
  %8152 = fadd fast float %8144, %8148
  %8153 = fadd fast float %8152, %8137
  %8154 = fadd fast float %8145, %8149
  %8155 = fadd fast float %8154, %8138
  %8156 = fmul fast float %8151, %221
  %8157 = fmul fast float %8153, %221
  %8158 = fmul fast float %8155, %221
  br label %8159

; <label>:8159                                    ; preds = %8101, %7863
  %8160 = phi float [ %8156, %8101 ], [ %167, %7863 ]
  %8161 = phi float [ %8157, %8101 ], [ %168, %7863 ]
  %8162 = phi float [ %8158, %8101 ], [ %169, %7863 ]
  %8163 = phi float [ %221, %8101 ], [ %92, %7863 ]
  %8164 = phi float [ %8122, %8101 ], [ %7892, %7863 ]
  %8165 = phi float [ %8123, %8101 ], [ %7893, %7863 ]
  %8166 = phi float [ %8124, %8101 ], [ %7894, %7863 ]
  %8167 = phi float [ %8125, %8101 ], [ %7864, %7863 ]
  %8168 = phi float [ %8126, %8101 ], [ %7865, %7863 ]
  %8169 = phi float [ %8127, %8101 ], [ %7866, %7863 ]
  %8170 = phi float [ %8102, %8101 ], [ 1.000000e+00, %7863 ]
  br i1 %7901, label %9325, label %8171

; <label>:8171                                    ; preds = %8159
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8176 = extractvalue %dx.types.CBufRet.f32 %8172, 3
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.CBufRet.f32 %8177, 2
  %8181 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8185 = extractvalue %dx.types.CBufRet.f32 %8182, 2
  %8186 = extractvalue %dx.types.CBufRet.f32 %8182, 3
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8189 = extractvalue %dx.types.CBufRet.f32 %8187, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8191 = extractvalue %dx.types.CBufRet.f32 %8187, 3
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 3
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 3
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8198 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8199 = fcmp fast olt float %8198, -5.000000e-01
  %8200 = call float @dx.op.dot3.f32(i32 55, float %8160, float %8161, float %8162, float %8160, float %8161, float %8162)  ; Dot3(ax,ay,az,bx,by,bz)
  %8201 = call float @dx.op.unary.f32(i32 25, float %8200)  ; Rsqrt(value)
  %8202 = fmul fast float %8201, %8200
  %8203 = fmul fast float %8201, %8160
  %8204 = fmul fast float %8201, %8161
  %8205 = fmul fast float %8201, %8162
  %8206 = fadd fast float %8202, %8176
  %8207 = call float @dx.op.dot3.f32(i32 55, float %8203, float %8204, float %8205, float %8173, float %8174, float %8175)  ; Dot3(ax,ay,az,bx,by,bz)
  %8208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.i32 %8208, 1
  %8210 = and i32 %8209, 1
  %8211 = icmp ne i32 %8210, 0
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8214 = fcmp fast ogt float %8213, 0.000000e+00
  %8215 = and i1 %8211, %8214
  br i1 %8215, label %8216, label %8622, !dx.controlflow.hints !132

; <label>:8216                                    ; preds = %8171
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 2
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8223 = fsub fast float %8220, %8222
  %8224 = and i32 %8209, 2
  %8225 = extractvalue %dx.types.CBufRet.i32 %8208, 0
  %8226 = call i32 @dx.op.binary.i32(i32 40, i32 %8225, i32 3)  ; UMin(a,b)
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.CBufRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8231 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8232 = fsub fast float %8228, %8230
  %8233 = fsub fast float %8229, %8231
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 0
  %8236 = fcmp fast ogt float %8235, 0.000000e+00
  %8237 = fsub fast float -0.000000e+00, %8232
  %8238 = fsub fast float -0.000000e+00, %8233
  %8239 = call float @dx.op.dot2.f32(i32 54, float %8203, float %8204, float %8203, float %8204)  ; Dot2(ax,ay,bx,by)
  %8240 = call float @dx.op.dot2.f32(i32 54, float %8203, float %8204, float %8237, float %8238)  ; Dot2(ax,ay,bx,by)
  %8241 = fmul fast float %8240, 2.000000e+00
  %8242 = call float @dx.op.dot2.f32(i32 54, float %8237, float %8238, float %8237, float %8238)  ; Dot2(ax,ay,bx,by)
  %8243 = fmul fast float %8235, %8235
  %8244 = fsub fast float %8242, %8243
  %8245 = fmul fast float %8241, %8241
  %8246 = fmul fast float %8239, 4.000000e+00
  %8247 = fmul fast float %8246, %8244
  %8248 = fsub fast float %8245, %8247
  %8249 = fcmp fast ogt float %8248, 0.000000e+00
  br i1 %8249, label %8250, label %8265

; <label>:8250                                    ; preds = %8216
  %8251 = fcmp fast ogt float %8241, 0.000000e+00
  %8252 = call float @dx.op.unary.f32(i32 24, float %8248)  ; Sqrt(value)
  %8253 = fsub fast float -0.000000e+00, %8252
  %8254 = select i1 %8251, float %8252, float %8253
  %8255 = fadd fast float %8254, %8241
  %8256 = fmul float %8255, -5.000000e-01
  %8257 = fdiv fast float %8256, %8239
  %8258 = call float @dx.op.binary.f32(i32 35, float %8257, float 0.000000e+00)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 36, float %8202, float %8258)  ; FMin(a,b)
  %8260 = fdiv fast float %8244, %8256
  %8261 = call float @dx.op.binary.f32(i32 35, float %8260, float 0.000000e+00)  ; FMax(a,b)
  %8262 = call float @dx.op.binary.f32(i32 36, float %8202, float %8261)  ; FMin(a,b)
  %8263 = call float @dx.op.binary.f32(i32 36, float %8259, float %8262)  ; FMin(a,b)
  %8264 = call float @dx.op.binary.f32(i32 35, float %8259, float %8262)  ; FMax(a,b)
  br label %8265

; <label>:8265                                    ; preds = %8250, %8216
  %8266 = phi float [ %8264, %8250 ], [ -1.000000e+00, %8216 ]
  %8267 = phi float [ %8263, %8250 ], [ -1.000000e+00, %8216 ]
  %8268 = phi i1 [ true, %8250 ], [ false, %8216 ]
  %8269 = and i1 %8236, %8268
  br i1 %8269, label %8270, label %8272

; <label>:8270                                    ; preds = %8265
  %8271 = fcmp fast oeq float %8267, %8266
  br i1 %8271, label %8575, label %8273

; <label>:8272                                    ; preds = %8265
  br i1 %8236, label %8575, label %8273

; <label>:8273                                    ; preds = %8272, %8270
  %8274 = phi float [ %8202, %8272 ], [ %8266, %8270 ]
  %8275 = phi float [ 0.000000e+00, %8272 ], [ %8267, %8270 ]
  %8276 = icmp ne i32 %8224, 0
  %8277 = fmul fast float %8274, %8205
  %8278 = fadd fast float %8277, %8218
  %8279 = fmul fast float %8278, %8274
  %8280 = select i1 %8276, float 0.000000e+00, float %8279
  %8281 = fcmp fast oeq float %8205, 0.000000e+00
  %8282 = fdiv fast float %8223, %8205
  %8283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8282)  ; FMax(a,b)
  %8284 = select i1 %8281, float %8274, float %8283
  %8285 = call float @dx.op.binary.f32(i32 36, float %8274, float %8284)  ; FMin(a,b)
  %8286 = fcmp fast ogt float %8205, 0.000000e+00
  %8287 = fcmp fast olt float %8223, 0.000000e+00
  br i1 %8286, label %8288, label %8345

; <label>:8288                                    ; preds = %8273
  %8289 = icmp eq i32 %8224, 0
  br i1 %8287, label %8290, label %8334

; <label>:8290                                    ; preds = %8288
  %8291 = select i1 %8289, float %8274, float 0.000000e+00
  %8292 = fsub fast float -0.000000e+00, %8291
  %8293 = call float @dx.op.unary.f32(i32 6, float %8292)  ; FAbs(value)
  %8294 = fmul fast float %8291, %8205
  %8295 = fadd fast float %8294, %8218
  %8296 = fmul fast float %8293, %8295
  %8297 = fsub fast float %8280, %8296
  %8298 = fsub fast float %8274, %8293
  %8299 = select i1 %8289, float %8298, float 0.000000e+00
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 1
  %8303 = extractvalue %dx.types.CBufRet.f32 %8300, 2
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 0
  %8306 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %8307 = extractvalue %dx.types.CBufRet.f32 %8304, 2
  %8308 = extractvalue %dx.types.CBufRet.f32 %8304, 3
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 3
  %8311 = call float @dx.op.binary.f32(i32 36, float %8297, float %8310)  ; FMin(a,b)
  %8312 = fmul fast float %8308, %8299
  %8313 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8314 = fsub fast float %8305, %8301
  %8315 = fsub fast float %8306, %8302
  %8316 = fsub fast float %8307, %8303
  %8317 = fmul fast float %8313, %8314
  %8318 = fmul fast float %8313, %8315
  %8319 = fmul fast float %8313, %8316
  %8320 = fadd fast float %8317, %8301
  %8321 = fadd fast float %8318, %8302
  %8322 = fadd fast float %8319, %8303
  %8323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8324 = extractvalue %dx.types.CBufRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.CBufRet.f32 %8323, 1
  %8326 = fadd fast float %8325, %8324
  %8327 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8323, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8323, 3
  %8330 = fadd fast float %8329, %8328
  %8331 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8332 = fmul fast float %8327, %8311
  %8333 = fmul fast float %8332, %8331
  br label %8575

; <label>:8334                                    ; preds = %8288
  br i1 %8289, label %8335, label %8356

; <label>:8335                                    ; preds = %8334
  %8336 = call float @dx.op.binary.f32(i32 36, float %8285, float %8275)  ; FMin(a,b)
  %8337 = fsub fast float %8285, %8336
  %8338 = fsub fast float %8337, %8274
  %8339 = call float @dx.op.unary.f32(i32 6, float %8338)  ; FAbs(value)
  %8340 = fadd fast float %8337, %8274
  %8341 = fmul fast float %8340, %8205
  %8342 = fadd fast float %8341, %8218
  %8343 = fmul fast float %8342, %8339
  %8344 = fsub fast float %8280, %8343
  br label %8356

; <label>:8345                                    ; preds = %8273
  br i1 %8287, label %8346, label %8356

; <label>:8346                                    ; preds = %8345
  %8347 = call float @dx.op.binary.f32(i32 35, float %8275, float %8285)  ; FMax(a,b)
  %8348 = icmp eq i32 %8224, 0
  %8349 = select i1 %8348, float %8285, float 0.000000e+00
  %8350 = fsub fast float -0.000000e+00, %8349
  %8351 = call float @dx.op.unary.f32(i32 6, float %8350)  ; FAbs(value)
  %8352 = fmul fast float %8349, %8205
  %8353 = fadd fast float %8352, %8218
  %8354 = fmul fast float %8351, %8353
  %8355 = fsub fast float %8280, %8354
  br label %8356

; <label>:8356                                    ; preds = %8346, %8345, %8335, %8334
  %8357 = phi float [ %8275, %8334 ], [ %8275, %8335 ], [ %8347, %8346 ], [ %8275, %8345 ]
  %8358 = phi float [ 0.000000e+00, %8334 ], [ %8339, %8335 ], [ %8351, %8346 ], [ 0.000000e+00, %8345 ]
  %8359 = phi float [ %8280, %8334 ], [ %8344, %8335 ], [ %8355, %8346 ], [ %8280, %8345 ]
  %8360 = phi float [ %8285, %8334 ], [ %8285, %8335 ], [ %8274, %8346 ], [ %8274, %8345 ]
  %8361 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8361, align 4, !tbaa !119, !noalias !133
  %8362 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8362, align 4, !tbaa !119, !noalias !133
  %8363 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8363, align 4, !tbaa !119, !noalias !133
  %8364 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8364, align 4, !tbaa !119, !noalias !133
  %8365 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8365, align 4, !tbaa !119, !noalias !133
  %8366 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8366, align 4, !tbaa !119, !noalias !133
  %8367 = icmp sgt i32 %8226, 0
  br i1 %8367, label %8368, label %8429

; <label>:8368                                    ; preds = %8356
  br label %8369

; <label>:8369                                    ; preds = %8418, %8368
  %8370 = phi i32 [ %8419, %8418 ], [ 0, %8368 ]
  %8371 = phi i32 [ %8420, %8418 ], [ 0, %8368 ]
  %8372 = add nuw i32 %8371, 171
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8372)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 1
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8379 = fsub fast float %8374, %8377
  %8380 = fsub fast float %8375, %8378
  %8381 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8382 = fsub fast float -0.000000e+00, %8379
  %8383 = fsub fast float -0.000000e+00, %8380
  %8384 = call float @dx.op.dot2.f32(i32 54, float %8203, float %8204, float %8382, float %8383)  ; Dot2(ax,ay,bx,by)
  %8385 = fmul fast float %8384, 2.000000e+00
  %8386 = call float @dx.op.dot2.f32(i32 54, float %8382, float %8383, float %8382, float %8383)  ; Dot2(ax,ay,bx,by)
  %8387 = fmul fast float %8381, %8381
  %8388 = fsub fast float %8386, %8387
  %8389 = fmul fast float %8385, %8385
  %8390 = fmul fast float %8246, %8388
  %8391 = fsub fast float %8389, %8390
  %8392 = fcmp fast ogt float %8391, 0.000000e+00
  br i1 %8392, label %8393, label %8408

; <label>:8393                                    ; preds = %8369
  %8394 = fcmp fast ogt float %8385, 0.000000e+00
  %8395 = call float @dx.op.unary.f32(i32 24, float %8391)  ; Sqrt(value)
  %8396 = fsub fast float -0.000000e+00, %8395
  %8397 = select i1 %8394, float %8395, float %8396
  %8398 = fadd fast float %8397, %8385
  %8399 = fmul float %8398, -5.000000e-01
  %8400 = fdiv fast float %8399, %8239
  %8401 = call float @dx.op.binary.f32(i32 35, float %8400, float 0.000000e+00)  ; FMax(a,b)
  %8402 = call float @dx.op.binary.f32(i32 36, float %8274, float %8401)  ; FMin(a,b)
  %8403 = fdiv fast float %8388, %8399
  %8404 = call float @dx.op.binary.f32(i32 35, float %8403, float 0.000000e+00)  ; FMax(a,b)
  %8405 = call float @dx.op.binary.f32(i32 36, float %8274, float %8404)  ; FMin(a,b)
  %8406 = call float @dx.op.binary.f32(i32 36, float %8402, float %8405)  ; FMin(a,b)
  %8407 = call float @dx.op.binary.f32(i32 35, float %8402, float %8405)  ; FMax(a,b)
  br label %8408

; <label>:8408                                    ; preds = %8393, %8369
  %8409 = phi float [ %8407, %8393 ], [ -1.000000e+00, %8369 ]
  %8410 = phi float [ %8406, %8393 ], [ -1.000000e+00, %8369 ]
  %8411 = phi i1 [ true, %8393 ], [ false, %8369 ]
  br i1 %8411, label %8412, label %8418

; <label>:8412                                    ; preds = %8408
  %8413 = call float @dx.op.binary.f32(i32 35, float %8357, float %8410)  ; FMax(a,b)
  %8414 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8371
  store float %8413, float* %8414, align 4, !tbaa !119, !noalias !133
  %8415 = call float @dx.op.binary.f32(i32 35, float %8357, float %8409)  ; FMax(a,b)
  %8416 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8371
  store float %8415, float* %8416, align 4, !tbaa !119, !noalias !133
  %8417 = add nsw i32 %8370, 1
  br label %8418

; <label>:8418                                    ; preds = %8412, %8408
  %8419 = phi i32 [ %8417, %8412 ], [ %8370, %8408 ]
  %8420 = add nuw nsw i32 %8371, 1
  %8421 = icmp eq i32 %8420, %8226
  br i1 %8421, label %8422, label %8369

; <label>:8422                                    ; preds = %8418
  %8423 = load float, float* %8363, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8424 = load float, float* %8362, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  %8425 = load float, float* %8361, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  %8426 = load float, float* %8366, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8427 = load float, float* %8365, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  %8428 = load float, float* %8364, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  br label %8429

; <label>:8429                                    ; preds = %8422, %8356
  %8430 = phi float [ -1.000000e+00, %8356 ], [ %8428, %8422 ]
  %8431 = phi float [ -1.000000e+00, %8356 ], [ %8427, %8422 ]
  %8432 = phi float [ -1.000000e+00, %8356 ], [ %8426, %8422 ]
  %8433 = phi float [ -1.000000e+00, %8356 ], [ %8425, %8422 ]
  %8434 = phi float [ -1.000000e+00, %8356 ], [ %8424, %8422 ]
  %8435 = phi float [ -1.000000e+00, %8356 ], [ %8423, %8422 ]
  %8436 = phi i32 [ 0, %8356 ], [ %8419, %8422 ]
  %8437 = call float @dx.op.binary.f32(i32 36, float %8434, float %8435)  ; FMin(a,b)
  %8438 = call float @dx.op.binary.f32(i32 36, float %8433, float %8437)  ; FMin(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8433, float %8434)  ; FMax(a,b)
  %8440 = call float @dx.op.binary.f32(i32 36, float %8439, float %8435)  ; FMin(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8433, float %8434)  ; FMin(a,b)
  %8442 = call float @dx.op.binary.f32(i32 35, float %8441, float %8440)  ; FMax(a,b)
  %8443 = call float @dx.op.binary.f32(i32 35, float %8434, float %8435)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 35, float %8433, float %8443)  ; FMax(a,b)
  store float %8438, float* %8361, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  store float %8442, float* %8362, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %8444, float* %8363, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8445 = call float @dx.op.binary.f32(i32 36, float %8431, float %8432)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8430, float %8445)  ; FMin(a,b)
  %8447 = call float @dx.op.binary.f32(i32 35, float %8430, float %8431)  ; FMax(a,b)
  %8448 = call float @dx.op.binary.f32(i32 36, float %8447, float %8432)  ; FMin(a,b)
  %8449 = call float @dx.op.binary.f32(i32 36, float %8430, float %8431)  ; FMin(a,b)
  %8450 = call float @dx.op.binary.f32(i32 35, float %8449, float %8448)  ; FMax(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float %8431, float %8432)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8430, float %8451)  ; FMax(a,b)
  store float %8446, float* %8364, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  store float %8450, float* %8365, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  store float %8452, float* %8366, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8453 = sub nsw i32 3, %8436
  %8454 = icmp sgt i32 %8453, 2
  br i1 %8454, label %8455, label %8493

; <label>:8455                                    ; preds = %8429
  %8456 = icmp eq i32 %8224, 0
  %8457 = fsub fast float %8274, %8358
  %8458 = select i1 %8456, float %8457, float %8358
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8470 = call float @dx.op.binary.f32(i32 36, float %8359, float %8469)  ; FMin(a,b)
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
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %8575

; <label>:8493                                    ; preds = %8429
  %8494 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8453
  %8495 = load float, float* %8494, align 4, !tbaa !119, !noalias !133
  %8496 = fcmp fast olt float %8495, %8360
  %8497 = icmp sgt i32 %8436, 0
  %8498 = and i1 %8497, %8496
  br i1 %8498, label %8499, label %8536

; <label>:8499                                    ; preds = %8493
  br label %8500

; <label>:8500                                    ; preds = %8529, %8499
  %8501 = phi float [ %8530, %8529 ], [ %8358, %8499 ]
  %8502 = phi float [ %8531, %8529 ], [ %8359, %8499 ]
  %8503 = phi float [ %8511, %8529 ], [ %8495, %8499 ]
  %8504 = phi i32 [ %8508, %8529 ], [ %8453, %8499 ]
  %8505 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8504
  %8506 = load float, float* %8505, align 4, !tbaa !119, !noalias !133
  %8507 = icmp slt i32 %8504, 2
  %8508 = add nsw i32 %8504, 1
  %8509 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8508
  %8510 = load float, float* %8509, align 4, !tbaa !119, !noalias !133
  %8511 = select i1 %8507, float %8510, float %8274
  %8512 = call float @dx.op.binary.f32(i32 36, float %8511, float %8506)  ; FMin(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8360, float %8512)  ; FMin(a,b)
  %8514 = icmp eq i32 %8224, 0
  %8515 = fadd fast float %8513, %8503
  %8516 = fmul fast float %8515, %8205
  %8517 = fadd fast float %8516, %8218
  br i1 %8514, label %8523, label %8518

; <label>:8518                                    ; preds = %8500
  %8519 = fsub fast float %8513, %8503
  %8520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8519)  ; FMax(a,b)
  %8521 = fmul fast float %8520, %8517
  %8522 = fadd fast float %8521, %8502
  br label %8529

; <label>:8523                                    ; preds = %8500
  %8524 = fsub fast float %8503, %8513
  %8525 = call float @dx.op.unary.f32(i32 6, float %8524)  ; FAbs(value)
  %8526 = fadd fast float %8525, %8501
  %8527 = fmul fast float %8525, %8517
  %8528 = fsub fast float %8502, %8527
  br label %8529

; <label>:8529                                    ; preds = %8523, %8518
  %8530 = phi float [ %8520, %8518 ], [ %8526, %8523 ]
  %8531 = phi float [ %8522, %8518 ], [ %8528, %8523 ]
  %8532 = fcmp fast olt float %8511, %8360
  %8533 = icmp slt i32 %8508, 3
  %8534 = and i1 %8533, %8532
  br i1 %8534, label %8500, label %8535

; <label>:8535                                    ; preds = %8529
  br label %8536

; <label>:8536                                    ; preds = %8535, %8493
  %8537 = phi float [ %8358, %8493 ], [ %8530, %8535 ]
  %8538 = phi float [ %8359, %8493 ], [ %8531, %8535 ]
  %8539 = fsub fast float %8274, %8537
  %8540 = select i1 %8276, float %8537, float %8539
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.CBufRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = extractvalue %dx.types.CBufRet.f32 %8545, 2
  %8549 = extractvalue %dx.types.CBufRet.f32 %8545, 3
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 3
  %8552 = call float @dx.op.binary.f32(i32 36, float %8538, float %8551)  ; FMin(a,b)
  %8553 = fmul fast float %8549, %8540
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = fsub fast float %8546, %8542
  %8556 = fsub fast float %8547, %8543
  %8557 = fsub fast float %8548, %8544
  %8558 = fmul fast float %8554, %8555
  %8559 = fmul fast float %8554, %8556
  %8560 = fmul fast float %8554, %8557
  %8561 = fadd fast float %8558, %8542
  %8562 = fadd fast float %8559, %8543
  %8563 = fadd fast float %8560, %8544
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.CBufRet.f32 %8564, 1
  %8567 = fadd fast float %8566, %8565
  %8568 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8564, 2
  %8570 = extractvalue %dx.types.CBufRet.f32 %8564, 3
  %8571 = fadd fast float %8570, %8569
  %8572 = call float @dx.op.unary.f32(i32 7, float %8571)  ; Saturate(value)
  %8573 = fmul fast float %8568, %8552
  %8574 = fmul fast float %8573, %8572
  br label %8575

; <label>:8575                                    ; preds = %8536, %8455, %8290, %8272, %8270
  %8576 = phi float [ %8299, %8290 ], [ %8458, %8455 ], [ %8540, %8536 ], [ 0.000000e+00, %8270 ], [ 0.000000e+00, %8272 ]
  %8577 = phi float [ %8333, %8290 ], [ %8492, %8455 ], [ %8574, %8536 ], [ 0.000000e+00, %8270 ], [ 0.000000e+00, %8272 ]
  %8578 = phi float [ %8320, %8290 ], [ %8479, %8455 ], [ %8561, %8536 ], [ 0.000000e+00, %8270 ], [ 0.000000e+00, %8272 ]
  %8579 = phi float [ %8321, %8290 ], [ %8480, %8455 ], [ %8562, %8536 ], [ 0.000000e+00, %8270 ], [ 0.000000e+00, %8272 ]
  %8580 = phi float [ %8322, %8290 ], [ %8481, %8455 ], [ %8563, %8536 ], [ 0.000000e+00, %8270 ], [ 0.000000e+00, %8272 ]
  %8581 = fmul fast float %8213, %8577
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 2
  %8584 = fsub fast float %8220, %8583
  %8585 = fcmp fast olt float %8581, -2.000000e+01
  %8586 = call float @dx.op.unary.f32(i32 21, float %8581)  ; Exp(value)
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 3
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 2
  %8592 = fmul fast float %8589, %8584
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = fsub fast float 1.000000e+00, %8593
  %8595 = fmul fast float %8205, 5.000000e-01
  %8596 = fadd fast float %8595, 5.000000e-01
  %8597 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8598 = fsub fast float 1.000000e+00, %8597
  %8599 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8594)  ; FMax(a,b)
  %8600 = fdiv fast float %8598, %8599
  %8601 = fsub fast float %8584, %8162
  %8602 = call float @dx.op.unary.f32(i32 6, float %8601)  ; FAbs(value)
  %8603 = fmul fast float %8602, %8588
  %8604 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8605 = fsub fast float 1.000000e+00, %8603
  %8606 = fmul fast float %8605, %8604
  %8607 = fadd fast float %8606, %8603
  %8608 = fmul fast float %8591, %8584
  %8609 = call float @dx.op.unary.f32(i32 7, float %8608)  ; Saturate(value)
  %8610 = fsub fast float 1.000000e+00, %8607
  %8611 = fmul fast float %8610, %8609
  %8612 = fadd fast float %8611, %8607
  %8613 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8614 = fadd fast float %8586, -1.000000e+00
  %8615 = select i1 %8585, float -1.000000e+00, float %8614
  %8616 = fmul fast float %8613, %8615
  %8617 = fadd fast float %8616, 1.000000e+00
  %8618 = fsub fast float -0.000000e+00, %8616
  %8619 = fmul fast float %8578, %8618
  %8620 = fmul fast float %8579, %8618
  %8621 = fmul fast float %8580, %8618
  br label %8622

; <label>:8622                                    ; preds = %8575, %8171
  %8623 = phi float [ %8576, %8575 ], [ 0.000000e+00, %8171 ]
  %8624 = phi float [ %8617, %8575 ], [ 1.000000e+00, %8171 ]
  %8625 = phi float [ %8619, %8575 ], [ 0.000000e+00, %8171 ]
  %8626 = phi float [ %8620, %8575 ], [ 0.000000e+00, %8171 ]
  %8627 = phi float [ %8621, %8575 ], [ 0.000000e+00, %8171 ]
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8630 = fsub fast float 1.000000e+00, %8624
  %8631 = fmul fast float %8630, %8206
  %8632 = fmul fast float %8631, %8629
  %8633 = fsub fast float %8206, %8632
  br i1 %8199, label %8634, label %8663, !dx.controlflow.hints !169

; <label>:8634                                    ; preds = %8622
  %8635 = fmul fast float %8207, %8196
  %8636 = fadd fast float %8635, %8197
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fmul fast float %8178, %8633
  %8639 = fsub fast float -0.000000e+00, %8638
  %8640 = fmul fast float %8179, %8633
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = call float @dx.op.unary.f32(i32 21, float %8639)  ; Exp(value)
  %8643 = call float @dx.op.unary.f32(i32 21, float %8641)  ; Exp(value)
  %8644 = call float @dx.op.binary.f32(i32 35, float %8186, float %8642)  ; FMax(a,b)
  %8645 = call float @dx.op.binary.f32(i32 35, float %8186, float %8643)  ; FMax(a,b)
  %8646 = fsub fast float %8645, %8644
  %8647 = fmul fast float %8646, %8637
  %8648 = fadd fast float %8647, %8644
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fsub fast float %8183, %8188
  %8651 = fsub fast float %8184, %8189
  %8652 = fsub fast float %8185, %8190
  %8653 = fmul fast float %8637, %8650
  %8654 = fmul fast float %8637, %8651
  %8655 = fmul fast float %8637, %8652
  %8656 = fadd fast float %8653, %8188
  %8657 = fadd fast float %8654, %8189
  %8658 = fadd fast float %8655, %8190
  %8659 = fsub fast float 1.000000e+00, %8649
  %8660 = fmul fast float %8659, %8656
  %8661 = fmul fast float %8659, %8657
  %8662 = fmul fast float %8659, %8658
  br label %8722

; <label>:8663                                    ; preds = %8622
  %8664 = fmul fast float %8633, %8195
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = fsub fast float 2.000000e+00, %8665
  %8667 = fmul fast float %8665, 9.921875e-01
  %8668 = fmul fast float %8667, %8666
  %8669 = fadd fast float %8668, 3.906250e-03
  %8670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8669, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8671 = extractvalue %dx.types.ResRet.f32 %8670, 0
  %8672 = fsub fast float %8665, %8671
  %8673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8672)  ; FMax(a,b)
  %8674 = fmul fast float %8181, %8162
  %8675 = call float @dx.op.unary.f32(i32 6, float %8674)  ; FAbs(value)
  %8676 = fcmp fast ogt float %8675, 0x3EB0C6F7A0000000
  br i1 %8676, label %8677, label %8683, !dx.controlflow.hints !170

; <label>:8677                                    ; preds = %8663
  %8678 = fmul fast float %8674, 0xBFF7154760000000
  %8679 = call float @dx.op.unary.f32(i32 21, float %8678)  ; Exp(value)
  %8680 = fsub fast float 1.000000e+00, %8679
  %8681 = fdiv fast float %8680, %8674
  %8682 = fmul fast float %8681, %8191
  br label %8683

; <label>:8683                                    ; preds = %8677, %8663
  %8684 = phi float [ %8682, %8677 ], [ %8191, %8663 ]
  %8685 = fadd fast float %8684, %8193
  %8686 = fmul fast float %8685, %8673
  %8687 = fmul fast float %8178, %8686
  %8688 = fsub fast float -0.000000e+00, %8687
  %8689 = fmul fast float %8179, %8686
  %8690 = fsub fast float -0.000000e+00, %8689
  %8691 = fmul fast float %8180, %8686
  %8692 = fsub fast float -0.000000e+00, %8691
  %8693 = call float @dx.op.unary.f32(i32 21, float %8688)  ; Exp(value)
  %8694 = call float @dx.op.unary.f32(i32 21, float %8690)  ; Exp(value)
  %8695 = call float @dx.op.unary.f32(i32 21, float %8692)  ; Exp(value)
  %8696 = fmul fast float %8207, %8207
  %8697 = fadd fast float %8696, 1.000000e+00
  %8698 = fmul fast float %8697, 0x3FAE8EC8A0000000
  %8699 = fmul fast float %8698, %8188
  %8700 = fmul fast float %8698, %8189
  %8701 = fmul fast float %8698, %8190
  %8702 = fmul fast float %8207, %8186
  %8703 = fsub fast float 1.000000e+00, %8702
  %8704 = fmul fast float %8186, %8186
  %8705 = fsub fast float 1.000000e+00, %8704
  %8706 = fmul fast float %8705, 0x3FB45F3060000000
  %8707 = fmul fast float %8703, %8703
  %8708 = fdiv fast float 1.000000e+00, %8707
  %8709 = fmul fast float %8706, %8708
  %8710 = fmul fast float %8709, %8183
  %8711 = fmul fast float %8709, %8184
  %8712 = fmul fast float %8709, %8185
  %8713 = fadd fast float %8710, %8699
  %8714 = fadd fast float %8711, %8700
  %8715 = fadd fast float %8712, %8701
  %8716 = fsub fast float 1.000000e+00, %8693
  %8717 = fsub fast float 1.000000e+00, %8694
  %8718 = fsub fast float 1.000000e+00, %8695
  %8719 = fmul fast float %8713, %8716
  %8720 = fmul fast float %8714, %8717
  %8721 = fmul fast float %8715, %8718
  br label %8722

; <label>:8722                                    ; preds = %8683, %8634
  %8723 = phi float [ %8660, %8634 ], [ %8719, %8683 ]
  %8724 = phi float [ %8661, %8634 ], [ %8720, %8683 ]
  %8725 = phi float [ %8662, %8634 ], [ %8721, %8683 ]
  %8726 = phi float [ %8649, %8634 ], [ %8693, %8683 ]
  %8727 = phi float [ %8649, %8634 ], [ %8694, %8683 ]
  %8728 = phi float [ %8649, %8634 ], [ %8695, %8683 ]
  br i1 %8215, label %8729, label %8927, !dx.controlflow.hints !171

; <label>:8729                                    ; preds = %8722
  %8730 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8731 = fmul fast float %8730, %8630
  %8732 = fsub fast float %8625, %8723
  %8733 = fsub fast float %8626, %8724
  %8734 = fsub fast float %8627, %8725
  %8735 = fmul fast float %8731, %8732
  %8736 = fmul fast float %8731, %8733
  %8737 = fmul fast float %8731, %8734
  %8738 = fadd fast float %8735, %8723
  %8739 = fadd fast float %8736, %8724
  %8740 = fadd fast float %8737, %8725
  %8741 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8726)  ; FMax(a,b)
  %8742 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8727)  ; FMax(a,b)
  %8743 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8728)  ; FMax(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8624)  ; FMax(a,b)
  %8745 = call float @dx.op.binary.f32(i32 35, float %8623, float %8633)  ; FMax(a,b)
  %8746 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8745)  ; FMax(a,b)
  %8747 = fdiv fast float %8623, %8746
  %8748 = call float @dx.op.unary.f32(i32 7, float %8747)  ; Saturate(value)
  %8749 = fdiv fast float %8633, %8746
  %8750 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8751 = fcmp fast une float %8744, 1.000000e+00
  br i1 %8751, label %8752, label %8765, !dx.controlflow.hints !172

; <label>:8752                                    ; preds = %8729
  %8753 = call float @dx.op.unary.f32(i32 23, float %8744)  ; Log(value)
  %8754 = fmul fast float %8753, 0x3FE62E4300000000
  %8755 = fmul fast float %8625, %8754
  %8756 = fsub fast float -0.000000e+00, %8755
  %8757 = fmul fast float %8626, %8754
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = fmul fast float %8627, %8754
  %8760 = fsub fast float -0.000000e+00, %8759
  %8761 = fsub fast float 1.000000e+00, %8744
  %8762 = fdiv fast float %8756, %8761
  %8763 = fdiv fast float %8758, %8761
  %8764 = fdiv fast float %8760, %8761
  br label %8765

; <label>:8765                                    ; preds = %8752, %8729
  %8766 = phi float [ %8762, %8752 ], [ %8625, %8729 ]
  %8767 = phi float [ %8763, %8752 ], [ %8626, %8729 ]
  %8768 = phi float [ %8764, %8752 ], [ %8627, %8729 ]
  %8769 = phi float [ %8754, %8752 ], [ 0.000000e+00, %8729 ]
  %8770 = fcmp fast une float %8741, 1.000000e+00
  br i1 %8770, label %8771, label %8778, !dx.controlflow.hints !173

; <label>:8771                                    ; preds = %8765
  %8772 = call float @dx.op.unary.f32(i32 23, float %8741)  ; Log(value)
  %8773 = fmul fast float %8772, 0x3FE62E4300000000
  %8774 = fmul fast float %8738, %8773
  %8775 = fsub fast float -0.000000e+00, %8774
  %8776 = fsub fast float 1.000000e+00, %8741
  %8777 = fdiv fast float %8775, %8776
  br label %8778

; <label>:8778                                    ; preds = %8771, %8765
  %8779 = phi float [ %8777, %8771 ], [ %8738, %8765 ]
  %8780 = phi float [ %8773, %8771 ], [ 0.000000e+00, %8765 ]
  %8781 = fcmp fast une float %8742, 1.000000e+00
  br i1 %8781, label %8782, label %8789, !dx.controlflow.hints !173

; <label>:8782                                    ; preds = %8778
  %8783 = call float @dx.op.unary.f32(i32 23, float %8742)  ; Log(value)
  %8784 = fmul fast float %8783, 0x3FE62E4300000000
  %8785 = fmul fast float %8739, %8784
  %8786 = fsub fast float -0.000000e+00, %8785
  %8787 = fsub fast float 1.000000e+00, %8742
  %8788 = fdiv fast float %8786, %8787
  br label %8789

; <label>:8789                                    ; preds = %8782, %8778
  %8790 = phi float [ %8788, %8782 ], [ %8739, %8778 ]
  %8791 = phi float [ %8784, %8782 ], [ 0.000000e+00, %8778 ]
  %8792 = fcmp fast une float %8743, 1.000000e+00
  br i1 %8792, label %8793, label %8800, !dx.controlflow.hints !173

; <label>:8793                                    ; preds = %8789
  %8794 = call float @dx.op.unary.f32(i32 23, float %8743)  ; Log(value)
  %8795 = fmul fast float %8794, 0x3FE62E4300000000
  %8796 = fmul fast float %8740, %8795
  %8797 = fsub fast float -0.000000e+00, %8796
  %8798 = fsub fast float 1.000000e+00, %8743
  %8799 = fdiv fast float %8797, %8798
  br label %8800

; <label>:8800                                    ; preds = %8793, %8789
  %8801 = phi float [ %8799, %8793 ], [ %8740, %8789 ]
  %8802 = phi float [ %8795, %8793 ], [ 0.000000e+00, %8789 ]
  %8803 = fmul fast float %8766, %8750
  %8804 = fmul fast float %8767, %8750
  %8805 = fmul fast float %8768, %8750
  %8806 = fmul fast float %8769, %8750
  %8807 = fmul fast float %8779, %8748
  %8808 = fmul fast float %8790, %8748
  %8809 = fmul fast float %8801, %8748
  %8810 = fmul fast float %8780, %8748
  %8811 = fmul fast float %8791, %8748
  %8812 = fmul fast float %8802, %8748
  %8813 = fadd fast float %8807, %8803
  %8814 = fadd fast float %8808, %8804
  %8815 = fadd fast float %8809, %8805
  %8816 = fadd fast float %8810, %8806
  %8817 = fadd fast float %8811, %8806
  %8818 = fadd fast float %8812, %8806
  %8819 = fcmp fast une float %8816, 0.000000e+00
  br i1 %8819, label %8820, label %8827, !dx.controlflow.hints !174

; <label>:8820                                    ; preds = %8800
  %8821 = fmul fast float %8816, 0x3FF7154760000000
  %8822 = call float @dx.op.unary.f32(i32 21, float %8821)  ; Exp(value)
  %8823 = fsub fast float 1.000000e+00, %8822
  %8824 = fmul fast float %8813, %8823
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fdiv fast float %8825, %8816
  br label %8827

; <label>:8827                                    ; preds = %8820, %8800
  %8828 = phi float [ %8822, %8820 ], [ 1.000000e+00, %8800 ]
  %8829 = phi float [ %8826, %8820 ], [ %8813, %8800 ]
  %8830 = fcmp fast une float %8817, 0.000000e+00
  br i1 %8830, label %8831, label %8838, !dx.controlflow.hints !174

; <label>:8831                                    ; preds = %8827
  %8832 = fmul fast float %8817, 0x3FF7154760000000
  %8833 = call float @dx.op.unary.f32(i32 21, float %8832)  ; Exp(value)
  %8834 = fsub fast float 1.000000e+00, %8833
  %8835 = fmul fast float %8814, %8834
  %8836 = fsub fast float -0.000000e+00, %8835
  %8837 = fdiv fast float %8836, %8817
  br label %8838

; <label>:8838                                    ; preds = %8831, %8827
  %8839 = phi float [ %8833, %8831 ], [ 1.000000e+00, %8827 ]
  %8840 = phi float [ %8837, %8831 ], [ %8814, %8827 ]
  %8841 = fcmp fast une float %8818, 0.000000e+00
  br i1 %8841, label %8842, label %8849, !dx.controlflow.hints !174

; <label>:8842                                    ; preds = %8838
  %8843 = fmul fast float %8818, 0x3FF7154760000000
  %8844 = call float @dx.op.unary.f32(i32 21, float %8843)  ; Exp(value)
  %8845 = fsub fast float 1.000000e+00, %8844
  %8846 = fmul fast float %8815, %8845
  %8847 = fsub fast float -0.000000e+00, %8846
  %8848 = fdiv fast float %8847, %8818
  br label %8849

; <label>:8849                                    ; preds = %8842, %8838
  %8850 = phi float [ %8844, %8842 ], [ 1.000000e+00, %8838 ]
  %8851 = phi float [ %8848, %8842 ], [ %8815, %8838 ]
  %8852 = fcmp fast ogt float %8748, %8750
  br i1 %8852, label %8853, label %8873

; <label>:8853                                    ; preds = %8849
  %8854 = fsub fast float 1.000000e+00, %8750
  %8855 = fmul fast float %8766, %8854
  %8856 = fmul fast float %8767, %8854
  %8857 = fmul fast float %8768, %8854
  %8858 = fmul fast float %8769, %8854
  %8859 = fcmp fast une float %8858, 0.000000e+00
  br i1 %8859, label %8860, label %8911, !dx.controlflow.hints !175

; <label>:8860                                    ; preds = %8853
  %8861 = fmul fast float %8858, 0x3FF7154760000000
  %8862 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = fmul fast float %8855, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fmul fast float %8856, %8863
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = fmul fast float %8857, %8863
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = fdiv fast float %8865, %8858
  %8871 = fdiv fast float %8867, %8858
  %8872 = fdiv fast float %8869, %8858
  br label %8911

; <label>:8873                                    ; preds = %8849
  %8874 = fsub fast float 1.000000e+00, %8748
  %8875 = fmul fast float %8779, %8874
  %8876 = fmul fast float %8790, %8874
  %8877 = fmul fast float %8801, %8874
  %8878 = fmul fast float %8780, %8874
  %8879 = fmul fast float %8791, %8874
  %8880 = fmul fast float %8802, %8874
  %8881 = fcmp fast une float %8878, 0.000000e+00
  br i1 %8881, label %8882, label %8889, !dx.controlflow.hints !174

; <label>:8882                                    ; preds = %8873
  %8883 = fmul fast float %8878, 0x3FF7154760000000
  %8884 = call float @dx.op.unary.f32(i32 21, float %8883)  ; Exp(value)
  %8885 = fsub fast float 1.000000e+00, %8884
  %8886 = fmul fast float %8875, %8885
  %8887 = fsub fast float -0.000000e+00, %8886
  %8888 = fdiv fast float %8887, %8878
  br label %8889

; <label>:8889                                    ; preds = %8882, %8873
  %8890 = phi float [ %8888, %8882 ], [ %8875, %8873 ]
  %8891 = phi float [ %8884, %8882 ], [ 1.000000e+00, %8873 ]
  %8892 = fcmp fast une float %8879, 0.000000e+00
  br i1 %8892, label %8893, label %8900, !dx.controlflow.hints !174

; <label>:8893                                    ; preds = %8889
  %8894 = fmul fast float %8879, 0x3FF7154760000000
  %8895 = call float @dx.op.unary.f32(i32 21, float %8894)  ; Exp(value)
  %8896 = fsub fast float 1.000000e+00, %8895
  %8897 = fmul fast float %8876, %8896
  %8898 = fsub fast float -0.000000e+00, %8897
  %8899 = fdiv fast float %8898, %8879
  br label %8900

; <label>:8900                                    ; preds = %8893, %8889
  %8901 = phi float [ %8899, %8893 ], [ %8876, %8889 ]
  %8902 = phi float [ %8895, %8893 ], [ 1.000000e+00, %8889 ]
  %8903 = fcmp fast une float %8880, 0.000000e+00
  br i1 %8903, label %8904, label %8911, !dx.controlflow.hints !174

; <label>:8904                                    ; preds = %8900
  %8905 = fmul fast float %8880, 0x3FF7154760000000
  %8906 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8907 = fsub fast float 1.000000e+00, %8906
  %8908 = fmul fast float %8877, %8907
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fdiv fast float %8909, %8880
  br label %8911

; <label>:8911                                    ; preds = %8904, %8900, %8860, %8853
  %8912 = phi float [ %8910, %8904 ], [ %8872, %8860 ], [ %8857, %8853 ], [ %8877, %8900 ]
  %8913 = phi float [ %8901, %8904 ], [ %8871, %8860 ], [ %8856, %8853 ], [ %8901, %8900 ]
  %8914 = phi float [ %8890, %8904 ], [ %8870, %8860 ], [ %8855, %8853 ], [ %8890, %8900 ]
  %8915 = phi float [ %8906, %8904 ], [ %8862, %8860 ], [ 1.000000e+00, %8853 ], [ 1.000000e+00, %8900 ]
  %8916 = phi float [ %8902, %8904 ], [ %8862, %8860 ], [ 1.000000e+00, %8853 ], [ %8902, %8900 ]
  %8917 = phi float [ %8891, %8904 ], [ %8862, %8860 ], [ 1.000000e+00, %8853 ], [ %8891, %8900 ]
  %8918 = fmul fast float %8917, %8829
  %8919 = fmul fast float %8916, %8840
  %8920 = fmul fast float %8915, %8851
  %8921 = fadd fast float %8918, %8914
  %8922 = fadd fast float %8919, %8913
  %8923 = fadd fast float %8920, %8912
  %8924 = fmul fast float %8917, %8828
  %8925 = fmul fast float %8916, %8839
  %8926 = fmul fast float %8915, %8850
  br label %8927

; <label>:8927                                    ; preds = %8911, %8722
  %8928 = phi float [ %8926, %8911 ], [ %8728, %8722 ]
  %8929 = phi float [ %8925, %8911 ], [ %8727, %8722 ]
  %8930 = phi float [ %8924, %8911 ], [ %8726, %8722 ]
  %8931 = phi float [ %8923, %8911 ], [ %8725, %8722 ]
  %8932 = phi float [ %8922, %8911 ], [ %8724, %8722 ]
  %8933 = phi float [ %8921, %8911 ], [ %8723, %8722 ]
  %8934 = fmul fast float %8933, %7889
  %8935 = fmul fast float %8932, %7889
  %8936 = fmul fast float %8931, %7889
  %8937 = fmul fast float %8930, %8170
  %8938 = call float @dx.op.dot3.f32(i32 55, float %8930, float %8929, float %8928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8939 = call float @dx.op.dot3.f32(i32 55, float %8934, float %8935, float %8936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8940 = select i1 %261, float %8938, float %8930
  %8941 = select i1 %261, float %8938, float %8929
  %8942 = select i1 %261, float 1.000000e+00, float %8928
  %8943 = select i1 %261, float %8939, float %8934
  %8944 = select i1 %261, float 0.000000e+00, float %8935
  %8945 = select i1 %261, float 0.000000e+00, float %8936
  %8946 = fmul fast float %8940, %8164
  %8947 = fmul fast float %8941, %8165
  %8948 = fmul fast float %8942, %8166
  %8949 = fadd fast float %8946, %8943
  %8950 = fadd fast float %8947, %8944
  %8951 = fadd fast float %8945, %8948
  %8952 = fmul fast float %8940, %8167
  %8953 = fmul fast float %8941, %8168
  %8954 = fmul fast float %8942, %8169
  %8955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.i32 %8955, 0
  %8957 = icmp eq i32 %8956, 0
  br i1 %8957, label %9325, label %8958, !dx.controlflow.hints !176

; <label>:8958                                    ; preds = %8927
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 2
  %8961 = extractvalue %dx.types.CBufRet.f32 %8959, 3
  %8962 = fmul fast float %8960, %104
  %8963 = fmul fast float %8961, %105
  %8964 = fmul fast float %8962, 2.000000e+00
  %8965 = fmul fast float %8963, 2.000000e+00
  %8966 = fsub fast float 1.000000e+00, %8964
  %8967 = fsub fast float 1.000000e+00, %8965
  %8968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8969 = extractvalue %dx.types.CBufRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.CBufRet.f32 %8968, 1
  %8971 = extractvalue %dx.types.CBufRet.f32 %8968, 2
  %8972 = fmul fast float %8966, %8969
  %8973 = fmul fast float %8966, %8970
  %8974 = fmul fast float %8966, %8971
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.CBufRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.CBufRet.f32 %8975, 2
  %8979 = fmul fast float %8967, %8976
  %8980 = fmul fast float %8967, %8977
  %8981 = fmul fast float %8967, %8978
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 0
  %8984 = extractvalue %dx.types.CBufRet.f32 %8982, 1
  %8985 = extractvalue %dx.types.CBufRet.f32 %8982, 2
  %8986 = fadd fast float %8979, %8983
  %8987 = fadd fast float %8986, %8972
  %8988 = fadd fast float %8980, %8984
  %8989 = fadd fast float %8988, %8973
  %8990 = fadd fast float %8981, %8985
  %8991 = fadd fast float %8990, %8974
  %8992 = fmul fast float %8987, %8163
  %8993 = fmul fast float %8989, %8163
  %8994 = fmul fast float %8991, %8163
  %8995 = fmul fast float %8992, %8992
  %8996 = fmul fast float %8993, %8993
  %8997 = fadd fast float %8995, %8996
  %8998 = fmul fast float %8994, %8994
  %8999 = fadd fast float %8997, %8998
  %9000 = call float @dx.op.unary.f32(i32 24, float %8999)  ; Sqrt(value)
  %9001 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %9002 = fsub fast float %9000, %9001
  %9003 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %9004 = fmul fast float %9002, %9003
  %9005 = call float @dx.op.unary.f32(i32 7, float %9004)  ; Saturate(value)
  %9006 = fadd fast float %9005, -5.000000e-01
  %9007 = fmul fast float %9006, 2.000000e+00
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9010 = call float @dx.op.binary.f32(i32 36, float %9009, float %9007)  ; FMin(a,b)
  %9011 = fsub fast float -0.000000e+00, %9009
  %9012 = fcmp fast ogt float %9010, %9011
  br i1 %9012, label %9013, label %9325, !dx.controlflow.hints !177

; <label>:9013                                    ; preds = %8958
  %9014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.f32 %9014, 3
  %9016 = fcmp fast ogt float %9015, 0.000000e+00
  br i1 %9016, label %9017, label %9092, !dx.controlflow.hints !178

; <label>:9017                                    ; preds = %9013
  %9018 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9019 = extractvalue %dx.types.Dimensions %9018, 0
  %9020 = sitofp i32 %9019 to float
  %9021 = extractvalue %dx.types.Dimensions %9018, 1
  %9022 = sitofp i32 %9021 to float
  %9023 = fmul fast float %8962, %9020
  %9024 = fmul fast float %8963, %9022
  %9025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9025, 1
  %9027 = fsub fast float -0.000000e+00, %9026
  %9028 = fptoui float %9027 to i32
  %9029 = fptoui float %9023 to i32
  %9030 = fptoui float %9024 to i32
  %9031 = and i32 %9028, 31
  %9032 = lshr i32 %9029, %9031
  %9033 = lshr i32 %9030, %9031
  %9034 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9028, i32 %9032, i32 %9033, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9035 = extractvalue %dx.types.ResRet.f32 %9034, 0
  %9036 = fcmp fast olt float %9035, -1.000000e+00
  %9037 = fcmp fast ogt float %9035, -1.000000e+00
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 1
  %9040 = select i1 %9037, float %9039, float 1.000000e+00
  %9041 = fadd fast float %9035, 1.000000e+00
  %9042 = fmul fast float %9040, %9041
  %9043 = call float @dx.op.unary.f32(i32 6, float %9042)  ; FAbs(value)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9038, 3
  %9045 = fcmp fast oge float %9043, %9044
  %9046 = select i1 %9045, float 0x4197782600000000, float %9043
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9050 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9051 = select i1 %9036, float %9048, float %8969
  %9052 = select i1 %9036, float %9049, float %8970
  %9053 = select i1 %9036, float %9050, float %8971
  %9054 = fmul fast float %9051, %8966
  %9055 = fmul fast float %9052, %8966
  %9056 = fmul fast float %9053, %8966
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.CBufRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.CBufRet.f32 %9057, 2
  %9061 = select i1 %9036, float %9058, float %8976
  %9062 = select i1 %9036, float %9059, float %8977
  %9063 = select i1 %9036, float %9060, float %8978
  %9064 = fmul fast float %9061, %8967
  %9065 = fmul fast float %9062, %8967
  %9066 = fmul fast float %9063, %8967
  %9067 = fadd fast float %9064, %9054
  %9068 = fadd fast float %9065, %9055
  %9069 = fadd fast float %9066, %9056
  %9070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9071 = extractvalue %dx.types.CBufRet.f32 %9070, 0
  %9072 = extractvalue %dx.types.CBufRet.f32 %9070, 1
  %9073 = extractvalue %dx.types.CBufRet.f32 %9070, 2
  %9074 = select i1 %9036, float %9071, float %8983
  %9075 = select i1 %9036, float %9072, float %8984
  %9076 = select i1 %9036, float %9073, float %8985
  %9077 = fadd fast float %9067, %9074
  %9078 = fadd fast float %9068, %9075
  %9079 = fadd fast float %9069, %9076
  %9080 = fmul fast float %9077, %9046
  %9081 = fmul fast float %9078, %9046
  %9082 = fmul fast float %9079, %9046
  %9083 = fmul fast float %9080, %9080
  %9084 = fmul fast float %9081, %9081
  %9085 = fadd fast float %9083, %9084
  %9086 = fmul fast float %9082, %9082
  %9087 = fadd fast float %9085, %9086
  %9088 = call float @dx.op.unary.f32(i32 24, float %9087)  ; Sqrt(value)
  %9089 = fsub fast float %9088, %9001
  %9090 = fmul fast float %9089, %9003
  %9091 = call float @dx.op.unary.f32(i32 7, float %9090)  ; Saturate(value)
  br label %9092

; <label>:9092                                    ; preds = %9017, %9013
  %9093 = phi float [ %9091, %9017 ], [ 1.000000e+00, %9013 ]
  %9094 = fmul fast float %9010, 5.000000e-01
  %9095 = fadd fast float %9094, 5.000000e-01
  %9096 = call float @dx.op.unary.f32(i32 22, float %9095)  ; Frc(value)
  %9097 = call float @dx.op.unary.f32(i32 27, float %9096)  ; Round_ni(value)
  %9098 = call float @dx.op.unary.f32(i32 22, float %9096)  ; Frc(value)
  %9099 = fmul fast float %9098, 2.000000e+00
  %9100 = fadd fast float %9099, -1.000000e+00
  %9101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8962, float %8963, float %9097, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9102 = extractvalue %dx.types.ResRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.ResRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.ResRet.f32 %9101, 2
  %9105 = extractvalue %dx.types.ResRet.f32 %9101, 3
  %9106 = fadd fast float %9102, -5.000000e-01
  %9107 = fadd fast float %9104, -5.000000e-01
  %9108 = fmul fast float %9106, 0xBFD5555560000000
  %9109 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9107, float %9108)  ; FMad(a,b,c)
  %9110 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9103, float 0.000000e+00)  ; FMad(a,b,c)
  %9111 = fadd fast float %9110, %9105
  %9112 = fmul fast float %9106, -7.500000e-01
  %9113 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9107, float %9112)  ; FMad(a,b,c)
  %9114 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9103, float 0.000000e+00)  ; FMad(a,b,c)
  %9115 = fadd fast float %9114, %9105
  %9116 = call float @dx.op.binary.f32(i32 35, float %9109, float -1.000000e+00)  ; FMax(a,b)
  %9117 = call float @dx.op.binary.f32(i32 35, float %9111, float -1.000000e+00)  ; FMax(a,b)
  %9118 = call float @dx.op.binary.f32(i32 35, float %9113, float -1.000000e+00)  ; FMax(a,b)
  %9119 = call float @dx.op.binary.f32(i32 35, float %9115, float -1.000000e+00)  ; FMax(a,b)
  %9120 = call float @dx.op.binary.f32(i32 36, float %9116, float 1.000000e+00)  ; FMin(a,b)
  %9121 = call float @dx.op.binary.f32(i32 36, float %9117, float 1.000000e+00)  ; FMin(a,b)
  %9122 = call float @dx.op.binary.f32(i32 36, float %9118, float 1.000000e+00)  ; FMin(a,b)
  %9123 = call float @dx.op.binary.f32(i32 36, float %9119, float 1.000000e+00)  ; FMin(a,b)
  %9124 = fcmp fast olt float %9120, 0x3FEFFF8020000000
  br i1 %9124, label %9125, label %9240, !dx.controlflow.hints !179

; <label>:9125                                    ; preds = %9092
  %9126 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.CBufRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.CBufRet.f32 %9127, 2
  %9131 = extractvalue %dx.types.CBufRet.f32 %9127, 3
  %9132 = fsub fast float %9128, %9120
  %9133 = fsub fast float %9129, %9121
  %9134 = fsub fast float %9130, %9122
  %9135 = fsub fast float %9131, %9123
  %9136 = fmul fast float %9132, %9126
  %9137 = fmul fast float %9133, %9126
  %9138 = fmul fast float %9134, %9126
  %9139 = fmul fast float %9135, %9126
  %9140 = fadd fast float %9136, %9120
  %9141 = fadd fast float %9137, %9121
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = fadd fast float %9138, %9122
  %9144 = fadd fast float %9139, %9123
  %9145 = fmul fast float %9140, %9140
  %9146 = fsub fast float %9141, %9145
  %9147 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9146)  ; FMax(a,b)
  %9148 = fdiv fast float 1.000000e+00, %9147
  %9149 = fmul fast float %9141, %9140
  %9150 = fsub fast float %9143, %9149
  %9151 = fsub fast float %9100, %9140
  %9152 = fmul fast float %9100, %9100
  %9153 = fsub fast float %9152, %9141
  %9154 = fmul fast float %9151, %9148
  %9155 = fmul fast float %9154, %9150
  %9156 = fsub fast float %9153, %9155
  %9157 = fmul fast float %9141, %9141
  %9158 = fsub fast float %9144, %9157
  %9159 = fmul fast float %9150, %9150
  %9160 = fmul fast float %9159, %9148
  %9161 = fsub fast float %9158, %9160
  %9162 = fdiv fast float %9156, %9161
  %9163 = fmul fast float %9150, %9162
  %9164 = fsub fast float %9151, %9163
  %9165 = fmul fast float %9164, %9148
  %9166 = fmul fast float %9165, %9140
  %9167 = fsub fast float 1.000000e+00, %9166
  %9168 = fmul fast float %9141, %9162
  %9169 = fsub fast float %9167, %9168
  %9170 = fmul fast float %9165, %9165
  %9171 = fmul fast float %9162, 4.000000e+00
  %9172 = fmul fast float %9171, %9169
  %9173 = fsub fast float %9170, %9172
  %9174 = call float @dx.op.unary.f32(i32 24, float %9173)  ; Sqrt(value)
  %9175 = fcmp fast oge float %9165, 0.000000e+00
  %9176 = fsub fast float -0.000000e+00, %9174
  %9177 = select i1 %9175, float %9176, float %9174
  %9178 = fsub fast float %9177, %9165
  %9179 = fdiv fast float %9178, %9162
  %9180 = fdiv fast float %9169, %9178
  %9181 = fmul fast float %9179, 5.000000e-01
  %9182 = fmul fast float %9180, 2.000000e+00
  %9183 = select i1 %9175, float %9181, float %9182
  %9184 = select i1 %9175, float %9182, float %9181
  %9185 = call float @dx.op.binary.f32(i32 35, float %9183, float %9184)  ; FMax(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9183, float %9184)  ; FMin(a,b)
  %9187 = fcmp fast ogt float %9100, %9186
  br i1 %9187, label %9188, label %9198

; <label>:9188                                    ; preds = %9125
  %9189 = fsub fast float %9100, %9186
  %9190 = fsub fast float %9185, %9186
  %9191 = fmul fast float %9189, %9190
  %9192 = fmul fast float %9185, %9100
  %9193 = fadd fast float %9185, %9100
  %9194 = fmul fast float %9193, %9140
  %9195 = fadd fast float %9192, %9141
  %9196 = fsub fast float %9195, %9194
  %9197 = fdiv fast float %9196, %9191
  br label %9198

; <label>:9198                                    ; preds = %9188, %9125
  %9199 = phi float [ %9197, %9188 ], [ 0.000000e+00, %9125 ]
  %9200 = fcmp fast ogt float %9100, %9185
  %9201 = fsub fast float %9100, %9185
  br i1 %9200, label %9202, label %9212

; <label>:9202                                    ; preds = %9198
  %9203 = fsub fast float %9185, %9186
  %9204 = fmul fast float %9203, %9201
  %9205 = fmul fast float %9186, %9100
  %9206 = fadd fast float %9186, %9100
  %9207 = fmul fast float %9206, %9140
  %9208 = fsub fast float %9142, %9205
  %9209 = fadd fast float %9208, %9207
  %9210 = fdiv fast float %9209, %9204
  %9211 = fadd fast float %9210, %9199
  br label %9212

; <label>:9212                                    ; preds = %9202, %9198
  %9213 = phi float [ %9211, %9202 ], [ %9199, %9198 ]
  %9214 = fsub fast float %9100, %9186
  %9215 = fmul fast float %9214, %9201
  %9216 = fmul fast float %9186, %9185
  %9217 = fadd fast float %9186, %9185
  %9218 = fmul fast float %9217, %9140
  %9219 = fadd fast float %9216, %9141
  %9220 = fsub fast float %9219, %9218
  %9221 = fdiv fast float %9220, %9215
  %9222 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9223 = fcmp fast oeq float %7891, 0.000000e+00
  %9224 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9225 = fcmp fast oeq float %9224, 0.000000e+00
  %9226 = or i1 %9223, %9225
  %9227 = fmul fast float %9224, 2.000000e+00
  %9228 = fadd fast float %9009, %9010
  %9229 = fdiv fast float %9228, %9227
  %9230 = call float @dx.op.unary.f32(i32 7, float %9229)  ; Saturate(value)
  %9231 = fmul fast float %9230, 2.000000e+00
  %9232 = fsub fast float 3.000000e+00, %9231
  %9233 = fmul fast float %9230, %9230
  %9234 = fmul fast float %9233, %9232
  %9235 = select i1 %9226, float 1.000000e+00, float %9234
  %9236 = fmul fast float %9221, %7891
  %9237 = fadd fast float %9222, %9236
  %9238 = call float @dx.op.unary.f32(i32 7, float %9237)  ; Saturate(value)
  %9239 = fmul fast float %9235, %9238
  br label %9240

; <label>:9240                                    ; preds = %9212, %9092
  %9241 = phi float [ %9239, %9212 ], [ 0.000000e+00, %9092 ]
  %9242 = fsub fast float 1.000000e+00, %9241
  %9243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8962, float %8963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9244 = extractvalue %dx.types.ResRet.f32 %9243, 0
  %9245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.i32 %9245, 2
  %9247 = icmp eq i32 %9246, 0
  br i1 %9247, label %9253, label %9248

; <label>:9248                                    ; preds = %9240
  %9249 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9250 = fadd fast float %9244, -1.000000e+00
  %9251 = fmul fast float %9249, %9250
  %9252 = fadd fast float %9251, 1.000000e+00
  br label %9253

; <label>:9253                                    ; preds = %9248, %9240
  %9254 = phi float [ %9252, %9248 ], [ %9242, %9240 ]
  br i1 %9016, label %9255, label %9273

; <label>:9255                                    ; preds = %9253
  %9256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9256, 1
  %9258 = fsub fast float %9093, %9257
  %9259 = call float @dx.op.unary.f32(i32 7, float %9258)  ; Saturate(value)
  %9260 = fsub fast float %9093, %9015
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = fsub fast float %9259, %9261
  %9263 = fsub fast float %9095, %9261
  %9264 = fdiv fast float %9263, %9262
  %9265 = call float @dx.op.unary.f32(i32 7, float %9264)  ; Saturate(value)
  %9266 = fmul fast float %9265, 2.000000e+00
  %9267 = fsub fast float 3.000000e+00, %9266
  %9268 = fsub fast float %9244, %9254
  %9269 = fmul fast float %9265, %9265
  %9270 = fmul fast float %9269, %9268
  %9271 = fmul fast float %9270, %9267
  %9272 = fadd fast float %9271, %9254
  br label %9273

; <label>:9273                                    ; preds = %9255, %9253
  %9274 = phi float [ %9272, %9255 ], [ %9254, %9253 ]
  %9275 = call float @dx.op.binary.f32(i32 35, float %9244, float %9274)  ; FMax(a,b)
  %9276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.i32 %9276, 2
  %9278 = and i32 %9277, 1
  %9279 = icmp eq i32 %9278, 0
  %9280 = fcmp fast une float %9275, 1.000000e+00
  %9281 = and i1 %9280, %9279
  br i1 %9281, label %9282, label %9301

; <label>:9282                                    ; preds = %9273
  %9283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8962, float %8963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.ResRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.ResRet.f32 %9283, 2
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9289 = fmul fast float %9288, %9284
  %9290 = fmul fast float %9288, %9285
  %9291 = fmul fast float %9288, %9286
  %9292 = fcmp fast ogt float %9244, 0x3FEFFF2E40000000
  %9293 = fsub fast float 1.000000e+00, %9275
  %9294 = fsub fast float 1.000000e+00, %9244
  %9295 = fdiv fast float %9293, %9294
  %9296 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9297 = select i1 %9292, float 0.000000e+00, float %9296
  %9298 = fmul fast float %9289, %9297
  %9299 = fmul fast float %9290, %9297
  %9300 = fmul fast float %9291, %9297
  br label %9301

; <label>:9301                                    ; preds = %9282, %9273
  %9302 = phi float [ 0.000000e+00, %9273 ], [ %9298, %9282 ]
  %9303 = phi float [ 0.000000e+00, %9273 ], [ %9299, %9282 ]
  %9304 = phi float [ 0.000000e+00, %9273 ], [ %9300, %9282 ]
  %9305 = fmul fast float %9302, %7889
  %9306 = fmul fast float %9303, %7889
  %9307 = fmul fast float %9304, %7889
  %9308 = fmul fast float %9275, %8937
  %9309 = call float @dx.op.dot3.f32(i32 55, float %9275, float %9275, float %9275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9310 = call float @dx.op.dot3.f32(i32 55, float %9305, float %9306, float %9307, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9311 = select i1 %261, float %9309, float %9275
  %9312 = select i1 %261, float 1.000000e+00, float %9275
  %9313 = select i1 %261, float %9310, float %9305
  %9314 = select i1 %261, float 0.000000e+00, float %9306
  %9315 = select i1 %261, float 0.000000e+00, float %9307
  %9316 = fmul fast float %9311, %8949
  %9317 = fmul fast float %9311, %8950
  %9318 = fmul fast float %9312, %8951
  %9319 = fadd fast float %9316, %9313
  %9320 = fadd fast float %9317, %9314
  %9321 = fadd fast float %9315, %9318
  %9322 = fmul fast float %9311, %8952
  %9323 = fmul fast float %9311, %8953
  %9324 = fmul fast float %9312, %8954
  br label %9325

; <label>:9325                                    ; preds = %9301, %8958, %8927, %8159
  %9326 = phi float [ %8164, %8159 ], [ %8949, %8927 ], [ %9319, %9301 ], [ %8949, %8958 ]
  %9327 = phi float [ %8165, %8159 ], [ %8950, %8927 ], [ %9320, %9301 ], [ %8950, %8958 ]
  %9328 = phi float [ %8166, %8159 ], [ %8951, %8927 ], [ %9321, %9301 ], [ %8951, %8958 ]
  %9329 = phi float [ %8167, %8159 ], [ %8952, %8927 ], [ %9322, %9301 ], [ %8952, %8958 ]
  %9330 = phi float [ %8168, %8159 ], [ %8953, %8927 ], [ %9323, %9301 ], [ %8953, %8958 ]
  %9331 = phi float [ %8169, %8159 ], [ %8954, %8927 ], [ %9324, %9301 ], [ %8954, %8958 ]
  %9332 = phi float [ %8170, %8159 ], [ %8937, %8927 ], [ %9308, %9301 ], [ %8937, %8958 ]
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 3
  %9336 = fmul fast float %9334, %104
  %9337 = fmul fast float %9335, %105
  %9338 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9339 = call float @dx.op.unary.f32(i32 7, float %9337)  ; Saturate(value)
  %9340 = select i1 %7901, i32 2, i32 0
  %9341 = or i32 %9340, 1
  %9342 = uitofp i32 %9341 to float
  %9343 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9338, float %9339, float %9342, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9344 = extractvalue %dx.types.ResRet.f32 %9343, 0
  %9345 = extractvalue %dx.types.ResRet.f32 %9343, 1
  %9346 = extractvalue %dx.types.ResRet.f32 %9343, 2
  %9347 = extractvalue %dx.types.ResRet.f32 %9343, 3
  %9348 = add nuw nsw i32 %9340, 2
  %9349 = uitofp i32 %9348 to float
  %9350 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9338, float %9339, float %9349, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9351 = extractvalue %dx.types.ResRet.f32 %9350, 0
  %9352 = extractvalue %dx.types.ResRet.f32 %9350, 1
  %9353 = extractvalue %dx.types.ResRet.f32 %9350, 2
  %9354 = extractvalue %dx.types.ResRet.f32 %9350, 3
  %9355 = call float @dx.op.binary.f32(i32 35, float %9345, float %9346)  ; FMax(a,b)
  %9356 = call float @dx.op.binary.f32(i32 35, float %9344, float %9355)  ; FMax(a,b)
  %9357 = call float @dx.op.binary.f32(i32 35, float %9356, float %9347)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9352, float %9353)  ; FMin(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9351, float %9358)  ; FMin(a,b)
  %9360 = call float @dx.op.binary.f32(i32 36, float %9359, float %9354)  ; FMin(a,b)
  %9361 = fmul fast float %9357, 2.550000e+02
  %9362 = fadd fast float %9361, 0x3F70101020000000
  %9363 = fptoui float %9362 to i32
  %9364 = fmul fast float %9360, 2.550000e+02
  %9365 = fadd fast float %9364, 0x3F70101020000000
  %9366 = fptoui float %9365 to i32
  %9367 = icmp ult i32 %9363, %9366
  br i1 %9367, label %9368, label %9537

; <label>:9368                                    ; preds = %9325
  %9369 = fcmp fast ogt float %91, 9.843750e-01
  %9370 = fadd fast float %8163, -4.000000e+00
  %9371 = select i1 %9369, float -4.000000e+00, float %9370
  %9372 = call float @dx.op.binary.f32(i32 35, float %9371, float 0.000000e+00)  ; FMax(a,b)
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = fadd fast float %9374, %9372
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = fmul fast float %9375, %9376
  %9378 = call float @dx.op.unary.f32(i32 23, float %9377)  ; Log(value)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9373, 3
  %9380 = fmul fast float %9379, %9378
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9383 = fmul fast float %9380, %9382
  %9384 = call float @dx.op.unary.f32(i32 7, float %9383)  ; Saturate(value)
  %9385 = uitofp i32 %9363 to float
  %9386 = uitofp i32 %9366 to float
  %9387 = fadd fast float %9385, 5.000000e-01
  %9388 = fadd fast float %9386, 5.000000e-01
  %9389 = fmul fast float %9382, %9387
  %9390 = fmul fast float %9382, %9388
  %9391 = fadd fast float %9389, 0x3F0FFB4800000000
  %9392 = fadd fast float %9390, 0xBF0FFB4800000000
  %9393 = call float @dx.op.binary.f32(i32 35, float %9384, float %9391)  ; FMax(a,b)
  %9394 = call float @dx.op.binary.f32(i32 36, float %9393, float %9392)  ; FMin(a,b)
  %9395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9396 = extractvalue %dx.types.CBufRet.f32 %9395, 1
  %9397 = extractvalue %dx.types.CBufRet.f32 %9395, 2
  %9398 = extractvalue %dx.types.CBufRet.f32 %9395, 0
  %9399 = select i1 %7901, float %9398, float 0.000000e+00
  %9400 = fmul fast float %9396, %9394
  %9401 = fadd fast float %9399, %9400
  %9402 = fadd fast float %9399, %9397
  %9403 = fsub fast float %9396, %9397
  %9404 = fadd fast float %9403, %9399
  %9405 = call float @dx.op.binary.f32(i32 35, float %9401, float %9402)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 36, float %9405, float %9404)  ; FMin(a,b)
  %9407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9338, float %9339, float %9406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.ResRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.ResRet.f32 %9407, 2
  %9411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.i32 %9411, 0
  %9413 = extractvalue %dx.types.CBufRet.i32 %9411, 1
  %9414 = uitofp i32 %9412 to float
  %9415 = uitofp i32 %9413 to float
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 0
  %9418 = extractvalue %dx.types.CBufRet.f32 %9416, 1
  %9419 = fmul fast float %9414, %9338
  %9420 = fmul fast float %9415, %9339
  %9421 = fadd fast float %9419, -5.000000e-01
  %9422 = fadd fast float %9420, -5.000000e-01
  %9423 = call float @dx.op.unary.f32(i32 22, float %9421)  ; Frc(value)
  %9424 = call float @dx.op.unary.f32(i32 22, float %9422)  ; Frc(value)
  %9425 = fmul fast float %9423, %9423
  %9426 = fmul fast float %9425, %9423
  %9427 = fsub fast float 3.000000e+00, %9423
  %9428 = fmul fast float %9425, %9427
  %9429 = fmul fast float %9423, 3.000000e+00
  %9430 = fmul fast float %9426, 3.000000e+00
  %9431 = fmul fast float %9425, 6.000000e+00
  %9432 = fsub fast float %9430, %9431
  %9433 = fadd fast float %9432, 4.000000e+00
  %9434 = fmul fast float %9433, 0x3FC5555560000000
  %9435 = fmul fast float %9426, -3.000000e+00
  %9436 = fadd fast float %9425, %9423
  %9437 = fmul fast float %9436, 3.000000e+00
  %9438 = fadd fast float %9435, 1.000000e+00
  %9439 = fadd fast float %9438, %9437
  %9440 = fmul fast float %9426, 0x3FC5555560000000
  %9441 = fmul fast float %9424, %9424
  %9442 = fmul fast float %9441, %9424
  %9443 = fsub fast float 3.000000e+00, %9424
  %9444 = fmul fast float %9441, %9443
  %9445 = fmul fast float %9424, 3.000000e+00
  %9446 = fmul fast float %9442, 3.000000e+00
  %9447 = fmul fast float %9441, 6.000000e+00
  %9448 = fsub fast float %9446, %9447
  %9449 = fadd fast float %9448, 4.000000e+00
  %9450 = fmul fast float %9449, 0x3FC5555560000000
  %9451 = fmul fast float %9442, -3.000000e+00
  %9452 = fadd fast float %9441, %9424
  %9453 = fmul fast float %9452, 3.000000e+00
  %9454 = fadd fast float %9451, 1.000000e+00
  %9455 = fadd fast float %9454, %9453
  %9456 = fmul fast float %9442, 0x3FC5555560000000
  %9457 = fadd fast float %9423, 1.000000e+00
  %9458 = fsub fast float 1.000000e+00, %9429
  %9459 = fadd fast float %9458, %9428
  %9460 = fadd fast float %9459, %9433
  %9461 = fmul fast float %9460, 0x3FC5555560000000
  %9462 = fdiv fast float %9434, %9461
  %9463 = fsub fast float %9457, %9462
  %9464 = fsub fast float 1.000000e+00, %9423
  %9465 = fadd fast float %9439, %9426
  %9466 = fmul fast float %9465, 0x3FC5555560000000
  %9467 = fdiv fast float %9440, %9466
  %9468 = fadd fast float %9464, %9467
  %9469 = fadd fast float %9424, 1.000000e+00
  %9470 = fsub fast float 1.000000e+00, %9445
  %9471 = fadd fast float %9470, %9444
  %9472 = fadd fast float %9471, %9449
  %9473 = fmul fast float %9472, 0x3FC5555560000000
  %9474 = fdiv fast float %9450, %9473
  %9475 = fsub fast float %9469, %9474
  %9476 = fsub fast float 1.000000e+00, %9424
  %9477 = fadd fast float %9455, %9442
  %9478 = fmul fast float %9477, 0x3FC5555560000000
  %9479 = fdiv fast float %9456, %9478
  %9480 = fadd fast float %9479, %9476
  %9481 = fmul fast float %9463, %9417
  %9482 = fsub fast float %9338, %9481
  %9483 = fmul fast float %9468, %9417
  %9484 = fadd fast float %9483, %9338
  %9485 = fmul fast float %9480, %9418
  %9486 = fadd fast float %9485, %9339
  %9487 = fmul fast float %9475, %9418
  %9488 = fsub fast float %9339, %9487
  %9489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9482, float %9488, float %9406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9490 = extractvalue %dx.types.ResRet.f32 %9489, 0
  %9491 = extractvalue %dx.types.ResRet.f32 %9489, 1
  %9492 = extractvalue %dx.types.ResRet.f32 %9489, 2
  %9493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9484, float %9488, float %9406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9494 = extractvalue %dx.types.ResRet.f32 %9493, 0
  %9495 = extractvalue %dx.types.ResRet.f32 %9493, 1
  %9496 = extractvalue %dx.types.ResRet.f32 %9493, 2
  %9497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9482, float %9486, float %9406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9498 = extractvalue %dx.types.ResRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.ResRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.ResRet.f32 %9497, 2
  %9501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9484, float %9486, float %9406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9502 = extractvalue %dx.types.ResRet.f32 %9501, 0
  %9503 = extractvalue %dx.types.ResRet.f32 %9501, 1
  %9504 = extractvalue %dx.types.ResRet.f32 %9501, 2
  %9505 = fsub fast float %9498, %9490
  %9506 = fsub fast float %9499, %9491
  %9507 = fsub fast float %9500, %9492
  %9508 = fmul fast float %9505, %9478
  %9509 = fmul fast float %9506, %9478
  %9510 = fmul fast float %9507, %9478
  %9511 = fadd fast float %9508, %9490
  %9512 = fadd fast float %9509, %9491
  %9513 = fadd fast float %9510, %9492
  %9514 = fsub fast float %9502, %9494
  %9515 = fsub fast float %9503, %9495
  %9516 = fsub fast float %9504, %9496
  %9517 = fmul fast float %9514, %9478
  %9518 = fmul fast float %9515, %9478
  %9519 = fmul fast float %9516, %9478
  %9520 = fsub fast float %9494, %9511
  %9521 = fadd fast float %9520, %9517
  %9522 = fsub fast float %9495, %9512
  %9523 = fadd fast float %9522, %9518
  %9524 = fsub fast float %9496, %9513
  %9525 = fadd fast float %9524, %9519
  %9526 = fmul fast float %9521, %9466
  %9527 = fmul fast float %9523, %9466
  %9528 = fmul fast float %9525, %9466
  %9529 = fadd fast float %9526, %9511
  %9530 = fadd fast float %9527, %9512
  %9531 = fadd fast float %9528, %9513
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 1
  %9534 = fmul fast float %9529, %9533
  %9535 = fmul fast float %9530, %9533
  %9536 = fmul fast float %9531, %9533
  br label %9537

; <label>:9537                                    ; preds = %9368, %9325
  %9538 = phi float [ %9408, %9368 ], [ 1.000000e+00, %9325 ]
  %9539 = phi float [ %9409, %9368 ], [ 1.000000e+00, %9325 ]
  %9540 = phi float [ %9410, %9368 ], [ 1.000000e+00, %9325 ]
  %9541 = phi float [ %9534, %9368 ], [ 0.000000e+00, %9325 ]
  %9542 = phi float [ %9535, %9368 ], [ 0.000000e+00, %9325 ]
  %9543 = phi float [ %9536, %9368 ], [ 0.000000e+00, %9325 ]
  %9544 = fmul fast float %9541, %7889
  %9545 = fmul fast float %9542, %7889
  %9546 = fmul fast float %9543, %7889
  %9547 = fmul fast float %9538, %9332
  %9548 = call float @dx.op.dot3.f32(i32 55, float %9538, float %9539, float %9540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9549 = call float @dx.op.dot3.f32(i32 55, float %9544, float %9545, float %9546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9550 = select i1 %261, float %9548, float %9538
  %9551 = select i1 %261, float %9548, float %9539
  %9552 = select i1 %261, float 1.000000e+00, float %9540
  %9553 = select i1 %261, float %9549, float %9544
  %9554 = select i1 %261, float 0.000000e+00, float %9545
  %9555 = select i1 %261, float 0.000000e+00, float %9546
  %9556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.i32 %9556, 3
  %9558 = and i32 %9557, 3
  %9559 = icmp ne i32 %9558, 0
  %9560 = and i32 %9557, 4
  %9561 = icmp ne i32 %9560, 0
  %9562 = and i1 %9559, %9561
  %9563 = and i1 %261, %9562
  br i1 %9563, label %9564, label %9570

; <label>:9564                                    ; preds = %9537
  %9565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9566 = extractvalue %dx.types.CBufRet.f32 %9565, 1
  %9567 = fadd fast float %9547, -1.000000e+00
  %9568 = fmul fast float %9566, %9567
  %9569 = fadd fast float %9568, 1.000000e+00
  br label %9570

; <label>:9570                                    ; preds = %9564, %9537
  %9571 = phi float [ %9569, %9564 ], [ %9547, %9537 ]
  %9572 = fadd fast float %9329, %9326
  %9573 = fmul fast float %9550, %9572
  %9574 = fadd fast float %9573, %9553
  %9575 = fadd fast float %9330, %9327
  %9576 = fmul fast float %9551, %9575
  %9577 = fadd fast float %9576, %9554
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  br i1 %261, label %9580, label %9604

; <label>:9580                                    ; preds = %9570
  %9581 = fadd fast float %9574, %9577
  %9582 = fmul fast float %9579, %9581
  %9583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9584 = extractvalue %dx.types.CBufRet.f32 %9583, 3
  %9585 = extractvalue %dx.types.CBufRet.f32 %7877, 1
  %9586 = fsub fast float %7882, %7876
  %9587 = fadd fast float %9586, %7883
  %9588 = fsub fast float %9587, %9585
  %9589 = extractvalue %dx.types.CBufRet.f32 %7877, 2
  %9590 = fmul fast float %9588, %9589
  %9591 = call float @dx.op.unary.f32(i32 7, float %9590)  ; Saturate(value)
  %9592 = fsub fast float %9591, %9584
  %9593 = fmul fast float %9592, %9571
  %9594 = fadd fast float %9593, %9584
  %9595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.f32 %9595, 0
  %9597 = fsub fast float %9594, %9596
  %9598 = fmul fast float %9597, 1.000000e+01
  %9599 = call float @dx.op.unary.f32(i32 7, float %9598)  ; Saturate(value)
  %9600 = fsub fast float %4316, %7889
  %9601 = fmul fast float %9599, %9600
  %9602 = fadd fast float %9601, %7889
  %9603 = fmul fast float %9602, %9594
  br label %9628

; <label>:9604                                    ; preds = %9570
  %9605 = fadd fast float %9331, %9328
  %9606 = fmul fast float %9552, %9605
  %9607 = fadd fast float %9606, %9555
  %9608 = fmul fast float %9579, %9574
  %9609 = fmul fast float %9579, %9577
  %9610 = fmul fast float %9579, %9607
  %9611 = call float @dx.op.binary.f32(i32 35, float %9609, float %9610)  ; FMax(a,b)
  %9612 = call float @dx.op.binary.f32(i32 35, float %9608, float %9611)  ; FMax(a,b)
  %9613 = call float @dx.op.binary.f32(i32 35, float %9612, float %7889)  ; FMax(a,b)
  %9614 = fcmp fast ugt float %9613, 0x3F10000000000000
  br i1 %9614, label %9616, label %9615

; <label>:9615                                    ; preds = %9604
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9616

; <label>:9616                                    ; preds = %9615, %9604
  %9617 = add i32 %60, 356
  %9618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9617, i32 undef)  ; BufferLoad(srv,index,wot)
  %9619 = extractvalue %dx.types.ResRet.i32 %9618, 0
  %9620 = and i32 %9619, 32
  %9621 = icmp eq i32 %9620, 0
  br i1 %9621, label %9628, label %9622

; <label>:9622                                    ; preds = %9616
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9625 = fmul fast float %9624, 0x3FE99999A0000000
  %9626 = fadd fast float %9624, %9608
  %9627 = fadd fast float %9625, %9610
  br label %9628

; <label>:9628                                    ; preds = %9622, %9616, %9580
  %9629 = phi float [ %9582, %9580 ], [ %9626, %9622 ], [ %9608, %9616 ]
  %9630 = phi float [ %9603, %9580 ], [ %9609, %9622 ], [ %9609, %9616 ]
  %9631 = phi float [ %9602, %9580 ], [ %9627, %9622 ], [ %9610, %9616 ]
  %9632 = phi float [ %9602, %9580 ], [ %7889, %9622 ], [ %7889, %9616 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9633 = call float @dx.op.binary.f32(i32 36, float %9629, float 3.225500e+04)  ; FMin(a,b)
  %9634 = call float @dx.op.binary.f32(i32 36, float %9630, float 3.225500e+04)  ; FMin(a,b)
  %9635 = call float @dx.op.binary.f32(i32 36, float %9631, float 3.225500e+04)  ; FMin(a,b)
  %9636 = call float @dx.op.binary.f32(i32 36, float %9632, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9633)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9634)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9635)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9636)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

