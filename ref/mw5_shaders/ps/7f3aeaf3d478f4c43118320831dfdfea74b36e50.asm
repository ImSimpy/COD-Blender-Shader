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
; shader hash: ff58bb82cbffd09360d197524ce89632
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
  br i1 %3736, label %3737, label %4249

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
  br i1 %3788, label %4217, label %3789

; <label>:3789                                    ; preds = %3737
  %3790 = and i32 %3785, 1023
  br label %3791

; <label>:3791                                    ; preds = %3918, %3789
  %3792 = phi i32 [ %3868, %3918 ], [ 0, %3789 ]
  %3793 = phi float [ %3919, %3918 ], [ 0.000000e+00, %3789 ]
  %3794 = phi float [ %3920, %3918 ], [ %1139, %3789 ]
  %3795 = phi float [ %3921, %3918 ], [ %3706, %3789 ]
  %3796 = phi float [ %3922, %3918 ], [ %3704, %3789 ]
  %3797 = phi float [ %3923, %3918 ], [ 0.000000e+00, %3789 ]
  %3798 = phi float [ %3924, %3918 ], [ 0.000000e+00, %3789 ]
  %3799 = phi float [ %3925, %3918 ], [ %3698, %3789 ]
  %3800 = phi float [ %3926, %3918 ], [ %3699, %3789 ]
  %3801 = phi float [ %3927, %3918 ], [ %3700, %3789 ]
  %3802 = phi float [ %3928, %3918 ], [ %3732, %3789 ]
  %3803 = phi float [ %3929, %3918 ], [ %3733, %3789 ]
  %3804 = phi float [ %3930, %3918 ], [ %3734, %3789 ]
  %3805 = phi float [ %3931, %3918 ], [ %3703, %3789 ]
  %3806 = phi float [ %3932, %3918 ], [ %3702, %3789 ]
  %3807 = phi float [ %3933, %3918 ], [ 0.000000e+00, %3789 ]
  %3808 = phi float [ %3934, %3918 ], [ %3701, %3789 ]
  %3809 = phi float [ %3935, %3918 ], [ %3695, %3789 ]
  %3810 = phi float [ %3936, %3918 ], [ %3696, %3789 ]
  %3811 = phi float [ %3937, %3918 ], [ %3697, %3789 ]
  %3812 = add nuw nsw i32 %3792, %3787
  %3813 = shl i32 %3812, 2
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = shl i32 %3815, 8
  %3817 = or i32 %3816, 48
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = or i32 %3816, 64
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.i32 %3824, 1
  %3827 = or i32 %3816, 80
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3831 = or i32 %3816, 96
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = or i32 %3816, 112
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3840 = or i32 %3816, 128
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3816, 144
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = or i32 %3816, 160
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = extractvalue %dx.types.ResRet.f32 %3853, 3
  %3858 = or i32 %3816, 192
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = or i32 %3816, 208
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = or i32 %3816, 248
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = add nuw nsw i32 %3792, 1
  %3869 = bitcast float %3822 to i32
  %3870 = and i32 %3869, 512
  %3871 = icmp eq i32 %3870, 0
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = or i32 %3816, 16
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3885 = or i32 %3816, 32
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3887, float %3888, float %3889, float %3890, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.unary.f32(i32 27, float %3877)  ; Round_ni(value)
  %3893 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3894 = call float @dx.op.unary.f32(i32 27, float %3884)  ; Round_ni(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 27, float %3896)  ; Round_ni(value)
  %3898 = fadd fast float %3895, %3893
  %3899 = fadd fast float %3898, %3897
  %3900 = fcmp fast oeq float %3899, 0.000000e+00
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %3747, float %3748, float %3749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3747, float %3748, float %3749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3905 = fsub fast float %3901, %3877
  %3906 = fsub fast float %3903, %3877
  %3907 = fsub fast float %3902, %3884
  %3908 = fsub fast float %3904, %3884
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3819, float %3820, float %3821, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3912 = fadd fast float %3911, %3909
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3915 = fcmp fast ogt float %3913, %3914
  %3916 = and i1 %3900, %3915
  %3917 = and i1 %3871, %3916
  br i1 %3917, label %3939, label %3918

; <label>:3918                                    ; preds = %4203, %4020, %3939, %3791
  %3919 = phi float [ %3793, %3939 ], [ %4023, %4020 ], [ %4023, %4203 ], [ %3793, %3791 ]
  %3920 = phi float [ %3794, %3939 ], [ %3794, %4020 ], [ %4178, %4203 ], [ %3794, %3791 ]
  %3921 = phi float [ %3795, %3939 ], [ %3795, %4020 ], [ %4177, %4203 ], [ %3795, %3791 ]
  %3922 = phi float [ %3796, %3939 ], [ %3796, %4020 ], [ %4175, %4203 ], [ %3796, %3791 ]
  %3923 = phi float [ %3797, %3939 ], [ %3797, %4020 ], [ %4147, %4203 ], [ %3797, %3791 ]
  %3924 = phi float [ %3798, %3939 ], [ %3798, %4020 ], [ %4145, %4203 ], [ %3798, %3791 ]
  %3925 = phi float [ %3799, %3939 ], [ %3799, %4020 ], [ %4213, %4203 ], [ %3799, %3791 ]
  %3926 = phi float [ %3800, %3939 ], [ %3800, %4020 ], [ %4214, %4203 ], [ %3800, %3791 ]
  %3927 = phi float [ %3801, %3939 ], [ %3801, %4020 ], [ %4215, %4203 ], [ %3801, %3791 ]
  %3928 = phi float [ %3802, %3939 ], [ %3802, %4020 ], [ %4126, %4203 ], [ %3802, %3791 ]
  %3929 = phi float [ %3803, %3939 ], [ %3803, %4020 ], [ %4127, %4203 ], [ %3803, %3791 ]
  %3930 = phi float [ %3804, %3939 ], [ %3804, %4020 ], [ %4128, %4203 ], [ %3804, %3791 ]
  %3931 = phi float [ %3805, %3939 ], [ %3805, %4020 ], [ %4155, %4203 ], [ %3805, %3791 ]
  %3932 = phi float [ %3806, %3939 ], [ %3806, %4020 ], [ %4152, %4203 ], [ %3806, %3791 ]
  %3933 = phi float [ %3807, %3939 ], [ %3807, %4020 ], [ %4149, %4203 ], [ %3807, %3791 ]
  %3934 = phi float [ %3808, %3939 ], [ %3808, %4020 ], [ %4143, %4203 ], [ %3808, %3791 ]
  %3935 = phi float [ %3809, %3939 ], [ %3809, %4020 ], [ %4138, %4203 ], [ %3809, %3791 ]
  %3936 = phi float [ %3810, %3939 ], [ %3810, %4020 ], [ %4139, %4203 ], [ %3810, %3791 ]
  %3937 = phi float [ %3811, %3939 ], [ %3811, %4020 ], [ %4140, %4203 ], [ %3811, %3791 ]
  %3938 = icmp eq i32 %3868, %3790
  br i1 %3938, label %4216, label %3791

; <label>:3939                                    ; preds = %3791
  %3940 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3941 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3945 = extractvalue %dx.types.ResRet.i32 %3824, 3
  %3946 = extractvalue %dx.types.ResRet.i32 %3824, 2
  %3947 = add i32 %3945, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3949, float %3877, float %3884, float undef, float undef, i32 0, i32 0, i32 undef, float %3905, float %3907, float undef, float %3906, float %3908, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = fmul fast float %3951, %3944
  %3953 = fadd fast float %3952, %3943
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = fmul fast float %3877, %3833
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3884, float %3955)  ; FMad(a,b,c)
  %3957 = fadd fast float %3956, %3942
  %3958 = fmul fast float %3877, %3835
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3884, float %3958)  ; FMad(a,b,c)
  %3960 = fadd fast float %3959, %3941
  %3961 = fmul fast float %3905, %3833
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3907, float %3961)  ; FMad(a,b,c)
  %3963 = fmul fast float %3905, %3835
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3907, float %3963)  ; FMad(a,b,c)
  %3965 = fmul fast float %3906, %3833
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3908, float %3965)  ; FMad(a,b,c)
  %3967 = fmul fast float %3906, %3835
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3908, float %3967)  ; FMad(a,b,c)
  %3969 = add i32 %3946, 0
  %3970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3970, %dx.types.Handle %3949, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = and i32 %3869, 1024
  %3974 = icmp ne i32 %3973, 0
  %3975 = fcmp fast ogt float %3972, 0x3FE0101020000000
  %3976 = uitofp i1 %3975 to float
  %3977 = select i1 %3974, float %3976, float %3972
  %3978 = and i32 %3869, 8192
  %3979 = icmp ne i32 %3978, 0
  %3980 = select i1 %3979, float %3940, float 1.000000e+00
  %3981 = fmul fast float %3877, 2.000000e+00
  %3982 = fadd fast float %3981, -1.000000e+00
  %3983 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3984 = fmul fast float %3983, %3866
  %3985 = fsub fast float %3984, %3866
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3884, 2.000000e+00
  %3988 = fadd fast float %3987, -1.000000e+00
  %3989 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3990 = fmul fast float %3989, %3867
  %3991 = fsub fast float %3990, %3867
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fmul fast float %3896, %3829
  %3994 = fsub fast float %3993, %3829
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3954, %3980
  %3997 = fmul fast float %3996, %3951
  %3998 = fmul fast float %3997, %3986
  %3999 = fmul fast float %3998, %3977
  %4000 = fmul fast float %3999, %3992
  %4001 = fmul fast float %4000, %3995
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4005 = fsub fast float %3913, %4004
  %4006 = fmul fast float %4005, %4003
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = fmul fast float %4001, %3830
  %4009 = fadd fast float %4001, %3830
  %4010 = fmul fast float %4009, %3839
  %4011 = fsub fast float %4010, %3839
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = and i32 %3869, 128
  %4014 = icmp ne i32 %4013, 0
  %4015 = select i1 %4014, float %4012, float %4008
  %4016 = fmul fast float %4015, %4007
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = fcmp fast ugt float %4016, %4018
  br i1 %4019, label %4020, label %3918

; <label>:4020                                    ; preds = %3939
  %4021 = select i1 %3979, float %4016, float 0.000000e+00
  %4022 = fadd fast float %4021, %3793
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  br i1 %3979, label %3918, label %4024

; <label>:4024                                    ; preds = %4020
  %4025 = and i32 %3869, 4
  %4026 = and i32 %3869, 8
  %4027 = add i32 %3825, 0
  %4028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4028, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4035 = bitcast float %3851 to i32
  %4036 = and i32 %4035, 255
  %4037 = uitofp i32 %4036 to float
  %4038 = lshr i32 %4035, 8
  %4039 = and i32 %4038, 255
  %4040 = uitofp i32 %4039 to float
  %4041 = fmul fast float %4034, %4037
  %4042 = fadd fast float %4041, %4040
  %4043 = fmul fast float %4042, 0x3F70101000000000
  %4044 = add i32 %3826, 0
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4044, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4045, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = bitcast float %3845 to i32
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = lshr i32 %4051, 8
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = lshr i32 %4051, 16
  %4058 = and i32 %4057, 255
  %4059 = uitofp i32 %4058 to float
  %4060 = fmul fast float %4059, 0x3F70101000000000
  %4061 = fmul fast float %4047, %4053
  %4062 = fadd fast float %4061, %4056
  %4063 = fmul fast float %4062, 0x3F70101000000000
  %4064 = fadd fast float %4048, -5.000000e-01
  %4065 = fadd fast float %4050, -5.000000e-01
  %4066 = fmul fast float %4064, %4060
  %4067 = fmul fast float %4065, %4060
  %4068 = fadd fast float %4066, 5.000000e-01
  %4069 = fadd fast float %4067, 5.000000e-01
  %4070 = fmul fast float %4031, %3854
  %4071 = fmul fast float %4032, %3855
  %4072 = fmul fast float %4033, %3856
  %4073 = fmul fast float %4068, 2.000000e+00
  %4074 = fadd fast float %4073, -1.000000e+00
  %4075 = fmul fast float %4069, 2.000000e+00
  %4076 = fadd fast float %4075, -1.000000e+00
  %4077 = fadd fast float %4074, %4076
  %4078 = fmul fast float %4077, 5.000000e-01
  %4079 = fsub fast float %4074, %4076
  %4080 = fmul fast float %4079, 5.000000e-01
  %4081 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = call float @dx.op.unary.f32(i32 6, float %4080)  ; FAbs(value)
  %4084 = fsub fast float %4082, %4083
  %4085 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4080, float %4084, float %4078, float %4080, float %4084)  ; Dot3(ax,ay,az,bx,by,bz)
  %4086 = call float @dx.op.unary.f32(i32 25, float %4085)  ; Rsqrt(value)
  %4087 = fmul fast float %4078, %4086
  %4088 = fmul fast float %4080, %4086
  %4089 = fmul fast float %4086, %4084
  %4090 = fmul fast float %4089, %3819
  %4091 = fmul fast float %4089, %3820
  %4092 = fmul fast float %4089, %3821
  %4093 = fmul fast float %4087, %3842
  %4094 = fmul fast float %4087, %3843
  %4095 = fmul fast float %4087, %3844
  %4096 = fadd fast float %4093, %4090
  %4097 = fadd fast float %4094, %4091
  %4098 = fadd fast float %4095, %4092
  %4099 = fmul fast float %4088, %3848
  %4100 = fmul fast float %4088, %3849
  %4101 = fmul fast float %4088, %3850
  %4102 = fadd fast float %4096, %4099
  %4103 = fadd fast float %4097, %4100
  %4104 = fadd fast float %4098, %4101
  %4105 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = call float @dx.op.unary.f32(i32 25, float %4105)  ; Rsqrt(value)
  %4107 = fmul fast float %4102, %4106
  %4108 = fmul fast float %4103, %4106
  %4109 = fmul fast float %4104, %4106
  %4110 = icmp ne i32 %4026, 0
  %4111 = select i1 %4110, float 1.000000e+00, float 0.000000e+00
  %4112 = fmul fast float %4016, %4111
  %4113 = and i32 %3869, 1
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4115, label %4119

; <label>:4115                                    ; preds = %4024
  %4116 = fsub fast float %4107, %3802
  %4117 = fsub fast float %4108, %3803
  %4118 = fsub fast float %4109, %3804
  br label %4119

; <label>:4119                                    ; preds = %4115, %4024
  %4120 = phi float [ %4116, %4115 ], [ %4107, %4024 ]
  %4121 = phi float [ %4117, %4115 ], [ %4108, %4024 ]
  %4122 = phi float [ %4118, %4115 ], [ %4109, %4024 ]
  %4123 = fmul float %4122, %4112
  %4124 = fmul float %4121, %4112
  %4125 = fmul float %4120, %4112
  %4126 = fadd fast float %4125, %3802
  %4127 = fadd fast float %4124, %3803
  %4128 = fadd fast float %4123, %3804
  %4129 = icmp ne i32 %4025, 0
  %4130 = select i1 %4129, float 1.000000e+00, float 0.000000e+00
  %4131 = fmul fast float %4016, %4130
  %4132 = fsub fast float %4070, %3809
  %4133 = fsub fast float %4071, %3810
  %4134 = fsub fast float %4072, %3811
  %4135 = fmul fast float %4132, %4131
  %4136 = fmul fast float %4133, %4131
  %4137 = fmul fast float %4134, %4131
  %4138 = fadd fast float %4135, %3809
  %4139 = fadd fast float %4136, %3810
  %4140 = fadd fast float %4137, %3811
  %4141 = fsub fast float %4043, %3808
  %4142 = fmul fast float %4141, %4131
  %4143 = fadd fast float %4142, %3808
  %4144 = fmul fast float %4131, %3798
  %4145 = fsub fast float %3798, %4144
  %4146 = fmul fast float %4131, %3797
  %4147 = fsub fast float %3797, %4146
  %4148 = fadd fast float %4016, %3807
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = fsub fast float %4063, %3806
  %4151 = fmul fast float %4150, %4112
  %4152 = fadd fast float %4151, %3806
  %4153 = fsub fast float %4049, %3805
  %4154 = fmul fast float %4153, %4112
  %4155 = fadd fast float %4154, %3805
  %4156 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4160 = fmul fast float %4159, %4156
  %4161 = fadd fast float %4160, %4158
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = bitcast float %3857 to i32
  %4164 = and i32 %4163, 65535
  %4165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4164)  ; LegacyF16ToF32(value)
  %4166 = lshr i32 %4163, 16
  %4167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4166)  ; LegacyF16ToF32(value)
  %4168 = fcmp fast oge float %4165, 0.000000e+00
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = select i1 %4168, float %4165, float %4170
  %4172 = fadd fast float %4171, %4167
  %4173 = fsub fast float %4162, %3796
  %4174 = fmul fast float %4173, %4016
  %4175 = fadd fast float %4174, %3796
  %4176 = fmul fast float %4172, %4016
  %4177 = call float @dx.op.binary.f32(i32 35, float %3795, float %4176)  ; FMax(a,b)
  %4178 = call float @dx.op.binary.f32(i32 35, float %3794, float %4016)  ; FMax(a,b)
  %4179 = and i32 %3869, 16
  %4180 = icmp eq i32 %4179, 0
  br i1 %4180, label %4203, label %4181

; <label>:4181                                    ; preds = %4119
  %4182 = bitcast float %3863 to i32
  %4183 = add i32 %3860, 0
  %4184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4184, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = and i32 %4182, 65535
  %4190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4189)  ; LegacyF16ToF32(value)
  %4191 = fmul fast float %4186, %3854
  %4192 = fmul fast float %4187, %3855
  %4193 = fmul fast float %4188, %3856
  %4194 = and i32 %3869, 16384
  %4195 = icmp ne i32 %4194, 0
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = select i1 %4195, float %4197, float 1.000000e+00
  %4199 = fmul fast float %4198, %4190
  %4200 = fmul fast float %4191, %4199
  %4201 = fmul fast float %4192, %4199
  %4202 = fmul fast float %4193, %4199
  br label %4203

; <label>:4203                                    ; preds = %4181, %4119
  %4204 = phi float [ %4200, %4181 ], [ 0.000000e+00, %4119 ]
  %4205 = phi float [ %4201, %4181 ], [ 0.000000e+00, %4119 ]
  %4206 = phi float [ %4202, %4181 ], [ 0.000000e+00, %4119 ]
  %4207 = fsub fast float %4204, %3799
  %4208 = fsub fast float %4205, %3800
  %4209 = fsub fast float %4206, %3801
  %4210 = fmul fast float %4207, %4016
  %4211 = fmul fast float %4208, %4016
  %4212 = fmul fast float %4209, %4016
  %4213 = fadd fast float %4210, %3799
  %4214 = fadd fast float %4211, %3800
  %4215 = fadd fast float %4212, %3801
  br label %3918

; <label>:4216                                    ; preds = %3918
  br label %4217

; <label>:4217                                    ; preds = %4216, %3737
  %4218 = phi float [ 0.000000e+00, %3737 ], [ %3919, %4216 ]
  %4219 = phi float [ %1139, %3737 ], [ %3920, %4216 ]
  %4220 = phi float [ %3706, %3737 ], [ %3921, %4216 ]
  %4221 = phi float [ %3704, %3737 ], [ %3922, %4216 ]
  %4222 = phi float [ 0.000000e+00, %3737 ], [ %3923, %4216 ]
  %4223 = phi float [ 0.000000e+00, %3737 ], [ %3924, %4216 ]
  %4224 = phi float [ %3698, %3737 ], [ %3925, %4216 ]
  %4225 = phi float [ %3699, %3737 ], [ %3926, %4216 ]
  %4226 = phi float [ %3700, %3737 ], [ %3927, %4216 ]
  %4227 = phi float [ %3732, %3737 ], [ %3928, %4216 ]
  %4228 = phi float [ %3733, %3737 ], [ %3929, %4216 ]
  %4229 = phi float [ %3734, %3737 ], [ %3930, %4216 ]
  %4230 = phi float [ %3703, %3737 ], [ %3931, %4216 ]
  %4231 = phi float [ %3702, %3737 ], [ %3932, %4216 ]
  %4232 = phi float [ 0.000000e+00, %3737 ], [ %3933, %4216 ]
  %4233 = phi float [ %3701, %3737 ], [ %3934, %4216 ]
  %4234 = phi float [ %3695, %3737 ], [ %3935, %4216 ]
  %4235 = phi float [ %3696, %3737 ], [ %3936, %4216 ]
  %4236 = phi float [ %3697, %3737 ], [ %3937, %4216 ]
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4227, float %4228, float %4229, float %4227, float %4228, float %4229)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = call float @dx.op.unary.f32(i32 25, float %4237)  ; Rsqrt(value)
  %4239 = fmul fast float %4238, %4227
  %4240 = fmul fast float %4238, %4228
  %4241 = fmul fast float %4238, %4229
  %4242 = fadd fast float %4232, %1139
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float %4239, float %4240, float %4241)  ; Dot3(ax,ay,az,bx,by,bz)
  %4245 = call float @dx.op.unary.f32(i32 25, float %4244)  ; Rsqrt(value)
  %4246 = fmul fast float %4245, %4239
  %4247 = fmul fast float %4245, %4240
  %4248 = fmul fast float %4245, %4241
  br label %4249

; <label>:4249                                    ; preds = %4217, %3692
  %4250 = phi float [ %4246, %4217 ], [ %3732, %3692 ]
  %4251 = phi float [ %4247, %4217 ], [ %3733, %3692 ]
  %4252 = phi float [ %4248, %4217 ], [ %3734, %3692 ]
  %4253 = phi float [ %4234, %4217 ], [ %3695, %3692 ]
  %4254 = phi float [ %4235, %4217 ], [ %3696, %3692 ]
  %4255 = phi float [ %4236, %4217 ], [ %3697, %3692 ]
  %4256 = phi float [ %4224, %4217 ], [ %3698, %3692 ]
  %4257 = phi float [ %4225, %4217 ], [ %3699, %3692 ]
  %4258 = phi float [ %4226, %4217 ], [ %3700, %3692 ]
  %4259 = phi float [ %4233, %4217 ], [ %3701, %3692 ]
  %4260 = phi float [ %4243, %4217 ], [ %1139, %3692 ]
  %4261 = phi float [ %4231, %4217 ], [ %3702, %3692 ]
  %4262 = phi float [ %4230, %4217 ], [ %3703, %3692 ]
  %4263 = phi float [ %4223, %4217 ], [ 0.000000e+00, %3692 ]
  %4264 = phi float [ %4222, %4217 ], [ 0.000000e+00, %3692 ]
  %4265 = phi float [ %4218, %4217 ], [ 0.000000e+00, %3692 ]
  %4266 = phi float [ %4220, %4217 ], [ %3706, %3692 ]
  %4267 = phi float [ %4219, %4217 ], [ %1139, %3692 ]
  %4268 = phi float [ %4221, %4217 ], [ %3704, %3692 ]
  %4269 = fadd fast float %4259, 0xBFB99999A0000000
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = fmul fast float %4270, 0x3FF1C71C80000000
  %4272 = call float @dx.op.binary.f32(i32 36, float %4259, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4273 = fsub fast float 1.000000e+00, %4271
  %4274 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4275 = fmul fast float %4274, %4253
  %4276 = fmul fast float %4274, %4254
  %4277 = fmul fast float %4274, %4255
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = fmul fast float %4271, %4253
  %4282 = fmul fast float %4271, %4254
  %4283 = fmul fast float %4271, %4255
  %4284 = fadd fast float %4281, %4272
  %4285 = fadd fast float %4282, %4272
  %4286 = fadd fast float %4283, %4272
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.i32 %4291, 3
  %4293 = and i32 %4292, 8
  %4294 = icmp ne i32 %4293, 0
  %4295 = call float @dx.op.binary.f32(i32 35, float %4278, float %4253)  ; FMax(a,b)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4279, float %4253)  ; FMax(a,b)
  %4297 = call float @dx.op.binary.f32(i32 35, float %4280, float %4253)  ; FMax(a,b)
  %4298 = call float @dx.op.dot3.f32(i32 55, float %4278, float %4279, float %4280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4299 = select i1 %229, float %4253, float %4278
  %4300 = select i1 %229, float %4298, float %4279
  %4301 = select i1 %229, float 1.000000e+00, float %4280
  %4302 = select i1 %4294, float %4295, float %4299
  %4303 = select i1 %4294, float %4296, float %4300
  %4304 = select i1 %4294, float %4297, float %4301
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4309 = fadd fast float %4306, %167
  %4310 = fadd fast float %4307, %168
  %4311 = fadd fast float %4308, %169
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4315 = fsub fast float %4309, %4313
  %4316 = fsub fast float %4310, %4314
  %4317 = fmul fast float %4315, %4315
  %4318 = fmul fast float %4316, %4316
  %4319 = fadd fast float %4317, %4318
  %4320 = call float @dx.op.unary.f32(i32 24, float %4319)  ; Sqrt(value)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4322 = fcmp fast olt float %4320, %4321
  br i1 %4322, label %4323, label %4390

; <label>:4323                                    ; preds = %4249
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4331 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4332 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4334 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4335 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4336 = fadd fast float %4333, %4309
  %4337 = fadd fast float %4334, %4310
  %4338 = fadd fast float %4335, %4311
  %4339 = fmul fast float %4336, %4325
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4327, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4329, float %4340)  ; FMad(a,b,c)
  %4342 = fmul fast float %4336, %4330
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4331, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4332, float %4343)  ; FMad(a,b,c)
  %4345 = fsub fast float %4341, %4333
  %4346 = fsub fast float %4344, %4334
  %4347 = fsub fast float %4345, %4313
  %4348 = fadd fast float %4347, %4321
  %4349 = fsub fast float %4346, %4314
  %4350 = fadd fast float %4349, %4321
  %4351 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4352 = fmul fast float %4348, %4351
  %4353 = fmul fast float %4350, %4351
  %4354 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4356 = fsub fast float 1.000000e+00, %4354
  %4357 = fsub fast float 1.000000e+00, %4355
  %4358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4356, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = fcmp fast ugt float %4359, 0.000000e+00
  br i1 %4360, label %4361, label %4664

; <label>:4361                                    ; preds = %4323
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4364 = fmul fast float %4363, %4359
  %4365 = extractvalue %dx.types.CBufRet.f32 %4362, 3
  %4366 = fadd fast float %4365, %4364
  %4367 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4368 = fadd fast float %4366, %4335
  %4369 = fmul fast float %4341, %4329
  %4370 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4332, float %4369)  ; FMad(a,b,c)
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4367, float %4370)  ; FMad(a,b,c)
  %4372 = fsub fast float %4371, %4335
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 2
  %4375 = fsub fast float %4372, %4374
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4356, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4356, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.ResRet.f32 %4380, 2
  %4384 = fadd fast float %4381, %4377
  %4385 = fmul fast float %4384, 0x3F847AE140000000
  %4386 = fadd fast float %4382, %4378
  %4387 = fmul fast float %4386, 0x3F847AE140000000
  %4388 = fadd fast float %4383, %4379
  %4389 = fmul fast float %4388, 0x3F847AE140000000
  br label %4664

; <label>:4390                                    ; preds = %4249
  %4391 = and i32 %205, 1
  %4392 = icmp eq i32 %4391, 0
  br i1 %4392, label %4664, label %4393

; <label>:4393                                    ; preds = %4390
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4402 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4404 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4405 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4406 = fadd fast float %4403, %4309
  %4407 = fadd fast float %4404, %4310
  %4408 = fadd fast float %4405, %4311
  %4409 = fmul fast float %4406, %4395
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4407, float %4397, float %4409)  ; FMad(a,b,c)
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4399, float %4410)  ; FMad(a,b,c)
  %4412 = fmul fast float %4406, %4400
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4407, float %4401, float %4412)  ; FMad(a,b,c)
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = fsub fast float %4411, %4403
  %4416 = fsub fast float %4414, %4404
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 3
  %4424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.i32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.i32 %4424, 1
  %4427 = udiv i32 %4426, %4425
  %4428 = fsub fast float %4415, %4418
  %4429 = fsub fast float %4416, %4419
  %4430 = call float @dx.op.binary.f32(i32 35, float %4428, float 0.000000e+00)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4429, float 0.000000e+00)  ; FMax(a,b)
  %4432 = call float @dx.op.binary.f32(i32 36, float %4430, float %4420)  ; FMin(a,b)
  %4433 = call float @dx.op.binary.f32(i32 36, float %4431, float %4421)  ; FMin(a,b)
  %4434 = add i32 %4425, -1
  %4435 = add i32 %4427, -1
  %4436 = fmul fast float %4432, %4423
  %4437 = fmul fast float %4433, %4423
  %4438 = fptoui float %4436 to i32
  %4439 = fptoui float %4437 to i32
  %4440 = call i32 @dx.op.binary.i32(i32 40, i32 %4438, i32 %4434)  ; UMin(a,b)
  %4441 = call i32 @dx.op.binary.i32(i32 40, i32 %4439, i32 %4435)  ; UMin(a,b)
  %4442 = mul i32 %4441, %4425
  %4443 = add i32 %4442, %4440
  %4444 = shl i32 %4443, 2
  %4445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.i32 %4445, 0
  %4447 = icmp eq i32 %4446, -1
  br i1 %4447, label %4664, label %4448

; <label>:4448                                    ; preds = %4393
  %4449 = mul i32 %4446, 148
  %4450 = add i32 %4449, 4
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = add i32 %4449, 8
  %4454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = add i32 %4449, 36
  %4457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = add i32 %4449, 60
  %4460 = add i32 %4449, 92
  %4461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.i32 %4461, 0
  %4463 = add i32 %4449, 116
  %4464 = fsub fast float %4415, %4452
  %4465 = fsub fast float %4416, %4455
  %4466 = fmul fast float %4423, %4464
  %4467 = fmul fast float %4423, %4465
  %4468 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4473 = call float @dx.op.unary.f32(i32 83, float %4468)  ; DerivCoarseX(value)
  %4474 = call float @dx.op.unary.f32(i32 83, float %4470)  ; DerivCoarseX(value)
  %4475 = call float @dx.op.unary.f32(i32 84, float %4468)  ; DerivCoarseY(value)
  %4476 = call float @dx.op.unary.f32(i32 84, float %4470)  ; DerivCoarseY(value)
  %4477 = fmul fast float %4473, %4472
  %4478 = fmul fast float %4474, %4472
  %4479 = fmul fast float %4475, %4472
  %4480 = fmul fast float %4476, %4472
  %4481 = call float @dx.op.dot2.f32(i32 54, float %4479, float %4480, float %4479, float %4480)  ; Dot2(ax,ay,bx,by)
  %4482 = call float @dx.op.dot2.f32(i32 54, float %4477, float %4478, float %4477, float %4478)  ; Dot2(ax,ay,bx,by)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4482, float %4481)  ; FMax(a,b)
  %4484 = call float @dx.op.unary.f32(i32 23, float %4483)  ; Log(value)
  %4485 = fmul fast float %4484, 5.000000e-01
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 1
  %4488 = fadd fast float %4487, %4485
  %4489 = call float @dx.op.binary.f32(i32 35, float %4488, float 0.000000e+00)  ; FMax(a,b)
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4492 = fadd fast float %4491, %4489
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4495 = fadd fast float %4492, %4494
  %4496 = add i32 %4462, 0
  %4497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4498 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4497, i32 0)  ; GetDimensions(handle,mipLevel)
  %4499 = extractvalue %dx.types.Dimensions %4498, 0
  %4500 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4499)  ; FirstbitLo(value)
  %4501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.i32 %4501, 1
  %4503 = sub nsw i32 %4502, %4500
  %4504 = sitofp i32 %4503 to float
  %4505 = fsub fast float %4495, %4504
  %4506 = call float @dx.op.binary.f32(i32 35, float %4505, float 0.000000e+00)  ; FMax(a,b)
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4497, %dx.types.Handle %52, float %4468, float %4470, float %4458, float undef, i32 0, i32 0, i32 undef, float %4506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = fcmp ule float %4508, 0x3FE0101020000000
  %4510 = extractvalue %dx.types.CBufRet.i32 %4501, 0
  %4511 = and i32 %4510, 128
  %4512 = icmp ne i32 %4511, 0
  %4513 = and i1 %4509, %4512
  br i1 %4513, label %4664, label %4514

; <label>:4514                                    ; preds = %4448
  %4515 = add i32 %4449, 20
  %4516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = add i32 %4449, 24
  %4519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = add i32 %4449, 40
  %4522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = add i32 %4449, 96
  %4525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4529 = fmul fast float %4528, %4468
  %4530 = fmul fast float %4528, %4470
  %4531 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4532 = fadd fast float %4529, %4531
  %4533 = fadd fast float %4530, %4531
  %4534 = add i32 %4526, 0
  %4535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4536 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4535, i32 0)  ; GetDimensions(handle,mipLevel)
  %4537 = extractvalue %dx.types.Dimensions %4536, 0
  %4538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4537)  ; FirstbitLo(value)
  %4539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.i32 %4539, 1
  %4541 = sub nsw i32 %4540, %4538
  %4542 = sitofp i32 %4541 to float
  %4543 = fsub fast float %4492, %4542
  %4544 = call float @dx.op.binary.f32(i32 35, float %4543, float 0.000000e+00)  ; FMax(a,b)
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4535, %dx.types.Handle %52, float %4532, float %4533, float %4523, float undef, i32 0, i32 0, i32 undef, float %4544)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = fmul fast float %4546, %4517
  %4548 = fadd fast float %4547, %4520
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 3
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4557 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4558 = fadd fast float %4554, %4415
  %4559 = fadd fast float %4556, %4416
  %4560 = fadd fast float %4548, %4557
  %4561 = fmul fast float %4558, %4550
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4551, float %4561)  ; FMad(a,b,c)
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4552, float %4562)  ; FMad(a,b,c)
  %4564 = fsub fast float %4563, %4557
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = fsub fast float %4564, %4566
  %4568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.i32 %4568, 0
  %4570 = call i32 @dx.op.binary.i32(i32 40, i32 %4446, i32 %4569)  ; UMin(a,b)
  %4571 = mul i32 %4570, 36
  %4572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.i32 %4572, 0
  %4574 = add i32 %4571, 4
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = fmul fast float %4576, %4468
  %4578 = fmul fast float %4576, %4470
  %4579 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4580 = fadd fast float %4577, %4579
  %4581 = fadd fast float %4578, %4579
  %4582 = icmp eq i32 %4573, 0
  br i1 %4582, label %4651, label %4583

; <label>:4583                                    ; preds = %4514
  br label %4584

; <label>:4584                                    ; preds = %4641, %4583
  %4585 = phi float [ %4642, %4641 ], [ 0.000000e+00, %4583 ]
  %4586 = phi float [ %4643, %4641 ], [ 0.000000e+00, %4583 ]
  %4587 = phi float [ %4644, %4641 ], [ 0.000000e+00, %4583 ]
  %4588 = phi float [ %4645, %4641 ], [ 0.000000e+00, %4583 ]
  %4589 = phi float [ %4646, %4641 ], [ 0.000000e+00, %4583 ]
  %4590 = phi float [ %4647, %4641 ], [ 0.000000e+00, %4583 ]
  %4591 = phi i32 [ %4648, %4641 ], [ 0, %4583 ]
  %4592 = shl i32 %4591, 2
  %4593 = add i32 %4459, %4592
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = add i32 %4463, %4592
  %4597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.i32 %4597, 0
  %4599 = add i32 %4598, 0
  %4600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4599, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4601 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4600, i32 0)  ; GetDimensions(handle,mipLevel)
  %4602 = extractvalue %dx.types.Dimensions %4601, 0
  %4603 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4602)  ; FirstbitLo(value)
  %4604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.i32 %4604, 1
  %4606 = sub nsw i32 %4605, %4603
  %4607 = sitofp i32 %4606 to float
  %4608 = fsub fast float %4492, %4607
  %4609 = call float @dx.op.binary.f32(i32 35, float %4608, float 0.000000e+00)  ; FMax(a,b)
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4600, %dx.types.Handle %52, float %4580, float %4581, float %4595, float undef, i32 0, i32 0, i32 undef, float %4609)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = fcmp fast ogt float %4611, 0.000000e+00
  br i1 %4612, label %4613, label %4641

; <label>:4613                                    ; preds = %4584
  %4614 = add i32 %4574, %4592
  %4615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.i32 %4615, 0
  %4617 = and i32 %4616, 32767
  %4618 = mul nuw nsw i32 %4617, 928
  %4619 = add nuw nsw i32 %4618, 48
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = add nuw nsw i32 %4618, 60
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = fmul fast float %4621, %4611
  %4630 = fmul fast float %4622, %4611
  %4631 = fmul fast float %4623, %4611
  %4632 = fadd fast float %4629, %4585
  %4633 = fadd fast float %4630, %4586
  %4634 = fadd fast float %4631, %4587
  %4635 = fmul fast float %4626, %4611
  %4636 = fmul fast float %4627, %4611
  %4637 = fmul fast float %4628, %4611
  %4638 = fadd fast float %4635, %4588
  %4639 = fadd fast float %4636, %4589
  %4640 = fadd fast float %4637, %4590
  br label %4641

; <label>:4641                                    ; preds = %4613, %4584
  %4642 = phi float [ %4632, %4613 ], [ %4585, %4584 ]
  %4643 = phi float [ %4633, %4613 ], [ %4586, %4584 ]
  %4644 = phi float [ %4634, %4613 ], [ %4587, %4584 ]
  %4645 = phi float [ %4638, %4613 ], [ %4588, %4584 ]
  %4646 = phi float [ %4639, %4613 ], [ %4589, %4584 ]
  %4647 = phi float [ %4640, %4613 ], [ %4590, %4584 ]
  %4648 = add nuw i32 %4591, 1
  %4649 = icmp eq i32 %4648, %4573
  br i1 %4649, label %4650, label %4584

; <label>:4650                                    ; preds = %4641
  br label %4651

; <label>:4651                                    ; preds = %4650, %4514
  %4652 = phi float [ 0.000000e+00, %4514 ], [ %4642, %4650 ]
  %4653 = phi float [ 0.000000e+00, %4514 ], [ %4643, %4650 ]
  %4654 = phi float [ 0.000000e+00, %4514 ], [ %4644, %4650 ]
  %4655 = phi float [ 0.000000e+00, %4514 ], [ %4645, %4650 ]
  %4656 = phi float [ 0.000000e+00, %4514 ], [ %4646, %4650 ]
  %4657 = phi float [ 0.000000e+00, %4514 ], [ %4647, %4650 ]
  %4658 = fadd fast float %4655, %4652
  %4659 = fmul fast float %4658, 0x3F847AE140000000
  %4660 = fadd fast float %4656, %4653
  %4661 = fmul fast float %4660, 0x3F847AE140000000
  %4662 = fadd fast float %4657, %4654
  %4663 = fmul fast float %4662, 0x3F847AE140000000
  br label %4664

; <label>:4664                                    ; preds = %4651, %4448, %4393, %4390, %4361, %4323
  %4665 = phi float [ %4375, %4361 ], [ -1.310720e+05, %4323 ], [ %4567, %4651 ], [ -1.310720e+05, %4393 ], [ -1.310720e+05, %4448 ], [ -1.310720e+05, %4390 ]
  %4666 = phi float [ %4385, %4361 ], [ 0.000000e+00, %4323 ], [ %4659, %4651 ], [ 0.000000e+00, %4393 ], [ 0.000000e+00, %4448 ], [ 0.000000e+00, %4390 ]
  %4667 = phi float [ %4387, %4361 ], [ 0.000000e+00, %4323 ], [ %4661, %4651 ], [ 0.000000e+00, %4393 ], [ 0.000000e+00, %4448 ], [ 0.000000e+00, %4390 ]
  %4668 = phi float [ %4389, %4361 ], [ 0.000000e+00, %4323 ], [ %4663, %4651 ], [ 0.000000e+00, %4393 ], [ 0.000000e+00, %4448 ], [ 0.000000e+00, %4390 ]
  %4669 = phi i1 [ true, %4361 ], [ false, %4323 ], [ true, %4651 ], [ false, %4393 ], [ false, %4448 ], [ false, %4390 ]
  %4670 = and i32 %205, 3
  %4671 = icmp eq i32 %4670, 1
  %4672 = select i1 %4671, float 1.000000e+00, float 0.000000e+00
  %4673 = fsub fast float %4665, %169
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = select i1 %4669, float %4674, float 1.000000e+00
  %4676 = fmul fast float %4675, %4672
  %4677 = icmp eq i32 %4670, 3
  %4678 = select i1 %4677, float 1.000000e+00, float %4676
  %4679 = call float @dx.op.binary.f32(i32 35, float %4265, float %4678)  ; FMax(a,b)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fcmp fast une float %4680, 0.000000e+00
  %4682 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = call float @dx.op.unary.f32(i32 25, float %4682)  ; Rsqrt(value)
  br i1 %4681, label %4691, label %4684

; <label>:4684                                    ; preds = %4664
  %4685 = fmul fast float %4683, %167
  %4686 = fmul fast float %4683, %168
  %4687 = fmul fast float %4683, %169
  %4688 = fsub fast float -0.000000e+00, %4685
  %4689 = fsub fast float -0.000000e+00, %4686
  %4690 = fsub fast float -0.000000e+00, %4687
  br label %4859

; <label>:4691                                    ; preds = %4664
  %4692 = fmul fast float %167, %4683
  %4693 = fsub fast float -0.000000e+00, %4692
  %4694 = fmul fast float %168, %4683
  %4695 = fsub fast float -0.000000e+00, %4694
  %4696 = fmul fast float %169, %4683
  %4697 = fsub fast float -0.000000e+00, %4696
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4695, float %4697, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fmul fast float %4680, 2.500000e+00
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4680, 0x4013FFFFE0000000
  %4702 = fadd fast float %4701, 0xBFFFFFFFE0000000
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4680, 0x4004000020000000
  %4705 = fadd fast float %4704, 0xBFF8000040000000
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4708 = fmul fast float %4269, 1.000000e+01
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4709, 2.000000e+00
  %4711 = fsub fast float 3.000000e+00, %4710
  %4712 = fmul fast float %4709, %4709
  %4713 = fmul fast float %4712, %4711
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = fsub fast float 0x3FE3333340000000, %4290
  %4716 = fmul fast float %4715, 0x400AAAAAA0000000
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4714, %4717
  %4719 = fmul fast float %4302, 0x3FEA2B8620000000
  %4720 = fmul fast float %4303, 0x3FEA2B8620000000
  %4721 = fmul fast float %4304, 0x3FEA2B8620000000
  %4722 = fadd fast float %4719, 0x3FC81DFBA0000000
  %4723 = fmul fast float %4722, %4302
  %4724 = fadd fast float %4723, 0x3F910E6020000000
  %4725 = fadd fast float %4720, 0x3FC81DFBA0000000
  %4726 = fmul fast float %4725, %4303
  %4727 = fadd fast float %4726, 0x3F910E6020000000
  %4728 = fadd fast float %4721, 0x3FC81DFBA0000000
  %4729 = fmul fast float %4728, %4304
  %4730 = fadd fast float %4729, 0x3F910E6020000000
  %4731 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = fsub fast float %4731, %4302
  %4735 = fsub fast float %4732, %4303
  %4736 = fsub fast float %4733, %4304
  %4737 = fmul fast float %4734, %4707
  %4738 = fmul fast float %4737, %4718
  %4739 = fmul fast float %4735, %4707
  %4740 = fmul fast float %4739, %4718
  %4741 = fmul fast float %4736, %4707
  %4742 = fmul fast float %4741, %4718
  %4743 = fadd fast float %4738, %4302
  %4744 = fadd fast float %4740, %4303
  %4745 = fadd fast float %4742, %4304
  %4746 = fmul fast float %4262, %4262
  %4747 = fmul fast float %4746, %4746
  %4748 = fadd fast float %4703, 1.000000e+00
  %4749 = fsub fast float %4748, %4718
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fsub fast float 1.000000e+00, %4747
  %4754 = call float @dx.op.binary.f32(i32 36, float %4750, float %4753)  ; FMin(a,b)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4754, float %4755)  ; FMax(a,b)
  %4757 = fadd fast float %4752, 0xBFE4CCCCC0000000
  %4758 = fmul fast float %4757, 0x4006DB6DA0000000
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4759, 2.000000e+00
  %4761 = fsub fast float 3.000000e+00, %4760
  %4762 = bitcast float %4287 to i32
  %4763 = ashr i32 %4762, 1
  %4764 = add nsw i32 %4763, 532487669
  %4765 = bitcast i32 %4764 to float
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4769, 2.000000e+00
  %4771 = bitcast float %4288 to i32
  %4772 = ashr i32 %4771, 1
  %4773 = add nsw i32 %4772, 532487669
  %4774 = bitcast i32 %4773 to float
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4778, 2.000000e+00
  %4780 = bitcast float %4289 to i32
  %4781 = ashr i32 %4780, 1
  %4782 = add nsw i32 %4781, 532487669
  %4783 = bitcast i32 %4782 to float
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = bitcast float %4784 to i32
  %4786 = sub nsw i32 2129859010, %4785
  %4787 = bitcast i32 %4786 to float
  %4788 = fmul fast float %4787, 2.000000e+00
  %4789 = fsub fast float 0x4002A9FBE0000000, %4770
  %4790 = fadd fast float %4770, 0x3FD54FDF00000000
  %4791 = bitcast float %4790 to i32
  %4792 = sub nsw i32 2129859010, %4791
  %4793 = bitcast i32 %4792 to float
  %4794 = fmul fast float %4793, %4789
  %4795 = fmul fast float %4794, %4794
  %4796 = fsub fast float 0x4002A9FBE0000000, %4779
  %4797 = fadd fast float %4779, 0x3FD54FDF00000000
  %4798 = bitcast float %4797 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4800, %4796
  %4802 = fmul fast float %4801, %4801
  %4803 = fsub fast float 0x4002A9FBE0000000, %4788
  %4804 = fadd fast float %4788, 0x3FD54FDF00000000
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4807, %4803
  %4809 = fmul fast float %4808, %4808
  %4810 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4795)  ; FMax(a,b)
  %4811 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4802)  ; FMax(a,b)
  %4812 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4809)  ; FMax(a,b)
  %4813 = fsub fast float 1.000000e+00, %4698
  %4814 = fadd fast float %4813, %4714
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fsub fast float 1.000000e+00, %4678
  %4817 = fmul fast float %4756, %4816
  %4818 = fmul fast float %4759, %4759
  %4819 = fmul fast float %4818, %4817
  %4820 = fmul fast float %4819, %4761
  %4821 = fmul fast float %4816, 0xBFE99999A0000000
  %4822 = fmul fast float %4821, %4707
  %4823 = fmul fast float %4822, %4718
  %4824 = fadd fast float %4823, 1.000000e+00
  %4825 = fadd fast float %4290, -1.000000e+00
  %4826 = fmul fast float %4824, %4825
  %4827 = fadd fast float %4826, 1.000000e+00
  %4828 = fsub fast float %4810, %4287
  %4829 = fsub fast float %4811, %4288
  %4830 = fsub fast float %4812, %4289
  %4831 = fmul fast float %4820, %4828
  %4832 = fmul fast float %4820, %4829
  %4833 = fmul fast float %4820, %4830
  %4834 = fadd fast float %4831, %4287
  %4835 = fadd fast float %4832, %4288
  %4836 = fadd fast float %4833, %4289
  %4837 = fsub fast float %111, %4250
  %4838 = fsub fast float %112, %4251
  %4839 = fsub fast float %113, %4252
  %4840 = fmul fast float %4820, %4837
  %4841 = fmul fast float %4820, %4838
  %4842 = fmul fast float %4820, %4839
  %4843 = fadd fast float %4840, %4250
  %4844 = fadd fast float %4841, %4251
  %4845 = fadd fast float %4842, %4252
  %4846 = fmul fast float %4820, %4815
  %4847 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = fmul fast float %4846, %4848
  %4850 = fadd fast float %4849, %4847
  %4851 = fsub fast float 1.000000e+00, %4262
  %4852 = fmul fast float %4820, %4851
  %4853 = fadd fast float %4852, %4262
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4844, float %4845, float %4843, float %4844, float %4845)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 25, float %4854)  ; Rsqrt(value)
  %4856 = fmul fast float %4843, %4855
  %4857 = fmul fast float %4844, %4855
  %4858 = fmul fast float %4845, %4855
  br label %4859

; <label>:4859                                    ; preds = %4691, %4684
  %4860 = phi float [ %4690, %4684 ], [ %4697, %4691 ]
  %4861 = phi float [ %4689, %4684 ], [ %4695, %4691 ]
  %4862 = phi float [ %4688, %4684 ], [ %4693, %4691 ]
  %4863 = phi float [ %4687, %4684 ], [ %4696, %4691 ]
  %4864 = phi float [ %4686, %4684 ], [ %4694, %4691 ]
  %4865 = phi float [ %4685, %4684 ], [ %4692, %4691 ]
  %4866 = phi float [ %4287, %4684 ], [ %4834, %4691 ]
  %4867 = phi float [ %4288, %4684 ], [ %4835, %4691 ]
  %4868 = phi float [ %4289, %4684 ], [ %4836, %4691 ]
  %4869 = phi float [ %4302, %4684 ], [ %4743, %4691 ]
  %4870 = phi float [ %4303, %4684 ], [ %4744, %4691 ]
  %4871 = phi float [ %4304, %4684 ], [ %4745, %4691 ]
  %4872 = phi float [ %4250, %4684 ], [ %4856, %4691 ]
  %4873 = phi float [ %4251, %4684 ], [ %4857, %4691 ]
  %4874 = phi float [ %4252, %4684 ], [ %4858, %4691 ]
  %4875 = phi float [ %4290, %4684 ], [ %4850, %4691 ]
  %4876 = phi float [ %4262, %4684 ], [ %4853, %4691 ]
  %4877 = fsub fast float -0.000000e+00, %169
  %4878 = select i1 %229, float 0.000000e+00, float %4868
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4862, float %4861, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4864, float %4863, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = fmul fast float %4881, 2.000000e+00
  %4883 = fmul fast float %4882, %4872
  %4884 = fmul fast float %4882, %4873
  %4885 = fmul fast float %4882, %4874
  %4886 = fsub fast float %4865, %4883
  %4887 = fsub fast float %4864, %4884
  %4888 = fsub fast float %4863, %4885
  %4889 = call float @dx.op.binary.f32(i32 36, float %4876, float 1.000000e+00)  ; FMin(a,b)
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = ashr i32 %4891, 1
  %4893 = add nsw i32 %4892, 532487669
  %4894 = bitcast i32 %4893 to float
  %4895 = fsub fast float 1.000000e+00, %4875
  %4896 = call float @dx.op.binary.f32(i32 35, float %4895, float 0x3F847AE140000000)  ; FMax(a,b)
  %4897 = fmul fast float %4896, %4896
  %4898 = fmul fast float %4897, %4897
  %4899 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4894, float %4898, float %4899, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = fsub fast float 1.000000e+00, %4876
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = fsub fast float 1.000000e+00, %72
  %4907 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4907, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4909 = fdiv fast float %4906, %4908
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, 5.000000e-01
  %4913 = fadd fast float %4912, 5.000000e-01
  %4914 = fmul fast float %4913, %72
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = fmul fast float %4916, %4909
  %4918 = fadd fast float %4914, %4917
  %4919 = fsub fast float 5.000000e-01, %4912
  %4920 = fmul fast float %4919, %4869
  %4921 = fmul fast float %4919, %4870
  %4922 = fmul fast float %4919, %4871
  %4923 = fadd fast float %4918, %4920
  %4924 = fadd fast float %4918, %4921
  %4925 = fadd fast float %4918, %4922
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, 5.000000e-01
  %4929 = fadd fast float %4928, 5.000000e-01
  %4930 = fmul fast float %4929, %72
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, %4909
  %4934 = fadd fast float %4930, %4933
  %4935 = fsub fast float 5.000000e-01, %4928
  %4936 = fmul fast float %4935, %4869
  %4937 = fmul fast float %4935, %4870
  %4938 = fmul fast float %4935, %4871
  %4939 = fadd fast float %4934, %4936
  %4940 = fadd fast float %4934, %4937
  %4941 = fadd fast float %4934, %4938
  %4942 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = call float @dx.op.binary.f32(i32 36, float %4869, float %4944)  ; FMin(a,b)
  %4946 = fmul fast float %4945, %4890
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = bitcast float %4947 to i32
  %4949 = sub nsw i32 2129859010, %4948
  %4950 = bitcast i32 %4949 to float
  %4951 = call float @dx.op.binary.f32(i32 36, float %4870, float %4944)  ; FMin(a,b)
  %4952 = fmul fast float %4951, %4890
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = call float @dx.op.binary.f32(i32 36, float %4871, float %4944)  ; FMin(a,b)
  %4958 = fmul fast float %4957, %4890
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4889, %73
  %4964 = fmul fast float %4963, %4923
  %4965 = fmul fast float %4964, %4950
  %4966 = fmul fast float %4889, %74
  %4967 = fmul fast float %4966, %4924
  %4968 = fmul fast float %4967, %4956
  %4969 = fmul fast float %4889, %75
  %4970 = fmul fast float %4969, %4925
  %4971 = fmul fast float %4970, %4962
  %4972 = call float @dx.op.binary.f32(i32 36, float %4866, float %4944)  ; FMin(a,b)
  %4973 = fmul fast float %4972, %4890
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = call float @dx.op.binary.f32(i32 36, float %4867, float %4944)  ; FMin(a,b)
  %4979 = fmul fast float %4978, %4890
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = call float @dx.op.binary.f32(i32 36, float %4878, float %4944)  ; FMin(a,b)
  %4985 = fmul fast float %4984, %4890
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4963, %4939
  %4991 = fmul fast float %4990, %4977
  %4992 = fmul fast float %4966, %4940
  %4993 = fmul fast float %4992, %4983
  %4994 = fmul fast float %4969, %4941
  %4995 = fmul fast float %4994, %4989
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4965, float %4968, float %4971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = select i1 %229, float 0.000000e+00, float %4965
  %4998 = select i1 %229, float %4996, float %4968
  %4999 = select i1 %229, float 0.000000e+00, float %4971
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4991, float %4993, float %4995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = select i1 %229, float 0.000000e+00, float %4991
  %5002 = select i1 %229, float %5000, float %4993
  %5003 = select i1 %229, float 0.000000e+00, float %4995
  %5004 = fmul fast float %4880, 9.843750e-01
  %5005 = fmul fast float %4875, 9.843750e-01
  %5006 = fadd fast float %5004, 7.812500e-03
  %5007 = fadd fast float %5005, 7.812500e-03
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5006, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 2
  %5010 = extractvalue %dx.types.ResRet.f32 %5008, 3
  %5011 = fmul fast float %5009, %4866
  %5012 = fmul fast float %5009, %4867
  %5013 = fmul fast float %5009, %4878
  %5014 = fadd fast float %5011, %5010
  %5015 = fadd fast float %5012, %5010
  %5016 = fadd fast float %5013, %5010
  %5017 = fcmp fast ogt float %4263, 0.000000e+00
  br i1 %5017, label %5018, label %5044

; <label>:5018                                    ; preds = %4859
  %5019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4263, float %4880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.ResRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.ResRet.f32 %5019, 2
  %5023 = fadd fast float %5020, -5.000000e-01
  %5024 = fadd fast float %5021, -5.000000e-01
  %5025 = fadd fast float %5022, -5.000000e-01
  %5026 = fsub fast float 1.000000e+00, %4866
  %5027 = fsub fast float 1.000000e+00, %4867
  %5028 = fsub fast float 1.000000e+00, %4878
  %5029 = fmul fast float %4866, 4.000000e+00
  %5030 = fmul fast float %5029, %5026
  %5031 = fmul fast float %5030, %5023
  %5032 = fmul fast float %4867, 4.000000e+00
  %5033 = fmul fast float %5032, %5027
  %5034 = fmul fast float %5033, %5024
  %5035 = fmul fast float %4878, 4.000000e+00
  %5036 = fmul fast float %5035, %5028
  %5037 = fmul fast float %5036, %5025
  %5038 = fadd fast float %5031, %5014
  %5039 = fadd fast float %5034, %5015
  %5040 = fadd fast float %5037, %5016
  %5041 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  br label %5044

; <label>:5044                                    ; preds = %5018, %4859
  %5045 = phi float [ %5041, %5018 ], [ %5014, %4859 ]
  %5046 = phi float [ %5042, %5018 ], [ %5015, %4859 ]
  %5047 = phi float [ %5043, %5018 ], [ %5016, %4859 ]
  %5048 = call float @dx.op.binary.f32(i32 35, float %5046, float %5047)  ; FMax(a,b)
  %5049 = call float @dx.op.binary.f32(i32 35, float %5045, float %5048)  ; FMax(a,b)
  %5050 = fsub fast float 1.000000e+00, %5049
  %5051 = fmul fast float %5049, %4875
  %5052 = fadd fast float %5051, %4875
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5055 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5056 = fmul fast float %5052, %5054
  %5057 = fadd fast float %5056, %5055
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fsub fast float 1.000000e+00, %4901
  %5060 = fadd fast float %5059, %5058
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fcmp fast olt float %5061, 1.000000e+00
  br i1 %5062, label %5063, label %5539

; <label>:5063                                    ; preds = %5044
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5067 = fmul fast float %5065, %104
  %5068 = fmul fast float %5066, %105
  %5069 = fptoui float %5067 to i32
  %5070 = fptoui float %5068 to i32
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.CBufRet.f32 %5071, 2
  %5074 = extractvalue %dx.types.CBufRet.f32 %5071, 3
  %5075 = fadd fast float %92, -4.000000e+00
  %5076 = call float @dx.op.binary.f32(i32 35, float %5075, float 0.000000e+00)  ; FMax(a,b)
  %5077 = fadd fast float %5076, %5072
  %5078 = fmul fast float %5077, %5073
  %5079 = call float @dx.op.unary.f32(i32 23, float %5078)  ; Log(value)
  %5080 = fmul fast float %5079, %5074
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5083 = fmul fast float %5080, %5082
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.i32 %5085, 1
  %5087 = add i32 %5086, -1
  %5088 = uitofp i32 %5086 to float
  %5089 = fmul fast float %5088, %5084
  %5090 = fptoui float %5089 to i32
  %5091 = call i32 @dx.op.binary.i32(i32 40, i32 %5090, i32 %5087)  ; UMin(a,b)
  %5092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.i32 %5092, 2
  %5094 = extractvalue %dx.types.CBufRet.i32 %5092, 3
  %5095 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5070, i32 %5093, i32 %5069)  ; UMad(a,b,c)
  %5096 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5091, i32 %5094, i32 %5095)  ; UMad(a,b,c)
  %5097 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5098 = fptoui float %5097 to i32
  %5099 = lshr i32 %5098, 5
  %5100 = call i32 @dx.op.binary.i32(i32 40, i32 %5099, i32 8191)  ; UMin(a,b)
  %5101 = fsub fast float %4665, %169
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = fcmp fast ogt float %5102, 0.000000e+00
  %5104 = fcmp fast ogt float %4888, 0.000000e+00
  %5105 = and i1 %5104, %5103
  br i1 %5105, label %5106, label %5135

; <label>:5106                                    ; preds = %5063
  %5107 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5107, float -1.000000e+00)  ; FMax(a,b)
  %5109 = call float @dx.op.binary.f32(i32 36, float %5108, float 1.000000e+00)  ; FMin(a,b)
  %5110 = fmul fast float %5109, %5109
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = fmul fast float %5111, 0x3FFC6E2300000000
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = fcmp fast ogt float %5113, 0.000000e+00
  %5115 = call float @dx.op.unary.f32(i32 24, float %5113)  ; Sqrt(value)
  %5116 = fsub fast float 1.000000e+00, %5115
  %5117 = call float @dx.op.unary.f32(i32 23, float %5116)  ; Log(value)
  %5118 = fmul fast float %5117, 5.000000e+00
  %5119 = call float @dx.op.unary.f32(i32 21, float %5118)  ; Exp(value)
  %5120 = fmul fast float %5119, 0x3FEF591A60000000
  %5121 = fadd fast float %5120, 0x3F94DCB540000000
  %5122 = select i1 %5114, float %5121, float 1.000000e+00
  %5123 = fcmp fast oge float %5122, 1.000000e+00
  %5124 = fmul fast float %5107, 2.000000e+00
  %5125 = fadd fast float %5124, %4888
  %5126 = select i1 %5123, float %5125, float %4888
  %5127 = fsub fast float %5126, %4888
  %5128 = fmul fast float %5127, %5102
  %5129 = fadd fast float %5128, %4888
  %5130 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %5129, float %4886, float %4887, float %5129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = call float @dx.op.unary.f32(i32 25, float %5130)  ; Rsqrt(value)
  %5132 = fmul fast float %5131, %4886
  %5133 = fmul fast float %5131, %4887
  %5134 = fmul fast float %5129, %5131
  br label %5135

; <label>:5135                                    ; preds = %5106, %5063
  %5136 = phi float [ %5132, %5106 ], [ %4886, %5063 ]
  %5137 = phi float [ %5133, %5106 ], [ %4887, %5063 ]
  %5138 = phi float [ %5134, %5106 ], [ %4888, %5063 ]
  %5139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.i32 %5139, 2
  %5141 = add nsw i32 %5140, -1
  %5142 = call i32 @dx.op.binary.i32(i32 37, i32 %5141, i32 0)  ; IMax(a,b)
  %5143 = shl i32 %5100, 2
  %5144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5143, i32 undef)  ; BufferLoad(srv,index,wot)
  %5145 = extractvalue %dx.types.ResRet.i32 %5144, 0
  %5146 = lshr i32 %5145, 16
  %5147 = and i32 %5145, 65535
  %5148 = lshr i32 %5145, 21
  %5149 = lshr i32 %5147, 5
  %5150 = call i32 @dx.op.binary.i32(i32 40, i32 %5149, i32 %5142)  ; UMin(a,b)
  %5151 = icmp ugt i32 %5148, %5150
  br i1 %5151, label %5515, label %5152

; <label>:5152                                    ; preds = %5135
  br label %5153

; <label>:5153                                    ; preds = %5507, %5152
  %5154 = phi float [ %5508, %5507 ], [ 0.000000e+00, %5152 ]
  %5155 = phi float [ %5509, %5507 ], [ 0.000000e+00, %5152 ]
  %5156 = phi float [ %5510, %5507 ], [ 0.000000e+00, %5152 ]
  %5157 = phi float [ %5511, %5507 ], [ 1.000000e+00, %5152 ]
  %5158 = phi i32 [ %5512, %5507 ], [ %5148, %5152 ]
  %5159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.i32 %5159, 2
  %5161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5096, i32 %5160, i32 %5158)  ; UMad(a,b,c)
  %5162 = shl i32 %5161, 2
  %5163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5162, i32 undef)  ; BufferLoad(srv,index,wot)
  %5164 = extractvalue %dx.types.ResRet.i32 %5163, 0
  %5165 = shl i32 %5158, 5
  %5166 = sub nsw i32 %5146, %5165
  %5167 = call i32 @dx.op.binary.i32(i32 37, i32 %5166, i32 0)  ; IMax(a,b)
  %5168 = call i32 @dx.op.binary.i32(i32 38, i32 %5167, i32 31)  ; IMin(a,b)
  %5169 = sub nsw i32 1, %5146
  %5170 = add nsw i32 %5169, %5147
  %5171 = call i32 @dx.op.binary.i32(i32 37, i32 %5170, i32 0)  ; IMax(a,b)
  %5172 = call i32 @dx.op.binary.i32(i32 38, i32 %5171, i32 32)  ; IMin(a,b)
  %5173 = and i32 %5172, 31
  %5174 = shl i32 -1, %5173
  %5175 = xor i32 %5174, -1
  %5176 = and i32 %5168, 31
  %5177 = shl i32 %5175, %5176
  %5178 = icmp eq i32 %5172, 32
  %5179 = select i1 %5178, i32 -1, i32 %5177
  %5180 = and i32 %5179, %5164
  %5181 = icmp eq i32 %5180, 0
  br i1 %5181, label %5507, label %5182

; <label>:5182                                    ; preds = %5153
  br label %5183

; <label>:5183                                    ; preds = %5290, %5182
  %5184 = phi float [ %5291, %5290 ], [ %5154, %5182 ]
  %5185 = phi float [ %5292, %5290 ], [ %5155, %5182 ]
  %5186 = phi float [ %5293, %5290 ], [ %5156, %5182 ]
  %5187 = phi float [ %5294, %5290 ], [ %5157, %5182 ]
  %5188 = phi i32 [ %5193, %5290 ], [ %5180, %5182 ]
  %5189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5188)  ; FirstbitLo(value)
  %5190 = add i32 %5189, %5165
  %5191 = and i32 %5189, 31
  %5192 = shl i32 1, %5191
  %5193 = xor i32 %5192, %5188
  %5194 = mul i32 %5190, 72
  %5195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = add i32 %5194, 12
  %5200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5199, i32 undef)  ; BufferLoad(srv,index,wot)
  %5201 = extractvalue %dx.types.ResRet.i32 %5200, 0
  %5202 = add i32 %5194, 16
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = add i32 %5194, 28
  %5208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = add i32 %5194, 32
  %5211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5210, i32 undef)  ; BufferLoad(srv,index,wot)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = extractvalue %dx.types.ResRet.f32 %5211, 3
  %5216 = add i32 %5194, 48
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = add i32 %5194, 56
  %5221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.ResRet.f32 %5221, 1
  %5224 = add i32 %5194, 64
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = mul i32 %5190, 60
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = add i32 %5228, 12
  %5234 = add i32 %5228, 48
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = and i32 %5201, 32767
  %5240 = bitcast float %5196 to i32
  %5241 = icmp eq i32 %5240, -1
  %5242 = bitcast float %5197 to i32
  %5243 = and i32 %5201, 32768
  %5244 = icmp ne i32 %5243, 0
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5249 = fsub fast float %5230, %5246
  %5250 = fsub fast float %5231, %5247
  %5251 = fsub fast float %5232, %5248
  %5252 = fsub fast float %167, %5249
  %5253 = fsub fast float %168, %5250
  %5254 = fsub fast float %169, %5251
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.ResRet.f32 %5255, 2
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = add i32 %5228, 24
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5262, float %5263, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = add i32 %5228, 36
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 1
  %5270 = extractvalue %dx.types.ResRet.f32 %5267, 2
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5268, float %5269, float %5270)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = call float @dx.op.unary.f32(i32 6, float %5259)  ; FAbs(value)
  %5273 = call float @dx.op.unary.f32(i32 6, float %5265)  ; FAbs(value)
  %5274 = call float @dx.op.unary.f32(i32 6, float %5271)  ; FAbs(value)
  %5275 = fsub fast float %5236, %5272
  %5276 = fsub fast float %5237, %5273
  %5277 = fsub fast float %5238, %5274
  %5278 = fmul fast float %5275, %5204
  %5279 = fmul fast float %5276, %5205
  %5280 = fmul fast float %5277, %5206
  %5281 = call float @dx.op.binary.f32(i32 36, float %5279, float %5280)  ; FMin(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5278, float %5281)  ; FMin(a,b)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = call float @dx.op.binary.f32(i32 36, float %5187, float %5283)  ; FMin(a,b)
  %5285 = uitofp i1 %5244 to float
  %5286 = fadd fast float %5102, 1.000000e+00
  %5287 = fsub fast float %5286, %5285
  %5288 = fmul fast float %5284, %5287
  %5289 = fcmp fast ogt float %5288, 0.000000e+00
  br i1 %5289, label %5296, label %5290

; <label>:5290                                    ; preds = %5438, %5183
  %5291 = phi float [ %5502, %5438 ], [ %5184, %5183 ]
  %5292 = phi float [ %5503, %5438 ], [ %5185, %5183 ]
  %5293 = phi float [ %5504, %5438 ], [ %5186, %5183 ]
  %5294 = phi float [ %5505, %5438 ], [ %5187, %5183 ]
  %5295 = icmp eq i32 %5188, %5192
  br i1 %5295, label %5506, label %5183

; <label>:5296                                    ; preds = %5183
  br i1 %5241, label %5354, label %5297

; <label>:5297                                    ; preds = %5296
  %5298 = fsub fast float -0.000000e+00, %5256
  %5299 = fsub fast float -0.000000e+00, %5257
  %5300 = fsub fast float -0.000000e+00, %5258
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float %5298, float %5299, float %5300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = fsub fast float -0.000000e+00, %5301
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5298, float %5299, float %5300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = fadd fast float %5303, %5219
  %5305 = fadd fast float %5218, %5303
  %5306 = fsub fast float -0.000000e+00, %5305
  %5307 = fcmp ogt float %5301, -0.000000e+00
  %5308 = select i1 %5307, float %5306, float %5304
  %5309 = call float @dx.op.unary.f32(i32 6, float %5302)  ; FAbs(value)
  %5310 = fdiv fast float 1.000000e+00, %5309
  %5311 = fmul fast float %5308, %5310
  %5312 = call float @dx.op.binary.f32(i32 35, float %5311, float 0.000000e+00)  ; FMax(a,b)
  %5313 = fsub fast float -0.000000e+00, %5262
  %5314 = fsub fast float -0.000000e+00, %5263
  %5315 = fsub fast float -0.000000e+00, %5264
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = fsub fast float -0.000000e+00, %5316
  %5318 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = fadd fast float %5318, %5223
  %5320 = fadd fast float %5222, %5318
  %5321 = fsub fast float -0.000000e+00, %5320
  %5322 = fcmp ogt float %5316, -0.000000e+00
  %5323 = select i1 %5322, float %5321, float %5319
  %5324 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5325 = fdiv fast float 1.000000e+00, %5324
  %5326 = fmul fast float %5323, %5325
  %5327 = call float @dx.op.binary.f32(i32 35, float %5326, float 0.000000e+00)  ; FMax(a,b)
  %5328 = fsub fast float -0.000000e+00, %5268
  %5329 = fsub fast float -0.000000e+00, %5269
  %5330 = fsub fast float -0.000000e+00, %5270
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = fsub fast float -0.000000e+00, %5331
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = fadd fast float %5333, %5227
  %5335 = fadd fast float %5226, %5333
  %5336 = fsub fast float -0.000000e+00, %5335
  %5337 = fcmp ogt float %5331, -0.000000e+00
  %5338 = select i1 %5337, float %5336, float %5334
  %5339 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5340 = fdiv fast float 1.000000e+00, %5339
  %5341 = fmul fast float %5338, %5340
  %5342 = call float @dx.op.binary.f32(i32 35, float %5341, float 0.000000e+00)  ; FMax(a,b)
  %5343 = call float @dx.op.binary.f32(i32 36, float %5327, float %5342)  ; FMin(a,b)
  %5344 = call float @dx.op.binary.f32(i32 36, float %5312, float %5343)  ; FMin(a,b)
  %5345 = fmul fast float %5344, %5136
  %5346 = fmul fast float %5344, %5137
  %5347 = fmul fast float %5344, %5138
  %5348 = fadd fast float %5345, %167
  %5349 = fadd fast float %5346, %168
  %5350 = fadd fast float %5347, %169
  %5351 = fsub fast float %5348, %5196
  %5352 = fsub fast float %5349, %5197
  %5353 = fsub fast float %5350, %5198
  br label %5361

; <label>:5354                                    ; preds = %5296
  %5355 = fmul fast float %5136, 8.096000e+03
  %5356 = fmul fast float %5137, 8.096000e+03
  %5357 = fmul fast float %5138, 8.096000e+03
  %5358 = fadd fast float %5355, %167
  %5359 = fadd fast float %5356, %168
  %5360 = fadd fast float %5357, %169
  br label %5361

; <label>:5361                                    ; preds = %5354, %5297
  %5362 = phi float [ %5136, %5354 ], [ %5351, %5297 ]
  %5363 = phi float [ %5137, %5354 ], [ %5352, %5297 ]
  %5364 = phi float [ %5138, %5354 ], [ %5353, %5297 ]
  %5365 = phi float [ %5358, %5354 ], [ %5348, %5297 ]
  %5366 = phi float [ %5359, %5354 ], [ %5349, %5297 ]
  %5367 = phi float [ %5360, %5354 ], [ %5350, %5297 ]
  %5368 = fcmp fast olt float %5215, 1.000000e+00
  br i1 %5368, label %5369, label %5400, !dx.controlflow.hints !99

; <label>:5369                                    ; preds = %5361
  %5370 = fmul fast float %5364, %5213
  %5371 = fmul fast float %5363, %5214
  %5372 = fsub fast float %5370, %5371
  %5373 = fmul fast float %5362, %5214
  %5374 = fmul fast float %5364, %5212
  %5375 = fsub fast float %5373, %5374
  %5376 = fmul fast float %5363, %5212
  %5377 = fmul fast float %5362, %5213
  %5378 = fsub fast float %5376, %5377
  %5379 = fmul fast float %5372, 2.000000e+00
  %5380 = fmul fast float %5375, 2.000000e+00
  %5381 = fmul fast float %5378, 2.000000e+00
  %5382 = fmul fast float %5379, %5215
  %5383 = fmul fast float %5380, %5215
  %5384 = fmul fast float %5381, %5215
  %5385 = fmul fast float %5381, %5213
  %5386 = fmul fast float %5380, %5214
  %5387 = fmul fast float %5379, %5214
  %5388 = fmul fast float %5381, %5212
  %5389 = fmul fast float %5380, %5212
  %5390 = fmul fast float %5379, %5213
  %5391 = fadd fast float %5385, %5362
  %5392 = fadd fast float %5391, %5382
  %5393 = fsub fast float %5392, %5386
  %5394 = fsub fast float %5363, %5388
  %5395 = fadd fast float %5394, %5383
  %5396 = fadd fast float %5395, %5387
  %5397 = fadd fast float %5384, %5364
  %5398 = fsub fast float %5397, %5390
  %5399 = fadd fast float %5398, %5389
  br label %5400

; <label>:5400                                    ; preds = %5369, %5361
  %5401 = phi float [ %5393, %5369 ], [ %5362, %5361 ]
  %5402 = phi float [ %5396, %5369 ], [ %5363, %5361 ]
  %5403 = phi float [ %5399, %5369 ], [ %5364, %5361 ]
  br i1 %5241, label %5435, label %5404

; <label>:5404                                    ; preds = %5400
  %5405 = fmul fast float %4875, 0x400187C840000000
  %5406 = fadd fast float %5405, 0xC00EFC2120000000
  %5407 = fmul fast float %5406, %4875
  %5408 = fadd fast float %5407, 0x3FE5D16340000000
  %5409 = fmul fast float %5408, %4875
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = fsub fast float %5365, %167
  %5413 = fsub fast float %5366, %168
  %5414 = fsub fast float %5367, %169
  %5415 = fsub fast float %5365, %5196
  %5416 = fsub fast float %5366, %5197
  %5417 = fsub fast float %5367, %5198
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float %5412, float %5413, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5415, float %5416, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = fadd fast float %5419, 0x3EE4F8B580000000
  %5421 = fdiv fast float %5418, %5420
  %5422 = bitcast float %5421 to i32
  %5423 = ashr i32 %5422, 1
  %5424 = add nsw i32 %5423, 532487669
  %5425 = bitcast i32 %5424 to float
  %5426 = fmul fast float %5425, %5411
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = fmul fast float %5427, 0x4009981AE0000000
  %5429 = fsub fast float 0x40111BBD80000000, %5428
  %5430 = fmul fast float %5429, %5427
  %5431 = fadd fast float %5430, 0xC0009F6020000000
  %5432 = fmul fast float %5431, %5427
  %5433 = fadd fast float %5432, 1.000000e+00
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  br label %5438

; <label>:5435                                    ; preds = %5400
  %5436 = icmp ne i32 %5242, -1
  %5437 = zext i1 %5436 to i32
  br label %5438

; <label>:5438                                    ; preds = %5435, %5404
  %5439 = phi float [ %4875, %5435 ], [ %5434, %5404 ]
  %5440 = phi i32 [ %5437, %5435 ], [ 0, %5404 ]
  %5441 = fmul float %5439, 5.000000e+00
  %5442 = fsub float 5.000000e+00, %5441
  %5443 = icmp ne i32 %5440, 0
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5446 = fadd fast float %5445, %5442
  %5447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5446)  ; FMax(a,b)
  %5448 = call float @dx.op.unary.f32(i32 6, float %5401)  ; FAbs(value)
  %5449 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5450 = fadd fast float %5449, %5448
  %5451 = call float @dx.op.unary.f32(i32 6, float %5403)  ; FAbs(value)
  %5452 = fadd fast float %5450, %5451
  %5453 = fcmp fast oeq float %5452, 0.000000e+00
  %5454 = fdiv fast float 1.000000e+00, %5452
  %5455 = select i1 %5453, float 1.000000e+00, float %5454
  %5456 = fmul fast float %5455, %5401
  %5457 = fmul fast float %5455, %5402
  %5458 = call float @dx.op.unary.f32(i32 6, float %5457)  ; FAbs(value)
  %5459 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5460 = fsub fast float 1.000000e+00, %5458
  %5461 = fsub fast float 1.000000e+00, %5459
  %5462 = fcmp fast oge float %5456, 0.000000e+00
  %5463 = fcmp fast oge float %5457, 0.000000e+00
  %5464 = select i1 %5462, float 1.000000e+00, float -1.000000e+00
  %5465 = select i1 %5463, float 1.000000e+00, float -1.000000e+00
  %5466 = fcmp fast ole float %5403, 0.000000e+00
  %5467 = fmul fast float %5464, %5460
  %5468 = fmul fast float %5465, %5461
  %5469 = select i1 %5466, float %5467, float %5456
  %5470 = select i1 %5466, float %5468, float %5457
  %5471 = fmul fast float %5469, 5.000000e-01
  %5472 = fmul fast float %5470, 5.000000e-01
  %5473 = fadd fast float %5471, 5.000000e-01
  %5474 = fadd fast float %5472, 5.000000e-01
  %5475 = uitofp i32 %5239 to float
  %5476 = call float @dx.op.binary.f32(i32 36, float %5447, float 3.000000e+00)  ; FMin(a,b)
  %5477 = fadd fast float %5476, 2.000000e+00
  %5478 = call float @dx.op.unary.f32(i32 21, float %5477)  ; Exp(value)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5480 = fmul fast float %5479, %5478
  %5481 = fmul fast float %5480, 2.000000e+00
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %5473, %5482
  %5484 = fmul fast float %5474, %5482
  %5485 = fadd fast float %5483, %5480
  %5486 = fadd fast float %5484, %5480
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5485, float %5486, float %5475, float undef, i32 0, i32 0, i32 undef, float %5447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5493 = fmul fast float %5492, %5209
  %5494 = call float @dx.op.binary.f32(i32 36, float %4942, float %5493)  ; FMin(a,b)
  %5495 = select i1 %5443, float %5494, float %5493
  %5496 = fmul fast float %5488, %5288
  %5497 = fmul fast float %5496, %5495
  %5498 = fmul fast float %5489, %5288
  %5499 = fmul fast float %5498, %5495
  %5500 = fmul fast float %5490, %5288
  %5501 = fmul fast float %5500, %5495
  %5502 = fadd fast float %5497, %5184
  %5503 = fadd fast float %5499, %5185
  %5504 = fadd fast float %5501, %5186
  %5505 = fsub fast float %5187, %5288
  br label %5290

; <label>:5506                                    ; preds = %5290
  br label %5507

; <label>:5507                                    ; preds = %5506, %5153
  %5508 = phi float [ %5154, %5153 ], [ %5291, %5506 ]
  %5509 = phi float [ %5155, %5153 ], [ %5292, %5506 ]
  %5510 = phi float [ %5156, %5153 ], [ %5293, %5506 ]
  %5511 = phi float [ %5157, %5153 ], [ %5294, %5506 ]
  %5512 = add i32 %5158, 1
  %5513 = icmp ugt i32 %5512, %5150
  br i1 %5513, label %5514, label %5153, !llvm.loop !100

; <label>:5514                                    ; preds = %5507
  br label %5515

; <label>:5515                                    ; preds = %5514, %5135
  %5516 = phi float [ 0.000000e+00, %5135 ], [ %5508, %5514 ]
  %5517 = phi float [ 0.000000e+00, %5135 ], [ %5509, %5514 ]
  %5518 = phi float [ 0.000000e+00, %5135 ], [ %5510, %5514 ]
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = select i1 %229, float 0.000000e+00, float %5516
  %5521 = select i1 %229, float %5519, float %5517
  %5522 = select i1 %229, float 0.000000e+00, float %5518
  %5523 = fcmp fast olt float %5061, 0.000000e+00
  %5524 = call float @dx.op.unary.f32(i32 6, float %5061)  ; FAbs(value)
  %5525 = fmul fast float %5524, %5001
  %5526 = fmul fast float %5524, %5002
  %5527 = fmul fast float %5524, %5003
  %5528 = select i1 %5523, float %5001, float %5525
  %5529 = select i1 %5523, float %5002, float %5526
  %5530 = select i1 %5523, float %5003, float %5527
  %5531 = fsub fast float 1.000000e+00, %5524
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5532, %5520
  %5534 = fmul fast float %5532, %5521
  %5535 = fmul fast float %5532, %5522
  %5536 = fadd fast float %5528, %5533
  %5537 = fadd fast float %5529, %5534
  %5538 = fadd fast float %5530, %5535
  br label %5539

; <label>:5539                                    ; preds = %5515, %5044
  %5540 = phi float [ %5001, %5044 ], [ %5536, %5515 ]
  %5541 = phi float [ %5002, %5044 ], [ %5537, %5515 ]
  %5542 = phi float [ %5003, %5044 ], [ %5538, %5515 ]
  %5543 = fmul fast float %5050, %4997
  %5544 = fmul fast float %5050, %4998
  %5545 = fmul fast float %5050, %4999
  %5546 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = fcmp fast ogt float %5546, 0x3E7FF19E20000000
  %5548 = fdiv fast float 1.000000e+00, %5546
  %5549 = select i1 %5547, float %5548, float 0.000000e+00
  %5550 = fmul fast float %5549, %4869
  %5551 = fmul fast float %5549, %4870
  %5552 = fmul fast float %5549, %4871
  %5553 = fadd fast float %5550, -1.000000e+00
  %5554 = fadd fast float %5551, -1.000000e+00
  %5555 = fadd fast float %5552, -1.000000e+00
  %5556 = fmul fast float %5553, 5.000000e-01
  %5557 = fmul fast float %5554, 5.000000e-01
  %5558 = fmul fast float %5555, 5.000000e-01
  %5559 = fadd fast float %5556, 1.000000e+00
  %5560 = fadd fast float %5557, 1.000000e+00
  %5561 = fadd fast float %5558, 1.000000e+00
  %5562 = fmul fast float %5540, %5045
  %5563 = fmul fast float %5541, %5046
  %5564 = fmul fast float %5542, %5047
  %5565 = fsub fast float 1.000000e+00, %4880
  %5566 = bitcast float %5565 to i32
  %5567 = sitofp i32 %5566 to float
  %5568 = fmul fast float %5567, 5.000000e+00
  %5569 = fadd fast float %5568, 0xC1EFBF8940000000
  %5570 = fptosi float %5569 to i32
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5571, %4264
  %5573 = fmul fast float %4997, %5572
  %5574 = fmul fast float %5573, %5050
  %5575 = fmul fast float %5574, %5559
  %5576 = fmul fast float %4998, %5572
  %5577 = fmul fast float %5576, %5050
  %5578 = fmul fast float %5577, %5560
  %5579 = fmul fast float %4999, %5572
  %5580 = fmul fast float %5579, %5050
  %5581 = fmul fast float %5580, %5561
  %5582 = fmul fast float %5543, %4260
  %5583 = fmul fast float %5544, %4260
  %5584 = fmul fast float %5545, %4260
  %5585 = fadd fast float %5562, %4256
  %5586 = fadd fast float %5585, %5575
  %5587 = fmul fast float %5586, %4260
  %5588 = fadd fast float %5563, %4257
  %5589 = fadd fast float %5588, %5578
  %5590 = fmul fast float %5589, %4260
  %5591 = fadd fast float %5564, %4258
  %5592 = fadd fast float %5591, %5581
  %5593 = fmul fast float %5592, %4260
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5596 = fcmp fast oeq float %5595, 0.000000e+00
  br i1 %5596, label %7138, label %5597

; <label>:5597                                    ; preds = %5539
  %5598 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5599 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5600 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 1
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = select i1 %229, float %5606, float %5602
  %5610 = select i1 %229, float %5608, float %5603
  %5611 = select i1 %229, float %5607, float %5604
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5614 = fmul fast float %5613, %111
  %5615 = fmul fast float %5613, %112
  %5616 = fmul fast float %5613, %113
  %5617 = fadd fast float %5614, %167
  %5618 = fadd fast float %5615, %168
  %5619 = fadd fast float %5616, %169
  %5620 = fcmp fast olt float %5595, 0.000000e+00
  br i1 %5620, label %6716, label %5621

; <label>:5621                                    ; preds = %5597
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5632, 3
  %5637 = fmul fast float %5623, %5617
  %5638 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5624, float %5637)  ; FMad(a,b,c)
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5625, float %5638)  ; FMad(a,b,c)
  %5640 = fadd fast float %5639, %5626
  %5641 = fmul fast float %5628, %5617
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5629, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5630, float %5642)  ; FMad(a,b,c)
  %5644 = fadd fast float %5643, %5631
  %5645 = fmul fast float %5633, %5617
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5634, float %5645)  ; FMad(a,b,c)
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5635, float %5646)  ; FMad(a,b,c)
  %5648 = fadd fast float %5647, %5636
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5653 = fmul fast float %5652, %5640
  %5654 = fmul fast float %5652, %5644
  %5655 = fadd fast float %5653, %5650
  %5656 = fadd fast float %5654, %5651
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.CBufRet.f32 %5657, 3
  %5661 = fmul fast float %5660, %5640
  %5662 = fmul fast float %5660, %5644
  %5663 = fadd fast float %5661, %5658
  %5664 = fadd fast float %5662, %5659
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 1
  %5667 = fsub fast float %5666, %5648
  %5668 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5669 = fmul fast float %5667, %5668
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5675 = fadd fast float %5674, %5672
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  br i1 %5676, label %5677, label %5701

; <label>:5677                                    ; preds = %5621
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = fsub fast float %5663, %5679
  %5682 = fsub fast float %5664, %5680
  %5683 = fcmp fast olt float %5681, 0.000000e+00
  %5684 = fcmp fast olt float %5682, 0.000000e+00
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5690 = select i1 %5683, float %5686, float %5688
  %5691 = select i1 %5684, float %5687, float %5689
  %5692 = fmul fast float %5690, %5681
  %5693 = fmul fast float %5691, %5682
  %5694 = call float @dx.op.unary.f32(i32 6, float %5692)  ; FAbs(value)
  %5695 = call float @dx.op.unary.f32(i32 6, float %5693)  ; FAbs(value)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5697 = call float @dx.op.binary.f32(i32 35, float %5694, float %5695)  ; FMax(a,b)
  %5698 = fsub fast float %5696, %5697
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = fmul fast float %5699, %5671
  br label %5701

; <label>:5701                                    ; preds = %5677, %5621
  %5702 = phi float [ %5700, %5677 ], [ 0.000000e+00, %5621 ]
  %5703 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5704 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5705 = fadd fast float %5704, %5703
  %5706 = fcmp fast ogt float %5705, 0.000000e+00
  %5707 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  br i1 %5706, label %5708, label %5731

; <label>:5708                                    ; preds = %5701
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5712 = fsub fast float %5655, %5710
  %5713 = fsub fast float %5656, %5711
  %5714 = fcmp fast olt float %5712, 0.000000e+00
  %5715 = fcmp fast olt float %5713, 0.000000e+00
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5716, 2
  %5720 = extractvalue %dx.types.CBufRet.f32 %5716, 3
  %5721 = select i1 %5714, float %5717, float %5719
  %5722 = select i1 %5715, float %5718, float %5720
  %5723 = fmul fast float %5721, %5712
  %5724 = fmul fast float %5722, %5713
  %5725 = call float @dx.op.unary.f32(i32 6, float %5723)  ; FAbs(value)
  %5726 = call float @dx.op.unary.f32(i32 6, float %5724)  ; FAbs(value)
  %5727 = call float @dx.op.binary.f32(i32 35, float %5725, float %5726)  ; FMax(a,b)
  %5728 = fsub fast float %5707, %5727
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5730 = fmul fast float %5729, %5671
  br label %5731

; <label>:5731                                    ; preds = %5708, %5701
  %5732 = phi float [ %5730, %5708 ], [ 0.000000e+00, %5701 ]
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5739 = fsub fast float %5640, %5737
  %5740 = fsub fast float %5644, %5738
  %5741 = fcmp fast olt float %5739, 0.000000e+00
  %5742 = fcmp fast olt float %5740, 0.000000e+00
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = select i1 %5741, float %5744, float %5746
  %5749 = select i1 %5742, float %5745, float %5747
  %5750 = fmul fast float %5748, %5739
  %5751 = fmul fast float %5749, %5740
  %5752 = call float @dx.op.unary.f32(i32 6, float %5750)  ; FAbs(value)
  %5753 = call float @dx.op.unary.f32(i32 6, float %5751)  ; FAbs(value)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5752, float %5753)  ; FMax(a,b)
  %5755 = fsub fast float %5707, %5754
  %5756 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5757 = call float @dx.op.binary.f32(i32 36, float %5756, float %5735)  ; FMin(a,b)
  %5758 = fmul fast float %5757, %5671
  %5759 = fsub fast float %5732, %5758
  %5760 = fsub fast float %5702, %5732
  %5761 = fsub fast float %5760, %5758
  %5762 = call float @dx.op.binary.f32(i32 35, float %5732, float %5702)  ; FMax(a,b)
  %5763 = call float @dx.op.binary.f32(i32 35, float %5758, float %5762)  ; FMax(a,b)
  %5764 = fcmp fast olt float %5763, 1.000000e+00
  br i1 %5764, label %5765, label %6163, !dx.controlflow.hints !102

; <label>:5765                                    ; preds = %5731
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = fcmp fast une float %5767, 0.000000e+00
  br i1 %5768, label %5769, label %6163, !dx.controlflow.hints !103

; <label>:5769                                    ; preds = %5765
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = extractvalue %dx.types.CBufRet.f32 %5780, 1
  %5783 = extractvalue %dx.types.CBufRet.f32 %5780, 2
  %5784 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5785 = fmul fast float %5771, %5617
  %5786 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5772, float %5785)  ; FMad(a,b,c)
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5773, float %5786)  ; FMad(a,b,c)
  %5788 = fadd fast float %5787, %5774
  %5789 = fmul fast float %5776, %5617
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5777, float %5789)  ; FMad(a,b,c)
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5778, float %5790)  ; FMad(a,b,c)
  %5792 = fadd fast float %5791, %5779
  %5793 = fmul fast float %5781, %5617
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5782, float %5793)  ; FMad(a,b,c)
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %5783, float %5794)  ; FMad(a,b,c)
  %5796 = fadd fast float %5795, %5784
  %5797 = fcmp fast oge float %5788, 1.000000e+00
  %5798 = fcmp fast oge float %5792, 1.000000e+00
  %5799 = or i1 %5797, %5798
  %5800 = fcmp fast olt float %5788, 0.000000e+00
  %5801 = fcmp fast olt float %5792, 0.000000e+00
  %5802 = or i1 %5800, %5801
  %5803 = or i1 %5799, %5802
  br i1 %5803, label %6163, label %5804, !dx.controlflow.hints !104

; <label>:5804                                    ; preds = %5769
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 1
  %5808 = extractvalue %dx.types.CBufRet.f32 %5805, 2
  %5809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.i32 %5809, 2
  %5811 = uitofp i32 %5810 to float
  %5812 = extractvalue %dx.types.CBufRet.i32 %5809, 3
  %5813 = uitofp i32 %5812 to float
  %5814 = extractvalue %dx.types.CBufRet.f32 %5805, 3
  %5815 = fmul fast float %5814, 2.000000e+00
  %5816 = fsub fast float %5788, %5806
  %5817 = fsub fast float %5792, %5807
  %5818 = fmul fast float %5815, %5816
  %5819 = fmul fast float %5815, %5817
  %5820 = fdiv fast float 1.000000e+00, %5600
  %5821 = fmul fast float %5819, %5820
  %5822 = call float @dx.op.unary.f32(i32 6, float %5821)  ; FAbs(value)
  %5823 = fmul fast float %5808, %5619
  %5824 = fmul fast float %5823, %5815
  %5825 = call float @dx.op.unary.f32(i32 6, float %5824)  ; FAbs(value)
  %5826 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5827 = call float @dx.op.binary.f32(i32 35, float %5825, float %5822)  ; FMax(a,b)
  %5828 = call float @dx.op.binary.f32(i32 35, float %5826, float %5827)  ; FMax(a,b)
  %5829 = fmul fast float %5828, 2.000000e+00
  %5830 = call float @dx.op.unary.f32(i32 23, float %5829)  ; Log(value)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5830, float %5811)  ; FMax(a,b)
  %5832 = call float @dx.op.unary.f32(i32 22, float %5831)  ; Frc(value)
  %5833 = fadd fast float %5832, 0xBFEA666660000000
  %5834 = fmul fast float %5833, 8.000000e+00
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = call float @dx.op.unary.f32(i32 27, float %5831)  ; Round_ni(value)
  %5837 = fadd fast float %5836, %5835
  %5838 = call float @dx.op.binary.f32(i32 36, float %5837, float %5813)  ; FMin(a,b)
  %5839 = call float @dx.op.unary.f32(i32 27, float %5838)  ; Round_ni(value)
  %5840 = fsub fast float -0.000000e+00, %5839
  %5841 = call float @dx.op.unary.f32(i32 21, float %5840)  ; Exp(value)
  %5842 = fmul fast float %5841, %5815
  %5843 = fmul fast float %5842, %5788
  %5844 = fmul fast float %5842, %5792
  %5845 = fmul fast float %5843, 2.500000e-01
  %5846 = fmul fast float %5844, 2.500000e-01
  %5847 = fadd fast float %5845, 5.000000e-01
  %5848 = fadd fast float %5846, 5.000000e-01
  %5849 = fsub fast float %5813, %5811
  %5850 = fptoui float %5849 to i32
  %5851 = add i32 %5850, 320
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5851)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = fcmp fast une float %5838, %5813
  %5856 = fsub fast float %5788, %5853
  %5857 = fsub fast float %5792, %5854
  %5858 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5859 = call float @dx.op.unary.f32(i32 6, float %5857)  ; FAbs(value)
  %5860 = fmul fast float %5858, %5842
  %5861 = fmul fast float %5859, %5842
  %5862 = fcmp fast olt float %5860, 1.000000e+00
  %5863 = fcmp fast olt float %5861, 1.000000e+00
  %5864 = and i1 %5862, %5863
  %5865 = or i1 %5855, %5864
  br i1 %5865, label %5866, label %6163, !dx.controlflow.hints !105

; <label>:5866                                    ; preds = %5804
  %5867 = fmul fast float %5844, 5.000000e-01
  %5868 = fmul fast float %5843, 5.000000e-01
  %5869 = fadd fast float %5867, 5.000000e-01
  %5870 = fadd fast float %5868, 5.000000e-01
  %5871 = sitofp i32 %5810 to float
  %5872 = fsub fast float %5838, %5871
  %5873 = call float @dx.op.unary.f32(i32 27, float %5872)  ; Round_ni(value)
  %5874 = call float @dx.op.unary.f32(i32 22, float %5838)  ; Frc(value)
  %5875 = call float @dx.op.unary.f32(i32 22, float %5870)  ; Frc(value)
  %5876 = call float @dx.op.unary.f32(i32 22, float %5869)  ; Frc(value)
  %5877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5875, float %5876, float %5873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.ResRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.ResRet.f32 %5877, 2
  %5881 = extractvalue %dx.types.ResRet.f32 %5877, 3
  %5882 = fcmp fast ogt float %5874, 0.000000e+00
  br i1 %5882, label %5883, label %5904, !dx.controlflow.hints !106

; <label>:5883                                    ; preds = %5866
  %5884 = fadd fast float %5873, 1.000000e+00
  %5885 = call float @dx.op.unary.f32(i32 22, float %5847)  ; Frc(value)
  %5886 = call float @dx.op.unary.f32(i32 22, float %5848)  ; Frc(value)
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5885, float %5886, float %5884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = extractvalue %dx.types.ResRet.f32 %5887, 3
  %5892 = fsub fast float %5888, %5878
  %5893 = fsub fast float %5889, %5879
  %5894 = fsub fast float %5890, %5880
  %5895 = fsub fast float %5891, %5881
  %5896 = fmul fast float %5892, %5874
  %5897 = fmul fast float %5893, %5874
  %5898 = fmul fast float %5894, %5874
  %5899 = fmul fast float %5895, %5874
  %5900 = fadd fast float %5896, %5878
  %5901 = fadd fast float %5897, %5879
  %5902 = fadd fast float %5898, %5880
  %5903 = fadd fast float %5899, %5881
  br label %5904

; <label>:5904                                    ; preds = %5883, %5866
  %5905 = phi float [ %5900, %5883 ], [ %5878, %5866 ]
  %5906 = phi float [ %5901, %5883 ], [ %5879, %5866 ]
  %5907 = phi float [ %5902, %5883 ], [ %5880, %5866 ]
  %5908 = phi float [ %5903, %5883 ], [ %5881, %5866 ]
  %5909 = fadd fast float %5905, -5.000000e-01
  %5910 = fadd fast float %5907, -5.000000e-01
  %5911 = fmul fast float %5909, 0xBFD5555560000000
  %5912 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5910, float %5911)  ; FMad(a,b,c)
  %5913 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5906, float 0.000000e+00)  ; FMad(a,b,c)
  %5914 = fadd fast float %5913, %5908
  %5915 = fmul fast float %5909, -7.500000e-01
  %5916 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5910, float %5915)  ; FMad(a,b,c)
  %5917 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5906, float 0.000000e+00)  ; FMad(a,b,c)
  %5918 = fadd fast float %5917, %5908
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5926 = fsub fast float %5922, %5912
  %5927 = fsub fast float %5923, %5914
  %5928 = fsub fast float %5924, %5916
  %5929 = fsub fast float %5925, %5918
  %5930 = fmul fast float %5926, %5920
  %5931 = fmul fast float %5927, %5920
  %5932 = fmul fast float %5928, %5920
  %5933 = fmul fast float %5929, %5920
  %5934 = fadd fast float %5930, %5912
  %5935 = fadd fast float %5931, %5914
  %5936 = fadd fast float %5932, %5916
  %5937 = fadd fast float %5933, %5918
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = and i32 %5939, 536870911
  %5941 = uitofp i32 %5940 to float
  %5942 = fmul fast float %5941, %5788
  %5943 = fmul fast float %5941, %5792
  %5944 = fptoui float %5942 to i32
  %5945 = fptoui float %5943 to i32
  %5946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.i32 %5946, 0
  %5948 = and i32 %5947, 31
  %5949 = lshr i32 %5944, %5948
  %5950 = lshr i32 %5945, %5948
  %5951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5952 = extractvalue %dx.types.ResRet.i32 %5951, 0
  %5953 = and i32 %5952, 31
  %5954 = shl i32 1, %5953
  %5955 = call i32 @dx.op.binary.i32(i32 40, i32 %5954, i32 4)  ; UMin(a,b)
  %5956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.i32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.i32 %5956, 1
  %5959 = icmp eq i32 %5955, 0
  br i1 %5959, label %6001, label %5960

; <label>:5960                                    ; preds = %5904
  br label %5961

; <label>:5961                                    ; preds = %5989, %5960
  %5962 = phi i32 [ %5992, %5989 ], [ 0, %5960 ]
  %5963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.i32 %5963, 0
  %5965 = lshr i32 %5964, 16
  %5966 = and i32 %5965, 31
  %5967 = shl i32 %5950, %5966
  %5968 = add i32 %5967, %5949
  %5969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.i32 %5969, 0
  %5971 = and i32 %5970, 31
  %5972 = shl i32 %5968, %5971
  %5973 = add i32 %5972, %5962
  %5974 = shl i32 %5973, 2
  %5975 = add i32 %5974, 32
  %5976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.i32 %5976, 0
  %5978 = icmp slt i32 %5977, 0
  %5979 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5962
  %5980 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5962
  %5981 = bitcast float* %5979 to i32*
  %5982 = bitcast float* %5980 to i32*
  br i1 %5978, label %5983, label %5989

; <label>:5983                                    ; preds = %5961
  %5984 = and i32 %5977, 1073741823
  %5985 = add nuw nsw i32 %5984, 20
  %5986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5985, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.i32 %5986, 0
  %5988 = extractvalue %dx.types.ResRet.i32 %5986, 1
  br label %5989

; <label>:5989                                    ; preds = %5983, %5961
  %5990 = phi i32 [ %5987, %5983 ], [ %5957, %5961 ]
  %5991 = phi i32 [ %5988, %5983 ], [ %5958, %5961 ]
  store i32 %5990, i32* %5981, align 4
  store i32 %5991, i32* %5982, align 4
  %5992 = add nuw i32 %5962, 1
  %5993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.i32 %5993, 2
  %5995 = icmp eq i32 %5994, 0
  %5996 = icmp ugt i32 %5977, -1073741825
  %5997 = and i1 %5996, %5995
  %5998 = icmp ult i32 %5992, %5955
  %5999 = and i1 %5997, %5998
  br i1 %5999, label %5961, label %6000

; <label>:6000                                    ; preds = %5989
  br label %6001

; <label>:6001                                    ; preds = %6000, %5904
  %6002 = phi i32 [ 0, %5904 ], [ %5992, %6000 ]
  %6003 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %6004 = fptoui float %6003 to i32
  %6005 = icmp eq i32 %6004, 0
  br i1 %6005, label %6057, label %6006

; <label>:6006                                    ; preds = %6001
  br label %6007

; <label>:6007                                    ; preds = %6052, %6006
  %6008 = phi i32 [ %6053, %6052 ], [ %6002, %6006 ]
  %6009 = phi i32 [ %6054, %6052 ], [ 0, %6006 ]
  %6010 = lshr i32 %6009, 2
  %6011 = and i32 %6009, 3
  %6012 = add nuw nsw i32 %6010, 83
  %6013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6012)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.i32 %6013, 0
  %6015 = extractvalue %dx.types.CBufRet.i32 %6013, 1
  %6016 = extractvalue %dx.types.CBufRet.i32 %6013, 2
  %6017 = extractvalue %dx.types.CBufRet.i32 %6013, 3
  %6018 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6014, i32* %6018, align 4
  %6019 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6015, i32* %6019, align 4
  %6020 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6016, i32* %6020, align 4
  %6021 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6017, i32* %6021, align 4
  %6022 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6011
  %6023 = load i32, i32* %6022, align 4, !tbaa !107, !noalias !111
  %6024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.i32 %6024, 0
  %6026 = lshr i32 %6025, 16
  %6027 = and i32 %6026, 31
  %6028 = shl i32 %5950, %6027
  %6029 = add i32 %6028, %5949
  %6030 = shl i32 %6029, 2
  %6031 = add i32 %6030, %6023
  %6032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6031, i32 undef)  ; BufferLoad(srv,index,wot)
  %6033 = extractvalue %dx.types.ResRet.i32 %6032, 0
  %6034 = icmp eq i32 %6033, 0
  br i1 %6034, label %6052, label %6035

; <label>:6035                                    ; preds = %6007
  %6036 = icmp slt i32 %6033, 0
  %6037 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6008
  %6038 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6008
  %6039 = bitcast float* %6037 to i32*
  %6040 = bitcast float* %6038 to i32*
  br i1 %6036, label %6041, label %6048

; <label>:6041                                    ; preds = %6035
  %6042 = and i32 %6033, 1073741823
  %6043 = add i32 %6023, 20
  %6044 = add i32 %6043, %6042
  %6045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6044, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.i32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.i32 %6045, 1
  br label %6048

; <label>:6048                                    ; preds = %6041, %6035
  %6049 = phi i32 [ %6046, %6041 ], [ %5957, %6035 ]
  %6050 = phi i32 [ %6047, %6041 ], [ %5958, %6035 ]
  store i32 %6049, i32* %6039, align 4
  store i32 %6050, i32* %6040, align 4
  %6051 = add i32 %6008, 1
  br label %6052

; <label>:6052                                    ; preds = %6048, %6007
  %6053 = phi i32 [ %6008, %6007 ], [ %6051, %6048 ]
  %6054 = add nuw i32 %6009, 1
  %6055 = icmp eq i32 %6054, %6004
  br i1 %6055, label %6056, label %6007

; <label>:6056                                    ; preds = %6052
  br label %6057

; <label>:6057                                    ; preds = %6056, %6001
  %6058 = phi i32 [ %6002, %6001 ], [ %6053, %6056 ]
  %6059 = icmp eq i32 %6058, 1
  %6060 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6061 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6059, label %6062, label %6065

; <label>:6062                                    ; preds = %6057
  %6063 = load float, float* %6060, align 4
  %6064 = load float, float* %6061, align 4
  br label %6092

; <label>:6065                                    ; preds = %6057
  %6066 = load float, float* %6060, align 4
  %6067 = load float, float* %6061, align 4
  %6068 = fdiv fast float 1.000000e+00, %6067
  %6069 = fsub fast float %6066, %6068
  %6070 = icmp ugt i32 %6058, 1
  br i1 %6070, label %6071, label %6087

; <label>:6071                                    ; preds = %6065
  br label %6072

; <label>:6072                                    ; preds = %6072, %6071
  %6073 = phi float [ %6082, %6072 ], [ %6069, %6071 ]
  %6074 = phi float [ %6083, %6072 ], [ %6066, %6071 ]
  %6075 = phi i32 [ %6084, %6072 ], [ 1, %6071 ]
  %6076 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6075
  %6077 = load float, float* %6076, align 4
  %6078 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6075
  %6079 = load float, float* %6078, align 4
  %6080 = fdiv fast float 1.000000e+00, %6079
  %6081 = fsub fast float %6077, %6080
  %6082 = call float @dx.op.binary.f32(i32 36, float %6073, float %6081)  ; FMin(a,b)
  %6083 = call float @dx.op.binary.f32(i32 35, float %6074, float %6077)  ; FMax(a,b)
  %6084 = add nuw i32 %6075, 1
  %6085 = icmp eq i32 %6084, %6058
  br i1 %6085, label %6086, label %6072

; <label>:6086                                    ; preds = %6072
  br label %6087

; <label>:6087                                    ; preds = %6086, %6065
  %6088 = phi float [ %6069, %6065 ], [ %6082, %6086 ]
  %6089 = phi float [ %6066, %6065 ], [ %6083, %6086 ]
  %6090 = fsub fast float %6089, %6088
  %6091 = fdiv fast float 1.000000e+00, %6090
  br label %6092

; <label>:6092                                    ; preds = %6087, %6062
  %6093 = phi float [ %6063, %6062 ], [ %6089, %6087 ]
  %6094 = phi float [ %6064, %6062 ], [ %6091, %6087 ]
  %6095 = fadd fast float %5796, %6093
  %6096 = fmul fast float %6095, %6094
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6098 = fmul fast float %6097, 2.000000e+00
  %6099 = fsub fast float 1.000000e+00, %6098
  %6100 = fmul fast float %5934, %5934
  %6101 = fsub fast float %5935, %6100
  %6102 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6101)  ; FMax(a,b)
  %6103 = fdiv fast float 1.000000e+00, %6102
  %6104 = fmul fast float %5935, %5934
  %6105 = fsub fast float %5936, %6104
  %6106 = fsub fast float %6099, %5934
  %6107 = fmul fast float %6099, %6099
  %6108 = fsub fast float %6107, %5935
  %6109 = fmul fast float %6103, %6105
  %6110 = fmul fast float %6109, %6106
  %6111 = fsub fast float %6108, %6110
  %6112 = fmul fast float %5935, %5935
  %6113 = fsub fast float %5937, %6112
  %6114 = fmul fast float %6105, %6105
  %6115 = fmul fast float %6114, %6103
  %6116 = fsub fast float %6113, %6115
  %6117 = fdiv fast float %6111, %6116
  %6118 = fmul fast float %6117, %6105
  %6119 = fsub fast float %6106, %6118
  %6120 = fmul fast float %6119, %6103
  %6121 = fmul fast float %6120, %5934
  %6122 = fsub fast float 1.000000e+00, %6121
  %6123 = fmul fast float %6117, %5935
  %6124 = fsub fast float %6122, %6123
  %6125 = fmul fast float %6120, %6120
  %6126 = fmul fast float %6117, 4.000000e+00
  %6127 = fmul fast float %6126, %6124
  %6128 = fsub fast float %6125, %6127
  %6129 = call float @dx.op.unary.f32(i32 24, float %6128)  ; Sqrt(value)
  %6130 = fcmp fast oge float %6120, 0.000000e+00
  %6131 = fsub fast float -0.000000e+00, %6129
  %6132 = select i1 %6130, float %6131, float %6129
  %6133 = fsub fast float %6132, %6120
  %6134 = fdiv fast float %6133, %6117
  %6135 = fdiv fast float %6124, %6133
  %6136 = fmul fast float %6134, 5.000000e-01
  %6137 = fmul fast float %6135, 2.000000e+00
  %6138 = select i1 %6130, float %6136, float %6137
  %6139 = select i1 %6130, float %6137, float %6136
  %6140 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 36, float %6138, float %6139)  ; FMin(a,b)
  %6142 = fcmp fast ogt float %6099, %6140
  %6143 = fsub fast float %6099, %6141
  %6144 = fsub fast float %6099, %6140
  %6145 = fsub fast float %6140, %6141
  %6146 = select i1 %6142, float %6144, float %6145
  %6147 = fmul float %6143, %6146
  %6148 = select i1 %6142, float %6141, float %6099
  %6149 = fcmp fast ogt float %6099, %6141
  %6150 = fmul fast float %6148, %6140
  %6151 = fadd fast float %6148, %6140
  %6152 = fmul fast float %6151, %5934
  %6153 = fadd fast float %6150, %5935
  %6154 = fsub fast float %6153, %6152
  %6155 = fdiv fast float %6154, %6147
  %6156 = select i1 %6149, float %6155, float 0.000000e+00
  %6157 = fsub fast float 1.000000e+00, %6156
  %6158 = select i1 %6142, float %6157, float %6156
  %6159 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6160 = extractvalue %dx.types.CBufRet.f32 %5919, 3
  %6161 = fmul fast float %6160, %6159
  %6162 = fsub fast float 1.000000e+00, %6161
  br label %6163

; <label>:6163                                    ; preds = %6092, %5804, %5769, %5765, %5731
  %6164 = phi float [ 1.000000e+00, %5731 ], [ %6162, %6092 ], [ 1.000000e+00, %5769 ], [ 1.000000e+00, %5804 ], [ 1.000000e+00, %5765 ]
  %6165 = fcmp fast ogt float %5761, 0.000000e+00
  br i1 %6165, label %6166, label %6328, !dx.controlflow.hints !120

; <label>:6166                                    ; preds = %6163
  %6167 = fadd fast float %5674, %5648
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6168, 3
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6173 = call float @dx.op.binary.f32(i32 35, float %6167, float 0.000000e+00)  ; FMax(a,b)
  %6174 = fadd fast float %6173, 0x3F10000000000000
  %6175 = fcmp fast oeq float %6172, 0.000000e+00
  br i1 %6175, label %6176, label %6243

; <label>:6176                                    ; preds = %6166
  %6177 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6179 = fmul fast float %6178, %5663
  %6180 = fmul fast float %6177, %5664
  %6181 = fadd fast float %6179, 5.000000e-01
  %6182 = call float @dx.op.unary.f32(i32 27, float %6181)  ; Round_ni(value)
  %6183 = fadd fast float %6180, 5.000000e-01
  %6184 = call float @dx.op.unary.f32(i32 27, float %6183)  ; Round_ni(value)
  %6185 = fsub fast float %6181, %6182
  %6186 = fsub fast float %6183, %6184
  %6187 = fadd fast float %6182, -5.000000e-01
  %6188 = fadd fast float %6184, -5.000000e-01
  %6189 = fmul fast float %6185, 2.000000e+00
  %6190 = fsub fast float 3.000000e+00, %6189
  %6191 = fadd fast float %6189, 1.000000e+00
  %6192 = fsub fast float 2.000000e+00, %6185
  %6193 = bitcast float %6190 to i32
  %6194 = sub nsw i32 2129859010, %6193
  %6195 = bitcast i32 %6194 to float
  %6196 = fmul fast float %6195, %6192
  %6197 = fadd fast float %6196, -1.000000e+00
  %6198 = bitcast float %6191 to i32
  %6199 = sub nsw i32 2129859010, %6198
  %6200 = bitcast i32 %6199 to float
  %6201 = fmul fast float %6200, %6185
  %6202 = fadd fast float %6201, 1.000000e+00
  %6203 = fmul fast float %6186, 2.000000e+00
  %6204 = fsub fast float 3.000000e+00, %6203
  %6205 = fadd fast float %6203, 1.000000e+00
  %6206 = fsub fast float 2.000000e+00, %6186
  %6207 = bitcast float %6204 to i32
  %6208 = sub nsw i32 2129859010, %6207
  %6209 = bitcast i32 %6208 to float
  %6210 = fmul fast float %6209, %6206
  %6211 = fadd fast float %6210, -1.000000e+00
  %6212 = bitcast float %6205 to i32
  %6213 = sub nsw i32 2129859010, %6212
  %6214 = bitcast i32 %6213 to float
  %6215 = fmul fast float %6214, %6186
  %6216 = fadd fast float %6215, 1.000000e+00
  %6217 = fadd fast float %6197, %6187
  %6218 = fmul fast float %6217, %6169
  %6219 = fadd fast float %6211, %6188
  %6220 = fmul fast float %6219, %6170
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6218, float %6220, float undef, float undef, i32 0, i32 0, i32 undef, float %6174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = fmul fast float %6222, %6190
  %6224 = fadd fast float %6202, %6187
  %6225 = fmul fast float %6224, %6169
  %6226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6225, float %6220, float undef, float undef, i32 0, i32 0, i32 undef, float %6174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = fmul fast float %6227, %6191
  %6229 = fadd fast float %6216, %6188
  %6230 = fmul fast float %6229, %6170
  %6231 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6218, float %6230, float undef, float undef, i32 0, i32 0, i32 undef, float %6174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = fmul fast float %6232, %6190
  %6234 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6225, float %6230, float undef, float undef, i32 0, i32 0, i32 undef, float %6174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6235 = extractvalue %dx.types.ResRet.f32 %6234, 0
  %6236 = fmul fast float %6235, %6191
  %6237 = fadd fast float %6236, %6233
  %6238 = fmul fast float %6237, %6205
  %6239 = fadd fast float %6228, %6223
  %6240 = fmul fast float %6239, %6204
  %6241 = fadd fast float %6240, %6238
  %6242 = fmul fast float %6241, 6.250000e-02
  br label %6328

; <label>:6243                                    ; preds = %6166
  %6244 = fmul fast float %240, 0x401921FB60000000
  %6245 = call float @dx.op.unary.f32(i32 13, float %6244)  ; Sin(value)
  %6246 = call float @dx.op.unary.f32(i32 12, float %6244)  ; Cos(value)
  %6247 = fsub fast float -0.000000e+00, %6245
  br label %6248

; <label>:6248                                    ; preds = %6297, %6243
  %6249 = phi float [ 0.000000e+00, %6243 ], [ %6292, %6297 ]
  %6250 = phi float [ 0.000000e+00, %6243 ], [ %6294, %6297 ]
  %6251 = phi i32 [ 0, %6243 ], [ %6298, %6297 ]
  %6252 = mul i32 %6251, 2
  %6253 = add i32 0, %6252
  %6254 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6253
  %6255 = load float, float* %6254, align 4
  %6256 = mul i32 %6251, 2
  %6257 = add i32 1, %6256
  %6258 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6257
  %6259 = load float, float* %6258, align 4
  %6260 = fmul fast float %6255, %6246
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6247, float %6260)  ; FMad(a,b,c)
  %6262 = fmul fast float %6255, %6245
  %6263 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6246, float %6262)  ; FMad(a,b,c)
  %6264 = fmul fast float %6261, %6172
  %6265 = fmul fast float %6263, %6172
  %6266 = fadd fast float %6264, %5663
  %6267 = fadd fast float %6265, %5664
  %6268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  %6272 = extractvalue %dx.types.ResRet.f32 %6268, 3
  %6273 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6269, float* %6273, align 4
  %6274 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6270, float* %6274, align 4
  %6275 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6271, float* %6275, align 4
  %6276 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6272, float* %6276, align 4
  %6277 = fsub fast float %6269, %6174
  %6278 = fcmp fast olt float %6277, 0.000000e+00
  %6279 = select i1 %6278, float 0.000000e+00, float 1.000000e+00
  %6280 = fadd fast float %6279, %6249
  %6281 = fmul fast float %6279, %6277
  %6282 = fadd fast float %6281, %6250
  br label %6283

; <label>:6283                                    ; preds = %6283, %6248
  %6284 = phi i32 [ 1, %6248 ], [ %6295, %6283 ]
  %6285 = phi float [ %6282, %6248 ], [ %6294, %6283 ]
  %6286 = phi float [ %6280, %6248 ], [ %6292, %6283 ]
  %6287 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6284
  %6288 = load float, float* %6287, align 4, !tbaa !121, !noalias !111
  %6289 = fsub fast float %6288, %6174
  %6290 = fcmp fast olt float %6289, 0.000000e+00
  %6291 = select i1 %6290, float 0.000000e+00, float 1.000000e+00
  %6292 = fadd fast float %6291, %6286
  %6293 = fmul fast float %6291, %6289
  %6294 = fadd fast float %6293, %6285
  %6295 = add nuw nsw i32 %6284, 1
  %6296 = icmp eq i32 %6295, 4
  br i1 %6296, label %6297, label %6283, !llvm.loop !123

; <label>:6297                                    ; preds = %6283
  %6298 = add nuw nsw i32 %6251, 1
  %6299 = icmp eq i32 %6298, 8
  br i1 %6299, label %6300, label %6248, !llvm.loop !124

; <label>:6300                                    ; preds = %6297
  %6301 = fdiv fast float 1.000000e+00, %6292
  %6302 = fmul fast float %6301, %6294
  %6303 = fdiv fast float 1.000000e+00, %6174
  %6304 = fmul fast float %6302, %6303
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = call float @dx.op.binary.f32(i32 35, float %6305, float 0.000000e+00)  ; FMax(a,b)
  %6307 = fmul fast float %6292, 3.125000e-02
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = fmul fast float %6308, 2.000000e+00
  %6310 = fadd fast float %6309, -1.000000e+00
  %6311 = fcmp fast ogt float %6310, 0.000000e+00
  %6312 = fcmp fast olt float %6310, 0.000000e+00
  %6313 = zext i1 %6311 to i32
  %6314 = zext i1 %6312 to i32
  %6315 = sub nsw i32 %6313, %6314
  %6316 = sitofp i32 %6315 to float
  %6317 = fmul fast float %6316, %6310
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = fmul fast float %6318, %6318
  %6320 = fmul fast float %6319, %6318
  %6321 = fsub fast float %6318, %6320
  %6322 = fmul fast float %6321, %6306
  %6323 = fsub fast float 1.000000e+00, %6320
  %6324 = fsub fast float %6323, %6322
  %6325 = fmul fast float %6316, 5.000000e-01
  %6326 = fmul fast float %6325, %6324
  %6327 = fsub fast float 5.000000e-01, %6326
  br label %6328

; <label>:6328                                    ; preds = %6300, %6176, %6163
  %6329 = phi float [ 1.000000e+00, %6163 ], [ %6242, %6176 ], [ %6327, %6300 ]
  %6330 = fcmp fast ogt float %5759, 0.000000e+00
  br i1 %6330, label %6331, label %6495, !dx.controlflow.hints !125

; <label>:6331                                    ; preds = %6328
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 1
  %6334 = fadd fast float %6333, %5648
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 3
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6340 = call float @dx.op.binary.f32(i32 35, float %6334, float 0.000000e+00)  ; FMax(a,b)
  %6341 = fadd fast float %6340, 0x3F10000000000000
  %6342 = fcmp fast oeq float %6339, 0.000000e+00
  br i1 %6342, label %6343, label %6410

; <label>:6343                                    ; preds = %6331
  %6344 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6345 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6346 = fmul fast float %6345, %5655
  %6347 = fmul fast float %6344, %5656
  %6348 = fadd fast float %6346, 5.000000e-01
  %6349 = call float @dx.op.unary.f32(i32 27, float %6348)  ; Round_ni(value)
  %6350 = fadd fast float %6347, 5.000000e-01
  %6351 = call float @dx.op.unary.f32(i32 27, float %6350)  ; Round_ni(value)
  %6352 = fsub fast float %6348, %6349
  %6353 = fsub fast float %6350, %6351
  %6354 = fadd fast float %6349, -5.000000e-01
  %6355 = fadd fast float %6351, -5.000000e-01
  %6356 = fmul fast float %6352, 2.000000e+00
  %6357 = fsub fast float 3.000000e+00, %6356
  %6358 = fadd fast float %6356, 1.000000e+00
  %6359 = fsub fast float 2.000000e+00, %6352
  %6360 = bitcast float %6357 to i32
  %6361 = sub nsw i32 2129859010, %6360
  %6362 = bitcast i32 %6361 to float
  %6363 = fmul fast float %6362, %6359
  %6364 = fadd fast float %6363, -1.000000e+00
  %6365 = bitcast float %6358 to i32
  %6366 = sub nsw i32 2129859010, %6365
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6367, %6352
  %6369 = fadd fast float %6368, 1.000000e+00
  %6370 = fmul fast float %6353, 2.000000e+00
  %6371 = fsub fast float 3.000000e+00, %6370
  %6372 = fadd fast float %6370, 1.000000e+00
  %6373 = fsub fast float 2.000000e+00, %6353
  %6374 = bitcast float %6371 to i32
  %6375 = sub nsw i32 2129859010, %6374
  %6376 = bitcast i32 %6375 to float
  %6377 = fmul fast float %6376, %6373
  %6378 = fadd fast float %6377, -1.000000e+00
  %6379 = bitcast float %6372 to i32
  %6380 = sub nsw i32 2129859010, %6379
  %6381 = bitcast i32 %6380 to float
  %6382 = fmul fast float %6381, %6353
  %6383 = fadd fast float %6382, 1.000000e+00
  %6384 = fadd fast float %6364, %6354
  %6385 = fmul fast float %6384, %6336
  %6386 = fadd fast float %6378, %6355
  %6387 = fmul fast float %6386, %6337
  %6388 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6385, float %6387, float undef, float undef, i32 0, i32 0, i32 undef, float %6341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6389 = extractvalue %dx.types.ResRet.f32 %6388, 0
  %6390 = fmul fast float %6389, %6357
  %6391 = fadd fast float %6369, %6354
  %6392 = fmul fast float %6391, %6336
  %6393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6392, float %6387, float undef, float undef, i32 0, i32 0, i32 undef, float %6341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6394 = extractvalue %dx.types.ResRet.f32 %6393, 0
  %6395 = fmul fast float %6394, %6358
  %6396 = fadd fast float %6383, %6355
  %6397 = fmul fast float %6396, %6337
  %6398 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6385, float %6397, float undef, float undef, i32 0, i32 0, i32 undef, float %6341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = fmul fast float %6399, %6357
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6392, float %6397, float undef, float undef, i32 0, i32 0, i32 undef, float %6341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = fmul fast float %6402, %6358
  %6404 = fadd fast float %6403, %6400
  %6405 = fmul fast float %6404, %6372
  %6406 = fadd fast float %6395, %6390
  %6407 = fmul fast float %6406, %6371
  %6408 = fadd fast float %6407, %6405
  %6409 = fmul fast float %6408, 6.250000e-02
  br label %6495

; <label>:6410                                    ; preds = %6331
  %6411 = fmul fast float %240, 0x401921FB60000000
  %6412 = call float @dx.op.unary.f32(i32 13, float %6411)  ; Sin(value)
  %6413 = call float @dx.op.unary.f32(i32 12, float %6411)  ; Cos(value)
  %6414 = fsub fast float -0.000000e+00, %6412
  br label %6415

; <label>:6415                                    ; preds = %6464, %6410
  %6416 = phi float [ 0.000000e+00, %6410 ], [ %6459, %6464 ]
  %6417 = phi float [ 0.000000e+00, %6410 ], [ %6461, %6464 ]
  %6418 = phi i32 [ 0, %6410 ], [ %6465, %6464 ]
  %6419 = mul i32 %6418, 2
  %6420 = add i32 0, %6419
  %6421 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6420
  %6422 = load float, float* %6421, align 4
  %6423 = mul i32 %6418, 2
  %6424 = add i32 1, %6423
  %6425 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6424
  %6426 = load float, float* %6425, align 4
  %6427 = fmul fast float %6422, %6413
  %6428 = call float @dx.op.tertiary.f32(i32 46, float %6426, float %6414, float %6427)  ; FMad(a,b,c)
  %6429 = fmul fast float %6422, %6412
  %6430 = call float @dx.op.tertiary.f32(i32 46, float %6426, float %6413, float %6429)  ; FMad(a,b,c)
  %6431 = fmul fast float %6428, %6339
  %6432 = fmul fast float %6430, %6339
  %6433 = fadd fast float %6431, %5655
  %6434 = fadd fast float %6432, %5656
  %6435 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6433, float %6434, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6436 = extractvalue %dx.types.ResRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.ResRet.f32 %6435, 1
  %6438 = extractvalue %dx.types.ResRet.f32 %6435, 2
  %6439 = extractvalue %dx.types.ResRet.f32 %6435, 3
  %6440 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6436, float* %6440, align 4
  %6441 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6437, float* %6441, align 4
  %6442 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6438, float* %6442, align 4
  %6443 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6439, float* %6443, align 4
  %6444 = fsub fast float %6436, %6341
  %6445 = fcmp fast olt float %6444, 0.000000e+00
  %6446 = select i1 %6445, float 0.000000e+00, float 1.000000e+00
  %6447 = fadd fast float %6446, %6416
  %6448 = fmul fast float %6446, %6444
  %6449 = fadd fast float %6448, %6417
  br label %6450

; <label>:6450                                    ; preds = %6450, %6415
  %6451 = phi i32 [ 1, %6415 ], [ %6462, %6450 ]
  %6452 = phi float [ %6449, %6415 ], [ %6461, %6450 ]
  %6453 = phi float [ %6447, %6415 ], [ %6459, %6450 ]
  %6454 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6451
  %6455 = load float, float* %6454, align 4, !tbaa !121, !noalias !111
  %6456 = fsub fast float %6455, %6341
  %6457 = fcmp fast olt float %6456, 0.000000e+00
  %6458 = select i1 %6457, float 0.000000e+00, float 1.000000e+00
  %6459 = fadd fast float %6458, %6453
  %6460 = fmul fast float %6458, %6456
  %6461 = fadd fast float %6460, %6452
  %6462 = add nuw nsw i32 %6451, 1
  %6463 = icmp eq i32 %6462, 4
  br i1 %6463, label %6464, label %6450, !llvm.loop !123

; <label>:6464                                    ; preds = %6450
  %6465 = add nuw nsw i32 %6418, 1
  %6466 = icmp eq i32 %6465, 8
  br i1 %6466, label %6467, label %6415, !llvm.loop !124

; <label>:6467                                    ; preds = %6464
  %6468 = fdiv fast float 1.000000e+00, %6459
  %6469 = fmul fast float %6468, %6461
  %6470 = fdiv fast float 1.000000e+00, %6341
  %6471 = fmul fast float %6469, %6470
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = call float @dx.op.binary.f32(i32 35, float %6472, float 0.000000e+00)  ; FMax(a,b)
  %6474 = fmul fast float %6459, 3.125000e-02
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fmul fast float %6475, 2.000000e+00
  %6477 = fadd fast float %6476, -1.000000e+00
  %6478 = fcmp fast ogt float %6477, 0.000000e+00
  %6479 = fcmp fast olt float %6477, 0.000000e+00
  %6480 = zext i1 %6478 to i32
  %6481 = zext i1 %6479 to i32
  %6482 = sub nsw i32 %6480, %6481
  %6483 = sitofp i32 %6482 to float
  %6484 = fmul fast float %6483, %6477
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = fmul fast float %6485, %6485
  %6487 = fmul fast float %6486, %6485
  %6488 = fsub fast float %6485, %6487
  %6489 = fmul fast float %6488, %6473
  %6490 = fsub fast float 1.000000e+00, %6487
  %6491 = fsub fast float %6490, %6489
  %6492 = fmul fast float %6483, 5.000000e-01
  %6493 = fmul fast float %6492, %6491
  %6494 = fsub fast float 5.000000e-01, %6493
  br label %6495

; <label>:6495                                    ; preds = %6467, %6343, %6328
  %6496 = phi float [ 1.000000e+00, %6328 ], [ %6409, %6343 ], [ %6494, %6467 ]
  %6497 = fcmp fast ogt float %5758, 0.000000e+00
  br i1 %6497, label %6498, label %6662, !dx.controlflow.hints !126

; <label>:6498                                    ; preds = %6495
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = fadd fast float %6500, %5648
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = call float @dx.op.binary.f32(i32 35, float %6501, float 0.000000e+00)  ; FMax(a,b)
  %6508 = fadd fast float %6507, 0x3F10000000000000
  %6509 = fcmp fast oeq float %6506, 0.000000e+00
  br i1 %6509, label %6510, label %6577

; <label>:6510                                    ; preds = %6498
  %6511 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6512 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6513 = fmul fast float %6512, %5640
  %6514 = fmul fast float %6511, %5644
  %6515 = fadd fast float %6513, 5.000000e-01
  %6516 = call float @dx.op.unary.f32(i32 27, float %6515)  ; Round_ni(value)
  %6517 = fadd fast float %6514, 5.000000e-01
  %6518 = call float @dx.op.unary.f32(i32 27, float %6517)  ; Round_ni(value)
  %6519 = fsub fast float %6515, %6516
  %6520 = fsub fast float %6517, %6518
  %6521 = fadd fast float %6516, -5.000000e-01
  %6522 = fadd fast float %6518, -5.000000e-01
  %6523 = fmul fast float %6519, 2.000000e+00
  %6524 = fsub fast float 3.000000e+00, %6523
  %6525 = fadd fast float %6523, 1.000000e+00
  %6526 = fsub fast float 2.000000e+00, %6519
  %6527 = bitcast float %6524 to i32
  %6528 = sub nsw i32 2129859010, %6527
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %6526
  %6531 = fadd fast float %6530, -1.000000e+00
  %6532 = bitcast float %6525 to i32
  %6533 = sub nsw i32 2129859010, %6532
  %6534 = bitcast i32 %6533 to float
  %6535 = fmul fast float %6534, %6519
  %6536 = fadd fast float %6535, 1.000000e+00
  %6537 = fmul fast float %6520, 2.000000e+00
  %6538 = fsub fast float 3.000000e+00, %6537
  %6539 = fadd fast float %6537, 1.000000e+00
  %6540 = fsub fast float 2.000000e+00, %6520
  %6541 = bitcast float %6538 to i32
  %6542 = sub nsw i32 2129859010, %6541
  %6543 = bitcast i32 %6542 to float
  %6544 = fmul fast float %6543, %6540
  %6545 = fadd fast float %6544, -1.000000e+00
  %6546 = bitcast float %6539 to i32
  %6547 = sub nsw i32 2129859010, %6546
  %6548 = bitcast i32 %6547 to float
  %6549 = fmul fast float %6548, %6520
  %6550 = fadd fast float %6549, 1.000000e+00
  %6551 = fadd fast float %6531, %6521
  %6552 = fmul fast float %6551, %6503
  %6553 = fadd fast float %6545, %6522
  %6554 = fmul fast float %6553, %6504
  %6555 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6552, float %6554, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6556 = extractvalue %dx.types.ResRet.f32 %6555, 0
  %6557 = fmul fast float %6556, %6524
  %6558 = fadd fast float %6536, %6521
  %6559 = fmul fast float %6558, %6503
  %6560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6559, float %6554, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 0
  %6562 = fmul fast float %6561, %6525
  %6563 = fadd fast float %6550, %6522
  %6564 = fmul fast float %6563, %6504
  %6565 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6552, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6566 = extractvalue %dx.types.ResRet.f32 %6565, 0
  %6567 = fmul fast float %6566, %6524
  %6568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6559, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = fmul fast float %6569, %6525
  %6571 = fadd fast float %6570, %6567
  %6572 = fmul fast float %6571, %6539
  %6573 = fadd fast float %6562, %6557
  %6574 = fmul fast float %6573, %6538
  %6575 = fadd fast float %6574, %6572
  %6576 = fmul fast float %6575, 6.250000e-02
  br label %6662

; <label>:6577                                    ; preds = %6498
  %6578 = fmul fast float %240, 0x401921FB60000000
  %6579 = call float @dx.op.unary.f32(i32 13, float %6578)  ; Sin(value)
  %6580 = call float @dx.op.unary.f32(i32 12, float %6578)  ; Cos(value)
  %6581 = fsub fast float -0.000000e+00, %6579
  br label %6582

; <label>:6582                                    ; preds = %6631, %6577
  %6583 = phi float [ 0.000000e+00, %6577 ], [ %6626, %6631 ]
  %6584 = phi float [ 0.000000e+00, %6577 ], [ %6628, %6631 ]
  %6585 = phi i32 [ 0, %6577 ], [ %6632, %6631 ]
  %6586 = mul i32 %6585, 2
  %6587 = add i32 0, %6586
  %6588 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6587
  %6589 = load float, float* %6588, align 4
  %6590 = mul i32 %6585, 2
  %6591 = add i32 1, %6590
  %6592 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6591
  %6593 = load float, float* %6592, align 4
  %6594 = fmul fast float %6589, %6580
  %6595 = call float @dx.op.tertiary.f32(i32 46, float %6593, float %6581, float %6594)  ; FMad(a,b,c)
  %6596 = fmul fast float %6589, %6579
  %6597 = call float @dx.op.tertiary.f32(i32 46, float %6593, float %6580, float %6596)  ; FMad(a,b,c)
  %6598 = fmul fast float %6595, %6506
  %6599 = fmul fast float %6597, %6506
  %6600 = fadd fast float %6598, %5640
  %6601 = fadd fast float %6599, %5644
  %6602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6600, float %6601, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6607 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6603, float* %6607, align 4
  %6608 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6604, float* %6608, align 4
  %6609 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6605, float* %6609, align 4
  %6610 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6606, float* %6610, align 4
  %6611 = fsub fast float %6603, %6508
  %6612 = fcmp fast olt float %6611, 0.000000e+00
  %6613 = select i1 %6612, float 0.000000e+00, float 1.000000e+00
  %6614 = fadd fast float %6613, %6583
  %6615 = fmul fast float %6613, %6611
  %6616 = fadd fast float %6615, %6584
  br label %6617

; <label>:6617                                    ; preds = %6617, %6582
  %6618 = phi i32 [ 1, %6582 ], [ %6629, %6617 ]
  %6619 = phi float [ %6616, %6582 ], [ %6628, %6617 ]
  %6620 = phi float [ %6614, %6582 ], [ %6626, %6617 ]
  %6621 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6618
  %6622 = load float, float* %6621, align 4, !tbaa !121, !noalias !111
  %6623 = fsub fast float %6622, %6508
  %6624 = fcmp fast olt float %6623, 0.000000e+00
  %6625 = select i1 %6624, float 0.000000e+00, float 1.000000e+00
  %6626 = fadd fast float %6625, %6620
  %6627 = fmul fast float %6625, %6623
  %6628 = fadd fast float %6627, %6619
  %6629 = add nuw nsw i32 %6618, 1
  %6630 = icmp eq i32 %6629, 4
  br i1 %6630, label %6631, label %6617, !llvm.loop !123

; <label>:6631                                    ; preds = %6617
  %6632 = add nuw nsw i32 %6585, 1
  %6633 = icmp eq i32 %6632, 8
  br i1 %6633, label %6634, label %6582, !llvm.loop !124

; <label>:6634                                    ; preds = %6631
  %6635 = fdiv fast float 1.000000e+00, %6626
  %6636 = fmul fast float %6635, %6628
  %6637 = fdiv fast float 1.000000e+00, %6508
  %6638 = fmul fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = call float @dx.op.binary.f32(i32 35, float %6639, float 0.000000e+00)  ; FMax(a,b)
  %6641 = fmul fast float %6626, 3.125000e-02
  %6642 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6643 = fmul fast float %6642, 2.000000e+00
  %6644 = fadd fast float %6643, -1.000000e+00
  %6645 = fcmp fast ogt float %6644, 0.000000e+00
  %6646 = fcmp fast olt float %6644, 0.000000e+00
  %6647 = zext i1 %6645 to i32
  %6648 = zext i1 %6646 to i32
  %6649 = sub nsw i32 %6647, %6648
  %6650 = sitofp i32 %6649 to float
  %6651 = fmul fast float %6650, %6644
  %6652 = fsub fast float 1.000000e+00, %6651
  %6653 = fmul fast float %6652, %6652
  %6654 = fmul fast float %6653, %6652
  %6655 = fsub fast float %6652, %6654
  %6656 = fmul fast float %6655, %6640
  %6657 = fsub fast float 1.000000e+00, %6654
  %6658 = fsub fast float %6657, %6656
  %6659 = fmul fast float %6650, 5.000000e-01
  %6660 = fmul fast float %6659, %6658
  %6661 = fsub fast float 5.000000e-01, %6660
  br label %6662

; <label>:6662                                    ; preds = %6634, %6510, %6495
  %6663 = phi float [ 1.000000e+00, %6495 ], [ %6576, %6510 ], [ %6661, %6634 ]
  %6664 = fsub fast float %6329, %6164
  %6665 = fmul fast float %6664, %5702
  %6666 = fadd fast float %6665, %6164
  %6667 = fsub fast float %6496, %6666
  %6668 = fmul fast float %6667, %5732
  %6669 = fadd fast float %6668, %6666
  %6670 = fsub fast float %6663, %6669
  %6671 = fmul fast float %6670, %5758
  %6672 = fadd fast float %6671, %6669
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6675 = fcmp fast ogt float %6674, 0.000000e+00
  br i1 %6675, label %6676, label %6716, !dx.controlflow.hints !127

; <label>:6676                                    ; preds = %6662
  %6677 = fcmp fast ugt float %6674, 0.000000e+00
  br i1 %6677, label %6678, label %6713

; <label>:6678                                    ; preds = %6676
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.CBufRet.f32 %6684, 3
  %6689 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6690 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = fadd fast float %6692, %5617
  %6696 = fadd fast float %6693, %5618
  %6697 = fadd fast float %6694, %5619
  %6698 = fmul fast float %6695, %6680
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6681, float %6696, float %6698)  ; FMad(a,b,c)
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6682, float %6697, float %6699)  ; FMad(a,b,c)
  %6701 = fadd fast float %6700, %6683
  %6702 = fmul fast float %6695, %6685
  %6703 = call float @dx.op.tertiary.f32(i32 46, float %6686, float %6696, float %6702)  ; FMad(a,b,c)
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6697, float %6703)  ; FMad(a,b,c)
  %6705 = fadd fast float %6704, %6688
  %6706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6701, float %6705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = fmul fast float %6707, %6690
  %6709 = fadd fast float %6708, %6689
  %6710 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6711 = fmul fast float %6710, %6674
  %6712 = fsub fast float 1.000000e+00, %6711
  br label %6713

; <label>:6713                                    ; preds = %6678, %6676
  %6714 = phi float [ %6712, %6678 ], [ 1.000000e+00, %6676 ]
  %6715 = fmul fast float %6714, %6672
  br label %6716

; <label>:6716                                    ; preds = %6713, %6662, %5597
  %6717 = phi float [ 1.000000e+00, %5597 ], [ %6715, %6713 ], [ %6672, %6662 ]
  %6718 = call float @dx.op.binary.f32(i32 36, float %6717, float %6717)  ; FMin(a,b)
  %6719 = call float @dx.op.binary.f32(i32 36, float %6717, float %6718)  ; FMin(a,b)
  %6720 = fcmp fast ogt float %6719, 0.000000e+00
  br i1 %6720, label %6721, label %6886, !dx.controlflow.hints !128

; <label>:6721                                    ; preds = %6716
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.CBufRet.f32 %6722, 3
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = fmul fast float %6723, %5617
  %6738 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6724, float %6737)  ; FMad(a,b,c)
  %6739 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6725, float %6738)  ; FMad(a,b,c)
  %6740 = fadd fast float %6739, %6726
  %6741 = fmul fast float %6728, %5617
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6729, float %6741)  ; FMad(a,b,c)
  %6743 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6730, float %6742)  ; FMad(a,b,c)
  %6744 = fadd fast float %6743, %6731
  %6745 = fmul fast float %6733, %5617
  %6746 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %6734, float %6745)  ; FMad(a,b,c)
  %6747 = call float @dx.op.tertiary.f32(i32 46, float %5619, float %6735, float %6746)  ; FMad(a,b,c)
  %6748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6748, 0
  %6750 = extractvalue %dx.types.CBufRet.f32 %6748, 1
  %6751 = extractvalue %dx.types.CBufRet.f32 %6748, 3
  %6752 = fmul fast float %6751, %6740
  %6753 = fmul fast float %6751, %6744
  %6754 = fadd fast float %6752, %6749
  %6755 = fadd fast float %6753, %6750
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6759 = fsub fast float %6754, %6757
  %6760 = fsub fast float %6755, %6758
  %6761 = fcmp fast olt float %6759, 0.000000e+00
  %6762 = fcmp fast olt float %6760, 0.000000e+00
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.CBufRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6767 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6768 = select i1 %6761, float %6764, float %6766
  %6769 = select i1 %6762, float %6765, float %6767
  %6770 = fmul fast float %6768, %6759
  %6771 = fmul fast float %6769, %6760
  %6772 = call float @dx.op.unary.f32(i32 6, float %6770)  ; FAbs(value)
  %6773 = call float @dx.op.unary.f32(i32 6, float %6771)  ; FAbs(value)
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = call float @dx.op.binary.f32(i32 35, float %6772, float %6773)  ; FMax(a,b)
  %6777 = fsub fast float %6775, %6776
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fcmp fast ogt float %6778, 0.000000e+00
  br i1 %6779, label %6780, label %6821, !dx.controlflow.hints !129

; <label>:6780                                    ; preds = %6721
  %6781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6754, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 1
  %6783 = fcmp fast ogt float %6782, 0.000000e+00
  br i1 %6783, label %6784, label %6816

; <label>:6784                                    ; preds = %6780
  %6785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6754, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6786 = extractvalue %dx.types.ResRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.ResRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.ResRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.ResRet.f32 %6785, 3
  %6790 = fsub fast float 1.000000e+00, %6736
  %6791 = fsub fast float %6790, %6747
  %6792 = fmul fast float %6791, 0x400921FB60000000
  %6793 = fadd fast float %6792, 0x3FF921FB60000000
  %6794 = call float @dx.op.unary.f32(i32 13, float %6793)  ; Sin(value)
  %6795 = fadd fast float %6794, -1.000000e+00
  %6796 = fmul fast float %6795, 0x3FD45F3060000000
  %6797 = fmul fast float %6791, 0x401921FB60000000
  %6798 = fadd fast float %6797, 0x400921FB60000000
  %6799 = call float @dx.op.unary.f32(i32 13, float %6798)  ; Sin(value)
  %6800 = fadd fast float %6799, 0x3E7777A5C0000000
  %6801 = fmul fast float %6800, 0x3FC45F3060000000
  %6802 = fmul fast float %6791, 0x4022D97C80000000
  %6803 = fadd fast float %6802, 0x4012D97C80000000
  %6804 = call float @dx.op.unary.f32(i32 13, float %6803)  ; Sin(value)
  %6805 = fadd fast float %6804, 1.000000e+00
  %6806 = fmul fast float %6805, 0x3FBB2995E0000000
  %6807 = fmul fast float %6791, 0x402921FB60000000
  %6808 = fadd fast float %6807, 0x401921FB60000000
  %6809 = call float @dx.op.unary.f32(i32 13, float %6808)  ; Sin(value)
  %6810 = fadd fast float %6809, 0xBE8777A5C0000000
  %6811 = fmul fast float %6810, 0x3FB45F3060000000
  %6812 = call float @dx.op.dot4.f32(i32 56, float %6786, float %6787, float %6788, float %6789, float %6796, float %6801, float %6806, float %6811)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6813 = fmul fast float %6812, 0xBFF7154760000000
  %6814 = call float @dx.op.unary.f32(i32 21, float %6813)  ; Exp(value)
  %6815 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  br label %6816

; <label>:6816                                    ; preds = %6784, %6780
  %6817 = phi float [ %6815, %6784 ], [ 1.000000e+00, %6780 ]
  %6818 = fadd fast float %6817, -1.000000e+00
  %6819 = fmul fast float %6818, %6778
  %6820 = fadd fast float %6819, 1.000000e+00
  br label %6821

; <label>:6821                                    ; preds = %6816, %6721
  %6822 = phi float [ %6820, %6816 ], [ 1.000000e+00, %6721 ]
  %6823 = fmul fast float %6822, %6717
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.CBufRet.f32 %6824, 1
  %6827 = extractvalue %dx.types.CBufRet.f32 %6824, 2
  %6828 = fadd fast float %6825, %167
  %6829 = fadd fast float %6826, %168
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 1
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.CBufRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6836 = fsub fast float -0.000000e+00, %6828
  %6837 = fsub fast float -0.000000e+00, %6829
  %6838 = fsub fast float %4877, %6827
  %6839 = fadd fast float %6838, %6831
  %6840 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6836, float %6837, float %6839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6842 = fdiv fast float 1.000000e+00, %6841
  %6843 = fmul fast float %6842, %6840
  %6844 = fmul fast float %6833, %6843
  %6845 = fmul fast float %6834, %6843
  %6846 = fadd fast float %6844, %6828
  %6847 = fadd fast float %6845, %6829
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = fsub fast float %6846, %6849
  %6852 = fsub fast float %6847, %6850
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6856 = fmul fast float %6851, %6854
  %6857 = fmul fast float %6852, %6855
  %6858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.i32 %6858, 3
  %6860 = icmp eq i32 %6859, 0
  br i1 %6860, label %6866, label %6861

; <label>:6861                                    ; preds = %6821
  %6862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6856, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6863 = extractvalue %dx.types.ResRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.ResRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.ResRet.f32 %6862, 2
  br label %6871

; <label>:6866                                    ; preds = %6821
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6856, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  br label %6871

; <label>:6871                                    ; preds = %6866, %6861
  %6872 = phi float [ %6863, %6861 ], [ %6868, %6866 ]
  %6873 = phi float [ %6864, %6861 ], [ %6869, %6866 ]
  %6874 = phi float [ %6865, %6861 ], [ %6870, %6866 ]
  %6875 = extractvalue %dx.types.CBufRet.f32 %6830, 2
  %6876 = fmul fast float %6875, %6872
  %6877 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6878 = fsub fast float %6843, %6877
  %6879 = fsub fast float %6878, %6876
  %6880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6879)  ; FMax(a,b)
  %6881 = fmul fast float %6880, %6873
  %6882 = call float @dx.op.binary.f32(i32 36, float %6874, float %6881)  ; FMin(a,b)
  %6883 = fmul fast float %6882, 0xBFF7154760000000
  %6884 = call float @dx.op.unary.f32(i32 21, float %6883)  ; Exp(value)
  %6885 = fmul fast float %6823, %6884
  br label %6886

; <label>:6886                                    ; preds = %6871, %6716
  %6887 = phi float [ %6885, %6871 ], [ %6717, %6716 ]
  %6888 = call float @dx.op.binary.f32(i32 36, float %6887, float %6887)  ; FMin(a,b)
  %6889 = call float @dx.op.binary.f32(i32 36, float %6887, float %6888)  ; FMin(a,b)
  %6890 = fcmp fast ogt float %6889, 0.000000e+00
  br i1 %6890, label %6891, label %7138, !dx.controlflow.hints !130

; <label>:6891                                    ; preds = %6886
  %6892 = fmul fast float %6887, %5609
  %6893 = fmul fast float %6887, %5610
  %6894 = fmul fast float %6887, %5611
  %6895 = fsub fast float %169, %4665
  %6896 = fcmp fast ogt float %6895, 0.000000e+00
  %6897 = fmul fast float %5598, 5.120000e+02
  %6898 = fmul fast float %5599, 5.120000e+02
  %6899 = fmul fast float %5600, 5.120000e+02
  %6900 = fadd fast float %6899, %169
  %6901 = fsub fast float %4665, %6900
  %6902 = fmul fast float %6901, 2.000000e+00
  %6903 = fadd fast float %6902, %6900
  %6904 = select i1 %6896, float %6903, float %6900
  %6905 = fsub fast float %6904, %169
  %6906 = call float @dx.op.dot3.f32(i32 55, float %6897, float %6898, float %6905, float %6897, float %6898, float %6905)  ; Dot3(ax,ay,az,bx,by,bz)
  %6907 = call float @dx.op.unary.f32(i32 25, float %6906)  ; Rsqrt(value)
  %6908 = fmul fast float %6907, %6897
  %6909 = fmul fast float %6907, %6898
  %6910 = fmul fast float %6907, %6905
  %6911 = fsub fast float %4665, %169
  %6912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6911)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6908, float %6909, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = fdiv fast float 1.000000e+00, %6913
  %6915 = fmul fast float %6914, %6912
  %6916 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6895, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6917 = fcmp fast ogt float %6916, 0.000000e+00
  %6918 = fcmp fast olt float %6916, 0.000000e+00
  %6919 = zext i1 %6917 to i32
  %6920 = zext i1 %6918 to i32
  %6921 = sub nsw i32 %6919, %6920
  %6922 = sitofp i32 %6921 to float
  %6923 = fsub fast float %6904, %4665
  %6924 = call float @dx.op.dot3.f32(i32 55, float %6897, float %6898, float %6923, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6925 = fcmp fast ogt float %6924, 0.000000e+00
  %6926 = fcmp fast olt float %6924, 0.000000e+00
  %6927 = zext i1 %6925 to i32
  %6928 = zext i1 %6926 to i32
  %6929 = sub nsw i32 %6927, %6928
  %6930 = sitofp i32 %6929 to float
  %6931 = fcmp fast une float %6922, %6930
  br i1 %6931, label %6932, label %6942

; <label>:6932                                    ; preds = %6891
  %6933 = fmul fast float %6915, %6910
  %6934 = fmul fast float %6915, %6909
  %6935 = fmul fast float %6915, %6908
  %6936 = fmul fast float %6935, %6935
  %6937 = fmul fast float %6934, %6934
  %6938 = fadd fast float %6936, %6937
  %6939 = fmul fast float %6933, %6933
  %6940 = fadd fast float %6938, %6939
  %6941 = call float @dx.op.unary.f32(i32 24, float %6940)  ; Sqrt(value)
  br label %6952

; <label>:6942                                    ; preds = %6891
  %6943 = icmp slt i32 %6921, 0
  br i1 %6943, label %6944, label %6952

; <label>:6944                                    ; preds = %6942
  %6945 = fsub fast float %169, %6904
  %6946 = fmul fast float %6897, %6897
  %6947 = fmul fast float %6898, %6898
  %6948 = fadd fast float %6946, %6947
  %6949 = fmul fast float %6945, %6945
  %6950 = fadd fast float %6948, %6949
  %6951 = call float @dx.op.unary.f32(i32 24, float %6950)  ; Sqrt(value)
  br label %6952

; <label>:6952                                    ; preds = %6944, %6942, %6932
  %6953 = phi float [ %6941, %6932 ], [ %6951, %6944 ], [ 0.000000e+00, %6942 ]
  %6954 = fsub fast float -0.000000e+00, %6953
  %6955 = select i1 %6896, float -0.000000e+00, float %6954
  %6956 = fmul fast float %4666, 0x3FF7154760000000
  %6957 = fmul fast float %6956, %6955
  %6958 = fmul fast float %4667, 0x3FF7154760000000
  %6959 = fmul fast float %6958, %6955
  %6960 = fmul fast float %4668, 0x3FF7154760000000
  %6961 = fmul fast float %6960, %6955
  %6962 = call float @dx.op.unary.f32(i32 21, float %6957)  ; Exp(value)
  %6963 = call float @dx.op.unary.f32(i32 21, float %6959)  ; Exp(value)
  %6964 = call float @dx.op.unary.f32(i32 21, float %6961)  ; Exp(value)
  %6965 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6966 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6967 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6968 = fmul fast float %6892, %6965
  %6969 = fmul fast float %6893, %6966
  %6970 = fmul fast float %6894, %6967
  %6971 = fsub fast float %5598, %4865
  %6972 = fsub fast float %5599, %4864
  %6973 = fsub fast float %5600, %4863
  %6974 = call float @dx.op.dot3.f32(i32 55, float %6971, float %6972, float %6973, float %6971, float %6972, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = call float @dx.op.unary.f32(i32 25, float %6974)  ; Rsqrt(value)
  %6976 = fmul fast float %6975, %6971
  %6977 = fmul fast float %6975, %6972
  %6978 = fmul fast float %6975, %6973
  %6979 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4861, float %4860, float %6976, float %6977, float %6978)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6982 = fmul fast float %6981, %6981
  %6983 = fmul fast float %6982, %4905
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fmul fast float %6984, %6981
  %6986 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %6976, float %6977, float %6978)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = fmul fast float %6986, %6986
  %6988 = call float @dx.op.unary.f32(i32 6, float %6979)  ; FAbs(value)
  %6989 = fsub fast float 1.000000e+00, %4898
  %6990 = fmul fast float %4880, %4880
  %6991 = fmul fast float %6990, %6989
  %6992 = fadd fast float %6991, %4898
  %6993 = bitcast float %6992 to i32
  %6994 = ashr i32 %6993, 1
  %6995 = add nsw i32 %6994, 532487669
  %6996 = bitcast i32 %6995 to float
  %6997 = fadd fast float %6996, %4880
  %6998 = fmul fast float %4898, %6987
  %6999 = fsub fast float 1.000000e+00, %6987
  %7000 = fadd fast float %6999, %6998
  %7001 = fmul fast float %6988, %6988
  %7002 = fmul fast float %7001, %6989
  %7003 = fadd fast float %7002, %4898
  %7004 = bitcast float %7003 to i32
  %7005 = ashr i32 %7004, 1
  %7006 = add nsw i32 %7005, 532487669
  %7007 = bitcast i32 %7006 to float
  %7008 = fadd fast float %7007, %6988
  %7009 = fmul fast float %7000, %7000
  %7010 = fmul fast float %7009, %6997
  %7011 = fmul fast float %7010, %7008
  %7012 = fdiv fast float 0x3FF0A00000000000, %7011
  %7013 = fmul fast float %7012, %4898
  %7014 = call float @dx.op.unary.f32(i32 6, float %6980)  ; FAbs(value)
  %7015 = fsub fast float 1.000000e+00, %7014
  %7016 = bitcast float %7015 to i32
  %7017 = sitofp i32 %7016 to float
  %7018 = fmul fast float %7017, 5.000000e+00
  %7019 = fadd fast float %7018, 0xC1EFBF8940000000
  %7020 = fptosi float %7019 to i32
  %7021 = bitcast i32 %7020 to float
  %7022 = fsub fast float 1.000000e+00, %4866
  %7023 = fsub fast float 1.000000e+00, %4867
  %7024 = fsub fast float 1.000000e+00, %4878
  %7025 = fmul fast float %7021, %7022
  %7026 = fmul fast float %7021, %7023
  %7027 = fmul fast float %7021, %7024
  %7028 = fadd fast float %7025, %4866
  %7029 = fadd fast float %7026, %4867
  %7030 = fadd fast float %7027, %4878
  br i1 %5017, label %7031, label %7054

; <label>:7031                                    ; preds = %6952
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4263, float %7014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = fadd fast float %7033, -5.000000e-01
  %7037 = fadd fast float %7034, -5.000000e-01
  %7038 = fadd fast float %7035, -5.000000e-01
  %7039 = fmul fast float %4866, 4.000000e+00
  %7040 = fmul fast float %7039, %7022
  %7041 = fmul fast float %7040, %7036
  %7042 = fmul fast float %4867, 4.000000e+00
  %7043 = fmul fast float %7042, %7023
  %7044 = fmul fast float %7043, %7037
  %7045 = fmul fast float %4878, 4.000000e+00
  %7046 = fmul fast float %7045, %7024
  %7047 = fmul fast float %7046, %7038
  %7048 = fadd fast float %7041, %7028
  %7049 = fadd fast float %7044, %7029
  %7050 = fadd fast float %7047, %7030
  %7051 = call float @dx.op.unary.f32(i32 7, float %7048)  ; Saturate(value)
  %7052 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7053 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  br label %7054

; <label>:7054                                    ; preds = %7031, %6952
  %7055 = phi float [ %7051, %7031 ], [ %7028, %6952 ]
  %7056 = phi float [ %7052, %7031 ], [ %7029, %6952 ]
  %7057 = phi float [ %7053, %7031 ], [ %7030, %6952 ]
  %7058 = fmul fast float %6979, 9.843750e-01
  %7059 = fadd fast float %7058, 7.812500e-03
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7059, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 2
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 3
  %7063 = fmul fast float %7061, %4866
  %7064 = fmul fast float %7061, %4867
  %7065 = fmul fast float %7061, %4878
  %7066 = fadd fast float %7063, %7062
  %7067 = fadd fast float %7064, %7062
  %7068 = fadd fast float %7065, %7062
  br i1 %5017, label %7069, label %7092

; <label>:7069                                    ; preds = %7054
  %7070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4263, float %6979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = fadd fast float %7071, -5.000000e-01
  %7075 = fadd fast float %7072, -5.000000e-01
  %7076 = fadd fast float %7073, -5.000000e-01
  %7077 = fmul fast float %4866, 4.000000e+00
  %7078 = fmul fast float %7077, %7022
  %7079 = fmul fast float %7078, %7074
  %7080 = fmul fast float %4867, 4.000000e+00
  %7081 = fmul fast float %7080, %7023
  %7082 = fmul fast float %7081, %7075
  %7083 = fmul fast float %4878, 4.000000e+00
  %7084 = fmul fast float %7083, %7024
  %7085 = fmul fast float %7084, %7076
  %7086 = fadd fast float %7079, %7066
  %7087 = fadd fast float %7082, %7067
  %7088 = fadd fast float %7085, %7068
  %7089 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7090 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7091 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  br label %7092

; <label>:7092                                    ; preds = %7069, %7054
  %7093 = phi float [ %7089, %7069 ], [ %7066, %7054 ]
  %7094 = phi float [ %7090, %7069 ], [ %7067, %7054 ]
  %7095 = phi float [ %7091, %7069 ], [ %7068, %7054 ]
  %7096 = call float @dx.op.binary.f32(i32 35, float %7094, float %7095)  ; FMax(a,b)
  %7097 = call float @dx.op.binary.f32(i32 35, float %7093, float %7096)  ; FMax(a,b)
  %7098 = fsub fast float 1.000000e+00, %7097
  %7099 = fmul fast float %7055, %7013
  %7100 = fmul fast float %7056, %7013
  %7101 = fmul fast float %7057, %7013
  %7102 = fsub fast float 1.000000e+00, %6980
  %7103 = bitcast float %7102 to i32
  %7104 = sitofp i32 %7103 to float
  %7105 = fmul fast float %7104, 5.000000e+00
  %7106 = fadd fast float %7105, 0xC1EFBF8940000000
  %7107 = fptosi float %7106 to i32
  %7108 = bitcast i32 %7107 to float
  %7109 = fmul fast float %7108, %4264
  %7110 = fmul fast float %7098, %7109
  %7111 = fmul fast float %7110, %5559
  %7112 = fmul fast float %7110, %5560
  %7113 = fmul fast float %7110, %5561
  %7114 = fadd fast float %7111, %7099
  %7115 = fadd fast float %7112, %7100
  %7116 = fadd fast float %7113, %7101
  %7117 = fmul fast float %6985, %6968
  %7118 = fmul fast float %7117, %7098
  %7119 = fmul fast float %6985, %6969
  %7120 = fmul fast float %7119, %7098
  %7121 = fmul fast float %6985, %6970
  %7122 = fmul fast float %7121, %7098
  %7123 = fmul fast float %7117, %7114
  %7124 = fmul fast float %7119, %7115
  %7125 = fmul fast float %7121, %7116
  %7126 = fadd fast float %7118, %5543
  %7127 = fmul fast float %7126, %4260
  %7128 = fadd fast float %7120, %5544
  %7129 = fmul fast float %7128, %4260
  %7130 = fadd fast float %7122, %5545
  %7131 = fmul fast float %7130, %4260
  %7132 = fadd fast float %7123, %5586
  %7133 = fmul fast float %7132, %4260
  %7134 = fadd fast float %7124, %5589
  %7135 = fmul fast float %7134, %4260
  %7136 = fadd fast float %7125, %5592
  %7137 = fmul fast float %7136, %4260
  br label %7138

; <label>:7138                                    ; preds = %7092, %6886, %5539
  %7139 = phi float [ %5587, %5539 ], [ %5587, %6886 ], [ %7133, %7092 ]
  %7140 = phi float [ %5590, %5539 ], [ %5590, %6886 ], [ %7135, %7092 ]
  %7141 = phi float [ %5593, %5539 ], [ %5593, %6886 ], [ %7137, %7092 ]
  %7142 = phi float [ %5582, %5539 ], [ %5582, %6886 ], [ %7127, %7092 ]
  %7143 = phi float [ %5583, %5539 ], [ %5583, %6886 ], [ %7129, %7092 ]
  %7144 = phi float [ %5584, %5539 ], [ %5584, %6886 ], [ %7131, %7092 ]
  %7145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.i32 %7145, 0
  %7147 = icmp eq i32 %7146, 0
  br i1 %7147, label %7810, label %7148

; <label>:7148                                    ; preds = %7138
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 2
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7152 = fmul fast float %7150, %104
  %7153 = fmul fast float %7151, %105
  %7154 = fptoui float %7152 to i32
  %7155 = fptoui float %7153 to i32
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7159 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7160 = fadd fast float %92, -4.000000e+00
  %7161 = call float @dx.op.binary.f32(i32 35, float %7160, float 0.000000e+00)  ; FMax(a,b)
  %7162 = fadd fast float %7161, %7157
  %7163 = fmul fast float %7162, %7158
  %7164 = call float @dx.op.unary.f32(i32 23, float %7163)  ; Log(value)
  %7165 = fmul fast float %7164, %7159
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7168 = fmul fast float %7165, %7167
  %7169 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.i32 %7170, 1
  %7172 = add i32 %7171, -1
  %7173 = uitofp i32 %7171 to float
  %7174 = fmul fast float %7173, %7169
  %7175 = fptoui float %7174 to i32
  %7176 = call i32 @dx.op.binary.i32(i32 40, i32 %7175, i32 %7172)  ; UMin(a,b)
  %7177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.i32 %7177, 2
  %7179 = extractvalue %dx.types.CBufRet.i32 %7177, 3
  %7180 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7155, i32 %7178, i32 %7154)  ; UMad(a,b,c)
  %7181 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7176, i32 %7179, i32 %7180)  ; UMad(a,b,c)
  %7182 = add nsw i32 %7146, -1
  %7183 = call i32 @dx.op.binary.i32(i32 37, i32 %7182, i32 0)  ; IMax(a,b)
  %7184 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7185 = fptoui float %7184 to i32
  %7186 = lshr i32 %7185, 5
  %7187 = call i32 @dx.op.binary.i32(i32 40, i32 %7186, i32 8191)  ; UMin(a,b)
  %7188 = shl i32 %7187, 2
  %7189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7188, i32 undef)  ; BufferLoad(srv,index,wot)
  %7190 = extractvalue %dx.types.ResRet.i32 %7189, 0
  %7191 = lshr i32 %7190, 16
  %7192 = and i32 %7190, 65535
  %7193 = lshr i32 %7190, 21
  %7194 = lshr i32 %7192, 5
  %7195 = call i32 @dx.op.binary.i32(i32 40, i32 %7194, i32 %7183)  ; UMin(a,b)
  %7196 = icmp ugt i32 %7193, %7195
  br i1 %7196, label %7810, label %7197

; <label>:7197                                    ; preds = %7148
  br label %7198

; <label>:7198                                    ; preds = %7800, %7197
  %7199 = phi i32 [ %7807, %7800 ], [ %7193, %7197 ]
  %7200 = phi float [ %7801, %7800 ], [ %7139, %7197 ]
  %7201 = phi float [ %7802, %7800 ], [ %7140, %7197 ]
  %7202 = phi float [ %7803, %7800 ], [ %7141, %7197 ]
  %7203 = phi float [ %7804, %7800 ], [ %7142, %7197 ]
  %7204 = phi float [ %7805, %7800 ], [ %7143, %7197 ]
  %7205 = phi float [ %7806, %7800 ], [ %7144, %7197 ]
  %7206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.i32 %7206, 0
  %7208 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7181, i32 %7207, i32 %7199)  ; UMad(a,b,c)
  %7209 = shl i32 %7208, 2
  %7210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7209, i32 undef)  ; BufferLoad(srv,index,wot)
  %7211 = extractvalue %dx.types.ResRet.i32 %7210, 0
  %7212 = shl i32 %7199, 5
  %7213 = sub nsw i32 %7191, %7212
  %7214 = call i32 @dx.op.binary.i32(i32 37, i32 %7213, i32 0)  ; IMax(a,b)
  %7215 = call i32 @dx.op.binary.i32(i32 38, i32 %7214, i32 31)  ; IMin(a,b)
  %7216 = sub nsw i32 1, %7191
  %7217 = add nsw i32 %7216, %7192
  %7218 = call i32 @dx.op.binary.i32(i32 37, i32 %7217, i32 0)  ; IMax(a,b)
  %7219 = call i32 @dx.op.binary.i32(i32 38, i32 %7218, i32 32)  ; IMin(a,b)
  %7220 = and i32 %7219, 31
  %7221 = shl i32 -1, %7220
  %7222 = xor i32 %7221, -1
  %7223 = and i32 %7215, 31
  %7224 = shl i32 %7222, %7223
  %7225 = icmp eq i32 %7219, 32
  %7226 = select i1 %7225, i32 -1, i32 %7224
  %7227 = and i32 %7226, %7211
  %7228 = icmp eq i32 %7227, 0
  br i1 %7228, label %7800, label %7229

; <label>:7229                                    ; preds = %7198
  br label %7230

; <label>:7230                                    ; preds = %7364, %7229
  %7231 = phi i32 [ %7242, %7364 ], [ %7227, %7229 ]
  %7232 = phi float [ %7365, %7364 ], [ %7200, %7229 ]
  %7233 = phi float [ %7366, %7364 ], [ %7201, %7229 ]
  %7234 = phi float [ %7367, %7364 ], [ %7202, %7229 ]
  %7235 = phi float [ %7368, %7364 ], [ %7203, %7229 ]
  %7236 = phi float [ %7369, %7364 ], [ %7204, %7229 ]
  %7237 = phi float [ %7370, %7364 ], [ %7205, %7229 ]
  %7238 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7231)  ; FirstbitLo(value)
  %7239 = add i32 %7238, %7212
  %7240 = and i32 %7238, 31
  %7241 = shl i32 1, %7240
  %7242 = xor i32 %7241, %7231
  %7243 = mul i32 %7239, 112
  %7244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.ResRet.f32 %7244, 2
  %7248 = or i32 %7243, 12
  %7249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7248, i32 undef)  ; BufferLoad(srv,index,wot)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = add i32 %7243, 16
  %7252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7251, i32 undef)  ; BufferLoad(srv,index,wot)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = add i32 %7243, 28
  %7257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7256, i32 undef)  ; BufferLoad(srv,index,wot)
  %7258 = extractvalue %dx.types.ResRet.i32 %7257, 0
  %7259 = add i32 %7243, 44
  %7260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7259, i32 undef)  ; BufferLoad(srv,index,wot)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = add i32 %7243, 48
  %7263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7262, i32 undef)  ; BufferLoad(srv,index,wot)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.ResRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.ResRet.f32 %7263, 2
  %7267 = extractvalue %dx.types.ResRet.f32 %7263, 3
  %7268 = add i32 %7243, 64
  %7269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.ResRet.f32 %7269, 3
  %7274 = add i32 %7243, 80
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7278 = add i32 %7243, 92
  %7279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7278, i32 undef)  ; BufferLoad(srv,index,wot)
  %7280 = extractvalue %dx.types.ResRet.i32 %7279, 0
  %7281 = call float @dx.op.dot3.f32(i32 55, float %7245, float %7246, float %7247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7282 = select i1 %229, float %7276, float %7245
  %7283 = select i1 %229, float %7281, float %7246
  %7284 = select i1 %229, float %7277, float %7247
  %7285 = and i32 %7280, 65535
  %7286 = uitofp i32 %7285 to float
  %7287 = lshr i32 %7280, 16
  %7288 = uitofp i32 %7287 to float
  %7289 = and i32 %7258, 65535
  %7290 = and i32 %7258, 50331648
  %7291 = icmp eq i32 %7290, 33554432
  %7292 = fsub fast float %7264, %167
  %7293 = fsub fast float %7265, %168
  %7294 = fsub fast float %7266, %169
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7293, float %7294, float %7292, float %7293, float %7294)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = call float @dx.op.unary.f32(i32 24, float %7295)  ; Sqrt(value)
  %7297 = fdiv fast float 1.000000e+00, %7296
  %7298 = fmul fast float %7297, %7292
  %7299 = fmul fast float %7297, %7293
  %7300 = fmul fast float %7297, %7294
  %7301 = fadd fast float %7296, %7250
  %7302 = fdiv fast float 1.000000e+00, %7301
  %7303 = fmul float %7261, %7302
  %7304 = fmul float %7303, %7303
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  br i1 %7291, label %7306, label %7327

; <label>:7306                                    ; preds = %7230
  %7307 = fmul fast float %7272, %7253
  %7308 = fmul fast float %7272, %7254
  %7309 = fmul fast float %7272, %7255
  %7310 = fadd fast float %7292, %7307
  %7311 = fadd fast float %7293, %7308
  %7312 = fadd fast float %7294, %7309
  %7313 = call float @dx.op.dot3.f32(i32 55, float %7310, float %7311, float %7312, float %7310, float %7311, float %7312)  ; Dot3(ax,ay,az,bx,by,bz)
  %7314 = call float @dx.op.unary.f32(i32 25, float %7313)  ; Rsqrt(value)
  %7315 = fmul fast float %7314, %7310
  %7316 = fmul fast float %7314, %7311
  %7317 = fmul fast float %7314, %7312
  %7318 = fsub fast float %167, %7264
  %7319 = fsub fast float %168, %7265
  %7320 = fsub fast float %169, %7266
  %7321 = fsub fast float -0.000000e+00, %7318
  %7322 = fsub fast float -0.000000e+00, %7319
  %7323 = fsub fast float -0.000000e+00, %7320
  %7324 = call float @dx.op.dot3.f32(i32 55, float %7321, float %7322, float %7323, float %7253, float %7254, float %7255)  ; Dot3(ax,ay,az,bx,by,bz)
  %7325 = fcmp fast ogt float %7324, 0.000000e+00
  %7326 = uitofp i1 %7325 to float
  br label %7327

; <label>:7327                                    ; preds = %7306, %7230
  %7328 = phi float [ %7326, %7306 ], [ 1.000000e+00, %7230 ]
  %7329 = phi float [ %7315, %7306 ], [ %7298, %7230 ]
  %7330 = phi float [ %7316, %7306 ], [ %7299, %7230 ]
  %7331 = phi float [ %7317, %7306 ], [ %7300, %7230 ]
  %7332 = call float @dx.op.dot3.f32(i32 55, float %7253, float %7254, float %7255, float %7329, float %7330, float %7331)  ; Dot3(ax,ay,az,bx,by,bz)
  %7333 = fmul fast float %7332, %7332
  %7334 = call float @dx.op.unary.f32(i32 7, float %7333)  ; Saturate(value)
  %7335 = fsub fast float 1.000000e+00, %7334
  %7336 = fmul fast float %7335, 5.000000e-01
  %7337 = fcmp fast ogt float %7332, 0.000000e+00
  %7338 = fsub fast float 1.000000e+00, %7336
  %7339 = select i1 %7337, float %7336, float %7338
  %7340 = fmul fast float %7339, %7288
  %7341 = fadd fast float %7340, %7286
  %7342 = fmul fast float %7341, 0x3EF0001000000000
  %7343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7342, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7344 = extractvalue %dx.types.ResRet.f32 %7343, 0
  %7345 = fmul fast float %7332, %7270
  %7346 = fadd fast float %7345, %7271
  %7347 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7348 = select i1 %7291, float 1.000000e+00, float %7347
  %7349 = select i1 %7291, float %7347, float 1.000000e+00
  %7350 = fmul fast float %7296, %7267
  %7351 = fsub fast float 1.000000e+00, %7350
  %7352 = fmul fast float %7351, %7273
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7354 = fmul fast float %7353, %7349
  %7355 = fmul fast float %7354, 2.000000e+00
  %7356 = fsub fast float 3.000000e+00, %7355
  %7357 = fmul fast float %7344, %7328
  %7358 = fmul fast float %7354, %7354
  %7359 = fmul fast float %7358, %7357
  %7360 = fmul fast float %7359, %7356
  %7361 = call float @dx.op.binary.f32(i32 36, float %7360, float %7360)  ; FMin(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7360, float %7361)  ; FMin(a,b)
  %7363 = fcmp fast ogt float %7362, 0.000000e+00
  br i1 %7363, label %7372, label %7364, !dx.controlflow.hints !131

; <label>:7364                                    ; preds = %7756, %7518, %7327
  %7365 = phi float [ %7232, %7518 ], [ %7232, %7327 ], [ %7796, %7756 ]
  %7366 = phi float [ %7233, %7518 ], [ %7233, %7327 ], [ %7797, %7756 ]
  %7367 = phi float [ %7234, %7518 ], [ %7234, %7327 ], [ %7798, %7756 ]
  %7368 = phi float [ %7235, %7518 ], [ %7235, %7327 ], [ %7790, %7756 ]
  %7369 = phi float [ %7236, %7518 ], [ %7236, %7327 ], [ %7791, %7756 ]
  %7370 = phi float [ %7237, %7518 ], [ %7237, %7327 ], [ %7792, %7756 ]
  %7371 = icmp eq i32 %7231, %7241
  br i1 %7371, label %7799, label %7230

; <label>:7372                                    ; preds = %7327
  %7373 = icmp eq i32 %7289, 255
  br i1 %7373, label %7518, label %7374, !dx.controlflow.hints !132

; <label>:7374                                    ; preds = %7372
  %7375 = mul nuw nsw i32 %7289, 176
  %7376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7375, i32 undef)  ; BufferLoad(srv,index,wot)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = extractvalue %dx.types.ResRet.f32 %7376, 3
  %7381 = add nuw nsw i32 %7375, 16
  %7382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7381, i32 undef)  ; BufferLoad(srv,index,wot)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = add nuw nsw i32 %7375, 32
  %7386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7385, i32 undef)  ; BufferLoad(srv,index,wot)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = add nuw nsw i32 %7375, 48
  %7391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7390, i32 undef)  ; BufferLoad(srv,index,wot)
  %7392 = extractvalue %dx.types.ResRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.ResRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.ResRet.f32 %7391, 2
  %7395 = extractvalue %dx.types.ResRet.f32 %7391, 3
  %7396 = add nuw nsw i32 %7375, 64
  %7397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7396, i32 undef)  ; BufferLoad(srv,index,wot)
  %7398 = extractvalue %dx.types.ResRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.ResRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.ResRet.f32 %7397, 2
  %7401 = extractvalue %dx.types.ResRet.f32 %7397, 3
  %7402 = add nuw nsw i32 %7375, 80
  %7403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7402, i32 undef)  ; BufferLoad(srv,index,wot)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.ResRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.ResRet.f32 %7403, 2
  %7407 = extractvalue %dx.types.ResRet.f32 %7403, 3
  %7408 = add nuw nsw i32 %7375, 96
  %7409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7408, i32 undef)  ; BufferLoad(srv,index,wot)
  %7410 = extractvalue %dx.types.ResRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.ResRet.f32 %7409, 1
  %7412 = extractvalue %dx.types.ResRet.f32 %7409, 2
  %7413 = extractvalue %dx.types.ResRet.f32 %7409, 3
  %7414 = bitcast float %7384 to i32
  %7415 = fmul fast float %7389, %111
  %7416 = fmul fast float %7389, %112
  %7417 = fmul fast float %7389, %113
  %7418 = fadd fast float %7415, %167
  %7419 = fadd fast float %7416, %168
  %7420 = fadd fast float %7417, %169
  %7421 = fmul fast float %7418, %7392
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7398, float %7421)  ; FMad(a,b,c)
  %7423 = call float @dx.op.tertiary.f32(i32 46, float %7420, float %7404, float %7422)  ; FMad(a,b,c)
  %7424 = fadd fast float %7423, %7410
  %7425 = fmul fast float %7418, %7393
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7399, float %7425)  ; FMad(a,b,c)
  %7427 = call float @dx.op.tertiary.f32(i32 46, float %7420, float %7405, float %7426)  ; FMad(a,b,c)
  %7428 = fadd fast float %7427, %7411
  %7429 = fmul fast float %7418, %7394
  %7430 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7400, float %7429)  ; FMad(a,b,c)
  %7431 = call float @dx.op.tertiary.f32(i32 46, float %7420, float %7406, float %7430)  ; FMad(a,b,c)
  %7432 = fadd fast float %7431, %7412
  %7433 = fmul fast float %7418, %7395
  %7434 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7401, float %7433)  ; FMad(a,b,c)
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %7420, float %7407, float %7434)  ; FMad(a,b,c)
  %7436 = fadd fast float %7435, %7413
  %7437 = fdiv fast float %7424, %7436
  %7438 = fdiv fast float %7428, %7436
  %7439 = fdiv fast float %7432, %7436
  %7440 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7439)  ; FMax(a,b)
  %7441 = fmul fast float %240, 0x401921FB60000000
  %7442 = call float @dx.op.unary.f32(i32 13, float %7441)  ; Sin(value)
  %7443 = call float @dx.op.unary.f32(i32 12, float %7441)  ; Cos(value)
  %7444 = fmul fast float %7443, %7388
  %7445 = call float @dx.op.tertiary.f32(i32 46, float %7442, float %7388, float 0.000000e+00)  ; FMad(a,b,c)
  %7446 = fmul fast float %7388, %7442
  %7447 = fsub fast float -0.000000e+00, %7446
  %7448 = call float @dx.op.tertiary.f32(i32 46, float %7443, float %7388, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7449

; <label>:7449                                    ; preds = %7449, %7374
  %7450 = phi float [ 0.000000e+00, %7374 ], [ %7482, %7449 ]
  %7451 = phi float [ 0.000000e+00, %7374 ], [ %7484, %7449 ]
  %7452 = phi i32 [ 0, %7374 ], [ %7485, %7449 ]
  %7453 = mul i32 %7452, 2
  %7454 = add i32 0, %7453
  %7455 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7454
  %7456 = load float, float* %7455, align 4
  %7457 = mul i32 %7452, 2
  %7458 = add i32 1, %7457
  %7459 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7458
  %7460 = load float, float* %7459, align 4
  %7461 = fmul fast float %7444, %7456
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7460, float %7447, float %7461)  ; FMad(a,b,c)
  %7463 = fmul fast float %7456, %7445
  %7464 = call float @dx.op.tertiary.f32(i32 46, float %7460, float %7448, float %7463)  ; FMad(a,b,c)
  %7465 = fadd fast float %7462, %7437
  %7466 = fadd fast float %7464, %7438
  %7467 = fmul fast float %7465, %7383
  %7468 = fmul fast float %7466, %7383
  %7469 = call float @dx.op.binary.f32(i32 35, float %7467, float %7379)  ; FMax(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7468, float %7379)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 36, float %7469, float %7380)  ; FMin(a,b)
  %7472 = call float @dx.op.binary.f32(i32 36, float %7470, float %7380)  ; FMin(a,b)
  %7473 = fadd fast float %7471, %7377
  %7474 = fadd fast float %7472, %7378
  %7475 = uitofp i32 %7414 to float
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7473, float %7474, float %7475, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = fsub fast float %7477, %7440
  %7479 = fsub fast float %7478, %7387
  %7480 = fcmp fast ogt float %7479, 0.000000e+00
  %7481 = select i1 %7480, float 1.000000e+00, float 0.000000e+00
  %7482 = fadd fast float %7481, %7450
  %7483 = select i1 %7480, float %7479, float 0.000000e+00
  %7484 = fadd fast float %7483, %7451
  %7485 = add nuw nsw i32 %7452, 1
  %7486 = icmp eq i32 %7485, 8
  br i1 %7486, label %7487, label %7449

; <label>:7487                                    ; preds = %7449
  %7488 = fdiv fast float 1.000000e+00, %7482
  %7489 = fmul fast float %7488, %7484
  %7490 = fdiv fast float 1.000000e+00, %7440
  %7491 = fmul fast float %7489, %7490
  %7492 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7493 = call float @dx.op.binary.f32(i32 35, float %7492, float 0.000000e+00)  ; FMax(a,b)
  %7494 = fmul fast float %7482, 1.250000e-01
  %7495 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7496 = fmul fast float %7495, 2.000000e+00
  %7497 = fadd fast float %7496, -1.000000e+00
  %7498 = fcmp fast ogt float %7497, 0.000000e+00
  %7499 = fcmp fast olt float %7497, 0.000000e+00
  %7500 = zext i1 %7498 to i32
  %7501 = zext i1 %7499 to i32
  %7502 = sub nsw i32 %7500, %7501
  %7503 = sitofp i32 %7502 to float
  %7504 = fmul fast float %7503, %7497
  %7505 = fsub fast float 1.000000e+00, %7504
  %7506 = fmul fast float %7505, %7505
  %7507 = fmul fast float %7506, %7505
  %7508 = fsub fast float %7505, %7507
  %7509 = fmul fast float %7508, %7493
  %7510 = fsub fast float 1.000000e+00, %7507
  %7511 = fsub fast float %7510, %7509
  %7512 = fmul fast float %7503, 5.000000e-01
  %7513 = fmul fast float %7512, %7511
  %7514 = fsub fast float -5.000000e-01, %7513
  %7515 = fmul fast float %7514, %7348
  %7516 = fadd fast float %7515, 1.000000e+00
  %7517 = fmul fast float %7516, %7360
  br label %7518

; <label>:7518                                    ; preds = %7487, %7372
  %7519 = phi float [ %7517, %7487 ], [ %7360, %7372 ]
  %7520 = call float @dx.op.binary.f32(i32 36, float %7519, float %7519)  ; FMin(a,b)
  %7521 = call float @dx.op.binary.f32(i32 36, float %7519, float %7520)  ; FMin(a,b)
  %7522 = fcmp fast ogt float %7521, 0.000000e+00
  br i1 %7522, label %7523, label %7364, !dx.controlflow.hints !133

; <label>:7523                                    ; preds = %7518
  %7524 = fmul fast float %7519, %7282
  %7525 = fmul fast float %7519, %7283
  %7526 = fmul fast float %7519, %7284
  %7527 = fsub fast float %7266, %4665
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = fsub fast float %169, %4665
  %7530 = fcmp fast ogt float %7529, 0.000000e+00
  %7531 = xor i1 %7530, %7528
  %7532 = fsub fast float %4665, %7266
  %7533 = fmul fast float %7532, 2.000000e+00
  %7534 = fadd fast float %7533, %7266
  %7535 = select i1 %7531, float %7266, float %7534
  %7536 = fsub fast float %7535, %169
  %7537 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7293, float %7536, float %7292, float %7293, float %7536)  ; Dot3(ax,ay,az,bx,by,bz)
  %7538 = call float @dx.op.unary.f32(i32 25, float %7537)  ; Rsqrt(value)
  %7539 = fmul fast float %7538, %7292
  %7540 = fmul fast float %7538, %7293
  %7541 = fmul fast float %7538, %7536
  %7542 = fsub fast float %4665, %169
  %7543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7542)  ; Dot3(ax,ay,az,bx,by,bz)
  %7544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7539, float %7540, float %7541)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = fdiv fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7545, %7543
  %7547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7529, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = fcmp fast ogt float %7547, 0.000000e+00
  %7549 = fcmp fast olt float %7547, 0.000000e+00
  %7550 = zext i1 %7548 to i32
  %7551 = zext i1 %7549 to i32
  %7552 = sub nsw i32 %7550, %7551
  %7553 = sitofp i32 %7552 to float
  %7554 = fsub fast float %7535, %4665
  %7555 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7293, float %7554, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7556 = fcmp fast ogt float %7555, 0.000000e+00
  %7557 = fcmp fast olt float %7555, 0.000000e+00
  %7558 = zext i1 %7556 to i32
  %7559 = zext i1 %7557 to i32
  %7560 = sub nsw i32 %7558, %7559
  %7561 = sitofp i32 %7560 to float
  %7562 = fcmp fast une float %7553, %7561
  br i1 %7562, label %7563, label %7573

; <label>:7563                                    ; preds = %7523
  %7564 = fmul fast float %7546, %7541
  %7565 = fmul fast float %7546, %7540
  %7566 = fmul fast float %7546, %7539
  %7567 = fmul fast float %7566, %7566
  %7568 = fmul fast float %7565, %7565
  %7569 = fadd fast float %7567, %7568
  %7570 = fmul fast float %7564, %7564
  %7571 = fadd fast float %7569, %7570
  %7572 = call float @dx.op.unary.f32(i32 24, float %7571)  ; Sqrt(value)
  br label %7585

; <label>:7573                                    ; preds = %7523
  %7574 = icmp slt i32 %7552, 0
  br i1 %7574, label %7575, label %7585

; <label>:7575                                    ; preds = %7573
  %7576 = fsub fast float %167, %7264
  %7577 = fsub fast float %168, %7265
  %7578 = fsub fast float %169, %7535
  %7579 = fmul fast float %7576, %7576
  %7580 = fmul fast float %7577, %7577
  %7581 = fadd fast float %7579, %7580
  %7582 = fmul fast float %7578, %7578
  %7583 = fadd fast float %7581, %7582
  %7584 = call float @dx.op.unary.f32(i32 24, float %7583)  ; Sqrt(value)
  br label %7585

; <label>:7585                                    ; preds = %7575, %7573, %7563
  %7586 = phi float [ %7572, %7563 ], [ %7584, %7575 ], [ 0.000000e+00, %7573 ]
  %7587 = and i1 %7530, %7528
  %7588 = fsub fast float -0.000000e+00, %7586
  %7589 = select i1 %7587, float -0.000000e+00, float %7588
  %7590 = fmul fast float %4666, 0x3FF7154760000000
  %7591 = fmul fast float %7590, %7589
  %7592 = fmul fast float %4667, 0x3FF7154760000000
  %7593 = fmul fast float %7592, %7589
  %7594 = fmul fast float %4668, 0x3FF7154760000000
  %7595 = fmul fast float %7594, %7589
  %7596 = call float @dx.op.unary.f32(i32 21, float %7591)  ; Exp(value)
  %7597 = call float @dx.op.unary.f32(i32 21, float %7593)  ; Exp(value)
  %7598 = call float @dx.op.unary.f32(i32 21, float %7595)  ; Exp(value)
  %7599 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7600 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7601 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7602 = fmul fast float %7524, %7599
  %7603 = fmul fast float %7525, %7600
  %7604 = fmul fast float %7526, %7601
  %7605 = fsub fast float %7298, %4865
  %7606 = fsub fast float %7299, %4864
  %7607 = fsub fast float %7300, %4863
  %7608 = call float @dx.op.dot3.f32(i32 55, float %7605, float %7606, float %7607, float %7605, float %7606, float %7607)  ; Dot3(ax,ay,az,bx,by,bz)
  %7609 = call float @dx.op.unary.f32(i32 25, float %7608)  ; Rsqrt(value)
  %7610 = fmul fast float %7609, %7605
  %7611 = fmul fast float %7609, %7606
  %7612 = fmul fast float %7609, %7607
  %7613 = call float @dx.op.dot3.f32(i32 55, float %7298, float %7299, float %7300, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4861, float %4860, float %7610, float %7611, float %7612)  ; Dot3(ax,ay,az,bx,by,bz)
  %7615 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7616 = fmul fast float %7615, %7305
  %7617 = fmul fast float %7615, %7615
  %7618 = fmul fast float %7617, %4905
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = fmul fast float %7616, %7619
  %7621 = bitcast float %7295 to i32
  %7622 = ashr i32 %7621, 1
  %7623 = sub nsw i32 1597463007, %7622
  %7624 = bitcast i32 %7623 to float
  %7625 = fmul fast float %7624, %7292
  %7626 = fmul fast float %7624, %7293
  %7627 = fmul fast float %7624, %7294
  %7628 = fsub fast float %7625, %4865
  %7629 = fsub fast float %7626, %4864
  %7630 = fsub fast float %7627, %4863
  %7631 = call float @dx.op.dot3.f32(i32 55, float %7628, float %7629, float %7630, float %7628, float %7629, float %7630)  ; Dot3(ax,ay,az,bx,by,bz)
  %7632 = call float @dx.op.unary.f32(i32 25, float %7631)  ; Rsqrt(value)
  %7633 = fmul fast float %7628, %7632
  %7634 = fmul fast float %7629, %7632
  %7635 = fmul fast float %7630, %7632
  %7636 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %7633, float %7634, float %7635)  ; Dot3(ax,ay,az,bx,by,bz)
  %7637 = fmul fast float %7636, %7636
  %7638 = call float @dx.op.unary.f32(i32 6, float %7613)  ; FAbs(value)
  %7639 = fsub fast float 1.000000e+00, %4898
  %7640 = fmul fast float %4880, %4880
  %7641 = fmul fast float %7640, %7639
  %7642 = fadd fast float %7641, %4898
  %7643 = bitcast float %7642 to i32
  %7644 = ashr i32 %7643, 1
  %7645 = add nsw i32 %7644, 532487669
  %7646 = bitcast i32 %7645 to float
  %7647 = fadd fast float %7646, %4880
  %7648 = fmul fast float %4898, %7637
  %7649 = fsub fast float 1.000000e+00, %7637
  %7650 = fadd fast float %7649, %7648
  %7651 = fmul fast float %7638, %7638
  %7652 = fmul fast float %7651, %7639
  %7653 = fadd fast float %7652, %4898
  %7654 = bitcast float %7653 to i32
  %7655 = ashr i32 %7654, 1
  %7656 = add nsw i32 %7655, 532487669
  %7657 = bitcast i32 %7656 to float
  %7658 = fadd fast float %7657, %7638
  %7659 = fmul fast float %7650, %7650
  %7660 = fmul fast float %7659, %7647
  %7661 = fmul fast float %7660, %7658
  %7662 = fdiv fast float 1.000000e+00, %7661
  %7663 = bitcast float %4898 to i32
  %7664 = sitofp i32 %7663 to float
  %7665 = fmul fast float %7664, 0x3FE7F73180000000
  %7666 = fadd fast float %7665, 0x41AFE27C40000000
  %7667 = fptosi float %7666 to i32
  %7668 = bitcast i32 %7667 to float
  %7669 = fmul fast float %7261, 0x3FD80E9D60000000
  %7670 = fmul fast float %7669, %7624
  %7671 = fadd fast float %7668, %7670
  %7672 = bitcast float %7671 to i32
  %7673 = sub nsw i32 2129859010, %7672
  %7674 = bitcast i32 %7673 to float
  %7675 = fmul fast float %4898, %7662
  %7676 = fmul fast float %7675, %7668
  %7677 = fmul fast float %7676, %7674
  %7678 = call float @dx.op.unary.f32(i32 6, float %7614)  ; FAbs(value)
  %7679 = fsub fast float 1.000000e+00, %7678
  %7680 = bitcast float %7679 to i32
  %7681 = sitofp i32 %7680 to float
  %7682 = fmul fast float %7681, 5.000000e+00
  %7683 = fadd fast float %7682, 0xC1EFBF8940000000
  %7684 = fptosi float %7683 to i32
  %7685 = bitcast i32 %7684 to float
  %7686 = fsub fast float 1.000000e+00, %4866
  %7687 = fsub fast float 1.000000e+00, %4867
  %7688 = fsub fast float 1.000000e+00, %4878
  %7689 = fmul fast float %7685, %7686
  %7690 = fmul fast float %7685, %7687
  %7691 = fmul fast float %7685, %7688
  %7692 = fadd fast float %7689, %4866
  %7693 = fadd fast float %7690, %4867
  %7694 = fadd fast float %7691, %4878
  br i1 %5017, label %7695, label %7718

; <label>:7695                                    ; preds = %7585
  %7696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4263, float %7678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = fadd fast float %7697, -5.000000e-01
  %7701 = fadd fast float %7698, -5.000000e-01
  %7702 = fadd fast float %7699, -5.000000e-01
  %7703 = fmul fast float %4866, 4.000000e+00
  %7704 = fmul fast float %7703, %7686
  %7705 = fmul fast float %7704, %7700
  %7706 = fmul fast float %4867, 4.000000e+00
  %7707 = fmul fast float %7706, %7687
  %7708 = fmul fast float %7707, %7701
  %7709 = fmul fast float %4878, 4.000000e+00
  %7710 = fmul fast float %7709, %7688
  %7711 = fmul fast float %7710, %7702
  %7712 = fadd fast float %7705, %7692
  %7713 = fadd fast float %7708, %7693
  %7714 = fadd fast float %7711, %7694
  %7715 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7716 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  br label %7718

; <label>:7718                                    ; preds = %7695, %7585
  %7719 = phi float [ %7715, %7695 ], [ %7692, %7585 ]
  %7720 = phi float [ %7716, %7695 ], [ %7693, %7585 ]
  %7721 = phi float [ %7717, %7695 ], [ %7694, %7585 ]
  %7722 = fmul fast float %7613, 9.843750e-01
  %7723 = fadd fast float %7722, 7.812500e-03
  %7724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7723, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7725 = extractvalue %dx.types.ResRet.f32 %7724, 2
  %7726 = extractvalue %dx.types.ResRet.f32 %7724, 3
  %7727 = fmul fast float %7725, %4866
  %7728 = fmul fast float %7725, %4867
  %7729 = fmul fast float %7725, %4878
  %7730 = fadd fast float %7727, %7726
  %7731 = fadd fast float %7728, %7726
  %7732 = fadd fast float %7729, %7726
  br i1 %5017, label %7733, label %7756

; <label>:7733                                    ; preds = %7718
  %7734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4263, float %7613, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7735 = extractvalue %dx.types.ResRet.f32 %7734, 0
  %7736 = extractvalue %dx.types.ResRet.f32 %7734, 1
  %7737 = extractvalue %dx.types.ResRet.f32 %7734, 2
  %7738 = fadd fast float %7735, -5.000000e-01
  %7739 = fadd fast float %7736, -5.000000e-01
  %7740 = fadd fast float %7737, -5.000000e-01
  %7741 = fmul fast float %4866, 4.000000e+00
  %7742 = fmul fast float %7741, %7686
  %7743 = fmul fast float %7742, %7738
  %7744 = fmul fast float %4867, 4.000000e+00
  %7745 = fmul fast float %7744, %7687
  %7746 = fmul fast float %7745, %7739
  %7747 = fmul fast float %4878, 4.000000e+00
  %7748 = fmul fast float %7747, %7688
  %7749 = fmul fast float %7748, %7740
  %7750 = fadd fast float %7743, %7730
  %7751 = fadd fast float %7746, %7731
  %7752 = fadd fast float %7749, %7732
  %7753 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7754 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7755 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  br label %7756

; <label>:7756                                    ; preds = %7733, %7718
  %7757 = phi float [ %7753, %7733 ], [ %7730, %7718 ]
  %7758 = phi float [ %7754, %7733 ], [ %7731, %7718 ]
  %7759 = phi float [ %7755, %7733 ], [ %7732, %7718 ]
  %7760 = call float @dx.op.binary.f32(i32 35, float %7758, float %7759)  ; FMax(a,b)
  %7761 = call float @dx.op.binary.f32(i32 35, float %7757, float %7760)  ; FMax(a,b)
  %7762 = fsub fast float 1.000000e+00, %7761
  %7763 = fmul fast float %7719, %7677
  %7764 = fmul fast float %7720, %7677
  %7765 = fmul fast float %7721, %7677
  %7766 = fsub fast float 1.000000e+00, %7614
  %7767 = bitcast float %7766 to i32
  %7768 = sitofp i32 %7767 to float
  %7769 = fmul fast float %7768, 5.000000e+00
  %7770 = fadd fast float %7769, 0xC1EFBF8940000000
  %7771 = fptosi float %7770 to i32
  %7772 = bitcast i32 %7771 to float
  %7773 = fmul fast float %7772, %4264
  %7774 = fmul fast float %7762, %7773
  %7775 = fmul fast float %7774, %5559
  %7776 = fmul fast float %7774, %5560
  %7777 = fmul fast float %7774, %5561
  %7778 = fadd fast float %7775, %7763
  %7779 = fadd fast float %7776, %7764
  %7780 = fadd fast float %7777, %7765
  %7781 = fmul fast float %7602, %4260
  %7782 = fmul fast float %7781, %7620
  %7783 = fmul fast float %7782, %7762
  %7784 = fmul fast float %7603, %4260
  %7785 = fmul fast float %7784, %7620
  %7786 = fmul fast float %7785, %7762
  %7787 = fmul fast float %7604, %4260
  %7788 = fmul fast float %7787, %7620
  %7789 = fmul fast float %7788, %7762
  %7790 = fadd fast float %7783, %7235
  %7791 = fadd fast float %7786, %7236
  %7792 = fadd fast float %7789, %7237
  %7793 = fmul fast float %7782, %7778
  %7794 = fmul fast float %7785, %7779
  %7795 = fmul fast float %7788, %7780
  %7796 = fadd fast float %7793, %7232
  %7797 = fadd fast float %7794, %7233
  %7798 = fadd fast float %7795, %7234
  br label %7364

; <label>:7799                                    ; preds = %7364
  br label %7800

; <label>:7800                                    ; preds = %7799, %7198
  %7801 = phi float [ %7200, %7198 ], [ %7365, %7799 ]
  %7802 = phi float [ %7201, %7198 ], [ %7366, %7799 ]
  %7803 = phi float [ %7202, %7198 ], [ %7367, %7799 ]
  %7804 = phi float [ %7203, %7198 ], [ %7368, %7799 ]
  %7805 = phi float [ %7204, %7198 ], [ %7369, %7799 ]
  %7806 = phi float [ %7205, %7198 ], [ %7370, %7799 ]
  %7807 = add i32 %7199, 1
  %7808 = icmp ugt i32 %7807, %7195
  br i1 %7808, label %7809, label %7198

; <label>:7809                                    ; preds = %7800
  br label %7810

; <label>:7810                                    ; preds = %7809, %7148, %7138
  %7811 = phi float [ %7139, %7138 ], [ %7139, %7148 ], [ %7801, %7809 ]
  %7812 = phi float [ %7140, %7138 ], [ %7140, %7148 ], [ %7802, %7809 ]
  %7813 = phi float [ %7141, %7138 ], [ %7141, %7148 ], [ %7803, %7809 ]
  %7814 = phi float [ %7142, %7138 ], [ %7142, %7148 ], [ %7804, %7809 ]
  %7815 = phi float [ %7143, %7138 ], [ %7143, %7148 ], [ %7805, %7809 ]
  %7816 = phi float [ %7144, %7138 ], [ %7144, %7148 ], [ %7806, %7809 ]
  %7817 = fmul fast float %4260, %4260
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7820 = fmul fast float %7819, %5565
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7823 = fsub fast float 1.000000e+00, %4268
  %7824 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7825 = fadd fast float %7816, %4266
  %7826 = fmul fast float %7825, %4268
  %7827 = fmul fast float %7824, %7822
  %7828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.f32 %7828, 3
  %7830 = fmul fast float %7814, %4869
  %7831 = fmul fast float %7815, %4870
  %7832 = fmul fast float %7816, %4871
  %7833 = fcmp fast ogt float %92, %189
  %7834 = and i1 %7833, %4671
  %7835 = or i1 %4677, %7834
  %7836 = icmp eq i32 %4670, 2
  %7837 = fcmp fast ole float %92, %189
  %7838 = and i1 %7837, %7836
  %7839 = or i1 %7838, %7835
  br i1 %7834, label %7840, label %8097

; <label>:7840                                    ; preds = %7810
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 3
  %7844 = fmul fast float %7842, %104
  %7845 = fmul fast float %7843, %105
  %7846 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7847 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7846, float %7847, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7849 = extractvalue %dx.types.ResRet.f32 %7848, 0
  %7850 = extractvalue %dx.types.ResRet.f32 %7848, 1
  %7851 = extractvalue %dx.types.ResRet.f32 %7848, 2
  %7852 = extractvalue %dx.types.ResRet.f32 %7848, 3
  %7853 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7846, float %7847, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.ResRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.ResRet.f32 %7853, 2
  %7857 = extractvalue %dx.types.ResRet.f32 %7853, 3
  %7858 = call float @dx.op.binary.f32(i32 35, float %7850, float %7851)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 35, float %7849, float %7858)  ; FMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 35, float %7859, float %7852)  ; FMax(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7855, float %7856)  ; FMin(a,b)
  %7862 = call float @dx.op.binary.f32(i32 36, float %7854, float %7861)  ; FMin(a,b)
  %7863 = call float @dx.op.binary.f32(i32 36, float %7862, float %7857)  ; FMin(a,b)
  %7864 = fmul fast float %7860, 2.550000e+02
  %7865 = fadd fast float %7864, 0x3F70101020000000
  %7866 = fptoui float %7865 to i32
  %7867 = fmul fast float %7863, 2.550000e+02
  %7868 = fadd fast float %7867, 0x3F70101020000000
  %7869 = fptoui float %7868 to i32
  %7870 = icmp ult i32 %7866, %7869
  br i1 %7870, label %7871, label %8039

; <label>:7871                                    ; preds = %7840
  %7872 = fcmp fast ogt float %91, 9.843750e-01
  %7873 = fadd fast float %92, -4.000000e+00
  %7874 = select i1 %7872, float -4.000000e+00, float %7873
  %7875 = call float @dx.op.binary.f32(i32 35, float %7874, float 0.000000e+00)  ; FMax(a,b)
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 0
  %7878 = fadd fast float %7877, %7875
  %7879 = extractvalue %dx.types.CBufRet.f32 %7876, 2
  %7880 = fmul fast float %7878, %7879
  %7881 = call float @dx.op.unary.f32(i32 23, float %7880)  ; Log(value)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7876, 3
  %7883 = fmul fast float %7882, %7881
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7886 = fmul fast float %7883, %7885
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = uitofp i32 %7866 to float
  %7889 = uitofp i32 %7869 to float
  %7890 = fadd fast float %7888, 5.000000e-01
  %7891 = fadd fast float %7889, 5.000000e-01
  %7892 = fmul fast float %7885, %7890
  %7893 = fmul fast float %7885, %7891
  %7894 = fadd fast float %7892, 0x3F0FFB4800000000
  %7895 = fadd fast float %7893, 0xBF0FFB4800000000
  %7896 = call float @dx.op.binary.f32(i32 35, float %7887, float %7894)  ; FMax(a,b)
  %7897 = call float @dx.op.binary.f32(i32 36, float %7896, float %7895)  ; FMin(a,b)
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7901 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7902 = fmul fast float %7899, %7897
  %7903 = fadd fast float %7901, %7902
  %7904 = fadd fast float %7901, %7900
  %7905 = fsub fast float %7899, %7900
  %7906 = fadd fast float %7905, %7901
  %7907 = call float @dx.op.binary.f32(i32 35, float %7903, float %7904)  ; FMax(a,b)
  %7908 = call float @dx.op.binary.f32(i32 36, float %7907, float %7906)  ; FMin(a,b)
  %7909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7846, float %7847, float %7908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7910 = extractvalue %dx.types.ResRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.ResRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.ResRet.f32 %7909, 2
  %7913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.i32 %7913, 0
  %7915 = extractvalue %dx.types.CBufRet.i32 %7913, 1
  %7916 = uitofp i32 %7914 to float
  %7917 = uitofp i32 %7915 to float
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7921 = fmul fast float %7916, %7846
  %7922 = fmul fast float %7917, %7847
  %7923 = fadd fast float %7921, -5.000000e-01
  %7924 = fadd fast float %7922, -5.000000e-01
  %7925 = call float @dx.op.unary.f32(i32 22, float %7923)  ; Frc(value)
  %7926 = call float @dx.op.unary.f32(i32 22, float %7924)  ; Frc(value)
  %7927 = fmul fast float %7925, %7925
  %7928 = fmul fast float %7927, %7925
  %7929 = fsub fast float 3.000000e+00, %7925
  %7930 = fmul fast float %7927, %7929
  %7931 = fmul fast float %7925, 3.000000e+00
  %7932 = fmul fast float %7928, 3.000000e+00
  %7933 = fmul fast float %7927, 6.000000e+00
  %7934 = fsub fast float %7932, %7933
  %7935 = fadd fast float %7934, 4.000000e+00
  %7936 = fmul fast float %7935, 0x3FC5555560000000
  %7937 = fmul fast float %7928, -3.000000e+00
  %7938 = fadd fast float %7927, %7925
  %7939 = fmul fast float %7938, 3.000000e+00
  %7940 = fadd fast float %7937, 1.000000e+00
  %7941 = fadd fast float %7940, %7939
  %7942 = fmul fast float %7928, 0x3FC5555560000000
  %7943 = fmul fast float %7926, %7926
  %7944 = fmul fast float %7943, %7926
  %7945 = fsub fast float 3.000000e+00, %7926
  %7946 = fmul fast float %7943, %7945
  %7947 = fmul fast float %7926, 3.000000e+00
  %7948 = fmul fast float %7944, 3.000000e+00
  %7949 = fmul fast float %7943, 6.000000e+00
  %7950 = fsub fast float %7948, %7949
  %7951 = fadd fast float %7950, 4.000000e+00
  %7952 = fmul fast float %7951, 0x3FC5555560000000
  %7953 = fmul fast float %7944, -3.000000e+00
  %7954 = fadd fast float %7943, %7926
  %7955 = fmul fast float %7954, 3.000000e+00
  %7956 = fadd fast float %7953, 1.000000e+00
  %7957 = fadd fast float %7956, %7955
  %7958 = fmul fast float %7944, 0x3FC5555560000000
  %7959 = fadd fast float %7925, 1.000000e+00
  %7960 = fsub fast float 1.000000e+00, %7931
  %7961 = fadd fast float %7960, %7930
  %7962 = fadd fast float %7961, %7935
  %7963 = fmul fast float %7962, 0x3FC5555560000000
  %7964 = fdiv fast float %7936, %7963
  %7965 = fsub fast float %7959, %7964
  %7966 = fsub fast float 1.000000e+00, %7925
  %7967 = fadd fast float %7941, %7928
  %7968 = fmul fast float %7967, 0x3FC5555560000000
  %7969 = fdiv fast float %7942, %7968
  %7970 = fadd fast float %7966, %7969
  %7971 = fadd fast float %7926, 1.000000e+00
  %7972 = fsub fast float 1.000000e+00, %7947
  %7973 = fadd fast float %7972, %7946
  %7974 = fadd fast float %7973, %7951
  %7975 = fmul fast float %7974, 0x3FC5555560000000
  %7976 = fdiv fast float %7952, %7975
  %7977 = fsub fast float %7971, %7976
  %7978 = fsub fast float 1.000000e+00, %7926
  %7979 = fadd fast float %7957, %7944
  %7980 = fmul fast float %7979, 0x3FC5555560000000
  %7981 = fdiv fast float %7958, %7980
  %7982 = fadd fast float %7981, %7978
  %7983 = fmul fast float %7965, %7919
  %7984 = fsub fast float %7846, %7983
  %7985 = fmul fast float %7970, %7919
  %7986 = fadd fast float %7985, %7846
  %7987 = fmul fast float %7982, %7920
  %7988 = fadd fast float %7987, %7847
  %7989 = fmul fast float %7977, %7920
  %7990 = fsub fast float %7847, %7989
  %7991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7984, float %7990, float %7908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7992 = extractvalue %dx.types.ResRet.f32 %7991, 0
  %7993 = extractvalue %dx.types.ResRet.f32 %7991, 1
  %7994 = extractvalue %dx.types.ResRet.f32 %7991, 2
  %7995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7986, float %7990, float %7908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7996 = extractvalue %dx.types.ResRet.f32 %7995, 0
  %7997 = extractvalue %dx.types.ResRet.f32 %7995, 1
  %7998 = extractvalue %dx.types.ResRet.f32 %7995, 2
  %7999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7984, float %7988, float %7908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8000 = extractvalue %dx.types.ResRet.f32 %7999, 0
  %8001 = extractvalue %dx.types.ResRet.f32 %7999, 1
  %8002 = extractvalue %dx.types.ResRet.f32 %7999, 2
  %8003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7986, float %7988, float %7908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8004 = extractvalue %dx.types.ResRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.ResRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.ResRet.f32 %8003, 2
  %8007 = fsub fast float %8000, %7992
  %8008 = fsub fast float %8001, %7993
  %8009 = fsub fast float %8002, %7994
  %8010 = fmul fast float %8007, %7980
  %8011 = fmul fast float %8008, %7980
  %8012 = fmul fast float %8009, %7980
  %8013 = fadd fast float %8010, %7992
  %8014 = fadd fast float %8011, %7993
  %8015 = fadd fast float %8012, %7994
  %8016 = fsub fast float %8004, %7996
  %8017 = fsub fast float %8005, %7997
  %8018 = fsub fast float %8006, %7998
  %8019 = fmul fast float %8016, %7980
  %8020 = fmul fast float %8017, %7980
  %8021 = fmul fast float %8018, %7980
  %8022 = fsub fast float %7996, %8013
  %8023 = fadd fast float %8022, %8019
  %8024 = fsub fast float %7997, %8014
  %8025 = fadd fast float %8024, %8020
  %8026 = fsub fast float %7998, %8015
  %8027 = fadd fast float %8026, %8021
  %8028 = fmul fast float %8023, %7968
  %8029 = fmul fast float %8025, %7968
  %8030 = fmul fast float %8027, %7968
  %8031 = fadd fast float %8028, %8013
  %8032 = fadd fast float %8029, %8014
  %8033 = fadd fast float %8030, %8015
  %8034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8034, 1
  %8036 = fmul fast float %8031, %8035
  %8037 = fmul fast float %8032, %8035
  %8038 = fmul fast float %8033, %8035
  br label %8039

; <label>:8039                                    ; preds = %7871, %7840
  %8040 = phi float [ %7910, %7871 ], [ 1.000000e+00, %7840 ]
  %8041 = phi float [ %7911, %7871 ], [ 1.000000e+00, %7840 ]
  %8042 = phi float [ %7912, %7871 ], [ 1.000000e+00, %7840 ]
  %8043 = phi float [ %8036, %7871 ], [ 0.000000e+00, %7840 ]
  %8044 = phi float [ %8037, %7871 ], [ 0.000000e+00, %7840 ]
  %8045 = phi float [ %8038, %7871 ], [ 0.000000e+00, %7840 ]
  %8046 = fmul fast float %8043, %7817
  %8047 = fmul fast float %8044, %7817
  %8048 = fmul fast float %8045, %7817
  %8049 = call float @dx.op.dot3.f32(i32 55, float %8040, float %8041, float %8042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8050 = call float @dx.op.dot3.f32(i32 55, float %8046, float %8047, float %8048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8051 = select i1 %229, float %8049, float %8040
  %8052 = select i1 %229, float %8049, float %8041
  %8053 = select i1 %229, float 1.000000e+00, float %8042
  %8054 = select i1 %229, float %8050, float %8046
  %8055 = select i1 %229, float 0.000000e+00, float %8047
  %8056 = select i1 %229, float 0.000000e+00, float %8048
  %8057 = fmul fast float %8051, %7830
  %8058 = fmul fast float %8052, %7831
  %8059 = fmul fast float %8053, %7832
  %8060 = fadd fast float %8057, %8054
  %8061 = fadd fast float %8058, %8055
  %8062 = fadd fast float %8056, %8059
  %8063 = fmul fast float %8051, %7811
  %8064 = fmul fast float %8052, %7812
  %8065 = fmul fast float %8053, %7813
  %8066 = fmul fast float %137, %7842
  %8067 = fmul fast float %139, %7843
  %8068 = fsub fast float 1.000000e+00, %8066
  %8069 = fsub fast float 1.000000e+00, %8067
  %8070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8071 = extractvalue %dx.types.CBufRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.CBufRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.CBufRet.f32 %8070, 2
  %8074 = fmul fast float %8068, %8071
  %8075 = fmul fast float %8068, %8072
  %8076 = fmul fast float %8068, %8073
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8081 = fmul fast float %8069, %8078
  %8082 = fmul fast float %8069, %8079
  %8083 = fmul fast float %8069, %8080
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = fadd fast float %8081, %8085
  %8089 = fadd fast float %8088, %8074
  %8090 = fadd fast float %8082, %8086
  %8091 = fadd fast float %8090, %8075
  %8092 = fadd fast float %8083, %8087
  %8093 = fadd fast float %8092, %8076
  %8094 = fmul fast float %8089, %189
  %8095 = fmul fast float %8091, %189
  %8096 = fmul fast float %8093, %189
  br label %8097

; <label>:8097                                    ; preds = %8039, %7810
  %8098 = phi float [ %8094, %8039 ], [ %167, %7810 ]
  %8099 = phi float [ %8095, %8039 ], [ %168, %7810 ]
  %8100 = phi float [ %8096, %8039 ], [ %169, %7810 ]
  %8101 = phi float [ %189, %8039 ], [ %92, %7810 ]
  %8102 = phi float [ %8060, %8039 ], [ %7830, %7810 ]
  %8103 = phi float [ %8061, %8039 ], [ %7831, %7810 ]
  %8104 = phi float [ %8062, %8039 ], [ %7832, %7810 ]
  %8105 = phi float [ %8063, %8039 ], [ %7811, %7810 ]
  %8106 = phi float [ %8064, %8039 ], [ %7812, %7810 ]
  %8107 = phi float [ %8065, %8039 ], [ %7813, %7810 ]
  %8108 = phi float [ %8040, %8039 ], [ 1.000000e+00, %7810 ]
  br i1 %7839, label %9263, label %8109

; <label>:8109                                    ; preds = %8097
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8114 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = extractvalue %dx.types.CBufRet.f32 %8115, 3
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.CBufRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8129 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 3
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 3
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8136 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8137 = fcmp fast olt float %8136, -5.000000e-01
  %8138 = call float @dx.op.dot3.f32(i32 55, float %8098, float %8099, float %8100, float %8098, float %8099, float %8100)  ; Dot3(ax,ay,az,bx,by,bz)
  %8139 = call float @dx.op.unary.f32(i32 25, float %8138)  ; Rsqrt(value)
  %8140 = fmul fast float %8139, %8138
  %8141 = fmul fast float %8139, %8098
  %8142 = fmul fast float %8139, %8099
  %8143 = fmul fast float %8139, %8100
  %8144 = fadd fast float %8140, %8114
  %8145 = call float @dx.op.dot3.f32(i32 55, float %8141, float %8142, float %8143, float %8111, float %8112, float %8113)  ; Dot3(ax,ay,az,bx,by,bz)
  %8146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.i32 %8146, 1
  %8148 = and i32 %8147, 1
  %8149 = icmp ne i32 %8148, 0
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8152 = fcmp fast ogt float %8151, 0.000000e+00
  %8153 = and i1 %8149, %8152
  br i1 %8153, label %8154, label %8560, !dx.controlflow.hints !134

; <label>:8154                                    ; preds = %8109
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.f32 %8159, 2
  %8161 = fsub fast float %8158, %8160
  %8162 = and i32 %8147, 2
  %8163 = extractvalue %dx.types.CBufRet.i32 %8146, 0
  %8164 = call i32 @dx.op.binary.i32(i32 40, i32 %8163, i32 3)  ; UMin(a,b)
  %8165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8165, 0
  %8167 = extractvalue %dx.types.CBufRet.f32 %8165, 1
  %8168 = extractvalue %dx.types.CBufRet.f32 %8159, 0
  %8169 = extractvalue %dx.types.CBufRet.f32 %8159, 1
  %8170 = fsub fast float %8166, %8168
  %8171 = fsub fast float %8167, %8169
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8174 = fcmp fast ogt float %8173, 0.000000e+00
  %8175 = fsub fast float -0.000000e+00, %8170
  %8176 = fsub fast float -0.000000e+00, %8171
  %8177 = call float @dx.op.dot2.f32(i32 54, float %8141, float %8142, float %8141, float %8142)  ; Dot2(ax,ay,bx,by)
  %8178 = call float @dx.op.dot2.f32(i32 54, float %8141, float %8142, float %8175, float %8176)  ; Dot2(ax,ay,bx,by)
  %8179 = fmul fast float %8178, 2.000000e+00
  %8180 = call float @dx.op.dot2.f32(i32 54, float %8175, float %8176, float %8175, float %8176)  ; Dot2(ax,ay,bx,by)
  %8181 = fmul fast float %8173, %8173
  %8182 = fsub fast float %8180, %8181
  %8183 = fmul fast float %8179, %8179
  %8184 = fmul fast float %8177, 4.000000e+00
  %8185 = fmul fast float %8184, %8182
  %8186 = fsub fast float %8183, %8185
  %8187 = fcmp fast ogt float %8186, 0.000000e+00
  br i1 %8187, label %8188, label %8203

; <label>:8188                                    ; preds = %8154
  %8189 = fcmp fast ogt float %8179, 0.000000e+00
  %8190 = call float @dx.op.unary.f32(i32 24, float %8186)  ; Sqrt(value)
  %8191 = fsub fast float -0.000000e+00, %8190
  %8192 = select i1 %8189, float %8190, float %8191
  %8193 = fadd fast float %8192, %8179
  %8194 = fmul float %8193, -5.000000e-01
  %8195 = fdiv fast float %8194, %8177
  %8196 = call float @dx.op.binary.f32(i32 35, float %8195, float 0.000000e+00)  ; FMax(a,b)
  %8197 = call float @dx.op.binary.f32(i32 36, float %8140, float %8196)  ; FMin(a,b)
  %8198 = fdiv fast float %8182, %8194
  %8199 = call float @dx.op.binary.f32(i32 35, float %8198, float 0.000000e+00)  ; FMax(a,b)
  %8200 = call float @dx.op.binary.f32(i32 36, float %8140, float %8199)  ; FMin(a,b)
  %8201 = call float @dx.op.binary.f32(i32 36, float %8197, float %8200)  ; FMin(a,b)
  %8202 = call float @dx.op.binary.f32(i32 35, float %8197, float %8200)  ; FMax(a,b)
  br label %8203

; <label>:8203                                    ; preds = %8188, %8154
  %8204 = phi float [ %8202, %8188 ], [ -1.000000e+00, %8154 ]
  %8205 = phi float [ %8201, %8188 ], [ -1.000000e+00, %8154 ]
  %8206 = phi i1 [ true, %8188 ], [ false, %8154 ]
  %8207 = and i1 %8174, %8206
  br i1 %8207, label %8208, label %8210

; <label>:8208                                    ; preds = %8203
  %8209 = fcmp fast oeq float %8205, %8204
  br i1 %8209, label %8513, label %8211

; <label>:8210                                    ; preds = %8203
  br i1 %8174, label %8513, label %8211

; <label>:8211                                    ; preds = %8210, %8208
  %8212 = phi float [ %8140, %8210 ], [ %8204, %8208 ]
  %8213 = phi float [ 0.000000e+00, %8210 ], [ %8205, %8208 ]
  %8214 = icmp ne i32 %8162, 0
  %8215 = fmul fast float %8212, %8143
  %8216 = fadd fast float %8215, %8156
  %8217 = fmul fast float %8216, %8212
  %8218 = select i1 %8214, float 0.000000e+00, float %8217
  %8219 = fcmp fast oeq float %8143, 0.000000e+00
  %8220 = fdiv fast float %8161, %8143
  %8221 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8220)  ; FMax(a,b)
  %8222 = select i1 %8219, float %8212, float %8221
  %8223 = call float @dx.op.binary.f32(i32 36, float %8212, float %8222)  ; FMin(a,b)
  %8224 = fcmp fast ogt float %8143, 0.000000e+00
  %8225 = fcmp fast olt float %8161, 0.000000e+00
  br i1 %8224, label %8226, label %8283

; <label>:8226                                    ; preds = %8211
  %8227 = icmp eq i32 %8162, 0
  br i1 %8225, label %8228, label %8272

; <label>:8228                                    ; preds = %8226
  %8229 = select i1 %8227, float %8212, float 0.000000e+00
  %8230 = fsub fast float -0.000000e+00, %8229
  %8231 = call float @dx.op.unary.f32(i32 6, float %8230)  ; FAbs(value)
  %8232 = fmul fast float %8229, %8143
  %8233 = fadd fast float %8232, %8156
  %8234 = fmul fast float %8231, %8233
  %8235 = fsub fast float %8218, %8234
  %8236 = fsub fast float %8212, %8231
  %8237 = select i1 %8227, float %8236, float 0.000000e+00
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.CBufRet.f32 %8242, 2
  %8246 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 3
  %8249 = call float @dx.op.binary.f32(i32 36, float %8235, float %8248)  ; FMin(a,b)
  %8250 = fmul fast float %8246, %8237
  %8251 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  %8252 = fsub fast float %8243, %8239
  %8253 = fsub fast float %8244, %8240
  %8254 = fsub fast float %8245, %8241
  %8255 = fmul fast float %8251, %8252
  %8256 = fmul fast float %8251, %8253
  %8257 = fmul fast float %8251, %8254
  %8258 = fadd fast float %8255, %8239
  %8259 = fadd fast float %8256, %8240
  %8260 = fadd fast float %8257, %8241
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8264 = fadd fast float %8263, %8262
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8267 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8268 = fadd fast float %8267, %8266
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = fmul fast float %8265, %8249
  %8271 = fmul fast float %8270, %8269
  br label %8513

; <label>:8272                                    ; preds = %8226
  br i1 %8227, label %8273, label %8294

; <label>:8273                                    ; preds = %8272
  %8274 = call float @dx.op.binary.f32(i32 36, float %8223, float %8213)  ; FMin(a,b)
  %8275 = fsub fast float %8223, %8274
  %8276 = fsub fast float %8275, %8212
  %8277 = call float @dx.op.unary.f32(i32 6, float %8276)  ; FAbs(value)
  %8278 = fadd fast float %8275, %8212
  %8279 = fmul fast float %8278, %8143
  %8280 = fadd fast float %8279, %8156
  %8281 = fmul fast float %8280, %8277
  %8282 = fsub fast float %8218, %8281
  br label %8294

; <label>:8283                                    ; preds = %8211
  br i1 %8225, label %8284, label %8294

; <label>:8284                                    ; preds = %8283
  %8285 = call float @dx.op.binary.f32(i32 35, float %8213, float %8223)  ; FMax(a,b)
  %8286 = icmp eq i32 %8162, 0
  %8287 = select i1 %8286, float %8223, float 0.000000e+00
  %8288 = fsub fast float -0.000000e+00, %8287
  %8289 = call float @dx.op.unary.f32(i32 6, float %8288)  ; FAbs(value)
  %8290 = fmul fast float %8287, %8143
  %8291 = fadd fast float %8290, %8156
  %8292 = fmul fast float %8289, %8291
  %8293 = fsub fast float %8218, %8292
  br label %8294

; <label>:8294                                    ; preds = %8284, %8283, %8273, %8272
  %8295 = phi float [ %8213, %8272 ], [ %8213, %8273 ], [ %8285, %8284 ], [ %8213, %8283 ]
  %8296 = phi float [ 0.000000e+00, %8272 ], [ %8277, %8273 ], [ %8289, %8284 ], [ 0.000000e+00, %8283 ]
  %8297 = phi float [ %8218, %8272 ], [ %8282, %8273 ], [ %8293, %8284 ], [ %8218, %8283 ]
  %8298 = phi float [ %8223, %8272 ], [ %8223, %8273 ], [ %8212, %8284 ], [ %8212, %8283 ]
  %8299 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8299, align 4, !tbaa !121, !noalias !135
  %8300 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8300, align 4, !tbaa !121, !noalias !135
  %8301 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8301, align 4, !tbaa !121, !noalias !135
  %8302 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8302, align 4, !tbaa !121, !noalias !135
  %8303 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8303, align 4, !tbaa !121, !noalias !135
  %8304 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8304, align 4, !tbaa !121, !noalias !135
  %8305 = icmp sgt i32 %8164, 0
  br i1 %8305, label %8306, label %8367

; <label>:8306                                    ; preds = %8294
  br label %8307

; <label>:8307                                    ; preds = %8356, %8306
  %8308 = phi i32 [ %8357, %8356 ], [ 0, %8306 ]
  %8309 = phi i32 [ %8358, %8356 ], [ 0, %8306 ]
  %8310 = add nuw i32 %8309, 171
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8310)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 0
  %8313 = extractvalue %dx.types.CBufRet.f32 %8311, 1
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 0
  %8316 = extractvalue %dx.types.CBufRet.f32 %8314, 1
  %8317 = fsub fast float %8312, %8315
  %8318 = fsub fast float %8313, %8316
  %8319 = extractvalue %dx.types.CBufRet.f32 %8311, 2
  %8320 = fsub fast float -0.000000e+00, %8317
  %8321 = fsub fast float -0.000000e+00, %8318
  %8322 = call float @dx.op.dot2.f32(i32 54, float %8141, float %8142, float %8320, float %8321)  ; Dot2(ax,ay,bx,by)
  %8323 = fmul fast float %8322, 2.000000e+00
  %8324 = call float @dx.op.dot2.f32(i32 54, float %8320, float %8321, float %8320, float %8321)  ; Dot2(ax,ay,bx,by)
  %8325 = fmul fast float %8319, %8319
  %8326 = fsub fast float %8324, %8325
  %8327 = fmul fast float %8323, %8323
  %8328 = fmul fast float %8184, %8326
  %8329 = fsub fast float %8327, %8328
  %8330 = fcmp fast ogt float %8329, 0.000000e+00
  br i1 %8330, label %8331, label %8346

; <label>:8331                                    ; preds = %8307
  %8332 = fcmp fast ogt float %8323, 0.000000e+00
  %8333 = call float @dx.op.unary.f32(i32 24, float %8329)  ; Sqrt(value)
  %8334 = fsub fast float -0.000000e+00, %8333
  %8335 = select i1 %8332, float %8333, float %8334
  %8336 = fadd fast float %8335, %8323
  %8337 = fmul float %8336, -5.000000e-01
  %8338 = fdiv fast float %8337, %8177
  %8339 = call float @dx.op.binary.f32(i32 35, float %8338, float 0.000000e+00)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 36, float %8212, float %8339)  ; FMin(a,b)
  %8341 = fdiv fast float %8326, %8337
  %8342 = call float @dx.op.binary.f32(i32 35, float %8341, float 0.000000e+00)  ; FMax(a,b)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8212, float %8342)  ; FMin(a,b)
  %8344 = call float @dx.op.binary.f32(i32 36, float %8340, float %8343)  ; FMin(a,b)
  %8345 = call float @dx.op.binary.f32(i32 35, float %8340, float %8343)  ; FMax(a,b)
  br label %8346

; <label>:8346                                    ; preds = %8331, %8307
  %8347 = phi float [ %8345, %8331 ], [ -1.000000e+00, %8307 ]
  %8348 = phi float [ %8344, %8331 ], [ -1.000000e+00, %8307 ]
  %8349 = phi i1 [ true, %8331 ], [ false, %8307 ]
  br i1 %8349, label %8350, label %8356

; <label>:8350                                    ; preds = %8346
  %8351 = call float @dx.op.binary.f32(i32 35, float %8295, float %8348)  ; FMax(a,b)
  %8352 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8309
  store float %8351, float* %8352, align 4, !tbaa !121, !noalias !135
  %8353 = call float @dx.op.binary.f32(i32 35, float %8295, float %8347)  ; FMax(a,b)
  %8354 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8309
  store float %8353, float* %8354, align 4, !tbaa !121, !noalias !135
  %8355 = add nsw i32 %8308, 1
  br label %8356

; <label>:8356                                    ; preds = %8350, %8346
  %8357 = phi i32 [ %8355, %8350 ], [ %8308, %8346 ]
  %8358 = add nuw nsw i32 %8309, 1
  %8359 = icmp eq i32 %8358, %8164
  br i1 %8359, label %8360, label %8307

; <label>:8360                                    ; preds = %8356
  %8361 = load float, float* %8301, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8362 = load float, float* %8300, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  %8363 = load float, float* %8299, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  %8364 = load float, float* %8304, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8365 = load float, float* %8303, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  %8366 = load float, float* %8302, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  br label %8367

; <label>:8367                                    ; preds = %8360, %8294
  %8368 = phi float [ -1.000000e+00, %8294 ], [ %8366, %8360 ]
  %8369 = phi float [ -1.000000e+00, %8294 ], [ %8365, %8360 ]
  %8370 = phi float [ -1.000000e+00, %8294 ], [ %8364, %8360 ]
  %8371 = phi float [ -1.000000e+00, %8294 ], [ %8363, %8360 ]
  %8372 = phi float [ -1.000000e+00, %8294 ], [ %8362, %8360 ]
  %8373 = phi float [ -1.000000e+00, %8294 ], [ %8361, %8360 ]
  %8374 = phi i32 [ 0, %8294 ], [ %8357, %8360 ]
  %8375 = call float @dx.op.binary.f32(i32 36, float %8372, float %8373)  ; FMin(a,b)
  %8376 = call float @dx.op.binary.f32(i32 36, float %8371, float %8375)  ; FMin(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %8371, float %8372)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8377, float %8373)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8371, float %8372)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %8379, float %8378)  ; FMax(a,b)
  %8381 = call float @dx.op.binary.f32(i32 35, float %8372, float %8373)  ; FMax(a,b)
  %8382 = call float @dx.op.binary.f32(i32 35, float %8371, float %8381)  ; FMax(a,b)
  store float %8376, float* %8299, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  store float %8380, float* %8300, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8382, float* %8301, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8383 = call float @dx.op.binary.f32(i32 36, float %8369, float %8370)  ; FMin(a,b)
  %8384 = call float @dx.op.binary.f32(i32 36, float %8368, float %8383)  ; FMin(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8368, float %8369)  ; FMax(a,b)
  %8386 = call float @dx.op.binary.f32(i32 36, float %8385, float %8370)  ; FMin(a,b)
  %8387 = call float @dx.op.binary.f32(i32 36, float %8368, float %8369)  ; FMin(a,b)
  %8388 = call float @dx.op.binary.f32(i32 35, float %8387, float %8386)  ; FMax(a,b)
  %8389 = call float @dx.op.binary.f32(i32 35, float %8369, float %8370)  ; FMax(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8368, float %8389)  ; FMax(a,b)
  store float %8384, float* %8302, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  store float %8388, float* %8303, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  store float %8390, float* %8304, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8391 = sub nsw i32 3, %8374
  %8392 = icmp sgt i32 %8391, 2
  br i1 %8392, label %8393, label %8431

; <label>:8393                                    ; preds = %8367
  %8394 = icmp eq i32 %8162, 0
  %8395 = fsub fast float %8212, %8296
  %8396 = select i1 %8394, float %8395, float %8296
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.CBufRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.CBufRet.f32 %8401, 2
  %8405 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8408 = call float @dx.op.binary.f32(i32 36, float %8297, float %8407)  ; FMin(a,b)
  %8409 = fmul fast float %8405, %8396
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = fsub fast float %8402, %8398
  %8412 = fsub fast float %8403, %8399
  %8413 = fsub fast float %8404, %8400
  %8414 = fmul fast float %8410, %8411
  %8415 = fmul fast float %8410, %8412
  %8416 = fmul fast float %8410, %8413
  %8417 = fadd fast float %8414, %8398
  %8418 = fadd fast float %8415, %8399
  %8419 = fadd fast float %8416, %8400
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 0
  %8422 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8423 = fadd fast float %8422, %8421
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %8426 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8427 = fadd fast float %8426, %8425
  %8428 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8429 = fmul fast float %8424, %8408
  %8430 = fmul fast float %8429, %8428
  br label %8513

; <label>:8431                                    ; preds = %8367
  %8432 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8391
  %8433 = load float, float* %8432, align 4, !tbaa !121, !noalias !135
  %8434 = fcmp fast olt float %8433, %8298
  %8435 = icmp sgt i32 %8374, 0
  %8436 = and i1 %8435, %8434
  br i1 %8436, label %8437, label %8474

; <label>:8437                                    ; preds = %8431
  br label %8438

; <label>:8438                                    ; preds = %8467, %8437
  %8439 = phi float [ %8468, %8467 ], [ %8296, %8437 ]
  %8440 = phi float [ %8469, %8467 ], [ %8297, %8437 ]
  %8441 = phi float [ %8449, %8467 ], [ %8433, %8437 ]
  %8442 = phi i32 [ %8446, %8467 ], [ %8391, %8437 ]
  %8443 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8442
  %8444 = load float, float* %8443, align 4, !tbaa !121, !noalias !135
  %8445 = icmp slt i32 %8442, 2
  %8446 = add nsw i32 %8442, 1
  %8447 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8446
  %8448 = load float, float* %8447, align 4, !tbaa !121, !noalias !135
  %8449 = select i1 %8445, float %8448, float %8212
  %8450 = call float @dx.op.binary.f32(i32 36, float %8449, float %8444)  ; FMin(a,b)
  %8451 = call float @dx.op.binary.f32(i32 36, float %8298, float %8450)  ; FMin(a,b)
  %8452 = icmp eq i32 %8162, 0
  %8453 = fadd fast float %8451, %8441
  %8454 = fmul fast float %8453, %8143
  %8455 = fadd fast float %8454, %8156
  br i1 %8452, label %8461, label %8456

; <label>:8456                                    ; preds = %8438
  %8457 = fsub fast float %8451, %8441
  %8458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8457)  ; FMax(a,b)
  %8459 = fmul fast float %8458, %8455
  %8460 = fadd fast float %8459, %8440
  br label %8467

; <label>:8461                                    ; preds = %8438
  %8462 = fsub fast float %8441, %8451
  %8463 = call float @dx.op.unary.f32(i32 6, float %8462)  ; FAbs(value)
  %8464 = fadd fast float %8463, %8439
  %8465 = fmul fast float %8463, %8455
  %8466 = fsub fast float %8440, %8465
  br label %8467

; <label>:8467                                    ; preds = %8461, %8456
  %8468 = phi float [ %8458, %8456 ], [ %8464, %8461 ]
  %8469 = phi float [ %8460, %8456 ], [ %8466, %8461 ]
  %8470 = fcmp fast olt float %8449, %8298
  %8471 = icmp slt i32 %8446, 3
  %8472 = and i1 %8471, %8470
  br i1 %8472, label %8438, label %8473

; <label>:8473                                    ; preds = %8467
  br label %8474

; <label>:8474                                    ; preds = %8473, %8431
  %8475 = phi float [ %8296, %8431 ], [ %8468, %8473 ]
  %8476 = phi float [ %8297, %8431 ], [ %8469, %8473 ]
  %8477 = fsub fast float %8212, %8475
  %8478 = select i1 %8214, float %8475, float %8477
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 0
  %8481 = extractvalue %dx.types.CBufRet.f32 %8479, 1
  %8482 = extractvalue %dx.types.CBufRet.f32 %8479, 2
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8490 = call float @dx.op.binary.f32(i32 36, float %8476, float %8489)  ; FMin(a,b)
  %8491 = fmul fast float %8487, %8478
  %8492 = call float @dx.op.unary.f32(i32 7, float %8491)  ; Saturate(value)
  %8493 = fsub fast float %8484, %8480
  %8494 = fsub fast float %8485, %8481
  %8495 = fsub fast float %8486, %8482
  %8496 = fmul fast float %8492, %8493
  %8497 = fmul fast float %8492, %8494
  %8498 = fmul fast float %8492, %8495
  %8499 = fadd fast float %8496, %8480
  %8500 = fadd fast float %8497, %8481
  %8501 = fadd fast float %8498, %8482
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = fadd fast float %8504, %8503
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8508 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8509 = fadd fast float %8508, %8507
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  %8511 = fmul fast float %8506, %8490
  %8512 = fmul fast float %8511, %8510
  br label %8513

; <label>:8513                                    ; preds = %8474, %8393, %8228, %8210, %8208
  %8514 = phi float [ %8237, %8228 ], [ %8396, %8393 ], [ %8478, %8474 ], [ 0.000000e+00, %8208 ], [ 0.000000e+00, %8210 ]
  %8515 = phi float [ %8271, %8228 ], [ %8430, %8393 ], [ %8512, %8474 ], [ 0.000000e+00, %8208 ], [ 0.000000e+00, %8210 ]
  %8516 = phi float [ %8258, %8228 ], [ %8417, %8393 ], [ %8499, %8474 ], [ 0.000000e+00, %8208 ], [ 0.000000e+00, %8210 ]
  %8517 = phi float [ %8259, %8228 ], [ %8418, %8393 ], [ %8500, %8474 ], [ 0.000000e+00, %8208 ], [ 0.000000e+00, %8210 ]
  %8518 = phi float [ %8260, %8228 ], [ %8419, %8393 ], [ %8501, %8474 ], [ 0.000000e+00, %8208 ], [ 0.000000e+00, %8210 ]
  %8519 = fmul fast float %8151, %8515
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = fsub fast float %8158, %8521
  %8523 = fcmp fast olt float %8519, -2.000000e+01
  %8524 = call float @dx.op.unary.f32(i32 21, float %8519)  ; Exp(value)
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 3
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8530 = fmul fast float %8527, %8522
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fsub fast float 1.000000e+00, %8531
  %8533 = fmul fast float %8143, 5.000000e-01
  %8534 = fadd fast float %8533, 5.000000e-01
  %8535 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8536 = fsub fast float 1.000000e+00, %8535
  %8537 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8532)  ; FMax(a,b)
  %8538 = fdiv fast float %8536, %8537
  %8539 = fsub fast float %8522, %8100
  %8540 = call float @dx.op.unary.f32(i32 6, float %8539)  ; FAbs(value)
  %8541 = fmul fast float %8540, %8526
  %8542 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8543 = fsub fast float 1.000000e+00, %8541
  %8544 = fmul fast float %8543, %8542
  %8545 = fadd fast float %8544, %8541
  %8546 = fmul fast float %8529, %8522
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  %8548 = fsub fast float 1.000000e+00, %8545
  %8549 = fmul fast float %8548, %8547
  %8550 = fadd fast float %8549, %8545
  %8551 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8552 = fadd fast float %8524, -1.000000e+00
  %8553 = select i1 %8523, float -1.000000e+00, float %8552
  %8554 = fmul fast float %8551, %8553
  %8555 = fadd fast float %8554, 1.000000e+00
  %8556 = fsub fast float -0.000000e+00, %8554
  %8557 = fmul fast float %8516, %8556
  %8558 = fmul fast float %8517, %8556
  %8559 = fmul fast float %8518, %8556
  br label %8560

; <label>:8560                                    ; preds = %8513, %8109
  %8561 = phi float [ %8514, %8513 ], [ 0.000000e+00, %8109 ]
  %8562 = phi float [ %8555, %8513 ], [ 1.000000e+00, %8109 ]
  %8563 = phi float [ %8557, %8513 ], [ 0.000000e+00, %8109 ]
  %8564 = phi float [ %8558, %8513 ], [ 0.000000e+00, %8109 ]
  %8565 = phi float [ %8559, %8513 ], [ 0.000000e+00, %8109 ]
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8568 = fsub fast float 1.000000e+00, %8562
  %8569 = fmul fast float %8568, %8144
  %8570 = fmul fast float %8569, %8567
  %8571 = fsub fast float %8144, %8570
  br i1 %8137, label %8572, label %8601, !dx.controlflow.hints !171

; <label>:8572                                    ; preds = %8560
  %8573 = fmul fast float %8145, %8134
  %8574 = fadd fast float %8573, %8135
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fmul fast float %8116, %8571
  %8577 = fsub fast float -0.000000e+00, %8576
  %8578 = fmul fast float %8117, %8571
  %8579 = fsub fast float -0.000000e+00, %8578
  %8580 = call float @dx.op.unary.f32(i32 21, float %8577)  ; Exp(value)
  %8581 = call float @dx.op.unary.f32(i32 21, float %8579)  ; Exp(value)
  %8582 = call float @dx.op.binary.f32(i32 35, float %8124, float %8580)  ; FMax(a,b)
  %8583 = call float @dx.op.binary.f32(i32 35, float %8124, float %8581)  ; FMax(a,b)
  %8584 = fsub fast float %8583, %8582
  %8585 = fmul fast float %8584, %8575
  %8586 = fadd fast float %8585, %8582
  %8587 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8588 = fsub fast float %8121, %8126
  %8589 = fsub fast float %8122, %8127
  %8590 = fsub fast float %8123, %8128
  %8591 = fmul fast float %8575, %8588
  %8592 = fmul fast float %8575, %8589
  %8593 = fmul fast float %8575, %8590
  %8594 = fadd fast float %8591, %8126
  %8595 = fadd fast float %8592, %8127
  %8596 = fadd fast float %8593, %8128
  %8597 = fsub fast float 1.000000e+00, %8587
  %8598 = fmul fast float %8597, %8594
  %8599 = fmul fast float %8597, %8595
  %8600 = fmul fast float %8597, %8596
  br label %8660

; <label>:8601                                    ; preds = %8560
  %8602 = fmul fast float %8571, %8133
  %8603 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8604 = fsub fast float 2.000000e+00, %8603
  %8605 = fmul fast float %8603, 9.921875e-01
  %8606 = fmul fast float %8605, %8604
  %8607 = fadd fast float %8606, 3.906250e-03
  %8608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8607, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8609 = extractvalue %dx.types.ResRet.f32 %8608, 0
  %8610 = fsub fast float %8603, %8609
  %8611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8610)  ; FMax(a,b)
  %8612 = fmul fast float %8119, %8100
  %8613 = call float @dx.op.unary.f32(i32 6, float %8612)  ; FAbs(value)
  %8614 = fcmp fast ogt float %8613, 0x3EB0C6F7A0000000
  br i1 %8614, label %8615, label %8621, !dx.controlflow.hints !172

; <label>:8615                                    ; preds = %8601
  %8616 = fmul fast float %8612, 0xBFF7154760000000
  %8617 = call float @dx.op.unary.f32(i32 21, float %8616)  ; Exp(value)
  %8618 = fsub fast float 1.000000e+00, %8617
  %8619 = fdiv fast float %8618, %8612
  %8620 = fmul fast float %8619, %8129
  br label %8621

; <label>:8621                                    ; preds = %8615, %8601
  %8622 = phi float [ %8620, %8615 ], [ %8129, %8601 ]
  %8623 = fadd fast float %8622, %8131
  %8624 = fmul fast float %8623, %8611
  %8625 = fmul fast float %8116, %8624
  %8626 = fsub fast float -0.000000e+00, %8625
  %8627 = fmul fast float %8117, %8624
  %8628 = fsub fast float -0.000000e+00, %8627
  %8629 = fmul fast float %8118, %8624
  %8630 = fsub fast float -0.000000e+00, %8629
  %8631 = call float @dx.op.unary.f32(i32 21, float %8626)  ; Exp(value)
  %8632 = call float @dx.op.unary.f32(i32 21, float %8628)  ; Exp(value)
  %8633 = call float @dx.op.unary.f32(i32 21, float %8630)  ; Exp(value)
  %8634 = fmul fast float %8145, %8145
  %8635 = fadd fast float %8634, 1.000000e+00
  %8636 = fmul fast float %8635, 0x3FAE8EC8A0000000
  %8637 = fmul fast float %8636, %8126
  %8638 = fmul fast float %8636, %8127
  %8639 = fmul fast float %8636, %8128
  %8640 = fmul fast float %8145, %8124
  %8641 = fsub fast float 1.000000e+00, %8640
  %8642 = fmul fast float %8124, %8124
  %8643 = fsub fast float 1.000000e+00, %8642
  %8644 = fmul fast float %8643, 0x3FB45F3060000000
  %8645 = fmul fast float %8641, %8641
  %8646 = fdiv fast float 1.000000e+00, %8645
  %8647 = fmul fast float %8644, %8646
  %8648 = fmul fast float %8647, %8121
  %8649 = fmul fast float %8647, %8122
  %8650 = fmul fast float %8647, %8123
  %8651 = fadd fast float %8648, %8637
  %8652 = fadd fast float %8649, %8638
  %8653 = fadd fast float %8650, %8639
  %8654 = fsub fast float 1.000000e+00, %8631
  %8655 = fsub fast float 1.000000e+00, %8632
  %8656 = fsub fast float 1.000000e+00, %8633
  %8657 = fmul fast float %8651, %8654
  %8658 = fmul fast float %8652, %8655
  %8659 = fmul fast float %8653, %8656
  br label %8660

; <label>:8660                                    ; preds = %8621, %8572
  %8661 = phi float [ %8598, %8572 ], [ %8657, %8621 ]
  %8662 = phi float [ %8599, %8572 ], [ %8658, %8621 ]
  %8663 = phi float [ %8600, %8572 ], [ %8659, %8621 ]
  %8664 = phi float [ %8587, %8572 ], [ %8631, %8621 ]
  %8665 = phi float [ %8587, %8572 ], [ %8632, %8621 ]
  %8666 = phi float [ %8587, %8572 ], [ %8633, %8621 ]
  br i1 %8153, label %8667, label %8865, !dx.controlflow.hints !173

; <label>:8667                                    ; preds = %8660
  %8668 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8669 = fmul fast float %8668, %8568
  %8670 = fsub fast float %8563, %8661
  %8671 = fsub fast float %8564, %8662
  %8672 = fsub fast float %8565, %8663
  %8673 = fmul fast float %8669, %8670
  %8674 = fmul fast float %8669, %8671
  %8675 = fmul fast float %8669, %8672
  %8676 = fadd fast float %8673, %8661
  %8677 = fadd fast float %8674, %8662
  %8678 = fadd fast float %8675, %8663
  %8679 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8664)  ; FMax(a,b)
  %8680 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8665)  ; FMax(a,b)
  %8681 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8666)  ; FMax(a,b)
  %8682 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8562)  ; FMax(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8561, float %8571)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8683)  ; FMax(a,b)
  %8685 = fdiv fast float %8561, %8684
  %8686 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8687 = fdiv fast float %8571, %8684
  %8688 = call float @dx.op.unary.f32(i32 7, float %8687)  ; Saturate(value)
  %8689 = fcmp fast une float %8682, 1.000000e+00
  br i1 %8689, label %8690, label %8703, !dx.controlflow.hints !174

; <label>:8690                                    ; preds = %8667
  %8691 = call float @dx.op.unary.f32(i32 23, float %8682)  ; Log(value)
  %8692 = fmul fast float %8691, 0x3FE62E4300000000
  %8693 = fmul fast float %8563, %8692
  %8694 = fsub fast float -0.000000e+00, %8693
  %8695 = fmul fast float %8564, %8692
  %8696 = fsub fast float -0.000000e+00, %8695
  %8697 = fmul fast float %8565, %8692
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = fsub fast float 1.000000e+00, %8682
  %8700 = fdiv fast float %8694, %8699
  %8701 = fdiv fast float %8696, %8699
  %8702 = fdiv fast float %8698, %8699
  br label %8703

; <label>:8703                                    ; preds = %8690, %8667
  %8704 = phi float [ %8700, %8690 ], [ %8563, %8667 ]
  %8705 = phi float [ %8701, %8690 ], [ %8564, %8667 ]
  %8706 = phi float [ %8702, %8690 ], [ %8565, %8667 ]
  %8707 = phi float [ %8692, %8690 ], [ 0.000000e+00, %8667 ]
  %8708 = fcmp fast une float %8679, 1.000000e+00
  br i1 %8708, label %8709, label %8716, !dx.controlflow.hints !175

; <label>:8709                                    ; preds = %8703
  %8710 = call float @dx.op.unary.f32(i32 23, float %8679)  ; Log(value)
  %8711 = fmul fast float %8710, 0x3FE62E4300000000
  %8712 = fmul fast float %8676, %8711
  %8713 = fsub fast float -0.000000e+00, %8712
  %8714 = fsub fast float 1.000000e+00, %8679
  %8715 = fdiv fast float %8713, %8714
  br label %8716

; <label>:8716                                    ; preds = %8709, %8703
  %8717 = phi float [ %8715, %8709 ], [ %8676, %8703 ]
  %8718 = phi float [ %8711, %8709 ], [ 0.000000e+00, %8703 ]
  %8719 = fcmp fast une float %8680, 1.000000e+00
  br i1 %8719, label %8720, label %8727, !dx.controlflow.hints !175

; <label>:8720                                    ; preds = %8716
  %8721 = call float @dx.op.unary.f32(i32 23, float %8680)  ; Log(value)
  %8722 = fmul fast float %8721, 0x3FE62E4300000000
  %8723 = fmul fast float %8677, %8722
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = fsub fast float 1.000000e+00, %8680
  %8726 = fdiv fast float %8724, %8725
  br label %8727

; <label>:8727                                    ; preds = %8720, %8716
  %8728 = phi float [ %8726, %8720 ], [ %8677, %8716 ]
  %8729 = phi float [ %8722, %8720 ], [ 0.000000e+00, %8716 ]
  %8730 = fcmp fast une float %8681, 1.000000e+00
  br i1 %8730, label %8731, label %8738, !dx.controlflow.hints !175

; <label>:8731                                    ; preds = %8727
  %8732 = call float @dx.op.unary.f32(i32 23, float %8681)  ; Log(value)
  %8733 = fmul fast float %8732, 0x3FE62E4300000000
  %8734 = fmul fast float %8678, %8733
  %8735 = fsub fast float -0.000000e+00, %8734
  %8736 = fsub fast float 1.000000e+00, %8681
  %8737 = fdiv fast float %8735, %8736
  br label %8738

; <label>:8738                                    ; preds = %8731, %8727
  %8739 = phi float [ %8737, %8731 ], [ %8678, %8727 ]
  %8740 = phi float [ %8733, %8731 ], [ 0.000000e+00, %8727 ]
  %8741 = fmul fast float %8704, %8688
  %8742 = fmul fast float %8705, %8688
  %8743 = fmul fast float %8706, %8688
  %8744 = fmul fast float %8707, %8688
  %8745 = fmul fast float %8717, %8686
  %8746 = fmul fast float %8728, %8686
  %8747 = fmul fast float %8739, %8686
  %8748 = fmul fast float %8718, %8686
  %8749 = fmul fast float %8729, %8686
  %8750 = fmul fast float %8740, %8686
  %8751 = fadd fast float %8745, %8741
  %8752 = fadd fast float %8746, %8742
  %8753 = fadd fast float %8747, %8743
  %8754 = fadd fast float %8748, %8744
  %8755 = fadd fast float %8749, %8744
  %8756 = fadd fast float %8750, %8744
  %8757 = fcmp fast une float %8754, 0.000000e+00
  br i1 %8757, label %8758, label %8765, !dx.controlflow.hints !176

; <label>:8758                                    ; preds = %8738
  %8759 = fmul fast float %8754, 0x3FF7154760000000
  %8760 = call float @dx.op.unary.f32(i32 21, float %8759)  ; Exp(value)
  %8761 = fsub fast float 1.000000e+00, %8760
  %8762 = fmul fast float %8751, %8761
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = fdiv fast float %8763, %8754
  br label %8765

; <label>:8765                                    ; preds = %8758, %8738
  %8766 = phi float [ %8760, %8758 ], [ 1.000000e+00, %8738 ]
  %8767 = phi float [ %8764, %8758 ], [ %8751, %8738 ]
  %8768 = fcmp fast une float %8755, 0.000000e+00
  br i1 %8768, label %8769, label %8776, !dx.controlflow.hints !176

; <label>:8769                                    ; preds = %8765
  %8770 = fmul fast float %8755, 0x3FF7154760000000
  %8771 = call float @dx.op.unary.f32(i32 21, float %8770)  ; Exp(value)
  %8772 = fsub fast float 1.000000e+00, %8771
  %8773 = fmul fast float %8752, %8772
  %8774 = fsub fast float -0.000000e+00, %8773
  %8775 = fdiv fast float %8774, %8755
  br label %8776

; <label>:8776                                    ; preds = %8769, %8765
  %8777 = phi float [ %8771, %8769 ], [ 1.000000e+00, %8765 ]
  %8778 = phi float [ %8775, %8769 ], [ %8752, %8765 ]
  %8779 = fcmp fast une float %8756, 0.000000e+00
  br i1 %8779, label %8780, label %8787, !dx.controlflow.hints !176

; <label>:8780                                    ; preds = %8776
  %8781 = fmul fast float %8756, 0x3FF7154760000000
  %8782 = call float @dx.op.unary.f32(i32 21, float %8781)  ; Exp(value)
  %8783 = fsub fast float 1.000000e+00, %8782
  %8784 = fmul fast float %8753, %8783
  %8785 = fsub fast float -0.000000e+00, %8784
  %8786 = fdiv fast float %8785, %8756
  br label %8787

; <label>:8787                                    ; preds = %8780, %8776
  %8788 = phi float [ %8782, %8780 ], [ 1.000000e+00, %8776 ]
  %8789 = phi float [ %8786, %8780 ], [ %8753, %8776 ]
  %8790 = fcmp fast ogt float %8686, %8688
  br i1 %8790, label %8791, label %8811

; <label>:8791                                    ; preds = %8787
  %8792 = fsub fast float 1.000000e+00, %8688
  %8793 = fmul fast float %8704, %8792
  %8794 = fmul fast float %8705, %8792
  %8795 = fmul fast float %8706, %8792
  %8796 = fmul fast float %8707, %8792
  %8797 = fcmp fast une float %8796, 0.000000e+00
  br i1 %8797, label %8798, label %8849, !dx.controlflow.hints !177

; <label>:8798                                    ; preds = %8791
  %8799 = fmul fast float %8796, 0x3FF7154760000000
  %8800 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8793, %8801
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = fmul fast float %8794, %8801
  %8805 = fsub fast float -0.000000e+00, %8804
  %8806 = fmul fast float %8795, %8801
  %8807 = fsub fast float -0.000000e+00, %8806
  %8808 = fdiv fast float %8803, %8796
  %8809 = fdiv fast float %8805, %8796
  %8810 = fdiv fast float %8807, %8796
  br label %8849

; <label>:8811                                    ; preds = %8787
  %8812 = fsub fast float 1.000000e+00, %8686
  %8813 = fmul fast float %8717, %8812
  %8814 = fmul fast float %8728, %8812
  %8815 = fmul fast float %8739, %8812
  %8816 = fmul fast float %8718, %8812
  %8817 = fmul fast float %8729, %8812
  %8818 = fmul fast float %8740, %8812
  %8819 = fcmp fast une float %8816, 0.000000e+00
  br i1 %8819, label %8820, label %8827, !dx.controlflow.hints !176

; <label>:8820                                    ; preds = %8811
  %8821 = fmul fast float %8816, 0x3FF7154760000000
  %8822 = call float @dx.op.unary.f32(i32 21, float %8821)  ; Exp(value)
  %8823 = fsub fast float 1.000000e+00, %8822
  %8824 = fmul fast float %8813, %8823
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fdiv fast float %8825, %8816
  br label %8827

; <label>:8827                                    ; preds = %8820, %8811
  %8828 = phi float [ %8826, %8820 ], [ %8813, %8811 ]
  %8829 = phi float [ %8822, %8820 ], [ 1.000000e+00, %8811 ]
  %8830 = fcmp fast une float %8817, 0.000000e+00
  br i1 %8830, label %8831, label %8838, !dx.controlflow.hints !176

; <label>:8831                                    ; preds = %8827
  %8832 = fmul fast float %8817, 0x3FF7154760000000
  %8833 = call float @dx.op.unary.f32(i32 21, float %8832)  ; Exp(value)
  %8834 = fsub fast float 1.000000e+00, %8833
  %8835 = fmul fast float %8814, %8834
  %8836 = fsub fast float -0.000000e+00, %8835
  %8837 = fdiv fast float %8836, %8817
  br label %8838

; <label>:8838                                    ; preds = %8831, %8827
  %8839 = phi float [ %8837, %8831 ], [ %8814, %8827 ]
  %8840 = phi float [ %8833, %8831 ], [ 1.000000e+00, %8827 ]
  %8841 = fcmp fast une float %8818, 0.000000e+00
  br i1 %8841, label %8842, label %8849, !dx.controlflow.hints !176

; <label>:8842                                    ; preds = %8838
  %8843 = fmul fast float %8818, 0x3FF7154760000000
  %8844 = call float @dx.op.unary.f32(i32 21, float %8843)  ; Exp(value)
  %8845 = fsub fast float 1.000000e+00, %8844
  %8846 = fmul fast float %8815, %8845
  %8847 = fsub fast float -0.000000e+00, %8846
  %8848 = fdiv fast float %8847, %8818
  br label %8849

; <label>:8849                                    ; preds = %8842, %8838, %8798, %8791
  %8850 = phi float [ %8848, %8842 ], [ %8810, %8798 ], [ %8795, %8791 ], [ %8815, %8838 ]
  %8851 = phi float [ %8839, %8842 ], [ %8809, %8798 ], [ %8794, %8791 ], [ %8839, %8838 ]
  %8852 = phi float [ %8828, %8842 ], [ %8808, %8798 ], [ %8793, %8791 ], [ %8828, %8838 ]
  %8853 = phi float [ %8844, %8842 ], [ %8800, %8798 ], [ 1.000000e+00, %8791 ], [ 1.000000e+00, %8838 ]
  %8854 = phi float [ %8840, %8842 ], [ %8800, %8798 ], [ 1.000000e+00, %8791 ], [ %8840, %8838 ]
  %8855 = phi float [ %8829, %8842 ], [ %8800, %8798 ], [ 1.000000e+00, %8791 ], [ %8829, %8838 ]
  %8856 = fmul fast float %8855, %8767
  %8857 = fmul fast float %8854, %8778
  %8858 = fmul fast float %8853, %8789
  %8859 = fadd fast float %8856, %8852
  %8860 = fadd fast float %8857, %8851
  %8861 = fadd fast float %8858, %8850
  %8862 = fmul fast float %8855, %8766
  %8863 = fmul fast float %8854, %8777
  %8864 = fmul fast float %8853, %8788
  br label %8865

; <label>:8865                                    ; preds = %8849, %8660
  %8866 = phi float [ %8864, %8849 ], [ %8666, %8660 ]
  %8867 = phi float [ %8863, %8849 ], [ %8665, %8660 ]
  %8868 = phi float [ %8862, %8849 ], [ %8664, %8660 ]
  %8869 = phi float [ %8861, %8849 ], [ %8663, %8660 ]
  %8870 = phi float [ %8860, %8849 ], [ %8662, %8660 ]
  %8871 = phi float [ %8859, %8849 ], [ %8661, %8660 ]
  %8872 = fmul fast float %8871, %7817
  %8873 = fmul fast float %8870, %7817
  %8874 = fmul fast float %8869, %7817
  %8875 = fmul fast float %8868, %8108
  %8876 = call float @dx.op.dot3.f32(i32 55, float %8868, float %8867, float %8866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8877 = call float @dx.op.dot3.f32(i32 55, float %8872, float %8873, float %8874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8878 = select i1 %229, float %8876, float %8868
  %8879 = select i1 %229, float %8876, float %8867
  %8880 = select i1 %229, float 1.000000e+00, float %8866
  %8881 = select i1 %229, float %8877, float %8872
  %8882 = select i1 %229, float 0.000000e+00, float %8873
  %8883 = select i1 %229, float 0.000000e+00, float %8874
  %8884 = fmul fast float %8878, %8102
  %8885 = fmul fast float %8879, %8103
  %8886 = fmul fast float %8880, %8104
  %8887 = fadd fast float %8884, %8881
  %8888 = fadd fast float %8885, %8882
  %8889 = fadd fast float %8883, %8886
  %8890 = fmul fast float %8878, %8105
  %8891 = fmul fast float %8879, %8106
  %8892 = fmul fast float %8880, %8107
  %8893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.i32 %8893, 0
  %8895 = icmp eq i32 %8894, 0
  br i1 %8895, label %9263, label %8896, !dx.controlflow.hints !178

; <label>:8896                                    ; preds = %8865
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 2
  %8899 = extractvalue %dx.types.CBufRet.f32 %8897, 3
  %8900 = fmul fast float %8898, %104
  %8901 = fmul fast float %8899, %105
  %8902 = fmul fast float %8900, 2.000000e+00
  %8903 = fmul fast float %8901, 2.000000e+00
  %8904 = fsub fast float 1.000000e+00, %8902
  %8905 = fsub fast float 1.000000e+00, %8903
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.CBufRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.CBufRet.f32 %8906, 2
  %8910 = fmul fast float %8904, %8907
  %8911 = fmul fast float %8904, %8908
  %8912 = fmul fast float %8904, %8909
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.CBufRet.f32 %8913, 1
  %8916 = extractvalue %dx.types.CBufRet.f32 %8913, 2
  %8917 = fmul fast float %8905, %8914
  %8918 = fmul fast float %8905, %8915
  %8919 = fmul fast float %8905, %8916
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8924 = fadd fast float %8917, %8921
  %8925 = fadd fast float %8924, %8910
  %8926 = fadd fast float %8918, %8922
  %8927 = fadd fast float %8926, %8911
  %8928 = fadd fast float %8919, %8923
  %8929 = fadd fast float %8928, %8912
  %8930 = fmul fast float %8925, %8101
  %8931 = fmul fast float %8927, %8101
  %8932 = fmul fast float %8929, %8101
  %8933 = fmul fast float %8930, %8930
  %8934 = fmul fast float %8931, %8931
  %8935 = fadd fast float %8933, %8934
  %8936 = fmul fast float %8932, %8932
  %8937 = fadd fast float %8935, %8936
  %8938 = call float @dx.op.unary.f32(i32 24, float %8937)  ; Sqrt(value)
  %8939 = extractvalue %dx.types.CBufRet.f32 %7828, 0
  %8940 = fsub fast float %8938, %8939
  %8941 = extractvalue %dx.types.CBufRet.f32 %7828, 2
  %8942 = fmul fast float %8940, %8941
  %8943 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8944 = fadd fast float %8943, -5.000000e-01
  %8945 = fmul fast float %8944, 2.000000e+00
  %8946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.f32 %8946, 2
  %8948 = call float @dx.op.binary.f32(i32 36, float %8947, float %8945)  ; FMin(a,b)
  %8949 = fsub fast float -0.000000e+00, %8947
  %8950 = fcmp fast ogt float %8948, %8949
  br i1 %8950, label %8951, label %9263, !dx.controlflow.hints !179

; <label>:8951                                    ; preds = %8896
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 3
  %8954 = fcmp fast ogt float %8953, 0.000000e+00
  br i1 %8954, label %8955, label %9030, !dx.controlflow.hints !180

; <label>:8955                                    ; preds = %8951
  %8956 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8957 = extractvalue %dx.types.Dimensions %8956, 0
  %8958 = sitofp i32 %8957 to float
  %8959 = extractvalue %dx.types.Dimensions %8956, 1
  %8960 = sitofp i32 %8959 to float
  %8961 = fmul fast float %8900, %8958
  %8962 = fmul fast float %8901, %8960
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 1
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = fptoui float %8965 to i32
  %8967 = fptoui float %8961 to i32
  %8968 = fptoui float %8962 to i32
  %8969 = and i32 %8966, 31
  %8970 = lshr i32 %8967, %8969
  %8971 = lshr i32 %8968, %8969
  %8972 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8966, i32 %8970, i32 %8971, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8973 = extractvalue %dx.types.ResRet.f32 %8972, 0
  %8974 = fcmp fast olt float %8973, -1.000000e+00
  %8975 = fcmp fast ogt float %8973, -1.000000e+00
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 1
  %8978 = select i1 %8975, float %8977, float 1.000000e+00
  %8979 = fadd fast float %8973, 1.000000e+00
  %8980 = fmul fast float %8978, %8979
  %8981 = call float @dx.op.unary.f32(i32 6, float %8980)  ; FAbs(value)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8976, 3
  %8983 = fcmp fast oge float %8981, %8982
  %8984 = select i1 %8983, float 0x4197782600000000, float %8981
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8987 = extractvalue %dx.types.CBufRet.f32 %8985, 1
  %8988 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8989 = select i1 %8974, float %8986, float %8907
  %8990 = select i1 %8974, float %8987, float %8908
  %8991 = select i1 %8974, float %8988, float %8909
  %8992 = fmul fast float %8989, %8904
  %8993 = fmul fast float %8990, %8904
  %8994 = fmul fast float %8991, %8904
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 0
  %8997 = extractvalue %dx.types.CBufRet.f32 %8995, 1
  %8998 = extractvalue %dx.types.CBufRet.f32 %8995, 2
  %8999 = select i1 %8974, float %8996, float %8914
  %9000 = select i1 %8974, float %8997, float %8915
  %9001 = select i1 %8974, float %8998, float %8916
  %9002 = fmul fast float %8999, %8905
  %9003 = fmul fast float %9000, %8905
  %9004 = fmul fast float %9001, %8905
  %9005 = fadd fast float %9002, %8992
  %9006 = fadd fast float %9003, %8993
  %9007 = fadd fast float %9004, %8994
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = select i1 %8974, float %9009, float %8921
  %9013 = select i1 %8974, float %9010, float %8922
  %9014 = select i1 %8974, float %9011, float %8923
  %9015 = fadd fast float %9005, %9012
  %9016 = fadd fast float %9006, %9013
  %9017 = fadd fast float %9007, %9014
  %9018 = fmul fast float %9015, %8984
  %9019 = fmul fast float %9016, %8984
  %9020 = fmul fast float %9017, %8984
  %9021 = fmul fast float %9018, %9018
  %9022 = fmul fast float %9019, %9019
  %9023 = fadd fast float %9021, %9022
  %9024 = fmul fast float %9020, %9020
  %9025 = fadd fast float %9023, %9024
  %9026 = call float @dx.op.unary.f32(i32 24, float %9025)  ; Sqrt(value)
  %9027 = fsub fast float %9026, %8939
  %9028 = fmul fast float %9027, %8941
  %9029 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  br label %9030

; <label>:9030                                    ; preds = %8955, %8951
  %9031 = phi float [ %9029, %8955 ], [ 1.000000e+00, %8951 ]
  %9032 = fmul fast float %8948, 5.000000e-01
  %9033 = fadd fast float %9032, 5.000000e-01
  %9034 = call float @dx.op.unary.f32(i32 22, float %9033)  ; Frc(value)
  %9035 = call float @dx.op.unary.f32(i32 27, float %9034)  ; Round_ni(value)
  %9036 = call float @dx.op.unary.f32(i32 22, float %9034)  ; Frc(value)
  %9037 = fmul fast float %9036, 2.000000e+00
  %9038 = fadd fast float %9037, -1.000000e+00
  %9039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8900, float %8901, float %9035, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9040 = extractvalue %dx.types.ResRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.ResRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.ResRet.f32 %9039, 2
  %9043 = extractvalue %dx.types.ResRet.f32 %9039, 3
  %9044 = fadd fast float %9040, -5.000000e-01
  %9045 = fadd fast float %9042, -5.000000e-01
  %9046 = fmul fast float %9044, 0xBFD5555560000000
  %9047 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9045, float %9046)  ; FMad(a,b,c)
  %9048 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9041, float 0.000000e+00)  ; FMad(a,b,c)
  %9049 = fadd fast float %9048, %9043
  %9050 = fmul fast float %9044, -7.500000e-01
  %9051 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9045, float %9050)  ; FMad(a,b,c)
  %9052 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9041, float 0.000000e+00)  ; FMad(a,b,c)
  %9053 = fadd fast float %9052, %9043
  %9054 = call float @dx.op.binary.f32(i32 35, float %9047, float -1.000000e+00)  ; FMax(a,b)
  %9055 = call float @dx.op.binary.f32(i32 35, float %9049, float -1.000000e+00)  ; FMax(a,b)
  %9056 = call float @dx.op.binary.f32(i32 35, float %9051, float -1.000000e+00)  ; FMax(a,b)
  %9057 = call float @dx.op.binary.f32(i32 35, float %9053, float -1.000000e+00)  ; FMax(a,b)
  %9058 = call float @dx.op.binary.f32(i32 36, float %9054, float 1.000000e+00)  ; FMin(a,b)
  %9059 = call float @dx.op.binary.f32(i32 36, float %9055, float 1.000000e+00)  ; FMin(a,b)
  %9060 = call float @dx.op.binary.f32(i32 36, float %9056, float 1.000000e+00)  ; FMin(a,b)
  %9061 = call float @dx.op.binary.f32(i32 36, float %9057, float 1.000000e+00)  ; FMin(a,b)
  %9062 = fcmp fast olt float %9058, 0x3FEFFF8020000000
  br i1 %9062, label %9063, label %9178, !dx.controlflow.hints !181

; <label>:9063                                    ; preds = %9030
  %9064 = extractvalue %dx.types.CBufRet.f32 %8946, 3
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.CBufRet.f32 %9065, 2
  %9069 = extractvalue %dx.types.CBufRet.f32 %9065, 3
  %9070 = fsub fast float %9066, %9058
  %9071 = fsub fast float %9067, %9059
  %9072 = fsub fast float %9068, %9060
  %9073 = fsub fast float %9069, %9061
  %9074 = fmul fast float %9070, %9064
  %9075 = fmul fast float %9071, %9064
  %9076 = fmul fast float %9072, %9064
  %9077 = fmul fast float %9073, %9064
  %9078 = fadd fast float %9074, %9058
  %9079 = fadd fast float %9075, %9059
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fadd fast float %9076, %9060
  %9082 = fadd fast float %9077, %9061
  %9083 = fmul fast float %9078, %9078
  %9084 = fsub fast float %9079, %9083
  %9085 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9084)  ; FMax(a,b)
  %9086 = fdiv fast float 1.000000e+00, %9085
  %9087 = fmul fast float %9079, %9078
  %9088 = fsub fast float %9081, %9087
  %9089 = fsub fast float %9038, %9078
  %9090 = fmul fast float %9038, %9038
  %9091 = fsub fast float %9090, %9079
  %9092 = fmul fast float %9089, %9086
  %9093 = fmul fast float %9092, %9088
  %9094 = fsub fast float %9091, %9093
  %9095 = fmul fast float %9079, %9079
  %9096 = fsub fast float %9082, %9095
  %9097 = fmul fast float %9088, %9088
  %9098 = fmul fast float %9097, %9086
  %9099 = fsub fast float %9096, %9098
  %9100 = fdiv fast float %9094, %9099
  %9101 = fmul fast float %9088, %9100
  %9102 = fsub fast float %9089, %9101
  %9103 = fmul fast float %9102, %9086
  %9104 = fmul fast float %9103, %9078
  %9105 = fsub fast float 1.000000e+00, %9104
  %9106 = fmul fast float %9079, %9100
  %9107 = fsub fast float %9105, %9106
  %9108 = fmul fast float %9103, %9103
  %9109 = fmul fast float %9100, 4.000000e+00
  %9110 = fmul fast float %9109, %9107
  %9111 = fsub fast float %9108, %9110
  %9112 = call float @dx.op.unary.f32(i32 24, float %9111)  ; Sqrt(value)
  %9113 = fcmp fast oge float %9103, 0.000000e+00
  %9114 = fsub fast float -0.000000e+00, %9112
  %9115 = select i1 %9113, float %9114, float %9112
  %9116 = fsub fast float %9115, %9103
  %9117 = fdiv fast float %9116, %9100
  %9118 = fdiv fast float %9107, %9116
  %9119 = fmul fast float %9117, 5.000000e-01
  %9120 = fmul fast float %9118, 2.000000e+00
  %9121 = select i1 %9113, float %9119, float %9120
  %9122 = select i1 %9113, float %9120, float %9119
  %9123 = call float @dx.op.binary.f32(i32 35, float %9121, float %9122)  ; FMax(a,b)
  %9124 = call float @dx.op.binary.f32(i32 36, float %9121, float %9122)  ; FMin(a,b)
  %9125 = fcmp fast ogt float %9038, %9124
  br i1 %9125, label %9126, label %9136

; <label>:9126                                    ; preds = %9063
  %9127 = fsub fast float %9038, %9124
  %9128 = fsub fast float %9123, %9124
  %9129 = fmul fast float %9127, %9128
  %9130 = fmul fast float %9123, %9038
  %9131 = fadd fast float %9123, %9038
  %9132 = fmul fast float %9131, %9078
  %9133 = fadd fast float %9130, %9079
  %9134 = fsub fast float %9133, %9132
  %9135 = fdiv fast float %9134, %9129
  br label %9136

; <label>:9136                                    ; preds = %9126, %9063
  %9137 = phi float [ %9135, %9126 ], [ 0.000000e+00, %9063 ]
  %9138 = fcmp fast ogt float %9038, %9123
  %9139 = fsub fast float %9038, %9123
  br i1 %9138, label %9140, label %9150

; <label>:9140                                    ; preds = %9136
  %9141 = fsub fast float %9123, %9124
  %9142 = fmul fast float %9141, %9139
  %9143 = fmul fast float %9124, %9038
  %9144 = fadd fast float %9124, %9038
  %9145 = fmul fast float %9144, %9078
  %9146 = fsub fast float %9080, %9143
  %9147 = fadd fast float %9146, %9145
  %9148 = fdiv fast float %9147, %9142
  %9149 = fadd fast float %9148, %9137
  br label %9150

; <label>:9150                                    ; preds = %9140, %9136
  %9151 = phi float [ %9149, %9140 ], [ %9137, %9136 ]
  %9152 = fsub fast float %9038, %9124
  %9153 = fmul fast float %9152, %9139
  %9154 = fmul fast float %9124, %9123
  %9155 = fadd fast float %9124, %9123
  %9156 = fmul fast float %9155, %9078
  %9157 = fadd fast float %9154, %9079
  %9158 = fsub fast float %9157, %9156
  %9159 = fdiv fast float %9158, %9153
  %9160 = call float @dx.op.unary.f32(i32 7, float %9151)  ; Saturate(value)
  %9161 = fcmp fast oeq float %7829, 0.000000e+00
  %9162 = extractvalue %dx.types.CBufRet.f32 %8946, 0
  %9163 = fcmp fast oeq float %9162, 0.000000e+00
  %9164 = or i1 %9161, %9163
  %9165 = fmul fast float %9162, 2.000000e+00
  %9166 = fadd fast float %8947, %8948
  %9167 = fdiv fast float %9166, %9165
  %9168 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9169 = fmul fast float %9168, 2.000000e+00
  %9170 = fsub fast float 3.000000e+00, %9169
  %9171 = fmul fast float %9168, %9168
  %9172 = fmul fast float %9171, %9170
  %9173 = select i1 %9164, float 1.000000e+00, float %9172
  %9174 = fmul fast float %9159, %7829
  %9175 = fadd fast float %9160, %9174
  %9176 = call float @dx.op.unary.f32(i32 7, float %9175)  ; Saturate(value)
  %9177 = fmul fast float %9173, %9176
  br label %9178

; <label>:9178                                    ; preds = %9150, %9030
  %9179 = phi float [ %9177, %9150 ], [ 0.000000e+00, %9030 ]
  %9180 = fsub fast float 1.000000e+00, %9179
  %9181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8900, float %8901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9182 = extractvalue %dx.types.ResRet.f32 %9181, 0
  %9183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.i32 %9183, 2
  %9185 = icmp eq i32 %9184, 0
  br i1 %9185, label %9191, label %9186

; <label>:9186                                    ; preds = %9178
  %9187 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9188 = fadd fast float %9182, -1.000000e+00
  %9189 = fmul fast float %9187, %9188
  %9190 = fadd fast float %9189, 1.000000e+00
  br label %9191

; <label>:9191                                    ; preds = %9186, %9178
  %9192 = phi float [ %9190, %9186 ], [ %9180, %9178 ]
  br i1 %8954, label %9193, label %9211

; <label>:9193                                    ; preds = %9191
  %9194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9195 = extractvalue %dx.types.CBufRet.f32 %9194, 1
  %9196 = fsub fast float %9031, %9195
  %9197 = call float @dx.op.unary.f32(i32 7, float %9196)  ; Saturate(value)
  %9198 = fsub fast float %9031, %8953
  %9199 = call float @dx.op.unary.f32(i32 7, float %9198)  ; Saturate(value)
  %9200 = fsub fast float %9197, %9199
  %9201 = fsub fast float %9033, %9199
  %9202 = fdiv fast float %9201, %9200
  %9203 = call float @dx.op.unary.f32(i32 7, float %9202)  ; Saturate(value)
  %9204 = fmul fast float %9203, 2.000000e+00
  %9205 = fsub fast float 3.000000e+00, %9204
  %9206 = fsub fast float %9182, %9192
  %9207 = fmul fast float %9203, %9203
  %9208 = fmul fast float %9207, %9206
  %9209 = fmul fast float %9208, %9205
  %9210 = fadd fast float %9209, %9192
  br label %9211

; <label>:9211                                    ; preds = %9193, %9191
  %9212 = phi float [ %9210, %9193 ], [ %9192, %9191 ]
  %9213 = call float @dx.op.binary.f32(i32 35, float %9182, float %9212)  ; FMax(a,b)
  %9214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.i32 %9214, 2
  %9216 = and i32 %9215, 1
  %9217 = icmp eq i32 %9216, 0
  %9218 = fcmp fast une float %9213, 1.000000e+00
  %9219 = and i1 %9218, %9217
  br i1 %9219, label %9220, label %9239

; <label>:9220                                    ; preds = %9211
  %9221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8900, float %8901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9222 = extractvalue %dx.types.ResRet.f32 %9221, 0
  %9223 = extractvalue %dx.types.ResRet.f32 %9221, 1
  %9224 = extractvalue %dx.types.ResRet.f32 %9221, 2
  %9225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9226 = extractvalue %dx.types.CBufRet.f32 %9225, 1
  %9227 = fmul fast float %9226, %9222
  %9228 = fmul fast float %9226, %9223
  %9229 = fmul fast float %9226, %9224
  %9230 = fcmp fast ogt float %9182, 0x3FEFFF2E40000000
  %9231 = fsub fast float 1.000000e+00, %9213
  %9232 = fsub fast float 1.000000e+00, %9182
  %9233 = fdiv fast float %9231, %9232
  %9234 = call float @dx.op.unary.f32(i32 7, float %9233)  ; Saturate(value)
  %9235 = select i1 %9230, float 0.000000e+00, float %9234
  %9236 = fmul fast float %9227, %9235
  %9237 = fmul fast float %9228, %9235
  %9238 = fmul fast float %9229, %9235
  br label %9239

; <label>:9239                                    ; preds = %9220, %9211
  %9240 = phi float [ 0.000000e+00, %9211 ], [ %9236, %9220 ]
  %9241 = phi float [ 0.000000e+00, %9211 ], [ %9237, %9220 ]
  %9242 = phi float [ 0.000000e+00, %9211 ], [ %9238, %9220 ]
  %9243 = fmul fast float %9240, %7817
  %9244 = fmul fast float %9241, %7817
  %9245 = fmul fast float %9242, %7817
  %9246 = fmul fast float %9213, %8875
  %9247 = call float @dx.op.dot3.f32(i32 55, float %9213, float %9213, float %9213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9248 = call float @dx.op.dot3.f32(i32 55, float %9243, float %9244, float %9245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9249 = select i1 %229, float %9247, float %9213
  %9250 = select i1 %229, float 1.000000e+00, float %9213
  %9251 = select i1 %229, float %9248, float %9243
  %9252 = select i1 %229, float 0.000000e+00, float %9244
  %9253 = select i1 %229, float 0.000000e+00, float %9245
  %9254 = fmul fast float %9249, %8887
  %9255 = fmul fast float %9249, %8888
  %9256 = fmul fast float %9250, %8889
  %9257 = fadd fast float %9254, %9251
  %9258 = fadd fast float %9255, %9252
  %9259 = fadd fast float %9253, %9256
  %9260 = fmul fast float %9249, %8890
  %9261 = fmul fast float %9249, %8891
  %9262 = fmul fast float %9250, %8892
  br label %9263

; <label>:9263                                    ; preds = %9239, %8896, %8865, %8097
  %9264 = phi float [ %8102, %8097 ], [ %8887, %8865 ], [ %9257, %9239 ], [ %8887, %8896 ]
  %9265 = phi float [ %8103, %8097 ], [ %8888, %8865 ], [ %9258, %9239 ], [ %8888, %8896 ]
  %9266 = phi float [ %8104, %8097 ], [ %8889, %8865 ], [ %9259, %9239 ], [ %8889, %8896 ]
  %9267 = phi float [ %8105, %8097 ], [ %8890, %8865 ], [ %9260, %9239 ], [ %8890, %8896 ]
  %9268 = phi float [ %8106, %8097 ], [ %8891, %8865 ], [ %9261, %9239 ], [ %8891, %8896 ]
  %9269 = phi float [ %8107, %8097 ], [ %8892, %8865 ], [ %9262, %9239 ], [ %8892, %8896 ]
  %9270 = phi float [ %8108, %8097 ], [ %8875, %8865 ], [ %9246, %9239 ], [ %8875, %8896 ]
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 2
  %9273 = extractvalue %dx.types.CBufRet.f32 %9271, 3
  %9274 = fmul fast float %9272, %104
  %9275 = fmul fast float %9273, %105
  %9276 = call float @dx.op.unary.f32(i32 7, float %9274)  ; Saturate(value)
  %9277 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  %9278 = select i1 %7839, i32 2, i32 0
  %9279 = or i32 %9278, 1
  %9280 = uitofp i32 %9279 to float
  %9281 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9276, float %9277, float %9280, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9282 = extractvalue %dx.types.ResRet.f32 %9281, 0
  %9283 = extractvalue %dx.types.ResRet.f32 %9281, 1
  %9284 = extractvalue %dx.types.ResRet.f32 %9281, 2
  %9285 = extractvalue %dx.types.ResRet.f32 %9281, 3
  %9286 = add nuw nsw i32 %9278, 2
  %9287 = uitofp i32 %9286 to float
  %9288 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9276, float %9277, float %9287, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9289 = extractvalue %dx.types.ResRet.f32 %9288, 0
  %9290 = extractvalue %dx.types.ResRet.f32 %9288, 1
  %9291 = extractvalue %dx.types.ResRet.f32 %9288, 2
  %9292 = extractvalue %dx.types.ResRet.f32 %9288, 3
  %9293 = call float @dx.op.binary.f32(i32 35, float %9283, float %9284)  ; FMax(a,b)
  %9294 = call float @dx.op.binary.f32(i32 35, float %9282, float %9293)  ; FMax(a,b)
  %9295 = call float @dx.op.binary.f32(i32 35, float %9294, float %9285)  ; FMax(a,b)
  %9296 = call float @dx.op.binary.f32(i32 36, float %9290, float %9291)  ; FMin(a,b)
  %9297 = call float @dx.op.binary.f32(i32 36, float %9289, float %9296)  ; FMin(a,b)
  %9298 = call float @dx.op.binary.f32(i32 36, float %9297, float %9292)  ; FMin(a,b)
  %9299 = fmul fast float %9295, 2.550000e+02
  %9300 = fadd fast float %9299, 0x3F70101020000000
  %9301 = fptoui float %9300 to i32
  %9302 = fmul fast float %9298, 2.550000e+02
  %9303 = fadd fast float %9302, 0x3F70101020000000
  %9304 = fptoui float %9303 to i32
  %9305 = icmp ult i32 %9301, %9304
  br i1 %9305, label %9306, label %9475

; <label>:9306                                    ; preds = %9263
  %9307 = fcmp fast ogt float %91, 9.843750e-01
  %9308 = fadd fast float %8101, -4.000000e+00
  %9309 = select i1 %9307, float -4.000000e+00, float %9308
  %9310 = call float @dx.op.binary.f32(i32 35, float %9309, float 0.000000e+00)  ; FMax(a,b)
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 0
  %9313 = fadd fast float %9312, %9310
  %9314 = extractvalue %dx.types.CBufRet.f32 %9311, 2
  %9315 = fmul fast float %9313, %9314
  %9316 = call float @dx.op.unary.f32(i32 23, float %9315)  ; Log(value)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9311, 3
  %9318 = fmul fast float %9317, %9316
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9321 = fmul fast float %9318, %9320
  %9322 = call float @dx.op.unary.f32(i32 7, float %9321)  ; Saturate(value)
  %9323 = uitofp i32 %9301 to float
  %9324 = uitofp i32 %9304 to float
  %9325 = fadd fast float %9323, 5.000000e-01
  %9326 = fadd fast float %9324, 5.000000e-01
  %9327 = fmul fast float %9320, %9325
  %9328 = fmul fast float %9320, %9326
  %9329 = fadd fast float %9327, 0x3F0FFB4800000000
  %9330 = fadd fast float %9328, 0xBF0FFB4800000000
  %9331 = call float @dx.op.binary.f32(i32 35, float %9322, float %9329)  ; FMax(a,b)
  %9332 = call float @dx.op.binary.f32(i32 36, float %9331, float %9330)  ; FMin(a,b)
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9336 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9337 = select i1 %7839, float %9336, float 0.000000e+00
  %9338 = fmul fast float %9334, %9332
  %9339 = fadd fast float %9337, %9338
  %9340 = fadd fast float %9337, %9335
  %9341 = fsub fast float %9334, %9335
  %9342 = fadd fast float %9341, %9337
  %9343 = call float @dx.op.binary.f32(i32 35, float %9339, float %9340)  ; FMax(a,b)
  %9344 = call float @dx.op.binary.f32(i32 36, float %9343, float %9342)  ; FMin(a,b)
  %9345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9276, float %9277, float %9344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9346 = extractvalue %dx.types.ResRet.f32 %9345, 0
  %9347 = extractvalue %dx.types.ResRet.f32 %9345, 1
  %9348 = extractvalue %dx.types.ResRet.f32 %9345, 2
  %9349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.i32 %9349, 0
  %9351 = extractvalue %dx.types.CBufRet.i32 %9349, 1
  %9352 = uitofp i32 %9350 to float
  %9353 = uitofp i32 %9351 to float
  %9354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9355 = extractvalue %dx.types.CBufRet.f32 %9354, 0
  %9356 = extractvalue %dx.types.CBufRet.f32 %9354, 1
  %9357 = fmul fast float %9352, %9276
  %9358 = fmul fast float %9353, %9277
  %9359 = fadd fast float %9357, -5.000000e-01
  %9360 = fadd fast float %9358, -5.000000e-01
  %9361 = call float @dx.op.unary.f32(i32 22, float %9359)  ; Frc(value)
  %9362 = call float @dx.op.unary.f32(i32 22, float %9360)  ; Frc(value)
  %9363 = fmul fast float %9361, %9361
  %9364 = fmul fast float %9363, %9361
  %9365 = fsub fast float 3.000000e+00, %9361
  %9366 = fmul fast float %9363, %9365
  %9367 = fmul fast float %9361, 3.000000e+00
  %9368 = fmul fast float %9364, 3.000000e+00
  %9369 = fmul fast float %9363, 6.000000e+00
  %9370 = fsub fast float %9368, %9369
  %9371 = fadd fast float %9370, 4.000000e+00
  %9372 = fmul fast float %9371, 0x3FC5555560000000
  %9373 = fmul fast float %9364, -3.000000e+00
  %9374 = fadd fast float %9363, %9361
  %9375 = fmul fast float %9374, 3.000000e+00
  %9376 = fadd fast float %9373, 1.000000e+00
  %9377 = fadd fast float %9376, %9375
  %9378 = fmul fast float %9364, 0x3FC5555560000000
  %9379 = fmul fast float %9362, %9362
  %9380 = fmul fast float %9379, %9362
  %9381 = fsub fast float 3.000000e+00, %9362
  %9382 = fmul fast float %9379, %9381
  %9383 = fmul fast float %9362, 3.000000e+00
  %9384 = fmul fast float %9380, 3.000000e+00
  %9385 = fmul fast float %9379, 6.000000e+00
  %9386 = fsub fast float %9384, %9385
  %9387 = fadd fast float %9386, 4.000000e+00
  %9388 = fmul fast float %9387, 0x3FC5555560000000
  %9389 = fmul fast float %9380, -3.000000e+00
  %9390 = fadd fast float %9379, %9362
  %9391 = fmul fast float %9390, 3.000000e+00
  %9392 = fadd fast float %9389, 1.000000e+00
  %9393 = fadd fast float %9392, %9391
  %9394 = fmul fast float %9380, 0x3FC5555560000000
  %9395 = fadd fast float %9361, 1.000000e+00
  %9396 = fsub fast float 1.000000e+00, %9367
  %9397 = fadd fast float %9396, %9366
  %9398 = fadd fast float %9397, %9371
  %9399 = fmul fast float %9398, 0x3FC5555560000000
  %9400 = fdiv fast float %9372, %9399
  %9401 = fsub fast float %9395, %9400
  %9402 = fsub fast float 1.000000e+00, %9361
  %9403 = fadd fast float %9377, %9364
  %9404 = fmul fast float %9403, 0x3FC5555560000000
  %9405 = fdiv fast float %9378, %9404
  %9406 = fadd fast float %9402, %9405
  %9407 = fadd fast float %9362, 1.000000e+00
  %9408 = fsub fast float 1.000000e+00, %9383
  %9409 = fadd fast float %9408, %9382
  %9410 = fadd fast float %9409, %9387
  %9411 = fmul fast float %9410, 0x3FC5555560000000
  %9412 = fdiv fast float %9388, %9411
  %9413 = fsub fast float %9407, %9412
  %9414 = fsub fast float 1.000000e+00, %9362
  %9415 = fadd fast float %9393, %9380
  %9416 = fmul fast float %9415, 0x3FC5555560000000
  %9417 = fdiv fast float %9394, %9416
  %9418 = fadd fast float %9417, %9414
  %9419 = fmul fast float %9401, %9355
  %9420 = fsub fast float %9276, %9419
  %9421 = fmul fast float %9406, %9355
  %9422 = fadd fast float %9421, %9276
  %9423 = fmul fast float %9418, %9356
  %9424 = fadd fast float %9423, %9277
  %9425 = fmul fast float %9413, %9356
  %9426 = fsub fast float %9277, %9425
  %9427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9420, float %9426, float %9344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9428 = extractvalue %dx.types.ResRet.f32 %9427, 0
  %9429 = extractvalue %dx.types.ResRet.f32 %9427, 1
  %9430 = extractvalue %dx.types.ResRet.f32 %9427, 2
  %9431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9422, float %9426, float %9344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9432 = extractvalue %dx.types.ResRet.f32 %9431, 0
  %9433 = extractvalue %dx.types.ResRet.f32 %9431, 1
  %9434 = extractvalue %dx.types.ResRet.f32 %9431, 2
  %9435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9420, float %9424, float %9344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9436 = extractvalue %dx.types.ResRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.ResRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.ResRet.f32 %9435, 2
  %9439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9422, float %9424, float %9344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9440 = extractvalue %dx.types.ResRet.f32 %9439, 0
  %9441 = extractvalue %dx.types.ResRet.f32 %9439, 1
  %9442 = extractvalue %dx.types.ResRet.f32 %9439, 2
  %9443 = fsub fast float %9436, %9428
  %9444 = fsub fast float %9437, %9429
  %9445 = fsub fast float %9438, %9430
  %9446 = fmul fast float %9443, %9416
  %9447 = fmul fast float %9444, %9416
  %9448 = fmul fast float %9445, %9416
  %9449 = fadd fast float %9446, %9428
  %9450 = fadd fast float %9447, %9429
  %9451 = fadd fast float %9448, %9430
  %9452 = fsub fast float %9440, %9432
  %9453 = fsub fast float %9441, %9433
  %9454 = fsub fast float %9442, %9434
  %9455 = fmul fast float %9452, %9416
  %9456 = fmul fast float %9453, %9416
  %9457 = fmul fast float %9454, %9416
  %9458 = fsub fast float %9432, %9449
  %9459 = fadd fast float %9458, %9455
  %9460 = fsub fast float %9433, %9450
  %9461 = fadd fast float %9460, %9456
  %9462 = fsub fast float %9434, %9451
  %9463 = fadd fast float %9462, %9457
  %9464 = fmul fast float %9459, %9404
  %9465 = fmul fast float %9461, %9404
  %9466 = fmul fast float %9463, %9404
  %9467 = fadd fast float %9464, %9449
  %9468 = fadd fast float %9465, %9450
  %9469 = fadd fast float %9466, %9451
  %9470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.f32 %9470, 1
  %9472 = fmul fast float %9467, %9471
  %9473 = fmul fast float %9468, %9471
  %9474 = fmul fast float %9469, %9471
  br label %9475

; <label>:9475                                    ; preds = %9306, %9263
  %9476 = phi float [ %9346, %9306 ], [ 1.000000e+00, %9263 ]
  %9477 = phi float [ %9347, %9306 ], [ 1.000000e+00, %9263 ]
  %9478 = phi float [ %9348, %9306 ], [ 1.000000e+00, %9263 ]
  %9479 = phi float [ %9472, %9306 ], [ 0.000000e+00, %9263 ]
  %9480 = phi float [ %9473, %9306 ], [ 0.000000e+00, %9263 ]
  %9481 = phi float [ %9474, %9306 ], [ 0.000000e+00, %9263 ]
  %9482 = fmul fast float %9479, %7817
  %9483 = fmul fast float %9480, %7817
  %9484 = fmul fast float %9481, %7817
  %9485 = fmul fast float %9476, %9270
  %9486 = call float @dx.op.dot3.f32(i32 55, float %9476, float %9477, float %9478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9487 = call float @dx.op.dot3.f32(i32 55, float %9482, float %9483, float %9484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9488 = select i1 %229, float %9486, float %9476
  %9489 = select i1 %229, float %9486, float %9477
  %9490 = select i1 %229, float 1.000000e+00, float %9478
  %9491 = select i1 %229, float %9487, float %9482
  %9492 = select i1 %229, float 0.000000e+00, float %9483
  %9493 = select i1 %229, float 0.000000e+00, float %9484
  %9494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9495 = extractvalue %dx.types.CBufRet.i32 %9494, 3
  %9496 = and i32 %9495, 3
  %9497 = icmp ne i32 %9496, 0
  %9498 = and i32 %9495, 4
  %9499 = icmp ne i32 %9498, 0
  %9500 = and i1 %9497, %9499
  %9501 = and i1 %229, %9500
  br i1 %9501, label %9502, label %9508

; <label>:9502                                    ; preds = %9475
  %9503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9504 = extractvalue %dx.types.CBufRet.f32 %9503, 1
  %9505 = fadd fast float %9485, -1.000000e+00
  %9506 = fmul fast float %9504, %9505
  %9507 = fadd fast float %9506, 1.000000e+00
  br label %9508

; <label>:9508                                    ; preds = %9502, %9475
  %9509 = phi float [ %9507, %9502 ], [ %9485, %9475 ]
  %9510 = fadd fast float %9267, %9264
  %9511 = fmul fast float %9488, %9510
  %9512 = fadd fast float %9511, %9491
  %9513 = fadd fast float %9268, %9265
  %9514 = fmul fast float %9489, %9513
  %9515 = fadd fast float %9514, %9492
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 0
  br i1 %229, label %9518, label %9534

; <label>:9518                                    ; preds = %9508
  %9519 = fadd fast float %9512, %9515
  %9520 = fmul fast float %9517, %9519
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 3
  %9523 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %9524 = fsub fast float %7826, %7820
  %9525 = fadd fast float %9524, %7827
  %9526 = fsub fast float %9525, %9523
  %9527 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %9528 = fmul fast float %9526, %9527
  %9529 = call float @dx.op.unary.f32(i32 7, float %9528)  ; Saturate(value)
  %9530 = fsub fast float %9529, %9522
  %9531 = fmul fast float %9530, %9509
  %9532 = fadd fast float %9531, %9522
  %9533 = fmul fast float %9532, %4267
  br label %9560

; <label>:9534                                    ; preds = %9508
  %9535 = fadd fast float %9269, %9266
  %9536 = fmul fast float %9490, %9535
  %9537 = fadd fast float %9536, %9493
  %9538 = fmul fast float %9517, %9512
  %9539 = fmul fast float %9517, %9515
  %9540 = fmul fast float %9517, %9537
  %9541 = call float @dx.op.binary.f32(i32 35, float %9539, float %9540)  ; FMax(a,b)
  %9542 = call float @dx.op.binary.f32(i32 35, float %9538, float %9541)  ; FMax(a,b)
  %9543 = call float @dx.op.binary.f32(i32 35, float %7817, float %7817)  ; FMax(a,b)
  %9544 = call float @dx.op.binary.f32(i32 35, float %7817, float %9543)  ; FMax(a,b)
  %9545 = call float @dx.op.binary.f32(i32 35, float %9542, float %9544)  ; FMax(a,b)
  %9546 = fcmp fast ugt float %9545, 0x3F10000000000000
  br i1 %9546, label %9548, label %9547

; <label>:9547                                    ; preds = %9534
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9548

; <label>:9548                                    ; preds = %9547, %9534
  %9549 = add i32 %60, 356
  %9550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9549, i32 undef)  ; BufferLoad(srv,index,wot)
  %9551 = extractvalue %dx.types.ResRet.i32 %9550, 0
  %9552 = and i32 %9551, 32
  %9553 = icmp eq i32 %9552, 0
  br i1 %9553, label %9560, label %9554

; <label>:9554                                    ; preds = %9548
  %9555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.f32 %9555, 0
  %9557 = fmul fast float %9556, 0x3FE99999A0000000
  %9558 = fadd fast float %9556, %9538
  %9559 = fadd fast float %9557, %9540
  br label %9560

; <label>:9560                                    ; preds = %9554, %9548, %9518
  %9561 = phi float [ %4267, %9518 ], [ %7817, %9554 ], [ %7817, %9548 ]
  %9562 = phi float [ %9520, %9518 ], [ %9558, %9554 ], [ %9538, %9548 ]
  %9563 = phi float [ %9533, %9518 ], [ %9539, %9554 ], [ %9539, %9548 ]
  %9564 = phi float [ %4267, %9518 ], [ %9559, %9554 ], [ %9540, %9548 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9565 = call float @dx.op.binary.f32(i32 36, float %9562, float 3.225500e+04)  ; FMin(a,b)
  %9566 = call float @dx.op.binary.f32(i32 36, float %9563, float 3.225500e+04)  ; FMin(a,b)
  %9567 = call float @dx.op.binary.f32(i32 36, float %9564, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9565)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9566)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9568 = call float @dx.op.binary.f32(i32 36, float %7817, float 3.225500e+04)  ; FMin(a,b)
  %9569 = call float @dx.op.binary.f32(i32 36, float %9561, float 3.225500e+04)  ; FMin(a,b)
  %9570 = call float @dx.op.binary.f32(i32 36, float %9561, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

