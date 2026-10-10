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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b88b45e19503a47320c367b68931a95a
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fmul fast float %102, %88
  %104 = fmul fast float %102, %89
  %105 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = bitcast float %105 to i32
  %107 = ashr i32 %106, 1
  %108 = sub nsw i32 1597250115, %107
  %109 = bitcast i32 %108 to float
  %110 = fmul fast float %109, %79
  %111 = fmul fast float %109, %80
  %112 = fmul fast float %109, %81
  %113 = fmul fast float %80, %77
  %114 = fmul fast float %81, %76
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %81, %75
  %117 = fmul fast float %79, %77
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %79, %76
  %120 = fmul fast float %80, %75
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %115, %78
  %123 = fmul fast float %118, %78
  %124 = fmul fast float %121, %78
  %125 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %126 = bitcast float %125 to i32
  %127 = ashr i32 %126, 1
  %128 = sub nsw i32 1597250115, %127
  %129 = bitcast i32 %128 to float
  %130 = fmul fast float %129, %68
  %131 = fmul fast float %129, %69
  %132 = fmul fast float %129, %70
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %103, 2.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %104, 2.000000e+00
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 1.000000e+00, %137
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fmul fast float %140, %143
  %147 = fmul fast float %140, %144
  %148 = fmul fast float %140, %145
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = fmul fast float %141, %150
  %154 = fmul fast float %141, %151
  %155 = fmul fast float %141, %152
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fadd fast float %153, %157
  %161 = fadd fast float %160, %146
  %162 = fadd fast float %154, %158
  %163 = fadd fast float %162, %147
  %164 = fadd fast float %155, %159
  %165 = fadd fast float %164, %148
  %166 = fmul fast float %161, %91
  %167 = fmul fast float %163, %91
  %168 = fmul fast float %165, %91
  %169 = fmul fast float %103, 5.000000e-01
  %170 = fmul fast float %104, 5.000000e-01
  %171 = fptosi float %169 to i32
  %172 = fptosi float %170 to i32
  %173 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %171, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 18
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F4C00EBA0000000
  %178 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %179 = fadd fast float %178, -1.000000e+00
  %180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %181 = extractvalue %dx.types.Dimensions %180, 0
  %182 = sitofp i32 %181 to float
  %183 = extractvalue %dx.types.Dimensions %180, 1
  %184 = sitofp i32 %183 to float
  %185 = fcmp fast oge float %169, %182
  %186 = fcmp fast oge float %170, %184
  %187 = or i1 %185, %186
  %188 = select i1 %187, float 0x4197782600000000, float %179
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %103
  %193 = fmul fast float %191, %104
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = and i32 %195, 114688
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %197, float %192, float 0.000000e+00
  %199 = select i1 %197, float %193, float 0.000000e+00
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, 2.550000e+02
  %203 = fptoui float %202 to i32
  %204 = select i1 %197, i32 %203, i32 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %104
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %103
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %103, 2.560000e+02
  %233 = frem fast float %104, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = add i32 %60, 156
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %60, 216
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %60, 36
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %60, 288
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %60, 172
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %60, 232
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %60, 52
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %60, 304
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %60, 188
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = shl i32 %326, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %326, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %326, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %60, 248
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %338, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %338, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = add i32 %60, 68
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %60, 320
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %361, 0x3F50624DE0000000
  %365 = fmul fast float %363, 0x3F50624DE0000000
  %366 = add i32 %60, 204
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = shl i32 %368, 4
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %368, 7
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %368, 22
  %376 = shl nuw nsw i32 %375, 5
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %60, 264
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %380, 8
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %380, 16
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = add i32 %60, 84
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %60, 336
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = fmul fast float %403, 0x3F50624DE0000000
  %407 = fmul fast float %405, 0x3F50624DE0000000
  %408 = add i32 %60, 348
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 32
  %412 = icmp eq i32 %411, 0
  %413 = and i32 %410, 64
  %414 = icmp eq i32 %413, 0
  %415 = and i32 %410, 128
  %416 = icmp eq i32 %415, 0
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %436, label %421

; <label>:421                                     ; preds = %227
  %422 = add i32 %60, 472
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = add i32 %424, 0
  %426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %426, %dx.types.Handle %100, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = extractvalue %dx.types.ResRet.f32 %427, 3
  %432 = fmul fast float %431, %84
  %433 = fmul fast float %428, %85
  %434 = fmul fast float %429, %86
  %435 = fmul fast float %430, %87
  br label %436

; <label>:436                                     ; preds = %421, %227
  %437 = phi float [ %87, %227 ], [ %435, %421 ]
  %438 = phi float [ %86, %227 ], [ %434, %421 ]
  %439 = phi float [ %85, %227 ], [ %433, %421 ]
  %440 = phi float [ %84, %227 ], [ %432, %421 ]
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %464, label %445

; <label>:445                                     ; preds = %436
  %446 = add i32 %60, 44
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %439, float 1.000000e+00
  %452 = add i32 %60, 60
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %438, float 1.000000e+00
  %458 = add i32 %60, 76
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 1
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %437, float 1.000000e+00
  br label %464

; <label>:464                                     ; preds = %445, %436
  %465 = phi float [ %437, %436 ], [ %463, %445 ]
  %466 = phi float [ %438, %436 ], [ %457, %445 ]
  %467 = phi float [ %439, %436 ], [ %451, %445 ]
  %468 = lshr i32 %442, 20
  %469 = and i32 %468, 3
  %470 = add nuw nsw i32 %469, 1
  %471 = add i32 %60, 24
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = add i32 %60, 28
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = or i32 %476, %473
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %1128, label %479

; <label>:479                                     ; preds = %464
  %480 = and i32 %473, 262144
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %62, float 1.000000e+00
  %483 = select i1 %481, float %63, float 0.000000e+00
  %484 = select i1 %481, float %64, float 0.000000e+00
  %485 = select i1 %481, float %65, float 1.000000e+00
  %486 = select i1 %481, float %66, float %82
  %487 = select i1 %481, float %67, float %83
  %488 = add i32 %60, 284
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fmul fast float %492, 0x3F50624DE0000000
  %494 = add i32 %60, 88
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  %499 = lshr i32 %496, 24
  %500 = add i32 %60, 292
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 65535
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %502, 16
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = add i32 %60, 32
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 22
  %511 = shl nuw nsw i32 %510, 5
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = shl i32 %509, 4
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %509, 7
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = fmul fast float %520, 1.000000e+03
  %522 = fmul fast float %280, %521
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fadd fast float %523, %270
  %525 = fmul fast float %281, %521
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %272
  %528 = fmul fast float %493, %521
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fmul fast float %529, 0x401921FB60000000
  %531 = fadd fast float %530, %512
  %532 = call float @dx.op.unary.f32(i32 13, float %531)  ; Sin(value)
  %533 = call float @dx.op.unary.f32(i32 12, float %531)  ; Cos(value)
  %534 = fsub fast float -0.000000e+00, %532
  %535 = fadd fast float %486, -5.000000e-01
  %536 = fadd fast float %487, -5.000000e-01
  %537 = fmul fast float %504, %535
  %538 = fmul fast float %506, %536
  %539 = fadd fast float %537, 5.000000e-01
  %540 = fadd fast float %538, 5.000000e-01
  %541 = fmul fast float %515, %539
  %542 = fmul fast float %518, %540
  %543 = fmul fast float %533, %541
  %544 = call float @dx.op.tertiary.f32(i32 46, float %534, float %542, float %543)  ; FMad(a,b,c)
  %545 = fmul fast float %532, %541
  %546 = call float @dx.op.tertiary.f32(i32 46, float %533, float %542, float %545)  ; FMad(a,b,c)
  %547 = fadd fast float %524, %544
  %548 = fadd fast float %527, %546
  %549 = icmp ugt i32 %498, 1
  %550 = icmp ugt i32 %496, 33554431
  %551 = or i1 %550, %549
  br i1 %551, label %552, label %577

; <label>:552                                     ; preds = %479
  %553 = add i32 %60, 228
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = lshr i32 %555, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = fmul fast float %520, %557
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = mul nuw nsw i32 %498, %499
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %559, %561
  %563 = call float @dx.op.unary.f32(i32 27, float %562)  ; Round_ni(value)
  %564 = fptoui float %563 to i32
  %565 = urem i32 %564, %498
  %566 = udiv i32 %564, %499
  %567 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %568 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %569 = uitofp i32 %565 to float
  %570 = uitofp i32 %566 to float
  %571 = fadd fast float %567, %569
  %572 = fadd fast float %568, %570
  %573 = uitofp i32 %498 to float
  %574 = uitofp i32 %499 to float
  %575 = fdiv fast float %571, %573
  %576 = fdiv fast float %572, %574
  br label %577

; <label>:577                                     ; preds = %552, %479
  %578 = phi float [ %575, %552 ], [ %547, %479 ]
  %579 = phi float [ %576, %552 ], [ %548, %479 ]
  %580 = and i32 %473, 16777216
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %691, label %582

; <label>:582                                     ; preds = %577
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = fadd fast float %584, %166
  %588 = fadd fast float %585, %167
  %589 = fadd fast float %586, %168
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = icmp eq i32 %61, 65535
  br i1 %593, label %688, label %594

; <label>:594                                     ; preds = %582
  %595 = lshr i32 %61, 1
  %596 = shl i32 %595, 2
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %61, 1
  %600 = icmp ne i32 %599, 0
  %601 = lshr i32 %598, 16
  %602 = and i32 %598, 65535
  %603 = select i1 %600, i32 %601, i32 %602
  %604 = icmp eq i32 %603, 65535
  br i1 %604, label %684, label %605

; <label>:605                                     ; preds = %594
  %606 = mul nuw nsw i32 %603, 40
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %606, 12
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %606, 24
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = add nuw nsw i32 %606, 36
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = fsub fast float %587, %608
  %625 = fsub fast float %588, %609
  %626 = fsub fast float %589, %610
  %627 = fmul fast float %623, %624
  %628 = fmul fast float %623, %625
  %629 = fmul fast float %623, %626
  %630 = call float @dx.op.unary.f32(i32 27, float %627)  ; Round_ni(value)
  %631 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %632 = call float @dx.op.unary.f32(i32 27, float %629)  ; Round_ni(value)
  %633 = fadd fast float %630, 5.000000e-01
  %634 = fadd fast float %631, 5.000000e-01
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fmul fast float %633, %613
  %637 = fmul fast float %634, %614
  %638 = fmul fast float %635, %615
  %639 = shl i32 %61, 2
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %645 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %646 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %643, %dx.types.Handle %55, float %644, float %645, float %646, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = fmul fast float %648, 1.023000e+03
  %652 = fmul fast float %649, 1.023000e+03
  %653 = fmul fast float %650, 1.023000e+03
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %660 = fsub fast float %627, %630
  %661 = fsub fast float %628, %631
  %662 = fsub fast float %629, %632
  %663 = fmul fast float %660, 7.500000e-01
  %664 = fmul fast float %661, 7.500000e-01
  %665 = fmul fast float %662, 7.500000e-01
  %666 = fadd fast float %630, 1.250000e-01
  %667 = fadd fast float %666, %663
  %668 = fadd fast float %667, %657
  %669 = fadd fast float %631, 1.250000e-01
  %670 = fadd fast float %669, %664
  %671 = fadd fast float %670, %658
  %672 = fadd fast float %632, 1.250000e-01
  %673 = fadd fast float %672, %665
  %674 = fadd fast float %673, %659
  %675 = fmul fast float %668, %618
  %676 = fmul fast float %671, %619
  %677 = fmul fast float %674, %620
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = add i32 %679, 0
  %681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %681, %dx.types.Handle %53, float %675, float %676, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  br label %684

; <label>:684                                     ; preds = %605, %594
  %685 = phi float [ %683, %605 ], [ -1.000000e+00, %594 ]
  %686 = fadd fast float %685, %592
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  br label %688

; <label>:688                                     ; preds = %684, %582
  %689 = phi float [ %687, %684 ], [ %592, %582 ]
  %690 = fmul fast float %689, %440
  br label %691

; <label>:691                                     ; preds = %688, %577
  %692 = phi float [ %690, %688 ], [ %440, %577 ]
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 256
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %743, label %697

; <label>:697                                     ; preds = %691
  %698 = add i32 %60, 424
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %702, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = add i32 %60, 100
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = shl i32 %707, 4
  %709 = and i32 %708, 32752
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = lshr i32 %707, 7
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = fsub fast float 1.000000e+00, %692
  %715 = call float @dx.op.binary.f32(i32 35, float %714, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %716 = bitcast float %692 to i32
  %717 = sitofp i32 %716 to float
  %718 = fadd fast float %717, 0xC1CFBF8940000000
  %719 = fmul fast float %713, %718
  %720 = fadd fast float %719, 0x41CFBF8940000000
  %721 = fptosi float %720 to i32
  %722 = bitcast i32 %721 to float
  %723 = bitcast float %715 to i32
  %724 = sitofp i32 %723 to float
  %725 = fadd fast float %724, 0xC1CFBF8940000000
  %726 = fmul fast float %725, %713
  %727 = fadd fast float %726, 0x41CFBF8940000000
  %728 = fptosi float %727 to i32
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %722, %710
  %731 = fmul fast float %729, %710
  %732 = fsub fast float %715, %730
  %733 = fadd fast float %731, %715
  %734 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = fsub fast float %704, %734
  %737 = fsub fast float %735, %734
  %738 = bitcast float %737 to i32
  %739 = sub nsw i32 2129859010, %738
  %740 = bitcast i32 %739 to float
  %741 = fmul fast float %740, %736
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  br label %743

; <label>:743                                     ; preds = %697, %691
  %744 = phi float [ %742, %697 ], [ %692, %691 ]
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 128
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %765, label %749

; <label>:749                                     ; preds = %743
  %750 = add i32 %60, 408
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 524288
  %760 = icmp ne i32 %759, 0
  %761 = fcmp fast ogt float %756, 0x3FE0101020000000
  %762 = select i1 %761, float 1.000000e+00, float 0.000000e+00
  %763 = select i1 %760, float %762, float %756
  %764 = fmul fast float %763, %744
  br label %765

; <label>:765                                     ; preds = %749, %743
  %766 = phi float [ %764, %749 ], [ %744, %743 ]
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 16
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %969, label %771

; <label>:771                                     ; preds = %765
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %60, 360
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %99, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = extractvalue %dx.types.ResRet.f32 %779, 3
  %784 = and i32 %773, 255
  %785 = uitofp i32 %784 to float
  %786 = lshr i32 %773, 8
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %783, %785
  %790 = fadd fast float %789, %788
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 512
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %804, label %796

; <label>:796                                     ; preds = %771
  %797 = add i32 %60, 440
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = add i32 %799, 0
  %801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %801, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  br label %804

; <label>:804                                     ; preds = %796, %771
  %805 = phi float [ %803, %796 ], [ 1.000000e+00, %771 ]
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 33554432
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %916, label %810

; <label>:810                                     ; preds = %804
  %811 = add i32 %60, 224
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %813, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = add i32 %60, 228
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = lshr i32 %824, 24
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = and i32 %824, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = lshr i32 %824, 8
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = lshr i32 %824, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = add i32 %60, 220
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 24
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = and i32 %841, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %841, 8
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %841, 16
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = bitcast float %780 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %780, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %780
  %865 = fmul fast float %864, %863
  %866 = bitcast float %781 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %781, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %781
  %875 = fmul fast float %874, %873
  %876 = bitcast float %782 to i32
  %877 = ashr i32 %876, 1
  %878 = sub nsw i32 1597463174, %877
  %879 = bitcast i32 %878 to float
  %880 = fmul fast float %782, 5.000000e-01
  %881 = fmul fast float %879, %879
  %882 = fmul fast float %881, %880
  %883 = fsub fast float 1.500000e+00, %882
  %884 = fmul fast float %879, %782
  %885 = fmul fast float %884, %883
  %886 = fsub fast float %865, %847
  %887 = fsub fast float %875, %851
  %888 = fsub fast float %885, %855
  %889 = fmul fast float %886, %815
  %890 = fmul fast float %887, %817
  %891 = fmul fast float %888, %822
  %892 = fadd fast float %889, %830
  %893 = fadd fast float %890, %834
  %894 = fadd fast float %891, %838
  %895 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %896 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %898 = fmul fast float %895, %895
  %899 = fmul fast float %896, %896
  %900 = fmul fast float %897, %897
  %901 = fsub fast float %898, %780
  %902 = fsub fast float %899, %781
  %903 = fsub fast float %900, %782
  %904 = fmul fast float %901, %805
  %905 = fmul fast float %902, %805
  %906 = fmul fast float %903, %805
  %907 = fadd fast float %904, %780
  %908 = fadd fast float %905, %781
  %909 = fadd fast float %906, %782
  %910 = fadd fast float %827, %791
  %911 = fsub fast float %910, %844
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float %912, %791
  %914 = fmul fast float %913, %805
  %915 = fadd fast float %914, %791
  br label %969

; <label>:916                                     ; preds = %804
  %917 = and i32 %807, 134217728
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %953, label %919

; <label>:919                                     ; preds = %916
  %920 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %923 = fadd fast float %920, -5.000000e-01
  %924 = fadd fast float %921, -5.000000e-01
  %925 = fadd fast float %922, -5.000000e-01
  %926 = fmul fast float %923, %805
  %927 = fmul fast float %924, %805
  %928 = fmul fast float %925, %805
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fadd fast float %927, 5.000000e-01
  %931 = fadd fast float %928, 5.000000e-01
  %932 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %933 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %934 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %935 = fmul fast float %929, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %932
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %932
  %940 = fmul fast float %930, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %933
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %933
  %945 = fmul fast float %931, 2.000000e+00
  %946 = fsub fast float 1.000000e+00, %945
  %947 = fmul fast float %946, %934
  %948 = fadd fast float %947, %945
  %949 = fmul fast float %948, %934
  %950 = fmul fast float %939, %939
  %951 = fmul fast float %944, %944
  %952 = fmul fast float %949, %949
  br label %969

; <label>:953                                     ; preds = %916
  %954 = fmul fast float %257, %257
  %955 = fmul fast float %261, %261
  %956 = fmul fast float %265, %265
  %957 = fadd fast float %954, -1.000000e+00
  %958 = fadd fast float %955, -1.000000e+00
  %959 = fadd fast float %956, -1.000000e+00
  %960 = fmul fast float %805, %957
  %961 = fmul fast float %805, %958
  %962 = fmul fast float %805, %959
  %963 = fadd fast float %960, 1.000000e+00
  %964 = fadd fast float %961, 1.000000e+00
  %965 = fadd fast float %962, 1.000000e+00
  %966 = fmul fast float %963, %780
  %967 = fmul fast float %964, %781
  %968 = fmul fast float %965, %782
  br label %969

; <label>:969                                     ; preds = %953, %919, %810, %765
  %970 = phi float [ %915, %810 ], [ %791, %919 ], [ %791, %953 ], [ 0x3FA23C0BE0000000, %765 ]
  %971 = phi float [ %907, %810 ], [ %950, %919 ], [ %966, %953 ], [ 1.000000e+00, %765 ]
  %972 = phi float [ %908, %810 ], [ %951, %919 ], [ %967, %953 ], [ 1.000000e+00, %765 ]
  %973 = phi float [ %909, %810 ], [ %952, %919 ], [ %968, %953 ], [ 1.000000e+00, %765 ]
  %974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.i32 %974, 1
  %976 = and i32 %975, 1
  %977 = icmp ne i32 %976, 0
  %978 = add i32 %60, 356
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp ne i32 %981, 0
  %983 = and i1 %977, %982
  %984 = select i1 %983, float 1.000000e+00, float %971
  %985 = select i1 %983, float 0x3FD3333340000000, float %972
  %986 = select i1 %983, float 0x3FD3333340000000, float %973
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = and i32 %988, 32
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1063, label %991

; <label>:991                                     ; preds = %969
  %992 = add i32 %60, 92
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = add i32 %60, 376
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %997, 0
  %999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1000 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %999, %dx.types.Handle %99, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.ResRet.f32 %1000, 3
  %1005 = and i32 %994, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = lshr i32 %994, 8
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %994, 16
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = fmul fast float %1012, 0x3F70101000000000
  %1014 = fmul fast float %1001, %1006
  %1015 = fadd fast float %1014, %1009
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fadd fast float %1002, -5.000000e-01
  %1018 = fadd fast float %1004, -5.000000e-01
  %1019 = fmul fast float %1017, %1013
  %1020 = fmul fast float %1018, %1013
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fmul fast float %1021, 2.000000e+00
  %1024 = fadd fast float %1023, -1.000000e+00
  %1025 = fmul fast float %1022, 2.000000e+00
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = fadd fast float %1024, %1026
  %1028 = fmul fast float %1027, 5.000000e-01
  %1029 = fsub fast float %1024, %1026
  %1030 = fmul fast float %1029, 5.000000e-01
  %1031 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1032 = fsub fast float 1.000000e+00, %1031
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = fsub fast float %1032, %1033
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1030, float %1034, float %1028, float %1030, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1028, %1036
  %1038 = fmul fast float %1030, %1036
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 67108864
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1059, label %1043

; <label>:1043                                    ; preds = %991
  %1044 = add i32 %60, 280
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = lshr i32 %1046, 16
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = fsub fast float %1016, %1054
  %1056 = fmul fast float %1055, %1048
  %1057 = fadd fast float %1056, %1052
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  br label %1059

; <label>:1059                                    ; preds = %1043, %991
  %1060 = phi float [ %1058, %1043 ], [ %1016, %991 ]
  %1061 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %1062 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  br label %1063

; <label>:1063                                    ; preds = %1059, %969
  %1064 = phi float [ %1060, %1059 ], [ 0x3FD6666660000000, %969 ]
  %1065 = phi float [ %1061, %1059 ], [ 0.000000e+00, %969 ]
  %1066 = phi float [ %1062, %1059 ], [ 0.000000e+00, %969 ]
  %1067 = phi float [ %1003, %1059 ], [ 1.000000e+00, %969 ]
  %1068 = add i32 %60, 160
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = lshr i32 %1070, 22
  %1072 = shl nuw nsw i32 %1071, 5
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 64
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1111, label %1078

; <label>:1078                                    ; preds = %1063
  %1079 = add i32 %60, 392
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 131072
  %1087 = icmp eq i32 %1086, 0
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1083, %dx.types.Handle %99, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = fmul fast float %1089, %245
  %1093 = fmul fast float %1090, %248
  %1094 = fmul fast float %1091, %251
  br i1 %1087, label %1101, label %1095

; <label>:1095                                    ; preds = %1078
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = fmul fast float %1097, %1092
  %1099 = fmul fast float %1097, %1093
  %1100 = fmul fast float %1097, %1094
  br label %1101

; <label>:1101                                    ; preds = %1095, %1078
  %1102 = phi float [ %1098, %1095 ], [ %1092, %1078 ]
  %1103 = phi float [ %1099, %1095 ], [ %1093, %1078 ]
  %1104 = phi float [ %1100, %1095 ], [ %1094, %1078 ]
  %1105 = fmul fast float %1102, %1073
  %1106 = select i1 %228, float %1105, float %1102
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1103, float %1104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = select i1 %228, float 0.000000e+00, float %1102
  %1109 = select i1 %228, float %1107, float %1103
  %1110 = select i1 %228, float 0.000000e+00, float %1104
  br label %1111

; <label>:1111                                    ; preds = %1101, %1063
  %1112 = phi float [ %1108, %1101 ], [ 0.000000e+00, %1063 ]
  %1113 = phi float [ %1109, %1101 ], [ 0.000000e+00, %1063 ]
  %1114 = phi float [ %1110, %1101 ], [ 0.000000e+00, %1063 ]
  %1115 = add i32 %60, 96
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = lshr i32 %1117, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = fmul fast float %1122, %1123
  %1125 = fadd fast float %1124, %1119
  %1126 = fmul fast float %1125, 0x3F70101020000000
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1111, %464
  %1129 = phi float [ 0.000000e+00, %464 ], [ %1065, %1111 ]
  %1130 = phi float [ 0.000000e+00, %464 ], [ %1066, %1111 ]
  %1131 = phi float [ 0.000000e+00, %464 ], [ %984, %1111 ]
  %1132 = phi float [ 0.000000e+00, %464 ], [ %985, %1111 ]
  %1133 = phi float [ 0.000000e+00, %464 ], [ %986, %1111 ]
  %1134 = phi float [ 0.000000e+00, %464 ], [ %1112, %1111 ]
  %1135 = phi float [ 0.000000e+00, %464 ], [ %1113, %1111 ]
  %1136 = phi float [ 0.000000e+00, %464 ], [ %1114, %1111 ]
  %1137 = phi float [ 0.000000e+00, %464 ], [ %970, %1111 ]
  %1138 = phi float [ 0.000000e+00, %464 ], [ %766, %1111 ]
  %1139 = phi float [ 0.000000e+00, %464 ], [ %1064, %1111 ]
  %1140 = phi float [ 0.000000e+00, %464 ], [ %1067, %1111 ]
  %1141 = phi float [ 0.000000e+00, %464 ], [ %1127, %1111 ]
  br i1 %412, label %1983, label %1142

; <label>:1142                                    ; preds = %1128
  %1143 = icmp ult i32 %470, 2
  %1144 = add i32 %60, 40
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %60, 44
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = or i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1983, label %1152

; <label>:1152                                    ; preds = %1142
  %1153 = and i32 %1146, 262144
  %1154 = icmp ne i32 %1153, 0
  %1155 = select i1 %1154, float %62, float 1.000000e+00
  %1156 = select i1 %1154, float %63, float 0.000000e+00
  %1157 = select i1 %1154, float %64, float 0.000000e+00
  %1158 = select i1 %1154, float %65, float 1.000000e+00
  %1159 = select i1 %1154, float %66, float %82
  %1160 = select i1 %1154, float %67, float %83
  %1161 = add i32 %60, 300
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = fmul fast float %1165, 0x3F50624DE0000000
  %1167 = add i32 %60, 104
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = lshr i32 %1169, 16
  %1171 = and i32 %1170, 255
  %1172 = lshr i32 %1169, 24
  %1173 = add i32 %60, 308
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1175, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = add i32 %60, 48
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 22
  %1184 = shl nuw nsw i32 %1183, 5
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = shl i32 %1182, 4
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1182, 7
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1194 = fmul fast float %1193, 1.000000e+03
  %1195 = fmul fast float %322, %1194
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = fadd fast float %1196, %312
  %1198 = fmul fast float %323, %1194
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fadd fast float %1199, %314
  %1201 = fmul fast float %1166, %1194
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fmul fast float %1202, 0x401921FB60000000
  %1204 = fadd fast float %1203, %1185
  %1205 = call float @dx.op.unary.f32(i32 13, float %1204)  ; Sin(value)
  %1206 = call float @dx.op.unary.f32(i32 12, float %1204)  ; Cos(value)
  %1207 = fsub fast float -0.000000e+00, %1205
  %1208 = fadd fast float %1159, -5.000000e-01
  %1209 = fadd fast float %1160, -5.000000e-01
  %1210 = fmul fast float %1177, %1208
  %1211 = fmul fast float %1179, %1209
  %1212 = fadd fast float %1210, 5.000000e-01
  %1213 = fadd fast float %1211, 5.000000e-01
  %1214 = fmul fast float %1188, %1212
  %1215 = fmul fast float %1191, %1213
  %1216 = fmul fast float %1206, %1214
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1207, float %1215, float %1216)  ; FMad(a,b,c)
  %1218 = fmul fast float %1205, %1214
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1215, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1197, %1217
  %1221 = fadd fast float %1200, %1219
  %1222 = icmp ugt i32 %1171, 1
  %1223 = icmp ugt i32 %1169, 33554431
  %1224 = or i1 %1223, %1222
  br i1 %1224, label %1225, label %1250

; <label>:1225                                    ; preds = %1152
  %1226 = add i32 %60, 244
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 16
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = fmul fast float %1193, %1230
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = mul nuw nsw i32 %1171, %1172
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1232, %1234
  %1236 = call float @dx.op.unary.f32(i32 27, float %1235)  ; Round_ni(value)
  %1237 = fptoui float %1236 to i32
  %1238 = urem i32 %1237, %1171
  %1239 = udiv i32 %1237, %1172
  %1240 = call float @dx.op.unary.f32(i32 22, float %1220)  ; Frc(value)
  %1241 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1242 = uitofp i32 %1238 to float
  %1243 = uitofp i32 %1239 to float
  %1244 = fadd fast float %1240, %1242
  %1245 = fadd fast float %1241, %1243
  %1246 = uitofp i32 %1171 to float
  %1247 = uitofp i32 %1172 to float
  %1248 = fdiv fast float %1244, %1246
  %1249 = fdiv fast float %1245, %1247
  br label %1250

; <label>:1250                                    ; preds = %1225, %1152
  %1251 = phi float [ %1248, %1225 ], [ %1220, %1152 ]
  %1252 = phi float [ %1249, %1225 ], [ %1221, %1152 ]
  %1253 = and i32 %1146, 16777216
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1364, label %1255

; <label>:1255                                    ; preds = %1250
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = fadd fast float %1257, %166
  %1261 = fadd fast float %1258, %167
  %1262 = fadd fast float %1259, %168
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = icmp eq i32 %61, 65535
  br i1 %1266, label %1361, label %1267

; <label>:1267                                    ; preds = %1255
  %1268 = lshr i32 %61, 1
  %1269 = shl i32 %1268, 2
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %61, 1
  %1273 = icmp ne i32 %1272, 0
  %1274 = lshr i32 %1271, 16
  %1275 = and i32 %1271, 65535
  %1276 = select i1 %1273, i32 %1274, i32 %1275
  %1277 = icmp eq i32 %1276, 65535
  br i1 %1277, label %1357, label %1278

; <label>:1278                                    ; preds = %1267
  %1279 = mul nuw nsw i32 %1276, 40
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = add nuw nsw i32 %1279, 12
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = add nuw nsw i32 %1279, 24
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = add nuw nsw i32 %1279, 36
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = fsub fast float %1260, %1281
  %1298 = fsub fast float %1261, %1282
  %1299 = fsub fast float %1262, %1283
  %1300 = fmul fast float %1296, %1297
  %1301 = fmul fast float %1296, %1298
  %1302 = fmul fast float %1296, %1299
  %1303 = call float @dx.op.unary.f32(i32 27, float %1300)  ; Round_ni(value)
  %1304 = call float @dx.op.unary.f32(i32 27, float %1301)  ; Round_ni(value)
  %1305 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1306 = fadd fast float %1303, 5.000000e-01
  %1307 = fadd fast float %1304, 5.000000e-01
  %1308 = fadd fast float %1305, 5.000000e-01
  %1309 = fmul fast float %1306, %1286
  %1310 = fmul fast float %1307, %1287
  %1311 = fmul fast float %1308, %1288
  %1312 = shl i32 %61, 2
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = add i32 %1314, 0
  %1316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1317 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1318 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1316, %dx.types.Handle %55, float %1317, float %1318, float %1319, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = fmul fast float %1321, 1.023000e+03
  %1325 = fmul fast float %1322, 1.023000e+03
  %1326 = fmul fast float %1323, 1.023000e+03
  %1327 = fadd fast float %1324, 5.000000e-01
  %1328 = fadd fast float %1325, 5.000000e-01
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = call float @dx.op.unary.f32(i32 27, float %1327)  ; Round_ni(value)
  %1331 = call float @dx.op.unary.f32(i32 27, float %1328)  ; Round_ni(value)
  %1332 = call float @dx.op.unary.f32(i32 27, float %1329)  ; Round_ni(value)
  %1333 = fsub fast float %1300, %1303
  %1334 = fsub fast float %1301, %1304
  %1335 = fsub fast float %1302, %1305
  %1336 = fmul fast float %1333, 7.500000e-01
  %1337 = fmul fast float %1334, 7.500000e-01
  %1338 = fmul fast float %1335, 7.500000e-01
  %1339 = fadd fast float %1303, 1.250000e-01
  %1340 = fadd fast float %1339, %1336
  %1341 = fadd fast float %1340, %1330
  %1342 = fadd fast float %1304, 1.250000e-01
  %1343 = fadd fast float %1342, %1337
  %1344 = fadd fast float %1343, %1331
  %1345 = fadd fast float %1305, 1.250000e-01
  %1346 = fadd fast float %1345, %1338
  %1347 = fadd fast float %1346, %1332
  %1348 = fmul fast float %1341, %1291
  %1349 = fmul fast float %1344, %1292
  %1350 = fmul fast float %1347, %1293
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1354, %dx.types.Handle %53, float %1348, float %1349, float %1350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  br label %1357

; <label>:1357                                    ; preds = %1278, %1267
  %1358 = phi float [ %1356, %1278 ], [ -1.000000e+00, %1267 ]
  %1359 = fadd fast float %1358, %1265
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  br label %1361

; <label>:1361                                    ; preds = %1357, %1255
  %1362 = phi float [ %1360, %1357 ], [ %1265, %1255 ]
  %1363 = fmul fast float %1362, %467
  br label %1364

; <label>:1364                                    ; preds = %1361, %1250
  %1365 = phi float [ %1363, %1361 ], [ %467, %1250 ]
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 256
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1416, label %1370

; <label>:1370                                    ; preds = %1364
  %1371 = add i32 %60, 428
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %60, 116
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = shl i32 %1380, 4
  %1382 = and i32 %1381, 32752
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1380, 7
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = fsub fast float 1.000000e+00, %1365
  %1388 = call float @dx.op.binary.f32(i32 35, float %1387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1389 = bitcast float %1365 to i32
  %1390 = sitofp i32 %1389 to float
  %1391 = fadd fast float %1390, 0xC1CFBF8940000000
  %1392 = fmul fast float %1386, %1391
  %1393 = fadd fast float %1392, 0x41CFBF8940000000
  %1394 = fptosi float %1393 to i32
  %1395 = bitcast i32 %1394 to float
  %1396 = bitcast float %1388 to i32
  %1397 = sitofp i32 %1396 to float
  %1398 = fadd fast float %1397, 0xC1CFBF8940000000
  %1399 = fmul fast float %1398, %1386
  %1400 = fadd fast float %1399, 0x41CFBF8940000000
  %1401 = fptosi float %1400 to i32
  %1402 = bitcast i32 %1401 to float
  %1403 = fmul fast float %1395, %1383
  %1404 = fmul fast float %1402, %1383
  %1405 = fsub fast float %1388, %1403
  %1406 = fadd fast float %1404, %1388
  %1407 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = fsub fast float %1377, %1407
  %1410 = fsub fast float %1408, %1407
  %1411 = bitcast float %1410 to i32
  %1412 = sub nsw i32 2129859010, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1413, %1409
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  br label %1416

; <label>:1416                                    ; preds = %1370, %1364
  %1417 = phi float [ %1415, %1370 ], [ %1365, %1364 ]
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 128
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1438, label %1422

; <label>:1422                                    ; preds = %1416
  %1423 = add i32 %60, 412
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1425, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1427, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 524288
  %1433 = icmp ne i32 %1432, 0
  %1434 = fcmp fast ogt float %1429, 0x3FE0101020000000
  %1435 = select i1 %1434, float 1.000000e+00, float 0.000000e+00
  %1436 = select i1 %1433, float %1435, float %1429
  %1437 = fmul fast float %1436, %1417
  br label %1438

; <label>:1438                                    ; preds = %1422, %1416
  %1439 = phi float [ %1437, %1422 ], [ %1417, %1416 ]
  %1440 = fcmp fast ult float %1439, 0x3F70101020000000
  br i1 %1440, label %1983, label %1441

; <label>:1441                                    ; preds = %1438
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 16
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1644, label %1446

; <label>:1446                                    ; preds = %1441
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = add i32 %60, 364
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %99, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1454, 3
  %1459 = and i32 %1448, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = lshr i32 %1448, 8
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1458, %1460
  %1465 = fadd fast float %1464, %1463
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 512
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1479, label %1471

; <label>:1471                                    ; preds = %1446
  %1472 = add i32 %60, 444
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1471, %1446
  %1480 = phi float [ %1478, %1471 ], [ 1.000000e+00, %1446 ]
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 33554432
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1591, label %1485

; <label>:1485                                    ; preds = %1479
  %1486 = add i32 %60, 240
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1488, 16
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = add i32 %60, 244
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = lshr i32 %1499, 24
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1501, 0x3F70101020000000
  %1503 = and i32 %1499, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = lshr i32 %1499, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = lshr i32 %1499, 16
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = add i32 %60, 236
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = lshr i32 %1516, 24
  %1518 = uitofp i32 %1517 to float
  %1519 = fmul fast float %1518, 0x3F70101020000000
  %1520 = and i32 %1516, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1516, 8
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = lshr i32 %1516, 16
  %1528 = and i32 %1527, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = bitcast float %1455 to i32
  %1532 = ashr i32 %1531, 1
  %1533 = sub nsw i32 1597463174, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1455, 5.000000e-01
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1536, %1535
  %1538 = fsub fast float 1.500000e+00, %1537
  %1539 = fmul fast float %1534, %1455
  %1540 = fmul fast float %1539, %1538
  %1541 = bitcast float %1456 to i32
  %1542 = ashr i32 %1541, 1
  %1543 = sub nsw i32 1597463174, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1456, 5.000000e-01
  %1546 = fmul fast float %1544, %1544
  %1547 = fmul fast float %1546, %1545
  %1548 = fsub fast float 1.500000e+00, %1547
  %1549 = fmul fast float %1544, %1456
  %1550 = fmul fast float %1549, %1548
  %1551 = bitcast float %1457 to i32
  %1552 = ashr i32 %1551, 1
  %1553 = sub nsw i32 1597463174, %1552
  %1554 = bitcast i32 %1553 to float
  %1555 = fmul fast float %1457, 5.000000e-01
  %1556 = fmul fast float %1554, %1554
  %1557 = fmul fast float %1556, %1555
  %1558 = fsub fast float 1.500000e+00, %1557
  %1559 = fmul fast float %1554, %1457
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float %1540, %1522
  %1562 = fsub fast float %1550, %1526
  %1563 = fsub fast float %1560, %1530
  %1564 = fmul fast float %1561, %1490
  %1565 = fmul fast float %1562, %1492
  %1566 = fmul fast float %1563, %1497
  %1567 = fadd fast float %1564, %1505
  %1568 = fadd fast float %1565, %1509
  %1569 = fadd fast float %1566, %1513
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = fmul fast float %1570, %1570
  %1574 = fmul fast float %1571, %1571
  %1575 = fmul fast float %1572, %1572
  %1576 = fsub fast float %1573, %1455
  %1577 = fsub fast float %1574, %1456
  %1578 = fsub fast float %1575, %1457
  %1579 = fmul fast float %1576, %1480
  %1580 = fmul fast float %1577, %1480
  %1581 = fmul fast float %1578, %1480
  %1582 = fadd fast float %1579, %1455
  %1583 = fadd fast float %1580, %1456
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1502, %1466
  %1586 = fsub fast float %1585, %1519
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fsub fast float %1587, %1466
  %1589 = fmul fast float %1588, %1480
  %1590 = fadd fast float %1589, %1466
  br label %1644

; <label>:1591                                    ; preds = %1479
  %1592 = and i32 %1482, 134217728
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1628, label %1594

; <label>:1594                                    ; preds = %1591
  %1595 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1596 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1598 = fadd fast float %1595, -5.000000e-01
  %1599 = fadd fast float %1596, -5.000000e-01
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fmul fast float %1598, %1480
  %1602 = fmul fast float %1599, %1480
  %1603 = fmul fast float %1600, %1480
  %1604 = fadd fast float %1601, 5.000000e-01
  %1605 = fadd fast float %1602, 5.000000e-01
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = fmul fast float %1604, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1607
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1607
  %1615 = fmul fast float %1605, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1608
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1608
  %1620 = fmul fast float %1606, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1609
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1609
  %1625 = fmul fast float %1614, %1614
  %1626 = fmul fast float %1619, %1619
  %1627 = fmul fast float %1624, %1624
  br label %1644

; <label>:1628                                    ; preds = %1591
  %1629 = fmul fast float %299, %299
  %1630 = fmul fast float %303, %303
  %1631 = fmul fast float %307, %307
  %1632 = fadd fast float %1629, -1.000000e+00
  %1633 = fadd fast float %1630, -1.000000e+00
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fmul fast float %1480, %1632
  %1636 = fmul fast float %1480, %1633
  %1637 = fmul fast float %1480, %1634
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fmul fast float %1638, %1455
  %1642 = fmul fast float %1639, %1456
  %1643 = fmul fast float %1640, %1457
  br label %1644

; <label>:1644                                    ; preds = %1628, %1594, %1485, %1441
  %1645 = phi float [ %1590, %1485 ], [ %1466, %1594 ], [ %1466, %1628 ], [ 0x3FA23C0BE0000000, %1441 ]
  %1646 = phi float [ %1582, %1485 ], [ %1625, %1594 ], [ %1641, %1628 ], [ 1.000000e+00, %1441 ]
  %1647 = phi float [ %1583, %1485 ], [ %1626, %1594 ], [ %1642, %1628 ], [ 1.000000e+00, %1441 ]
  %1648 = phi float [ %1584, %1485 ], [ %1627, %1594 ], [ %1643, %1628 ], [ 1.000000e+00, %1441 ]
  %1649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.i32 %1649, 1
  %1651 = and i32 %1650, 1
  %1652 = icmp ne i32 %1651, 0
  %1653 = add i32 %60, 356
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp ne i32 %1656, 0
  %1658 = and i1 %1652, %1657
  %1659 = select i1 %1658, float 1.000000e+00, float %1646
  %1660 = select i1 %1658, float 0x3FD3333340000000, float %1647
  %1661 = select i1 %1658, float 0x3FD3333340000000, float %1648
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 32
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1738, label %1666

; <label>:1666                                    ; preds = %1644
  %1667 = add i32 %60, 108
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %60, 380
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %1672, 0
  %1674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1674, %dx.types.Handle %99, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = extractvalue %dx.types.ResRet.f32 %1675, 3
  %1680 = and i32 %1669, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = lshr i32 %1669, 8
  %1683 = and i32 %1682, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1669, 16
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101000000000
  %1689 = fmul fast float %1676, %1681
  %1690 = fadd fast float %1689, %1684
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fadd fast float %1677, -5.000000e-01
  %1693 = fadd fast float %1679, -5.000000e-01
  %1694 = fmul fast float %1692, %1688
  %1695 = fmul fast float %1693, %1688
  %1696 = fadd fast float %1694, 5.000000e-01
  %1697 = fadd fast float %1695, 5.000000e-01
  %1698 = fmul fast float %1696, 2.000000e+00
  %1699 = fadd fast float %1698, -1.000000e+00
  %1700 = fmul fast float %1697, 2.000000e+00
  %1701 = fadd fast float %1700, -1.000000e+00
  %1702 = fadd fast float %1699, %1701
  %1703 = fmul fast float %1702, 5.000000e-01
  %1704 = fsub fast float %1699, %1701
  %1705 = fmul fast float %1704, 5.000000e-01
  %1706 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1709 = fsub fast float %1707, %1708
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1705, float %1709, float %1703, float %1705, float %1709)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.unary.f32(i32 25, float %1710)  ; Rsqrt(value)
  %1712 = fmul fast float %1703, %1711
  %1713 = fmul fast float %1705, %1711
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 67108864
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1734, label %1718

; <label>:1718                                    ; preds = %1666
  %1719 = add i32 %60, 296
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 65535
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 65535
  %1727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1726)  ; LegacyF16ToF32(value)
  %1728 = lshr i32 %1721, 16
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = fsub fast float %1691, %1729
  %1731 = fmul fast float %1730, %1723
  %1732 = fadd fast float %1731, %1727
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  br label %1734

; <label>:1734                                    ; preds = %1718, %1666
  %1735 = phi float [ %1733, %1718 ], [ %1691, %1666 ]
  %1736 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1155, float %1156)  ; Dot2(ax,ay,bx,by)
  %1737 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1157, float %1158)  ; Dot2(ax,ay,bx,by)
  br label %1738

; <label>:1738                                    ; preds = %1734, %1644
  %1739 = phi float [ %1735, %1734 ], [ 0x3FD6666660000000, %1644 ]
  %1740 = phi float [ %1736, %1734 ], [ 0.000000e+00, %1644 ]
  %1741 = phi float [ %1737, %1734 ], [ 0.000000e+00, %1644 ]
  %1742 = phi float [ %1678, %1734 ], [ 1.000000e+00, %1644 ]
  %1743 = add i32 %60, 176
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = lshr i32 %1745, 22
  %1747 = shl nuw nsw i32 %1746, 5
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 64
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1786, label %1753

; <label>:1753                                    ; preds = %1738
  %1754 = add i32 %60, 396
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = add i32 %1756, 0
  %1758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 131072
  %1762 = icmp eq i32 %1761, 0
  %1763 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1758, %dx.types.Handle %99, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = fmul fast float %1764, %287
  %1768 = fmul fast float %1765, %290
  %1769 = fmul fast float %1766, %293
  br i1 %1762, label %1776, label %1770

; <label>:1770                                    ; preds = %1753
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fmul fast float %1772, %1767
  %1774 = fmul fast float %1772, %1768
  %1775 = fmul fast float %1772, %1769
  br label %1776

; <label>:1776                                    ; preds = %1770, %1753
  %1777 = phi float [ %1773, %1770 ], [ %1767, %1753 ]
  %1778 = phi float [ %1774, %1770 ], [ %1768, %1753 ]
  %1779 = phi float [ %1775, %1770 ], [ %1769, %1753 ]
  %1780 = fmul fast float %1777, %1748
  %1781 = select i1 %228, float %1780, float %1777
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1778, float %1779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = select i1 %228, float 0.000000e+00, float %1777
  %1784 = select i1 %228, float %1782, float %1778
  %1785 = select i1 %228, float 0.000000e+00, float %1779
  br label %1786

; <label>:1786                                    ; preds = %1776, %1738
  %1787 = phi float [ %1783, %1776 ], [ 0.000000e+00, %1738 ]
  %1788 = phi float [ %1784, %1776 ], [ 0.000000e+00, %1738 ]
  %1789 = phi float [ %1785, %1776 ], [ 0.000000e+00, %1738 ]
  %1790 = add i32 %60, 112
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1792, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1659, float %1660, float %1661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = fmul fast float %1797, %1798
  %1800 = fadd fast float %1799, %1794
  %1801 = fmul fast float %1800, 0x3F70101020000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  br i1 %1143, label %1803, label %1811

; <label>:1803                                    ; preds = %1786
  %1804 = fsub fast float 1.000000e+00, %1439
  %1805 = fmul fast float %1804, %1131
  %1806 = fmul fast float %1804, %1132
  %1807 = fmul fast float %1804, %1133
  %1808 = fmul fast float %1804, %1134
  %1809 = fmul fast float %1804, %1135
  %1810 = fmul fast float %1804, %1136
  br label %1811

; <label>:1811                                    ; preds = %1803, %1786
  %1812 = phi float [ %1805, %1803 ], [ %1131, %1786 ]
  %1813 = phi float [ %1806, %1803 ], [ %1132, %1786 ]
  %1814 = phi float [ %1807, %1803 ], [ %1133, %1786 ]
  %1815 = phi float [ %1808, %1803 ], [ %1134, %1786 ]
  %1816 = phi float [ %1809, %1803 ], [ %1135, %1786 ]
  %1817 = phi float [ %1810, %1803 ], [ %1136, %1786 ]
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 3
  %1821 = icmp eq i32 %1820, 3
  br i1 %1821, label %1900, label %1822

; <label>:1822                                    ; preds = %1811
  %1823 = and i32 %1819, 16
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %1439, float 0.000000e+00
  %1826 = icmp eq i32 %1820, 0
  br i1 %1826, label %1827, label %1855

; <label>:1827                                    ; preds = %1822
  %1828 = and i32 %1819, 64
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1439, float 0.000000e+00
  %1831 = fsub fast float %1659, %1812
  %1832 = fsub fast float %1660, %1813
  %1833 = fsub fast float %1661, %1814
  %1834 = fmul fast float %1825, %1831
  %1835 = fmul fast float %1825, %1832
  %1836 = fmul fast float %1825, %1833
  %1837 = fadd fast float %1834, %1812
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fsub fast float %1645, %1137
  %1841 = fmul fast float %1825, %1840
  %1842 = fadd fast float %1841, %1137
  %1843 = fsub fast float %1787, %1815
  %1844 = fsub fast float %1788, %1816
  %1845 = fsub fast float %1789, %1817
  %1846 = fmul fast float %1830, %1843
  %1847 = fmul fast float %1830, %1844
  %1848 = fmul fast float %1830, %1845
  %1849 = fadd fast float %1846, %1815
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fsub fast float %1802, %1141
  %1853 = fmul fast float %1825, %1852
  %1854 = fadd fast float %1853, %1141
  br label %1900

; <label>:1855                                    ; preds = %1822
  %1856 = icmp eq i32 %1820, 1
  br i1 %1856, label %1857, label %1870

; <label>:1857                                    ; preds = %1855
  %1858 = fadd fast float %1659, -1.000000e+00
  %1859 = fadd fast float %1660, -1.000000e+00
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fmul fast float %1825, %1858
  %1862 = fmul fast float %1825, %1859
  %1863 = fmul fast float %1825, %1860
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fmul fast float %1864, %1812
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  br label %1900

; <label>:1870                                    ; preds = %1855
  %1871 = icmp eq i32 %1820, 2
  br i1 %1871, label %1872, label %1900

; <label>:1872                                    ; preds = %1870
  %1873 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1874 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = fadd fast float %1873, -5.000000e-01
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fmul fast float %1876, %1825
  %1880 = fmul fast float %1877, %1825
  %1881 = fmul fast float %1878, %1825
  %1882 = fadd fast float %1879, 5.000000e-01
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fmul fast float %1882, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1812
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1812
  %1890 = fmul fast float %1883, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1813
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1813
  %1895 = fmul fast float %1884, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1814
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1814
  br label %1900

; <label>:1900                                    ; preds = %1872, %1870, %1857, %1827, %1811
  %1901 = phi float [ %1812, %1811 ], [ %1889, %1872 ], [ %1812, %1870 ], [ %1867, %1857 ], [ %1837, %1827 ]
  %1902 = phi float [ %1813, %1811 ], [ %1894, %1872 ], [ %1813, %1870 ], [ %1868, %1857 ], [ %1838, %1827 ]
  %1903 = phi float [ %1814, %1811 ], [ %1899, %1872 ], [ %1814, %1870 ], [ %1869, %1857 ], [ %1839, %1827 ]
  %1904 = phi float [ %1815, %1811 ], [ %1815, %1872 ], [ %1815, %1870 ], [ %1815, %1857 ], [ %1849, %1827 ]
  %1905 = phi float [ %1816, %1811 ], [ %1816, %1872 ], [ %1816, %1870 ], [ %1816, %1857 ], [ %1850, %1827 ]
  %1906 = phi float [ %1817, %1811 ], [ %1817, %1872 ], [ %1817, %1870 ], [ %1817, %1857 ], [ %1851, %1827 ]
  %1907 = phi float [ %1137, %1811 ], [ %1137, %1872 ], [ %1137, %1870 ], [ %1137, %1857 ], [ %1842, %1827 ]
  %1908 = phi float [ %1141, %1811 ], [ %1141, %1872 ], [ %1141, %1870 ], [ %1141, %1857 ], [ %1854, %1827 ]
  %1909 = and i32 %1819, 12
  %1910 = icmp eq i32 %1909, 12
  br i1 %1910, label %1983, label %1911

; <label>:1911                                    ; preds = %1900
  %1912 = and i32 %1819, 2097184
  %1913 = icmp eq i32 %1912, 2097184
  %1914 = select i1 %1913, float %1439, float 0.000000e+00
  %1915 = and i32 %1819, 4194336
  %1916 = icmp eq i32 %1915, 4194336
  %1917 = select i1 %1916, float %1439, float 0.000000e+00
  %1918 = and i32 %1819, 8388640
  %1919 = icmp eq i32 %1918, 8388640
  %1920 = select i1 %1919, float %1439, float 0.000000e+00
  %1921 = icmp eq i32 %1909, 0
  br i1 %1921, label %1922, label %1935

; <label>:1922                                    ; preds = %1911
  %1923 = fsub fast float %1740, %1129
  %1924 = fsub fast float %1741, %1130
  %1925 = fmul fast float %1914, %1923
  %1926 = fmul fast float %1914, %1924
  %1927 = fadd fast float %1925, %1129
  %1928 = fadd fast float %1926, %1130
  %1929 = fsub fast float %1742, %1140
  %1930 = fmul fast float %1917, %1929
  %1931 = fadd fast float %1930, %1140
  %1932 = fsub fast float %1739, %1139
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1139
  br label %1983

; <label>:1935                                    ; preds = %1911
  %1936 = icmp eq i32 %1909, 4
  br i1 %1936, label %1937, label %1969

; <label>:1937                                    ; preds = %1935
  %1938 = fmul fast float %1914, %1740
  %1939 = fmul fast float %1914, %1741
  %1940 = fadd fast float %1938, %1129
  %1941 = fadd fast float %1939, %1130
  %1942 = call float @dx.op.binary.f32(i32 36, float %1140, float %1742)  ; FMin(a,b)
  %1943 = fsub fast float %1942, %1140
  %1944 = fmul fast float %1943, %1917
  %1945 = fadd fast float %1944, %1140
  %1946 = fadd fast float %1739, %1139
  %1947 = fmul fast float %1946, 0x3FF337FAE0000000
  %1948 = fmul fast float %1139, %1139
  %1949 = fmul fast float %1739, %1739
  %1950 = fadd fast float %1949, %1948
  %1951 = fmul fast float %1950, 0x3FE5152B00000000
  %1952 = fmul fast float %1139, 0xBFCC1F85E0000000
  %1953 = fmul fast float %1952, %1739
  %1954 = fadd fast float %1953, 0xBFE1363700000000
  %1955 = fadd fast float %1954, %1947
  %1956 = fsub fast float %1955, %1951
  %1957 = fmul fast float %1946, 0x3FBA6F0D00000000
  %1958 = fmul fast float %1950, 0x3FD0432880000000
  %1959 = fmul fast float %1139, 0xBFEF110800000000
  %1960 = fmul fast float %1959, %1739
  %1961 = fadd fast float %1960, 1.000000e+00
  %1962 = fsub fast float %1961, %1957
  %1963 = fadd fast float %1962, %1958
  %1964 = fdiv fast float %1956, %1963
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fsub fast float %1965, %1139
  %1967 = fmul fast float %1966, %1920
  %1968 = fadd fast float %1967, %1139
  br label %1983

; <label>:1969                                    ; preds = %1935
  %1970 = icmp eq i32 %1909, 8
  br i1 %1970, label %1971, label %1983

; <label>:1971                                    ; preds = %1969
  %1972 = fmul fast float %1914, %1740
  %1973 = fmul fast float %1914, %1741
  %1974 = fadd fast float %1972, %1129
  %1975 = fadd fast float %1973, %1130
  %1976 = call float @dx.op.binary.f32(i32 36, float %1140, float %1742)  ; FMin(a,b)
  %1977 = fsub fast float %1976, %1140
  %1978 = fmul fast float %1977, %1917
  %1979 = fadd fast float %1978, %1140
  %1980 = fsub fast float %1739, %1139
  %1981 = fmul fast float %1920, %1980
  %1982 = fadd fast float %1981, %1139
  br label %1983

; <label>:1983                                    ; preds = %1971, %1969, %1937, %1922, %1900, %1438, %1142, %1128
  %1984 = phi float [ %1129, %1900 ], [ %1129, %1438 ], [ %1129, %1128 ], [ %1974, %1971 ], [ %1129, %1969 ], [ %1940, %1937 ], [ %1927, %1922 ], [ %1129, %1142 ]
  %1985 = phi float [ %1130, %1900 ], [ %1130, %1438 ], [ %1130, %1128 ], [ %1975, %1971 ], [ %1130, %1969 ], [ %1941, %1937 ], [ %1928, %1922 ], [ %1130, %1142 ]
  %1986 = phi float [ %1901, %1900 ], [ %1131, %1438 ], [ %1131, %1128 ], [ %1901, %1971 ], [ %1901, %1969 ], [ %1901, %1937 ], [ %1901, %1922 ], [ %1131, %1142 ]
  %1987 = phi float [ %1902, %1900 ], [ %1132, %1438 ], [ %1132, %1128 ], [ %1902, %1971 ], [ %1902, %1969 ], [ %1902, %1937 ], [ %1902, %1922 ], [ %1132, %1142 ]
  %1988 = phi float [ %1903, %1900 ], [ %1133, %1438 ], [ %1133, %1128 ], [ %1903, %1971 ], [ %1903, %1969 ], [ %1903, %1937 ], [ %1903, %1922 ], [ %1133, %1142 ]
  %1989 = phi float [ %1904, %1900 ], [ %1134, %1438 ], [ %1134, %1128 ], [ %1904, %1971 ], [ %1904, %1969 ], [ %1904, %1937 ], [ %1904, %1922 ], [ %1134, %1142 ]
  %1990 = phi float [ %1905, %1900 ], [ %1135, %1438 ], [ %1135, %1128 ], [ %1905, %1971 ], [ %1905, %1969 ], [ %1905, %1937 ], [ %1905, %1922 ], [ %1135, %1142 ]
  %1991 = phi float [ %1906, %1900 ], [ %1136, %1438 ], [ %1136, %1128 ], [ %1906, %1971 ], [ %1906, %1969 ], [ %1906, %1937 ], [ %1906, %1922 ], [ %1136, %1142 ]
  %1992 = phi float [ %1907, %1900 ], [ %1137, %1438 ], [ %1137, %1128 ], [ %1907, %1971 ], [ %1907, %1969 ], [ %1907, %1937 ], [ %1907, %1922 ], [ %1137, %1142 ]
  %1993 = phi float [ %1139, %1900 ], [ %1139, %1438 ], [ %1139, %1128 ], [ %1982, %1971 ], [ %1139, %1969 ], [ %1968, %1937 ], [ %1934, %1922 ], [ %1139, %1142 ]
  %1994 = phi float [ %1140, %1900 ], [ %1140, %1438 ], [ %1140, %1128 ], [ %1979, %1971 ], [ %1140, %1969 ], [ %1945, %1937 ], [ %1931, %1922 ], [ %1140, %1142 ]
  %1995 = phi float [ %1908, %1900 ], [ %1141, %1438 ], [ %1141, %1128 ], [ %1908, %1971 ], [ %1908, %1969 ], [ %1908, %1937 ], [ %1908, %1922 ], [ %1141, %1142 ]
  br i1 %414, label %2837, label %1996

; <label>:1996                                    ; preds = %1983
  %1997 = icmp ult i32 %470, 3
  %1998 = add i32 %60, 56
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %60, 60
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = or i32 %2003, %2000
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2837, label %2006

; <label>:2006                                    ; preds = %1996
  %2007 = and i32 %2000, 262144
  %2008 = icmp ne i32 %2007, 0
  %2009 = select i1 %2008, float %62, float 1.000000e+00
  %2010 = select i1 %2008, float %63, float 0.000000e+00
  %2011 = select i1 %2008, float %64, float 0.000000e+00
  %2012 = select i1 %2008, float %65, float 1.000000e+00
  %2013 = select i1 %2008, float %66, float %82
  %2014 = select i1 %2008, float %67, float %83
  %2015 = add i32 %60, 316
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 16
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = fmul fast float %2019, 0x3F50624DE0000000
  %2021 = add i32 %60, 120
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = lshr i32 %2023, 16
  %2025 = and i32 %2024, 255
  %2026 = lshr i32 %2023, 24
  %2027 = add i32 %60, 324
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2029, 16
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = add i32 %60, 64
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 22
  %2038 = shl nuw nsw i32 %2037, 5
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = shl i32 %2036, 4
  %2041 = and i32 %2040, 32752
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = lshr i32 %2036, 7
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2048 = fmul fast float %2047, 1.000000e+03
  %2049 = fmul fast float %364, %2048
  %2050 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2051 = fadd fast float %2050, %354
  %2052 = fmul fast float %365, %2048
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %356
  %2055 = fmul fast float %2020, %2048
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fmul fast float %2056, 0x401921FB60000000
  %2058 = fadd fast float %2057, %2039
  %2059 = call float @dx.op.unary.f32(i32 13, float %2058)  ; Sin(value)
  %2060 = call float @dx.op.unary.f32(i32 12, float %2058)  ; Cos(value)
  %2061 = fsub fast float -0.000000e+00, %2059
  %2062 = fadd fast float %2013, -5.000000e-01
  %2063 = fadd fast float %2014, -5.000000e-01
  %2064 = fmul fast float %2031, %2062
  %2065 = fmul fast float %2033, %2063
  %2066 = fadd fast float %2064, 5.000000e-01
  %2067 = fadd fast float %2065, 5.000000e-01
  %2068 = fmul fast float %2042, %2066
  %2069 = fmul fast float %2045, %2067
  %2070 = fmul fast float %2060, %2068
  %2071 = call float @dx.op.tertiary.f32(i32 46, float %2061, float %2069, float %2070)  ; FMad(a,b,c)
  %2072 = fmul fast float %2059, %2068
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2060, float %2069, float %2072)  ; FMad(a,b,c)
  %2074 = fadd fast float %2051, %2071
  %2075 = fadd fast float %2054, %2073
  %2076 = icmp ugt i32 %2025, 1
  %2077 = icmp ugt i32 %2023, 33554431
  %2078 = or i1 %2077, %2076
  br i1 %2078, label %2079, label %2104

; <label>:2079                                    ; preds = %2006
  %2080 = add i32 %60, 260
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = lshr i32 %2082, 16
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = fmul fast float %2047, %2084
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = mul nuw nsw i32 %2025, %2026
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2086, %2088
  %2090 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2091 = fptoui float %2090 to i32
  %2092 = urem i32 %2091, %2025
  %2093 = udiv i32 %2091, %2026
  %2094 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2095 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2096 = uitofp i32 %2092 to float
  %2097 = uitofp i32 %2093 to float
  %2098 = fadd fast float %2094, %2096
  %2099 = fadd fast float %2095, %2097
  %2100 = uitofp i32 %2025 to float
  %2101 = uitofp i32 %2026 to float
  %2102 = fdiv fast float %2098, %2100
  %2103 = fdiv fast float %2099, %2101
  br label %2104

; <label>:2104                                    ; preds = %2079, %2006
  %2105 = phi float [ %2102, %2079 ], [ %2074, %2006 ]
  %2106 = phi float [ %2103, %2079 ], [ %2075, %2006 ]
  %2107 = and i32 %2000, 16777216
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2218, label %2109

; <label>:2109                                    ; preds = %2104
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fadd fast float %2111, %166
  %2115 = fadd fast float %2112, %167
  %2116 = fadd fast float %2113, %168
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2120 = icmp eq i32 %61, 65535
  br i1 %2120, label %2215, label %2121

; <label>:2121                                    ; preds = %2109
  %2122 = lshr i32 %61, 1
  %2123 = shl i32 %2122, 2
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %61, 1
  %2127 = icmp ne i32 %2126, 0
  %2128 = lshr i32 %2125, 16
  %2129 = and i32 %2125, 65535
  %2130 = select i1 %2127, i32 %2128, i32 %2129
  %2131 = icmp eq i32 %2130, 65535
  br i1 %2131, label %2211, label %2132

; <label>:2132                                    ; preds = %2121
  %2133 = mul nuw nsw i32 %2130, 40
  %2134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = add nuw nsw i32 %2133, 12
  %2139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = add nuw nsw i32 %2133, 24
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = add nuw nsw i32 %2133, 36
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = fsub fast float %2114, %2135
  %2152 = fsub fast float %2115, %2136
  %2153 = fsub fast float %2116, %2137
  %2154 = fmul fast float %2150, %2151
  %2155 = fmul fast float %2150, %2152
  %2156 = fmul fast float %2150, %2153
  %2157 = call float @dx.op.unary.f32(i32 27, float %2154)  ; Round_ni(value)
  %2158 = call float @dx.op.unary.f32(i32 27, float %2155)  ; Round_ni(value)
  %2159 = call float @dx.op.unary.f32(i32 27, float %2156)  ; Round_ni(value)
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fmul fast float %2160, %2140
  %2164 = fmul fast float %2161, %2141
  %2165 = fmul fast float %2162, %2142
  %2166 = shl i32 %61, 2
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %2168, 0
  %2170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2171 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2172 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2173 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2170, %dx.types.Handle %55, float %2171, float %2172, float %2173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2178 = fmul fast float %2175, 1.023000e+03
  %2179 = fmul fast float %2176, 1.023000e+03
  %2180 = fmul fast float %2177, 1.023000e+03
  %2181 = fadd fast float %2178, 5.000000e-01
  %2182 = fadd fast float %2179, 5.000000e-01
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = call float @dx.op.unary.f32(i32 27, float %2181)  ; Round_ni(value)
  %2185 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2186 = call float @dx.op.unary.f32(i32 27, float %2183)  ; Round_ni(value)
  %2187 = fsub fast float %2154, %2157
  %2188 = fsub fast float %2155, %2158
  %2189 = fsub fast float %2156, %2159
  %2190 = fmul fast float %2187, 7.500000e-01
  %2191 = fmul fast float %2188, 7.500000e-01
  %2192 = fmul fast float %2189, 7.500000e-01
  %2193 = fadd fast float %2157, 1.250000e-01
  %2194 = fadd fast float %2193, %2190
  %2195 = fadd fast float %2194, %2184
  %2196 = fadd fast float %2158, 1.250000e-01
  %2197 = fadd fast float %2196, %2191
  %2198 = fadd fast float %2197, %2185
  %2199 = fadd fast float %2159, 1.250000e-01
  %2200 = fadd fast float %2199, %2192
  %2201 = fadd fast float %2200, %2186
  %2202 = fmul fast float %2195, %2145
  %2203 = fmul fast float %2198, %2146
  %2204 = fmul fast float %2201, %2147
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = add i32 %2206, 0
  %2208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2208, %dx.types.Handle %53, float %2202, float %2203, float %2204, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  br label %2211

; <label>:2211                                    ; preds = %2132, %2121
  %2212 = phi float [ %2210, %2132 ], [ -1.000000e+00, %2121 ]
  %2213 = fadd fast float %2212, %2119
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  br label %2215

; <label>:2215                                    ; preds = %2211, %2109
  %2216 = phi float [ %2214, %2211 ], [ %2119, %2109 ]
  %2217 = fmul fast float %2216, %466
  br label %2218

; <label>:2218                                    ; preds = %2215, %2104
  %2219 = phi float [ %2217, %2215 ], [ %466, %2104 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 256
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2270, label %2224

; <label>:2224                                    ; preds = %2218
  %2225 = add i32 %60, 432
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %2227, 0
  %2229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2229, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2231 = extractvalue %dx.types.ResRet.f32 %2230, 0
  %2232 = add i32 %60, 132
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = shl i32 %2234, 4
  %2236 = and i32 %2235, 32752
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = lshr i32 %2234, 7
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = fsub fast float 1.000000e+00, %2219
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2243 = bitcast float %2219 to i32
  %2244 = sitofp i32 %2243 to float
  %2245 = fadd fast float %2244, 0xC1CFBF8940000000
  %2246 = fmul fast float %2240, %2245
  %2247 = fadd fast float %2246, 0x41CFBF8940000000
  %2248 = fptosi float %2247 to i32
  %2249 = bitcast i32 %2248 to float
  %2250 = bitcast float %2242 to i32
  %2251 = sitofp i32 %2250 to float
  %2252 = fadd fast float %2251, 0xC1CFBF8940000000
  %2253 = fmul fast float %2252, %2240
  %2254 = fadd fast float %2253, 0x41CFBF8940000000
  %2255 = fptosi float %2254 to i32
  %2256 = bitcast i32 %2255 to float
  %2257 = fmul fast float %2249, %2237
  %2258 = fmul fast float %2256, %2237
  %2259 = fsub fast float %2242, %2257
  %2260 = fadd fast float %2258, %2242
  %2261 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2263 = fsub fast float %2231, %2261
  %2264 = fsub fast float %2262, %2261
  %2265 = bitcast float %2264 to i32
  %2266 = sub nsw i32 2129859010, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2267, %2263
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  br label %2270

; <label>:2270                                    ; preds = %2224, %2218
  %2271 = phi float [ %2269, %2224 ], [ %2219, %2218 ]
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 128
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2292, label %2276

; <label>:2276                                    ; preds = %2270
  %2277 = add i32 %60, 416
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = add i32 %2279, 0
  %2281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2281, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 524288
  %2287 = icmp ne i32 %2286, 0
  %2288 = fcmp fast ogt float %2283, 0x3FE0101020000000
  %2289 = select i1 %2288, float 1.000000e+00, float 0.000000e+00
  %2290 = select i1 %2287, float %2289, float %2283
  %2291 = fmul fast float %2290, %2271
  br label %2292

; <label>:2292                                    ; preds = %2276, %2270
  %2293 = phi float [ %2291, %2276 ], [ %2271, %2270 ]
  %2294 = fcmp fast ult float %2293, 0x3F70101020000000
  br i1 %2294, label %2837, label %2295

; <label>:2295                                    ; preds = %2292
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 16
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2498, label %2300

; <label>:2300                                    ; preds = %2295
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %60, 368
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2307, %dx.types.Handle %99, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = and i32 %2302, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = lshr i32 %2302, 8
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2312, %2314
  %2319 = fadd fast float %2318, %2317
  %2320 = fmul fast float %2319, 0x3F70101000000000
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 512
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2333, label %2325

; <label>:2325                                    ; preds = %2300
  %2326 = add i32 %60, 448
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = add i32 %2328, 0
  %2330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2330, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  br label %2333

; <label>:2333                                    ; preds = %2325, %2300
  %2334 = phi float [ %2332, %2325 ], [ 1.000000e+00, %2300 ]
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 33554432
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2445, label %2339

; <label>:2339                                    ; preds = %2333
  %2340 = add i32 %60, 256
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2342, 16
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = add i32 %60, 260
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 65535
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = lshr i32 %2353, 24
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = and i32 %2353, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = lshr i32 %2353, 8
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2362, 0x3F70101020000000
  %2364 = lshr i32 %2353, 16
  %2365 = and i32 %2364, 255
  %2366 = uitofp i32 %2365 to float
  %2367 = fmul fast float %2366, 0x3F70101020000000
  %2368 = add i32 %60, 252
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 24
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = and i32 %2370, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2370, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = lshr i32 %2370, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F70101020000000
  %2385 = bitcast float %2309 to i32
  %2386 = ashr i32 %2385, 1
  %2387 = sub nsw i32 1597463174, %2386
  %2388 = bitcast i32 %2387 to float
  %2389 = fmul fast float %2309, 5.000000e-01
  %2390 = fmul fast float %2388, %2388
  %2391 = fmul fast float %2390, %2389
  %2392 = fsub fast float 1.500000e+00, %2391
  %2393 = fmul fast float %2388, %2309
  %2394 = fmul fast float %2393, %2392
  %2395 = bitcast float %2310 to i32
  %2396 = ashr i32 %2395, 1
  %2397 = sub nsw i32 1597463174, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2310, 5.000000e-01
  %2400 = fmul fast float %2398, %2398
  %2401 = fmul fast float %2400, %2399
  %2402 = fsub fast float 1.500000e+00, %2401
  %2403 = fmul fast float %2398, %2310
  %2404 = fmul fast float %2403, %2402
  %2405 = bitcast float %2311 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2311, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2311
  %2414 = fmul fast float %2413, %2412
  %2415 = fsub fast float %2394, %2376
  %2416 = fsub fast float %2404, %2380
  %2417 = fsub fast float %2414, %2384
  %2418 = fmul fast float %2415, %2344
  %2419 = fmul fast float %2416, %2346
  %2420 = fmul fast float %2417, %2351
  %2421 = fadd fast float %2418, %2359
  %2422 = fadd fast float %2419, %2363
  %2423 = fadd fast float %2420, %2367
  %2424 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2425 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = fmul fast float %2424, %2424
  %2428 = fmul fast float %2425, %2425
  %2429 = fmul fast float %2426, %2426
  %2430 = fsub fast float %2427, %2309
  %2431 = fsub fast float %2428, %2310
  %2432 = fsub fast float %2429, %2311
  %2433 = fmul fast float %2430, %2334
  %2434 = fmul fast float %2431, %2334
  %2435 = fmul fast float %2432, %2334
  %2436 = fadd fast float %2433, %2309
  %2437 = fadd fast float %2434, %2310
  %2438 = fadd fast float %2435, %2311
  %2439 = fadd fast float %2356, %2320
  %2440 = fsub fast float %2439, %2373
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = fsub fast float %2441, %2320
  %2443 = fmul fast float %2442, %2334
  %2444 = fadd fast float %2443, %2320
  br label %2498

; <label>:2445                                    ; preds = %2333
  %2446 = and i32 %2336, 134217728
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2482, label %2448

; <label>:2448                                    ; preds = %2445
  %2449 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2452 = fadd fast float %2449, -5.000000e-01
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fmul fast float %2452, %2334
  %2456 = fmul fast float %2453, %2334
  %2457 = fmul fast float %2454, %2334
  %2458 = fadd fast float %2455, 5.000000e-01
  %2459 = fadd fast float %2456, 5.000000e-01
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2464 = fmul fast float %2458, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2461
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2461
  %2469 = fmul fast float %2459, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2462
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2462
  %2474 = fmul fast float %2460, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2463
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2463
  %2479 = fmul fast float %2468, %2468
  %2480 = fmul fast float %2473, %2473
  %2481 = fmul fast float %2478, %2478
  br label %2498

; <label>:2482                                    ; preds = %2445
  %2483 = fmul fast float %341, %341
  %2484 = fmul fast float %345, %345
  %2485 = fmul fast float %349, %349
  %2486 = fadd fast float %2483, -1.000000e+00
  %2487 = fadd fast float %2484, -1.000000e+00
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fmul fast float %2334, %2486
  %2490 = fmul fast float %2334, %2487
  %2491 = fmul fast float %2334, %2488
  %2492 = fadd fast float %2489, 1.000000e+00
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fmul fast float %2492, %2309
  %2496 = fmul fast float %2493, %2310
  %2497 = fmul fast float %2494, %2311
  br label %2498

; <label>:2498                                    ; preds = %2482, %2448, %2339, %2295
  %2499 = phi float [ %2444, %2339 ], [ %2320, %2448 ], [ %2320, %2482 ], [ 0x3FA23C0BE0000000, %2295 ]
  %2500 = phi float [ %2436, %2339 ], [ %2479, %2448 ], [ %2495, %2482 ], [ 1.000000e+00, %2295 ]
  %2501 = phi float [ %2437, %2339 ], [ %2480, %2448 ], [ %2496, %2482 ], [ 1.000000e+00, %2295 ]
  %2502 = phi float [ %2438, %2339 ], [ %2481, %2448 ], [ %2497, %2482 ], [ 1.000000e+00, %2295 ]
  %2503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.i32 %2503, 1
  %2505 = and i32 %2504, 1
  %2506 = icmp ne i32 %2505, 0
  %2507 = add i32 %60, 356
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp ne i32 %2510, 0
  %2512 = and i1 %2506, %2511
  %2513 = select i1 %2512, float 1.000000e+00, float %2500
  %2514 = select i1 %2512, float 0x3FD3333340000000, float %2501
  %2515 = select i1 %2512, float 0x3FD3333340000000, float %2502
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 32
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2498
  %2521 = add i32 %60, 124
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %60, 384
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %2526, 0
  %2528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2528, %dx.types.Handle %99, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = extractvalue %dx.types.ResRet.f32 %2529, 3
  %2534 = and i32 %2523, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = lshr i32 %2523, 8
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2523, 16
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101000000000
  %2543 = fmul fast float %2530, %2535
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = fadd fast float %2531, -5.000000e-01
  %2547 = fadd fast float %2533, -5.000000e-01
  %2548 = fmul fast float %2546, %2542
  %2549 = fmul fast float %2547, %2542
  %2550 = fadd fast float %2548, 5.000000e-01
  %2551 = fadd fast float %2549, 5.000000e-01
  %2552 = fmul fast float %2550, 2.000000e+00
  %2553 = fadd fast float %2552, -1.000000e+00
  %2554 = fmul fast float %2551, 2.000000e+00
  %2555 = fadd fast float %2554, -1.000000e+00
  %2556 = fadd fast float %2553, %2555
  %2557 = fmul fast float %2556, 5.000000e-01
  %2558 = fsub fast float %2553, %2555
  %2559 = fmul fast float %2558, 5.000000e-01
  %2560 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = call float @dx.op.unary.f32(i32 6, float %2559)  ; FAbs(value)
  %2563 = fsub fast float %2561, %2562
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2559, float %2563, float %2557, float %2559, float %2563)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.unary.f32(i32 25, float %2564)  ; Rsqrt(value)
  %2566 = fmul fast float %2557, %2565
  %2567 = fmul fast float %2559, %2565
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 67108864
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2588, label %2572

; <label>:2572                                    ; preds = %2520
  %2573 = add i32 %60, 312
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 65535
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = lshr i32 %2575, 16
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = fsub fast float %2545, %2583
  %2585 = fmul fast float %2584, %2577
  %2586 = fadd fast float %2585, %2581
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  br label %2588

; <label>:2588                                    ; preds = %2572, %2520
  %2589 = phi float [ %2587, %2572 ], [ %2545, %2520 ]
  %2590 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  %2591 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  br label %2592

; <label>:2592                                    ; preds = %2588, %2498
  %2593 = phi float [ %2589, %2588 ], [ 0x3FD6666660000000, %2498 ]
  %2594 = phi float [ %2590, %2588 ], [ 0.000000e+00, %2498 ]
  %2595 = phi float [ %2591, %2588 ], [ 0.000000e+00, %2498 ]
  %2596 = phi float [ %2532, %2588 ], [ 1.000000e+00, %2498 ]
  %2597 = add i32 %60, 192
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 22
  %2601 = shl nuw nsw i32 %2600, 5
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 64
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2640, label %2607

; <label>:2607                                    ; preds = %2592
  %2608 = add i32 %60, 400
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = add i32 %2610, 0
  %2612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 131072
  %2616 = icmp eq i32 %2615, 0
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2612, %dx.types.Handle %99, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = fmul fast float %2618, %329
  %2622 = fmul fast float %2619, %332
  %2623 = fmul fast float %2620, %335
  br i1 %2616, label %2630, label %2624

; <label>:2624                                    ; preds = %2607
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2621
  %2628 = fmul fast float %2626, %2622
  %2629 = fmul fast float %2626, %2623
  br label %2630

; <label>:2630                                    ; preds = %2624, %2607
  %2631 = phi float [ %2627, %2624 ], [ %2621, %2607 ]
  %2632 = phi float [ %2628, %2624 ], [ %2622, %2607 ]
  %2633 = phi float [ %2629, %2624 ], [ %2623, %2607 ]
  %2634 = fmul fast float %2631, %2602
  %2635 = select i1 %228, float %2634, float %2631
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2635, float %2632, float %2633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = select i1 %228, float 0.000000e+00, float %2631
  %2638 = select i1 %228, float %2636, float %2632
  %2639 = select i1 %228, float 0.000000e+00, float %2633
  br label %2640

; <label>:2640                                    ; preds = %2630, %2592
  %2641 = phi float [ %2637, %2630 ], [ 0.000000e+00, %2592 ]
  %2642 = phi float [ %2638, %2630 ], [ 0.000000e+00, %2592 ]
  %2643 = phi float [ %2639, %2630 ], [ 0.000000e+00, %2592 ]
  %2644 = add i32 %60, 128
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = lshr i32 %2646, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2514, float %2515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = fmul fast float %2651, %2652
  %2654 = fadd fast float %2653, %2648
  %2655 = fmul fast float %2654, 0x3F70101020000000
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  br i1 %1997, label %2657, label %2665

; <label>:2657                                    ; preds = %2640
  %2658 = fsub fast float 1.000000e+00, %2293
  %2659 = fmul fast float %2658, %1986
  %2660 = fmul fast float %2658, %1987
  %2661 = fmul fast float %2658, %1988
  %2662 = fmul fast float %2658, %1989
  %2663 = fmul fast float %2658, %1990
  %2664 = fmul fast float %2658, %1991
  br label %2665

; <label>:2665                                    ; preds = %2657, %2640
  %2666 = phi float [ %2659, %2657 ], [ %1986, %2640 ]
  %2667 = phi float [ %2660, %2657 ], [ %1987, %2640 ]
  %2668 = phi float [ %2661, %2657 ], [ %1988, %2640 ]
  %2669 = phi float [ %2662, %2657 ], [ %1989, %2640 ]
  %2670 = phi float [ %2663, %2657 ], [ %1990, %2640 ]
  %2671 = phi float [ %2664, %2657 ], [ %1991, %2640 ]
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 3
  %2675 = icmp eq i32 %2674, 3
  br i1 %2675, label %2754, label %2676

; <label>:2676                                    ; preds = %2665
  %2677 = and i32 %2673, 16
  %2678 = icmp ne i32 %2677, 0
  %2679 = select i1 %2678, float %2293, float 0.000000e+00
  %2680 = icmp eq i32 %2674, 0
  br i1 %2680, label %2681, label %2709

; <label>:2681                                    ; preds = %2676
  %2682 = and i32 %2673, 64
  %2683 = icmp ne i32 %2682, 0
  %2684 = select i1 %2683, float %2293, float 0.000000e+00
  %2685 = fsub fast float %2513, %2666
  %2686 = fsub fast float %2514, %2667
  %2687 = fsub fast float %2515, %2668
  %2688 = fmul fast float %2679, %2685
  %2689 = fmul fast float %2679, %2686
  %2690 = fmul fast float %2679, %2687
  %2691 = fadd fast float %2688, %2666
  %2692 = fadd fast float %2689, %2667
  %2693 = fadd fast float %2690, %2668
  %2694 = fsub fast float %2499, %1992
  %2695 = fmul fast float %2679, %2694
  %2696 = fadd fast float %2695, %1992
  %2697 = fsub fast float %2641, %2669
  %2698 = fsub fast float %2642, %2670
  %2699 = fsub fast float %2643, %2671
  %2700 = fmul fast float %2684, %2697
  %2701 = fmul fast float %2684, %2698
  %2702 = fmul fast float %2684, %2699
  %2703 = fadd fast float %2700, %2669
  %2704 = fadd fast float %2701, %2670
  %2705 = fadd fast float %2702, %2671
  %2706 = fsub fast float %2656, %1995
  %2707 = fmul fast float %2679, %2706
  %2708 = fadd fast float %2707, %1995
  br label %2754

; <label>:2709                                    ; preds = %2676
  %2710 = icmp eq i32 %2674, 1
  br i1 %2710, label %2711, label %2724

; <label>:2711                                    ; preds = %2709
  %2712 = fadd fast float %2513, -1.000000e+00
  %2713 = fadd fast float %2514, -1.000000e+00
  %2714 = fadd fast float %2515, -1.000000e+00
  %2715 = fmul fast float %2679, %2712
  %2716 = fmul fast float %2679, %2713
  %2717 = fmul fast float %2679, %2714
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fmul fast float %2718, %2666
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2668
  br label %2754

; <label>:2724                                    ; preds = %2709
  %2725 = icmp eq i32 %2674, 2
  br i1 %2725, label %2726, label %2754

; <label>:2726                                    ; preds = %2724
  %2727 = call float @dx.op.unary.f32(i32 24, float %2513)  ; Sqrt(value)
  %2728 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2729 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2730 = fadd fast float %2727, -5.000000e-01
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fmul fast float %2730, %2679
  %2734 = fmul fast float %2731, %2679
  %2735 = fmul fast float %2732, %2679
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = fadd fast float %2734, 5.000000e-01
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fmul fast float %2736, 2.000000e+00
  %2740 = fsub fast float 1.000000e+00, %2739
  %2741 = fmul fast float %2740, %2666
  %2742 = fadd fast float %2741, %2739
  %2743 = fmul fast float %2742, %2666
  %2744 = fmul fast float %2737, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2667
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2667
  %2749 = fmul fast float %2738, 2.000000e+00
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = fmul fast float %2750, %2668
  %2752 = fadd fast float %2751, %2749
  %2753 = fmul fast float %2752, %2668
  br label %2754

; <label>:2754                                    ; preds = %2726, %2724, %2711, %2681, %2665
  %2755 = phi float [ %2666, %2665 ], [ %2743, %2726 ], [ %2666, %2724 ], [ %2721, %2711 ], [ %2691, %2681 ]
  %2756 = phi float [ %2667, %2665 ], [ %2748, %2726 ], [ %2667, %2724 ], [ %2722, %2711 ], [ %2692, %2681 ]
  %2757 = phi float [ %2668, %2665 ], [ %2753, %2726 ], [ %2668, %2724 ], [ %2723, %2711 ], [ %2693, %2681 ]
  %2758 = phi float [ %2669, %2665 ], [ %2669, %2726 ], [ %2669, %2724 ], [ %2669, %2711 ], [ %2703, %2681 ]
  %2759 = phi float [ %2670, %2665 ], [ %2670, %2726 ], [ %2670, %2724 ], [ %2670, %2711 ], [ %2704, %2681 ]
  %2760 = phi float [ %2671, %2665 ], [ %2671, %2726 ], [ %2671, %2724 ], [ %2671, %2711 ], [ %2705, %2681 ]
  %2761 = phi float [ %1992, %2665 ], [ %1992, %2726 ], [ %1992, %2724 ], [ %1992, %2711 ], [ %2696, %2681 ]
  %2762 = phi float [ %1995, %2665 ], [ %1995, %2726 ], [ %1995, %2724 ], [ %1995, %2711 ], [ %2708, %2681 ]
  %2763 = and i32 %2673, 12
  %2764 = icmp eq i32 %2763, 12
  br i1 %2764, label %2837, label %2765

; <label>:2765                                    ; preds = %2754
  %2766 = and i32 %2673, 2097184
  %2767 = icmp eq i32 %2766, 2097184
  %2768 = select i1 %2767, float %2293, float 0.000000e+00
  %2769 = and i32 %2673, 4194336
  %2770 = icmp eq i32 %2769, 4194336
  %2771 = select i1 %2770, float %2293, float 0.000000e+00
  %2772 = and i32 %2673, 8388640
  %2773 = icmp eq i32 %2772, 8388640
  %2774 = select i1 %2773, float %2293, float 0.000000e+00
  %2775 = icmp eq i32 %2763, 0
  br i1 %2775, label %2776, label %2789

; <label>:2776                                    ; preds = %2765
  %2777 = fsub fast float %2594, %1984
  %2778 = fsub fast float %2595, %1985
  %2779 = fmul fast float %2768, %2777
  %2780 = fmul fast float %2768, %2778
  %2781 = fadd fast float %2779, %1984
  %2782 = fadd fast float %2780, %1985
  %2783 = fsub fast float %2596, %1994
  %2784 = fmul fast float %2771, %2783
  %2785 = fadd fast float %2784, %1994
  %2786 = fsub fast float %2593, %1993
  %2787 = fmul fast float %2774, %2786
  %2788 = fadd fast float %2787, %1993
  br label %2837

; <label>:2789                                    ; preds = %2765
  %2790 = icmp eq i32 %2763, 4
  br i1 %2790, label %2791, label %2823

; <label>:2791                                    ; preds = %2789
  %2792 = fmul fast float %2768, %2594
  %2793 = fmul fast float %2768, %2595
  %2794 = fadd fast float %2792, %1984
  %2795 = fadd fast float %2793, %1985
  %2796 = call float @dx.op.binary.f32(i32 36, float %1994, float %2596)  ; FMin(a,b)
  %2797 = fsub fast float %2796, %1994
  %2798 = fmul fast float %2797, %2771
  %2799 = fadd fast float %2798, %1994
  %2800 = fadd fast float %2593, %1993
  %2801 = fmul fast float %2800, 0x3FF337FAE0000000
  %2802 = fmul fast float %1993, %1993
  %2803 = fmul fast float %2593, %2593
  %2804 = fadd fast float %2803, %2802
  %2805 = fmul fast float %2804, 0x3FE5152B00000000
  %2806 = fmul fast float %1993, 0xBFCC1F85E0000000
  %2807 = fmul fast float %2806, %2593
  %2808 = fadd fast float %2807, 0xBFE1363700000000
  %2809 = fadd fast float %2808, %2801
  %2810 = fsub fast float %2809, %2805
  %2811 = fmul fast float %2800, 0x3FBA6F0D00000000
  %2812 = fmul fast float %2804, 0x3FD0432880000000
  %2813 = fmul fast float %1993, 0xBFEF110800000000
  %2814 = fmul fast float %2813, %2593
  %2815 = fadd fast float %2814, 1.000000e+00
  %2816 = fsub fast float %2815, %2811
  %2817 = fadd fast float %2816, %2812
  %2818 = fdiv fast float %2810, %2817
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fsub fast float %2819, %1993
  %2821 = fmul fast float %2820, %2774
  %2822 = fadd fast float %2821, %1993
  br label %2837

; <label>:2823                                    ; preds = %2789
  %2824 = icmp eq i32 %2763, 8
  br i1 %2824, label %2825, label %2837

; <label>:2825                                    ; preds = %2823
  %2826 = fmul fast float %2768, %2594
  %2827 = fmul fast float %2768, %2595
  %2828 = fadd fast float %2826, %1984
  %2829 = fadd fast float %2827, %1985
  %2830 = call float @dx.op.binary.f32(i32 36, float %1994, float %2596)  ; FMin(a,b)
  %2831 = fsub fast float %2830, %1994
  %2832 = fmul fast float %2831, %2771
  %2833 = fadd fast float %2832, %1994
  %2834 = fsub fast float %2593, %1993
  %2835 = fmul fast float %2774, %2834
  %2836 = fadd fast float %2835, %1993
  br label %2837

; <label>:2837                                    ; preds = %2825, %2823, %2791, %2776, %2754, %2292, %1996, %1983
  %2838 = phi float [ %1984, %2754 ], [ %1984, %2292 ], [ %1984, %1983 ], [ %2828, %2825 ], [ %1984, %2823 ], [ %2794, %2791 ], [ %2781, %2776 ], [ %1984, %1996 ]
  %2839 = phi float [ %1985, %2754 ], [ %1985, %2292 ], [ %1985, %1983 ], [ %2829, %2825 ], [ %1985, %2823 ], [ %2795, %2791 ], [ %2782, %2776 ], [ %1985, %1996 ]
  %2840 = phi float [ %2755, %2754 ], [ %1986, %2292 ], [ %1986, %1983 ], [ %2755, %2825 ], [ %2755, %2823 ], [ %2755, %2791 ], [ %2755, %2776 ], [ %1986, %1996 ]
  %2841 = phi float [ %2756, %2754 ], [ %1987, %2292 ], [ %1987, %1983 ], [ %2756, %2825 ], [ %2756, %2823 ], [ %2756, %2791 ], [ %2756, %2776 ], [ %1987, %1996 ]
  %2842 = phi float [ %2757, %2754 ], [ %1988, %2292 ], [ %1988, %1983 ], [ %2757, %2825 ], [ %2757, %2823 ], [ %2757, %2791 ], [ %2757, %2776 ], [ %1988, %1996 ]
  %2843 = phi float [ %2758, %2754 ], [ %1989, %2292 ], [ %1989, %1983 ], [ %2758, %2825 ], [ %2758, %2823 ], [ %2758, %2791 ], [ %2758, %2776 ], [ %1989, %1996 ]
  %2844 = phi float [ %2759, %2754 ], [ %1990, %2292 ], [ %1990, %1983 ], [ %2759, %2825 ], [ %2759, %2823 ], [ %2759, %2791 ], [ %2759, %2776 ], [ %1990, %1996 ]
  %2845 = phi float [ %2760, %2754 ], [ %1991, %2292 ], [ %1991, %1983 ], [ %2760, %2825 ], [ %2760, %2823 ], [ %2760, %2791 ], [ %2760, %2776 ], [ %1991, %1996 ]
  %2846 = phi float [ %2761, %2754 ], [ %1992, %2292 ], [ %1992, %1983 ], [ %2761, %2825 ], [ %2761, %2823 ], [ %2761, %2791 ], [ %2761, %2776 ], [ %1992, %1996 ]
  %2847 = phi float [ %1993, %2754 ], [ %1993, %2292 ], [ %1993, %1983 ], [ %2836, %2825 ], [ %1993, %2823 ], [ %2822, %2791 ], [ %2788, %2776 ], [ %1993, %1996 ]
  %2848 = phi float [ %1994, %2754 ], [ %1994, %2292 ], [ %1994, %1983 ], [ %2833, %2825 ], [ %1994, %2823 ], [ %2799, %2791 ], [ %2785, %2776 ], [ %1994, %1996 ]
  %2849 = phi float [ %2762, %2754 ], [ %1995, %2292 ], [ %1995, %1983 ], [ %2762, %2825 ], [ %2762, %2823 ], [ %2762, %2791 ], [ %2762, %2776 ], [ %1995, %1996 ]
  br i1 %416, label %3691, label %2850

; <label>:2850                                    ; preds = %2837
  %2851 = icmp ult i32 %470, 4
  %2852 = add i32 %60, 72
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = add i32 %60, 76
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = or i32 %2857, %2854
  %2859 = icmp eq i32 %2858, 0
  br i1 %2859, label %3691, label %2860

; <label>:2860                                    ; preds = %2850
  %2861 = and i32 %2854, 262144
  %2862 = icmp ne i32 %2861, 0
  %2863 = select i1 %2862, float %62, float 1.000000e+00
  %2864 = select i1 %2862, float %63, float 0.000000e+00
  %2865 = select i1 %2862, float %64, float 0.000000e+00
  %2866 = select i1 %2862, float %65, float 1.000000e+00
  %2867 = select i1 %2862, float %66, float %82
  %2868 = select i1 %2862, float %67, float %83
  %2869 = add i32 %60, 332
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 16
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fmul fast float %2873, 0x3F50624DE0000000
  %2875 = add i32 %60, 136
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = lshr i32 %2877, 16
  %2879 = and i32 %2878, 255
  %2880 = lshr i32 %2877, 24
  %2881 = add i32 %60, 340
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = lshr i32 %2883, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = add i32 %60, 80
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = lshr i32 %2890, 22
  %2892 = shl nuw nsw i32 %2891, 5
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = shl i32 %2890, 4
  %2895 = and i32 %2894, 32752
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = lshr i32 %2890, 7
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 3
  %2902 = fmul fast float %2901, 1.000000e+03
  %2903 = fmul fast float %406, %2902
  %2904 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2905 = fadd fast float %2904, %396
  %2906 = fmul fast float %407, %2902
  %2907 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2908 = fadd fast float %2907, %398
  %2909 = fmul fast float %2874, %2902
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = fmul fast float %2910, 0x401921FB60000000
  %2912 = fadd fast float %2911, %2893
  %2913 = call float @dx.op.unary.f32(i32 13, float %2912)  ; Sin(value)
  %2914 = call float @dx.op.unary.f32(i32 12, float %2912)  ; Cos(value)
  %2915 = fsub fast float -0.000000e+00, %2913
  %2916 = fadd fast float %2867, -5.000000e-01
  %2917 = fadd fast float %2868, -5.000000e-01
  %2918 = fmul fast float %2885, %2916
  %2919 = fmul fast float %2887, %2917
  %2920 = fadd fast float %2918, 5.000000e-01
  %2921 = fadd fast float %2919, 5.000000e-01
  %2922 = fmul fast float %2896, %2920
  %2923 = fmul fast float %2899, %2921
  %2924 = fmul fast float %2914, %2922
  %2925 = call float @dx.op.tertiary.f32(i32 46, float %2915, float %2923, float %2924)  ; FMad(a,b,c)
  %2926 = fmul fast float %2913, %2922
  %2927 = call float @dx.op.tertiary.f32(i32 46, float %2914, float %2923, float %2926)  ; FMad(a,b,c)
  %2928 = fadd fast float %2905, %2925
  %2929 = fadd fast float %2908, %2927
  %2930 = icmp ugt i32 %2879, 1
  %2931 = icmp ugt i32 %2877, 33554431
  %2932 = or i1 %2931, %2930
  br i1 %2932, label %2933, label %2958

; <label>:2933                                    ; preds = %2860
  %2934 = add i32 %60, 276
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = lshr i32 %2936, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = fmul fast float %2901, %2938
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = mul nuw nsw i32 %2879, %2880
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2940, %2942
  %2944 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2945 = fptoui float %2944 to i32
  %2946 = urem i32 %2945, %2879
  %2947 = udiv i32 %2945, %2880
  %2948 = call float @dx.op.unary.f32(i32 22, float %2928)  ; Frc(value)
  %2949 = call float @dx.op.unary.f32(i32 22, float %2929)  ; Frc(value)
  %2950 = uitofp i32 %2946 to float
  %2951 = uitofp i32 %2947 to float
  %2952 = fadd fast float %2948, %2950
  %2953 = fadd fast float %2949, %2951
  %2954 = uitofp i32 %2879 to float
  %2955 = uitofp i32 %2880 to float
  %2956 = fdiv fast float %2952, %2954
  %2957 = fdiv fast float %2953, %2955
  br label %2958

; <label>:2958                                    ; preds = %2933, %2860
  %2959 = phi float [ %2956, %2933 ], [ %2928, %2860 ]
  %2960 = phi float [ %2957, %2933 ], [ %2929, %2860 ]
  %2961 = and i32 %2854, 16777216
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %3072, label %2963

; <label>:2963                                    ; preds = %2958
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.CBufRet.f32 %2964, 2
  %2968 = fadd fast float %2965, %166
  %2969 = fadd fast float %2966, %167
  %2970 = fadd fast float %2967, %168
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 0
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2974 = icmp eq i32 %61, 65535
  br i1 %2974, label %3069, label %2975

; <label>:2975                                    ; preds = %2963
  %2976 = lshr i32 %61, 1
  %2977 = shl i32 %2976, 2
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %61, 1
  %2981 = icmp ne i32 %2980, 0
  %2982 = lshr i32 %2979, 16
  %2983 = and i32 %2979, 65535
  %2984 = select i1 %2981, i32 %2982, i32 %2983
  %2985 = icmp eq i32 %2984, 65535
  br i1 %2985, label %3065, label %2986

; <label>:2986                                    ; preds = %2975
  %2987 = mul nuw nsw i32 %2984, 40
  %2988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.ResRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.ResRet.f32 %2988, 2
  %2992 = add nuw nsw i32 %2987, 12
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2987, 24
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add nuw nsw i32 %2987, 36
  %3003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = fsub fast float %2968, %2989
  %3006 = fsub fast float %2969, %2990
  %3007 = fsub fast float %2970, %2991
  %3008 = fmul fast float %3004, %3005
  %3009 = fmul fast float %3004, %3006
  %3010 = fmul fast float %3004, %3007
  %3011 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = fadd fast float %3011, 5.000000e-01
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fmul fast float %3014, %2994
  %3018 = fmul fast float %3015, %2995
  %3019 = fmul fast float %3016, %2996
  %3020 = shl i32 %61, 2
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3026 = call float @dx.op.unary.f32(i32 22, float %3018)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3024, %dx.types.Handle %55, float %3025, float %3026, float %3027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = fmul fast float %3029, 1.023000e+03
  %3033 = fmul fast float %3030, 1.023000e+03
  %3034 = fmul fast float %3031, 1.023000e+03
  %3035 = fadd fast float %3032, 5.000000e-01
  %3036 = fadd fast float %3033, 5.000000e-01
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = call float @dx.op.unary.f32(i32 27, float %3035)  ; Round_ni(value)
  %3039 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3040 = call float @dx.op.unary.f32(i32 27, float %3037)  ; Round_ni(value)
  %3041 = fsub fast float %3008, %3011
  %3042 = fsub fast float %3009, %3012
  %3043 = fsub fast float %3010, %3013
  %3044 = fmul fast float %3041, 7.500000e-01
  %3045 = fmul fast float %3042, 7.500000e-01
  %3046 = fmul fast float %3043, 7.500000e-01
  %3047 = fadd fast float %3011, 1.250000e-01
  %3048 = fadd fast float %3047, %3044
  %3049 = fadd fast float %3048, %3038
  %3050 = fadd fast float %3012, 1.250000e-01
  %3051 = fadd fast float %3050, %3045
  %3052 = fadd fast float %3051, %3039
  %3053 = fadd fast float %3013, 1.250000e-01
  %3054 = fadd fast float %3053, %3046
  %3055 = fadd fast float %3054, %3040
  %3056 = fmul fast float %3049, %2999
  %3057 = fmul fast float %3052, %3000
  %3058 = fmul fast float %3055, %3001
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3062, %dx.types.Handle %53, float %3056, float %3057, float %3058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  br label %3065

; <label>:3065                                    ; preds = %2986, %2975
  %3066 = phi float [ %3064, %2986 ], [ -1.000000e+00, %2975 ]
  %3067 = fadd fast float %3066, %2973
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  br label %3069

; <label>:3069                                    ; preds = %3065, %2963
  %3070 = phi float [ %3068, %3065 ], [ %2973, %2963 ]
  %3071 = fmul fast float %3070, %465
  br label %3072

; <label>:3072                                    ; preds = %3069, %2958
  %3073 = phi float [ %3071, %3069 ], [ %465, %2958 ]
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 256
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3124, label %3078

; <label>:3078                                    ; preds = %3072
  %3079 = add i32 %60, 436
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = add i32 %3081, 0
  %3083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3083, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = add i32 %60, 148
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = shl i32 %3088, 4
  %3090 = and i32 %3089, 32752
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = lshr i32 %3088, 7
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = fsub fast float 1.000000e+00, %3073
  %3096 = call float @dx.op.binary.f32(i32 35, float %3095, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3097 = bitcast float %3073 to i32
  %3098 = sitofp i32 %3097 to float
  %3099 = fadd fast float %3098, 0xC1CFBF8940000000
  %3100 = fmul fast float %3094, %3099
  %3101 = fadd fast float %3100, 0x41CFBF8940000000
  %3102 = fptosi float %3101 to i32
  %3103 = bitcast i32 %3102 to float
  %3104 = bitcast float %3096 to i32
  %3105 = sitofp i32 %3104 to float
  %3106 = fadd fast float %3105, 0xC1CFBF8940000000
  %3107 = fmul fast float %3106, %3094
  %3108 = fadd fast float %3107, 0x41CFBF8940000000
  %3109 = fptosi float %3108 to i32
  %3110 = bitcast i32 %3109 to float
  %3111 = fmul fast float %3103, %3091
  %3112 = fmul fast float %3110, %3091
  %3113 = fsub fast float %3096, %3111
  %3114 = fadd fast float %3112, %3096
  %3115 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3116 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3117 = fsub fast float %3085, %3115
  %3118 = fsub fast float %3116, %3115
  %3119 = bitcast float %3118 to i32
  %3120 = sub nsw i32 2129859010, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = fmul fast float %3121, %3117
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  br label %3124

; <label>:3124                                    ; preds = %3078, %3072
  %3125 = phi float [ %3123, %3078 ], [ %3073, %3072 ]
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 128
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3146, label %3130

; <label>:3130                                    ; preds = %3124
  %3131 = add i32 %60, 420
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %3133, 0
  %3135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3135, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 0
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 524288
  %3141 = icmp ne i32 %3140, 0
  %3142 = fcmp fast ogt float %3137, 0x3FE0101020000000
  %3143 = select i1 %3142, float 1.000000e+00, float 0.000000e+00
  %3144 = select i1 %3141, float %3143, float %3137
  %3145 = fmul fast float %3144, %3125
  br label %3146

; <label>:3146                                    ; preds = %3130, %3124
  %3147 = phi float [ %3145, %3130 ], [ %3125, %3124 ]
  %3148 = fcmp fast ult float %3147, 0x3F70101020000000
  br i1 %3148, label %3691, label %3149

; <label>:3149                                    ; preds = %3146
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 16
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3352, label %3154

; <label>:3154                                    ; preds = %3149
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %60, 372
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %99, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = extractvalue %dx.types.ResRet.f32 %3162, 3
  %3167 = and i32 %3156, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = lshr i32 %3156, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3166, %3168
  %3173 = fadd fast float %3172, %3171
  %3174 = fmul fast float %3173, 0x3F70101000000000
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 512
  %3178 = icmp eq i32 %3177, 0
  br i1 %3178, label %3187, label %3179

; <label>:3179                                    ; preds = %3154
  %3180 = add i32 %60, 452
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = add i32 %3182, 0
  %3184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3184, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  br label %3187

; <label>:3187                                    ; preds = %3179, %3154
  %3188 = phi float [ %3186, %3179 ], [ 1.000000e+00, %3154 ]
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 33554432
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3299, label %3193

; <label>:3193                                    ; preds = %3187
  %3194 = add i32 %60, 272
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 65535
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = lshr i32 %3196, 16
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = add i32 %60, 276
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 65535
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = lshr i32 %3207, 24
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3209, 0x3F70101020000000
  %3211 = and i32 %3207, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = lshr i32 %3207, 8
  %3215 = and i32 %3214, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = lshr i32 %3207, 16
  %3219 = and i32 %3218, 255
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 0x3F70101020000000
  %3222 = add i32 %60, 268
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = lshr i32 %3224, 24
  %3226 = uitofp i32 %3225 to float
  %3227 = fmul fast float %3226, 0x3F70101020000000
  %3228 = and i32 %3224, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = lshr i32 %3224, 8
  %3232 = and i32 %3231, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = lshr i32 %3224, 16
  %3236 = and i32 %3235, 255
  %3237 = uitofp i32 %3236 to float
  %3238 = fmul fast float %3237, 0x3F70101020000000
  %3239 = bitcast float %3163 to i32
  %3240 = ashr i32 %3239, 1
  %3241 = sub nsw i32 1597463174, %3240
  %3242 = bitcast i32 %3241 to float
  %3243 = fmul fast float %3163, 5.000000e-01
  %3244 = fmul fast float %3242, %3242
  %3245 = fmul fast float %3244, %3243
  %3246 = fsub fast float 1.500000e+00, %3245
  %3247 = fmul fast float %3242, %3163
  %3248 = fmul fast float %3247, %3246
  %3249 = bitcast float %3164 to i32
  %3250 = ashr i32 %3249, 1
  %3251 = sub nsw i32 1597463174, %3250
  %3252 = bitcast i32 %3251 to float
  %3253 = fmul fast float %3164, 5.000000e-01
  %3254 = fmul fast float %3252, %3252
  %3255 = fmul fast float %3254, %3253
  %3256 = fsub fast float 1.500000e+00, %3255
  %3257 = fmul fast float %3252, %3164
  %3258 = fmul fast float %3257, %3256
  %3259 = bitcast float %3165 to i32
  %3260 = ashr i32 %3259, 1
  %3261 = sub nsw i32 1597463174, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul fast float %3165, 5.000000e-01
  %3264 = fmul fast float %3262, %3262
  %3265 = fmul fast float %3264, %3263
  %3266 = fsub fast float 1.500000e+00, %3265
  %3267 = fmul fast float %3262, %3165
  %3268 = fmul fast float %3267, %3266
  %3269 = fsub fast float %3248, %3230
  %3270 = fsub fast float %3258, %3234
  %3271 = fsub fast float %3268, %3238
  %3272 = fmul fast float %3269, %3198
  %3273 = fmul fast float %3270, %3200
  %3274 = fmul fast float %3271, %3205
  %3275 = fadd fast float %3272, %3213
  %3276 = fadd fast float %3273, %3217
  %3277 = fadd fast float %3274, %3221
  %3278 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = fmul fast float %3278, %3278
  %3282 = fmul fast float %3279, %3279
  %3283 = fmul fast float %3280, %3280
  %3284 = fsub fast float %3281, %3163
  %3285 = fsub fast float %3282, %3164
  %3286 = fsub fast float %3283, %3165
  %3287 = fmul fast float %3284, %3188
  %3288 = fmul fast float %3285, %3188
  %3289 = fmul fast float %3286, %3188
  %3290 = fadd fast float %3287, %3163
  %3291 = fadd fast float %3288, %3164
  %3292 = fadd fast float %3289, %3165
  %3293 = fadd fast float %3210, %3174
  %3294 = fsub fast float %3293, %3227
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = fsub fast float %3295, %3174
  %3297 = fmul fast float %3296, %3188
  %3298 = fadd fast float %3297, %3174
  br label %3352

; <label>:3299                                    ; preds = %3187
  %3300 = and i32 %3190, 134217728
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3336, label %3302

; <label>:3302                                    ; preds = %3299
  %3303 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3306 = fadd fast float %3303, -5.000000e-01
  %3307 = fadd fast float %3304, -5.000000e-01
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fmul fast float %3306, %3188
  %3310 = fmul fast float %3307, %3188
  %3311 = fmul fast float %3308, %3188
  %3312 = fadd fast float %3309, 5.000000e-01
  %3313 = fadd fast float %3310, 5.000000e-01
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = call float @dx.op.unary.f32(i32 24, float %3163)  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3318 = fmul fast float %3312, 2.000000e+00
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = fmul fast float %3319, %3315
  %3321 = fadd fast float %3320, %3318
  %3322 = fmul fast float %3321, %3315
  %3323 = fmul fast float %3313, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3316
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3316
  %3328 = fmul fast float %3314, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3317
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3317
  %3333 = fmul fast float %3322, %3322
  %3334 = fmul fast float %3327, %3327
  %3335 = fmul fast float %3332, %3332
  br label %3352

; <label>:3336                                    ; preds = %3299
  %3337 = fmul fast float %383, %383
  %3338 = fmul fast float %387, %387
  %3339 = fmul fast float %391, %391
  %3340 = fadd fast float %3337, -1.000000e+00
  %3341 = fadd fast float %3338, -1.000000e+00
  %3342 = fadd fast float %3339, -1.000000e+00
  %3343 = fmul fast float %3188, %3340
  %3344 = fmul fast float %3188, %3341
  %3345 = fmul fast float %3188, %3342
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fmul fast float %3346, %3163
  %3350 = fmul fast float %3347, %3164
  %3351 = fmul fast float %3348, %3165
  br label %3352

; <label>:3352                                    ; preds = %3336, %3302, %3193, %3149
  %3353 = phi float [ %3298, %3193 ], [ %3174, %3302 ], [ %3174, %3336 ], [ 0x3FA23C0BE0000000, %3149 ]
  %3354 = phi float [ %3290, %3193 ], [ %3333, %3302 ], [ %3349, %3336 ], [ 1.000000e+00, %3149 ]
  %3355 = phi float [ %3291, %3193 ], [ %3334, %3302 ], [ %3350, %3336 ], [ 1.000000e+00, %3149 ]
  %3356 = phi float [ %3292, %3193 ], [ %3335, %3302 ], [ %3351, %3336 ], [ 1.000000e+00, %3149 ]
  %3357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.i32 %3357, 1
  %3359 = and i32 %3358, 1
  %3360 = icmp ne i32 %3359, 0
  %3361 = add i32 %60, 356
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 32
  %3365 = icmp ne i32 %3364, 0
  %3366 = and i1 %3360, %3365
  %3367 = select i1 %3366, float 1.000000e+00, float %3354
  %3368 = select i1 %3366, float 0x3FD3333340000000, float %3355
  %3369 = select i1 %3366, float 0x3FD3333340000000, float %3356
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 32
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3446, label %3374

; <label>:3374                                    ; preds = %3352
  %3375 = add i32 %60, 140
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = add i32 %60, 388
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %3380, 0
  %3382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3382, %dx.types.Handle %99, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = and i32 %3377, 255
  %3389 = uitofp i32 %3388 to float
  %3390 = lshr i32 %3377, 8
  %3391 = and i32 %3390, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = lshr i32 %3377, 16
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = fmul fast float %3395, 0x3F70101000000000
  %3397 = fmul fast float %3384, %3389
  %3398 = fadd fast float %3397, %3392
  %3399 = fmul fast float %3398, 0x3F70101000000000
  %3400 = fadd fast float %3385, -5.000000e-01
  %3401 = fadd fast float %3387, -5.000000e-01
  %3402 = fmul fast float %3400, %3396
  %3403 = fmul fast float %3401, %3396
  %3404 = fadd fast float %3402, 5.000000e-01
  %3405 = fadd fast float %3403, 5.000000e-01
  %3406 = fmul fast float %3404, 2.000000e+00
  %3407 = fadd fast float %3406, -1.000000e+00
  %3408 = fmul fast float %3405, 2.000000e+00
  %3409 = fadd fast float %3408, -1.000000e+00
  %3410 = fadd fast float %3407, %3409
  %3411 = fmul fast float %3410, 5.000000e-01
  %3412 = fsub fast float %3407, %3409
  %3413 = fmul fast float %3412, 5.000000e-01
  %3414 = call float @dx.op.unary.f32(i32 6, float %3411)  ; FAbs(value)
  %3415 = fsub fast float 1.000000e+00, %3414
  %3416 = call float @dx.op.unary.f32(i32 6, float %3413)  ; FAbs(value)
  %3417 = fsub fast float %3415, %3416
  %3418 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3413, float %3417, float %3411, float %3413, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3419 = call float @dx.op.unary.f32(i32 25, float %3418)  ; Rsqrt(value)
  %3420 = fmul fast float %3411, %3419
  %3421 = fmul fast float %3413, %3419
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 67108864
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3442, label %3426

; <label>:3426                                    ; preds = %3374
  %3427 = add i32 %60, 328
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 65535
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 65535
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = lshr i32 %3429, 16
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = fsub fast float %3399, %3437
  %3439 = fmul fast float %3438, %3431
  %3440 = fadd fast float %3439, %3435
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  br label %3442

; <label>:3442                                    ; preds = %3426, %3374
  %3443 = phi float [ %3441, %3426 ], [ %3399, %3374 ]
  %3444 = call float @dx.op.dot2.f32(i32 54, float %3420, float %3421, float %2863, float %2864)  ; Dot2(ax,ay,bx,by)
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3420, float %3421, float %2865, float %2866)  ; Dot2(ax,ay,bx,by)
  br label %3446

; <label>:3446                                    ; preds = %3442, %3352
  %3447 = phi float [ %3443, %3442 ], [ 0x3FD6666660000000, %3352 ]
  %3448 = phi float [ %3444, %3442 ], [ 0.000000e+00, %3352 ]
  %3449 = phi float [ %3445, %3442 ], [ 0.000000e+00, %3352 ]
  %3450 = phi float [ %3386, %3442 ], [ 1.000000e+00, %3352 ]
  %3451 = add i32 %60, 208
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = lshr i32 %3453, 22
  %3455 = shl nuw nsw i32 %3454, 5
  %3456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3455)  ; LegacyF16ToF32(value)
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = and i32 %3458, 64
  %3460 = icmp eq i32 %3459, 0
  br i1 %3460, label %3494, label %3461

; <label>:3461                                    ; preds = %3446
  %3462 = add i32 %60, 404
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = add i32 %3464, 0
  %3466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 131072
  %3470 = icmp eq i32 %3469, 0
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3466, %dx.types.Handle %99, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = fmul fast float %3472, %371
  %3476 = fmul fast float %3473, %374
  %3477 = fmul fast float %3474, %377
  br i1 %3470, label %3484, label %3478

; <label>:3478                                    ; preds = %3461
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3481 = fmul fast float %3480, %3475
  %3482 = fmul fast float %3480, %3476
  %3483 = fmul fast float %3480, %3477
  br label %3484

; <label>:3484                                    ; preds = %3478, %3461
  %3485 = phi float [ %3481, %3478 ], [ %3475, %3461 ]
  %3486 = phi float [ %3482, %3478 ], [ %3476, %3461 ]
  %3487 = phi float [ %3483, %3478 ], [ %3477, %3461 ]
  %3488 = fmul fast float %3485, %3456
  %3489 = select i1 %228, float %3488, float %3485
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3486, float %3487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = select i1 %228, float 0.000000e+00, float %3485
  %3492 = select i1 %228, float %3490, float %3486
  %3493 = select i1 %228, float 0.000000e+00, float %3487
  br label %3494

; <label>:3494                                    ; preds = %3484, %3446
  %3495 = phi float [ %3491, %3484 ], [ 0.000000e+00, %3446 ]
  %3496 = phi float [ %3492, %3484 ], [ 0.000000e+00, %3446 ]
  %3497 = phi float [ %3493, %3484 ], [ 0.000000e+00, %3446 ]
  %3498 = add i32 %60, 144
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = lshr i32 %3500, 8
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3368, float %3369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = fmul fast float %3505, %3506
  %3508 = fadd fast float %3507, %3502
  %3509 = fmul fast float %3508, 0x3F70101020000000
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  br i1 %2851, label %3511, label %3519

; <label>:3511                                    ; preds = %3494
  %3512 = fsub fast float 1.000000e+00, %3147
  %3513 = fmul fast float %3512, %2840
  %3514 = fmul fast float %3512, %2841
  %3515 = fmul fast float %3512, %2842
  %3516 = fmul fast float %3512, %2843
  %3517 = fmul fast float %3512, %2844
  %3518 = fmul fast float %3512, %2845
  br label %3519

; <label>:3519                                    ; preds = %3511, %3494
  %3520 = phi float [ %3513, %3511 ], [ %2840, %3494 ]
  %3521 = phi float [ %3514, %3511 ], [ %2841, %3494 ]
  %3522 = phi float [ %3515, %3511 ], [ %2842, %3494 ]
  %3523 = phi float [ %3516, %3511 ], [ %2843, %3494 ]
  %3524 = phi float [ %3517, %3511 ], [ %2844, %3494 ]
  %3525 = phi float [ %3518, %3511 ], [ %2845, %3494 ]
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 3
  %3529 = icmp eq i32 %3528, 3
  br i1 %3529, label %3608, label %3530

; <label>:3530                                    ; preds = %3519
  %3531 = and i32 %3527, 16
  %3532 = icmp ne i32 %3531, 0
  %3533 = select i1 %3532, float %3147, float 0.000000e+00
  %3534 = icmp eq i32 %3528, 0
  br i1 %3534, label %3535, label %3563

; <label>:3535                                    ; preds = %3530
  %3536 = and i32 %3527, 64
  %3537 = icmp ne i32 %3536, 0
  %3538 = select i1 %3537, float %3147, float 0.000000e+00
  %3539 = fsub fast float %3367, %3520
  %3540 = fsub fast float %3368, %3521
  %3541 = fsub fast float %3369, %3522
  %3542 = fmul fast float %3533, %3539
  %3543 = fmul fast float %3533, %3540
  %3544 = fmul fast float %3533, %3541
  %3545 = fadd fast float %3542, %3520
  %3546 = fadd fast float %3543, %3521
  %3547 = fadd fast float %3544, %3522
  %3548 = fsub fast float %3353, %2846
  %3549 = fmul fast float %3533, %3548
  %3550 = fadd fast float %3549, %2846
  %3551 = fsub fast float %3495, %3523
  %3552 = fsub fast float %3496, %3524
  %3553 = fsub fast float %3497, %3525
  %3554 = fmul fast float %3538, %3551
  %3555 = fmul fast float %3538, %3552
  %3556 = fmul fast float %3538, %3553
  %3557 = fadd fast float %3554, %3523
  %3558 = fadd fast float %3555, %3524
  %3559 = fadd fast float %3556, %3525
  %3560 = fsub fast float %3510, %2849
  %3561 = fmul fast float %3533, %3560
  %3562 = fadd fast float %3561, %2849
  br label %3608

; <label>:3563                                    ; preds = %3530
  %3564 = icmp eq i32 %3528, 1
  br i1 %3564, label %3565, label %3578

; <label>:3565                                    ; preds = %3563
  %3566 = fadd fast float %3367, -1.000000e+00
  %3567 = fadd fast float %3368, -1.000000e+00
  %3568 = fadd fast float %3369, -1.000000e+00
  %3569 = fmul fast float %3533, %3566
  %3570 = fmul fast float %3533, %3567
  %3571 = fmul fast float %3533, %3568
  %3572 = fadd fast float %3569, 1.000000e+00
  %3573 = fadd fast float %3570, 1.000000e+00
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fmul fast float %3572, %3520
  %3576 = fmul fast float %3573, %3521
  %3577 = fmul fast float %3574, %3522
  br label %3608

; <label>:3578                                    ; preds = %3563
  %3579 = icmp eq i32 %3528, 2
  br i1 %3579, label %3580, label %3608

; <label>:3580                                    ; preds = %3578
  %3581 = call float @dx.op.unary.f32(i32 24, float %3367)  ; Sqrt(value)
  %3582 = call float @dx.op.unary.f32(i32 24, float %3368)  ; Sqrt(value)
  %3583 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3584 = fadd fast float %3581, -5.000000e-01
  %3585 = fadd fast float %3582, -5.000000e-01
  %3586 = fadd fast float %3583, -5.000000e-01
  %3587 = fmul fast float %3584, %3533
  %3588 = fmul fast float %3585, %3533
  %3589 = fmul fast float %3586, %3533
  %3590 = fadd fast float %3587, 5.000000e-01
  %3591 = fadd fast float %3588, 5.000000e-01
  %3592 = fadd fast float %3589, 5.000000e-01
  %3593 = fmul fast float %3590, 2.000000e+00
  %3594 = fsub fast float 1.000000e+00, %3593
  %3595 = fmul fast float %3594, %3520
  %3596 = fadd fast float %3595, %3593
  %3597 = fmul fast float %3596, %3520
  %3598 = fmul fast float %3591, 2.000000e+00
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3599, %3521
  %3601 = fadd fast float %3600, %3598
  %3602 = fmul fast float %3601, %3521
  %3603 = fmul fast float %3592, 2.000000e+00
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = fmul fast float %3604, %3522
  %3606 = fadd fast float %3605, %3603
  %3607 = fmul fast float %3606, %3522
  br label %3608

; <label>:3608                                    ; preds = %3580, %3578, %3565, %3535, %3519
  %3609 = phi float [ %3520, %3519 ], [ %3597, %3580 ], [ %3520, %3578 ], [ %3575, %3565 ], [ %3545, %3535 ]
  %3610 = phi float [ %3521, %3519 ], [ %3602, %3580 ], [ %3521, %3578 ], [ %3576, %3565 ], [ %3546, %3535 ]
  %3611 = phi float [ %3522, %3519 ], [ %3607, %3580 ], [ %3522, %3578 ], [ %3577, %3565 ], [ %3547, %3535 ]
  %3612 = phi float [ %3523, %3519 ], [ %3523, %3580 ], [ %3523, %3578 ], [ %3523, %3565 ], [ %3557, %3535 ]
  %3613 = phi float [ %3524, %3519 ], [ %3524, %3580 ], [ %3524, %3578 ], [ %3524, %3565 ], [ %3558, %3535 ]
  %3614 = phi float [ %3525, %3519 ], [ %3525, %3580 ], [ %3525, %3578 ], [ %3525, %3565 ], [ %3559, %3535 ]
  %3615 = phi float [ %2846, %3519 ], [ %2846, %3580 ], [ %2846, %3578 ], [ %2846, %3565 ], [ %3550, %3535 ]
  %3616 = phi float [ %2849, %3519 ], [ %2849, %3580 ], [ %2849, %3578 ], [ %2849, %3565 ], [ %3562, %3535 ]
  %3617 = and i32 %3527, 12
  %3618 = icmp eq i32 %3617, 12
  br i1 %3618, label %3691, label %3619

; <label>:3619                                    ; preds = %3608
  %3620 = and i32 %3527, 2097184
  %3621 = icmp eq i32 %3620, 2097184
  %3622 = select i1 %3621, float %3147, float 0.000000e+00
  %3623 = and i32 %3527, 4194336
  %3624 = icmp eq i32 %3623, 4194336
  %3625 = select i1 %3624, float %3147, float 0.000000e+00
  %3626 = and i32 %3527, 8388640
  %3627 = icmp eq i32 %3626, 8388640
  %3628 = select i1 %3627, float %3147, float 0.000000e+00
  %3629 = icmp eq i32 %3617, 0
  br i1 %3629, label %3630, label %3643

; <label>:3630                                    ; preds = %3619
  %3631 = fsub fast float %3448, %2838
  %3632 = fsub fast float %3449, %2839
  %3633 = fmul fast float %3622, %3631
  %3634 = fmul fast float %3622, %3632
  %3635 = fadd fast float %3633, %2838
  %3636 = fadd fast float %3634, %2839
  %3637 = fsub fast float %3450, %2848
  %3638 = fmul fast float %3625, %3637
  %3639 = fadd fast float %3638, %2848
  %3640 = fsub fast float %3447, %2847
  %3641 = fmul fast float %3628, %3640
  %3642 = fadd fast float %3641, %2847
  br label %3691

; <label>:3643                                    ; preds = %3619
  %3644 = icmp eq i32 %3617, 4
  br i1 %3644, label %3645, label %3677

; <label>:3645                                    ; preds = %3643
  %3646 = fmul fast float %3622, %3448
  %3647 = fmul fast float %3622, %3449
  %3648 = fadd fast float %3646, %2838
  %3649 = fadd fast float %3647, %2839
  %3650 = call float @dx.op.binary.f32(i32 36, float %2848, float %3450)  ; FMin(a,b)
  %3651 = fsub fast float %3650, %2848
  %3652 = fmul fast float %3651, %3625
  %3653 = fadd fast float %3652, %2848
  %3654 = fadd fast float %3447, %2847
  %3655 = fmul fast float %3654, 0x3FF337FAE0000000
  %3656 = fmul fast float %2847, %2847
  %3657 = fmul fast float %3447, %3447
  %3658 = fadd fast float %3657, %3656
  %3659 = fmul fast float %3658, 0x3FE5152B00000000
  %3660 = fmul fast float %2847, 0xBFCC1F85E0000000
  %3661 = fmul fast float %3660, %3447
  %3662 = fadd fast float %3661, 0xBFE1363700000000
  %3663 = fadd fast float %3662, %3655
  %3664 = fsub fast float %3663, %3659
  %3665 = fmul fast float %3654, 0x3FBA6F0D00000000
  %3666 = fmul fast float %3658, 0x3FD0432880000000
  %3667 = fmul fast float %2847, 0xBFEF110800000000
  %3668 = fmul fast float %3667, %3447
  %3669 = fadd fast float %3668, 1.000000e+00
  %3670 = fsub fast float %3669, %3665
  %3671 = fadd fast float %3670, %3666
  %3672 = fdiv fast float %3664, %3671
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fsub fast float %3673, %2847
  %3675 = fmul fast float %3674, %3628
  %3676 = fadd fast float %3675, %2847
  br label %3691

; <label>:3677                                    ; preds = %3643
  %3678 = icmp eq i32 %3617, 8
  br i1 %3678, label %3679, label %3691

; <label>:3679                                    ; preds = %3677
  %3680 = fmul fast float %3622, %3448
  %3681 = fmul fast float %3622, %3449
  %3682 = fadd fast float %3680, %2838
  %3683 = fadd fast float %3681, %2839
  %3684 = call float @dx.op.binary.f32(i32 36, float %2848, float %3450)  ; FMin(a,b)
  %3685 = fsub fast float %3684, %2848
  %3686 = fmul fast float %3685, %3625
  %3687 = fadd fast float %3686, %2848
  %3688 = fsub fast float %3447, %2847
  %3689 = fmul fast float %3628, %3688
  %3690 = fadd fast float %3689, %2847
  br label %3691

; <label>:3691                                    ; preds = %3679, %3677, %3645, %3630, %3608, %3146, %2850, %2837
  %3692 = phi float [ %2838, %3608 ], [ %2838, %3146 ], [ %2838, %2837 ], [ %2838, %2850 ], [ %3635, %3630 ], [ %3648, %3645 ], [ %2838, %3677 ], [ %3682, %3679 ]
  %3693 = phi float [ %2839, %3608 ], [ %2839, %3146 ], [ %2839, %2837 ], [ %2839, %2850 ], [ %3636, %3630 ], [ %3649, %3645 ], [ %2839, %3677 ], [ %3683, %3679 ]
  %3694 = phi float [ %3609, %3608 ], [ %2840, %3146 ], [ %2840, %2837 ], [ %2840, %2850 ], [ %3609, %3630 ], [ %3609, %3645 ], [ %3609, %3677 ], [ %3609, %3679 ]
  %3695 = phi float [ %3610, %3608 ], [ %2841, %3146 ], [ %2841, %2837 ], [ %2841, %2850 ], [ %3610, %3630 ], [ %3610, %3645 ], [ %3610, %3677 ], [ %3610, %3679 ]
  %3696 = phi float [ %3611, %3608 ], [ %2842, %3146 ], [ %2842, %2837 ], [ %2842, %2850 ], [ %3611, %3630 ], [ %3611, %3645 ], [ %3611, %3677 ], [ %3611, %3679 ]
  %3697 = phi float [ %3612, %3608 ], [ %2843, %3146 ], [ %2843, %2837 ], [ %2843, %2850 ], [ %3612, %3630 ], [ %3612, %3645 ], [ %3612, %3677 ], [ %3612, %3679 ]
  %3698 = phi float [ %3613, %3608 ], [ %2844, %3146 ], [ %2844, %2837 ], [ %2844, %2850 ], [ %3613, %3630 ], [ %3613, %3645 ], [ %3613, %3677 ], [ %3613, %3679 ]
  %3699 = phi float [ %3614, %3608 ], [ %2845, %3146 ], [ %2845, %2837 ], [ %2845, %2850 ], [ %3614, %3630 ], [ %3614, %3645 ], [ %3614, %3677 ], [ %3614, %3679 ]
  %3700 = phi float [ %3615, %3608 ], [ %2846, %3146 ], [ %2846, %2837 ], [ %2846, %2850 ], [ %3615, %3630 ], [ %3615, %3645 ], [ %3615, %3677 ], [ %3615, %3679 ]
  %3701 = phi float [ %2847, %3608 ], [ %2847, %3146 ], [ %2847, %2837 ], [ %2847, %2850 ], [ %3642, %3630 ], [ %3676, %3645 ], [ %2847, %3677 ], [ %3690, %3679 ]
  %3702 = phi float [ %2848, %3608 ], [ %2848, %3146 ], [ %2848, %2837 ], [ %2848, %2850 ], [ %3639, %3630 ], [ %3653, %3645 ], [ %2848, %3677 ], [ %3687, %3679 ]
  %3703 = phi float [ %3616, %3608 ], [ %2849, %3146 ], [ %2849, %2837 ], [ %2849, %2850 ], [ %3616, %3630 ], [ %3616, %3645 ], [ %3616, %3677 ], [ %3616, %3679 ]
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 0
  %3706 = call float @dx.op.dot2.f32(i32 54, float %3692, float %3693, float %3692, float %3693)  ; Dot2(ax,ay,bx,by)
  %3707 = fmul fast float %3706, 0x3FE3333340000000
  %3708 = fsub fast float 1.000000e+00, %3707
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3708, float %3692, float %3693, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 25, float %3709)  ; Rsqrt(value)
  %3711 = fmul fast float %3710, %3692
  %3712 = fmul fast float %3710, %3693
  %3713 = fmul fast float %3708, %3710
  %3714 = fmul fast float %3713, %110
  %3715 = fmul fast float %3713, %111
  %3716 = fmul fast float %3713, %112
  %3717 = fmul fast float %3711, %75
  %3718 = fmul fast float %3711, %76
  %3719 = fmul fast float %3711, %77
  %3720 = fadd fast float %3714, %3717
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = fmul fast float %122, %3712
  %3724 = fmul fast float %123, %3712
  %3725 = fmul fast float %124, %3712
  %3726 = fadd fast float %3720, %3723
  %3727 = fadd fast float %3721, %3724
  %3728 = fadd fast float %3722, %3725
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3727, float %3728, float %3726, float %3727, float %3728)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = call float @dx.op.unary.f32(i32 25, float %3729)  ; Rsqrt(value)
  %3731 = fmul fast float %3726, %3730
  %3732 = fmul fast float %3727, %3730
  %3733 = fmul fast float %3728, %3730
  %3734 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %3735 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3736 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3737 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %3738 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3739 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3740 = fadd fast float %3734, %166
  %3741 = fadd fast float %3735, %167
  %3742 = fadd fast float %3736, %168
  %3743 = fadd fast float %3737, %166
  %3744 = fadd fast float %3738, %167
  %3745 = fadd fast float %3739, %168
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 3
  %3753 = fmul fast float %3747, %103
  %3754 = fmul fast float %3753, %3751
  %3755 = fmul fast float %3748, %104
  %3756 = fmul fast float %3755, %3752
  %3757 = fptoui float %3754 to i32
  %3758 = fptoui float %3756 to i32
  %3759 = fadd fast float %3747, -1.000000e+00
  %3760 = fadd fast float %3748, -1.000000e+00
  %3761 = fptoui float %3759 to i32
  %3762 = fptoui float %3760 to i32
  %3763 = call i32 @dx.op.binary.i32(i32 40, i32 %3757, i32 %3761)  ; UMin(a,b)
  %3764 = call i32 @dx.op.binary.i32(i32 40, i32 %3758, i32 %3762)  ; UMin(a,b)
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3765, 3
  %3768 = fmul fast float %3766, %91
  %3769 = fsub fast float %3768, %3767
  %3770 = fadd fast float %3749, -1.000000e+00
  %3771 = call float @dx.op.binary.f32(i32 36, float %3769, float %3770)  ; FMin(a,b)
  %3772 = fptoui float %3771 to i32
  %3773 = fptoui float %3747 to i32
  %3774 = fptoui float %3748 to i32
  %3775 = mul i32 %3772, %3774
  %3776 = add i32 %3775, %3764
  %3777 = mul i32 %3776, %3773
  %3778 = add i32 %3777, %3763
  %3779 = shl i32 %3778, 2
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = and i32 %3781, 1023
  %3783 = lshr i32 %3781, 10
  %3784 = icmp eq i32 %3782, 0
  br i1 %3784, label %4213, label %3785

; <label>:3785                                    ; preds = %3691
  %3786 = and i32 %3781, 1023
  br label %3787

; <label>:3787                                    ; preds = %3914, %3785
  %3788 = phi i32 [ %3864, %3914 ], [ 0, %3785 ]
  %3789 = phi float [ %3915, %3914 ], [ 0.000000e+00, %3785 ]
  %3790 = phi float [ %3916, %3914 ], [ %1138, %3785 ]
  %3791 = phi float [ %3917, %3914 ], [ %3705, %3785 ]
  %3792 = phi float [ %3918, %3914 ], [ %3703, %3785 ]
  %3793 = phi float [ %3919, %3914 ], [ 0.000000e+00, %3785 ]
  %3794 = phi float [ %3920, %3914 ], [ 0.000000e+00, %3785 ]
  %3795 = phi float [ %3921, %3914 ], [ %3697, %3785 ]
  %3796 = phi float [ %3922, %3914 ], [ %3698, %3785 ]
  %3797 = phi float [ %3923, %3914 ], [ %3699, %3785 ]
  %3798 = phi float [ %3924, %3914 ], [ %3731, %3785 ]
  %3799 = phi float [ %3925, %3914 ], [ %3732, %3785 ]
  %3800 = phi float [ %3926, %3914 ], [ %3733, %3785 ]
  %3801 = phi float [ %3927, %3914 ], [ %3702, %3785 ]
  %3802 = phi float [ %3928, %3914 ], [ %3701, %3785 ]
  %3803 = phi float [ %3929, %3914 ], [ 0.000000e+00, %3785 ]
  %3804 = phi float [ %3930, %3914 ], [ %3700, %3785 ]
  %3805 = phi float [ %3931, %3914 ], [ %3694, %3785 ]
  %3806 = phi float [ %3932, %3914 ], [ %3695, %3785 ]
  %3807 = phi float [ %3933, %3914 ], [ %3696, %3785 ]
  %3808 = add nuw nsw i32 %3788, %3783
  %3809 = shl i32 %3808, 2
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = shl i32 %3811, 8
  %3813 = or i32 %3812, 48
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3819 = or i32 %3812, 64
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.i32 %3820, 1
  %3823 = or i32 %3812, 80
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3827 = or i32 %3812, 96
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3833 = or i32 %3812, 112
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3836 = or i32 %3812, 128
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3812, 144
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3812, 160
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3854 = or i32 %3812, 192
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = or i32 %3812, 208
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = or i32 %3812, 248
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = add nuw nsw i32 %3788, 1
  %3865 = bitcast float %3818 to i32
  %3866 = and i32 %3865, 512
  %3867 = icmp eq i32 %3866, 0
  %3868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.f32 %3868, 3
  %3873 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3874 = or i32 %3812, 16
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = extractvalue %dx.types.ResRet.f32 %3875, 3
  %3880 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3881 = or i32 %3812, 32
  %3882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = extractvalue %dx.types.ResRet.f32 %3882, 3
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3883, float %3884, float %3885, float %3886, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3889 = call float @dx.op.unary.f32(i32 6, float %3888)  ; FAbs(value)
  %3890 = call float @dx.op.unary.f32(i32 27, float %3880)  ; Round_ni(value)
  %3891 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3887)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3892)  ; Round_ni(value)
  %3894 = fadd fast float %3891, %3889
  %3895 = fadd fast float %3894, %3893
  %3896 = fcmp fast oeq float %3895, 0.000000e+00
  %3897 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %3740, float %3741, float %3742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3898 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %3740, float %3741, float %3742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3899 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = fsub fast float %3897, %3873
  %3902 = fsub fast float %3899, %3873
  %3903 = fsub fast float %3898, %3880
  %3904 = fsub fast float %3900, %3880
  %3905 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3908 = fadd fast float %3907, %3905
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3911 = fcmp fast ogt float %3909, %3910
  %3912 = and i1 %3896, %3911
  %3913 = and i1 %3867, %3912
  br i1 %3913, label %3935, label %3914

; <label>:3914                                    ; preds = %4199, %4016, %3935, %3787
  %3915 = phi float [ %3789, %3935 ], [ %4019, %4016 ], [ %4019, %4199 ], [ %3789, %3787 ]
  %3916 = phi float [ %3790, %3935 ], [ %3790, %4016 ], [ %4174, %4199 ], [ %3790, %3787 ]
  %3917 = phi float [ %3791, %3935 ], [ %3791, %4016 ], [ %4173, %4199 ], [ %3791, %3787 ]
  %3918 = phi float [ %3792, %3935 ], [ %3792, %4016 ], [ %4171, %4199 ], [ %3792, %3787 ]
  %3919 = phi float [ %3793, %3935 ], [ %3793, %4016 ], [ %4143, %4199 ], [ %3793, %3787 ]
  %3920 = phi float [ %3794, %3935 ], [ %3794, %4016 ], [ %4141, %4199 ], [ %3794, %3787 ]
  %3921 = phi float [ %3795, %3935 ], [ %3795, %4016 ], [ %4209, %4199 ], [ %3795, %3787 ]
  %3922 = phi float [ %3796, %3935 ], [ %3796, %4016 ], [ %4210, %4199 ], [ %3796, %3787 ]
  %3923 = phi float [ %3797, %3935 ], [ %3797, %4016 ], [ %4211, %4199 ], [ %3797, %3787 ]
  %3924 = phi float [ %3798, %3935 ], [ %3798, %4016 ], [ %4122, %4199 ], [ %3798, %3787 ]
  %3925 = phi float [ %3799, %3935 ], [ %3799, %4016 ], [ %4123, %4199 ], [ %3799, %3787 ]
  %3926 = phi float [ %3800, %3935 ], [ %3800, %4016 ], [ %4124, %4199 ], [ %3800, %3787 ]
  %3927 = phi float [ %3801, %3935 ], [ %3801, %4016 ], [ %4151, %4199 ], [ %3801, %3787 ]
  %3928 = phi float [ %3802, %3935 ], [ %3802, %4016 ], [ %4148, %4199 ], [ %3802, %3787 ]
  %3929 = phi float [ %3803, %3935 ], [ %3803, %4016 ], [ %4145, %4199 ], [ %3803, %3787 ]
  %3930 = phi float [ %3804, %3935 ], [ %3804, %4016 ], [ %4139, %4199 ], [ %3804, %3787 ]
  %3931 = phi float [ %3805, %3935 ], [ %3805, %4016 ], [ %4134, %4199 ], [ %3805, %3787 ]
  %3932 = phi float [ %3806, %3935 ], [ %3806, %4016 ], [ %4135, %4199 ], [ %3806, %3787 ]
  %3933 = phi float [ %3807, %3935 ], [ %3807, %4016 ], [ %4136, %4199 ], [ %3807, %3787 ]
  %3934 = icmp eq i32 %3864, %3786
  br i1 %3934, label %4212, label %3787

; <label>:3935                                    ; preds = %3787
  %3936 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3937 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3941 = extractvalue %dx.types.ResRet.i32 %3820, 3
  %3942 = extractvalue %dx.types.ResRet.i32 %3820, 2
  %3943 = add i32 %3941, 0
  %3944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3943, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3944, %dx.types.Handle %3945, float %3873, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3902, float %3904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = fmul fast float %3947, %3940
  %3949 = fadd fast float %3948, %3939
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fmul fast float %3873, %3829
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3880, float %3951)  ; FMad(a,b,c)
  %3953 = fadd fast float %3952, %3938
  %3954 = fmul fast float %3873, %3831
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3880, float %3954)  ; FMad(a,b,c)
  %3956 = fadd fast float %3955, %3937
  %3957 = fmul fast float %3901, %3829
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3903, float %3957)  ; FMad(a,b,c)
  %3959 = fmul fast float %3901, %3831
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3903, float %3959)  ; FMad(a,b,c)
  %3961 = fmul fast float %3902, %3829
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3904, float %3961)  ; FMad(a,b,c)
  %3963 = fmul fast float %3902, %3831
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3904, float %3963)  ; FMad(a,b,c)
  %3965 = add i32 %3942, 0
  %3966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3965, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3967 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3966, %dx.types.Handle %3945, float %3953, float %3956, float undef, float undef, i32 0, i32 0, i32 undef, float %3958, float %3960, float undef, float %3962, float %3964, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = and i32 %3865, 1024
  %3970 = icmp ne i32 %3969, 0
  %3971 = fcmp fast ogt float %3968, 0x3FE0101020000000
  %3972 = uitofp i1 %3971 to float
  %3973 = select i1 %3970, float %3972, float %3968
  %3974 = and i32 %3865, 8192
  %3975 = icmp ne i32 %3974, 0
  %3976 = select i1 %3975, float %3936, float 1.000000e+00
  %3977 = fmul fast float %3873, 2.000000e+00
  %3978 = fadd fast float %3977, -1.000000e+00
  %3979 = call float @dx.op.unary.f32(i32 6, float %3978)  ; FAbs(value)
  %3980 = fmul fast float %3979, %3862
  %3981 = fsub fast float %3980, %3862
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3880, 2.000000e+00
  %3984 = fadd fast float %3983, -1.000000e+00
  %3985 = call float @dx.op.unary.f32(i32 6, float %3984)  ; FAbs(value)
  %3986 = fmul fast float %3985, %3863
  %3987 = fsub fast float %3986, %3863
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = fmul fast float %3892, %3825
  %3990 = fsub fast float %3989, %3825
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3950, %3976
  %3993 = fmul fast float %3992, %3947
  %3994 = fmul fast float %3993, %3982
  %3995 = fmul fast float %3994, %3973
  %3996 = fmul fast float %3995, %3988
  %3997 = fmul fast float %3996, %3991
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4001 = fsub fast float %3909, %4000
  %4002 = fmul fast float %4001, %3999
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = fmul fast float %3997, %3826
  %4005 = fadd fast float %3997, %3826
  %4006 = fmul fast float %4005, %3835
  %4007 = fsub fast float %4006, %3835
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = and i32 %3865, 128
  %4010 = icmp ne i32 %4009, 0
  %4011 = select i1 %4010, float %4008, float %4004
  %4012 = fmul fast float %4011, %4003
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = fcmp fast ugt float %4012, %4014
  br i1 %4015, label %4016, label %3914

; <label>:4016                                    ; preds = %3935
  %4017 = select i1 %3975, float %4012, float 0.000000e+00
  %4018 = fadd fast float %4017, %3789
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  br i1 %3975, label %3914, label %4020

; <label>:4020                                    ; preds = %4016
  %4021 = and i32 %3865, 4
  %4022 = and i32 %3865, 8
  %4023 = add i32 %3821, 0
  %4024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4024, %dx.types.Handle %4025, float %3953, float %3956, float undef, float undef, i32 0, i32 0, i32 undef, float %3958, float %3960, float undef, float %3962, float %3964, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = bitcast float %3847 to i32
  %4032 = and i32 %4031, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = lshr i32 %4031, 8
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = fmul fast float %4030, %4033
  %4038 = fadd fast float %4037, %4036
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = add i32 %3822, 0
  %4041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4040, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4042 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4041, %dx.types.Handle %4025, float %3953, float %3956, float undef, float undef, i32 0, i32 0, i32 undef, float %3958, float %3960, float undef, float %3962, float %3964, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  %4046 = extractvalue %dx.types.ResRet.f32 %4042, 3
  %4047 = bitcast float %3841 to i32
  %4048 = and i32 %4047, 255
  %4049 = uitofp i32 %4048 to float
  %4050 = lshr i32 %4047, 8
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = lshr i32 %4047, 16
  %4054 = and i32 %4053, 255
  %4055 = uitofp i32 %4054 to float
  %4056 = fmul fast float %4055, 0x3F70101000000000
  %4057 = fmul fast float %4043, %4049
  %4058 = fadd fast float %4057, %4052
  %4059 = fmul fast float %4058, 0x3F70101000000000
  %4060 = fadd fast float %4044, -5.000000e-01
  %4061 = fadd fast float %4046, -5.000000e-01
  %4062 = fmul fast float %4060, %4056
  %4063 = fmul fast float %4061, %4056
  %4064 = fadd fast float %4062, 5.000000e-01
  %4065 = fadd fast float %4063, 5.000000e-01
  %4066 = fmul fast float %4027, %3850
  %4067 = fmul fast float %4028, %3851
  %4068 = fmul fast float %4029, %3852
  %4069 = fmul fast float %4064, 2.000000e+00
  %4070 = fadd fast float %4069, -1.000000e+00
  %4071 = fmul fast float %4065, 2.000000e+00
  %4072 = fadd fast float %4071, -1.000000e+00
  %4073 = fadd fast float %4070, %4072
  %4074 = fmul fast float %4073, 5.000000e-01
  %4075 = fsub fast float %4070, %4072
  %4076 = fmul fast float %4075, 5.000000e-01
  %4077 = call float @dx.op.unary.f32(i32 6, float %4074)  ; FAbs(value)
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = call float @dx.op.unary.f32(i32 6, float %4076)  ; FAbs(value)
  %4080 = fsub fast float %4078, %4079
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4074, float %4076, float %4080, float %4074, float %4076, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 25, float %4081)  ; Rsqrt(value)
  %4083 = fmul fast float %4074, %4082
  %4084 = fmul fast float %4076, %4082
  %4085 = fmul fast float %4082, %4080
  %4086 = fmul fast float %4085, %3815
  %4087 = fmul fast float %4085, %3816
  %4088 = fmul fast float %4085, %3817
  %4089 = fmul fast float %4083, %3838
  %4090 = fmul fast float %4083, %3839
  %4091 = fmul fast float %4083, %3840
  %4092 = fadd fast float %4089, %4086
  %4093 = fadd fast float %4090, %4087
  %4094 = fadd fast float %4091, %4088
  %4095 = fmul fast float %4084, %3844
  %4096 = fmul fast float %4084, %3845
  %4097 = fmul fast float %4084, %3846
  %4098 = fadd fast float %4092, %4095
  %4099 = fadd fast float %4093, %4096
  %4100 = fadd fast float %4094, %4097
  %4101 = call float @dx.op.dot3.f32(i32 55, float %4098, float %4099, float %4100, float %4098, float %4099, float %4100)  ; Dot3(ax,ay,az,bx,by,bz)
  %4102 = call float @dx.op.unary.f32(i32 25, float %4101)  ; Rsqrt(value)
  %4103 = fmul fast float %4098, %4102
  %4104 = fmul fast float %4099, %4102
  %4105 = fmul fast float %4100, %4102
  %4106 = icmp ne i32 %4022, 0
  %4107 = select i1 %4106, float 1.000000e+00, float 0.000000e+00
  %4108 = fmul fast float %4012, %4107
  %4109 = and i32 %3865, 1
  %4110 = icmp eq i32 %4109, 0
  br i1 %4110, label %4111, label %4115

; <label>:4111                                    ; preds = %4020
  %4112 = fsub fast float %4103, %3798
  %4113 = fsub fast float %4104, %3799
  %4114 = fsub fast float %4105, %3800
  br label %4115

; <label>:4115                                    ; preds = %4111, %4020
  %4116 = phi float [ %4112, %4111 ], [ %4103, %4020 ]
  %4117 = phi float [ %4113, %4111 ], [ %4104, %4020 ]
  %4118 = phi float [ %4114, %4111 ], [ %4105, %4020 ]
  %4119 = fmul float %4118, %4108
  %4120 = fmul float %4117, %4108
  %4121 = fmul float %4116, %4108
  %4122 = fadd fast float %4121, %3798
  %4123 = fadd fast float %4120, %3799
  %4124 = fadd fast float %4119, %3800
  %4125 = icmp ne i32 %4021, 0
  %4126 = select i1 %4125, float 1.000000e+00, float 0.000000e+00
  %4127 = fmul fast float %4012, %4126
  %4128 = fsub fast float %4066, %3805
  %4129 = fsub fast float %4067, %3806
  %4130 = fsub fast float %4068, %3807
  %4131 = fmul fast float %4128, %4127
  %4132 = fmul fast float %4129, %4127
  %4133 = fmul fast float %4130, %4127
  %4134 = fadd fast float %4131, %3805
  %4135 = fadd fast float %4132, %3806
  %4136 = fadd fast float %4133, %3807
  %4137 = fsub fast float %4039, %3804
  %4138 = fmul fast float %4137, %4127
  %4139 = fadd fast float %4138, %3804
  %4140 = fmul fast float %4127, %3794
  %4141 = fsub fast float %3794, %4140
  %4142 = fmul fast float %4127, %3793
  %4143 = fsub fast float %3793, %4142
  %4144 = fadd fast float %4012, %3803
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4146 = fsub fast float %4059, %3802
  %4147 = fmul fast float %4146, %4108
  %4148 = fadd fast float %4147, %3802
  %4149 = fsub fast float %4045, %3801
  %4150 = fmul fast float %4149, %4108
  %4151 = fadd fast float %4150, %3801
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4067, float %4068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4156 = fmul fast float %4155, %4152
  %4157 = fadd fast float %4156, %4154
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = bitcast float %3853 to i32
  %4160 = and i32 %4159, 65535
  %4161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4160)  ; LegacyF16ToF32(value)
  %4162 = lshr i32 %4159, 16
  %4163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4162)  ; LegacyF16ToF32(value)
  %4164 = fcmp fast oge float %4161, 0.000000e+00
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = select i1 %4164, float %4161, float %4166
  %4168 = fadd fast float %4167, %4163
  %4169 = fsub fast float %4158, %3792
  %4170 = fmul fast float %4169, %4012
  %4171 = fadd fast float %4170, %3792
  %4172 = fmul fast float %4168, %4012
  %4173 = call float @dx.op.binary.f32(i32 35, float %3791, float %4172)  ; FMax(a,b)
  %4174 = call float @dx.op.binary.f32(i32 35, float %3790, float %4012)  ; FMax(a,b)
  %4175 = and i32 %3865, 16
  %4176 = icmp eq i32 %4175, 0
  br i1 %4176, label %4199, label %4177

; <label>:4177                                    ; preds = %4115
  %4178 = bitcast float %3859 to i32
  %4179 = add i32 %3856, 0
  %4180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4179, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4180, %dx.types.Handle %4025, float %3953, float %3956, float undef, float undef, i32 0, i32 0, i32 undef, float %3958, float %3960, float undef, float %3962, float %3964, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = and i32 %4178, 65535
  %4186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4185)  ; LegacyF16ToF32(value)
  %4187 = fmul fast float %4182, %3850
  %4188 = fmul fast float %4183, %3851
  %4189 = fmul fast float %4184, %3852
  %4190 = and i32 %3865, 16384
  %4191 = icmp ne i32 %4190, 0
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = select i1 %4191, float %4193, float 1.000000e+00
  %4195 = fmul fast float %4194, %4186
  %4196 = fmul fast float %4187, %4195
  %4197 = fmul fast float %4188, %4195
  %4198 = fmul fast float %4189, %4195
  br label %4199

; <label>:4199                                    ; preds = %4177, %4115
  %4200 = phi float [ %4196, %4177 ], [ 0.000000e+00, %4115 ]
  %4201 = phi float [ %4197, %4177 ], [ 0.000000e+00, %4115 ]
  %4202 = phi float [ %4198, %4177 ], [ 0.000000e+00, %4115 ]
  %4203 = fsub fast float %4200, %3795
  %4204 = fsub fast float %4201, %3796
  %4205 = fsub fast float %4202, %3797
  %4206 = fmul fast float %4203, %4012
  %4207 = fmul fast float %4204, %4012
  %4208 = fmul fast float %4205, %4012
  %4209 = fadd fast float %4206, %3795
  %4210 = fadd fast float %4207, %3796
  %4211 = fadd fast float %4208, %3797
  br label %3914

; <label>:4212                                    ; preds = %3914
  br label %4213

; <label>:4213                                    ; preds = %4212, %3691
  %4214 = phi float [ 0.000000e+00, %3691 ], [ %3915, %4212 ]
  %4215 = phi float [ %1138, %3691 ], [ %3916, %4212 ]
  %4216 = phi float [ %3705, %3691 ], [ %3917, %4212 ]
  %4217 = phi float [ %3703, %3691 ], [ %3918, %4212 ]
  %4218 = phi float [ 0.000000e+00, %3691 ], [ %3919, %4212 ]
  %4219 = phi float [ 0.000000e+00, %3691 ], [ %3920, %4212 ]
  %4220 = phi float [ %3697, %3691 ], [ %3921, %4212 ]
  %4221 = phi float [ %3698, %3691 ], [ %3922, %4212 ]
  %4222 = phi float [ %3699, %3691 ], [ %3923, %4212 ]
  %4223 = phi float [ %3731, %3691 ], [ %3924, %4212 ]
  %4224 = phi float [ %3732, %3691 ], [ %3925, %4212 ]
  %4225 = phi float [ %3733, %3691 ], [ %3926, %4212 ]
  %4226 = phi float [ %3702, %3691 ], [ %3927, %4212 ]
  %4227 = phi float [ %3701, %3691 ], [ %3928, %4212 ]
  %4228 = phi float [ 0.000000e+00, %3691 ], [ %3929, %4212 ]
  %4229 = phi float [ %3700, %3691 ], [ %3930, %4212 ]
  %4230 = phi float [ %3694, %3691 ], [ %3931, %4212 ]
  %4231 = phi float [ %3695, %3691 ], [ %3932, %4212 ]
  %4232 = phi float [ %3696, %3691 ], [ %3933, %4212 ]
  %4233 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4234 = call float @dx.op.unary.f32(i32 25, float %4233)  ; Rsqrt(value)
  %4235 = fmul fast float %4234, %4223
  %4236 = fmul fast float %4234, %4224
  %4237 = fmul fast float %4234, %4225
  %4238 = fadd fast float %4228, %1138
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4236, float %4237, float %4235, float %4236, float %4237)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = call float @dx.op.unary.f32(i32 25, float %4240)  ; Rsqrt(value)
  %4242 = fmul fast float %4241, %4235
  %4243 = fmul fast float %4241, %4236
  %4244 = fmul fast float %4241, %4237
  %4245 = fadd fast float %4229, 0xBFB99999A0000000
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fmul fast float %4246, 0x3FF1C71C80000000
  %4248 = call float @dx.op.binary.f32(i32 36, float %4229, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4249 = fsub fast float 1.000000e+00, %4247
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = fmul fast float %4250, %4230
  %4252 = fmul fast float %4250, %4231
  %4253 = fmul fast float %4250, %4232
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4257 = fmul fast float %4247, %4230
  %4258 = fmul fast float %4247, %4231
  %4259 = fmul fast float %4247, %4232
  %4260 = fadd fast float %4257, %4248
  %4261 = fadd fast float %4258, %4248
  %4262 = fadd fast float %4259, %4248
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 3
  %4269 = and i32 %4268, 8
  %4270 = icmp ne i32 %4269, 0
  %4271 = call float @dx.op.binary.f32(i32 35, float %4254, float %4230)  ; FMax(a,b)
  %4272 = call float @dx.op.binary.f32(i32 35, float %4255, float %4230)  ; FMax(a,b)
  %4273 = call float @dx.op.binary.f32(i32 35, float %4256, float %4230)  ; FMax(a,b)
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4254, float %4255, float %4256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = select i1 %228, float %4230, float %4254
  %4276 = select i1 %228, float %4274, float %4255
  %4277 = select i1 %228, float 1.000000e+00, float %4256
  %4278 = select i1 %4270, float %4271, float %4275
  %4279 = select i1 %4270, float %4272, float %4276
  %4280 = select i1 %4270, float %4273, float %4277
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4285 = fadd fast float %4282, %166
  %4286 = fadd fast float %4283, %167
  %4287 = fadd fast float %4284, %168
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4291 = fsub fast float %4285, %4289
  %4292 = fsub fast float %4286, %4290
  %4293 = fmul fast float %4291, %4291
  %4294 = fmul fast float %4292, %4292
  %4295 = fadd fast float %4293, %4294
  %4296 = call float @dx.op.unary.f32(i32 24, float %4295)  ; Sqrt(value)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4298 = fcmp fast olt float %4296, %4297
  br i1 %4298, label %4299, label %4366

; <label>:4299                                    ; preds = %4213
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4310 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4311 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4312 = fadd fast float %4309, %4285
  %4313 = fadd fast float %4310, %4286
  %4314 = fadd fast float %4311, %4287
  %4315 = fmul fast float %4312, %4301
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4303, float %4315)  ; FMad(a,b,c)
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4305, float %4316)  ; FMad(a,b,c)
  %4318 = fmul fast float %4312, %4306
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4307, float %4318)  ; FMad(a,b,c)
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4308, float %4319)  ; FMad(a,b,c)
  %4321 = fsub fast float %4317, %4309
  %4322 = fsub fast float %4320, %4310
  %4323 = fsub fast float %4321, %4289
  %4324 = fadd fast float %4323, %4297
  %4325 = fsub fast float %4322, %4290
  %4326 = fadd fast float %4325, %4297
  %4327 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4328 = fmul fast float %4324, %4327
  %4329 = fmul fast float %4326, %4327
  %4330 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4332 = fsub fast float 1.000000e+00, %4330
  %4333 = fsub fast float 1.000000e+00, %4331
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fcmp fast ugt float %4335, 0.000000e+00
  br i1 %4336, label %4337, label %4640

; <label>:4337                                    ; preds = %4299
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4340 = fmul fast float %4339, %4335
  %4341 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4342 = fadd fast float %4341, %4340
  %4343 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4344 = fadd fast float %4342, %4311
  %4345 = fmul fast float %4317, %4305
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4308, float %4345)  ; FMad(a,b,c)
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4343, float %4346)  ; FMad(a,b,c)
  %4348 = fsub fast float %4347, %4311
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4351 = fsub fast float %4348, %4350
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4353
  %4361 = fmul fast float %4360, 0x3F847AE140000000
  %4362 = fadd fast float %4358, %4354
  %4363 = fmul fast float %4362, 0x3F847AE140000000
  %4364 = fadd fast float %4359, %4355
  %4365 = fmul fast float %4364, 0x3F847AE140000000
  br label %4640

; <label>:4366                                    ; preds = %4213
  %4367 = and i32 %204, 1
  %4368 = icmp eq i32 %4367, 0
  br i1 %4368, label %4640, label %4369

; <label>:4369                                    ; preds = %4366
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4380 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4381 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4382 = fadd fast float %4379, %4285
  %4383 = fadd fast float %4380, %4286
  %4384 = fadd fast float %4381, %4287
  %4385 = fmul fast float %4382, %4371
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4373, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4375, float %4386)  ; FMad(a,b,c)
  %4388 = fmul fast float %4382, %4376
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4377, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = fsub fast float %4387, %4379
  %4392 = fsub fast float %4390, %4380
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.i32 %4400, 0
  %4402 = extractvalue %dx.types.CBufRet.i32 %4400, 1
  %4403 = udiv i32 %4402, %4401
  %4404 = fsub fast float %4391, %4394
  %4405 = fsub fast float %4392, %4395
  %4406 = call float @dx.op.binary.f32(i32 35, float %4404, float 0.000000e+00)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float %4405, float 0.000000e+00)  ; FMax(a,b)
  %4408 = call float @dx.op.binary.f32(i32 36, float %4406, float %4396)  ; FMin(a,b)
  %4409 = call float @dx.op.binary.f32(i32 36, float %4407, float %4397)  ; FMin(a,b)
  %4410 = add i32 %4401, -1
  %4411 = add i32 %4403, -1
  %4412 = fmul fast float %4408, %4399
  %4413 = fmul fast float %4409, %4399
  %4414 = fptoui float %4412 to i32
  %4415 = fptoui float %4413 to i32
  %4416 = call i32 @dx.op.binary.i32(i32 40, i32 %4414, i32 %4410)  ; UMin(a,b)
  %4417 = call i32 @dx.op.binary.i32(i32 40, i32 %4415, i32 %4411)  ; UMin(a,b)
  %4418 = mul i32 %4417, %4401
  %4419 = add i32 %4418, %4416
  %4420 = shl i32 %4419, 2
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = icmp eq i32 %4422, -1
  br i1 %4423, label %4640, label %4424

; <label>:4424                                    ; preds = %4369
  %4425 = mul i32 %4422, 148
  %4426 = add i32 %4425, 4
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4425, 8
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4425, 36
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4425, 60
  %4436 = add i32 %4425, 92
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = add i32 %4425, 116
  %4440 = fsub fast float %4391, %4428
  %4441 = fsub fast float %4392, %4431
  %4442 = fmul fast float %4399, %4440
  %4443 = fmul fast float %4399, %4441
  %4444 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4449 = call float @dx.op.unary.f32(i32 83, float %4444)  ; DerivCoarseX(value)
  %4450 = call float @dx.op.unary.f32(i32 83, float %4446)  ; DerivCoarseX(value)
  %4451 = call float @dx.op.unary.f32(i32 84, float %4444)  ; DerivCoarseY(value)
  %4452 = call float @dx.op.unary.f32(i32 84, float %4446)  ; DerivCoarseY(value)
  %4453 = fmul fast float %4449, %4448
  %4454 = fmul fast float %4450, %4448
  %4455 = fmul fast float %4451, %4448
  %4456 = fmul fast float %4452, %4448
  %4457 = call float @dx.op.dot2.f32(i32 54, float %4455, float %4456, float %4455, float %4456)  ; Dot2(ax,ay,bx,by)
  %4458 = call float @dx.op.dot2.f32(i32 54, float %4453, float %4454, float %4453, float %4454)  ; Dot2(ax,ay,bx,by)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float %4457)  ; FMax(a,b)
  %4460 = call float @dx.op.unary.f32(i32 23, float %4459)  ; Log(value)
  %4461 = fmul fast float %4460, 5.000000e-01
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4464 = fadd fast float %4463, %4461
  %4465 = call float @dx.op.binary.f32(i32 35, float %4464, float 0.000000e+00)  ; FMax(a,b)
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = fadd fast float %4467, %4465
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = fadd fast float %4468, %4470
  %4472 = add i32 %4438, 0
  %4473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4474 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4473, i32 0)  ; GetDimensions(handle,mipLevel)
  %4475 = extractvalue %dx.types.Dimensions %4474, 0
  %4476 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4475)  ; FirstbitLo(value)
  %4477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.i32 %4477, 1
  %4479 = sub nsw i32 %4478, %4476
  %4480 = sitofp i32 %4479 to float
  %4481 = fsub fast float %4471, %4480
  %4482 = call float @dx.op.binary.f32(i32 35, float %4481, float 0.000000e+00)  ; FMax(a,b)
  %4483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4473, %dx.types.Handle %52, float %4444, float %4446, float %4434, float undef, i32 0, i32 0, i32 undef, float %4482)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = fcmp ule float %4484, 0x3FE0101020000000
  %4486 = extractvalue %dx.types.CBufRet.i32 %4477, 0
  %4487 = and i32 %4486, 128
  %4488 = icmp ne i32 %4487, 0
  %4489 = and i1 %4485, %4488
  br i1 %4489, label %4640, label %4490

; <label>:4490                                    ; preds = %4424
  %4491 = add i32 %4425, 20
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4425, 24
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4425, 40
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4425, 96
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4505 = fmul fast float %4504, %4444
  %4506 = fmul fast float %4504, %4446
  %4507 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4508 = fadd fast float %4505, %4507
  %4509 = fadd fast float %4506, %4507
  %4510 = add i32 %4502, 0
  %4511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4510, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4512 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4511, i32 0)  ; GetDimensions(handle,mipLevel)
  %4513 = extractvalue %dx.types.Dimensions %4512, 0
  %4514 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4513)  ; FirstbitLo(value)
  %4515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.i32 %4515, 1
  %4517 = sub nsw i32 %4516, %4514
  %4518 = sitofp i32 %4517 to float
  %4519 = fsub fast float %4468, %4518
  %4520 = call float @dx.op.binary.f32(i32 35, float %4519, float 0.000000e+00)  ; FMax(a,b)
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4511, %dx.types.Handle %52, float %4508, float %4509, float %4499, float undef, i32 0, i32 0, i32 undef, float %4520)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = fmul fast float %4522, %4493
  %4524 = fadd fast float %4523, %4496
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4533 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4534 = fadd fast float %4530, %4391
  %4535 = fadd fast float %4532, %4392
  %4536 = fadd fast float %4524, %4533
  %4537 = fmul fast float %4534, %4526
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4527, float %4537)  ; FMad(a,b,c)
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4528, float %4538)  ; FMad(a,b,c)
  %4540 = fsub fast float %4539, %4533
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 2
  %4543 = fsub fast float %4540, %4542
  %4544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.i32 %4544, 0
  %4546 = call i32 @dx.op.binary.i32(i32 40, i32 %4422, i32 %4545)  ; UMin(a,b)
  %4547 = mul i32 %4546, 36
  %4548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.i32 %4548, 0
  %4550 = add i32 %4547, 4
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = fmul fast float %4552, %4444
  %4554 = fmul fast float %4552, %4446
  %4555 = extractvalue %dx.types.CBufRet.f32 %4551, 1
  %4556 = fadd fast float %4553, %4555
  %4557 = fadd fast float %4554, %4555
  %4558 = icmp eq i32 %4549, 0
  br i1 %4558, label %4627, label %4559

; <label>:4559                                    ; preds = %4490
  br label %4560

; <label>:4560                                    ; preds = %4617, %4559
  %4561 = phi float [ %4618, %4617 ], [ 0.000000e+00, %4559 ]
  %4562 = phi float [ %4619, %4617 ], [ 0.000000e+00, %4559 ]
  %4563 = phi float [ %4620, %4617 ], [ 0.000000e+00, %4559 ]
  %4564 = phi float [ %4621, %4617 ], [ 0.000000e+00, %4559 ]
  %4565 = phi float [ %4622, %4617 ], [ 0.000000e+00, %4559 ]
  %4566 = phi float [ %4623, %4617 ], [ 0.000000e+00, %4559 ]
  %4567 = phi i32 [ %4624, %4617 ], [ 0, %4559 ]
  %4568 = shl i32 %4567, 2
  %4569 = add i32 %4435, %4568
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = add i32 %4439, %4568
  %4573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.i32 %4573, 0
  %4575 = add i32 %4574, 0
  %4576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4575, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4577 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4576, i32 0)  ; GetDimensions(handle,mipLevel)
  %4578 = extractvalue %dx.types.Dimensions %4577, 0
  %4579 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4578)  ; FirstbitLo(value)
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 1
  %4582 = sub nsw i32 %4581, %4579
  %4583 = sitofp i32 %4582 to float
  %4584 = fsub fast float %4468, %4583
  %4585 = call float @dx.op.binary.f32(i32 35, float %4584, float 0.000000e+00)  ; FMax(a,b)
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4576, %dx.types.Handle %52, float %4556, float %4557, float %4571, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = fcmp fast ogt float %4587, 0.000000e+00
  br i1 %4588, label %4589, label %4617

; <label>:4589                                    ; preds = %4560
  %4590 = add i32 %4550, %4568
  %4591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.i32 %4591, 0
  %4593 = and i32 %4592, 32767
  %4594 = mul nuw nsw i32 %4593, 928
  %4595 = add nuw nsw i32 %4594, 48
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = add nuw nsw i32 %4594, 60
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = fmul fast float %4597, %4587
  %4606 = fmul fast float %4598, %4587
  %4607 = fmul fast float %4599, %4587
  %4608 = fadd fast float %4605, %4561
  %4609 = fadd fast float %4606, %4562
  %4610 = fadd fast float %4607, %4563
  %4611 = fmul fast float %4602, %4587
  %4612 = fmul fast float %4603, %4587
  %4613 = fmul fast float %4604, %4587
  %4614 = fadd fast float %4611, %4564
  %4615 = fadd fast float %4612, %4565
  %4616 = fadd fast float %4613, %4566
  br label %4617

; <label>:4617                                    ; preds = %4589, %4560
  %4618 = phi float [ %4608, %4589 ], [ %4561, %4560 ]
  %4619 = phi float [ %4609, %4589 ], [ %4562, %4560 ]
  %4620 = phi float [ %4610, %4589 ], [ %4563, %4560 ]
  %4621 = phi float [ %4614, %4589 ], [ %4564, %4560 ]
  %4622 = phi float [ %4615, %4589 ], [ %4565, %4560 ]
  %4623 = phi float [ %4616, %4589 ], [ %4566, %4560 ]
  %4624 = add nuw i32 %4567, 1
  %4625 = icmp eq i32 %4624, %4549
  br i1 %4625, label %4626, label %4560

; <label>:4626                                    ; preds = %4617
  br label %4627

; <label>:4627                                    ; preds = %4626, %4490
  %4628 = phi float [ 0.000000e+00, %4490 ], [ %4618, %4626 ]
  %4629 = phi float [ 0.000000e+00, %4490 ], [ %4619, %4626 ]
  %4630 = phi float [ 0.000000e+00, %4490 ], [ %4620, %4626 ]
  %4631 = phi float [ 0.000000e+00, %4490 ], [ %4621, %4626 ]
  %4632 = phi float [ 0.000000e+00, %4490 ], [ %4622, %4626 ]
  %4633 = phi float [ 0.000000e+00, %4490 ], [ %4623, %4626 ]
  %4634 = fadd fast float %4631, %4628
  %4635 = fmul fast float %4634, 0x3F847AE140000000
  %4636 = fadd fast float %4632, %4629
  %4637 = fmul fast float %4636, 0x3F847AE140000000
  %4638 = fadd fast float %4633, %4630
  %4639 = fmul fast float %4638, 0x3F847AE140000000
  br label %4640

; <label>:4640                                    ; preds = %4627, %4424, %4369, %4366, %4337, %4299
  %4641 = phi float [ %4351, %4337 ], [ -1.310720e+05, %4299 ], [ %4543, %4627 ], [ -1.310720e+05, %4369 ], [ -1.310720e+05, %4424 ], [ -1.310720e+05, %4366 ]
  %4642 = phi float [ %4361, %4337 ], [ 0.000000e+00, %4299 ], [ %4635, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4643 = phi float [ %4363, %4337 ], [ 0.000000e+00, %4299 ], [ %4637, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4644 = phi float [ %4365, %4337 ], [ 0.000000e+00, %4299 ], [ %4639, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4645 = phi i1 [ true, %4337 ], [ false, %4299 ], [ true, %4627 ], [ false, %4369 ], [ false, %4424 ], [ false, %4366 ]
  %4646 = and i32 %204, 3
  %4647 = icmp eq i32 %4646, 1
  %4648 = select i1 %4647, float 1.000000e+00, float 0.000000e+00
  %4649 = fsub fast float %4641, %168
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = select i1 %4645, float %4650, float 1.000000e+00
  %4652 = fmul fast float %4651, %4648
  %4653 = icmp eq i32 %4646, 3
  %4654 = select i1 %4653, float 1.000000e+00, float %4652
  %4655 = call float @dx.op.binary.f32(i32 35, float %4214, float %4654)  ; FMax(a,b)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fcmp fast une float %4656, 0.000000e+00
  %4658 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = call float @dx.op.unary.f32(i32 25, float %4658)  ; Rsqrt(value)
  br i1 %4657, label %4667, label %4660

; <label>:4660                                    ; preds = %4640
  %4661 = fmul fast float %4659, %166
  %4662 = fmul fast float %4659, %167
  %4663 = fmul fast float %4659, %168
  %4664 = fsub fast float -0.000000e+00, %4661
  %4665 = fsub fast float -0.000000e+00, %4662
  %4666 = fsub fast float -0.000000e+00, %4663
  br label %4835

; <label>:4667                                    ; preds = %4640
  %4668 = fmul fast float %166, %4659
  %4669 = fsub fast float -0.000000e+00, %4668
  %4670 = fmul fast float %167, %4659
  %4671 = fsub fast float -0.000000e+00, %4670
  %4672 = fmul fast float %168, %4659
  %4673 = fsub fast float -0.000000e+00, %4672
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4671, float %4673, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = fmul fast float %4656, 2.500000e+00
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fmul fast float %4656, 0x4013FFFFE0000000
  %4678 = fadd fast float %4677, 0xBFFFFFFFE0000000
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4656, 0x4004000020000000
  %4681 = fadd fast float %4680, 0xBFF8000040000000
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4684 = fmul fast float %4245, 1.000000e+01
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4685, 2.000000e+00
  %4687 = fsub fast float 3.000000e+00, %4686
  %4688 = fmul fast float %4685, %4685
  %4689 = fmul fast float %4688, %4687
  %4690 = fsub fast float 1.000000e+00, %4689
  %4691 = fsub fast float 0x3FE3333340000000, %4266
  %4692 = fmul fast float %4691, 0x400AAAAAA0000000
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4690, %4693
  %4695 = fmul fast float %4278, 0x3FEA2B8620000000
  %4696 = fmul fast float %4279, 0x3FEA2B8620000000
  %4697 = fmul fast float %4280, 0x3FEA2B8620000000
  %4698 = fadd fast float %4695, 0x3FC81DFBA0000000
  %4699 = fmul fast float %4698, %4278
  %4700 = fadd fast float %4699, 0x3F910E6020000000
  %4701 = fadd fast float %4696, 0x3FC81DFBA0000000
  %4702 = fmul fast float %4701, %4279
  %4703 = fadd fast float %4702, 0x3F910E6020000000
  %4704 = fadd fast float %4697, 0x3FC81DFBA0000000
  %4705 = fmul fast float %4704, %4280
  %4706 = fadd fast float %4705, 0x3F910E6020000000
  %4707 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = fsub fast float %4707, %4278
  %4711 = fsub fast float %4708, %4279
  %4712 = fsub fast float %4709, %4280
  %4713 = fmul fast float %4710, %4683
  %4714 = fmul fast float %4713, %4694
  %4715 = fmul fast float %4711, %4683
  %4716 = fmul fast float %4715, %4694
  %4717 = fmul fast float %4712, %4683
  %4718 = fmul fast float %4717, %4694
  %4719 = fadd fast float %4714, %4278
  %4720 = fadd fast float %4716, %4279
  %4721 = fadd fast float %4718, %4280
  %4722 = fmul fast float %4226, %4226
  %4723 = fmul fast float %4722, %4722
  %4724 = fadd fast float %4679, 1.000000e+00
  %4725 = fsub fast float %4724, %4694
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fsub fast float 1.000000e+00, %4723
  %4730 = call float @dx.op.binary.f32(i32 36, float %4726, float %4729)  ; FMin(a,b)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4730, float %4731)  ; FMax(a,b)
  %4733 = fadd fast float %4728, 0xBFE4CCCCC0000000
  %4734 = fmul fast float %4733, 0x4006DB6DA0000000
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4735, 2.000000e+00
  %4737 = fsub fast float 3.000000e+00, %4736
  %4738 = bitcast float %4263 to i32
  %4739 = ashr i32 %4738, 1
  %4740 = add nsw i32 %4739, 532487669
  %4741 = bitcast i32 %4740 to float
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = bitcast float %4742 to i32
  %4744 = sub nsw i32 2129859010, %4743
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4745, 2.000000e+00
  %4747 = bitcast float %4264 to i32
  %4748 = ashr i32 %4747, 1
  %4749 = add nsw i32 %4748, 532487669
  %4750 = bitcast i32 %4749 to float
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = bitcast float %4751 to i32
  %4753 = sub nsw i32 2129859010, %4752
  %4754 = bitcast i32 %4753 to float
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = bitcast float %4265 to i32
  %4757 = ashr i32 %4756, 1
  %4758 = add nsw i32 %4757, 532487669
  %4759 = bitcast i32 %4758 to float
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = bitcast float %4760 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4763, 2.000000e+00
  %4765 = fsub fast float 0x4002A9FBE0000000, %4746
  %4766 = fadd fast float %4746, 0x3FD54FDF00000000
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4769, %4765
  %4771 = fmul fast float %4770, %4770
  %4772 = fsub fast float 0x4002A9FBE0000000, %4755
  %4773 = fadd fast float %4755, 0x3FD54FDF00000000
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4776, %4772
  %4778 = fmul fast float %4777, %4777
  %4779 = fsub fast float 0x4002A9FBE0000000, %4764
  %4780 = fadd fast float %4764, 0x3FD54FDF00000000
  %4781 = bitcast float %4780 to i32
  %4782 = sub nsw i32 2129859010, %4781
  %4783 = bitcast i32 %4782 to float
  %4784 = fmul fast float %4783, %4779
  %4785 = fmul fast float %4784, %4784
  %4786 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4771)  ; FMax(a,b)
  %4787 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4778)  ; FMax(a,b)
  %4788 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4785)  ; FMax(a,b)
  %4789 = fsub fast float 1.000000e+00, %4674
  %4790 = fadd fast float %4789, %4690
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = fsub fast float 1.000000e+00, %4654
  %4793 = fmul fast float %4732, %4792
  %4794 = fmul fast float %4735, %4735
  %4795 = fmul fast float %4794, %4793
  %4796 = fmul fast float %4795, %4737
  %4797 = fmul fast float %4792, 0xBFE99999A0000000
  %4798 = fmul fast float %4797, %4683
  %4799 = fmul fast float %4798, %4694
  %4800 = fadd fast float %4799, 1.000000e+00
  %4801 = fadd fast float %4266, -1.000000e+00
  %4802 = fmul fast float %4800, %4801
  %4803 = fadd fast float %4802, 1.000000e+00
  %4804 = fsub fast float %4786, %4263
  %4805 = fsub fast float %4787, %4264
  %4806 = fsub fast float %4788, %4265
  %4807 = fmul fast float %4796, %4804
  %4808 = fmul fast float %4796, %4805
  %4809 = fmul fast float %4796, %4806
  %4810 = fadd fast float %4807, %4263
  %4811 = fadd fast float %4808, %4264
  %4812 = fadd fast float %4809, %4265
  %4813 = fsub fast float %110, %4242
  %4814 = fsub fast float %111, %4243
  %4815 = fsub fast float %112, %4244
  %4816 = fmul fast float %4796, %4813
  %4817 = fmul fast float %4796, %4814
  %4818 = fmul fast float %4796, %4815
  %4819 = fadd fast float %4816, %4242
  %4820 = fadd fast float %4817, %4243
  %4821 = fadd fast float %4818, %4244
  %4822 = fmul fast float %4796, %4791
  %4823 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = fmul fast float %4822, %4824
  %4826 = fadd fast float %4825, %4823
  %4827 = fsub fast float 1.000000e+00, %4226
  %4828 = fmul fast float %4796, %4827
  %4829 = fadd fast float %4828, %4226
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float %4819, float %4820, float %4821)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 25, float %4830)  ; Rsqrt(value)
  %4832 = fmul fast float %4819, %4831
  %4833 = fmul fast float %4820, %4831
  %4834 = fmul fast float %4821, %4831
  br label %4835

; <label>:4835                                    ; preds = %4667, %4660
  %4836 = phi float [ %4666, %4660 ], [ %4673, %4667 ]
  %4837 = phi float [ %4665, %4660 ], [ %4671, %4667 ]
  %4838 = phi float [ %4664, %4660 ], [ %4669, %4667 ]
  %4839 = phi float [ %4663, %4660 ], [ %4672, %4667 ]
  %4840 = phi float [ %4662, %4660 ], [ %4670, %4667 ]
  %4841 = phi float [ %4661, %4660 ], [ %4668, %4667 ]
  %4842 = phi float [ %4242, %4660 ], [ %4832, %4667 ]
  %4843 = phi float [ %4243, %4660 ], [ %4833, %4667 ]
  %4844 = phi float [ %4244, %4660 ], [ %4834, %4667 ]
  %4845 = phi float [ %4278, %4660 ], [ %4719, %4667 ]
  %4846 = phi float [ %4279, %4660 ], [ %4720, %4667 ]
  %4847 = phi float [ %4280, %4660 ], [ %4721, %4667 ]
  %4848 = phi float [ %4263, %4660 ], [ %4810, %4667 ]
  %4849 = phi float [ %4264, %4660 ], [ %4811, %4667 ]
  %4850 = phi float [ %4265, %4660 ], [ %4812, %4667 ]
  %4851 = phi float [ %4266, %4660 ], [ %4826, %4667 ]
  %4852 = phi float [ %4226, %4660 ], [ %4829, %4667 ]
  %4853 = fsub fast float -0.000000e+00, %168
  %4854 = select i1 %228, float 0.000000e+00, float %4850
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %4838, float %4837, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4840, float %4839, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = fmul fast float %4857, 2.000000e+00
  %4859 = fmul fast float %4858, %4842
  %4860 = fmul fast float %4858, %4843
  %4861 = fmul fast float %4858, %4844
  %4862 = fsub fast float %4841, %4859
  %4863 = fsub fast float %4840, %4860
  %4864 = fsub fast float %4839, %4861
  %4865 = call float @dx.op.binary.f32(i32 36, float %4852, float 1.000000e+00)  ; FMin(a,b)
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = bitcast float %4866 to i32
  %4868 = ashr i32 %4867, 1
  %4869 = add nsw i32 %4868, 532487669
  %4870 = bitcast i32 %4869 to float
  %4871 = fsub fast float 1.000000e+00, %4851
  %4872 = call float @dx.op.binary.f32(i32 35, float %4871, float 0x3F847AE140000000)  ; FMax(a,b)
  %4873 = fmul fast float %4872, %4872
  %4874 = fmul fast float %4873, %4873
  %4875 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4870, float %4874, float %4875, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = fsub fast float 1.000000e+00, %4852
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = fsub fast float 1.000000e+00, %71
  %4883 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4883, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4885 = fdiv fast float %4882, %4884
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4887, 5.000000e-01
  %4889 = fadd fast float %4888, 5.000000e-01
  %4890 = fmul fast float %4889, %71
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, %4885
  %4894 = fadd fast float %4890, %4893
  %4895 = fsub fast float 5.000000e-01, %4888
  %4896 = fmul fast float %4895, %4845
  %4897 = fmul fast float %4895, %4846
  %4898 = fmul fast float %4895, %4847
  %4899 = fadd fast float %4894, %4896
  %4900 = fadd fast float %4894, %4897
  %4901 = fadd fast float %4894, %4898
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fmul fast float %4903, 5.000000e-01
  %4905 = fadd fast float %4904, 5.000000e-01
  %4906 = fmul fast float %4905, %71
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, %4885
  %4910 = fadd fast float %4906, %4909
  %4911 = fsub fast float 5.000000e-01, %4904
  %4912 = fmul fast float %4911, %4845
  %4913 = fmul fast float %4911, %4846
  %4914 = fmul fast float %4911, %4847
  %4915 = fadd fast float %4910, %4912
  %4916 = fadd fast float %4910, %4913
  %4917 = fadd fast float %4910, %4914
  %4918 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = call float @dx.op.binary.f32(i32 36, float %4845, float %4920)  ; FMin(a,b)
  %4922 = fmul fast float %4921, %4866
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = bitcast float %4923 to i32
  %4925 = sub nsw i32 2129859010, %4924
  %4926 = bitcast i32 %4925 to float
  %4927 = call float @dx.op.binary.f32(i32 36, float %4846, float %4920)  ; FMin(a,b)
  %4928 = fmul fast float %4927, %4866
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = bitcast float %4929 to i32
  %4931 = sub nsw i32 2129859010, %4930
  %4932 = bitcast i32 %4931 to float
  %4933 = call float @dx.op.binary.f32(i32 36, float %4847, float %4920)  ; FMin(a,b)
  %4934 = fmul fast float %4933, %4866
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = bitcast float %4935 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4865, %72
  %4940 = fmul fast float %4939, %4899
  %4941 = fmul fast float %4940, %4926
  %4942 = fmul fast float %4865, %73
  %4943 = fmul fast float %4942, %4900
  %4944 = fmul fast float %4943, %4932
  %4945 = fmul fast float %4865, %74
  %4946 = fmul fast float %4945, %4901
  %4947 = fmul fast float %4946, %4938
  %4948 = call float @dx.op.binary.f32(i32 36, float %4848, float %4920)  ; FMin(a,b)
  %4949 = fmul fast float %4948, %4866
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = call float @dx.op.binary.f32(i32 36, float %4849, float %4920)  ; FMin(a,b)
  %4955 = fmul fast float %4954, %4866
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = bitcast float %4956 to i32
  %4958 = sub nsw i32 2129859010, %4957
  %4959 = bitcast i32 %4958 to float
  %4960 = call float @dx.op.binary.f32(i32 36, float %4854, float %4920)  ; FMin(a,b)
  %4961 = fmul fast float %4960, %4866
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = bitcast float %4962 to i32
  %4964 = sub nsw i32 2129859010, %4963
  %4965 = bitcast i32 %4964 to float
  %4966 = fmul fast float %4939, %4915
  %4967 = fmul fast float %4966, %4953
  %4968 = fmul fast float %4942, %4916
  %4969 = fmul fast float %4968, %4959
  %4970 = fmul fast float %4945, %4917
  %4971 = fmul fast float %4970, %4965
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4941, float %4944, float %4947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = select i1 %228, float 0.000000e+00, float %4941
  %4974 = select i1 %228, float %4972, float %4944
  %4975 = select i1 %228, float 0.000000e+00, float %4947
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4967, float %4969, float %4971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = select i1 %228, float 0.000000e+00, float %4967
  %4978 = select i1 %228, float %4976, float %4969
  %4979 = select i1 %228, float 0.000000e+00, float %4971
  %4980 = fmul fast float %4856, 9.843750e-01
  %4981 = fmul fast float %4851, 9.843750e-01
  %4982 = fadd fast float %4980, 7.812500e-03
  %4983 = fadd fast float %4981, 7.812500e-03
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %4982, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 3
  %4987 = fmul fast float %4985, %4848
  %4988 = fmul fast float %4985, %4849
  %4989 = fmul fast float %4985, %4854
  %4990 = fadd fast float %4987, %4986
  %4991 = fadd fast float %4988, %4986
  %4992 = fadd fast float %4989, %4986
  %4993 = fcmp fast ogt float %4219, 0.000000e+00
  br i1 %4993, label %4994, label %5020

; <label>:4994                                    ; preds = %4835
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4219, float %4856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = fadd fast float %4996, -5.000000e-01
  %5000 = fadd fast float %4997, -5.000000e-01
  %5001 = fadd fast float %4998, -5.000000e-01
  %5002 = fsub fast float 1.000000e+00, %4848
  %5003 = fsub fast float 1.000000e+00, %4849
  %5004 = fsub fast float 1.000000e+00, %4854
  %5005 = fmul fast float %4848, 4.000000e+00
  %5006 = fmul fast float %5005, %5002
  %5007 = fmul fast float %5006, %4999
  %5008 = fmul fast float %4849, 4.000000e+00
  %5009 = fmul fast float %5008, %5003
  %5010 = fmul fast float %5009, %5000
  %5011 = fmul fast float %4854, 4.000000e+00
  %5012 = fmul fast float %5011, %5004
  %5013 = fmul fast float %5012, %5001
  %5014 = fadd fast float %5007, %4990
  %5015 = fadd fast float %5010, %4991
  %5016 = fadd fast float %5013, %4992
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  br label %5020

; <label>:5020                                    ; preds = %4994, %4835
  %5021 = phi float [ %5017, %4994 ], [ %4990, %4835 ]
  %5022 = phi float [ %5018, %4994 ], [ %4991, %4835 ]
  %5023 = phi float [ %5019, %4994 ], [ %4992, %4835 ]
  %5024 = call float @dx.op.binary.f32(i32 35, float %5022, float %5023)  ; FMax(a,b)
  %5025 = call float @dx.op.binary.f32(i32 35, float %5021, float %5024)  ; FMax(a,b)
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = fmul fast float %5025, %4851
  %5028 = fadd fast float %5027, %4851
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5032 = fmul fast float %5028, %5030
  %5033 = fadd fast float %5032, %5031
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fsub fast float 1.000000e+00, %4877
  %5036 = fadd fast float %5035, %5034
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = fcmp fast olt float %5037, 1.000000e+00
  br i1 %5038, label %5039, label %5515

; <label>:5039                                    ; preds = %5020
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5043 = fmul fast float %5041, %103
  %5044 = fmul fast float %5042, %104
  %5045 = fptoui float %5043 to i32
  %5046 = fptoui float %5044 to i32
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5047, 3
  %5051 = fadd fast float %91, -4.000000e+00
  %5052 = call float @dx.op.binary.f32(i32 35, float %5051, float 0.000000e+00)  ; FMax(a,b)
  %5053 = fadd fast float %5052, %5048
  %5054 = fmul fast float %5053, %5049
  %5055 = call float @dx.op.unary.f32(i32 23, float %5054)  ; Log(value)
  %5056 = fmul fast float %5055, %5050
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5059 = fmul fast float %5056, %5058
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.i32 %5061, 1
  %5063 = add i32 %5062, -1
  %5064 = uitofp i32 %5062 to float
  %5065 = fmul fast float %5064, %5060
  %5066 = fptoui float %5065 to i32
  %5067 = call i32 @dx.op.binary.i32(i32 40, i32 %5066, i32 %5063)  ; UMin(a,b)
  %5068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.i32 %5068, 2
  %5070 = extractvalue %dx.types.CBufRet.i32 %5068, 3
  %5071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5046, i32 %5069, i32 %5045)  ; UMad(a,b,c)
  %5072 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5067, i32 %5070, i32 %5071)  ; UMad(a,b,c)
  %5073 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %5074 = fptoui float %5073 to i32
  %5075 = lshr i32 %5074, 5
  %5076 = call i32 @dx.op.binary.i32(i32 40, i32 %5075, i32 8191)  ; UMin(a,b)
  %5077 = fsub fast float %4641, %168
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fcmp fast ogt float %5078, 0.000000e+00
  %5080 = fcmp fast ogt float %4864, 0.000000e+00
  %5081 = and i1 %5080, %5079
  br i1 %5081, label %5082, label %5111

; <label>:5082                                    ; preds = %5039
  %5083 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.binary.f32(i32 35, float %5083, float -1.000000e+00)  ; FMax(a,b)
  %5085 = call float @dx.op.binary.f32(i32 36, float %5084, float 1.000000e+00)  ; FMin(a,b)
  %5086 = fmul fast float %5085, %5085
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = fmul fast float %5087, 0x3FFC6E2300000000
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = fcmp fast ogt float %5089, 0.000000e+00
  %5091 = call float @dx.op.unary.f32(i32 24, float %5089)  ; Sqrt(value)
  %5092 = fsub fast float 1.000000e+00, %5091
  %5093 = call float @dx.op.unary.f32(i32 23, float %5092)  ; Log(value)
  %5094 = fmul fast float %5093, 5.000000e+00
  %5095 = call float @dx.op.unary.f32(i32 21, float %5094)  ; Exp(value)
  %5096 = fmul fast float %5095, 0x3FEF591A60000000
  %5097 = fadd fast float %5096, 0x3F94DCB540000000
  %5098 = select i1 %5090, float %5097, float 1.000000e+00
  %5099 = fcmp fast oge float %5098, 1.000000e+00
  %5100 = fmul fast float %5083, 2.000000e+00
  %5101 = fadd fast float %5100, %4864
  %5102 = select i1 %5099, float %5101, float %4864
  %5103 = fsub fast float %5102, %4864
  %5104 = fmul fast float %5103, %5078
  %5105 = fadd fast float %5104, %4864
  %5106 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %5105, float %4862, float %4863, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = call float @dx.op.unary.f32(i32 25, float %5106)  ; Rsqrt(value)
  %5108 = fmul fast float %5107, %4862
  %5109 = fmul fast float %5107, %4863
  %5110 = fmul fast float %5105, %5107
  br label %5111

; <label>:5111                                    ; preds = %5082, %5039
  %5112 = phi float [ %5108, %5082 ], [ %4862, %5039 ]
  %5113 = phi float [ %5109, %5082 ], [ %4863, %5039 ]
  %5114 = phi float [ %5110, %5082 ], [ %4864, %5039 ]
  %5115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.i32 %5115, 2
  %5117 = add nsw i32 %5116, -1
  %5118 = call i32 @dx.op.binary.i32(i32 37, i32 %5117, i32 0)  ; IMax(a,b)
  %5119 = shl i32 %5076, 2
  %5120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5119, i32 undef)  ; BufferLoad(srv,index,wot)
  %5121 = extractvalue %dx.types.ResRet.i32 %5120, 0
  %5122 = lshr i32 %5121, 16
  %5123 = and i32 %5121, 65535
  %5124 = lshr i32 %5121, 21
  %5125 = lshr i32 %5123, 5
  %5126 = call i32 @dx.op.binary.i32(i32 40, i32 %5125, i32 %5118)  ; UMin(a,b)
  %5127 = icmp ugt i32 %5124, %5126
  br i1 %5127, label %5491, label %5128

; <label>:5128                                    ; preds = %5111
  br label %5129

; <label>:5129                                    ; preds = %5483, %5128
  %5130 = phi float [ %5484, %5483 ], [ 0.000000e+00, %5128 ]
  %5131 = phi float [ %5485, %5483 ], [ 0.000000e+00, %5128 ]
  %5132 = phi float [ %5486, %5483 ], [ 0.000000e+00, %5128 ]
  %5133 = phi float [ %5487, %5483 ], [ 1.000000e+00, %5128 ]
  %5134 = phi i32 [ %5488, %5483 ], [ %5124, %5128 ]
  %5135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.i32 %5135, 2
  %5137 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5072, i32 %5136, i32 %5134)  ; UMad(a,b,c)
  %5138 = shl i32 %5137, 2
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = shl i32 %5134, 5
  %5142 = sub nsw i32 %5122, %5141
  %5143 = call i32 @dx.op.binary.i32(i32 37, i32 %5142, i32 0)  ; IMax(a,b)
  %5144 = call i32 @dx.op.binary.i32(i32 38, i32 %5143, i32 31)  ; IMin(a,b)
  %5145 = sub nsw i32 1, %5122
  %5146 = add nsw i32 %5145, %5123
  %5147 = call i32 @dx.op.binary.i32(i32 37, i32 %5146, i32 0)  ; IMax(a,b)
  %5148 = call i32 @dx.op.binary.i32(i32 38, i32 %5147, i32 32)  ; IMin(a,b)
  %5149 = and i32 %5148, 31
  %5150 = shl i32 -1, %5149
  %5151 = xor i32 %5150, -1
  %5152 = and i32 %5144, 31
  %5153 = shl i32 %5151, %5152
  %5154 = icmp eq i32 %5148, 32
  %5155 = select i1 %5154, i32 -1, i32 %5153
  %5156 = and i32 %5155, %5140
  %5157 = icmp eq i32 %5156, 0
  br i1 %5157, label %5483, label %5158

; <label>:5158                                    ; preds = %5129
  br label %5159

; <label>:5159                                    ; preds = %5266, %5158
  %5160 = phi float [ %5267, %5266 ], [ %5130, %5158 ]
  %5161 = phi float [ %5268, %5266 ], [ %5131, %5158 ]
  %5162 = phi float [ %5269, %5266 ], [ %5132, %5158 ]
  %5163 = phi float [ %5270, %5266 ], [ %5133, %5158 ]
  %5164 = phi i32 [ %5169, %5266 ], [ %5156, %5158 ]
  %5165 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5164)  ; FirstbitLo(value)
  %5166 = add i32 %5165, %5141
  %5167 = and i32 %5165, 31
  %5168 = shl i32 1, %5167
  %5169 = xor i32 %5168, %5164
  %5170 = mul i32 %5166, 72
  %5171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5170, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = add i32 %5170, 12
  %5176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5175, i32 undef)  ; BufferLoad(srv,index,wot)
  %5177 = extractvalue %dx.types.ResRet.i32 %5176, 0
  %5178 = add i32 %5170, 16
  %5179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5178, i32 undef)  ; BufferLoad(srv,index,wot)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = add i32 %5170, 28
  %5184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5183, i32 undef)  ; BufferLoad(srv,index,wot)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = add i32 %5170, 32
  %5187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5186, i32 undef)  ; BufferLoad(srv,index,wot)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = extractvalue %dx.types.ResRet.f32 %5187, 3
  %5192 = add i32 %5170, 48
  %5193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5192, i32 undef)  ; BufferLoad(srv,index,wot)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.ResRet.f32 %5193, 1
  %5196 = add i32 %5170, 56
  %5197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.ResRet.f32 %5197, 1
  %5200 = add i32 %5170, 64
  %5201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5200, i32 undef)  ; BufferLoad(srv,index,wot)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.f32 %5201, 1
  %5204 = mul i32 %5166, 60
  %5205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5204, i32 undef)  ; BufferLoad(srv,index,wot)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.ResRet.f32 %5205, 2
  %5209 = add i32 %5204, 12
  %5210 = add i32 %5204, 48
  %5211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5210, i32 undef)  ; BufferLoad(srv,index,wot)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = and i32 %5177, 32767
  %5216 = bitcast float %5172 to i32
  %5217 = icmp eq i32 %5216, -1
  %5218 = bitcast float %5173 to i32
  %5219 = and i32 %5177, 32768
  %5220 = icmp ne i32 %5219, 0
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5225 = fsub fast float %5206, %5222
  %5226 = fsub fast float %5207, %5223
  %5227 = fsub fast float %5208, %5224
  %5228 = fsub fast float %166, %5225
  %5229 = fsub fast float %167, %5226
  %5230 = fsub fast float %168, %5227
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5209, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = add i32 %5204, 24
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5238, float %5239, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = add i32 %5204, 36
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.unary.f32(i32 6, float %5235)  ; FAbs(value)
  %5249 = call float @dx.op.unary.f32(i32 6, float %5241)  ; FAbs(value)
  %5250 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5251 = fsub fast float %5212, %5248
  %5252 = fsub fast float %5213, %5249
  %5253 = fsub fast float %5214, %5250
  %5254 = fmul fast float %5251, %5180
  %5255 = fmul fast float %5252, %5181
  %5256 = fmul fast float %5253, %5182
  %5257 = call float @dx.op.binary.f32(i32 36, float %5255, float %5256)  ; FMin(a,b)
  %5258 = call float @dx.op.binary.f32(i32 36, float %5254, float %5257)  ; FMin(a,b)
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = call float @dx.op.binary.f32(i32 36, float %5163, float %5259)  ; FMin(a,b)
  %5261 = uitofp i1 %5220 to float
  %5262 = fadd fast float %5078, 1.000000e+00
  %5263 = fsub fast float %5262, %5261
  %5264 = fmul fast float %5260, %5263
  %5265 = fcmp fast ogt float %5264, 0.000000e+00
  br i1 %5265, label %5272, label %5266

; <label>:5266                                    ; preds = %5414, %5159
  %5267 = phi float [ %5478, %5414 ], [ %5160, %5159 ]
  %5268 = phi float [ %5479, %5414 ], [ %5161, %5159 ]
  %5269 = phi float [ %5480, %5414 ], [ %5162, %5159 ]
  %5270 = phi float [ %5481, %5414 ], [ %5163, %5159 ]
  %5271 = icmp eq i32 %5164, %5168
  br i1 %5271, label %5482, label %5159

; <label>:5272                                    ; preds = %5159
  br i1 %5217, label %5330, label %5273

; <label>:5273                                    ; preds = %5272
  %5274 = fsub fast float -0.000000e+00, %5232
  %5275 = fsub fast float -0.000000e+00, %5233
  %5276 = fsub fast float -0.000000e+00, %5234
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float %5274, float %5275, float %5276)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fsub fast float -0.000000e+00, %5277
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5274, float %5275, float %5276)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = fadd fast float %5279, %5195
  %5281 = fadd fast float %5194, %5279
  %5282 = fsub fast float -0.000000e+00, %5281
  %5283 = fcmp ogt float %5277, -0.000000e+00
  %5284 = select i1 %5283, float %5282, float %5280
  %5285 = call float @dx.op.unary.f32(i32 6, float %5278)  ; FAbs(value)
  %5286 = fdiv fast float 1.000000e+00, %5285
  %5287 = fmul fast float %5284, %5286
  %5288 = call float @dx.op.binary.f32(i32 35, float %5287, float 0.000000e+00)  ; FMax(a,b)
  %5289 = fsub fast float -0.000000e+00, %5238
  %5290 = fsub fast float -0.000000e+00, %5239
  %5291 = fsub fast float -0.000000e+00, %5240
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = fsub fast float -0.000000e+00, %5292
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = fadd fast float %5294, %5199
  %5296 = fadd fast float %5198, %5294
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = fcmp ogt float %5292, -0.000000e+00
  %5299 = select i1 %5298, float %5297, float %5295
  %5300 = call float @dx.op.unary.f32(i32 6, float %5293)  ; FAbs(value)
  %5301 = fdiv fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5299, %5301
  %5303 = call float @dx.op.binary.f32(i32 35, float %5302, float 0.000000e+00)  ; FMax(a,b)
  %5304 = fsub fast float -0.000000e+00, %5244
  %5305 = fsub fast float -0.000000e+00, %5245
  %5306 = fsub fast float -0.000000e+00, %5246
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = fsub fast float -0.000000e+00, %5307
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5229, float %5230, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = fadd fast float %5309, %5203
  %5311 = fadd fast float %5202, %5309
  %5312 = fsub fast float -0.000000e+00, %5311
  %5313 = fcmp ogt float %5307, -0.000000e+00
  %5314 = select i1 %5313, float %5312, float %5310
  %5315 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = fmul fast float %5314, %5316
  %5318 = call float @dx.op.binary.f32(i32 35, float %5317, float 0.000000e+00)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 36, float %5303, float %5318)  ; FMin(a,b)
  %5320 = call float @dx.op.binary.f32(i32 36, float %5288, float %5319)  ; FMin(a,b)
  %5321 = fmul fast float %5320, %5112
  %5322 = fmul fast float %5320, %5113
  %5323 = fmul fast float %5320, %5114
  %5324 = fadd fast float %5321, %166
  %5325 = fadd fast float %5322, %167
  %5326 = fadd fast float %5323, %168
  %5327 = fsub fast float %5324, %5172
  %5328 = fsub fast float %5325, %5173
  %5329 = fsub fast float %5326, %5174
  br label %5337

; <label>:5330                                    ; preds = %5272
  %5331 = fmul fast float %5112, 8.096000e+03
  %5332 = fmul fast float %5113, 8.096000e+03
  %5333 = fmul fast float %5114, 8.096000e+03
  %5334 = fadd fast float %5331, %166
  %5335 = fadd fast float %5332, %167
  %5336 = fadd fast float %5333, %168
  br label %5337

; <label>:5337                                    ; preds = %5330, %5273
  %5338 = phi float [ %5112, %5330 ], [ %5327, %5273 ]
  %5339 = phi float [ %5113, %5330 ], [ %5328, %5273 ]
  %5340 = phi float [ %5114, %5330 ], [ %5329, %5273 ]
  %5341 = phi float [ %5334, %5330 ], [ %5324, %5273 ]
  %5342 = phi float [ %5335, %5330 ], [ %5325, %5273 ]
  %5343 = phi float [ %5336, %5330 ], [ %5326, %5273 ]
  %5344 = fcmp fast olt float %5191, 1.000000e+00
  br i1 %5344, label %5345, label %5376, !dx.controlflow.hints !97

; <label>:5345                                    ; preds = %5337
  %5346 = fmul fast float %5340, %5189
  %5347 = fmul fast float %5339, %5190
  %5348 = fsub fast float %5346, %5347
  %5349 = fmul fast float %5338, %5190
  %5350 = fmul fast float %5340, %5188
  %5351 = fsub fast float %5349, %5350
  %5352 = fmul fast float %5339, %5188
  %5353 = fmul fast float %5338, %5189
  %5354 = fsub fast float %5352, %5353
  %5355 = fmul fast float %5348, 2.000000e+00
  %5356 = fmul fast float %5351, 2.000000e+00
  %5357 = fmul fast float %5354, 2.000000e+00
  %5358 = fmul fast float %5355, %5191
  %5359 = fmul fast float %5356, %5191
  %5360 = fmul fast float %5357, %5191
  %5361 = fmul fast float %5357, %5189
  %5362 = fmul fast float %5356, %5190
  %5363 = fmul fast float %5355, %5190
  %5364 = fmul fast float %5357, %5188
  %5365 = fmul fast float %5356, %5188
  %5366 = fmul fast float %5355, %5189
  %5367 = fadd fast float %5361, %5338
  %5368 = fadd fast float %5367, %5358
  %5369 = fsub fast float %5368, %5362
  %5370 = fsub fast float %5339, %5364
  %5371 = fadd fast float %5370, %5359
  %5372 = fadd fast float %5371, %5363
  %5373 = fadd fast float %5360, %5340
  %5374 = fsub fast float %5373, %5366
  %5375 = fadd fast float %5374, %5365
  br label %5376

; <label>:5376                                    ; preds = %5345, %5337
  %5377 = phi float [ %5369, %5345 ], [ %5338, %5337 ]
  %5378 = phi float [ %5372, %5345 ], [ %5339, %5337 ]
  %5379 = phi float [ %5375, %5345 ], [ %5340, %5337 ]
  br i1 %5217, label %5411, label %5380

; <label>:5380                                    ; preds = %5376
  %5381 = fmul fast float %4851, 0x400187C840000000
  %5382 = fadd fast float %5381, 0xC00EFC2120000000
  %5383 = fmul fast float %5382, %4851
  %5384 = fadd fast float %5383, 0x3FE5D16340000000
  %5385 = fmul fast float %5384, %4851
  %5386 = fadd fast float %5385, 1.000000e+00
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float %5341, %166
  %5389 = fsub fast float %5342, %167
  %5390 = fsub fast float %5343, %168
  %5391 = fsub fast float %5341, %5172
  %5392 = fsub fast float %5342, %5173
  %5393 = fsub fast float %5343, %5174
  %5394 = call float @dx.op.dot3.f32(i32 55, float %5388, float %5389, float %5390, float %5388, float %5389, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %5391, float %5392, float %5393)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fadd fast float %5395, 0x3EE4F8B580000000
  %5397 = fdiv fast float %5394, %5396
  %5398 = bitcast float %5397 to i32
  %5399 = ashr i32 %5398, 1
  %5400 = add nsw i32 %5399, 532487669
  %5401 = bitcast i32 %5400 to float
  %5402 = fmul fast float %5401, %5387
  %5403 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5404 = fmul fast float %5403, 0x4009981AE0000000
  %5405 = fsub fast float 0x40111BBD80000000, %5404
  %5406 = fmul fast float %5405, %5403
  %5407 = fadd fast float %5406, 0xC0009F6020000000
  %5408 = fmul fast float %5407, %5403
  %5409 = fadd fast float %5408, 1.000000e+00
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  br label %5414

; <label>:5411                                    ; preds = %5376
  %5412 = icmp ne i32 %5218, -1
  %5413 = zext i1 %5412 to i32
  br label %5414

; <label>:5414                                    ; preds = %5411, %5380
  %5415 = phi float [ %4851, %5411 ], [ %5410, %5380 ]
  %5416 = phi i32 [ %5413, %5411 ], [ 0, %5380 ]
  %5417 = fmul float %5415, 5.000000e+00
  %5418 = fsub float 5.000000e+00, %5417
  %5419 = icmp ne i32 %5416, 0
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5422 = fadd fast float %5421, %5418
  %5423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5422)  ; FMax(a,b)
  %5424 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5425 = call float @dx.op.unary.f32(i32 6, float %5378)  ; FAbs(value)
  %5426 = fadd fast float %5425, %5424
  %5427 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5428 = fadd fast float %5426, %5427
  %5429 = fcmp fast oeq float %5428, 0.000000e+00
  %5430 = fdiv fast float 1.000000e+00, %5428
  %5431 = select i1 %5429, float 1.000000e+00, float %5430
  %5432 = fmul fast float %5431, %5377
  %5433 = fmul fast float %5431, %5378
  %5434 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5435 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5436 = fsub fast float 1.000000e+00, %5434
  %5437 = fsub fast float 1.000000e+00, %5435
  %5438 = fcmp fast oge float %5432, 0.000000e+00
  %5439 = fcmp fast oge float %5433, 0.000000e+00
  %5440 = select i1 %5438, float 1.000000e+00, float -1.000000e+00
  %5441 = select i1 %5439, float 1.000000e+00, float -1.000000e+00
  %5442 = fcmp fast ole float %5379, 0.000000e+00
  %5443 = fmul fast float %5440, %5436
  %5444 = fmul fast float %5441, %5437
  %5445 = select i1 %5442, float %5443, float %5432
  %5446 = select i1 %5442, float %5444, float %5433
  %5447 = fmul fast float %5445, 5.000000e-01
  %5448 = fmul fast float %5446, 5.000000e-01
  %5449 = fadd fast float %5447, 5.000000e-01
  %5450 = fadd fast float %5448, 5.000000e-01
  %5451 = uitofp i32 %5215 to float
  %5452 = call float @dx.op.binary.f32(i32 36, float %5423, float 3.000000e+00)  ; FMin(a,b)
  %5453 = fadd fast float %5452, 2.000000e+00
  %5454 = call float @dx.op.unary.f32(i32 21, float %5453)  ; Exp(value)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5420, 1
  %5456 = fmul fast float %5455, %5454
  %5457 = fmul fast float %5456, 2.000000e+00
  %5458 = fsub fast float 1.000000e+00, %5457
  %5459 = fmul fast float %5449, %5458
  %5460 = fmul fast float %5450, %5458
  %5461 = fadd fast float %5459, %5456
  %5462 = fadd fast float %5460, %5456
  %5463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5461, float %5462, float %5451, float undef, i32 0, i32 0, i32 undef, float %5423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5469 = fmul fast float %5468, %5185
  %5470 = call float @dx.op.binary.f32(i32 36, float %4918, float %5469)  ; FMin(a,b)
  %5471 = select i1 %5419, float %5470, float %5469
  %5472 = fmul fast float %5464, %5264
  %5473 = fmul fast float %5472, %5471
  %5474 = fmul fast float %5465, %5264
  %5475 = fmul fast float %5474, %5471
  %5476 = fmul fast float %5466, %5264
  %5477 = fmul fast float %5476, %5471
  %5478 = fadd fast float %5473, %5160
  %5479 = fadd fast float %5475, %5161
  %5480 = fadd fast float %5477, %5162
  %5481 = fsub fast float %5163, %5264
  br label %5266

; <label>:5482                                    ; preds = %5266
  br label %5483

; <label>:5483                                    ; preds = %5482, %5129
  %5484 = phi float [ %5130, %5129 ], [ %5267, %5482 ]
  %5485 = phi float [ %5131, %5129 ], [ %5268, %5482 ]
  %5486 = phi float [ %5132, %5129 ], [ %5269, %5482 ]
  %5487 = phi float [ %5133, %5129 ], [ %5270, %5482 ]
  %5488 = add i32 %5134, 1
  %5489 = icmp ugt i32 %5488, %5126
  br i1 %5489, label %5490, label %5129, !llvm.loop !98

; <label>:5490                                    ; preds = %5483
  br label %5491

; <label>:5491                                    ; preds = %5490, %5111
  %5492 = phi float [ 0.000000e+00, %5111 ], [ %5484, %5490 ]
  %5493 = phi float [ 0.000000e+00, %5111 ], [ %5485, %5490 ]
  %5494 = phi float [ 0.000000e+00, %5111 ], [ %5486, %5490 ]
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5493, float %5494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = select i1 %228, float 0.000000e+00, float %5492
  %5497 = select i1 %228, float %5495, float %5493
  %5498 = select i1 %228, float 0.000000e+00, float %5494
  %5499 = fcmp fast olt float %5037, 0.000000e+00
  %5500 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5501 = fmul fast float %5500, %4977
  %5502 = fmul fast float %5500, %4978
  %5503 = fmul fast float %5500, %4979
  %5504 = select i1 %5499, float %4977, float %5501
  %5505 = select i1 %5499, float %4978, float %5502
  %5506 = select i1 %5499, float %4979, float %5503
  %5507 = fsub fast float 1.000000e+00, %5500
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = fmul fast float %5508, %5496
  %5510 = fmul fast float %5508, %5497
  %5511 = fmul fast float %5508, %5498
  %5512 = fadd fast float %5504, %5509
  %5513 = fadd fast float %5505, %5510
  %5514 = fadd fast float %5506, %5511
  br label %5515

; <label>:5515                                    ; preds = %5491, %5020
  %5516 = phi float [ %4977, %5020 ], [ %5512, %5491 ]
  %5517 = phi float [ %4978, %5020 ], [ %5513, %5491 ]
  %5518 = phi float [ %4979, %5020 ], [ %5514, %5491 ]
  %5519 = fmul fast float %5026, %4973
  %5520 = fmul fast float %5026, %4974
  %5521 = fmul fast float %5026, %4975
  %5522 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4846, float %4847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fcmp fast ogt float %5522, 0x3E7FF19E20000000
  %5524 = fdiv fast float 1.000000e+00, %5522
  %5525 = select i1 %5523, float %5524, float 0.000000e+00
  %5526 = fmul fast float %5525, %4845
  %5527 = fmul fast float %5525, %4846
  %5528 = fmul fast float %5525, %4847
  %5529 = fadd fast float %5526, -1.000000e+00
  %5530 = fadd fast float %5527, -1.000000e+00
  %5531 = fadd fast float %5528, -1.000000e+00
  %5532 = fmul fast float %5529, 5.000000e-01
  %5533 = fmul fast float %5530, 5.000000e-01
  %5534 = fmul fast float %5531, 5.000000e-01
  %5535 = fadd fast float %5532, 1.000000e+00
  %5536 = fadd fast float %5533, 1.000000e+00
  %5537 = fadd fast float %5534, 1.000000e+00
  %5538 = fmul fast float %5516, %5021
  %5539 = fmul fast float %5517, %5022
  %5540 = fmul fast float %5518, %5023
  %5541 = fsub fast float 1.000000e+00, %4856
  %5542 = bitcast float %5541 to i32
  %5543 = sitofp i32 %5542 to float
  %5544 = fmul fast float %5543, 5.000000e+00
  %5545 = fadd fast float %5544, 0xC1EFBF8940000000
  %5546 = fptosi float %5545 to i32
  %5547 = bitcast i32 %5546 to float
  %5548 = fmul fast float %5547, %4218
  %5549 = fmul fast float %4973, %5548
  %5550 = fmul fast float %5549, %5026
  %5551 = fmul fast float %5550, %5535
  %5552 = fmul fast float %4974, %5548
  %5553 = fmul fast float %5552, %5026
  %5554 = fmul fast float %5553, %5536
  %5555 = fmul fast float %4975, %5548
  %5556 = fmul fast float %5555, %5026
  %5557 = fmul fast float %5556, %5537
  %5558 = fmul fast float %5519, %4239
  %5559 = fmul fast float %5520, %4239
  %5560 = fmul fast float %5521, %4239
  %5561 = fadd fast float %5538, %4220
  %5562 = fadd fast float %5561, %5551
  %5563 = fmul fast float %5562, %4239
  %5564 = fadd fast float %5539, %4221
  %5565 = fadd fast float %5564, %5554
  %5566 = fmul fast float %5565, %4239
  %5567 = fadd fast float %5540, %4222
  %5568 = fadd fast float %5567, %5557
  %5569 = fmul fast float %5568, %4239
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 3
  %5572 = fcmp fast oeq float %5571, 0.000000e+00
  br i1 %5572, label %7114, label %5573

; <label>:5573                                    ; preds = %5515
  %5574 = extractvalue %dx.types.CBufRet.f32 %5570, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5570, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5570, 2
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = select i1 %228, float %5582, float %5578
  %5586 = select i1 %228, float %5584, float %5579
  %5587 = select i1 %228, float %5583, float %5580
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5590 = fmul fast float %5589, %110
  %5591 = fmul fast float %5589, %111
  %5592 = fmul fast float %5589, %112
  %5593 = fadd fast float %5590, %166
  %5594 = fadd fast float %5591, %167
  %5595 = fadd fast float %5592, %168
  %5596 = fcmp fast olt float %5571, 0.000000e+00
  br i1 %5596, label %6692, label %5597

; <label>:5597                                    ; preds = %5573
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5607 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5612 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5613 = fmul fast float %5599, %5593
  %5614 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5600, float %5613)  ; FMad(a,b,c)
  %5615 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5601, float %5614)  ; FMad(a,b,c)
  %5616 = fadd fast float %5615, %5602
  %5617 = fmul fast float %5604, %5593
  %5618 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5605, float %5617)  ; FMad(a,b,c)
  %5619 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5606, float %5618)  ; FMad(a,b,c)
  %5620 = fadd fast float %5619, %5607
  %5621 = fmul fast float %5609, %5593
  %5622 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5610, float %5621)  ; FMad(a,b,c)
  %5623 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5611, float %5622)  ; FMad(a,b,c)
  %5624 = fadd fast float %5623, %5612
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5629 = fmul fast float %5628, %5616
  %5630 = fmul fast float %5628, %5620
  %5631 = fadd fast float %5629, %5626
  %5632 = fadd fast float %5630, %5627
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 3
  %5637 = fmul fast float %5636, %5616
  %5638 = fmul fast float %5636, %5620
  %5639 = fadd fast float %5637, %5634
  %5640 = fadd fast float %5638, %5635
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5643 = fsub fast float %5642, %5624
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = fmul fast float %5643, %5644
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5651 = fadd fast float %5650, %5648
  %5652 = fcmp fast ogt float %5651, 0.000000e+00
  br i1 %5652, label %5653, label %5677

; <label>:5653                                    ; preds = %5597
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5657 = fsub fast float %5639, %5655
  %5658 = fsub fast float %5640, %5656
  %5659 = fcmp fast olt float %5657, 0.000000e+00
  %5660 = fcmp fast olt float %5658, 0.000000e+00
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5672 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5673 = call float @dx.op.binary.f32(i32 35, float %5670, float %5671)  ; FMax(a,b)
  %5674 = fsub fast float %5672, %5673
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = fmul fast float %5675, %5647
  br label %5677

; <label>:5677                                    ; preds = %5653, %5597
  %5678 = phi float [ %5676, %5653 ], [ 0.000000e+00, %5597 ]
  %5679 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5680 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5681 = fadd fast float %5680, %5679
  %5682 = fcmp fast ogt float %5681, 0.000000e+00
  %5683 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  br i1 %5682, label %5684, label %5707

; <label>:5684                                    ; preds = %5677
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = fsub fast float %5631, %5686
  %5689 = fsub fast float %5632, %5687
  %5690 = fcmp fast olt float %5688, 0.000000e+00
  %5691 = fcmp fast olt float %5689, 0.000000e+00
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.CBufRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.CBufRet.f32 %5692, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5692, 3
  %5697 = select i1 %5690, float %5693, float %5695
  %5698 = select i1 %5691, float %5694, float %5696
  %5699 = fmul fast float %5697, %5688
  %5700 = fmul fast float %5698, %5689
  %5701 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5702 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5701, float %5702)  ; FMax(a,b)
  %5704 = fsub fast float %5683, %5703
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, %5647
  br label %5707

; <label>:5707                                    ; preds = %5684, %5677
  %5708 = phi float [ %5706, %5684 ], [ 0.000000e+00, %5677 ]
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5715 = fsub fast float %5616, %5713
  %5716 = fsub fast float %5620, %5714
  %5717 = fcmp fast olt float %5715, 0.000000e+00
  %5718 = fcmp fast olt float %5716, 0.000000e+00
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5724 = select i1 %5717, float %5720, float %5722
  %5725 = select i1 %5718, float %5721, float %5723
  %5726 = fmul fast float %5724, %5715
  %5727 = fmul fast float %5725, %5716
  %5728 = call float @dx.op.unary.f32(i32 6, float %5726)  ; FAbs(value)
  %5729 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5730 = call float @dx.op.binary.f32(i32 35, float %5728, float %5729)  ; FMax(a,b)
  %5731 = fsub fast float %5683, %5730
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5733 = call float @dx.op.binary.f32(i32 36, float %5732, float %5711)  ; FMin(a,b)
  %5734 = fmul fast float %5733, %5647
  %5735 = fsub fast float %5708, %5734
  %5736 = fsub fast float %5678, %5708
  %5737 = fsub fast float %5736, %5734
  %5738 = call float @dx.op.binary.f32(i32 35, float %5708, float %5678)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5734, float %5738)  ; FMax(a,b)
  %5740 = fcmp fast olt float %5739, 1.000000e+00
  br i1 %5740, label %5741, label %6139, !dx.controlflow.hints !100

; <label>:5741                                    ; preds = %5707
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = fcmp fast une float %5743, 0.000000e+00
  br i1 %5744, label %5745, label %6139, !dx.controlflow.hints !101

; <label>:5745                                    ; preds = %5741
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5755 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5761 = fmul fast float %5747, %5593
  %5762 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5748, float %5761)  ; FMad(a,b,c)
  %5763 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5749, float %5762)  ; FMad(a,b,c)
  %5764 = fadd fast float %5763, %5750
  %5765 = fmul fast float %5752, %5593
  %5766 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5753, float %5765)  ; FMad(a,b,c)
  %5767 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5754, float %5766)  ; FMad(a,b,c)
  %5768 = fadd fast float %5767, %5755
  %5769 = fmul fast float %5757, %5593
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %5758, float %5769)  ; FMad(a,b,c)
  %5771 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5759, float %5770)  ; FMad(a,b,c)
  %5772 = fadd fast float %5771, %5760
  %5773 = fcmp fast oge float %5764, 1.000000e+00
  %5774 = fcmp fast oge float %5768, 1.000000e+00
  %5775 = or i1 %5773, %5774
  %5776 = fcmp fast olt float %5764, 0.000000e+00
  %5777 = fcmp fast olt float %5768, 0.000000e+00
  %5778 = or i1 %5776, %5777
  %5779 = or i1 %5775, %5778
  br i1 %5779, label %6139, label %5780, !dx.controlflow.hints !102

; <label>:5780                                    ; preds = %5745
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.i32 %5785, 2
  %5787 = uitofp i32 %5786 to float
  %5788 = extractvalue %dx.types.CBufRet.i32 %5785, 3
  %5789 = uitofp i32 %5788 to float
  %5790 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5791 = fmul fast float %5790, 2.000000e+00
  %5792 = fsub fast float %5764, %5782
  %5793 = fsub fast float %5768, %5783
  %5794 = fmul fast float %5791, %5792
  %5795 = fmul fast float %5791, %5793
  %5796 = fdiv fast float 1.000000e+00, %5576
  %5797 = fmul fast float %5795, %5796
  %5798 = call float @dx.op.unary.f32(i32 6, float %5797)  ; FAbs(value)
  %5799 = fmul fast float %5784, %5595
  %5800 = fmul fast float %5799, %5791
  %5801 = call float @dx.op.unary.f32(i32 6, float %5800)  ; FAbs(value)
  %5802 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5801, float %5798)  ; FMax(a,b)
  %5804 = call float @dx.op.binary.f32(i32 35, float %5802, float %5803)  ; FMax(a,b)
  %5805 = fmul fast float %5804, 2.000000e+00
  %5806 = call float @dx.op.unary.f32(i32 23, float %5805)  ; Log(value)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5806, float %5787)  ; FMax(a,b)
  %5808 = call float @dx.op.unary.f32(i32 22, float %5807)  ; Frc(value)
  %5809 = fadd fast float %5808, 0xBFEA666660000000
  %5810 = fmul fast float %5809, 8.000000e+00
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = call float @dx.op.unary.f32(i32 27, float %5807)  ; Round_ni(value)
  %5813 = fadd fast float %5812, %5811
  %5814 = call float @dx.op.binary.f32(i32 36, float %5813, float %5789)  ; FMin(a,b)
  %5815 = call float @dx.op.unary.f32(i32 27, float %5814)  ; Round_ni(value)
  %5816 = fsub fast float -0.000000e+00, %5815
  %5817 = call float @dx.op.unary.f32(i32 21, float %5816)  ; Exp(value)
  %5818 = fmul fast float %5817, %5791
  %5819 = fmul fast float %5818, %5764
  %5820 = fmul fast float %5818, %5768
  %5821 = fmul fast float %5819, 2.500000e-01
  %5822 = fmul fast float %5820, 2.500000e-01
  %5823 = fadd fast float %5821, 5.000000e-01
  %5824 = fadd fast float %5822, 5.000000e-01
  %5825 = fsub fast float %5789, %5787
  %5826 = fptoui float %5825 to i32
  %5827 = add i32 %5826, 320
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5827)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = fcmp fast une float %5814, %5789
  %5832 = fsub fast float %5764, %5829
  %5833 = fsub fast float %5768, %5830
  %5834 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5835 = call float @dx.op.unary.f32(i32 6, float %5833)  ; FAbs(value)
  %5836 = fmul fast float %5834, %5818
  %5837 = fmul fast float %5835, %5818
  %5838 = fcmp fast olt float %5836, 1.000000e+00
  %5839 = fcmp fast olt float %5837, 1.000000e+00
  %5840 = and i1 %5838, %5839
  %5841 = or i1 %5831, %5840
  br i1 %5841, label %5842, label %6139, !dx.controlflow.hints !103

; <label>:5842                                    ; preds = %5780
  %5843 = fmul fast float %5820, 5.000000e-01
  %5844 = fmul fast float %5819, 5.000000e-01
  %5845 = fadd fast float %5843, 5.000000e-01
  %5846 = fadd fast float %5844, 5.000000e-01
  %5847 = sitofp i32 %5786 to float
  %5848 = fsub fast float %5814, %5847
  %5849 = call float @dx.op.unary.f32(i32 27, float %5848)  ; Round_ni(value)
  %5850 = call float @dx.op.unary.f32(i32 22, float %5814)  ; Frc(value)
  %5851 = call float @dx.op.unary.f32(i32 22, float %5846)  ; Frc(value)
  %5852 = call float @dx.op.unary.f32(i32 22, float %5845)  ; Frc(value)
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5851, float %5852, float %5849, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5857 = extractvalue %dx.types.ResRet.f32 %5853, 3
  %5858 = fcmp fast ogt float %5850, 0.000000e+00
  br i1 %5858, label %5859, label %5880, !dx.controlflow.hints !104

; <label>:5859                                    ; preds = %5842
  %5860 = fadd fast float %5849, 1.000000e+00
  %5861 = call float @dx.op.unary.f32(i32 22, float %5823)  ; Frc(value)
  %5862 = call float @dx.op.unary.f32(i32 22, float %5824)  ; Frc(value)
  %5863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5861, float %5862, float %5860, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.ResRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.ResRet.f32 %5863, 2
  %5867 = extractvalue %dx.types.ResRet.f32 %5863, 3
  %5868 = fsub fast float %5864, %5854
  %5869 = fsub fast float %5865, %5855
  %5870 = fsub fast float %5866, %5856
  %5871 = fsub fast float %5867, %5857
  %5872 = fmul fast float %5868, %5850
  %5873 = fmul fast float %5869, %5850
  %5874 = fmul fast float %5870, %5850
  %5875 = fmul fast float %5871, %5850
  %5876 = fadd fast float %5872, %5854
  %5877 = fadd fast float %5873, %5855
  %5878 = fadd fast float %5874, %5856
  %5879 = fadd fast float %5875, %5857
  br label %5880

; <label>:5880                                    ; preds = %5859, %5842
  %5881 = phi float [ %5876, %5859 ], [ %5854, %5842 ]
  %5882 = phi float [ %5877, %5859 ], [ %5855, %5842 ]
  %5883 = phi float [ %5878, %5859 ], [ %5856, %5842 ]
  %5884 = phi float [ %5879, %5859 ], [ %5857, %5842 ]
  %5885 = fadd fast float %5881, -5.000000e-01
  %5886 = fadd fast float %5883, -5.000000e-01
  %5887 = fmul fast float %5885, 0xBFD5555560000000
  %5888 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5886, float %5887)  ; FMad(a,b,c)
  %5889 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5882, float 0.000000e+00)  ; FMad(a,b,c)
  %5890 = fadd fast float %5889, %5884
  %5891 = fmul fast float %5885, -7.500000e-01
  %5892 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5886, float %5891)  ; FMad(a,b,c)
  %5893 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5882, float 0.000000e+00)  ; FMad(a,b,c)
  %5894 = fadd fast float %5893, %5884
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.CBufRet.f32 %5897, 2
  %5901 = extractvalue %dx.types.CBufRet.f32 %5897, 3
  %5902 = fsub fast float %5898, %5888
  %5903 = fsub fast float %5899, %5890
  %5904 = fsub fast float %5900, %5892
  %5905 = fsub fast float %5901, %5894
  %5906 = fmul fast float %5902, %5896
  %5907 = fmul fast float %5903, %5896
  %5908 = fmul fast float %5904, %5896
  %5909 = fmul fast float %5905, %5896
  %5910 = fadd fast float %5906, %5888
  %5911 = fadd fast float %5907, %5890
  %5912 = fadd fast float %5908, %5892
  %5913 = fadd fast float %5909, %5894
  %5914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.i32 %5914, 0
  %5916 = and i32 %5915, 536870911
  %5917 = uitofp i32 %5916 to float
  %5918 = fmul fast float %5917, %5764
  %5919 = fmul fast float %5917, %5768
  %5920 = fptoui float %5918 to i32
  %5921 = fptoui float %5919 to i32
  %5922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.i32 %5922, 0
  %5924 = and i32 %5923, 31
  %5925 = lshr i32 %5920, %5924
  %5926 = lshr i32 %5921, %5924
  %5927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5928 = extractvalue %dx.types.ResRet.i32 %5927, 0
  %5929 = and i32 %5928, 31
  %5930 = shl i32 1, %5929
  %5931 = call i32 @dx.op.binary.i32(i32 40, i32 %5930, i32 4)  ; UMin(a,b)
  %5932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5933 = extractvalue %dx.types.ResRet.i32 %5932, 0
  %5934 = extractvalue %dx.types.ResRet.i32 %5932, 1
  %5935 = icmp eq i32 %5931, 0
  br i1 %5935, label %5977, label %5936

; <label>:5936                                    ; preds = %5880
  br label %5937

; <label>:5937                                    ; preds = %5965, %5936
  %5938 = phi i32 [ %5968, %5965 ], [ 0, %5936 ]
  %5939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.i32 %5939, 0
  %5941 = lshr i32 %5940, 16
  %5942 = and i32 %5941, 31
  %5943 = shl i32 %5926, %5942
  %5944 = add i32 %5943, %5925
  %5945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5946 = extractvalue %dx.types.ResRet.i32 %5945, 0
  %5947 = and i32 %5946, 31
  %5948 = shl i32 %5944, %5947
  %5949 = add i32 %5948, %5938
  %5950 = shl i32 %5949, 2
  %5951 = add i32 %5950, 32
  %5952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.i32 %5952, 0
  %5954 = icmp slt i32 %5953, 0
  %5955 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %5938
  %5956 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5938
  %5957 = bitcast float* %5955 to i32*
  %5958 = bitcast float* %5956 to i32*
  br i1 %5954, label %5959, label %5965

; <label>:5959                                    ; preds = %5937
  %5960 = and i32 %5953, 1073741823
  %5961 = add nuw nsw i32 %5960, 20
  %5962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5961, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.i32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.i32 %5962, 1
  br label %5965

; <label>:5965                                    ; preds = %5959, %5937
  %5966 = phi i32 [ %5963, %5959 ], [ %5933, %5937 ]
  %5967 = phi i32 [ %5964, %5959 ], [ %5934, %5937 ]
  store i32 %5966, i32* %5957, align 4
  store i32 %5967, i32* %5958, align 4
  %5968 = add nuw i32 %5938, 1
  %5969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.i32 %5969, 2
  %5971 = icmp eq i32 %5970, 0
  %5972 = icmp ugt i32 %5953, -1073741825
  %5973 = and i1 %5972, %5971
  %5974 = icmp ult i32 %5968, %5931
  %5975 = and i1 %5973, %5974
  br i1 %5975, label %5937, label %5976

; <label>:5976                                    ; preds = %5965
  br label %5977

; <label>:5977                                    ; preds = %5976, %5880
  %5978 = phi i32 [ 0, %5880 ], [ %5968, %5976 ]
  %5979 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5980 = fptoui float %5979 to i32
  %5981 = icmp eq i32 %5980, 0
  br i1 %5981, label %6033, label %5982

; <label>:5982                                    ; preds = %5977
  br label %5983

; <label>:5983                                    ; preds = %6028, %5982
  %5984 = phi i32 [ %6029, %6028 ], [ %5978, %5982 ]
  %5985 = phi i32 [ %6030, %6028 ], [ 0, %5982 ]
  %5986 = lshr i32 %5985, 2
  %5987 = and i32 %5985, 3
  %5988 = add nuw nsw i32 %5986, 83
  %5989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %5988)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.i32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.i32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.i32 %5989, 2
  %5993 = extractvalue %dx.types.CBufRet.i32 %5989, 3
  %5994 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %5990, i32* %5994, align 4
  %5995 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %5991, i32* %5995, align 4
  %5996 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %5992, i32* %5996, align 4
  %5997 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %5993, i32* %5997, align 4
  %5998 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %5987
  %5999 = load i32, i32* %5998, align 4, !tbaa !105, !noalias !109
  %6000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6001 = extractvalue %dx.types.ResRet.i32 %6000, 0
  %6002 = lshr i32 %6001, 16
  %6003 = and i32 %6002, 31
  %6004 = shl i32 %5926, %6003
  %6005 = add i32 %6004, %5925
  %6006 = shl i32 %6005, 2
  %6007 = add i32 %6006, %5999
  %6008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.i32 %6008, 0
  %6010 = icmp eq i32 %6009, 0
  br i1 %6010, label %6028, label %6011

; <label>:6011                                    ; preds = %5983
  %6012 = icmp slt i32 %6009, 0
  %6013 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %5984
  %6014 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5984
  %6015 = bitcast float* %6013 to i32*
  %6016 = bitcast float* %6014 to i32*
  br i1 %6012, label %6017, label %6024

; <label>:6017                                    ; preds = %6011
  %6018 = and i32 %6009, 1073741823
  %6019 = add i32 %5999, 20
  %6020 = add i32 %6019, %6018
  %6021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.i32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.i32 %6021, 1
  br label %6024

; <label>:6024                                    ; preds = %6017, %6011
  %6025 = phi i32 [ %6022, %6017 ], [ %5933, %6011 ]
  %6026 = phi i32 [ %6023, %6017 ], [ %5934, %6011 ]
  store i32 %6025, i32* %6015, align 4
  store i32 %6026, i32* %6016, align 4
  %6027 = add i32 %5984, 1
  br label %6028

; <label>:6028                                    ; preds = %6024, %5983
  %6029 = phi i32 [ %5984, %5983 ], [ %6027, %6024 ]
  %6030 = add nuw i32 %5985, 1
  %6031 = icmp eq i32 %6030, %5980
  br i1 %6031, label %6032, label %5983

; <label>:6032                                    ; preds = %6028
  br label %6033

; <label>:6033                                    ; preds = %6032, %5977
  %6034 = phi i32 [ %5978, %5977 ], [ %6029, %6032 ]
  %6035 = icmp eq i32 %6034, 1
  %6036 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6037 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6035, label %6038, label %6041

; <label>:6038                                    ; preds = %6033
  %6039 = load float, float* %6036, align 4
  %6040 = load float, float* %6037, align 4
  br label %6068

; <label>:6041                                    ; preds = %6033
  %6042 = load float, float* %6036, align 4
  %6043 = load float, float* %6037, align 4
  %6044 = fdiv fast float 1.000000e+00, %6043
  %6045 = fsub fast float %6042, %6044
  %6046 = icmp ugt i32 %6034, 1
  br i1 %6046, label %6047, label %6063

; <label>:6047                                    ; preds = %6041
  br label %6048

; <label>:6048                                    ; preds = %6048, %6047
  %6049 = phi float [ %6058, %6048 ], [ %6045, %6047 ]
  %6050 = phi float [ %6059, %6048 ], [ %6042, %6047 ]
  %6051 = phi i32 [ %6060, %6048 ], [ 1, %6047 ]
  %6052 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6051
  %6053 = load float, float* %6052, align 4
  %6054 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6051
  %6055 = load float, float* %6054, align 4
  %6056 = fdiv fast float 1.000000e+00, %6055
  %6057 = fsub fast float %6053, %6056
  %6058 = call float @dx.op.binary.f32(i32 36, float %6049, float %6057)  ; FMin(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %6050, float %6053)  ; FMax(a,b)
  %6060 = add nuw i32 %6051, 1
  %6061 = icmp eq i32 %6060, %6034
  br i1 %6061, label %6062, label %6048

; <label>:6062                                    ; preds = %6048
  br label %6063

; <label>:6063                                    ; preds = %6062, %6041
  %6064 = phi float [ %6045, %6041 ], [ %6058, %6062 ]
  %6065 = phi float [ %6042, %6041 ], [ %6059, %6062 ]
  %6066 = fsub fast float %6065, %6064
  %6067 = fdiv fast float 1.000000e+00, %6066
  br label %6068

; <label>:6068                                    ; preds = %6063, %6038
  %6069 = phi float [ %6039, %6038 ], [ %6065, %6063 ]
  %6070 = phi float [ %6040, %6038 ], [ %6067, %6063 ]
  %6071 = fadd fast float %5772, %6069
  %6072 = fmul fast float %6071, %6070
  %6073 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6074 = fmul fast float %6073, 2.000000e+00
  %6075 = fsub fast float 1.000000e+00, %6074
  %6076 = fmul fast float %5910, %5910
  %6077 = fsub fast float %5911, %6076
  %6078 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6077)  ; FMax(a,b)
  %6079 = fdiv fast float 1.000000e+00, %6078
  %6080 = fmul fast float %5911, %5910
  %6081 = fsub fast float %5912, %6080
  %6082 = fsub fast float %6075, %5910
  %6083 = fmul fast float %6075, %6075
  %6084 = fsub fast float %6083, %5911
  %6085 = fmul fast float %6079, %6081
  %6086 = fmul fast float %6085, %6082
  %6087 = fsub fast float %6084, %6086
  %6088 = fmul fast float %5911, %5911
  %6089 = fsub fast float %5913, %6088
  %6090 = fmul fast float %6081, %6081
  %6091 = fmul fast float %6090, %6079
  %6092 = fsub fast float %6089, %6091
  %6093 = fdiv fast float %6087, %6092
  %6094 = fmul fast float %6093, %6081
  %6095 = fsub fast float %6082, %6094
  %6096 = fmul fast float %6095, %6079
  %6097 = fmul fast float %6096, %5910
  %6098 = fsub fast float 1.000000e+00, %6097
  %6099 = fmul fast float %6093, %5911
  %6100 = fsub fast float %6098, %6099
  %6101 = fmul fast float %6096, %6096
  %6102 = fmul fast float %6093, 4.000000e+00
  %6103 = fmul fast float %6102, %6100
  %6104 = fsub fast float %6101, %6103
  %6105 = call float @dx.op.unary.f32(i32 24, float %6104)  ; Sqrt(value)
  %6106 = fcmp fast oge float %6096, 0.000000e+00
  %6107 = fsub fast float -0.000000e+00, %6105
  %6108 = select i1 %6106, float %6107, float %6105
  %6109 = fsub fast float %6108, %6096
  %6110 = fdiv fast float %6109, %6093
  %6111 = fdiv fast float %6100, %6109
  %6112 = fmul fast float %6110, 5.000000e-01
  %6113 = fmul fast float %6111, 2.000000e+00
  %6114 = select i1 %6106, float %6112, float %6113
  %6115 = select i1 %6106, float %6113, float %6112
  %6116 = call float @dx.op.binary.f32(i32 35, float %6114, float %6115)  ; FMax(a,b)
  %6117 = call float @dx.op.binary.f32(i32 36, float %6114, float %6115)  ; FMin(a,b)
  %6118 = fcmp fast ogt float %6075, %6116
  %6119 = fsub fast float %6075, %6117
  %6120 = fsub fast float %6075, %6116
  %6121 = fsub fast float %6116, %6117
  %6122 = select i1 %6118, float %6120, float %6121
  %6123 = fmul float %6119, %6122
  %6124 = select i1 %6118, float %6117, float %6075
  %6125 = fcmp fast ogt float %6075, %6117
  %6126 = fmul fast float %6124, %6116
  %6127 = fadd fast float %6124, %6116
  %6128 = fmul fast float %6127, %5910
  %6129 = fadd fast float %6126, %5911
  %6130 = fsub fast float %6129, %6128
  %6131 = fdiv fast float %6130, %6123
  %6132 = select i1 %6125, float %6131, float 0.000000e+00
  %6133 = fsub fast float 1.000000e+00, %6132
  %6134 = select i1 %6118, float %6133, float %6132
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = extractvalue %dx.types.CBufRet.f32 %5895, 3
  %6137 = fmul fast float %6136, %6135
  %6138 = fsub fast float 1.000000e+00, %6137
  br label %6139

; <label>:6139                                    ; preds = %6068, %5780, %5745, %5741, %5707
  %6140 = phi float [ 1.000000e+00, %5707 ], [ %6138, %6068 ], [ 1.000000e+00, %5745 ], [ 1.000000e+00, %5780 ], [ 1.000000e+00, %5741 ]
  %6141 = fcmp fast ogt float %5737, 0.000000e+00
  br i1 %6141, label %6142, label %6304, !dx.controlflow.hints !118

; <label>:6142                                    ; preds = %6139
  %6143 = fadd fast float %5650, %5624
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 3
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6149 = call float @dx.op.binary.f32(i32 35, float %6143, float 0.000000e+00)  ; FMax(a,b)
  %6150 = fadd fast float %6149, 0x3F10000000000000
  %6151 = fcmp fast oeq float %6148, 0.000000e+00
  br i1 %6151, label %6152, label %6219

; <label>:6152                                    ; preds = %6142
  %6153 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6155 = fmul fast float %6154, %5639
  %6156 = fmul fast float %6153, %5640
  %6157 = fadd fast float %6155, 5.000000e-01
  %6158 = call float @dx.op.unary.f32(i32 27, float %6157)  ; Round_ni(value)
  %6159 = fadd fast float %6156, 5.000000e-01
  %6160 = call float @dx.op.unary.f32(i32 27, float %6159)  ; Round_ni(value)
  %6161 = fsub fast float %6157, %6158
  %6162 = fsub fast float %6159, %6160
  %6163 = fadd fast float %6158, -5.000000e-01
  %6164 = fadd fast float %6160, -5.000000e-01
  %6165 = fmul fast float %6161, 2.000000e+00
  %6166 = fsub fast float 3.000000e+00, %6165
  %6167 = fadd fast float %6165, 1.000000e+00
  %6168 = fsub fast float 2.000000e+00, %6161
  %6169 = bitcast float %6166 to i32
  %6170 = sub nsw i32 2129859010, %6169
  %6171 = bitcast i32 %6170 to float
  %6172 = fmul fast float %6171, %6168
  %6173 = fadd fast float %6172, -1.000000e+00
  %6174 = bitcast float %6167 to i32
  %6175 = sub nsw i32 2129859010, %6174
  %6176 = bitcast i32 %6175 to float
  %6177 = fmul fast float %6176, %6161
  %6178 = fadd fast float %6177, 1.000000e+00
  %6179 = fmul fast float %6162, 2.000000e+00
  %6180 = fsub fast float 3.000000e+00, %6179
  %6181 = fadd fast float %6179, 1.000000e+00
  %6182 = fsub fast float 2.000000e+00, %6162
  %6183 = bitcast float %6180 to i32
  %6184 = sub nsw i32 2129859010, %6183
  %6185 = bitcast i32 %6184 to float
  %6186 = fmul fast float %6185, %6182
  %6187 = fadd fast float %6186, -1.000000e+00
  %6188 = bitcast float %6181 to i32
  %6189 = sub nsw i32 2129859010, %6188
  %6190 = bitcast i32 %6189 to float
  %6191 = fmul fast float %6190, %6162
  %6192 = fadd fast float %6191, 1.000000e+00
  %6193 = fadd fast float %6173, %6163
  %6194 = fmul fast float %6193, %6145
  %6195 = fadd fast float %6187, %6164
  %6196 = fmul fast float %6195, %6146
  %6197 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6194, float %6196, float undef, float undef, i32 0, i32 0, i32 undef, float %6150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6198 = extractvalue %dx.types.ResRet.f32 %6197, 0
  %6199 = fmul fast float %6198, %6166
  %6200 = fadd fast float %6178, %6163
  %6201 = fmul fast float %6200, %6145
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6201, float %6196, float undef, float undef, i32 0, i32 0, i32 undef, float %6150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = fmul fast float %6203, %6167
  %6205 = fadd fast float %6192, %6164
  %6206 = fmul fast float %6205, %6146
  %6207 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6194, float %6206, float undef, float undef, i32 0, i32 0, i32 undef, float %6150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = fmul fast float %6208, %6166
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6201, float %6206, float undef, float undef, i32 0, i32 0, i32 undef, float %6150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = fmul fast float %6211, %6167
  %6213 = fadd fast float %6212, %6209
  %6214 = fmul fast float %6213, %6181
  %6215 = fadd fast float %6204, %6199
  %6216 = fmul fast float %6215, %6180
  %6217 = fadd fast float %6216, %6214
  %6218 = fmul fast float %6217, 6.250000e-02
  br label %6304

; <label>:6219                                    ; preds = %6142
  %6220 = fmul fast float %239, 0x401921FB60000000
  %6221 = call float @dx.op.unary.f32(i32 13, float %6220)  ; Sin(value)
  %6222 = call float @dx.op.unary.f32(i32 12, float %6220)  ; Cos(value)
  %6223 = fsub fast float -0.000000e+00, %6221
  br label %6224

; <label>:6224                                    ; preds = %6273, %6219
  %6225 = phi float [ 0.000000e+00, %6219 ], [ %6268, %6273 ]
  %6226 = phi float [ 0.000000e+00, %6219 ], [ %6270, %6273 ]
  %6227 = phi i32 [ 0, %6219 ], [ %6274, %6273 ]
  %6228 = mul i32 %6227, 2
  %6229 = add i32 0, %6228
  %6230 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6229
  %6231 = load float, float* %6230, align 4
  %6232 = mul i32 %6227, 2
  %6233 = add i32 1, %6232
  %6234 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6233
  %6235 = load float, float* %6234, align 4
  %6236 = fmul fast float %6231, %6222
  %6237 = call float @dx.op.tertiary.f32(i32 46, float %6235, float %6223, float %6236)  ; FMad(a,b,c)
  %6238 = fmul fast float %6231, %6221
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %6235, float %6222, float %6238)  ; FMad(a,b,c)
  %6240 = fmul fast float %6237, %6148
  %6241 = fmul fast float %6239, %6148
  %6242 = fadd fast float %6240, %5639
  %6243 = fadd fast float %6241, %5640
  %6244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6242, float %6243, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.ResRet.f32 %6244, 3
  %6249 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6245, float* %6249, align 4
  %6250 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6246, float* %6250, align 4
  %6251 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6247, float* %6251, align 4
  %6252 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6248, float* %6252, align 4
  %6253 = fsub fast float %6245, %6150
  %6254 = fcmp fast olt float %6253, 0.000000e+00
  %6255 = select i1 %6254, float 0.000000e+00, float 1.000000e+00
  %6256 = fadd fast float %6255, %6225
  %6257 = fmul fast float %6255, %6253
  %6258 = fadd fast float %6257, %6226
  br label %6259

; <label>:6259                                    ; preds = %6259, %6224
  %6260 = phi i32 [ 1, %6224 ], [ %6271, %6259 ]
  %6261 = phi float [ %6258, %6224 ], [ %6270, %6259 ]
  %6262 = phi float [ %6256, %6224 ], [ %6268, %6259 ]
  %6263 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6260
  %6264 = load float, float* %6263, align 4, !tbaa !119, !noalias !109
  %6265 = fsub fast float %6264, %6150
  %6266 = fcmp fast olt float %6265, 0.000000e+00
  %6267 = select i1 %6266, float 0.000000e+00, float 1.000000e+00
  %6268 = fadd fast float %6267, %6262
  %6269 = fmul fast float %6267, %6265
  %6270 = fadd fast float %6269, %6261
  %6271 = add nuw nsw i32 %6260, 1
  %6272 = icmp eq i32 %6271, 4
  br i1 %6272, label %6273, label %6259, !llvm.loop !121

; <label>:6273                                    ; preds = %6259
  %6274 = add nuw nsw i32 %6227, 1
  %6275 = icmp eq i32 %6274, 8
  br i1 %6275, label %6276, label %6224, !llvm.loop !122

; <label>:6276                                    ; preds = %6273
  %6277 = fdiv fast float 1.000000e+00, %6268
  %6278 = fmul fast float %6277, %6270
  %6279 = fdiv fast float 1.000000e+00, %6150
  %6280 = fmul fast float %6278, %6279
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = call float @dx.op.binary.f32(i32 35, float %6281, float 0.000000e+00)  ; FMax(a,b)
  %6283 = fmul fast float %6268, 3.125000e-02
  %6284 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6285 = fmul fast float %6284, 2.000000e+00
  %6286 = fadd fast float %6285, -1.000000e+00
  %6287 = fcmp fast ogt float %6286, 0.000000e+00
  %6288 = fcmp fast olt float %6286, 0.000000e+00
  %6289 = zext i1 %6287 to i32
  %6290 = zext i1 %6288 to i32
  %6291 = sub nsw i32 %6289, %6290
  %6292 = sitofp i32 %6291 to float
  %6293 = fmul fast float %6292, %6286
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = fmul fast float %6294, %6294
  %6296 = fmul fast float %6295, %6294
  %6297 = fsub fast float %6294, %6296
  %6298 = fmul fast float %6297, %6282
  %6299 = fsub fast float 1.000000e+00, %6296
  %6300 = fsub fast float %6299, %6298
  %6301 = fmul fast float %6292, 5.000000e-01
  %6302 = fmul fast float %6301, %6300
  %6303 = fsub fast float 5.000000e-01, %6302
  br label %6304

; <label>:6304                                    ; preds = %6276, %6152, %6139
  %6305 = phi float [ 1.000000e+00, %6139 ], [ %6218, %6152 ], [ %6303, %6276 ]
  %6306 = fcmp fast ogt float %5735, 0.000000e+00
  br i1 %6306, label %6307, label %6471, !dx.controlflow.hints !123

; <label>:6307                                    ; preds = %6304
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6310 = fadd fast float %6309, %5624
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6316 = call float @dx.op.binary.f32(i32 35, float %6310, float 0.000000e+00)  ; FMax(a,b)
  %6317 = fadd fast float %6316, 0x3F10000000000000
  %6318 = fcmp fast oeq float %6315, 0.000000e+00
  br i1 %6318, label %6319, label %6386

; <label>:6319                                    ; preds = %6307
  %6320 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6322 = fmul fast float %6321, %5631
  %6323 = fmul fast float %6320, %5632
  %6324 = fadd fast float %6322, 5.000000e-01
  %6325 = call float @dx.op.unary.f32(i32 27, float %6324)  ; Round_ni(value)
  %6326 = fadd fast float %6323, 5.000000e-01
  %6327 = call float @dx.op.unary.f32(i32 27, float %6326)  ; Round_ni(value)
  %6328 = fsub fast float %6324, %6325
  %6329 = fsub fast float %6326, %6327
  %6330 = fadd fast float %6325, -5.000000e-01
  %6331 = fadd fast float %6327, -5.000000e-01
  %6332 = fmul fast float %6328, 2.000000e+00
  %6333 = fsub fast float 3.000000e+00, %6332
  %6334 = fadd fast float %6332, 1.000000e+00
  %6335 = fsub fast float 2.000000e+00, %6328
  %6336 = bitcast float %6333 to i32
  %6337 = sub nsw i32 2129859010, %6336
  %6338 = bitcast i32 %6337 to float
  %6339 = fmul fast float %6338, %6335
  %6340 = fadd fast float %6339, -1.000000e+00
  %6341 = bitcast float %6334 to i32
  %6342 = sub nsw i32 2129859010, %6341
  %6343 = bitcast i32 %6342 to float
  %6344 = fmul fast float %6343, %6328
  %6345 = fadd fast float %6344, 1.000000e+00
  %6346 = fmul fast float %6329, 2.000000e+00
  %6347 = fsub fast float 3.000000e+00, %6346
  %6348 = fadd fast float %6346, 1.000000e+00
  %6349 = fsub fast float 2.000000e+00, %6329
  %6350 = bitcast float %6347 to i32
  %6351 = sub nsw i32 2129859010, %6350
  %6352 = bitcast i32 %6351 to float
  %6353 = fmul fast float %6352, %6349
  %6354 = fadd fast float %6353, -1.000000e+00
  %6355 = bitcast float %6348 to i32
  %6356 = sub nsw i32 2129859010, %6355
  %6357 = bitcast i32 %6356 to float
  %6358 = fmul fast float %6357, %6329
  %6359 = fadd fast float %6358, 1.000000e+00
  %6360 = fadd fast float %6340, %6330
  %6361 = fmul fast float %6360, %6312
  %6362 = fadd fast float %6354, %6331
  %6363 = fmul fast float %6362, %6313
  %6364 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6361, float %6363, float undef, float undef, i32 0, i32 0, i32 undef, float %6317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6365 = extractvalue %dx.types.ResRet.f32 %6364, 0
  %6366 = fmul fast float %6365, %6333
  %6367 = fadd fast float %6345, %6330
  %6368 = fmul fast float %6367, %6312
  %6369 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6368, float %6363, float undef, float undef, i32 0, i32 0, i32 undef, float %6317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6370 = extractvalue %dx.types.ResRet.f32 %6369, 0
  %6371 = fmul fast float %6370, %6334
  %6372 = fadd fast float %6359, %6331
  %6373 = fmul fast float %6372, %6313
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6361, float %6373, float undef, float undef, i32 0, i32 0, i32 undef, float %6317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = fmul fast float %6375, %6333
  %6377 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6368, float %6373, float undef, float undef, i32 0, i32 0, i32 undef, float %6317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6378 = extractvalue %dx.types.ResRet.f32 %6377, 0
  %6379 = fmul fast float %6378, %6334
  %6380 = fadd fast float %6379, %6376
  %6381 = fmul fast float %6380, %6348
  %6382 = fadd fast float %6371, %6366
  %6383 = fmul fast float %6382, %6347
  %6384 = fadd fast float %6383, %6381
  %6385 = fmul fast float %6384, 6.250000e-02
  br label %6471

; <label>:6386                                    ; preds = %6307
  %6387 = fmul fast float %239, 0x401921FB60000000
  %6388 = call float @dx.op.unary.f32(i32 13, float %6387)  ; Sin(value)
  %6389 = call float @dx.op.unary.f32(i32 12, float %6387)  ; Cos(value)
  %6390 = fsub fast float -0.000000e+00, %6388
  br label %6391

; <label>:6391                                    ; preds = %6440, %6386
  %6392 = phi float [ 0.000000e+00, %6386 ], [ %6435, %6440 ]
  %6393 = phi float [ 0.000000e+00, %6386 ], [ %6437, %6440 ]
  %6394 = phi i32 [ 0, %6386 ], [ %6441, %6440 ]
  %6395 = mul i32 %6394, 2
  %6396 = add i32 0, %6395
  %6397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6396
  %6398 = load float, float* %6397, align 4
  %6399 = mul i32 %6394, 2
  %6400 = add i32 1, %6399
  %6401 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6400
  %6402 = load float, float* %6401, align 4
  %6403 = fmul fast float %6398, %6389
  %6404 = call float @dx.op.tertiary.f32(i32 46, float %6402, float %6390, float %6403)  ; FMad(a,b,c)
  %6405 = fmul fast float %6398, %6388
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6402, float %6389, float %6405)  ; FMad(a,b,c)
  %6407 = fmul fast float %6404, %6315
  %6408 = fmul fast float %6406, %6315
  %6409 = fadd fast float %6407, %5631
  %6410 = fadd fast float %6408, %5632
  %6411 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6409, float %6410, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.ResRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6411, 2
  %6415 = extractvalue %dx.types.ResRet.f32 %6411, 3
  %6416 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6412, float* %6416, align 4
  %6417 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6413, float* %6417, align 4
  %6418 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6414, float* %6418, align 4
  %6419 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6415, float* %6419, align 4
  %6420 = fsub fast float %6412, %6317
  %6421 = fcmp fast olt float %6420, 0.000000e+00
  %6422 = select i1 %6421, float 0.000000e+00, float 1.000000e+00
  %6423 = fadd fast float %6422, %6392
  %6424 = fmul fast float %6422, %6420
  %6425 = fadd fast float %6424, %6393
  br label %6426

; <label>:6426                                    ; preds = %6426, %6391
  %6427 = phi i32 [ 1, %6391 ], [ %6438, %6426 ]
  %6428 = phi float [ %6425, %6391 ], [ %6437, %6426 ]
  %6429 = phi float [ %6423, %6391 ], [ %6435, %6426 ]
  %6430 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6427
  %6431 = load float, float* %6430, align 4, !tbaa !119, !noalias !109
  %6432 = fsub fast float %6431, %6317
  %6433 = fcmp fast olt float %6432, 0.000000e+00
  %6434 = select i1 %6433, float 0.000000e+00, float 1.000000e+00
  %6435 = fadd fast float %6434, %6429
  %6436 = fmul fast float %6434, %6432
  %6437 = fadd fast float %6436, %6428
  %6438 = add nuw nsw i32 %6427, 1
  %6439 = icmp eq i32 %6438, 4
  br i1 %6439, label %6440, label %6426, !llvm.loop !121

; <label>:6440                                    ; preds = %6426
  %6441 = add nuw nsw i32 %6394, 1
  %6442 = icmp eq i32 %6441, 8
  br i1 %6442, label %6443, label %6391, !llvm.loop !122

; <label>:6443                                    ; preds = %6440
  %6444 = fdiv fast float 1.000000e+00, %6435
  %6445 = fmul fast float %6444, %6437
  %6446 = fdiv fast float 1.000000e+00, %6317
  %6447 = fmul fast float %6445, %6446
  %6448 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6449 = call float @dx.op.binary.f32(i32 35, float %6448, float 0.000000e+00)  ; FMax(a,b)
  %6450 = fmul fast float %6435, 3.125000e-02
  %6451 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6452 = fmul fast float %6451, 2.000000e+00
  %6453 = fadd fast float %6452, -1.000000e+00
  %6454 = fcmp fast ogt float %6453, 0.000000e+00
  %6455 = fcmp fast olt float %6453, 0.000000e+00
  %6456 = zext i1 %6454 to i32
  %6457 = zext i1 %6455 to i32
  %6458 = sub nsw i32 %6456, %6457
  %6459 = sitofp i32 %6458 to float
  %6460 = fmul fast float %6459, %6453
  %6461 = fsub fast float 1.000000e+00, %6460
  %6462 = fmul fast float %6461, %6461
  %6463 = fmul fast float %6462, %6461
  %6464 = fsub fast float %6461, %6463
  %6465 = fmul fast float %6464, %6449
  %6466 = fsub fast float 1.000000e+00, %6463
  %6467 = fsub fast float %6466, %6465
  %6468 = fmul fast float %6459, 5.000000e-01
  %6469 = fmul fast float %6468, %6467
  %6470 = fsub fast float 5.000000e-01, %6469
  br label %6471

; <label>:6471                                    ; preds = %6443, %6319, %6304
  %6472 = phi float [ 1.000000e+00, %6304 ], [ %6385, %6319 ], [ %6470, %6443 ]
  %6473 = fcmp fast ogt float %5734, 0.000000e+00
  br i1 %6473, label %6474, label %6638, !dx.controlflow.hints !124

; <label>:6474                                    ; preds = %6471
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = fadd fast float %6476, %5624
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = call float @dx.op.binary.f32(i32 35, float %6477, float 0.000000e+00)  ; FMax(a,b)
  %6484 = fadd fast float %6483, 0x3F10000000000000
  %6485 = fcmp fast oeq float %6482, 0.000000e+00
  br i1 %6485, label %6486, label %6553

; <label>:6486                                    ; preds = %6474
  %6487 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6489 = fmul fast float %6488, %5616
  %6490 = fmul fast float %6487, %5620
  %6491 = fadd fast float %6489, 5.000000e-01
  %6492 = call float @dx.op.unary.f32(i32 27, float %6491)  ; Round_ni(value)
  %6493 = fadd fast float %6490, 5.000000e-01
  %6494 = call float @dx.op.unary.f32(i32 27, float %6493)  ; Round_ni(value)
  %6495 = fsub fast float %6491, %6492
  %6496 = fsub fast float %6493, %6494
  %6497 = fadd fast float %6492, -5.000000e-01
  %6498 = fadd fast float %6494, -5.000000e-01
  %6499 = fmul fast float %6495, 2.000000e+00
  %6500 = fsub fast float 3.000000e+00, %6499
  %6501 = fadd fast float %6499, 1.000000e+00
  %6502 = fsub fast float 2.000000e+00, %6495
  %6503 = bitcast float %6500 to i32
  %6504 = sub nsw i32 2129859010, %6503
  %6505 = bitcast i32 %6504 to float
  %6506 = fmul fast float %6505, %6502
  %6507 = fadd fast float %6506, -1.000000e+00
  %6508 = bitcast float %6501 to i32
  %6509 = sub nsw i32 2129859010, %6508
  %6510 = bitcast i32 %6509 to float
  %6511 = fmul fast float %6510, %6495
  %6512 = fadd fast float %6511, 1.000000e+00
  %6513 = fmul fast float %6496, 2.000000e+00
  %6514 = fsub fast float 3.000000e+00, %6513
  %6515 = fadd fast float %6513, 1.000000e+00
  %6516 = fsub fast float 2.000000e+00, %6496
  %6517 = bitcast float %6514 to i32
  %6518 = sub nsw i32 2129859010, %6517
  %6519 = bitcast i32 %6518 to float
  %6520 = fmul fast float %6519, %6516
  %6521 = fadd fast float %6520, -1.000000e+00
  %6522 = bitcast float %6515 to i32
  %6523 = sub nsw i32 2129859010, %6522
  %6524 = bitcast i32 %6523 to float
  %6525 = fmul fast float %6524, %6496
  %6526 = fadd fast float %6525, 1.000000e+00
  %6527 = fadd fast float %6507, %6497
  %6528 = fmul fast float %6527, %6479
  %6529 = fadd fast float %6521, %6498
  %6530 = fmul fast float %6529, %6480
  %6531 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6528, float %6530, float undef, float undef, i32 0, i32 0, i32 undef, float %6484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = fmul fast float %6532, %6500
  %6534 = fadd fast float %6512, %6497
  %6535 = fmul fast float %6534, %6479
  %6536 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6535, float %6530, float undef, float undef, i32 0, i32 0, i32 undef, float %6484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = fmul fast float %6537, %6501
  %6539 = fadd fast float %6526, %6498
  %6540 = fmul fast float %6539, %6480
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6528, float %6540, float undef, float undef, i32 0, i32 0, i32 undef, float %6484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  %6543 = fmul fast float %6542, %6500
  %6544 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6535, float %6540, float undef, float undef, i32 0, i32 0, i32 undef, float %6484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6545 = extractvalue %dx.types.ResRet.f32 %6544, 0
  %6546 = fmul fast float %6545, %6501
  %6547 = fadd fast float %6546, %6543
  %6548 = fmul fast float %6547, %6515
  %6549 = fadd fast float %6538, %6533
  %6550 = fmul fast float %6549, %6514
  %6551 = fadd fast float %6550, %6548
  %6552 = fmul fast float %6551, 6.250000e-02
  br label %6638

; <label>:6553                                    ; preds = %6474
  %6554 = fmul fast float %239, 0x401921FB60000000
  %6555 = call float @dx.op.unary.f32(i32 13, float %6554)  ; Sin(value)
  %6556 = call float @dx.op.unary.f32(i32 12, float %6554)  ; Cos(value)
  %6557 = fsub fast float -0.000000e+00, %6555
  br label %6558

; <label>:6558                                    ; preds = %6607, %6553
  %6559 = phi float [ 0.000000e+00, %6553 ], [ %6602, %6607 ]
  %6560 = phi float [ 0.000000e+00, %6553 ], [ %6604, %6607 ]
  %6561 = phi i32 [ 0, %6553 ], [ %6608, %6607 ]
  %6562 = mul i32 %6561, 2
  %6563 = add i32 0, %6562
  %6564 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6563
  %6565 = load float, float* %6564, align 4
  %6566 = mul i32 %6561, 2
  %6567 = add i32 1, %6566
  %6568 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6567
  %6569 = load float, float* %6568, align 4
  %6570 = fmul fast float %6565, %6556
  %6571 = call float @dx.op.tertiary.f32(i32 46, float %6569, float %6557, float %6570)  ; FMad(a,b,c)
  %6572 = fmul fast float %6565, %6555
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6569, float %6556, float %6572)  ; FMad(a,b,c)
  %6574 = fmul fast float %6571, %6482
  %6575 = fmul fast float %6573, %6482
  %6576 = fadd fast float %6574, %5616
  %6577 = fadd fast float %6575, %5620
  %6578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6576, float %6577, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6579 = extractvalue %dx.types.ResRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.ResRet.f32 %6578, 1
  %6581 = extractvalue %dx.types.ResRet.f32 %6578, 2
  %6582 = extractvalue %dx.types.ResRet.f32 %6578, 3
  %6583 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6579, float* %6583, align 4
  %6584 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6580, float* %6584, align 4
  %6585 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6581, float* %6585, align 4
  %6586 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6582, float* %6586, align 4
  %6587 = fsub fast float %6579, %6484
  %6588 = fcmp fast olt float %6587, 0.000000e+00
  %6589 = select i1 %6588, float 0.000000e+00, float 1.000000e+00
  %6590 = fadd fast float %6589, %6559
  %6591 = fmul fast float %6589, %6587
  %6592 = fadd fast float %6591, %6560
  br label %6593

; <label>:6593                                    ; preds = %6593, %6558
  %6594 = phi i32 [ 1, %6558 ], [ %6605, %6593 ]
  %6595 = phi float [ %6592, %6558 ], [ %6604, %6593 ]
  %6596 = phi float [ %6590, %6558 ], [ %6602, %6593 ]
  %6597 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6594
  %6598 = load float, float* %6597, align 4, !tbaa !119, !noalias !109
  %6599 = fsub fast float %6598, %6484
  %6600 = fcmp fast olt float %6599, 0.000000e+00
  %6601 = select i1 %6600, float 0.000000e+00, float 1.000000e+00
  %6602 = fadd fast float %6601, %6596
  %6603 = fmul fast float %6601, %6599
  %6604 = fadd fast float %6603, %6595
  %6605 = add nuw nsw i32 %6594, 1
  %6606 = icmp eq i32 %6605, 4
  br i1 %6606, label %6607, label %6593, !llvm.loop !121

; <label>:6607                                    ; preds = %6593
  %6608 = add nuw nsw i32 %6561, 1
  %6609 = icmp eq i32 %6608, 8
  br i1 %6609, label %6610, label %6558, !llvm.loop !122

; <label>:6610                                    ; preds = %6607
  %6611 = fdiv fast float 1.000000e+00, %6602
  %6612 = fmul fast float %6611, %6604
  %6613 = fdiv fast float 1.000000e+00, %6484
  %6614 = fmul fast float %6612, %6613
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6616 = call float @dx.op.binary.f32(i32 35, float %6615, float 0.000000e+00)  ; FMax(a,b)
  %6617 = fmul fast float %6602, 3.125000e-02
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = fmul fast float %6618, 2.000000e+00
  %6620 = fadd fast float %6619, -1.000000e+00
  %6621 = fcmp fast ogt float %6620, 0.000000e+00
  %6622 = fcmp fast olt float %6620, 0.000000e+00
  %6623 = zext i1 %6621 to i32
  %6624 = zext i1 %6622 to i32
  %6625 = sub nsw i32 %6623, %6624
  %6626 = sitofp i32 %6625 to float
  %6627 = fmul fast float %6626, %6620
  %6628 = fsub fast float 1.000000e+00, %6627
  %6629 = fmul fast float %6628, %6628
  %6630 = fmul fast float %6629, %6628
  %6631 = fsub fast float %6628, %6630
  %6632 = fmul fast float %6631, %6616
  %6633 = fsub fast float 1.000000e+00, %6630
  %6634 = fsub fast float %6633, %6632
  %6635 = fmul fast float %6626, 5.000000e-01
  %6636 = fmul fast float %6635, %6634
  %6637 = fsub fast float 5.000000e-01, %6636
  br label %6638

; <label>:6638                                    ; preds = %6610, %6486, %6471
  %6639 = phi float [ 1.000000e+00, %6471 ], [ %6552, %6486 ], [ %6637, %6610 ]
  %6640 = fsub fast float %6305, %6140
  %6641 = fmul fast float %6640, %5678
  %6642 = fadd fast float %6641, %6140
  %6643 = fsub fast float %6472, %6642
  %6644 = fmul fast float %6643, %5708
  %6645 = fadd fast float %6644, %6642
  %6646 = fsub fast float %6639, %6645
  %6647 = fmul fast float %6646, %5734
  %6648 = fadd fast float %6647, %6645
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 2
  %6651 = fcmp fast ogt float %6650, 0.000000e+00
  br i1 %6651, label %6652, label %6692, !dx.controlflow.hints !125

; <label>:6652                                    ; preds = %6638
  %6653 = fcmp fast ugt float %6650, 0.000000e+00
  br i1 %6653, label %6654, label %6689

; <label>:6654                                    ; preds = %6652
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.CBufRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.CBufRet.f32 %6655, 3
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.CBufRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.CBufRet.f32 %6660, 2
  %6664 = extractvalue %dx.types.CBufRet.f32 %6660, 3
  %6665 = extractvalue %dx.types.CBufRet.f32 %6649, 0
  %6666 = extractvalue %dx.types.CBufRet.f32 %6649, 1
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6671 = fadd fast float %6668, %5593
  %6672 = fadd fast float %6669, %5594
  %6673 = fadd fast float %6670, %5595
  %6674 = fmul fast float %6671, %6656
  %6675 = call float @dx.op.tertiary.f32(i32 46, float %6657, float %6672, float %6674)  ; FMad(a,b,c)
  %6676 = call float @dx.op.tertiary.f32(i32 46, float %6658, float %6673, float %6675)  ; FMad(a,b,c)
  %6677 = fadd fast float %6676, %6659
  %6678 = fmul fast float %6671, %6661
  %6679 = call float @dx.op.tertiary.f32(i32 46, float %6662, float %6672, float %6678)  ; FMad(a,b,c)
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6663, float %6673, float %6679)  ; FMad(a,b,c)
  %6681 = fadd fast float %6680, %6664
  %6682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6677, float %6681, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = fmul fast float %6683, %6666
  %6685 = fadd fast float %6684, %6665
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fmul fast float %6686, %6650
  %6688 = fsub fast float 1.000000e+00, %6687
  br label %6689

; <label>:6689                                    ; preds = %6654, %6652
  %6690 = phi float [ %6688, %6654 ], [ 1.000000e+00, %6652 ]
  %6691 = fmul fast float %6690, %6648
  br label %6692

; <label>:6692                                    ; preds = %6689, %6638, %5573
  %6693 = phi float [ 1.000000e+00, %5573 ], [ %6691, %6689 ], [ %6648, %6638 ]
  %6694 = call float @dx.op.binary.f32(i32 36, float %6693, float %6693)  ; FMin(a,b)
  %6695 = call float @dx.op.binary.f32(i32 36, float %6693, float %6694)  ; FMin(a,b)
  %6696 = fcmp fast ogt float %6695, 0.000000e+00
  br i1 %6696, label %6697, label %6862, !dx.controlflow.hints !126

; <label>:6697                                    ; preds = %6692
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.CBufRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.CBufRet.f32 %6698, 2
  %6702 = extractvalue %dx.types.CBufRet.f32 %6698, 3
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6713 = fmul fast float %6699, %5593
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %6700, float %6713)  ; FMad(a,b,c)
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %6701, float %6714)  ; FMad(a,b,c)
  %6716 = fadd fast float %6715, %6702
  %6717 = fmul fast float %6704, %5593
  %6718 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %6705, float %6717)  ; FMad(a,b,c)
  %6719 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %6706, float %6718)  ; FMad(a,b,c)
  %6720 = fadd fast float %6719, %6707
  %6721 = fmul fast float %6709, %5593
  %6722 = call float @dx.op.tertiary.f32(i32 46, float %5594, float %6710, float %6721)  ; FMad(a,b,c)
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %6711, float %6722)  ; FMad(a,b,c)
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6727 = extractvalue %dx.types.CBufRet.f32 %6724, 3
  %6728 = fmul fast float %6727, %6716
  %6729 = fmul fast float %6727, %6720
  %6730 = fadd fast float %6728, %6725
  %6731 = fadd fast float %6729, %6726
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = fsub fast float %6730, %6733
  %6736 = fsub fast float %6731, %6734
  %6737 = fcmp fast olt float %6735, 0.000000e+00
  %6738 = fcmp fast olt float %6736, 0.000000e+00
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = select i1 %6737, float %6740, float %6742
  %6745 = select i1 %6738, float %6741, float %6743
  %6746 = fmul fast float %6744, %6735
  %6747 = fmul fast float %6745, %6736
  %6748 = call float @dx.op.unary.f32(i32 6, float %6746)  ; FAbs(value)
  %6749 = call float @dx.op.unary.f32(i32 6, float %6747)  ; FAbs(value)
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 0
  %6752 = call float @dx.op.binary.f32(i32 35, float %6748, float %6749)  ; FMax(a,b)
  %6753 = fsub fast float %6751, %6752
  %6754 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6755 = fcmp fast ogt float %6754, 0.000000e+00
  br i1 %6755, label %6756, label %6797, !dx.controlflow.hints !127

; <label>:6756                                    ; preds = %6697
  %6757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6730, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 1
  %6759 = fcmp fast ogt float %6758, 0.000000e+00
  br i1 %6759, label %6760, label %6792

; <label>:6760                                    ; preds = %6756
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6730, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.ResRet.f32 %6761, 2
  %6765 = extractvalue %dx.types.ResRet.f32 %6761, 3
  %6766 = fsub fast float 1.000000e+00, %6712
  %6767 = fsub fast float %6766, %6723
  %6768 = fmul fast float %6767, 0x400921FB60000000
  %6769 = fadd fast float %6768, 0x3FF921FB60000000
  %6770 = call float @dx.op.unary.f32(i32 13, float %6769)  ; Sin(value)
  %6771 = fadd fast float %6770, -1.000000e+00
  %6772 = fmul fast float %6771, 0x3FD45F3060000000
  %6773 = fmul fast float %6767, 0x401921FB60000000
  %6774 = fadd fast float %6773, 0x400921FB60000000
  %6775 = call float @dx.op.unary.f32(i32 13, float %6774)  ; Sin(value)
  %6776 = fadd fast float %6775, 0x3E7777A5C0000000
  %6777 = fmul fast float %6776, 0x3FC45F3060000000
  %6778 = fmul fast float %6767, 0x4022D97C80000000
  %6779 = fadd fast float %6778, 0x4012D97C80000000
  %6780 = call float @dx.op.unary.f32(i32 13, float %6779)  ; Sin(value)
  %6781 = fadd fast float %6780, 1.000000e+00
  %6782 = fmul fast float %6781, 0x3FBB2995E0000000
  %6783 = fmul fast float %6767, 0x402921FB60000000
  %6784 = fadd fast float %6783, 0x401921FB60000000
  %6785 = call float @dx.op.unary.f32(i32 13, float %6784)  ; Sin(value)
  %6786 = fadd fast float %6785, 0xBE8777A5C0000000
  %6787 = fmul fast float %6786, 0x3FB45F3060000000
  %6788 = call float @dx.op.dot4.f32(i32 56, float %6762, float %6763, float %6764, float %6765, float %6772, float %6777, float %6782, float %6787)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6789 = fmul fast float %6788, 0xBFF7154760000000
  %6790 = call float @dx.op.unary.f32(i32 21, float %6789)  ; Exp(value)
  %6791 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  br label %6792

; <label>:6792                                    ; preds = %6760, %6756
  %6793 = phi float [ %6791, %6760 ], [ 1.000000e+00, %6756 ]
  %6794 = fadd fast float %6793, -1.000000e+00
  %6795 = fmul fast float %6794, %6754
  %6796 = fadd fast float %6795, 1.000000e+00
  br label %6797

; <label>:6797                                    ; preds = %6792, %6697
  %6798 = phi float [ %6796, %6792 ], [ 1.000000e+00, %6697 ]
  %6799 = fmul fast float %6798, %6693
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = fadd fast float %6801, %166
  %6805 = fadd fast float %6802, %167
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6808, 0
  %6810 = extractvalue %dx.types.CBufRet.f32 %6808, 1
  %6811 = extractvalue %dx.types.CBufRet.f32 %6808, 2
  %6812 = fsub fast float -0.000000e+00, %6804
  %6813 = fsub fast float -0.000000e+00, %6805
  %6814 = fsub fast float %4853, %6803
  %6815 = fadd fast float %6814, %6807
  %6816 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6812, float %6813, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %6817 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6809, float %6810, float %6811)  ; Dot3(ax,ay,az,bx,by,bz)
  %6818 = fdiv fast float 1.000000e+00, %6817
  %6819 = fmul fast float %6818, %6816
  %6820 = fmul fast float %6809, %6819
  %6821 = fmul fast float %6810, %6819
  %6822 = fadd fast float %6820, %6804
  %6823 = fadd fast float %6821, %6805
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.CBufRet.f32 %6824, 1
  %6827 = fsub fast float %6822, %6825
  %6828 = fsub fast float %6823, %6826
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 3
  %6832 = fmul fast float %6827, %6830
  %6833 = fmul fast float %6828, %6831
  %6834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.i32 %6834, 3
  %6836 = icmp eq i32 %6835, 0
  br i1 %6836, label %6842, label %6837

; <label>:6837                                    ; preds = %6797
  %6838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6832, float %6833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.ResRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.ResRet.f32 %6838, 2
  br label %6847

; <label>:6842                                    ; preds = %6797
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6832, float %6833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.ResRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.ResRet.f32 %6843, 2
  br label %6847

; <label>:6847                                    ; preds = %6842, %6837
  %6848 = phi float [ %6839, %6837 ], [ %6844, %6842 ]
  %6849 = phi float [ %6840, %6837 ], [ %6845, %6842 ]
  %6850 = phi float [ %6841, %6837 ], [ %6846, %6842 ]
  %6851 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6852 = fmul fast float %6851, %6848
  %6853 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6854 = fsub fast float %6819, %6853
  %6855 = fsub fast float %6854, %6852
  %6856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6855)  ; FMax(a,b)
  %6857 = fmul fast float %6856, %6849
  %6858 = call float @dx.op.binary.f32(i32 36, float %6850, float %6857)  ; FMin(a,b)
  %6859 = fmul fast float %6858, 0xBFF7154760000000
  %6860 = call float @dx.op.unary.f32(i32 21, float %6859)  ; Exp(value)
  %6861 = fmul fast float %6799, %6860
  br label %6862

; <label>:6862                                    ; preds = %6847, %6692
  %6863 = phi float [ %6861, %6847 ], [ %6693, %6692 ]
  %6864 = call float @dx.op.binary.f32(i32 36, float %6863, float %6863)  ; FMin(a,b)
  %6865 = call float @dx.op.binary.f32(i32 36, float %6863, float %6864)  ; FMin(a,b)
  %6866 = fcmp fast ogt float %6865, 0.000000e+00
  br i1 %6866, label %6867, label %7114, !dx.controlflow.hints !128

; <label>:6867                                    ; preds = %6862
  %6868 = fmul fast float %6863, %5585
  %6869 = fmul fast float %6863, %5586
  %6870 = fmul fast float %6863, %5587
  %6871 = fsub fast float %168, %4641
  %6872 = fcmp fast ogt float %6871, 0.000000e+00
  %6873 = fmul fast float %5574, 5.120000e+02
  %6874 = fmul fast float %5575, 5.120000e+02
  %6875 = fmul fast float %5576, 5.120000e+02
  %6876 = fadd fast float %6875, %168
  %6877 = fsub fast float %4641, %6876
  %6878 = fmul fast float %6877, 2.000000e+00
  %6879 = fadd fast float %6878, %6876
  %6880 = select i1 %6872, float %6879, float %6876
  %6881 = fsub fast float %6880, %168
  %6882 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6881, float %6873, float %6874, float %6881)  ; Dot3(ax,ay,az,bx,by,bz)
  %6883 = call float @dx.op.unary.f32(i32 25, float %6882)  ; Rsqrt(value)
  %6884 = fmul fast float %6883, %6873
  %6885 = fmul fast float %6883, %6874
  %6886 = fmul fast float %6883, %6881
  %6887 = fsub fast float %4641, %168
  %6888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6887)  ; Dot3(ax,ay,az,bx,by,bz)
  %6889 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6884, float %6885, float %6886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6890 = fdiv fast float 1.000000e+00, %6889
  %6891 = fmul fast float %6890, %6888
  %6892 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6871, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  %6894 = fcmp fast olt float %6892, 0.000000e+00
  %6895 = zext i1 %6893 to i32
  %6896 = zext i1 %6894 to i32
  %6897 = sub nsw i32 %6895, %6896
  %6898 = sitofp i32 %6897 to float
  %6899 = fsub fast float %6880, %4641
  %6900 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6899, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fcmp fast ogt float %6900, 0.000000e+00
  %6902 = fcmp fast olt float %6900, 0.000000e+00
  %6903 = zext i1 %6901 to i32
  %6904 = zext i1 %6902 to i32
  %6905 = sub nsw i32 %6903, %6904
  %6906 = sitofp i32 %6905 to float
  %6907 = fcmp fast une float %6898, %6906
  br i1 %6907, label %6908, label %6918

; <label>:6908                                    ; preds = %6867
  %6909 = fmul fast float %6891, %6886
  %6910 = fmul fast float %6891, %6885
  %6911 = fmul fast float %6891, %6884
  %6912 = fmul fast float %6911, %6911
  %6913 = fmul fast float %6910, %6910
  %6914 = fadd fast float %6912, %6913
  %6915 = fmul fast float %6909, %6909
  %6916 = fadd fast float %6914, %6915
  %6917 = call float @dx.op.unary.f32(i32 24, float %6916)  ; Sqrt(value)
  br label %6928

; <label>:6918                                    ; preds = %6867
  %6919 = icmp slt i32 %6897, 0
  br i1 %6919, label %6920, label %6928

; <label>:6920                                    ; preds = %6918
  %6921 = fsub fast float %168, %6880
  %6922 = fmul fast float %6873, %6873
  %6923 = fmul fast float %6874, %6874
  %6924 = fadd fast float %6922, %6923
  %6925 = fmul fast float %6921, %6921
  %6926 = fadd fast float %6924, %6925
  %6927 = call float @dx.op.unary.f32(i32 24, float %6926)  ; Sqrt(value)
  br label %6928

; <label>:6928                                    ; preds = %6920, %6918, %6908
  %6929 = phi float [ %6917, %6908 ], [ %6927, %6920 ], [ 0.000000e+00, %6918 ]
  %6930 = fsub fast float -0.000000e+00, %6929
  %6931 = select i1 %6872, float -0.000000e+00, float %6930
  %6932 = fmul fast float %4642, 0x3FF7154760000000
  %6933 = fmul fast float %6932, %6931
  %6934 = fmul fast float %4643, 0x3FF7154760000000
  %6935 = fmul fast float %6934, %6931
  %6936 = fmul fast float %4644, 0x3FF7154760000000
  %6937 = fmul fast float %6936, %6931
  %6938 = call float @dx.op.unary.f32(i32 21, float %6933)  ; Exp(value)
  %6939 = call float @dx.op.unary.f32(i32 21, float %6935)  ; Exp(value)
  %6940 = call float @dx.op.unary.f32(i32 21, float %6937)  ; Exp(value)
  %6941 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6942 = call float @dx.op.unary.f32(i32 7, float %6939)  ; Saturate(value)
  %6943 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6944 = fmul fast float %6868, %6941
  %6945 = fmul fast float %6869, %6942
  %6946 = fmul fast float %6870, %6943
  %6947 = fsub fast float %5574, %4841
  %6948 = fsub fast float %5575, %4840
  %6949 = fsub fast float %5576, %4839
  %6950 = call float @dx.op.dot3.f32(i32 55, float %6947, float %6948, float %6949, float %6947, float %6948, float %6949)  ; Dot3(ax,ay,az,bx,by,bz)
  %6951 = call float @dx.op.unary.f32(i32 25, float %6950)  ; Rsqrt(value)
  %6952 = fmul fast float %6951, %6947
  %6953 = fmul fast float %6951, %6948
  %6954 = fmul fast float %6951, %6949
  %6955 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %6956 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4837, float %4836, float %6952, float %6953, float %6954)  ; Dot3(ax,ay,az,bx,by,bz)
  %6957 = call float @dx.op.unary.f32(i32 7, float %6955)  ; Saturate(value)
  %6958 = fmul fast float %6957, %6957
  %6959 = fmul fast float %6958, %4881
  %6960 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6961 = fmul fast float %6960, %6957
  %6962 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %6952, float %6953, float %6954)  ; Dot3(ax,ay,az,bx,by,bz)
  %6963 = fmul fast float %6962, %6962
  %6964 = call float @dx.op.unary.f32(i32 6, float %6955)  ; FAbs(value)
  %6965 = fsub fast float 1.000000e+00, %4874
  %6966 = fmul fast float %4856, %4856
  %6967 = fmul fast float %6966, %6965
  %6968 = fadd fast float %6967, %4874
  %6969 = bitcast float %6968 to i32
  %6970 = ashr i32 %6969, 1
  %6971 = add nsw i32 %6970, 532487669
  %6972 = bitcast i32 %6971 to float
  %6973 = fadd fast float %6972, %4856
  %6974 = fmul fast float %4874, %6963
  %6975 = fsub fast float 1.000000e+00, %6963
  %6976 = fadd fast float %6975, %6974
  %6977 = fmul fast float %6964, %6964
  %6978 = fmul fast float %6977, %6965
  %6979 = fadd fast float %6978, %4874
  %6980 = bitcast float %6979 to i32
  %6981 = ashr i32 %6980, 1
  %6982 = add nsw i32 %6981, 532487669
  %6983 = bitcast i32 %6982 to float
  %6984 = fadd fast float %6983, %6964
  %6985 = fmul fast float %6976, %6976
  %6986 = fmul fast float %6985, %6973
  %6987 = fmul fast float %6986, %6984
  %6988 = fdiv fast float 0x3FF0A00000000000, %6987
  %6989 = fmul fast float %6988, %4874
  %6990 = call float @dx.op.unary.f32(i32 6, float %6956)  ; FAbs(value)
  %6991 = fsub fast float 1.000000e+00, %6990
  %6992 = bitcast float %6991 to i32
  %6993 = sitofp i32 %6992 to float
  %6994 = fmul fast float %6993, 5.000000e+00
  %6995 = fadd fast float %6994, 0xC1EFBF8940000000
  %6996 = fptosi float %6995 to i32
  %6997 = bitcast i32 %6996 to float
  %6998 = fsub fast float 1.000000e+00, %4848
  %6999 = fsub fast float 1.000000e+00, %4849
  %7000 = fsub fast float 1.000000e+00, %4854
  %7001 = fmul fast float %6997, %6998
  %7002 = fmul fast float %6997, %6999
  %7003 = fmul fast float %6997, %7000
  %7004 = fadd fast float %7001, %4848
  %7005 = fadd fast float %7002, %4849
  %7006 = fadd fast float %7003, %4854
  br i1 %4993, label %7007, label %7030

; <label>:7007                                    ; preds = %6928
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4219, float %6990, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = fadd fast float %7009, -5.000000e-01
  %7013 = fadd fast float %7010, -5.000000e-01
  %7014 = fadd fast float %7011, -5.000000e-01
  %7015 = fmul fast float %4848, 4.000000e+00
  %7016 = fmul fast float %7015, %6998
  %7017 = fmul fast float %7016, %7012
  %7018 = fmul fast float %4849, 4.000000e+00
  %7019 = fmul fast float %7018, %6999
  %7020 = fmul fast float %7019, %7013
  %7021 = fmul fast float %4854, 4.000000e+00
  %7022 = fmul fast float %7021, %7000
  %7023 = fmul fast float %7022, %7014
  %7024 = fadd fast float %7017, %7004
  %7025 = fadd fast float %7020, %7005
  %7026 = fadd fast float %7023, %7006
  %7027 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7028 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  %7029 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  br label %7030

; <label>:7030                                    ; preds = %7007, %6928
  %7031 = phi float [ %7027, %7007 ], [ %7004, %6928 ]
  %7032 = phi float [ %7028, %7007 ], [ %7005, %6928 ]
  %7033 = phi float [ %7029, %7007 ], [ %7006, %6928 ]
  %7034 = fmul fast float %6955, 9.843750e-01
  %7035 = fadd fast float %7034, 7.812500e-03
  %7036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7035, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7037 = extractvalue %dx.types.ResRet.f32 %7036, 2
  %7038 = extractvalue %dx.types.ResRet.f32 %7036, 3
  %7039 = fmul fast float %7037, %4848
  %7040 = fmul fast float %7037, %4849
  %7041 = fmul fast float %7037, %4854
  %7042 = fadd fast float %7039, %7038
  %7043 = fadd fast float %7040, %7038
  %7044 = fadd fast float %7041, %7038
  br i1 %4993, label %7045, label %7068

; <label>:7045                                    ; preds = %7030
  %7046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4219, float %6955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.ResRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.ResRet.f32 %7046, 2
  %7050 = fadd fast float %7047, -5.000000e-01
  %7051 = fadd fast float %7048, -5.000000e-01
  %7052 = fadd fast float %7049, -5.000000e-01
  %7053 = fmul fast float %4848, 4.000000e+00
  %7054 = fmul fast float %7053, %6998
  %7055 = fmul fast float %7054, %7050
  %7056 = fmul fast float %4849, 4.000000e+00
  %7057 = fmul fast float %7056, %6999
  %7058 = fmul fast float %7057, %7051
  %7059 = fmul fast float %4854, 4.000000e+00
  %7060 = fmul fast float %7059, %7000
  %7061 = fmul fast float %7060, %7052
  %7062 = fadd fast float %7055, %7042
  %7063 = fadd fast float %7058, %7043
  %7064 = fadd fast float %7061, %7044
  %7065 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7066 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7067 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  br label %7068

; <label>:7068                                    ; preds = %7045, %7030
  %7069 = phi float [ %7065, %7045 ], [ %7042, %7030 ]
  %7070 = phi float [ %7066, %7045 ], [ %7043, %7030 ]
  %7071 = phi float [ %7067, %7045 ], [ %7044, %7030 ]
  %7072 = call float @dx.op.binary.f32(i32 35, float %7070, float %7071)  ; FMax(a,b)
  %7073 = call float @dx.op.binary.f32(i32 35, float %7069, float %7072)  ; FMax(a,b)
  %7074 = fsub fast float 1.000000e+00, %7073
  %7075 = fmul fast float %7031, %6989
  %7076 = fmul fast float %7032, %6989
  %7077 = fmul fast float %7033, %6989
  %7078 = fsub fast float 1.000000e+00, %6956
  %7079 = bitcast float %7078 to i32
  %7080 = sitofp i32 %7079 to float
  %7081 = fmul fast float %7080, 5.000000e+00
  %7082 = fadd fast float %7081, 0xC1EFBF8940000000
  %7083 = fptosi float %7082 to i32
  %7084 = bitcast i32 %7083 to float
  %7085 = fmul fast float %7084, %4218
  %7086 = fmul fast float %7074, %7085
  %7087 = fmul fast float %7086, %5535
  %7088 = fmul fast float %7086, %5536
  %7089 = fmul fast float %7086, %5537
  %7090 = fadd fast float %7087, %7075
  %7091 = fadd fast float %7088, %7076
  %7092 = fadd fast float %7089, %7077
  %7093 = fmul fast float %6961, %6944
  %7094 = fmul fast float %7093, %7074
  %7095 = fmul fast float %6961, %6945
  %7096 = fmul fast float %7095, %7074
  %7097 = fmul fast float %6961, %6946
  %7098 = fmul fast float %7097, %7074
  %7099 = fmul fast float %7093, %7090
  %7100 = fmul fast float %7095, %7091
  %7101 = fmul fast float %7097, %7092
  %7102 = fadd fast float %7094, %5519
  %7103 = fmul fast float %7102, %4239
  %7104 = fadd fast float %7096, %5520
  %7105 = fmul fast float %7104, %4239
  %7106 = fadd fast float %7098, %5521
  %7107 = fmul fast float %7106, %4239
  %7108 = fadd fast float %7099, %5562
  %7109 = fmul fast float %7108, %4239
  %7110 = fadd fast float %7100, %5565
  %7111 = fmul fast float %7110, %4239
  %7112 = fadd fast float %7101, %5568
  %7113 = fmul fast float %7112, %4239
  br label %7114

; <label>:7114                                    ; preds = %7068, %6862, %5515
  %7115 = phi float [ %5563, %5515 ], [ %5563, %6862 ], [ %7109, %7068 ]
  %7116 = phi float [ %5566, %5515 ], [ %5566, %6862 ], [ %7111, %7068 ]
  %7117 = phi float [ %5569, %5515 ], [ %5569, %6862 ], [ %7113, %7068 ]
  %7118 = phi float [ %5558, %5515 ], [ %5558, %6862 ], [ %7103, %7068 ]
  %7119 = phi float [ %5559, %5515 ], [ %5559, %6862 ], [ %7105, %7068 ]
  %7120 = phi float [ %5560, %5515 ], [ %5560, %6862 ], [ %7107, %7068 ]
  %7121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.i32 %7121, 0
  %7123 = icmp eq i32 %7122, 0
  br i1 %7123, label %7786, label %7124

; <label>:7124                                    ; preds = %7114
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 3
  %7128 = fmul fast float %7126, %103
  %7129 = fmul fast float %7127, %104
  %7130 = fptoui float %7128 to i32
  %7131 = fptoui float %7129 to i32
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 0
  %7134 = extractvalue %dx.types.CBufRet.f32 %7132, 2
  %7135 = extractvalue %dx.types.CBufRet.f32 %7132, 3
  %7136 = fadd fast float %91, -4.000000e+00
  %7137 = call float @dx.op.binary.f32(i32 35, float %7136, float 0.000000e+00)  ; FMax(a,b)
  %7138 = fadd fast float %7137, %7133
  %7139 = fmul fast float %7138, %7134
  %7140 = call float @dx.op.unary.f32(i32 23, float %7139)  ; Log(value)
  %7141 = fmul fast float %7140, %7135
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 2
  %7144 = fmul fast float %7141, %7143
  %7145 = call float @dx.op.unary.f32(i32 7, float %7144)  ; Saturate(value)
  %7146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.i32 %7146, 1
  %7148 = add i32 %7147, -1
  %7149 = uitofp i32 %7147 to float
  %7150 = fmul fast float %7149, %7145
  %7151 = fptoui float %7150 to i32
  %7152 = call i32 @dx.op.binary.i32(i32 40, i32 %7151, i32 %7148)  ; UMin(a,b)
  %7153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.i32 %7153, 2
  %7155 = extractvalue %dx.types.CBufRet.i32 %7153, 3
  %7156 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7131, i32 %7154, i32 %7130)  ; UMad(a,b,c)
  %7157 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7152, i32 %7155, i32 %7156)  ; UMad(a,b,c)
  %7158 = add nsw i32 %7122, -1
  %7159 = call i32 @dx.op.binary.i32(i32 37, i32 %7158, i32 0)  ; IMax(a,b)
  %7160 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7161 = fptoui float %7160 to i32
  %7162 = lshr i32 %7161, 5
  %7163 = call i32 @dx.op.binary.i32(i32 40, i32 %7162, i32 8191)  ; UMin(a,b)
  %7164 = shl i32 %7163, 2
  %7165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7164, i32 undef)  ; BufferLoad(srv,index,wot)
  %7166 = extractvalue %dx.types.ResRet.i32 %7165, 0
  %7167 = lshr i32 %7166, 16
  %7168 = and i32 %7166, 65535
  %7169 = lshr i32 %7166, 21
  %7170 = lshr i32 %7168, 5
  %7171 = call i32 @dx.op.binary.i32(i32 40, i32 %7170, i32 %7159)  ; UMin(a,b)
  %7172 = icmp ugt i32 %7169, %7171
  br i1 %7172, label %7786, label %7173

; <label>:7173                                    ; preds = %7124
  br label %7174

; <label>:7174                                    ; preds = %7776, %7173
  %7175 = phi i32 [ %7783, %7776 ], [ %7169, %7173 ]
  %7176 = phi float [ %7777, %7776 ], [ %7115, %7173 ]
  %7177 = phi float [ %7778, %7776 ], [ %7116, %7173 ]
  %7178 = phi float [ %7779, %7776 ], [ %7117, %7173 ]
  %7179 = phi float [ %7780, %7776 ], [ %7118, %7173 ]
  %7180 = phi float [ %7781, %7776 ], [ %7119, %7173 ]
  %7181 = phi float [ %7782, %7776 ], [ %7120, %7173 ]
  %7182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.i32 %7182, 0
  %7184 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7157, i32 %7183, i32 %7175)  ; UMad(a,b,c)
  %7185 = shl i32 %7184, 2
  %7186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7185, i32 undef)  ; BufferLoad(srv,index,wot)
  %7187 = extractvalue %dx.types.ResRet.i32 %7186, 0
  %7188 = shl i32 %7175, 5
  %7189 = sub nsw i32 %7167, %7188
  %7190 = call i32 @dx.op.binary.i32(i32 37, i32 %7189, i32 0)  ; IMax(a,b)
  %7191 = call i32 @dx.op.binary.i32(i32 38, i32 %7190, i32 31)  ; IMin(a,b)
  %7192 = sub nsw i32 1, %7167
  %7193 = add nsw i32 %7192, %7168
  %7194 = call i32 @dx.op.binary.i32(i32 37, i32 %7193, i32 0)  ; IMax(a,b)
  %7195 = call i32 @dx.op.binary.i32(i32 38, i32 %7194, i32 32)  ; IMin(a,b)
  %7196 = and i32 %7195, 31
  %7197 = shl i32 -1, %7196
  %7198 = xor i32 %7197, -1
  %7199 = and i32 %7191, 31
  %7200 = shl i32 %7198, %7199
  %7201 = icmp eq i32 %7195, 32
  %7202 = select i1 %7201, i32 -1, i32 %7200
  %7203 = and i32 %7202, %7187
  %7204 = icmp eq i32 %7203, 0
  br i1 %7204, label %7776, label %7205

; <label>:7205                                    ; preds = %7174
  br label %7206

; <label>:7206                                    ; preds = %7340, %7205
  %7207 = phi i32 [ %7218, %7340 ], [ %7203, %7205 ]
  %7208 = phi float [ %7341, %7340 ], [ %7176, %7205 ]
  %7209 = phi float [ %7342, %7340 ], [ %7177, %7205 ]
  %7210 = phi float [ %7343, %7340 ], [ %7178, %7205 ]
  %7211 = phi float [ %7344, %7340 ], [ %7179, %7205 ]
  %7212 = phi float [ %7345, %7340 ], [ %7180, %7205 ]
  %7213 = phi float [ %7346, %7340 ], [ %7181, %7205 ]
  %7214 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7207)  ; FirstbitLo(value)
  %7215 = add i32 %7214, %7188
  %7216 = and i32 %7214, 31
  %7217 = shl i32 1, %7216
  %7218 = xor i32 %7217, %7207
  %7219 = mul i32 %7215, 112
  %7220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7219, i32 undef)  ; BufferLoad(srv,index,wot)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = or i32 %7219, 12
  %7225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7224, i32 undef)  ; BufferLoad(srv,index,wot)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = add i32 %7219, 16
  %7228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7227, i32 undef)  ; BufferLoad(srv,index,wot)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.ResRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.ResRet.f32 %7228, 2
  %7232 = add i32 %7219, 28
  %7233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7232, i32 undef)  ; BufferLoad(srv,index,wot)
  %7234 = extractvalue %dx.types.ResRet.i32 %7233, 0
  %7235 = add i32 %7219, 44
  %7236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7235, i32 undef)  ; BufferLoad(srv,index,wot)
  %7237 = extractvalue %dx.types.ResRet.f32 %7236, 0
  %7238 = add i32 %7219, 48
  %7239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7238, i32 undef)  ; BufferLoad(srv,index,wot)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = extractvalue %dx.types.ResRet.f32 %7239, 3
  %7244 = add i32 %7219, 64
  %7245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7244, i32 undef)  ; BufferLoad(srv,index,wot)
  %7246 = extractvalue %dx.types.ResRet.f32 %7245, 0
  %7247 = extractvalue %dx.types.ResRet.f32 %7245, 1
  %7248 = extractvalue %dx.types.ResRet.f32 %7245, 2
  %7249 = extractvalue %dx.types.ResRet.f32 %7245, 3
  %7250 = add i32 %7219, 80
  %7251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7250, i32 undef)  ; BufferLoad(srv,index,wot)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 1
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 2
  %7254 = add i32 %7219, 92
  %7255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.i32 %7255, 0
  %7257 = call float @dx.op.dot3.f32(i32 55, float %7221, float %7222, float %7223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = select i1 %228, float %7252, float %7221
  %7259 = select i1 %228, float %7257, float %7222
  %7260 = select i1 %228, float %7253, float %7223
  %7261 = and i32 %7256, 65535
  %7262 = uitofp i32 %7261 to float
  %7263 = lshr i32 %7256, 16
  %7264 = uitofp i32 %7263 to float
  %7265 = and i32 %7234, 65535
  %7266 = and i32 %7234, 50331648
  %7267 = icmp eq i32 %7266, 33554432
  %7268 = fsub fast float %7240, %166
  %7269 = fsub fast float %7241, %167
  %7270 = fsub fast float %7242, %168
  %7271 = call float @dx.op.dot3.f32(i32 55, float %7268, float %7269, float %7270, float %7268, float %7269, float %7270)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = call float @dx.op.unary.f32(i32 24, float %7271)  ; Sqrt(value)
  %7273 = fdiv fast float 1.000000e+00, %7272
  %7274 = fmul fast float %7273, %7268
  %7275 = fmul fast float %7273, %7269
  %7276 = fmul fast float %7273, %7270
  %7277 = fadd fast float %7272, %7226
  %7278 = fdiv fast float 1.000000e+00, %7277
  %7279 = fmul float %7237, %7278
  %7280 = fmul float %7279, %7279
  %7281 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  br i1 %7267, label %7282, label %7303

; <label>:7282                                    ; preds = %7206
  %7283 = fmul fast float %7248, %7229
  %7284 = fmul fast float %7248, %7230
  %7285 = fmul fast float %7248, %7231
  %7286 = fadd fast float %7268, %7283
  %7287 = fadd fast float %7269, %7284
  %7288 = fadd fast float %7270, %7285
  %7289 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7287, float %7288, float %7286, float %7287, float %7288)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = call float @dx.op.unary.f32(i32 25, float %7289)  ; Rsqrt(value)
  %7291 = fmul fast float %7290, %7286
  %7292 = fmul fast float %7290, %7287
  %7293 = fmul fast float %7290, %7288
  %7294 = fsub fast float %166, %7240
  %7295 = fsub fast float %167, %7241
  %7296 = fsub fast float %168, %7242
  %7297 = fsub fast float -0.000000e+00, %7294
  %7298 = fsub fast float -0.000000e+00, %7295
  %7299 = fsub fast float -0.000000e+00, %7296
  %7300 = call float @dx.op.dot3.f32(i32 55, float %7297, float %7298, float %7299, float %7229, float %7230, float %7231)  ; Dot3(ax,ay,az,bx,by,bz)
  %7301 = fcmp fast ogt float %7300, 0.000000e+00
  %7302 = uitofp i1 %7301 to float
  br label %7303

; <label>:7303                                    ; preds = %7282, %7206
  %7304 = phi float [ %7302, %7282 ], [ 1.000000e+00, %7206 ]
  %7305 = phi float [ %7291, %7282 ], [ %7274, %7206 ]
  %7306 = phi float [ %7292, %7282 ], [ %7275, %7206 ]
  %7307 = phi float [ %7293, %7282 ], [ %7276, %7206 ]
  %7308 = call float @dx.op.dot3.f32(i32 55, float %7229, float %7230, float %7231, float %7305, float %7306, float %7307)  ; Dot3(ax,ay,az,bx,by,bz)
  %7309 = fmul fast float %7308, %7308
  %7310 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7311 = fsub fast float 1.000000e+00, %7310
  %7312 = fmul fast float %7311, 5.000000e-01
  %7313 = fcmp fast ogt float %7308, 0.000000e+00
  %7314 = fsub fast float 1.000000e+00, %7312
  %7315 = select i1 %7313, float %7312, float %7314
  %7316 = fmul fast float %7315, %7264
  %7317 = fadd fast float %7316, %7262
  %7318 = fmul fast float %7317, 0x3EF0001000000000
  %7319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7318, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = fmul fast float %7308, %7246
  %7322 = fadd fast float %7321, %7247
  %7323 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7324 = select i1 %7267, float 1.000000e+00, float %7323
  %7325 = select i1 %7267, float %7323, float 1.000000e+00
  %7326 = fmul fast float %7272, %7243
  %7327 = fsub fast float 1.000000e+00, %7326
  %7328 = fmul fast float %7327, %7249
  %7329 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7330 = fmul fast float %7329, %7325
  %7331 = fmul fast float %7330, 2.000000e+00
  %7332 = fsub fast float 3.000000e+00, %7331
  %7333 = fmul fast float %7320, %7304
  %7334 = fmul fast float %7330, %7330
  %7335 = fmul fast float %7334, %7333
  %7336 = fmul fast float %7335, %7332
  %7337 = call float @dx.op.binary.f32(i32 36, float %7336, float %7336)  ; FMin(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7336, float %7337)  ; FMin(a,b)
  %7339 = fcmp fast ogt float %7338, 0.000000e+00
  br i1 %7339, label %7348, label %7340, !dx.controlflow.hints !129

; <label>:7340                                    ; preds = %7732, %7494, %7303
  %7341 = phi float [ %7208, %7494 ], [ %7208, %7303 ], [ %7772, %7732 ]
  %7342 = phi float [ %7209, %7494 ], [ %7209, %7303 ], [ %7773, %7732 ]
  %7343 = phi float [ %7210, %7494 ], [ %7210, %7303 ], [ %7774, %7732 ]
  %7344 = phi float [ %7211, %7494 ], [ %7211, %7303 ], [ %7766, %7732 ]
  %7345 = phi float [ %7212, %7494 ], [ %7212, %7303 ], [ %7767, %7732 ]
  %7346 = phi float [ %7213, %7494 ], [ %7213, %7303 ], [ %7768, %7732 ]
  %7347 = icmp eq i32 %7207, %7217
  br i1 %7347, label %7775, label %7206

; <label>:7348                                    ; preds = %7303
  %7349 = icmp eq i32 %7265, 255
  br i1 %7349, label %7494, label %7350, !dx.controlflow.hints !130

; <label>:7350                                    ; preds = %7348
  %7351 = mul nuw nsw i32 %7265, 176
  %7352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7351, i32 undef)  ; BufferLoad(srv,index,wot)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = extractvalue %dx.types.ResRet.f32 %7352, 3
  %7357 = add nuw nsw i32 %7351, 16
  %7358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7357, i32 undef)  ; BufferLoad(srv,index,wot)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 1
  %7361 = add nuw nsw i32 %7351, 32
  %7362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.ResRet.f32 %7362, 2
  %7366 = add nuw nsw i32 %7351, 48
  %7367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7366, i32 undef)  ; BufferLoad(srv,index,wot)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = extractvalue %dx.types.ResRet.f32 %7367, 3
  %7372 = add nuw nsw i32 %7351, 64
  %7373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7372, i32 undef)  ; BufferLoad(srv,index,wot)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.ResRet.f32 %7373, 3
  %7378 = add nuw nsw i32 %7351, 80
  %7379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7378, i32 undef)  ; BufferLoad(srv,index,wot)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7383 = extractvalue %dx.types.ResRet.f32 %7379, 3
  %7384 = add nuw nsw i32 %7351, 96
  %7385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7384, i32 undef)  ; BufferLoad(srv,index,wot)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.ResRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.ResRet.f32 %7385, 2
  %7389 = extractvalue %dx.types.ResRet.f32 %7385, 3
  %7390 = bitcast float %7360 to i32
  %7391 = fmul fast float %7365, %110
  %7392 = fmul fast float %7365, %111
  %7393 = fmul fast float %7365, %112
  %7394 = fadd fast float %7391, %166
  %7395 = fadd fast float %7392, %167
  %7396 = fadd fast float %7393, %168
  %7397 = fmul fast float %7394, %7368
  %7398 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7374, float %7397)  ; FMad(a,b,c)
  %7399 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7380, float %7398)  ; FMad(a,b,c)
  %7400 = fadd fast float %7399, %7386
  %7401 = fmul fast float %7394, %7369
  %7402 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7375, float %7401)  ; FMad(a,b,c)
  %7403 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7381, float %7402)  ; FMad(a,b,c)
  %7404 = fadd fast float %7403, %7387
  %7405 = fmul fast float %7394, %7370
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7376, float %7405)  ; FMad(a,b,c)
  %7407 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7382, float %7406)  ; FMad(a,b,c)
  %7408 = fadd fast float %7407, %7388
  %7409 = fmul fast float %7394, %7371
  %7410 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7377, float %7409)  ; FMad(a,b,c)
  %7411 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7383, float %7410)  ; FMad(a,b,c)
  %7412 = fadd fast float %7411, %7389
  %7413 = fdiv fast float %7400, %7412
  %7414 = fdiv fast float %7404, %7412
  %7415 = fdiv fast float %7408, %7412
  %7416 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7415)  ; FMax(a,b)
  %7417 = fmul fast float %239, 0x401921FB60000000
  %7418 = call float @dx.op.unary.f32(i32 13, float %7417)  ; Sin(value)
  %7419 = call float @dx.op.unary.f32(i32 12, float %7417)  ; Cos(value)
  %7420 = fmul fast float %7419, %7364
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7364, float 0.000000e+00)  ; FMad(a,b,c)
  %7422 = fmul fast float %7364, %7418
  %7423 = fsub fast float -0.000000e+00, %7422
  %7424 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7364, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7425

; <label>:7425                                    ; preds = %7425, %7350
  %7426 = phi float [ 0.000000e+00, %7350 ], [ %7458, %7425 ]
  %7427 = phi float [ 0.000000e+00, %7350 ], [ %7460, %7425 ]
  %7428 = phi i32 [ 0, %7350 ], [ %7461, %7425 ]
  %7429 = mul i32 %7428, 2
  %7430 = add i32 0, %7429
  %7431 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7430
  %7432 = load float, float* %7431, align 4
  %7433 = mul i32 %7428, 2
  %7434 = add i32 1, %7433
  %7435 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7434
  %7436 = load float, float* %7435, align 4
  %7437 = fmul fast float %7420, %7432
  %7438 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7423, float %7437)  ; FMad(a,b,c)
  %7439 = fmul fast float %7432, %7421
  %7440 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7424, float %7439)  ; FMad(a,b,c)
  %7441 = fadd fast float %7438, %7413
  %7442 = fadd fast float %7440, %7414
  %7443 = fmul fast float %7441, %7359
  %7444 = fmul fast float %7442, %7359
  %7445 = call float @dx.op.binary.f32(i32 35, float %7443, float %7355)  ; FMax(a,b)
  %7446 = call float @dx.op.binary.f32(i32 35, float %7444, float %7355)  ; FMax(a,b)
  %7447 = call float @dx.op.binary.f32(i32 36, float %7445, float %7356)  ; FMin(a,b)
  %7448 = call float @dx.op.binary.f32(i32 36, float %7446, float %7356)  ; FMin(a,b)
  %7449 = fadd fast float %7447, %7353
  %7450 = fadd fast float %7448, %7354
  %7451 = uitofp i32 %7390 to float
  %7452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7449, float %7450, float %7451, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = fsub fast float %7453, %7416
  %7455 = fsub fast float %7454, %7363
  %7456 = fcmp fast ogt float %7455, 0.000000e+00
  %7457 = select i1 %7456, float 1.000000e+00, float 0.000000e+00
  %7458 = fadd fast float %7457, %7426
  %7459 = select i1 %7456, float %7455, float 0.000000e+00
  %7460 = fadd fast float %7459, %7427
  %7461 = add nuw nsw i32 %7428, 1
  %7462 = icmp eq i32 %7461, 8
  br i1 %7462, label %7463, label %7425

; <label>:7463                                    ; preds = %7425
  %7464 = fdiv fast float 1.000000e+00, %7458
  %7465 = fmul fast float %7464, %7460
  %7466 = fdiv fast float 1.000000e+00, %7416
  %7467 = fmul fast float %7465, %7466
  %7468 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7469 = call float @dx.op.binary.f32(i32 35, float %7468, float 0.000000e+00)  ; FMax(a,b)
  %7470 = fmul fast float %7458, 1.250000e-01
  %7471 = call float @dx.op.unary.f32(i32 7, float %7470)  ; Saturate(value)
  %7472 = fmul fast float %7471, 2.000000e+00
  %7473 = fadd fast float %7472, -1.000000e+00
  %7474 = fcmp fast ogt float %7473, 0.000000e+00
  %7475 = fcmp fast olt float %7473, 0.000000e+00
  %7476 = zext i1 %7474 to i32
  %7477 = zext i1 %7475 to i32
  %7478 = sub nsw i32 %7476, %7477
  %7479 = sitofp i32 %7478 to float
  %7480 = fmul fast float %7479, %7473
  %7481 = fsub fast float 1.000000e+00, %7480
  %7482 = fmul fast float %7481, %7481
  %7483 = fmul fast float %7482, %7481
  %7484 = fsub fast float %7481, %7483
  %7485 = fmul fast float %7484, %7469
  %7486 = fsub fast float 1.000000e+00, %7483
  %7487 = fsub fast float %7486, %7485
  %7488 = fmul fast float %7479, 5.000000e-01
  %7489 = fmul fast float %7488, %7487
  %7490 = fsub fast float -5.000000e-01, %7489
  %7491 = fmul fast float %7490, %7324
  %7492 = fadd fast float %7491, 1.000000e+00
  %7493 = fmul fast float %7492, %7336
  br label %7494

; <label>:7494                                    ; preds = %7463, %7348
  %7495 = phi float [ %7493, %7463 ], [ %7336, %7348 ]
  %7496 = call float @dx.op.binary.f32(i32 36, float %7495, float %7495)  ; FMin(a,b)
  %7497 = call float @dx.op.binary.f32(i32 36, float %7495, float %7496)  ; FMin(a,b)
  %7498 = fcmp fast ogt float %7497, 0.000000e+00
  br i1 %7498, label %7499, label %7340, !dx.controlflow.hints !131

; <label>:7499                                    ; preds = %7494
  %7500 = fmul fast float %7495, %7258
  %7501 = fmul fast float %7495, %7259
  %7502 = fmul fast float %7495, %7260
  %7503 = fsub fast float %7242, %4641
  %7504 = fcmp fast ogt float %7503, 0.000000e+00
  %7505 = fsub fast float %168, %4641
  %7506 = fcmp fast ogt float %7505, 0.000000e+00
  %7507 = xor i1 %7506, %7504
  %7508 = fsub fast float %4641, %7242
  %7509 = fmul fast float %7508, 2.000000e+00
  %7510 = fadd fast float %7509, %7242
  %7511 = select i1 %7507, float %7242, float %7510
  %7512 = fsub fast float %7511, %168
  %7513 = call float @dx.op.dot3.f32(i32 55, float %7268, float %7269, float %7512, float %7268, float %7269, float %7512)  ; Dot3(ax,ay,az,bx,by,bz)
  %7514 = call float @dx.op.unary.f32(i32 25, float %7513)  ; Rsqrt(value)
  %7515 = fmul fast float %7514, %7268
  %7516 = fmul fast float %7514, %7269
  %7517 = fmul fast float %7514, %7512
  %7518 = fsub fast float %4641, %168
  %7519 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7518)  ; Dot3(ax,ay,az,bx,by,bz)
  %7520 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7515, float %7516, float %7517)  ; Dot3(ax,ay,az,bx,by,bz)
  %7521 = fdiv fast float 1.000000e+00, %7520
  %7522 = fmul fast float %7521, %7519
  %7523 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7505, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7524 = fcmp fast ogt float %7523, 0.000000e+00
  %7525 = fcmp fast olt float %7523, 0.000000e+00
  %7526 = zext i1 %7524 to i32
  %7527 = zext i1 %7525 to i32
  %7528 = sub nsw i32 %7526, %7527
  %7529 = sitofp i32 %7528 to float
  %7530 = fsub fast float %7511, %4641
  %7531 = call float @dx.op.dot3.f32(i32 55, float %7268, float %7269, float %7530, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = fcmp fast ogt float %7531, 0.000000e+00
  %7533 = fcmp fast olt float %7531, 0.000000e+00
  %7534 = zext i1 %7532 to i32
  %7535 = zext i1 %7533 to i32
  %7536 = sub nsw i32 %7534, %7535
  %7537 = sitofp i32 %7536 to float
  %7538 = fcmp fast une float %7529, %7537
  br i1 %7538, label %7539, label %7549

; <label>:7539                                    ; preds = %7499
  %7540 = fmul fast float %7522, %7517
  %7541 = fmul fast float %7522, %7516
  %7542 = fmul fast float %7522, %7515
  %7543 = fmul fast float %7542, %7542
  %7544 = fmul fast float %7541, %7541
  %7545 = fadd fast float %7543, %7544
  %7546 = fmul fast float %7540, %7540
  %7547 = fadd fast float %7545, %7546
  %7548 = call float @dx.op.unary.f32(i32 24, float %7547)  ; Sqrt(value)
  br label %7561

; <label>:7549                                    ; preds = %7499
  %7550 = icmp slt i32 %7528, 0
  br i1 %7550, label %7551, label %7561

; <label>:7551                                    ; preds = %7549
  %7552 = fsub fast float %166, %7240
  %7553 = fsub fast float %167, %7241
  %7554 = fsub fast float %168, %7511
  %7555 = fmul fast float %7552, %7552
  %7556 = fmul fast float %7553, %7553
  %7557 = fadd fast float %7555, %7556
  %7558 = fmul fast float %7554, %7554
  %7559 = fadd fast float %7557, %7558
  %7560 = call float @dx.op.unary.f32(i32 24, float %7559)  ; Sqrt(value)
  br label %7561

; <label>:7561                                    ; preds = %7551, %7549, %7539
  %7562 = phi float [ %7548, %7539 ], [ %7560, %7551 ], [ 0.000000e+00, %7549 ]
  %7563 = and i1 %7506, %7504
  %7564 = fsub fast float -0.000000e+00, %7562
  %7565 = select i1 %7563, float -0.000000e+00, float %7564
  %7566 = fmul fast float %4642, 0x3FF7154760000000
  %7567 = fmul fast float %7566, %7565
  %7568 = fmul fast float %4643, 0x3FF7154760000000
  %7569 = fmul fast float %7568, %7565
  %7570 = fmul fast float %4644, 0x3FF7154760000000
  %7571 = fmul fast float %7570, %7565
  %7572 = call float @dx.op.unary.f32(i32 21, float %7567)  ; Exp(value)
  %7573 = call float @dx.op.unary.f32(i32 21, float %7569)  ; Exp(value)
  %7574 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7575 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7576 = call float @dx.op.unary.f32(i32 7, float %7573)  ; Saturate(value)
  %7577 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7578 = fmul fast float %7500, %7575
  %7579 = fmul fast float %7501, %7576
  %7580 = fmul fast float %7502, %7577
  %7581 = fsub fast float %7274, %4841
  %7582 = fsub fast float %7275, %4840
  %7583 = fsub fast float %7276, %4839
  %7584 = call float @dx.op.dot3.f32(i32 55, float %7581, float %7582, float %7583, float %7581, float %7582, float %7583)  ; Dot3(ax,ay,az,bx,by,bz)
  %7585 = call float @dx.op.unary.f32(i32 25, float %7584)  ; Rsqrt(value)
  %7586 = fmul fast float %7585, %7581
  %7587 = fmul fast float %7585, %7582
  %7588 = fmul fast float %7585, %7583
  %7589 = call float @dx.op.dot3.f32(i32 55, float %7274, float %7275, float %7276, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7590 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4837, float %4836, float %7586, float %7587, float %7588)  ; Dot3(ax,ay,az,bx,by,bz)
  %7591 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7592 = fmul fast float %7591, %7281
  %7593 = fmul fast float %7591, %7591
  %7594 = fmul fast float %7593, %4881
  %7595 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7596 = fmul fast float %7592, %7595
  %7597 = bitcast float %7271 to i32
  %7598 = ashr i32 %7597, 1
  %7599 = sub nsw i32 1597463007, %7598
  %7600 = bitcast i32 %7599 to float
  %7601 = fmul fast float %7600, %7268
  %7602 = fmul fast float %7600, %7269
  %7603 = fmul fast float %7600, %7270
  %7604 = fsub fast float %7601, %4841
  %7605 = fsub fast float %7602, %4840
  %7606 = fsub fast float %7603, %4839
  %7607 = call float @dx.op.dot3.f32(i32 55, float %7604, float %7605, float %7606, float %7604, float %7605, float %7606)  ; Dot3(ax,ay,az,bx,by,bz)
  %7608 = call float @dx.op.unary.f32(i32 25, float %7607)  ; Rsqrt(value)
  %7609 = fmul fast float %7604, %7608
  %7610 = fmul fast float %7605, %7608
  %7611 = fmul fast float %7606, %7608
  %7612 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %7609, float %7610, float %7611)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = fmul fast float %7612, %7612
  %7614 = call float @dx.op.unary.f32(i32 6, float %7589)  ; FAbs(value)
  %7615 = fsub fast float 1.000000e+00, %4874
  %7616 = fmul fast float %4856, %4856
  %7617 = fmul fast float %7616, %7615
  %7618 = fadd fast float %7617, %4874
  %7619 = bitcast float %7618 to i32
  %7620 = ashr i32 %7619, 1
  %7621 = add nsw i32 %7620, 532487669
  %7622 = bitcast i32 %7621 to float
  %7623 = fadd fast float %7622, %4856
  %7624 = fmul fast float %4874, %7613
  %7625 = fsub fast float 1.000000e+00, %7613
  %7626 = fadd fast float %7625, %7624
  %7627 = fmul fast float %7614, %7614
  %7628 = fmul fast float %7627, %7615
  %7629 = fadd fast float %7628, %4874
  %7630 = bitcast float %7629 to i32
  %7631 = ashr i32 %7630, 1
  %7632 = add nsw i32 %7631, 532487669
  %7633 = bitcast i32 %7632 to float
  %7634 = fadd fast float %7633, %7614
  %7635 = fmul fast float %7626, %7626
  %7636 = fmul fast float %7635, %7623
  %7637 = fmul fast float %7636, %7634
  %7638 = fdiv fast float 1.000000e+00, %7637
  %7639 = bitcast float %4874 to i32
  %7640 = sitofp i32 %7639 to float
  %7641 = fmul fast float %7640, 0x3FE7F73180000000
  %7642 = fadd fast float %7641, 0x41AFE27C40000000
  %7643 = fptosi float %7642 to i32
  %7644 = bitcast i32 %7643 to float
  %7645 = fmul fast float %7237, 0x3FD80E9D60000000
  %7646 = fmul fast float %7645, %7600
  %7647 = fadd fast float %7644, %7646
  %7648 = bitcast float %7647 to i32
  %7649 = sub nsw i32 2129859010, %7648
  %7650 = bitcast i32 %7649 to float
  %7651 = fmul fast float %4874, %7638
  %7652 = fmul fast float %7651, %7644
  %7653 = fmul fast float %7652, %7650
  %7654 = call float @dx.op.unary.f32(i32 6, float %7590)  ; FAbs(value)
  %7655 = fsub fast float 1.000000e+00, %7654
  %7656 = bitcast float %7655 to i32
  %7657 = sitofp i32 %7656 to float
  %7658 = fmul fast float %7657, 5.000000e+00
  %7659 = fadd fast float %7658, 0xC1EFBF8940000000
  %7660 = fptosi float %7659 to i32
  %7661 = bitcast i32 %7660 to float
  %7662 = fsub fast float 1.000000e+00, %4848
  %7663 = fsub fast float 1.000000e+00, %4849
  %7664 = fsub fast float 1.000000e+00, %4854
  %7665 = fmul fast float %7661, %7662
  %7666 = fmul fast float %7661, %7663
  %7667 = fmul fast float %7661, %7664
  %7668 = fadd fast float %7665, %4848
  %7669 = fadd fast float %7666, %4849
  %7670 = fadd fast float %7667, %4854
  br i1 %4993, label %7671, label %7694

; <label>:7671                                    ; preds = %7561
  %7672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4219, float %7654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7673 = extractvalue %dx.types.ResRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.ResRet.f32 %7672, 1
  %7675 = extractvalue %dx.types.ResRet.f32 %7672, 2
  %7676 = fadd fast float %7673, -5.000000e-01
  %7677 = fadd fast float %7674, -5.000000e-01
  %7678 = fadd fast float %7675, -5.000000e-01
  %7679 = fmul fast float %4848, 4.000000e+00
  %7680 = fmul fast float %7679, %7662
  %7681 = fmul fast float %7680, %7676
  %7682 = fmul fast float %4849, 4.000000e+00
  %7683 = fmul fast float %7682, %7663
  %7684 = fmul fast float %7683, %7677
  %7685 = fmul fast float %4854, 4.000000e+00
  %7686 = fmul fast float %7685, %7664
  %7687 = fmul fast float %7686, %7678
  %7688 = fadd fast float %7681, %7668
  %7689 = fadd fast float %7684, %7669
  %7690 = fadd fast float %7687, %7670
  %7691 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7692 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  %7693 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  br label %7694

; <label>:7694                                    ; preds = %7671, %7561
  %7695 = phi float [ %7691, %7671 ], [ %7668, %7561 ]
  %7696 = phi float [ %7692, %7671 ], [ %7669, %7561 ]
  %7697 = phi float [ %7693, %7671 ], [ %7670, %7561 ]
  %7698 = fmul fast float %7589, 9.843750e-01
  %7699 = fadd fast float %7698, 7.812500e-03
  %7700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7699, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 2
  %7702 = extractvalue %dx.types.ResRet.f32 %7700, 3
  %7703 = fmul fast float %7701, %4848
  %7704 = fmul fast float %7701, %4849
  %7705 = fmul fast float %7701, %4854
  %7706 = fadd fast float %7703, %7702
  %7707 = fadd fast float %7704, %7702
  %7708 = fadd fast float %7705, %7702
  br i1 %4993, label %7709, label %7732

; <label>:7709                                    ; preds = %7694
  %7710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4219, float %7589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.ResRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.ResRet.f32 %7710, 2
  %7714 = fadd fast float %7711, -5.000000e-01
  %7715 = fadd fast float %7712, -5.000000e-01
  %7716 = fadd fast float %7713, -5.000000e-01
  %7717 = fmul fast float %4848, 4.000000e+00
  %7718 = fmul fast float %7717, %7662
  %7719 = fmul fast float %7718, %7714
  %7720 = fmul fast float %4849, 4.000000e+00
  %7721 = fmul fast float %7720, %7663
  %7722 = fmul fast float %7721, %7715
  %7723 = fmul fast float %4854, 4.000000e+00
  %7724 = fmul fast float %7723, %7664
  %7725 = fmul fast float %7724, %7716
  %7726 = fadd fast float %7719, %7706
  %7727 = fadd fast float %7722, %7707
  %7728 = fadd fast float %7725, %7708
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7730 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7731 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  br label %7732

; <label>:7732                                    ; preds = %7709, %7694
  %7733 = phi float [ %7729, %7709 ], [ %7706, %7694 ]
  %7734 = phi float [ %7730, %7709 ], [ %7707, %7694 ]
  %7735 = phi float [ %7731, %7709 ], [ %7708, %7694 ]
  %7736 = call float @dx.op.binary.f32(i32 35, float %7734, float %7735)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float %7733, float %7736)  ; FMax(a,b)
  %7738 = fsub fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7695, %7653
  %7740 = fmul fast float %7696, %7653
  %7741 = fmul fast float %7697, %7653
  %7742 = fsub fast float 1.000000e+00, %7590
  %7743 = bitcast float %7742 to i32
  %7744 = sitofp i32 %7743 to float
  %7745 = fmul fast float %7744, 5.000000e+00
  %7746 = fadd fast float %7745, 0xC1EFBF8940000000
  %7747 = fptosi float %7746 to i32
  %7748 = bitcast i32 %7747 to float
  %7749 = fmul fast float %7748, %4218
  %7750 = fmul fast float %7738, %7749
  %7751 = fmul fast float %7750, %5535
  %7752 = fmul fast float %7750, %5536
  %7753 = fmul fast float %7750, %5537
  %7754 = fadd fast float %7751, %7739
  %7755 = fadd fast float %7752, %7740
  %7756 = fadd fast float %7753, %7741
  %7757 = fmul fast float %7578, %4239
  %7758 = fmul fast float %7757, %7596
  %7759 = fmul fast float %7758, %7738
  %7760 = fmul fast float %7579, %4239
  %7761 = fmul fast float %7760, %7596
  %7762 = fmul fast float %7761, %7738
  %7763 = fmul fast float %7580, %4239
  %7764 = fmul fast float %7763, %7596
  %7765 = fmul fast float %7764, %7738
  %7766 = fadd fast float %7759, %7211
  %7767 = fadd fast float %7762, %7212
  %7768 = fadd fast float %7765, %7213
  %7769 = fmul fast float %7758, %7754
  %7770 = fmul fast float %7761, %7755
  %7771 = fmul fast float %7764, %7756
  %7772 = fadd fast float %7769, %7208
  %7773 = fadd fast float %7770, %7209
  %7774 = fadd fast float %7771, %7210
  br label %7340

; <label>:7775                                    ; preds = %7340
  br label %7776

; <label>:7776                                    ; preds = %7775, %7174
  %7777 = phi float [ %7176, %7174 ], [ %7341, %7775 ]
  %7778 = phi float [ %7177, %7174 ], [ %7342, %7775 ]
  %7779 = phi float [ %7178, %7174 ], [ %7343, %7775 ]
  %7780 = phi float [ %7179, %7174 ], [ %7344, %7775 ]
  %7781 = phi float [ %7180, %7174 ], [ %7345, %7775 ]
  %7782 = phi float [ %7181, %7174 ], [ %7346, %7775 ]
  %7783 = add i32 %7175, 1
  %7784 = icmp ugt i32 %7783, %7171
  br i1 %7784, label %7785, label %7174

; <label>:7785                                    ; preds = %7776
  br label %7786

; <label>:7786                                    ; preds = %7785, %7124, %7114
  %7787 = phi float [ %7115, %7114 ], [ %7115, %7124 ], [ %7777, %7785 ]
  %7788 = phi float [ %7116, %7114 ], [ %7116, %7124 ], [ %7778, %7785 ]
  %7789 = phi float [ %7117, %7114 ], [ %7117, %7124 ], [ %7779, %7785 ]
  %7790 = phi float [ %7118, %7114 ], [ %7118, %7124 ], [ %7780, %7785 ]
  %7791 = phi float [ %7119, %7114 ], [ %7119, %7124 ], [ %7781, %7785 ]
  %7792 = phi float [ %7120, %7114 ], [ %7120, %7124 ], [ %7782, %7785 ]
  %7793 = fmul fast float %4239, %4239
  %7794 = fsub fast float 1.000000e+00, %7793
  %7795 = call float @dx.op.dot3.f32(i32 55, float %7794, float %7794, float %7794, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7796 = fsub fast float 1.000000e+00, %7795
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = fmul fast float %7798, %5541
  %7800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7800, 3
  %7802 = fsub fast float 1.000000e+00, %4217
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fadd fast float %7792, %4216
  %7805 = fmul fast float %7804, %4217
  %7806 = fmul fast float %7803, %7801
  %7807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7808 = extractvalue %dx.types.CBufRet.f32 %7807, 3
  %7809 = fmul fast float %7790, %4845
  %7810 = fmul fast float %7791, %4846
  %7811 = fmul fast float %7792, %4847
  %7812 = fcmp fast ogt float %91, %188
  %7813 = and i1 %7812, %4647
  %7814 = or i1 %4653, %7813
  %7815 = icmp eq i32 %4646, 2
  %7816 = fcmp fast ole float %91, %188
  %7817 = and i1 %7816, %7815
  %7818 = or i1 %7817, %7814
  br i1 %7813, label %7819, label %8076

; <label>:7819                                    ; preds = %7786
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 3
  %7823 = fmul fast float %7821, %103
  %7824 = fmul fast float %7822, %104
  %7825 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7826 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7827 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7825, float %7826, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7828 = extractvalue %dx.types.ResRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.ResRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.ResRet.f32 %7827, 2
  %7831 = extractvalue %dx.types.ResRet.f32 %7827, 3
  %7832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7825, float %7826, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7833 = extractvalue %dx.types.ResRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.ResRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.ResRet.f32 %7832, 2
  %7836 = extractvalue %dx.types.ResRet.f32 %7832, 3
  %7837 = call float @dx.op.binary.f32(i32 35, float %7829, float %7830)  ; FMax(a,b)
  %7838 = call float @dx.op.binary.f32(i32 35, float %7828, float %7837)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 35, float %7838, float %7831)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 36, float %7834, float %7835)  ; FMin(a,b)
  %7841 = call float @dx.op.binary.f32(i32 36, float %7833, float %7840)  ; FMin(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7841, float %7836)  ; FMin(a,b)
  %7843 = fmul fast float %7839, 2.550000e+02
  %7844 = fadd fast float %7843, 0x3F70101020000000
  %7845 = fptoui float %7844 to i32
  %7846 = fmul fast float %7842, 2.550000e+02
  %7847 = fadd fast float %7846, 0x3F70101020000000
  %7848 = fptoui float %7847 to i32
  %7849 = icmp ult i32 %7845, %7848
  br i1 %7849, label %7850, label %8018

; <label>:7850                                    ; preds = %7819
  %7851 = fcmp fast ogt float %90, 9.843750e-01
  %7852 = fadd fast float %91, -4.000000e+00
  %7853 = select i1 %7851, float -4.000000e+00, float %7852
  %7854 = call float @dx.op.binary.f32(i32 35, float %7853, float 0.000000e+00)  ; FMax(a,b)
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = fadd fast float %7856, %7854
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = fmul fast float %7857, %7858
  %7860 = call float @dx.op.unary.f32(i32 23, float %7859)  ; Log(value)
  %7861 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7862 = fmul fast float %7861, %7860
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 2
  %7865 = fmul fast float %7862, %7864
  %7866 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  %7867 = uitofp i32 %7845 to float
  %7868 = uitofp i32 %7848 to float
  %7869 = fadd fast float %7867, 5.000000e-01
  %7870 = fadd fast float %7868, 5.000000e-01
  %7871 = fmul fast float %7864, %7869
  %7872 = fmul fast float %7864, %7870
  %7873 = fadd fast float %7871, 0x3F0FFB4800000000
  %7874 = fadd fast float %7872, 0xBF0FFB4800000000
  %7875 = call float @dx.op.binary.f32(i32 35, float %7866, float %7873)  ; FMax(a,b)
  %7876 = call float @dx.op.binary.f32(i32 36, float %7875, float %7874)  ; FMin(a,b)
  %7877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7878 = extractvalue %dx.types.CBufRet.f32 %7877, 1
  %7879 = extractvalue %dx.types.CBufRet.f32 %7877, 2
  %7880 = extractvalue %dx.types.CBufRet.f32 %7877, 0
  %7881 = fmul fast float %7878, %7876
  %7882 = fadd fast float %7880, %7881
  %7883 = fadd fast float %7880, %7879
  %7884 = fsub fast float %7878, %7879
  %7885 = fadd fast float %7884, %7880
  %7886 = call float @dx.op.binary.f32(i32 35, float %7882, float %7883)  ; FMax(a,b)
  %7887 = call float @dx.op.binary.f32(i32 36, float %7886, float %7885)  ; FMin(a,b)
  %7888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7825, float %7826, float %7887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7889 = extractvalue %dx.types.ResRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.ResRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.ResRet.f32 %7888, 2
  %7892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.i32 %7892, 0
  %7894 = extractvalue %dx.types.CBufRet.i32 %7892, 1
  %7895 = uitofp i32 %7893 to float
  %7896 = uitofp i32 %7894 to float
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = fmul fast float %7895, %7825
  %7901 = fmul fast float %7896, %7826
  %7902 = fadd fast float %7900, -5.000000e-01
  %7903 = fadd fast float %7901, -5.000000e-01
  %7904 = call float @dx.op.unary.f32(i32 22, float %7902)  ; Frc(value)
  %7905 = call float @dx.op.unary.f32(i32 22, float %7903)  ; Frc(value)
  %7906 = fmul fast float %7904, %7904
  %7907 = fmul fast float %7906, %7904
  %7908 = fsub fast float 3.000000e+00, %7904
  %7909 = fmul fast float %7906, %7908
  %7910 = fmul fast float %7904, 3.000000e+00
  %7911 = fmul fast float %7907, 3.000000e+00
  %7912 = fmul fast float %7906, 6.000000e+00
  %7913 = fsub fast float %7911, %7912
  %7914 = fadd fast float %7913, 4.000000e+00
  %7915 = fmul fast float %7914, 0x3FC5555560000000
  %7916 = fmul fast float %7907, -3.000000e+00
  %7917 = fadd fast float %7906, %7904
  %7918 = fmul fast float %7917, 3.000000e+00
  %7919 = fadd fast float %7916, 1.000000e+00
  %7920 = fadd fast float %7919, %7918
  %7921 = fmul fast float %7907, 0x3FC5555560000000
  %7922 = fmul fast float %7905, %7905
  %7923 = fmul fast float %7922, %7905
  %7924 = fsub fast float 3.000000e+00, %7905
  %7925 = fmul fast float %7922, %7924
  %7926 = fmul fast float %7905, 3.000000e+00
  %7927 = fmul fast float %7923, 3.000000e+00
  %7928 = fmul fast float %7922, 6.000000e+00
  %7929 = fsub fast float %7927, %7928
  %7930 = fadd fast float %7929, 4.000000e+00
  %7931 = fmul fast float %7930, 0x3FC5555560000000
  %7932 = fmul fast float %7923, -3.000000e+00
  %7933 = fadd fast float %7922, %7905
  %7934 = fmul fast float %7933, 3.000000e+00
  %7935 = fadd fast float %7932, 1.000000e+00
  %7936 = fadd fast float %7935, %7934
  %7937 = fmul fast float %7923, 0x3FC5555560000000
  %7938 = fadd fast float %7904, 1.000000e+00
  %7939 = fsub fast float 1.000000e+00, %7910
  %7940 = fadd fast float %7939, %7909
  %7941 = fadd fast float %7940, %7914
  %7942 = fmul fast float %7941, 0x3FC5555560000000
  %7943 = fdiv fast float %7915, %7942
  %7944 = fsub fast float %7938, %7943
  %7945 = fsub fast float 1.000000e+00, %7904
  %7946 = fadd fast float %7920, %7907
  %7947 = fmul fast float %7946, 0x3FC5555560000000
  %7948 = fdiv fast float %7921, %7947
  %7949 = fadd fast float %7945, %7948
  %7950 = fadd fast float %7905, 1.000000e+00
  %7951 = fsub fast float 1.000000e+00, %7926
  %7952 = fadd fast float %7951, %7925
  %7953 = fadd fast float %7952, %7930
  %7954 = fmul fast float %7953, 0x3FC5555560000000
  %7955 = fdiv fast float %7931, %7954
  %7956 = fsub fast float %7950, %7955
  %7957 = fsub fast float 1.000000e+00, %7905
  %7958 = fadd fast float %7936, %7923
  %7959 = fmul fast float %7958, 0x3FC5555560000000
  %7960 = fdiv fast float %7937, %7959
  %7961 = fadd fast float %7960, %7957
  %7962 = fmul fast float %7944, %7898
  %7963 = fsub fast float %7825, %7962
  %7964 = fmul fast float %7949, %7898
  %7965 = fadd fast float %7964, %7825
  %7966 = fmul fast float %7961, %7899
  %7967 = fadd fast float %7966, %7826
  %7968 = fmul fast float %7956, %7899
  %7969 = fsub fast float %7826, %7968
  %7970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7963, float %7969, float %7887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7971 = extractvalue %dx.types.ResRet.f32 %7970, 0
  %7972 = extractvalue %dx.types.ResRet.f32 %7970, 1
  %7973 = extractvalue %dx.types.ResRet.f32 %7970, 2
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7965, float %7969, float %7887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7963, float %7967, float %7887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7979 = extractvalue %dx.types.ResRet.f32 %7978, 0
  %7980 = extractvalue %dx.types.ResRet.f32 %7978, 1
  %7981 = extractvalue %dx.types.ResRet.f32 %7978, 2
  %7982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %7965, float %7967, float %7887, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7983 = extractvalue %dx.types.ResRet.f32 %7982, 0
  %7984 = extractvalue %dx.types.ResRet.f32 %7982, 1
  %7985 = extractvalue %dx.types.ResRet.f32 %7982, 2
  %7986 = fsub fast float %7979, %7971
  %7987 = fsub fast float %7980, %7972
  %7988 = fsub fast float %7981, %7973
  %7989 = fmul fast float %7986, %7959
  %7990 = fmul fast float %7987, %7959
  %7991 = fmul fast float %7988, %7959
  %7992 = fadd fast float %7989, %7971
  %7993 = fadd fast float %7990, %7972
  %7994 = fadd fast float %7991, %7973
  %7995 = fsub fast float %7983, %7975
  %7996 = fsub fast float %7984, %7976
  %7997 = fsub fast float %7985, %7977
  %7998 = fmul fast float %7995, %7959
  %7999 = fmul fast float %7996, %7959
  %8000 = fmul fast float %7997, %7959
  %8001 = fsub fast float %7975, %7992
  %8002 = fadd fast float %8001, %7998
  %8003 = fsub fast float %7976, %7993
  %8004 = fadd fast float %8003, %7999
  %8005 = fsub fast float %7977, %7994
  %8006 = fadd fast float %8005, %8000
  %8007 = fmul fast float %8002, %7947
  %8008 = fmul fast float %8004, %7947
  %8009 = fmul fast float %8006, %7947
  %8010 = fadd fast float %8007, %7992
  %8011 = fadd fast float %8008, %7993
  %8012 = fadd fast float %8009, %7994
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 1
  %8015 = fmul fast float %8010, %8014
  %8016 = fmul fast float %8011, %8014
  %8017 = fmul fast float %8012, %8014
  br label %8018

; <label>:8018                                    ; preds = %7850, %7819
  %8019 = phi float [ %7889, %7850 ], [ 1.000000e+00, %7819 ]
  %8020 = phi float [ %7890, %7850 ], [ 1.000000e+00, %7819 ]
  %8021 = phi float [ %7891, %7850 ], [ 1.000000e+00, %7819 ]
  %8022 = phi float [ %8015, %7850 ], [ 0.000000e+00, %7819 ]
  %8023 = phi float [ %8016, %7850 ], [ 0.000000e+00, %7819 ]
  %8024 = phi float [ %8017, %7850 ], [ 0.000000e+00, %7819 ]
  %8025 = fmul fast float %8022, %7796
  %8026 = fmul fast float %8023, %7796
  %8027 = fmul fast float %8024, %7796
  %8028 = call float @dx.op.dot3.f32(i32 55, float %8019, float %8020, float %8021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8025, float %8026, float %8027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = select i1 %228, float %8028, float %8019
  %8031 = select i1 %228, float %8028, float %8020
  %8032 = select i1 %228, float 1.000000e+00, float %8021
  %8033 = select i1 %228, float %8029, float %8025
  %8034 = select i1 %228, float 0.000000e+00, float %8026
  %8035 = select i1 %228, float 0.000000e+00, float %8027
  %8036 = fmul fast float %8030, %7809
  %8037 = fmul fast float %8031, %7810
  %8038 = fmul fast float %8032, %7811
  %8039 = fadd fast float %8036, %8033
  %8040 = fadd fast float %8037, %8034
  %8041 = fadd fast float %8035, %8038
  %8042 = fmul fast float %8030, %7787
  %8043 = fmul fast float %8031, %7788
  %8044 = fmul fast float %8032, %7789
  %8045 = fmul fast float %136, %7821
  %8046 = fmul fast float %138, %7822
  %8047 = fsub fast float 1.000000e+00, %8045
  %8048 = fsub fast float 1.000000e+00, %8046
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 0
  %8051 = extractvalue %dx.types.CBufRet.f32 %8049, 1
  %8052 = extractvalue %dx.types.CBufRet.f32 %8049, 2
  %8053 = fmul fast float %8047, %8050
  %8054 = fmul fast float %8047, %8051
  %8055 = fmul fast float %8047, %8052
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %8060 = fmul fast float %8048, %8057
  %8061 = fmul fast float %8048, %8058
  %8062 = fmul fast float %8048, %8059
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 1
  %8066 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %8067 = fadd fast float %8060, %8064
  %8068 = fadd fast float %8067, %8053
  %8069 = fadd fast float %8061, %8065
  %8070 = fadd fast float %8069, %8054
  %8071 = fadd fast float %8062, %8066
  %8072 = fadd fast float %8071, %8055
  %8073 = fmul fast float %8068, %188
  %8074 = fmul fast float %8070, %188
  %8075 = fmul fast float %8072, %188
  br label %8076

; <label>:8076                                    ; preds = %8018, %7786
  %8077 = phi float [ %8073, %8018 ], [ %166, %7786 ]
  %8078 = phi float [ %8074, %8018 ], [ %167, %7786 ]
  %8079 = phi float [ %8075, %8018 ], [ %168, %7786 ]
  %8080 = phi float [ %188, %8018 ], [ %91, %7786 ]
  %8081 = phi float [ %8039, %8018 ], [ %7809, %7786 ]
  %8082 = phi float [ %8040, %8018 ], [ %7810, %7786 ]
  %8083 = phi float [ %8041, %8018 ], [ %7811, %7786 ]
  %8084 = phi float [ %8042, %8018 ], [ %7787, %7786 ]
  %8085 = phi float [ %8043, %8018 ], [ %7788, %7786 ]
  %8086 = phi float [ %8044, %8018 ], [ %7789, %7786 ]
  %8087 = phi float [ %8019, %8018 ], [ 1.000000e+00, %7786 ]
  br i1 %7818, label %9242, label %8088

; <label>:8088                                    ; preds = %8076
  %8089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8090 = extractvalue %dx.types.CBufRet.f32 %8089, 0
  %8091 = extractvalue %dx.types.CBufRet.f32 %8089, 1
  %8092 = extractvalue %dx.types.CBufRet.f32 %8089, 2
  %8093 = extractvalue %dx.types.CBufRet.f32 %8089, 3
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8098 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.CBufRet.f32 %8104, 1
  %8107 = extractvalue %dx.types.CBufRet.f32 %8104, 2
  %8108 = extractvalue %dx.types.CBufRet.f32 %8104, 3
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 3
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8114 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8115 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %8116 = fcmp fast olt float %8115, -5.000000e-01
  %8117 = call float @dx.op.dot3.f32(i32 55, float %8077, float %8078, float %8079, float %8077, float %8078, float %8079)  ; Dot3(ax,ay,az,bx,by,bz)
  %8118 = call float @dx.op.unary.f32(i32 25, float %8117)  ; Rsqrt(value)
  %8119 = fmul fast float %8118, %8117
  %8120 = fmul fast float %8118, %8077
  %8121 = fmul fast float %8118, %8078
  %8122 = fmul fast float %8118, %8079
  %8123 = fadd fast float %8119, %8093
  %8124 = call float @dx.op.dot3.f32(i32 55, float %8120, float %8121, float %8122, float %8090, float %8091, float %8092)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.i32 %8125, 1
  %8127 = and i32 %8126, 1
  %8128 = icmp ne i32 %8127, 0
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8131 = fcmp fast ogt float %8130, 0.000000e+00
  %8132 = and i1 %8128, %8131
  br i1 %8132, label %8133, label %8539, !dx.controlflow.hints !132

; <label>:8133                                    ; preds = %8088
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 3
  %8136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8137 = extractvalue %dx.types.CBufRet.f32 %8136, 2
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8140 = fsub fast float %8137, %8139
  %8141 = and i32 %8126, 2
  %8142 = extractvalue %dx.types.CBufRet.i32 %8125, 0
  %8143 = call i32 @dx.op.binary.i32(i32 40, i32 %8142, i32 3)  ; UMin(a,b)
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.CBufRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8148 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8149 = fsub fast float %8145, %8147
  %8150 = fsub fast float %8146, %8148
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 0
  %8153 = fcmp fast ogt float %8152, 0.000000e+00
  %8154 = fsub fast float -0.000000e+00, %8149
  %8155 = fsub fast float -0.000000e+00, %8150
  %8156 = call float @dx.op.dot2.f32(i32 54, float %8120, float %8121, float %8120, float %8121)  ; Dot2(ax,ay,bx,by)
  %8157 = call float @dx.op.dot2.f32(i32 54, float %8120, float %8121, float %8154, float %8155)  ; Dot2(ax,ay,bx,by)
  %8158 = fmul fast float %8157, 2.000000e+00
  %8159 = call float @dx.op.dot2.f32(i32 54, float %8154, float %8155, float %8154, float %8155)  ; Dot2(ax,ay,bx,by)
  %8160 = fmul fast float %8152, %8152
  %8161 = fsub fast float %8159, %8160
  %8162 = fmul fast float %8158, %8158
  %8163 = fmul fast float %8156, 4.000000e+00
  %8164 = fmul fast float %8163, %8161
  %8165 = fsub fast float %8162, %8164
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  br i1 %8166, label %8167, label %8182

; <label>:8167                                    ; preds = %8133
  %8168 = fcmp fast ogt float %8158, 0.000000e+00
  %8169 = call float @dx.op.unary.f32(i32 24, float %8165)  ; Sqrt(value)
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = select i1 %8168, float %8169, float %8170
  %8172 = fadd fast float %8171, %8158
  %8173 = fmul float %8172, -5.000000e-01
  %8174 = fdiv fast float %8173, %8156
  %8175 = call float @dx.op.binary.f32(i32 35, float %8174, float 0.000000e+00)  ; FMax(a,b)
  %8176 = call float @dx.op.binary.f32(i32 36, float %8119, float %8175)  ; FMin(a,b)
  %8177 = fdiv fast float %8161, %8173
  %8178 = call float @dx.op.binary.f32(i32 35, float %8177, float 0.000000e+00)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 36, float %8119, float %8178)  ; FMin(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8176, float %8179)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 35, float %8176, float %8179)  ; FMax(a,b)
  br label %8182

; <label>:8182                                    ; preds = %8167, %8133
  %8183 = phi float [ %8181, %8167 ], [ -1.000000e+00, %8133 ]
  %8184 = phi float [ %8180, %8167 ], [ -1.000000e+00, %8133 ]
  %8185 = phi i1 [ true, %8167 ], [ false, %8133 ]
  %8186 = and i1 %8153, %8185
  br i1 %8186, label %8187, label %8189

; <label>:8187                                    ; preds = %8182
  %8188 = fcmp fast oeq float %8184, %8183
  br i1 %8188, label %8492, label %8190

; <label>:8189                                    ; preds = %8182
  br i1 %8153, label %8492, label %8190

; <label>:8190                                    ; preds = %8189, %8187
  %8191 = phi float [ %8119, %8189 ], [ %8183, %8187 ]
  %8192 = phi float [ 0.000000e+00, %8189 ], [ %8184, %8187 ]
  %8193 = icmp ne i32 %8141, 0
  %8194 = fmul fast float %8191, %8122
  %8195 = fadd fast float %8194, %8135
  %8196 = fmul fast float %8195, %8191
  %8197 = select i1 %8193, float 0.000000e+00, float %8196
  %8198 = fcmp fast oeq float %8122, 0.000000e+00
  %8199 = fdiv fast float %8140, %8122
  %8200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8199)  ; FMax(a,b)
  %8201 = select i1 %8198, float %8191, float %8200
  %8202 = call float @dx.op.binary.f32(i32 36, float %8191, float %8201)  ; FMin(a,b)
  %8203 = fcmp fast ogt float %8122, 0.000000e+00
  %8204 = fcmp fast olt float %8140, 0.000000e+00
  br i1 %8203, label %8205, label %8262

; <label>:8205                                    ; preds = %8190
  %8206 = icmp eq i32 %8141, 0
  br i1 %8204, label %8207, label %8251

; <label>:8207                                    ; preds = %8205
  %8208 = select i1 %8206, float %8191, float 0.000000e+00
  %8209 = fsub fast float -0.000000e+00, %8208
  %8210 = call float @dx.op.unary.f32(i32 6, float %8209)  ; FAbs(value)
  %8211 = fmul fast float %8208, %8122
  %8212 = fadd fast float %8211, %8135
  %8213 = fmul fast float %8210, %8212
  %8214 = fsub fast float %8197, %8213
  %8215 = fsub fast float %8191, %8210
  %8216 = select i1 %8206, float %8215, float 0.000000e+00
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8228 = call float @dx.op.binary.f32(i32 36, float %8214, float %8227)  ; FMin(a,b)
  %8229 = fmul fast float %8225, %8216
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = fsub fast float %8222, %8218
  %8232 = fsub fast float %8223, %8219
  %8233 = fsub fast float %8224, %8220
  %8234 = fmul fast float %8230, %8231
  %8235 = fmul fast float %8230, %8232
  %8236 = fmul fast float %8230, %8233
  %8237 = fadd fast float %8234, %8218
  %8238 = fadd fast float %8235, %8219
  %8239 = fadd fast float %8236, %8220
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = fadd fast float %8242, %8241
  %8244 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8246 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8247 = fadd fast float %8246, %8245
  %8248 = call float @dx.op.unary.f32(i32 7, float %8247)  ; Saturate(value)
  %8249 = fmul fast float %8244, %8228
  %8250 = fmul fast float %8249, %8248
  br label %8492

; <label>:8251                                    ; preds = %8205
  br i1 %8206, label %8252, label %8273

; <label>:8252                                    ; preds = %8251
  %8253 = call float @dx.op.binary.f32(i32 36, float %8202, float %8192)  ; FMin(a,b)
  %8254 = fsub fast float %8202, %8253
  %8255 = fsub fast float %8254, %8191
  %8256 = call float @dx.op.unary.f32(i32 6, float %8255)  ; FAbs(value)
  %8257 = fadd fast float %8254, %8191
  %8258 = fmul fast float %8257, %8122
  %8259 = fadd fast float %8258, %8135
  %8260 = fmul fast float %8259, %8256
  %8261 = fsub fast float %8197, %8260
  br label %8273

; <label>:8262                                    ; preds = %8190
  br i1 %8204, label %8263, label %8273

; <label>:8263                                    ; preds = %8262
  %8264 = call float @dx.op.binary.f32(i32 35, float %8192, float %8202)  ; FMax(a,b)
  %8265 = icmp eq i32 %8141, 0
  %8266 = select i1 %8265, float %8202, float 0.000000e+00
  %8267 = fsub fast float -0.000000e+00, %8266
  %8268 = call float @dx.op.unary.f32(i32 6, float %8267)  ; FAbs(value)
  %8269 = fmul fast float %8266, %8122
  %8270 = fadd fast float %8269, %8135
  %8271 = fmul fast float %8268, %8270
  %8272 = fsub fast float %8197, %8271
  br label %8273

; <label>:8273                                    ; preds = %8263, %8262, %8252, %8251
  %8274 = phi float [ %8192, %8251 ], [ %8192, %8252 ], [ %8264, %8263 ], [ %8192, %8262 ]
  %8275 = phi float [ 0.000000e+00, %8251 ], [ %8256, %8252 ], [ %8268, %8263 ], [ 0.000000e+00, %8262 ]
  %8276 = phi float [ %8197, %8251 ], [ %8261, %8252 ], [ %8272, %8263 ], [ %8197, %8262 ]
  %8277 = phi float [ %8202, %8251 ], [ %8202, %8252 ], [ %8191, %8263 ], [ %8191, %8262 ]
  %8278 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8278, align 4, !tbaa !119, !noalias !133
  %8279 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8279, align 4, !tbaa !119, !noalias !133
  %8280 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8280, align 4, !tbaa !119, !noalias !133
  %8281 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8281, align 4, !tbaa !119, !noalias !133
  %8282 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8282, align 4, !tbaa !119, !noalias !133
  %8283 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8283, align 4, !tbaa !119, !noalias !133
  %8284 = icmp sgt i32 %8143, 0
  br i1 %8284, label %8285, label %8346

; <label>:8285                                    ; preds = %8273
  br label %8286

; <label>:8286                                    ; preds = %8335, %8285
  %8287 = phi i32 [ %8336, %8335 ], [ 0, %8285 ]
  %8288 = phi i32 [ %8337, %8335 ], [ 0, %8285 ]
  %8289 = add nuw i32 %8288, 171
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8289)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 0
  %8292 = extractvalue %dx.types.CBufRet.f32 %8290, 1
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.CBufRet.f32 %8293, 1
  %8296 = fsub fast float %8291, %8294
  %8297 = fsub fast float %8292, %8295
  %8298 = extractvalue %dx.types.CBufRet.f32 %8290, 2
  %8299 = fsub fast float -0.000000e+00, %8296
  %8300 = fsub fast float -0.000000e+00, %8297
  %8301 = call float @dx.op.dot2.f32(i32 54, float %8120, float %8121, float %8299, float %8300)  ; Dot2(ax,ay,bx,by)
  %8302 = fmul fast float %8301, 2.000000e+00
  %8303 = call float @dx.op.dot2.f32(i32 54, float %8299, float %8300, float %8299, float %8300)  ; Dot2(ax,ay,bx,by)
  %8304 = fmul fast float %8298, %8298
  %8305 = fsub fast float %8303, %8304
  %8306 = fmul fast float %8302, %8302
  %8307 = fmul fast float %8163, %8305
  %8308 = fsub fast float %8306, %8307
  %8309 = fcmp fast ogt float %8308, 0.000000e+00
  br i1 %8309, label %8310, label %8325

; <label>:8310                                    ; preds = %8286
  %8311 = fcmp fast ogt float %8302, 0.000000e+00
  %8312 = call float @dx.op.unary.f32(i32 24, float %8308)  ; Sqrt(value)
  %8313 = fsub fast float -0.000000e+00, %8312
  %8314 = select i1 %8311, float %8312, float %8313
  %8315 = fadd fast float %8314, %8302
  %8316 = fmul float %8315, -5.000000e-01
  %8317 = fdiv fast float %8316, %8156
  %8318 = call float @dx.op.binary.f32(i32 35, float %8317, float 0.000000e+00)  ; FMax(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8191, float %8318)  ; FMin(a,b)
  %8320 = fdiv fast float %8305, %8316
  %8321 = call float @dx.op.binary.f32(i32 35, float %8320, float 0.000000e+00)  ; FMax(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8191, float %8321)  ; FMin(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8319, float %8322)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 35, float %8319, float %8322)  ; FMax(a,b)
  br label %8325

; <label>:8325                                    ; preds = %8310, %8286
  %8326 = phi float [ %8324, %8310 ], [ -1.000000e+00, %8286 ]
  %8327 = phi float [ %8323, %8310 ], [ -1.000000e+00, %8286 ]
  %8328 = phi i1 [ true, %8310 ], [ false, %8286 ]
  br i1 %8328, label %8329, label %8335

; <label>:8329                                    ; preds = %8325
  %8330 = call float @dx.op.binary.f32(i32 35, float %8274, float %8327)  ; FMax(a,b)
  %8331 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8288
  store float %8330, float* %8331, align 4, !tbaa !119, !noalias !133
  %8332 = call float @dx.op.binary.f32(i32 35, float %8274, float %8326)  ; FMax(a,b)
  %8333 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8288
  store float %8332, float* %8333, align 4, !tbaa !119, !noalias !133
  %8334 = add nsw i32 %8287, 1
  br label %8335

; <label>:8335                                    ; preds = %8329, %8325
  %8336 = phi i32 [ %8334, %8329 ], [ %8287, %8325 ]
  %8337 = add nuw nsw i32 %8288, 1
  %8338 = icmp eq i32 %8337, %8143
  br i1 %8338, label %8339, label %8286

; <label>:8339                                    ; preds = %8335
  %8340 = load float, float* %8280, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8341 = load float, float* %8279, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  %8342 = load float, float* %8278, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  %8343 = load float, float* %8283, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8344 = load float, float* %8282, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  %8345 = load float, float* %8281, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  br label %8346

; <label>:8346                                    ; preds = %8339, %8273
  %8347 = phi float [ -1.000000e+00, %8273 ], [ %8345, %8339 ]
  %8348 = phi float [ -1.000000e+00, %8273 ], [ %8344, %8339 ]
  %8349 = phi float [ -1.000000e+00, %8273 ], [ %8343, %8339 ]
  %8350 = phi float [ -1.000000e+00, %8273 ], [ %8342, %8339 ]
  %8351 = phi float [ -1.000000e+00, %8273 ], [ %8341, %8339 ]
  %8352 = phi float [ -1.000000e+00, %8273 ], [ %8340, %8339 ]
  %8353 = phi i32 [ 0, %8273 ], [ %8336, %8339 ]
  %8354 = call float @dx.op.binary.f32(i32 36, float %8351, float %8352)  ; FMin(a,b)
  %8355 = call float @dx.op.binary.f32(i32 36, float %8350, float %8354)  ; FMin(a,b)
  %8356 = call float @dx.op.binary.f32(i32 35, float %8350, float %8351)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8356, float %8352)  ; FMin(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8350, float %8351)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 35, float %8358, float %8357)  ; FMax(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 35, float %8350, float %8360)  ; FMax(a,b)
  store float %8355, float* %8278, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  store float %8359, float* %8279, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %8361, float* %8280, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8362 = call float @dx.op.binary.f32(i32 36, float %8348, float %8349)  ; FMin(a,b)
  %8363 = call float @dx.op.binary.f32(i32 36, float %8347, float %8362)  ; FMin(a,b)
  %8364 = call float @dx.op.binary.f32(i32 35, float %8347, float %8348)  ; FMax(a,b)
  %8365 = call float @dx.op.binary.f32(i32 36, float %8364, float %8349)  ; FMin(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8347, float %8348)  ; FMin(a,b)
  %8367 = call float @dx.op.binary.f32(i32 35, float %8366, float %8365)  ; FMax(a,b)
  %8368 = call float @dx.op.binary.f32(i32 35, float %8348, float %8349)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 35, float %8347, float %8368)  ; FMax(a,b)
  store float %8363, float* %8281, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  store float %8367, float* %8282, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  store float %8369, float* %8283, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8370 = sub nsw i32 3, %8353
  %8371 = icmp sgt i32 %8370, 2
  br i1 %8371, label %8372, label %8410

; <label>:8372                                    ; preds = %8346
  %8373 = icmp eq i32 %8141, 0
  %8374 = fsub fast float %8191, %8275
  %8375 = select i1 %8373, float %8374, float %8275
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8379 = extractvalue %dx.types.CBufRet.f32 %8376, 2
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8384 = extractvalue %dx.types.CBufRet.f32 %8380, 3
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 3
  %8387 = call float @dx.op.binary.f32(i32 36, float %8276, float %8386)  ; FMin(a,b)
  %8388 = fmul fast float %8384, %8375
  %8389 = call float @dx.op.unary.f32(i32 7, float %8388)  ; Saturate(value)
  %8390 = fsub fast float %8381, %8377
  %8391 = fsub fast float %8382, %8378
  %8392 = fsub fast float %8383, %8379
  %8393 = fmul fast float %8389, %8390
  %8394 = fmul fast float %8389, %8391
  %8395 = fmul fast float %8389, %8392
  %8396 = fadd fast float %8393, %8377
  %8397 = fadd fast float %8394, %8378
  %8398 = fadd fast float %8395, %8379
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = fadd fast float %8401, %8400
  %8403 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8405 = extractvalue %dx.types.CBufRet.f32 %8399, 3
  %8406 = fadd fast float %8405, %8404
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8408 = fmul fast float %8403, %8387
  %8409 = fmul fast float %8408, %8407
  br label %8492

; <label>:8410                                    ; preds = %8346
  %8411 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8370
  %8412 = load float, float* %8411, align 4, !tbaa !119, !noalias !133
  %8413 = fcmp fast olt float %8412, %8277
  %8414 = icmp sgt i32 %8353, 0
  %8415 = and i1 %8414, %8413
  br i1 %8415, label %8416, label %8453

; <label>:8416                                    ; preds = %8410
  br label %8417

; <label>:8417                                    ; preds = %8446, %8416
  %8418 = phi float [ %8447, %8446 ], [ %8275, %8416 ]
  %8419 = phi float [ %8448, %8446 ], [ %8276, %8416 ]
  %8420 = phi float [ %8428, %8446 ], [ %8412, %8416 ]
  %8421 = phi i32 [ %8425, %8446 ], [ %8370, %8416 ]
  %8422 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8421
  %8423 = load float, float* %8422, align 4, !tbaa !119, !noalias !133
  %8424 = icmp slt i32 %8421, 2
  %8425 = add nsw i32 %8421, 1
  %8426 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8425
  %8427 = load float, float* %8426, align 4, !tbaa !119, !noalias !133
  %8428 = select i1 %8424, float %8427, float %8191
  %8429 = call float @dx.op.binary.f32(i32 36, float %8428, float %8423)  ; FMin(a,b)
  %8430 = call float @dx.op.binary.f32(i32 36, float %8277, float %8429)  ; FMin(a,b)
  %8431 = icmp eq i32 %8141, 0
  %8432 = fadd fast float %8430, %8420
  %8433 = fmul fast float %8432, %8122
  %8434 = fadd fast float %8433, %8135
  br i1 %8431, label %8440, label %8435

; <label>:8435                                    ; preds = %8417
  %8436 = fsub fast float %8430, %8420
  %8437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8436)  ; FMax(a,b)
  %8438 = fmul fast float %8437, %8434
  %8439 = fadd fast float %8438, %8419
  br label %8446

; <label>:8440                                    ; preds = %8417
  %8441 = fsub fast float %8420, %8430
  %8442 = call float @dx.op.unary.f32(i32 6, float %8441)  ; FAbs(value)
  %8443 = fadd fast float %8442, %8418
  %8444 = fmul fast float %8442, %8434
  %8445 = fsub fast float %8419, %8444
  br label %8446

; <label>:8446                                    ; preds = %8440, %8435
  %8447 = phi float [ %8437, %8435 ], [ %8443, %8440 ]
  %8448 = phi float [ %8439, %8435 ], [ %8445, %8440 ]
  %8449 = fcmp fast olt float %8428, %8277
  %8450 = icmp slt i32 %8425, 3
  %8451 = and i1 %8450, %8449
  br i1 %8451, label %8417, label %8452

; <label>:8452                                    ; preds = %8446
  br label %8453

; <label>:8453                                    ; preds = %8452, %8410
  %8454 = phi float [ %8275, %8410 ], [ %8447, %8452 ]
  %8455 = phi float [ %8276, %8410 ], [ %8448, %8452 ]
  %8456 = fsub fast float %8191, %8454
  %8457 = select i1 %8193, float %8454, float %8456
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.CBufRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.CBufRet.f32 %8462, 2
  %8466 = extractvalue %dx.types.CBufRet.f32 %8462, 3
  %8467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8468 = extractvalue %dx.types.CBufRet.f32 %8467, 3
  %8469 = call float @dx.op.binary.f32(i32 36, float %8455, float %8468)  ; FMin(a,b)
  %8470 = fmul fast float %8466, %8457
  %8471 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8472 = fsub fast float %8463, %8459
  %8473 = fsub fast float %8464, %8460
  %8474 = fsub fast float %8465, %8461
  %8475 = fmul fast float %8471, %8472
  %8476 = fmul fast float %8471, %8473
  %8477 = fmul fast float %8471, %8474
  %8478 = fadd fast float %8475, %8459
  %8479 = fadd fast float %8476, %8460
  %8480 = fadd fast float %8477, %8461
  %8481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8482 = extractvalue %dx.types.CBufRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.CBufRet.f32 %8481, 1
  %8484 = fadd fast float %8483, %8482
  %8485 = call float @dx.op.unary.f32(i32 7, float %8484)  ; Saturate(value)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8481, 2
  %8487 = extractvalue %dx.types.CBufRet.f32 %8481, 3
  %8488 = fadd fast float %8487, %8486
  %8489 = call float @dx.op.unary.f32(i32 7, float %8488)  ; Saturate(value)
  %8490 = fmul fast float %8485, %8469
  %8491 = fmul fast float %8490, %8489
  br label %8492

; <label>:8492                                    ; preds = %8453, %8372, %8207, %8189, %8187
  %8493 = phi float [ %8216, %8207 ], [ %8375, %8372 ], [ %8457, %8453 ], [ 0.000000e+00, %8187 ], [ 0.000000e+00, %8189 ]
  %8494 = phi float [ %8250, %8207 ], [ %8409, %8372 ], [ %8491, %8453 ], [ 0.000000e+00, %8187 ], [ 0.000000e+00, %8189 ]
  %8495 = phi float [ %8237, %8207 ], [ %8396, %8372 ], [ %8478, %8453 ], [ 0.000000e+00, %8187 ], [ 0.000000e+00, %8189 ]
  %8496 = phi float [ %8238, %8207 ], [ %8397, %8372 ], [ %8479, %8453 ], [ 0.000000e+00, %8187 ], [ 0.000000e+00, %8189 ]
  %8497 = phi float [ %8239, %8207 ], [ %8398, %8372 ], [ %8480, %8453 ], [ 0.000000e+00, %8187 ], [ 0.000000e+00, %8189 ]
  %8498 = fmul fast float %8130, %8494
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8501 = fsub fast float %8137, %8500
  %8502 = fcmp fast olt float %8498, -2.000000e+01
  %8503 = call float @dx.op.unary.f32(i32 21, float %8498)  ; Exp(value)
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8509 = fmul fast float %8506, %8501
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  %8511 = fsub fast float 1.000000e+00, %8510
  %8512 = fmul fast float %8122, 5.000000e-01
  %8513 = fadd fast float %8512, 5.000000e-01
  %8514 = call float @dx.op.unary.f32(i32 7, float %8513)  ; Saturate(value)
  %8515 = fsub fast float 1.000000e+00, %8514
  %8516 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8511)  ; FMax(a,b)
  %8517 = fdiv fast float %8515, %8516
  %8518 = fsub fast float %8501, %8079
  %8519 = call float @dx.op.unary.f32(i32 6, float %8518)  ; FAbs(value)
  %8520 = fmul fast float %8519, %8505
  %8521 = call float @dx.op.unary.f32(i32 7, float %8517)  ; Saturate(value)
  %8522 = fsub fast float 1.000000e+00, %8520
  %8523 = fmul fast float %8522, %8521
  %8524 = fadd fast float %8523, %8520
  %8525 = fmul fast float %8508, %8501
  %8526 = call float @dx.op.unary.f32(i32 7, float %8525)  ; Saturate(value)
  %8527 = fsub fast float 1.000000e+00, %8524
  %8528 = fmul fast float %8527, %8526
  %8529 = fadd fast float %8528, %8524
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fadd fast float %8503, -1.000000e+00
  %8532 = select i1 %8502, float -1.000000e+00, float %8531
  %8533 = fmul fast float %8530, %8532
  %8534 = fadd fast float %8533, 1.000000e+00
  %8535 = fsub fast float -0.000000e+00, %8533
  %8536 = fmul fast float %8495, %8535
  %8537 = fmul fast float %8496, %8535
  %8538 = fmul fast float %8497, %8535
  br label %8539

; <label>:8539                                    ; preds = %8492, %8088
  %8540 = phi float [ %8493, %8492 ], [ 0.000000e+00, %8088 ]
  %8541 = phi float [ %8534, %8492 ], [ 1.000000e+00, %8088 ]
  %8542 = phi float [ %8536, %8492 ], [ 0.000000e+00, %8088 ]
  %8543 = phi float [ %8537, %8492 ], [ 0.000000e+00, %8088 ]
  %8544 = phi float [ %8538, %8492 ], [ 0.000000e+00, %8088 ]
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8547 = fsub fast float 1.000000e+00, %8541
  %8548 = fmul fast float %8547, %8123
  %8549 = fmul fast float %8548, %8546
  %8550 = fsub fast float %8123, %8549
  br i1 %8116, label %8551, label %8580, !dx.controlflow.hints !169

; <label>:8551                                    ; preds = %8539
  %8552 = fmul fast float %8124, %8113
  %8553 = fadd fast float %8552, %8114
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = fmul fast float %8095, %8550
  %8556 = fsub fast float -0.000000e+00, %8555
  %8557 = fmul fast float %8096, %8550
  %8558 = fsub fast float -0.000000e+00, %8557
  %8559 = call float @dx.op.unary.f32(i32 21, float %8556)  ; Exp(value)
  %8560 = call float @dx.op.unary.f32(i32 21, float %8558)  ; Exp(value)
  %8561 = call float @dx.op.binary.f32(i32 35, float %8103, float %8559)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8103, float %8560)  ; FMax(a,b)
  %8563 = fsub fast float %8562, %8561
  %8564 = fmul fast float %8563, %8554
  %8565 = fadd fast float %8564, %8561
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fsub fast float %8100, %8105
  %8568 = fsub fast float %8101, %8106
  %8569 = fsub fast float %8102, %8107
  %8570 = fmul fast float %8554, %8567
  %8571 = fmul fast float %8554, %8568
  %8572 = fmul fast float %8554, %8569
  %8573 = fadd fast float %8570, %8105
  %8574 = fadd fast float %8571, %8106
  %8575 = fadd fast float %8572, %8107
  %8576 = fsub fast float 1.000000e+00, %8566
  %8577 = fmul fast float %8576, %8573
  %8578 = fmul fast float %8576, %8574
  %8579 = fmul fast float %8576, %8575
  br label %8639

; <label>:8580                                    ; preds = %8539
  %8581 = fmul fast float %8550, %8112
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = fsub fast float 2.000000e+00, %8582
  %8584 = fmul fast float %8582, 9.921875e-01
  %8585 = fmul fast float %8584, %8583
  %8586 = fadd fast float %8585, 3.906250e-03
  %8587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8586, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8588 = extractvalue %dx.types.ResRet.f32 %8587, 0
  %8589 = fsub fast float %8582, %8588
  %8590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8589)  ; FMax(a,b)
  %8591 = fmul fast float %8098, %8079
  %8592 = call float @dx.op.unary.f32(i32 6, float %8591)  ; FAbs(value)
  %8593 = fcmp fast ogt float %8592, 0x3EB0C6F7A0000000
  br i1 %8593, label %8594, label %8600, !dx.controlflow.hints !170

; <label>:8594                                    ; preds = %8580
  %8595 = fmul fast float %8591, 0xBFF7154760000000
  %8596 = call float @dx.op.unary.f32(i32 21, float %8595)  ; Exp(value)
  %8597 = fsub fast float 1.000000e+00, %8596
  %8598 = fdiv fast float %8597, %8591
  %8599 = fmul fast float %8598, %8108
  br label %8600

; <label>:8600                                    ; preds = %8594, %8580
  %8601 = phi float [ %8599, %8594 ], [ %8108, %8580 ]
  %8602 = fadd fast float %8601, %8110
  %8603 = fmul fast float %8602, %8590
  %8604 = fmul fast float %8095, %8603
  %8605 = fsub fast float -0.000000e+00, %8604
  %8606 = fmul fast float %8096, %8603
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = fmul fast float %8097, %8603
  %8609 = fsub fast float -0.000000e+00, %8608
  %8610 = call float @dx.op.unary.f32(i32 21, float %8605)  ; Exp(value)
  %8611 = call float @dx.op.unary.f32(i32 21, float %8607)  ; Exp(value)
  %8612 = call float @dx.op.unary.f32(i32 21, float %8609)  ; Exp(value)
  %8613 = fmul fast float %8124, %8124
  %8614 = fadd fast float %8613, 1.000000e+00
  %8615 = fmul fast float %8614, 0x3FAE8EC8A0000000
  %8616 = fmul fast float %8615, %8105
  %8617 = fmul fast float %8615, %8106
  %8618 = fmul fast float %8615, %8107
  %8619 = fmul fast float %8124, %8103
  %8620 = fsub fast float 1.000000e+00, %8619
  %8621 = fmul fast float %8103, %8103
  %8622 = fsub fast float 1.000000e+00, %8621
  %8623 = fmul fast float %8622, 0x3FB45F3060000000
  %8624 = fmul fast float %8620, %8620
  %8625 = fdiv fast float 1.000000e+00, %8624
  %8626 = fmul fast float %8623, %8625
  %8627 = fmul fast float %8626, %8100
  %8628 = fmul fast float %8626, %8101
  %8629 = fmul fast float %8626, %8102
  %8630 = fadd fast float %8627, %8616
  %8631 = fadd fast float %8628, %8617
  %8632 = fadd fast float %8629, %8618
  %8633 = fsub fast float 1.000000e+00, %8610
  %8634 = fsub fast float 1.000000e+00, %8611
  %8635 = fsub fast float 1.000000e+00, %8612
  %8636 = fmul fast float %8630, %8633
  %8637 = fmul fast float %8631, %8634
  %8638 = fmul fast float %8632, %8635
  br label %8639

; <label>:8639                                    ; preds = %8600, %8551
  %8640 = phi float [ %8577, %8551 ], [ %8636, %8600 ]
  %8641 = phi float [ %8578, %8551 ], [ %8637, %8600 ]
  %8642 = phi float [ %8579, %8551 ], [ %8638, %8600 ]
  %8643 = phi float [ %8566, %8551 ], [ %8610, %8600 ]
  %8644 = phi float [ %8566, %8551 ], [ %8611, %8600 ]
  %8645 = phi float [ %8566, %8551 ], [ %8612, %8600 ]
  br i1 %8132, label %8646, label %8844, !dx.controlflow.hints !171

; <label>:8646                                    ; preds = %8639
  %8647 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8648 = fmul fast float %8647, %8547
  %8649 = fsub fast float %8542, %8640
  %8650 = fsub fast float %8543, %8641
  %8651 = fsub fast float %8544, %8642
  %8652 = fmul fast float %8648, %8649
  %8653 = fmul fast float %8648, %8650
  %8654 = fmul fast float %8648, %8651
  %8655 = fadd fast float %8652, %8640
  %8656 = fadd fast float %8653, %8641
  %8657 = fadd fast float %8654, %8642
  %8658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8643)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8644)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8645)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8541)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float %8540, float %8550)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8662)  ; FMax(a,b)
  %8664 = fdiv fast float %8540, %8663
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = fdiv fast float %8550, %8663
  %8667 = call float @dx.op.unary.f32(i32 7, float %8666)  ; Saturate(value)
  %8668 = fcmp fast une float %8661, 1.000000e+00
  br i1 %8668, label %8669, label %8682, !dx.controlflow.hints !172

; <label>:8669                                    ; preds = %8646
  %8670 = call float @dx.op.unary.f32(i32 23, float %8661)  ; Log(value)
  %8671 = fmul fast float %8670, 0x3FE62E4300000000
  %8672 = fmul fast float %8542, %8671
  %8673 = fsub fast float -0.000000e+00, %8672
  %8674 = fmul fast float %8543, %8671
  %8675 = fsub fast float -0.000000e+00, %8674
  %8676 = fmul fast float %8544, %8671
  %8677 = fsub fast float -0.000000e+00, %8676
  %8678 = fsub fast float 1.000000e+00, %8661
  %8679 = fdiv fast float %8673, %8678
  %8680 = fdiv fast float %8675, %8678
  %8681 = fdiv fast float %8677, %8678
  br label %8682

; <label>:8682                                    ; preds = %8669, %8646
  %8683 = phi float [ %8679, %8669 ], [ %8542, %8646 ]
  %8684 = phi float [ %8680, %8669 ], [ %8543, %8646 ]
  %8685 = phi float [ %8681, %8669 ], [ %8544, %8646 ]
  %8686 = phi float [ %8671, %8669 ], [ 0.000000e+00, %8646 ]
  %8687 = fcmp fast une float %8658, 1.000000e+00
  br i1 %8687, label %8688, label %8695, !dx.controlflow.hints !173

; <label>:8688                                    ; preds = %8682
  %8689 = call float @dx.op.unary.f32(i32 23, float %8658)  ; Log(value)
  %8690 = fmul fast float %8689, 0x3FE62E4300000000
  %8691 = fmul fast float %8655, %8690
  %8692 = fsub fast float -0.000000e+00, %8691
  %8693 = fsub fast float 1.000000e+00, %8658
  %8694 = fdiv fast float %8692, %8693
  br label %8695

; <label>:8695                                    ; preds = %8688, %8682
  %8696 = phi float [ %8694, %8688 ], [ %8655, %8682 ]
  %8697 = phi float [ %8690, %8688 ], [ 0.000000e+00, %8682 ]
  %8698 = fcmp fast une float %8659, 1.000000e+00
  br i1 %8698, label %8699, label %8706, !dx.controlflow.hints !173

; <label>:8699                                    ; preds = %8695
  %8700 = call float @dx.op.unary.f32(i32 23, float %8659)  ; Log(value)
  %8701 = fmul fast float %8700, 0x3FE62E4300000000
  %8702 = fmul fast float %8656, %8701
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = fsub fast float 1.000000e+00, %8659
  %8705 = fdiv fast float %8703, %8704
  br label %8706

; <label>:8706                                    ; preds = %8699, %8695
  %8707 = phi float [ %8705, %8699 ], [ %8656, %8695 ]
  %8708 = phi float [ %8701, %8699 ], [ 0.000000e+00, %8695 ]
  %8709 = fcmp fast une float %8660, 1.000000e+00
  br i1 %8709, label %8710, label %8717, !dx.controlflow.hints !173

; <label>:8710                                    ; preds = %8706
  %8711 = call float @dx.op.unary.f32(i32 23, float %8660)  ; Log(value)
  %8712 = fmul fast float %8711, 0x3FE62E4300000000
  %8713 = fmul fast float %8657, %8712
  %8714 = fsub fast float -0.000000e+00, %8713
  %8715 = fsub fast float 1.000000e+00, %8660
  %8716 = fdiv fast float %8714, %8715
  br label %8717

; <label>:8717                                    ; preds = %8710, %8706
  %8718 = phi float [ %8716, %8710 ], [ %8657, %8706 ]
  %8719 = phi float [ %8712, %8710 ], [ 0.000000e+00, %8706 ]
  %8720 = fmul fast float %8683, %8667
  %8721 = fmul fast float %8684, %8667
  %8722 = fmul fast float %8685, %8667
  %8723 = fmul fast float %8686, %8667
  %8724 = fmul fast float %8696, %8665
  %8725 = fmul fast float %8707, %8665
  %8726 = fmul fast float %8718, %8665
  %8727 = fmul fast float %8697, %8665
  %8728 = fmul fast float %8708, %8665
  %8729 = fmul fast float %8719, %8665
  %8730 = fadd fast float %8724, %8720
  %8731 = fadd fast float %8725, %8721
  %8732 = fadd fast float %8726, %8722
  %8733 = fadd fast float %8727, %8723
  %8734 = fadd fast float %8728, %8723
  %8735 = fadd fast float %8729, %8723
  %8736 = fcmp fast une float %8733, 0.000000e+00
  br i1 %8736, label %8737, label %8744, !dx.controlflow.hints !174

; <label>:8737                                    ; preds = %8717
  %8738 = fmul fast float %8733, 0x3FF7154760000000
  %8739 = call float @dx.op.unary.f32(i32 21, float %8738)  ; Exp(value)
  %8740 = fsub fast float 1.000000e+00, %8739
  %8741 = fmul fast float %8730, %8740
  %8742 = fsub fast float -0.000000e+00, %8741
  %8743 = fdiv fast float %8742, %8733
  br label %8744

; <label>:8744                                    ; preds = %8737, %8717
  %8745 = phi float [ %8739, %8737 ], [ 1.000000e+00, %8717 ]
  %8746 = phi float [ %8743, %8737 ], [ %8730, %8717 ]
  %8747 = fcmp fast une float %8734, 0.000000e+00
  br i1 %8747, label %8748, label %8755, !dx.controlflow.hints !174

; <label>:8748                                    ; preds = %8744
  %8749 = fmul fast float %8734, 0x3FF7154760000000
  %8750 = call float @dx.op.unary.f32(i32 21, float %8749)  ; Exp(value)
  %8751 = fsub fast float 1.000000e+00, %8750
  %8752 = fmul fast float %8731, %8751
  %8753 = fsub fast float -0.000000e+00, %8752
  %8754 = fdiv fast float %8753, %8734
  br label %8755

; <label>:8755                                    ; preds = %8748, %8744
  %8756 = phi float [ %8750, %8748 ], [ 1.000000e+00, %8744 ]
  %8757 = phi float [ %8754, %8748 ], [ %8731, %8744 ]
  %8758 = fcmp fast une float %8735, 0.000000e+00
  br i1 %8758, label %8759, label %8766, !dx.controlflow.hints !174

; <label>:8759                                    ; preds = %8755
  %8760 = fmul fast float %8735, 0x3FF7154760000000
  %8761 = call float @dx.op.unary.f32(i32 21, float %8760)  ; Exp(value)
  %8762 = fsub fast float 1.000000e+00, %8761
  %8763 = fmul fast float %8732, %8762
  %8764 = fsub fast float -0.000000e+00, %8763
  %8765 = fdiv fast float %8764, %8735
  br label %8766

; <label>:8766                                    ; preds = %8759, %8755
  %8767 = phi float [ %8761, %8759 ], [ 1.000000e+00, %8755 ]
  %8768 = phi float [ %8765, %8759 ], [ %8732, %8755 ]
  %8769 = fcmp fast ogt float %8665, %8667
  br i1 %8769, label %8770, label %8790

; <label>:8770                                    ; preds = %8766
  %8771 = fsub fast float 1.000000e+00, %8667
  %8772 = fmul fast float %8683, %8771
  %8773 = fmul fast float %8684, %8771
  %8774 = fmul fast float %8685, %8771
  %8775 = fmul fast float %8686, %8771
  %8776 = fcmp fast une float %8775, 0.000000e+00
  br i1 %8776, label %8777, label %8828, !dx.controlflow.hints !175

; <label>:8777                                    ; preds = %8770
  %8778 = fmul fast float %8775, 0x3FF7154760000000
  %8779 = call float @dx.op.unary.f32(i32 21, float %8778)  ; Exp(value)
  %8780 = fsub fast float 1.000000e+00, %8779
  %8781 = fmul fast float %8772, %8780
  %8782 = fsub fast float -0.000000e+00, %8781
  %8783 = fmul fast float %8773, %8780
  %8784 = fsub fast float -0.000000e+00, %8783
  %8785 = fmul fast float %8774, %8780
  %8786 = fsub fast float -0.000000e+00, %8785
  %8787 = fdiv fast float %8782, %8775
  %8788 = fdiv fast float %8784, %8775
  %8789 = fdiv fast float %8786, %8775
  br label %8828

; <label>:8790                                    ; preds = %8766
  %8791 = fsub fast float 1.000000e+00, %8665
  %8792 = fmul fast float %8696, %8791
  %8793 = fmul fast float %8707, %8791
  %8794 = fmul fast float %8718, %8791
  %8795 = fmul fast float %8697, %8791
  %8796 = fmul fast float %8708, %8791
  %8797 = fmul fast float %8719, %8791
  %8798 = fcmp fast une float %8795, 0.000000e+00
  br i1 %8798, label %8799, label %8806, !dx.controlflow.hints !174

; <label>:8799                                    ; preds = %8790
  %8800 = fmul fast float %8795, 0x3FF7154760000000
  %8801 = call float @dx.op.unary.f32(i32 21, float %8800)  ; Exp(value)
  %8802 = fsub fast float 1.000000e+00, %8801
  %8803 = fmul fast float %8792, %8802
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = fdiv fast float %8804, %8795
  br label %8806

; <label>:8806                                    ; preds = %8799, %8790
  %8807 = phi float [ %8805, %8799 ], [ %8792, %8790 ]
  %8808 = phi float [ %8801, %8799 ], [ 1.000000e+00, %8790 ]
  %8809 = fcmp fast une float %8796, 0.000000e+00
  br i1 %8809, label %8810, label %8817, !dx.controlflow.hints !174

; <label>:8810                                    ; preds = %8806
  %8811 = fmul fast float %8796, 0x3FF7154760000000
  %8812 = call float @dx.op.unary.f32(i32 21, float %8811)  ; Exp(value)
  %8813 = fsub fast float 1.000000e+00, %8812
  %8814 = fmul fast float %8793, %8813
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = fdiv fast float %8815, %8796
  br label %8817

; <label>:8817                                    ; preds = %8810, %8806
  %8818 = phi float [ %8816, %8810 ], [ %8793, %8806 ]
  %8819 = phi float [ %8812, %8810 ], [ 1.000000e+00, %8806 ]
  %8820 = fcmp fast une float %8797, 0.000000e+00
  br i1 %8820, label %8821, label %8828, !dx.controlflow.hints !174

; <label>:8821                                    ; preds = %8817
  %8822 = fmul fast float %8797, 0x3FF7154760000000
  %8823 = call float @dx.op.unary.f32(i32 21, float %8822)  ; Exp(value)
  %8824 = fsub fast float 1.000000e+00, %8823
  %8825 = fmul fast float %8794, %8824
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = fdiv fast float %8826, %8797
  br label %8828

; <label>:8828                                    ; preds = %8821, %8817, %8777, %8770
  %8829 = phi float [ %8827, %8821 ], [ %8789, %8777 ], [ %8774, %8770 ], [ %8794, %8817 ]
  %8830 = phi float [ %8818, %8821 ], [ %8788, %8777 ], [ %8773, %8770 ], [ %8818, %8817 ]
  %8831 = phi float [ %8807, %8821 ], [ %8787, %8777 ], [ %8772, %8770 ], [ %8807, %8817 ]
  %8832 = phi float [ %8823, %8821 ], [ %8779, %8777 ], [ 1.000000e+00, %8770 ], [ 1.000000e+00, %8817 ]
  %8833 = phi float [ %8819, %8821 ], [ %8779, %8777 ], [ 1.000000e+00, %8770 ], [ %8819, %8817 ]
  %8834 = phi float [ %8808, %8821 ], [ %8779, %8777 ], [ 1.000000e+00, %8770 ], [ %8808, %8817 ]
  %8835 = fmul fast float %8834, %8746
  %8836 = fmul fast float %8833, %8757
  %8837 = fmul fast float %8832, %8768
  %8838 = fadd fast float %8835, %8831
  %8839 = fadd fast float %8836, %8830
  %8840 = fadd fast float %8837, %8829
  %8841 = fmul fast float %8834, %8745
  %8842 = fmul fast float %8833, %8756
  %8843 = fmul fast float %8832, %8767
  br label %8844

; <label>:8844                                    ; preds = %8828, %8639
  %8845 = phi float [ %8843, %8828 ], [ %8645, %8639 ]
  %8846 = phi float [ %8842, %8828 ], [ %8644, %8639 ]
  %8847 = phi float [ %8841, %8828 ], [ %8643, %8639 ]
  %8848 = phi float [ %8840, %8828 ], [ %8642, %8639 ]
  %8849 = phi float [ %8839, %8828 ], [ %8641, %8639 ]
  %8850 = phi float [ %8838, %8828 ], [ %8640, %8639 ]
  %8851 = fmul fast float %8850, %7796
  %8852 = fmul fast float %8849, %7796
  %8853 = fmul fast float %8848, %7796
  %8854 = fmul fast float %8847, %8087
  %8855 = call float @dx.op.dot3.f32(i32 55, float %8847, float %8846, float %8845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8856 = call float @dx.op.dot3.f32(i32 55, float %8851, float %8852, float %8853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = select i1 %228, float %8855, float %8847
  %8858 = select i1 %228, float %8855, float %8846
  %8859 = select i1 %228, float 1.000000e+00, float %8845
  %8860 = select i1 %228, float %8856, float %8851
  %8861 = select i1 %228, float 0.000000e+00, float %8852
  %8862 = select i1 %228, float 0.000000e+00, float %8853
  %8863 = fmul fast float %8857, %8081
  %8864 = fmul fast float %8858, %8082
  %8865 = fmul fast float %8859, %8083
  %8866 = fadd fast float %8863, %8860
  %8867 = fadd fast float %8864, %8861
  %8868 = fadd fast float %8862, %8865
  %8869 = fmul fast float %8857, %8084
  %8870 = fmul fast float %8858, %8085
  %8871 = fmul fast float %8859, %8086
  %8872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.i32 %8872, 0
  %8874 = icmp eq i32 %8873, 0
  br i1 %8874, label %9242, label %8875, !dx.controlflow.hints !176

; <label>:8875                                    ; preds = %8844
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8879 = fmul fast float %8877, %103
  %8880 = fmul fast float %8878, %104
  %8881 = fmul fast float %8879, 2.000000e+00
  %8882 = fmul fast float %8880, 2.000000e+00
  %8883 = fsub fast float 1.000000e+00, %8881
  %8884 = fsub fast float 1.000000e+00, %8882
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8888 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8889 = fmul fast float %8883, %8886
  %8890 = fmul fast float %8883, %8887
  %8891 = fmul fast float %8883, %8888
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8895 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8896 = fmul fast float %8884, %8893
  %8897 = fmul fast float %8884, %8894
  %8898 = fmul fast float %8884, %8895
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 0
  %8901 = extractvalue %dx.types.CBufRet.f32 %8899, 1
  %8902 = extractvalue %dx.types.CBufRet.f32 %8899, 2
  %8903 = fadd fast float %8896, %8900
  %8904 = fadd fast float %8903, %8889
  %8905 = fadd fast float %8897, %8901
  %8906 = fadd fast float %8905, %8890
  %8907 = fadd fast float %8898, %8902
  %8908 = fadd fast float %8907, %8891
  %8909 = fmul fast float %8904, %8080
  %8910 = fmul fast float %8906, %8080
  %8911 = fmul fast float %8908, %8080
  %8912 = fmul fast float %8909, %8909
  %8913 = fmul fast float %8910, %8910
  %8914 = fadd fast float %8912, %8913
  %8915 = fmul fast float %8911, %8911
  %8916 = fadd fast float %8914, %8915
  %8917 = call float @dx.op.unary.f32(i32 24, float %8916)  ; Sqrt(value)
  %8918 = extractvalue %dx.types.CBufRet.f32 %7807, 0
  %8919 = fsub fast float %8917, %8918
  %8920 = extractvalue %dx.types.CBufRet.f32 %7807, 2
  %8921 = fmul fast float %8919, %8920
  %8922 = call float @dx.op.unary.f32(i32 7, float %8921)  ; Saturate(value)
  %8923 = fadd fast float %8922, -5.000000e-01
  %8924 = fmul fast float %8923, 2.000000e+00
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8927 = call float @dx.op.binary.f32(i32 36, float %8926, float %8924)  ; FMin(a,b)
  %8928 = fsub fast float -0.000000e+00, %8926
  %8929 = fcmp fast ogt float %8927, %8928
  br i1 %8929, label %8930, label %9242, !dx.controlflow.hints !177

; <label>:8930                                    ; preds = %8875
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 3
  %8933 = fcmp fast ogt float %8932, 0.000000e+00
  br i1 %8933, label %8934, label %9009, !dx.controlflow.hints !178

; <label>:8934                                    ; preds = %8930
  %8935 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8936 = extractvalue %dx.types.Dimensions %8935, 0
  %8937 = sitofp i32 %8936 to float
  %8938 = extractvalue %dx.types.Dimensions %8935, 1
  %8939 = sitofp i32 %8938 to float
  %8940 = fmul fast float %8879, %8937
  %8941 = fmul fast float %8880, %8939
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 1
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fptoui float %8944 to i32
  %8946 = fptoui float %8940 to i32
  %8947 = fptoui float %8941 to i32
  %8948 = and i32 %8945, 31
  %8949 = lshr i32 %8946, %8948
  %8950 = lshr i32 %8947, %8948
  %8951 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8945, i32 %8949, i32 %8950, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8952 = extractvalue %dx.types.ResRet.f32 %8951, 0
  %8953 = fcmp fast olt float %8952, -1.000000e+00
  %8954 = fcmp fast ogt float %8952, -1.000000e+00
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 1
  %8957 = select i1 %8954, float %8956, float 1.000000e+00
  %8958 = fadd fast float %8952, 1.000000e+00
  %8959 = fmul fast float %8957, %8958
  %8960 = call float @dx.op.unary.f32(i32 6, float %8959)  ; FAbs(value)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8962 = fcmp fast oge float %8960, %8961
  %8963 = select i1 %8962, float 0x4197782600000000, float %8960
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = select i1 %8953, float %8965, float %8886
  %8969 = select i1 %8953, float %8966, float %8887
  %8970 = select i1 %8953, float %8967, float %8888
  %8971 = fmul fast float %8968, %8883
  %8972 = fmul fast float %8969, %8883
  %8973 = fmul fast float %8970, %8883
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = extractvalue %dx.types.CBufRet.f32 %8974, 1
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = select i1 %8953, float %8975, float %8893
  %8979 = select i1 %8953, float %8976, float %8894
  %8980 = select i1 %8953, float %8977, float %8895
  %8981 = fmul fast float %8978, %8884
  %8982 = fmul fast float %8979, %8884
  %8983 = fmul fast float %8980, %8884
  %8984 = fadd fast float %8981, %8971
  %8985 = fadd fast float %8982, %8972
  %8986 = fadd fast float %8983, %8973
  %8987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8987, 0
  %8989 = extractvalue %dx.types.CBufRet.f32 %8987, 1
  %8990 = extractvalue %dx.types.CBufRet.f32 %8987, 2
  %8991 = select i1 %8953, float %8988, float %8900
  %8992 = select i1 %8953, float %8989, float %8901
  %8993 = select i1 %8953, float %8990, float %8902
  %8994 = fadd fast float %8984, %8991
  %8995 = fadd fast float %8985, %8992
  %8996 = fadd fast float %8986, %8993
  %8997 = fmul fast float %8994, %8963
  %8998 = fmul fast float %8995, %8963
  %8999 = fmul fast float %8996, %8963
  %9000 = fmul fast float %8997, %8997
  %9001 = fmul fast float %8998, %8998
  %9002 = fadd fast float %9000, %9001
  %9003 = fmul fast float %8999, %8999
  %9004 = fadd fast float %9002, %9003
  %9005 = call float @dx.op.unary.f32(i32 24, float %9004)  ; Sqrt(value)
  %9006 = fsub fast float %9005, %8918
  %9007 = fmul fast float %9006, %8920
  %9008 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  br label %9009

; <label>:9009                                    ; preds = %8934, %8930
  %9010 = phi float [ %9008, %8934 ], [ 1.000000e+00, %8930 ]
  %9011 = fmul fast float %8927, 5.000000e-01
  %9012 = fadd fast float %9011, 5.000000e-01
  %9013 = call float @dx.op.unary.f32(i32 22, float %9012)  ; Frc(value)
  %9014 = call float @dx.op.unary.f32(i32 27, float %9013)  ; Round_ni(value)
  %9015 = call float @dx.op.unary.f32(i32 22, float %9013)  ; Frc(value)
  %9016 = fmul fast float %9015, 2.000000e+00
  %9017 = fadd fast float %9016, -1.000000e+00
  %9018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8879, float %8880, float %9014, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9019 = extractvalue %dx.types.ResRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.ResRet.f32 %9018, 1
  %9021 = extractvalue %dx.types.ResRet.f32 %9018, 2
  %9022 = extractvalue %dx.types.ResRet.f32 %9018, 3
  %9023 = fadd fast float %9019, -5.000000e-01
  %9024 = fadd fast float %9021, -5.000000e-01
  %9025 = fmul fast float %9023, 0xBFD5555560000000
  %9026 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9024, float %9025)  ; FMad(a,b,c)
  %9027 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9020, float 0.000000e+00)  ; FMad(a,b,c)
  %9028 = fadd fast float %9027, %9022
  %9029 = fmul fast float %9023, -7.500000e-01
  %9030 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9024, float %9029)  ; FMad(a,b,c)
  %9031 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9020, float 0.000000e+00)  ; FMad(a,b,c)
  %9032 = fadd fast float %9031, %9022
  %9033 = call float @dx.op.binary.f32(i32 35, float %9026, float -1.000000e+00)  ; FMax(a,b)
  %9034 = call float @dx.op.binary.f32(i32 35, float %9028, float -1.000000e+00)  ; FMax(a,b)
  %9035 = call float @dx.op.binary.f32(i32 35, float %9030, float -1.000000e+00)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 35, float %9032, float -1.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 36, float %9033, float 1.000000e+00)  ; FMin(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9034, float 1.000000e+00)  ; FMin(a,b)
  %9039 = call float @dx.op.binary.f32(i32 36, float %9035, float 1.000000e+00)  ; FMin(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9036, float 1.000000e+00)  ; FMin(a,b)
  %9041 = fcmp fast olt float %9037, 0x3FEFFF8020000000
  br i1 %9041, label %9042, label %9157, !dx.controlflow.hints !179

; <label>:9042                                    ; preds = %9009
  %9043 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %9044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9045 = extractvalue %dx.types.CBufRet.f32 %9044, 0
  %9046 = extractvalue %dx.types.CBufRet.f32 %9044, 1
  %9047 = extractvalue %dx.types.CBufRet.f32 %9044, 2
  %9048 = extractvalue %dx.types.CBufRet.f32 %9044, 3
  %9049 = fsub fast float %9045, %9037
  %9050 = fsub fast float %9046, %9038
  %9051 = fsub fast float %9047, %9039
  %9052 = fsub fast float %9048, %9040
  %9053 = fmul fast float %9049, %9043
  %9054 = fmul fast float %9050, %9043
  %9055 = fmul fast float %9051, %9043
  %9056 = fmul fast float %9052, %9043
  %9057 = fadd fast float %9053, %9037
  %9058 = fadd fast float %9054, %9038
  %9059 = fsub fast float -0.000000e+00, %9058
  %9060 = fadd fast float %9055, %9039
  %9061 = fadd fast float %9056, %9040
  %9062 = fmul fast float %9057, %9057
  %9063 = fsub fast float %9058, %9062
  %9064 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9063)  ; FMax(a,b)
  %9065 = fdiv fast float 1.000000e+00, %9064
  %9066 = fmul fast float %9058, %9057
  %9067 = fsub fast float %9060, %9066
  %9068 = fsub fast float %9017, %9057
  %9069 = fmul fast float %9017, %9017
  %9070 = fsub fast float %9069, %9058
  %9071 = fmul fast float %9068, %9065
  %9072 = fmul fast float %9071, %9067
  %9073 = fsub fast float %9070, %9072
  %9074 = fmul fast float %9058, %9058
  %9075 = fsub fast float %9061, %9074
  %9076 = fmul fast float %9067, %9067
  %9077 = fmul fast float %9076, %9065
  %9078 = fsub fast float %9075, %9077
  %9079 = fdiv fast float %9073, %9078
  %9080 = fmul fast float %9067, %9079
  %9081 = fsub fast float %9068, %9080
  %9082 = fmul fast float %9081, %9065
  %9083 = fmul fast float %9082, %9057
  %9084 = fsub fast float 1.000000e+00, %9083
  %9085 = fmul fast float %9058, %9079
  %9086 = fsub fast float %9084, %9085
  %9087 = fmul fast float %9082, %9082
  %9088 = fmul fast float %9079, 4.000000e+00
  %9089 = fmul fast float %9088, %9086
  %9090 = fsub fast float %9087, %9089
  %9091 = call float @dx.op.unary.f32(i32 24, float %9090)  ; Sqrt(value)
  %9092 = fcmp fast oge float %9082, 0.000000e+00
  %9093 = fsub fast float -0.000000e+00, %9091
  %9094 = select i1 %9092, float %9093, float %9091
  %9095 = fsub fast float %9094, %9082
  %9096 = fdiv fast float %9095, %9079
  %9097 = fdiv fast float %9086, %9095
  %9098 = fmul fast float %9096, 5.000000e-01
  %9099 = fmul fast float %9097, 2.000000e+00
  %9100 = select i1 %9092, float %9098, float %9099
  %9101 = select i1 %9092, float %9099, float %9098
  %9102 = call float @dx.op.binary.f32(i32 35, float %9100, float %9101)  ; FMax(a,b)
  %9103 = call float @dx.op.binary.f32(i32 36, float %9100, float %9101)  ; FMin(a,b)
  %9104 = fcmp fast ogt float %9017, %9103
  br i1 %9104, label %9105, label %9115

; <label>:9105                                    ; preds = %9042
  %9106 = fsub fast float %9017, %9103
  %9107 = fsub fast float %9102, %9103
  %9108 = fmul fast float %9106, %9107
  %9109 = fmul fast float %9102, %9017
  %9110 = fadd fast float %9102, %9017
  %9111 = fmul fast float %9110, %9057
  %9112 = fadd fast float %9109, %9058
  %9113 = fsub fast float %9112, %9111
  %9114 = fdiv fast float %9113, %9108
  br label %9115

; <label>:9115                                    ; preds = %9105, %9042
  %9116 = phi float [ %9114, %9105 ], [ 0.000000e+00, %9042 ]
  %9117 = fcmp fast ogt float %9017, %9102
  %9118 = fsub fast float %9017, %9102
  br i1 %9117, label %9119, label %9129

; <label>:9119                                    ; preds = %9115
  %9120 = fsub fast float %9102, %9103
  %9121 = fmul fast float %9120, %9118
  %9122 = fmul fast float %9103, %9017
  %9123 = fadd fast float %9103, %9017
  %9124 = fmul fast float %9123, %9057
  %9125 = fsub fast float %9059, %9122
  %9126 = fadd fast float %9125, %9124
  %9127 = fdiv fast float %9126, %9121
  %9128 = fadd fast float %9127, %9116
  br label %9129

; <label>:9129                                    ; preds = %9119, %9115
  %9130 = phi float [ %9128, %9119 ], [ %9116, %9115 ]
  %9131 = fsub fast float %9017, %9103
  %9132 = fmul fast float %9131, %9118
  %9133 = fmul fast float %9103, %9102
  %9134 = fadd fast float %9103, %9102
  %9135 = fmul fast float %9134, %9057
  %9136 = fadd fast float %9133, %9058
  %9137 = fsub fast float %9136, %9135
  %9138 = fdiv fast float %9137, %9132
  %9139 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  %9140 = fcmp fast oeq float %7808, 0.000000e+00
  %9141 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %9142 = fcmp fast oeq float %9141, 0.000000e+00
  %9143 = or i1 %9140, %9142
  %9144 = fmul fast float %9141, 2.000000e+00
  %9145 = fadd fast float %8926, %8927
  %9146 = fdiv fast float %9145, %9144
  %9147 = call float @dx.op.unary.f32(i32 7, float %9146)  ; Saturate(value)
  %9148 = fmul fast float %9147, 2.000000e+00
  %9149 = fsub fast float 3.000000e+00, %9148
  %9150 = fmul fast float %9147, %9147
  %9151 = fmul fast float %9150, %9149
  %9152 = select i1 %9143, float 1.000000e+00, float %9151
  %9153 = fmul fast float %9138, %7808
  %9154 = fadd fast float %9139, %9153
  %9155 = call float @dx.op.unary.f32(i32 7, float %9154)  ; Saturate(value)
  %9156 = fmul fast float %9152, %9155
  br label %9157

; <label>:9157                                    ; preds = %9129, %9009
  %9158 = phi float [ %9156, %9129 ], [ 0.000000e+00, %9009 ]
  %9159 = fsub fast float 1.000000e+00, %9158
  %9160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8879, float %8880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9161 = extractvalue %dx.types.ResRet.f32 %9160, 0
  %9162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.i32 %9162, 2
  %9164 = icmp eq i32 %9163, 0
  br i1 %9164, label %9170, label %9165

; <label>:9165                                    ; preds = %9157
  %9166 = call float @dx.op.unary.f32(i32 7, float %9158)  ; Saturate(value)
  %9167 = fadd fast float %9161, -1.000000e+00
  %9168 = fmul fast float %9166, %9167
  %9169 = fadd fast float %9168, 1.000000e+00
  br label %9170

; <label>:9170                                    ; preds = %9165, %9157
  %9171 = phi float [ %9169, %9165 ], [ %9159, %9157 ]
  br i1 %8933, label %9172, label %9190

; <label>:9172                                    ; preds = %9170
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 1
  %9175 = fsub fast float %9010, %9174
  %9176 = call float @dx.op.unary.f32(i32 7, float %9175)  ; Saturate(value)
  %9177 = fsub fast float %9010, %8932
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fsub fast float %9176, %9178
  %9180 = fsub fast float %9012, %9178
  %9181 = fdiv fast float %9180, %9179
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fmul fast float %9182, 2.000000e+00
  %9184 = fsub fast float 3.000000e+00, %9183
  %9185 = fsub fast float %9161, %9171
  %9186 = fmul fast float %9182, %9182
  %9187 = fmul fast float %9186, %9185
  %9188 = fmul fast float %9187, %9184
  %9189 = fadd fast float %9188, %9171
  br label %9190

; <label>:9190                                    ; preds = %9172, %9170
  %9191 = phi float [ %9189, %9172 ], [ %9171, %9170 ]
  %9192 = call float @dx.op.binary.f32(i32 35, float %9161, float %9191)  ; FMax(a,b)
  %9193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.i32 %9193, 2
  %9195 = and i32 %9194, 1
  %9196 = icmp eq i32 %9195, 0
  %9197 = fcmp fast une float %9192, 1.000000e+00
  %9198 = and i1 %9197, %9196
  br i1 %9198, label %9199, label %9218

; <label>:9199                                    ; preds = %9190
  %9200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8879, float %8880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9201 = extractvalue %dx.types.ResRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.ResRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.ResRet.f32 %9200, 2
  %9204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9205 = extractvalue %dx.types.CBufRet.f32 %9204, 1
  %9206 = fmul fast float %9205, %9201
  %9207 = fmul fast float %9205, %9202
  %9208 = fmul fast float %9205, %9203
  %9209 = fcmp fast ogt float %9161, 0x3FEFFF2E40000000
  %9210 = fsub fast float 1.000000e+00, %9192
  %9211 = fsub fast float 1.000000e+00, %9161
  %9212 = fdiv fast float %9210, %9211
  %9213 = call float @dx.op.unary.f32(i32 7, float %9212)  ; Saturate(value)
  %9214 = select i1 %9209, float 0.000000e+00, float %9213
  %9215 = fmul fast float %9206, %9214
  %9216 = fmul fast float %9207, %9214
  %9217 = fmul fast float %9208, %9214
  br label %9218

; <label>:9218                                    ; preds = %9199, %9190
  %9219 = phi float [ 0.000000e+00, %9190 ], [ %9215, %9199 ]
  %9220 = phi float [ 0.000000e+00, %9190 ], [ %9216, %9199 ]
  %9221 = phi float [ 0.000000e+00, %9190 ], [ %9217, %9199 ]
  %9222 = fmul fast float %9219, %7796
  %9223 = fmul fast float %9220, %7796
  %9224 = fmul fast float %9221, %7796
  %9225 = fmul fast float %9192, %8854
  %9226 = call float @dx.op.dot3.f32(i32 55, float %9192, float %9192, float %9192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9227 = call float @dx.op.dot3.f32(i32 55, float %9222, float %9223, float %9224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9228 = select i1 %228, float %9226, float %9192
  %9229 = select i1 %228, float 1.000000e+00, float %9192
  %9230 = select i1 %228, float %9227, float %9222
  %9231 = select i1 %228, float 0.000000e+00, float %9223
  %9232 = select i1 %228, float 0.000000e+00, float %9224
  %9233 = fmul fast float %9228, %8866
  %9234 = fmul fast float %9228, %8867
  %9235 = fmul fast float %9229, %8868
  %9236 = fadd fast float %9233, %9230
  %9237 = fadd fast float %9234, %9231
  %9238 = fadd fast float %9232, %9235
  %9239 = fmul fast float %9228, %8869
  %9240 = fmul fast float %9228, %8870
  %9241 = fmul fast float %9229, %8871
  br label %9242

; <label>:9242                                    ; preds = %9218, %8875, %8844, %8076
  %9243 = phi float [ %8081, %8076 ], [ %8866, %8844 ], [ %9236, %9218 ], [ %8866, %8875 ]
  %9244 = phi float [ %8082, %8076 ], [ %8867, %8844 ], [ %9237, %9218 ], [ %8867, %8875 ]
  %9245 = phi float [ %8083, %8076 ], [ %8868, %8844 ], [ %9238, %9218 ], [ %8868, %8875 ]
  %9246 = phi float [ %8084, %8076 ], [ %8869, %8844 ], [ %9239, %9218 ], [ %8869, %8875 ]
  %9247 = phi float [ %8085, %8076 ], [ %8870, %8844 ], [ %9240, %9218 ], [ %8870, %8875 ]
  %9248 = phi float [ %8086, %8076 ], [ %8871, %8844 ], [ %9241, %9218 ], [ %8871, %8875 ]
  %9249 = phi float [ %8087, %8076 ], [ %8854, %8844 ], [ %9225, %9218 ], [ %8854, %8875 ]
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9252 = extractvalue %dx.types.CBufRet.f32 %9250, 3
  %9253 = fmul fast float %9251, %103
  %9254 = fmul fast float %9252, %104
  %9255 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9256 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9257 = select i1 %7818, i32 2, i32 0
  %9258 = or i32 %9257, 1
  %9259 = uitofp i32 %9258 to float
  %9260 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9255, float %9256, float %9259, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9261 = extractvalue %dx.types.ResRet.f32 %9260, 0
  %9262 = extractvalue %dx.types.ResRet.f32 %9260, 1
  %9263 = extractvalue %dx.types.ResRet.f32 %9260, 2
  %9264 = extractvalue %dx.types.ResRet.f32 %9260, 3
  %9265 = add nuw nsw i32 %9257, 2
  %9266 = uitofp i32 %9265 to float
  %9267 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9255, float %9256, float %9266, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9268 = extractvalue %dx.types.ResRet.f32 %9267, 0
  %9269 = extractvalue %dx.types.ResRet.f32 %9267, 1
  %9270 = extractvalue %dx.types.ResRet.f32 %9267, 2
  %9271 = extractvalue %dx.types.ResRet.f32 %9267, 3
  %9272 = call float @dx.op.binary.f32(i32 35, float %9262, float %9263)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 35, float %9261, float %9272)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 35, float %9273, float %9264)  ; FMax(a,b)
  %9275 = call float @dx.op.binary.f32(i32 36, float %9269, float %9270)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9268, float %9275)  ; FMin(a,b)
  %9277 = call float @dx.op.binary.f32(i32 36, float %9276, float %9271)  ; FMin(a,b)
  %9278 = fmul fast float %9274, 2.550000e+02
  %9279 = fadd fast float %9278, 0x3F70101020000000
  %9280 = fptoui float %9279 to i32
  %9281 = fmul fast float %9277, 2.550000e+02
  %9282 = fadd fast float %9281, 0x3F70101020000000
  %9283 = fptoui float %9282 to i32
  %9284 = icmp ult i32 %9280, %9283
  br i1 %9284, label %9285, label %9454

; <label>:9285                                    ; preds = %9242
  %9286 = fcmp fast ogt float %90, 9.843750e-01
  %9287 = fadd fast float %8080, -4.000000e+00
  %9288 = select i1 %9286, float -4.000000e+00, float %9287
  %9289 = call float @dx.op.binary.f32(i32 35, float %9288, float 0.000000e+00)  ; FMax(a,b)
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 0
  %9292 = fadd fast float %9291, %9289
  %9293 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9294 = fmul fast float %9292, %9293
  %9295 = call float @dx.op.unary.f32(i32 23, float %9294)  ; Log(value)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9290, 3
  %9297 = fmul fast float %9296, %9295
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 2
  %9300 = fmul fast float %9297, %9299
  %9301 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9302 = uitofp i32 %9280 to float
  %9303 = uitofp i32 %9283 to float
  %9304 = fadd fast float %9302, 5.000000e-01
  %9305 = fadd fast float %9303, 5.000000e-01
  %9306 = fmul fast float %9299, %9304
  %9307 = fmul fast float %9299, %9305
  %9308 = fadd fast float %9306, 0x3F0FFB4800000000
  %9309 = fadd fast float %9307, 0xBF0FFB4800000000
  %9310 = call float @dx.op.binary.f32(i32 35, float %9301, float %9308)  ; FMax(a,b)
  %9311 = call float @dx.op.binary.f32(i32 36, float %9310, float %9309)  ; FMin(a,b)
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %9314 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %9315 = extractvalue %dx.types.CBufRet.f32 %9312, 0
  %9316 = select i1 %7818, float %9315, float 0.000000e+00
  %9317 = fmul fast float %9313, %9311
  %9318 = fadd fast float %9316, %9317
  %9319 = fadd fast float %9316, %9314
  %9320 = fsub fast float %9313, %9314
  %9321 = fadd fast float %9320, %9316
  %9322 = call float @dx.op.binary.f32(i32 35, float %9318, float %9319)  ; FMax(a,b)
  %9323 = call float @dx.op.binary.f32(i32 36, float %9322, float %9321)  ; FMin(a,b)
  %9324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9255, float %9256, float %9323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9325 = extractvalue %dx.types.ResRet.f32 %9324, 0
  %9326 = extractvalue %dx.types.ResRet.f32 %9324, 1
  %9327 = extractvalue %dx.types.ResRet.f32 %9324, 2
  %9328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.i32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.i32 %9328, 1
  %9331 = uitofp i32 %9329 to float
  %9332 = uitofp i32 %9330 to float
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = fmul fast float %9331, %9255
  %9337 = fmul fast float %9332, %9256
  %9338 = fadd fast float %9336, -5.000000e-01
  %9339 = fadd fast float %9337, -5.000000e-01
  %9340 = call float @dx.op.unary.f32(i32 22, float %9338)  ; Frc(value)
  %9341 = call float @dx.op.unary.f32(i32 22, float %9339)  ; Frc(value)
  %9342 = fmul fast float %9340, %9340
  %9343 = fmul fast float %9342, %9340
  %9344 = fsub fast float 3.000000e+00, %9340
  %9345 = fmul fast float %9342, %9344
  %9346 = fmul fast float %9340, 3.000000e+00
  %9347 = fmul fast float %9343, 3.000000e+00
  %9348 = fmul fast float %9342, 6.000000e+00
  %9349 = fsub fast float %9347, %9348
  %9350 = fadd fast float %9349, 4.000000e+00
  %9351 = fmul fast float %9350, 0x3FC5555560000000
  %9352 = fmul fast float %9343, -3.000000e+00
  %9353 = fadd fast float %9342, %9340
  %9354 = fmul fast float %9353, 3.000000e+00
  %9355 = fadd fast float %9352, 1.000000e+00
  %9356 = fadd fast float %9355, %9354
  %9357 = fmul fast float %9343, 0x3FC5555560000000
  %9358 = fmul fast float %9341, %9341
  %9359 = fmul fast float %9358, %9341
  %9360 = fsub fast float 3.000000e+00, %9341
  %9361 = fmul fast float %9358, %9360
  %9362 = fmul fast float %9341, 3.000000e+00
  %9363 = fmul fast float %9359, 3.000000e+00
  %9364 = fmul fast float %9358, 6.000000e+00
  %9365 = fsub fast float %9363, %9364
  %9366 = fadd fast float %9365, 4.000000e+00
  %9367 = fmul fast float %9366, 0x3FC5555560000000
  %9368 = fmul fast float %9359, -3.000000e+00
  %9369 = fadd fast float %9358, %9341
  %9370 = fmul fast float %9369, 3.000000e+00
  %9371 = fadd fast float %9368, 1.000000e+00
  %9372 = fadd fast float %9371, %9370
  %9373 = fmul fast float %9359, 0x3FC5555560000000
  %9374 = fadd fast float %9340, 1.000000e+00
  %9375 = fsub fast float 1.000000e+00, %9346
  %9376 = fadd fast float %9375, %9345
  %9377 = fadd fast float %9376, %9350
  %9378 = fmul fast float %9377, 0x3FC5555560000000
  %9379 = fdiv fast float %9351, %9378
  %9380 = fsub fast float %9374, %9379
  %9381 = fsub fast float 1.000000e+00, %9340
  %9382 = fadd fast float %9356, %9343
  %9383 = fmul fast float %9382, 0x3FC5555560000000
  %9384 = fdiv fast float %9357, %9383
  %9385 = fadd fast float %9381, %9384
  %9386 = fadd fast float %9341, 1.000000e+00
  %9387 = fsub fast float 1.000000e+00, %9362
  %9388 = fadd fast float %9387, %9361
  %9389 = fadd fast float %9388, %9366
  %9390 = fmul fast float %9389, 0x3FC5555560000000
  %9391 = fdiv fast float %9367, %9390
  %9392 = fsub fast float %9386, %9391
  %9393 = fsub fast float 1.000000e+00, %9341
  %9394 = fadd fast float %9372, %9359
  %9395 = fmul fast float %9394, 0x3FC5555560000000
  %9396 = fdiv fast float %9373, %9395
  %9397 = fadd fast float %9396, %9393
  %9398 = fmul fast float %9380, %9334
  %9399 = fsub fast float %9255, %9398
  %9400 = fmul fast float %9385, %9334
  %9401 = fadd fast float %9400, %9255
  %9402 = fmul fast float %9397, %9335
  %9403 = fadd fast float %9402, %9256
  %9404 = fmul fast float %9392, %9335
  %9405 = fsub fast float %9256, %9404
  %9406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9399, float %9405, float %9323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9407 = extractvalue %dx.types.ResRet.f32 %9406, 0
  %9408 = extractvalue %dx.types.ResRet.f32 %9406, 1
  %9409 = extractvalue %dx.types.ResRet.f32 %9406, 2
  %9410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9401, float %9405, float %9323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9411 = extractvalue %dx.types.ResRet.f32 %9410, 0
  %9412 = extractvalue %dx.types.ResRet.f32 %9410, 1
  %9413 = extractvalue %dx.types.ResRet.f32 %9410, 2
  %9414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9399, float %9403, float %9323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9415 = extractvalue %dx.types.ResRet.f32 %9414, 0
  %9416 = extractvalue %dx.types.ResRet.f32 %9414, 1
  %9417 = extractvalue %dx.types.ResRet.f32 %9414, 2
  %9418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9401, float %9403, float %9323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9419 = extractvalue %dx.types.ResRet.f32 %9418, 0
  %9420 = extractvalue %dx.types.ResRet.f32 %9418, 1
  %9421 = extractvalue %dx.types.ResRet.f32 %9418, 2
  %9422 = fsub fast float %9415, %9407
  %9423 = fsub fast float %9416, %9408
  %9424 = fsub fast float %9417, %9409
  %9425 = fmul fast float %9422, %9395
  %9426 = fmul fast float %9423, %9395
  %9427 = fmul fast float %9424, %9395
  %9428 = fadd fast float %9425, %9407
  %9429 = fadd fast float %9426, %9408
  %9430 = fadd fast float %9427, %9409
  %9431 = fsub fast float %9419, %9411
  %9432 = fsub fast float %9420, %9412
  %9433 = fsub fast float %9421, %9413
  %9434 = fmul fast float %9431, %9395
  %9435 = fmul fast float %9432, %9395
  %9436 = fmul fast float %9433, %9395
  %9437 = fsub fast float %9411, %9428
  %9438 = fadd fast float %9437, %9434
  %9439 = fsub fast float %9412, %9429
  %9440 = fadd fast float %9439, %9435
  %9441 = fsub fast float %9413, %9430
  %9442 = fadd fast float %9441, %9436
  %9443 = fmul fast float %9438, %9383
  %9444 = fmul fast float %9440, %9383
  %9445 = fmul fast float %9442, %9383
  %9446 = fadd fast float %9443, %9428
  %9447 = fadd fast float %9444, %9429
  %9448 = fadd fast float %9445, %9430
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 1
  %9451 = fmul fast float %9446, %9450
  %9452 = fmul fast float %9447, %9450
  %9453 = fmul fast float %9448, %9450
  br label %9454

; <label>:9454                                    ; preds = %9285, %9242
  %9455 = phi float [ %9325, %9285 ], [ 1.000000e+00, %9242 ]
  %9456 = phi float [ %9326, %9285 ], [ 1.000000e+00, %9242 ]
  %9457 = phi float [ %9327, %9285 ], [ 1.000000e+00, %9242 ]
  %9458 = phi float [ %9451, %9285 ], [ 0.000000e+00, %9242 ]
  %9459 = phi float [ %9452, %9285 ], [ 0.000000e+00, %9242 ]
  %9460 = phi float [ %9453, %9285 ], [ 0.000000e+00, %9242 ]
  %9461 = fmul fast float %9458, %7796
  %9462 = fmul fast float %9459, %7796
  %9463 = fmul fast float %9460, %7796
  %9464 = fmul fast float %9455, %9249
  %9465 = call float @dx.op.dot3.f32(i32 55, float %9455, float %9456, float %9457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9466 = call float @dx.op.dot3.f32(i32 55, float %9461, float %9462, float %9463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9467 = select i1 %228, float %9465, float %9455
  %9468 = select i1 %228, float %9465, float %9456
  %9469 = select i1 %228, float 1.000000e+00, float %9457
  %9470 = select i1 %228, float %9466, float %9461
  %9471 = select i1 %228, float 0.000000e+00, float %9462
  %9472 = select i1 %228, float 0.000000e+00, float %9463
  %9473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.i32 %9473, 3
  %9475 = and i32 %9474, 3
  %9476 = icmp ne i32 %9475, 0
  %9477 = and i32 %9474, 4
  %9478 = icmp ne i32 %9477, 0
  %9479 = and i1 %9476, %9478
  %9480 = and i1 %228, %9479
  br i1 %9480, label %9481, label %9487

; <label>:9481                                    ; preds = %9454
  %9482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9482, 1
  %9484 = fadd fast float %9464, -1.000000e+00
  %9485 = fmul fast float %9483, %9484
  %9486 = fadd fast float %9485, 1.000000e+00
  br label %9487

; <label>:9487                                    ; preds = %9481, %9454
  %9488 = phi float [ %9486, %9481 ], [ %9464, %9454 ]
  %9489 = fadd fast float %9246, %9243
  %9490 = fmul fast float %9467, %9489
  %9491 = fadd fast float %9490, %9470
  %9492 = fadd fast float %9247, %9244
  %9493 = fmul fast float %9468, %9492
  %9494 = fadd fast float %9493, %9471
  %9495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9496 = extractvalue %dx.types.CBufRet.f32 %9495, 0
  br i1 %228, label %9497, label %9521

; <label>:9497                                    ; preds = %9487
  %9498 = fadd fast float %9491, %9494
  %9499 = fmul fast float %9496, %9498
  %9500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9501 = extractvalue %dx.types.CBufRet.f32 %9500, 3
  %9502 = extractvalue %dx.types.CBufRet.f32 %7800, 1
  %9503 = fsub fast float %7805, %7799
  %9504 = fadd fast float %9503, %7806
  %9505 = fsub fast float %9504, %9502
  %9506 = extractvalue %dx.types.CBufRet.f32 %7800, 2
  %9507 = fmul fast float %9505, %9506
  %9508 = call float @dx.op.unary.f32(i32 7, float %9507)  ; Saturate(value)
  %9509 = fsub fast float %9508, %9501
  %9510 = fmul fast float %9509, %9488
  %9511 = fadd fast float %9510, %9501
  %9512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9513 = extractvalue %dx.types.CBufRet.f32 %9512, 0
  %9514 = fsub fast float %9511, %9513
  %9515 = fmul fast float %9514, 1.000000e+01
  %9516 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9517 = fsub fast float %4215, %7796
  %9518 = fmul fast float %9516, %9517
  %9519 = fadd fast float %9518, %7796
  %9520 = fmul fast float %9519, %9511
  br label %9545

; <label>:9521                                    ; preds = %9487
  %9522 = fadd fast float %9248, %9245
  %9523 = fmul fast float %9469, %9522
  %9524 = fadd fast float %9523, %9472
  %9525 = fmul fast float %9496, %9491
  %9526 = fmul fast float %9496, %9494
  %9527 = fmul fast float %9496, %9524
  %9528 = call float @dx.op.binary.f32(i32 35, float %9526, float %9527)  ; FMax(a,b)
  %9529 = call float @dx.op.binary.f32(i32 35, float %9525, float %9528)  ; FMax(a,b)
  %9530 = call float @dx.op.binary.f32(i32 35, float %9529, float %7796)  ; FMax(a,b)
  %9531 = fcmp fast ugt float %9530, 0x3F10000000000000
  br i1 %9531, label %9533, label %9532

; <label>:9532                                    ; preds = %9521
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9533

; <label>:9533                                    ; preds = %9532, %9521
  %9534 = add i32 %60, 356
  %9535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9534, i32 undef)  ; BufferLoad(srv,index,wot)
  %9536 = extractvalue %dx.types.ResRet.i32 %9535, 0
  %9537 = and i32 %9536, 32
  %9538 = icmp eq i32 %9537, 0
  br i1 %9538, label %9545, label %9539

; <label>:9539                                    ; preds = %9533
  %9540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9541 = extractvalue %dx.types.CBufRet.f32 %9540, 0
  %9542 = fmul fast float %9541, 0x3FE99999A0000000
  %9543 = fadd fast float %9541, %9525
  %9544 = fadd fast float %9542, %9527
  br label %9545

; <label>:9545                                    ; preds = %9539, %9533, %9497
  %9546 = phi float [ %9499, %9497 ], [ %9543, %9539 ], [ %9525, %9533 ]
  %9547 = phi float [ %9520, %9497 ], [ %9526, %9539 ], [ %9526, %9533 ]
  %9548 = phi float [ %9519, %9497 ], [ %9544, %9539 ], [ %9527, %9533 ]
  %9549 = phi float [ %9519, %9497 ], [ %7796, %9539 ], [ %7796, %9533 ]
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
!74 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0]}
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
!92 = !{i32 3, i32 5}
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

