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
; shader hash: 2fe4738255dfb17748a142af8fe50be5
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
  %423 = add i32 %60, 488
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
  br i1 %479, label %1213, label %480

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
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 1024
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1150, label %1120

; <label>:1120                                    ; preds = %1112
  %1121 = add i32 %60, 152
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1125, 0x3F70101020000000
  %1127 = lshr i32 %1123, 8
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = lshr i32 %1123, 16
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = fmul fast float %1133, 0x3F70101020000000
  %1135 = fmul fast float %1126, %1126
  %1136 = fmul fast float %1130, %1130
  %1137 = fmul fast float %1134, %1134
  %1138 = add i32 %60, 456
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %1140, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1142, %dx.types.Handle %101, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = fmul fast float %1135, %1144
  %1148 = fmul fast float %1136, %1145
  %1149 = fmul fast float %1137, %1146
  br label %1150

; <label>:1150                                    ; preds = %1120, %1112
  %1151 = phi float [ %1147, %1120 ], [ 0.000000e+00, %1112 ]
  %1152 = phi float [ %1148, %1120 ], [ 0.000000e+00, %1112 ]
  %1153 = phi float [ %1149, %1120 ], [ 0.000000e+00, %1112 ]
  %1154 = fcmp fast ogt float %1151, 0.000000e+00
  %1155 = fcmp fast ogt float %1152, 0.000000e+00
  %1156 = fcmp fast ogt float %1153, 0.000000e+00
  %1157 = call float @dx.op.unary.f32(i32 23, float %1151)  ; Log(value)
  %1158 = call float @dx.op.unary.f32(i32 23, float %1152)  ; Log(value)
  %1159 = call float @dx.op.unary.f32(i32 23, float %1153)  ; Log(value)
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 7
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1157, 0xBFE62E4300000000
  %1166 = fmul fast float %1165, %1164
  %1167 = fmul fast float %1158, 0xBFE62E4300000000
  %1168 = fmul fast float %1167, %1164
  %1169 = fmul fast float %1159, 0xBFE62E4300000000
  %1170 = fmul fast float %1169, %1164
  %1171 = select i1 %1154, float %1166, float 1.270000e+02
  %1172 = select i1 %1155, float %1168, float 1.270000e+02
  %1173 = select i1 %1156, float %1170, float 1.270000e+02
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 10240
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1198, label %1178

; <label>:1178                                    ; preds = %1150
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 2048
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1198, label %1183

; <label>:1183                                    ; preds = %1178
  %1184 = add i32 %60, 472
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %101, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = shl i32 %1192, 4
  %1194 = and i32 %1193, 32752
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = fmul fast float %1195, %1190
  %1197 = call float @dx.op.binary.f32(i32 35, float %1196, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1198

; <label>:1198                                    ; preds = %1183, %1178, %1150
  %1199 = phi float [ %1197, %1183 ], [ 0x3F70101020000000, %1178 ], [ 0x3F70101020000000, %1150 ]
  %1200 = add i32 %60, 96
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = lshr i32 %1202, 8
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = call float @dx.op.dot3.f32(i32 55, float %985, float %986, float %987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = fmul fast float %1207, %1208
  %1210 = fadd fast float %1209, %1204
  %1211 = fmul fast float %1210, 0x3F70101020000000
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  br label %1213

; <label>:1213                                    ; preds = %1198, %465
  %1214 = phi float [ 0.000000e+00, %465 ], [ %1066, %1198 ]
  %1215 = phi float [ 0.000000e+00, %465 ], [ %1067, %1198 ]
  %1216 = phi float [ 0.000000e+00, %465 ], [ %985, %1198 ]
  %1217 = phi float [ 0.000000e+00, %465 ], [ %986, %1198 ]
  %1218 = phi float [ 0.000000e+00, %465 ], [ %987, %1198 ]
  %1219 = phi float [ 0.000000e+00, %465 ], [ %1113, %1198 ]
  %1220 = phi float [ 0.000000e+00, %465 ], [ %1114, %1198 ]
  %1221 = phi float [ 0.000000e+00, %465 ], [ %1115, %1198 ]
  %1222 = phi float [ 0.000000e+00, %465 ], [ %1171, %1198 ]
  %1223 = phi float [ 0.000000e+00, %465 ], [ %1172, %1198 ]
  %1224 = phi float [ 0.000000e+00, %465 ], [ %1173, %1198 ]
  %1225 = phi float [ 0.000000e+00, %465 ], [ %971, %1198 ]
  %1226 = phi float [ 0.000000e+00, %465 ], [ %767, %1198 ]
  %1227 = phi float [ 0.000000e+00, %465 ], [ %1065, %1198 ]
  %1228 = phi float [ 0.000000e+00, %465 ], [ %1068, %1198 ]
  %1229 = phi float [ 0.000000e+00, %465 ], [ %1199, %1198 ]
  %1230 = phi float [ 0.000000e+00, %465 ], [ %1212, %1198 ]
  br i1 %413, label %2217, label %1231

; <label>:1231                                    ; preds = %1213
  %1232 = icmp ult i32 %471, 2
  %1233 = add i32 %60, 40
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = add i32 %60, 44
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = or i32 %1238, %1235
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %2217, label %1241

; <label>:1241                                    ; preds = %1231
  %1242 = and i32 %1235, 262144
  %1243 = icmp ne i32 %1242, 0
  %1244 = select i1 %1243, float %63, float 1.000000e+00
  %1245 = select i1 %1243, float %64, float 0.000000e+00
  %1246 = select i1 %1243, float %65, float 0.000000e+00
  %1247 = select i1 %1243, float %66, float 1.000000e+00
  %1248 = select i1 %1243, float %67, float %83
  %1249 = select i1 %1243, float %68, float %84
  %1250 = add i32 %60, 300
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = lshr i32 %1252, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = fmul fast float %1254, 0x3F50624DE0000000
  %1256 = add i32 %60, 104
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 16
  %1260 = and i32 %1259, 255
  %1261 = lshr i32 %1258, 24
  %1262 = add i32 %60, 308
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 65535
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = lshr i32 %1264, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = add i32 %60, 48
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 22
  %1273 = shl nuw nsw i32 %1272, 5
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = shl i32 %1271, 4
  %1276 = and i32 %1275, 32752
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = lshr i32 %1271, 7
  %1279 = and i32 %1278, 32752
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1283 = fmul fast float %1282, 1.000000e+03
  %1284 = fmul fast float %323, %1283
  %1285 = call float @dx.op.unary.f32(i32 22, float %1284)  ; Frc(value)
  %1286 = fadd fast float %1285, %313
  %1287 = fmul fast float %324, %1283
  %1288 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1289 = fadd fast float %1288, %315
  %1290 = fmul fast float %1255, %1283
  %1291 = call float @dx.op.unary.f32(i32 22, float %1290)  ; Frc(value)
  %1292 = fmul fast float %1291, 0x401921FB60000000
  %1293 = fadd fast float %1292, %1274
  %1294 = call float @dx.op.unary.f32(i32 13, float %1293)  ; Sin(value)
  %1295 = call float @dx.op.unary.f32(i32 12, float %1293)  ; Cos(value)
  %1296 = fsub fast float -0.000000e+00, %1294
  %1297 = fadd fast float %1248, -5.000000e-01
  %1298 = fadd fast float %1249, -5.000000e-01
  %1299 = fmul fast float %1266, %1297
  %1300 = fmul fast float %1268, %1298
  %1301 = fadd fast float %1299, 5.000000e-01
  %1302 = fadd fast float %1300, 5.000000e-01
  %1303 = fmul fast float %1277, %1301
  %1304 = fmul fast float %1280, %1302
  %1305 = fmul fast float %1295, %1303
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1296, float %1304, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1294, %1303
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1295, float %1304, float %1307)  ; FMad(a,b,c)
  %1309 = fadd fast float %1286, %1306
  %1310 = fadd fast float %1289, %1308
  %1311 = icmp ugt i32 %1260, 1
  %1312 = icmp ugt i32 %1258, 33554431
  %1313 = or i1 %1312, %1311
  br i1 %1313, label %1314, label %1339

; <label>:1314                                    ; preds = %1241
  %1315 = add i32 %60, 244
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = lshr i32 %1317, 16
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = fmul fast float %1282, %1319
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = mul nuw nsw i32 %1260, %1261
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1321, %1323
  %1325 = call float @dx.op.unary.f32(i32 27, float %1324)  ; Round_ni(value)
  %1326 = fptoui float %1325 to i32
  %1327 = urem i32 %1326, %1260
  %1328 = udiv i32 %1326, %1261
  %1329 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1330 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1331 = uitofp i32 %1327 to float
  %1332 = uitofp i32 %1328 to float
  %1333 = fadd fast float %1329, %1331
  %1334 = fadd fast float %1330, %1332
  %1335 = uitofp i32 %1260 to float
  %1336 = uitofp i32 %1261 to float
  %1337 = fdiv fast float %1333, %1335
  %1338 = fdiv fast float %1334, %1336
  br label %1339

; <label>:1339                                    ; preds = %1314, %1241
  %1340 = phi float [ %1337, %1314 ], [ %1309, %1241 ]
  %1341 = phi float [ %1338, %1314 ], [ %1310, %1241 ]
  %1342 = and i32 %1235, 16777216
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1453, label %1344

; <label>:1344                                    ; preds = %1339
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1349 = fadd fast float %1346, %167
  %1350 = fadd fast float %1347, %168
  %1351 = fadd fast float %1348, %169
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = icmp eq i32 %61, 65535
  br i1 %1355, label %1450, label %1356

; <label>:1356                                    ; preds = %1344
  %1357 = lshr i32 %61, 1
  %1358 = shl i32 %1357, 2
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %61, 1
  %1362 = icmp ne i32 %1361, 0
  %1363 = lshr i32 %1360, 16
  %1364 = and i32 %1360, 65535
  %1365 = select i1 %1362, i32 %1363, i32 %1364
  %1366 = icmp eq i32 %1365, 65535
  br i1 %1366, label %1446, label %1367

; <label>:1367                                    ; preds = %1356
  %1368 = mul nuw nsw i32 %1365, 40
  %1369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.f32 %1369, 2
  %1373 = add nuw nsw i32 %1368, 12
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = add nuw nsw i32 %1368, 24
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = add nuw nsw i32 %1368, 36
  %1384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = fsub fast float %1349, %1370
  %1387 = fsub fast float %1350, %1371
  %1388 = fsub fast float %1351, %1372
  %1389 = fmul fast float %1385, %1386
  %1390 = fmul fast float %1385, %1387
  %1391 = fmul fast float %1385, %1388
  %1392 = call float @dx.op.unary.f32(i32 27, float %1389)  ; Round_ni(value)
  %1393 = call float @dx.op.unary.f32(i32 27, float %1390)  ; Round_ni(value)
  %1394 = call float @dx.op.unary.f32(i32 27, float %1391)  ; Round_ni(value)
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = fmul fast float %1395, %1375
  %1399 = fmul fast float %1396, %1376
  %1400 = fmul fast float %1397, %1377
  %1401 = shl i32 %61, 2
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1407 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1408 = call float @dx.op.unary.f32(i32 22, float %1400)  ; Frc(value)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1405, %dx.types.Handle %55, float %1406, float %1407, float %1408, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = fmul fast float %1410, 1.023000e+03
  %1414 = fmul fast float %1411, 1.023000e+03
  %1415 = fmul fast float %1412, 1.023000e+03
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fadd fast float %1414, 5.000000e-01
  %1418 = fadd fast float %1415, 5.000000e-01
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = call float @dx.op.unary.f32(i32 27, float %1417)  ; Round_ni(value)
  %1421 = call float @dx.op.unary.f32(i32 27, float %1418)  ; Round_ni(value)
  %1422 = fsub fast float %1389, %1392
  %1423 = fsub fast float %1390, %1393
  %1424 = fsub fast float %1391, %1394
  %1425 = fmul fast float %1422, 7.500000e-01
  %1426 = fmul fast float %1423, 7.500000e-01
  %1427 = fmul fast float %1424, 7.500000e-01
  %1428 = fadd fast float %1392, 1.250000e-01
  %1429 = fadd fast float %1428, %1425
  %1430 = fadd fast float %1429, %1419
  %1431 = fadd fast float %1393, 1.250000e-01
  %1432 = fadd fast float %1431, %1426
  %1433 = fadd fast float %1432, %1420
  %1434 = fadd fast float %1394, 1.250000e-01
  %1435 = fadd fast float %1434, %1427
  %1436 = fadd fast float %1435, %1421
  %1437 = fmul fast float %1430, %1380
  %1438 = fmul fast float %1433, %1381
  %1439 = fmul fast float %1436, %1382
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1443, %dx.types.Handle %53, float %1437, float %1438, float %1439, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  br label %1446

; <label>:1446                                    ; preds = %1367, %1356
  %1447 = phi float [ %1445, %1367 ], [ -1.000000e+00, %1356 ]
  %1448 = fadd fast float %1447, %1354
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  br label %1450

; <label>:1450                                    ; preds = %1446, %1344
  %1451 = phi float [ %1449, %1446 ], [ %1354, %1344 ]
  %1452 = fmul fast float %1451, %468
  br label %1453

; <label>:1453                                    ; preds = %1450, %1339
  %1454 = phi float [ %1452, %1450 ], [ %468, %1339 ]
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 256
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1505, label %1459

; <label>:1459                                    ; preds = %1453
  %1460 = add i32 %60, 428
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %101, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = add i32 %60, 116
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = shl i32 %1469, 4
  %1471 = and i32 %1470, 32752
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = lshr i32 %1469, 7
  %1474 = and i32 %1473, 32752
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = fsub fast float 1.000000e+00, %1454
  %1477 = call float @dx.op.binary.f32(i32 35, float %1476, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1478 = bitcast float %1454 to i32
  %1479 = sitofp i32 %1478 to float
  %1480 = fadd fast float %1479, 0xC1CFBF8940000000
  %1481 = fmul fast float %1475, %1480
  %1482 = fadd fast float %1481, 0x41CFBF8940000000
  %1483 = fptosi float %1482 to i32
  %1484 = bitcast i32 %1483 to float
  %1485 = bitcast float %1477 to i32
  %1486 = sitofp i32 %1485 to float
  %1487 = fadd fast float %1486, 0xC1CFBF8940000000
  %1488 = fmul fast float %1487, %1475
  %1489 = fadd fast float %1488, 0x41CFBF8940000000
  %1490 = fptosi float %1489 to i32
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1484, %1472
  %1493 = fmul fast float %1491, %1472
  %1494 = fsub fast float %1477, %1492
  %1495 = fadd fast float %1493, %1477
  %1496 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1497 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1498 = fsub fast float %1466, %1496
  %1499 = fsub fast float %1497, %1496
  %1500 = bitcast float %1499 to i32
  %1501 = sub nsw i32 2129859010, %1500
  %1502 = bitcast i32 %1501 to float
  %1503 = fmul fast float %1502, %1498
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  br label %1505

; <label>:1505                                    ; preds = %1459, %1453
  %1506 = phi float [ %1504, %1459 ], [ %1454, %1453 ]
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 128
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1527, label %1511

; <label>:1511                                    ; preds = %1505
  %1512 = add i32 %60, 412
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = add i32 %1514, 0
  %1516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1516, %dx.types.Handle %101, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 524288
  %1522 = icmp ne i32 %1521, 0
  %1523 = fcmp fast ogt float %1518, 0x3FE0101020000000
  %1524 = select i1 %1523, float 1.000000e+00, float 0.000000e+00
  %1525 = select i1 %1522, float %1524, float %1518
  %1526 = fmul fast float %1525, %1506
  br label %1527

; <label>:1527                                    ; preds = %1511, %1505
  %1528 = phi float [ %1526, %1511 ], [ %1506, %1505 ]
  %1529 = fcmp fast ult float %1528, 0x3F70101020000000
  br i1 %1529, label %2217, label %1530

; <label>:1530                                    ; preds = %1527
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 16
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1733, label %1535

; <label>:1535                                    ; preds = %1530
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %60, 364
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = add i32 %1540, 0
  %1542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1542, %dx.types.Handle %100, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.f32 %1543, 2
  %1547 = extractvalue %dx.types.ResRet.f32 %1543, 3
  %1548 = and i32 %1537, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = lshr i32 %1537, 8
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = fmul fast float %1547, %1549
  %1554 = fadd fast float %1553, %1552
  %1555 = fmul fast float %1554, 0x3F70101000000000
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 512
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1568, label %1560

; <label>:1560                                    ; preds = %1535
  %1561 = add i32 %60, 444
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %101, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  br label %1568

; <label>:1568                                    ; preds = %1560, %1535
  %1569 = phi float [ %1567, %1560 ], [ 1.000000e+00, %1535 ]
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 33554432
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1680, label %1574

; <label>:1574                                    ; preds = %1568
  %1575 = add i32 %60, 240
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 65535
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = lshr i32 %1577, 16
  %1581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1580)  ; LegacyF16ToF32(value)
  %1582 = add i32 %60, 244
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 65535
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = lshr i32 %1588, 24
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = and i32 %1588, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = lshr i32 %1588, 8
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1588, 16
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = add i32 %60, 236
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = and i32 %1605, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = lshr i32 %1605, 8
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1605, 16
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = bitcast float %1544 to i32
  %1621 = ashr i32 %1620, 1
  %1622 = sub nsw i32 1597463174, %1621
  %1623 = bitcast i32 %1622 to float
  %1624 = fmul fast float %1544, 5.000000e-01
  %1625 = fmul fast float %1623, %1623
  %1626 = fmul fast float %1625, %1624
  %1627 = fsub fast float 1.500000e+00, %1626
  %1628 = fmul fast float %1623, %1544
  %1629 = fmul fast float %1628, %1627
  %1630 = bitcast float %1545 to i32
  %1631 = ashr i32 %1630, 1
  %1632 = sub nsw i32 1597463174, %1631
  %1633 = bitcast i32 %1632 to float
  %1634 = fmul fast float %1545, 5.000000e-01
  %1635 = fmul fast float %1633, %1633
  %1636 = fmul fast float %1635, %1634
  %1637 = fsub fast float 1.500000e+00, %1636
  %1638 = fmul fast float %1633, %1545
  %1639 = fmul fast float %1638, %1637
  %1640 = bitcast float %1546 to i32
  %1641 = ashr i32 %1640, 1
  %1642 = sub nsw i32 1597463174, %1641
  %1643 = bitcast i32 %1642 to float
  %1644 = fmul fast float %1546, 5.000000e-01
  %1645 = fmul fast float %1643, %1643
  %1646 = fmul fast float %1645, %1644
  %1647 = fsub fast float 1.500000e+00, %1646
  %1648 = fmul fast float %1643, %1546
  %1649 = fmul fast float %1648, %1647
  %1650 = fsub fast float %1629, %1611
  %1651 = fsub fast float %1639, %1615
  %1652 = fsub fast float %1649, %1619
  %1653 = fmul fast float %1650, %1579
  %1654 = fmul fast float %1651, %1581
  %1655 = fmul fast float %1652, %1586
  %1656 = fadd fast float %1653, %1594
  %1657 = fadd fast float %1654, %1598
  %1658 = fadd fast float %1655, %1602
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1661 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1662 = fmul fast float %1659, %1659
  %1663 = fmul fast float %1660, %1660
  %1664 = fmul fast float %1661, %1661
  %1665 = fsub fast float %1662, %1544
  %1666 = fsub fast float %1663, %1545
  %1667 = fsub fast float %1664, %1546
  %1668 = fmul fast float %1665, %1569
  %1669 = fmul fast float %1666, %1569
  %1670 = fmul fast float %1667, %1569
  %1671 = fadd fast float %1668, %1544
  %1672 = fadd fast float %1669, %1545
  %1673 = fadd fast float %1670, %1546
  %1674 = fadd fast float %1591, %1555
  %1675 = fsub fast float %1674, %1608
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fsub fast float %1676, %1555
  %1678 = fmul fast float %1677, %1569
  %1679 = fadd fast float %1678, %1555
  br label %1733

; <label>:1680                                    ; preds = %1568
  %1681 = and i32 %1571, 134217728
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1717, label %1683

; <label>:1683                                    ; preds = %1680
  %1684 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1686 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fadd fast float %1685, -5.000000e-01
  %1689 = fadd fast float %1686, -5.000000e-01
  %1690 = fmul fast float %1687, %1569
  %1691 = fmul fast float %1688, %1569
  %1692 = fmul fast float %1689, %1569
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = fadd fast float %1691, 5.000000e-01
  %1695 = fadd fast float %1692, 5.000000e-01
  %1696 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1697 = call float @dx.op.unary.f32(i32 24, float %1545)  ; Sqrt(value)
  %1698 = call float @dx.op.unary.f32(i32 24, float %1546)  ; Sqrt(value)
  %1699 = fmul fast float %1693, 2.000000e+00
  %1700 = fsub fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1700, %1696
  %1702 = fadd fast float %1701, %1699
  %1703 = fmul fast float %1702, %1696
  %1704 = fmul fast float %1694, 2.000000e+00
  %1705 = fsub fast float 1.000000e+00, %1704
  %1706 = fmul fast float %1705, %1697
  %1707 = fadd fast float %1706, %1704
  %1708 = fmul fast float %1707, %1697
  %1709 = fmul fast float %1695, 2.000000e+00
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1698
  %1712 = fadd fast float %1711, %1709
  %1713 = fmul fast float %1712, %1698
  %1714 = fmul fast float %1703, %1703
  %1715 = fmul fast float %1708, %1708
  %1716 = fmul fast float %1713, %1713
  br label %1733

; <label>:1717                                    ; preds = %1680
  %1718 = fmul fast float %300, %300
  %1719 = fmul fast float %304, %304
  %1720 = fmul fast float %308, %308
  %1721 = fadd fast float %1718, -1.000000e+00
  %1722 = fadd fast float %1719, -1.000000e+00
  %1723 = fadd fast float %1720, -1.000000e+00
  %1724 = fmul fast float %1569, %1721
  %1725 = fmul fast float %1569, %1722
  %1726 = fmul fast float %1569, %1723
  %1727 = fadd fast float %1724, 1.000000e+00
  %1728 = fadd fast float %1725, 1.000000e+00
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fmul fast float %1727, %1544
  %1731 = fmul fast float %1728, %1545
  %1732 = fmul fast float %1729, %1546
  br label %1733

; <label>:1733                                    ; preds = %1717, %1683, %1574, %1530
  %1734 = phi float [ %1679, %1574 ], [ %1555, %1683 ], [ %1555, %1717 ], [ 0x3FA23C0BE0000000, %1530 ]
  %1735 = phi float [ %1671, %1574 ], [ %1714, %1683 ], [ %1730, %1717 ], [ 1.000000e+00, %1530 ]
  %1736 = phi float [ %1672, %1574 ], [ %1715, %1683 ], [ %1731, %1717 ], [ 1.000000e+00, %1530 ]
  %1737 = phi float [ %1673, %1574 ], [ %1716, %1683 ], [ %1732, %1717 ], [ 1.000000e+00, %1530 ]
  %1738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.i32 %1738, 1
  %1740 = and i32 %1739, 1
  %1741 = icmp ne i32 %1740, 0
  %1742 = add i32 %60, 356
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 32
  %1746 = icmp ne i32 %1745, 0
  %1747 = and i1 %1741, %1746
  %1748 = select i1 %1747, float 1.000000e+00, float %1735
  %1749 = select i1 %1747, float 0x3FD3333340000000, float %1736
  %1750 = select i1 %1747, float 0x3FD3333340000000, float %1737
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 32
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1827, label %1755

; <label>:1755                                    ; preds = %1733
  %1756 = add i32 %60, 108
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %60, 380
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %1761, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1763, %dx.types.Handle %100, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = extractvalue %dx.types.ResRet.f32 %1764, 3
  %1769 = and i32 %1758, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = lshr i32 %1758, 8
  %1772 = and i32 %1771, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = lshr i32 %1758, 16
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = fmul fast float %1776, 0x3F70101000000000
  %1778 = fmul fast float %1765, %1770
  %1779 = fadd fast float %1778, %1773
  %1780 = fmul fast float %1779, 0x3F70101000000000
  %1781 = fadd fast float %1766, -5.000000e-01
  %1782 = fadd fast float %1768, -5.000000e-01
  %1783 = fmul fast float %1781, %1777
  %1784 = fmul fast float %1782, %1777
  %1785 = fadd fast float %1783, 5.000000e-01
  %1786 = fadd fast float %1784, 5.000000e-01
  %1787 = fmul fast float %1785, 2.000000e+00
  %1788 = fadd fast float %1787, -1.000000e+00
  %1789 = fmul fast float %1786, 2.000000e+00
  %1790 = fadd fast float %1789, -1.000000e+00
  %1791 = fadd fast float %1788, %1790
  %1792 = fmul fast float %1791, 5.000000e-01
  %1793 = fsub fast float %1788, %1790
  %1794 = fmul fast float %1793, 5.000000e-01
  %1795 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1796 = fsub fast float 1.000000e+00, %1795
  %1797 = call float @dx.op.unary.f32(i32 6, float %1794)  ; FAbs(value)
  %1798 = fsub fast float %1796, %1797
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1794, float %1798, float %1792, float %1794, float %1798)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = call float @dx.op.unary.f32(i32 25, float %1799)  ; Rsqrt(value)
  %1801 = fmul fast float %1792, %1800
  %1802 = fmul fast float %1794, %1800
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 67108864
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1823, label %1807

; <label>:1807                                    ; preds = %1755
  %1808 = add i32 %60, 296
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 65535
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 65535
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = lshr i32 %1810, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = fsub fast float %1780, %1818
  %1820 = fmul fast float %1819, %1812
  %1821 = fadd fast float %1820, %1816
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  br label %1823

; <label>:1823                                    ; preds = %1807, %1755
  %1824 = phi float [ %1822, %1807 ], [ %1780, %1755 ]
  %1825 = call float @dx.op.dot2.f32(i32 54, float %1801, float %1802, float %1244, float %1245)  ; Dot2(ax,ay,bx,by)
  %1826 = call float @dx.op.dot2.f32(i32 54, float %1801, float %1802, float %1246, float %1247)  ; Dot2(ax,ay,bx,by)
  br label %1827

; <label>:1827                                    ; preds = %1823, %1733
  %1828 = phi float [ %1824, %1823 ], [ 0x3FD6666660000000, %1733 ]
  %1829 = phi float [ %1825, %1823 ], [ 0.000000e+00, %1733 ]
  %1830 = phi float [ %1826, %1823 ], [ 0.000000e+00, %1733 ]
  %1831 = phi float [ %1767, %1823 ], [ 1.000000e+00, %1733 ]
  %1832 = add i32 %60, 176
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 22
  %1836 = shl nuw nsw i32 %1835, 5
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 64
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1875, label %1842

; <label>:1842                                    ; preds = %1827
  %1843 = add i32 %60, 396
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = add i32 %1845, 0
  %1847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 131072
  %1851 = icmp eq i32 %1850, 0
  %1852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1847, %dx.types.Handle %100, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.ResRet.f32 %1852, 2
  %1856 = fmul fast float %1853, %288
  %1857 = fmul fast float %1854, %291
  %1858 = fmul fast float %1855, %294
  br i1 %1851, label %1865, label %1859

; <label>:1859                                    ; preds = %1842
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = fmul fast float %1861, %1856
  %1863 = fmul fast float %1861, %1857
  %1864 = fmul fast float %1861, %1858
  br label %1865

; <label>:1865                                    ; preds = %1859, %1842
  %1866 = phi float [ %1862, %1859 ], [ %1856, %1842 ]
  %1867 = phi float [ %1863, %1859 ], [ %1857, %1842 ]
  %1868 = phi float [ %1864, %1859 ], [ %1858, %1842 ]
  %1869 = fmul fast float %1866, %1837
  %1870 = select i1 %229, float %1869, float %1866
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1870, float %1867, float %1868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = select i1 %229, float 0.000000e+00, float %1866
  %1873 = select i1 %229, float %1871, float %1867
  %1874 = select i1 %229, float 0.000000e+00, float %1868
  br label %1875

; <label>:1875                                    ; preds = %1865, %1827
  %1876 = phi float [ %1872, %1865 ], [ 0.000000e+00, %1827 ]
  %1877 = phi float [ %1873, %1865 ], [ 0.000000e+00, %1827 ]
  %1878 = phi float [ %1874, %1865 ], [ 0.000000e+00, %1827 ]
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 1024
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1913, label %1883

; <label>:1883                                    ; preds = %1875
  %1884 = add i32 %60, 168
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 255
  %1888 = uitofp i32 %1887 to float
  %1889 = fmul fast float %1888, 0x3F70101020000000
  %1890 = lshr i32 %1886, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = fmul fast float %1892, 0x3F70101020000000
  %1894 = lshr i32 %1886, 16
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = fmul fast float %1889, %1889
  %1899 = fmul fast float %1893, %1893
  %1900 = fmul fast float %1897, %1897
  %1901 = add i32 %60, 460
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = add i32 %1903, 0
  %1905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1905, %dx.types.Handle %101, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = fmul fast float %1898, %1907
  %1911 = fmul fast float %1899, %1908
  %1912 = fmul fast float %1900, %1909
  br label %1913

; <label>:1913                                    ; preds = %1883, %1875
  %1914 = phi float [ %1910, %1883 ], [ 0.000000e+00, %1875 ]
  %1915 = phi float [ %1911, %1883 ], [ 0.000000e+00, %1875 ]
  %1916 = phi float [ %1912, %1883 ], [ 0.000000e+00, %1875 ]
  %1917 = fcmp fast ogt float %1914, 0.000000e+00
  %1918 = fcmp fast ogt float %1915, 0.000000e+00
  %1919 = fcmp fast ogt float %1916, 0.000000e+00
  %1920 = call float @dx.op.unary.f32(i32 23, float %1914)  ; Log(value)
  %1921 = call float @dx.op.unary.f32(i32 23, float %1915)  ; Log(value)
  %1922 = call float @dx.op.unary.f32(i32 23, float %1916)  ; Log(value)
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = lshr i32 %1924, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = fmul fast float %1920, 0xBFE62E4300000000
  %1929 = fmul fast float %1928, %1927
  %1930 = fmul fast float %1921, 0xBFE62E4300000000
  %1931 = fmul fast float %1930, %1927
  %1932 = fmul fast float %1922, 0xBFE62E4300000000
  %1933 = fmul fast float %1932, %1927
  %1934 = select i1 %1917, float %1929, float 1.270000e+02
  %1935 = select i1 %1918, float %1931, float 1.270000e+02
  %1936 = select i1 %1919, float %1933, float 1.270000e+02
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %1938, 10240
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %1961, label %1941

; <label>:1941                                    ; preds = %1913
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = and i32 %1943, 2048
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %1961, label %1946

; <label>:1946                                    ; preds = %1941
  %1947 = add i32 %60, 476
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = add i32 %1949, 0
  %1951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1951, %dx.types.Handle %101, float %1340, float %1341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 3
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = shl i32 %1955, 4
  %1957 = and i32 %1956, 32752
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = fmul fast float %1958, %1953
  %1960 = call float @dx.op.binary.f32(i32 35, float %1959, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1961

; <label>:1961                                    ; preds = %1946, %1941, %1913
  %1962 = phi float [ %1960, %1946 ], [ 0x3F70101020000000, %1941 ], [ 0x3F70101020000000, %1913 ]
  %1963 = add i32 %60, 112
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 255
  %1967 = uitofp i32 %1966 to float
  %1968 = lshr i32 %1965, 8
  %1969 = and i32 %1968, 255
  %1970 = uitofp i32 %1969 to float
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1748, float %1749, float %1750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = fmul fast float %1970, %1971
  %1973 = fadd fast float %1972, %1967
  %1974 = fmul fast float %1973, 0x3F70101020000000
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  br i1 %1232, label %1976, label %2011

; <label>:1976                                    ; preds = %1961
  %1977 = fmul fast float %1962, 2.000000e+00
  %1978 = fcmp fast olt float %1934, 1.270000e+02
  %1979 = fcmp fast olt float %1935, 1.270000e+02
  %1980 = fcmp fast olt float %1936, 1.270000e+02
  %1981 = fmul fast float %1934, 0xBFF7154760000000
  %1982 = fmul fast float %1981, %1977
  %1983 = fmul fast float %1935, 0xBFF7154760000000
  %1984 = fmul fast float %1983, %1977
  %1985 = fmul fast float %1936, 0xBFF7154760000000
  %1986 = fmul fast float %1985, %1977
  %1987 = call float @dx.op.unary.f32(i32 21, float %1982)  ; Exp(value)
  %1988 = call float @dx.op.unary.f32(i32 21, float %1984)  ; Exp(value)
  %1989 = call float @dx.op.unary.f32(i32 21, float %1986)  ; Exp(value)
  %1990 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1991 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1993 = fadd fast float %1990, -1.000000e+00
  %1994 = select i1 %1978, float %1993, float -1.000000e+00
  %1995 = fadd fast float %1991, -1.000000e+00
  %1996 = select i1 %1979, float %1995, float -1.000000e+00
  %1997 = fadd fast float %1992, -1.000000e+00
  %1998 = select i1 %1980, float %1997, float -1.000000e+00
  %1999 = fmul fast float %1994, %1528
  %2000 = fmul fast float %1996, %1528
  %2001 = fmul fast float %1998, %1528
  %2002 = fadd fast float %1999, 1.000000e+00
  %2003 = fadd fast float %2000, 1.000000e+00
  %2004 = fadd fast float %2001, 1.000000e+00
  %2005 = fmul fast float %2002, %1216
  %2006 = fmul fast float %2003, %1217
  %2007 = fmul fast float %2004, %1218
  %2008 = fmul fast float %2002, %1219
  %2009 = fmul fast float %2003, %1220
  %2010 = fmul fast float %2004, %1221
  br label %2011

; <label>:2011                                    ; preds = %1976, %1961
  %2012 = phi float [ %2005, %1976 ], [ %1216, %1961 ]
  %2013 = phi float [ %2006, %1976 ], [ %1217, %1961 ]
  %2014 = phi float [ %2007, %1976 ], [ %1218, %1961 ]
  %2015 = phi float [ %2008, %1976 ], [ %1219, %1961 ]
  %2016 = phi float [ %2009, %1976 ], [ %1220, %1961 ]
  %2017 = phi float [ %2010, %1976 ], [ %1221, %1961 ]
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 3
  %2021 = icmp eq i32 %2020, 3
  br i1 %2021, label %2100, label %2022

; <label>:2022                                    ; preds = %2011
  %2023 = and i32 %2019, 16
  %2024 = icmp ne i32 %2023, 0
  %2025 = select i1 %2024, float %1528, float 0.000000e+00
  %2026 = icmp eq i32 %2020, 0
  br i1 %2026, label %2027, label %2055

; <label>:2027                                    ; preds = %2022
  %2028 = and i32 %2019, 64
  %2029 = icmp ne i32 %2028, 0
  %2030 = select i1 %2029, float %1528, float 0.000000e+00
  %2031 = fsub fast float %1748, %2012
  %2032 = fsub fast float %1749, %2013
  %2033 = fsub fast float %1750, %2014
  %2034 = fmul fast float %2025, %2031
  %2035 = fmul fast float %2025, %2032
  %2036 = fmul fast float %2025, %2033
  %2037 = fadd fast float %2034, %2012
  %2038 = fadd fast float %2035, %2013
  %2039 = fadd fast float %2036, %2014
  %2040 = fsub fast float %1734, %1225
  %2041 = fmul fast float %2025, %2040
  %2042 = fadd fast float %2041, %1225
  %2043 = fsub fast float %1876, %2015
  %2044 = fsub fast float %1877, %2016
  %2045 = fsub fast float %1878, %2017
  %2046 = fmul fast float %2030, %2043
  %2047 = fmul fast float %2030, %2044
  %2048 = fmul fast float %2030, %2045
  %2049 = fadd fast float %2046, %2015
  %2050 = fadd fast float %2047, %2016
  %2051 = fadd fast float %2048, %2017
  %2052 = fsub fast float %1975, %1230
  %2053 = fmul fast float %2025, %2052
  %2054 = fadd fast float %2053, %1230
  br label %2100

; <label>:2055                                    ; preds = %2022
  %2056 = icmp eq i32 %2020, 1
  br i1 %2056, label %2057, label %2070

; <label>:2057                                    ; preds = %2055
  %2058 = fadd fast float %1748, -1.000000e+00
  %2059 = fadd fast float %1749, -1.000000e+00
  %2060 = fadd fast float %1750, -1.000000e+00
  %2061 = fmul fast float %2025, %2058
  %2062 = fmul fast float %2025, %2059
  %2063 = fmul fast float %2025, %2060
  %2064 = fadd fast float %2061, 1.000000e+00
  %2065 = fadd fast float %2062, 1.000000e+00
  %2066 = fadd fast float %2063, 1.000000e+00
  %2067 = fmul fast float %2064, %2012
  %2068 = fmul fast float %2065, %2013
  %2069 = fmul fast float %2066, %2014
  br label %2100

; <label>:2070                                    ; preds = %2055
  %2071 = icmp eq i32 %2020, 2
  br i1 %2071, label %2072, label %2100

; <label>:2072                                    ; preds = %2070
  %2073 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %2074 = call float @dx.op.unary.f32(i32 24, float %1749)  ; Sqrt(value)
  %2075 = call float @dx.op.unary.f32(i32 24, float %1750)  ; Sqrt(value)
  %2076 = fadd fast float %2073, -5.000000e-01
  %2077 = fadd fast float %2074, -5.000000e-01
  %2078 = fadd fast float %2075, -5.000000e-01
  %2079 = fmul fast float %2076, %2025
  %2080 = fmul fast float %2077, %2025
  %2081 = fmul fast float %2078, %2025
  %2082 = fadd fast float %2079, 5.000000e-01
  %2083 = fadd fast float %2080, 5.000000e-01
  %2084 = fadd fast float %2081, 5.000000e-01
  %2085 = fmul fast float %2082, 2.000000e+00
  %2086 = fsub fast float 1.000000e+00, %2085
  %2087 = fmul fast float %2086, %2012
  %2088 = fadd fast float %2087, %2085
  %2089 = fmul fast float %2088, %2012
  %2090 = fmul fast float %2083, 2.000000e+00
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = fmul fast float %2091, %2013
  %2093 = fadd fast float %2092, %2090
  %2094 = fmul fast float %2093, %2013
  %2095 = fmul fast float %2084, 2.000000e+00
  %2096 = fsub fast float 1.000000e+00, %2095
  %2097 = fmul fast float %2096, %2014
  %2098 = fadd fast float %2097, %2095
  %2099 = fmul fast float %2098, %2014
  br label %2100

; <label>:2100                                    ; preds = %2072, %2070, %2057, %2027, %2011
  %2101 = phi float [ %2012, %2011 ], [ %2089, %2072 ], [ %2012, %2070 ], [ %2067, %2057 ], [ %2037, %2027 ]
  %2102 = phi float [ %2013, %2011 ], [ %2094, %2072 ], [ %2013, %2070 ], [ %2068, %2057 ], [ %2038, %2027 ]
  %2103 = phi float [ %2014, %2011 ], [ %2099, %2072 ], [ %2014, %2070 ], [ %2069, %2057 ], [ %2039, %2027 ]
  %2104 = phi float [ %2015, %2011 ], [ %2015, %2072 ], [ %2015, %2070 ], [ %2015, %2057 ], [ %2049, %2027 ]
  %2105 = phi float [ %2016, %2011 ], [ %2016, %2072 ], [ %2016, %2070 ], [ %2016, %2057 ], [ %2050, %2027 ]
  %2106 = phi float [ %2017, %2011 ], [ %2017, %2072 ], [ %2017, %2070 ], [ %2017, %2057 ], [ %2051, %2027 ]
  %2107 = phi float [ %1225, %2011 ], [ %1225, %2072 ], [ %1225, %2070 ], [ %1225, %2057 ], [ %2042, %2027 ]
  %2108 = phi float [ %1230, %2011 ], [ %1230, %2072 ], [ %1230, %2070 ], [ %1230, %2057 ], [ %2054, %2027 ]
  %2109 = and i32 %2019, 12
  %2110 = icmp eq i32 %2109, 12
  br i1 %2110, label %2217, label %2111

; <label>:2111                                    ; preds = %2100
  %2112 = and i32 %2019, 2097184
  %2113 = icmp eq i32 %2112, 2097184
  %2114 = select i1 %2113, float %1528, float 0.000000e+00
  %2115 = and i32 %2019, 4194336
  %2116 = icmp eq i32 %2115, 4194336
  %2117 = select i1 %2116, float %1528, float 0.000000e+00
  %2118 = and i32 %2019, 8388640
  %2119 = icmp eq i32 %2118, 8388640
  %2120 = select i1 %2119, float %1528, float 0.000000e+00
  %2121 = and i32 %2019, 1024
  %2122 = icmp ne i32 %2121, 0
  %2123 = select i1 %2122, float %1528, float 0.000000e+00
  %2124 = and i32 %2019, 2048
  %2125 = icmp ne i32 %2124, 0
  %2126 = select i1 %2125, float %1528, float 0.000000e+00
  %2127 = icmp eq i32 %2109, 0
  br i1 %2127, label %2128, label %2153

; <label>:2128                                    ; preds = %2111
  %2129 = fsub fast float %1829, %1214
  %2130 = fsub fast float %1830, %1215
  %2131 = fmul fast float %2114, %2129
  %2132 = fmul fast float %2114, %2130
  %2133 = fadd fast float %2131, %1214
  %2134 = fadd fast float %2132, %1215
  %2135 = fsub fast float %1831, %1228
  %2136 = fmul fast float %2117, %2135
  %2137 = fadd fast float %2136, %1228
  %2138 = fsub fast float %1828, %1227
  %2139 = fmul fast float %2120, %2138
  %2140 = fadd fast float %2139, %1227
  %2141 = fsub fast float %1934, %1222
  %2142 = fsub fast float %1935, %1223
  %2143 = fsub fast float %1936, %1224
  %2144 = fmul fast float %2123, %2141
  %2145 = fmul fast float %2123, %2142
  %2146 = fmul fast float %2123, %2143
  %2147 = fadd fast float %2144, %1222
  %2148 = fadd fast float %2145, %1223
  %2149 = fadd fast float %2146, %1224
  %2150 = fsub fast float %1962, %1229
  %2151 = fmul fast float %2126, %2150
  %2152 = fadd fast float %2151, %1229
  br label %2217

; <label>:2153                                    ; preds = %2111
  %2154 = icmp eq i32 %2109, 4
  br i1 %2154, label %2155, label %2195

; <label>:2155                                    ; preds = %2153
  %2156 = fmul fast float %2114, %1829
  %2157 = fmul fast float %2114, %1830
  %2158 = fadd fast float %2156, %1214
  %2159 = fadd fast float %2157, %1215
  %2160 = call float @dx.op.binary.f32(i32 36, float %1228, float %1831)  ; FMin(a,b)
  %2161 = fsub fast float %2160, %1228
  %2162 = fmul fast float %2161, %2117
  %2163 = fadd fast float %2162, %1228
  %2164 = fadd fast float %1828, %1227
  %2165 = fmul fast float %2164, 0x3FF337FAE0000000
  %2166 = fmul fast float %1227, %1227
  %2167 = fmul fast float %1828, %1828
  %2168 = fadd fast float %2167, %2166
  %2169 = fmul fast float %2168, 0x3FE5152B00000000
  %2170 = fmul fast float %1227, 0xBFCC1F85E0000000
  %2171 = fmul fast float %2170, %1828
  %2172 = fadd fast float %2171, 0xBFE1363700000000
  %2173 = fadd fast float %2172, %2165
  %2174 = fsub fast float %2173, %2169
  %2175 = fmul fast float %2164, 0x3FBA6F0D00000000
  %2176 = fmul fast float %2168, 0x3FD0432880000000
  %2177 = fmul fast float %1227, 0xBFEF110800000000
  %2178 = fmul fast float %2177, %1828
  %2179 = fadd fast float %2178, 1.000000e+00
  %2180 = fsub fast float %2179, %2175
  %2181 = fadd fast float %2180, %2176
  %2182 = fdiv fast float %2174, %2181
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float %2183, %1227
  %2185 = fmul fast float %2184, %2120
  %2186 = fadd fast float %2185, %1227
  %2187 = fmul fast float %2123, %1934
  %2188 = fmul fast float %2123, %1935
  %2189 = fmul fast float %2123, %1936
  %2190 = fadd fast float %2187, %1222
  %2191 = fadd fast float %2188, %1223
  %2192 = fadd fast float %2189, %1224
  %2193 = fmul fast float %2126, %1962
  %2194 = fadd fast float %2193, %1229
  br label %2217

; <label>:2195                                    ; preds = %2153
  %2196 = icmp eq i32 %2109, 8
  br i1 %2196, label %2197, label %2217

; <label>:2197                                    ; preds = %2195
  %2198 = fmul fast float %2114, %1829
  %2199 = fmul fast float %2114, %1830
  %2200 = fadd fast float %2198, %1214
  %2201 = fadd fast float %2199, %1215
  %2202 = call float @dx.op.binary.f32(i32 36, float %1228, float %1831)  ; FMin(a,b)
  %2203 = fsub fast float %2202, %1228
  %2204 = fmul fast float %2203, %2117
  %2205 = fadd fast float %2204, %1228
  %2206 = fsub fast float %1828, %1227
  %2207 = fmul fast float %2120, %2206
  %2208 = fadd fast float %2207, %1227
  %2209 = fmul fast float %2123, %1934
  %2210 = fmul fast float %2123, %1935
  %2211 = fmul fast float %2123, %1936
  %2212 = fadd fast float %2209, %1222
  %2213 = fadd fast float %2210, %1223
  %2214 = fadd fast float %2211, %1224
  %2215 = fmul fast float %2126, %1962
  %2216 = fadd fast float %2215, %1229
  br label %2217

; <label>:2217                                    ; preds = %2197, %2195, %2155, %2128, %2100, %1527, %1231, %1213
  %2218 = phi float [ %1214, %2100 ], [ %1214, %1527 ], [ %1214, %1213 ], [ %2200, %2197 ], [ %1214, %2195 ], [ %2158, %2155 ], [ %2133, %2128 ], [ %1214, %1231 ]
  %2219 = phi float [ %1215, %2100 ], [ %1215, %1527 ], [ %1215, %1213 ], [ %2201, %2197 ], [ %1215, %2195 ], [ %2159, %2155 ], [ %2134, %2128 ], [ %1215, %1231 ]
  %2220 = phi float [ %2101, %2100 ], [ %1216, %1527 ], [ %1216, %1213 ], [ %2101, %2197 ], [ %2101, %2195 ], [ %2101, %2155 ], [ %2101, %2128 ], [ %1216, %1231 ]
  %2221 = phi float [ %2102, %2100 ], [ %1217, %1527 ], [ %1217, %1213 ], [ %2102, %2197 ], [ %2102, %2195 ], [ %2102, %2155 ], [ %2102, %2128 ], [ %1217, %1231 ]
  %2222 = phi float [ %2103, %2100 ], [ %1218, %1527 ], [ %1218, %1213 ], [ %2103, %2197 ], [ %2103, %2195 ], [ %2103, %2155 ], [ %2103, %2128 ], [ %1218, %1231 ]
  %2223 = phi float [ %2104, %2100 ], [ %1219, %1527 ], [ %1219, %1213 ], [ %2104, %2197 ], [ %2104, %2195 ], [ %2104, %2155 ], [ %2104, %2128 ], [ %1219, %1231 ]
  %2224 = phi float [ %2105, %2100 ], [ %1220, %1527 ], [ %1220, %1213 ], [ %2105, %2197 ], [ %2105, %2195 ], [ %2105, %2155 ], [ %2105, %2128 ], [ %1220, %1231 ]
  %2225 = phi float [ %2106, %2100 ], [ %1221, %1527 ], [ %1221, %1213 ], [ %2106, %2197 ], [ %2106, %2195 ], [ %2106, %2155 ], [ %2106, %2128 ], [ %1221, %1231 ]
  %2226 = phi float [ %1222, %2100 ], [ %1222, %1527 ], [ %1222, %1213 ], [ %2212, %2197 ], [ %1222, %2195 ], [ %2190, %2155 ], [ %2147, %2128 ], [ %1222, %1231 ]
  %2227 = phi float [ %1223, %2100 ], [ %1223, %1527 ], [ %1223, %1213 ], [ %2213, %2197 ], [ %1223, %2195 ], [ %2191, %2155 ], [ %2148, %2128 ], [ %1223, %1231 ]
  %2228 = phi float [ %1224, %2100 ], [ %1224, %1527 ], [ %1224, %1213 ], [ %2214, %2197 ], [ %1224, %2195 ], [ %2192, %2155 ], [ %2149, %2128 ], [ %1224, %1231 ]
  %2229 = phi float [ %2107, %2100 ], [ %1225, %1527 ], [ %1225, %1213 ], [ %2107, %2197 ], [ %2107, %2195 ], [ %2107, %2155 ], [ %2107, %2128 ], [ %1225, %1231 ]
  %2230 = phi float [ %1227, %2100 ], [ %1227, %1527 ], [ %1227, %1213 ], [ %2208, %2197 ], [ %1227, %2195 ], [ %2186, %2155 ], [ %2140, %2128 ], [ %1227, %1231 ]
  %2231 = phi float [ %1228, %2100 ], [ %1228, %1527 ], [ %1228, %1213 ], [ %2205, %2197 ], [ %1228, %2195 ], [ %2163, %2155 ], [ %2137, %2128 ], [ %1228, %1231 ]
  %2232 = phi float [ %1229, %2100 ], [ %1229, %1527 ], [ %1229, %1213 ], [ %2216, %2197 ], [ %1229, %2195 ], [ %2194, %2155 ], [ %2152, %2128 ], [ %1229, %1231 ]
  %2233 = phi float [ %2108, %2100 ], [ %1230, %1527 ], [ %1230, %1213 ], [ %2108, %2197 ], [ %2108, %2195 ], [ %2108, %2155 ], [ %2108, %2128 ], [ %1230, %1231 ]
  br i1 %415, label %3220, label %2234

; <label>:2234                                    ; preds = %2217
  %2235 = icmp ult i32 %471, 3
  %2236 = add i32 %60, 56
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = add i32 %60, 60
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = or i32 %2241, %2238
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %3220, label %2244

; <label>:2244                                    ; preds = %2234
  %2245 = and i32 %2238, 262144
  %2246 = icmp ne i32 %2245, 0
  %2247 = select i1 %2246, float %63, float 1.000000e+00
  %2248 = select i1 %2246, float %64, float 0.000000e+00
  %2249 = select i1 %2246, float %65, float 0.000000e+00
  %2250 = select i1 %2246, float %66, float 1.000000e+00
  %2251 = select i1 %2246, float %67, float %83
  %2252 = select i1 %2246, float %68, float %84
  %2253 = add i32 %60, 316
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 16
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = fmul fast float %2257, 0x3F50624DE0000000
  %2259 = add i32 %60, 120
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 16
  %2263 = and i32 %2262, 255
  %2264 = lshr i32 %2261, 24
  %2265 = add i32 %60, 324
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 65535
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = lshr i32 %2267, 16
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = add i32 %60, 64
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = lshr i32 %2274, 22
  %2276 = shl nuw nsw i32 %2275, 5
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = shl i32 %2274, 4
  %2279 = and i32 %2278, 32752
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = lshr i32 %2274, 7
  %2282 = and i32 %2281, 32752
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2286 = fmul fast float %2285, 1.000000e+03
  %2287 = fmul fast float %365, %2286
  %2288 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2289 = fadd fast float %2288, %355
  %2290 = fmul fast float %366, %2286
  %2291 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  %2292 = fadd fast float %2291, %357
  %2293 = fmul fast float %2258, %2286
  %2294 = call float @dx.op.unary.f32(i32 22, float %2293)  ; Frc(value)
  %2295 = fmul fast float %2294, 0x401921FB60000000
  %2296 = fadd fast float %2295, %2277
  %2297 = call float @dx.op.unary.f32(i32 13, float %2296)  ; Sin(value)
  %2298 = call float @dx.op.unary.f32(i32 12, float %2296)  ; Cos(value)
  %2299 = fsub fast float -0.000000e+00, %2297
  %2300 = fadd fast float %2251, -5.000000e-01
  %2301 = fadd fast float %2252, -5.000000e-01
  %2302 = fmul fast float %2269, %2300
  %2303 = fmul fast float %2271, %2301
  %2304 = fadd fast float %2302, 5.000000e-01
  %2305 = fadd fast float %2303, 5.000000e-01
  %2306 = fmul fast float %2280, %2304
  %2307 = fmul fast float %2283, %2305
  %2308 = fmul fast float %2298, %2306
  %2309 = call float @dx.op.tertiary.f32(i32 46, float %2299, float %2307, float %2308)  ; FMad(a,b,c)
  %2310 = fmul fast float %2297, %2306
  %2311 = call float @dx.op.tertiary.f32(i32 46, float %2298, float %2307, float %2310)  ; FMad(a,b,c)
  %2312 = fadd fast float %2289, %2309
  %2313 = fadd fast float %2292, %2311
  %2314 = icmp ugt i32 %2263, 1
  %2315 = icmp ugt i32 %2261, 33554431
  %2316 = or i1 %2315, %2314
  br i1 %2316, label %2317, label %2342

; <label>:2317                                    ; preds = %2244
  %2318 = add i32 %60, 260
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = lshr i32 %2320, 16
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = fmul fast float %2285, %2322
  %2324 = call float @dx.op.unary.f32(i32 22, float %2323)  ; Frc(value)
  %2325 = mul nuw nsw i32 %2263, %2264
  %2326 = uitofp i32 %2325 to float
  %2327 = fmul fast float %2324, %2326
  %2328 = call float @dx.op.unary.f32(i32 27, float %2327)  ; Round_ni(value)
  %2329 = fptoui float %2328 to i32
  %2330 = urem i32 %2329, %2263
  %2331 = udiv i32 %2329, %2264
  %2332 = call float @dx.op.unary.f32(i32 22, float %2312)  ; Frc(value)
  %2333 = call float @dx.op.unary.f32(i32 22, float %2313)  ; Frc(value)
  %2334 = uitofp i32 %2330 to float
  %2335 = uitofp i32 %2331 to float
  %2336 = fadd fast float %2332, %2334
  %2337 = fadd fast float %2333, %2335
  %2338 = uitofp i32 %2263 to float
  %2339 = uitofp i32 %2264 to float
  %2340 = fdiv fast float %2336, %2338
  %2341 = fdiv fast float %2337, %2339
  br label %2342

; <label>:2342                                    ; preds = %2317, %2244
  %2343 = phi float [ %2340, %2317 ], [ %2312, %2244 ]
  %2344 = phi float [ %2341, %2317 ], [ %2313, %2244 ]
  %2345 = and i32 %2238, 16777216
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2456, label %2347

; <label>:2347                                    ; preds = %2342
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2352 = fadd fast float %2349, %167
  %2353 = fadd fast float %2350, %168
  %2354 = fadd fast float %2351, %169
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2358 = icmp eq i32 %61, 65535
  br i1 %2358, label %2453, label %2359

; <label>:2359                                    ; preds = %2347
  %2360 = lshr i32 %61, 1
  %2361 = shl i32 %2360, 2
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %61, 1
  %2365 = icmp ne i32 %2364, 0
  %2366 = lshr i32 %2363, 16
  %2367 = and i32 %2363, 65535
  %2368 = select i1 %2365, i32 %2366, i32 %2367
  %2369 = icmp eq i32 %2368, 65535
  br i1 %2369, label %2449, label %2370

; <label>:2370                                    ; preds = %2359
  %2371 = mul nuw nsw i32 %2368, 40
  %2372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = add nuw nsw i32 %2371, 12
  %2377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.ResRet.f32 %2377, 1
  %2380 = extractvalue %dx.types.ResRet.f32 %2377, 2
  %2381 = add nuw nsw i32 %2371, 24
  %2382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = extractvalue %dx.types.ResRet.f32 %2382, 2
  %2386 = add nuw nsw i32 %2371, 36
  %2387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  %2389 = fsub fast float %2352, %2373
  %2390 = fsub fast float %2353, %2374
  %2391 = fsub fast float %2354, %2375
  %2392 = fmul fast float %2388, %2389
  %2393 = fmul fast float %2388, %2390
  %2394 = fmul fast float %2388, %2391
  %2395 = call float @dx.op.unary.f32(i32 27, float %2392)  ; Round_ni(value)
  %2396 = call float @dx.op.unary.f32(i32 27, float %2393)  ; Round_ni(value)
  %2397 = call float @dx.op.unary.f32(i32 27, float %2394)  ; Round_ni(value)
  %2398 = fadd fast float %2395, 5.000000e-01
  %2399 = fadd fast float %2396, 5.000000e-01
  %2400 = fadd fast float %2397, 5.000000e-01
  %2401 = fmul fast float %2398, %2378
  %2402 = fmul fast float %2399, %2379
  %2403 = fmul fast float %2400, %2380
  %2404 = shl i32 %61, 2
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %2406, 0
  %2408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2409 = call float @dx.op.unary.f32(i32 22, float %2401)  ; Frc(value)
  %2410 = call float @dx.op.unary.f32(i32 22, float %2402)  ; Frc(value)
  %2411 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2408, %dx.types.Handle %55, float %2409, float %2410, float %2411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = fmul fast float %2413, 1.023000e+03
  %2417 = fmul fast float %2414, 1.023000e+03
  %2418 = fmul fast float %2415, 1.023000e+03
  %2419 = fadd fast float %2416, 5.000000e-01
  %2420 = fadd fast float %2417, 5.000000e-01
  %2421 = fadd fast float %2418, 5.000000e-01
  %2422 = call float @dx.op.unary.f32(i32 27, float %2419)  ; Round_ni(value)
  %2423 = call float @dx.op.unary.f32(i32 27, float %2420)  ; Round_ni(value)
  %2424 = call float @dx.op.unary.f32(i32 27, float %2421)  ; Round_ni(value)
  %2425 = fsub fast float %2392, %2395
  %2426 = fsub fast float %2393, %2396
  %2427 = fsub fast float %2394, %2397
  %2428 = fmul fast float %2425, 7.500000e-01
  %2429 = fmul fast float %2426, 7.500000e-01
  %2430 = fmul fast float %2427, 7.500000e-01
  %2431 = fadd fast float %2395, 1.250000e-01
  %2432 = fadd fast float %2431, %2428
  %2433 = fadd fast float %2432, %2422
  %2434 = fadd fast float %2396, 1.250000e-01
  %2435 = fadd fast float %2434, %2429
  %2436 = fadd fast float %2435, %2423
  %2437 = fadd fast float %2397, 1.250000e-01
  %2438 = fadd fast float %2437, %2430
  %2439 = fadd fast float %2438, %2424
  %2440 = fmul fast float %2433, %2383
  %2441 = fmul fast float %2436, %2384
  %2442 = fmul fast float %2439, %2385
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = add i32 %2444, 0
  %2446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2446, %dx.types.Handle %53, float %2440, float %2441, float %2442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2448 = extractvalue %dx.types.ResRet.f32 %2447, 0
  br label %2449

; <label>:2449                                    ; preds = %2370, %2359
  %2450 = phi float [ %2448, %2370 ], [ -1.000000e+00, %2359 ]
  %2451 = fadd fast float %2450, %2357
  %2452 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  br label %2453

; <label>:2453                                    ; preds = %2449, %2347
  %2454 = phi float [ %2452, %2449 ], [ %2357, %2347 ]
  %2455 = fmul fast float %2454, %467
  br label %2456

; <label>:2456                                    ; preds = %2453, %2342
  %2457 = phi float [ %2455, %2453 ], [ %467, %2342 ]
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 256
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2508, label %2462

; <label>:2462                                    ; preds = %2456
  %2463 = add i32 %60, 432
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = add i32 %2465, 0
  %2467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2467, %dx.types.Handle %101, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = add i32 %60, 132
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2470, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = shl i32 %2472, 4
  %2474 = and i32 %2473, 32752
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = lshr i32 %2472, 7
  %2477 = and i32 %2476, 32752
  %2478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2477)  ; LegacyF16ToF32(value)
  %2479 = fsub fast float 1.000000e+00, %2457
  %2480 = call float @dx.op.binary.f32(i32 35, float %2479, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2481 = bitcast float %2457 to i32
  %2482 = sitofp i32 %2481 to float
  %2483 = fadd fast float %2482, 0xC1CFBF8940000000
  %2484 = fmul fast float %2478, %2483
  %2485 = fadd fast float %2484, 0x41CFBF8940000000
  %2486 = fptosi float %2485 to i32
  %2487 = bitcast i32 %2486 to float
  %2488 = bitcast float %2480 to i32
  %2489 = sitofp i32 %2488 to float
  %2490 = fadd fast float %2489, 0xC1CFBF8940000000
  %2491 = fmul fast float %2490, %2478
  %2492 = fadd fast float %2491, 0x41CFBF8940000000
  %2493 = fptosi float %2492 to i32
  %2494 = bitcast i32 %2493 to float
  %2495 = fmul fast float %2487, %2475
  %2496 = fmul fast float %2494, %2475
  %2497 = fsub fast float %2480, %2495
  %2498 = fadd fast float %2496, %2480
  %2499 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2500 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2501 = fsub fast float %2469, %2499
  %2502 = fsub fast float %2500, %2499
  %2503 = bitcast float %2502 to i32
  %2504 = sub nsw i32 2129859010, %2503
  %2505 = bitcast i32 %2504 to float
  %2506 = fmul fast float %2505, %2501
  %2507 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  br label %2508

; <label>:2508                                    ; preds = %2462, %2456
  %2509 = phi float [ %2507, %2462 ], [ %2457, %2456 ]
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 128
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2530, label %2514

; <label>:2514                                    ; preds = %2508
  %2515 = add i32 %60, 416
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2519, %dx.types.Handle %101, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 524288
  %2525 = icmp ne i32 %2524, 0
  %2526 = fcmp fast ogt float %2521, 0x3FE0101020000000
  %2527 = select i1 %2526, float 1.000000e+00, float 0.000000e+00
  %2528 = select i1 %2525, float %2527, float %2521
  %2529 = fmul fast float %2528, %2509
  br label %2530

; <label>:2530                                    ; preds = %2514, %2508
  %2531 = phi float [ %2529, %2514 ], [ %2509, %2508 ]
  %2532 = fcmp fast ult float %2531, 0x3F70101020000000
  br i1 %2532, label %3220, label %2533

; <label>:2533                                    ; preds = %2530
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 16
  %2537 = icmp eq i32 %2536, 0
  br i1 %2537, label %2736, label %2538

; <label>:2538                                    ; preds = %2533
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = add i32 %60, 368
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %100, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = extractvalue %dx.types.ResRet.f32 %2546, 3
  %2551 = and i32 %2540, 255
  %2552 = uitofp i32 %2551 to float
  %2553 = lshr i32 %2540, 8
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = fmul fast float %2550, %2552
  %2557 = fadd fast float %2556, %2555
  %2558 = fmul fast float %2557, 0x3F70101000000000
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 512
  %2562 = icmp eq i32 %2561, 0
  br i1 %2562, label %2571, label %2563

; <label>:2563                                    ; preds = %2538
  %2564 = add i32 %60, 448
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2568, %dx.types.Handle %101, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  br label %2571

; <label>:2571                                    ; preds = %2563, %2538
  %2572 = phi float [ %2570, %2563 ], [ 1.000000e+00, %2538 ]
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 33554432
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2683, label %2577

; <label>:2577                                    ; preds = %2571
  %2578 = add i32 %60, 256
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 65535
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = lshr i32 %2580, 16
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = add i32 %60, 260
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 65535
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 24
  %2593 = uitofp i32 %2592 to float
  %2594 = fmul fast float %2593, 0x3F70101020000000
  %2595 = and i32 %2591, 255
  %2596 = uitofp i32 %2595 to float
  %2597 = fmul fast float %2596, 0x3F70101020000000
  %2598 = lshr i32 %2591, 8
  %2599 = and i32 %2598, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = fmul fast float %2600, 0x3F70101020000000
  %2602 = lshr i32 %2591, 16
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = add i32 %60, 252
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = lshr i32 %2608, 24
  %2610 = uitofp i32 %2609 to float
  %2611 = fmul fast float %2610, 0x3F70101020000000
  %2612 = and i32 %2608, 255
  %2613 = uitofp i32 %2612 to float
  %2614 = fmul fast float %2613, 0x3F70101020000000
  %2615 = lshr i32 %2608, 8
  %2616 = and i32 %2615, 255
  %2617 = uitofp i32 %2616 to float
  %2618 = fmul fast float %2617, 0x3F70101020000000
  %2619 = lshr i32 %2608, 16
  %2620 = and i32 %2619, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = fmul fast float %2621, 0x3F70101020000000
  %2623 = bitcast float %2547 to i32
  %2624 = ashr i32 %2623, 1
  %2625 = sub nsw i32 1597463174, %2624
  %2626 = bitcast i32 %2625 to float
  %2627 = fmul fast float %2547, 5.000000e-01
  %2628 = fmul fast float %2626, %2626
  %2629 = fmul fast float %2628, %2627
  %2630 = fsub fast float 1.500000e+00, %2629
  %2631 = fmul fast float %2626, %2547
  %2632 = fmul fast float %2631, %2630
  %2633 = bitcast float %2548 to i32
  %2634 = ashr i32 %2633, 1
  %2635 = sub nsw i32 1597463174, %2634
  %2636 = bitcast i32 %2635 to float
  %2637 = fmul fast float %2548, 5.000000e-01
  %2638 = fmul fast float %2636, %2636
  %2639 = fmul fast float %2638, %2637
  %2640 = fsub fast float 1.500000e+00, %2639
  %2641 = fmul fast float %2636, %2548
  %2642 = fmul fast float %2641, %2640
  %2643 = bitcast float %2549 to i32
  %2644 = ashr i32 %2643, 1
  %2645 = sub nsw i32 1597463174, %2644
  %2646 = bitcast i32 %2645 to float
  %2647 = fmul fast float %2549, 5.000000e-01
  %2648 = fmul fast float %2646, %2646
  %2649 = fmul fast float %2648, %2647
  %2650 = fsub fast float 1.500000e+00, %2649
  %2651 = fmul fast float %2646, %2549
  %2652 = fmul fast float %2651, %2650
  %2653 = fsub fast float %2632, %2614
  %2654 = fsub fast float %2642, %2618
  %2655 = fsub fast float %2652, %2622
  %2656 = fmul fast float %2653, %2582
  %2657 = fmul fast float %2654, %2584
  %2658 = fmul fast float %2655, %2589
  %2659 = fadd fast float %2656, %2597
  %2660 = fadd fast float %2657, %2601
  %2661 = fadd fast float %2658, %2605
  %2662 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2663 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  %2664 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2665 = fmul fast float %2662, %2662
  %2666 = fmul fast float %2663, %2663
  %2667 = fmul fast float %2664, %2664
  %2668 = fsub fast float %2665, %2547
  %2669 = fsub fast float %2666, %2548
  %2670 = fsub fast float %2667, %2549
  %2671 = fmul fast float %2668, %2572
  %2672 = fmul fast float %2669, %2572
  %2673 = fmul fast float %2670, %2572
  %2674 = fadd fast float %2671, %2547
  %2675 = fadd fast float %2672, %2548
  %2676 = fadd fast float %2673, %2549
  %2677 = fadd fast float %2594, %2558
  %2678 = fsub fast float %2677, %2611
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = fsub fast float %2679, %2558
  %2681 = fmul fast float %2680, %2572
  %2682 = fadd fast float %2681, %2558
  br label %2736

; <label>:2683                                    ; preds = %2571
  %2684 = and i32 %2574, 134217728
  %2685 = icmp eq i32 %2684, 0
  br i1 %2685, label %2720, label %2686

; <label>:2686                                    ; preds = %2683
  %2687 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %2688 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2689 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2690 = fadd fast float %2687, -5.000000e-01
  %2691 = fadd fast float %2688, -5.000000e-01
  %2692 = fadd fast float %2689, -5.000000e-01
  %2693 = fmul fast float %2690, %2572
  %2694 = fmul fast float %2691, %2572
  %2695 = fmul fast float %2692, %2572
  %2696 = fadd fast float %2693, 5.000000e-01
  %2697 = fadd fast float %2694, 5.000000e-01
  %2698 = fadd fast float %2695, 5.000000e-01
  %2699 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2700 = call float @dx.op.unary.f32(i32 24, float %2548)  ; Sqrt(value)
  %2701 = call float @dx.op.unary.f32(i32 24, float %2549)  ; Sqrt(value)
  %2702 = fmul fast float %2696, 2.000000e+00
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = fmul fast float %2703, %2699
  %2705 = fadd fast float %2704, %2702
  %2706 = fmul fast float %2705, %2699
  %2707 = fmul fast float %2697, 2.000000e+00
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2708, %2700
  %2710 = fadd fast float %2709, %2707
  %2711 = fmul fast float %2710, %2700
  %2712 = fmul fast float %2698, 2.000000e+00
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = fmul fast float %2713, %2701
  %2715 = fadd fast float %2714, %2712
  %2716 = fmul fast float %2715, %2701
  %2717 = fmul fast float %2706, %2706
  %2718 = fmul fast float %2711, %2711
  %2719 = fmul fast float %2716, %2716
  br label %2736

; <label>:2720                                    ; preds = %2683
  %2721 = fmul fast float %342, %342
  %2722 = fmul fast float %346, %346
  %2723 = fmul fast float %350, %350
  %2724 = fadd fast float %2721, -1.000000e+00
  %2725 = fadd fast float %2722, -1.000000e+00
  %2726 = fadd fast float %2723, -1.000000e+00
  %2727 = fmul fast float %2572, %2724
  %2728 = fmul fast float %2572, %2725
  %2729 = fmul fast float %2572, %2726
  %2730 = fadd fast float %2727, 1.000000e+00
  %2731 = fadd fast float %2728, 1.000000e+00
  %2732 = fadd fast float %2729, 1.000000e+00
  %2733 = fmul fast float %2730, %2547
  %2734 = fmul fast float %2731, %2548
  %2735 = fmul fast float %2732, %2549
  br label %2736

; <label>:2736                                    ; preds = %2720, %2686, %2577, %2533
  %2737 = phi float [ %2682, %2577 ], [ %2558, %2686 ], [ %2558, %2720 ], [ 0x3FA23C0BE0000000, %2533 ]
  %2738 = phi float [ %2674, %2577 ], [ %2717, %2686 ], [ %2733, %2720 ], [ 1.000000e+00, %2533 ]
  %2739 = phi float [ %2675, %2577 ], [ %2718, %2686 ], [ %2734, %2720 ], [ 1.000000e+00, %2533 ]
  %2740 = phi float [ %2676, %2577 ], [ %2719, %2686 ], [ %2735, %2720 ], [ 1.000000e+00, %2533 ]
  %2741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.i32 %2741, 1
  %2743 = and i32 %2742, 1
  %2744 = icmp ne i32 %2743, 0
  %2745 = add i32 %60, 356
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 32
  %2749 = icmp ne i32 %2748, 0
  %2750 = and i1 %2744, %2749
  %2751 = select i1 %2750, float 1.000000e+00, float %2738
  %2752 = select i1 %2750, float 0x3FD3333340000000, float %2739
  %2753 = select i1 %2750, float 0x3FD3333340000000, float %2740
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 32
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2830, label %2758

; <label>:2758                                    ; preds = %2736
  %2759 = add i32 %60, 124
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = add i32 %60, 384
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = add i32 %2764, 0
  %2766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2766, %dx.types.Handle %100, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.ResRet.f32 %2767, 2
  %2771 = extractvalue %dx.types.ResRet.f32 %2767, 3
  %2772 = and i32 %2761, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = lshr i32 %2761, 8
  %2775 = and i32 %2774, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = lshr i32 %2761, 16
  %2778 = and i32 %2777, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = fmul fast float %2779, 0x3F70101000000000
  %2781 = fmul fast float %2768, %2773
  %2782 = fadd fast float %2781, %2776
  %2783 = fmul fast float %2782, 0x3F70101000000000
  %2784 = fadd fast float %2769, -5.000000e-01
  %2785 = fadd fast float %2771, -5.000000e-01
  %2786 = fmul fast float %2784, %2780
  %2787 = fmul fast float %2785, %2780
  %2788 = fadd fast float %2786, 5.000000e-01
  %2789 = fadd fast float %2787, 5.000000e-01
  %2790 = fmul fast float %2788, 2.000000e+00
  %2791 = fadd fast float %2790, -1.000000e+00
  %2792 = fmul fast float %2789, 2.000000e+00
  %2793 = fadd fast float %2792, -1.000000e+00
  %2794 = fadd fast float %2791, %2793
  %2795 = fmul fast float %2794, 5.000000e-01
  %2796 = fsub fast float %2791, %2793
  %2797 = fmul fast float %2796, 5.000000e-01
  %2798 = call float @dx.op.unary.f32(i32 6, float %2795)  ; FAbs(value)
  %2799 = fsub fast float 1.000000e+00, %2798
  %2800 = call float @dx.op.unary.f32(i32 6, float %2797)  ; FAbs(value)
  %2801 = fsub fast float %2799, %2800
  %2802 = call float @dx.op.dot3.f32(i32 55, float %2795, float %2797, float %2801, float %2795, float %2797, float %2801)  ; Dot3(ax,ay,az,bx,by,bz)
  %2803 = call float @dx.op.unary.f32(i32 25, float %2802)  ; Rsqrt(value)
  %2804 = fmul fast float %2795, %2803
  %2805 = fmul fast float %2797, %2803
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 67108864
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2826, label %2810

; <label>:2810                                    ; preds = %2758
  %2811 = add i32 %60, 312
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = and i32 %2813, 65535
  %2815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2814)  ; LegacyF16ToF32(value)
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = and i32 %2817, 65535
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = lshr i32 %2813, 16
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fsub fast float %2783, %2821
  %2823 = fmul fast float %2822, %2815
  %2824 = fadd fast float %2823, %2819
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  br label %2826

; <label>:2826                                    ; preds = %2810, %2758
  %2827 = phi float [ %2825, %2810 ], [ %2783, %2758 ]
  %2828 = call float @dx.op.dot2.f32(i32 54, float %2804, float %2805, float %2247, float %2248)  ; Dot2(ax,ay,bx,by)
  %2829 = call float @dx.op.dot2.f32(i32 54, float %2804, float %2805, float %2249, float %2250)  ; Dot2(ax,ay,bx,by)
  br label %2830

; <label>:2830                                    ; preds = %2826, %2736
  %2831 = phi float [ %2827, %2826 ], [ 0x3FD6666660000000, %2736 ]
  %2832 = phi float [ %2828, %2826 ], [ 0.000000e+00, %2736 ]
  %2833 = phi float [ %2829, %2826 ], [ 0.000000e+00, %2736 ]
  %2834 = phi float [ %2770, %2826 ], [ 1.000000e+00, %2736 ]
  %2835 = add i32 %60, 192
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = lshr i32 %2837, 22
  %2839 = shl nuw nsw i32 %2838, 5
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 64
  %2844 = icmp eq i32 %2843, 0
  br i1 %2844, label %2878, label %2845

; <label>:2845                                    ; preds = %2830
  %2846 = add i32 %60, 400
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %2848, 0
  %2850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 131072
  %2854 = icmp eq i32 %2853, 0
  %2855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2850, %dx.types.Handle %100, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.ResRet.f32 %2855, 1
  %2858 = extractvalue %dx.types.ResRet.f32 %2855, 2
  %2859 = fmul fast float %2856, %330
  %2860 = fmul fast float %2857, %333
  %2861 = fmul fast float %2858, %336
  br i1 %2854, label %2868, label %2862

; <label>:2862                                    ; preds = %2845
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = fmul fast float %2864, %2859
  %2866 = fmul fast float %2864, %2860
  %2867 = fmul fast float %2864, %2861
  br label %2868

; <label>:2868                                    ; preds = %2862, %2845
  %2869 = phi float [ %2865, %2862 ], [ %2859, %2845 ]
  %2870 = phi float [ %2866, %2862 ], [ %2860, %2845 ]
  %2871 = phi float [ %2867, %2862 ], [ %2861, %2845 ]
  %2872 = fmul fast float %2869, %2840
  %2873 = select i1 %229, float %2872, float %2869
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2873, float %2870, float %2871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = select i1 %229, float 0.000000e+00, float %2869
  %2876 = select i1 %229, float %2874, float %2870
  %2877 = select i1 %229, float 0.000000e+00, float %2871
  br label %2878

; <label>:2878                                    ; preds = %2868, %2830
  %2879 = phi float [ %2875, %2868 ], [ 0.000000e+00, %2830 ]
  %2880 = phi float [ %2876, %2868 ], [ 0.000000e+00, %2830 ]
  %2881 = phi float [ %2877, %2868 ], [ 0.000000e+00, %2830 ]
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 1024
  %2885 = icmp eq i32 %2884, 0
  br i1 %2885, label %2916, label %2886

; <label>:2886                                    ; preds = %2878
  %2887 = add i32 %60, 184
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 255
  %2891 = uitofp i32 %2890 to float
  %2892 = fmul fast float %2891, 0x3F70101020000000
  %2893 = lshr i32 %2889, 8
  %2894 = and i32 %2893, 255
  %2895 = uitofp i32 %2894 to float
  %2896 = fmul fast float %2895, 0x3F70101020000000
  %2897 = lshr i32 %2889, 16
  %2898 = and i32 %2897, 255
  %2899 = uitofp i32 %2898 to float
  %2900 = fmul fast float %2899, 0x3F70101020000000
  %2901 = fmul fast float %2892, %2892
  %2902 = fmul fast float %2896, %2896
  %2903 = fmul fast float %2900, %2900
  %2904 = add i32 %60, 464
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = add i32 %2906, 0
  %2908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2908, %dx.types.Handle %101, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2910 = extractvalue %dx.types.ResRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.ResRet.f32 %2909, 1
  %2912 = extractvalue %dx.types.ResRet.f32 %2909, 2
  %2913 = fmul fast float %2901, %2910
  %2914 = fmul fast float %2902, %2911
  %2915 = fmul fast float %2903, %2912
  br label %2916

; <label>:2916                                    ; preds = %2886, %2878
  %2917 = phi float [ %2913, %2886 ], [ 0.000000e+00, %2878 ]
  %2918 = phi float [ %2914, %2886 ], [ 0.000000e+00, %2878 ]
  %2919 = phi float [ %2915, %2886 ], [ 0.000000e+00, %2878 ]
  %2920 = fcmp fast ogt float %2917, 0.000000e+00
  %2921 = fcmp fast ogt float %2918, 0.000000e+00
  %2922 = fcmp fast ogt float %2919, 0.000000e+00
  %2923 = call float @dx.op.unary.f32(i32 23, float %2917)  ; Log(value)
  %2924 = call float @dx.op.unary.f32(i32 23, float %2918)  ; Log(value)
  %2925 = call float @dx.op.unary.f32(i32 23, float %2919)  ; Log(value)
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = lshr i32 %2927, 7
  %2929 = and i32 %2928, 32752
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = fmul fast float %2923, 0xBFE62E4300000000
  %2932 = fmul fast float %2931, %2930
  %2933 = fmul fast float %2924, 0xBFE62E4300000000
  %2934 = fmul fast float %2933, %2930
  %2935 = fmul fast float %2925, 0xBFE62E4300000000
  %2936 = fmul fast float %2935, %2930
  %2937 = select i1 %2920, float %2932, float 1.270000e+02
  %2938 = select i1 %2921, float %2934, float 1.270000e+02
  %2939 = select i1 %2922, float %2936, float 1.270000e+02
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %2941, 10240
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %2964, label %2944

; <label>:2944                                    ; preds = %2916
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 2048
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %2964, label %2949

; <label>:2949                                    ; preds = %2944
  %2950 = add i32 %60, 480
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2954, %dx.types.Handle %101, float %2343, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 3
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = shl i32 %2958, 4
  %2960 = and i32 %2959, 32752
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = fmul fast float %2961, %2956
  %2963 = call float @dx.op.binary.f32(i32 35, float %2962, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2964

; <label>:2964                                    ; preds = %2949, %2944, %2916
  %2965 = phi float [ %2963, %2949 ], [ 0x3F70101020000000, %2944 ], [ 0x3F70101020000000, %2916 ]
  %2966 = add i32 %60, 128
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = lshr i32 %2968, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2751, float %2752, float %2753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fmul fast float %2973, %2974
  %2976 = fadd fast float %2975, %2970
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  br i1 %2235, label %2979, label %3014

; <label>:2979                                    ; preds = %2964
  %2980 = fmul fast float %2965, 2.000000e+00
  %2981 = fcmp fast olt float %2937, 1.270000e+02
  %2982 = fcmp fast olt float %2938, 1.270000e+02
  %2983 = fcmp fast olt float %2939, 1.270000e+02
  %2984 = fmul fast float %2937, 0xBFF7154760000000
  %2985 = fmul fast float %2984, %2980
  %2986 = fmul fast float %2938, 0xBFF7154760000000
  %2987 = fmul fast float %2986, %2980
  %2988 = fmul fast float %2939, 0xBFF7154760000000
  %2989 = fmul fast float %2988, %2980
  %2990 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  %2991 = call float @dx.op.unary.f32(i32 21, float %2987)  ; Exp(value)
  %2992 = call float @dx.op.unary.f32(i32 21, float %2989)  ; Exp(value)
  %2993 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2994 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2995 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  %2996 = fadd fast float %2993, -1.000000e+00
  %2997 = select i1 %2981, float %2996, float -1.000000e+00
  %2998 = fadd fast float %2994, -1.000000e+00
  %2999 = select i1 %2982, float %2998, float -1.000000e+00
  %3000 = fadd fast float %2995, -1.000000e+00
  %3001 = select i1 %2983, float %3000, float -1.000000e+00
  %3002 = fmul fast float %2997, %2531
  %3003 = fmul fast float %2999, %2531
  %3004 = fmul fast float %3001, %2531
  %3005 = fadd fast float %3002, 1.000000e+00
  %3006 = fadd fast float %3003, 1.000000e+00
  %3007 = fadd fast float %3004, 1.000000e+00
  %3008 = fmul fast float %3005, %2220
  %3009 = fmul fast float %3006, %2221
  %3010 = fmul fast float %3007, %2222
  %3011 = fmul fast float %3005, %2223
  %3012 = fmul fast float %3006, %2224
  %3013 = fmul fast float %3007, %2225
  br label %3014

; <label>:3014                                    ; preds = %2979, %2964
  %3015 = phi float [ %3008, %2979 ], [ %2220, %2964 ]
  %3016 = phi float [ %3009, %2979 ], [ %2221, %2964 ]
  %3017 = phi float [ %3010, %2979 ], [ %2222, %2964 ]
  %3018 = phi float [ %3011, %2979 ], [ %2223, %2964 ]
  %3019 = phi float [ %3012, %2979 ], [ %2224, %2964 ]
  %3020 = phi float [ %3013, %2979 ], [ %2225, %2964 ]
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = and i32 %3022, 3
  %3024 = icmp eq i32 %3023, 3
  br i1 %3024, label %3103, label %3025

; <label>:3025                                    ; preds = %3014
  %3026 = and i32 %3022, 16
  %3027 = icmp ne i32 %3026, 0
  %3028 = select i1 %3027, float %2531, float 0.000000e+00
  %3029 = icmp eq i32 %3023, 0
  br i1 %3029, label %3030, label %3058

; <label>:3030                                    ; preds = %3025
  %3031 = and i32 %3022, 64
  %3032 = icmp ne i32 %3031, 0
  %3033 = select i1 %3032, float %2531, float 0.000000e+00
  %3034 = fsub fast float %2751, %3015
  %3035 = fsub fast float %2752, %3016
  %3036 = fsub fast float %2753, %3017
  %3037 = fmul fast float %3028, %3034
  %3038 = fmul fast float %3028, %3035
  %3039 = fmul fast float %3028, %3036
  %3040 = fadd fast float %3037, %3015
  %3041 = fadd fast float %3038, %3016
  %3042 = fadd fast float %3039, %3017
  %3043 = fsub fast float %2737, %2229
  %3044 = fmul fast float %3028, %3043
  %3045 = fadd fast float %3044, %2229
  %3046 = fsub fast float %2879, %3018
  %3047 = fsub fast float %2880, %3019
  %3048 = fsub fast float %2881, %3020
  %3049 = fmul fast float %3033, %3046
  %3050 = fmul fast float %3033, %3047
  %3051 = fmul fast float %3033, %3048
  %3052 = fadd fast float %3049, %3018
  %3053 = fadd fast float %3050, %3019
  %3054 = fadd fast float %3051, %3020
  %3055 = fsub fast float %2978, %2233
  %3056 = fmul fast float %3028, %3055
  %3057 = fadd fast float %3056, %2233
  br label %3103

; <label>:3058                                    ; preds = %3025
  %3059 = icmp eq i32 %3023, 1
  br i1 %3059, label %3060, label %3073

; <label>:3060                                    ; preds = %3058
  %3061 = fadd fast float %2751, -1.000000e+00
  %3062 = fadd fast float %2752, -1.000000e+00
  %3063 = fadd fast float %2753, -1.000000e+00
  %3064 = fmul fast float %3028, %3061
  %3065 = fmul fast float %3028, %3062
  %3066 = fmul fast float %3028, %3063
  %3067 = fadd fast float %3064, 1.000000e+00
  %3068 = fadd fast float %3065, 1.000000e+00
  %3069 = fadd fast float %3066, 1.000000e+00
  %3070 = fmul fast float %3067, %3015
  %3071 = fmul fast float %3068, %3016
  %3072 = fmul fast float %3069, %3017
  br label %3103

; <label>:3073                                    ; preds = %3058
  %3074 = icmp eq i32 %3023, 2
  br i1 %3074, label %3075, label %3103

; <label>:3075                                    ; preds = %3073
  %3076 = call float @dx.op.unary.f32(i32 24, float %2751)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %3078 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %3079 = fadd fast float %3076, -5.000000e-01
  %3080 = fadd fast float %3077, -5.000000e-01
  %3081 = fadd fast float %3078, -5.000000e-01
  %3082 = fmul fast float %3079, %3028
  %3083 = fmul fast float %3080, %3028
  %3084 = fmul fast float %3081, %3028
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fmul fast float %3085, 2.000000e+00
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = fmul fast float %3089, %3015
  %3091 = fadd fast float %3090, %3088
  %3092 = fmul fast float %3091, %3015
  %3093 = fmul fast float %3086, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3016
  %3096 = fadd fast float %3095, %3093
  %3097 = fmul fast float %3096, %3016
  %3098 = fmul fast float %3087, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3099, %3017
  %3101 = fadd fast float %3100, %3098
  %3102 = fmul fast float %3101, %3017
  br label %3103

; <label>:3103                                    ; preds = %3075, %3073, %3060, %3030, %3014
  %3104 = phi float [ %3015, %3014 ], [ %3092, %3075 ], [ %3015, %3073 ], [ %3070, %3060 ], [ %3040, %3030 ]
  %3105 = phi float [ %3016, %3014 ], [ %3097, %3075 ], [ %3016, %3073 ], [ %3071, %3060 ], [ %3041, %3030 ]
  %3106 = phi float [ %3017, %3014 ], [ %3102, %3075 ], [ %3017, %3073 ], [ %3072, %3060 ], [ %3042, %3030 ]
  %3107 = phi float [ %3018, %3014 ], [ %3018, %3075 ], [ %3018, %3073 ], [ %3018, %3060 ], [ %3052, %3030 ]
  %3108 = phi float [ %3019, %3014 ], [ %3019, %3075 ], [ %3019, %3073 ], [ %3019, %3060 ], [ %3053, %3030 ]
  %3109 = phi float [ %3020, %3014 ], [ %3020, %3075 ], [ %3020, %3073 ], [ %3020, %3060 ], [ %3054, %3030 ]
  %3110 = phi float [ %2229, %3014 ], [ %2229, %3075 ], [ %2229, %3073 ], [ %2229, %3060 ], [ %3045, %3030 ]
  %3111 = phi float [ %2233, %3014 ], [ %2233, %3075 ], [ %2233, %3073 ], [ %2233, %3060 ], [ %3057, %3030 ]
  %3112 = and i32 %3022, 12
  %3113 = icmp eq i32 %3112, 12
  br i1 %3113, label %3220, label %3114

; <label>:3114                                    ; preds = %3103
  %3115 = and i32 %3022, 2097184
  %3116 = icmp eq i32 %3115, 2097184
  %3117 = select i1 %3116, float %2531, float 0.000000e+00
  %3118 = and i32 %3022, 4194336
  %3119 = icmp eq i32 %3118, 4194336
  %3120 = select i1 %3119, float %2531, float 0.000000e+00
  %3121 = and i32 %3022, 8388640
  %3122 = icmp eq i32 %3121, 8388640
  %3123 = select i1 %3122, float %2531, float 0.000000e+00
  %3124 = and i32 %3022, 1024
  %3125 = icmp ne i32 %3124, 0
  %3126 = select i1 %3125, float %2531, float 0.000000e+00
  %3127 = and i32 %3022, 2048
  %3128 = icmp ne i32 %3127, 0
  %3129 = select i1 %3128, float %2531, float 0.000000e+00
  %3130 = icmp eq i32 %3112, 0
  br i1 %3130, label %3131, label %3156

; <label>:3131                                    ; preds = %3114
  %3132 = fsub fast float %2832, %2218
  %3133 = fsub fast float %2833, %2219
  %3134 = fmul fast float %3117, %3132
  %3135 = fmul fast float %3117, %3133
  %3136 = fadd fast float %3134, %2218
  %3137 = fadd fast float %3135, %2219
  %3138 = fsub fast float %2834, %2231
  %3139 = fmul fast float %3120, %3138
  %3140 = fadd fast float %3139, %2231
  %3141 = fsub fast float %2831, %2230
  %3142 = fmul fast float %3123, %3141
  %3143 = fadd fast float %3142, %2230
  %3144 = fsub fast float %2937, %2226
  %3145 = fsub fast float %2938, %2227
  %3146 = fsub fast float %2939, %2228
  %3147 = fmul fast float %3126, %3144
  %3148 = fmul fast float %3126, %3145
  %3149 = fmul fast float %3126, %3146
  %3150 = fadd fast float %3147, %2226
  %3151 = fadd fast float %3148, %2227
  %3152 = fadd fast float %3149, %2228
  %3153 = fsub fast float %2965, %2232
  %3154 = fmul fast float %3129, %3153
  %3155 = fadd fast float %3154, %2232
  br label %3220

; <label>:3156                                    ; preds = %3114
  %3157 = icmp eq i32 %3112, 4
  br i1 %3157, label %3158, label %3198

; <label>:3158                                    ; preds = %3156
  %3159 = fmul fast float %3117, %2832
  %3160 = fmul fast float %3117, %2833
  %3161 = fadd fast float %3159, %2218
  %3162 = fadd fast float %3160, %2219
  %3163 = call float @dx.op.binary.f32(i32 36, float %2231, float %2834)  ; FMin(a,b)
  %3164 = fsub fast float %3163, %2231
  %3165 = fmul fast float %3164, %3120
  %3166 = fadd fast float %3165, %2231
  %3167 = fadd fast float %2831, %2230
  %3168 = fmul fast float %3167, 0x3FF337FAE0000000
  %3169 = fmul fast float %2230, %2230
  %3170 = fmul fast float %2831, %2831
  %3171 = fadd fast float %3170, %3169
  %3172 = fmul fast float %3171, 0x3FE5152B00000000
  %3173 = fmul fast float %2230, 0xBFCC1F85E0000000
  %3174 = fmul fast float %3173, %2831
  %3175 = fadd fast float %3174, 0xBFE1363700000000
  %3176 = fadd fast float %3175, %3168
  %3177 = fsub fast float %3176, %3172
  %3178 = fmul fast float %3167, 0x3FBA6F0D00000000
  %3179 = fmul fast float %3171, 0x3FD0432880000000
  %3180 = fmul fast float %2230, 0xBFEF110800000000
  %3181 = fmul fast float %3180, %2831
  %3182 = fadd fast float %3181, 1.000000e+00
  %3183 = fsub fast float %3182, %3178
  %3184 = fadd fast float %3183, %3179
  %3185 = fdiv fast float %3177, %3184
  %3186 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3187 = fsub fast float %3186, %2230
  %3188 = fmul fast float %3187, %3123
  %3189 = fadd fast float %3188, %2230
  %3190 = fmul fast float %3126, %2937
  %3191 = fmul fast float %3126, %2938
  %3192 = fmul fast float %3126, %2939
  %3193 = fadd fast float %3190, %2226
  %3194 = fadd fast float %3191, %2227
  %3195 = fadd fast float %3192, %2228
  %3196 = fmul fast float %3129, %2965
  %3197 = fadd fast float %3196, %2232
  br label %3220

; <label>:3198                                    ; preds = %3156
  %3199 = icmp eq i32 %3112, 8
  br i1 %3199, label %3200, label %3220

; <label>:3200                                    ; preds = %3198
  %3201 = fmul fast float %3117, %2832
  %3202 = fmul fast float %3117, %2833
  %3203 = fadd fast float %3201, %2218
  %3204 = fadd fast float %3202, %2219
  %3205 = call float @dx.op.binary.f32(i32 36, float %2231, float %2834)  ; FMin(a,b)
  %3206 = fsub fast float %3205, %2231
  %3207 = fmul fast float %3206, %3120
  %3208 = fadd fast float %3207, %2231
  %3209 = fsub fast float %2831, %2230
  %3210 = fmul fast float %3123, %3209
  %3211 = fadd fast float %3210, %2230
  %3212 = fmul fast float %3126, %2937
  %3213 = fmul fast float %3126, %2938
  %3214 = fmul fast float %3126, %2939
  %3215 = fadd fast float %3212, %2226
  %3216 = fadd fast float %3213, %2227
  %3217 = fadd fast float %3214, %2228
  %3218 = fmul fast float %3129, %2965
  %3219 = fadd fast float %3218, %2232
  br label %3220

; <label>:3220                                    ; preds = %3200, %3198, %3158, %3131, %3103, %2530, %2234, %2217
  %3221 = phi float [ %2218, %3103 ], [ %2218, %2530 ], [ %2218, %2217 ], [ %3203, %3200 ], [ %2218, %3198 ], [ %3161, %3158 ], [ %3136, %3131 ], [ %2218, %2234 ]
  %3222 = phi float [ %2219, %3103 ], [ %2219, %2530 ], [ %2219, %2217 ], [ %3204, %3200 ], [ %2219, %3198 ], [ %3162, %3158 ], [ %3137, %3131 ], [ %2219, %2234 ]
  %3223 = phi float [ %3104, %3103 ], [ %2220, %2530 ], [ %2220, %2217 ], [ %3104, %3200 ], [ %3104, %3198 ], [ %3104, %3158 ], [ %3104, %3131 ], [ %2220, %2234 ]
  %3224 = phi float [ %3105, %3103 ], [ %2221, %2530 ], [ %2221, %2217 ], [ %3105, %3200 ], [ %3105, %3198 ], [ %3105, %3158 ], [ %3105, %3131 ], [ %2221, %2234 ]
  %3225 = phi float [ %3106, %3103 ], [ %2222, %2530 ], [ %2222, %2217 ], [ %3106, %3200 ], [ %3106, %3198 ], [ %3106, %3158 ], [ %3106, %3131 ], [ %2222, %2234 ]
  %3226 = phi float [ %3107, %3103 ], [ %2223, %2530 ], [ %2223, %2217 ], [ %3107, %3200 ], [ %3107, %3198 ], [ %3107, %3158 ], [ %3107, %3131 ], [ %2223, %2234 ]
  %3227 = phi float [ %3108, %3103 ], [ %2224, %2530 ], [ %2224, %2217 ], [ %3108, %3200 ], [ %3108, %3198 ], [ %3108, %3158 ], [ %3108, %3131 ], [ %2224, %2234 ]
  %3228 = phi float [ %3109, %3103 ], [ %2225, %2530 ], [ %2225, %2217 ], [ %3109, %3200 ], [ %3109, %3198 ], [ %3109, %3158 ], [ %3109, %3131 ], [ %2225, %2234 ]
  %3229 = phi float [ %2226, %3103 ], [ %2226, %2530 ], [ %2226, %2217 ], [ %3215, %3200 ], [ %2226, %3198 ], [ %3193, %3158 ], [ %3150, %3131 ], [ %2226, %2234 ]
  %3230 = phi float [ %2227, %3103 ], [ %2227, %2530 ], [ %2227, %2217 ], [ %3216, %3200 ], [ %2227, %3198 ], [ %3194, %3158 ], [ %3151, %3131 ], [ %2227, %2234 ]
  %3231 = phi float [ %2228, %3103 ], [ %2228, %2530 ], [ %2228, %2217 ], [ %3217, %3200 ], [ %2228, %3198 ], [ %3195, %3158 ], [ %3152, %3131 ], [ %2228, %2234 ]
  %3232 = phi float [ %3110, %3103 ], [ %2229, %2530 ], [ %2229, %2217 ], [ %3110, %3200 ], [ %3110, %3198 ], [ %3110, %3158 ], [ %3110, %3131 ], [ %2229, %2234 ]
  %3233 = phi float [ %2230, %3103 ], [ %2230, %2530 ], [ %2230, %2217 ], [ %3211, %3200 ], [ %2230, %3198 ], [ %3189, %3158 ], [ %3143, %3131 ], [ %2230, %2234 ]
  %3234 = phi float [ %2231, %3103 ], [ %2231, %2530 ], [ %2231, %2217 ], [ %3208, %3200 ], [ %2231, %3198 ], [ %3166, %3158 ], [ %3140, %3131 ], [ %2231, %2234 ]
  %3235 = phi float [ %2232, %3103 ], [ %2232, %2530 ], [ %2232, %2217 ], [ %3219, %3200 ], [ %2232, %3198 ], [ %3197, %3158 ], [ %3155, %3131 ], [ %2232, %2234 ]
  %3236 = phi float [ %3111, %3103 ], [ %2233, %2530 ], [ %2233, %2217 ], [ %3111, %3200 ], [ %3111, %3198 ], [ %3111, %3158 ], [ %3111, %3131 ], [ %2233, %2234 ]
  br i1 %417, label %4223, label %3237

; <label>:3237                                    ; preds = %3220
  %3238 = icmp ult i32 %471, 4
  %3239 = add i32 %60, 72
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = add i32 %60, 76
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = or i32 %3244, %3241
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %4223, label %3247

; <label>:3247                                    ; preds = %3237
  %3248 = and i32 %3241, 262144
  %3249 = icmp ne i32 %3248, 0
  %3250 = select i1 %3249, float %63, float 1.000000e+00
  %3251 = select i1 %3249, float %64, float 0.000000e+00
  %3252 = select i1 %3249, float %65, float 0.000000e+00
  %3253 = select i1 %3249, float %66, float 1.000000e+00
  %3254 = select i1 %3249, float %67, float %83
  %3255 = select i1 %3249, float %68, float %84
  %3256 = add i32 %60, 332
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = lshr i32 %3258, 16
  %3260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3259)  ; LegacyF16ToF32(value)
  %3261 = fmul fast float %3260, 0x3F50624DE0000000
  %3262 = add i32 %60, 136
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = lshr i32 %3264, 16
  %3266 = and i32 %3265, 255
  %3267 = lshr i32 %3264, 24
  %3268 = add i32 %60, 340
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 65535
  %3272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3271)  ; LegacyF16ToF32(value)
  %3273 = lshr i32 %3270, 16
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = add i32 %60, 80
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = lshr i32 %3277, 22
  %3279 = shl nuw nsw i32 %3278, 5
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = shl i32 %3277, 4
  %3282 = and i32 %3281, 32752
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = lshr i32 %3277, 7
  %3285 = and i32 %3284, 32752
  %3286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3285)  ; LegacyF16ToF32(value)
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 3
  %3289 = fmul fast float %3288, 1.000000e+03
  %3290 = fmul fast float %407, %3289
  %3291 = call float @dx.op.unary.f32(i32 22, float %3290)  ; Frc(value)
  %3292 = fadd fast float %3291, %397
  %3293 = fmul fast float %408, %3289
  %3294 = call float @dx.op.unary.f32(i32 22, float %3293)  ; Frc(value)
  %3295 = fadd fast float %3294, %399
  %3296 = fmul fast float %3261, %3289
  %3297 = call float @dx.op.unary.f32(i32 22, float %3296)  ; Frc(value)
  %3298 = fmul fast float %3297, 0x401921FB60000000
  %3299 = fadd fast float %3298, %3280
  %3300 = call float @dx.op.unary.f32(i32 13, float %3299)  ; Sin(value)
  %3301 = call float @dx.op.unary.f32(i32 12, float %3299)  ; Cos(value)
  %3302 = fsub fast float -0.000000e+00, %3300
  %3303 = fadd fast float %3254, -5.000000e-01
  %3304 = fadd fast float %3255, -5.000000e-01
  %3305 = fmul fast float %3272, %3303
  %3306 = fmul fast float %3274, %3304
  %3307 = fadd fast float %3305, 5.000000e-01
  %3308 = fadd fast float %3306, 5.000000e-01
  %3309 = fmul fast float %3283, %3307
  %3310 = fmul fast float %3286, %3308
  %3311 = fmul fast float %3301, %3309
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %3302, float %3310, float %3311)  ; FMad(a,b,c)
  %3313 = fmul fast float %3300, %3309
  %3314 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3310, float %3313)  ; FMad(a,b,c)
  %3315 = fadd fast float %3292, %3312
  %3316 = fadd fast float %3295, %3314
  %3317 = icmp ugt i32 %3266, 1
  %3318 = icmp ugt i32 %3264, 33554431
  %3319 = or i1 %3318, %3317
  br i1 %3319, label %3320, label %3345

; <label>:3320                                    ; preds = %3247
  %3321 = add i32 %60, 276
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = lshr i32 %3323, 16
  %3325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3324)  ; LegacyF16ToF32(value)
  %3326 = fmul fast float %3288, %3325
  %3327 = call float @dx.op.unary.f32(i32 22, float %3326)  ; Frc(value)
  %3328 = mul nuw nsw i32 %3266, %3267
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3327, %3329
  %3331 = call float @dx.op.unary.f32(i32 27, float %3330)  ; Round_ni(value)
  %3332 = fptoui float %3331 to i32
  %3333 = urem i32 %3332, %3266
  %3334 = udiv i32 %3332, %3267
  %3335 = call float @dx.op.unary.f32(i32 22, float %3315)  ; Frc(value)
  %3336 = call float @dx.op.unary.f32(i32 22, float %3316)  ; Frc(value)
  %3337 = uitofp i32 %3333 to float
  %3338 = uitofp i32 %3334 to float
  %3339 = fadd fast float %3335, %3337
  %3340 = fadd fast float %3336, %3338
  %3341 = uitofp i32 %3266 to float
  %3342 = uitofp i32 %3267 to float
  %3343 = fdiv fast float %3339, %3341
  %3344 = fdiv fast float %3340, %3342
  br label %3345

; <label>:3345                                    ; preds = %3320, %3247
  %3346 = phi float [ %3343, %3320 ], [ %3315, %3247 ]
  %3347 = phi float [ %3344, %3320 ], [ %3316, %3247 ]
  %3348 = and i32 %3241, 16777216
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3459, label %3350

; <label>:3350                                    ; preds = %3345
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.CBufRet.f32 %3351, 2
  %3355 = fadd fast float %3352, %167
  %3356 = fadd fast float %3353, %168
  %3357 = fadd fast float %3354, %169
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3361 = icmp eq i32 %61, 65535
  br i1 %3361, label %3456, label %3362

; <label>:3362                                    ; preds = %3350
  %3363 = lshr i32 %61, 1
  %3364 = shl i32 %3363, 2
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %61, 1
  %3368 = icmp ne i32 %3367, 0
  %3369 = lshr i32 %3366, 16
  %3370 = and i32 %3366, 65535
  %3371 = select i1 %3368, i32 %3369, i32 %3370
  %3372 = icmp eq i32 %3371, 65535
  br i1 %3372, label %3452, label %3373

; <label>:3373                                    ; preds = %3362
  %3374 = mul nuw nsw i32 %3371, 40
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = add nuw nsw i32 %3374, 12
  %3380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = extractvalue %dx.types.ResRet.f32 %3380, 1
  %3383 = extractvalue %dx.types.ResRet.f32 %3380, 2
  %3384 = add nuw nsw i32 %3374, 24
  %3385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3389 = add nuw nsw i32 %3374, 36
  %3390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = fsub fast float %3355, %3376
  %3393 = fsub fast float %3356, %3377
  %3394 = fsub fast float %3357, %3378
  %3395 = fmul fast float %3391, %3392
  %3396 = fmul fast float %3391, %3393
  %3397 = fmul fast float %3391, %3394
  %3398 = call float @dx.op.unary.f32(i32 27, float %3395)  ; Round_ni(value)
  %3399 = call float @dx.op.unary.f32(i32 27, float %3396)  ; Round_ni(value)
  %3400 = call float @dx.op.unary.f32(i32 27, float %3397)  ; Round_ni(value)
  %3401 = fadd fast float %3398, 5.000000e-01
  %3402 = fadd fast float %3399, 5.000000e-01
  %3403 = fadd fast float %3400, 5.000000e-01
  %3404 = fmul fast float %3401, %3381
  %3405 = fmul fast float %3402, %3382
  %3406 = fmul fast float %3403, %3383
  %3407 = shl i32 %61, 2
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = add i32 %3409, 0
  %3411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3412 = call float @dx.op.unary.f32(i32 22, float %3404)  ; Frc(value)
  %3413 = call float @dx.op.unary.f32(i32 22, float %3405)  ; Frc(value)
  %3414 = call float @dx.op.unary.f32(i32 22, float %3406)  ; Frc(value)
  %3415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3411, %dx.types.Handle %55, float %3412, float %3413, float %3414, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = fmul fast float %3416, 1.023000e+03
  %3420 = fmul fast float %3417, 1.023000e+03
  %3421 = fmul fast float %3418, 1.023000e+03
  %3422 = fadd fast float %3419, 5.000000e-01
  %3423 = fadd fast float %3420, 5.000000e-01
  %3424 = fadd fast float %3421, 5.000000e-01
  %3425 = call float @dx.op.unary.f32(i32 27, float %3422)  ; Round_ni(value)
  %3426 = call float @dx.op.unary.f32(i32 27, float %3423)  ; Round_ni(value)
  %3427 = call float @dx.op.unary.f32(i32 27, float %3424)  ; Round_ni(value)
  %3428 = fsub fast float %3395, %3398
  %3429 = fsub fast float %3396, %3399
  %3430 = fsub fast float %3397, %3400
  %3431 = fmul fast float %3428, 7.500000e-01
  %3432 = fmul fast float %3429, 7.500000e-01
  %3433 = fmul fast float %3430, 7.500000e-01
  %3434 = fadd fast float %3398, 1.250000e-01
  %3435 = fadd fast float %3434, %3431
  %3436 = fadd fast float %3435, %3425
  %3437 = fadd fast float %3399, 1.250000e-01
  %3438 = fadd fast float %3437, %3432
  %3439 = fadd fast float %3438, %3426
  %3440 = fadd fast float %3400, 1.250000e-01
  %3441 = fadd fast float %3440, %3433
  %3442 = fadd fast float %3441, %3427
  %3443 = fmul fast float %3436, %3386
  %3444 = fmul fast float %3439, %3387
  %3445 = fmul fast float %3442, %3388
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = add i32 %3447, 0
  %3449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3449, %dx.types.Handle %53, float %3443, float %3444, float %3445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  br label %3452

; <label>:3452                                    ; preds = %3373, %3362
  %3453 = phi float [ %3451, %3373 ], [ -1.000000e+00, %3362 ]
  %3454 = fadd fast float %3453, %3360
  %3455 = call float @dx.op.unary.f32(i32 7, float %3454)  ; Saturate(value)
  br label %3456

; <label>:3456                                    ; preds = %3452, %3350
  %3457 = phi float [ %3455, %3452 ], [ %3360, %3350 ]
  %3458 = fmul fast float %3457, %466
  br label %3459

; <label>:3459                                    ; preds = %3456, %3345
  %3460 = phi float [ %3458, %3456 ], [ %466, %3345 ]
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 256
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3511, label %3465

; <label>:3465                                    ; preds = %3459
  %3466 = add i32 %60, 436
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = add i32 %3468, 0
  %3470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3470, %dx.types.Handle %101, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = add i32 %60, 148
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = shl i32 %3475, 4
  %3477 = and i32 %3476, 32752
  %3478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3477)  ; LegacyF16ToF32(value)
  %3479 = lshr i32 %3475, 7
  %3480 = and i32 %3479, 32752
  %3481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3480)  ; LegacyF16ToF32(value)
  %3482 = fsub fast float 1.000000e+00, %3460
  %3483 = call float @dx.op.binary.f32(i32 35, float %3482, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3484 = bitcast float %3460 to i32
  %3485 = sitofp i32 %3484 to float
  %3486 = fadd fast float %3485, 0xC1CFBF8940000000
  %3487 = fmul fast float %3481, %3486
  %3488 = fadd fast float %3487, 0x41CFBF8940000000
  %3489 = fptosi float %3488 to i32
  %3490 = bitcast i32 %3489 to float
  %3491 = bitcast float %3483 to i32
  %3492 = sitofp i32 %3491 to float
  %3493 = fadd fast float %3492, 0xC1CFBF8940000000
  %3494 = fmul fast float %3493, %3481
  %3495 = fadd fast float %3494, 0x41CFBF8940000000
  %3496 = fptosi float %3495 to i32
  %3497 = bitcast i32 %3496 to float
  %3498 = fmul fast float %3490, %3478
  %3499 = fmul fast float %3497, %3478
  %3500 = fsub fast float %3483, %3498
  %3501 = fadd fast float %3499, %3483
  %3502 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3503 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3504 = fsub fast float %3472, %3502
  %3505 = fsub fast float %3503, %3502
  %3506 = bitcast float %3505 to i32
  %3507 = sub nsw i32 2129859010, %3506
  %3508 = bitcast i32 %3507 to float
  %3509 = fmul fast float %3508, %3504
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  br label %3511

; <label>:3511                                    ; preds = %3465, %3459
  %3512 = phi float [ %3510, %3465 ], [ %3460, %3459 ]
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = and i32 %3514, 128
  %3516 = icmp eq i32 %3515, 0
  br i1 %3516, label %3533, label %3517

; <label>:3517                                    ; preds = %3511
  %3518 = add i32 %60, 420
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = add i32 %3520, 0
  %3522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3522, %dx.types.Handle %101, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 524288
  %3528 = icmp ne i32 %3527, 0
  %3529 = fcmp fast ogt float %3524, 0x3FE0101020000000
  %3530 = select i1 %3529, float 1.000000e+00, float 0.000000e+00
  %3531 = select i1 %3528, float %3530, float %3524
  %3532 = fmul fast float %3531, %3512
  br label %3533

; <label>:3533                                    ; preds = %3517, %3511
  %3534 = phi float [ %3532, %3517 ], [ %3512, %3511 ]
  %3535 = fcmp fast ult float %3534, 0x3F70101020000000
  br i1 %3535, label %4223, label %3536

; <label>:3536                                    ; preds = %3533
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %3538, 16
  %3540 = icmp eq i32 %3539, 0
  br i1 %3540, label %3739, label %3541

; <label>:3541                                    ; preds = %3536
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = add i32 %60, 372
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = add i32 %3546, 0
  %3548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3548, %dx.types.Handle %100, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.ResRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3549, 2
  %3553 = extractvalue %dx.types.ResRet.f32 %3549, 3
  %3554 = and i32 %3543, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = lshr i32 %3543, 8
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3553, %3555
  %3560 = fadd fast float %3559, %3558
  %3561 = fmul fast float %3560, 0x3F70101000000000
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 512
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3574, label %3566

; <label>:3566                                    ; preds = %3541
  %3567 = add i32 %60, 452
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3571, %dx.types.Handle %101, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  br label %3574

; <label>:3574                                    ; preds = %3566, %3541
  %3575 = phi float [ %3573, %3566 ], [ 1.000000e+00, %3541 ]
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = and i32 %3577, 33554432
  %3579 = icmp eq i32 %3578, 0
  br i1 %3579, label %3686, label %3580

; <label>:3580                                    ; preds = %3574
  %3581 = add i32 %60, 272
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 65535
  %3585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3584)  ; LegacyF16ToF32(value)
  %3586 = lshr i32 %3583, 16
  %3587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3586)  ; LegacyF16ToF32(value)
  %3588 = add i32 %60, 276
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 65535
  %3592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3591)  ; LegacyF16ToF32(value)
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = lshr i32 %3594, 24
  %3596 = uitofp i32 %3595 to float
  %3597 = fmul fast float %3596, 0x3F70101020000000
  %3598 = and i32 %3594, 255
  %3599 = uitofp i32 %3598 to float
  %3600 = fmul fast float %3599, 0x3F70101020000000
  %3601 = lshr i32 %3594, 8
  %3602 = and i32 %3601, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = fmul fast float %3603, 0x3F70101020000000
  %3605 = lshr i32 %3594, 16
  %3606 = and i32 %3605, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = add i32 %60, 268
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = lshr i32 %3611, 24
  %3613 = uitofp i32 %3612 to float
  %3614 = fmul fast float %3613, 0x3F70101020000000
  %3615 = and i32 %3611, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = fmul fast float %3616, 0x3F70101020000000
  %3618 = lshr i32 %3611, 8
  %3619 = and i32 %3618, 255
  %3620 = uitofp i32 %3619 to float
  %3621 = fmul fast float %3620, 0x3F70101020000000
  %3622 = lshr i32 %3611, 16
  %3623 = and i32 %3622, 255
  %3624 = uitofp i32 %3623 to float
  %3625 = fmul fast float %3624, 0x3F70101020000000
  %3626 = bitcast float %3550 to i32
  %3627 = ashr i32 %3626, 1
  %3628 = sub nsw i32 1597463174, %3627
  %3629 = bitcast i32 %3628 to float
  %3630 = fmul fast float %3550, 5.000000e-01
  %3631 = fmul fast float %3629, %3629
  %3632 = fmul fast float %3631, %3630
  %3633 = fsub fast float 1.500000e+00, %3632
  %3634 = fmul fast float %3629, %3550
  %3635 = fmul fast float %3634, %3633
  %3636 = bitcast float %3551 to i32
  %3637 = ashr i32 %3636, 1
  %3638 = sub nsw i32 1597463174, %3637
  %3639 = bitcast i32 %3638 to float
  %3640 = fmul fast float %3551, 5.000000e-01
  %3641 = fmul fast float %3639, %3639
  %3642 = fmul fast float %3641, %3640
  %3643 = fsub fast float 1.500000e+00, %3642
  %3644 = fmul fast float %3639, %3551
  %3645 = fmul fast float %3644, %3643
  %3646 = bitcast float %3552 to i32
  %3647 = ashr i32 %3646, 1
  %3648 = sub nsw i32 1597463174, %3647
  %3649 = bitcast i32 %3648 to float
  %3650 = fmul fast float %3552, 5.000000e-01
  %3651 = fmul fast float %3649, %3649
  %3652 = fmul fast float %3651, %3650
  %3653 = fsub fast float 1.500000e+00, %3652
  %3654 = fmul fast float %3649, %3552
  %3655 = fmul fast float %3654, %3653
  %3656 = fsub fast float %3635, %3617
  %3657 = fsub fast float %3645, %3621
  %3658 = fsub fast float %3655, %3625
  %3659 = fmul fast float %3656, %3585
  %3660 = fmul fast float %3657, %3587
  %3661 = fmul fast float %3658, %3592
  %3662 = fadd fast float %3659, %3600
  %3663 = fadd fast float %3660, %3604
  %3664 = fadd fast float %3661, %3608
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = fmul fast float %3665, %3665
  %3669 = fmul fast float %3666, %3666
  %3670 = fmul fast float %3667, %3667
  %3671 = fsub fast float %3668, %3550
  %3672 = fsub fast float %3669, %3551
  %3673 = fsub fast float %3670, %3552
  %3674 = fmul fast float %3671, %3575
  %3675 = fmul fast float %3672, %3575
  %3676 = fmul fast float %3673, %3575
  %3677 = fadd fast float %3674, %3550
  %3678 = fadd fast float %3675, %3551
  %3679 = fadd fast float %3676, %3552
  %3680 = fadd fast float %3597, %3561
  %3681 = fsub fast float %3680, %3614
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fsub fast float %3682, %3561
  %3684 = fmul fast float %3683, %3575
  %3685 = fadd fast float %3684, %3561
  br label %3739

; <label>:3686                                    ; preds = %3574
  %3687 = and i32 %3577, 134217728
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3723, label %3689

; <label>:3689                                    ; preds = %3686
  %3690 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %3691 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %3692 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %3693 = fadd fast float %3690, -5.000000e-01
  %3694 = fadd fast float %3691, -5.000000e-01
  %3695 = fadd fast float %3692, -5.000000e-01
  %3696 = fmul fast float %3693, %3575
  %3697 = fmul fast float %3694, %3575
  %3698 = fmul fast float %3695, %3575
  %3699 = fadd fast float %3696, 5.000000e-01
  %3700 = fadd fast float %3697, 5.000000e-01
  %3701 = fadd fast float %3698, 5.000000e-01
  %3702 = call float @dx.op.unary.f32(i32 24, float %3550)  ; Sqrt(value)
  %3703 = call float @dx.op.unary.f32(i32 24, float %3551)  ; Sqrt(value)
  %3704 = call float @dx.op.unary.f32(i32 24, float %3552)  ; Sqrt(value)
  %3705 = fmul fast float %3699, 2.000000e+00
  %3706 = fsub fast float 1.000000e+00, %3705
  %3707 = fmul fast float %3706, %3702
  %3708 = fadd fast float %3707, %3705
  %3709 = fmul fast float %3708, %3702
  %3710 = fmul fast float %3700, 2.000000e+00
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = fmul fast float %3711, %3703
  %3713 = fadd fast float %3712, %3710
  %3714 = fmul fast float %3713, %3703
  %3715 = fmul fast float %3701, 2.000000e+00
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = fmul fast float %3716, %3704
  %3718 = fadd fast float %3717, %3715
  %3719 = fmul fast float %3718, %3704
  %3720 = fmul fast float %3709, %3709
  %3721 = fmul fast float %3714, %3714
  %3722 = fmul fast float %3719, %3719
  br label %3739

; <label>:3723                                    ; preds = %3686
  %3724 = fmul fast float %384, %384
  %3725 = fmul fast float %388, %388
  %3726 = fmul fast float %392, %392
  %3727 = fadd fast float %3724, -1.000000e+00
  %3728 = fadd fast float %3725, -1.000000e+00
  %3729 = fadd fast float %3726, -1.000000e+00
  %3730 = fmul fast float %3575, %3727
  %3731 = fmul fast float %3575, %3728
  %3732 = fmul fast float %3575, %3729
  %3733 = fadd fast float %3730, 1.000000e+00
  %3734 = fadd fast float %3731, 1.000000e+00
  %3735 = fadd fast float %3732, 1.000000e+00
  %3736 = fmul fast float %3733, %3550
  %3737 = fmul fast float %3734, %3551
  %3738 = fmul fast float %3735, %3552
  br label %3739

; <label>:3739                                    ; preds = %3723, %3689, %3580, %3536
  %3740 = phi float [ %3685, %3580 ], [ %3561, %3689 ], [ %3561, %3723 ], [ 0x3FA23C0BE0000000, %3536 ]
  %3741 = phi float [ %3677, %3580 ], [ %3720, %3689 ], [ %3736, %3723 ], [ 1.000000e+00, %3536 ]
  %3742 = phi float [ %3678, %3580 ], [ %3721, %3689 ], [ %3737, %3723 ], [ 1.000000e+00, %3536 ]
  %3743 = phi float [ %3679, %3580 ], [ %3722, %3689 ], [ %3738, %3723 ], [ 1.000000e+00, %3536 ]
  %3744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.i32 %3744, 1
  %3746 = and i32 %3745, 1
  %3747 = icmp ne i32 %3746, 0
  %3748 = add i32 %60, 356
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = and i32 %3750, 32
  %3752 = icmp ne i32 %3751, 0
  %3753 = and i1 %3747, %3752
  %3754 = select i1 %3753, float 1.000000e+00, float %3741
  %3755 = select i1 %3753, float 0x3FD3333340000000, float %3742
  %3756 = select i1 %3753, float 0x3FD3333340000000, float %3743
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, 32
  %3760 = icmp eq i32 %3759, 0
  br i1 %3760, label %3833, label %3761

; <label>:3761                                    ; preds = %3739
  %3762 = add i32 %60, 140
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = add i32 %60, 388
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = add i32 %3767, 0
  %3769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3769, %dx.types.Handle %100, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = and i32 %3764, 255
  %3776 = uitofp i32 %3775 to float
  %3777 = lshr i32 %3764, 8
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = lshr i32 %3764, 16
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = fmul fast float %3782, 0x3F70101000000000
  %3784 = fmul fast float %3771, %3776
  %3785 = fadd fast float %3784, %3779
  %3786 = fmul fast float %3785, 0x3F70101000000000
  %3787 = fadd fast float %3772, -5.000000e-01
  %3788 = fadd fast float %3774, -5.000000e-01
  %3789 = fmul fast float %3787, %3783
  %3790 = fmul fast float %3788, %3783
  %3791 = fadd fast float %3789, 5.000000e-01
  %3792 = fadd fast float %3790, 5.000000e-01
  %3793 = fmul fast float %3791, 2.000000e+00
  %3794 = fadd fast float %3793, -1.000000e+00
  %3795 = fmul fast float %3792, 2.000000e+00
  %3796 = fadd fast float %3795, -1.000000e+00
  %3797 = fadd fast float %3794, %3796
  %3798 = fmul fast float %3797, 5.000000e-01
  %3799 = fsub fast float %3794, %3796
  %3800 = fmul fast float %3799, 5.000000e-01
  %3801 = call float @dx.op.unary.f32(i32 6, float %3798)  ; FAbs(value)
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = call float @dx.op.unary.f32(i32 6, float %3800)  ; FAbs(value)
  %3804 = fsub fast float %3802, %3803
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3800, float %3804, float %3798, float %3800, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 25, float %3805)  ; Rsqrt(value)
  %3807 = fmul fast float %3798, %3806
  %3808 = fmul fast float %3800, %3806
  %3809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.i32 %3809, 0
  %3811 = and i32 %3810, 67108864
  %3812 = icmp eq i32 %3811, 0
  br i1 %3812, label %3829, label %3813

; <label>:3813                                    ; preds = %3761
  %3814 = add i32 %60, 328
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = and i32 %3816, 65535
  %3818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3817)  ; LegacyF16ToF32(value)
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = and i32 %3820, 65535
  %3822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3821)  ; LegacyF16ToF32(value)
  %3823 = lshr i32 %3816, 16
  %3824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3823)  ; LegacyF16ToF32(value)
  %3825 = fsub fast float %3786, %3824
  %3826 = fmul fast float %3825, %3818
  %3827 = fadd fast float %3826, %3822
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  br label %3829

; <label>:3829                                    ; preds = %3813, %3761
  %3830 = phi float [ %3828, %3813 ], [ %3786, %3761 ]
  %3831 = call float @dx.op.dot2.f32(i32 54, float %3807, float %3808, float %3250, float %3251)  ; Dot2(ax,ay,bx,by)
  %3832 = call float @dx.op.dot2.f32(i32 54, float %3807, float %3808, float %3252, float %3253)  ; Dot2(ax,ay,bx,by)
  br label %3833

; <label>:3833                                    ; preds = %3829, %3739
  %3834 = phi float [ %3830, %3829 ], [ 0x3FD6666660000000, %3739 ]
  %3835 = phi float [ %3831, %3829 ], [ 0.000000e+00, %3739 ]
  %3836 = phi float [ %3832, %3829 ], [ 0.000000e+00, %3739 ]
  %3837 = phi float [ %3773, %3829 ], [ 1.000000e+00, %3739 ]
  %3838 = add i32 %60, 208
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = lshr i32 %3840, 22
  %3842 = shl nuw nsw i32 %3841, 5
  %3843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3842)  ; LegacyF16ToF32(value)
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = and i32 %3845, 64
  %3847 = icmp eq i32 %3846, 0
  br i1 %3847, label %3881, label %3848

; <label>:3848                                    ; preds = %3833
  %3849 = add i32 %60, 404
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = add i32 %3851, 0
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = and i32 %3855, 131072
  %3857 = icmp eq i32 %3856, 0
  %3858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3853, %dx.types.Handle %100, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = fmul fast float %3859, %372
  %3863 = fmul fast float %3860, %375
  %3864 = fmul fast float %3861, %378
  br i1 %3857, label %3871, label %3865

; <label>:3865                                    ; preds = %3848
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = fmul fast float %3867, %3862
  %3869 = fmul fast float %3867, %3863
  %3870 = fmul fast float %3867, %3864
  br label %3871

; <label>:3871                                    ; preds = %3865, %3848
  %3872 = phi float [ %3868, %3865 ], [ %3862, %3848 ]
  %3873 = phi float [ %3869, %3865 ], [ %3863, %3848 ]
  %3874 = phi float [ %3870, %3865 ], [ %3864, %3848 ]
  %3875 = fmul fast float %3872, %3843
  %3876 = select i1 %229, float %3875, float %3872
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3876, float %3873, float %3874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = select i1 %229, float 0.000000e+00, float %3872
  %3879 = select i1 %229, float %3877, float %3873
  %3880 = select i1 %229, float 0.000000e+00, float %3874
  br label %3881

; <label>:3881                                    ; preds = %3871, %3833
  %3882 = phi float [ %3878, %3871 ], [ 0.000000e+00, %3833 ]
  %3883 = phi float [ %3879, %3871 ], [ 0.000000e+00, %3833 ]
  %3884 = phi float [ %3880, %3871 ], [ 0.000000e+00, %3833 ]
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = and i32 %3886, 1024
  %3888 = icmp eq i32 %3887, 0
  br i1 %3888, label %3919, label %3889

; <label>:3889                                    ; preds = %3881
  %3890 = add i32 %60, 200
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = and i32 %3892, 255
  %3894 = uitofp i32 %3893 to float
  %3895 = fmul fast float %3894, 0x3F70101020000000
  %3896 = lshr i32 %3892, 8
  %3897 = and i32 %3896, 255
  %3898 = uitofp i32 %3897 to float
  %3899 = fmul fast float %3898, 0x3F70101020000000
  %3900 = lshr i32 %3892, 16
  %3901 = and i32 %3900, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = fmul fast float %3902, 0x3F70101020000000
  %3904 = fmul fast float %3895, %3895
  %3905 = fmul fast float %3899, %3899
  %3906 = fmul fast float %3903, %3903
  %3907 = add i32 %60, 468
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = add i32 %3909, 0
  %3911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3911, %dx.types.Handle %101, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = fmul fast float %3904, %3913
  %3917 = fmul fast float %3905, %3914
  %3918 = fmul fast float %3906, %3915
  br label %3919

; <label>:3919                                    ; preds = %3889, %3881
  %3920 = phi float [ %3916, %3889 ], [ 0.000000e+00, %3881 ]
  %3921 = phi float [ %3917, %3889 ], [ 0.000000e+00, %3881 ]
  %3922 = phi float [ %3918, %3889 ], [ 0.000000e+00, %3881 ]
  %3923 = fcmp fast ogt float %3920, 0.000000e+00
  %3924 = fcmp fast ogt float %3921, 0.000000e+00
  %3925 = fcmp fast ogt float %3922, 0.000000e+00
  %3926 = call float @dx.op.unary.f32(i32 23, float %3920)  ; Log(value)
  %3927 = call float @dx.op.unary.f32(i32 23, float %3921)  ; Log(value)
  %3928 = call float @dx.op.unary.f32(i32 23, float %3922)  ; Log(value)
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = lshr i32 %3930, 7
  %3932 = and i32 %3931, 32752
  %3933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3932)  ; LegacyF16ToF32(value)
  %3934 = fmul fast float %3926, 0xBFE62E4300000000
  %3935 = fmul fast float %3934, %3933
  %3936 = fmul fast float %3927, 0xBFE62E4300000000
  %3937 = fmul fast float %3936, %3933
  %3938 = fmul fast float %3928, 0xBFE62E4300000000
  %3939 = fmul fast float %3938, %3933
  %3940 = select i1 %3923, float %3935, float 1.270000e+02
  %3941 = select i1 %3924, float %3937, float 1.270000e+02
  %3942 = select i1 %3925, float %3939, float 1.270000e+02
  %3943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.i32 %3943, 0
  %3945 = and i32 %3944, 10240
  %3946 = icmp eq i32 %3945, 0
  br i1 %3946, label %3967, label %3947

; <label>:3947                                    ; preds = %3919
  %3948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.i32 %3948, 0
  %3950 = and i32 %3949, 2048
  %3951 = icmp eq i32 %3950, 0
  br i1 %3951, label %3967, label %3952

; <label>:3952                                    ; preds = %3947
  %3953 = add i32 %60, 484
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 0
  %3956 = add i32 %3955, 0
  %3957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3957, %dx.types.Handle %101, float %3346, float %3347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = shl i32 %3961, 4
  %3963 = and i32 %3962, 32752
  %3964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3963)  ; LegacyF16ToF32(value)
  %3965 = fmul fast float %3964, %3959
  %3966 = call float @dx.op.binary.f32(i32 35, float %3965, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3967

; <label>:3967                                    ; preds = %3952, %3947, %3919
  %3968 = phi float [ %3966, %3952 ], [ 0x3F70101020000000, %3947 ], [ 0x3F70101020000000, %3919 ]
  %3969 = add i32 %60, 144
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 255
  %3973 = uitofp i32 %3972 to float
  %3974 = lshr i32 %3971, 8
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = call float @dx.op.dot3.f32(i32 55, float %3754, float %3755, float %3756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = fmul fast float %3976, %3977
  %3979 = fadd fast float %3978, %3973
  %3980 = fmul fast float %3979, 0x3F70101020000000
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  br i1 %3238, label %3982, label %4017

; <label>:3982                                    ; preds = %3967
  %3983 = fmul fast float %3968, 2.000000e+00
  %3984 = fcmp fast olt float %3940, 1.270000e+02
  %3985 = fcmp fast olt float %3941, 1.270000e+02
  %3986 = fcmp fast olt float %3942, 1.270000e+02
  %3987 = fmul fast float %3940, 0xBFF7154760000000
  %3988 = fmul fast float %3987, %3983
  %3989 = fmul fast float %3941, 0xBFF7154760000000
  %3990 = fmul fast float %3989, %3983
  %3991 = fmul fast float %3942, 0xBFF7154760000000
  %3992 = fmul fast float %3991, %3983
  %3993 = call float @dx.op.unary.f32(i32 21, float %3988)  ; Exp(value)
  %3994 = call float @dx.op.unary.f32(i32 21, float %3990)  ; Exp(value)
  %3995 = call float @dx.op.unary.f32(i32 21, float %3992)  ; Exp(value)
  %3996 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3997 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3998 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3999 = fadd fast float %3996, -1.000000e+00
  %4000 = select i1 %3984, float %3999, float -1.000000e+00
  %4001 = fadd fast float %3997, -1.000000e+00
  %4002 = select i1 %3985, float %4001, float -1.000000e+00
  %4003 = fadd fast float %3998, -1.000000e+00
  %4004 = select i1 %3986, float %4003, float -1.000000e+00
  %4005 = fmul fast float %4000, %3534
  %4006 = fmul fast float %4002, %3534
  %4007 = fmul fast float %4004, %3534
  %4008 = fadd fast float %4005, 1.000000e+00
  %4009 = fadd fast float %4006, 1.000000e+00
  %4010 = fadd fast float %4007, 1.000000e+00
  %4011 = fmul fast float %4008, %3223
  %4012 = fmul fast float %4009, %3224
  %4013 = fmul fast float %4010, %3225
  %4014 = fmul fast float %4008, %3226
  %4015 = fmul fast float %4009, %3227
  %4016 = fmul fast float %4010, %3228
  br label %4017

; <label>:4017                                    ; preds = %3982, %3967
  %4018 = phi float [ %4011, %3982 ], [ %3223, %3967 ]
  %4019 = phi float [ %4012, %3982 ], [ %3224, %3967 ]
  %4020 = phi float [ %4013, %3982 ], [ %3225, %3967 ]
  %4021 = phi float [ %4014, %3982 ], [ %3226, %3967 ]
  %4022 = phi float [ %4015, %3982 ], [ %3227, %3967 ]
  %4023 = phi float [ %4016, %3982 ], [ %3228, %3967 ]
  %4024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.i32 %4024, 0
  %4026 = and i32 %4025, 3
  %4027 = icmp eq i32 %4026, 3
  br i1 %4027, label %4106, label %4028

; <label>:4028                                    ; preds = %4017
  %4029 = and i32 %4025, 16
  %4030 = icmp ne i32 %4029, 0
  %4031 = select i1 %4030, float %3534, float 0.000000e+00
  %4032 = icmp eq i32 %4026, 0
  br i1 %4032, label %4033, label %4061

; <label>:4033                                    ; preds = %4028
  %4034 = and i32 %4025, 64
  %4035 = icmp ne i32 %4034, 0
  %4036 = select i1 %4035, float %3534, float 0.000000e+00
  %4037 = fsub fast float %3754, %4018
  %4038 = fsub fast float %3755, %4019
  %4039 = fsub fast float %3756, %4020
  %4040 = fmul fast float %4031, %4037
  %4041 = fmul fast float %4031, %4038
  %4042 = fmul fast float %4031, %4039
  %4043 = fadd fast float %4040, %4018
  %4044 = fadd fast float %4041, %4019
  %4045 = fadd fast float %4042, %4020
  %4046 = fsub fast float %3740, %3232
  %4047 = fmul fast float %4031, %4046
  %4048 = fadd fast float %4047, %3232
  %4049 = fsub fast float %3882, %4021
  %4050 = fsub fast float %3883, %4022
  %4051 = fsub fast float %3884, %4023
  %4052 = fmul fast float %4036, %4049
  %4053 = fmul fast float %4036, %4050
  %4054 = fmul fast float %4036, %4051
  %4055 = fadd fast float %4052, %4021
  %4056 = fadd fast float %4053, %4022
  %4057 = fadd fast float %4054, %4023
  %4058 = fsub fast float %3981, %3236
  %4059 = fmul fast float %4031, %4058
  %4060 = fadd fast float %4059, %3236
  br label %4106

; <label>:4061                                    ; preds = %4028
  %4062 = icmp eq i32 %4026, 1
  br i1 %4062, label %4063, label %4076

; <label>:4063                                    ; preds = %4061
  %4064 = fadd fast float %3754, -1.000000e+00
  %4065 = fadd fast float %3755, -1.000000e+00
  %4066 = fadd fast float %3756, -1.000000e+00
  %4067 = fmul fast float %4031, %4064
  %4068 = fmul fast float %4031, %4065
  %4069 = fmul fast float %4031, %4066
  %4070 = fadd fast float %4067, 1.000000e+00
  %4071 = fadd fast float %4068, 1.000000e+00
  %4072 = fadd fast float %4069, 1.000000e+00
  %4073 = fmul fast float %4070, %4018
  %4074 = fmul fast float %4071, %4019
  %4075 = fmul fast float %4072, %4020
  br label %4106

; <label>:4076                                    ; preds = %4061
  %4077 = icmp eq i32 %4026, 2
  br i1 %4077, label %4078, label %4106

; <label>:4078                                    ; preds = %4076
  %4079 = call float @dx.op.unary.f32(i32 24, float %3754)  ; Sqrt(value)
  %4080 = call float @dx.op.unary.f32(i32 24, float %3755)  ; Sqrt(value)
  %4081 = call float @dx.op.unary.f32(i32 24, float %3756)  ; Sqrt(value)
  %4082 = fadd fast float %4079, -5.000000e-01
  %4083 = fadd fast float %4080, -5.000000e-01
  %4084 = fadd fast float %4081, -5.000000e-01
  %4085 = fmul fast float %4082, %4031
  %4086 = fmul fast float %4083, %4031
  %4087 = fmul fast float %4084, %4031
  %4088 = fadd fast float %4085, 5.000000e-01
  %4089 = fadd fast float %4086, 5.000000e-01
  %4090 = fadd fast float %4087, 5.000000e-01
  %4091 = fmul fast float %4088, 2.000000e+00
  %4092 = fsub fast float 1.000000e+00, %4091
  %4093 = fmul fast float %4092, %4018
  %4094 = fadd fast float %4093, %4091
  %4095 = fmul fast float %4094, %4018
  %4096 = fmul fast float %4089, 2.000000e+00
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = fmul fast float %4097, %4019
  %4099 = fadd fast float %4098, %4096
  %4100 = fmul fast float %4099, %4019
  %4101 = fmul fast float %4090, 2.000000e+00
  %4102 = fsub fast float 1.000000e+00, %4101
  %4103 = fmul fast float %4102, %4020
  %4104 = fadd fast float %4103, %4101
  %4105 = fmul fast float %4104, %4020
  br label %4106

; <label>:4106                                    ; preds = %4078, %4076, %4063, %4033, %4017
  %4107 = phi float [ %4018, %4017 ], [ %4095, %4078 ], [ %4018, %4076 ], [ %4073, %4063 ], [ %4043, %4033 ]
  %4108 = phi float [ %4019, %4017 ], [ %4100, %4078 ], [ %4019, %4076 ], [ %4074, %4063 ], [ %4044, %4033 ]
  %4109 = phi float [ %4020, %4017 ], [ %4105, %4078 ], [ %4020, %4076 ], [ %4075, %4063 ], [ %4045, %4033 ]
  %4110 = phi float [ %4021, %4017 ], [ %4021, %4078 ], [ %4021, %4076 ], [ %4021, %4063 ], [ %4055, %4033 ]
  %4111 = phi float [ %4022, %4017 ], [ %4022, %4078 ], [ %4022, %4076 ], [ %4022, %4063 ], [ %4056, %4033 ]
  %4112 = phi float [ %4023, %4017 ], [ %4023, %4078 ], [ %4023, %4076 ], [ %4023, %4063 ], [ %4057, %4033 ]
  %4113 = phi float [ %3232, %4017 ], [ %3232, %4078 ], [ %3232, %4076 ], [ %3232, %4063 ], [ %4048, %4033 ]
  %4114 = phi float [ %3236, %4017 ], [ %3236, %4078 ], [ %3236, %4076 ], [ %3236, %4063 ], [ %4060, %4033 ]
  %4115 = and i32 %4025, 12
  %4116 = icmp eq i32 %4115, 12
  br i1 %4116, label %4223, label %4117

; <label>:4117                                    ; preds = %4106
  %4118 = and i32 %4025, 2097184
  %4119 = icmp eq i32 %4118, 2097184
  %4120 = select i1 %4119, float %3534, float 0.000000e+00
  %4121 = and i32 %4025, 4194336
  %4122 = icmp eq i32 %4121, 4194336
  %4123 = select i1 %4122, float %3534, float 0.000000e+00
  %4124 = and i32 %4025, 8388640
  %4125 = icmp eq i32 %4124, 8388640
  %4126 = select i1 %4125, float %3534, float 0.000000e+00
  %4127 = and i32 %4025, 1024
  %4128 = icmp ne i32 %4127, 0
  %4129 = select i1 %4128, float %3534, float 0.000000e+00
  %4130 = and i32 %4025, 2048
  %4131 = icmp ne i32 %4130, 0
  %4132 = select i1 %4131, float %3534, float 0.000000e+00
  %4133 = icmp eq i32 %4115, 0
  br i1 %4133, label %4134, label %4159

; <label>:4134                                    ; preds = %4117
  %4135 = fsub fast float %3835, %3221
  %4136 = fsub fast float %3836, %3222
  %4137 = fmul fast float %4120, %4135
  %4138 = fmul fast float %4120, %4136
  %4139 = fadd fast float %4137, %3221
  %4140 = fadd fast float %4138, %3222
  %4141 = fsub fast float %3837, %3234
  %4142 = fmul fast float %4123, %4141
  %4143 = fadd fast float %4142, %3234
  %4144 = fsub fast float %3834, %3233
  %4145 = fmul fast float %4126, %4144
  %4146 = fadd fast float %4145, %3233
  %4147 = fsub fast float %3940, %3229
  %4148 = fsub fast float %3941, %3230
  %4149 = fsub fast float %3942, %3231
  %4150 = fmul fast float %4129, %4147
  %4151 = fmul fast float %4129, %4148
  %4152 = fmul fast float %4129, %4149
  %4153 = fadd fast float %4150, %3229
  %4154 = fadd fast float %4151, %3230
  %4155 = fadd fast float %4152, %3231
  %4156 = fsub fast float %3968, %3235
  %4157 = fmul fast float %4132, %4156
  %4158 = fadd fast float %4157, %3235
  br label %4223

; <label>:4159                                    ; preds = %4117
  %4160 = icmp eq i32 %4115, 4
  br i1 %4160, label %4161, label %4201

; <label>:4161                                    ; preds = %4159
  %4162 = fmul fast float %4120, %3835
  %4163 = fmul fast float %4120, %3836
  %4164 = fadd fast float %4162, %3221
  %4165 = fadd fast float %4163, %3222
  %4166 = call float @dx.op.binary.f32(i32 36, float %3234, float %3837)  ; FMin(a,b)
  %4167 = fsub fast float %4166, %3234
  %4168 = fmul fast float %4167, %4123
  %4169 = fadd fast float %4168, %3234
  %4170 = fadd fast float %3834, %3233
  %4171 = fmul fast float %4170, 0x3FF337FAE0000000
  %4172 = fmul fast float %3233, %3233
  %4173 = fmul fast float %3834, %3834
  %4174 = fadd fast float %4173, %4172
  %4175 = fmul fast float %4174, 0x3FE5152B00000000
  %4176 = fmul fast float %3233, 0xBFCC1F85E0000000
  %4177 = fmul fast float %4176, %3834
  %4178 = fadd fast float %4177, 0xBFE1363700000000
  %4179 = fadd fast float %4178, %4171
  %4180 = fsub fast float %4179, %4175
  %4181 = fmul fast float %4170, 0x3FBA6F0D00000000
  %4182 = fmul fast float %4174, 0x3FD0432880000000
  %4183 = fmul fast float %3233, 0xBFEF110800000000
  %4184 = fmul fast float %4183, %3834
  %4185 = fadd fast float %4184, 1.000000e+00
  %4186 = fsub fast float %4185, %4181
  %4187 = fadd fast float %4186, %4182
  %4188 = fdiv fast float %4180, %4187
  %4189 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4190 = fsub fast float %4189, %3233
  %4191 = fmul fast float %4190, %4126
  %4192 = fadd fast float %4191, %3233
  %4193 = fmul fast float %4129, %3940
  %4194 = fmul fast float %4129, %3941
  %4195 = fmul fast float %4129, %3942
  %4196 = fadd fast float %4193, %3229
  %4197 = fadd fast float %4194, %3230
  %4198 = fadd fast float %4195, %3231
  %4199 = fmul fast float %4132, %3968
  %4200 = fadd fast float %4199, %3235
  br label %4223

; <label>:4201                                    ; preds = %4159
  %4202 = icmp eq i32 %4115, 8
  br i1 %4202, label %4203, label %4223

; <label>:4203                                    ; preds = %4201
  %4204 = fmul fast float %4120, %3835
  %4205 = fmul fast float %4120, %3836
  %4206 = fadd fast float %4204, %3221
  %4207 = fadd fast float %4205, %3222
  %4208 = call float @dx.op.binary.f32(i32 36, float %3234, float %3837)  ; FMin(a,b)
  %4209 = fsub fast float %4208, %3234
  %4210 = fmul fast float %4209, %4123
  %4211 = fadd fast float %4210, %3234
  %4212 = fsub fast float %3834, %3233
  %4213 = fmul fast float %4126, %4212
  %4214 = fadd fast float %4213, %3233
  %4215 = fmul fast float %4129, %3940
  %4216 = fmul fast float %4129, %3941
  %4217 = fmul fast float %4129, %3942
  %4218 = fadd fast float %4215, %3229
  %4219 = fadd fast float %4216, %3230
  %4220 = fadd fast float %4217, %3231
  %4221 = fmul fast float %4132, %3968
  %4222 = fadd fast float %4221, %3235
  br label %4223

; <label>:4223                                    ; preds = %4203, %4201, %4161, %4134, %4106, %3533, %3237, %3220
  %4224 = phi float [ %3221, %4106 ], [ %3221, %3533 ], [ %3221, %3220 ], [ %3221, %3237 ], [ %4139, %4134 ], [ %4164, %4161 ], [ %3221, %4201 ], [ %4206, %4203 ]
  %4225 = phi float [ %3222, %4106 ], [ %3222, %3533 ], [ %3222, %3220 ], [ %3222, %3237 ], [ %4140, %4134 ], [ %4165, %4161 ], [ %3222, %4201 ], [ %4207, %4203 ]
  %4226 = phi float [ %4107, %4106 ], [ %3223, %3533 ], [ %3223, %3220 ], [ %3223, %3237 ], [ %4107, %4134 ], [ %4107, %4161 ], [ %4107, %4201 ], [ %4107, %4203 ]
  %4227 = phi float [ %4108, %4106 ], [ %3224, %3533 ], [ %3224, %3220 ], [ %3224, %3237 ], [ %4108, %4134 ], [ %4108, %4161 ], [ %4108, %4201 ], [ %4108, %4203 ]
  %4228 = phi float [ %4109, %4106 ], [ %3225, %3533 ], [ %3225, %3220 ], [ %3225, %3237 ], [ %4109, %4134 ], [ %4109, %4161 ], [ %4109, %4201 ], [ %4109, %4203 ]
  %4229 = phi float [ %4110, %4106 ], [ %3226, %3533 ], [ %3226, %3220 ], [ %3226, %3237 ], [ %4110, %4134 ], [ %4110, %4161 ], [ %4110, %4201 ], [ %4110, %4203 ]
  %4230 = phi float [ %4111, %4106 ], [ %3227, %3533 ], [ %3227, %3220 ], [ %3227, %3237 ], [ %4111, %4134 ], [ %4111, %4161 ], [ %4111, %4201 ], [ %4111, %4203 ]
  %4231 = phi float [ %4112, %4106 ], [ %3228, %3533 ], [ %3228, %3220 ], [ %3228, %3237 ], [ %4112, %4134 ], [ %4112, %4161 ], [ %4112, %4201 ], [ %4112, %4203 ]
  %4232 = phi float [ %3229, %4106 ], [ %3229, %3533 ], [ %3229, %3220 ], [ %3229, %3237 ], [ %4153, %4134 ], [ %4196, %4161 ], [ %3229, %4201 ], [ %4218, %4203 ]
  %4233 = phi float [ %3230, %4106 ], [ %3230, %3533 ], [ %3230, %3220 ], [ %3230, %3237 ], [ %4154, %4134 ], [ %4197, %4161 ], [ %3230, %4201 ], [ %4219, %4203 ]
  %4234 = phi float [ %3231, %4106 ], [ %3231, %3533 ], [ %3231, %3220 ], [ %3231, %3237 ], [ %4155, %4134 ], [ %4198, %4161 ], [ %3231, %4201 ], [ %4220, %4203 ]
  %4235 = phi float [ %4113, %4106 ], [ %3232, %3533 ], [ %3232, %3220 ], [ %3232, %3237 ], [ %4113, %4134 ], [ %4113, %4161 ], [ %4113, %4201 ], [ %4113, %4203 ]
  %4236 = phi float [ %3233, %4106 ], [ %3233, %3533 ], [ %3233, %3220 ], [ %3233, %3237 ], [ %4146, %4134 ], [ %4192, %4161 ], [ %3233, %4201 ], [ %4214, %4203 ]
  %4237 = phi float [ %3234, %4106 ], [ %3234, %3533 ], [ %3234, %3220 ], [ %3234, %3237 ], [ %4143, %4134 ], [ %4169, %4161 ], [ %3234, %4201 ], [ %4211, %4203 ]
  %4238 = phi float [ %3235, %4106 ], [ %3235, %3533 ], [ %3235, %3220 ], [ %3235, %3237 ], [ %4158, %4134 ], [ %4200, %4161 ], [ %3235, %4201 ], [ %4222, %4203 ]
  %4239 = phi float [ %4114, %4106 ], [ %3236, %3533 ], [ %3236, %3220 ], [ %3236, %3237 ], [ %4114, %4134 ], [ %4114, %4161 ], [ %4114, %4201 ], [ %4114, %4203 ]
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = call float @dx.op.dot2.f32(i32 54, float %4224, float %4225, float %4224, float %4225)  ; Dot2(ax,ay,bx,by)
  %4243 = fmul fast float %4242, 0x3FE3333340000000
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4224, float %4225, float %4244, float %4224, float %4225, float %4244)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.unary.f32(i32 25, float %4245)  ; Rsqrt(value)
  %4247 = fmul fast float %4246, %4224
  %4248 = fmul fast float %4246, %4225
  %4249 = fmul fast float %4244, %4246
  %4250 = fmul fast float %4249, %111
  %4251 = fmul fast float %4249, %112
  %4252 = fmul fast float %4249, %113
  %4253 = fmul fast float %4247, %76
  %4254 = fmul fast float %4247, %77
  %4255 = fmul fast float %4247, %78
  %4256 = fadd fast float %4250, %4253
  %4257 = fadd fast float %4251, %4254
  %4258 = fadd fast float %4252, %4255
  %4259 = fmul fast float %123, %4248
  %4260 = fmul fast float %124, %4248
  %4261 = fmul fast float %125, %4248
  %4262 = fadd fast float %4256, %4259
  %4263 = fadd fast float %4257, %4260
  %4264 = fadd fast float %4258, %4261
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 25, float %4265)  ; Rsqrt(value)
  %4267 = fmul fast float %4262, %4266
  %4268 = fmul fast float %4263, %4266
  %4269 = fmul fast float %4264, %4266
  %4270 = and i32 %62, 1
  %4271 = icmp eq i32 %4270, 0
  br i1 %4271, label %4272, label %4811

; <label>:4272                                    ; preds = %4223
  %4273 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4274 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %4275 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %4276 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4277 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %4278 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %4279 = fadd fast float %4273, %167
  %4280 = fadd fast float %4274, %168
  %4281 = fadd fast float %4275, %169
  %4282 = fadd fast float %4276, %167
  %4283 = fadd fast float %4277, %168
  %4284 = fadd fast float %4278, %169
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4292 = fmul fast float %4286, %104
  %4293 = fmul fast float %4292, %4290
  %4294 = fmul fast float %4287, %105
  %4295 = fmul fast float %4294, %4291
  %4296 = fptoui float %4293 to i32
  %4297 = fptoui float %4295 to i32
  %4298 = fadd fast float %4286, -1.000000e+00
  %4299 = fadd fast float %4287, -1.000000e+00
  %4300 = fptoui float %4298 to i32
  %4301 = fptoui float %4299 to i32
  %4302 = call i32 @dx.op.binary.i32(i32 40, i32 %4296, i32 %4300)  ; UMin(a,b)
  %4303 = call i32 @dx.op.binary.i32(i32 40, i32 %4297, i32 %4301)  ; UMin(a,b)
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4306 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4307 = fmul fast float %4305, %92
  %4308 = fsub fast float %4307, %4306
  %4309 = fadd fast float %4288, -1.000000e+00
  %4310 = call float @dx.op.binary.f32(i32 36, float %4308, float %4309)  ; FMin(a,b)
  %4311 = fptoui float %4310 to i32
  %4312 = fptoui float %4286 to i32
  %4313 = fptoui float %4287 to i32
  %4314 = mul i32 %4311, %4313
  %4315 = add i32 %4314, %4303
  %4316 = mul i32 %4315, %4312
  %4317 = add i32 %4316, %4302
  %4318 = shl i32 %4317, 2
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = and i32 %4320, 1023
  %4322 = lshr i32 %4320, 10
  %4323 = icmp eq i32 %4321, 0
  br i1 %4323, label %4777, label %4324

; <label>:4324                                    ; preds = %4272
  %4325 = and i32 %4320, 1023
  br label %4326

; <label>:4326                                    ; preds = %4455, %4324
  %4327 = phi i32 [ %4405, %4455 ], [ 0, %4324 ]
  %4328 = phi float [ %4456, %4455 ], [ 0.000000e+00, %4324 ]
  %4329 = phi float [ %4457, %4455 ], [ %4241, %4324 ]
  %4330 = phi float [ %4458, %4455 ], [ %4239, %4324 ]
  %4331 = phi float [ %4459, %4455 ], [ %4232, %4324 ]
  %4332 = phi float [ %4460, %4455 ], [ %4233, %4324 ]
  %4333 = phi float [ %4461, %4455 ], [ %4234, %4324 ]
  %4334 = phi float [ %4462, %4455 ], [ 0.000000e+00, %4324 ]
  %4335 = phi float [ %4463, %4455 ], [ 0.000000e+00, %4324 ]
  %4336 = phi float [ %4464, %4455 ], [ %4229, %4324 ]
  %4337 = phi float [ %4465, %4455 ], [ %4230, %4324 ]
  %4338 = phi float [ %4466, %4455 ], [ %4231, %4324 ]
  %4339 = phi float [ %4467, %4455 ], [ %4267, %4324 ]
  %4340 = phi float [ %4468, %4455 ], [ %4268, %4324 ]
  %4341 = phi float [ %4469, %4455 ], [ %4269, %4324 ]
  %4342 = phi float [ %4470, %4455 ], [ %4237, %4324 ]
  %4343 = phi float [ %4471, %4455 ], [ %4236, %4324 ]
  %4344 = phi float [ %4472, %4455 ], [ 0.000000e+00, %4324 ]
  %4345 = phi float [ %4473, %4455 ], [ %4235, %4324 ]
  %4346 = phi float [ %4474, %4455 ], [ %4226, %4324 ]
  %4347 = phi float [ %4475, %4455 ], [ %4227, %4324 ]
  %4348 = phi float [ %4476, %4455 ], [ %4228, %4324 ]
  %4349 = add nuw nsw i32 %4327, %4322
  %4350 = shl i32 %4349, 2
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = shl i32 %4352, 8
  %4354 = or i32 %4353, 48
  %4355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.ResRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.ResRet.f32 %4355, 2
  %4359 = extractvalue %dx.types.ResRet.f32 %4355, 3
  %4360 = or i32 %4353, 64
  %4361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.i32 %4361, 0
  %4363 = extractvalue %dx.types.ResRet.i32 %4361, 1
  %4364 = or i32 %4353, 80
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 3
  %4368 = or i32 %4353, 96
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.ResRet.f32 %4369, 3
  %4374 = or i32 %4353, 112
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4377 = or i32 %4353, 128
  %4378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4382 = extractvalue %dx.types.ResRet.f32 %4378, 3
  %4383 = or i32 %4353, 144
  %4384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4384, 3
  %4389 = or i32 %4353, 160
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = or i32 %4353, 192
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = or i32 %4353, 208
  %4399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.f32 %4399, 0
  %4401 = or i32 %4353, 248
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4405 = add nuw nsw i32 %4327, 1
  %4406 = bitcast float %4359 to i32
  %4407 = and i32 %4406, 512
  %4408 = icmp eq i32 %4407, 0
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.ResRet.f32 %4409, 3
  %4414 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4415 = or i32 %4353, 16
  %4416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = call float @dx.op.dot4.f32(i32 56, float %4417, float %4418, float %4419, float %4420, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4422 = or i32 %4353, 32
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = extractvalue %dx.types.ResRet.f32 %4423, 3
  %4428 = call float @dx.op.dot4.f32(i32 56, float %4424, float %4425, float %4426, float %4427, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4429 = call float @dx.op.unary.f32(i32 27, float %4414)  ; Round_ni(value)
  %4430 = call float @dx.op.unary.f32(i32 6, float %4429)  ; FAbs(value)
  %4431 = call float @dx.op.unary.f32(i32 27, float %4421)  ; Round_ni(value)
  %4432 = call float @dx.op.unary.f32(i32 6, float %4431)  ; FAbs(value)
  %4433 = call float @dx.op.unary.f32(i32 6, float %4428)  ; FAbs(value)
  %4434 = call float @dx.op.unary.f32(i32 27, float %4433)  ; Round_ni(value)
  %4435 = fadd fast float %4432, %4430
  %4436 = fadd fast float %4435, %4434
  %4437 = fcmp fast oeq float %4436, 0.000000e+00
  %4438 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %4279, float %4280, float %4281, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4439 = call float @dx.op.dot4.f32(i32 56, float %4417, float %4418, float %4419, float %4420, float %4279, float %4280, float %4281, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4440 = call float @dx.op.dot4.f32(i32 56, float %4410, float %4411, float %4412, float %4413, float %4282, float %4283, float %4284, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4441 = call float @dx.op.dot4.f32(i32 56, float %4417, float %4418, float %4419, float %4420, float %4282, float %4283, float %4284, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4442 = fsub fast float %4438, %4414
  %4443 = fsub fast float %4440, %4414
  %4444 = fsub fast float %4439, %4421
  %4445 = fsub fast float %4441, %4421
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4356, float %4357, float %4358, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4449 = fadd fast float %4448, %4446
  %4450 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4452 = fcmp fast ogt float %4450, %4451
  %4453 = and i1 %4437, %4452
  %4454 = and i1 %4408, %4453
  br i1 %4454, label %4478, label %4455

; <label>:4455                                    ; preds = %4763, %4559, %4478, %4326
  %4456 = phi float [ %4328, %4478 ], [ %4562, %4559 ], [ %4562, %4763 ], [ %4328, %4326 ]
  %4457 = phi float [ %4329, %4478 ], [ %4329, %4559 ], [ %4739, %4763 ], [ %4329, %4326 ]
  %4458 = phi float [ %4330, %4478 ], [ %4330, %4559 ], [ %4737, %4763 ], [ %4330, %4326 ]
  %4459 = phi float [ %4331, %4478 ], [ %4331, %4559 ], [ %4715, %4763 ], [ %4331, %4326 ]
  %4460 = phi float [ %4332, %4478 ], [ %4332, %4559 ], [ %4716, %4763 ], [ %4332, %4326 ]
  %4461 = phi float [ %4333, %4478 ], [ %4333, %4559 ], [ %4717, %4763 ], [ %4333, %4326 ]
  %4462 = phi float [ %4334, %4478 ], [ %4334, %4559 ], [ %4686, %4763 ], [ %4334, %4326 ]
  %4463 = phi float [ %4335, %4478 ], [ %4335, %4559 ], [ %4684, %4763 ], [ %4335, %4326 ]
  %4464 = phi float [ %4336, %4478 ], [ %4336, %4559 ], [ %4773, %4763 ], [ %4336, %4326 ]
  %4465 = phi float [ %4337, %4478 ], [ %4337, %4559 ], [ %4774, %4763 ], [ %4337, %4326 ]
  %4466 = phi float [ %4338, %4478 ], [ %4338, %4559 ], [ %4775, %4763 ], [ %4338, %4326 ]
  %4467 = phi float [ %4339, %4478 ], [ %4339, %4559 ], [ %4665, %4763 ], [ %4339, %4326 ]
  %4468 = phi float [ %4340, %4478 ], [ %4340, %4559 ], [ %4666, %4763 ], [ %4340, %4326 ]
  %4469 = phi float [ %4341, %4478 ], [ %4341, %4559 ], [ %4667, %4763 ], [ %4341, %4326 ]
  %4470 = phi float [ %4342, %4478 ], [ %4342, %4559 ], [ %4695, %4763 ], [ %4342, %4326 ]
  %4471 = phi float [ %4343, %4478 ], [ %4343, %4559 ], [ %4692, %4763 ], [ %4343, %4326 ]
  %4472 = phi float [ %4344, %4478 ], [ %4344, %4559 ], [ %4689, %4763 ], [ %4344, %4326 ]
  %4473 = phi float [ %4345, %4478 ], [ %4345, %4559 ], [ %4682, %4763 ], [ %4345, %4326 ]
  %4474 = phi float [ %4346, %4478 ], [ %4346, %4559 ], [ %4677, %4763 ], [ %4346, %4326 ]
  %4475 = phi float [ %4347, %4478 ], [ %4347, %4559 ], [ %4678, %4763 ], [ %4347, %4326 ]
  %4476 = phi float [ %4348, %4478 ], [ %4348, %4559 ], [ %4679, %4763 ], [ %4348, %4326 ]
  %4477 = icmp eq i32 %4405, %4325
  br i1 %4477, label %4776, label %4326

; <label>:4478                                    ; preds = %4326
  %4479 = extractvalue %dx.types.ResRet.f32 %4375, 3
  %4480 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4481 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4482 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4483 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4484 = extractvalue %dx.types.ResRet.i32 %4361, 3
  %4485 = extractvalue %dx.types.ResRet.i32 %4361, 2
  %4486 = add i32 %4484, 0
  %4487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4486, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4489 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4487, %dx.types.Handle %4488, float %4414, float %4421, float undef, float undef, i32 0, i32 0, i32 undef, float %4442, float %4444, float undef, float %4443, float %4445, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = fmul fast float %4490, %4483
  %4492 = fadd fast float %4491, %4482
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fmul fast float %4414, %4370
  %4495 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4421, float %4494)  ; FMad(a,b,c)
  %4496 = fadd fast float %4495, %4481
  %4497 = fmul fast float %4414, %4372
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4373, float %4421, float %4497)  ; FMad(a,b,c)
  %4499 = fadd fast float %4498, %4480
  %4500 = fmul fast float %4442, %4370
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4444, float %4500)  ; FMad(a,b,c)
  %4502 = fmul fast float %4442, %4372
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4373, float %4444, float %4502)  ; FMad(a,b,c)
  %4504 = fmul fast float %4443, %4370
  %4505 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4445, float %4504)  ; FMad(a,b,c)
  %4506 = fmul fast float %4443, %4372
  %4507 = call float @dx.op.tertiary.f32(i32 46, float %4373, float %4445, float %4506)  ; FMad(a,b,c)
  %4508 = add i32 %4485, 0
  %4509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4508, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4510 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4509, %dx.types.Handle %4488, float %4496, float %4499, float undef, float undef, i32 0, i32 0, i32 undef, float %4501, float %4503, float undef, float %4505, float %4507, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = and i32 %4406, 1024
  %4513 = icmp ne i32 %4512, 0
  %4514 = fcmp fast ogt float %4511, 0x3FE0101020000000
  %4515 = uitofp i1 %4514 to float
  %4516 = select i1 %4513, float %4515, float %4511
  %4517 = and i32 %4406, 8192
  %4518 = icmp ne i32 %4517, 0
  %4519 = select i1 %4518, float %4479, float 1.000000e+00
  %4520 = fmul fast float %4414, 2.000000e+00
  %4521 = fadd fast float %4520, -1.000000e+00
  %4522 = call float @dx.op.unary.f32(i32 6, float %4521)  ; FAbs(value)
  %4523 = fmul fast float %4522, %4403
  %4524 = fsub fast float %4523, %4403
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4421, 2.000000e+00
  %4527 = fadd fast float %4526, -1.000000e+00
  %4528 = call float @dx.op.unary.f32(i32 6, float %4527)  ; FAbs(value)
  %4529 = fmul fast float %4528, %4404
  %4530 = fsub fast float %4529, %4404
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4433, %4366
  %4533 = fsub fast float %4532, %4366
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = fmul fast float %4493, %4519
  %4536 = fmul fast float %4535, %4490
  %4537 = fmul fast float %4536, %4525
  %4538 = fmul fast float %4537, %4516
  %4539 = fmul fast float %4538, %4531
  %4540 = fmul fast float %4539, %4534
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4543 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4544 = fsub fast float %4450, %4543
  %4545 = fmul fast float %4544, %4542
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = fmul fast float %4540, %4367
  %4548 = fadd fast float %4540, %4367
  %4549 = fmul fast float %4548, %4376
  %4550 = fsub fast float %4549, %4376
  %4551 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4552 = and i32 %4406, 128
  %4553 = icmp ne i32 %4552, 0
  %4554 = select i1 %4553, float %4551, float %4547
  %4555 = fmul fast float %4554, %4546
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = fcmp fast ugt float %4555, %4557
  br i1 %4558, label %4559, label %4455

; <label>:4559                                    ; preds = %4478
  %4560 = select i1 %4518, float %4555, float 0.000000e+00
  %4561 = fadd fast float %4560, %4328
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  br i1 %4518, label %4455, label %4563

; <label>:4563                                    ; preds = %4559
  %4564 = and i32 %4406, 4
  %4565 = and i32 %4406, 8
  %4566 = add i32 %4362, 0
  %4567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4566, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4567, %dx.types.Handle %4568, float %4496, float %4499, float undef, float undef, i32 0, i32 0, i32 undef, float %4501, float %4503, float undef, float %4505, float %4507, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = bitcast float %4388 to i32
  %4575 = and i32 %4574, 255
  %4576 = uitofp i32 %4575 to float
  %4577 = lshr i32 %4574, 8
  %4578 = and i32 %4577, 255
  %4579 = uitofp i32 %4578 to float
  %4580 = fmul fast float %4573, %4576
  %4581 = fadd fast float %4580, %4579
  %4582 = fmul fast float %4581, 0x3F70101000000000
  %4583 = add i32 %4363, 0
  %4584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4584, %dx.types.Handle %4568, float %4496, float %4499, float undef, float undef, i32 0, i32 0, i32 undef, float %4501, float %4503, float undef, float %4505, float %4507, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = bitcast float %4382 to i32
  %4591 = and i32 %4590, 255
  %4592 = uitofp i32 %4591 to float
  %4593 = lshr i32 %4590, 8
  %4594 = and i32 %4593, 255
  %4595 = uitofp i32 %4594 to float
  %4596 = lshr i32 %4590, 16
  %4597 = and i32 %4596, 255
  %4598 = uitofp i32 %4597 to float
  %4599 = fmul fast float %4598, 0x3F70101000000000
  %4600 = fmul fast float %4586, %4592
  %4601 = fadd fast float %4600, %4595
  %4602 = fmul fast float %4601, 0x3F70101000000000
  %4603 = fadd fast float %4587, -5.000000e-01
  %4604 = fadd fast float %4589, -5.000000e-01
  %4605 = fmul fast float %4603, %4599
  %4606 = fmul fast float %4604, %4599
  %4607 = fadd fast float %4605, 5.000000e-01
  %4608 = fadd fast float %4606, 5.000000e-01
  %4609 = fmul fast float %4570, %4391
  %4610 = fmul fast float %4571, %4392
  %4611 = fmul fast float %4572, %4393
  %4612 = fmul fast float %4607, 2.000000e+00
  %4613 = fadd fast float %4612, -1.000000e+00
  %4614 = fmul fast float %4608, 2.000000e+00
  %4615 = fadd fast float %4614, -1.000000e+00
  %4616 = fadd fast float %4613, %4615
  %4617 = fmul fast float %4616, 5.000000e-01
  %4618 = fsub fast float %4613, %4615
  %4619 = fmul fast float %4618, 5.000000e-01
  %4620 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4621 = fsub fast float 1.000000e+00, %4620
  %4622 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4623 = fsub fast float %4621, %4622
  %4624 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4619, float %4623, float %4617, float %4619, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = call float @dx.op.unary.f32(i32 25, float %4624)  ; Rsqrt(value)
  %4626 = fmul fast float %4617, %4625
  %4627 = fmul fast float %4619, %4625
  %4628 = fmul fast float %4625, %4623
  %4629 = fmul fast float %4628, %4356
  %4630 = fmul fast float %4628, %4357
  %4631 = fmul fast float %4628, %4358
  %4632 = fmul fast float %4626, %4379
  %4633 = fmul fast float %4626, %4380
  %4634 = fmul fast float %4626, %4381
  %4635 = fadd fast float %4632, %4629
  %4636 = fadd fast float %4633, %4630
  %4637 = fadd fast float %4634, %4631
  %4638 = fmul fast float %4627, %4385
  %4639 = fmul fast float %4627, %4386
  %4640 = fmul fast float %4627, %4387
  %4641 = fadd fast float %4635, %4638
  %4642 = fadd fast float %4636, %4639
  %4643 = fadd fast float %4637, %4640
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4642, float %4643, float %4641, float %4642, float %4643)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.unary.f32(i32 25, float %4644)  ; Rsqrt(value)
  %4646 = fmul fast float %4641, %4645
  %4647 = fmul fast float %4642, %4645
  %4648 = fmul fast float %4643, %4645
  %4649 = icmp ne i32 %4565, 0
  %4650 = select i1 %4649, float 1.000000e+00, float 0.000000e+00
  %4651 = fmul fast float %4555, %4650
  %4652 = and i32 %4406, 1
  %4653 = icmp eq i32 %4652, 0
  br i1 %4653, label %4654, label %4658

; <label>:4654                                    ; preds = %4563
  %4655 = fsub fast float %4646, %4339
  %4656 = fsub fast float %4647, %4340
  %4657 = fsub fast float %4648, %4341
  br label %4658

; <label>:4658                                    ; preds = %4654, %4563
  %4659 = phi float [ %4655, %4654 ], [ %4646, %4563 ]
  %4660 = phi float [ %4656, %4654 ], [ %4647, %4563 ]
  %4661 = phi float [ %4657, %4654 ], [ %4648, %4563 ]
  %4662 = fmul float %4661, %4651
  %4663 = fmul float %4660, %4651
  %4664 = fmul float %4659, %4651
  %4665 = fadd fast float %4664, %4339
  %4666 = fadd fast float %4663, %4340
  %4667 = fadd fast float %4662, %4341
  %4668 = icmp ne i32 %4564, 0
  %4669 = select i1 %4668, float 1.000000e+00, float 0.000000e+00
  %4670 = fmul fast float %4555, %4669
  %4671 = fsub fast float %4609, %4346
  %4672 = fsub fast float %4610, %4347
  %4673 = fsub fast float %4611, %4348
  %4674 = fmul fast float %4671, %4670
  %4675 = fmul fast float %4672, %4670
  %4676 = fmul fast float %4673, %4670
  %4677 = fadd fast float %4674, %4346
  %4678 = fadd fast float %4675, %4347
  %4679 = fadd fast float %4676, %4348
  %4680 = fsub fast float %4582, %4345
  %4681 = fmul fast float %4680, %4670
  %4682 = fadd fast float %4681, %4345
  %4683 = fmul fast float %4670, %4335
  %4684 = fsub fast float %4335, %4683
  %4685 = fmul fast float %4670, %4334
  %4686 = fsub fast float %4334, %4685
  %4687 = bitcast float %4400 to i32
  %4688 = fadd fast float %4555, %4344
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fsub fast float %4602, %4343
  %4691 = fmul fast float %4690, %4651
  %4692 = fadd fast float %4691, %4343
  %4693 = fsub fast float %4588, %4342
  %4694 = fmul fast float %4693, %4651
  %4695 = fadd fast float %4694, %4342
  br i1 %4653, label %4704, label %4696

; <label>:4696                                    ; preds = %4658
  %4697 = and i32 %4406, 32768
  %4698 = icmp eq i32 %4697, 0
  br i1 %4698, label %4714, label %4699

; <label>:4699                                    ; preds = %4696
  %4700 = fmul fast float %4651, 1.270000e+02
  %4701 = fadd fast float %4700, %4331
  %4702 = fadd fast float %4700, %4332
  %4703 = fadd fast float %4700, %4333
  br label %4714

; <label>:4704                                    ; preds = %4658
  %4705 = fsub fast float 1.270000e+02, %4331
  %4706 = fsub fast float 1.270000e+02, %4332
  %4707 = fsub fast float 1.270000e+02, %4333
  %4708 = fmul fast float %4651, %4705
  %4709 = fmul fast float %4651, %4706
  %4710 = fmul fast float %4651, %4707
  %4711 = fadd fast float %4708, %4331
  %4712 = fadd fast float %4709, %4332
  %4713 = fadd fast float %4710, %4333
  br label %4714

; <label>:4714                                    ; preds = %4704, %4699, %4696
  %4715 = phi float [ %4701, %4699 ], [ %4331, %4696 ], [ %4711, %4704 ]
  %4716 = phi float [ %4702, %4699 ], [ %4332, %4696 ], [ %4712, %4704 ]
  %4717 = phi float [ %4703, %4699 ], [ %4333, %4696 ], [ %4713, %4704 ]
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.CBufRet.f32 %4719, 1
  %4722 = fmul fast float %4721, %4718
  %4723 = fadd fast float %4722, %4720
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = bitcast float %4394 to i32
  %4726 = and i32 %4725, 65535
  %4727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4726)  ; LegacyF16ToF32(value)
  %4728 = lshr i32 %4725, 16
  %4729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4728)  ; LegacyF16ToF32(value)
  %4730 = fcmp fast oge float %4727, 0.000000e+00
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = select i1 %4730, float %4727, float %4732
  %4734 = fadd fast float %4733, %4729
  %4735 = fsub fast float %4724, %4330
  %4736 = fmul fast float %4735, %4555
  %4737 = fadd fast float %4736, %4330
  %4738 = fmul fast float %4734, %4555
  %4739 = call float @dx.op.binary.f32(i32 35, float %4329, float %4738)  ; FMax(a,b)
  %4740 = and i32 %4406, 16
  %4741 = icmp eq i32 %4740, 0
  br i1 %4741, label %4763, label %4742

; <label>:4742                                    ; preds = %4714
  %4743 = add i32 %4397, 0
  %4744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4743, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4744, %dx.types.Handle %4568, float %4496, float %4499, float undef, float undef, i32 0, i32 0, i32 undef, float %4501, float %4503, float undef, float %4505, float %4507, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.ResRet.f32 %4745, 1
  %4748 = extractvalue %dx.types.ResRet.f32 %4745, 2
  %4749 = and i32 %4687, 65535
  %4750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4749)  ; LegacyF16ToF32(value)
  %4751 = fmul fast float %4746, %4391
  %4752 = fmul fast float %4747, %4392
  %4753 = fmul fast float %4748, %4393
  %4754 = and i32 %4406, 16384
  %4755 = icmp ne i32 %4754, 0
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 0
  %4758 = select i1 %4755, float %4757, float 1.000000e+00
  %4759 = fmul fast float %4758, %4750
  %4760 = fmul fast float %4751, %4759
  %4761 = fmul fast float %4752, %4759
  %4762 = fmul fast float %4753, %4759
  br label %4763

; <label>:4763                                    ; preds = %4742, %4714
  %4764 = phi float [ %4760, %4742 ], [ 0.000000e+00, %4714 ]
  %4765 = phi float [ %4761, %4742 ], [ 0.000000e+00, %4714 ]
  %4766 = phi float [ %4762, %4742 ], [ 0.000000e+00, %4714 ]
  %4767 = fsub fast float %4764, %4336
  %4768 = fsub fast float %4765, %4337
  %4769 = fsub fast float %4766, %4338
  %4770 = fmul fast float %4767, %4555
  %4771 = fmul fast float %4768, %4555
  %4772 = fmul fast float %4769, %4555
  %4773 = fadd fast float %4770, %4336
  %4774 = fadd fast float %4771, %4337
  %4775 = fadd fast float %4772, %4338
  br label %4455

; <label>:4776                                    ; preds = %4455
  br label %4777

; <label>:4777                                    ; preds = %4776, %4272
  %4778 = phi float [ 0.000000e+00, %4272 ], [ %4456, %4776 ]
  %4779 = phi float [ %4241, %4272 ], [ %4457, %4776 ]
  %4780 = phi float [ %4239, %4272 ], [ %4458, %4776 ]
  %4781 = phi float [ %4232, %4272 ], [ %4459, %4776 ]
  %4782 = phi float [ %4233, %4272 ], [ %4460, %4776 ]
  %4783 = phi float [ %4234, %4272 ], [ %4461, %4776 ]
  %4784 = phi float [ 0.000000e+00, %4272 ], [ %4462, %4776 ]
  %4785 = phi float [ 0.000000e+00, %4272 ], [ %4463, %4776 ]
  %4786 = phi float [ %4229, %4272 ], [ %4464, %4776 ]
  %4787 = phi float [ %4230, %4272 ], [ %4465, %4776 ]
  %4788 = phi float [ %4231, %4272 ], [ %4466, %4776 ]
  %4789 = phi float [ %4267, %4272 ], [ %4467, %4776 ]
  %4790 = phi float [ %4268, %4272 ], [ %4468, %4776 ]
  %4791 = phi float [ %4269, %4272 ], [ %4469, %4776 ]
  %4792 = phi float [ %4237, %4272 ], [ %4470, %4776 ]
  %4793 = phi float [ %4236, %4272 ], [ %4471, %4776 ]
  %4794 = phi float [ 0.000000e+00, %4272 ], [ %4472, %4776 ]
  %4795 = phi float [ %4235, %4272 ], [ %4473, %4776 ]
  %4796 = phi float [ %4226, %4272 ], [ %4474, %4776 ]
  %4797 = phi float [ %4227, %4272 ], [ %4475, %4776 ]
  %4798 = phi float [ %4228, %4272 ], [ %4476, %4776 ]
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4789, float %4790, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 25, float %4799)  ; Rsqrt(value)
  %4801 = fmul fast float %4800, %4789
  %4802 = fmul fast float %4800, %4790
  %4803 = fmul fast float %4800, %4791
  %4804 = fadd fast float %4794, %1226
  %4805 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float %4801, float %4802, float %4803)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.unary.f32(i32 25, float %4806)  ; Rsqrt(value)
  %4808 = fmul fast float %4807, %4801
  %4809 = fmul fast float %4807, %4802
  %4810 = fmul fast float %4807, %4803
  br label %4811

; <label>:4811                                    ; preds = %4777, %4223
  %4812 = phi float [ %4808, %4777 ], [ %4267, %4223 ]
  %4813 = phi float [ %4809, %4777 ], [ %4268, %4223 ]
  %4814 = phi float [ %4810, %4777 ], [ %4269, %4223 ]
  %4815 = phi float [ %4796, %4777 ], [ %4226, %4223 ]
  %4816 = phi float [ %4797, %4777 ], [ %4227, %4223 ]
  %4817 = phi float [ %4798, %4777 ], [ %4228, %4223 ]
  %4818 = phi float [ %4786, %4777 ], [ %4229, %4223 ]
  %4819 = phi float [ %4787, %4777 ], [ %4230, %4223 ]
  %4820 = phi float [ %4788, %4777 ], [ %4231, %4223 ]
  %4821 = phi float [ %4781, %4777 ], [ %4232, %4223 ]
  %4822 = phi float [ %4782, %4777 ], [ %4233, %4223 ]
  %4823 = phi float [ %4783, %4777 ], [ %4234, %4223 ]
  %4824 = phi float [ %4795, %4777 ], [ %4235, %4223 ]
  %4825 = phi float [ %4805, %4777 ], [ %1226, %4223 ]
  %4826 = phi float [ %4793, %4777 ], [ %4236, %4223 ]
  %4827 = phi float [ %4792, %4777 ], [ %4237, %4223 ]
  %4828 = phi float [ %4785, %4777 ], [ 0.000000e+00, %4223 ]
  %4829 = phi float [ %4784, %4777 ], [ 0.000000e+00, %4223 ]
  %4830 = phi float [ %4778, %4777 ], [ 0.000000e+00, %4223 ]
  %4831 = phi float [ %4779, %4777 ], [ %4241, %4223 ]
  %4832 = phi float [ %4780, %4777 ], [ %4239, %4223 ]
  %4833 = fadd fast float %4824, 0xBFB99999A0000000
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, 0x3FF1C71C80000000
  %4836 = call float @dx.op.binary.f32(i32 36, float %4824, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4837 = fsub fast float 1.000000e+00, %4835
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4838, %4815
  %4840 = fmul fast float %4838, %4816
  %4841 = fmul fast float %4838, %4817
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = fmul fast float %4835, %4815
  %4846 = fmul fast float %4835, %4816
  %4847 = fmul fast float %4835, %4817
  %4848 = fadd fast float %4845, %4836
  %4849 = fadd fast float %4846, %4836
  %4850 = fadd fast float %4847, %4836
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4855 = call float @dx.op.binary.f32(i32 36, float %4821, float 1.270000e+02)  ; FMin(a,b)
  %4856 = call float @dx.op.binary.f32(i32 36, float %4822, float 1.270000e+02)  ; FMin(a,b)
  %4857 = call float @dx.op.binary.f32(i32 36, float %4823, float 1.270000e+02)  ; FMin(a,b)
  %4858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.i32 %4858, 3
  %4860 = and i32 %4859, 8
  %4861 = icmp ne i32 %4860, 0
  %4862 = call float @dx.op.binary.f32(i32 35, float %4842, float %4815)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float %4843, float %4815)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 35, float %4844, float %4815)  ; FMax(a,b)
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = select i1 %229, float %4815, float %4842
  %4867 = select i1 %229, float %4865, float %4843
  %4868 = select i1 %229, float 1.000000e+00, float %4844
  %4869 = select i1 %4861, float %4862, float %4866
  %4870 = select i1 %4861, float %4863, float %4867
  %4871 = select i1 %4861, float %4864, float %4868
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = fadd fast float %4873, %167
  %4877 = fadd fast float %4874, %168
  %4878 = fadd fast float %4875, %169
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = fsub fast float %4876, %4880
  %4883 = fsub fast float %4877, %4881
  %4884 = fmul fast float %4882, %4882
  %4885 = fmul fast float %4883, %4883
  %4886 = fadd fast float %4884, %4885
  %4887 = call float @dx.op.unary.f32(i32 24, float %4886)  ; Sqrt(value)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4889 = fcmp fast olt float %4887, %4888
  br i1 %4889, label %4890, label %4957

; <label>:4890                                    ; preds = %4811
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4900 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4901 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4902 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4903 = fadd fast float %4900, %4876
  %4904 = fadd fast float %4901, %4877
  %4905 = fadd fast float %4902, %4878
  %4906 = fmul fast float %4903, %4892
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4894, float %4906)  ; FMad(a,b,c)
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4896, float %4907)  ; FMad(a,b,c)
  %4909 = fmul fast float %4903, %4897
  %4910 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4898, float %4909)  ; FMad(a,b,c)
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4899, float %4910)  ; FMad(a,b,c)
  %4912 = fsub fast float %4908, %4900
  %4913 = fsub fast float %4911, %4901
  %4914 = fsub fast float %4912, %4880
  %4915 = fadd fast float %4914, %4888
  %4916 = fsub fast float %4913, %4881
  %4917 = fadd fast float %4916, %4888
  %4918 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4919 = fmul fast float %4915, %4918
  %4920 = fmul fast float %4917, %4918
  %4921 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4923 = fsub fast float 1.000000e+00, %4921
  %4924 = fsub fast float 1.000000e+00, %4922
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = fcmp fast ugt float %4926, 0.000000e+00
  br i1 %4927, label %4928, label %5231

; <label>:4928                                    ; preds = %4890
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4931 = fmul fast float %4930, %4926
  %4932 = extractvalue %dx.types.CBufRet.f32 %4929, 3
  %4933 = fadd fast float %4932, %4931
  %4934 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4935 = fadd fast float %4933, %4902
  %4936 = fmul fast float %4908, %4896
  %4937 = call float @dx.op.tertiary.f32(i32 46, float %4911, float %4899, float %4936)  ; FMad(a,b,c)
  %4938 = call float @dx.op.tertiary.f32(i32 46, float %4935, float %4934, float %4937)  ; FMad(a,b,c)
  %4939 = fsub fast float %4938, %4902
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4942 = fsub fast float %4939, %4941
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4943, 2
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, %4944
  %4952 = fmul fast float %4951, 0x3F847AE140000000
  %4953 = fadd fast float %4949, %4945
  %4954 = fmul fast float %4953, 0x3F847AE140000000
  %4955 = fadd fast float %4950, %4946
  %4956 = fmul fast float %4955, 0x3F847AE140000000
  br label %5231

; <label>:4957                                    ; preds = %4811
  %4958 = and i32 %205, 1
  %4959 = icmp eq i32 %4958, 0
  br i1 %4959, label %5231, label %4960

; <label>:4960                                    ; preds = %4957
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4969 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4971 = extractvalue %dx.types.CBufRet.f32 %4963, 3
  %4972 = extractvalue %dx.types.CBufRet.f32 %4965, 3
  %4973 = fadd fast float %4970, %4876
  %4974 = fadd fast float %4971, %4877
  %4975 = fadd fast float %4972, %4878
  %4976 = fmul fast float %4973, %4962
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4964, float %4976)  ; FMad(a,b,c)
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4966, float %4977)  ; FMad(a,b,c)
  %4979 = fmul fast float %4973, %4967
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4974, float %4968, float %4979)  ; FMad(a,b,c)
  %4981 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4969, float %4980)  ; FMad(a,b,c)
  %4982 = fsub fast float %4978, %4970
  %4983 = fsub fast float %4981, %4971
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4988 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 3
  %4991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.i32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.i32 %4991, 1
  %4994 = udiv i32 %4993, %4992
  %4995 = fsub fast float %4982, %4985
  %4996 = fsub fast float %4983, %4986
  %4997 = call float @dx.op.binary.f32(i32 35, float %4995, float 0.000000e+00)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4996, float 0.000000e+00)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 36, float %4997, float %4987)  ; FMin(a,b)
  %5000 = call float @dx.op.binary.f32(i32 36, float %4998, float %4988)  ; FMin(a,b)
  %5001 = add i32 %4992, -1
  %5002 = add i32 %4994, -1
  %5003 = fmul fast float %4999, %4990
  %5004 = fmul fast float %5000, %4990
  %5005 = fptoui float %5003 to i32
  %5006 = fptoui float %5004 to i32
  %5007 = call i32 @dx.op.binary.i32(i32 40, i32 %5005, i32 %5001)  ; UMin(a,b)
  %5008 = call i32 @dx.op.binary.i32(i32 40, i32 %5006, i32 %5002)  ; UMin(a,b)
  %5009 = mul i32 %5008, %4992
  %5010 = add i32 %5009, %5007
  %5011 = shl i32 %5010, 2
  %5012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5011, i32 undef)  ; BufferLoad(srv,index,wot)
  %5013 = extractvalue %dx.types.ResRet.i32 %5012, 0
  %5014 = icmp eq i32 %5013, -1
  br i1 %5014, label %5231, label %5015

; <label>:5015                                    ; preds = %4960
  %5016 = mul i32 %5013, 148
  %5017 = add i32 %5016, 4
  %5018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5017, i32 undef)  ; BufferLoad(srv,index,wot)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = add i32 %5016, 8
  %5021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5020, i32 undef)  ; BufferLoad(srv,index,wot)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 0
  %5023 = add i32 %5016, 36
  %5024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.f32 %5024, 0
  %5026 = add i32 %5016, 60
  %5027 = add i32 %5016, 92
  %5028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.i32 %5028, 0
  %5030 = add i32 %5016, 116
  %5031 = fsub fast float %4982, %5019
  %5032 = fsub fast float %4983, %5022
  %5033 = fmul fast float %4990, %5031
  %5034 = fmul fast float %4990, %5032
  %5035 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5037 = fsub fast float 1.000000e+00, %5036
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5040 = call float @dx.op.unary.f32(i32 83, float %5035)  ; DerivCoarseX(value)
  %5041 = call float @dx.op.unary.f32(i32 83, float %5037)  ; DerivCoarseX(value)
  %5042 = call float @dx.op.unary.f32(i32 84, float %5035)  ; DerivCoarseY(value)
  %5043 = call float @dx.op.unary.f32(i32 84, float %5037)  ; DerivCoarseY(value)
  %5044 = fmul fast float %5040, %5039
  %5045 = fmul fast float %5041, %5039
  %5046 = fmul fast float %5042, %5039
  %5047 = fmul fast float %5043, %5039
  %5048 = call float @dx.op.dot2.f32(i32 54, float %5046, float %5047, float %5046, float %5047)  ; Dot2(ax,ay,bx,by)
  %5049 = call float @dx.op.dot2.f32(i32 54, float %5044, float %5045, float %5044, float %5045)  ; Dot2(ax,ay,bx,by)
  %5050 = call float @dx.op.binary.f32(i32 35, float %5049, float %5048)  ; FMax(a,b)
  %5051 = call float @dx.op.unary.f32(i32 23, float %5050)  ; Log(value)
  %5052 = fmul fast float %5051, 5.000000e-01
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5055 = fadd fast float %5054, %5052
  %5056 = call float @dx.op.binary.f32(i32 35, float %5055, float 0.000000e+00)  ; FMax(a,b)
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5059 = fadd fast float %5058, %5056
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 3
  %5062 = fadd fast float %5059, %5061
  %5063 = add i32 %5029, 0
  %5064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5063, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5065 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5064, i32 0)  ; GetDimensions(handle,mipLevel)
  %5066 = extractvalue %dx.types.Dimensions %5065, 0
  %5067 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5066)  ; FirstbitLo(value)
  %5068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.i32 %5068, 1
  %5070 = sub nsw i32 %5069, %5067
  %5071 = sitofp i32 %5070 to float
  %5072 = fsub fast float %5062, %5071
  %5073 = call float @dx.op.binary.f32(i32 35, float %5072, float 0.000000e+00)  ; FMax(a,b)
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5064, %dx.types.Handle %52, float %5035, float %5037, float %5025, float undef, i32 0, i32 0, i32 undef, float %5073)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = fcmp ule float %5075, 0x3FE0101020000000
  %5077 = extractvalue %dx.types.CBufRet.i32 %5068, 0
  %5078 = and i32 %5077, 128
  %5079 = icmp ne i32 %5078, 0
  %5080 = and i1 %5076, %5079
  br i1 %5080, label %5231, label %5081

; <label>:5081                                    ; preds = %5015
  %5082 = add i32 %5016, 20
  %5083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = add i32 %5016, 24
  %5086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5085, i32 undef)  ; BufferLoad(srv,index,wot)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = add i32 %5016, 40
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5088, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = add i32 %5016, 96
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5096 = fmul fast float %5095, %5035
  %5097 = fmul fast float %5095, %5037
  %5098 = extractvalue %dx.types.CBufRet.f32 %5094, 3
  %5099 = fadd fast float %5096, %5098
  %5100 = fadd fast float %5097, %5098
  %5101 = add i32 %5093, 0
  %5102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5103 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5102, i32 0)  ; GetDimensions(handle,mipLevel)
  %5104 = extractvalue %dx.types.Dimensions %5103, 0
  %5105 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5104)  ; FirstbitLo(value)
  %5106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.i32 %5106, 1
  %5108 = sub nsw i32 %5107, %5105
  %5109 = sitofp i32 %5108 to float
  %5110 = fsub fast float %5059, %5109
  %5111 = call float @dx.op.binary.f32(i32 35, float %5110, float 0.000000e+00)  ; FMax(a,b)
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5102, %dx.types.Handle %52, float %5099, float %5100, float %5090, float undef, i32 0, i32 0, i32 undef, float %5111)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = fmul fast float %5113, %5084
  %5115 = fadd fast float %5114, %5087
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5124 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5125 = fadd fast float %5121, %4982
  %5126 = fadd fast float %5123, %4983
  %5127 = fadd fast float %5115, %5124
  %5128 = fmul fast float %5125, %5117
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5126, float %5118, float %5128)  ; FMad(a,b,c)
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5119, float %5129)  ; FMad(a,b,c)
  %5131 = fsub fast float %5130, %5124
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5134 = fsub fast float %5131, %5133
  %5135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.i32 %5135, 0
  %5137 = call i32 @dx.op.binary.i32(i32 40, i32 %5013, i32 %5136)  ; UMin(a,b)
  %5138 = mul i32 %5137, 36
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = add i32 %5138, 4
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = fmul fast float %5143, %5035
  %5145 = fmul fast float %5143, %5037
  %5146 = extractvalue %dx.types.CBufRet.f32 %5142, 1
  %5147 = fadd fast float %5144, %5146
  %5148 = fadd fast float %5145, %5146
  %5149 = icmp eq i32 %5140, 0
  br i1 %5149, label %5218, label %5150

; <label>:5150                                    ; preds = %5081
  br label %5151

; <label>:5151                                    ; preds = %5208, %5150
  %5152 = phi float [ %5209, %5208 ], [ 0.000000e+00, %5150 ]
  %5153 = phi float [ %5210, %5208 ], [ 0.000000e+00, %5150 ]
  %5154 = phi float [ %5211, %5208 ], [ 0.000000e+00, %5150 ]
  %5155 = phi float [ %5212, %5208 ], [ 0.000000e+00, %5150 ]
  %5156 = phi float [ %5213, %5208 ], [ 0.000000e+00, %5150 ]
  %5157 = phi float [ %5214, %5208 ], [ 0.000000e+00, %5150 ]
  %5158 = phi i32 [ %5215, %5208 ], [ 0, %5150 ]
  %5159 = shl i32 %5158, 2
  %5160 = add i32 %5026, %5159
  %5161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = add i32 %5030, %5159
  %5164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.i32 %5164, 0
  %5166 = add i32 %5165, 0
  %5167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5167, i32 0)  ; GetDimensions(handle,mipLevel)
  %5169 = extractvalue %dx.types.Dimensions %5168, 0
  %5170 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5169)  ; FirstbitLo(value)
  %5171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.i32 %5171, 1
  %5173 = sub nsw i32 %5172, %5170
  %5174 = sitofp i32 %5173 to float
  %5175 = fsub fast float %5059, %5174
  %5176 = call float @dx.op.binary.f32(i32 35, float %5175, float 0.000000e+00)  ; FMax(a,b)
  %5177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5167, %dx.types.Handle %52, float %5147, float %5148, float %5162, float undef, i32 0, i32 0, i32 undef, float %5176)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = fcmp fast ogt float %5178, 0.000000e+00
  br i1 %5179, label %5180, label %5208

; <label>:5180                                    ; preds = %5151
  %5181 = add i32 %5141, %5159
  %5182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5181, i32 undef)  ; BufferLoad(srv,index,wot)
  %5183 = extractvalue %dx.types.ResRet.i32 %5182, 0
  %5184 = and i32 %5183, 32767
  %5185 = mul nuw nsw i32 %5184, 928
  %5186 = add nuw nsw i32 %5185, 48
  %5187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5186, i32 undef)  ; BufferLoad(srv,index,wot)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = add nuw nsw i32 %5185, 60
  %5192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5191, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.ResRet.f32 %5192, 2
  %5196 = fmul fast float %5188, %5178
  %5197 = fmul fast float %5189, %5178
  %5198 = fmul fast float %5190, %5178
  %5199 = fadd fast float %5196, %5152
  %5200 = fadd fast float %5197, %5153
  %5201 = fadd fast float %5198, %5154
  %5202 = fmul fast float %5193, %5178
  %5203 = fmul fast float %5194, %5178
  %5204 = fmul fast float %5195, %5178
  %5205 = fadd fast float %5202, %5155
  %5206 = fadd fast float %5203, %5156
  %5207 = fadd fast float %5204, %5157
  br label %5208

; <label>:5208                                    ; preds = %5180, %5151
  %5209 = phi float [ %5199, %5180 ], [ %5152, %5151 ]
  %5210 = phi float [ %5200, %5180 ], [ %5153, %5151 ]
  %5211 = phi float [ %5201, %5180 ], [ %5154, %5151 ]
  %5212 = phi float [ %5205, %5180 ], [ %5155, %5151 ]
  %5213 = phi float [ %5206, %5180 ], [ %5156, %5151 ]
  %5214 = phi float [ %5207, %5180 ], [ %5157, %5151 ]
  %5215 = add nuw i32 %5158, 1
  %5216 = icmp eq i32 %5215, %5140
  br i1 %5216, label %5217, label %5151

; <label>:5217                                    ; preds = %5208
  br label %5218

; <label>:5218                                    ; preds = %5217, %5081
  %5219 = phi float [ 0.000000e+00, %5081 ], [ %5209, %5217 ]
  %5220 = phi float [ 0.000000e+00, %5081 ], [ %5210, %5217 ]
  %5221 = phi float [ 0.000000e+00, %5081 ], [ %5211, %5217 ]
  %5222 = phi float [ 0.000000e+00, %5081 ], [ %5212, %5217 ]
  %5223 = phi float [ 0.000000e+00, %5081 ], [ %5213, %5217 ]
  %5224 = phi float [ 0.000000e+00, %5081 ], [ %5214, %5217 ]
  %5225 = fadd fast float %5222, %5219
  %5226 = fmul fast float %5225, 0x3F847AE140000000
  %5227 = fadd fast float %5223, %5220
  %5228 = fmul fast float %5227, 0x3F847AE140000000
  %5229 = fadd fast float %5224, %5221
  %5230 = fmul fast float %5229, 0x3F847AE140000000
  br label %5231

; <label>:5231                                    ; preds = %5218, %5015, %4960, %4957, %4928, %4890
  %5232 = phi float [ %4942, %4928 ], [ -1.310720e+05, %4890 ], [ %5134, %5218 ], [ -1.310720e+05, %4960 ], [ -1.310720e+05, %5015 ], [ -1.310720e+05, %4957 ]
  %5233 = phi float [ %4952, %4928 ], [ 0.000000e+00, %4890 ], [ %5226, %5218 ], [ 0.000000e+00, %4960 ], [ 0.000000e+00, %5015 ], [ 0.000000e+00, %4957 ]
  %5234 = phi float [ %4954, %4928 ], [ 0.000000e+00, %4890 ], [ %5228, %5218 ], [ 0.000000e+00, %4960 ], [ 0.000000e+00, %5015 ], [ 0.000000e+00, %4957 ]
  %5235 = phi float [ %4956, %4928 ], [ 0.000000e+00, %4890 ], [ %5230, %5218 ], [ 0.000000e+00, %4960 ], [ 0.000000e+00, %5015 ], [ 0.000000e+00, %4957 ]
  %5236 = phi i1 [ true, %4928 ], [ false, %4890 ], [ true, %5218 ], [ false, %4960 ], [ false, %5015 ], [ false, %4957 ]
  %5237 = and i32 %205, 3
  %5238 = icmp eq i32 %5237, 1
  %5239 = select i1 %5238, float 1.000000e+00, float 0.000000e+00
  %5240 = fsub fast float %5232, %169
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = select i1 %5236, float %5241, float 1.000000e+00
  %5243 = fmul fast float %5242, %5239
  %5244 = icmp eq i32 %5237, 3
  %5245 = select i1 %5244, float 1.000000e+00, float %5243
  %5246 = call float @dx.op.binary.f32(i32 35, float %4830, float %5245)  ; FMax(a,b)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fcmp fast une float %5247, 0.000000e+00
  %5249 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 25, float %5249)  ; Rsqrt(value)
  br i1 %5248, label %5258, label %5251

; <label>:5251                                    ; preds = %5231
  %5252 = fmul fast float %5250, %167
  %5253 = fmul fast float %5250, %168
  %5254 = fmul fast float %5250, %169
  %5255 = fsub fast float -0.000000e+00, %5252
  %5256 = fsub fast float -0.000000e+00, %5253
  %5257 = fsub fast float -0.000000e+00, %5254
  br label %5426

; <label>:5258                                    ; preds = %5231
  %5259 = fmul fast float %167, %5250
  %5260 = fsub fast float -0.000000e+00, %5259
  %5261 = fmul fast float %168, %5250
  %5262 = fsub fast float -0.000000e+00, %5261
  %5263 = fmul fast float %169, %5250
  %5264 = fsub fast float -0.000000e+00, %5263
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5262, float %5264, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = fmul fast float %5247, 2.500000e+00
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fmul fast float %5247, 0x4013FFFFE0000000
  %5269 = fadd fast float %5268, 0xBFFFFFFFE0000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5247, 0x4004000020000000
  %5272 = fadd fast float %5271, 0xBFF8000040000000
  %5273 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5274 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5275 = fmul fast float %4833, 1.000000e+01
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fmul fast float %5276, 2.000000e+00
  %5278 = fsub fast float 3.000000e+00, %5277
  %5279 = fmul fast float %5276, %5276
  %5280 = fmul fast float %5279, %5278
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = fsub fast float 0x3FE3333340000000, %4854
  %5283 = fmul fast float %5282, 0x400AAAAAA0000000
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fmul fast float %5281, %5284
  %5286 = fmul fast float %4869, 0x3FEA2B8620000000
  %5287 = fmul fast float %4870, 0x3FEA2B8620000000
  %5288 = fmul fast float %4871, 0x3FEA2B8620000000
  %5289 = fadd fast float %5286, 0x3FC81DFBA0000000
  %5290 = fmul fast float %5289, %4869
  %5291 = fadd fast float %5290, 0x3F910E6020000000
  %5292 = fadd fast float %5287, 0x3FC81DFBA0000000
  %5293 = fmul fast float %5292, %4870
  %5294 = fadd fast float %5293, 0x3F910E6020000000
  %5295 = fadd fast float %5288, 0x3FC81DFBA0000000
  %5296 = fmul fast float %5295, %4871
  %5297 = fadd fast float %5296, 0x3F910E6020000000
  %5298 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5301 = fsub fast float %5298, %4869
  %5302 = fsub fast float %5299, %4870
  %5303 = fsub fast float %5300, %4871
  %5304 = fmul fast float %5301, %5274
  %5305 = fmul fast float %5304, %5285
  %5306 = fmul fast float %5302, %5274
  %5307 = fmul fast float %5306, %5285
  %5308 = fmul fast float %5303, %5274
  %5309 = fmul fast float %5308, %5285
  %5310 = fadd fast float %5305, %4869
  %5311 = fadd fast float %5307, %4870
  %5312 = fadd fast float %5309, %4871
  %5313 = fmul fast float %4827, %4827
  %5314 = fmul fast float %5313, %5313
  %5315 = fadd fast float %5270, 1.000000e+00
  %5316 = fsub fast float %5315, %5285
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fsub fast float 1.000000e+00, %5314
  %5321 = call float @dx.op.binary.f32(i32 36, float %5317, float %5320)  ; FMin(a,b)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5323 = call float @dx.op.binary.f32(i32 35, float %5321, float %5322)  ; FMax(a,b)
  %5324 = fadd fast float %5319, 0xBFE4CCCCC0000000
  %5325 = fmul fast float %5324, 0x4006DB6DA0000000
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = fsub fast float 3.000000e+00, %5327
  %5329 = bitcast float %4851 to i32
  %5330 = ashr i32 %5329, 1
  %5331 = add nsw i32 %5330, 532487669
  %5332 = bitcast i32 %5331 to float
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5336, 2.000000e+00
  %5338 = bitcast float %4852 to i32
  %5339 = ashr i32 %5338, 1
  %5340 = add nsw i32 %5339, 532487669
  %5341 = bitcast i32 %5340 to float
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, 2.000000e+00
  %5347 = bitcast float %4853 to i32
  %5348 = ashr i32 %5347, 1
  %5349 = add nsw i32 %5348, 532487669
  %5350 = bitcast i32 %5349 to float
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, 2.000000e+00
  %5356 = fsub fast float 0x4002A9FBE0000000, %5337
  %5357 = fadd fast float %5337, 0x3FD54FDF00000000
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = fmul fast float %5360, %5356
  %5362 = fmul fast float %5361, %5361
  %5363 = fsub fast float 0x4002A9FBE0000000, %5346
  %5364 = fadd fast float %5346, 0x3FD54FDF00000000
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = fmul fast float %5367, %5363
  %5369 = fmul fast float %5368, %5368
  %5370 = fsub fast float 0x4002A9FBE0000000, %5355
  %5371 = fadd fast float %5355, 0x3FD54FDF00000000
  %5372 = bitcast float %5371 to i32
  %5373 = sub nsw i32 2129859010, %5372
  %5374 = bitcast i32 %5373 to float
  %5375 = fmul fast float %5374, %5370
  %5376 = fmul fast float %5375, %5375
  %5377 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5362)  ; FMax(a,b)
  %5378 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5369)  ; FMax(a,b)
  %5379 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5376)  ; FMax(a,b)
  %5380 = fsub fast float 1.000000e+00, %5265
  %5381 = fadd fast float %5380, %5281
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = fsub fast float 1.000000e+00, %5245
  %5384 = fmul fast float %5323, %5383
  %5385 = fmul fast float %5326, %5326
  %5386 = fmul fast float %5385, %5384
  %5387 = fmul fast float %5386, %5328
  %5388 = fmul fast float %5383, 0xBFE99999A0000000
  %5389 = fmul fast float %5388, %5274
  %5390 = fmul fast float %5389, %5285
  %5391 = fadd fast float %5390, 1.000000e+00
  %5392 = fadd fast float %4854, -1.000000e+00
  %5393 = fmul fast float %5391, %5392
  %5394 = fadd fast float %5393, 1.000000e+00
  %5395 = fsub fast float %5377, %4851
  %5396 = fsub fast float %5378, %4852
  %5397 = fsub fast float %5379, %4853
  %5398 = fmul fast float %5387, %5395
  %5399 = fmul fast float %5387, %5396
  %5400 = fmul fast float %5387, %5397
  %5401 = fadd fast float %5398, %4851
  %5402 = fadd fast float %5399, %4852
  %5403 = fadd fast float %5400, %4853
  %5404 = fsub fast float %111, %4812
  %5405 = fsub fast float %112, %4813
  %5406 = fsub fast float %113, %4814
  %5407 = fmul fast float %5387, %5404
  %5408 = fmul fast float %5387, %5405
  %5409 = fmul fast float %5387, %5406
  %5410 = fadd fast float %5407, %4812
  %5411 = fadd fast float %5408, %4813
  %5412 = fadd fast float %5409, %4814
  %5413 = fmul fast float %5387, %5382
  %5414 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5413, %5415
  %5417 = fadd fast float %5416, %5414
  %5418 = fsub fast float 1.000000e+00, %4827
  %5419 = fmul fast float %5387, %5418
  %5420 = fadd fast float %5419, %4827
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %5412, float %5410, float %5411, float %5412)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.unary.f32(i32 25, float %5421)  ; Rsqrt(value)
  %5423 = fmul fast float %5410, %5422
  %5424 = fmul fast float %5411, %5422
  %5425 = fmul fast float %5412, %5422
  br label %5426

; <label>:5426                                    ; preds = %5258, %5251
  %5427 = phi float [ %5257, %5251 ], [ %5264, %5258 ]
  %5428 = phi float [ %5256, %5251 ], [ %5262, %5258 ]
  %5429 = phi float [ %5255, %5251 ], [ %5260, %5258 ]
  %5430 = phi float [ %5254, %5251 ], [ %5263, %5258 ]
  %5431 = phi float [ %5253, %5251 ], [ %5261, %5258 ]
  %5432 = phi float [ %5252, %5251 ], [ %5259, %5258 ]
  %5433 = phi float [ %4851, %5251 ], [ %5401, %5258 ]
  %5434 = phi float [ %4852, %5251 ], [ %5402, %5258 ]
  %5435 = phi float [ %4853, %5251 ], [ %5403, %5258 ]
  %5436 = phi float [ %4869, %5251 ], [ %5310, %5258 ]
  %5437 = phi float [ %4870, %5251 ], [ %5311, %5258 ]
  %5438 = phi float [ %4871, %5251 ], [ %5312, %5258 ]
  %5439 = phi float [ %4812, %5251 ], [ %5423, %5258 ]
  %5440 = phi float [ %4813, %5251 ], [ %5424, %5258 ]
  %5441 = phi float [ %4814, %5251 ], [ %5425, %5258 ]
  %5442 = phi float [ %4854, %5251 ], [ %5417, %5258 ]
  %5443 = phi float [ %4827, %5251 ], [ %5420, %5258 ]
  %5444 = fsub fast float -0.000000e+00, %169
  %5445 = select i1 %229, float 0.000000e+00, float %5435
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5429, float %5428, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5432, float %5431, float %5430, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = fmul fast float %5448, 2.000000e+00
  %5450 = fmul fast float %5449, %5439
  %5451 = fmul fast float %5449, %5440
  %5452 = fmul fast float %5449, %5441
  %5453 = fsub fast float %5432, %5450
  %5454 = fsub fast float %5431, %5451
  %5455 = fsub fast float %5430, %5452
  %5456 = call float @dx.op.binary.f32(i32 36, float %5443, float 1.000000e+00)  ; FMin(a,b)
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = ashr i32 %5458, 1
  %5460 = add nsw i32 %5459, 532487669
  %5461 = bitcast i32 %5460 to float
  %5462 = fsub fast float 1.000000e+00, %5442
  %5463 = call float @dx.op.binary.f32(i32 35, float %5462, float 0x3F847AE140000000)  ; FMax(a,b)
  %5464 = fmul fast float %5463, %5463
  %5465 = fmul fast float %5464, %5464
  %5466 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5461, float %5465, float %5466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = fsub fast float 1.000000e+00, %5443
  %5470 = bitcast float %5469 to i32
  %5471 = sub nsw i32 2129859010, %5470
  %5472 = fsub fast float 1.000000e+00, %72
  %5473 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.binary.f32(i32 35, float %5473, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5475 = fdiv fast float %5472, %5474
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %5477, 5.000000e-01
  %5479 = fadd fast float %5478, 5.000000e-01
  %5480 = fmul fast float %5479, %72
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, %5475
  %5484 = fadd fast float %5480, %5483
  %5485 = fsub fast float 5.000000e-01, %5478
  %5486 = fmul fast float %5485, %5436
  %5487 = fmul fast float %5485, %5437
  %5488 = fmul fast float %5485, %5438
  %5489 = fadd fast float %5484, %5486
  %5490 = fadd fast float %5484, %5487
  %5491 = fadd fast float %5484, %5488
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, 5.000000e-01
  %5495 = fadd fast float %5494, 5.000000e-01
  %5496 = fmul fast float %5495, %72
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fmul fast float %5498, %5475
  %5500 = fadd fast float %5496, %5499
  %5501 = fsub fast float 5.000000e-01, %5494
  %5502 = fmul fast float %5501, %5436
  %5503 = fmul fast float %5501, %5437
  %5504 = fmul fast float %5501, %5438
  %5505 = fadd fast float %5500, %5502
  %5506 = fadd fast float %5500, %5503
  %5507 = fadd fast float %5500, %5504
  %5508 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = call float @dx.op.binary.f32(i32 36, float %5436, float %5510)  ; FMin(a,b)
  %5512 = fmul fast float %5511, %5457
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = bitcast float %5513 to i32
  %5515 = sub nsw i32 2129859010, %5514
  %5516 = bitcast i32 %5515 to float
  %5517 = call float @dx.op.binary.f32(i32 36, float %5437, float %5510)  ; FMin(a,b)
  %5518 = fmul fast float %5517, %5457
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = bitcast float %5519 to i32
  %5521 = sub nsw i32 2129859010, %5520
  %5522 = bitcast i32 %5521 to float
  %5523 = call float @dx.op.binary.f32(i32 36, float %5438, float %5510)  ; FMin(a,b)
  %5524 = fmul fast float %5523, %5457
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = fmul fast float %5456, %73
  %5530 = fmul fast float %5529, %5489
  %5531 = fmul fast float %5530, %5516
  %5532 = fmul fast float %5456, %74
  %5533 = fmul fast float %5532, %5490
  %5534 = fmul fast float %5533, %5522
  %5535 = fmul fast float %5456, %75
  %5536 = fmul fast float %5535, %5491
  %5537 = fmul fast float %5536, %5528
  %5538 = call float @dx.op.binary.f32(i32 36, float %5433, float %5510)  ; FMin(a,b)
  %5539 = fmul fast float %5538, %5457
  %5540 = fsub fast float 1.000000e+00, %5539
  %5541 = bitcast float %5540 to i32
  %5542 = sub nsw i32 2129859010, %5541
  %5543 = bitcast i32 %5542 to float
  %5544 = call float @dx.op.binary.f32(i32 36, float %5434, float %5510)  ; FMin(a,b)
  %5545 = fmul fast float %5544, %5457
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = bitcast float %5546 to i32
  %5548 = sub nsw i32 2129859010, %5547
  %5549 = bitcast i32 %5548 to float
  %5550 = call float @dx.op.binary.f32(i32 36, float %5445, float %5510)  ; FMin(a,b)
  %5551 = fmul fast float %5550, %5457
  %5552 = fsub fast float 1.000000e+00, %5551
  %5553 = bitcast float %5552 to i32
  %5554 = sub nsw i32 2129859010, %5553
  %5555 = bitcast i32 %5554 to float
  %5556 = fmul fast float %5529, %5505
  %5557 = fmul fast float %5556, %5543
  %5558 = fmul fast float %5532, %5506
  %5559 = fmul fast float %5558, %5549
  %5560 = fmul fast float %5535, %5507
  %5561 = fmul fast float %5560, %5555
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5534, float %5537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = select i1 %229, float 0.000000e+00, float %5531
  %5564 = select i1 %229, float %5562, float %5534
  %5565 = select i1 %229, float 0.000000e+00, float %5537
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5557, float %5559, float %5561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = select i1 %229, float 0.000000e+00, float %5557
  %5568 = select i1 %229, float %5566, float %5559
  %5569 = select i1 %229, float 0.000000e+00, float %5561
  %5570 = fmul fast float %4238, %4238
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fmul fast float %5447, 9.843750e-01
  %5573 = fmul fast float %5442, 9.843750e-01
  %5574 = fadd fast float %5572, 7.812500e-03
  %5575 = fadd fast float %5573, 7.812500e-03
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5574, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = extractvalue %dx.types.ResRet.f32 %5576, 3
  %5581 = fsub fast float 1.000000e+00, %5571
  %5582 = fsub fast float %5579, %5577
  %5583 = fsub fast float %5580, %5578
  %5584 = fmul fast float %5582, %5581
  %5585 = fmul fast float %5583, %5581
  %5586 = fadd fast float %5584, %5577
  %5587 = fadd fast float %5585, %5578
  %5588 = fmul fast float %5586, %5433
  %5589 = fmul fast float %5586, %5434
  %5590 = fmul fast float %5586, %5445
  %5591 = fadd fast float %5588, %5587
  %5592 = fadd fast float %5589, %5587
  %5593 = fadd fast float %5590, %5587
  %5594 = fcmp fast ogt float %4828, 0.000000e+00
  br i1 %5594, label %5595, label %5621

; <label>:5595                                    ; preds = %5426
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4828, float %5447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5600 = fadd fast float %5597, -5.000000e-01
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fsub fast float 1.000000e+00, %5433
  %5604 = fsub fast float 1.000000e+00, %5434
  %5605 = fsub fast float 1.000000e+00, %5445
  %5606 = fmul fast float %5433, 4.000000e+00
  %5607 = fmul fast float %5606, %5603
  %5608 = fmul fast float %5607, %5600
  %5609 = fmul fast float %5434, 4.000000e+00
  %5610 = fmul fast float %5609, %5604
  %5611 = fmul fast float %5610, %5601
  %5612 = fmul fast float %5445, 4.000000e+00
  %5613 = fmul fast float %5612, %5605
  %5614 = fmul fast float %5613, %5602
  %5615 = fadd fast float %5608, %5591
  %5616 = fadd fast float %5611, %5592
  %5617 = fadd fast float %5614, %5593
  %5618 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  br label %5621

; <label>:5621                                    ; preds = %5595, %5426
  %5622 = phi float [ %5618, %5595 ], [ %5591, %5426 ]
  %5623 = phi float [ %5619, %5595 ], [ %5592, %5426 ]
  %5624 = phi float [ %5620, %5595 ], [ %5593, %5426 ]
  %5625 = call float @dx.op.binary.f32(i32 35, float %5623, float %5624)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5622, float %5625)  ; FMax(a,b)
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = fmul fast float %5626, %5442
  %5629 = fadd fast float %5628, %5442
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5633 = fmul fast float %5629, %5631
  %5634 = fadd fast float %5633, %5632
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fsub fast float 1.000000e+00, %5468
  %5637 = fadd fast float %5636, %5635
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = fcmp fast olt float %5638, 1.000000e+00
  br i1 %5639, label %5640, label %6116

; <label>:5640                                    ; preds = %5621
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5644 = fmul fast float %5642, %104
  %5645 = fmul fast float %5643, %105
  %5646 = fptoui float %5644 to i32
  %5647 = fptoui float %5645 to i32
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5651 = extractvalue %dx.types.CBufRet.f32 %5648, 3
  %5652 = fadd fast float %92, -4.000000e+00
  %5653 = call float @dx.op.binary.f32(i32 35, float %5652, float 0.000000e+00)  ; FMax(a,b)
  %5654 = fadd fast float %5653, %5649
  %5655 = fmul fast float %5654, %5650
  %5656 = call float @dx.op.unary.f32(i32 23, float %5655)  ; Log(value)
  %5657 = fmul fast float %5656, %5651
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5660 = fmul fast float %5657, %5659
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.i32 %5662, 1
  %5664 = add i32 %5663, -1
  %5665 = uitofp i32 %5663 to float
  %5666 = fmul fast float %5665, %5661
  %5667 = fptoui float %5666 to i32
  %5668 = call i32 @dx.op.binary.i32(i32 40, i32 %5667, i32 %5664)  ; UMin(a,b)
  %5669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.i32 %5669, 2
  %5671 = extractvalue %dx.types.CBufRet.i32 %5669, 3
  %5672 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5647, i32 %5670, i32 %5646)  ; UMad(a,b,c)
  %5673 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5668, i32 %5671, i32 %5672)  ; UMad(a,b,c)
  %5674 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5675 = fptoui float %5674 to i32
  %5676 = lshr i32 %5675, 5
  %5677 = call i32 @dx.op.binary.i32(i32 40, i32 %5676, i32 8191)  ; UMin(a,b)
  %5678 = fsub fast float %5232, %169
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fcmp fast ogt float %5679, 0.000000e+00
  %5681 = fcmp fast ogt float %5455, 0.000000e+00
  %5682 = and i1 %5681, %5680
  br i1 %5682, label %5683, label %5712

; <label>:5683                                    ; preds = %5640
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5684, float -1.000000e+00)  ; FMax(a,b)
  %5686 = call float @dx.op.binary.f32(i32 36, float %5685, float 1.000000e+00)  ; FMin(a,b)
  %5687 = fmul fast float %5686, %5686
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = fmul fast float %5688, 0x3FFC6E2300000000
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = fcmp fast ogt float %5690, 0.000000e+00
  %5692 = call float @dx.op.unary.f32(i32 24, float %5690)  ; Sqrt(value)
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = call float @dx.op.unary.f32(i32 23, float %5693)  ; Log(value)
  %5695 = fmul fast float %5694, 5.000000e+00
  %5696 = call float @dx.op.unary.f32(i32 21, float %5695)  ; Exp(value)
  %5697 = fmul fast float %5696, 0x3FEF591A60000000
  %5698 = fadd fast float %5697, 0x3F94DCB540000000
  %5699 = select i1 %5691, float %5698, float 1.000000e+00
  %5700 = fcmp fast oge float %5699, 1.000000e+00
  %5701 = fmul fast float %5684, 2.000000e+00
  %5702 = fadd fast float %5701, %5455
  %5703 = select i1 %5700, float %5702, float %5455
  %5704 = fsub fast float %5703, %5455
  %5705 = fmul fast float %5704, %5679
  %5706 = fadd fast float %5705, %5455
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5706, float %5453, float %5454, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 25, float %5707)  ; Rsqrt(value)
  %5709 = fmul fast float %5708, %5453
  %5710 = fmul fast float %5708, %5454
  %5711 = fmul fast float %5706, %5708
  br label %5712

; <label>:5712                                    ; preds = %5683, %5640
  %5713 = phi float [ %5709, %5683 ], [ %5453, %5640 ]
  %5714 = phi float [ %5710, %5683 ], [ %5454, %5640 ]
  %5715 = phi float [ %5711, %5683 ], [ %5455, %5640 ]
  %5716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.i32 %5716, 2
  %5718 = add nsw i32 %5717, -1
  %5719 = call i32 @dx.op.binary.i32(i32 37, i32 %5718, i32 0)  ; IMax(a,b)
  %5720 = shl i32 %5677, 2
  %5721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5722 = extractvalue %dx.types.ResRet.i32 %5721, 0
  %5723 = lshr i32 %5722, 16
  %5724 = and i32 %5722, 65535
  %5725 = lshr i32 %5722, 21
  %5726 = lshr i32 %5724, 5
  %5727 = call i32 @dx.op.binary.i32(i32 40, i32 %5726, i32 %5719)  ; UMin(a,b)
  %5728 = icmp ugt i32 %5725, %5727
  br i1 %5728, label %6092, label %5729

; <label>:5729                                    ; preds = %5712
  br label %5730

; <label>:5730                                    ; preds = %6084, %5729
  %5731 = phi float [ %6085, %6084 ], [ 0.000000e+00, %5729 ]
  %5732 = phi float [ %6086, %6084 ], [ 0.000000e+00, %5729 ]
  %5733 = phi float [ %6087, %6084 ], [ 0.000000e+00, %5729 ]
  %5734 = phi float [ %6088, %6084 ], [ 1.000000e+00, %5729 ]
  %5735 = phi i32 [ %6089, %6084 ], [ %5725, %5729 ]
  %5736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.i32 %5736, 2
  %5738 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5673, i32 %5737, i32 %5735)  ; UMad(a,b,c)
  %5739 = shl i32 %5738, 2
  %5740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5739, i32 undef)  ; BufferLoad(srv,index,wot)
  %5741 = extractvalue %dx.types.ResRet.i32 %5740, 0
  %5742 = shl i32 %5735, 5
  %5743 = sub nsw i32 %5723, %5742
  %5744 = call i32 @dx.op.binary.i32(i32 37, i32 %5743, i32 0)  ; IMax(a,b)
  %5745 = call i32 @dx.op.binary.i32(i32 38, i32 %5744, i32 31)  ; IMin(a,b)
  %5746 = sub nsw i32 1, %5723
  %5747 = add nsw i32 %5746, %5724
  %5748 = call i32 @dx.op.binary.i32(i32 37, i32 %5747, i32 0)  ; IMax(a,b)
  %5749 = call i32 @dx.op.binary.i32(i32 38, i32 %5748, i32 32)  ; IMin(a,b)
  %5750 = and i32 %5749, 31
  %5751 = shl i32 -1, %5750
  %5752 = xor i32 %5751, -1
  %5753 = and i32 %5745, 31
  %5754 = shl i32 %5752, %5753
  %5755 = icmp eq i32 %5749, 32
  %5756 = select i1 %5755, i32 -1, i32 %5754
  %5757 = and i32 %5756, %5741
  %5758 = icmp eq i32 %5757, 0
  br i1 %5758, label %6084, label %5759

; <label>:5759                                    ; preds = %5730
  br label %5760

; <label>:5760                                    ; preds = %5867, %5759
  %5761 = phi float [ %5868, %5867 ], [ %5731, %5759 ]
  %5762 = phi float [ %5869, %5867 ], [ %5732, %5759 ]
  %5763 = phi float [ %5870, %5867 ], [ %5733, %5759 ]
  %5764 = phi float [ %5871, %5867 ], [ %5734, %5759 ]
  %5765 = phi i32 [ %5770, %5867 ], [ %5757, %5759 ]
  %5766 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5765)  ; FirstbitLo(value)
  %5767 = add i32 %5766, %5742
  %5768 = and i32 %5766, 31
  %5769 = shl i32 1, %5768
  %5770 = xor i32 %5769, %5765
  %5771 = mul i32 %5767, 72
  %5772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5771, i32 undef)  ; BufferLoad(srv,index,wot)
  %5773 = extractvalue %dx.types.ResRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.ResRet.f32 %5772, 1
  %5775 = extractvalue %dx.types.ResRet.f32 %5772, 2
  %5776 = add i32 %5771, 12
  %5777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5776, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.i32 %5777, 0
  %5779 = add i32 %5771, 16
  %5780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5779, i32 undef)  ; BufferLoad(srv,index,wot)
  %5781 = extractvalue %dx.types.ResRet.f32 %5780, 0
  %5782 = extractvalue %dx.types.ResRet.f32 %5780, 1
  %5783 = extractvalue %dx.types.ResRet.f32 %5780, 2
  %5784 = add i32 %5771, 28
  %5785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 0
  %5787 = add i32 %5771, 32
  %5788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5787, i32 undef)  ; BufferLoad(srv,index,wot)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = extractvalue %dx.types.ResRet.f32 %5788, 3
  %5793 = add i32 %5771, 48
  %5794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = add i32 %5771, 56
  %5798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5797, i32 undef)  ; BufferLoad(srv,index,wot)
  %5799 = extractvalue %dx.types.ResRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.ResRet.f32 %5798, 1
  %5801 = add i32 %5771, 64
  %5802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5801, i32 undef)  ; BufferLoad(srv,index,wot)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = mul i32 %5767, 60
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = add i32 %5805, 12
  %5811 = add i32 %5805, 48
  %5812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5816 = and i32 %5778, 32767
  %5817 = bitcast float %5773 to i32
  %5818 = icmp eq i32 %5817, -1
  %5819 = bitcast float %5774 to i32
  %5820 = and i32 %5778, 32768
  %5821 = icmp ne i32 %5820, 0
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = fsub fast float %5807, %5823
  %5827 = fsub fast float %5808, %5824
  %5828 = fsub fast float %5809, %5825
  %5829 = fsub fast float %167, %5826
  %5830 = fsub fast float %168, %5827
  %5831 = fsub fast float %169, %5828
  %5832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5810, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5835 = extractvalue %dx.types.ResRet.f32 %5832, 2
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5833, float %5834, float %5835)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = add i32 %5805, 24
  %5838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.ResRet.f32 %5838, 1
  %5841 = extractvalue %dx.types.ResRet.f32 %5838, 2
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5839, float %5840, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = add i32 %5805, 36
  %5844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5843, i32 undef)  ; BufferLoad(srv,index,wot)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.ResRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.ResRet.f32 %5844, 2
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5845, float %5846, float %5847)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = call float @dx.op.unary.f32(i32 6, float %5836)  ; FAbs(value)
  %5850 = call float @dx.op.unary.f32(i32 6, float %5842)  ; FAbs(value)
  %5851 = call float @dx.op.unary.f32(i32 6, float %5848)  ; FAbs(value)
  %5852 = fsub fast float %5813, %5849
  %5853 = fsub fast float %5814, %5850
  %5854 = fsub fast float %5815, %5851
  %5855 = fmul fast float %5852, %5781
  %5856 = fmul fast float %5853, %5782
  %5857 = fmul fast float %5854, %5783
  %5858 = call float @dx.op.binary.f32(i32 36, float %5856, float %5857)  ; FMin(a,b)
  %5859 = call float @dx.op.binary.f32(i32 36, float %5855, float %5858)  ; FMin(a,b)
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = call float @dx.op.binary.f32(i32 36, float %5764, float %5860)  ; FMin(a,b)
  %5862 = uitofp i1 %5821 to float
  %5863 = fadd fast float %5679, 1.000000e+00
  %5864 = fsub fast float %5863, %5862
  %5865 = fmul fast float %5861, %5864
  %5866 = fcmp fast ogt float %5865, 0.000000e+00
  br i1 %5866, label %5873, label %5867

; <label>:5867                                    ; preds = %6015, %5760
  %5868 = phi float [ %6079, %6015 ], [ %5761, %5760 ]
  %5869 = phi float [ %6080, %6015 ], [ %5762, %5760 ]
  %5870 = phi float [ %6081, %6015 ], [ %5763, %5760 ]
  %5871 = phi float [ %6082, %6015 ], [ %5764, %5760 ]
  %5872 = icmp eq i32 %5765, %5769
  br i1 %5872, label %6083, label %5760

; <label>:5873                                    ; preds = %5760
  br i1 %5818, label %5931, label %5874

; <label>:5874                                    ; preds = %5873
  %5875 = fsub fast float -0.000000e+00, %5833
  %5876 = fsub fast float -0.000000e+00, %5834
  %5877 = fsub fast float -0.000000e+00, %5835
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5875, float %5876, float %5877)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = fsub fast float -0.000000e+00, %5878
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5875, float %5876, float %5877)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = fadd fast float %5880, %5796
  %5882 = fadd fast float %5795, %5880
  %5883 = fsub fast float -0.000000e+00, %5882
  %5884 = fcmp ogt float %5878, -0.000000e+00
  %5885 = select i1 %5884, float %5883, float %5881
  %5886 = call float @dx.op.unary.f32(i32 6, float %5879)  ; FAbs(value)
  %5887 = fdiv fast float 1.000000e+00, %5886
  %5888 = fmul fast float %5885, %5887
  %5889 = call float @dx.op.binary.f32(i32 35, float %5888, float 0.000000e+00)  ; FMax(a,b)
  %5890 = fsub fast float -0.000000e+00, %5839
  %5891 = fsub fast float -0.000000e+00, %5840
  %5892 = fsub fast float -0.000000e+00, %5841
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5890, float %5891, float %5892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = fsub fast float -0.000000e+00, %5893
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5890, float %5891, float %5892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = fadd fast float %5895, %5800
  %5897 = fadd fast float %5799, %5895
  %5898 = fsub fast float -0.000000e+00, %5897
  %5899 = fcmp ogt float %5893, -0.000000e+00
  %5900 = select i1 %5899, float %5898, float %5896
  %5901 = call float @dx.op.unary.f32(i32 6, float %5894)  ; FAbs(value)
  %5902 = fdiv fast float 1.000000e+00, %5901
  %5903 = fmul fast float %5900, %5902
  %5904 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5905 = fsub fast float -0.000000e+00, %5845
  %5906 = fsub fast float -0.000000e+00, %5846
  %5907 = fsub fast float -0.000000e+00, %5847
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5905, float %5906, float %5907)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = fsub fast float -0.000000e+00, %5908
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5905, float %5906, float %5907)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = fadd fast float %5910, %5804
  %5912 = fadd fast float %5803, %5910
  %5913 = fsub fast float -0.000000e+00, %5912
  %5914 = fcmp ogt float %5908, -0.000000e+00
  %5915 = select i1 %5914, float %5913, float %5911
  %5916 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5917 = fdiv fast float 1.000000e+00, %5916
  %5918 = fmul fast float %5915, %5917
  %5919 = call float @dx.op.binary.f32(i32 35, float %5918, float 0.000000e+00)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 36, float %5904, float %5919)  ; FMin(a,b)
  %5921 = call float @dx.op.binary.f32(i32 36, float %5889, float %5920)  ; FMin(a,b)
  %5922 = fmul fast float %5921, %5713
  %5923 = fmul fast float %5921, %5714
  %5924 = fmul fast float %5921, %5715
  %5925 = fadd fast float %5922, %167
  %5926 = fadd fast float %5923, %168
  %5927 = fadd fast float %5924, %169
  %5928 = fsub fast float %5925, %5773
  %5929 = fsub fast float %5926, %5774
  %5930 = fsub fast float %5927, %5775
  br label %5938

; <label>:5931                                    ; preds = %5873
  %5932 = fmul fast float %5713, 8.096000e+03
  %5933 = fmul fast float %5714, 8.096000e+03
  %5934 = fmul fast float %5715, 8.096000e+03
  %5935 = fadd fast float %5932, %167
  %5936 = fadd fast float %5933, %168
  %5937 = fadd fast float %5934, %169
  br label %5938

; <label>:5938                                    ; preds = %5931, %5874
  %5939 = phi float [ %5713, %5931 ], [ %5928, %5874 ]
  %5940 = phi float [ %5714, %5931 ], [ %5929, %5874 ]
  %5941 = phi float [ %5715, %5931 ], [ %5930, %5874 ]
  %5942 = phi float [ %5935, %5931 ], [ %5925, %5874 ]
  %5943 = phi float [ %5936, %5931 ], [ %5926, %5874 ]
  %5944 = phi float [ %5937, %5931 ], [ %5927, %5874 ]
  %5945 = fcmp fast olt float %5792, 1.000000e+00
  br i1 %5945, label %5946, label %5977, !dx.controlflow.hints !99

; <label>:5946                                    ; preds = %5938
  %5947 = fmul fast float %5941, %5790
  %5948 = fmul fast float %5940, %5791
  %5949 = fsub fast float %5947, %5948
  %5950 = fmul fast float %5939, %5791
  %5951 = fmul fast float %5941, %5789
  %5952 = fsub fast float %5950, %5951
  %5953 = fmul fast float %5940, %5789
  %5954 = fmul fast float %5939, %5790
  %5955 = fsub fast float %5953, %5954
  %5956 = fmul fast float %5949, 2.000000e+00
  %5957 = fmul fast float %5952, 2.000000e+00
  %5958 = fmul fast float %5955, 2.000000e+00
  %5959 = fmul fast float %5956, %5792
  %5960 = fmul fast float %5957, %5792
  %5961 = fmul fast float %5958, %5792
  %5962 = fmul fast float %5958, %5790
  %5963 = fmul fast float %5957, %5791
  %5964 = fmul fast float %5956, %5791
  %5965 = fmul fast float %5958, %5789
  %5966 = fmul fast float %5957, %5789
  %5967 = fmul fast float %5956, %5790
  %5968 = fadd fast float %5962, %5939
  %5969 = fadd fast float %5968, %5959
  %5970 = fsub fast float %5969, %5963
  %5971 = fsub fast float %5940, %5965
  %5972 = fadd fast float %5971, %5960
  %5973 = fadd fast float %5972, %5964
  %5974 = fadd fast float %5961, %5941
  %5975 = fsub fast float %5974, %5967
  %5976 = fadd fast float %5975, %5966
  br label %5977

; <label>:5977                                    ; preds = %5946, %5938
  %5978 = phi float [ %5970, %5946 ], [ %5939, %5938 ]
  %5979 = phi float [ %5973, %5946 ], [ %5940, %5938 ]
  %5980 = phi float [ %5976, %5946 ], [ %5941, %5938 ]
  br i1 %5818, label %6012, label %5981

; <label>:5981                                    ; preds = %5977
  %5982 = fmul fast float %5442, 0x400187C840000000
  %5983 = fadd fast float %5982, 0xC00EFC2120000000
  %5984 = fmul fast float %5983, %5442
  %5985 = fadd fast float %5984, 0x3FE5D16340000000
  %5986 = fmul fast float %5985, %5442
  %5987 = fadd fast float %5986, 1.000000e+00
  %5988 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5989 = fsub fast float %5942, %167
  %5990 = fsub fast float %5943, %168
  %5991 = fsub fast float %5944, %169
  %5992 = fsub fast float %5942, %5773
  %5993 = fsub fast float %5943, %5774
  %5994 = fsub fast float %5944, %5775
  %5995 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5990, float %5991, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5992, float %5993, float %5994, float %5992, float %5993, float %5994)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fadd fast float %5996, 0x3EE4F8B580000000
  %5998 = fdiv fast float %5995, %5997
  %5999 = bitcast float %5998 to i32
  %6000 = ashr i32 %5999, 1
  %6001 = add nsw i32 %6000, 532487669
  %6002 = bitcast i32 %6001 to float
  %6003 = fmul fast float %6002, %5988
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = fmul fast float %6004, 0x4009981AE0000000
  %6006 = fsub fast float 0x40111BBD80000000, %6005
  %6007 = fmul fast float %6006, %6004
  %6008 = fadd fast float %6007, 0xC0009F6020000000
  %6009 = fmul fast float %6008, %6004
  %6010 = fadd fast float %6009, 1.000000e+00
  %6011 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  br label %6015

; <label>:6012                                    ; preds = %5977
  %6013 = icmp ne i32 %5819, -1
  %6014 = zext i1 %6013 to i32
  br label %6015

; <label>:6015                                    ; preds = %6012, %5981
  %6016 = phi float [ %5442, %6012 ], [ %6011, %5981 ]
  %6017 = phi i32 [ %6014, %6012 ], [ 0, %5981 ]
  %6018 = fmul float %6016, 5.000000e+00
  %6019 = fsub float 5.000000e+00, %6018
  %6020 = icmp ne i32 %6017, 0
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6023 = fadd fast float %6022, %6019
  %6024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6023)  ; FMax(a,b)
  %6025 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %6026 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %6027 = fadd fast float %6026, %6025
  %6028 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %6029 = fadd fast float %6027, %6028
  %6030 = fcmp fast oeq float %6029, 0.000000e+00
  %6031 = fdiv fast float 1.000000e+00, %6029
  %6032 = select i1 %6030, float 1.000000e+00, float %6031
  %6033 = fmul fast float %6032, %5978
  %6034 = fmul fast float %6032, %5979
  %6035 = call float @dx.op.unary.f32(i32 6, float %6034)  ; FAbs(value)
  %6036 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6037 = fsub fast float 1.000000e+00, %6035
  %6038 = fsub fast float 1.000000e+00, %6036
  %6039 = fcmp fast oge float %6033, 0.000000e+00
  %6040 = fcmp fast oge float %6034, 0.000000e+00
  %6041 = select i1 %6039, float 1.000000e+00, float -1.000000e+00
  %6042 = select i1 %6040, float 1.000000e+00, float -1.000000e+00
  %6043 = fcmp fast ole float %5980, 0.000000e+00
  %6044 = fmul fast float %6041, %6037
  %6045 = fmul fast float %6042, %6038
  %6046 = select i1 %6043, float %6044, float %6033
  %6047 = select i1 %6043, float %6045, float %6034
  %6048 = fmul fast float %6046, 5.000000e-01
  %6049 = fmul fast float %6047, 5.000000e-01
  %6050 = fadd fast float %6048, 5.000000e-01
  %6051 = fadd fast float %6049, 5.000000e-01
  %6052 = uitofp i32 %5816 to float
  %6053 = call float @dx.op.binary.f32(i32 36, float %6024, float 3.000000e+00)  ; FMin(a,b)
  %6054 = fadd fast float %6053, 2.000000e+00
  %6055 = call float @dx.op.unary.f32(i32 21, float %6054)  ; Exp(value)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6057 = fmul fast float %6056, %6055
  %6058 = fmul fast float %6057, 2.000000e+00
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = fmul fast float %6050, %6059
  %6061 = fmul fast float %6051, %6059
  %6062 = fadd fast float %6060, %6057
  %6063 = fadd fast float %6061, %6057
  %6064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6062, float %6063, float %6052, float undef, i32 0, i32 0, i32 undef, float %6024)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6065 = extractvalue %dx.types.ResRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.ResRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.ResRet.f32 %6064, 2
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 3
  %6070 = fmul fast float %6069, %5786
  %6071 = call float @dx.op.binary.f32(i32 36, float %5508, float %6070)  ; FMin(a,b)
  %6072 = select i1 %6020, float %6071, float %6070
  %6073 = fmul fast float %6065, %5865
  %6074 = fmul fast float %6073, %6072
  %6075 = fmul fast float %6066, %5865
  %6076 = fmul fast float %6075, %6072
  %6077 = fmul fast float %6067, %5865
  %6078 = fmul fast float %6077, %6072
  %6079 = fadd fast float %6074, %5761
  %6080 = fadd fast float %6076, %5762
  %6081 = fadd fast float %6078, %5763
  %6082 = fsub fast float %5764, %5865
  br label %5867

; <label>:6083                                    ; preds = %5867
  br label %6084

; <label>:6084                                    ; preds = %6083, %5730
  %6085 = phi float [ %5731, %5730 ], [ %5868, %6083 ]
  %6086 = phi float [ %5732, %5730 ], [ %5869, %6083 ]
  %6087 = phi float [ %5733, %5730 ], [ %5870, %6083 ]
  %6088 = phi float [ %5734, %5730 ], [ %5871, %6083 ]
  %6089 = add i32 %5735, 1
  %6090 = icmp ugt i32 %6089, %5727
  br i1 %6090, label %6091, label %5730, !llvm.loop !100

; <label>:6091                                    ; preds = %6084
  br label %6092

; <label>:6092                                    ; preds = %6091, %5712
  %6093 = phi float [ 0.000000e+00, %5712 ], [ %6085, %6091 ]
  %6094 = phi float [ 0.000000e+00, %5712 ], [ %6086, %6091 ]
  %6095 = phi float [ 0.000000e+00, %5712 ], [ %6087, %6091 ]
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = select i1 %229, float 0.000000e+00, float %6093
  %6098 = select i1 %229, float %6096, float %6094
  %6099 = select i1 %229, float 0.000000e+00, float %6095
  %6100 = fcmp fast olt float %5638, 0.000000e+00
  %6101 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %6102 = fmul fast float %6101, %5567
  %6103 = fmul fast float %6101, %5568
  %6104 = fmul fast float %6101, %5569
  %6105 = select i1 %6100, float %5567, float %6102
  %6106 = select i1 %6100, float %5568, float %6103
  %6107 = select i1 %6100, float %5569, float %6104
  %6108 = fsub fast float 1.000000e+00, %6101
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = fmul fast float %6109, %6097
  %6111 = fmul fast float %6109, %6098
  %6112 = fmul fast float %6109, %6099
  %6113 = fadd fast float %6105, %6110
  %6114 = fadd fast float %6106, %6111
  %6115 = fadd fast float %6107, %6112
  br label %6116

; <label>:6116                                    ; preds = %6092, %5621
  %6117 = phi float [ %5567, %5621 ], [ %6113, %6092 ]
  %6118 = phi float [ %5568, %5621 ], [ %6114, %6092 ]
  %6119 = phi float [ %5569, %5621 ], [ %6115, %6092 ]
  %6120 = fmul fast float %5627, %5563
  %6121 = fmul fast float %5627, %5564
  %6122 = fmul fast float %5627, %5565
  %6123 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = fcmp fast ogt float %6123, 0x3E7FF19E20000000
  %6125 = fdiv fast float 1.000000e+00, %6123
  %6126 = select i1 %6124, float %6125, float 0.000000e+00
  %6127 = fmul fast float %6126, %5436
  %6128 = fmul fast float %6126, %5437
  %6129 = fmul fast float %6126, %5438
  %6130 = fadd fast float %6127, -1.000000e+00
  %6131 = fadd fast float %6128, -1.000000e+00
  %6132 = fadd fast float %6129, -1.000000e+00
  %6133 = fmul fast float %6130, 5.000000e-01
  %6134 = fmul fast float %6131, 5.000000e-01
  %6135 = fmul fast float %6132, 5.000000e-01
  %6136 = fadd fast float %6133, 1.000000e+00
  %6137 = fadd fast float %6134, 1.000000e+00
  %6138 = fadd fast float %6135, 1.000000e+00
  %6139 = call float @dx.op.binary.f32(i32 35, float %5447, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6140 = fdiv fast float %4238, %6139
  %6141 = fcmp fast olt float %4855, 1.270000e+02
  %6142 = fcmp fast olt float %4856, 1.270000e+02
  %6143 = fcmp fast olt float %4857, 1.270000e+02
  %6144 = fmul fast float %4855, 0xBFF7154760000000
  %6145 = fmul fast float %6144, %6140
  %6146 = fmul fast float %4856, 0xBFF7154760000000
  %6147 = fmul fast float %6146, %6140
  %6148 = fmul fast float %4857, 0xBFF7154760000000
  %6149 = fmul fast float %6148, %6140
  %6150 = call float @dx.op.unary.f32(i32 21, float %6145)  ; Exp(value)
  %6151 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6152 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6154 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6152)  ; Saturate(value)
  %6156 = select i1 %6141, float %6153, float 0.000000e+00
  %6157 = select i1 %6142, float %6154, float 0.000000e+00
  %6158 = select i1 %6143, float %6155, float 0.000000e+00
  %6159 = fmul fast float %6156, %5627
  %6160 = fmul fast float %6157, %5627
  %6161 = fmul fast float %6158, %5627
  %6162 = fadd fast float %6159, -1.000000e+00
  %6163 = fadd fast float %6160, -1.000000e+00
  %6164 = fadd fast float %6161, -1.000000e+00
  %6165 = fmul fast float %6117, %5622
  %6166 = fmul fast float %6118, %5623
  %6167 = fmul fast float %6119, %5624
  %6168 = fsub fast float 1.000000e+00, %5447
  %6169 = bitcast float %6168 to i32
  %6170 = sitofp i32 %6169 to float
  %6171 = fmul fast float %6170, 5.000000e+00
  %6172 = fadd fast float %6171, 0xC1EFBF8940000000
  %6173 = fptosi float %6172 to i32
  %6174 = bitcast i32 %6173 to float
  %6175 = fmul fast float %6174, %4829
  %6176 = fmul fast float %5563, %6175
  %6177 = fmul fast float %6176, %5627
  %6178 = fmul fast float %6177, %6136
  %6179 = fmul fast float %5564, %6175
  %6180 = fmul fast float %6179, %5627
  %6181 = fmul fast float %6180, %6137
  %6182 = fmul fast float %5565, %6175
  %6183 = fmul fast float %6182, %5627
  %6184 = fmul fast float %6183, %6138
  %6185 = fmul fast float %6120, %4825
  %6186 = fmul fast float %6121, %4825
  %6187 = fmul fast float %6122, %4825
  %6188 = fadd fast float %6165, %4818
  %6189 = fadd fast float %6188, %6178
  %6190 = fmul fast float %6189, %4825
  %6191 = fadd fast float %6166, %4819
  %6192 = fadd fast float %6191, %6181
  %6193 = fmul fast float %6192, %4825
  %6194 = fadd fast float %6167, %4820
  %6195 = fadd fast float %6194, %6184
  %6196 = fmul fast float %6195, %4825
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6199 = fcmp fast oeq float %6198, 0.000000e+00
  br i1 %6199, label %7754, label %6200

; <label>:6200                                    ; preds = %6116
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = call float @dx.op.dot3.f32(i32 55, float %6205, float %6206, float %6207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = select i1 %229, float %6209, float %6205
  %6213 = select i1 %229, float %6211, float %6206
  %6214 = select i1 %229, float %6210, float %6207
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6217 = fmul fast float %6216, %111
  %6218 = fmul fast float %6216, %112
  %6219 = fmul fast float %6216, %113
  %6220 = fadd fast float %6217, %167
  %6221 = fadd fast float %6218, %168
  %6222 = fadd fast float %6219, %169
  %6223 = fcmp fast olt float %6198, 0.000000e+00
  br i1 %6223, label %7319, label %6224

; <label>:6224                                    ; preds = %6200
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6229 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6240 = fmul fast float %6226, %6220
  %6241 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6227, float %6240)  ; FMad(a,b,c)
  %6242 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6228, float %6241)  ; FMad(a,b,c)
  %6243 = fadd fast float %6242, %6229
  %6244 = fmul fast float %6231, %6220
  %6245 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6232, float %6244)  ; FMad(a,b,c)
  %6246 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6233, float %6245)  ; FMad(a,b,c)
  %6247 = fadd fast float %6246, %6234
  %6248 = fmul fast float %6236, %6220
  %6249 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6237, float %6248)  ; FMad(a,b,c)
  %6250 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6238, float %6249)  ; FMad(a,b,c)
  %6251 = fadd fast float %6250, %6239
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6255 = extractvalue %dx.types.CBufRet.f32 %6252, 3
  %6256 = fmul fast float %6255, %6243
  %6257 = fmul fast float %6255, %6247
  %6258 = fadd fast float %6256, %6253
  %6259 = fadd fast float %6257, %6254
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6264 = fmul fast float %6263, %6243
  %6265 = fmul fast float %6263, %6247
  %6266 = fadd fast float %6264, %6261
  %6267 = fadd fast float %6265, %6262
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6270 = fsub fast float %6269, %6251
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6272 = fmul fast float %6270, %6271
  %6273 = fsub fast float 1.000000e+00, %6272
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6278 = fadd fast float %6277, %6275
  %6279 = fcmp fast ogt float %6278, 0.000000e+00
  br i1 %6279, label %6280, label %6304

; <label>:6280                                    ; preds = %6224
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = fsub fast float %6266, %6282
  %6285 = fsub fast float %6267, %6283
  %6286 = fcmp fast olt float %6284, 0.000000e+00
  %6287 = fcmp fast olt float %6285, 0.000000e+00
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = extractvalue %dx.types.CBufRet.f32 %6288, 3
  %6293 = select i1 %6286, float %6289, float %6291
  %6294 = select i1 %6287, float %6290, float %6292
  %6295 = fmul fast float %6293, %6284
  %6296 = fmul fast float %6294, %6285
  %6297 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6298 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6300 = call float @dx.op.binary.f32(i32 35, float %6297, float %6298)  ; FMax(a,b)
  %6301 = fsub fast float %6299, %6300
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = fmul fast float %6302, %6274
  br label %6304

; <label>:6304                                    ; preds = %6280, %6224
  %6305 = phi float [ %6303, %6280 ], [ 0.000000e+00, %6224 ]
  %6306 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6307 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6308 = fadd fast float %6307, %6306
  %6309 = fcmp fast ogt float %6308, 0.000000e+00
  %6310 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  br i1 %6309, label %6311, label %6334

; <label>:6311                                    ; preds = %6304
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = fsub fast float %6258, %6313
  %6316 = fsub fast float %6259, %6314
  %6317 = fcmp fast olt float %6315, 0.000000e+00
  %6318 = fcmp fast olt float %6316, 0.000000e+00
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6324 = select i1 %6317, float %6320, float %6322
  %6325 = select i1 %6318, float %6321, float %6323
  %6326 = fmul fast float %6324, %6315
  %6327 = fmul fast float %6325, %6316
  %6328 = call float @dx.op.unary.f32(i32 6, float %6326)  ; FAbs(value)
  %6329 = call float @dx.op.unary.f32(i32 6, float %6327)  ; FAbs(value)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6328, float %6329)  ; FMax(a,b)
  %6331 = fsub fast float %6310, %6330
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6333 = fmul fast float %6332, %6274
  br label %6334

; <label>:6334                                    ; preds = %6311, %6304
  %6335 = phi float [ %6333, %6311 ], [ 0.000000e+00, %6304 ]
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6342 = fsub fast float %6243, %6340
  %6343 = fsub fast float %6247, %6341
  %6344 = fcmp fast olt float %6342, 0.000000e+00
  %6345 = fcmp fast olt float %6343, 0.000000e+00
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = select i1 %6344, float %6347, float %6349
  %6352 = select i1 %6345, float %6348, float %6350
  %6353 = fmul fast float %6351, %6342
  %6354 = fmul fast float %6352, %6343
  %6355 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6356 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6355, float %6356)  ; FMax(a,b)
  %6358 = fsub fast float %6310, %6357
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = call float @dx.op.binary.f32(i32 36, float %6359, float %6338)  ; FMin(a,b)
  %6361 = fmul fast float %6360, %6274
  %6362 = fsub fast float %6335, %6361
  %6363 = fsub fast float %6305, %6335
  %6364 = fsub fast float %6363, %6361
  %6365 = call float @dx.op.binary.f32(i32 35, float %6335, float %6305)  ; FMax(a,b)
  %6366 = call float @dx.op.binary.f32(i32 35, float %6361, float %6365)  ; FMax(a,b)
  %6367 = fcmp fast olt float %6366, 1.000000e+00
  br i1 %6367, label %6368, label %6766, !dx.controlflow.hints !102

; <label>:6368                                    ; preds = %6334
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = fcmp fast une float %6370, 0.000000e+00
  br i1 %6371, label %6372, label %6766, !dx.controlflow.hints !103

; <label>:6372                                    ; preds = %6368
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6388 = fmul fast float %6374, %6220
  %6389 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6375, float %6388)  ; FMad(a,b,c)
  %6390 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6376, float %6389)  ; FMad(a,b,c)
  %6391 = fadd fast float %6390, %6377
  %6392 = fmul fast float %6379, %6220
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6380, float %6392)  ; FMad(a,b,c)
  %6394 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6381, float %6393)  ; FMad(a,b,c)
  %6395 = fadd fast float %6394, %6382
  %6396 = fmul fast float %6384, %6220
  %6397 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6385, float %6396)  ; FMad(a,b,c)
  %6398 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6386, float %6397)  ; FMad(a,b,c)
  %6399 = fadd fast float %6398, %6387
  %6400 = fcmp fast oge float %6391, 1.000000e+00
  %6401 = fcmp fast oge float %6395, 1.000000e+00
  %6402 = or i1 %6400, %6401
  %6403 = fcmp fast olt float %6391, 0.000000e+00
  %6404 = fcmp fast olt float %6395, 0.000000e+00
  %6405 = or i1 %6403, %6404
  %6406 = or i1 %6402, %6405
  br i1 %6406, label %6766, label %6407, !dx.controlflow.hints !104

; <label>:6407                                    ; preds = %6372
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.i32 %6412, 2
  %6414 = uitofp i32 %6413 to float
  %6415 = extractvalue %dx.types.CBufRet.i32 %6412, 3
  %6416 = uitofp i32 %6415 to float
  %6417 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6418 = fmul fast float %6417, 2.000000e+00
  %6419 = fsub fast float %6391, %6409
  %6420 = fsub fast float %6395, %6410
  %6421 = fmul fast float %6418, %6419
  %6422 = fmul fast float %6418, %6420
  %6423 = fdiv fast float 1.000000e+00, %6203
  %6424 = fmul fast float %6422, %6423
  %6425 = call float @dx.op.unary.f32(i32 6, float %6424)  ; FAbs(value)
  %6426 = fmul fast float %6411, %6222
  %6427 = fmul fast float %6426, %6418
  %6428 = call float @dx.op.unary.f32(i32 6, float %6427)  ; FAbs(value)
  %6429 = call float @dx.op.unary.f32(i32 6, float %6421)  ; FAbs(value)
  %6430 = call float @dx.op.binary.f32(i32 35, float %6428, float %6425)  ; FMax(a,b)
  %6431 = call float @dx.op.binary.f32(i32 35, float %6429, float %6430)  ; FMax(a,b)
  %6432 = fmul fast float %6431, 2.000000e+00
  %6433 = call float @dx.op.unary.f32(i32 23, float %6432)  ; Log(value)
  %6434 = call float @dx.op.binary.f32(i32 35, float %6433, float %6414)  ; FMax(a,b)
  %6435 = call float @dx.op.unary.f32(i32 22, float %6434)  ; Frc(value)
  %6436 = fadd fast float %6435, 0xBFEA666660000000
  %6437 = fmul fast float %6436, 8.000000e+00
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = call float @dx.op.unary.f32(i32 27, float %6434)  ; Round_ni(value)
  %6440 = fadd fast float %6439, %6438
  %6441 = call float @dx.op.binary.f32(i32 36, float %6440, float %6416)  ; FMin(a,b)
  %6442 = call float @dx.op.unary.f32(i32 27, float %6441)  ; Round_ni(value)
  %6443 = fsub fast float -0.000000e+00, %6442
  %6444 = call float @dx.op.unary.f32(i32 21, float %6443)  ; Exp(value)
  %6445 = fmul fast float %6444, %6418
  %6446 = fmul fast float %6445, %6391
  %6447 = fmul fast float %6445, %6395
  %6448 = fmul fast float %6446, 2.500000e-01
  %6449 = fmul fast float %6447, 2.500000e-01
  %6450 = fadd fast float %6448, 5.000000e-01
  %6451 = fadd fast float %6449, 5.000000e-01
  %6452 = fsub fast float %6416, %6414
  %6453 = fptoui float %6452 to i32
  %6454 = add i32 %6453, 320
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6454)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6458 = fcmp fast une float %6441, %6416
  %6459 = fsub fast float %6391, %6456
  %6460 = fsub fast float %6395, %6457
  %6461 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6462 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6463 = fmul fast float %6461, %6445
  %6464 = fmul fast float %6462, %6445
  %6465 = fcmp fast olt float %6463, 1.000000e+00
  %6466 = fcmp fast olt float %6464, 1.000000e+00
  %6467 = and i1 %6465, %6466
  %6468 = or i1 %6458, %6467
  br i1 %6468, label %6469, label %6766, !dx.controlflow.hints !105

; <label>:6469                                    ; preds = %6407
  %6470 = fmul fast float %6447, 5.000000e-01
  %6471 = fmul fast float %6446, 5.000000e-01
  %6472 = fadd fast float %6470, 5.000000e-01
  %6473 = fadd fast float %6471, 5.000000e-01
  %6474 = sitofp i32 %6413 to float
  %6475 = fsub fast float %6441, %6474
  %6476 = call float @dx.op.unary.f32(i32 27, float %6475)  ; Round_ni(value)
  %6477 = call float @dx.op.unary.f32(i32 22, float %6441)  ; Frc(value)
  %6478 = call float @dx.op.unary.f32(i32 22, float %6473)  ; Frc(value)
  %6479 = call float @dx.op.unary.f32(i32 22, float %6472)  ; Frc(value)
  %6480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6478, float %6479, float %6476, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.ResRet.f32 %6480, 2
  %6484 = extractvalue %dx.types.ResRet.f32 %6480, 3
  %6485 = fcmp fast ogt float %6477, 0.000000e+00
  br i1 %6485, label %6486, label %6507, !dx.controlflow.hints !106

; <label>:6486                                    ; preds = %6469
  %6487 = fadd fast float %6476, 1.000000e+00
  %6488 = call float @dx.op.unary.f32(i32 22, float %6450)  ; Frc(value)
  %6489 = call float @dx.op.unary.f32(i32 22, float %6451)  ; Frc(value)
  %6490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6488, float %6489, float %6487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.ResRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.ResRet.f32 %6490, 2
  %6494 = extractvalue %dx.types.ResRet.f32 %6490, 3
  %6495 = fsub fast float %6491, %6481
  %6496 = fsub fast float %6492, %6482
  %6497 = fsub fast float %6493, %6483
  %6498 = fsub fast float %6494, %6484
  %6499 = fmul fast float %6495, %6477
  %6500 = fmul fast float %6496, %6477
  %6501 = fmul fast float %6497, %6477
  %6502 = fmul fast float %6498, %6477
  %6503 = fadd fast float %6499, %6481
  %6504 = fadd fast float %6500, %6482
  %6505 = fadd fast float %6501, %6483
  %6506 = fadd fast float %6502, %6484
  br label %6507

; <label>:6507                                    ; preds = %6486, %6469
  %6508 = phi float [ %6503, %6486 ], [ %6481, %6469 ]
  %6509 = phi float [ %6504, %6486 ], [ %6482, %6469 ]
  %6510 = phi float [ %6505, %6486 ], [ %6483, %6469 ]
  %6511 = phi float [ %6506, %6486 ], [ %6484, %6469 ]
  %6512 = fadd fast float %6508, -5.000000e-01
  %6513 = fadd fast float %6510, -5.000000e-01
  %6514 = fmul fast float %6512, 0xBFD5555560000000
  %6515 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6513, float %6514)  ; FMad(a,b,c)
  %6516 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6509, float 0.000000e+00)  ; FMad(a,b,c)
  %6517 = fadd fast float %6516, %6511
  %6518 = fmul fast float %6512, -7.500000e-01
  %6519 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6513, float %6518)  ; FMad(a,b,c)
  %6520 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6509, float 0.000000e+00)  ; FMad(a,b,c)
  %6521 = fadd fast float %6520, %6511
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6529 = fsub fast float %6525, %6515
  %6530 = fsub fast float %6526, %6517
  %6531 = fsub fast float %6527, %6519
  %6532 = fsub fast float %6528, %6521
  %6533 = fmul fast float %6529, %6523
  %6534 = fmul fast float %6530, %6523
  %6535 = fmul fast float %6531, %6523
  %6536 = fmul fast float %6532, %6523
  %6537 = fadd fast float %6533, %6515
  %6538 = fadd fast float %6534, %6517
  %6539 = fadd fast float %6535, %6519
  %6540 = fadd fast float %6536, %6521
  %6541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6542 = extractvalue %dx.types.ResRet.i32 %6541, 0
  %6543 = and i32 %6542, 536870911
  %6544 = uitofp i32 %6543 to float
  %6545 = fmul fast float %6544, %6391
  %6546 = fmul fast float %6544, %6395
  %6547 = fptoui float %6545 to i32
  %6548 = fptoui float %6546 to i32
  %6549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6550 = extractvalue %dx.types.ResRet.i32 %6549, 0
  %6551 = and i32 %6550, 31
  %6552 = lshr i32 %6547, %6551
  %6553 = lshr i32 %6548, %6551
  %6554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6555 = extractvalue %dx.types.ResRet.i32 %6554, 0
  %6556 = and i32 %6555, 31
  %6557 = shl i32 1, %6556
  %6558 = call i32 @dx.op.binary.i32(i32 40, i32 %6557, i32 4)  ; UMin(a,b)
  %6559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6560 = extractvalue %dx.types.ResRet.i32 %6559, 0
  %6561 = extractvalue %dx.types.ResRet.i32 %6559, 1
  %6562 = icmp eq i32 %6558, 0
  br i1 %6562, label %6604, label %6563

; <label>:6563                                    ; preds = %6507
  br label %6564

; <label>:6564                                    ; preds = %6592, %6563
  %6565 = phi i32 [ %6595, %6592 ], [ 0, %6563 ]
  %6566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6567 = extractvalue %dx.types.ResRet.i32 %6566, 0
  %6568 = lshr i32 %6567, 16
  %6569 = and i32 %6568, 31
  %6570 = shl i32 %6553, %6569
  %6571 = add i32 %6570, %6552
  %6572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6573 = extractvalue %dx.types.ResRet.i32 %6572, 0
  %6574 = and i32 %6573, 31
  %6575 = shl i32 %6571, %6574
  %6576 = add i32 %6575, %6565
  %6577 = shl i32 %6576, 2
  %6578 = add i32 %6577, 32
  %6579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6578, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.i32 %6579, 0
  %6581 = icmp slt i32 %6580, 0
  %6582 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6565
  %6583 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6565
  %6584 = bitcast float* %6582 to i32*
  %6585 = bitcast float* %6583 to i32*
  br i1 %6581, label %6586, label %6592

; <label>:6586                                    ; preds = %6564
  %6587 = and i32 %6580, 1073741823
  %6588 = add nuw nsw i32 %6587, 20
  %6589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6588, i32 undef)  ; BufferLoad(srv,index,wot)
  %6590 = extractvalue %dx.types.ResRet.i32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.i32 %6589, 1
  br label %6592

; <label>:6592                                    ; preds = %6586, %6564
  %6593 = phi i32 [ %6590, %6586 ], [ %6560, %6564 ]
  %6594 = phi i32 [ %6591, %6586 ], [ %6561, %6564 ]
  store i32 %6593, i32* %6584, align 4
  store i32 %6594, i32* %6585, align 4
  %6595 = add nuw i32 %6565, 1
  %6596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.i32 %6596, 2
  %6598 = icmp eq i32 %6597, 0
  %6599 = icmp ugt i32 %6580, -1073741825
  %6600 = and i1 %6599, %6598
  %6601 = icmp ult i32 %6595, %6558
  %6602 = and i1 %6600, %6601
  br i1 %6602, label %6564, label %6603

; <label>:6603                                    ; preds = %6592
  br label %6604

; <label>:6604                                    ; preds = %6603, %6507
  %6605 = phi i32 [ 0, %6507 ], [ %6595, %6603 ]
  %6606 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6607 = fptoui float %6606 to i32
  %6608 = icmp eq i32 %6607, 0
  br i1 %6608, label %6660, label %6609

; <label>:6609                                    ; preds = %6604
  br label %6610

; <label>:6610                                    ; preds = %6655, %6609
  %6611 = phi i32 [ %6656, %6655 ], [ %6605, %6609 ]
  %6612 = phi i32 [ %6657, %6655 ], [ 0, %6609 ]
  %6613 = lshr i32 %6612, 2
  %6614 = and i32 %6612, 3
  %6615 = add nuw nsw i32 %6613, 83
  %6616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6615)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.i32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.i32 %6616, 1
  %6619 = extractvalue %dx.types.CBufRet.i32 %6616, 2
  %6620 = extractvalue %dx.types.CBufRet.i32 %6616, 3
  %6621 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6617, i32* %6621, align 4
  %6622 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6618, i32* %6622, align 4
  %6623 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6619, i32* %6623, align 4
  %6624 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6620, i32* %6624, align 4
  %6625 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6614
  %6626 = load i32, i32* %6625, align 4, !tbaa !107, !noalias !111
  %6627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6628 = extractvalue %dx.types.ResRet.i32 %6627, 0
  %6629 = lshr i32 %6628, 16
  %6630 = and i32 %6629, 31
  %6631 = shl i32 %6553, %6630
  %6632 = add i32 %6631, %6552
  %6633 = shl i32 %6632, 2
  %6634 = add i32 %6633, %6626
  %6635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6634, i32 undef)  ; BufferLoad(srv,index,wot)
  %6636 = extractvalue %dx.types.ResRet.i32 %6635, 0
  %6637 = icmp eq i32 %6636, 0
  br i1 %6637, label %6655, label %6638

; <label>:6638                                    ; preds = %6610
  %6639 = icmp slt i32 %6636, 0
  %6640 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6611
  %6641 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6611
  %6642 = bitcast float* %6640 to i32*
  %6643 = bitcast float* %6641 to i32*
  br i1 %6639, label %6644, label %6651

; <label>:6644                                    ; preds = %6638
  %6645 = and i32 %6636, 1073741823
  %6646 = add i32 %6626, 20
  %6647 = add i32 %6646, %6645
  %6648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6647, i32 undef)  ; BufferLoad(srv,index,wot)
  %6649 = extractvalue %dx.types.ResRet.i32 %6648, 0
  %6650 = extractvalue %dx.types.ResRet.i32 %6648, 1
  br label %6651

; <label>:6651                                    ; preds = %6644, %6638
  %6652 = phi i32 [ %6649, %6644 ], [ %6560, %6638 ]
  %6653 = phi i32 [ %6650, %6644 ], [ %6561, %6638 ]
  store i32 %6652, i32* %6642, align 4
  store i32 %6653, i32* %6643, align 4
  %6654 = add i32 %6611, 1
  br label %6655

; <label>:6655                                    ; preds = %6651, %6610
  %6656 = phi i32 [ %6611, %6610 ], [ %6654, %6651 ]
  %6657 = add nuw i32 %6612, 1
  %6658 = icmp eq i32 %6657, %6607
  br i1 %6658, label %6659, label %6610

; <label>:6659                                    ; preds = %6655
  br label %6660

; <label>:6660                                    ; preds = %6659, %6604
  %6661 = phi i32 [ %6605, %6604 ], [ %6656, %6659 ]
  %6662 = icmp eq i32 %6661, 1
  %6663 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6664 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6662, label %6665, label %6668

; <label>:6665                                    ; preds = %6660
  %6666 = load float, float* %6663, align 4
  %6667 = load float, float* %6664, align 4
  br label %6695

; <label>:6668                                    ; preds = %6660
  %6669 = load float, float* %6663, align 4
  %6670 = load float, float* %6664, align 4
  %6671 = fdiv fast float 1.000000e+00, %6670
  %6672 = fsub fast float %6669, %6671
  %6673 = icmp ugt i32 %6661, 1
  br i1 %6673, label %6674, label %6690

; <label>:6674                                    ; preds = %6668
  br label %6675

; <label>:6675                                    ; preds = %6675, %6674
  %6676 = phi float [ %6685, %6675 ], [ %6672, %6674 ]
  %6677 = phi float [ %6686, %6675 ], [ %6669, %6674 ]
  %6678 = phi i32 [ %6687, %6675 ], [ 1, %6674 ]
  %6679 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6678
  %6680 = load float, float* %6679, align 4
  %6681 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6678
  %6682 = load float, float* %6681, align 4
  %6683 = fdiv fast float 1.000000e+00, %6682
  %6684 = fsub fast float %6680, %6683
  %6685 = call float @dx.op.binary.f32(i32 36, float %6676, float %6684)  ; FMin(a,b)
  %6686 = call float @dx.op.binary.f32(i32 35, float %6677, float %6680)  ; FMax(a,b)
  %6687 = add nuw i32 %6678, 1
  %6688 = icmp eq i32 %6687, %6661
  br i1 %6688, label %6689, label %6675

; <label>:6689                                    ; preds = %6675
  br label %6690

; <label>:6690                                    ; preds = %6689, %6668
  %6691 = phi float [ %6672, %6668 ], [ %6685, %6689 ]
  %6692 = phi float [ %6669, %6668 ], [ %6686, %6689 ]
  %6693 = fsub fast float %6692, %6691
  %6694 = fdiv fast float 1.000000e+00, %6693
  br label %6695

; <label>:6695                                    ; preds = %6690, %6665
  %6696 = phi float [ %6666, %6665 ], [ %6692, %6690 ]
  %6697 = phi float [ %6667, %6665 ], [ %6694, %6690 ]
  %6698 = fadd fast float %6399, %6696
  %6699 = fmul fast float %6698, %6697
  %6700 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  %6701 = fmul fast float %6700, 2.000000e+00
  %6702 = fsub fast float 1.000000e+00, %6701
  %6703 = fmul fast float %6537, %6537
  %6704 = fsub fast float %6538, %6703
  %6705 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6704)  ; FMax(a,b)
  %6706 = fdiv fast float 1.000000e+00, %6705
  %6707 = fmul fast float %6538, %6537
  %6708 = fsub fast float %6539, %6707
  %6709 = fsub fast float %6702, %6537
  %6710 = fmul fast float %6702, %6702
  %6711 = fsub fast float %6710, %6538
  %6712 = fmul fast float %6706, %6708
  %6713 = fmul fast float %6712, %6709
  %6714 = fsub fast float %6711, %6713
  %6715 = fmul fast float %6538, %6538
  %6716 = fsub fast float %6540, %6715
  %6717 = fmul fast float %6708, %6708
  %6718 = fmul fast float %6717, %6706
  %6719 = fsub fast float %6716, %6718
  %6720 = fdiv fast float %6714, %6719
  %6721 = fmul fast float %6720, %6708
  %6722 = fsub fast float %6709, %6721
  %6723 = fmul fast float %6722, %6706
  %6724 = fmul fast float %6723, %6537
  %6725 = fsub fast float 1.000000e+00, %6724
  %6726 = fmul fast float %6720, %6538
  %6727 = fsub fast float %6725, %6726
  %6728 = fmul fast float %6723, %6723
  %6729 = fmul fast float %6720, 4.000000e+00
  %6730 = fmul fast float %6729, %6727
  %6731 = fsub fast float %6728, %6730
  %6732 = call float @dx.op.unary.f32(i32 24, float %6731)  ; Sqrt(value)
  %6733 = fcmp fast oge float %6723, 0.000000e+00
  %6734 = fsub fast float -0.000000e+00, %6732
  %6735 = select i1 %6733, float %6734, float %6732
  %6736 = fsub fast float %6735, %6723
  %6737 = fdiv fast float %6736, %6720
  %6738 = fdiv fast float %6727, %6736
  %6739 = fmul fast float %6737, 5.000000e-01
  %6740 = fmul fast float %6738, 2.000000e+00
  %6741 = select i1 %6733, float %6739, float %6740
  %6742 = select i1 %6733, float %6740, float %6739
  %6743 = call float @dx.op.binary.f32(i32 35, float %6741, float %6742)  ; FMax(a,b)
  %6744 = call float @dx.op.binary.f32(i32 36, float %6741, float %6742)  ; FMin(a,b)
  %6745 = fcmp fast ogt float %6702, %6743
  %6746 = fsub fast float %6702, %6744
  %6747 = fsub fast float %6702, %6743
  %6748 = fsub fast float %6743, %6744
  %6749 = select i1 %6745, float %6747, float %6748
  %6750 = fmul float %6746, %6749
  %6751 = select i1 %6745, float %6744, float %6702
  %6752 = fcmp fast ogt float %6702, %6744
  %6753 = fmul fast float %6751, %6743
  %6754 = fadd fast float %6751, %6743
  %6755 = fmul fast float %6754, %6537
  %6756 = fadd fast float %6753, %6538
  %6757 = fsub fast float %6756, %6755
  %6758 = fdiv fast float %6757, %6750
  %6759 = select i1 %6752, float %6758, float 0.000000e+00
  %6760 = fsub fast float 1.000000e+00, %6759
  %6761 = select i1 %6745, float %6760, float %6759
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6522, 3
  %6764 = fmul fast float %6763, %6762
  %6765 = fsub fast float 1.000000e+00, %6764
  br label %6766

; <label>:6766                                    ; preds = %6695, %6407, %6372, %6368, %6334
  %6767 = phi float [ 1.000000e+00, %6334 ], [ %6765, %6695 ], [ 1.000000e+00, %6372 ], [ 1.000000e+00, %6407 ], [ 1.000000e+00, %6368 ]
  %6768 = fcmp fast ogt float %6364, 0.000000e+00
  br i1 %6768, label %6769, label %6931, !dx.controlflow.hints !120

; <label>:6769                                    ; preds = %6766
  %6770 = fadd fast float %6277, %6251
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6776 = call float @dx.op.binary.f32(i32 35, float %6770, float 0.000000e+00)  ; FMax(a,b)
  %6777 = fadd fast float %6776, 0x3F10000000000000
  %6778 = fcmp fast oeq float %6775, 0.000000e+00
  br i1 %6778, label %6779, label %6846

; <label>:6779                                    ; preds = %6769
  %6780 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6781 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6782 = fmul fast float %6781, %6266
  %6783 = fmul fast float %6780, %6267
  %6784 = fadd fast float %6782, 5.000000e-01
  %6785 = call float @dx.op.unary.f32(i32 27, float %6784)  ; Round_ni(value)
  %6786 = fadd fast float %6783, 5.000000e-01
  %6787 = call float @dx.op.unary.f32(i32 27, float %6786)  ; Round_ni(value)
  %6788 = fsub fast float %6784, %6785
  %6789 = fsub fast float %6786, %6787
  %6790 = fadd fast float %6785, -5.000000e-01
  %6791 = fadd fast float %6787, -5.000000e-01
  %6792 = fmul fast float %6788, 2.000000e+00
  %6793 = fsub fast float 3.000000e+00, %6792
  %6794 = fadd fast float %6792, 1.000000e+00
  %6795 = fsub fast float 2.000000e+00, %6788
  %6796 = bitcast float %6793 to i32
  %6797 = sub nsw i32 2129859010, %6796
  %6798 = bitcast i32 %6797 to float
  %6799 = fmul fast float %6798, %6795
  %6800 = fadd fast float %6799, -1.000000e+00
  %6801 = bitcast float %6794 to i32
  %6802 = sub nsw i32 2129859010, %6801
  %6803 = bitcast i32 %6802 to float
  %6804 = fmul fast float %6803, %6788
  %6805 = fadd fast float %6804, 1.000000e+00
  %6806 = fmul fast float %6789, 2.000000e+00
  %6807 = fsub fast float 3.000000e+00, %6806
  %6808 = fadd fast float %6806, 1.000000e+00
  %6809 = fsub fast float 2.000000e+00, %6789
  %6810 = bitcast float %6807 to i32
  %6811 = sub nsw i32 2129859010, %6810
  %6812 = bitcast i32 %6811 to float
  %6813 = fmul fast float %6812, %6809
  %6814 = fadd fast float %6813, -1.000000e+00
  %6815 = bitcast float %6808 to i32
  %6816 = sub nsw i32 2129859010, %6815
  %6817 = bitcast i32 %6816 to float
  %6818 = fmul fast float %6817, %6789
  %6819 = fadd fast float %6818, 1.000000e+00
  %6820 = fadd fast float %6800, %6790
  %6821 = fmul fast float %6820, %6772
  %6822 = fadd fast float %6814, %6791
  %6823 = fmul fast float %6822, %6773
  %6824 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6821, float %6823, float undef, float undef, i32 0, i32 0, i32 undef, float %6777)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6825 = extractvalue %dx.types.ResRet.f32 %6824, 0
  %6826 = fmul fast float %6825, %6793
  %6827 = fadd fast float %6805, %6790
  %6828 = fmul fast float %6827, %6772
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6828, float %6823, float undef, float undef, i32 0, i32 0, i32 undef, float %6777)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = fmul fast float %6830, %6794
  %6832 = fadd fast float %6819, %6791
  %6833 = fmul fast float %6832, %6773
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6821, float %6833, float undef, float undef, i32 0, i32 0, i32 undef, float %6777)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = fmul fast float %6835, %6793
  %6837 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6828, float %6833, float undef, float undef, i32 0, i32 0, i32 undef, float %6777)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6838 = extractvalue %dx.types.ResRet.f32 %6837, 0
  %6839 = fmul fast float %6838, %6794
  %6840 = fadd fast float %6839, %6836
  %6841 = fmul fast float %6840, %6808
  %6842 = fadd fast float %6831, %6826
  %6843 = fmul fast float %6842, %6807
  %6844 = fadd fast float %6843, %6841
  %6845 = fmul fast float %6844, 6.250000e-02
  br label %6931

; <label>:6846                                    ; preds = %6769
  %6847 = fmul fast float %240, 0x401921FB60000000
  %6848 = call float @dx.op.unary.f32(i32 13, float %6847)  ; Sin(value)
  %6849 = call float @dx.op.unary.f32(i32 12, float %6847)  ; Cos(value)
  %6850 = fsub fast float -0.000000e+00, %6848
  br label %6851

; <label>:6851                                    ; preds = %6900, %6846
  %6852 = phi float [ 0.000000e+00, %6846 ], [ %6895, %6900 ]
  %6853 = phi float [ 0.000000e+00, %6846 ], [ %6897, %6900 ]
  %6854 = phi i32 [ 0, %6846 ], [ %6901, %6900 ]
  %6855 = mul i32 %6854, 2
  %6856 = add i32 0, %6855
  %6857 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6856
  %6858 = load float, float* %6857, align 4
  %6859 = mul i32 %6854, 2
  %6860 = add i32 1, %6859
  %6861 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6860
  %6862 = load float, float* %6861, align 4
  %6863 = fmul fast float %6858, %6849
  %6864 = call float @dx.op.tertiary.f32(i32 46, float %6862, float %6850, float %6863)  ; FMad(a,b,c)
  %6865 = fmul fast float %6858, %6848
  %6866 = call float @dx.op.tertiary.f32(i32 46, float %6862, float %6849, float %6865)  ; FMad(a,b,c)
  %6867 = fmul fast float %6864, %6775
  %6868 = fmul fast float %6866, %6775
  %6869 = fadd fast float %6867, %6266
  %6870 = fadd fast float %6868, %6267
  %6871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6869, float %6870, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.ResRet.f32 %6871, 3
  %6876 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6872, float* %6876, align 4
  %6877 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6873, float* %6877, align 4
  %6878 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6874, float* %6878, align 4
  %6879 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6875, float* %6879, align 4
  %6880 = fsub fast float %6872, %6777
  %6881 = fcmp fast olt float %6880, 0.000000e+00
  %6882 = select i1 %6881, float 0.000000e+00, float 1.000000e+00
  %6883 = fadd fast float %6882, %6852
  %6884 = fmul fast float %6882, %6880
  %6885 = fadd fast float %6884, %6853
  br label %6886

; <label>:6886                                    ; preds = %6886, %6851
  %6887 = phi i32 [ 1, %6851 ], [ %6898, %6886 ]
  %6888 = phi float [ %6885, %6851 ], [ %6897, %6886 ]
  %6889 = phi float [ %6883, %6851 ], [ %6895, %6886 ]
  %6890 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6887
  %6891 = load float, float* %6890, align 4, !tbaa !121, !noalias !111
  %6892 = fsub fast float %6891, %6777
  %6893 = fcmp fast olt float %6892, 0.000000e+00
  %6894 = select i1 %6893, float 0.000000e+00, float 1.000000e+00
  %6895 = fadd fast float %6894, %6889
  %6896 = fmul fast float %6894, %6892
  %6897 = fadd fast float %6896, %6888
  %6898 = add nuw nsw i32 %6887, 1
  %6899 = icmp eq i32 %6898, 4
  br i1 %6899, label %6900, label %6886, !llvm.loop !123

; <label>:6900                                    ; preds = %6886
  %6901 = add nuw nsw i32 %6854, 1
  %6902 = icmp eq i32 %6901, 8
  br i1 %6902, label %6903, label %6851, !llvm.loop !124

; <label>:6903                                    ; preds = %6900
  %6904 = fdiv fast float 1.000000e+00, %6895
  %6905 = fmul fast float %6904, %6897
  %6906 = fdiv fast float 1.000000e+00, %6777
  %6907 = fmul fast float %6905, %6906
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = call float @dx.op.binary.f32(i32 35, float %6908, float 0.000000e+00)  ; FMax(a,b)
  %6910 = fmul fast float %6895, 3.125000e-02
  %6911 = call float @dx.op.unary.f32(i32 7, float %6910)  ; Saturate(value)
  %6912 = fmul fast float %6911, 2.000000e+00
  %6913 = fadd fast float %6912, -1.000000e+00
  %6914 = fcmp fast ogt float %6913, 0.000000e+00
  %6915 = fcmp fast olt float %6913, 0.000000e+00
  %6916 = zext i1 %6914 to i32
  %6917 = zext i1 %6915 to i32
  %6918 = sub nsw i32 %6916, %6917
  %6919 = sitofp i32 %6918 to float
  %6920 = fmul fast float %6919, %6913
  %6921 = fsub fast float 1.000000e+00, %6920
  %6922 = fmul fast float %6921, %6921
  %6923 = fmul fast float %6922, %6921
  %6924 = fsub fast float %6921, %6923
  %6925 = fmul fast float %6924, %6909
  %6926 = fsub fast float 1.000000e+00, %6923
  %6927 = fsub fast float %6926, %6925
  %6928 = fmul fast float %6919, 5.000000e-01
  %6929 = fmul fast float %6928, %6927
  %6930 = fsub fast float 5.000000e-01, %6929
  br label %6931

; <label>:6931                                    ; preds = %6903, %6779, %6766
  %6932 = phi float [ 1.000000e+00, %6766 ], [ %6845, %6779 ], [ %6930, %6903 ]
  %6933 = fcmp fast ogt float %6362, 0.000000e+00
  br i1 %6933, label %6934, label %7098, !dx.controlflow.hints !125

; <label>:6934                                    ; preds = %6931
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6937 = fadd fast float %6936, %6251
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 1
  %6943 = call float @dx.op.binary.f32(i32 35, float %6937, float 0.000000e+00)  ; FMax(a,b)
  %6944 = fadd fast float %6943, 0x3F10000000000000
  %6945 = fcmp fast oeq float %6942, 0.000000e+00
  br i1 %6945, label %6946, label %7013

; <label>:6946                                    ; preds = %6934
  %6947 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6948 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6949 = fmul fast float %6948, %6258
  %6950 = fmul fast float %6947, %6259
  %6951 = fadd fast float %6949, 5.000000e-01
  %6952 = call float @dx.op.unary.f32(i32 27, float %6951)  ; Round_ni(value)
  %6953 = fadd fast float %6950, 5.000000e-01
  %6954 = call float @dx.op.unary.f32(i32 27, float %6953)  ; Round_ni(value)
  %6955 = fsub fast float %6951, %6952
  %6956 = fsub fast float %6953, %6954
  %6957 = fadd fast float %6952, -5.000000e-01
  %6958 = fadd fast float %6954, -5.000000e-01
  %6959 = fmul fast float %6955, 2.000000e+00
  %6960 = fsub fast float 3.000000e+00, %6959
  %6961 = fadd fast float %6959, 1.000000e+00
  %6962 = fsub fast float 2.000000e+00, %6955
  %6963 = bitcast float %6960 to i32
  %6964 = sub nsw i32 2129859010, %6963
  %6965 = bitcast i32 %6964 to float
  %6966 = fmul fast float %6965, %6962
  %6967 = fadd fast float %6966, -1.000000e+00
  %6968 = bitcast float %6961 to i32
  %6969 = sub nsw i32 2129859010, %6968
  %6970 = bitcast i32 %6969 to float
  %6971 = fmul fast float %6970, %6955
  %6972 = fadd fast float %6971, 1.000000e+00
  %6973 = fmul fast float %6956, 2.000000e+00
  %6974 = fsub fast float 3.000000e+00, %6973
  %6975 = fadd fast float %6973, 1.000000e+00
  %6976 = fsub fast float 2.000000e+00, %6956
  %6977 = bitcast float %6974 to i32
  %6978 = sub nsw i32 2129859010, %6977
  %6979 = bitcast i32 %6978 to float
  %6980 = fmul fast float %6979, %6976
  %6981 = fadd fast float %6980, -1.000000e+00
  %6982 = bitcast float %6975 to i32
  %6983 = sub nsw i32 2129859010, %6982
  %6984 = bitcast i32 %6983 to float
  %6985 = fmul fast float %6984, %6956
  %6986 = fadd fast float %6985, 1.000000e+00
  %6987 = fadd fast float %6967, %6957
  %6988 = fmul fast float %6987, %6939
  %6989 = fadd fast float %6981, %6958
  %6990 = fmul fast float %6989, %6940
  %6991 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6988, float %6990, float undef, float undef, i32 0, i32 0, i32 undef, float %6944)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = fmul fast float %6992, %6960
  %6994 = fadd fast float %6972, %6957
  %6995 = fmul fast float %6994, %6939
  %6996 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6995, float %6990, float undef, float undef, i32 0, i32 0, i32 undef, float %6944)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6997 = extractvalue %dx.types.ResRet.f32 %6996, 0
  %6998 = fmul fast float %6997, %6961
  %6999 = fadd fast float %6986, %6958
  %7000 = fmul fast float %6999, %6940
  %7001 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6988, float %7000, float undef, float undef, i32 0, i32 0, i32 undef, float %6944)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7002 = extractvalue %dx.types.ResRet.f32 %7001, 0
  %7003 = fmul fast float %7002, %6960
  %7004 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6995, float %7000, float undef, float undef, i32 0, i32 0, i32 undef, float %6944)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7005 = extractvalue %dx.types.ResRet.f32 %7004, 0
  %7006 = fmul fast float %7005, %6961
  %7007 = fadd fast float %7006, %7003
  %7008 = fmul fast float %7007, %6975
  %7009 = fadd fast float %6998, %6993
  %7010 = fmul fast float %7009, %6974
  %7011 = fadd fast float %7010, %7008
  %7012 = fmul fast float %7011, 6.250000e-02
  br label %7098

; <label>:7013                                    ; preds = %6934
  %7014 = fmul fast float %240, 0x401921FB60000000
  %7015 = call float @dx.op.unary.f32(i32 13, float %7014)  ; Sin(value)
  %7016 = call float @dx.op.unary.f32(i32 12, float %7014)  ; Cos(value)
  %7017 = fsub fast float -0.000000e+00, %7015
  br label %7018

; <label>:7018                                    ; preds = %7067, %7013
  %7019 = phi float [ 0.000000e+00, %7013 ], [ %7062, %7067 ]
  %7020 = phi float [ 0.000000e+00, %7013 ], [ %7064, %7067 ]
  %7021 = phi i32 [ 0, %7013 ], [ %7068, %7067 ]
  %7022 = mul i32 %7021, 2
  %7023 = add i32 0, %7022
  %7024 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7023
  %7025 = load float, float* %7024, align 4
  %7026 = mul i32 %7021, 2
  %7027 = add i32 1, %7026
  %7028 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7027
  %7029 = load float, float* %7028, align 4
  %7030 = fmul fast float %7025, %7016
  %7031 = call float @dx.op.tertiary.f32(i32 46, float %7029, float %7017, float %7030)  ; FMad(a,b,c)
  %7032 = fmul fast float %7025, %7015
  %7033 = call float @dx.op.tertiary.f32(i32 46, float %7029, float %7016, float %7032)  ; FMad(a,b,c)
  %7034 = fmul fast float %7031, %6942
  %7035 = fmul fast float %7033, %6942
  %7036 = fadd fast float %7034, %6258
  %7037 = fadd fast float %7035, %6259
  %7038 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7036, float %7037, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7039 = extractvalue %dx.types.ResRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.ResRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.ResRet.f32 %7038, 2
  %7042 = extractvalue %dx.types.ResRet.f32 %7038, 3
  %7043 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %7039, float* %7043, align 4
  %7044 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %7040, float* %7044, align 4
  %7045 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %7041, float* %7045, align 4
  %7046 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %7042, float* %7046, align 4
  %7047 = fsub fast float %7039, %6944
  %7048 = fcmp fast olt float %7047, 0.000000e+00
  %7049 = select i1 %7048, float 0.000000e+00, float 1.000000e+00
  %7050 = fadd fast float %7049, %7019
  %7051 = fmul fast float %7049, %7047
  %7052 = fadd fast float %7051, %7020
  br label %7053

; <label>:7053                                    ; preds = %7053, %7018
  %7054 = phi i32 [ 1, %7018 ], [ %7065, %7053 ]
  %7055 = phi float [ %7052, %7018 ], [ %7064, %7053 ]
  %7056 = phi float [ %7050, %7018 ], [ %7062, %7053 ]
  %7057 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %7054
  %7058 = load float, float* %7057, align 4, !tbaa !121, !noalias !111
  %7059 = fsub fast float %7058, %6944
  %7060 = fcmp fast olt float %7059, 0.000000e+00
  %7061 = select i1 %7060, float 0.000000e+00, float 1.000000e+00
  %7062 = fadd fast float %7061, %7056
  %7063 = fmul fast float %7061, %7059
  %7064 = fadd fast float %7063, %7055
  %7065 = add nuw nsw i32 %7054, 1
  %7066 = icmp eq i32 %7065, 4
  br i1 %7066, label %7067, label %7053, !llvm.loop !123

; <label>:7067                                    ; preds = %7053
  %7068 = add nuw nsw i32 %7021, 1
  %7069 = icmp eq i32 %7068, 8
  br i1 %7069, label %7070, label %7018, !llvm.loop !124

; <label>:7070                                    ; preds = %7067
  %7071 = fdiv fast float 1.000000e+00, %7062
  %7072 = fmul fast float %7071, %7064
  %7073 = fdiv fast float 1.000000e+00, %6944
  %7074 = fmul fast float %7072, %7073
  %7075 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7076 = call float @dx.op.binary.f32(i32 35, float %7075, float 0.000000e+00)  ; FMax(a,b)
  %7077 = fmul fast float %7062, 3.125000e-02
  %7078 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7079 = fmul fast float %7078, 2.000000e+00
  %7080 = fadd fast float %7079, -1.000000e+00
  %7081 = fcmp fast ogt float %7080, 0.000000e+00
  %7082 = fcmp fast olt float %7080, 0.000000e+00
  %7083 = zext i1 %7081 to i32
  %7084 = zext i1 %7082 to i32
  %7085 = sub nsw i32 %7083, %7084
  %7086 = sitofp i32 %7085 to float
  %7087 = fmul fast float %7086, %7080
  %7088 = fsub fast float 1.000000e+00, %7087
  %7089 = fmul fast float %7088, %7088
  %7090 = fmul fast float %7089, %7088
  %7091 = fsub fast float %7088, %7090
  %7092 = fmul fast float %7091, %7076
  %7093 = fsub fast float 1.000000e+00, %7090
  %7094 = fsub fast float %7093, %7092
  %7095 = fmul fast float %7086, 5.000000e-01
  %7096 = fmul fast float %7095, %7094
  %7097 = fsub fast float 5.000000e-01, %7096
  br label %7098

; <label>:7098                                    ; preds = %7070, %6946, %6931
  %7099 = phi float [ 1.000000e+00, %6931 ], [ %7012, %6946 ], [ %7097, %7070 ]
  %7100 = fcmp fast ogt float %6361, 0.000000e+00
  br i1 %7100, label %7101, label %7265, !dx.controlflow.hints !126

; <label>:7101                                    ; preds = %7098
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 0
  %7104 = fadd fast float %7103, %6251
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7105, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = call float @dx.op.binary.f32(i32 35, float %7104, float 0.000000e+00)  ; FMax(a,b)
  %7111 = fadd fast float %7110, 0x3F10000000000000
  %7112 = fcmp fast oeq float %7109, 0.000000e+00
  br i1 %7112, label %7113, label %7180

; <label>:7113                                    ; preds = %7101
  %7114 = extractvalue %dx.types.CBufRet.f32 %7105, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7105, 0
  %7116 = fmul fast float %7115, %6243
  %7117 = fmul fast float %7114, %6247
  %7118 = fadd fast float %7116, 5.000000e-01
  %7119 = call float @dx.op.unary.f32(i32 27, float %7118)  ; Round_ni(value)
  %7120 = fadd fast float %7117, 5.000000e-01
  %7121 = call float @dx.op.unary.f32(i32 27, float %7120)  ; Round_ni(value)
  %7122 = fsub fast float %7118, %7119
  %7123 = fsub fast float %7120, %7121
  %7124 = fadd fast float %7119, -5.000000e-01
  %7125 = fadd fast float %7121, -5.000000e-01
  %7126 = fmul fast float %7122, 2.000000e+00
  %7127 = fsub fast float 3.000000e+00, %7126
  %7128 = fadd fast float %7126, 1.000000e+00
  %7129 = fsub fast float 2.000000e+00, %7122
  %7130 = bitcast float %7127 to i32
  %7131 = sub nsw i32 2129859010, %7130
  %7132 = bitcast i32 %7131 to float
  %7133 = fmul fast float %7132, %7129
  %7134 = fadd fast float %7133, -1.000000e+00
  %7135 = bitcast float %7128 to i32
  %7136 = sub nsw i32 2129859010, %7135
  %7137 = bitcast i32 %7136 to float
  %7138 = fmul fast float %7137, %7122
  %7139 = fadd fast float %7138, 1.000000e+00
  %7140 = fmul fast float %7123, 2.000000e+00
  %7141 = fsub fast float 3.000000e+00, %7140
  %7142 = fadd fast float %7140, 1.000000e+00
  %7143 = fsub fast float 2.000000e+00, %7123
  %7144 = bitcast float %7141 to i32
  %7145 = sub nsw i32 2129859010, %7144
  %7146 = bitcast i32 %7145 to float
  %7147 = fmul fast float %7146, %7143
  %7148 = fadd fast float %7147, -1.000000e+00
  %7149 = bitcast float %7142 to i32
  %7150 = sub nsw i32 2129859010, %7149
  %7151 = bitcast i32 %7150 to float
  %7152 = fmul fast float %7151, %7123
  %7153 = fadd fast float %7152, 1.000000e+00
  %7154 = fadd fast float %7134, %7124
  %7155 = fmul fast float %7154, %7106
  %7156 = fadd fast float %7148, %7125
  %7157 = fmul fast float %7156, %7107
  %7158 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7155, float %7157, float undef, float undef, i32 0, i32 0, i32 undef, float %7111)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = fmul fast float %7159, %7127
  %7161 = fadd fast float %7139, %7124
  %7162 = fmul fast float %7161, %7106
  %7163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7162, float %7157, float undef, float undef, i32 0, i32 0, i32 undef, float %7111)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7164 = extractvalue %dx.types.ResRet.f32 %7163, 0
  %7165 = fmul fast float %7164, %7128
  %7166 = fadd fast float %7153, %7125
  %7167 = fmul fast float %7166, %7107
  %7168 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7155, float %7167, float undef, float undef, i32 0, i32 0, i32 undef, float %7111)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7169 = extractvalue %dx.types.ResRet.f32 %7168, 0
  %7170 = fmul fast float %7169, %7127
  %7171 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7162, float %7167, float undef, float undef, i32 0, i32 0, i32 undef, float %7111)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7172 = extractvalue %dx.types.ResRet.f32 %7171, 0
  %7173 = fmul fast float %7172, %7128
  %7174 = fadd fast float %7173, %7170
  %7175 = fmul fast float %7174, %7142
  %7176 = fadd fast float %7165, %7160
  %7177 = fmul fast float %7176, %7141
  %7178 = fadd fast float %7177, %7175
  %7179 = fmul fast float %7178, 6.250000e-02
  br label %7265

; <label>:7180                                    ; preds = %7101
  %7181 = fmul fast float %240, 0x401921FB60000000
  %7182 = call float @dx.op.unary.f32(i32 13, float %7181)  ; Sin(value)
  %7183 = call float @dx.op.unary.f32(i32 12, float %7181)  ; Cos(value)
  %7184 = fsub fast float -0.000000e+00, %7182
  br label %7185

; <label>:7185                                    ; preds = %7234, %7180
  %7186 = phi float [ 0.000000e+00, %7180 ], [ %7229, %7234 ]
  %7187 = phi float [ 0.000000e+00, %7180 ], [ %7231, %7234 ]
  %7188 = phi i32 [ 0, %7180 ], [ %7235, %7234 ]
  %7189 = mul i32 %7188, 2
  %7190 = add i32 0, %7189
  %7191 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7190
  %7192 = load float, float* %7191, align 4
  %7193 = mul i32 %7188, 2
  %7194 = add i32 1, %7193
  %7195 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7194
  %7196 = load float, float* %7195, align 4
  %7197 = fmul fast float %7192, %7183
  %7198 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7184, float %7197)  ; FMad(a,b,c)
  %7199 = fmul fast float %7192, %7182
  %7200 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7183, float %7199)  ; FMad(a,b,c)
  %7201 = fmul fast float %7198, %7109
  %7202 = fmul fast float %7200, %7109
  %7203 = fadd fast float %7201, %6243
  %7204 = fadd fast float %7202, %6247
  %7205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7203, float %7204, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = extractvalue %dx.types.ResRet.f32 %7205, 3
  %7210 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %7206, float* %7210, align 4
  %7211 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %7207, float* %7211, align 4
  %7212 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %7208, float* %7212, align 4
  %7213 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %7209, float* %7213, align 4
  %7214 = fsub fast float %7206, %7111
  %7215 = fcmp fast olt float %7214, 0.000000e+00
  %7216 = select i1 %7215, float 0.000000e+00, float 1.000000e+00
  %7217 = fadd fast float %7216, %7186
  %7218 = fmul fast float %7216, %7214
  %7219 = fadd fast float %7218, %7187
  br label %7220

; <label>:7220                                    ; preds = %7220, %7185
  %7221 = phi i32 [ 1, %7185 ], [ %7232, %7220 ]
  %7222 = phi float [ %7219, %7185 ], [ %7231, %7220 ]
  %7223 = phi float [ %7217, %7185 ], [ %7229, %7220 ]
  %7224 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %7221
  %7225 = load float, float* %7224, align 4, !tbaa !121, !noalias !111
  %7226 = fsub fast float %7225, %7111
  %7227 = fcmp fast olt float %7226, 0.000000e+00
  %7228 = select i1 %7227, float 0.000000e+00, float 1.000000e+00
  %7229 = fadd fast float %7228, %7223
  %7230 = fmul fast float %7228, %7226
  %7231 = fadd fast float %7230, %7222
  %7232 = add nuw nsw i32 %7221, 1
  %7233 = icmp eq i32 %7232, 4
  br i1 %7233, label %7234, label %7220, !llvm.loop !123

; <label>:7234                                    ; preds = %7220
  %7235 = add nuw nsw i32 %7188, 1
  %7236 = icmp eq i32 %7235, 8
  br i1 %7236, label %7237, label %7185, !llvm.loop !124

; <label>:7237                                    ; preds = %7234
  %7238 = fdiv fast float 1.000000e+00, %7229
  %7239 = fmul fast float %7238, %7231
  %7240 = fdiv fast float 1.000000e+00, %7111
  %7241 = fmul fast float %7239, %7240
  %7242 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7243 = call float @dx.op.binary.f32(i32 35, float %7242, float 0.000000e+00)  ; FMax(a,b)
  %7244 = fmul fast float %7229, 3.125000e-02
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = fmul fast float %7245, 2.000000e+00
  %7247 = fadd fast float %7246, -1.000000e+00
  %7248 = fcmp fast ogt float %7247, 0.000000e+00
  %7249 = fcmp fast olt float %7247, 0.000000e+00
  %7250 = zext i1 %7248 to i32
  %7251 = zext i1 %7249 to i32
  %7252 = sub nsw i32 %7250, %7251
  %7253 = sitofp i32 %7252 to float
  %7254 = fmul fast float %7253, %7247
  %7255 = fsub fast float 1.000000e+00, %7254
  %7256 = fmul fast float %7255, %7255
  %7257 = fmul fast float %7256, %7255
  %7258 = fsub fast float %7255, %7257
  %7259 = fmul fast float %7258, %7243
  %7260 = fsub fast float 1.000000e+00, %7257
  %7261 = fsub fast float %7260, %7259
  %7262 = fmul fast float %7253, 5.000000e-01
  %7263 = fmul fast float %7262, %7261
  %7264 = fsub fast float 5.000000e-01, %7263
  br label %7265

; <label>:7265                                    ; preds = %7237, %7113, %7098
  %7266 = phi float [ 1.000000e+00, %7098 ], [ %7179, %7113 ], [ %7264, %7237 ]
  %7267 = fsub fast float %6932, %6767
  %7268 = fmul fast float %7267, %6305
  %7269 = fadd fast float %7268, %6767
  %7270 = fsub fast float %7099, %7269
  %7271 = fmul fast float %7270, %6335
  %7272 = fadd fast float %7271, %7269
  %7273 = fsub fast float %7266, %7272
  %7274 = fmul fast float %7273, %6361
  %7275 = fadd fast float %7274, %7272
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7278 = fcmp fast ogt float %7277, 0.000000e+00
  br i1 %7278, label %7279, label %7319, !dx.controlflow.hints !127

; <label>:7279                                    ; preds = %7265
  %7280 = fcmp fast ugt float %7277, 0.000000e+00
  br i1 %7280, label %7281, label %7316

; <label>:7281                                    ; preds = %7279
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7286 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7291 = extractvalue %dx.types.CBufRet.f32 %7287, 3
  %7292 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7294, 2
  %7298 = fadd fast float %7295, %6220
  %7299 = fadd fast float %7296, %6221
  %7300 = fadd fast float %7297, %6222
  %7301 = fmul fast float %7298, %7283
  %7302 = call float @dx.op.tertiary.f32(i32 46, float %7284, float %7299, float %7301)  ; FMad(a,b,c)
  %7303 = call float @dx.op.tertiary.f32(i32 46, float %7285, float %7300, float %7302)  ; FMad(a,b,c)
  %7304 = fadd fast float %7303, %7286
  %7305 = fmul fast float %7298, %7288
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7289, float %7299, float %7305)  ; FMad(a,b,c)
  %7307 = call float @dx.op.tertiary.f32(i32 46, float %7290, float %7300, float %7306)  ; FMad(a,b,c)
  %7308 = fadd fast float %7307, %7291
  %7309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7304, float %7308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = fmul fast float %7310, %7293
  %7312 = fadd fast float %7311, %7292
  %7313 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  %7314 = fmul fast float %7313, %7277
  %7315 = fsub fast float 1.000000e+00, %7314
  br label %7316

; <label>:7316                                    ; preds = %7281, %7279
  %7317 = phi float [ %7315, %7281 ], [ 1.000000e+00, %7279 ]
  %7318 = fmul fast float %7317, %7275
  br label %7319

; <label>:7319                                    ; preds = %7316, %7265, %6200
  %7320 = phi float [ 1.000000e+00, %6200 ], [ %7318, %7316 ], [ %7275, %7265 ]
  %7321 = call float @dx.op.binary.f32(i32 36, float %7320, float %7320)  ; FMin(a,b)
  %7322 = call float @dx.op.binary.f32(i32 36, float %7320, float %7321)  ; FMin(a,b)
  %7323 = fcmp fast ogt float %7322, 0.000000e+00
  br i1 %7323, label %7324, label %7489, !dx.controlflow.hints !128

; <label>:7324                                    ; preds = %7319
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7329 = extractvalue %dx.types.CBufRet.f32 %7325, 3
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7334 = extractvalue %dx.types.CBufRet.f32 %7330, 3
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.CBufRet.f32 %7335, 2
  %7339 = extractvalue %dx.types.CBufRet.f32 %7335, 3
  %7340 = fmul fast float %7326, %6220
  %7341 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %7327, float %7340)  ; FMad(a,b,c)
  %7342 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %7328, float %7341)  ; FMad(a,b,c)
  %7343 = fadd fast float %7342, %7329
  %7344 = fmul fast float %7331, %6220
  %7345 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %7332, float %7344)  ; FMad(a,b,c)
  %7346 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %7333, float %7345)  ; FMad(a,b,c)
  %7347 = fadd fast float %7346, %7334
  %7348 = fmul fast float %7336, %6220
  %7349 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %7337, float %7348)  ; FMad(a,b,c)
  %7350 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %7338, float %7349)  ; FMad(a,b,c)
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7355 = fmul fast float %7354, %7343
  %7356 = fmul fast float %7354, %7347
  %7357 = fadd fast float %7355, %7352
  %7358 = fadd fast float %7356, %7353
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.CBufRet.f32 %7359, 1
  %7362 = fsub fast float %7357, %7360
  %7363 = fsub fast float %7358, %7361
  %7364 = fcmp fast olt float %7362, 0.000000e+00
  %7365 = fcmp fast olt float %7363, 0.000000e+00
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7366, 3
  %7371 = select i1 %7364, float %7367, float %7369
  %7372 = select i1 %7365, float %7368, float %7370
  %7373 = fmul fast float %7371, %7362
  %7374 = fmul fast float %7372, %7363
  %7375 = call float @dx.op.unary.f32(i32 6, float %7373)  ; FAbs(value)
  %7376 = call float @dx.op.unary.f32(i32 6, float %7374)  ; FAbs(value)
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = call float @dx.op.binary.f32(i32 35, float %7375, float %7376)  ; FMax(a,b)
  %7380 = fsub fast float %7378, %7379
  %7381 = call float @dx.op.unary.f32(i32 7, float %7380)  ; Saturate(value)
  %7382 = fcmp fast ogt float %7381, 0.000000e+00
  br i1 %7382, label %7383, label %7424, !dx.controlflow.hints !129

; <label>:7383                                    ; preds = %7324
  %7384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7357, float %7358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 1
  %7386 = fcmp fast ogt float %7385, 0.000000e+00
  br i1 %7386, label %7387, label %7419

; <label>:7387                                    ; preds = %7383
  %7388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7357, float %7358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.ResRet.f32 %7388, 3
  %7393 = fsub fast float 1.000000e+00, %7339
  %7394 = fsub fast float %7393, %7350
  %7395 = fmul fast float %7394, 0x400921FB60000000
  %7396 = fadd fast float %7395, 0x3FF921FB60000000
  %7397 = call float @dx.op.unary.f32(i32 13, float %7396)  ; Sin(value)
  %7398 = fadd fast float %7397, -1.000000e+00
  %7399 = fmul fast float %7398, 0x3FD45F3060000000
  %7400 = fmul fast float %7394, 0x401921FB60000000
  %7401 = fadd fast float %7400, 0x400921FB60000000
  %7402 = call float @dx.op.unary.f32(i32 13, float %7401)  ; Sin(value)
  %7403 = fadd fast float %7402, 0x3E7777A5C0000000
  %7404 = fmul fast float %7403, 0x3FC45F3060000000
  %7405 = fmul fast float %7394, 0x4022D97C80000000
  %7406 = fadd fast float %7405, 0x4012D97C80000000
  %7407 = call float @dx.op.unary.f32(i32 13, float %7406)  ; Sin(value)
  %7408 = fadd fast float %7407, 1.000000e+00
  %7409 = fmul fast float %7408, 0x3FBB2995E0000000
  %7410 = fmul fast float %7394, 0x402921FB60000000
  %7411 = fadd fast float %7410, 0x401921FB60000000
  %7412 = call float @dx.op.unary.f32(i32 13, float %7411)  ; Sin(value)
  %7413 = fadd fast float %7412, 0xBE8777A5C0000000
  %7414 = fmul fast float %7413, 0x3FB45F3060000000
  %7415 = call float @dx.op.dot4.f32(i32 56, float %7389, float %7390, float %7391, float %7392, float %7399, float %7404, float %7409, float %7414)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7416 = fmul fast float %7415, 0xBFF7154760000000
  %7417 = call float @dx.op.unary.f32(i32 21, float %7416)  ; Exp(value)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  br label %7419

; <label>:7419                                    ; preds = %7387, %7383
  %7420 = phi float [ %7418, %7387 ], [ 1.000000e+00, %7383 ]
  %7421 = fadd fast float %7420, -1.000000e+00
  %7422 = fmul fast float %7421, %7381
  %7423 = fadd fast float %7422, 1.000000e+00
  br label %7424

; <label>:7424                                    ; preds = %7419, %7324
  %7425 = phi float [ %7423, %7419 ], [ 1.000000e+00, %7324 ]
  %7426 = fmul fast float %7425, %7320
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.CBufRet.f32 %7427, 2
  %7431 = fadd fast float %7428, %167
  %7432 = fadd fast float %7429, %168
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7439 = fsub fast float -0.000000e+00, %7431
  %7440 = fsub fast float -0.000000e+00, %7432
  %7441 = fsub fast float %5444, %7430
  %7442 = fadd fast float %7441, %7434
  %7443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7439, float %7440, float %7442)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7436, float %7437, float %7438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7445 = fdiv fast float 1.000000e+00, %7444
  %7446 = fmul fast float %7445, %7443
  %7447 = fmul fast float %7436, %7446
  %7448 = fmul fast float %7437, %7446
  %7449 = fadd fast float %7447, %7431
  %7450 = fadd fast float %7448, %7432
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = fsub fast float %7449, %7452
  %7455 = fsub fast float %7450, %7453
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 3
  %7459 = fmul fast float %7454, %7457
  %7460 = fmul fast float %7455, %7458
  %7461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.i32 %7461, 3
  %7463 = icmp eq i32 %7462, 0
  br i1 %7463, label %7469, label %7464

; <label>:7464                                    ; preds = %7424
  %7465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7459, float %7460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7466 = extractvalue %dx.types.ResRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.ResRet.f32 %7465, 1
  %7468 = extractvalue %dx.types.ResRet.f32 %7465, 2
  br label %7474

; <label>:7469                                    ; preds = %7424
  %7470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7459, float %7460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7470, 2
  br label %7474

; <label>:7474                                    ; preds = %7469, %7464
  %7475 = phi float [ %7466, %7464 ], [ %7471, %7469 ]
  %7476 = phi float [ %7467, %7464 ], [ %7472, %7469 ]
  %7477 = phi float [ %7468, %7464 ], [ %7473, %7469 ]
  %7478 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7479 = fmul fast float %7478, %7475
  %7480 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7481 = fsub fast float %7446, %7480
  %7482 = fsub fast float %7481, %7479
  %7483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7482)  ; FMax(a,b)
  %7484 = fmul fast float %7483, %7476
  %7485 = call float @dx.op.binary.f32(i32 36, float %7477, float %7484)  ; FMin(a,b)
  %7486 = fmul fast float %7485, 0xBFF7154760000000
  %7487 = call float @dx.op.unary.f32(i32 21, float %7486)  ; Exp(value)
  %7488 = fmul fast float %7426, %7487
  br label %7489

; <label>:7489                                    ; preds = %7474, %7319
  %7490 = phi float [ %7488, %7474 ], [ %7320, %7319 ]
  %7491 = call float @dx.op.binary.f32(i32 36, float %7490, float %7490)  ; FMin(a,b)
  %7492 = call float @dx.op.binary.f32(i32 36, float %7490, float %7491)  ; FMin(a,b)
  %7493 = fcmp fast ogt float %7492, 0.000000e+00
  br i1 %7493, label %7494, label %7754, !dx.controlflow.hints !130

; <label>:7494                                    ; preds = %7489
  %7495 = fmul fast float %7490, %6212
  %7496 = fmul fast float %7490, %6213
  %7497 = fmul fast float %7490, %6214
  %7498 = fsub fast float %169, %5232
  %7499 = fcmp fast ogt float %7498, 0.000000e+00
  %7500 = fmul fast float %6201, 5.120000e+02
  %7501 = fmul fast float %6202, 5.120000e+02
  %7502 = fmul fast float %6203, 5.120000e+02
  %7503 = fadd fast float %7502, %169
  %7504 = fsub fast float %5232, %7503
  %7505 = fmul fast float %7504, 2.000000e+00
  %7506 = fadd fast float %7505, %7503
  %7507 = select i1 %7499, float %7506, float %7503
  %7508 = fsub fast float %7507, %169
  %7509 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7508, float %7500, float %7501, float %7508)  ; Dot3(ax,ay,az,bx,by,bz)
  %7510 = call float @dx.op.unary.f32(i32 25, float %7509)  ; Rsqrt(value)
  %7511 = fmul fast float %7510, %7500
  %7512 = fmul fast float %7510, %7501
  %7513 = fmul fast float %7510, %7508
  %7514 = fsub fast float %5232, %169
  %7515 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7511, float %7512, float %7513)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = fdiv fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7515
  %7519 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7498, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7520 = fcmp fast ogt float %7519, 0.000000e+00
  %7521 = fcmp fast olt float %7519, 0.000000e+00
  %7522 = zext i1 %7520 to i32
  %7523 = zext i1 %7521 to i32
  %7524 = sub nsw i32 %7522, %7523
  %7525 = sitofp i32 %7524 to float
  %7526 = fsub fast float %7507, %5232
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7526, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = fcmp fast olt float %7527, 0.000000e+00
  %7530 = zext i1 %7528 to i32
  %7531 = zext i1 %7529 to i32
  %7532 = sub nsw i32 %7530, %7531
  %7533 = sitofp i32 %7532 to float
  %7534 = fcmp fast une float %7525, %7533
  br i1 %7534, label %7535, label %7545

; <label>:7535                                    ; preds = %7494
  %7536 = fmul fast float %7518, %7513
  %7537 = fmul fast float %7518, %7512
  %7538 = fmul fast float %7518, %7511
  %7539 = fmul fast float %7538, %7538
  %7540 = fmul fast float %7537, %7537
  %7541 = fadd fast float %7539, %7540
  %7542 = fmul fast float %7536, %7536
  %7543 = fadd fast float %7541, %7542
  %7544 = call float @dx.op.unary.f32(i32 24, float %7543)  ; Sqrt(value)
  br label %7555

; <label>:7545                                    ; preds = %7494
  %7546 = icmp slt i32 %7524, 0
  br i1 %7546, label %7547, label %7555

; <label>:7547                                    ; preds = %7545
  %7548 = fsub fast float %169, %7507
  %7549 = fmul fast float %7500, %7500
  %7550 = fmul fast float %7501, %7501
  %7551 = fadd fast float %7549, %7550
  %7552 = fmul fast float %7548, %7548
  %7553 = fadd fast float %7551, %7552
  %7554 = call float @dx.op.unary.f32(i32 24, float %7553)  ; Sqrt(value)
  br label %7555

; <label>:7555                                    ; preds = %7547, %7545, %7535
  %7556 = phi float [ %7544, %7535 ], [ %7554, %7547 ], [ 0.000000e+00, %7545 ]
  %7557 = fsub fast float -0.000000e+00, %7556
  %7558 = select i1 %7499, float -0.000000e+00, float %7557
  %7559 = fmul fast float %5233, 0x3FF7154760000000
  %7560 = fmul fast float %7559, %7558
  %7561 = fmul fast float %5234, 0x3FF7154760000000
  %7562 = fmul fast float %7561, %7558
  %7563 = fmul fast float %5235, 0x3FF7154760000000
  %7564 = fmul fast float %7563, %7558
  %7565 = call float @dx.op.unary.f32(i32 21, float %7560)  ; Exp(value)
  %7566 = call float @dx.op.unary.f32(i32 21, float %7562)  ; Exp(value)
  %7567 = call float @dx.op.unary.f32(i32 21, float %7564)  ; Exp(value)
  %7568 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7569 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7570 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7571 = fmul fast float %7495, %7568
  %7572 = fmul fast float %7496, %7569
  %7573 = fmul fast float %7497, %7570
  %7574 = fsub fast float %6201, %5432
  %7575 = fsub fast float %6202, %5431
  %7576 = fsub fast float %6203, %5430
  %7577 = call float @dx.op.dot3.f32(i32 55, float %7574, float %7575, float %7576, float %7574, float %7575, float %7576)  ; Dot3(ax,ay,az,bx,by,bz)
  %7578 = call float @dx.op.unary.f32(i32 25, float %7577)  ; Rsqrt(value)
  %7579 = fmul fast float %7578, %7574
  %7580 = fmul fast float %7578, %7575
  %7581 = fmul fast float %7578, %7576
  %7582 = call float @dx.op.dot3.f32(i32 55, float %6201, float %6202, float %6203, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %7583 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5428, float %5427, float %7579, float %7580, float %7581)  ; Dot3(ax,ay,az,bx,by,bz)
  %7584 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7585 = bitcast i32 %5471 to float
  %7586 = fmul fast float %7584, %7584
  %7587 = fmul fast float %7586, %7585
  %7588 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7589 = fmul fast float %7588, %7584
  %7590 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %7579, float %7580, float %7581)  ; Dot3(ax,ay,az,bx,by,bz)
  %7591 = fmul fast float %7590, %7590
  %7592 = call float @dx.op.unary.f32(i32 6, float %7582)  ; FAbs(value)
  %7593 = fsub fast float 1.000000e+00, %5465
  %7594 = fmul fast float %5447, %5447
  %7595 = fmul fast float %7594, %7593
  %7596 = fadd fast float %7595, %5465
  %7597 = bitcast float %7596 to i32
  %7598 = ashr i32 %7597, 1
  %7599 = add nsw i32 %7598, 532487669
  %7600 = bitcast i32 %7599 to float
  %7601 = fadd fast float %7600, %5447
  %7602 = fmul fast float %5465, %7591
  %7603 = fsub fast float 1.000000e+00, %7591
  %7604 = fadd fast float %7603, %7602
  %7605 = fmul fast float %7592, %7592
  %7606 = fmul fast float %7605, %7593
  %7607 = fadd fast float %7606, %5465
  %7608 = bitcast float %7607 to i32
  %7609 = ashr i32 %7608, 1
  %7610 = add nsw i32 %7609, 532487669
  %7611 = bitcast i32 %7610 to float
  %7612 = fadd fast float %7611, %7592
  %7613 = fmul fast float %7604, %7604
  %7614 = fmul fast float %7613, %7601
  %7615 = fmul fast float %7614, %7612
  %7616 = fdiv fast float 0x3FF0A00000000000, %7615
  %7617 = fmul fast float %7616, %5465
  %7618 = fmul fast float %5571, 0x3FF9999980000000
  %7619 = fsub fast float 5.000000e+00, %7618
  %7620 = call float @dx.op.unary.f32(i32 6, float %7583)  ; FAbs(value)
  %7621 = fsub fast float 1.000000e+00, %7620
  %7622 = fmul fast float %5571, 0x41D9660740000000
  %7623 = fadd fast float %7622, 0xC1EFBF8940000000
  %7624 = bitcast float %7621 to i32
  %7625 = sitofp i32 %7624 to float
  %7626 = fmul fast float %7625, %7619
  %7627 = fadd fast float %7623, %7626
  %7628 = fptosi float %7627 to i32
  %7629 = bitcast i32 %7628 to float
  %7630 = fsub fast float 1.000000e+00, %5433
  %7631 = fsub fast float 1.000000e+00, %5434
  %7632 = fsub fast float 1.000000e+00, %5445
  %7633 = fmul fast float %7629, %7630
  %7634 = fmul fast float %7629, %7631
  %7635 = fmul fast float %7629, %7632
  %7636 = fadd fast float %7633, %5433
  %7637 = fadd fast float %7634, %5434
  %7638 = fadd fast float %7635, %5445
  br i1 %5594, label %7639, label %7662

; <label>:7639                                    ; preds = %7555
  %7640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4828, float %7620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7641 = extractvalue %dx.types.ResRet.f32 %7640, 0
  %7642 = extractvalue %dx.types.ResRet.f32 %7640, 1
  %7643 = extractvalue %dx.types.ResRet.f32 %7640, 2
  %7644 = fadd fast float %7641, -5.000000e-01
  %7645 = fadd fast float %7642, -5.000000e-01
  %7646 = fadd fast float %7643, -5.000000e-01
  %7647 = fmul fast float %5433, 4.000000e+00
  %7648 = fmul fast float %7647, %7630
  %7649 = fmul fast float %7648, %7644
  %7650 = fmul fast float %5434, 4.000000e+00
  %7651 = fmul fast float %7650, %7631
  %7652 = fmul fast float %7651, %7645
  %7653 = fmul fast float %5445, 4.000000e+00
  %7654 = fmul fast float %7653, %7632
  %7655 = fmul fast float %7654, %7646
  %7656 = fadd fast float %7649, %7636
  %7657 = fadd fast float %7652, %7637
  %7658 = fadd fast float %7655, %7638
  %7659 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7660 = call float @dx.op.unary.f32(i32 7, float %7657)  ; Saturate(value)
  %7661 = call float @dx.op.unary.f32(i32 7, float %7658)  ; Saturate(value)
  br label %7662

; <label>:7662                                    ; preds = %7639, %7555
  %7663 = phi float [ %7659, %7639 ], [ %7636, %7555 ]
  %7664 = phi float [ %7660, %7639 ], [ %7637, %7555 ]
  %7665 = phi float [ %7661, %7639 ], [ %7638, %7555 ]
  %7666 = fmul fast float %7582, 9.843750e-01
  %7667 = fadd fast float %7666, 7.812500e-03
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7667, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.ResRet.f32 %7668, 1
  %7671 = extractvalue %dx.types.ResRet.f32 %7668, 2
  %7672 = extractvalue %dx.types.ResRet.f32 %7668, 3
  %7673 = fsub fast float %7671, %7669
  %7674 = fsub fast float %7672, %7670
  %7675 = fmul fast float %7673, %5581
  %7676 = fmul fast float %7674, %5581
  %7677 = fadd fast float %7675, %7669
  %7678 = fadd fast float %7676, %7670
  %7679 = fmul fast float %7677, %5433
  %7680 = fmul fast float %7677, %5434
  %7681 = fmul fast float %7677, %5445
  %7682 = fadd fast float %7679, %7678
  %7683 = fadd fast float %7680, %7678
  %7684 = fadd fast float %7681, %7678
  br i1 %5594, label %7685, label %7708

; <label>:7685                                    ; preds = %7662
  %7686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4828, float %7582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.ResRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.ResRet.f32 %7686, 2
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fadd fast float %7688, -5.000000e-01
  %7692 = fadd fast float %7689, -5.000000e-01
  %7693 = fmul fast float %5433, 4.000000e+00
  %7694 = fmul fast float %7693, %7630
  %7695 = fmul fast float %7694, %7690
  %7696 = fmul fast float %5434, 4.000000e+00
  %7697 = fmul fast float %7696, %7631
  %7698 = fmul fast float %7697, %7691
  %7699 = fmul fast float %5445, 4.000000e+00
  %7700 = fmul fast float %7699, %7632
  %7701 = fmul fast float %7700, %7692
  %7702 = fadd fast float %7695, %7682
  %7703 = fadd fast float %7698, %7683
  %7704 = fadd fast float %7701, %7684
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7706 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7707 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  br label %7708

; <label>:7708                                    ; preds = %7685, %7662
  %7709 = phi float [ %7705, %7685 ], [ %7682, %7662 ]
  %7710 = phi float [ %7706, %7685 ], [ %7683, %7662 ]
  %7711 = phi float [ %7707, %7685 ], [ %7684, %7662 ]
  %7712 = call float @dx.op.binary.f32(i32 35, float %7710, float %7711)  ; FMax(a,b)
  %7713 = call float @dx.op.binary.f32(i32 35, float %7709, float %7712)  ; FMax(a,b)
  %7714 = fsub fast float 1.000000e+00, %7713
  %7715 = fmul fast float %7663, %7617
  %7716 = fmul fast float %7664, %7617
  %7717 = fmul fast float %7665, %7617
  %7718 = fsub fast float 1.000000e+00, %7583
  %7719 = bitcast float %7718 to i32
  %7720 = sitofp i32 %7719 to float
  %7721 = fmul fast float %7720, 5.000000e+00
  %7722 = fadd fast float %7721, 0xC1EFBF8940000000
  %7723 = fptosi float %7722 to i32
  %7724 = bitcast i32 %7723 to float
  %7725 = fmul fast float %7724, %4829
  %7726 = fmul fast float %7714, %7725
  %7727 = fmul fast float %7726, %6136
  %7728 = fmul fast float %7726, %6137
  %7729 = fmul fast float %7726, %6138
  %7730 = fadd fast float %7727, %7715
  %7731 = fadd fast float %7728, %7716
  %7732 = fadd fast float %7729, %7717
  %7733 = fmul fast float %7589, %7571
  %7734 = fmul fast float %7733, %7714
  %7735 = fmul fast float %7589, %7572
  %7736 = fmul fast float %7735, %7714
  %7737 = fmul fast float %7589, %7573
  %7738 = fmul fast float %7737, %7714
  %7739 = fmul fast float %7733, %7730
  %7740 = fmul fast float %7735, %7731
  %7741 = fmul fast float %7737, %7732
  %7742 = fadd fast float %7734, %6120
  %7743 = fmul fast float %7742, %4825
  %7744 = fadd fast float %7736, %6121
  %7745 = fmul fast float %7744, %4825
  %7746 = fadd fast float %7738, %6122
  %7747 = fmul fast float %7746, %4825
  %7748 = fadd fast float %7739, %6189
  %7749 = fmul fast float %7748, %4825
  %7750 = fadd fast float %7740, %6192
  %7751 = fmul fast float %7750, %4825
  %7752 = fadd fast float %7741, %6195
  %7753 = fmul fast float %7752, %4825
  br label %7754

; <label>:7754                                    ; preds = %7708, %7489, %6116
  %7755 = phi float [ %6190, %6116 ], [ %6190, %7489 ], [ %7749, %7708 ]
  %7756 = phi float [ %6193, %6116 ], [ %6193, %7489 ], [ %7751, %7708 ]
  %7757 = phi float [ %6196, %6116 ], [ %6196, %7489 ], [ %7753, %7708 ]
  %7758 = phi float [ %6185, %6116 ], [ %6185, %7489 ], [ %7743, %7708 ]
  %7759 = phi float [ %6186, %6116 ], [ %6186, %7489 ], [ %7745, %7708 ]
  %7760 = phi float [ %6187, %6116 ], [ %6187, %7489 ], [ %7747, %7708 ]
  %7761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.i32 %7761, 0
  %7763 = icmp eq i32 %7762, 0
  br i1 %7763, label %8439, label %7764

; <label>:7764                                    ; preds = %7754
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 3
  %7768 = fmul fast float %7766, %104
  %7769 = fmul fast float %7767, %105
  %7770 = fptoui float %7768 to i32
  %7771 = fptoui float %7769 to i32
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.CBufRet.f32 %7772, 2
  %7775 = extractvalue %dx.types.CBufRet.f32 %7772, 3
  %7776 = fadd fast float %92, -4.000000e+00
  %7777 = call float @dx.op.binary.f32(i32 35, float %7776, float 0.000000e+00)  ; FMax(a,b)
  %7778 = fadd fast float %7777, %7773
  %7779 = fmul fast float %7778, %7774
  %7780 = call float @dx.op.unary.f32(i32 23, float %7779)  ; Log(value)
  %7781 = fmul fast float %7780, %7775
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 2
  %7784 = fmul fast float %7781, %7783
  %7785 = call float @dx.op.unary.f32(i32 7, float %7784)  ; Saturate(value)
  %7786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.i32 %7786, 1
  %7788 = add i32 %7787, -1
  %7789 = uitofp i32 %7787 to float
  %7790 = fmul fast float %7789, %7785
  %7791 = fptoui float %7790 to i32
  %7792 = call i32 @dx.op.binary.i32(i32 40, i32 %7791, i32 %7788)  ; UMin(a,b)
  %7793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.i32 %7793, 2
  %7795 = extractvalue %dx.types.CBufRet.i32 %7793, 3
  %7796 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7771, i32 %7794, i32 %7770)  ; UMad(a,b,c)
  %7797 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7792, i32 %7795, i32 %7796)  ; UMad(a,b,c)
  %7798 = add nsw i32 %7762, -1
  %7799 = call i32 @dx.op.binary.i32(i32 37, i32 %7798, i32 0)  ; IMax(a,b)
  %7800 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7801 = fptoui float %7800 to i32
  %7802 = lshr i32 %7801, 5
  %7803 = call i32 @dx.op.binary.i32(i32 40, i32 %7802, i32 8191)  ; UMin(a,b)
  %7804 = shl i32 %7803, 2
  %7805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7804, i32 undef)  ; BufferLoad(srv,index,wot)
  %7806 = extractvalue %dx.types.ResRet.i32 %7805, 0
  %7807 = lshr i32 %7806, 16
  %7808 = and i32 %7806, 65535
  %7809 = lshr i32 %7806, 21
  %7810 = lshr i32 %7808, 5
  %7811 = call i32 @dx.op.binary.i32(i32 40, i32 %7810, i32 %7799)  ; UMin(a,b)
  %7812 = icmp ugt i32 %7809, %7811
  br i1 %7812, label %8439, label %7813

; <label>:7813                                    ; preds = %7764
  br label %7814

; <label>:7814                                    ; preds = %8429, %7813
  %7815 = phi i32 [ %8436, %8429 ], [ %7809, %7813 ]
  %7816 = phi float [ %8430, %8429 ], [ %7755, %7813 ]
  %7817 = phi float [ %8431, %8429 ], [ %7756, %7813 ]
  %7818 = phi float [ %8432, %8429 ], [ %7757, %7813 ]
  %7819 = phi float [ %8433, %8429 ], [ %7758, %7813 ]
  %7820 = phi float [ %8434, %8429 ], [ %7759, %7813 ]
  %7821 = phi float [ %8435, %8429 ], [ %7760, %7813 ]
  %7822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.i32 %7822, 0
  %7824 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7797, i32 %7823, i32 %7815)  ; UMad(a,b,c)
  %7825 = shl i32 %7824, 2
  %7826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7825, i32 undef)  ; BufferLoad(srv,index,wot)
  %7827 = extractvalue %dx.types.ResRet.i32 %7826, 0
  %7828 = shl i32 %7815, 5
  %7829 = sub nsw i32 %7807, %7828
  %7830 = call i32 @dx.op.binary.i32(i32 37, i32 %7829, i32 0)  ; IMax(a,b)
  %7831 = call i32 @dx.op.binary.i32(i32 38, i32 %7830, i32 31)  ; IMin(a,b)
  %7832 = sub nsw i32 1, %7807
  %7833 = add nsw i32 %7832, %7808
  %7834 = call i32 @dx.op.binary.i32(i32 37, i32 %7833, i32 0)  ; IMax(a,b)
  %7835 = call i32 @dx.op.binary.i32(i32 38, i32 %7834, i32 32)  ; IMin(a,b)
  %7836 = and i32 %7835, 31
  %7837 = shl i32 -1, %7836
  %7838 = xor i32 %7837, -1
  %7839 = and i32 %7831, 31
  %7840 = shl i32 %7838, %7839
  %7841 = icmp eq i32 %7835, 32
  %7842 = select i1 %7841, i32 -1, i32 %7840
  %7843 = and i32 %7842, %7827
  %7844 = icmp eq i32 %7843, 0
  br i1 %7844, label %8429, label %7845

; <label>:7845                                    ; preds = %7814
  br label %7846

; <label>:7846                                    ; preds = %7980, %7845
  %7847 = phi i32 [ %7858, %7980 ], [ %7843, %7845 ]
  %7848 = phi float [ %7981, %7980 ], [ %7816, %7845 ]
  %7849 = phi float [ %7982, %7980 ], [ %7817, %7845 ]
  %7850 = phi float [ %7983, %7980 ], [ %7818, %7845 ]
  %7851 = phi float [ %7984, %7980 ], [ %7819, %7845 ]
  %7852 = phi float [ %7985, %7980 ], [ %7820, %7845 ]
  %7853 = phi float [ %7986, %7980 ], [ %7821, %7845 ]
  %7854 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7847)  ; FirstbitLo(value)
  %7855 = add i32 %7854, %7828
  %7856 = and i32 %7854, 31
  %7857 = shl i32 1, %7856
  %7858 = xor i32 %7857, %7847
  %7859 = mul i32 %7855, 112
  %7860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7859, i32 undef)  ; BufferLoad(srv,index,wot)
  %7861 = extractvalue %dx.types.ResRet.f32 %7860, 0
  %7862 = extractvalue %dx.types.ResRet.f32 %7860, 1
  %7863 = extractvalue %dx.types.ResRet.f32 %7860, 2
  %7864 = or i32 %7859, 12
  %7865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7864, i32 undef)  ; BufferLoad(srv,index,wot)
  %7866 = extractvalue %dx.types.ResRet.f32 %7865, 0
  %7867 = add i32 %7859, 16
  %7868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7867, i32 undef)  ; BufferLoad(srv,index,wot)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = add i32 %7859, 28
  %7873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7872, i32 undef)  ; BufferLoad(srv,index,wot)
  %7874 = extractvalue %dx.types.ResRet.i32 %7873, 0
  %7875 = add i32 %7859, 44
  %7876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7875, i32 undef)  ; BufferLoad(srv,index,wot)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = add i32 %7859, 48
  %7879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7878, i32 undef)  ; BufferLoad(srv,index,wot)
  %7880 = extractvalue %dx.types.ResRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.ResRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.ResRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.ResRet.f32 %7879, 3
  %7884 = add i32 %7859, 64
  %7885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7884, i32 undef)  ; BufferLoad(srv,index,wot)
  %7886 = extractvalue %dx.types.ResRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.ResRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.ResRet.f32 %7885, 2
  %7889 = extractvalue %dx.types.ResRet.f32 %7885, 3
  %7890 = add i32 %7859, 80
  %7891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7890, i32 undef)  ; BufferLoad(srv,index,wot)
  %7892 = extractvalue %dx.types.ResRet.f32 %7891, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7891, 2
  %7894 = add i32 %7859, 92
  %7895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7894, i32 undef)  ; BufferLoad(srv,index,wot)
  %7896 = extractvalue %dx.types.ResRet.i32 %7895, 0
  %7897 = call float @dx.op.dot3.f32(i32 55, float %7861, float %7862, float %7863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7898 = select i1 %229, float %7892, float %7861
  %7899 = select i1 %229, float %7897, float %7862
  %7900 = select i1 %229, float %7893, float %7863
  %7901 = and i32 %7896, 65535
  %7902 = uitofp i32 %7901 to float
  %7903 = lshr i32 %7896, 16
  %7904 = uitofp i32 %7903 to float
  %7905 = and i32 %7874, 65535
  %7906 = and i32 %7874, 50331648
  %7907 = icmp eq i32 %7906, 33554432
  %7908 = fsub fast float %7880, %167
  %7909 = fsub fast float %7881, %168
  %7910 = fsub fast float %7882, %169
  %7911 = call float @dx.op.dot3.f32(i32 55, float %7908, float %7909, float %7910, float %7908, float %7909, float %7910)  ; Dot3(ax,ay,az,bx,by,bz)
  %7912 = call float @dx.op.unary.f32(i32 24, float %7911)  ; Sqrt(value)
  %7913 = fdiv fast float 1.000000e+00, %7912
  %7914 = fmul fast float %7913, %7908
  %7915 = fmul fast float %7913, %7909
  %7916 = fmul fast float %7913, %7910
  %7917 = fadd fast float %7912, %7866
  %7918 = fdiv fast float 1.000000e+00, %7917
  %7919 = fmul float %7877, %7918
  %7920 = fmul float %7919, %7919
  %7921 = call float @dx.op.unary.f32(i32 7, float %7920)  ; Saturate(value)
  br i1 %7907, label %7922, label %7943

; <label>:7922                                    ; preds = %7846
  %7923 = fmul fast float %7888, %7869
  %7924 = fmul fast float %7888, %7870
  %7925 = fmul fast float %7888, %7871
  %7926 = fadd fast float %7908, %7923
  %7927 = fadd fast float %7909, %7924
  %7928 = fadd fast float %7910, %7925
  %7929 = call float @dx.op.dot3.f32(i32 55, float %7926, float %7927, float %7928, float %7926, float %7927, float %7928)  ; Dot3(ax,ay,az,bx,by,bz)
  %7930 = call float @dx.op.unary.f32(i32 25, float %7929)  ; Rsqrt(value)
  %7931 = fmul fast float %7930, %7926
  %7932 = fmul fast float %7930, %7927
  %7933 = fmul fast float %7930, %7928
  %7934 = fsub fast float %167, %7880
  %7935 = fsub fast float %168, %7881
  %7936 = fsub fast float %169, %7882
  %7937 = fsub fast float -0.000000e+00, %7934
  %7938 = fsub fast float -0.000000e+00, %7935
  %7939 = fsub fast float -0.000000e+00, %7936
  %7940 = call float @dx.op.dot3.f32(i32 55, float %7937, float %7938, float %7939, float %7869, float %7870, float %7871)  ; Dot3(ax,ay,az,bx,by,bz)
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  %7942 = uitofp i1 %7941 to float
  br label %7943

; <label>:7943                                    ; preds = %7922, %7846
  %7944 = phi float [ %7942, %7922 ], [ 1.000000e+00, %7846 ]
  %7945 = phi float [ %7931, %7922 ], [ %7914, %7846 ]
  %7946 = phi float [ %7932, %7922 ], [ %7915, %7846 ]
  %7947 = phi float [ %7933, %7922 ], [ %7916, %7846 ]
  %7948 = call float @dx.op.dot3.f32(i32 55, float %7869, float %7870, float %7871, float %7945, float %7946, float %7947)  ; Dot3(ax,ay,az,bx,by,bz)
  %7949 = fmul fast float %7948, %7948
  %7950 = call float @dx.op.unary.f32(i32 7, float %7949)  ; Saturate(value)
  %7951 = fsub fast float 1.000000e+00, %7950
  %7952 = fmul fast float %7951, 5.000000e-01
  %7953 = fcmp fast ogt float %7948, 0.000000e+00
  %7954 = fsub fast float 1.000000e+00, %7952
  %7955 = select i1 %7953, float %7952, float %7954
  %7956 = fmul fast float %7955, %7904
  %7957 = fadd fast float %7956, %7902
  %7958 = fmul fast float %7957, 0x3EF0001000000000
  %7959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7958, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = fmul fast float %7948, %7886
  %7962 = fadd fast float %7961, %7887
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = select i1 %7907, float 1.000000e+00, float %7963
  %7965 = select i1 %7907, float %7963, float 1.000000e+00
  %7966 = fmul fast float %7912, %7883
  %7967 = fsub fast float 1.000000e+00, %7966
  %7968 = fmul fast float %7967, %7889
  %7969 = call float @dx.op.unary.f32(i32 7, float %7968)  ; Saturate(value)
  %7970 = fmul fast float %7969, %7965
  %7971 = fmul fast float %7970, 2.000000e+00
  %7972 = fsub fast float 3.000000e+00, %7971
  %7973 = fmul fast float %7960, %7944
  %7974 = fmul fast float %7970, %7970
  %7975 = fmul fast float %7974, %7973
  %7976 = fmul fast float %7975, %7972
  %7977 = call float @dx.op.binary.f32(i32 36, float %7976, float %7976)  ; FMin(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7976, float %7977)  ; FMin(a,b)
  %7979 = fcmp fast ogt float %7978, 0.000000e+00
  br i1 %7979, label %7988, label %7980, !dx.controlflow.hints !131

; <label>:7980                                    ; preds = %8385, %8134, %7943
  %7981 = phi float [ %7848, %8134 ], [ %7848, %7943 ], [ %8425, %8385 ]
  %7982 = phi float [ %7849, %8134 ], [ %7849, %7943 ], [ %8426, %8385 ]
  %7983 = phi float [ %7850, %8134 ], [ %7850, %7943 ], [ %8427, %8385 ]
  %7984 = phi float [ %7851, %8134 ], [ %7851, %7943 ], [ %8419, %8385 ]
  %7985 = phi float [ %7852, %8134 ], [ %7852, %7943 ], [ %8420, %8385 ]
  %7986 = phi float [ %7853, %8134 ], [ %7853, %7943 ], [ %8421, %8385 ]
  %7987 = icmp eq i32 %7847, %7857
  br i1 %7987, label %8428, label %7846

; <label>:7988                                    ; preds = %7943
  %7989 = icmp eq i32 %7905, 255
  br i1 %7989, label %8134, label %7990, !dx.controlflow.hints !132

; <label>:7990                                    ; preds = %7988
  %7991 = mul nuw nsw i32 %7905, 176
  %7992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7991, i32 undef)  ; BufferLoad(srv,index,wot)
  %7993 = extractvalue %dx.types.ResRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.ResRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.ResRet.f32 %7992, 2
  %7996 = extractvalue %dx.types.ResRet.f32 %7992, 3
  %7997 = add nuw nsw i32 %7991, 16
  %7998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7997, i32 undef)  ; BufferLoad(srv,index,wot)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = add nuw nsw i32 %7991, 32
  %8002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8001, i32 undef)  ; BufferLoad(srv,index,wot)
  %8003 = extractvalue %dx.types.ResRet.f32 %8002, 0
  %8004 = extractvalue %dx.types.ResRet.f32 %8002, 1
  %8005 = extractvalue %dx.types.ResRet.f32 %8002, 2
  %8006 = add nuw nsw i32 %7991, 48
  %8007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8006, i32 undef)  ; BufferLoad(srv,index,wot)
  %8008 = extractvalue %dx.types.ResRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.ResRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.ResRet.f32 %8007, 2
  %8011 = extractvalue %dx.types.ResRet.f32 %8007, 3
  %8012 = add nuw nsw i32 %7991, 64
  %8013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8012, i32 undef)  ; BufferLoad(srv,index,wot)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = extractvalue %dx.types.ResRet.f32 %8013, 3
  %8018 = add nuw nsw i32 %7991, 80
  %8019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8018, i32 undef)  ; BufferLoad(srv,index,wot)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = extractvalue %dx.types.ResRet.f32 %8019, 3
  %8024 = add nuw nsw i32 %7991, 96
  %8025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8024, i32 undef)  ; BufferLoad(srv,index,wot)
  %8026 = extractvalue %dx.types.ResRet.f32 %8025, 0
  %8027 = extractvalue %dx.types.ResRet.f32 %8025, 1
  %8028 = extractvalue %dx.types.ResRet.f32 %8025, 2
  %8029 = extractvalue %dx.types.ResRet.f32 %8025, 3
  %8030 = bitcast float %8000 to i32
  %8031 = fmul fast float %8005, %111
  %8032 = fmul fast float %8005, %112
  %8033 = fmul fast float %8005, %113
  %8034 = fadd fast float %8031, %167
  %8035 = fadd fast float %8032, %168
  %8036 = fadd fast float %8033, %169
  %8037 = fmul fast float %8034, %8008
  %8038 = call float @dx.op.tertiary.f32(i32 46, float %8035, float %8014, float %8037)  ; FMad(a,b,c)
  %8039 = call float @dx.op.tertiary.f32(i32 46, float %8036, float %8020, float %8038)  ; FMad(a,b,c)
  %8040 = fadd fast float %8039, %8026
  %8041 = fmul fast float %8034, %8009
  %8042 = call float @dx.op.tertiary.f32(i32 46, float %8035, float %8015, float %8041)  ; FMad(a,b,c)
  %8043 = call float @dx.op.tertiary.f32(i32 46, float %8036, float %8021, float %8042)  ; FMad(a,b,c)
  %8044 = fadd fast float %8043, %8027
  %8045 = fmul fast float %8034, %8010
  %8046 = call float @dx.op.tertiary.f32(i32 46, float %8035, float %8016, float %8045)  ; FMad(a,b,c)
  %8047 = call float @dx.op.tertiary.f32(i32 46, float %8036, float %8022, float %8046)  ; FMad(a,b,c)
  %8048 = fadd fast float %8047, %8028
  %8049 = fmul fast float %8034, %8011
  %8050 = call float @dx.op.tertiary.f32(i32 46, float %8035, float %8017, float %8049)  ; FMad(a,b,c)
  %8051 = call float @dx.op.tertiary.f32(i32 46, float %8036, float %8023, float %8050)  ; FMad(a,b,c)
  %8052 = fadd fast float %8051, %8029
  %8053 = fdiv fast float %8040, %8052
  %8054 = fdiv fast float %8044, %8052
  %8055 = fdiv fast float %8048, %8052
  %8056 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8055)  ; FMax(a,b)
  %8057 = fmul fast float %240, 0x401921FB60000000
  %8058 = call float @dx.op.unary.f32(i32 13, float %8057)  ; Sin(value)
  %8059 = call float @dx.op.unary.f32(i32 12, float %8057)  ; Cos(value)
  %8060 = fmul fast float %8059, %8004
  %8061 = call float @dx.op.tertiary.f32(i32 46, float %8058, float %8004, float 0.000000e+00)  ; FMad(a,b,c)
  %8062 = fmul fast float %8004, %8058
  %8063 = fsub fast float -0.000000e+00, %8062
  %8064 = call float @dx.op.tertiary.f32(i32 46, float %8059, float %8004, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8065

; <label>:8065                                    ; preds = %8065, %7990
  %8066 = phi float [ 0.000000e+00, %7990 ], [ %8098, %8065 ]
  %8067 = phi float [ 0.000000e+00, %7990 ], [ %8100, %8065 ]
  %8068 = phi i32 [ 0, %7990 ], [ %8101, %8065 ]
  %8069 = mul i32 %8068, 2
  %8070 = add i32 0, %8069
  %8071 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8070
  %8072 = load float, float* %8071, align 4
  %8073 = mul i32 %8068, 2
  %8074 = add i32 1, %8073
  %8075 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8074
  %8076 = load float, float* %8075, align 4
  %8077 = fmul fast float %8060, %8072
  %8078 = call float @dx.op.tertiary.f32(i32 46, float %8076, float %8063, float %8077)  ; FMad(a,b,c)
  %8079 = fmul fast float %8072, %8061
  %8080 = call float @dx.op.tertiary.f32(i32 46, float %8076, float %8064, float %8079)  ; FMad(a,b,c)
  %8081 = fadd fast float %8078, %8053
  %8082 = fadd fast float %8080, %8054
  %8083 = fmul fast float %8081, %7999
  %8084 = fmul fast float %8082, %7999
  %8085 = call float @dx.op.binary.f32(i32 35, float %8083, float %7995)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8084, float %7995)  ; FMax(a,b)
  %8087 = call float @dx.op.binary.f32(i32 36, float %8085, float %7996)  ; FMin(a,b)
  %8088 = call float @dx.op.binary.f32(i32 36, float %8086, float %7996)  ; FMin(a,b)
  %8089 = fadd fast float %8087, %7993
  %8090 = fadd fast float %8088, %7994
  %8091 = uitofp i32 %8030 to float
  %8092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8089, float %8090, float %8091, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8093 = extractvalue %dx.types.ResRet.f32 %8092, 0
  %8094 = fsub fast float %8093, %8056
  %8095 = fsub fast float %8094, %8003
  %8096 = fcmp fast ogt float %8095, 0.000000e+00
  %8097 = select i1 %8096, float 1.000000e+00, float 0.000000e+00
  %8098 = fadd fast float %8097, %8066
  %8099 = select i1 %8096, float %8095, float 0.000000e+00
  %8100 = fadd fast float %8099, %8067
  %8101 = add nuw nsw i32 %8068, 1
  %8102 = icmp eq i32 %8101, 8
  br i1 %8102, label %8103, label %8065

; <label>:8103                                    ; preds = %8065
  %8104 = fdiv fast float 1.000000e+00, %8098
  %8105 = fmul fast float %8104, %8100
  %8106 = fdiv fast float 1.000000e+00, %8056
  %8107 = fmul fast float %8105, %8106
  %8108 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  %8109 = call float @dx.op.binary.f32(i32 35, float %8108, float 0.000000e+00)  ; FMax(a,b)
  %8110 = fmul fast float %8098, 1.250000e-01
  %8111 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8112 = fmul fast float %8111, 2.000000e+00
  %8113 = fadd fast float %8112, -1.000000e+00
  %8114 = fcmp fast ogt float %8113, 0.000000e+00
  %8115 = fcmp fast olt float %8113, 0.000000e+00
  %8116 = zext i1 %8114 to i32
  %8117 = zext i1 %8115 to i32
  %8118 = sub nsw i32 %8116, %8117
  %8119 = sitofp i32 %8118 to float
  %8120 = fmul fast float %8119, %8113
  %8121 = fsub fast float 1.000000e+00, %8120
  %8122 = fmul fast float %8121, %8121
  %8123 = fmul fast float %8122, %8121
  %8124 = fsub fast float %8121, %8123
  %8125 = fmul fast float %8124, %8109
  %8126 = fsub fast float 1.000000e+00, %8123
  %8127 = fsub fast float %8126, %8125
  %8128 = fmul fast float %8119, 5.000000e-01
  %8129 = fmul fast float %8128, %8127
  %8130 = fsub fast float -5.000000e-01, %8129
  %8131 = fmul fast float %8130, %7964
  %8132 = fadd fast float %8131, 1.000000e+00
  %8133 = fmul fast float %8132, %7976
  br label %8134

; <label>:8134                                    ; preds = %8103, %7988
  %8135 = phi float [ %8133, %8103 ], [ %7976, %7988 ]
  %8136 = call float @dx.op.binary.f32(i32 36, float %8135, float %8135)  ; FMin(a,b)
  %8137 = call float @dx.op.binary.f32(i32 36, float %8135, float %8136)  ; FMin(a,b)
  %8138 = fcmp fast ogt float %8137, 0.000000e+00
  br i1 %8138, label %8139, label %7980, !dx.controlflow.hints !133

; <label>:8139                                    ; preds = %8134
  %8140 = fmul fast float %8135, %7898
  %8141 = fmul fast float %8135, %7899
  %8142 = fmul fast float %8135, %7900
  %8143 = fsub fast float %7882, %5232
  %8144 = fcmp fast ogt float %8143, 0.000000e+00
  %8145 = fsub fast float %169, %5232
  %8146 = fcmp fast ogt float %8145, 0.000000e+00
  %8147 = xor i1 %8146, %8144
  %8148 = fsub fast float %5232, %7882
  %8149 = fmul fast float %8148, 2.000000e+00
  %8150 = fadd fast float %8149, %7882
  %8151 = select i1 %8147, float %7882, float %8150
  %8152 = fsub fast float %8151, %169
  %8153 = call float @dx.op.dot3.f32(i32 55, float %7908, float %7909, float %8152, float %7908, float %7909, float %8152)  ; Dot3(ax,ay,az,bx,by,bz)
  %8154 = call float @dx.op.unary.f32(i32 25, float %8153)  ; Rsqrt(value)
  %8155 = fmul fast float %8154, %7908
  %8156 = fmul fast float %8154, %7909
  %8157 = fmul fast float %8154, %8152
  %8158 = fsub fast float %5232, %169
  %8159 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8158)  ; Dot3(ax,ay,az,bx,by,bz)
  %8160 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = fdiv fast float 1.000000e+00, %8160
  %8162 = fmul fast float %8161, %8159
  %8163 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8145, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8164 = fcmp fast ogt float %8163, 0.000000e+00
  %8165 = fcmp fast olt float %8163, 0.000000e+00
  %8166 = zext i1 %8164 to i32
  %8167 = zext i1 %8165 to i32
  %8168 = sub nsw i32 %8166, %8167
  %8169 = sitofp i32 %8168 to float
  %8170 = fsub fast float %8151, %5232
  %8171 = call float @dx.op.dot3.f32(i32 55, float %7908, float %7909, float %8170, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8172 = fcmp fast ogt float %8171, 0.000000e+00
  %8173 = fcmp fast olt float %8171, 0.000000e+00
  %8174 = zext i1 %8172 to i32
  %8175 = zext i1 %8173 to i32
  %8176 = sub nsw i32 %8174, %8175
  %8177 = sitofp i32 %8176 to float
  %8178 = fcmp fast une float %8169, %8177
  br i1 %8178, label %8179, label %8189

; <label>:8179                                    ; preds = %8139
  %8180 = fmul fast float %8162, %8157
  %8181 = fmul fast float %8162, %8156
  %8182 = fmul fast float %8162, %8155
  %8183 = fmul fast float %8182, %8182
  %8184 = fmul fast float %8181, %8181
  %8185 = fadd fast float %8183, %8184
  %8186 = fmul fast float %8180, %8180
  %8187 = fadd fast float %8185, %8186
  %8188 = call float @dx.op.unary.f32(i32 24, float %8187)  ; Sqrt(value)
  br label %8201

; <label>:8189                                    ; preds = %8139
  %8190 = icmp slt i32 %8168, 0
  br i1 %8190, label %8191, label %8201

; <label>:8191                                    ; preds = %8189
  %8192 = fsub fast float %167, %7880
  %8193 = fsub fast float %168, %7881
  %8194 = fsub fast float %169, %8151
  %8195 = fmul fast float %8192, %8192
  %8196 = fmul fast float %8193, %8193
  %8197 = fadd fast float %8195, %8196
  %8198 = fmul fast float %8194, %8194
  %8199 = fadd fast float %8197, %8198
  %8200 = call float @dx.op.unary.f32(i32 24, float %8199)  ; Sqrt(value)
  br label %8201

; <label>:8201                                    ; preds = %8191, %8189, %8179
  %8202 = phi float [ %8188, %8179 ], [ %8200, %8191 ], [ 0.000000e+00, %8189 ]
  %8203 = and i1 %8146, %8144
  %8204 = fsub fast float -0.000000e+00, %8202
  %8205 = select i1 %8203, float -0.000000e+00, float %8204
  %8206 = fmul fast float %5233, 0x3FF7154760000000
  %8207 = fmul fast float %8206, %8205
  %8208 = fmul fast float %5234, 0x3FF7154760000000
  %8209 = fmul fast float %8208, %8205
  %8210 = fmul fast float %5235, 0x3FF7154760000000
  %8211 = fmul fast float %8210, %8205
  %8212 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8213 = call float @dx.op.unary.f32(i32 21, float %8209)  ; Exp(value)
  %8214 = call float @dx.op.unary.f32(i32 21, float %8211)  ; Exp(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8216 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8217 = call float @dx.op.unary.f32(i32 7, float %8214)  ; Saturate(value)
  %8218 = fmul fast float %8140, %8215
  %8219 = fmul fast float %8141, %8216
  %8220 = fmul fast float %8142, %8217
  %8221 = fsub fast float %7914, %5432
  %8222 = fsub fast float %7915, %5431
  %8223 = fsub fast float %7916, %5430
  %8224 = call float @dx.op.dot3.f32(i32 55, float %8221, float %8222, float %8223, float %8221, float %8222, float %8223)  ; Dot3(ax,ay,az,bx,by,bz)
  %8225 = call float @dx.op.unary.f32(i32 25, float %8224)  ; Rsqrt(value)
  %8226 = fmul fast float %8225, %8221
  %8227 = fmul fast float %8225, %8222
  %8228 = fmul fast float %8225, %8223
  %8229 = call float @dx.op.dot3.f32(i32 55, float %7914, float %7915, float %7916, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %8230 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5428, float %5427, float %8226, float %8227, float %8228)  ; Dot3(ax,ay,az,bx,by,bz)
  %8231 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8232 = fmul fast float %8231, %7921
  %8233 = bitcast i32 %5471 to float
  %8234 = fmul fast float %8231, %8231
  %8235 = fmul fast float %8234, %8233
  %8236 = call float @dx.op.unary.f32(i32 7, float %8235)  ; Saturate(value)
  %8237 = fmul fast float %8232, %8236
  %8238 = bitcast float %7911 to i32
  %8239 = ashr i32 %8238, 1
  %8240 = sub nsw i32 1597463007, %8239
  %8241 = bitcast i32 %8240 to float
  %8242 = fmul fast float %8241, %7908
  %8243 = fmul fast float %8241, %7909
  %8244 = fmul fast float %8241, %7910
  %8245 = fsub fast float %8242, %5432
  %8246 = fsub fast float %8243, %5431
  %8247 = fsub fast float %8244, %5430
  %8248 = call float @dx.op.dot3.f32(i32 55, float %8245, float %8246, float %8247, float %8245, float %8246, float %8247)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = call float @dx.op.unary.f32(i32 25, float %8248)  ; Rsqrt(value)
  %8250 = fmul fast float %8245, %8249
  %8251 = fmul fast float %8246, %8249
  %8252 = fmul fast float %8247, %8249
  %8253 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %8250, float %8251, float %8252)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = fmul fast float %8253, %8253
  %8255 = call float @dx.op.unary.f32(i32 6, float %8229)  ; FAbs(value)
  %8256 = fsub fast float 1.000000e+00, %5465
  %8257 = fmul fast float %5447, %5447
  %8258 = fmul fast float %8257, %8256
  %8259 = fadd fast float %8258, %5465
  %8260 = bitcast float %8259 to i32
  %8261 = ashr i32 %8260, 1
  %8262 = add nsw i32 %8261, 532487669
  %8263 = bitcast i32 %8262 to float
  %8264 = fadd fast float %8263, %5447
  %8265 = fmul fast float %5465, %8254
  %8266 = fsub fast float 1.000000e+00, %8254
  %8267 = fadd fast float %8266, %8265
  %8268 = fmul fast float %8255, %8255
  %8269 = fmul fast float %8268, %8256
  %8270 = fadd fast float %8269, %5465
  %8271 = bitcast float %8270 to i32
  %8272 = ashr i32 %8271, 1
  %8273 = add nsw i32 %8272, 532487669
  %8274 = bitcast i32 %8273 to float
  %8275 = fadd fast float %8274, %8255
  %8276 = fmul fast float %8267, %8267
  %8277 = fmul fast float %8276, %8264
  %8278 = fmul fast float %8277, %8275
  %8279 = fdiv fast float 1.000000e+00, %8278
  %8280 = bitcast float %5465 to i32
  %8281 = sitofp i32 %8280 to float
  %8282 = fmul fast float %8281, 0x3FE7F73180000000
  %8283 = fadd fast float %8282, 0x41AFE27C40000000
  %8284 = fptosi float %8283 to i32
  %8285 = bitcast i32 %8284 to float
  %8286 = fmul fast float %7877, 0x3FD80E9D60000000
  %8287 = fmul fast float %8286, %8241
  %8288 = fadd fast float %8285, %8287
  %8289 = bitcast float %8288 to i32
  %8290 = sub nsw i32 2129859010, %8289
  %8291 = bitcast i32 %8290 to float
  %8292 = fmul fast float %5465, %8279
  %8293 = fmul fast float %8292, %8285
  %8294 = fmul fast float %8293, %8291
  %8295 = fmul fast float %5571, 0x3FF9999980000000
  %8296 = fsub fast float 5.000000e+00, %8295
  %8297 = call float @dx.op.unary.f32(i32 6, float %8230)  ; FAbs(value)
  %8298 = fsub fast float 1.000000e+00, %8297
  %8299 = fmul fast float %5571, 0x41D9660740000000
  %8300 = fadd fast float %8299, 0xC1EFBF8940000000
  %8301 = bitcast float %8298 to i32
  %8302 = sitofp i32 %8301 to float
  %8303 = fmul fast float %8302, %8296
  %8304 = fadd fast float %8300, %8303
  %8305 = fptosi float %8304 to i32
  %8306 = bitcast i32 %8305 to float
  %8307 = fsub fast float 1.000000e+00, %5433
  %8308 = fsub fast float 1.000000e+00, %5434
  %8309 = fsub fast float 1.000000e+00, %5445
  %8310 = fmul fast float %8306, %8307
  %8311 = fmul fast float %8306, %8308
  %8312 = fmul fast float %8306, %8309
  %8313 = fadd fast float %8310, %5433
  %8314 = fadd fast float %8311, %5434
  %8315 = fadd fast float %8312, %5445
  br i1 %5594, label %8316, label %8339

; <label>:8316                                    ; preds = %8201
  %8317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4828, float %8297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8318 = extractvalue %dx.types.ResRet.f32 %8317, 0
  %8319 = extractvalue %dx.types.ResRet.f32 %8317, 1
  %8320 = extractvalue %dx.types.ResRet.f32 %8317, 2
  %8321 = fadd fast float %8318, -5.000000e-01
  %8322 = fadd fast float %8319, -5.000000e-01
  %8323 = fadd fast float %8320, -5.000000e-01
  %8324 = fmul fast float %5433, 4.000000e+00
  %8325 = fmul fast float %8324, %8307
  %8326 = fmul fast float %8325, %8321
  %8327 = fmul fast float %5434, 4.000000e+00
  %8328 = fmul fast float %8327, %8308
  %8329 = fmul fast float %8328, %8322
  %8330 = fmul fast float %5445, 4.000000e+00
  %8331 = fmul fast float %8330, %8309
  %8332 = fmul fast float %8331, %8323
  %8333 = fadd fast float %8326, %8313
  %8334 = fadd fast float %8329, %8314
  %8335 = fadd fast float %8332, %8315
  %8336 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8337 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8338 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  br label %8339

; <label>:8339                                    ; preds = %8316, %8201
  %8340 = phi float [ %8336, %8316 ], [ %8313, %8201 ]
  %8341 = phi float [ %8337, %8316 ], [ %8314, %8201 ]
  %8342 = phi float [ %8338, %8316 ], [ %8315, %8201 ]
  %8343 = fmul fast float %8229, 9.843750e-01
  %8344 = fadd fast float %8343, 7.812500e-03
  %8345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8344, float %5575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = extractvalue %dx.types.ResRet.f32 %8345, 3
  %8350 = fsub fast float %8348, %8346
  %8351 = fsub fast float %8349, %8347
  %8352 = fmul fast float %8350, %5581
  %8353 = fmul fast float %8351, %5581
  %8354 = fadd fast float %8352, %8346
  %8355 = fadd fast float %8353, %8347
  %8356 = fmul fast float %8354, %5433
  %8357 = fmul fast float %8354, %5434
  %8358 = fmul fast float %8354, %5445
  %8359 = fadd fast float %8356, %8355
  %8360 = fadd fast float %8357, %8355
  %8361 = fadd fast float %8358, %8355
  br i1 %5594, label %8362, label %8385

; <label>:8362                                    ; preds = %8339
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4828, float %8229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8367 = fadd fast float %8364, -5.000000e-01
  %8368 = fadd fast float %8365, -5.000000e-01
  %8369 = fadd fast float %8366, -5.000000e-01
  %8370 = fmul fast float %5433, 4.000000e+00
  %8371 = fmul fast float %8370, %8307
  %8372 = fmul fast float %8371, %8367
  %8373 = fmul fast float %5434, 4.000000e+00
  %8374 = fmul fast float %8373, %8308
  %8375 = fmul fast float %8374, %8368
  %8376 = fmul fast float %5445, 4.000000e+00
  %8377 = fmul fast float %8376, %8309
  %8378 = fmul fast float %8377, %8369
  %8379 = fadd fast float %8372, %8359
  %8380 = fadd fast float %8375, %8360
  %8381 = fadd fast float %8378, %8361
  %8382 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8384 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  br label %8385

; <label>:8385                                    ; preds = %8362, %8339
  %8386 = phi float [ %8382, %8362 ], [ %8359, %8339 ]
  %8387 = phi float [ %8383, %8362 ], [ %8360, %8339 ]
  %8388 = phi float [ %8384, %8362 ], [ %8361, %8339 ]
  %8389 = call float @dx.op.binary.f32(i32 35, float %8387, float %8388)  ; FMax(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8386, float %8389)  ; FMax(a,b)
  %8391 = fsub fast float 1.000000e+00, %8390
  %8392 = fmul fast float %8340, %8294
  %8393 = fmul fast float %8341, %8294
  %8394 = fmul fast float %8342, %8294
  %8395 = fsub fast float 1.000000e+00, %8230
  %8396 = bitcast float %8395 to i32
  %8397 = sitofp i32 %8396 to float
  %8398 = fmul fast float %8397, 5.000000e+00
  %8399 = fadd fast float %8398, 0xC1EFBF8940000000
  %8400 = fptosi float %8399 to i32
  %8401 = bitcast i32 %8400 to float
  %8402 = fmul fast float %8401, %4829
  %8403 = fmul fast float %8391, %8402
  %8404 = fmul fast float %8403, %6136
  %8405 = fmul fast float %8403, %6137
  %8406 = fmul fast float %8403, %6138
  %8407 = fadd fast float %8404, %8392
  %8408 = fadd fast float %8405, %8393
  %8409 = fadd fast float %8406, %8394
  %8410 = fmul fast float %8218, %4825
  %8411 = fmul fast float %8410, %8237
  %8412 = fmul fast float %8411, %8391
  %8413 = fmul fast float %8219, %4825
  %8414 = fmul fast float %8413, %8237
  %8415 = fmul fast float %8414, %8391
  %8416 = fmul fast float %8220, %4825
  %8417 = fmul fast float %8416, %8237
  %8418 = fmul fast float %8417, %8391
  %8419 = fadd fast float %8412, %7851
  %8420 = fadd fast float %8415, %7852
  %8421 = fadd fast float %8418, %7853
  %8422 = fmul fast float %8411, %8407
  %8423 = fmul fast float %8414, %8408
  %8424 = fmul fast float %8417, %8409
  %8425 = fadd fast float %8422, %7848
  %8426 = fadd fast float %8423, %7849
  %8427 = fadd fast float %8424, %7850
  br label %7980

; <label>:8428                                    ; preds = %7980
  br label %8429

; <label>:8429                                    ; preds = %8428, %7814
  %8430 = phi float [ %7816, %7814 ], [ %7981, %8428 ]
  %8431 = phi float [ %7817, %7814 ], [ %7982, %8428 ]
  %8432 = phi float [ %7818, %7814 ], [ %7983, %8428 ]
  %8433 = phi float [ %7819, %7814 ], [ %7984, %8428 ]
  %8434 = phi float [ %7820, %7814 ], [ %7985, %8428 ]
  %8435 = phi float [ %7821, %7814 ], [ %7986, %8428 ]
  %8436 = add i32 %7815, 1
  %8437 = icmp ugt i32 %8436, %7811
  br i1 %8437, label %8438, label %7814

; <label>:8438                                    ; preds = %8429
  br label %8439

; <label>:8439                                    ; preds = %8438, %7764, %7754
  %8440 = phi float [ %7755, %7754 ], [ %7755, %7764 ], [ %8430, %8438 ]
  %8441 = phi float [ %7756, %7754 ], [ %7756, %7764 ], [ %8431, %8438 ]
  %8442 = phi float [ %7757, %7754 ], [ %7757, %7764 ], [ %8432, %8438 ]
  %8443 = phi float [ %7758, %7754 ], [ %7758, %7764 ], [ %8433, %8438 ]
  %8444 = phi float [ %7759, %7754 ], [ %7759, %7764 ], [ %8434, %8438 ]
  %8445 = phi float [ %7760, %7754 ], [ %7760, %7764 ], [ %8435, %8438 ]
  %8446 = fmul fast float %4825, %4825
  %8447 = fmul fast float %8446, %6162
  %8448 = fsub fast float -0.000000e+00, %8447
  %8449 = fmul fast float %8446, %6163
  %8450 = fsub fast float -0.000000e+00, %8449
  %8451 = fmul fast float %8446, %6164
  %8452 = fsub fast float -0.000000e+00, %8451
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = fmul fast float %8454, %6168
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8458 = fsub fast float 1.000000e+00, %4832
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fadd fast float %8445, %4831
  %8461 = fmul fast float %8460, %4832
  %8462 = fmul fast float %8459, %8457
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8465 = fmul fast float %8443, %5436
  %8466 = fmul fast float %8444, %5437
  %8467 = fmul fast float %8445, %5438
  %8468 = fcmp fast ogt float %92, %189
  %8469 = and i1 %8468, %5238
  %8470 = or i1 %5244, %8469
  %8471 = icmp eq i32 %5237, 2
  %8472 = fcmp fast ole float %92, %189
  %8473 = and i1 %8472, %8471
  %8474 = or i1 %8473, %8470
  br i1 %8469, label %8475, label %8732

; <label>:8475                                    ; preds = %8439
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8478 = extractvalue %dx.types.CBufRet.f32 %8476, 3
  %8479 = fmul fast float %8477, %104
  %8480 = fmul fast float %8478, %105
  %8481 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8482 = call float @dx.op.unary.f32(i32 7, float %8480)  ; Saturate(value)
  %8483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8481, float %8482, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.ResRet.f32 %8483, 3
  %8488 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8481, float %8482, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8489 = extractvalue %dx.types.ResRet.f32 %8488, 0
  %8490 = extractvalue %dx.types.ResRet.f32 %8488, 1
  %8491 = extractvalue %dx.types.ResRet.f32 %8488, 2
  %8492 = extractvalue %dx.types.ResRet.f32 %8488, 3
  %8493 = call float @dx.op.binary.f32(i32 35, float %8485, float %8486)  ; FMax(a,b)
  %8494 = call float @dx.op.binary.f32(i32 35, float %8484, float %8493)  ; FMax(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8494, float %8487)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8490, float %8491)  ; FMin(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8489, float %8496)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8497, float %8492)  ; FMin(a,b)
  %8499 = fmul fast float %8495, 2.550000e+02
  %8500 = fadd fast float %8499, 0x3F70101020000000
  %8501 = fptoui float %8500 to i32
  %8502 = fmul fast float %8498, 2.550000e+02
  %8503 = fadd fast float %8502, 0x3F70101020000000
  %8504 = fptoui float %8503 to i32
  %8505 = icmp ult i32 %8501, %8504
  br i1 %8505, label %8506, label %8674

; <label>:8506                                    ; preds = %8475
  %8507 = fcmp fast ogt float %91, 9.843750e-01
  %8508 = fadd fast float %92, -4.000000e+00
  %8509 = select i1 %8507, float -4.000000e+00, float %8508
  %8510 = call float @dx.op.binary.f32(i32 35, float %8509, float 0.000000e+00)  ; FMax(a,b)
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = fadd fast float %8512, %8510
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = fmul fast float %8513, %8514
  %8516 = call float @dx.op.unary.f32(i32 23, float %8515)  ; Log(value)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8518 = fmul fast float %8517, %8516
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8521 = fmul fast float %8518, %8520
  %8522 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  %8523 = uitofp i32 %8501 to float
  %8524 = uitofp i32 %8504 to float
  %8525 = fadd fast float %8523, 5.000000e-01
  %8526 = fadd fast float %8524, 5.000000e-01
  %8527 = fmul fast float %8520, %8525
  %8528 = fmul fast float %8520, %8526
  %8529 = fadd fast float %8527, 0x3F0FFB4800000000
  %8530 = fadd fast float %8528, 0xBF0FFB4800000000
  %8531 = call float @dx.op.binary.f32(i32 35, float %8522, float %8529)  ; FMax(a,b)
  %8532 = call float @dx.op.binary.f32(i32 36, float %8531, float %8530)  ; FMin(a,b)
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8533, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8533, 0
  %8537 = fmul fast float %8534, %8532
  %8538 = fadd fast float %8536, %8537
  %8539 = fadd fast float %8536, %8535
  %8540 = fsub fast float %8534, %8535
  %8541 = fadd fast float %8540, %8536
  %8542 = call float @dx.op.binary.f32(i32 35, float %8538, float %8539)  ; FMax(a,b)
  %8543 = call float @dx.op.binary.f32(i32 36, float %8542, float %8541)  ; FMin(a,b)
  %8544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8481, float %8482, float %8543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8545 = extractvalue %dx.types.ResRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.ResRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.ResRet.f32 %8544, 2
  %8548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.i32 %8548, 0
  %8550 = extractvalue %dx.types.CBufRet.i32 %8548, 1
  %8551 = uitofp i32 %8549 to float
  %8552 = uitofp i32 %8550 to float
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.CBufRet.f32 %8553, 1
  %8556 = fmul fast float %8551, %8481
  %8557 = fmul fast float %8552, %8482
  %8558 = fadd fast float %8556, -5.000000e-01
  %8559 = fadd fast float %8557, -5.000000e-01
  %8560 = call float @dx.op.unary.f32(i32 22, float %8558)  ; Frc(value)
  %8561 = call float @dx.op.unary.f32(i32 22, float %8559)  ; Frc(value)
  %8562 = fmul fast float %8560, %8560
  %8563 = fmul fast float %8562, %8560
  %8564 = fsub fast float 3.000000e+00, %8560
  %8565 = fmul fast float %8562, %8564
  %8566 = fmul fast float %8560, 3.000000e+00
  %8567 = fmul fast float %8563, 3.000000e+00
  %8568 = fmul fast float %8562, 6.000000e+00
  %8569 = fsub fast float %8567, %8568
  %8570 = fadd fast float %8569, 4.000000e+00
  %8571 = fmul fast float %8570, 0x3FC5555560000000
  %8572 = fmul fast float %8563, -3.000000e+00
  %8573 = fadd fast float %8562, %8560
  %8574 = fmul fast float %8573, 3.000000e+00
  %8575 = fadd fast float %8572, 1.000000e+00
  %8576 = fadd fast float %8575, %8574
  %8577 = fmul fast float %8563, 0x3FC5555560000000
  %8578 = fmul fast float %8561, %8561
  %8579 = fmul fast float %8578, %8561
  %8580 = fsub fast float 3.000000e+00, %8561
  %8581 = fmul fast float %8578, %8580
  %8582 = fmul fast float %8561, 3.000000e+00
  %8583 = fmul fast float %8579, 3.000000e+00
  %8584 = fmul fast float %8578, 6.000000e+00
  %8585 = fsub fast float %8583, %8584
  %8586 = fadd fast float %8585, 4.000000e+00
  %8587 = fmul fast float %8586, 0x3FC5555560000000
  %8588 = fmul fast float %8579, -3.000000e+00
  %8589 = fadd fast float %8578, %8561
  %8590 = fmul fast float %8589, 3.000000e+00
  %8591 = fadd fast float %8588, 1.000000e+00
  %8592 = fadd fast float %8591, %8590
  %8593 = fmul fast float %8579, 0x3FC5555560000000
  %8594 = fadd fast float %8560, 1.000000e+00
  %8595 = fsub fast float 1.000000e+00, %8566
  %8596 = fadd fast float %8595, %8565
  %8597 = fadd fast float %8596, %8570
  %8598 = fmul fast float %8597, 0x3FC5555560000000
  %8599 = fdiv fast float %8571, %8598
  %8600 = fsub fast float %8594, %8599
  %8601 = fsub fast float 1.000000e+00, %8560
  %8602 = fadd fast float %8576, %8563
  %8603 = fmul fast float %8602, 0x3FC5555560000000
  %8604 = fdiv fast float %8577, %8603
  %8605 = fadd fast float %8601, %8604
  %8606 = fadd fast float %8561, 1.000000e+00
  %8607 = fsub fast float 1.000000e+00, %8582
  %8608 = fadd fast float %8607, %8581
  %8609 = fadd fast float %8608, %8586
  %8610 = fmul fast float %8609, 0x3FC5555560000000
  %8611 = fdiv fast float %8587, %8610
  %8612 = fsub fast float %8606, %8611
  %8613 = fsub fast float 1.000000e+00, %8561
  %8614 = fadd fast float %8592, %8579
  %8615 = fmul fast float %8614, 0x3FC5555560000000
  %8616 = fdiv fast float %8593, %8615
  %8617 = fadd fast float %8616, %8613
  %8618 = fmul fast float %8600, %8554
  %8619 = fsub fast float %8481, %8618
  %8620 = fmul fast float %8605, %8554
  %8621 = fadd fast float %8620, %8481
  %8622 = fmul fast float %8617, %8555
  %8623 = fadd fast float %8622, %8482
  %8624 = fmul fast float %8612, %8555
  %8625 = fsub fast float %8482, %8624
  %8626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8619, float %8625, float %8543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8621, float %8625, float %8543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8631 = extractvalue %dx.types.ResRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.ResRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.ResRet.f32 %8630, 2
  %8634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8619, float %8623, float %8543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8635 = extractvalue %dx.types.ResRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.ResRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.ResRet.f32 %8634, 2
  %8638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8621, float %8623, float %8543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8639 = extractvalue %dx.types.ResRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.ResRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.ResRet.f32 %8638, 2
  %8642 = fsub fast float %8635, %8627
  %8643 = fsub fast float %8636, %8628
  %8644 = fsub fast float %8637, %8629
  %8645 = fmul fast float %8642, %8615
  %8646 = fmul fast float %8643, %8615
  %8647 = fmul fast float %8644, %8615
  %8648 = fadd fast float %8645, %8627
  %8649 = fadd fast float %8646, %8628
  %8650 = fadd fast float %8647, %8629
  %8651 = fsub fast float %8639, %8631
  %8652 = fsub fast float %8640, %8632
  %8653 = fsub fast float %8641, %8633
  %8654 = fmul fast float %8651, %8615
  %8655 = fmul fast float %8652, %8615
  %8656 = fmul fast float %8653, %8615
  %8657 = fsub fast float %8631, %8648
  %8658 = fadd fast float %8657, %8654
  %8659 = fsub fast float %8632, %8649
  %8660 = fadd fast float %8659, %8655
  %8661 = fsub fast float %8633, %8650
  %8662 = fadd fast float %8661, %8656
  %8663 = fmul fast float %8658, %8603
  %8664 = fmul fast float %8660, %8603
  %8665 = fmul fast float %8662, %8603
  %8666 = fadd fast float %8663, %8648
  %8667 = fadd fast float %8664, %8649
  %8668 = fadd fast float %8665, %8650
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 1
  %8671 = fmul fast float %8666, %8670
  %8672 = fmul fast float %8667, %8670
  %8673 = fmul fast float %8668, %8670
  br label %8674

; <label>:8674                                    ; preds = %8506, %8475
  %8675 = phi float [ %8545, %8506 ], [ 1.000000e+00, %8475 ]
  %8676 = phi float [ %8546, %8506 ], [ 1.000000e+00, %8475 ]
  %8677 = phi float [ %8547, %8506 ], [ 1.000000e+00, %8475 ]
  %8678 = phi float [ %8671, %8506 ], [ 0.000000e+00, %8475 ]
  %8679 = phi float [ %8672, %8506 ], [ 0.000000e+00, %8475 ]
  %8680 = phi float [ %8673, %8506 ], [ 0.000000e+00, %8475 ]
  %8681 = fmul fast float %8678, %8448
  %8682 = fmul fast float %8679, %8450
  %8683 = fmul fast float %8680, %8452
  %8684 = call float @dx.op.dot3.f32(i32 55, float %8675, float %8676, float %8677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8685 = call float @dx.op.dot3.f32(i32 55, float %8681, float %8682, float %8683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8686 = select i1 %229, float %8684, float %8675
  %8687 = select i1 %229, float %8684, float %8676
  %8688 = select i1 %229, float 1.000000e+00, float %8677
  %8689 = select i1 %229, float %8685, float %8681
  %8690 = select i1 %229, float 0.000000e+00, float %8682
  %8691 = select i1 %229, float 0.000000e+00, float %8683
  %8692 = fmul fast float %8686, %8465
  %8693 = fmul fast float %8687, %8466
  %8694 = fmul fast float %8688, %8467
  %8695 = fadd fast float %8692, %8689
  %8696 = fadd fast float %8693, %8690
  %8697 = fadd fast float %8691, %8694
  %8698 = fmul fast float %8686, %8440
  %8699 = fmul fast float %8687, %8441
  %8700 = fmul fast float %8688, %8442
  %8701 = fmul fast float %137, %8477
  %8702 = fmul fast float %139, %8478
  %8703 = fsub fast float 1.000000e+00, %8701
  %8704 = fsub fast float 1.000000e+00, %8702
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = extractvalue %dx.types.CBufRet.f32 %8705, 1
  %8708 = extractvalue %dx.types.CBufRet.f32 %8705, 2
  %8709 = fmul fast float %8703, %8706
  %8710 = fmul fast float %8703, %8707
  %8711 = fmul fast float %8703, %8708
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 0
  %8714 = extractvalue %dx.types.CBufRet.f32 %8712, 1
  %8715 = extractvalue %dx.types.CBufRet.f32 %8712, 2
  %8716 = fmul fast float %8704, %8713
  %8717 = fmul fast float %8704, %8714
  %8718 = fmul fast float %8704, %8715
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.CBufRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.CBufRet.f32 %8719, 2
  %8723 = fadd fast float %8716, %8720
  %8724 = fadd fast float %8723, %8709
  %8725 = fadd fast float %8717, %8721
  %8726 = fadd fast float %8725, %8710
  %8727 = fadd fast float %8718, %8722
  %8728 = fadd fast float %8727, %8711
  %8729 = fmul fast float %8724, %189
  %8730 = fmul fast float %8726, %189
  %8731 = fmul fast float %8728, %189
  br label %8732

; <label>:8732                                    ; preds = %8674, %8439
  %8733 = phi float [ %8729, %8674 ], [ %167, %8439 ]
  %8734 = phi float [ %8730, %8674 ], [ %168, %8439 ]
  %8735 = phi float [ %8731, %8674 ], [ %169, %8439 ]
  %8736 = phi float [ %189, %8674 ], [ %92, %8439 ]
  %8737 = phi float [ %8695, %8674 ], [ %8465, %8439 ]
  %8738 = phi float [ %8696, %8674 ], [ %8466, %8439 ]
  %8739 = phi float [ %8697, %8674 ], [ %8467, %8439 ]
  %8740 = phi float [ %8698, %8674 ], [ %8440, %8439 ]
  %8741 = phi float [ %8699, %8674 ], [ %8441, %8439 ]
  %8742 = phi float [ %8700, %8674 ], [ %8442, %8439 ]
  %8743 = phi float [ %8675, %8674 ], [ 1.000000e+00, %8439 ]
  br i1 %8474, label %9898, label %8744

; <label>:8744                                    ; preds = %8732
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = extractvalue %dx.types.CBufRet.f32 %8745, 1
  %8748 = extractvalue %dx.types.CBufRet.f32 %8745, 2
  %8749 = extractvalue %dx.types.CBufRet.f32 %8745, 3
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.CBufRet.f32 %8750, 1
  %8753 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8754 = extractvalue %dx.types.CBufRet.f32 %8750, 3
  %8755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8756 = extractvalue %dx.types.CBufRet.f32 %8755, 0
  %8757 = extractvalue %dx.types.CBufRet.f32 %8755, 1
  %8758 = extractvalue %dx.types.CBufRet.f32 %8755, 2
  %8759 = extractvalue %dx.types.CBufRet.f32 %8755, 3
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 0
  %8762 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8763 = extractvalue %dx.types.CBufRet.f32 %8760, 2
  %8764 = extractvalue %dx.types.CBufRet.f32 %8760, 3
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 3
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 3
  %8769 = extractvalue %dx.types.CBufRet.f32 %8767, 0
  %8770 = extractvalue %dx.types.CBufRet.f32 %8767, 1
  %8771 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8772 = fcmp fast olt float %8771, -5.000000e-01
  %8773 = call float @dx.op.dot3.f32(i32 55, float %8733, float %8734, float %8735, float %8733, float %8734, float %8735)  ; Dot3(ax,ay,az,bx,by,bz)
  %8774 = call float @dx.op.unary.f32(i32 25, float %8773)  ; Rsqrt(value)
  %8775 = fmul fast float %8774, %8773
  %8776 = fmul fast float %8774, %8733
  %8777 = fmul fast float %8774, %8734
  %8778 = fmul fast float %8774, %8735
  %8779 = fadd fast float %8775, %8749
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8776, float %8777, float %8778, float %8746, float %8747, float %8748)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.i32 %8781, 1
  %8783 = and i32 %8782, 1
  %8784 = icmp ne i32 %8783, 0
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8787 = fcmp fast ogt float %8786, 0.000000e+00
  %8788 = and i1 %8784, %8787
  br i1 %8788, label %8789, label %9195, !dx.controlflow.hints !134

; <label>:8789                                    ; preds = %8744
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 3
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %8796 = fsub fast float %8793, %8795
  %8797 = and i32 %8782, 2
  %8798 = extractvalue %dx.types.CBufRet.i32 %8781, 0
  %8799 = call i32 @dx.op.binary.i32(i32 40, i32 %8798, i32 3)  ; UMin(a,b)
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %8802 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8803 = extractvalue %dx.types.CBufRet.f32 %8794, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %8805 = fsub fast float %8801, %8803
  %8806 = fsub fast float %8802, %8804
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = fcmp fast ogt float %8808, 0.000000e+00
  %8810 = fsub fast float -0.000000e+00, %8805
  %8811 = fsub fast float -0.000000e+00, %8806
  %8812 = call float @dx.op.dot2.f32(i32 54, float %8776, float %8777, float %8776, float %8777)  ; Dot2(ax,ay,bx,by)
  %8813 = call float @dx.op.dot2.f32(i32 54, float %8776, float %8777, float %8810, float %8811)  ; Dot2(ax,ay,bx,by)
  %8814 = fmul fast float %8813, 2.000000e+00
  %8815 = call float @dx.op.dot2.f32(i32 54, float %8810, float %8811, float %8810, float %8811)  ; Dot2(ax,ay,bx,by)
  %8816 = fmul fast float %8808, %8808
  %8817 = fsub fast float %8815, %8816
  %8818 = fmul fast float %8814, %8814
  %8819 = fmul fast float %8812, 4.000000e+00
  %8820 = fmul fast float %8819, %8817
  %8821 = fsub fast float %8818, %8820
  %8822 = fcmp fast ogt float %8821, 0.000000e+00
  br i1 %8822, label %8823, label %8838

; <label>:8823                                    ; preds = %8789
  %8824 = fcmp fast ogt float %8814, 0.000000e+00
  %8825 = call float @dx.op.unary.f32(i32 24, float %8821)  ; Sqrt(value)
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = select i1 %8824, float %8825, float %8826
  %8828 = fadd fast float %8827, %8814
  %8829 = fmul float %8828, -5.000000e-01
  %8830 = fdiv fast float %8829, %8812
  %8831 = call float @dx.op.binary.f32(i32 35, float %8830, float 0.000000e+00)  ; FMax(a,b)
  %8832 = call float @dx.op.binary.f32(i32 36, float %8775, float %8831)  ; FMin(a,b)
  %8833 = fdiv fast float %8817, %8829
  %8834 = call float @dx.op.binary.f32(i32 35, float %8833, float 0.000000e+00)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8775, float %8834)  ; FMin(a,b)
  %8836 = call float @dx.op.binary.f32(i32 36, float %8832, float %8835)  ; FMin(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %8832, float %8835)  ; FMax(a,b)
  br label %8838

; <label>:8838                                    ; preds = %8823, %8789
  %8839 = phi float [ %8837, %8823 ], [ -1.000000e+00, %8789 ]
  %8840 = phi float [ %8836, %8823 ], [ -1.000000e+00, %8789 ]
  %8841 = phi i1 [ true, %8823 ], [ false, %8789 ]
  %8842 = and i1 %8809, %8841
  br i1 %8842, label %8843, label %8845

; <label>:8843                                    ; preds = %8838
  %8844 = fcmp fast oeq float %8840, %8839
  br i1 %8844, label %9148, label %8846

; <label>:8845                                    ; preds = %8838
  br i1 %8809, label %9148, label %8846

; <label>:8846                                    ; preds = %8845, %8843
  %8847 = phi float [ %8775, %8845 ], [ %8839, %8843 ]
  %8848 = phi float [ 0.000000e+00, %8845 ], [ %8840, %8843 ]
  %8849 = icmp ne i32 %8797, 0
  %8850 = fmul fast float %8847, %8778
  %8851 = fadd fast float %8850, %8791
  %8852 = fmul fast float %8851, %8847
  %8853 = select i1 %8849, float 0.000000e+00, float %8852
  %8854 = fcmp fast oeq float %8778, 0.000000e+00
  %8855 = fdiv fast float %8796, %8778
  %8856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8855)  ; FMax(a,b)
  %8857 = select i1 %8854, float %8847, float %8856
  %8858 = call float @dx.op.binary.f32(i32 36, float %8847, float %8857)  ; FMin(a,b)
  %8859 = fcmp fast ogt float %8778, 0.000000e+00
  %8860 = fcmp fast olt float %8796, 0.000000e+00
  br i1 %8859, label %8861, label %8918

; <label>:8861                                    ; preds = %8846
  %8862 = icmp eq i32 %8797, 0
  br i1 %8860, label %8863, label %8907

; <label>:8863                                    ; preds = %8861
  %8864 = select i1 %8862, float %8847, float 0.000000e+00
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = call float @dx.op.unary.f32(i32 6, float %8865)  ; FAbs(value)
  %8867 = fmul fast float %8864, %8778
  %8868 = fadd fast float %8867, %8791
  %8869 = fmul fast float %8866, %8868
  %8870 = fsub fast float %8853, %8869
  %8871 = fsub fast float %8847, %8866
  %8872 = select i1 %8862, float %8871, float 0.000000e+00
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 0
  %8875 = extractvalue %dx.types.CBufRet.f32 %8873, 1
  %8876 = extractvalue %dx.types.CBufRet.f32 %8873, 2
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  %8879 = extractvalue %dx.types.CBufRet.f32 %8877, 1
  %8880 = extractvalue %dx.types.CBufRet.f32 %8877, 2
  %8881 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8884 = call float @dx.op.binary.f32(i32 36, float %8870, float %8883)  ; FMin(a,b)
  %8885 = fmul fast float %8881, %8872
  %8886 = call float @dx.op.unary.f32(i32 7, float %8885)  ; Saturate(value)
  %8887 = fsub fast float %8878, %8874
  %8888 = fsub fast float %8879, %8875
  %8889 = fsub fast float %8880, %8876
  %8890 = fmul fast float %8886, %8887
  %8891 = fmul fast float %8886, %8888
  %8892 = fmul fast float %8886, %8889
  %8893 = fadd fast float %8890, %8874
  %8894 = fadd fast float %8891, %8875
  %8895 = fadd fast float %8892, %8876
  %8896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.f32 %8896, 0
  %8898 = extractvalue %dx.types.CBufRet.f32 %8896, 1
  %8899 = fadd fast float %8898, %8897
  %8900 = call float @dx.op.unary.f32(i32 7, float %8899)  ; Saturate(value)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8896, 2
  %8902 = extractvalue %dx.types.CBufRet.f32 %8896, 3
  %8903 = fadd fast float %8902, %8901
  %8904 = call float @dx.op.unary.f32(i32 7, float %8903)  ; Saturate(value)
  %8905 = fmul fast float %8900, %8884
  %8906 = fmul fast float %8905, %8904
  br label %9148

; <label>:8907                                    ; preds = %8861
  br i1 %8862, label %8908, label %8929

; <label>:8908                                    ; preds = %8907
  %8909 = call float @dx.op.binary.f32(i32 36, float %8858, float %8848)  ; FMin(a,b)
  %8910 = fsub fast float %8858, %8909
  %8911 = fsub fast float %8910, %8847
  %8912 = call float @dx.op.unary.f32(i32 6, float %8911)  ; FAbs(value)
  %8913 = fadd fast float %8910, %8847
  %8914 = fmul fast float %8913, %8778
  %8915 = fadd fast float %8914, %8791
  %8916 = fmul fast float %8915, %8912
  %8917 = fsub fast float %8853, %8916
  br label %8929

; <label>:8918                                    ; preds = %8846
  br i1 %8860, label %8919, label %8929

; <label>:8919                                    ; preds = %8918
  %8920 = call float @dx.op.binary.f32(i32 35, float %8848, float %8858)  ; FMax(a,b)
  %8921 = icmp eq i32 %8797, 0
  %8922 = select i1 %8921, float %8858, float 0.000000e+00
  %8923 = fsub fast float -0.000000e+00, %8922
  %8924 = call float @dx.op.unary.f32(i32 6, float %8923)  ; FAbs(value)
  %8925 = fmul fast float %8922, %8778
  %8926 = fadd fast float %8925, %8791
  %8927 = fmul fast float %8924, %8926
  %8928 = fsub fast float %8853, %8927
  br label %8929

; <label>:8929                                    ; preds = %8919, %8918, %8908, %8907
  %8930 = phi float [ %8848, %8907 ], [ %8848, %8908 ], [ %8920, %8919 ], [ %8848, %8918 ]
  %8931 = phi float [ 0.000000e+00, %8907 ], [ %8912, %8908 ], [ %8924, %8919 ], [ 0.000000e+00, %8918 ]
  %8932 = phi float [ %8853, %8907 ], [ %8917, %8908 ], [ %8928, %8919 ], [ %8853, %8918 ]
  %8933 = phi float [ %8858, %8907 ], [ %8858, %8908 ], [ %8847, %8919 ], [ %8847, %8918 ]
  %8934 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8934, align 4, !tbaa !121, !noalias !135
  %8935 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8935, align 4, !tbaa !121, !noalias !135
  %8936 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8936, align 4, !tbaa !121, !noalias !135
  %8937 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8937, align 4, !tbaa !121, !noalias !135
  %8938 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8938, align 4, !tbaa !121, !noalias !135
  %8939 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8939, align 4, !tbaa !121, !noalias !135
  %8940 = icmp sgt i32 %8799, 0
  br i1 %8940, label %8941, label %9002

; <label>:8941                                    ; preds = %8929
  br label %8942

; <label>:8942                                    ; preds = %8991, %8941
  %8943 = phi i32 [ %8992, %8991 ], [ 0, %8941 ]
  %8944 = phi i32 [ %8993, %8991 ], [ 0, %8941 ]
  %8945 = add nuw i32 %8944, 171
  %8946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8945)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.f32 %8946, 0
  %8948 = extractvalue %dx.types.CBufRet.f32 %8946, 1
  %8949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8950 = extractvalue %dx.types.CBufRet.f32 %8949, 0
  %8951 = extractvalue %dx.types.CBufRet.f32 %8949, 1
  %8952 = fsub fast float %8947, %8950
  %8953 = fsub fast float %8948, %8951
  %8954 = extractvalue %dx.types.CBufRet.f32 %8946, 2
  %8955 = fsub fast float -0.000000e+00, %8952
  %8956 = fsub fast float -0.000000e+00, %8953
  %8957 = call float @dx.op.dot2.f32(i32 54, float %8776, float %8777, float %8955, float %8956)  ; Dot2(ax,ay,bx,by)
  %8958 = fmul fast float %8957, 2.000000e+00
  %8959 = call float @dx.op.dot2.f32(i32 54, float %8955, float %8956, float %8955, float %8956)  ; Dot2(ax,ay,bx,by)
  %8960 = fmul fast float %8954, %8954
  %8961 = fsub fast float %8959, %8960
  %8962 = fmul fast float %8958, %8958
  %8963 = fmul fast float %8819, %8961
  %8964 = fsub fast float %8962, %8963
  %8965 = fcmp fast ogt float %8964, 0.000000e+00
  br i1 %8965, label %8966, label %8981

; <label>:8966                                    ; preds = %8942
  %8967 = fcmp fast ogt float %8958, 0.000000e+00
  %8968 = call float @dx.op.unary.f32(i32 24, float %8964)  ; Sqrt(value)
  %8969 = fsub fast float -0.000000e+00, %8968
  %8970 = select i1 %8967, float %8968, float %8969
  %8971 = fadd fast float %8970, %8958
  %8972 = fmul float %8971, -5.000000e-01
  %8973 = fdiv fast float %8972, %8812
  %8974 = call float @dx.op.binary.f32(i32 35, float %8973, float 0.000000e+00)  ; FMax(a,b)
  %8975 = call float @dx.op.binary.f32(i32 36, float %8847, float %8974)  ; FMin(a,b)
  %8976 = fdiv fast float %8961, %8972
  %8977 = call float @dx.op.binary.f32(i32 35, float %8976, float 0.000000e+00)  ; FMax(a,b)
  %8978 = call float @dx.op.binary.f32(i32 36, float %8847, float %8977)  ; FMin(a,b)
  %8979 = call float @dx.op.binary.f32(i32 36, float %8975, float %8978)  ; FMin(a,b)
  %8980 = call float @dx.op.binary.f32(i32 35, float %8975, float %8978)  ; FMax(a,b)
  br label %8981

; <label>:8981                                    ; preds = %8966, %8942
  %8982 = phi float [ %8980, %8966 ], [ -1.000000e+00, %8942 ]
  %8983 = phi float [ %8979, %8966 ], [ -1.000000e+00, %8942 ]
  %8984 = phi i1 [ true, %8966 ], [ false, %8942 ]
  br i1 %8984, label %8985, label %8991

; <label>:8985                                    ; preds = %8981
  %8986 = call float @dx.op.binary.f32(i32 35, float %8930, float %8983)  ; FMax(a,b)
  %8987 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8944
  store float %8986, float* %8987, align 4, !tbaa !121, !noalias !135
  %8988 = call float @dx.op.binary.f32(i32 35, float %8930, float %8982)  ; FMax(a,b)
  %8989 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8944
  store float %8988, float* %8989, align 4, !tbaa !121, !noalias !135
  %8990 = add nsw i32 %8943, 1
  br label %8991

; <label>:8991                                    ; preds = %8985, %8981
  %8992 = phi i32 [ %8990, %8985 ], [ %8943, %8981 ]
  %8993 = add nuw nsw i32 %8944, 1
  %8994 = icmp eq i32 %8993, %8799
  br i1 %8994, label %8995, label %8942

; <label>:8995                                    ; preds = %8991
  %8996 = load float, float* %8936, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8997 = load float, float* %8935, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  %8998 = load float, float* %8934, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  %8999 = load float, float* %8939, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %9000 = load float, float* %8938, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  %9001 = load float, float* %8937, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  br label %9002

; <label>:9002                                    ; preds = %8995, %8929
  %9003 = phi float [ -1.000000e+00, %8929 ], [ %9001, %8995 ]
  %9004 = phi float [ -1.000000e+00, %8929 ], [ %9000, %8995 ]
  %9005 = phi float [ -1.000000e+00, %8929 ], [ %8999, %8995 ]
  %9006 = phi float [ -1.000000e+00, %8929 ], [ %8998, %8995 ]
  %9007 = phi float [ -1.000000e+00, %8929 ], [ %8997, %8995 ]
  %9008 = phi float [ -1.000000e+00, %8929 ], [ %8996, %8995 ]
  %9009 = phi i32 [ 0, %8929 ], [ %8992, %8995 ]
  %9010 = call float @dx.op.binary.f32(i32 36, float %9007, float %9008)  ; FMin(a,b)
  %9011 = call float @dx.op.binary.f32(i32 36, float %9006, float %9010)  ; FMin(a,b)
  %9012 = call float @dx.op.binary.f32(i32 35, float %9006, float %9007)  ; FMax(a,b)
  %9013 = call float @dx.op.binary.f32(i32 36, float %9012, float %9008)  ; FMin(a,b)
  %9014 = call float @dx.op.binary.f32(i32 36, float %9006, float %9007)  ; FMin(a,b)
  %9015 = call float @dx.op.binary.f32(i32 35, float %9014, float %9013)  ; FMax(a,b)
  %9016 = call float @dx.op.binary.f32(i32 35, float %9007, float %9008)  ; FMax(a,b)
  %9017 = call float @dx.op.binary.f32(i32 35, float %9006, float %9016)  ; FMax(a,b)
  store float %9011, float* %8934, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  store float %9015, float* %8935, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %9017, float* %8936, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %9018 = call float @dx.op.binary.f32(i32 36, float %9004, float %9005)  ; FMin(a,b)
  %9019 = call float @dx.op.binary.f32(i32 36, float %9003, float %9018)  ; FMin(a,b)
  %9020 = call float @dx.op.binary.f32(i32 35, float %9003, float %9004)  ; FMax(a,b)
  %9021 = call float @dx.op.binary.f32(i32 36, float %9020, float %9005)  ; FMin(a,b)
  %9022 = call float @dx.op.binary.f32(i32 36, float %9003, float %9004)  ; FMin(a,b)
  %9023 = call float @dx.op.binary.f32(i32 35, float %9022, float %9021)  ; FMax(a,b)
  %9024 = call float @dx.op.binary.f32(i32 35, float %9004, float %9005)  ; FMax(a,b)
  %9025 = call float @dx.op.binary.f32(i32 35, float %9003, float %9024)  ; FMax(a,b)
  store float %9019, float* %8937, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  store float %9023, float* %8938, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  store float %9025, float* %8939, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %9026 = sub nsw i32 3, %9009
  %9027 = icmp sgt i32 %9026, 2
  br i1 %9027, label %9028, label %9066

; <label>:9028                                    ; preds = %9002
  %9029 = icmp eq i32 %8797, 0
  %9030 = fsub fast float %8847, %8931
  %9031 = select i1 %9029, float %9030, float %8931
  %9032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.CBufRet.f32 %9032, 1
  %9035 = extractvalue %dx.types.CBufRet.f32 %9032, 2
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9040 = extractvalue %dx.types.CBufRet.f32 %9036, 3
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 3
  %9043 = call float @dx.op.binary.f32(i32 36, float %8932, float %9042)  ; FMin(a,b)
  %9044 = fmul fast float %9040, %9031
  %9045 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9046 = fsub fast float %9037, %9033
  %9047 = fsub fast float %9038, %9034
  %9048 = fsub fast float %9039, %9035
  %9049 = fmul fast float %9045, %9046
  %9050 = fmul fast float %9045, %9047
  %9051 = fmul fast float %9045, %9048
  %9052 = fadd fast float %9049, %9033
  %9053 = fadd fast float %9050, %9034
  %9054 = fadd fast float %9051, %9035
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 0
  %9057 = extractvalue %dx.types.CBufRet.f32 %9055, 1
  %9058 = fadd fast float %9057, %9056
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9055, 2
  %9061 = extractvalue %dx.types.CBufRet.f32 %9055, 3
  %9062 = fadd fast float %9061, %9060
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fmul fast float %9059, %9043
  %9065 = fmul fast float %9064, %9063
  br label %9148

; <label>:9066                                    ; preds = %9002
  %9067 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9026
  %9068 = load float, float* %9067, align 4, !tbaa !121, !noalias !135
  %9069 = fcmp fast olt float %9068, %8933
  %9070 = icmp sgt i32 %9009, 0
  %9071 = and i1 %9070, %9069
  br i1 %9071, label %9072, label %9109

; <label>:9072                                    ; preds = %9066
  br label %9073

; <label>:9073                                    ; preds = %9102, %9072
  %9074 = phi float [ %9103, %9102 ], [ %8931, %9072 ]
  %9075 = phi float [ %9104, %9102 ], [ %8932, %9072 ]
  %9076 = phi float [ %9084, %9102 ], [ %9068, %9072 ]
  %9077 = phi i32 [ %9081, %9102 ], [ %9026, %9072 ]
  %9078 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9077
  %9079 = load float, float* %9078, align 4, !tbaa !121, !noalias !135
  %9080 = icmp slt i32 %9077, 2
  %9081 = add nsw i32 %9077, 1
  %9082 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9081
  %9083 = load float, float* %9082, align 4, !tbaa !121, !noalias !135
  %9084 = select i1 %9080, float %9083, float %8847
  %9085 = call float @dx.op.binary.f32(i32 36, float %9084, float %9079)  ; FMin(a,b)
  %9086 = call float @dx.op.binary.f32(i32 36, float %8933, float %9085)  ; FMin(a,b)
  %9087 = icmp eq i32 %8797, 0
  %9088 = fadd fast float %9086, %9076
  %9089 = fmul fast float %9088, %8778
  %9090 = fadd fast float %9089, %8791
  br i1 %9087, label %9096, label %9091

; <label>:9091                                    ; preds = %9073
  %9092 = fsub fast float %9086, %9076
  %9093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9092)  ; FMax(a,b)
  %9094 = fmul fast float %9093, %9090
  %9095 = fadd fast float %9094, %9075
  br label %9102

; <label>:9096                                    ; preds = %9073
  %9097 = fsub fast float %9076, %9086
  %9098 = call float @dx.op.unary.f32(i32 6, float %9097)  ; FAbs(value)
  %9099 = fadd fast float %9098, %9074
  %9100 = fmul fast float %9098, %9090
  %9101 = fsub fast float %9075, %9100
  br label %9102

; <label>:9102                                    ; preds = %9096, %9091
  %9103 = phi float [ %9093, %9091 ], [ %9099, %9096 ]
  %9104 = phi float [ %9095, %9091 ], [ %9101, %9096 ]
  %9105 = fcmp fast olt float %9084, %8933
  %9106 = icmp slt i32 %9081, 3
  %9107 = and i1 %9106, %9105
  br i1 %9107, label %9073, label %9108

; <label>:9108                                    ; preds = %9102
  br label %9109

; <label>:9109                                    ; preds = %9108, %9066
  %9110 = phi float [ %8931, %9066 ], [ %9103, %9108 ]
  %9111 = phi float [ %8932, %9066 ], [ %9104, %9108 ]
  %9112 = fsub fast float %8847, %9110
  %9113 = select i1 %8849, float %9110, float %9112
  %9114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.f32 %9114, 0
  %9116 = extractvalue %dx.types.CBufRet.f32 %9114, 1
  %9117 = extractvalue %dx.types.CBufRet.f32 %9114, 2
  %9118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.f32 %9118, 0
  %9120 = extractvalue %dx.types.CBufRet.f32 %9118, 1
  %9121 = extractvalue %dx.types.CBufRet.f32 %9118, 2
  %9122 = extractvalue %dx.types.CBufRet.f32 %9118, 3
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 3
  %9125 = call float @dx.op.binary.f32(i32 36, float %9111, float %9124)  ; FMin(a,b)
  %9126 = fmul fast float %9122, %9113
  %9127 = call float @dx.op.unary.f32(i32 7, float %9126)  ; Saturate(value)
  %9128 = fsub fast float %9119, %9115
  %9129 = fsub fast float %9120, %9116
  %9130 = fsub fast float %9121, %9117
  %9131 = fmul fast float %9127, %9128
  %9132 = fmul fast float %9127, %9129
  %9133 = fmul fast float %9127, %9130
  %9134 = fadd fast float %9131, %9115
  %9135 = fadd fast float %9132, %9116
  %9136 = fadd fast float %9133, %9117
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9140 = fadd fast float %9139, %9138
  %9141 = call float @dx.op.unary.f32(i32 7, float %9140)  ; Saturate(value)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9137, 2
  %9143 = extractvalue %dx.types.CBufRet.f32 %9137, 3
  %9144 = fadd fast float %9143, %9142
  %9145 = call float @dx.op.unary.f32(i32 7, float %9144)  ; Saturate(value)
  %9146 = fmul fast float %9141, %9125
  %9147 = fmul fast float %9146, %9145
  br label %9148

; <label>:9148                                    ; preds = %9109, %9028, %8863, %8845, %8843
  %9149 = phi float [ %8872, %8863 ], [ %9031, %9028 ], [ %9113, %9109 ], [ 0.000000e+00, %8843 ], [ 0.000000e+00, %8845 ]
  %9150 = phi float [ %8906, %8863 ], [ %9065, %9028 ], [ %9147, %9109 ], [ 0.000000e+00, %8843 ], [ 0.000000e+00, %8845 ]
  %9151 = phi float [ %8893, %8863 ], [ %9052, %9028 ], [ %9134, %9109 ], [ 0.000000e+00, %8843 ], [ 0.000000e+00, %8845 ]
  %9152 = phi float [ %8894, %8863 ], [ %9053, %9028 ], [ %9135, %9109 ], [ 0.000000e+00, %8843 ], [ 0.000000e+00, %8845 ]
  %9153 = phi float [ %8895, %8863 ], [ %9054, %9028 ], [ %9136, %9109 ], [ 0.000000e+00, %8843 ], [ 0.000000e+00, %8845 ]
  %9154 = fmul fast float %8786, %9150
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9157 = fsub fast float %8793, %9156
  %9158 = fcmp fast olt float %9154, -2.000000e+01
  %9159 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9162 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9165 = fmul fast float %9162, %9157
  %9166 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  %9167 = fsub fast float 1.000000e+00, %9166
  %9168 = fmul fast float %8778, 5.000000e-01
  %9169 = fadd fast float %9168, 5.000000e-01
  %9170 = call float @dx.op.unary.f32(i32 7, float %9169)  ; Saturate(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9167)  ; FMax(a,b)
  %9173 = fdiv fast float %9171, %9172
  %9174 = fsub fast float %9157, %8735
  %9175 = call float @dx.op.unary.f32(i32 6, float %9174)  ; FAbs(value)
  %9176 = fmul fast float %9175, %9161
  %9177 = call float @dx.op.unary.f32(i32 7, float %9173)  ; Saturate(value)
  %9178 = fsub fast float 1.000000e+00, %9176
  %9179 = fmul fast float %9178, %9177
  %9180 = fadd fast float %9179, %9176
  %9181 = fmul fast float %9164, %9157
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fsub fast float 1.000000e+00, %9180
  %9184 = fmul fast float %9183, %9182
  %9185 = fadd fast float %9184, %9180
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = fadd fast float %9159, -1.000000e+00
  %9188 = select i1 %9158, float -1.000000e+00, float %9187
  %9189 = fmul fast float %9186, %9188
  %9190 = fadd fast float %9189, 1.000000e+00
  %9191 = fsub fast float -0.000000e+00, %9189
  %9192 = fmul fast float %9151, %9191
  %9193 = fmul fast float %9152, %9191
  %9194 = fmul fast float %9153, %9191
  br label %9195

; <label>:9195                                    ; preds = %9148, %8744
  %9196 = phi float [ %9149, %9148 ], [ 0.000000e+00, %8744 ]
  %9197 = phi float [ %9190, %9148 ], [ 1.000000e+00, %8744 ]
  %9198 = phi float [ %9192, %9148 ], [ 0.000000e+00, %8744 ]
  %9199 = phi float [ %9193, %9148 ], [ 0.000000e+00, %8744 ]
  %9200 = phi float [ %9194, %9148 ], [ 0.000000e+00, %8744 ]
  %9201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9202 = extractvalue %dx.types.CBufRet.f32 %9201, 1
  %9203 = fsub fast float 1.000000e+00, %9197
  %9204 = fmul fast float %9203, %8779
  %9205 = fmul fast float %9204, %9202
  %9206 = fsub fast float %8779, %9205
  br i1 %8772, label %9207, label %9236, !dx.controlflow.hints !171

; <label>:9207                                    ; preds = %9195
  %9208 = fmul fast float %8780, %8769
  %9209 = fadd fast float %9208, %8770
  %9210 = call float @dx.op.unary.f32(i32 7, float %9209)  ; Saturate(value)
  %9211 = fmul fast float %8751, %9206
  %9212 = fsub fast float -0.000000e+00, %9211
  %9213 = fmul fast float %8752, %9206
  %9214 = fsub fast float -0.000000e+00, %9213
  %9215 = call float @dx.op.unary.f32(i32 21, float %9212)  ; Exp(value)
  %9216 = call float @dx.op.unary.f32(i32 21, float %9214)  ; Exp(value)
  %9217 = call float @dx.op.binary.f32(i32 35, float %8759, float %9215)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float %8759, float %9216)  ; FMax(a,b)
  %9219 = fsub fast float %9218, %9217
  %9220 = fmul fast float %9219, %9210
  %9221 = fadd fast float %9220, %9217
  %9222 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9223 = fsub fast float %8756, %8761
  %9224 = fsub fast float %8757, %8762
  %9225 = fsub fast float %8758, %8763
  %9226 = fmul fast float %9210, %9223
  %9227 = fmul fast float %9210, %9224
  %9228 = fmul fast float %9210, %9225
  %9229 = fadd fast float %9226, %8761
  %9230 = fadd fast float %9227, %8762
  %9231 = fadd fast float %9228, %8763
  %9232 = fsub fast float 1.000000e+00, %9222
  %9233 = fmul fast float %9232, %9229
  %9234 = fmul fast float %9232, %9230
  %9235 = fmul fast float %9232, %9231
  br label %9295

; <label>:9236                                    ; preds = %9195
  %9237 = fmul fast float %9206, %8768
  %9238 = call float @dx.op.unary.f32(i32 7, float %9237)  ; Saturate(value)
  %9239 = fsub fast float 2.000000e+00, %9238
  %9240 = fmul fast float %9238, 9.921875e-01
  %9241 = fmul fast float %9240, %9239
  %9242 = fadd fast float %9241, 3.906250e-03
  %9243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9242, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9244 = extractvalue %dx.types.ResRet.f32 %9243, 0
  %9245 = fsub fast float %9238, %9244
  %9246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9245)  ; FMax(a,b)
  %9247 = fmul fast float %8754, %8735
  %9248 = call float @dx.op.unary.f32(i32 6, float %9247)  ; FAbs(value)
  %9249 = fcmp fast ogt float %9248, 0x3EB0C6F7A0000000
  br i1 %9249, label %9250, label %9256, !dx.controlflow.hints !172

; <label>:9250                                    ; preds = %9236
  %9251 = fmul fast float %9247, 0xBFF7154760000000
  %9252 = call float @dx.op.unary.f32(i32 21, float %9251)  ; Exp(value)
  %9253 = fsub fast float 1.000000e+00, %9252
  %9254 = fdiv fast float %9253, %9247
  %9255 = fmul fast float %9254, %8764
  br label %9256

; <label>:9256                                    ; preds = %9250, %9236
  %9257 = phi float [ %9255, %9250 ], [ %8764, %9236 ]
  %9258 = fadd fast float %9257, %8766
  %9259 = fmul fast float %9258, %9246
  %9260 = fmul fast float %8751, %9259
  %9261 = fsub fast float -0.000000e+00, %9260
  %9262 = fmul fast float %8752, %9259
  %9263 = fsub fast float -0.000000e+00, %9262
  %9264 = fmul fast float %8753, %9259
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = call float @dx.op.unary.f32(i32 21, float %9261)  ; Exp(value)
  %9267 = call float @dx.op.unary.f32(i32 21, float %9263)  ; Exp(value)
  %9268 = call float @dx.op.unary.f32(i32 21, float %9265)  ; Exp(value)
  %9269 = fmul fast float %8780, %8780
  %9270 = fadd fast float %9269, 1.000000e+00
  %9271 = fmul fast float %9270, 0x3FAE8EC8A0000000
  %9272 = fmul fast float %9271, %8761
  %9273 = fmul fast float %9271, %8762
  %9274 = fmul fast float %9271, %8763
  %9275 = fmul fast float %8780, %8759
  %9276 = fsub fast float 1.000000e+00, %9275
  %9277 = fmul fast float %8759, %8759
  %9278 = fsub fast float 1.000000e+00, %9277
  %9279 = fmul fast float %9278, 0x3FB45F3060000000
  %9280 = fmul fast float %9276, %9276
  %9281 = fdiv fast float 1.000000e+00, %9280
  %9282 = fmul fast float %9279, %9281
  %9283 = fmul fast float %9282, %8756
  %9284 = fmul fast float %9282, %8757
  %9285 = fmul fast float %9282, %8758
  %9286 = fadd fast float %9283, %9272
  %9287 = fadd fast float %9284, %9273
  %9288 = fadd fast float %9285, %9274
  %9289 = fsub fast float 1.000000e+00, %9266
  %9290 = fsub fast float 1.000000e+00, %9267
  %9291 = fsub fast float 1.000000e+00, %9268
  %9292 = fmul fast float %9286, %9289
  %9293 = fmul fast float %9287, %9290
  %9294 = fmul fast float %9288, %9291
  br label %9295

; <label>:9295                                    ; preds = %9256, %9207
  %9296 = phi float [ %9233, %9207 ], [ %9292, %9256 ]
  %9297 = phi float [ %9234, %9207 ], [ %9293, %9256 ]
  %9298 = phi float [ %9235, %9207 ], [ %9294, %9256 ]
  %9299 = phi float [ %9222, %9207 ], [ %9266, %9256 ]
  %9300 = phi float [ %9222, %9207 ], [ %9267, %9256 ]
  %9301 = phi float [ %9222, %9207 ], [ %9268, %9256 ]
  br i1 %8788, label %9302, label %9500, !dx.controlflow.hints !173

; <label>:9302                                    ; preds = %9295
  %9303 = extractvalue %dx.types.CBufRet.f32 %9201, 0
  %9304 = fmul fast float %9303, %9203
  %9305 = fsub fast float %9198, %9296
  %9306 = fsub fast float %9199, %9297
  %9307 = fsub fast float %9200, %9298
  %9308 = fmul fast float %9304, %9305
  %9309 = fmul fast float %9304, %9306
  %9310 = fmul fast float %9304, %9307
  %9311 = fadd fast float %9308, %9296
  %9312 = fadd fast float %9309, %9297
  %9313 = fadd fast float %9310, %9298
  %9314 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9299)  ; FMax(a,b)
  %9315 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9300)  ; FMax(a,b)
  %9316 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9301)  ; FMax(a,b)
  %9317 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9197)  ; FMax(a,b)
  %9318 = call float @dx.op.binary.f32(i32 35, float %9196, float %9206)  ; FMax(a,b)
  %9319 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9318)  ; FMax(a,b)
  %9320 = fdiv fast float %9196, %9319
  %9321 = call float @dx.op.unary.f32(i32 7, float %9320)  ; Saturate(value)
  %9322 = fdiv fast float %9206, %9319
  %9323 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9324 = fcmp fast une float %9317, 1.000000e+00
  br i1 %9324, label %9325, label %9338, !dx.controlflow.hints !174

; <label>:9325                                    ; preds = %9302
  %9326 = call float @dx.op.unary.f32(i32 23, float %9317)  ; Log(value)
  %9327 = fmul fast float %9326, 0x3FE62E4300000000
  %9328 = fmul fast float %9198, %9327
  %9329 = fsub fast float -0.000000e+00, %9328
  %9330 = fmul fast float %9199, %9327
  %9331 = fsub fast float -0.000000e+00, %9330
  %9332 = fmul fast float %9200, %9327
  %9333 = fsub fast float -0.000000e+00, %9332
  %9334 = fsub fast float 1.000000e+00, %9317
  %9335 = fdiv fast float %9329, %9334
  %9336 = fdiv fast float %9331, %9334
  %9337 = fdiv fast float %9333, %9334
  br label %9338

; <label>:9338                                    ; preds = %9325, %9302
  %9339 = phi float [ %9335, %9325 ], [ %9198, %9302 ]
  %9340 = phi float [ %9336, %9325 ], [ %9199, %9302 ]
  %9341 = phi float [ %9337, %9325 ], [ %9200, %9302 ]
  %9342 = phi float [ %9327, %9325 ], [ 0.000000e+00, %9302 ]
  %9343 = fcmp fast une float %9314, 1.000000e+00
  br i1 %9343, label %9344, label %9351, !dx.controlflow.hints !175

; <label>:9344                                    ; preds = %9338
  %9345 = call float @dx.op.unary.f32(i32 23, float %9314)  ; Log(value)
  %9346 = fmul fast float %9345, 0x3FE62E4300000000
  %9347 = fmul fast float %9311, %9346
  %9348 = fsub fast float -0.000000e+00, %9347
  %9349 = fsub fast float 1.000000e+00, %9314
  %9350 = fdiv fast float %9348, %9349
  br label %9351

; <label>:9351                                    ; preds = %9344, %9338
  %9352 = phi float [ %9350, %9344 ], [ %9311, %9338 ]
  %9353 = phi float [ %9346, %9344 ], [ 0.000000e+00, %9338 ]
  %9354 = fcmp fast une float %9315, 1.000000e+00
  br i1 %9354, label %9355, label %9362, !dx.controlflow.hints !175

; <label>:9355                                    ; preds = %9351
  %9356 = call float @dx.op.unary.f32(i32 23, float %9315)  ; Log(value)
  %9357 = fmul fast float %9356, 0x3FE62E4300000000
  %9358 = fmul fast float %9312, %9357
  %9359 = fsub fast float -0.000000e+00, %9358
  %9360 = fsub fast float 1.000000e+00, %9315
  %9361 = fdiv fast float %9359, %9360
  br label %9362

; <label>:9362                                    ; preds = %9355, %9351
  %9363 = phi float [ %9361, %9355 ], [ %9312, %9351 ]
  %9364 = phi float [ %9357, %9355 ], [ 0.000000e+00, %9351 ]
  %9365 = fcmp fast une float %9316, 1.000000e+00
  br i1 %9365, label %9366, label %9373, !dx.controlflow.hints !175

; <label>:9366                                    ; preds = %9362
  %9367 = call float @dx.op.unary.f32(i32 23, float %9316)  ; Log(value)
  %9368 = fmul fast float %9367, 0x3FE62E4300000000
  %9369 = fmul fast float %9313, %9368
  %9370 = fsub fast float -0.000000e+00, %9369
  %9371 = fsub fast float 1.000000e+00, %9316
  %9372 = fdiv fast float %9370, %9371
  br label %9373

; <label>:9373                                    ; preds = %9366, %9362
  %9374 = phi float [ %9372, %9366 ], [ %9313, %9362 ]
  %9375 = phi float [ %9368, %9366 ], [ 0.000000e+00, %9362 ]
  %9376 = fmul fast float %9339, %9323
  %9377 = fmul fast float %9340, %9323
  %9378 = fmul fast float %9341, %9323
  %9379 = fmul fast float %9342, %9323
  %9380 = fmul fast float %9352, %9321
  %9381 = fmul fast float %9363, %9321
  %9382 = fmul fast float %9374, %9321
  %9383 = fmul fast float %9353, %9321
  %9384 = fmul fast float %9364, %9321
  %9385 = fmul fast float %9375, %9321
  %9386 = fadd fast float %9380, %9376
  %9387 = fadd fast float %9381, %9377
  %9388 = fadd fast float %9382, %9378
  %9389 = fadd fast float %9383, %9379
  %9390 = fadd fast float %9384, %9379
  %9391 = fadd fast float %9385, %9379
  %9392 = fcmp fast une float %9389, 0.000000e+00
  br i1 %9392, label %9393, label %9400, !dx.controlflow.hints !176

; <label>:9393                                    ; preds = %9373
  %9394 = fmul fast float %9389, 0x3FF7154760000000
  %9395 = call float @dx.op.unary.f32(i32 21, float %9394)  ; Exp(value)
  %9396 = fsub fast float 1.000000e+00, %9395
  %9397 = fmul fast float %9386, %9396
  %9398 = fsub fast float -0.000000e+00, %9397
  %9399 = fdiv fast float %9398, %9389
  br label %9400

; <label>:9400                                    ; preds = %9393, %9373
  %9401 = phi float [ %9395, %9393 ], [ 1.000000e+00, %9373 ]
  %9402 = phi float [ %9399, %9393 ], [ %9386, %9373 ]
  %9403 = fcmp fast une float %9390, 0.000000e+00
  br i1 %9403, label %9404, label %9411, !dx.controlflow.hints !176

; <label>:9404                                    ; preds = %9400
  %9405 = fmul fast float %9390, 0x3FF7154760000000
  %9406 = call float @dx.op.unary.f32(i32 21, float %9405)  ; Exp(value)
  %9407 = fsub fast float 1.000000e+00, %9406
  %9408 = fmul fast float %9387, %9407
  %9409 = fsub fast float -0.000000e+00, %9408
  %9410 = fdiv fast float %9409, %9390
  br label %9411

; <label>:9411                                    ; preds = %9404, %9400
  %9412 = phi float [ %9406, %9404 ], [ 1.000000e+00, %9400 ]
  %9413 = phi float [ %9410, %9404 ], [ %9387, %9400 ]
  %9414 = fcmp fast une float %9391, 0.000000e+00
  br i1 %9414, label %9415, label %9422, !dx.controlflow.hints !176

; <label>:9415                                    ; preds = %9411
  %9416 = fmul fast float %9391, 0x3FF7154760000000
  %9417 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fmul fast float %9388, %9418
  %9420 = fsub fast float -0.000000e+00, %9419
  %9421 = fdiv fast float %9420, %9391
  br label %9422

; <label>:9422                                    ; preds = %9415, %9411
  %9423 = phi float [ %9417, %9415 ], [ 1.000000e+00, %9411 ]
  %9424 = phi float [ %9421, %9415 ], [ %9388, %9411 ]
  %9425 = fcmp fast ogt float %9321, %9323
  br i1 %9425, label %9426, label %9446

; <label>:9426                                    ; preds = %9422
  %9427 = fsub fast float 1.000000e+00, %9323
  %9428 = fmul fast float %9339, %9427
  %9429 = fmul fast float %9340, %9427
  %9430 = fmul fast float %9341, %9427
  %9431 = fmul fast float %9342, %9427
  %9432 = fcmp fast une float %9431, 0.000000e+00
  br i1 %9432, label %9433, label %9484, !dx.controlflow.hints !177

; <label>:9433                                    ; preds = %9426
  %9434 = fmul fast float %9431, 0x3FF7154760000000
  %9435 = call float @dx.op.unary.f32(i32 21, float %9434)  ; Exp(value)
  %9436 = fsub fast float 1.000000e+00, %9435
  %9437 = fmul fast float %9428, %9436
  %9438 = fsub fast float -0.000000e+00, %9437
  %9439 = fmul fast float %9429, %9436
  %9440 = fsub fast float -0.000000e+00, %9439
  %9441 = fmul fast float %9430, %9436
  %9442 = fsub fast float -0.000000e+00, %9441
  %9443 = fdiv fast float %9438, %9431
  %9444 = fdiv fast float %9440, %9431
  %9445 = fdiv fast float %9442, %9431
  br label %9484

; <label>:9446                                    ; preds = %9422
  %9447 = fsub fast float 1.000000e+00, %9321
  %9448 = fmul fast float %9352, %9447
  %9449 = fmul fast float %9363, %9447
  %9450 = fmul fast float %9374, %9447
  %9451 = fmul fast float %9353, %9447
  %9452 = fmul fast float %9364, %9447
  %9453 = fmul fast float %9375, %9447
  %9454 = fcmp fast une float %9451, 0.000000e+00
  br i1 %9454, label %9455, label %9462, !dx.controlflow.hints !176

; <label>:9455                                    ; preds = %9446
  %9456 = fmul fast float %9451, 0x3FF7154760000000
  %9457 = call float @dx.op.unary.f32(i32 21, float %9456)  ; Exp(value)
  %9458 = fsub fast float 1.000000e+00, %9457
  %9459 = fmul fast float %9448, %9458
  %9460 = fsub fast float -0.000000e+00, %9459
  %9461 = fdiv fast float %9460, %9451
  br label %9462

; <label>:9462                                    ; preds = %9455, %9446
  %9463 = phi float [ %9461, %9455 ], [ %9448, %9446 ]
  %9464 = phi float [ %9457, %9455 ], [ 1.000000e+00, %9446 ]
  %9465 = fcmp fast une float %9452, 0.000000e+00
  br i1 %9465, label %9466, label %9473, !dx.controlflow.hints !176

; <label>:9466                                    ; preds = %9462
  %9467 = fmul fast float %9452, 0x3FF7154760000000
  %9468 = call float @dx.op.unary.f32(i32 21, float %9467)  ; Exp(value)
  %9469 = fsub fast float 1.000000e+00, %9468
  %9470 = fmul fast float %9449, %9469
  %9471 = fsub fast float -0.000000e+00, %9470
  %9472 = fdiv fast float %9471, %9452
  br label %9473

; <label>:9473                                    ; preds = %9466, %9462
  %9474 = phi float [ %9472, %9466 ], [ %9449, %9462 ]
  %9475 = phi float [ %9468, %9466 ], [ 1.000000e+00, %9462 ]
  %9476 = fcmp fast une float %9453, 0.000000e+00
  br i1 %9476, label %9477, label %9484, !dx.controlflow.hints !176

; <label>:9477                                    ; preds = %9473
  %9478 = fmul fast float %9453, 0x3FF7154760000000
  %9479 = call float @dx.op.unary.f32(i32 21, float %9478)  ; Exp(value)
  %9480 = fsub fast float 1.000000e+00, %9479
  %9481 = fmul fast float %9450, %9480
  %9482 = fsub fast float -0.000000e+00, %9481
  %9483 = fdiv fast float %9482, %9453
  br label %9484

; <label>:9484                                    ; preds = %9477, %9473, %9433, %9426
  %9485 = phi float [ %9483, %9477 ], [ %9445, %9433 ], [ %9430, %9426 ], [ %9450, %9473 ]
  %9486 = phi float [ %9474, %9477 ], [ %9444, %9433 ], [ %9429, %9426 ], [ %9474, %9473 ]
  %9487 = phi float [ %9463, %9477 ], [ %9443, %9433 ], [ %9428, %9426 ], [ %9463, %9473 ]
  %9488 = phi float [ %9479, %9477 ], [ %9435, %9433 ], [ 1.000000e+00, %9426 ], [ 1.000000e+00, %9473 ]
  %9489 = phi float [ %9475, %9477 ], [ %9435, %9433 ], [ 1.000000e+00, %9426 ], [ %9475, %9473 ]
  %9490 = phi float [ %9464, %9477 ], [ %9435, %9433 ], [ 1.000000e+00, %9426 ], [ %9464, %9473 ]
  %9491 = fmul fast float %9490, %9402
  %9492 = fmul fast float %9489, %9413
  %9493 = fmul fast float %9488, %9424
  %9494 = fadd fast float %9491, %9487
  %9495 = fadd fast float %9492, %9486
  %9496 = fadd fast float %9493, %9485
  %9497 = fmul fast float %9490, %9401
  %9498 = fmul fast float %9489, %9412
  %9499 = fmul fast float %9488, %9423
  br label %9500

; <label>:9500                                    ; preds = %9484, %9295
  %9501 = phi float [ %9499, %9484 ], [ %9301, %9295 ]
  %9502 = phi float [ %9498, %9484 ], [ %9300, %9295 ]
  %9503 = phi float [ %9497, %9484 ], [ %9299, %9295 ]
  %9504 = phi float [ %9496, %9484 ], [ %9298, %9295 ]
  %9505 = phi float [ %9495, %9484 ], [ %9297, %9295 ]
  %9506 = phi float [ %9494, %9484 ], [ %9296, %9295 ]
  %9507 = fmul fast float %9506, %8448
  %9508 = fmul fast float %9505, %8450
  %9509 = fmul fast float %9504, %8452
  %9510 = fmul fast float %9503, %8743
  %9511 = call float @dx.op.dot3.f32(i32 55, float %9503, float %9502, float %9501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9512 = call float @dx.op.dot3.f32(i32 55, float %9507, float %9508, float %9509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9513 = select i1 %229, float %9511, float %9503
  %9514 = select i1 %229, float %9511, float %9502
  %9515 = select i1 %229, float 1.000000e+00, float %9501
  %9516 = select i1 %229, float %9512, float %9507
  %9517 = select i1 %229, float 0.000000e+00, float %9508
  %9518 = select i1 %229, float 0.000000e+00, float %9509
  %9519 = fmul fast float %9513, %8737
  %9520 = fmul fast float %9514, %8738
  %9521 = fmul fast float %9515, %8739
  %9522 = fadd fast float %9519, %9516
  %9523 = fadd fast float %9520, %9517
  %9524 = fadd fast float %9518, %9521
  %9525 = fmul fast float %9513, %8740
  %9526 = fmul fast float %9514, %8741
  %9527 = fmul fast float %9515, %8742
  %9528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.i32 %9528, 0
  %9530 = icmp eq i32 %9529, 0
  br i1 %9530, label %9898, label %9531, !dx.controlflow.hints !178

; <label>:9531                                    ; preds = %9500
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 2
  %9534 = extractvalue %dx.types.CBufRet.f32 %9532, 3
  %9535 = fmul fast float %9533, %104
  %9536 = fmul fast float %9534, %105
  %9537 = fmul fast float %9535, 2.000000e+00
  %9538 = fmul fast float %9536, 2.000000e+00
  %9539 = fsub fast float 1.000000e+00, %9537
  %9540 = fsub fast float 1.000000e+00, %9538
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 0
  %9543 = extractvalue %dx.types.CBufRet.f32 %9541, 1
  %9544 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9545 = fmul fast float %9539, %9542
  %9546 = fmul fast float %9539, %9543
  %9547 = fmul fast float %9539, %9544
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.CBufRet.f32 %9548, 2
  %9552 = fmul fast float %9540, %9549
  %9553 = fmul fast float %9540, %9550
  %9554 = fmul fast float %9540, %9551
  %9555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.f32 %9555, 0
  %9557 = extractvalue %dx.types.CBufRet.f32 %9555, 1
  %9558 = extractvalue %dx.types.CBufRet.f32 %9555, 2
  %9559 = fadd fast float %9552, %9556
  %9560 = fadd fast float %9559, %9545
  %9561 = fadd fast float %9553, %9557
  %9562 = fadd fast float %9561, %9546
  %9563 = fadd fast float %9554, %9558
  %9564 = fadd fast float %9563, %9547
  %9565 = fmul fast float %9560, %8736
  %9566 = fmul fast float %9562, %8736
  %9567 = fmul fast float %9564, %8736
  %9568 = fmul fast float %9565, %9565
  %9569 = fmul fast float %9566, %9566
  %9570 = fadd fast float %9568, %9569
  %9571 = fmul fast float %9567, %9567
  %9572 = fadd fast float %9570, %9571
  %9573 = call float @dx.op.unary.f32(i32 24, float %9572)  ; Sqrt(value)
  %9574 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %9575 = fsub fast float %9573, %9574
  %9576 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %9577 = fmul fast float %9575, %9576
  %9578 = call float @dx.op.unary.f32(i32 7, float %9577)  ; Saturate(value)
  %9579 = fadd fast float %9578, -5.000000e-01
  %9580 = fmul fast float %9579, 2.000000e+00
  %9581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.f32 %9581, 2
  %9583 = call float @dx.op.binary.f32(i32 36, float %9582, float %9580)  ; FMin(a,b)
  %9584 = fsub fast float -0.000000e+00, %9582
  %9585 = fcmp fast ogt float %9583, %9584
  br i1 %9585, label %9586, label %9898, !dx.controlflow.hints !179

; <label>:9586                                    ; preds = %9531
  %9587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9588 = extractvalue %dx.types.CBufRet.f32 %9587, 3
  %9589 = fcmp fast ogt float %9588, 0.000000e+00
  br i1 %9589, label %9590, label %9665, !dx.controlflow.hints !180

; <label>:9590                                    ; preds = %9586
  %9591 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9592 = extractvalue %dx.types.Dimensions %9591, 0
  %9593 = sitofp i32 %9592 to float
  %9594 = extractvalue %dx.types.Dimensions %9591, 1
  %9595 = sitofp i32 %9594 to float
  %9596 = fmul fast float %9535, %9593
  %9597 = fmul fast float %9536, %9595
  %9598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9599 = extractvalue %dx.types.CBufRet.f32 %9598, 1
  %9600 = fsub fast float -0.000000e+00, %9599
  %9601 = fptoui float %9600 to i32
  %9602 = fptoui float %9596 to i32
  %9603 = fptoui float %9597 to i32
  %9604 = and i32 %9601, 31
  %9605 = lshr i32 %9602, %9604
  %9606 = lshr i32 %9603, %9604
  %9607 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9601, i32 %9605, i32 %9606, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9608 = extractvalue %dx.types.ResRet.f32 %9607, 0
  %9609 = fcmp fast olt float %9608, -1.000000e+00
  %9610 = fcmp fast ogt float %9608, -1.000000e+00
  %9611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9612 = extractvalue %dx.types.CBufRet.f32 %9611, 1
  %9613 = select i1 %9610, float %9612, float 1.000000e+00
  %9614 = fadd fast float %9608, 1.000000e+00
  %9615 = fmul fast float %9613, %9614
  %9616 = call float @dx.op.unary.f32(i32 6, float %9615)  ; FAbs(value)
  %9617 = extractvalue %dx.types.CBufRet.f32 %9611, 3
  %9618 = fcmp fast oge float %9616, %9617
  %9619 = select i1 %9618, float 0x4197782600000000, float %9616
  %9620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9621 = extractvalue %dx.types.CBufRet.f32 %9620, 0
  %9622 = extractvalue %dx.types.CBufRet.f32 %9620, 1
  %9623 = extractvalue %dx.types.CBufRet.f32 %9620, 2
  %9624 = select i1 %9609, float %9621, float %9542
  %9625 = select i1 %9609, float %9622, float %9543
  %9626 = select i1 %9609, float %9623, float %9544
  %9627 = fmul fast float %9624, %9539
  %9628 = fmul fast float %9625, %9539
  %9629 = fmul fast float %9626, %9539
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = extractvalue %dx.types.CBufRet.f32 %9630, 1
  %9633 = extractvalue %dx.types.CBufRet.f32 %9630, 2
  %9634 = select i1 %9609, float %9631, float %9549
  %9635 = select i1 %9609, float %9632, float %9550
  %9636 = select i1 %9609, float %9633, float %9551
  %9637 = fmul fast float %9634, %9540
  %9638 = fmul fast float %9635, %9540
  %9639 = fmul fast float %9636, %9540
  %9640 = fadd fast float %9637, %9627
  %9641 = fadd fast float %9638, %9628
  %9642 = fadd fast float %9639, %9629
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 0
  %9645 = extractvalue %dx.types.CBufRet.f32 %9643, 1
  %9646 = extractvalue %dx.types.CBufRet.f32 %9643, 2
  %9647 = select i1 %9609, float %9644, float %9556
  %9648 = select i1 %9609, float %9645, float %9557
  %9649 = select i1 %9609, float %9646, float %9558
  %9650 = fadd fast float %9640, %9647
  %9651 = fadd fast float %9641, %9648
  %9652 = fadd fast float %9642, %9649
  %9653 = fmul fast float %9650, %9619
  %9654 = fmul fast float %9651, %9619
  %9655 = fmul fast float %9652, %9619
  %9656 = fmul fast float %9653, %9653
  %9657 = fmul fast float %9654, %9654
  %9658 = fadd fast float %9656, %9657
  %9659 = fmul fast float %9655, %9655
  %9660 = fadd fast float %9658, %9659
  %9661 = call float @dx.op.unary.f32(i32 24, float %9660)  ; Sqrt(value)
  %9662 = fsub fast float %9661, %9574
  %9663 = fmul fast float %9662, %9576
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  br label %9665

; <label>:9665                                    ; preds = %9590, %9586
  %9666 = phi float [ %9664, %9590 ], [ 1.000000e+00, %9586 ]
  %9667 = fmul fast float %9583, 5.000000e-01
  %9668 = fadd fast float %9667, 5.000000e-01
  %9669 = call float @dx.op.unary.f32(i32 22, float %9668)  ; Frc(value)
  %9670 = call float @dx.op.unary.f32(i32 27, float %9669)  ; Round_ni(value)
  %9671 = call float @dx.op.unary.f32(i32 22, float %9669)  ; Frc(value)
  %9672 = fmul fast float %9671, 2.000000e+00
  %9673 = fadd fast float %9672, -1.000000e+00
  %9674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9535, float %9536, float %9670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9675 = extractvalue %dx.types.ResRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.ResRet.f32 %9674, 1
  %9677 = extractvalue %dx.types.ResRet.f32 %9674, 2
  %9678 = extractvalue %dx.types.ResRet.f32 %9674, 3
  %9679 = fadd fast float %9675, -5.000000e-01
  %9680 = fadd fast float %9677, -5.000000e-01
  %9681 = fmul fast float %9679, 0xBFD5555560000000
  %9682 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9680, float %9681)  ; FMad(a,b,c)
  %9683 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9676, float 0.000000e+00)  ; FMad(a,b,c)
  %9684 = fadd fast float %9683, %9678
  %9685 = fmul fast float %9679, -7.500000e-01
  %9686 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9680, float %9685)  ; FMad(a,b,c)
  %9687 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9676, float 0.000000e+00)  ; FMad(a,b,c)
  %9688 = fadd fast float %9687, %9678
  %9689 = call float @dx.op.binary.f32(i32 35, float %9682, float -1.000000e+00)  ; FMax(a,b)
  %9690 = call float @dx.op.binary.f32(i32 35, float %9684, float -1.000000e+00)  ; FMax(a,b)
  %9691 = call float @dx.op.binary.f32(i32 35, float %9686, float -1.000000e+00)  ; FMax(a,b)
  %9692 = call float @dx.op.binary.f32(i32 35, float %9688, float -1.000000e+00)  ; FMax(a,b)
  %9693 = call float @dx.op.binary.f32(i32 36, float %9689, float 1.000000e+00)  ; FMin(a,b)
  %9694 = call float @dx.op.binary.f32(i32 36, float %9690, float 1.000000e+00)  ; FMin(a,b)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9691, float 1.000000e+00)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9692, float 1.000000e+00)  ; FMin(a,b)
  %9697 = fcmp fast olt float %9693, 0x3FEFFF8020000000
  br i1 %9697, label %9698, label %9813, !dx.controlflow.hints !181

; <label>:9698                                    ; preds = %9665
  %9699 = extractvalue %dx.types.CBufRet.f32 %9581, 3
  %9700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9700, 0
  %9702 = extractvalue %dx.types.CBufRet.f32 %9700, 1
  %9703 = extractvalue %dx.types.CBufRet.f32 %9700, 2
  %9704 = extractvalue %dx.types.CBufRet.f32 %9700, 3
  %9705 = fsub fast float %9701, %9693
  %9706 = fsub fast float %9702, %9694
  %9707 = fsub fast float %9703, %9695
  %9708 = fsub fast float %9704, %9696
  %9709 = fmul fast float %9705, %9699
  %9710 = fmul fast float %9706, %9699
  %9711 = fmul fast float %9707, %9699
  %9712 = fmul fast float %9708, %9699
  %9713 = fadd fast float %9709, %9693
  %9714 = fadd fast float %9710, %9694
  %9715 = fsub fast float -0.000000e+00, %9714
  %9716 = fadd fast float %9711, %9695
  %9717 = fadd fast float %9712, %9696
  %9718 = fmul fast float %9713, %9713
  %9719 = fsub fast float %9714, %9718
  %9720 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9719)  ; FMax(a,b)
  %9721 = fdiv fast float 1.000000e+00, %9720
  %9722 = fmul fast float %9714, %9713
  %9723 = fsub fast float %9716, %9722
  %9724 = fsub fast float %9673, %9713
  %9725 = fmul fast float %9673, %9673
  %9726 = fsub fast float %9725, %9714
  %9727 = fmul fast float %9724, %9721
  %9728 = fmul fast float %9727, %9723
  %9729 = fsub fast float %9726, %9728
  %9730 = fmul fast float %9714, %9714
  %9731 = fsub fast float %9717, %9730
  %9732 = fmul fast float %9723, %9723
  %9733 = fmul fast float %9732, %9721
  %9734 = fsub fast float %9731, %9733
  %9735 = fdiv fast float %9729, %9734
  %9736 = fmul fast float %9723, %9735
  %9737 = fsub fast float %9724, %9736
  %9738 = fmul fast float %9737, %9721
  %9739 = fmul fast float %9738, %9713
  %9740 = fsub fast float 1.000000e+00, %9739
  %9741 = fmul fast float %9714, %9735
  %9742 = fsub fast float %9740, %9741
  %9743 = fmul fast float %9738, %9738
  %9744 = fmul fast float %9735, 4.000000e+00
  %9745 = fmul fast float %9744, %9742
  %9746 = fsub fast float %9743, %9745
  %9747 = call float @dx.op.unary.f32(i32 24, float %9746)  ; Sqrt(value)
  %9748 = fcmp fast oge float %9738, 0.000000e+00
  %9749 = fsub fast float -0.000000e+00, %9747
  %9750 = select i1 %9748, float %9749, float %9747
  %9751 = fsub fast float %9750, %9738
  %9752 = fdiv fast float %9751, %9735
  %9753 = fdiv fast float %9742, %9751
  %9754 = fmul fast float %9752, 5.000000e-01
  %9755 = fmul fast float %9753, 2.000000e+00
  %9756 = select i1 %9748, float %9754, float %9755
  %9757 = select i1 %9748, float %9755, float %9754
  %9758 = call float @dx.op.binary.f32(i32 35, float %9756, float %9757)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 36, float %9756, float %9757)  ; FMin(a,b)
  %9760 = fcmp fast ogt float %9673, %9759
  br i1 %9760, label %9761, label %9771

; <label>:9761                                    ; preds = %9698
  %9762 = fsub fast float %9673, %9759
  %9763 = fsub fast float %9758, %9759
  %9764 = fmul fast float %9762, %9763
  %9765 = fmul fast float %9758, %9673
  %9766 = fadd fast float %9758, %9673
  %9767 = fmul fast float %9766, %9713
  %9768 = fadd fast float %9765, %9714
  %9769 = fsub fast float %9768, %9767
  %9770 = fdiv fast float %9769, %9764
  br label %9771

; <label>:9771                                    ; preds = %9761, %9698
  %9772 = phi float [ %9770, %9761 ], [ 0.000000e+00, %9698 ]
  %9773 = fcmp fast ogt float %9673, %9758
  %9774 = fsub fast float %9673, %9758
  br i1 %9773, label %9775, label %9785

; <label>:9775                                    ; preds = %9771
  %9776 = fsub fast float %9758, %9759
  %9777 = fmul fast float %9776, %9774
  %9778 = fmul fast float %9759, %9673
  %9779 = fadd fast float %9759, %9673
  %9780 = fmul fast float %9779, %9713
  %9781 = fsub fast float %9715, %9778
  %9782 = fadd fast float %9781, %9780
  %9783 = fdiv fast float %9782, %9777
  %9784 = fadd fast float %9783, %9772
  br label %9785

; <label>:9785                                    ; preds = %9775, %9771
  %9786 = phi float [ %9784, %9775 ], [ %9772, %9771 ]
  %9787 = fsub fast float %9673, %9759
  %9788 = fmul fast float %9787, %9774
  %9789 = fmul fast float %9759, %9758
  %9790 = fadd fast float %9759, %9758
  %9791 = fmul fast float %9790, %9713
  %9792 = fadd fast float %9789, %9714
  %9793 = fsub fast float %9792, %9791
  %9794 = fdiv fast float %9793, %9788
  %9795 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9796 = fcmp fast oeq float %8464, 0.000000e+00
  %9797 = extractvalue %dx.types.CBufRet.f32 %9581, 0
  %9798 = fcmp fast oeq float %9797, 0.000000e+00
  %9799 = or i1 %9796, %9798
  %9800 = fmul fast float %9797, 2.000000e+00
  %9801 = fadd fast float %9582, %9583
  %9802 = fdiv fast float %9801, %9800
  %9803 = call float @dx.op.unary.f32(i32 7, float %9802)  ; Saturate(value)
  %9804 = fmul fast float %9803, 2.000000e+00
  %9805 = fsub fast float 3.000000e+00, %9804
  %9806 = fmul fast float %9803, %9803
  %9807 = fmul fast float %9806, %9805
  %9808 = select i1 %9799, float 1.000000e+00, float %9807
  %9809 = fmul fast float %9794, %8464
  %9810 = fadd fast float %9795, %9809
  %9811 = call float @dx.op.unary.f32(i32 7, float %9810)  ; Saturate(value)
  %9812 = fmul fast float %9808, %9811
  br label %9813

; <label>:9813                                    ; preds = %9785, %9665
  %9814 = phi float [ %9812, %9785 ], [ 0.000000e+00, %9665 ]
  %9815 = fsub fast float 1.000000e+00, %9814
  %9816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9535, float %9536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9817 = extractvalue %dx.types.ResRet.f32 %9816, 0
  %9818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9819 = extractvalue %dx.types.CBufRet.i32 %9818, 2
  %9820 = icmp eq i32 %9819, 0
  br i1 %9820, label %9826, label %9821

; <label>:9821                                    ; preds = %9813
  %9822 = call float @dx.op.unary.f32(i32 7, float %9814)  ; Saturate(value)
  %9823 = fadd fast float %9817, -1.000000e+00
  %9824 = fmul fast float %9822, %9823
  %9825 = fadd fast float %9824, 1.000000e+00
  br label %9826

; <label>:9826                                    ; preds = %9821, %9813
  %9827 = phi float [ %9825, %9821 ], [ %9815, %9813 ]
  br i1 %9589, label %9828, label %9846

; <label>:9828                                    ; preds = %9826
  %9829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9830 = extractvalue %dx.types.CBufRet.f32 %9829, 1
  %9831 = fsub fast float %9666, %9830
  %9832 = call float @dx.op.unary.f32(i32 7, float %9831)  ; Saturate(value)
  %9833 = fsub fast float %9666, %9588
  %9834 = call float @dx.op.unary.f32(i32 7, float %9833)  ; Saturate(value)
  %9835 = fsub fast float %9832, %9834
  %9836 = fsub fast float %9668, %9834
  %9837 = fdiv fast float %9836, %9835
  %9838 = call float @dx.op.unary.f32(i32 7, float %9837)  ; Saturate(value)
  %9839 = fmul fast float %9838, 2.000000e+00
  %9840 = fsub fast float 3.000000e+00, %9839
  %9841 = fsub fast float %9817, %9827
  %9842 = fmul fast float %9838, %9838
  %9843 = fmul fast float %9842, %9841
  %9844 = fmul fast float %9843, %9840
  %9845 = fadd fast float %9844, %9827
  br label %9846

; <label>:9846                                    ; preds = %9828, %9826
  %9847 = phi float [ %9845, %9828 ], [ %9827, %9826 ]
  %9848 = call float @dx.op.binary.f32(i32 35, float %9817, float %9847)  ; FMax(a,b)
  %9849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.i32 %9849, 2
  %9851 = and i32 %9850, 1
  %9852 = icmp eq i32 %9851, 0
  %9853 = fcmp fast une float %9848, 1.000000e+00
  %9854 = and i1 %9853, %9852
  br i1 %9854, label %9855, label %9874

; <label>:9855                                    ; preds = %9846
  %9856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9535, float %9536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9857 = extractvalue %dx.types.ResRet.f32 %9856, 0
  %9858 = extractvalue %dx.types.ResRet.f32 %9856, 1
  %9859 = extractvalue %dx.types.ResRet.f32 %9856, 2
  %9860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9861 = extractvalue %dx.types.CBufRet.f32 %9860, 1
  %9862 = fmul fast float %9861, %9857
  %9863 = fmul fast float %9861, %9858
  %9864 = fmul fast float %9861, %9859
  %9865 = fcmp fast ogt float %9817, 0x3FEFFF2E40000000
  %9866 = fsub fast float 1.000000e+00, %9848
  %9867 = fsub fast float 1.000000e+00, %9817
  %9868 = fdiv fast float %9866, %9867
  %9869 = call float @dx.op.unary.f32(i32 7, float %9868)  ; Saturate(value)
  %9870 = select i1 %9865, float 0.000000e+00, float %9869
  %9871 = fmul fast float %9862, %9870
  %9872 = fmul fast float %9863, %9870
  %9873 = fmul fast float %9864, %9870
  br label %9874

; <label>:9874                                    ; preds = %9855, %9846
  %9875 = phi float [ 0.000000e+00, %9846 ], [ %9871, %9855 ]
  %9876 = phi float [ 0.000000e+00, %9846 ], [ %9872, %9855 ]
  %9877 = phi float [ 0.000000e+00, %9846 ], [ %9873, %9855 ]
  %9878 = fmul fast float %9875, %8448
  %9879 = fmul fast float %9876, %8450
  %9880 = fmul fast float %9877, %8452
  %9881 = fmul fast float %9848, %9510
  %9882 = call float @dx.op.dot3.f32(i32 55, float %9848, float %9848, float %9848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9883 = call float @dx.op.dot3.f32(i32 55, float %9878, float %9879, float %9880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9884 = select i1 %229, float %9882, float %9848
  %9885 = select i1 %229, float 1.000000e+00, float %9848
  %9886 = select i1 %229, float %9883, float %9878
  %9887 = select i1 %229, float 0.000000e+00, float %9879
  %9888 = select i1 %229, float 0.000000e+00, float %9880
  %9889 = fmul fast float %9884, %9522
  %9890 = fmul fast float %9884, %9523
  %9891 = fmul fast float %9885, %9524
  %9892 = fadd fast float %9889, %9886
  %9893 = fadd fast float %9890, %9887
  %9894 = fadd fast float %9888, %9891
  %9895 = fmul fast float %9884, %9525
  %9896 = fmul fast float %9884, %9526
  %9897 = fmul fast float %9885, %9527
  br label %9898

; <label>:9898                                    ; preds = %9874, %9531, %9500, %8732
  %9899 = phi float [ %8737, %8732 ], [ %9522, %9500 ], [ %9892, %9874 ], [ %9522, %9531 ]
  %9900 = phi float [ %8738, %8732 ], [ %9523, %9500 ], [ %9893, %9874 ], [ %9523, %9531 ]
  %9901 = phi float [ %8739, %8732 ], [ %9524, %9500 ], [ %9894, %9874 ], [ %9524, %9531 ]
  %9902 = phi float [ %8740, %8732 ], [ %9525, %9500 ], [ %9895, %9874 ], [ %9525, %9531 ]
  %9903 = phi float [ %8741, %8732 ], [ %9526, %9500 ], [ %9896, %9874 ], [ %9526, %9531 ]
  %9904 = phi float [ %8742, %8732 ], [ %9527, %9500 ], [ %9897, %9874 ], [ %9527, %9531 ]
  %9905 = phi float [ %8743, %8732 ], [ %9510, %9500 ], [ %9881, %9874 ], [ %9510, %9531 ]
  %9906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9907 = extractvalue %dx.types.CBufRet.f32 %9906, 2
  %9908 = extractvalue %dx.types.CBufRet.f32 %9906, 3
  %9909 = fmul fast float %9907, %104
  %9910 = fmul fast float %9908, %105
  %9911 = call float @dx.op.unary.f32(i32 7, float %9909)  ; Saturate(value)
  %9912 = call float @dx.op.unary.f32(i32 7, float %9910)  ; Saturate(value)
  %9913 = select i1 %8474, i32 2, i32 0
  %9914 = or i32 %9913, 1
  %9915 = uitofp i32 %9914 to float
  %9916 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9911, float %9912, float %9915, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9917 = extractvalue %dx.types.ResRet.f32 %9916, 0
  %9918 = extractvalue %dx.types.ResRet.f32 %9916, 1
  %9919 = extractvalue %dx.types.ResRet.f32 %9916, 2
  %9920 = extractvalue %dx.types.ResRet.f32 %9916, 3
  %9921 = add nuw nsw i32 %9913, 2
  %9922 = uitofp i32 %9921 to float
  %9923 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9911, float %9912, float %9922, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9924 = extractvalue %dx.types.ResRet.f32 %9923, 0
  %9925 = extractvalue %dx.types.ResRet.f32 %9923, 1
  %9926 = extractvalue %dx.types.ResRet.f32 %9923, 2
  %9927 = extractvalue %dx.types.ResRet.f32 %9923, 3
  %9928 = call float @dx.op.binary.f32(i32 35, float %9918, float %9919)  ; FMax(a,b)
  %9929 = call float @dx.op.binary.f32(i32 35, float %9917, float %9928)  ; FMax(a,b)
  %9930 = call float @dx.op.binary.f32(i32 35, float %9929, float %9920)  ; FMax(a,b)
  %9931 = call float @dx.op.binary.f32(i32 36, float %9925, float %9926)  ; FMin(a,b)
  %9932 = call float @dx.op.binary.f32(i32 36, float %9924, float %9931)  ; FMin(a,b)
  %9933 = call float @dx.op.binary.f32(i32 36, float %9932, float %9927)  ; FMin(a,b)
  %9934 = fmul fast float %9930, 2.550000e+02
  %9935 = fadd fast float %9934, 0x3F70101020000000
  %9936 = fptoui float %9935 to i32
  %9937 = fmul fast float %9933, 2.550000e+02
  %9938 = fadd fast float %9937, 0x3F70101020000000
  %9939 = fptoui float %9938 to i32
  %9940 = icmp ult i32 %9936, %9939
  br i1 %9940, label %9941, label %10110

; <label>:9941                                    ; preds = %9898
  %9942 = fcmp fast ogt float %91, 9.843750e-01
  %9943 = fadd fast float %8736, -4.000000e+00
  %9944 = select i1 %9942, float -4.000000e+00, float %9943
  %9945 = call float @dx.op.binary.f32(i32 35, float %9944, float 0.000000e+00)  ; FMax(a,b)
  %9946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9947 = extractvalue %dx.types.CBufRet.f32 %9946, 0
  %9948 = fadd fast float %9947, %9945
  %9949 = extractvalue %dx.types.CBufRet.f32 %9946, 2
  %9950 = fmul fast float %9948, %9949
  %9951 = call float @dx.op.unary.f32(i32 23, float %9950)  ; Log(value)
  %9952 = extractvalue %dx.types.CBufRet.f32 %9946, 3
  %9953 = fmul fast float %9952, %9951
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 2
  %9956 = fmul fast float %9953, %9955
  %9957 = call float @dx.op.unary.f32(i32 7, float %9956)  ; Saturate(value)
  %9958 = uitofp i32 %9936 to float
  %9959 = uitofp i32 %9939 to float
  %9960 = fadd fast float %9958, 5.000000e-01
  %9961 = fadd fast float %9959, 5.000000e-01
  %9962 = fmul fast float %9955, %9960
  %9963 = fmul fast float %9955, %9961
  %9964 = fadd fast float %9962, 0x3F0FFB4800000000
  %9965 = fadd fast float %9963, 0xBF0FFB4800000000
  %9966 = call float @dx.op.binary.f32(i32 35, float %9957, float %9964)  ; FMax(a,b)
  %9967 = call float @dx.op.binary.f32(i32 36, float %9966, float %9965)  ; FMin(a,b)
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 1
  %9970 = extractvalue %dx.types.CBufRet.f32 %9968, 2
  %9971 = extractvalue %dx.types.CBufRet.f32 %9968, 0
  %9972 = select i1 %8474, float %9971, float 0.000000e+00
  %9973 = fmul fast float %9969, %9967
  %9974 = fadd fast float %9972, %9973
  %9975 = fadd fast float %9972, %9970
  %9976 = fsub fast float %9969, %9970
  %9977 = fadd fast float %9976, %9972
  %9978 = call float @dx.op.binary.f32(i32 35, float %9974, float %9975)  ; FMax(a,b)
  %9979 = call float @dx.op.binary.f32(i32 36, float %9978, float %9977)  ; FMin(a,b)
  %9980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9911, float %9912, float %9979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9981 = extractvalue %dx.types.ResRet.f32 %9980, 0
  %9982 = extractvalue %dx.types.ResRet.f32 %9980, 1
  %9983 = extractvalue %dx.types.ResRet.f32 %9980, 2
  %9984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9985 = extractvalue %dx.types.CBufRet.i32 %9984, 0
  %9986 = extractvalue %dx.types.CBufRet.i32 %9984, 1
  %9987 = uitofp i32 %9985 to float
  %9988 = uitofp i32 %9986 to float
  %9989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9990 = extractvalue %dx.types.CBufRet.f32 %9989, 0
  %9991 = extractvalue %dx.types.CBufRet.f32 %9989, 1
  %9992 = fmul fast float %9987, %9911
  %9993 = fmul fast float %9988, %9912
  %9994 = fadd fast float %9992, -5.000000e-01
  %9995 = fadd fast float %9993, -5.000000e-01
  %9996 = call float @dx.op.unary.f32(i32 22, float %9994)  ; Frc(value)
  %9997 = call float @dx.op.unary.f32(i32 22, float %9995)  ; Frc(value)
  %9998 = fmul fast float %9996, %9996
  %9999 = fmul fast float %9998, %9996
  %10000 = fsub fast float 3.000000e+00, %9996
  %10001 = fmul fast float %9998, %10000
  %10002 = fmul fast float %9996, 3.000000e+00
  %10003 = fmul fast float %9999, 3.000000e+00
  %10004 = fmul fast float %9998, 6.000000e+00
  %10005 = fsub fast float %10003, %10004
  %10006 = fadd fast float %10005, 4.000000e+00
  %10007 = fmul fast float %10006, 0x3FC5555560000000
  %10008 = fmul fast float %9999, -3.000000e+00
  %10009 = fadd fast float %9998, %9996
  %10010 = fmul fast float %10009, 3.000000e+00
  %10011 = fadd fast float %10008, 1.000000e+00
  %10012 = fadd fast float %10011, %10010
  %10013 = fmul fast float %9999, 0x3FC5555560000000
  %10014 = fmul fast float %9997, %9997
  %10015 = fmul fast float %10014, %9997
  %10016 = fsub fast float 3.000000e+00, %9997
  %10017 = fmul fast float %10014, %10016
  %10018 = fmul fast float %9997, 3.000000e+00
  %10019 = fmul fast float %10015, 3.000000e+00
  %10020 = fmul fast float %10014, 6.000000e+00
  %10021 = fsub fast float %10019, %10020
  %10022 = fadd fast float %10021, 4.000000e+00
  %10023 = fmul fast float %10022, 0x3FC5555560000000
  %10024 = fmul fast float %10015, -3.000000e+00
  %10025 = fadd fast float %10014, %9997
  %10026 = fmul fast float %10025, 3.000000e+00
  %10027 = fadd fast float %10024, 1.000000e+00
  %10028 = fadd fast float %10027, %10026
  %10029 = fmul fast float %10015, 0x3FC5555560000000
  %10030 = fadd fast float %9996, 1.000000e+00
  %10031 = fsub fast float 1.000000e+00, %10002
  %10032 = fadd fast float %10031, %10001
  %10033 = fadd fast float %10032, %10006
  %10034 = fmul fast float %10033, 0x3FC5555560000000
  %10035 = fdiv fast float %10007, %10034
  %10036 = fsub fast float %10030, %10035
  %10037 = fsub fast float 1.000000e+00, %9996
  %10038 = fadd fast float %10012, %9999
  %10039 = fmul fast float %10038, 0x3FC5555560000000
  %10040 = fdiv fast float %10013, %10039
  %10041 = fadd fast float %10037, %10040
  %10042 = fadd fast float %9997, 1.000000e+00
  %10043 = fsub fast float 1.000000e+00, %10018
  %10044 = fadd fast float %10043, %10017
  %10045 = fadd fast float %10044, %10022
  %10046 = fmul fast float %10045, 0x3FC5555560000000
  %10047 = fdiv fast float %10023, %10046
  %10048 = fsub fast float %10042, %10047
  %10049 = fsub fast float 1.000000e+00, %9997
  %10050 = fadd fast float %10028, %10015
  %10051 = fmul fast float %10050, 0x3FC5555560000000
  %10052 = fdiv fast float %10029, %10051
  %10053 = fadd fast float %10052, %10049
  %10054 = fmul fast float %10036, %9990
  %10055 = fsub fast float %9911, %10054
  %10056 = fmul fast float %10041, %9990
  %10057 = fadd fast float %10056, %9911
  %10058 = fmul fast float %10053, %9991
  %10059 = fadd fast float %10058, %9912
  %10060 = fmul fast float %10048, %9991
  %10061 = fsub fast float %9912, %10060
  %10062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10055, float %10061, float %9979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10063 = extractvalue %dx.types.ResRet.f32 %10062, 0
  %10064 = extractvalue %dx.types.ResRet.f32 %10062, 1
  %10065 = extractvalue %dx.types.ResRet.f32 %10062, 2
  %10066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10057, float %10061, float %9979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10067 = extractvalue %dx.types.ResRet.f32 %10066, 0
  %10068 = extractvalue %dx.types.ResRet.f32 %10066, 1
  %10069 = extractvalue %dx.types.ResRet.f32 %10066, 2
  %10070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10055, float %10059, float %9979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10071 = extractvalue %dx.types.ResRet.f32 %10070, 0
  %10072 = extractvalue %dx.types.ResRet.f32 %10070, 1
  %10073 = extractvalue %dx.types.ResRet.f32 %10070, 2
  %10074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10057, float %10059, float %9979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10075 = extractvalue %dx.types.ResRet.f32 %10074, 0
  %10076 = extractvalue %dx.types.ResRet.f32 %10074, 1
  %10077 = extractvalue %dx.types.ResRet.f32 %10074, 2
  %10078 = fsub fast float %10071, %10063
  %10079 = fsub fast float %10072, %10064
  %10080 = fsub fast float %10073, %10065
  %10081 = fmul fast float %10078, %10051
  %10082 = fmul fast float %10079, %10051
  %10083 = fmul fast float %10080, %10051
  %10084 = fadd fast float %10081, %10063
  %10085 = fadd fast float %10082, %10064
  %10086 = fadd fast float %10083, %10065
  %10087 = fsub fast float %10075, %10067
  %10088 = fsub fast float %10076, %10068
  %10089 = fsub fast float %10077, %10069
  %10090 = fmul fast float %10087, %10051
  %10091 = fmul fast float %10088, %10051
  %10092 = fmul fast float %10089, %10051
  %10093 = fsub fast float %10067, %10084
  %10094 = fadd fast float %10093, %10090
  %10095 = fsub fast float %10068, %10085
  %10096 = fadd fast float %10095, %10091
  %10097 = fsub fast float %10069, %10086
  %10098 = fadd fast float %10097, %10092
  %10099 = fmul fast float %10094, %10039
  %10100 = fmul fast float %10096, %10039
  %10101 = fmul fast float %10098, %10039
  %10102 = fadd fast float %10099, %10084
  %10103 = fadd fast float %10100, %10085
  %10104 = fadd fast float %10101, %10086
  %10105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10106 = extractvalue %dx.types.CBufRet.f32 %10105, 1
  %10107 = fmul fast float %10102, %10106
  %10108 = fmul fast float %10103, %10106
  %10109 = fmul fast float %10104, %10106
  br label %10110

; <label>:10110                                   ; preds = %9941, %9898
  %10111 = phi float [ %9981, %9941 ], [ 1.000000e+00, %9898 ]
  %10112 = phi float [ %9982, %9941 ], [ 1.000000e+00, %9898 ]
  %10113 = phi float [ %9983, %9941 ], [ 1.000000e+00, %9898 ]
  %10114 = phi float [ %10107, %9941 ], [ 0.000000e+00, %9898 ]
  %10115 = phi float [ %10108, %9941 ], [ 0.000000e+00, %9898 ]
  %10116 = phi float [ %10109, %9941 ], [ 0.000000e+00, %9898 ]
  %10117 = fmul fast float %10114, %8448
  %10118 = fmul fast float %10115, %8450
  %10119 = fmul fast float %10116, %8452
  %10120 = fmul fast float %10111, %9905
  %10121 = call float @dx.op.dot3.f32(i32 55, float %10111, float %10112, float %10113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10122 = call float @dx.op.dot3.f32(i32 55, float %10117, float %10118, float %10119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10123 = select i1 %229, float %10121, float %10111
  %10124 = select i1 %229, float %10121, float %10112
  %10125 = select i1 %229, float 1.000000e+00, float %10113
  %10126 = select i1 %229, float %10122, float %10117
  %10127 = select i1 %229, float 0.000000e+00, float %10118
  %10128 = select i1 %229, float 0.000000e+00, float %10119
  %10129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10130 = extractvalue %dx.types.CBufRet.i32 %10129, 3
  %10131 = and i32 %10130, 3
  %10132 = icmp ne i32 %10131, 0
  %10133 = and i32 %10130, 4
  %10134 = icmp ne i32 %10133, 0
  %10135 = and i1 %10132, %10134
  %10136 = and i1 %229, %10135
  br i1 %10136, label %10137, label %10143

; <label>:10137                                   ; preds = %10110
  %10138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10139 = extractvalue %dx.types.CBufRet.f32 %10138, 1
  %10140 = fadd fast float %10120, -1.000000e+00
  %10141 = fmul fast float %10139, %10140
  %10142 = fadd fast float %10141, 1.000000e+00
  br label %10143

; <label>:10143                                   ; preds = %10137, %10110
  %10144 = phi float [ %10142, %10137 ], [ %10120, %10110 ]
  %10145 = fadd fast float %9902, %9899
  %10146 = fmul fast float %10123, %10145
  %10147 = fadd fast float %10146, %10126
  %10148 = fadd fast float %9903, %9900
  %10149 = fmul fast float %10124, %10148
  %10150 = fadd fast float %10149, %10127
  %10151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10152 = extractvalue %dx.types.CBufRet.f32 %10151, 0
  br i1 %229, label %10153, label %10168

; <label>:10153                                   ; preds = %10143
  %10154 = fadd fast float %10147, %10150
  %10155 = fmul fast float %10152, %10154
  %10156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10156, 3
  %10158 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %10159 = fsub fast float %8461, %8455
  %10160 = fadd fast float %10159, %8462
  %10161 = fsub fast float %10160, %10158
  %10162 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %10163 = fmul fast float %10161, %10162
  %10164 = call float @dx.op.unary.f32(i32 7, float %10163)  ; Saturate(value)
  %10165 = fsub fast float %10164, %10157
  %10166 = fmul fast float %10165, %10144
  %10167 = fadd fast float %10166, %10157
  br label %10194

; <label>:10168                                   ; preds = %10143
  %10169 = fadd fast float %9904, %9901
  %10170 = fmul fast float %10125, %10169
  %10171 = fadd fast float %10170, %10128
  %10172 = fmul fast float %10152, %10147
  %10173 = fmul fast float %10152, %10150
  %10174 = fmul fast float %10152, %10171
  %10175 = call float @dx.op.binary.f32(i32 35, float %10173, float %10174)  ; FMax(a,b)
  %10176 = call float @dx.op.binary.f32(i32 35, float %10172, float %10175)  ; FMax(a,b)
  %10177 = call float @dx.op.binary.f32(i32 35, float %8450, float %8452)  ; FMax(a,b)
  %10178 = call float @dx.op.binary.f32(i32 35, float %8448, float %10177)  ; FMax(a,b)
  %10179 = call float @dx.op.binary.f32(i32 35, float %10176, float %10178)  ; FMax(a,b)
  %10180 = fcmp fast ugt float %10179, 0x3F10000000000000
  br i1 %10180, label %10182, label %10181

; <label>:10181                                   ; preds = %10168
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10182

; <label>:10182                                   ; preds = %10181, %10168
  %10183 = add i32 %60, 356
  %10184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10183, i32 undef)  ; BufferLoad(srv,index,wot)
  %10185 = extractvalue %dx.types.ResRet.i32 %10184, 0
  %10186 = and i32 %10185, 32
  %10187 = icmp eq i32 %10186, 0
  br i1 %10187, label %10194, label %10188

; <label>:10188                                   ; preds = %10182
  %10189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10190 = extractvalue %dx.types.CBufRet.f32 %10189, 0
  %10191 = fmul fast float %10190, 0x3FE99999A0000000
  %10192 = fadd fast float %10190, %10172
  %10193 = fadd fast float %10191, %10174
  br label %10194

; <label>:10194                                   ; preds = %10188, %10182, %10153
  %10195 = phi float [ 1.000000e+00, %10153 ], [ %8450, %10188 ], [ %8450, %10182 ]
  %10196 = phi float [ 1.000000e+00, %10153 ], [ %8452, %10188 ], [ %8452, %10182 ]
  %10197 = phi float [ %10155, %10153 ], [ %10192, %10188 ], [ %10172, %10182 ]
  %10198 = phi float [ %10167, %10153 ], [ %10173, %10188 ], [ %10173, %10182 ]
  %10199 = phi float [ 1.000000e+00, %10153 ], [ %10193, %10188 ], [ %10174, %10182 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10200 = call float @dx.op.binary.f32(i32 36, float %10197, float 3.225500e+04)  ; FMin(a,b)
  %10201 = call float @dx.op.binary.f32(i32 36, float %10198, float 3.225500e+04)  ; FMin(a,b)
  %10202 = call float @dx.op.binary.f32(i32 36, float %10199, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10200)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10201)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10203 = call float @dx.op.binary.f32(i32 36, float %8448, float 3.225500e+04)  ; FMin(a,b)
  %10204 = call float @dx.op.binary.f32(i32 36, float %10195, float 3.225500e+04)  ; FMin(a,b)
  %10205 = call float @dx.op.binary.f32(i32 36, float %10196, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10203)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10204)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10205)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

