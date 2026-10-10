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
; shader hash: fd6cc244db6f59124f92da86b3f46e9d
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
  %455 = add i32 %60, 520
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
  %1404 = add i32 %60, 476
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
  %1456 = add i32 %60, 460
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
  %1482 = add i32 %60, 412
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
  %1505 = add i32 %60, 492
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
  %1703 = add i32 %60, 428
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
  %1787 = add i32 %60, 444
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
  %2258 = add i32 %60, 480
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
  %2310 = add i32 %60, 464
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
  %2336 = add i32 %60, 416
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
  %2359 = add i32 %60, 496
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
  %2557 = add i32 %60, 432
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
  %2641 = add i32 %60, 448
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
  %3112 = add i32 %60, 484
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
  %3164 = add i32 %60, 468
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
  %3190 = add i32 %60, 420
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
  %3213 = add i32 %60, 500
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
  %3411 = add i32 %60, 436
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
  %3495 = add i32 %60, 452
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
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = call float @dx.op.dot2.f32(i32 54, float %3725, float %3726, float %3725, float %3726)  ; Dot2(ax,ay,bx,by)
  %3740 = fmul fast float %3739, 0x3FE3333340000000
  %3741 = fsub fast float 1.000000e+00, %3740
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3726, float %3741, float %3725, float %3726, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.unary.f32(i32 25, float %3742)  ; Rsqrt(value)
  %3744 = fmul fast float %3743, %3725
  %3745 = fmul fast float %3743, %3726
  %3746 = fmul fast float %3741, %3743
  %3747 = fmul fast float %3746, %111
  %3748 = fmul fast float %3746, %112
  %3749 = fmul fast float %3746, %113
  %3750 = fmul fast float %3744, %76
  %3751 = fmul fast float %3744, %77
  %3752 = fmul fast float %3744, %78
  %3753 = fadd fast float %3747, %3750
  %3754 = fadd fast float %3748, %3751
  %3755 = fadd fast float %3749, %3752
  %3756 = fmul fast float %123, %3745
  %3757 = fmul fast float %124, %3745
  %3758 = fmul fast float %125, %3745
  %3759 = fadd fast float %3753, %3756
  %3760 = fadd fast float %3754, %3757
  %3761 = fadd fast float %3755, %3758
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3759, float %3760, float %3761, float %3759, float %3760, float %3761)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = call float @dx.op.unary.f32(i32 25, float %3762)  ; Rsqrt(value)
  %3764 = fmul fast float %3759, %3763
  %3765 = fmul fast float %3760, %3763
  %3766 = fmul fast float %3761, %3763
  %3767 = and i32 %62, 1
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %3769, label %4277

; <label>:3769                                    ; preds = %3724
  %3770 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3771 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3772 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3773 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3774 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3775 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3776 = fadd fast float %3770, %167
  %3777 = fadd fast float %3771, %168
  %3778 = fadd fast float %3772, %169
  %3779 = fadd fast float %3773, %167
  %3780 = fadd fast float %3774, %168
  %3781 = fadd fast float %3775, %169
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3782, 2
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3789 = fmul fast float %3783, %104
  %3790 = fmul fast float %3789, %3787
  %3791 = fmul fast float %3784, %105
  %3792 = fmul fast float %3791, %3788
  %3793 = fptoui float %3790 to i32
  %3794 = fptoui float %3792 to i32
  %3795 = fadd fast float %3783, -1.000000e+00
  %3796 = fadd fast float %3784, -1.000000e+00
  %3797 = fptoui float %3795 to i32
  %3798 = fptoui float %3796 to i32
  %3799 = call i32 @dx.op.binary.i32(i32 40, i32 %3793, i32 %3797)  ; UMin(a,b)
  %3800 = call i32 @dx.op.binary.i32(i32 40, i32 %3794, i32 %3798)  ; UMin(a,b)
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3804 = fmul fast float %3802, %92
  %3805 = fsub fast float %3804, %3803
  %3806 = fadd fast float %3785, -1.000000e+00
  %3807 = call float @dx.op.binary.f32(i32 36, float %3805, float %3806)  ; FMin(a,b)
  %3808 = fptoui float %3807 to i32
  %3809 = fptoui float %3783 to i32
  %3810 = fptoui float %3784 to i32
  %3811 = mul i32 %3808, %3810
  %3812 = add i32 %3811, %3800
  %3813 = mul i32 %3812, %3809
  %3814 = add i32 %3813, %3799
  %3815 = shl i32 %3814, 2
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = and i32 %3817, 1023
  %3819 = lshr i32 %3817, 10
  %3820 = icmp eq i32 %3818, 0
  br i1 %3820, label %4246, label %3821

; <label>:3821                                    ; preds = %3769
  %3822 = and i32 %3817, 1023
  br label %3823

; <label>:3823                                    ; preds = %3949, %3821
  %3824 = phi i32 [ %3899, %3949 ], [ 0, %3821 ]
  %3825 = phi float [ %3950, %3949 ], [ 0.000000e+00, %3821 ]
  %3826 = phi float [ %3951, %3949 ], [ %3738, %3821 ]
  %3827 = phi float [ %3952, %3949 ], [ %3736, %3821 ]
  %3828 = phi float [ %3953, %3949 ], [ 0.000000e+00, %3821 ]
  %3829 = phi float [ %3954, %3949 ], [ 0.000000e+00, %3821 ]
  %3830 = phi float [ %3955, %3949 ], [ %3730, %3821 ]
  %3831 = phi float [ %3956, %3949 ], [ %3731, %3821 ]
  %3832 = phi float [ %3957, %3949 ], [ %3732, %3821 ]
  %3833 = phi float [ %3958, %3949 ], [ %3764, %3821 ]
  %3834 = phi float [ %3959, %3949 ], [ %3765, %3821 ]
  %3835 = phi float [ %3960, %3949 ], [ %3766, %3821 ]
  %3836 = phi float [ %3961, %3949 ], [ %3735, %3821 ]
  %3837 = phi float [ %3962, %3949 ], [ %3734, %3821 ]
  %3838 = phi float [ %3963, %3949 ], [ 0.000000e+00, %3821 ]
  %3839 = phi float [ %3964, %3949 ], [ %3733, %3821 ]
  %3840 = phi float [ %3965, %3949 ], [ %3727, %3821 ]
  %3841 = phi float [ %3966, %3949 ], [ %3728, %3821 ]
  %3842 = phi float [ %3967, %3949 ], [ %3729, %3821 ]
  %3843 = add nuw nsw i32 %3824, %3819
  %3844 = shl i32 %3843, 2
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = shl i32 %3846, 8
  %3848 = or i32 %3847, 48
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3854 = or i32 %3847, 64
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.i32 %3855, 1
  %3858 = or i32 %3847, 80
  %3859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 2
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 3
  %3862 = or i32 %3847, 96
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = or i32 %3847, 112
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3871 = or i32 %3847, 128
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = or i32 %3847, 144
  %3878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = extractvalue %dx.types.ResRet.f32 %3878, 3
  %3883 = or i32 %3847, 160
  %3884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.ResRet.f32 %3884, 1
  %3887 = extractvalue %dx.types.ResRet.f32 %3884, 2
  %3888 = extractvalue %dx.types.ResRet.f32 %3884, 3
  %3889 = or i32 %3847, 192
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = or i32 %3847, 208
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = or i32 %3847, 248
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = add nuw nsw i32 %3824, 1
  %3900 = bitcast float %3853 to i32
  %3901 = and i32 %3900, 512
  %3902 = icmp eq i32 %3901, 0
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = extractvalue %dx.types.ResRet.f32 %3903, 3
  %3908 = call float @dx.op.dot4.f32(i32 56, float %3904, float %3905, float %3906, float %3907, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3909 = or i32 %3847, 16
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.ResRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.ResRet.f32 %3910, 2
  %3914 = extractvalue %dx.types.ResRet.f32 %3910, 3
  %3915 = call float @dx.op.dot4.f32(i32 56, float %3911, float %3912, float %3913, float %3914, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3916 = or i32 %3847, 32
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = call float @dx.op.dot4.f32(i32 56, float %3918, float %3919, float %3920, float %3921, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3923 = call float @dx.op.unary.f32(i32 27, float %3908)  ; Round_ni(value)
  %3924 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3925 = call float @dx.op.unary.f32(i32 27, float %3915)  ; Round_ni(value)
  %3926 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3927 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3928 = call float @dx.op.unary.f32(i32 27, float %3927)  ; Round_ni(value)
  %3929 = fadd fast float %3926, %3924
  %3930 = fadd fast float %3929, %3928
  %3931 = fcmp fast oeq float %3930, 0.000000e+00
  %3932 = call float @dx.op.dot4.f32(i32 56, float %3904, float %3905, float %3906, float %3907, float %3776, float %3777, float %3778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3933 = call float @dx.op.dot4.f32(i32 56, float %3911, float %3912, float %3913, float %3914, float %3776, float %3777, float %3778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3934 = call float @dx.op.dot4.f32(i32 56, float %3904, float %3905, float %3906, float %3907, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3935 = call float @dx.op.dot4.f32(i32 56, float %3911, float %3912, float %3913, float %3914, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3936 = fsub fast float %3932, %3908
  %3937 = fsub fast float %3934, %3908
  %3938 = fsub fast float %3933, %3915
  %3939 = fsub fast float %3935, %3915
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3943 = fadd fast float %3942, %3940
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3946 = fcmp fast ogt float %3944, %3945
  %3947 = and i1 %3931, %3946
  %3948 = and i1 %3902, %3947
  br i1 %3948, label %3969, label %3949

; <label>:3949                                    ; preds = %4232, %4050, %3969, %3823
  %3950 = phi float [ %3825, %3969 ], [ %4053, %4050 ], [ %4053, %4232 ], [ %3825, %3823 ]
  %3951 = phi float [ %3826, %3969 ], [ %3826, %4050 ], [ %4207, %4232 ], [ %3826, %3823 ]
  %3952 = phi float [ %3827, %3969 ], [ %3827, %4050 ], [ %4205, %4232 ], [ %3827, %3823 ]
  %3953 = phi float [ %3828, %3969 ], [ %3828, %4050 ], [ %4177, %4232 ], [ %3828, %3823 ]
  %3954 = phi float [ %3829, %3969 ], [ %3829, %4050 ], [ %4175, %4232 ], [ %3829, %3823 ]
  %3955 = phi float [ %3830, %3969 ], [ %3830, %4050 ], [ %4242, %4232 ], [ %3830, %3823 ]
  %3956 = phi float [ %3831, %3969 ], [ %3831, %4050 ], [ %4243, %4232 ], [ %3831, %3823 ]
  %3957 = phi float [ %3832, %3969 ], [ %3832, %4050 ], [ %4244, %4232 ], [ %3832, %3823 ]
  %3958 = phi float [ %3833, %3969 ], [ %3833, %4050 ], [ %4156, %4232 ], [ %3833, %3823 ]
  %3959 = phi float [ %3834, %3969 ], [ %3834, %4050 ], [ %4157, %4232 ], [ %3834, %3823 ]
  %3960 = phi float [ %3835, %3969 ], [ %3835, %4050 ], [ %4158, %4232 ], [ %3835, %3823 ]
  %3961 = phi float [ %3836, %3969 ], [ %3836, %4050 ], [ %4185, %4232 ], [ %3836, %3823 ]
  %3962 = phi float [ %3837, %3969 ], [ %3837, %4050 ], [ %4182, %4232 ], [ %3837, %3823 ]
  %3963 = phi float [ %3838, %3969 ], [ %3838, %4050 ], [ %4179, %4232 ], [ %3838, %3823 ]
  %3964 = phi float [ %3839, %3969 ], [ %3839, %4050 ], [ %4173, %4232 ], [ %3839, %3823 ]
  %3965 = phi float [ %3840, %3969 ], [ %3840, %4050 ], [ %4168, %4232 ], [ %3840, %3823 ]
  %3966 = phi float [ %3841, %3969 ], [ %3841, %4050 ], [ %4169, %4232 ], [ %3841, %3823 ]
  %3967 = phi float [ %3842, %3969 ], [ %3842, %4050 ], [ %4170, %4232 ], [ %3842, %3823 ]
  %3968 = icmp eq i32 %3899, %3822
  br i1 %3968, label %4245, label %3823

; <label>:3969                                    ; preds = %3823
  %3970 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3971 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3975 = extractvalue %dx.types.ResRet.i32 %3855, 3
  %3976 = extractvalue %dx.types.ResRet.i32 %3855, 2
  %3977 = add i32 %3975, 0
  %3978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3978, %dx.types.Handle %3979, float %3908, float %3915, float undef, float undef, i32 0, i32 0, i32 undef, float %3936, float %3938, float undef, float %3937, float %3939, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = fmul fast float %3981, %3974
  %3983 = fadd fast float %3982, %3973
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3908, %3864
  %3986 = call float @dx.op.tertiary.f32(i32 46, float %3865, float %3915, float %3985)  ; FMad(a,b,c)
  %3987 = fadd fast float %3986, %3972
  %3988 = fmul fast float %3908, %3866
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3915, float %3988)  ; FMad(a,b,c)
  %3990 = fadd fast float %3989, %3971
  %3991 = fmul fast float %3936, %3864
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3865, float %3938, float %3991)  ; FMad(a,b,c)
  %3993 = fmul fast float %3936, %3866
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3938, float %3993)  ; FMad(a,b,c)
  %3995 = fmul fast float %3937, %3864
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3865, float %3939, float %3995)  ; FMad(a,b,c)
  %3997 = fmul fast float %3937, %3866
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3939, float %3997)  ; FMad(a,b,c)
  %3999 = add i32 %3976, 0
  %4000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3999, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4001 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4000, %dx.types.Handle %3979, float %3987, float %3990, float undef, float undef, i32 0, i32 0, i32 undef, float %3992, float %3994, float undef, float %3996, float %3998, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = and i32 %3900, 1024
  %4004 = icmp ne i32 %4003, 0
  %4005 = fcmp fast ogt float %4002, 0x3FE0101020000000
  %4006 = uitofp i1 %4005 to float
  %4007 = select i1 %4004, float %4006, float %4002
  %4008 = and i32 %3900, 8192
  %4009 = icmp ne i32 %4008, 0
  %4010 = select i1 %4009, float %3970, float 1.000000e+00
  %4011 = fmul fast float %3908, 2.000000e+00
  %4012 = fadd fast float %4011, -1.000000e+00
  %4013 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4014 = fmul fast float %4013, %3897
  %4015 = fsub fast float %4014, %3897
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %3915, 2.000000e+00
  %4018 = fadd fast float %4017, -1.000000e+00
  %4019 = call float @dx.op.unary.f32(i32 6, float %4018)  ; FAbs(value)
  %4020 = fmul fast float %4019, %3898
  %4021 = fsub fast float %4020, %3898
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = fmul fast float %3927, %3860
  %4024 = fsub fast float %4023, %3860
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fmul fast float %3984, %4010
  %4027 = fmul fast float %4026, %3981
  %4028 = fmul fast float %4027, %4016
  %4029 = fmul fast float %4028, %4007
  %4030 = fmul fast float %4029, %4022
  %4031 = fmul fast float %4030, %4025
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4035 = fsub fast float %3944, %4034
  %4036 = fmul fast float %4035, %4033
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %4031, %3861
  %4039 = fadd fast float %4031, %3861
  %4040 = fmul fast float %4039, %3870
  %4041 = fsub fast float %4040, %3870
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = and i32 %3900, 128
  %4044 = icmp ne i32 %4043, 0
  %4045 = select i1 %4044, float %4042, float %4038
  %4046 = fmul fast float %4045, %4037
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = fcmp fast ugt float %4046, %4048
  br i1 %4049, label %4050, label %3949

; <label>:4050                                    ; preds = %3969
  %4051 = select i1 %4009, float %4046, float 0.000000e+00
  %4052 = fadd fast float %4051, %3825
  %4053 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  br i1 %4009, label %3949, label %4054

; <label>:4054                                    ; preds = %4050
  %4055 = and i32 %3900, 4
  %4056 = and i32 %3900, 8
  %4057 = add i32 %3856, 0
  %4058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4057, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4058, %dx.types.Handle %4059, float %3987, float %3990, float undef, float undef, i32 0, i32 0, i32 undef, float %3992, float %3994, float undef, float %3996, float %3998, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.ResRet.f32 %4060, 3
  %4065 = bitcast float %3882 to i32
  %4066 = and i32 %4065, 255
  %4067 = uitofp i32 %4066 to float
  %4068 = lshr i32 %4065, 8
  %4069 = and i32 %4068, 255
  %4070 = uitofp i32 %4069 to float
  %4071 = fmul fast float %4064, %4067
  %4072 = fadd fast float %4071, %4070
  %4073 = fmul fast float %4072, 0x3F70101000000000
  %4074 = add i32 %3857, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4075, %dx.types.Handle %4059, float %3987, float %3990, float undef, float undef, i32 0, i32 0, i32 undef, float %3992, float %3994, float undef, float %3996, float %3998, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.ResRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.ResRet.f32 %4076, 2
  %4080 = extractvalue %dx.types.ResRet.f32 %4076, 3
  %4081 = bitcast float %3876 to i32
  %4082 = and i32 %4081, 255
  %4083 = uitofp i32 %4082 to float
  %4084 = lshr i32 %4081, 8
  %4085 = and i32 %4084, 255
  %4086 = uitofp i32 %4085 to float
  %4087 = lshr i32 %4081, 16
  %4088 = and i32 %4087, 255
  %4089 = uitofp i32 %4088 to float
  %4090 = fmul fast float %4089, 0x3F70101000000000
  %4091 = fmul fast float %4077, %4083
  %4092 = fadd fast float %4091, %4086
  %4093 = fmul fast float %4092, 0x3F70101000000000
  %4094 = fadd fast float %4078, -5.000000e-01
  %4095 = fadd fast float %4080, -5.000000e-01
  %4096 = fmul fast float %4094, %4090
  %4097 = fmul fast float %4095, %4090
  %4098 = fadd fast float %4096, 5.000000e-01
  %4099 = fadd fast float %4097, 5.000000e-01
  %4100 = fmul fast float %4061, %3885
  %4101 = fmul fast float %4062, %3886
  %4102 = fmul fast float %4063, %3887
  %4103 = fmul fast float %4098, 2.000000e+00
  %4104 = fadd fast float %4103, -1.000000e+00
  %4105 = fmul fast float %4099, 2.000000e+00
  %4106 = fadd fast float %4105, -1.000000e+00
  %4107 = fadd fast float %4104, %4106
  %4108 = fmul fast float %4107, 5.000000e-01
  %4109 = fsub fast float %4104, %4106
  %4110 = fmul fast float %4109, 5.000000e-01
  %4111 = call float @dx.op.unary.f32(i32 6, float %4108)  ; FAbs(value)
  %4112 = fsub fast float 1.000000e+00, %4111
  %4113 = call float @dx.op.unary.f32(i32 6, float %4110)  ; FAbs(value)
  %4114 = fsub fast float %4112, %4113
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4110, float %4114, float %4108, float %4110, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = call float @dx.op.unary.f32(i32 25, float %4115)  ; Rsqrt(value)
  %4117 = fmul fast float %4108, %4116
  %4118 = fmul fast float %4110, %4116
  %4119 = fmul fast float %4116, %4114
  %4120 = fmul fast float %4119, %3850
  %4121 = fmul fast float %4119, %3851
  %4122 = fmul fast float %4119, %3852
  %4123 = fmul fast float %4117, %3873
  %4124 = fmul fast float %4117, %3874
  %4125 = fmul fast float %4117, %3875
  %4126 = fadd fast float %4123, %4120
  %4127 = fadd fast float %4124, %4121
  %4128 = fadd fast float %4125, %4122
  %4129 = fmul fast float %4118, %3879
  %4130 = fmul fast float %4118, %3880
  %4131 = fmul fast float %4118, %3881
  %4132 = fadd fast float %4126, %4129
  %4133 = fadd fast float %4127, %4130
  %4134 = fadd fast float %4128, %4131
  %4135 = call float @dx.op.dot3.f32(i32 55, float %4132, float %4133, float %4134, float %4132, float %4133, float %4134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = call float @dx.op.unary.f32(i32 25, float %4135)  ; Rsqrt(value)
  %4137 = fmul fast float %4132, %4136
  %4138 = fmul fast float %4133, %4136
  %4139 = fmul fast float %4134, %4136
  %4140 = icmp ne i32 %4056, 0
  %4141 = select i1 %4140, float 1.000000e+00, float 0.000000e+00
  %4142 = fmul fast float %4046, %4141
  %4143 = and i32 %3900, 1
  %4144 = icmp eq i32 %4143, 0
  br i1 %4144, label %4145, label %4149

; <label>:4145                                    ; preds = %4054
  %4146 = fsub fast float %4137, %3833
  %4147 = fsub fast float %4138, %3834
  %4148 = fsub fast float %4139, %3835
  br label %4149

; <label>:4149                                    ; preds = %4145, %4054
  %4150 = phi float [ %4146, %4145 ], [ %4137, %4054 ]
  %4151 = phi float [ %4147, %4145 ], [ %4138, %4054 ]
  %4152 = phi float [ %4148, %4145 ], [ %4139, %4054 ]
  %4153 = fmul float %4152, %4142
  %4154 = fmul float %4151, %4142
  %4155 = fmul float %4150, %4142
  %4156 = fadd fast float %4155, %3833
  %4157 = fadd fast float %4154, %3834
  %4158 = fadd fast float %4153, %3835
  %4159 = icmp ne i32 %4055, 0
  %4160 = select i1 %4159, float 1.000000e+00, float 0.000000e+00
  %4161 = fmul fast float %4046, %4160
  %4162 = fsub fast float %4100, %3840
  %4163 = fsub fast float %4101, %3841
  %4164 = fsub fast float %4102, %3842
  %4165 = fmul fast float %4162, %4161
  %4166 = fmul fast float %4163, %4161
  %4167 = fmul fast float %4164, %4161
  %4168 = fadd fast float %4165, %3840
  %4169 = fadd fast float %4166, %3841
  %4170 = fadd fast float %4167, %3842
  %4171 = fsub fast float %4073, %3839
  %4172 = fmul fast float %4171, %4161
  %4173 = fadd fast float %4172, %3839
  %4174 = fmul fast float %4161, %3829
  %4175 = fsub fast float %3829, %4174
  %4176 = fmul fast float %4161, %3828
  %4177 = fsub fast float %3828, %4176
  %4178 = fadd fast float %4046, %3838
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fsub fast float %4093, %3837
  %4181 = fmul fast float %4180, %4142
  %4182 = fadd fast float %4181, %3837
  %4183 = fsub fast float %4079, %3836
  %4184 = fmul fast float %4183, %4142
  %4185 = fadd fast float %4184, %3836
  %4186 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4190 = fmul fast float %4189, %4186
  %4191 = fadd fast float %4190, %4188
  %4192 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4193 = bitcast float %3888 to i32
  %4194 = and i32 %4193, 65535
  %4195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4194)  ; LegacyF16ToF32(value)
  %4196 = lshr i32 %4193, 16
  %4197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4196)  ; LegacyF16ToF32(value)
  %4198 = fcmp fast oge float %4195, 0.000000e+00
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = select i1 %4198, float %4195, float %4200
  %4202 = fadd fast float %4201, %4197
  %4203 = fsub fast float %4192, %3827
  %4204 = fmul fast float %4203, %4046
  %4205 = fadd fast float %4204, %3827
  %4206 = fmul fast float %4202, %4046
  %4207 = call float @dx.op.binary.f32(i32 35, float %3826, float %4206)  ; FMax(a,b)
  %4208 = and i32 %3900, 16
  %4209 = icmp eq i32 %4208, 0
  br i1 %4209, label %4232, label %4210

; <label>:4210                                    ; preds = %4149
  %4211 = bitcast float %3894 to i32
  %4212 = add i32 %3891, 0
  %4213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4212, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4213, %dx.types.Handle %4059, float %3987, float %3990, float undef, float undef, i32 0, i32 0, i32 undef, float %3992, float %3994, float undef, float %3996, float %3998, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = and i32 %4211, 65535
  %4219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4218)  ; LegacyF16ToF32(value)
  %4220 = fmul fast float %4215, %3885
  %4221 = fmul fast float %4216, %3886
  %4222 = fmul fast float %4217, %3887
  %4223 = and i32 %3900, 16384
  %4224 = icmp ne i32 %4223, 0
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = select i1 %4224, float %4226, float 1.000000e+00
  %4228 = fmul fast float %4227, %4219
  %4229 = fmul fast float %4220, %4228
  %4230 = fmul fast float %4221, %4228
  %4231 = fmul fast float %4222, %4228
  br label %4232

; <label>:4232                                    ; preds = %4210, %4149
  %4233 = phi float [ %4229, %4210 ], [ 0.000000e+00, %4149 ]
  %4234 = phi float [ %4230, %4210 ], [ 0.000000e+00, %4149 ]
  %4235 = phi float [ %4231, %4210 ], [ 0.000000e+00, %4149 ]
  %4236 = fsub fast float %4233, %3830
  %4237 = fsub fast float %4234, %3831
  %4238 = fsub fast float %4235, %3832
  %4239 = fmul fast float %4236, %4046
  %4240 = fmul fast float %4237, %4046
  %4241 = fmul fast float %4238, %4046
  %4242 = fadd fast float %4239, %3830
  %4243 = fadd fast float %4240, %3831
  %4244 = fadd fast float %4241, %3832
  br label %3949

; <label>:4245                                    ; preds = %3949
  br label %4246

; <label>:4246                                    ; preds = %4245, %3769
  %4247 = phi float [ 0.000000e+00, %3769 ], [ %3950, %4245 ]
  %4248 = phi float [ %3738, %3769 ], [ %3951, %4245 ]
  %4249 = phi float [ %3736, %3769 ], [ %3952, %4245 ]
  %4250 = phi float [ 0.000000e+00, %3769 ], [ %3953, %4245 ]
  %4251 = phi float [ 0.000000e+00, %3769 ], [ %3954, %4245 ]
  %4252 = phi float [ %3730, %3769 ], [ %3955, %4245 ]
  %4253 = phi float [ %3731, %3769 ], [ %3956, %4245 ]
  %4254 = phi float [ %3732, %3769 ], [ %3957, %4245 ]
  %4255 = phi float [ %3764, %3769 ], [ %3958, %4245 ]
  %4256 = phi float [ %3765, %3769 ], [ %3959, %4245 ]
  %4257 = phi float [ %3766, %3769 ], [ %3960, %4245 ]
  %4258 = phi float [ %3735, %3769 ], [ %3961, %4245 ]
  %4259 = phi float [ %3734, %3769 ], [ %3962, %4245 ]
  %4260 = phi float [ 0.000000e+00, %3769 ], [ %3963, %4245 ]
  %4261 = phi float [ %3733, %3769 ], [ %3964, %4245 ]
  %4262 = phi float [ %3727, %3769 ], [ %3965, %4245 ]
  %4263 = phi float [ %3728, %3769 ], [ %3966, %4245 ]
  %4264 = phi float [ %3729, %3769 ], [ %3967, %4245 ]
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4255, float %4256, float %4257, float %4255, float %4256, float %4257)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 25, float %4265)  ; Rsqrt(value)
  %4267 = fmul fast float %4266, %4255
  %4268 = fmul fast float %4266, %4256
  %4269 = fmul fast float %4266, %4257
  %4270 = fadd fast float %4260, %1171
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4267, float %4268, float %4269, float %4267, float %4268, float %4269)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.unary.f32(i32 25, float %4272)  ; Rsqrt(value)
  %4274 = fmul fast float %4273, %4267
  %4275 = fmul fast float %4273, %4268
  %4276 = fmul fast float %4273, %4269
  br label %4277

; <label>:4277                                    ; preds = %4246, %3724
  %4278 = phi float [ %4274, %4246 ], [ %3764, %3724 ]
  %4279 = phi float [ %4275, %4246 ], [ %3765, %3724 ]
  %4280 = phi float [ %4276, %4246 ], [ %3766, %3724 ]
  %4281 = phi float [ %4262, %4246 ], [ %3727, %3724 ]
  %4282 = phi float [ %4263, %4246 ], [ %3728, %3724 ]
  %4283 = phi float [ %4264, %4246 ], [ %3729, %3724 ]
  %4284 = phi float [ %4252, %4246 ], [ %3730, %3724 ]
  %4285 = phi float [ %4253, %4246 ], [ %3731, %3724 ]
  %4286 = phi float [ %4254, %4246 ], [ %3732, %3724 ]
  %4287 = phi float [ %4261, %4246 ], [ %3733, %3724 ]
  %4288 = phi float [ %4271, %4246 ], [ %1171, %3724 ]
  %4289 = phi float [ %4259, %4246 ], [ %3734, %3724 ]
  %4290 = phi float [ %4258, %4246 ], [ %3735, %3724 ]
  %4291 = phi float [ %4251, %4246 ], [ 0.000000e+00, %3724 ]
  %4292 = phi float [ %4250, %4246 ], [ 0.000000e+00, %3724 ]
  %4293 = phi float [ %4247, %4246 ], [ 0.000000e+00, %3724 ]
  %4294 = phi float [ %4248, %4246 ], [ %3738, %3724 ]
  %4295 = phi float [ %4249, %4246 ], [ %3736, %3724 ]
  %4296 = add i32 %60, 392
  %4297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.i32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.i32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.i32 %4297, 2
  %4301 = extractvalue %dx.types.ResRet.i32 %4297, 3
  %4302 = bitcast i32 %4298 to float
  %4303 = bitcast i32 %4299 to float
  %4304 = bitcast i32 %4300 to float
  %4305 = bitcast i32 %4301 to float
  %4306 = fsub fast float %4281, %4302
  %4307 = fsub fast float %4282, %4303
  %4308 = fsub fast float %4283, %4304
  %4309 = fmul fast float %4306, %201
  %4310 = fmul fast float %4307, %201
  %4311 = fmul fast float %4308, %201
  %4312 = fadd fast float %4309, %4302
  %4313 = fadd fast float %4310, %4303
  %4314 = fadd fast float %4311, %4304
  %4315 = fsub fast float %4288, %4305
  %4316 = fmul fast float %4315, %201
  %4317 = fadd fast float %4316, %4305
  %4318 = fadd fast float %4287, 0xBFB99999A0000000
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4319, 0x3FF1C71C80000000
  %4321 = call float @dx.op.binary.f32(i32 36, float %4287, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4322 = fsub fast float 1.000000e+00, %4320
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fmul fast float %4312, %4323
  %4325 = fmul fast float %4313, %4323
  %4326 = fmul fast float %4314, %4323
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = fmul fast float %4312, %4320
  %4331 = fmul fast float %4313, %4320
  %4332 = fmul fast float %4314, %4320
  %4333 = fadd fast float %4330, %4321
  %4334 = fadd fast float %4331, %4321
  %4335 = fadd fast float %4332, %4321
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.i32 %4340, 3
  %4342 = and i32 %4341, 8
  %4343 = icmp ne i32 %4342, 0
  %4344 = call float @dx.op.binary.f32(i32 35, float %4327, float %4312)  ; FMax(a,b)
  %4345 = call float @dx.op.binary.f32(i32 35, float %4328, float %4312)  ; FMax(a,b)
  %4346 = call float @dx.op.binary.f32(i32 35, float %4329, float %4312)  ; FMax(a,b)
  %4347 = call float @dx.op.dot3.f32(i32 55, float %4327, float %4328, float %4329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4348 = select i1 %261, float %4312, float %4327
  %4349 = select i1 %261, float %4347, float %4328
  %4350 = select i1 %261, float 1.000000e+00, float %4329
  %4351 = select i1 %4343, float %4344, float %4348
  %4352 = select i1 %4343, float %4345, float %4349
  %4353 = select i1 %4343, float %4346, float %4350
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4358 = fadd fast float %4355, %167
  %4359 = fadd fast float %4356, %168
  %4360 = fadd fast float %4357, %169
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 0
  %4363 = extractvalue %dx.types.CBufRet.f32 %4361, 1
  %4364 = fsub fast float %4358, %4362
  %4365 = fsub fast float %4359, %4363
  %4366 = fmul fast float %4364, %4364
  %4367 = fmul fast float %4365, %4365
  %4368 = fadd fast float %4366, %4367
  %4369 = call float @dx.op.unary.f32(i32 24, float %4368)  ; Sqrt(value)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4361, 2
  %4371 = fcmp fast olt float %4369, %4370
  br i1 %4371, label %4372, label %4439

; <label>:4372                                    ; preds = %4277
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4385 = fadd fast float %4382, %4358
  %4386 = fadd fast float %4383, %4359
  %4387 = fadd fast float %4384, %4360
  %4388 = fmul fast float %4385, %4374
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4376, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = fmul fast float %4385, %4379
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4380, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4381, float %4392)  ; FMad(a,b,c)
  %4394 = fsub fast float %4390, %4382
  %4395 = fsub fast float %4393, %4383
  %4396 = fsub fast float %4394, %4362
  %4397 = fadd fast float %4396, %4370
  %4398 = fsub fast float %4395, %4363
  %4399 = fadd fast float %4398, %4370
  %4400 = extractvalue %dx.types.CBufRet.f32 %4361, 3
  %4401 = fmul fast float %4397, %4400
  %4402 = fmul fast float %4399, %4400
  %4403 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4405 = fsub fast float 1.000000e+00, %4403
  %4406 = fsub fast float 1.000000e+00, %4404
  %4407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4405, float %4406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = fcmp fast ugt float %4408, 0.000000e+00
  br i1 %4409, label %4410, label %4713

; <label>:4410                                    ; preds = %4372
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 2
  %4413 = fmul fast float %4412, %4408
  %4414 = extractvalue %dx.types.CBufRet.f32 %4411, 3
  %4415 = fadd fast float %4414, %4413
  %4416 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4417 = fadd fast float %4415, %4384
  %4418 = fmul fast float %4390, %4378
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4381, float %4418)  ; FMad(a,b,c)
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4416, float %4419)  ; FMad(a,b,c)
  %4421 = fsub fast float %4420, %4384
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 2
  %4424 = fsub fast float %4421, %4423
  %4425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4405, float %4406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.ResRet.f32 %4425, 2
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4405, float %4406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.ResRet.f32 %4429, 1
  %4432 = extractvalue %dx.types.ResRet.f32 %4429, 2
  %4433 = fadd fast float %4430, %4426
  %4434 = fmul fast float %4433, 0x3F847AE140000000
  %4435 = fadd fast float %4431, %4427
  %4436 = fmul fast float %4435, 0x3F847AE140000000
  %4437 = fadd fast float %4432, %4428
  %4438 = fmul fast float %4437, 0x3F847AE140000000
  br label %4713

; <label>:4439                                    ; preds = %4277
  %4440 = and i32 %237, 1
  %4441 = icmp eq i32 %4440, 0
  br i1 %4441, label %4713, label %4442

; <label>:4442                                    ; preds = %4439
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4450 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4447, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4453 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4454 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4455 = fadd fast float %4452, %4358
  %4456 = fadd fast float %4453, %4359
  %4457 = fadd fast float %4454, %4360
  %4458 = fmul fast float %4455, %4444
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4446, float %4458)  ; FMad(a,b,c)
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %4457, float %4448, float %4459)  ; FMad(a,b,c)
  %4461 = fmul fast float %4455, %4449
  %4462 = call float @dx.op.tertiary.f32(i32 46, float %4456, float %4450, float %4461)  ; FMad(a,b,c)
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4457, float %4451, float %4462)  ; FMad(a,b,c)
  %4464 = fsub fast float %4460, %4452
  %4465 = fsub fast float %4463, %4453
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.i32 %4473, 0
  %4475 = extractvalue %dx.types.CBufRet.i32 %4473, 1
  %4476 = udiv i32 %4475, %4474
  %4477 = fsub fast float %4464, %4467
  %4478 = fsub fast float %4465, %4468
  %4479 = call float @dx.op.binary.f32(i32 35, float %4477, float 0.000000e+00)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float %4478, float 0.000000e+00)  ; FMax(a,b)
  %4481 = call float @dx.op.binary.f32(i32 36, float %4479, float %4469)  ; FMin(a,b)
  %4482 = call float @dx.op.binary.f32(i32 36, float %4480, float %4470)  ; FMin(a,b)
  %4483 = add i32 %4474, -1
  %4484 = add i32 %4476, -1
  %4485 = fmul fast float %4481, %4472
  %4486 = fmul fast float %4482, %4472
  %4487 = fptoui float %4485 to i32
  %4488 = fptoui float %4486 to i32
  %4489 = call i32 @dx.op.binary.i32(i32 40, i32 %4487, i32 %4483)  ; UMin(a,b)
  %4490 = call i32 @dx.op.binary.i32(i32 40, i32 %4488, i32 %4484)  ; UMin(a,b)
  %4491 = mul i32 %4490, %4474
  %4492 = add i32 %4491, %4489
  %4493 = shl i32 %4492, 2
  %4494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.i32 %4494, 0
  %4496 = icmp eq i32 %4495, -1
  br i1 %4496, label %4713, label %4497

; <label>:4497                                    ; preds = %4442
  %4498 = mul i32 %4495, 148
  %4499 = add i32 %4498, 4
  %4500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.f32 %4500, 0
  %4502 = add i32 %4498, 8
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = add i32 %4498, 36
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = add i32 %4498, 60
  %4509 = add i32 %4498, 92
  %4510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.i32 %4510, 0
  %4512 = add i32 %4498, 116
  %4513 = fsub fast float %4464, %4501
  %4514 = fsub fast float %4465, %4504
  %4515 = fmul fast float %4472, %4513
  %4516 = fmul fast float %4472, %4514
  %4517 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4522 = call float @dx.op.unary.f32(i32 83, float %4517)  ; DerivCoarseX(value)
  %4523 = call float @dx.op.unary.f32(i32 83, float %4519)  ; DerivCoarseX(value)
  %4524 = call float @dx.op.unary.f32(i32 84, float %4517)  ; DerivCoarseY(value)
  %4525 = call float @dx.op.unary.f32(i32 84, float %4519)  ; DerivCoarseY(value)
  %4526 = fmul fast float %4522, %4521
  %4527 = fmul fast float %4523, %4521
  %4528 = fmul fast float %4524, %4521
  %4529 = fmul fast float %4525, %4521
  %4530 = call float @dx.op.dot2.f32(i32 54, float %4528, float %4529, float %4528, float %4529)  ; Dot2(ax,ay,bx,by)
  %4531 = call float @dx.op.dot2.f32(i32 54, float %4526, float %4527, float %4526, float %4527)  ; Dot2(ax,ay,bx,by)
  %4532 = call float @dx.op.binary.f32(i32 35, float %4531, float %4530)  ; FMax(a,b)
  %4533 = call float @dx.op.unary.f32(i32 23, float %4532)  ; Log(value)
  %4534 = fmul fast float %4533, 5.000000e-01
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4537 = fadd fast float %4536, %4534
  %4538 = call float @dx.op.binary.f32(i32 35, float %4537, float 0.000000e+00)  ; FMax(a,b)
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4541 = fadd fast float %4540, %4538
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4544 = fadd fast float %4541, %4543
  %4545 = add i32 %4511, 0
  %4546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4545, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4547 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4546, i32 0)  ; GetDimensions(handle,mipLevel)
  %4548 = extractvalue %dx.types.Dimensions %4547, 0
  %4549 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4548)  ; FirstbitLo(value)
  %4550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.i32 %4550, 1
  %4552 = sub nsw i32 %4551, %4549
  %4553 = sitofp i32 %4552 to float
  %4554 = fsub fast float %4544, %4553
  %4555 = call float @dx.op.binary.f32(i32 35, float %4554, float 0.000000e+00)  ; FMax(a,b)
  %4556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4546, %dx.types.Handle %52, float %4517, float %4519, float %4507, float undef, i32 0, i32 0, i32 undef, float %4555)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = fcmp ule float %4557, 0x3FE0101020000000
  %4559 = extractvalue %dx.types.CBufRet.i32 %4550, 0
  %4560 = and i32 %4559, 128
  %4561 = icmp ne i32 %4560, 0
  %4562 = and i1 %4558, %4561
  br i1 %4562, label %4713, label %4563

; <label>:4563                                    ; preds = %4497
  %4564 = add i32 %4498, 20
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = add i32 %4498, 24
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = add i32 %4498, 40
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = add i32 %4498, 96
  %4574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.i32 %4574, 0
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4578 = fmul fast float %4577, %4517
  %4579 = fmul fast float %4577, %4519
  %4580 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4581 = fadd fast float %4578, %4580
  %4582 = fadd fast float %4579, %4580
  %4583 = add i32 %4575, 0
  %4584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4585 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4584, i32 0)  ; GetDimensions(handle,mipLevel)
  %4586 = extractvalue %dx.types.Dimensions %4585, 0
  %4587 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4586)  ; FirstbitLo(value)
  %4588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.i32 %4588, 1
  %4590 = sub nsw i32 %4589, %4587
  %4591 = sitofp i32 %4590 to float
  %4592 = fsub fast float %4541, %4591
  %4593 = call float @dx.op.binary.f32(i32 35, float %4592, float 0.000000e+00)  ; FMax(a,b)
  %4594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4584, %dx.types.Handle %52, float %4581, float %4582, float %4572, float undef, i32 0, i32 0, i32 undef, float %4593)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = fmul fast float %4595, %4566
  %4597 = fadd fast float %4596, %4569
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4606 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4607 = fadd fast float %4603, %4464
  %4608 = fadd fast float %4605, %4465
  %4609 = fadd fast float %4597, %4606
  %4610 = fmul fast float %4607, %4599
  %4611 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4600, float %4610)  ; FMad(a,b,c)
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4609, float %4601, float %4611)  ; FMad(a,b,c)
  %4613 = fsub fast float %4612, %4606
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 2
  %4616 = fsub fast float %4613, %4615
  %4617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.i32 %4617, 0
  %4619 = call i32 @dx.op.binary.i32(i32 40, i32 %4495, i32 %4618)  ; UMin(a,b)
  %4620 = mul i32 %4619, 36
  %4621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.i32 %4621, 0
  %4623 = add i32 %4620, 4
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = fmul fast float %4625, %4517
  %4627 = fmul fast float %4625, %4519
  %4628 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4629 = fadd fast float %4626, %4628
  %4630 = fadd fast float %4627, %4628
  %4631 = icmp eq i32 %4622, 0
  br i1 %4631, label %4700, label %4632

; <label>:4632                                    ; preds = %4563
  br label %4633

; <label>:4633                                    ; preds = %4690, %4632
  %4634 = phi float [ %4691, %4690 ], [ 0.000000e+00, %4632 ]
  %4635 = phi float [ %4692, %4690 ], [ 0.000000e+00, %4632 ]
  %4636 = phi float [ %4693, %4690 ], [ 0.000000e+00, %4632 ]
  %4637 = phi float [ %4694, %4690 ], [ 0.000000e+00, %4632 ]
  %4638 = phi float [ %4695, %4690 ], [ 0.000000e+00, %4632 ]
  %4639 = phi float [ %4696, %4690 ], [ 0.000000e+00, %4632 ]
  %4640 = phi i32 [ %4697, %4690 ], [ 0, %4632 ]
  %4641 = shl i32 %4640, 2
  %4642 = add i32 %4508, %4641
  %4643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = add i32 %4512, %4641
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = add i32 %4647, 0
  %4649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4648, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4650 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4649, i32 0)  ; GetDimensions(handle,mipLevel)
  %4651 = extractvalue %dx.types.Dimensions %4650, 0
  %4652 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4651)  ; FirstbitLo(value)
  %4653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.i32 %4653, 1
  %4655 = sub nsw i32 %4654, %4652
  %4656 = sitofp i32 %4655 to float
  %4657 = fsub fast float %4541, %4656
  %4658 = call float @dx.op.binary.f32(i32 35, float %4657, float 0.000000e+00)  ; FMax(a,b)
  %4659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4649, %dx.types.Handle %52, float %4629, float %4630, float %4644, float undef, i32 0, i32 0, i32 undef, float %4658)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = fcmp fast ogt float %4660, 0.000000e+00
  br i1 %4661, label %4662, label %4690

; <label>:4662                                    ; preds = %4633
  %4663 = add i32 %4623, %4641
  %4664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.i32 %4664, 0
  %4666 = and i32 %4665, 32767
  %4667 = mul nuw nsw i32 %4666, 928
  %4668 = add nuw nsw i32 %4667, 48
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = add nuw nsw i32 %4667, 60
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = fmul fast float %4670, %4660
  %4679 = fmul fast float %4671, %4660
  %4680 = fmul fast float %4672, %4660
  %4681 = fadd fast float %4678, %4634
  %4682 = fadd fast float %4679, %4635
  %4683 = fadd fast float %4680, %4636
  %4684 = fmul fast float %4675, %4660
  %4685 = fmul fast float %4676, %4660
  %4686 = fmul fast float %4677, %4660
  %4687 = fadd fast float %4684, %4637
  %4688 = fadd fast float %4685, %4638
  %4689 = fadd fast float %4686, %4639
  br label %4690

; <label>:4690                                    ; preds = %4662, %4633
  %4691 = phi float [ %4681, %4662 ], [ %4634, %4633 ]
  %4692 = phi float [ %4682, %4662 ], [ %4635, %4633 ]
  %4693 = phi float [ %4683, %4662 ], [ %4636, %4633 ]
  %4694 = phi float [ %4687, %4662 ], [ %4637, %4633 ]
  %4695 = phi float [ %4688, %4662 ], [ %4638, %4633 ]
  %4696 = phi float [ %4689, %4662 ], [ %4639, %4633 ]
  %4697 = add nuw i32 %4640, 1
  %4698 = icmp eq i32 %4697, %4622
  br i1 %4698, label %4699, label %4633

; <label>:4699                                    ; preds = %4690
  br label %4700

; <label>:4700                                    ; preds = %4699, %4563
  %4701 = phi float [ 0.000000e+00, %4563 ], [ %4691, %4699 ]
  %4702 = phi float [ 0.000000e+00, %4563 ], [ %4692, %4699 ]
  %4703 = phi float [ 0.000000e+00, %4563 ], [ %4693, %4699 ]
  %4704 = phi float [ 0.000000e+00, %4563 ], [ %4694, %4699 ]
  %4705 = phi float [ 0.000000e+00, %4563 ], [ %4695, %4699 ]
  %4706 = phi float [ 0.000000e+00, %4563 ], [ %4696, %4699 ]
  %4707 = fadd fast float %4704, %4701
  %4708 = fmul fast float %4707, 0x3F847AE140000000
  %4709 = fadd fast float %4705, %4702
  %4710 = fmul fast float %4709, 0x3F847AE140000000
  %4711 = fadd fast float %4706, %4703
  %4712 = fmul fast float %4711, 0x3F847AE140000000
  br label %4713

; <label>:4713                                    ; preds = %4700, %4497, %4442, %4439, %4410, %4372
  %4714 = phi float [ %4424, %4410 ], [ -1.310720e+05, %4372 ], [ %4616, %4700 ], [ -1.310720e+05, %4442 ], [ -1.310720e+05, %4497 ], [ -1.310720e+05, %4439 ]
  %4715 = phi float [ %4434, %4410 ], [ 0.000000e+00, %4372 ], [ %4708, %4700 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4497 ], [ 0.000000e+00, %4439 ]
  %4716 = phi float [ %4436, %4410 ], [ 0.000000e+00, %4372 ], [ %4710, %4700 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4497 ], [ 0.000000e+00, %4439 ]
  %4717 = phi float [ %4438, %4410 ], [ 0.000000e+00, %4372 ], [ %4712, %4700 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4497 ], [ 0.000000e+00, %4439 ]
  %4718 = phi i1 [ true, %4410 ], [ false, %4372 ], [ true, %4700 ], [ false, %4442 ], [ false, %4497 ], [ false, %4439 ]
  %4719 = and i32 %237, 3
  %4720 = icmp eq i32 %4719, 1
  %4721 = select i1 %4720, float 1.000000e+00, float 0.000000e+00
  %4722 = fsub fast float %4714, %169
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = select i1 %4718, float %4723, float 1.000000e+00
  %4725 = fmul fast float %4724, %4721
  %4726 = icmp eq i32 %4719, 3
  %4727 = select i1 %4726, float 1.000000e+00, float %4725
  %4728 = call float @dx.op.binary.f32(i32 35, float %4293, float %4727)  ; FMax(a,b)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fcmp fast une float %4729, 0.000000e+00
  %4731 = fsub fast float -0.000000e+00, %187
  %4732 = fsub fast float -0.000000e+00, %188
  %4733 = fsub fast float -0.000000e+00, %189
  br i1 %4730, label %4734, label %4896

; <label>:4734                                    ; preds = %4713
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fmul fast float %4729, 2.500000e+00
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4729, 0x4013FFFFE0000000
  %4739 = fadd fast float %4738, 0xBFFFFFFFE0000000
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4729, 0x4004000020000000
  %4742 = fadd fast float %4741, 0xBFF8000040000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4745 = fmul fast float %4318, 1.000000e+01
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4746, 2.000000e+00
  %4748 = fsub fast float 3.000000e+00, %4747
  %4749 = fmul fast float %4746, %4746
  %4750 = fmul fast float %4749, %4748
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = fsub fast float 0x3FE3333340000000, %4339
  %4753 = fmul fast float %4752, 0x400AAAAAA0000000
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4751, %4754
  %4756 = fmul fast float %4351, 0x3FEA2B8620000000
  %4757 = fmul fast float %4352, 0x3FEA2B8620000000
  %4758 = fmul fast float %4353, 0x3FEA2B8620000000
  %4759 = fadd fast float %4756, 0x3FC81DFBA0000000
  %4760 = fmul fast float %4759, %4351
  %4761 = fadd fast float %4760, 0x3F910E6020000000
  %4762 = fadd fast float %4757, 0x3FC81DFBA0000000
  %4763 = fmul fast float %4762, %4352
  %4764 = fadd fast float %4763, 0x3F910E6020000000
  %4765 = fadd fast float %4758, 0x3FC81DFBA0000000
  %4766 = fmul fast float %4765, %4353
  %4767 = fadd fast float %4766, 0x3F910E6020000000
  %4768 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = fsub fast float %4768, %4351
  %4772 = fsub fast float %4769, %4352
  %4773 = fsub fast float %4770, %4353
  %4774 = fmul fast float %4771, %4744
  %4775 = fmul fast float %4774, %4755
  %4776 = fmul fast float %4772, %4744
  %4777 = fmul fast float %4776, %4755
  %4778 = fmul fast float %4773, %4744
  %4779 = fmul fast float %4778, %4755
  %4780 = fadd fast float %4775, %4351
  %4781 = fadd fast float %4777, %4352
  %4782 = fadd fast float %4779, %4353
  %4783 = fmul fast float %4290, %4290
  %4784 = fmul fast float %4783, %4783
  %4785 = fadd fast float %4740, 1.000000e+00
  %4786 = fsub fast float %4785, %4755
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fsub fast float 1.000000e+00, %4784
  %4791 = call float @dx.op.binary.f32(i32 36, float %4787, float %4790)  ; FMin(a,b)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4793 = call float @dx.op.binary.f32(i32 35, float %4791, float %4792)  ; FMax(a,b)
  %4794 = fadd fast float %4789, 0xBFE4CCCCC0000000
  %4795 = fmul fast float %4794, 0x4006DB6DA0000000
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = fmul fast float %4796, 2.000000e+00
  %4798 = fsub fast float 3.000000e+00, %4797
  %4799 = bitcast float %4336 to i32
  %4800 = ashr i32 %4799, 1
  %4801 = add nsw i32 %4800, 532487669
  %4802 = bitcast i32 %4801 to float
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = bitcast float %4803 to i32
  %4805 = sub nsw i32 2129859010, %4804
  %4806 = bitcast i32 %4805 to float
  %4807 = fmul fast float %4806, 2.000000e+00
  %4808 = bitcast float %4337 to i32
  %4809 = ashr i32 %4808, 1
  %4810 = add nsw i32 %4809, 532487669
  %4811 = bitcast i32 %4810 to float
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4815, 2.000000e+00
  %4817 = bitcast float %4338 to i32
  %4818 = ashr i32 %4817, 1
  %4819 = add nsw i32 %4818, 532487669
  %4820 = bitcast i32 %4819 to float
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = fmul fast float %4824, 2.000000e+00
  %4826 = fsub fast float 0x4002A9FBE0000000, %4807
  %4827 = fadd fast float %4807, 0x3FD54FDF00000000
  %4828 = bitcast float %4827 to i32
  %4829 = sub nsw i32 2129859010, %4828
  %4830 = bitcast i32 %4829 to float
  %4831 = fmul fast float %4830, %4826
  %4832 = fmul fast float %4831, %4831
  %4833 = fsub fast float 0x4002A9FBE0000000, %4816
  %4834 = fadd fast float %4816, 0x3FD54FDF00000000
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = fmul fast float %4837, %4833
  %4839 = fmul fast float %4838, %4838
  %4840 = fsub fast float 0x4002A9FBE0000000, %4825
  %4841 = fadd fast float %4825, 0x3FD54FDF00000000
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4844, %4840
  %4846 = fmul fast float %4845, %4845
  %4847 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4832)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4839)  ; FMax(a,b)
  %4849 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4846)  ; FMax(a,b)
  %4850 = fsub fast float 1.000000e+00, %4735
  %4851 = fadd fast float %4850, %4751
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4727
  %4854 = fmul fast float %4793, %4853
  %4855 = fmul fast float %4796, %4796
  %4856 = fmul fast float %4855, %4854
  %4857 = fmul fast float %4856, %4798
  %4858 = fmul fast float %4853, 0xBFE99999A0000000
  %4859 = fmul fast float %4858, %4744
  %4860 = fmul fast float %4859, %4755
  %4861 = fadd fast float %4860, 1.000000e+00
  %4862 = fadd fast float %4339, -1.000000e+00
  %4863 = fmul fast float %4861, %4862
  %4864 = fadd fast float %4863, 1.000000e+00
  %4865 = fsub fast float %4847, %4336
  %4866 = fsub fast float %4848, %4337
  %4867 = fsub fast float %4849, %4338
  %4868 = fmul fast float %4857, %4865
  %4869 = fmul fast float %4857, %4866
  %4870 = fmul fast float %4857, %4867
  %4871 = fadd fast float %4868, %4336
  %4872 = fadd fast float %4869, %4337
  %4873 = fadd fast float %4870, %4338
  %4874 = fsub fast float %111, %4278
  %4875 = fsub fast float %112, %4279
  %4876 = fsub fast float %113, %4280
  %4877 = fmul fast float %4857, %4874
  %4878 = fmul fast float %4857, %4875
  %4879 = fmul fast float %4857, %4876
  %4880 = fadd fast float %4877, %4278
  %4881 = fadd fast float %4878, %4279
  %4882 = fadd fast float %4879, %4280
  %4883 = fmul fast float %4857, %4852
  %4884 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = fmul fast float %4883, %4885
  %4887 = fadd fast float %4886, %4884
  %4888 = fsub fast float 1.000000e+00, %4290
  %4889 = fmul fast float %4857, %4888
  %4890 = fadd fast float %4889, %4290
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4882, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 25, float %4891)  ; Rsqrt(value)
  %4893 = fmul fast float %4880, %4892
  %4894 = fmul fast float %4881, %4892
  %4895 = fmul fast float %4882, %4892
  br label %4896

; <label>:4896                                    ; preds = %4734, %4713
  %4897 = phi float [ %4780, %4734 ], [ %4351, %4713 ]
  %4898 = phi float [ %4781, %4734 ], [ %4352, %4713 ]
  %4899 = phi float [ %4782, %4734 ], [ %4353, %4713 ]
  %4900 = phi float [ %4893, %4734 ], [ %4278, %4713 ]
  %4901 = phi float [ %4894, %4734 ], [ %4279, %4713 ]
  %4902 = phi float [ %4895, %4734 ], [ %4280, %4713 ]
  %4903 = phi float [ %4871, %4734 ], [ %4336, %4713 ]
  %4904 = phi float [ %4872, %4734 ], [ %4337, %4713 ]
  %4905 = phi float [ %4873, %4734 ], [ %4338, %4713 ]
  %4906 = phi float [ %4887, %4734 ], [ %4339, %4713 ]
  %4907 = phi float [ %4890, %4734 ], [ %4290, %4713 ]
  %4908 = fsub fast float -0.000000e+00, %169
  %4909 = select i1 %261, float 0.000000e+00, float %4905
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = fmul fast float %4912, 2.000000e+00
  %4914 = fmul fast float %4913, %4900
  %4915 = fmul fast float %4913, %4901
  %4916 = fmul fast float %4913, %4902
  %4917 = fsub fast float %187, %4914
  %4918 = fsub fast float %188, %4915
  %4919 = fsub fast float %189, %4916
  %4920 = call float @dx.op.binary.f32(i32 36, float %4907, float 1.000000e+00)  ; FMin(a,b)
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = bitcast float %4921 to i32
  %4923 = ashr i32 %4922, 1
  %4924 = add nsw i32 %4923, 532487669
  %4925 = bitcast i32 %4924 to float
  %4926 = fsub fast float 1.000000e+00, %4906
  %4927 = call float @dx.op.binary.f32(i32 35, float %4926, float 0x3F847AE140000000)  ; FMax(a,b)
  %4928 = fmul fast float %4927, %4927
  %4929 = fmul fast float %4928, %4928
  %4930 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4925, float %4929, float %4930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = fsub fast float 1.000000e+00, %4907
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = fsub fast float 1.000000e+00, %72
  %4938 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.binary.f32(i32 35, float %4938, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4940 = fdiv fast float %4937, %4939
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, 5.000000e-01
  %4944 = fadd fast float %4943, 5.000000e-01
  %4945 = fmul fast float %4944, %72
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4947, %4940
  %4949 = fadd fast float %4945, %4948
  %4950 = fsub fast float 5.000000e-01, %4943
  %4951 = fmul fast float %4950, %4897
  %4952 = fmul fast float %4950, %4898
  %4953 = fmul fast float %4950, %4899
  %4954 = fadd fast float %4949, %4951
  %4955 = fadd fast float %4949, %4952
  %4956 = fadd fast float %4949, %4953
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = fmul fast float %4958, 5.000000e-01
  %4960 = fadd fast float %4959, 5.000000e-01
  %4961 = fmul fast float %4960, %72
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4963, %4940
  %4965 = fadd fast float %4961, %4964
  %4966 = fsub fast float 5.000000e-01, %4959
  %4967 = fmul fast float %4966, %4897
  %4968 = fmul fast float %4966, %4898
  %4969 = fmul fast float %4966, %4899
  %4970 = fadd fast float %4965, %4967
  %4971 = fadd fast float %4965, %4968
  %4972 = fadd fast float %4965, %4969
  %4973 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = call float @dx.op.binary.f32(i32 36, float %4897, float %4975)  ; FMin(a,b)
  %4977 = fmul fast float %4976, %4921
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = bitcast float %4978 to i32
  %4980 = sub nsw i32 2129859010, %4979
  %4981 = bitcast i32 %4980 to float
  %4982 = call float @dx.op.binary.f32(i32 36, float %4898, float %4975)  ; FMin(a,b)
  %4983 = fmul fast float %4982, %4921
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = call float @dx.op.binary.f32(i32 36, float %4899, float %4975)  ; FMin(a,b)
  %4989 = fmul fast float %4988, %4921
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4920, %73
  %4995 = fmul fast float %4994, %4954
  %4996 = fmul fast float %4995, %4981
  %4997 = fmul fast float %4920, %74
  %4998 = fmul fast float %4997, %4955
  %4999 = fmul fast float %4998, %4987
  %5000 = fmul fast float %4920, %75
  %5001 = fmul fast float %5000, %4956
  %5002 = fmul fast float %5001, %4993
  %5003 = call float @dx.op.binary.f32(i32 36, float %4903, float %4975)  ; FMin(a,b)
  %5004 = fmul fast float %5003, %4921
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = call float @dx.op.binary.f32(i32 36, float %4904, float %4975)  ; FMin(a,b)
  %5010 = fmul fast float %5009, %4921
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = call float @dx.op.binary.f32(i32 36, float %4909, float %4975)  ; FMin(a,b)
  %5016 = fmul fast float %5015, %4921
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = fmul fast float %4994, %4970
  %5022 = fmul fast float %5021, %5008
  %5023 = fmul fast float %4997, %4971
  %5024 = fmul fast float %5023, %5014
  %5025 = fmul fast float %5000, %4972
  %5026 = fmul fast float %5025, %5020
  %5027 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4999, float %5002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = select i1 %261, float 0.000000e+00, float %4996
  %5029 = select i1 %261, float %5027, float %4999
  %5030 = select i1 %261, float 0.000000e+00, float %5002
  %5031 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5024, float %5026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = select i1 %261, float 0.000000e+00, float %5022
  %5033 = select i1 %261, float %5031, float %5024
  %5034 = select i1 %261, float 0.000000e+00, float %5026
  %5035 = fmul fast float %4911, 9.843750e-01
  %5036 = fmul fast float %4906, 9.843750e-01
  %5037 = fadd fast float %5035, 7.812500e-03
  %5038 = fadd fast float %5036, 7.812500e-03
  %5039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5037, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 2
  %5041 = extractvalue %dx.types.ResRet.f32 %5039, 3
  %5042 = fmul fast float %5040, %4903
  %5043 = fmul fast float %5040, %4904
  %5044 = fmul fast float %5040, %4909
  %5045 = fadd fast float %5042, %5041
  %5046 = fadd fast float %5043, %5041
  %5047 = fadd fast float %5044, %5041
  %5048 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %5048, label %5049, label %5075

; <label>:5049                                    ; preds = %4896
  %5050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4291, float %4911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = fadd fast float %5051, -5.000000e-01
  %5055 = fadd fast float %5052, -5.000000e-01
  %5056 = fadd fast float %5053, -5.000000e-01
  %5057 = fsub fast float 1.000000e+00, %4903
  %5058 = fsub fast float 1.000000e+00, %4904
  %5059 = fsub fast float 1.000000e+00, %4909
  %5060 = fmul fast float %4903, 4.000000e+00
  %5061 = fmul fast float %5060, %5057
  %5062 = fmul fast float %5061, %5054
  %5063 = fmul fast float %4904, 4.000000e+00
  %5064 = fmul fast float %5063, %5058
  %5065 = fmul fast float %5064, %5055
  %5066 = fmul fast float %4909, 4.000000e+00
  %5067 = fmul fast float %5066, %5059
  %5068 = fmul fast float %5067, %5056
  %5069 = fadd fast float %5062, %5045
  %5070 = fadd fast float %5065, %5046
  %5071 = fadd fast float %5068, %5047
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  br label %5075

; <label>:5075                                    ; preds = %5049, %4896
  %5076 = phi float [ %5072, %5049 ], [ %5045, %4896 ]
  %5077 = phi float [ %5073, %5049 ], [ %5046, %4896 ]
  %5078 = phi float [ %5074, %5049 ], [ %5047, %4896 ]
  %5079 = call float @dx.op.binary.f32(i32 35, float %5077, float %5078)  ; FMax(a,b)
  %5080 = call float @dx.op.binary.f32(i32 35, float %5076, float %5079)  ; FMax(a,b)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %5080, %4906
  %5083 = fadd fast float %5082, %4906
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5087 = fmul fast float %5083, %5085
  %5088 = fadd fast float %5087, %5086
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fsub fast float 1.000000e+00, %4932
  %5091 = fadd fast float %5090, %5089
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = fcmp fast olt float %5092, 1.000000e+00
  br i1 %5093, label %5094, label %5570

; <label>:5094                                    ; preds = %5075
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 3
  %5098 = fmul fast float %5096, %104
  %5099 = fmul fast float %5097, %105
  %5100 = fptoui float %5098 to i32
  %5101 = fptoui float %5099 to i32
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.CBufRet.f32 %5102, 2
  %5105 = extractvalue %dx.types.CBufRet.f32 %5102, 3
  %5106 = fadd fast float %92, -4.000000e+00
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5108 = fadd fast float %5107, %5103
  %5109 = fmul fast float %5108, %5104
  %5110 = call float @dx.op.unary.f32(i32 23, float %5109)  ; Log(value)
  %5111 = fmul fast float %5110, %5105
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5114 = fmul fast float %5111, %5113
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.i32 %5116, 1
  %5118 = add i32 %5117, -1
  %5119 = uitofp i32 %5117 to float
  %5120 = fmul fast float %5119, %5115
  %5121 = fptoui float %5120 to i32
  %5122 = call i32 @dx.op.binary.i32(i32 40, i32 %5121, i32 %5118)  ; UMin(a,b)
  %5123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.i32 %5123, 2
  %5125 = extractvalue %dx.types.CBufRet.i32 %5123, 3
  %5126 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5101, i32 %5124, i32 %5100)  ; UMad(a,b,c)
  %5127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5122, i32 %5125, i32 %5126)  ; UMad(a,b,c)
  %5128 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5129 = fptoui float %5128 to i32
  %5130 = lshr i32 %5129, 5
  %5131 = call i32 @dx.op.binary.i32(i32 40, i32 %5130, i32 8191)  ; UMin(a,b)
  %5132 = fsub fast float %4714, %169
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fcmp fast ogt float %5133, 0.000000e+00
  %5135 = fcmp fast ogt float %4919, 0.000000e+00
  %5136 = and i1 %5135, %5134
  br i1 %5136, label %5137, label %5166

; <label>:5137                                    ; preds = %5094
  %5138 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5138, float -1.000000e+00)  ; FMax(a,b)
  %5140 = call float @dx.op.binary.f32(i32 36, float %5139, float 1.000000e+00)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5140
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = fmul fast float %5142, 0x3FFC6E2300000000
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fcmp fast ogt float %5144, 0.000000e+00
  %5146 = call float @dx.op.unary.f32(i32 24, float %5144)  ; Sqrt(value)
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = call float @dx.op.unary.f32(i32 23, float %5147)  ; Log(value)
  %5149 = fmul fast float %5148, 5.000000e+00
  %5150 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5151 = fmul fast float %5150, 0x3FEF591A60000000
  %5152 = fadd fast float %5151, 0x3F94DCB540000000
  %5153 = select i1 %5145, float %5152, float 1.000000e+00
  %5154 = fcmp fast oge float %5153, 1.000000e+00
  %5155 = fmul fast float %5138, 2.000000e+00
  %5156 = fadd fast float %5155, %4919
  %5157 = select i1 %5154, float %5156, float %4919
  %5158 = fsub fast float %5157, %4919
  %5159 = fmul fast float %5158, %5133
  %5160 = fadd fast float %5159, %4919
  %5161 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %5160, float %4917, float %4918, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 25, float %5161)  ; Rsqrt(value)
  %5163 = fmul fast float %5162, %4917
  %5164 = fmul fast float %5162, %4918
  %5165 = fmul fast float %5160, %5162
  br label %5166

; <label>:5166                                    ; preds = %5137, %5094
  %5167 = phi float [ %5163, %5137 ], [ %4917, %5094 ]
  %5168 = phi float [ %5164, %5137 ], [ %4918, %5094 ]
  %5169 = phi float [ %5165, %5137 ], [ %4919, %5094 ]
  %5170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.i32 %5170, 2
  %5172 = add nsw i32 %5171, -1
  %5173 = call i32 @dx.op.binary.i32(i32 37, i32 %5172, i32 0)  ; IMax(a,b)
  %5174 = shl i32 %5131, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = lshr i32 %5176, 16
  %5178 = and i32 %5176, 65535
  %5179 = lshr i32 %5176, 21
  %5180 = lshr i32 %5178, 5
  %5181 = call i32 @dx.op.binary.i32(i32 40, i32 %5180, i32 %5173)  ; UMin(a,b)
  %5182 = icmp ugt i32 %5179, %5181
  br i1 %5182, label %5546, label %5183

; <label>:5183                                    ; preds = %5166
  br label %5184

; <label>:5184                                    ; preds = %5538, %5183
  %5185 = phi float [ %5539, %5538 ], [ 0.000000e+00, %5183 ]
  %5186 = phi float [ %5540, %5538 ], [ 0.000000e+00, %5183 ]
  %5187 = phi float [ %5541, %5538 ], [ 0.000000e+00, %5183 ]
  %5188 = phi float [ %5542, %5538 ], [ 1.000000e+00, %5183 ]
  %5189 = phi i32 [ %5543, %5538 ], [ %5179, %5183 ]
  %5190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.i32 %5190, 2
  %5192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5127, i32 %5191, i32 %5189)  ; UMad(a,b,c)
  %5193 = shl i32 %5192, 2
  %5194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5193, i32 undef)  ; BufferLoad(srv,index,wot)
  %5195 = extractvalue %dx.types.ResRet.i32 %5194, 0
  %5196 = shl i32 %5189, 5
  %5197 = sub nsw i32 %5177, %5196
  %5198 = call i32 @dx.op.binary.i32(i32 37, i32 %5197, i32 0)  ; IMax(a,b)
  %5199 = call i32 @dx.op.binary.i32(i32 38, i32 %5198, i32 31)  ; IMin(a,b)
  %5200 = sub nsw i32 1, %5177
  %5201 = add nsw i32 %5200, %5178
  %5202 = call i32 @dx.op.binary.i32(i32 37, i32 %5201, i32 0)  ; IMax(a,b)
  %5203 = call i32 @dx.op.binary.i32(i32 38, i32 %5202, i32 32)  ; IMin(a,b)
  %5204 = and i32 %5203, 31
  %5205 = shl i32 -1, %5204
  %5206 = xor i32 %5205, -1
  %5207 = and i32 %5199, 31
  %5208 = shl i32 %5206, %5207
  %5209 = icmp eq i32 %5203, 32
  %5210 = select i1 %5209, i32 -1, i32 %5208
  %5211 = and i32 %5210, %5195
  %5212 = icmp eq i32 %5211, 0
  br i1 %5212, label %5538, label %5213

; <label>:5213                                    ; preds = %5184
  br label %5214

; <label>:5214                                    ; preds = %5321, %5213
  %5215 = phi float [ %5322, %5321 ], [ %5185, %5213 ]
  %5216 = phi float [ %5323, %5321 ], [ %5186, %5213 ]
  %5217 = phi float [ %5324, %5321 ], [ %5187, %5213 ]
  %5218 = phi float [ %5325, %5321 ], [ %5188, %5213 ]
  %5219 = phi i32 [ %5224, %5321 ], [ %5211, %5213 ]
  %5220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5219)  ; FirstbitLo(value)
  %5221 = add i32 %5220, %5196
  %5222 = and i32 %5220, 31
  %5223 = shl i32 1, %5222
  %5224 = xor i32 %5223, %5219
  %5225 = mul i32 %5221, 72
  %5226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = add i32 %5225, 12
  %5231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.i32 %5231, 0
  %5233 = add i32 %5225, 16
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.ResRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.ResRet.f32 %5234, 2
  %5238 = add i32 %5225, 28
  %5239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = add i32 %5225, 32
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.ResRet.f32 %5242, 3
  %5247 = add i32 %5225, 48
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = add i32 %5225, 56
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = add i32 %5225, 64
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = mul i32 %5221, 60
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.ResRet.f32 %5260, 2
  %5264 = add i32 %5259, 12
  %5265 = add i32 %5259, 48
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = and i32 %5232, 32767
  %5271 = bitcast float %5227 to i32
  %5272 = icmp eq i32 %5271, -1
  %5273 = bitcast float %5228 to i32
  %5274 = and i32 %5232, 32768
  %5275 = icmp ne i32 %5274, 0
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5280 = fsub fast float %5261, %5277
  %5281 = fsub fast float %5262, %5278
  %5282 = fsub fast float %5263, %5279
  %5283 = fsub fast float %167, %5280
  %5284 = fsub fast float %168, %5281
  %5285 = fsub fast float %169, %5282
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5286, 2
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = add i32 %5259, 24
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = add i32 %5259, 36
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 6, float %5290)  ; FAbs(value)
  %5304 = call float @dx.op.unary.f32(i32 6, float %5296)  ; FAbs(value)
  %5305 = call float @dx.op.unary.f32(i32 6, float %5302)  ; FAbs(value)
  %5306 = fsub fast float %5267, %5303
  %5307 = fsub fast float %5268, %5304
  %5308 = fsub fast float %5269, %5305
  %5309 = fmul fast float %5306, %5235
  %5310 = fmul fast float %5307, %5236
  %5311 = fmul fast float %5308, %5237
  %5312 = call float @dx.op.binary.f32(i32 36, float %5310, float %5311)  ; FMin(a,b)
  %5313 = call float @dx.op.binary.f32(i32 36, float %5309, float %5312)  ; FMin(a,b)
  %5314 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5315 = call float @dx.op.binary.f32(i32 36, float %5218, float %5314)  ; FMin(a,b)
  %5316 = uitofp i1 %5275 to float
  %5317 = fadd fast float %5133, 1.000000e+00
  %5318 = fsub fast float %5317, %5316
  %5319 = fmul fast float %5315, %5318
  %5320 = fcmp fast ogt float %5319, 0.000000e+00
  br i1 %5320, label %5327, label %5321

; <label>:5321                                    ; preds = %5469, %5214
  %5322 = phi float [ %5533, %5469 ], [ %5215, %5214 ]
  %5323 = phi float [ %5534, %5469 ], [ %5216, %5214 ]
  %5324 = phi float [ %5535, %5469 ], [ %5217, %5214 ]
  %5325 = phi float [ %5536, %5469 ], [ %5218, %5214 ]
  %5326 = icmp eq i32 %5219, %5223
  br i1 %5326, label %5537, label %5214

; <label>:5327                                    ; preds = %5214
  br i1 %5272, label %5385, label %5328

; <label>:5328                                    ; preds = %5327
  %5329 = fsub fast float -0.000000e+00, %5287
  %5330 = fsub fast float -0.000000e+00, %5288
  %5331 = fsub fast float -0.000000e+00, %5289
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = fsub fast float -0.000000e+00, %5332
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = fadd fast float %5334, %5250
  %5336 = fadd fast float %5249, %5334
  %5337 = fsub fast float -0.000000e+00, %5336
  %5338 = fcmp ogt float %5332, -0.000000e+00
  %5339 = select i1 %5338, float %5337, float %5335
  %5340 = call float @dx.op.unary.f32(i32 6, float %5333)  ; FAbs(value)
  %5341 = fdiv fast float 1.000000e+00, %5340
  %5342 = fmul fast float %5339, %5341
  %5343 = call float @dx.op.binary.f32(i32 35, float %5342, float 0.000000e+00)  ; FMax(a,b)
  %5344 = fsub fast float -0.000000e+00, %5293
  %5345 = fsub fast float -0.000000e+00, %5294
  %5346 = fsub fast float -0.000000e+00, %5295
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5344, float %5345, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = fadd fast float %5349, %5254
  %5351 = fadd fast float %5253, %5349
  %5352 = fsub fast float -0.000000e+00, %5351
  %5353 = fcmp ogt float %5347, -0.000000e+00
  %5354 = select i1 %5353, float %5352, float %5350
  %5355 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5356 = fdiv fast float 1.000000e+00, %5355
  %5357 = fmul fast float %5354, %5356
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0.000000e+00)  ; FMax(a,b)
  %5359 = fsub fast float -0.000000e+00, %5299
  %5360 = fsub fast float -0.000000e+00, %5300
  %5361 = fsub fast float -0.000000e+00, %5301
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = fsub fast float -0.000000e+00, %5362
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fadd fast float %5364, %5258
  %5366 = fadd fast float %5257, %5364
  %5367 = fsub fast float -0.000000e+00, %5366
  %5368 = fcmp ogt float %5362, -0.000000e+00
  %5369 = select i1 %5368, float %5367, float %5365
  %5370 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5371 = fdiv fast float 1.000000e+00, %5370
  %5372 = fmul fast float %5369, %5371
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0.000000e+00)  ; FMax(a,b)
  %5374 = call float @dx.op.binary.f32(i32 36, float %5358, float %5373)  ; FMin(a,b)
  %5375 = call float @dx.op.binary.f32(i32 36, float %5343, float %5374)  ; FMin(a,b)
  %5376 = fmul fast float %5375, %5167
  %5377 = fmul fast float %5375, %5168
  %5378 = fmul fast float %5375, %5169
  %5379 = fadd fast float %5376, %167
  %5380 = fadd fast float %5377, %168
  %5381 = fadd fast float %5378, %169
  %5382 = fsub fast float %5379, %5227
  %5383 = fsub fast float %5380, %5228
  %5384 = fsub fast float %5381, %5229
  br label %5392

; <label>:5385                                    ; preds = %5327
  %5386 = fmul fast float %5167, 8.096000e+03
  %5387 = fmul fast float %5168, 8.096000e+03
  %5388 = fmul fast float %5169, 8.096000e+03
  %5389 = fadd fast float %5386, %167
  %5390 = fadd fast float %5387, %168
  %5391 = fadd fast float %5388, %169
  br label %5392

; <label>:5392                                    ; preds = %5385, %5328
  %5393 = phi float [ %5167, %5385 ], [ %5382, %5328 ]
  %5394 = phi float [ %5168, %5385 ], [ %5383, %5328 ]
  %5395 = phi float [ %5169, %5385 ], [ %5384, %5328 ]
  %5396 = phi float [ %5389, %5385 ], [ %5379, %5328 ]
  %5397 = phi float [ %5390, %5385 ], [ %5380, %5328 ]
  %5398 = phi float [ %5391, %5385 ], [ %5381, %5328 ]
  %5399 = fcmp fast olt float %5246, 1.000000e+00
  br i1 %5399, label %5400, label %5431, !dx.controlflow.hints !97

; <label>:5400                                    ; preds = %5392
  %5401 = fmul fast float %5395, %5244
  %5402 = fmul fast float %5394, %5245
  %5403 = fsub fast float %5401, %5402
  %5404 = fmul fast float %5393, %5245
  %5405 = fmul fast float %5395, %5243
  %5406 = fsub fast float %5404, %5405
  %5407 = fmul fast float %5394, %5243
  %5408 = fmul fast float %5393, %5244
  %5409 = fsub fast float %5407, %5408
  %5410 = fmul fast float %5403, 2.000000e+00
  %5411 = fmul fast float %5406, 2.000000e+00
  %5412 = fmul fast float %5409, 2.000000e+00
  %5413 = fmul fast float %5410, %5246
  %5414 = fmul fast float %5411, %5246
  %5415 = fmul fast float %5412, %5246
  %5416 = fmul fast float %5412, %5244
  %5417 = fmul fast float %5411, %5245
  %5418 = fmul fast float %5410, %5245
  %5419 = fmul fast float %5412, %5243
  %5420 = fmul fast float %5411, %5243
  %5421 = fmul fast float %5410, %5244
  %5422 = fadd fast float %5416, %5393
  %5423 = fadd fast float %5422, %5413
  %5424 = fsub fast float %5423, %5417
  %5425 = fsub fast float %5394, %5419
  %5426 = fadd fast float %5425, %5414
  %5427 = fadd fast float %5426, %5418
  %5428 = fadd fast float %5415, %5395
  %5429 = fsub fast float %5428, %5421
  %5430 = fadd fast float %5429, %5420
  br label %5431

; <label>:5431                                    ; preds = %5400, %5392
  %5432 = phi float [ %5424, %5400 ], [ %5393, %5392 ]
  %5433 = phi float [ %5427, %5400 ], [ %5394, %5392 ]
  %5434 = phi float [ %5430, %5400 ], [ %5395, %5392 ]
  br i1 %5272, label %5466, label %5435

; <label>:5435                                    ; preds = %5431
  %5436 = fmul fast float %4906, 0x400187C840000000
  %5437 = fadd fast float %5436, 0xC00EFC2120000000
  %5438 = fmul fast float %5437, %4906
  %5439 = fadd fast float %5438, 0x3FE5D16340000000
  %5440 = fmul fast float %5439, %4906
  %5441 = fadd fast float %5440, 1.000000e+00
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fsub fast float %5396, %167
  %5444 = fsub fast float %5397, %168
  %5445 = fsub fast float %5398, %169
  %5446 = fsub fast float %5396, %5227
  %5447 = fsub fast float %5397, %5228
  %5448 = fsub fast float %5398, %5229
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = fadd fast float %5450, 0x3EE4F8B580000000
  %5452 = fdiv fast float %5449, %5451
  %5453 = bitcast float %5452 to i32
  %5454 = ashr i32 %5453, 1
  %5455 = add nsw i32 %5454, 532487669
  %5456 = bitcast i32 %5455 to float
  %5457 = fmul fast float %5456, %5442
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fmul fast float %5458, 0x4009981AE0000000
  %5460 = fsub fast float 0x40111BBD80000000, %5459
  %5461 = fmul fast float %5460, %5458
  %5462 = fadd fast float %5461, 0xC0009F6020000000
  %5463 = fmul fast float %5462, %5458
  %5464 = fadd fast float %5463, 1.000000e+00
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  br label %5469

; <label>:5466                                    ; preds = %5431
  %5467 = icmp ne i32 %5273, -1
  %5468 = zext i1 %5467 to i32
  br label %5469

; <label>:5469                                    ; preds = %5466, %5435
  %5470 = phi float [ %4906, %5466 ], [ %5465, %5435 ]
  %5471 = phi i32 [ %5468, %5466 ], [ 0, %5435 ]
  %5472 = fmul float %5470, 5.000000e+00
  %5473 = fsub float 5.000000e+00, %5472
  %5474 = icmp ne i32 %5471, 0
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5477 = fadd fast float %5476, %5473
  %5478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5477)  ; FMax(a,b)
  %5479 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5480 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5481 = fadd fast float %5480, %5479
  %5482 = call float @dx.op.unary.f32(i32 6, float %5434)  ; FAbs(value)
  %5483 = fadd fast float %5481, %5482
  %5484 = fcmp fast oeq float %5483, 0.000000e+00
  %5485 = fdiv fast float 1.000000e+00, %5483
  %5486 = select i1 %5484, float 1.000000e+00, float %5485
  %5487 = fmul fast float %5486, %5432
  %5488 = fmul fast float %5486, %5433
  %5489 = call float @dx.op.unary.f32(i32 6, float %5488)  ; FAbs(value)
  %5490 = call float @dx.op.unary.f32(i32 6, float %5487)  ; FAbs(value)
  %5491 = fsub fast float 1.000000e+00, %5489
  %5492 = fsub fast float 1.000000e+00, %5490
  %5493 = fcmp fast oge float %5487, 0.000000e+00
  %5494 = fcmp fast oge float %5488, 0.000000e+00
  %5495 = select i1 %5493, float 1.000000e+00, float -1.000000e+00
  %5496 = select i1 %5494, float 1.000000e+00, float -1.000000e+00
  %5497 = fcmp fast ole float %5434, 0.000000e+00
  %5498 = fmul fast float %5495, %5491
  %5499 = fmul fast float %5496, %5492
  %5500 = select i1 %5497, float %5498, float %5487
  %5501 = select i1 %5497, float %5499, float %5488
  %5502 = fmul fast float %5500, 5.000000e-01
  %5503 = fmul fast float %5501, 5.000000e-01
  %5504 = fadd fast float %5502, 5.000000e-01
  %5505 = fadd fast float %5503, 5.000000e-01
  %5506 = uitofp i32 %5270 to float
  %5507 = call float @dx.op.binary.f32(i32 36, float %5478, float 3.000000e+00)  ; FMin(a,b)
  %5508 = fadd fast float %5507, 2.000000e+00
  %5509 = call float @dx.op.unary.f32(i32 21, float %5508)  ; Exp(value)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5511 = fmul fast float %5510, %5509
  %5512 = fmul fast float %5511, 2.000000e+00
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5504, %5513
  %5515 = fmul fast float %5505, %5513
  %5516 = fadd fast float %5514, %5511
  %5517 = fadd fast float %5515, %5511
  %5518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5516, float %5517, float %5506, float undef, i32 0, i32 0, i32 undef, float %5478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 3
  %5524 = fmul fast float %5523, %5240
  %5525 = call float @dx.op.binary.f32(i32 36, float %4973, float %5524)  ; FMin(a,b)
  %5526 = select i1 %5474, float %5525, float %5524
  %5527 = fmul fast float %5519, %5319
  %5528 = fmul fast float %5527, %5526
  %5529 = fmul fast float %5520, %5319
  %5530 = fmul fast float %5529, %5526
  %5531 = fmul fast float %5521, %5319
  %5532 = fmul fast float %5531, %5526
  %5533 = fadd fast float %5528, %5215
  %5534 = fadd fast float %5530, %5216
  %5535 = fadd fast float %5532, %5217
  %5536 = fsub fast float %5218, %5319
  br label %5321

; <label>:5537                                    ; preds = %5321
  br label %5538

; <label>:5538                                    ; preds = %5537, %5184
  %5539 = phi float [ %5185, %5184 ], [ %5322, %5537 ]
  %5540 = phi float [ %5186, %5184 ], [ %5323, %5537 ]
  %5541 = phi float [ %5187, %5184 ], [ %5324, %5537 ]
  %5542 = phi float [ %5188, %5184 ], [ %5325, %5537 ]
  %5543 = add i32 %5189, 1
  %5544 = icmp ugt i32 %5543, %5181
  br i1 %5544, label %5545, label %5184, !llvm.loop !98

; <label>:5545                                    ; preds = %5538
  br label %5546

; <label>:5546                                    ; preds = %5545, %5166
  %5547 = phi float [ 0.000000e+00, %5166 ], [ %5539, %5545 ]
  %5548 = phi float [ 0.000000e+00, %5166 ], [ %5540, %5545 ]
  %5549 = phi float [ 0.000000e+00, %5166 ], [ %5541, %5545 ]
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = select i1 %261, float 0.000000e+00, float %5547
  %5552 = select i1 %261, float %5550, float %5548
  %5553 = select i1 %261, float 0.000000e+00, float %5549
  %5554 = fcmp fast olt float %5092, 0.000000e+00
  %5555 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5556 = fmul fast float %5555, %5032
  %5557 = fmul fast float %5555, %5033
  %5558 = fmul fast float %5555, %5034
  %5559 = select i1 %5554, float %5032, float %5556
  %5560 = select i1 %5554, float %5033, float %5557
  %5561 = select i1 %5554, float %5034, float %5558
  %5562 = fsub fast float 1.000000e+00, %5555
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = fmul fast float %5563, %5551
  %5565 = fmul fast float %5563, %5552
  %5566 = fmul fast float %5563, %5553
  %5567 = fadd fast float %5559, %5564
  %5568 = fadd fast float %5560, %5565
  %5569 = fadd fast float %5561, %5566
  br label %5570

; <label>:5570                                    ; preds = %5546, %5075
  %5571 = phi float [ %5032, %5075 ], [ %5567, %5546 ]
  %5572 = phi float [ %5033, %5075 ], [ %5568, %5546 ]
  %5573 = phi float [ %5034, %5075 ], [ %5569, %5546 ]
  %5574 = fmul fast float %5081, %5028
  %5575 = fmul fast float %5081, %5029
  %5576 = fmul fast float %5081, %5030
  %5577 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4898, float %4899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = fcmp fast ogt float %5577, 0x3E7FF19E20000000
  %5579 = fdiv fast float 1.000000e+00, %5577
  %5580 = select i1 %5578, float %5579, float 0.000000e+00
  %5581 = fmul fast float %5580, %4897
  %5582 = fmul fast float %5580, %4898
  %5583 = fmul fast float %5580, %4899
  %5584 = fadd fast float %5581, -1.000000e+00
  %5585 = fadd fast float %5582, -1.000000e+00
  %5586 = fadd fast float %5583, -1.000000e+00
  %5587 = fmul fast float %5584, 5.000000e-01
  %5588 = fmul fast float %5585, 5.000000e-01
  %5589 = fmul fast float %5586, 5.000000e-01
  %5590 = fadd fast float %5587, 1.000000e+00
  %5591 = fadd fast float %5588, 1.000000e+00
  %5592 = fadd fast float %5589, 1.000000e+00
  %5593 = fmul fast float %5571, %5076
  %5594 = fmul fast float %5572, %5077
  %5595 = fmul fast float %5573, %5078
  %5596 = fsub fast float 1.000000e+00, %4911
  %5597 = bitcast float %5596 to i32
  %5598 = sitofp i32 %5597 to float
  %5599 = fmul fast float %5598, 5.000000e+00
  %5600 = fadd fast float %5599, 0xC1EFBF8940000000
  %5601 = fptosi float %5600 to i32
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5602, %4292
  %5604 = fmul fast float %5028, %5603
  %5605 = fmul fast float %5604, %5081
  %5606 = fmul fast float %5605, %5590
  %5607 = fmul fast float %5029, %5603
  %5608 = fmul fast float %5607, %5081
  %5609 = fmul fast float %5608, %5591
  %5610 = fmul fast float %5030, %5603
  %5611 = fmul fast float %5610, %5081
  %5612 = fmul fast float %5611, %5592
  %5613 = fmul fast float %5574, %4317
  %5614 = fmul fast float %5575, %4317
  %5615 = fmul fast float %5576, %4317
  %5616 = fadd fast float %5593, %4284
  %5617 = fadd fast float %5616, %5606
  %5618 = fmul fast float %5617, %4317
  %5619 = fadd fast float %5594, %4285
  %5620 = fadd fast float %5619, %5609
  %5621 = fmul fast float %5620, %4317
  %5622 = fadd fast float %5595, %4286
  %5623 = fadd fast float %5622, %5612
  %5624 = fmul fast float %5623, %4317
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5627 = fcmp fast oeq float %5626, 0.000000e+00
  br i1 %5627, label %7169, label %5628

; <label>:5628                                    ; preds = %5570
  %5629 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5631 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = select i1 %261, float %5637, float %5633
  %5641 = select i1 %261, float %5639, float %5634
  %5642 = select i1 %261, float %5638, float %5635
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 2
  %5645 = fmul fast float %5644, %111
  %5646 = fmul fast float %5644, %112
  %5647 = fmul fast float %5644, %113
  %5648 = fadd fast float %5645, %167
  %5649 = fadd fast float %5646, %168
  %5650 = fadd fast float %5647, %169
  %5651 = fcmp fast olt float %5626, 0.000000e+00
  br i1 %5651, label %6747, label %5652

; <label>:5652                                    ; preds = %5628
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5653, 3
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = fmul fast float %5654, %5648
  %5669 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5655, float %5668)  ; FMad(a,b,c)
  %5670 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5656, float %5669)  ; FMad(a,b,c)
  %5671 = fadd fast float %5670, %5657
  %5672 = fmul fast float %5659, %5648
  %5673 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5660, float %5672)  ; FMad(a,b,c)
  %5674 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5661, float %5673)  ; FMad(a,b,c)
  %5675 = fadd fast float %5674, %5662
  %5676 = fmul fast float %5664, %5648
  %5677 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5665, float %5676)  ; FMad(a,b,c)
  %5678 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5666, float %5677)  ; FMad(a,b,c)
  %5679 = fadd fast float %5678, %5667
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5684 = fmul fast float %5683, %5671
  %5685 = fmul fast float %5683, %5675
  %5686 = fadd fast float %5684, %5681
  %5687 = fadd fast float %5685, %5682
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5692 = fmul fast float %5691, %5671
  %5693 = fmul fast float %5691, %5675
  %5694 = fadd fast float %5692, %5689
  %5695 = fadd fast float %5693, %5690
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5698 = fsub fast float %5697, %5679
  %5699 = extractvalue %dx.types.CBufRet.f32 %5696, 2
  %5700 = fmul fast float %5698, %5699
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5688, 2
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5706 = fadd fast float %5705, %5703
  %5707 = fcmp fast ogt float %5706, 0.000000e+00
  br i1 %5707, label %5708, label %5732

; <label>:5708                                    ; preds = %5652
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5712 = fsub fast float %5694, %5710
  %5713 = fsub fast float %5695, %5711
  %5714 = fcmp fast olt float %5712, 0.000000e+00
  %5715 = fcmp fast olt float %5713, 0.000000e+00
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5727 = extractvalue %dx.types.CBufRet.f32 %5643, 0
  %5728 = call float @dx.op.binary.f32(i32 35, float %5725, float %5726)  ; FMax(a,b)
  %5729 = fsub fast float %5727, %5728
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = fmul fast float %5730, %5702
  br label %5732

; <label>:5732                                    ; preds = %5708, %5652
  %5733 = phi float [ %5731, %5708 ], [ 0.000000e+00, %5652 ]
  %5734 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5735 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5736 = fadd fast float %5735, %5734
  %5737 = fcmp fast ogt float %5736, 0.000000e+00
  %5738 = extractvalue %dx.types.CBufRet.f32 %5643, 0
  br i1 %5737, label %5739, label %5762

; <label>:5739                                    ; preds = %5732
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = fsub fast float %5686, %5741
  %5744 = fsub fast float %5687, %5742
  %5745 = fcmp fast olt float %5743, 0.000000e+00
  %5746 = fcmp fast olt float %5744, 0.000000e+00
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5747, 1
  %5750 = extractvalue %dx.types.CBufRet.f32 %5747, 2
  %5751 = extractvalue %dx.types.CBufRet.f32 %5747, 3
  %5752 = select i1 %5745, float %5748, float %5750
  %5753 = select i1 %5746, float %5749, float %5751
  %5754 = fmul fast float %5752, %5743
  %5755 = fmul fast float %5753, %5744
  %5756 = call float @dx.op.unary.f32(i32 6, float %5754)  ; FAbs(value)
  %5757 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5756, float %5757)  ; FMax(a,b)
  %5759 = fsub fast float %5738, %5758
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = fmul fast float %5760, %5702
  br label %5762

; <label>:5762                                    ; preds = %5739, %5732
  %5763 = phi float [ %5761, %5739 ], [ 0.000000e+00, %5732 ]
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = fsub fast float %5671, %5768
  %5771 = fsub fast float %5675, %5769
  %5772 = fcmp fast olt float %5770, 0.000000e+00
  %5773 = fcmp fast olt float %5771, 0.000000e+00
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = select i1 %5772, float %5775, float %5777
  %5780 = select i1 %5773, float %5776, float %5778
  %5781 = fmul fast float %5779, %5770
  %5782 = fmul fast float %5780, %5771
  %5783 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5784 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5785 = call float @dx.op.binary.f32(i32 35, float %5783, float %5784)  ; FMax(a,b)
  %5786 = fsub fast float %5738, %5785
  %5787 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5788 = call float @dx.op.binary.f32(i32 36, float %5787, float %5766)  ; FMin(a,b)
  %5789 = fmul fast float %5788, %5702
  %5790 = fsub fast float %5763, %5789
  %5791 = fsub fast float %5733, %5763
  %5792 = fsub fast float %5791, %5789
  %5793 = call float @dx.op.binary.f32(i32 35, float %5763, float %5733)  ; FMax(a,b)
  %5794 = call float @dx.op.binary.f32(i32 35, float %5789, float %5793)  ; FMax(a,b)
  %5795 = fcmp fast olt float %5794, 1.000000e+00
  br i1 %5795, label %5796, label %6194, !dx.controlflow.hints !100

; <label>:5796                                    ; preds = %5762
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = fcmp fast une float %5798, 0.000000e+00
  br i1 %5799, label %5800, label %6194, !dx.controlflow.hints !101

; <label>:5800                                    ; preds = %5796
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5805 = extractvalue %dx.types.CBufRet.f32 %5801, 3
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5810 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = extractvalue %dx.types.CBufRet.f32 %5811, 3
  %5816 = fmul fast float %5802, %5648
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5803, float %5816)  ; FMad(a,b,c)
  %5818 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5804, float %5817)  ; FMad(a,b,c)
  %5819 = fadd fast float %5818, %5805
  %5820 = fmul fast float %5807, %5648
  %5821 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5808, float %5820)  ; FMad(a,b,c)
  %5822 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5809, float %5821)  ; FMad(a,b,c)
  %5823 = fadd fast float %5822, %5810
  %5824 = fmul fast float %5812, %5648
  %5825 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %5813, float %5824)  ; FMad(a,b,c)
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %5814, float %5825)  ; FMad(a,b,c)
  %5827 = fadd fast float %5826, %5815
  %5828 = fcmp fast oge float %5819, 1.000000e+00
  %5829 = fcmp fast oge float %5823, 1.000000e+00
  %5830 = or i1 %5828, %5829
  %5831 = fcmp fast olt float %5819, 0.000000e+00
  %5832 = fcmp fast olt float %5823, 0.000000e+00
  %5833 = or i1 %5831, %5832
  %5834 = or i1 %5830, %5833
  br i1 %5834, label %6194, label %5835, !dx.controlflow.hints !102

; <label>:5835                                    ; preds = %5800
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.i32 %5840, 2
  %5842 = uitofp i32 %5841 to float
  %5843 = extractvalue %dx.types.CBufRet.i32 %5840, 3
  %5844 = uitofp i32 %5843 to float
  %5845 = extractvalue %dx.types.CBufRet.f32 %5836, 3
  %5846 = fmul fast float %5845, 2.000000e+00
  %5847 = fsub fast float %5819, %5837
  %5848 = fsub fast float %5823, %5838
  %5849 = fmul fast float %5846, %5847
  %5850 = fmul fast float %5846, %5848
  %5851 = fdiv fast float 1.000000e+00, %5631
  %5852 = fmul fast float %5850, %5851
  %5853 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5854 = fmul fast float %5839, %5650
  %5855 = fmul fast float %5854, %5846
  %5856 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5857 = call float @dx.op.unary.f32(i32 6, float %5849)  ; FAbs(value)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5856, float %5853)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5857, float %5858)  ; FMax(a,b)
  %5860 = fmul fast float %5859, 2.000000e+00
  %5861 = call float @dx.op.unary.f32(i32 23, float %5860)  ; Log(value)
  %5862 = call float @dx.op.binary.f32(i32 35, float %5861, float %5842)  ; FMax(a,b)
  %5863 = call float @dx.op.unary.f32(i32 22, float %5862)  ; Frc(value)
  %5864 = fadd fast float %5863, 0xBFEA666660000000
  %5865 = fmul fast float %5864, 8.000000e+00
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = call float @dx.op.unary.f32(i32 27, float %5862)  ; Round_ni(value)
  %5868 = fadd fast float %5867, %5866
  %5869 = call float @dx.op.binary.f32(i32 36, float %5868, float %5844)  ; FMin(a,b)
  %5870 = call float @dx.op.unary.f32(i32 27, float %5869)  ; Round_ni(value)
  %5871 = fsub fast float -0.000000e+00, %5870
  %5872 = call float @dx.op.unary.f32(i32 21, float %5871)  ; Exp(value)
  %5873 = fmul fast float %5872, %5846
  %5874 = fmul fast float %5873, %5819
  %5875 = fmul fast float %5873, %5823
  %5876 = fmul fast float %5874, 2.500000e-01
  %5877 = fmul fast float %5875, 2.500000e-01
  %5878 = fadd fast float %5876, 5.000000e-01
  %5879 = fadd fast float %5877, 5.000000e-01
  %5880 = fsub fast float %5844, %5842
  %5881 = fptoui float %5880 to i32
  %5882 = add i32 %5881, 320
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5882)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = fcmp fast une float %5869, %5844
  %5887 = fsub fast float %5819, %5884
  %5888 = fsub fast float %5823, %5885
  %5889 = call float @dx.op.unary.f32(i32 6, float %5887)  ; FAbs(value)
  %5890 = call float @dx.op.unary.f32(i32 6, float %5888)  ; FAbs(value)
  %5891 = fmul fast float %5889, %5873
  %5892 = fmul fast float %5890, %5873
  %5893 = fcmp fast olt float %5891, 1.000000e+00
  %5894 = fcmp fast olt float %5892, 1.000000e+00
  %5895 = and i1 %5893, %5894
  %5896 = or i1 %5886, %5895
  br i1 %5896, label %5897, label %6194, !dx.controlflow.hints !103

; <label>:5897                                    ; preds = %5835
  %5898 = fmul fast float %5875, 5.000000e-01
  %5899 = fmul fast float %5874, 5.000000e-01
  %5900 = fadd fast float %5898, 5.000000e-01
  %5901 = fadd fast float %5899, 5.000000e-01
  %5902 = sitofp i32 %5841 to float
  %5903 = fsub fast float %5869, %5902
  %5904 = call float @dx.op.unary.f32(i32 27, float %5903)  ; Round_ni(value)
  %5905 = call float @dx.op.unary.f32(i32 22, float %5869)  ; Frc(value)
  %5906 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5907 = call float @dx.op.unary.f32(i32 22, float %5900)  ; Frc(value)
  %5908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5906, float %5907, float %5904, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.ResRet.f32 %5908, 2
  %5912 = extractvalue %dx.types.ResRet.f32 %5908, 3
  %5913 = fcmp fast ogt float %5905, 0.000000e+00
  br i1 %5913, label %5914, label %5935, !dx.controlflow.hints !104

; <label>:5914                                    ; preds = %5897
  %5915 = fadd fast float %5904, 1.000000e+00
  %5916 = call float @dx.op.unary.f32(i32 22, float %5878)  ; Frc(value)
  %5917 = call float @dx.op.unary.f32(i32 22, float %5879)  ; Frc(value)
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5916, float %5917, float %5915, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.ResRet.f32 %5918, 3
  %5923 = fsub fast float %5919, %5909
  %5924 = fsub fast float %5920, %5910
  %5925 = fsub fast float %5921, %5911
  %5926 = fsub fast float %5922, %5912
  %5927 = fmul fast float %5923, %5905
  %5928 = fmul fast float %5924, %5905
  %5929 = fmul fast float %5925, %5905
  %5930 = fmul fast float %5926, %5905
  %5931 = fadd fast float %5927, %5909
  %5932 = fadd fast float %5928, %5910
  %5933 = fadd fast float %5929, %5911
  %5934 = fadd fast float %5930, %5912
  br label %5935

; <label>:5935                                    ; preds = %5914, %5897
  %5936 = phi float [ %5931, %5914 ], [ %5909, %5897 ]
  %5937 = phi float [ %5932, %5914 ], [ %5910, %5897 ]
  %5938 = phi float [ %5933, %5914 ], [ %5911, %5897 ]
  %5939 = phi float [ %5934, %5914 ], [ %5912, %5897 ]
  %5940 = fadd fast float %5936, -5.000000e-01
  %5941 = fadd fast float %5938, -5.000000e-01
  %5942 = fmul fast float %5940, 0xBFD5555560000000
  %5943 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5941, float %5942)  ; FMad(a,b,c)
  %5944 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5937, float 0.000000e+00)  ; FMad(a,b,c)
  %5945 = fadd fast float %5944, %5939
  %5946 = fmul fast float %5940, -7.500000e-01
  %5947 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5941, float %5946)  ; FMad(a,b,c)
  %5948 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5937, float 0.000000e+00)  ; FMad(a,b,c)
  %5949 = fadd fast float %5948, %5939
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5956 = extractvalue %dx.types.CBufRet.f32 %5952, 3
  %5957 = fsub fast float %5953, %5943
  %5958 = fsub fast float %5954, %5945
  %5959 = fsub fast float %5955, %5947
  %5960 = fsub fast float %5956, %5949
  %5961 = fmul fast float %5957, %5951
  %5962 = fmul fast float %5958, %5951
  %5963 = fmul fast float %5959, %5951
  %5964 = fmul fast float %5960, %5951
  %5965 = fadd fast float %5961, %5943
  %5966 = fadd fast float %5962, %5945
  %5967 = fadd fast float %5963, %5947
  %5968 = fadd fast float %5964, %5949
  %5969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.i32 %5969, 0
  %5971 = and i32 %5970, 536870911
  %5972 = uitofp i32 %5971 to float
  %5973 = fmul fast float %5972, %5819
  %5974 = fmul fast float %5972, %5823
  %5975 = fptoui float %5973 to i32
  %5976 = fptoui float %5974 to i32
  %5977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.i32 %5977, 0
  %5979 = and i32 %5978, 31
  %5980 = lshr i32 %5975, %5979
  %5981 = lshr i32 %5976, %5979
  %5982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.i32 %5982, 0
  %5984 = and i32 %5983, 31
  %5985 = shl i32 1, %5984
  %5986 = call i32 @dx.op.binary.i32(i32 40, i32 %5985, i32 4)  ; UMin(a,b)
  %5987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5988 = extractvalue %dx.types.ResRet.i32 %5987, 0
  %5989 = extractvalue %dx.types.ResRet.i32 %5987, 1
  %5990 = icmp eq i32 %5986, 0
  br i1 %5990, label %6032, label %5991

; <label>:5991                                    ; preds = %5935
  br label %5992

; <label>:5992                                    ; preds = %6020, %5991
  %5993 = phi i32 [ %6023, %6020 ], [ 0, %5991 ]
  %5994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.i32 %5994, 0
  %5996 = lshr i32 %5995, 16
  %5997 = and i32 %5996, 31
  %5998 = shl i32 %5981, %5997
  %5999 = add i32 %5998, %5980
  %6000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6001 = extractvalue %dx.types.ResRet.i32 %6000, 0
  %6002 = and i32 %6001, 31
  %6003 = shl i32 %5999, %6002
  %6004 = add i32 %6003, %5993
  %6005 = shl i32 %6004, 2
  %6006 = add i32 %6005, 32
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = icmp slt i32 %6008, 0
  %6010 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5993
  %6011 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5993
  %6012 = bitcast float* %6010 to i32*
  %6013 = bitcast float* %6011 to i32*
  br i1 %6009, label %6014, label %6020

; <label>:6014                                    ; preds = %5992
  %6015 = and i32 %6008, 1073741823
  %6016 = add nuw nsw i32 %6015, 20
  %6017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6016, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.i32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.i32 %6017, 1
  br label %6020

; <label>:6020                                    ; preds = %6014, %5992
  %6021 = phi i32 [ %6018, %6014 ], [ %5988, %5992 ]
  %6022 = phi i32 [ %6019, %6014 ], [ %5989, %5992 ]
  store i32 %6021, i32* %6012, align 4
  store i32 %6022, i32* %6013, align 4
  %6023 = add nuw i32 %5993, 1
  %6024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.i32 %6024, 2
  %6026 = icmp eq i32 %6025, 0
  %6027 = icmp ugt i32 %6008, -1073741825
  %6028 = and i1 %6027, %6026
  %6029 = icmp ult i32 %6023, %5986
  %6030 = and i1 %6028, %6029
  br i1 %6030, label %5992, label %6031

; <label>:6031                                    ; preds = %6020
  br label %6032

; <label>:6032                                    ; preds = %6031, %5935
  %6033 = phi i32 [ 0, %5935 ], [ %6023, %6031 ]
  %6034 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %6035 = fptoui float %6034 to i32
  %6036 = icmp eq i32 %6035, 0
  br i1 %6036, label %6088, label %6037

; <label>:6037                                    ; preds = %6032
  br label %6038

; <label>:6038                                    ; preds = %6083, %6037
  %6039 = phi i32 [ %6084, %6083 ], [ %6033, %6037 ]
  %6040 = phi i32 [ %6085, %6083 ], [ 0, %6037 ]
  %6041 = lshr i32 %6040, 2
  %6042 = and i32 %6040, 3
  %6043 = add nuw nsw i32 %6041, 83
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6043)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.i32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.i32 %6044, 2
  %6048 = extractvalue %dx.types.CBufRet.i32 %6044, 3
  %6049 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6045, i32* %6049, align 4
  %6050 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6046, i32* %6050, align 4
  %6051 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6047, i32* %6051, align 4
  %6052 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6048, i32* %6052, align 4
  %6053 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6042
  %6054 = load i32, i32* %6053, align 4, !tbaa !105, !noalias !109
  %6055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6056 = extractvalue %dx.types.ResRet.i32 %6055, 0
  %6057 = lshr i32 %6056, 16
  %6058 = and i32 %6057, 31
  %6059 = shl i32 %5981, %6058
  %6060 = add i32 %6059, %5980
  %6061 = shl i32 %6060, 2
  %6062 = add i32 %6061, %6054
  %6063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6062, i32 undef)  ; BufferLoad(srv,index,wot)
  %6064 = extractvalue %dx.types.ResRet.i32 %6063, 0
  %6065 = icmp eq i32 %6064, 0
  br i1 %6065, label %6083, label %6066

; <label>:6066                                    ; preds = %6038
  %6067 = icmp slt i32 %6064, 0
  %6068 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6039
  %6069 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6039
  %6070 = bitcast float* %6068 to i32*
  %6071 = bitcast float* %6069 to i32*
  br i1 %6067, label %6072, label %6079

; <label>:6072                                    ; preds = %6066
  %6073 = and i32 %6064, 1073741823
  %6074 = add i32 %6054, 20
  %6075 = add i32 %6074, %6073
  %6076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6075, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.i32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.i32 %6076, 1
  br label %6079

; <label>:6079                                    ; preds = %6072, %6066
  %6080 = phi i32 [ %6077, %6072 ], [ %5988, %6066 ]
  %6081 = phi i32 [ %6078, %6072 ], [ %5989, %6066 ]
  store i32 %6080, i32* %6070, align 4
  store i32 %6081, i32* %6071, align 4
  %6082 = add i32 %6039, 1
  br label %6083

; <label>:6083                                    ; preds = %6079, %6038
  %6084 = phi i32 [ %6039, %6038 ], [ %6082, %6079 ]
  %6085 = add nuw i32 %6040, 1
  %6086 = icmp eq i32 %6085, %6035
  br i1 %6086, label %6087, label %6038

; <label>:6087                                    ; preds = %6083
  br label %6088

; <label>:6088                                    ; preds = %6087, %6032
  %6089 = phi i32 [ %6033, %6032 ], [ %6084, %6087 ]
  %6090 = icmp eq i32 %6089, 1
  %6091 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6092 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6090, label %6093, label %6096

; <label>:6093                                    ; preds = %6088
  %6094 = load float, float* %6091, align 4
  %6095 = load float, float* %6092, align 4
  br label %6123

; <label>:6096                                    ; preds = %6088
  %6097 = load float, float* %6091, align 4
  %6098 = load float, float* %6092, align 4
  %6099 = fdiv fast float 1.000000e+00, %6098
  %6100 = fsub fast float %6097, %6099
  %6101 = icmp ugt i32 %6089, 1
  br i1 %6101, label %6102, label %6118

; <label>:6102                                    ; preds = %6096
  br label %6103

; <label>:6103                                    ; preds = %6103, %6102
  %6104 = phi float [ %6113, %6103 ], [ %6100, %6102 ]
  %6105 = phi float [ %6114, %6103 ], [ %6097, %6102 ]
  %6106 = phi i32 [ %6115, %6103 ], [ 1, %6102 ]
  %6107 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6106
  %6108 = load float, float* %6107, align 4
  %6109 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6106
  %6110 = load float, float* %6109, align 4
  %6111 = fdiv fast float 1.000000e+00, %6110
  %6112 = fsub fast float %6108, %6111
  %6113 = call float @dx.op.binary.f32(i32 36, float %6104, float %6112)  ; FMin(a,b)
  %6114 = call float @dx.op.binary.f32(i32 35, float %6105, float %6108)  ; FMax(a,b)
  %6115 = add nuw i32 %6106, 1
  %6116 = icmp eq i32 %6115, %6089
  br i1 %6116, label %6117, label %6103

; <label>:6117                                    ; preds = %6103
  br label %6118

; <label>:6118                                    ; preds = %6117, %6096
  %6119 = phi float [ %6100, %6096 ], [ %6113, %6117 ]
  %6120 = phi float [ %6097, %6096 ], [ %6114, %6117 ]
  %6121 = fsub fast float %6120, %6119
  %6122 = fdiv fast float 1.000000e+00, %6121
  br label %6123

; <label>:6123                                    ; preds = %6118, %6093
  %6124 = phi float [ %6094, %6093 ], [ %6120, %6118 ]
  %6125 = phi float [ %6095, %6093 ], [ %6122, %6118 ]
  %6126 = fadd fast float %5827, %6124
  %6127 = fmul fast float %6126, %6125
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = fmul fast float %6128, 2.000000e+00
  %6130 = fsub fast float 1.000000e+00, %6129
  %6131 = fmul fast float %5965, %5965
  %6132 = fsub fast float %5966, %6131
  %6133 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6132)  ; FMax(a,b)
  %6134 = fdiv fast float 1.000000e+00, %6133
  %6135 = fmul fast float %5966, %5965
  %6136 = fsub fast float %5967, %6135
  %6137 = fsub fast float %6130, %5965
  %6138 = fmul fast float %6130, %6130
  %6139 = fsub fast float %6138, %5966
  %6140 = fmul fast float %6134, %6136
  %6141 = fmul fast float %6140, %6137
  %6142 = fsub fast float %6139, %6141
  %6143 = fmul fast float %5966, %5966
  %6144 = fsub fast float %5968, %6143
  %6145 = fmul fast float %6136, %6136
  %6146 = fmul fast float %6145, %6134
  %6147 = fsub fast float %6144, %6146
  %6148 = fdiv fast float %6142, %6147
  %6149 = fmul fast float %6148, %6136
  %6150 = fsub fast float %6137, %6149
  %6151 = fmul fast float %6150, %6134
  %6152 = fmul fast float %6151, %5965
  %6153 = fsub fast float 1.000000e+00, %6152
  %6154 = fmul fast float %6148, %5966
  %6155 = fsub fast float %6153, %6154
  %6156 = fmul fast float %6151, %6151
  %6157 = fmul fast float %6148, 4.000000e+00
  %6158 = fmul fast float %6157, %6155
  %6159 = fsub fast float %6156, %6158
  %6160 = call float @dx.op.unary.f32(i32 24, float %6159)  ; Sqrt(value)
  %6161 = fcmp fast oge float %6151, 0.000000e+00
  %6162 = fsub fast float -0.000000e+00, %6160
  %6163 = select i1 %6161, float %6162, float %6160
  %6164 = fsub fast float %6163, %6151
  %6165 = fdiv fast float %6164, %6148
  %6166 = fdiv fast float %6155, %6164
  %6167 = fmul fast float %6165, 5.000000e-01
  %6168 = fmul fast float %6166, 2.000000e+00
  %6169 = select i1 %6161, float %6167, float %6168
  %6170 = select i1 %6161, float %6168, float %6167
  %6171 = call float @dx.op.binary.f32(i32 35, float %6169, float %6170)  ; FMax(a,b)
  %6172 = call float @dx.op.binary.f32(i32 36, float %6169, float %6170)  ; FMin(a,b)
  %6173 = fcmp fast ogt float %6130, %6171
  %6174 = fsub fast float %6130, %6172
  %6175 = fsub fast float %6130, %6171
  %6176 = fsub fast float %6171, %6172
  %6177 = select i1 %6173, float %6175, float %6176
  %6178 = fmul float %6174, %6177
  %6179 = select i1 %6173, float %6172, float %6130
  %6180 = fcmp fast ogt float %6130, %6172
  %6181 = fmul fast float %6179, %6171
  %6182 = fadd fast float %6179, %6171
  %6183 = fmul fast float %6182, %5965
  %6184 = fadd fast float %6181, %5966
  %6185 = fsub fast float %6184, %6183
  %6186 = fdiv fast float %6185, %6178
  %6187 = select i1 %6180, float %6186, float 0.000000e+00
  %6188 = fsub fast float 1.000000e+00, %6187
  %6189 = select i1 %6173, float %6188, float %6187
  %6190 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6191 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %6192 = fmul fast float %6191, %6190
  %6193 = fsub fast float 1.000000e+00, %6192
  br label %6194

; <label>:6194                                    ; preds = %6123, %5835, %5800, %5796, %5762
  %6195 = phi float [ 1.000000e+00, %5762 ], [ %6193, %6123 ], [ 1.000000e+00, %5800 ], [ 1.000000e+00, %5835 ], [ 1.000000e+00, %5796 ]
  %6196 = fcmp fast ogt float %5792, 0.000000e+00
  br i1 %6196, label %6197, label %6359, !dx.controlflow.hints !118

; <label>:6197                                    ; preds = %6194
  %6198 = fadd fast float %5705, %5679
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6204 = call float @dx.op.binary.f32(i32 35, float %6198, float 0.000000e+00)  ; FMax(a,b)
  %6205 = fadd fast float %6204, 0x3F10000000000000
  %6206 = fcmp fast oeq float %6203, 0.000000e+00
  br i1 %6206, label %6207, label %6274

; <label>:6207                                    ; preds = %6197
  %6208 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6210 = fmul fast float %6209, %5694
  %6211 = fmul fast float %6208, %5695
  %6212 = fadd fast float %6210, 5.000000e-01
  %6213 = call float @dx.op.unary.f32(i32 27, float %6212)  ; Round_ni(value)
  %6214 = fadd fast float %6211, 5.000000e-01
  %6215 = call float @dx.op.unary.f32(i32 27, float %6214)  ; Round_ni(value)
  %6216 = fsub fast float %6212, %6213
  %6217 = fsub fast float %6214, %6215
  %6218 = fadd fast float %6213, -5.000000e-01
  %6219 = fadd fast float %6215, -5.000000e-01
  %6220 = fmul fast float %6216, 2.000000e+00
  %6221 = fsub fast float 3.000000e+00, %6220
  %6222 = fadd fast float %6220, 1.000000e+00
  %6223 = fsub fast float 2.000000e+00, %6216
  %6224 = bitcast float %6221 to i32
  %6225 = sub nsw i32 2129859010, %6224
  %6226 = bitcast i32 %6225 to float
  %6227 = fmul fast float %6226, %6223
  %6228 = fadd fast float %6227, -1.000000e+00
  %6229 = bitcast float %6222 to i32
  %6230 = sub nsw i32 2129859010, %6229
  %6231 = bitcast i32 %6230 to float
  %6232 = fmul fast float %6231, %6216
  %6233 = fadd fast float %6232, 1.000000e+00
  %6234 = fmul fast float %6217, 2.000000e+00
  %6235 = fsub fast float 3.000000e+00, %6234
  %6236 = fadd fast float %6234, 1.000000e+00
  %6237 = fsub fast float 2.000000e+00, %6217
  %6238 = bitcast float %6235 to i32
  %6239 = sub nsw i32 2129859010, %6238
  %6240 = bitcast i32 %6239 to float
  %6241 = fmul fast float %6240, %6237
  %6242 = fadd fast float %6241, -1.000000e+00
  %6243 = bitcast float %6236 to i32
  %6244 = sub nsw i32 2129859010, %6243
  %6245 = bitcast i32 %6244 to float
  %6246 = fmul fast float %6245, %6217
  %6247 = fadd fast float %6246, 1.000000e+00
  %6248 = fadd fast float %6228, %6218
  %6249 = fmul fast float %6248, %6200
  %6250 = fadd fast float %6242, %6219
  %6251 = fmul fast float %6250, %6201
  %6252 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6249, float %6251, float undef, float undef, i32 0, i32 0, i32 undef, float %6205)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 0
  %6254 = fmul fast float %6253, %6221
  %6255 = fadd fast float %6233, %6218
  %6256 = fmul fast float %6255, %6200
  %6257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6256, float %6251, float undef, float undef, i32 0, i32 0, i32 undef, float %6205)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = fmul fast float %6258, %6222
  %6260 = fadd fast float %6247, %6219
  %6261 = fmul fast float %6260, %6201
  %6262 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6249, float %6261, float undef, float undef, i32 0, i32 0, i32 undef, float %6205)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = fmul fast float %6263, %6221
  %6265 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6256, float %6261, float undef, float undef, i32 0, i32 0, i32 undef, float %6205)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = fmul fast float %6266, %6222
  %6268 = fadd fast float %6267, %6264
  %6269 = fmul fast float %6268, %6236
  %6270 = fadd fast float %6259, %6254
  %6271 = fmul fast float %6270, %6235
  %6272 = fadd fast float %6271, %6269
  %6273 = fmul fast float %6272, 6.250000e-02
  br label %6359

; <label>:6274                                    ; preds = %6197
  %6275 = fmul fast float %272, 0x401921FB60000000
  %6276 = call float @dx.op.unary.f32(i32 13, float %6275)  ; Sin(value)
  %6277 = call float @dx.op.unary.f32(i32 12, float %6275)  ; Cos(value)
  %6278 = fsub fast float -0.000000e+00, %6276
  br label %6279

; <label>:6279                                    ; preds = %6328, %6274
  %6280 = phi float [ 0.000000e+00, %6274 ], [ %6323, %6328 ]
  %6281 = phi float [ 0.000000e+00, %6274 ], [ %6325, %6328 ]
  %6282 = phi i32 [ 0, %6274 ], [ %6329, %6328 ]
  %6283 = mul i32 %6282, 2
  %6284 = add i32 0, %6283
  %6285 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6284
  %6286 = load float, float* %6285, align 4
  %6287 = mul i32 %6282, 2
  %6288 = add i32 1, %6287
  %6289 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6288
  %6290 = load float, float* %6289, align 4
  %6291 = fmul fast float %6286, %6277
  %6292 = call float @dx.op.tertiary.f32(i32 46, float %6290, float %6278, float %6291)  ; FMad(a,b,c)
  %6293 = fmul fast float %6286, %6276
  %6294 = call float @dx.op.tertiary.f32(i32 46, float %6290, float %6277, float %6293)  ; FMad(a,b,c)
  %6295 = fmul fast float %6292, %6203
  %6296 = fmul fast float %6294, %6203
  %6297 = fadd fast float %6295, %5694
  %6298 = fadd fast float %6296, %5695
  %6299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6297, float %6298, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.ResRet.f32 %6299, 3
  %6304 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6300, float* %6304, align 4
  %6305 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6301, float* %6305, align 4
  %6306 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6302, float* %6306, align 4
  %6307 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6303, float* %6307, align 4
  %6308 = fsub fast float %6300, %6205
  %6309 = fcmp fast olt float %6308, 0.000000e+00
  %6310 = select i1 %6309, float 0.000000e+00, float 1.000000e+00
  %6311 = fadd fast float %6310, %6280
  %6312 = fmul fast float %6310, %6308
  %6313 = fadd fast float %6312, %6281
  br label %6314

; <label>:6314                                    ; preds = %6314, %6279
  %6315 = phi i32 [ 1, %6279 ], [ %6326, %6314 ]
  %6316 = phi float [ %6313, %6279 ], [ %6325, %6314 ]
  %6317 = phi float [ %6311, %6279 ], [ %6323, %6314 ]
  %6318 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6315
  %6319 = load float, float* %6318, align 4, !tbaa !119, !noalias !109
  %6320 = fsub fast float %6319, %6205
  %6321 = fcmp fast olt float %6320, 0.000000e+00
  %6322 = select i1 %6321, float 0.000000e+00, float 1.000000e+00
  %6323 = fadd fast float %6322, %6317
  %6324 = fmul fast float %6322, %6320
  %6325 = fadd fast float %6324, %6316
  %6326 = add nuw nsw i32 %6315, 1
  %6327 = icmp eq i32 %6326, 4
  br i1 %6327, label %6328, label %6314, !llvm.loop !121

; <label>:6328                                    ; preds = %6314
  %6329 = add nuw nsw i32 %6282, 1
  %6330 = icmp eq i32 %6329, 8
  br i1 %6330, label %6331, label %6279, !llvm.loop !122

; <label>:6331                                    ; preds = %6328
  %6332 = fdiv fast float 1.000000e+00, %6323
  %6333 = fmul fast float %6332, %6325
  %6334 = fdiv fast float 1.000000e+00, %6205
  %6335 = fmul fast float %6333, %6334
  %6336 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6337 = call float @dx.op.binary.f32(i32 35, float %6336, float 0.000000e+00)  ; FMax(a,b)
  %6338 = fmul fast float %6323, 3.125000e-02
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = fmul fast float %6339, 2.000000e+00
  %6341 = fadd fast float %6340, -1.000000e+00
  %6342 = fcmp fast ogt float %6341, 0.000000e+00
  %6343 = fcmp fast olt float %6341, 0.000000e+00
  %6344 = zext i1 %6342 to i32
  %6345 = zext i1 %6343 to i32
  %6346 = sub nsw i32 %6344, %6345
  %6347 = sitofp i32 %6346 to float
  %6348 = fmul fast float %6347, %6341
  %6349 = fsub fast float 1.000000e+00, %6348
  %6350 = fmul fast float %6349, %6349
  %6351 = fmul fast float %6350, %6349
  %6352 = fsub fast float %6349, %6351
  %6353 = fmul fast float %6352, %6337
  %6354 = fsub fast float 1.000000e+00, %6351
  %6355 = fsub fast float %6354, %6353
  %6356 = fmul fast float %6347, 5.000000e-01
  %6357 = fmul fast float %6356, %6355
  %6358 = fsub fast float 5.000000e-01, %6357
  br label %6359

; <label>:6359                                    ; preds = %6331, %6207, %6194
  %6360 = phi float [ 1.000000e+00, %6194 ], [ %6273, %6207 ], [ %6358, %6331 ]
  %6361 = fcmp fast ogt float %5790, 0.000000e+00
  br i1 %6361, label %6362, label %6526, !dx.controlflow.hints !123

; <label>:6362                                    ; preds = %6359
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6365 = fadd fast float %6364, %5679
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6371 = call float @dx.op.binary.f32(i32 35, float %6365, float 0.000000e+00)  ; FMax(a,b)
  %6372 = fadd fast float %6371, 0x3F10000000000000
  %6373 = fcmp fast oeq float %6370, 0.000000e+00
  br i1 %6373, label %6374, label %6441

; <label>:6374                                    ; preds = %6362
  %6375 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6377 = fmul fast float %6376, %5686
  %6378 = fmul fast float %6375, %5687
  %6379 = fadd fast float %6377, 5.000000e-01
  %6380 = call float @dx.op.unary.f32(i32 27, float %6379)  ; Round_ni(value)
  %6381 = fadd fast float %6378, 5.000000e-01
  %6382 = call float @dx.op.unary.f32(i32 27, float %6381)  ; Round_ni(value)
  %6383 = fsub fast float %6379, %6380
  %6384 = fsub fast float %6381, %6382
  %6385 = fadd fast float %6380, -5.000000e-01
  %6386 = fadd fast float %6382, -5.000000e-01
  %6387 = fmul fast float %6383, 2.000000e+00
  %6388 = fsub fast float 3.000000e+00, %6387
  %6389 = fadd fast float %6387, 1.000000e+00
  %6390 = fsub fast float 2.000000e+00, %6383
  %6391 = bitcast float %6388 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6390
  %6395 = fadd fast float %6394, -1.000000e+00
  %6396 = bitcast float %6389 to i32
  %6397 = sub nsw i32 2129859010, %6396
  %6398 = bitcast i32 %6397 to float
  %6399 = fmul fast float %6398, %6383
  %6400 = fadd fast float %6399, 1.000000e+00
  %6401 = fmul fast float %6384, 2.000000e+00
  %6402 = fsub fast float 3.000000e+00, %6401
  %6403 = fadd fast float %6401, 1.000000e+00
  %6404 = fsub fast float 2.000000e+00, %6384
  %6405 = bitcast float %6402 to i32
  %6406 = sub nsw i32 2129859010, %6405
  %6407 = bitcast i32 %6406 to float
  %6408 = fmul fast float %6407, %6404
  %6409 = fadd fast float %6408, -1.000000e+00
  %6410 = bitcast float %6403 to i32
  %6411 = sub nsw i32 2129859010, %6410
  %6412 = bitcast i32 %6411 to float
  %6413 = fmul fast float %6412, %6384
  %6414 = fadd fast float %6413, 1.000000e+00
  %6415 = fadd fast float %6395, %6385
  %6416 = fmul fast float %6415, %6367
  %6417 = fadd fast float %6409, %6386
  %6418 = fmul fast float %6417, %6368
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6416, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = fmul fast float %6420, %6388
  %6422 = fadd fast float %6400, %6385
  %6423 = fmul fast float %6422, %6367
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6423, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = fmul fast float %6425, %6389
  %6427 = fadd fast float %6414, %6386
  %6428 = fmul fast float %6427, %6368
  %6429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6416, float %6428, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6430 = extractvalue %dx.types.ResRet.f32 %6429, 0
  %6431 = fmul fast float %6430, %6388
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6423, float %6428, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = fmul fast float %6433, %6389
  %6435 = fadd fast float %6434, %6431
  %6436 = fmul fast float %6435, %6403
  %6437 = fadd fast float %6426, %6421
  %6438 = fmul fast float %6437, %6402
  %6439 = fadd fast float %6438, %6436
  %6440 = fmul fast float %6439, 6.250000e-02
  br label %6526

; <label>:6441                                    ; preds = %6362
  %6442 = fmul fast float %272, 0x401921FB60000000
  %6443 = call float @dx.op.unary.f32(i32 13, float %6442)  ; Sin(value)
  %6444 = call float @dx.op.unary.f32(i32 12, float %6442)  ; Cos(value)
  %6445 = fsub fast float -0.000000e+00, %6443
  br label %6446

; <label>:6446                                    ; preds = %6495, %6441
  %6447 = phi float [ 0.000000e+00, %6441 ], [ %6490, %6495 ]
  %6448 = phi float [ 0.000000e+00, %6441 ], [ %6492, %6495 ]
  %6449 = phi i32 [ 0, %6441 ], [ %6496, %6495 ]
  %6450 = mul i32 %6449, 2
  %6451 = add i32 0, %6450
  %6452 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6451
  %6453 = load float, float* %6452, align 4
  %6454 = mul i32 %6449, 2
  %6455 = add i32 1, %6454
  %6456 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6455
  %6457 = load float, float* %6456, align 4
  %6458 = fmul fast float %6453, %6444
  %6459 = call float @dx.op.tertiary.f32(i32 46, float %6457, float %6445, float %6458)  ; FMad(a,b,c)
  %6460 = fmul fast float %6453, %6443
  %6461 = call float @dx.op.tertiary.f32(i32 46, float %6457, float %6444, float %6460)  ; FMad(a,b,c)
  %6462 = fmul fast float %6459, %6370
  %6463 = fmul fast float %6461, %6370
  %6464 = fadd fast float %6462, %5686
  %6465 = fadd fast float %6463, %5687
  %6466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6464, float %6465, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.ResRet.f32 %6466, 3
  %6471 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6467, float* %6471, align 4
  %6472 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6468, float* %6472, align 4
  %6473 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6469, float* %6473, align 4
  %6474 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6470, float* %6474, align 4
  %6475 = fsub fast float %6467, %6372
  %6476 = fcmp fast olt float %6475, 0.000000e+00
  %6477 = select i1 %6476, float 0.000000e+00, float 1.000000e+00
  %6478 = fadd fast float %6477, %6447
  %6479 = fmul fast float %6477, %6475
  %6480 = fadd fast float %6479, %6448
  br label %6481

; <label>:6481                                    ; preds = %6481, %6446
  %6482 = phi i32 [ 1, %6446 ], [ %6493, %6481 ]
  %6483 = phi float [ %6480, %6446 ], [ %6492, %6481 ]
  %6484 = phi float [ %6478, %6446 ], [ %6490, %6481 ]
  %6485 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6482
  %6486 = load float, float* %6485, align 4, !tbaa !119, !noalias !109
  %6487 = fsub fast float %6486, %6372
  %6488 = fcmp fast olt float %6487, 0.000000e+00
  %6489 = select i1 %6488, float 0.000000e+00, float 1.000000e+00
  %6490 = fadd fast float %6489, %6484
  %6491 = fmul fast float %6489, %6487
  %6492 = fadd fast float %6491, %6483
  %6493 = add nuw nsw i32 %6482, 1
  %6494 = icmp eq i32 %6493, 4
  br i1 %6494, label %6495, label %6481, !llvm.loop !121

; <label>:6495                                    ; preds = %6481
  %6496 = add nuw nsw i32 %6449, 1
  %6497 = icmp eq i32 %6496, 8
  br i1 %6497, label %6498, label %6446, !llvm.loop !122

; <label>:6498                                    ; preds = %6495
  %6499 = fdiv fast float 1.000000e+00, %6490
  %6500 = fmul fast float %6499, %6492
  %6501 = fdiv fast float 1.000000e+00, %6372
  %6502 = fmul fast float %6500, %6501
  %6503 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6504 = call float @dx.op.binary.f32(i32 35, float %6503, float 0.000000e+00)  ; FMax(a,b)
  %6505 = fmul fast float %6490, 3.125000e-02
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = fmul fast float %6506, 2.000000e+00
  %6508 = fadd fast float %6507, -1.000000e+00
  %6509 = fcmp fast ogt float %6508, 0.000000e+00
  %6510 = fcmp fast olt float %6508, 0.000000e+00
  %6511 = zext i1 %6509 to i32
  %6512 = zext i1 %6510 to i32
  %6513 = sub nsw i32 %6511, %6512
  %6514 = sitofp i32 %6513 to float
  %6515 = fmul fast float %6514, %6508
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = fmul fast float %6516, %6516
  %6518 = fmul fast float %6517, %6516
  %6519 = fsub fast float %6516, %6518
  %6520 = fmul fast float %6519, %6504
  %6521 = fsub fast float 1.000000e+00, %6518
  %6522 = fsub fast float %6521, %6520
  %6523 = fmul fast float %6514, 5.000000e-01
  %6524 = fmul fast float %6523, %6522
  %6525 = fsub fast float 5.000000e-01, %6524
  br label %6526

; <label>:6526                                    ; preds = %6498, %6374, %6359
  %6527 = phi float [ 1.000000e+00, %6359 ], [ %6440, %6374 ], [ %6525, %6498 ]
  %6528 = fcmp fast ogt float %5789, 0.000000e+00
  br i1 %6528, label %6529, label %6693, !dx.controlflow.hints !124

; <label>:6529                                    ; preds = %6526
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = fadd fast float %6531, %5679
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = call float @dx.op.binary.f32(i32 35, float %6532, float 0.000000e+00)  ; FMax(a,b)
  %6539 = fadd fast float %6538, 0x3F10000000000000
  %6540 = fcmp fast oeq float %6537, 0.000000e+00
  br i1 %6540, label %6541, label %6608

; <label>:6541                                    ; preds = %6529
  %6542 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6544 = fmul fast float %6543, %5671
  %6545 = fmul fast float %6542, %5675
  %6546 = fadd fast float %6544, 5.000000e-01
  %6547 = call float @dx.op.unary.f32(i32 27, float %6546)  ; Round_ni(value)
  %6548 = fadd fast float %6545, 5.000000e-01
  %6549 = call float @dx.op.unary.f32(i32 27, float %6548)  ; Round_ni(value)
  %6550 = fsub fast float %6546, %6547
  %6551 = fsub fast float %6548, %6549
  %6552 = fadd fast float %6547, -5.000000e-01
  %6553 = fadd fast float %6549, -5.000000e-01
  %6554 = fmul fast float %6550, 2.000000e+00
  %6555 = fsub fast float 3.000000e+00, %6554
  %6556 = fadd fast float %6554, 1.000000e+00
  %6557 = fsub fast float 2.000000e+00, %6550
  %6558 = bitcast float %6555 to i32
  %6559 = sub nsw i32 2129859010, %6558
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %6557
  %6562 = fadd fast float %6561, -1.000000e+00
  %6563 = bitcast float %6556 to i32
  %6564 = sub nsw i32 2129859010, %6563
  %6565 = bitcast i32 %6564 to float
  %6566 = fmul fast float %6565, %6550
  %6567 = fadd fast float %6566, 1.000000e+00
  %6568 = fmul fast float %6551, 2.000000e+00
  %6569 = fsub fast float 3.000000e+00, %6568
  %6570 = fadd fast float %6568, 1.000000e+00
  %6571 = fsub fast float 2.000000e+00, %6551
  %6572 = bitcast float %6569 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6571
  %6576 = fadd fast float %6575, -1.000000e+00
  %6577 = bitcast float %6570 to i32
  %6578 = sub nsw i32 2129859010, %6577
  %6579 = bitcast i32 %6578 to float
  %6580 = fmul fast float %6579, %6551
  %6581 = fadd fast float %6580, 1.000000e+00
  %6582 = fadd fast float %6562, %6552
  %6583 = fmul fast float %6582, %6534
  %6584 = fadd fast float %6576, %6553
  %6585 = fmul fast float %6584, %6535
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6583, float %6585, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = fmul fast float %6587, %6555
  %6589 = fadd fast float %6567, %6552
  %6590 = fmul fast float %6589, %6534
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6590, float %6585, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = fmul fast float %6592, %6556
  %6594 = fadd fast float %6581, %6553
  %6595 = fmul fast float %6594, %6535
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6583, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = fmul fast float %6597, %6555
  %6599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6590, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = fmul fast float %6600, %6556
  %6602 = fadd fast float %6601, %6598
  %6603 = fmul fast float %6602, %6570
  %6604 = fadd fast float %6593, %6588
  %6605 = fmul fast float %6604, %6569
  %6606 = fadd fast float %6605, %6603
  %6607 = fmul fast float %6606, 6.250000e-02
  br label %6693

; <label>:6608                                    ; preds = %6529
  %6609 = fmul fast float %272, 0x401921FB60000000
  %6610 = call float @dx.op.unary.f32(i32 13, float %6609)  ; Sin(value)
  %6611 = call float @dx.op.unary.f32(i32 12, float %6609)  ; Cos(value)
  %6612 = fsub fast float -0.000000e+00, %6610
  br label %6613

; <label>:6613                                    ; preds = %6662, %6608
  %6614 = phi float [ 0.000000e+00, %6608 ], [ %6657, %6662 ]
  %6615 = phi float [ 0.000000e+00, %6608 ], [ %6659, %6662 ]
  %6616 = phi i32 [ 0, %6608 ], [ %6663, %6662 ]
  %6617 = mul i32 %6616, 2
  %6618 = add i32 0, %6617
  %6619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6618
  %6620 = load float, float* %6619, align 4
  %6621 = mul i32 %6616, 2
  %6622 = add i32 1, %6621
  %6623 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6622
  %6624 = load float, float* %6623, align 4
  %6625 = fmul fast float %6620, %6611
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6624, float %6612, float %6625)  ; FMad(a,b,c)
  %6627 = fmul fast float %6620, %6610
  %6628 = call float @dx.op.tertiary.f32(i32 46, float %6624, float %6611, float %6627)  ; FMad(a,b,c)
  %6629 = fmul fast float %6626, %6537
  %6630 = fmul fast float %6628, %6537
  %6631 = fadd fast float %6629, %5671
  %6632 = fadd fast float %6630, %5675
  %6633 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6631, float %6632, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6634 = extractvalue %dx.types.ResRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.ResRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.ResRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.ResRet.f32 %6633, 3
  %6638 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6634, float* %6638, align 4
  %6639 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6635, float* %6639, align 4
  %6640 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6636, float* %6640, align 4
  %6641 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6637, float* %6641, align 4
  %6642 = fsub fast float %6634, %6539
  %6643 = fcmp fast olt float %6642, 0.000000e+00
  %6644 = select i1 %6643, float 0.000000e+00, float 1.000000e+00
  %6645 = fadd fast float %6644, %6614
  %6646 = fmul fast float %6644, %6642
  %6647 = fadd fast float %6646, %6615
  br label %6648

; <label>:6648                                    ; preds = %6648, %6613
  %6649 = phi i32 [ 1, %6613 ], [ %6660, %6648 ]
  %6650 = phi float [ %6647, %6613 ], [ %6659, %6648 ]
  %6651 = phi float [ %6645, %6613 ], [ %6657, %6648 ]
  %6652 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6649
  %6653 = load float, float* %6652, align 4, !tbaa !119, !noalias !109
  %6654 = fsub fast float %6653, %6539
  %6655 = fcmp fast olt float %6654, 0.000000e+00
  %6656 = select i1 %6655, float 0.000000e+00, float 1.000000e+00
  %6657 = fadd fast float %6656, %6651
  %6658 = fmul fast float %6656, %6654
  %6659 = fadd fast float %6658, %6650
  %6660 = add nuw nsw i32 %6649, 1
  %6661 = icmp eq i32 %6660, 4
  br i1 %6661, label %6662, label %6648, !llvm.loop !121

; <label>:6662                                    ; preds = %6648
  %6663 = add nuw nsw i32 %6616, 1
  %6664 = icmp eq i32 %6663, 8
  br i1 %6664, label %6665, label %6613, !llvm.loop !122

; <label>:6665                                    ; preds = %6662
  %6666 = fdiv fast float 1.000000e+00, %6657
  %6667 = fmul fast float %6666, %6659
  %6668 = fdiv fast float 1.000000e+00, %6539
  %6669 = fmul fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6670, float 0.000000e+00)  ; FMax(a,b)
  %6672 = fmul fast float %6657, 3.125000e-02
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = fmul fast float %6673, 2.000000e+00
  %6675 = fadd fast float %6674, -1.000000e+00
  %6676 = fcmp fast ogt float %6675, 0.000000e+00
  %6677 = fcmp fast olt float %6675, 0.000000e+00
  %6678 = zext i1 %6676 to i32
  %6679 = zext i1 %6677 to i32
  %6680 = sub nsw i32 %6678, %6679
  %6681 = sitofp i32 %6680 to float
  %6682 = fmul fast float %6681, %6675
  %6683 = fsub fast float 1.000000e+00, %6682
  %6684 = fmul fast float %6683, %6683
  %6685 = fmul fast float %6684, %6683
  %6686 = fsub fast float %6683, %6685
  %6687 = fmul fast float %6686, %6671
  %6688 = fsub fast float 1.000000e+00, %6685
  %6689 = fsub fast float %6688, %6687
  %6690 = fmul fast float %6681, 5.000000e-01
  %6691 = fmul fast float %6690, %6689
  %6692 = fsub fast float 5.000000e-01, %6691
  br label %6693

; <label>:6693                                    ; preds = %6665, %6541, %6526
  %6694 = phi float [ 1.000000e+00, %6526 ], [ %6607, %6541 ], [ %6692, %6665 ]
  %6695 = fsub fast float %6360, %6195
  %6696 = fmul fast float %6695, %5733
  %6697 = fadd fast float %6696, %6195
  %6698 = fsub fast float %6527, %6697
  %6699 = fmul fast float %6698, %5763
  %6700 = fadd fast float %6699, %6697
  %6701 = fsub fast float %6694, %6700
  %6702 = fmul fast float %6701, %5789
  %6703 = fadd fast float %6702, %6700
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6706 = fcmp fast ogt float %6705, 0.000000e+00
  br i1 %6706, label %6707, label %6747, !dx.controlflow.hints !125

; <label>:6707                                    ; preds = %6693
  %6708 = fcmp fast ugt float %6705, 0.000000e+00
  br i1 %6708, label %6709, label %6744

; <label>:6709                                    ; preds = %6707
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6720 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6721 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = fadd fast float %6723, %5648
  %6727 = fadd fast float %6724, %5649
  %6728 = fadd fast float %6725, %5650
  %6729 = fmul fast float %6726, %6711
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6727, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6728, float %6730)  ; FMad(a,b,c)
  %6732 = fadd fast float %6731, %6714
  %6733 = fmul fast float %6726, %6716
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %6717, float %6727, float %6733)  ; FMad(a,b,c)
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6718, float %6728, float %6734)  ; FMad(a,b,c)
  %6736 = fadd fast float %6735, %6719
  %6737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6732, float %6736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = fmul fast float %6738, %6721
  %6740 = fadd fast float %6739, %6720
  %6741 = call float @dx.op.unary.f32(i32 7, float %6740)  ; Saturate(value)
  %6742 = fmul fast float %6741, %6705
  %6743 = fsub fast float 1.000000e+00, %6742
  br label %6744

; <label>:6744                                    ; preds = %6709, %6707
  %6745 = phi float [ %6743, %6709 ], [ 1.000000e+00, %6707 ]
  %6746 = fmul fast float %6745, %6703
  br label %6747

; <label>:6747                                    ; preds = %6744, %6693, %5628
  %6748 = phi float [ 1.000000e+00, %5628 ], [ %6746, %6744 ], [ %6703, %6693 ]
  %6749 = call float @dx.op.binary.f32(i32 36, float %6748, float %6748)  ; FMin(a,b)
  %6750 = call float @dx.op.binary.f32(i32 36, float %6748, float %6749)  ; FMin(a,b)
  %6751 = fcmp fast ogt float %6750, 0.000000e+00
  br i1 %6751, label %6752, label %6917, !dx.controlflow.hints !126

; <label>:6752                                    ; preds = %6747
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 0
  %6755 = extractvalue %dx.types.CBufRet.f32 %6753, 1
  %6756 = extractvalue %dx.types.CBufRet.f32 %6753, 2
  %6757 = extractvalue %dx.types.CBufRet.f32 %6753, 3
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.CBufRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6767 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6768 = fmul fast float %6754, %5648
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %6755, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %6756, float %6769)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6757
  %6772 = fmul fast float %6759, %5648
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %6760, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %6761, float %6773)  ; FMad(a,b,c)
  %6775 = fadd fast float %6774, %6762
  %6776 = fmul fast float %6764, %5648
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %5649, float %6765, float %6776)  ; FMad(a,b,c)
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %5650, float %6766, float %6777)  ; FMad(a,b,c)
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.CBufRet.f32 %6779, 3
  %6783 = fmul fast float %6782, %6771
  %6784 = fmul fast float %6782, %6775
  %6785 = fadd fast float %6783, %6780
  %6786 = fadd fast float %6784, %6781
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6790 = fsub fast float %6785, %6788
  %6791 = fsub fast float %6786, %6789
  %6792 = fcmp fast olt float %6790, 0.000000e+00
  %6793 = fcmp fast olt float %6791, 0.000000e+00
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = extractvalue %dx.types.CBufRet.f32 %6794, 2
  %6798 = extractvalue %dx.types.CBufRet.f32 %6794, 3
  %6799 = select i1 %6792, float %6795, float %6797
  %6800 = select i1 %6793, float %6796, float %6798
  %6801 = fmul fast float %6799, %6790
  %6802 = fmul fast float %6800, %6791
  %6803 = call float @dx.op.unary.f32(i32 6, float %6801)  ; FAbs(value)
  %6804 = call float @dx.op.unary.f32(i32 6, float %6802)  ; FAbs(value)
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = call float @dx.op.binary.f32(i32 35, float %6803, float %6804)  ; FMax(a,b)
  %6808 = fsub fast float %6806, %6807
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fcmp fast ogt float %6809, 0.000000e+00
  br i1 %6810, label %6811, label %6852, !dx.controlflow.hints !127

; <label>:6811                                    ; preds = %6752
  %6812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6785, float %6786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6813 = extractvalue %dx.types.ResRet.f32 %6812, 1
  %6814 = fcmp fast ogt float %6813, 0.000000e+00
  br i1 %6814, label %6815, label %6847

; <label>:6815                                    ; preds = %6811
  %6816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6785, float %6786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = extractvalue %dx.types.ResRet.f32 %6816, 3
  %6821 = fsub fast float 1.000000e+00, %6767
  %6822 = fsub fast float %6821, %6778
  %6823 = fmul fast float %6822, 0x400921FB60000000
  %6824 = fadd fast float %6823, 0x3FF921FB60000000
  %6825 = call float @dx.op.unary.f32(i32 13, float %6824)  ; Sin(value)
  %6826 = fadd fast float %6825, -1.000000e+00
  %6827 = fmul fast float %6826, 0x3FD45F3060000000
  %6828 = fmul fast float %6822, 0x401921FB60000000
  %6829 = fadd fast float %6828, 0x400921FB60000000
  %6830 = call float @dx.op.unary.f32(i32 13, float %6829)  ; Sin(value)
  %6831 = fadd fast float %6830, 0x3E7777A5C0000000
  %6832 = fmul fast float %6831, 0x3FC45F3060000000
  %6833 = fmul fast float %6822, 0x4022D97C80000000
  %6834 = fadd fast float %6833, 0x4012D97C80000000
  %6835 = call float @dx.op.unary.f32(i32 13, float %6834)  ; Sin(value)
  %6836 = fadd fast float %6835, 1.000000e+00
  %6837 = fmul fast float %6836, 0x3FBB2995E0000000
  %6838 = fmul fast float %6822, 0x402921FB60000000
  %6839 = fadd fast float %6838, 0x401921FB60000000
  %6840 = call float @dx.op.unary.f32(i32 13, float %6839)  ; Sin(value)
  %6841 = fadd fast float %6840, 0xBE8777A5C0000000
  %6842 = fmul fast float %6841, 0x3FB45F3060000000
  %6843 = call float @dx.op.dot4.f32(i32 56, float %6817, float %6818, float %6819, float %6820, float %6827, float %6832, float %6837, float %6842)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6844 = fmul fast float %6843, 0xBFF7154760000000
  %6845 = call float @dx.op.unary.f32(i32 21, float %6844)  ; Exp(value)
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  br label %6847

; <label>:6847                                    ; preds = %6815, %6811
  %6848 = phi float [ %6846, %6815 ], [ 1.000000e+00, %6811 ]
  %6849 = fadd fast float %6848, -1.000000e+00
  %6850 = fmul fast float %6849, %6809
  %6851 = fadd fast float %6850, 1.000000e+00
  br label %6852

; <label>:6852                                    ; preds = %6847, %6752
  %6853 = phi float [ %6851, %6847 ], [ 1.000000e+00, %6752 ]
  %6854 = fmul fast float %6853, %6748
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6859 = fadd fast float %6856, %167
  %6860 = fadd fast float %6857, %168
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = fsub fast float -0.000000e+00, %6859
  %6868 = fsub fast float -0.000000e+00, %6860
  %6869 = fsub fast float %4908, %6858
  %6870 = fadd fast float %6869, %6862
  %6871 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6867, float %6868, float %6870)  ; Dot3(ax,ay,az,bx,by,bz)
  %6872 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6864, float %6865, float %6866)  ; Dot3(ax,ay,az,bx,by,bz)
  %6873 = fdiv fast float 1.000000e+00, %6872
  %6874 = fmul fast float %6873, %6871
  %6875 = fmul fast float %6864, %6874
  %6876 = fmul fast float %6865, %6874
  %6877 = fadd fast float %6875, %6859
  %6878 = fadd fast float %6876, %6860
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6882 = fsub fast float %6877, %6880
  %6883 = fsub fast float %6878, %6881
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6884, 3
  %6887 = fmul fast float %6882, %6885
  %6888 = fmul fast float %6883, %6886
  %6889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.i32 %6889, 3
  %6891 = icmp eq i32 %6890, 0
  br i1 %6891, label %6897, label %6892

; <label>:6892                                    ; preds = %6852
  %6893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6887, float %6888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6894 = extractvalue %dx.types.ResRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.ResRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.ResRet.f32 %6893, 2
  br label %6902

; <label>:6897                                    ; preds = %6852
  %6898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6887, float %6888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.ResRet.f32 %6898, 1
  %6901 = extractvalue %dx.types.ResRet.f32 %6898, 2
  br label %6902

; <label>:6902                                    ; preds = %6897, %6892
  %6903 = phi float [ %6894, %6892 ], [ %6899, %6897 ]
  %6904 = phi float [ %6895, %6892 ], [ %6900, %6897 ]
  %6905 = phi float [ %6896, %6892 ], [ %6901, %6897 ]
  %6906 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6907 = fmul fast float %6906, %6903
  %6908 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6909 = fsub fast float %6874, %6908
  %6910 = fsub fast float %6909, %6907
  %6911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6910)  ; FMax(a,b)
  %6912 = fmul fast float %6911, %6904
  %6913 = call float @dx.op.binary.f32(i32 36, float %6905, float %6912)  ; FMin(a,b)
  %6914 = fmul fast float %6913, 0xBFF7154760000000
  %6915 = call float @dx.op.unary.f32(i32 21, float %6914)  ; Exp(value)
  %6916 = fmul fast float %6854, %6915
  br label %6917

; <label>:6917                                    ; preds = %6902, %6747
  %6918 = phi float [ %6916, %6902 ], [ %6748, %6747 ]
  %6919 = call float @dx.op.binary.f32(i32 36, float %6918, float %6918)  ; FMin(a,b)
  %6920 = call float @dx.op.binary.f32(i32 36, float %6918, float %6919)  ; FMin(a,b)
  %6921 = fcmp fast ogt float %6920, 0.000000e+00
  br i1 %6921, label %6922, label %7169, !dx.controlflow.hints !128

; <label>:6922                                    ; preds = %6917
  %6923 = fmul fast float %6918, %5640
  %6924 = fmul fast float %6918, %5641
  %6925 = fmul fast float %6918, %5642
  %6926 = fsub fast float %169, %4714
  %6927 = fcmp fast ogt float %6926, 0.000000e+00
  %6928 = fmul fast float %5629, 5.120000e+02
  %6929 = fmul fast float %5630, 5.120000e+02
  %6930 = fmul fast float %5631, 5.120000e+02
  %6931 = fadd fast float %6930, %169
  %6932 = fsub fast float %4714, %6931
  %6933 = fmul fast float %6932, 2.000000e+00
  %6934 = fadd fast float %6933, %6931
  %6935 = select i1 %6927, float %6934, float %6931
  %6936 = fsub fast float %6935, %169
  %6937 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %6936, float %6928, float %6929, float %6936)  ; Dot3(ax,ay,az,bx,by,bz)
  %6938 = call float @dx.op.unary.f32(i32 25, float %6937)  ; Rsqrt(value)
  %6939 = fmul fast float %6938, %6928
  %6940 = fmul fast float %6938, %6929
  %6941 = fmul fast float %6938, %6936
  %6942 = fsub fast float %4714, %169
  %6943 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6942)  ; Dot3(ax,ay,az,bx,by,bz)
  %6944 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6939, float %6940, float %6941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6945 = fdiv fast float 1.000000e+00, %6944
  %6946 = fmul fast float %6945, %6943
  %6947 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6926, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6948 = fcmp fast ogt float %6947, 0.000000e+00
  %6949 = fcmp fast olt float %6947, 0.000000e+00
  %6950 = zext i1 %6948 to i32
  %6951 = zext i1 %6949 to i32
  %6952 = sub nsw i32 %6950, %6951
  %6953 = sitofp i32 %6952 to float
  %6954 = fsub fast float %6935, %4714
  %6955 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %6954, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6956 = fcmp fast ogt float %6955, 0.000000e+00
  %6957 = fcmp fast olt float %6955, 0.000000e+00
  %6958 = zext i1 %6956 to i32
  %6959 = zext i1 %6957 to i32
  %6960 = sub nsw i32 %6958, %6959
  %6961 = sitofp i32 %6960 to float
  %6962 = fcmp fast une float %6953, %6961
  br i1 %6962, label %6963, label %6973

; <label>:6963                                    ; preds = %6922
  %6964 = fmul fast float %6946, %6941
  %6965 = fmul fast float %6946, %6940
  %6966 = fmul fast float %6946, %6939
  %6967 = fmul fast float %6966, %6966
  %6968 = fmul fast float %6965, %6965
  %6969 = fadd fast float %6967, %6968
  %6970 = fmul fast float %6964, %6964
  %6971 = fadd fast float %6969, %6970
  %6972 = call float @dx.op.unary.f32(i32 24, float %6971)  ; Sqrt(value)
  br label %6983

; <label>:6973                                    ; preds = %6922
  %6974 = icmp slt i32 %6952, 0
  br i1 %6974, label %6975, label %6983

; <label>:6975                                    ; preds = %6973
  %6976 = fsub fast float %169, %6935
  %6977 = fmul fast float %6928, %6928
  %6978 = fmul fast float %6929, %6929
  %6979 = fadd fast float %6977, %6978
  %6980 = fmul fast float %6976, %6976
  %6981 = fadd fast float %6979, %6980
  %6982 = call float @dx.op.unary.f32(i32 24, float %6981)  ; Sqrt(value)
  br label %6983

; <label>:6983                                    ; preds = %6975, %6973, %6963
  %6984 = phi float [ %6972, %6963 ], [ %6982, %6975 ], [ 0.000000e+00, %6973 ]
  %6985 = fsub fast float -0.000000e+00, %6984
  %6986 = select i1 %6927, float -0.000000e+00, float %6985
  %6987 = fmul fast float %4715, 0x3FF7154760000000
  %6988 = fmul fast float %6987, %6986
  %6989 = fmul fast float %4716, 0x3FF7154760000000
  %6990 = fmul fast float %6989, %6986
  %6991 = fmul fast float %4717, 0x3FF7154760000000
  %6992 = fmul fast float %6991, %6986
  %6993 = call float @dx.op.unary.f32(i32 21, float %6988)  ; Exp(value)
  %6994 = call float @dx.op.unary.f32(i32 21, float %6990)  ; Exp(value)
  %6995 = call float @dx.op.unary.f32(i32 21, float %6992)  ; Exp(value)
  %6996 = call float @dx.op.unary.f32(i32 7, float %6993)  ; Saturate(value)
  %6997 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6998 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6999 = fmul fast float %6923, %6996
  %7000 = fmul fast float %6924, %6997
  %7001 = fmul fast float %6925, %6998
  %7002 = fsub fast float %5629, %187
  %7003 = fsub fast float %5630, %188
  %7004 = fsub fast float %5631, %189
  %7005 = call float @dx.op.dot3.f32(i32 55, float %7002, float %7003, float %7004, float %7002, float %7003, float %7004)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = call float @dx.op.unary.f32(i32 25, float %7005)  ; Rsqrt(value)
  %7007 = fmul fast float %7006, %7002
  %7008 = fmul fast float %7006, %7003
  %7009 = fmul fast float %7006, %7004
  %7010 = call float @dx.op.dot3.f32(i32 55, float %5629, float %5630, float %5631, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %7011 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %7007, float %7008, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7012 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7013 = fmul fast float %7012, %7012
  %7014 = fmul fast float %7013, %4936
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = fmul fast float %7015, %7012
  %7017 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %7007, float %7008, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fmul fast float %7017, %7017
  %7019 = call float @dx.op.unary.f32(i32 6, float %7010)  ; FAbs(value)
  %7020 = fsub fast float 1.000000e+00, %4929
  %7021 = fmul fast float %4911, %4911
  %7022 = fmul fast float %7021, %7020
  %7023 = fadd fast float %7022, %4929
  %7024 = bitcast float %7023 to i32
  %7025 = ashr i32 %7024, 1
  %7026 = add nsw i32 %7025, 532487669
  %7027 = bitcast i32 %7026 to float
  %7028 = fadd fast float %7027, %4911
  %7029 = fmul fast float %4929, %7018
  %7030 = fsub fast float 1.000000e+00, %7018
  %7031 = fadd fast float %7030, %7029
  %7032 = fmul fast float %7019, %7019
  %7033 = fmul fast float %7032, %7020
  %7034 = fadd fast float %7033, %4929
  %7035 = bitcast float %7034 to i32
  %7036 = ashr i32 %7035, 1
  %7037 = add nsw i32 %7036, 532487669
  %7038 = bitcast i32 %7037 to float
  %7039 = fadd fast float %7038, %7019
  %7040 = fmul fast float %7031, %7031
  %7041 = fmul fast float %7040, %7028
  %7042 = fmul fast float %7041, %7039
  %7043 = fdiv fast float 0x3FF0A00000000000, %7042
  %7044 = fmul fast float %7043, %4929
  %7045 = call float @dx.op.unary.f32(i32 6, float %7011)  ; FAbs(value)
  %7046 = fsub fast float 1.000000e+00, %7045
  %7047 = bitcast float %7046 to i32
  %7048 = sitofp i32 %7047 to float
  %7049 = fmul fast float %7048, 5.000000e+00
  %7050 = fadd fast float %7049, 0xC1EFBF8940000000
  %7051 = fptosi float %7050 to i32
  %7052 = bitcast i32 %7051 to float
  %7053 = fsub fast float 1.000000e+00, %4903
  %7054 = fsub fast float 1.000000e+00, %4904
  %7055 = fsub fast float 1.000000e+00, %4909
  %7056 = fmul fast float %7052, %7053
  %7057 = fmul fast float %7052, %7054
  %7058 = fmul fast float %7052, %7055
  %7059 = fadd fast float %7056, %4903
  %7060 = fadd fast float %7057, %4904
  %7061 = fadd fast float %7058, %4909
  br i1 %5048, label %7062, label %7085

; <label>:7062                                    ; preds = %6983
  %7063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4291, float %7045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.ResRet.f32 %7063, 1
  %7066 = extractvalue %dx.types.ResRet.f32 %7063, 2
  %7067 = fadd fast float %7064, -5.000000e-01
  %7068 = fadd fast float %7065, -5.000000e-01
  %7069 = fadd fast float %7066, -5.000000e-01
  %7070 = fmul fast float %4903, 4.000000e+00
  %7071 = fmul fast float %7070, %7053
  %7072 = fmul fast float %7071, %7067
  %7073 = fmul fast float %4904, 4.000000e+00
  %7074 = fmul fast float %7073, %7054
  %7075 = fmul fast float %7074, %7068
  %7076 = fmul fast float %4909, 4.000000e+00
  %7077 = fmul fast float %7076, %7055
  %7078 = fmul fast float %7077, %7069
  %7079 = fadd fast float %7072, %7059
  %7080 = fadd fast float %7075, %7060
  %7081 = fadd fast float %7078, %7061
  %7082 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7083 = call float @dx.op.unary.f32(i32 7, float %7080)  ; Saturate(value)
  %7084 = call float @dx.op.unary.f32(i32 7, float %7081)  ; Saturate(value)
  br label %7085

; <label>:7085                                    ; preds = %7062, %6983
  %7086 = phi float [ %7082, %7062 ], [ %7059, %6983 ]
  %7087 = phi float [ %7083, %7062 ], [ %7060, %6983 ]
  %7088 = phi float [ %7084, %7062 ], [ %7061, %6983 ]
  %7089 = fmul fast float %7010, 9.843750e-01
  %7090 = fadd fast float %7089, 7.812500e-03
  %7091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7090, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 2
  %7093 = extractvalue %dx.types.ResRet.f32 %7091, 3
  %7094 = fmul fast float %7092, %4903
  %7095 = fmul fast float %7092, %4904
  %7096 = fmul fast float %7092, %4909
  %7097 = fadd fast float %7094, %7093
  %7098 = fadd fast float %7095, %7093
  %7099 = fadd fast float %7096, %7093
  br i1 %5048, label %7100, label %7123

; <label>:7100                                    ; preds = %7085
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4291, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  %7105 = fadd fast float %7102, -5.000000e-01
  %7106 = fadd fast float %7103, -5.000000e-01
  %7107 = fadd fast float %7104, -5.000000e-01
  %7108 = fmul fast float %4903, 4.000000e+00
  %7109 = fmul fast float %7108, %7053
  %7110 = fmul fast float %7109, %7105
  %7111 = fmul fast float %4904, 4.000000e+00
  %7112 = fmul fast float %7111, %7054
  %7113 = fmul fast float %7112, %7106
  %7114 = fmul fast float %4909, 4.000000e+00
  %7115 = fmul fast float %7114, %7055
  %7116 = fmul fast float %7115, %7107
  %7117 = fadd fast float %7110, %7097
  %7118 = fadd fast float %7113, %7098
  %7119 = fadd fast float %7116, %7099
  %7120 = call float @dx.op.unary.f32(i32 7, float %7117)  ; Saturate(value)
  %7121 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  %7122 = call float @dx.op.unary.f32(i32 7, float %7119)  ; Saturate(value)
  br label %7123

; <label>:7123                                    ; preds = %7100, %7085
  %7124 = phi float [ %7120, %7100 ], [ %7097, %7085 ]
  %7125 = phi float [ %7121, %7100 ], [ %7098, %7085 ]
  %7126 = phi float [ %7122, %7100 ], [ %7099, %7085 ]
  %7127 = call float @dx.op.binary.f32(i32 35, float %7125, float %7126)  ; FMax(a,b)
  %7128 = call float @dx.op.binary.f32(i32 35, float %7124, float %7127)  ; FMax(a,b)
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = fmul fast float %7086, %7044
  %7131 = fmul fast float %7087, %7044
  %7132 = fmul fast float %7088, %7044
  %7133 = fsub fast float 1.000000e+00, %7011
  %7134 = bitcast float %7133 to i32
  %7135 = sitofp i32 %7134 to float
  %7136 = fmul fast float %7135, 5.000000e+00
  %7137 = fadd fast float %7136, 0xC1EFBF8940000000
  %7138 = fptosi float %7137 to i32
  %7139 = bitcast i32 %7138 to float
  %7140 = fmul fast float %7139, %4292
  %7141 = fmul fast float %7129, %7140
  %7142 = fmul fast float %7141, %5590
  %7143 = fmul fast float %7141, %5591
  %7144 = fmul fast float %7141, %5592
  %7145 = fadd fast float %7142, %7130
  %7146 = fadd fast float %7143, %7131
  %7147 = fadd fast float %7144, %7132
  %7148 = fmul fast float %7016, %6999
  %7149 = fmul fast float %7148, %7129
  %7150 = fmul fast float %7016, %7000
  %7151 = fmul fast float %7150, %7129
  %7152 = fmul fast float %7016, %7001
  %7153 = fmul fast float %7152, %7129
  %7154 = fmul fast float %7148, %7145
  %7155 = fmul fast float %7150, %7146
  %7156 = fmul fast float %7152, %7147
  %7157 = fadd fast float %7149, %5574
  %7158 = fmul fast float %7157, %4317
  %7159 = fadd fast float %7151, %5575
  %7160 = fmul fast float %7159, %4317
  %7161 = fadd fast float %7153, %5576
  %7162 = fmul fast float %7161, %4317
  %7163 = fadd fast float %7154, %5617
  %7164 = fmul fast float %7163, %4317
  %7165 = fadd fast float %7155, %5620
  %7166 = fmul fast float %7165, %4317
  %7167 = fadd fast float %7156, %5623
  %7168 = fmul fast float %7167, %4317
  br label %7169

; <label>:7169                                    ; preds = %7123, %6917, %5570
  %7170 = phi float [ %5618, %5570 ], [ %5618, %6917 ], [ %7164, %7123 ]
  %7171 = phi float [ %5621, %5570 ], [ %5621, %6917 ], [ %7166, %7123 ]
  %7172 = phi float [ %5624, %5570 ], [ %5624, %6917 ], [ %7168, %7123 ]
  %7173 = phi float [ %5613, %5570 ], [ %5613, %6917 ], [ %7158, %7123 ]
  %7174 = phi float [ %5614, %5570 ], [ %5614, %6917 ], [ %7160, %7123 ]
  %7175 = phi float [ %5615, %5570 ], [ %5615, %6917 ], [ %7162, %7123 ]
  %7176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.i32 %7176, 0
  %7178 = icmp eq i32 %7177, 0
  br i1 %7178, label %7841, label %7179

; <label>:7179                                    ; preds = %7169
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7182 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7183 = fmul fast float %7181, %104
  %7184 = fmul fast float %7182, %105
  %7185 = fptoui float %7183 to i32
  %7186 = fptoui float %7184 to i32
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %7190 = extractvalue %dx.types.CBufRet.f32 %7187, 3
  %7191 = fadd fast float %92, -4.000000e+00
  %7192 = call float @dx.op.binary.f32(i32 35, float %7191, float 0.000000e+00)  ; FMax(a,b)
  %7193 = fadd fast float %7192, %7188
  %7194 = fmul fast float %7193, %7189
  %7195 = call float @dx.op.unary.f32(i32 23, float %7194)  ; Log(value)
  %7196 = fmul fast float %7195, %7190
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %7199 = fmul fast float %7196, %7198
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7202 = extractvalue %dx.types.CBufRet.i32 %7201, 1
  %7203 = add i32 %7202, -1
  %7204 = uitofp i32 %7202 to float
  %7205 = fmul fast float %7204, %7200
  %7206 = fptoui float %7205 to i32
  %7207 = call i32 @dx.op.binary.i32(i32 40, i32 %7206, i32 %7203)  ; UMin(a,b)
  %7208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.i32 %7208, 2
  %7210 = extractvalue %dx.types.CBufRet.i32 %7208, 3
  %7211 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7186, i32 %7209, i32 %7185)  ; UMad(a,b,c)
  %7212 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7207, i32 %7210, i32 %7211)  ; UMad(a,b,c)
  %7213 = add nsw i32 %7177, -1
  %7214 = call i32 @dx.op.binary.i32(i32 37, i32 %7213, i32 0)  ; IMax(a,b)
  %7215 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7216 = fptoui float %7215 to i32
  %7217 = lshr i32 %7216, 5
  %7218 = call i32 @dx.op.binary.i32(i32 40, i32 %7217, i32 8191)  ; UMin(a,b)
  %7219 = shl i32 %7218, 2
  %7220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7219, i32 undef)  ; BufferLoad(srv,index,wot)
  %7221 = extractvalue %dx.types.ResRet.i32 %7220, 0
  %7222 = lshr i32 %7221, 16
  %7223 = and i32 %7221, 65535
  %7224 = lshr i32 %7221, 21
  %7225 = lshr i32 %7223, 5
  %7226 = call i32 @dx.op.binary.i32(i32 40, i32 %7225, i32 %7214)  ; UMin(a,b)
  %7227 = icmp ugt i32 %7224, %7226
  br i1 %7227, label %7841, label %7228

; <label>:7228                                    ; preds = %7179
  br label %7229

; <label>:7229                                    ; preds = %7831, %7228
  %7230 = phi i32 [ %7838, %7831 ], [ %7224, %7228 ]
  %7231 = phi float [ %7832, %7831 ], [ %7170, %7228 ]
  %7232 = phi float [ %7833, %7831 ], [ %7171, %7228 ]
  %7233 = phi float [ %7834, %7831 ], [ %7172, %7228 ]
  %7234 = phi float [ %7835, %7831 ], [ %7173, %7228 ]
  %7235 = phi float [ %7836, %7831 ], [ %7174, %7228 ]
  %7236 = phi float [ %7837, %7831 ], [ %7175, %7228 ]
  %7237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.i32 %7237, 0
  %7239 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7212, i32 %7238, i32 %7230)  ; UMad(a,b,c)
  %7240 = shl i32 %7239, 2
  %7241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7240, i32 undef)  ; BufferLoad(srv,index,wot)
  %7242 = extractvalue %dx.types.ResRet.i32 %7241, 0
  %7243 = shl i32 %7230, 5
  %7244 = sub nsw i32 %7222, %7243
  %7245 = call i32 @dx.op.binary.i32(i32 37, i32 %7244, i32 0)  ; IMax(a,b)
  %7246 = call i32 @dx.op.binary.i32(i32 38, i32 %7245, i32 31)  ; IMin(a,b)
  %7247 = sub nsw i32 1, %7222
  %7248 = add nsw i32 %7247, %7223
  %7249 = call i32 @dx.op.binary.i32(i32 37, i32 %7248, i32 0)  ; IMax(a,b)
  %7250 = call i32 @dx.op.binary.i32(i32 38, i32 %7249, i32 32)  ; IMin(a,b)
  %7251 = and i32 %7250, 31
  %7252 = shl i32 -1, %7251
  %7253 = xor i32 %7252, -1
  %7254 = and i32 %7246, 31
  %7255 = shl i32 %7253, %7254
  %7256 = icmp eq i32 %7250, 32
  %7257 = select i1 %7256, i32 -1, i32 %7255
  %7258 = and i32 %7257, %7242
  %7259 = icmp eq i32 %7258, 0
  br i1 %7259, label %7831, label %7260

; <label>:7260                                    ; preds = %7229
  br label %7261

; <label>:7261                                    ; preds = %7395, %7260
  %7262 = phi i32 [ %7273, %7395 ], [ %7258, %7260 ]
  %7263 = phi float [ %7396, %7395 ], [ %7231, %7260 ]
  %7264 = phi float [ %7397, %7395 ], [ %7232, %7260 ]
  %7265 = phi float [ %7398, %7395 ], [ %7233, %7260 ]
  %7266 = phi float [ %7399, %7395 ], [ %7234, %7260 ]
  %7267 = phi float [ %7400, %7395 ], [ %7235, %7260 ]
  %7268 = phi float [ %7401, %7395 ], [ %7236, %7260 ]
  %7269 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7262)  ; FirstbitLo(value)
  %7270 = add i32 %7269, %7243
  %7271 = and i32 %7269, 31
  %7272 = shl i32 1, %7271
  %7273 = xor i32 %7272, %7262
  %7274 = mul i32 %7270, 112
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7279 = or i32 %7274, 12
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = add i32 %7274, 16
  %7283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7282, i32 undef)  ; BufferLoad(srv,index,wot)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.ResRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.ResRet.f32 %7283, 2
  %7287 = add i32 %7274, 28
  %7288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7287, i32 undef)  ; BufferLoad(srv,index,wot)
  %7289 = extractvalue %dx.types.ResRet.i32 %7288, 0
  %7290 = add i32 %7274, 44
  %7291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7290, i32 undef)  ; BufferLoad(srv,index,wot)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = add i32 %7274, 48
  %7294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7293, i32 undef)  ; BufferLoad(srv,index,wot)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.ResRet.f32 %7294, 2
  %7298 = extractvalue %dx.types.ResRet.f32 %7294, 3
  %7299 = add i32 %7274, 64
  %7300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7299, i32 undef)  ; BufferLoad(srv,index,wot)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.ResRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.ResRet.f32 %7300, 2
  %7304 = extractvalue %dx.types.ResRet.f32 %7300, 3
  %7305 = add i32 %7274, 80
  %7306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7305, i32 undef)  ; BufferLoad(srv,index,wot)
  %7307 = extractvalue %dx.types.ResRet.f32 %7306, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7306, 2
  %7309 = add i32 %7274, 92
  %7310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7309, i32 undef)  ; BufferLoad(srv,index,wot)
  %7311 = extractvalue %dx.types.ResRet.i32 %7310, 0
  %7312 = call float @dx.op.dot3.f32(i32 55, float %7276, float %7277, float %7278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7313 = select i1 %261, float %7307, float %7276
  %7314 = select i1 %261, float %7312, float %7277
  %7315 = select i1 %261, float %7308, float %7278
  %7316 = and i32 %7311, 65535
  %7317 = uitofp i32 %7316 to float
  %7318 = lshr i32 %7311, 16
  %7319 = uitofp i32 %7318 to float
  %7320 = and i32 %7289, 65535
  %7321 = and i32 %7289, 50331648
  %7322 = icmp eq i32 %7321, 33554432
  %7323 = fsub fast float %7295, %167
  %7324 = fsub fast float %7296, %168
  %7325 = fsub fast float %7297, %169
  %7326 = call float @dx.op.dot3.f32(i32 55, float %7323, float %7324, float %7325, float %7323, float %7324, float %7325)  ; Dot3(ax,ay,az,bx,by,bz)
  %7327 = call float @dx.op.unary.f32(i32 24, float %7326)  ; Sqrt(value)
  %7328 = fdiv fast float 1.000000e+00, %7327
  %7329 = fmul fast float %7328, %7323
  %7330 = fmul fast float %7328, %7324
  %7331 = fmul fast float %7328, %7325
  %7332 = fadd fast float %7327, %7281
  %7333 = fdiv fast float 1.000000e+00, %7332
  %7334 = fmul float %7292, %7333
  %7335 = fmul float %7334, %7334
  %7336 = call float @dx.op.unary.f32(i32 7, float %7335)  ; Saturate(value)
  br i1 %7322, label %7337, label %7358

; <label>:7337                                    ; preds = %7261
  %7338 = fmul fast float %7303, %7284
  %7339 = fmul fast float %7303, %7285
  %7340 = fmul fast float %7303, %7286
  %7341 = fadd fast float %7323, %7338
  %7342 = fadd fast float %7324, %7339
  %7343 = fadd fast float %7325, %7340
  %7344 = call float @dx.op.dot3.f32(i32 55, float %7341, float %7342, float %7343, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7345 = call float @dx.op.unary.f32(i32 25, float %7344)  ; Rsqrt(value)
  %7346 = fmul fast float %7345, %7341
  %7347 = fmul fast float %7345, %7342
  %7348 = fmul fast float %7345, %7343
  %7349 = fsub fast float %167, %7295
  %7350 = fsub fast float %168, %7296
  %7351 = fsub fast float %169, %7297
  %7352 = fsub fast float -0.000000e+00, %7349
  %7353 = fsub fast float -0.000000e+00, %7350
  %7354 = fsub fast float -0.000000e+00, %7351
  %7355 = call float @dx.op.dot3.f32(i32 55, float %7352, float %7353, float %7354, float %7284, float %7285, float %7286)  ; Dot3(ax,ay,az,bx,by,bz)
  %7356 = fcmp fast ogt float %7355, 0.000000e+00
  %7357 = uitofp i1 %7356 to float
  br label %7358

; <label>:7358                                    ; preds = %7337, %7261
  %7359 = phi float [ %7357, %7337 ], [ 1.000000e+00, %7261 ]
  %7360 = phi float [ %7346, %7337 ], [ %7329, %7261 ]
  %7361 = phi float [ %7347, %7337 ], [ %7330, %7261 ]
  %7362 = phi float [ %7348, %7337 ], [ %7331, %7261 ]
  %7363 = call float @dx.op.dot3.f32(i32 55, float %7284, float %7285, float %7286, float %7360, float %7361, float %7362)  ; Dot3(ax,ay,az,bx,by,bz)
  %7364 = fmul fast float %7363, %7363
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fsub fast float 1.000000e+00, %7365
  %7367 = fmul fast float %7366, 5.000000e-01
  %7368 = fcmp fast ogt float %7363, 0.000000e+00
  %7369 = fsub fast float 1.000000e+00, %7367
  %7370 = select i1 %7368, float %7367, float %7369
  %7371 = fmul fast float %7370, %7319
  %7372 = fadd fast float %7371, %7317
  %7373 = fmul fast float %7372, 0x3EF0001000000000
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7373, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = fmul fast float %7363, %7301
  %7377 = fadd fast float %7376, %7302
  %7378 = call float @dx.op.unary.f32(i32 7, float %7377)  ; Saturate(value)
  %7379 = select i1 %7322, float 1.000000e+00, float %7378
  %7380 = select i1 %7322, float %7378, float 1.000000e+00
  %7381 = fmul fast float %7327, %7298
  %7382 = fsub fast float 1.000000e+00, %7381
  %7383 = fmul fast float %7382, %7304
  %7384 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7385 = fmul fast float %7384, %7380
  %7386 = fmul fast float %7385, 2.000000e+00
  %7387 = fsub fast float 3.000000e+00, %7386
  %7388 = fmul fast float %7375, %7359
  %7389 = fmul fast float %7385, %7385
  %7390 = fmul fast float %7389, %7388
  %7391 = fmul fast float %7390, %7387
  %7392 = call float @dx.op.binary.f32(i32 36, float %7391, float %7391)  ; FMin(a,b)
  %7393 = call float @dx.op.binary.f32(i32 36, float %7391, float %7392)  ; FMin(a,b)
  %7394 = fcmp fast ogt float %7393, 0.000000e+00
  br i1 %7394, label %7403, label %7395, !dx.controlflow.hints !129

; <label>:7395                                    ; preds = %7787, %7549, %7358
  %7396 = phi float [ %7263, %7549 ], [ %7263, %7358 ], [ %7827, %7787 ]
  %7397 = phi float [ %7264, %7549 ], [ %7264, %7358 ], [ %7828, %7787 ]
  %7398 = phi float [ %7265, %7549 ], [ %7265, %7358 ], [ %7829, %7787 ]
  %7399 = phi float [ %7266, %7549 ], [ %7266, %7358 ], [ %7821, %7787 ]
  %7400 = phi float [ %7267, %7549 ], [ %7267, %7358 ], [ %7822, %7787 ]
  %7401 = phi float [ %7268, %7549 ], [ %7268, %7358 ], [ %7823, %7787 ]
  %7402 = icmp eq i32 %7262, %7272
  br i1 %7402, label %7830, label %7261

; <label>:7403                                    ; preds = %7358
  %7404 = icmp eq i32 %7320, 255
  br i1 %7404, label %7549, label %7405, !dx.controlflow.hints !130

; <label>:7405                                    ; preds = %7403
  %7406 = mul nuw nsw i32 %7320, 176
  %7407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7406, i32 undef)  ; BufferLoad(srv,index,wot)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.ResRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.ResRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.ResRet.f32 %7407, 3
  %7412 = add nuw nsw i32 %7406, 16
  %7413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7412, i32 undef)  ; BufferLoad(srv,index,wot)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.ResRet.f32 %7413, 1
  %7416 = add nuw nsw i32 %7406, 32
  %7417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7416, i32 undef)  ; BufferLoad(srv,index,wot)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  %7421 = add nuw nsw i32 %7406, 48
  %7422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7421, i32 undef)  ; BufferLoad(srv,index,wot)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = extractvalue %dx.types.ResRet.f32 %7422, 3
  %7427 = add nuw nsw i32 %7406, 64
  %7428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7427, i32 undef)  ; BufferLoad(srv,index,wot)
  %7429 = extractvalue %dx.types.ResRet.f32 %7428, 0
  %7430 = extractvalue %dx.types.ResRet.f32 %7428, 1
  %7431 = extractvalue %dx.types.ResRet.f32 %7428, 2
  %7432 = extractvalue %dx.types.ResRet.f32 %7428, 3
  %7433 = add nuw nsw i32 %7406, 80
  %7434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7433, i32 undef)  ; BufferLoad(srv,index,wot)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.ResRet.f32 %7434, 1
  %7437 = extractvalue %dx.types.ResRet.f32 %7434, 2
  %7438 = extractvalue %dx.types.ResRet.f32 %7434, 3
  %7439 = add nuw nsw i32 %7406, 96
  %7440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7439, i32 undef)  ; BufferLoad(srv,index,wot)
  %7441 = extractvalue %dx.types.ResRet.f32 %7440, 0
  %7442 = extractvalue %dx.types.ResRet.f32 %7440, 1
  %7443 = extractvalue %dx.types.ResRet.f32 %7440, 2
  %7444 = extractvalue %dx.types.ResRet.f32 %7440, 3
  %7445 = bitcast float %7415 to i32
  %7446 = fmul fast float %7420, %111
  %7447 = fmul fast float %7420, %112
  %7448 = fmul fast float %7420, %113
  %7449 = fadd fast float %7446, %167
  %7450 = fadd fast float %7447, %168
  %7451 = fadd fast float %7448, %169
  %7452 = fmul fast float %7449, %7423
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7429, float %7452)  ; FMad(a,b,c)
  %7454 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7435, float %7453)  ; FMad(a,b,c)
  %7455 = fadd fast float %7454, %7441
  %7456 = fmul fast float %7449, %7424
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7430, float %7456)  ; FMad(a,b,c)
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7436, float %7457)  ; FMad(a,b,c)
  %7459 = fadd fast float %7458, %7442
  %7460 = fmul fast float %7449, %7425
  %7461 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7431, float %7460)  ; FMad(a,b,c)
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7437, float %7461)  ; FMad(a,b,c)
  %7463 = fadd fast float %7462, %7443
  %7464 = fmul fast float %7449, %7426
  %7465 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7432, float %7464)  ; FMad(a,b,c)
  %7466 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7438, float %7465)  ; FMad(a,b,c)
  %7467 = fadd fast float %7466, %7444
  %7468 = fdiv fast float %7455, %7467
  %7469 = fdiv fast float %7459, %7467
  %7470 = fdiv fast float %7463, %7467
  %7471 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7470)  ; FMax(a,b)
  %7472 = fmul fast float %272, 0x401921FB60000000
  %7473 = call float @dx.op.unary.f32(i32 13, float %7472)  ; Sin(value)
  %7474 = call float @dx.op.unary.f32(i32 12, float %7472)  ; Cos(value)
  %7475 = fmul fast float %7474, %7419
  %7476 = call float @dx.op.tertiary.f32(i32 46, float %7473, float %7419, float 0.000000e+00)  ; FMad(a,b,c)
  %7477 = fmul fast float %7419, %7473
  %7478 = fsub fast float -0.000000e+00, %7477
  %7479 = call float @dx.op.tertiary.f32(i32 46, float %7474, float %7419, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7480

; <label>:7480                                    ; preds = %7480, %7405
  %7481 = phi float [ 0.000000e+00, %7405 ], [ %7513, %7480 ]
  %7482 = phi float [ 0.000000e+00, %7405 ], [ %7515, %7480 ]
  %7483 = phi i32 [ 0, %7405 ], [ %7516, %7480 ]
  %7484 = mul i32 %7483, 2
  %7485 = add i32 0, %7484
  %7486 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7485
  %7487 = load float, float* %7486, align 4
  %7488 = mul i32 %7483, 2
  %7489 = add i32 1, %7488
  %7490 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7489
  %7491 = load float, float* %7490, align 4
  %7492 = fmul fast float %7475, %7487
  %7493 = call float @dx.op.tertiary.f32(i32 46, float %7491, float %7478, float %7492)  ; FMad(a,b,c)
  %7494 = fmul fast float %7487, %7476
  %7495 = call float @dx.op.tertiary.f32(i32 46, float %7491, float %7479, float %7494)  ; FMad(a,b,c)
  %7496 = fadd fast float %7493, %7468
  %7497 = fadd fast float %7495, %7469
  %7498 = fmul fast float %7496, %7414
  %7499 = fmul fast float %7497, %7414
  %7500 = call float @dx.op.binary.f32(i32 35, float %7498, float %7410)  ; FMax(a,b)
  %7501 = call float @dx.op.binary.f32(i32 35, float %7499, float %7410)  ; FMax(a,b)
  %7502 = call float @dx.op.binary.f32(i32 36, float %7500, float %7411)  ; FMin(a,b)
  %7503 = call float @dx.op.binary.f32(i32 36, float %7501, float %7411)  ; FMin(a,b)
  %7504 = fadd fast float %7502, %7408
  %7505 = fadd fast float %7503, %7409
  %7506 = uitofp i32 %7445 to float
  %7507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7504, float %7505, float %7506, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = fsub fast float %7508, %7471
  %7510 = fsub fast float %7509, %7418
  %7511 = fcmp fast ogt float %7510, 0.000000e+00
  %7512 = select i1 %7511, float 1.000000e+00, float 0.000000e+00
  %7513 = fadd fast float %7512, %7481
  %7514 = select i1 %7511, float %7510, float 0.000000e+00
  %7515 = fadd fast float %7514, %7482
  %7516 = add nuw nsw i32 %7483, 1
  %7517 = icmp eq i32 %7516, 8
  br i1 %7517, label %7518, label %7480

; <label>:7518                                    ; preds = %7480
  %7519 = fdiv fast float 1.000000e+00, %7513
  %7520 = fmul fast float %7519, %7515
  %7521 = fdiv fast float 1.000000e+00, %7471
  %7522 = fmul fast float %7520, %7521
  %7523 = call float @dx.op.unary.f32(i32 7, float %7522)  ; Saturate(value)
  %7524 = call float @dx.op.binary.f32(i32 35, float %7523, float 0.000000e+00)  ; FMax(a,b)
  %7525 = fmul fast float %7513, 1.250000e-01
  %7526 = call float @dx.op.unary.f32(i32 7, float %7525)  ; Saturate(value)
  %7527 = fmul fast float %7526, 2.000000e+00
  %7528 = fadd fast float %7527, -1.000000e+00
  %7529 = fcmp fast ogt float %7528, 0.000000e+00
  %7530 = fcmp fast olt float %7528, 0.000000e+00
  %7531 = zext i1 %7529 to i32
  %7532 = zext i1 %7530 to i32
  %7533 = sub nsw i32 %7531, %7532
  %7534 = sitofp i32 %7533 to float
  %7535 = fmul fast float %7534, %7528
  %7536 = fsub fast float 1.000000e+00, %7535
  %7537 = fmul fast float %7536, %7536
  %7538 = fmul fast float %7537, %7536
  %7539 = fsub fast float %7536, %7538
  %7540 = fmul fast float %7539, %7524
  %7541 = fsub fast float 1.000000e+00, %7538
  %7542 = fsub fast float %7541, %7540
  %7543 = fmul fast float %7534, 5.000000e-01
  %7544 = fmul fast float %7543, %7542
  %7545 = fsub fast float -5.000000e-01, %7544
  %7546 = fmul fast float %7545, %7379
  %7547 = fadd fast float %7546, 1.000000e+00
  %7548 = fmul fast float %7547, %7391
  br label %7549

; <label>:7549                                    ; preds = %7518, %7403
  %7550 = phi float [ %7548, %7518 ], [ %7391, %7403 ]
  %7551 = call float @dx.op.binary.f32(i32 36, float %7550, float %7550)  ; FMin(a,b)
  %7552 = call float @dx.op.binary.f32(i32 36, float %7550, float %7551)  ; FMin(a,b)
  %7553 = fcmp fast ogt float %7552, 0.000000e+00
  br i1 %7553, label %7554, label %7395, !dx.controlflow.hints !131

; <label>:7554                                    ; preds = %7549
  %7555 = fmul fast float %7550, %7313
  %7556 = fmul fast float %7550, %7314
  %7557 = fmul fast float %7550, %7315
  %7558 = fsub fast float %7297, %4714
  %7559 = fcmp fast ogt float %7558, 0.000000e+00
  %7560 = fsub fast float %169, %4714
  %7561 = fcmp fast ogt float %7560, 0.000000e+00
  %7562 = xor i1 %7561, %7559
  %7563 = fsub fast float %4714, %7297
  %7564 = fmul fast float %7563, 2.000000e+00
  %7565 = fadd fast float %7564, %7297
  %7566 = select i1 %7562, float %7297, float %7565
  %7567 = fsub fast float %7566, %169
  %7568 = call float @dx.op.dot3.f32(i32 55, float %7323, float %7324, float %7567, float %7323, float %7324, float %7567)  ; Dot3(ax,ay,az,bx,by,bz)
  %7569 = call float @dx.op.unary.f32(i32 25, float %7568)  ; Rsqrt(value)
  %7570 = fmul fast float %7569, %7323
  %7571 = fmul fast float %7569, %7324
  %7572 = fmul fast float %7569, %7567
  %7573 = fsub fast float %4714, %169
  %7574 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7573)  ; Dot3(ax,ay,az,bx,by,bz)
  %7575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7570, float %7571, float %7572)  ; Dot3(ax,ay,az,bx,by,bz)
  %7576 = fdiv fast float 1.000000e+00, %7575
  %7577 = fmul fast float %7576, %7574
  %7578 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7560, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7579 = fcmp fast ogt float %7578, 0.000000e+00
  %7580 = fcmp fast olt float %7578, 0.000000e+00
  %7581 = zext i1 %7579 to i32
  %7582 = zext i1 %7580 to i32
  %7583 = sub nsw i32 %7581, %7582
  %7584 = sitofp i32 %7583 to float
  %7585 = fsub fast float %7566, %4714
  %7586 = call float @dx.op.dot3.f32(i32 55, float %7323, float %7324, float %7585, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7587 = fcmp fast ogt float %7586, 0.000000e+00
  %7588 = fcmp fast olt float %7586, 0.000000e+00
  %7589 = zext i1 %7587 to i32
  %7590 = zext i1 %7588 to i32
  %7591 = sub nsw i32 %7589, %7590
  %7592 = sitofp i32 %7591 to float
  %7593 = fcmp fast une float %7584, %7592
  br i1 %7593, label %7594, label %7604

; <label>:7594                                    ; preds = %7554
  %7595 = fmul fast float %7577, %7572
  %7596 = fmul fast float %7577, %7571
  %7597 = fmul fast float %7577, %7570
  %7598 = fmul fast float %7597, %7597
  %7599 = fmul fast float %7596, %7596
  %7600 = fadd fast float %7598, %7599
  %7601 = fmul fast float %7595, %7595
  %7602 = fadd fast float %7600, %7601
  %7603 = call float @dx.op.unary.f32(i32 24, float %7602)  ; Sqrt(value)
  br label %7616

; <label>:7604                                    ; preds = %7554
  %7605 = icmp slt i32 %7583, 0
  br i1 %7605, label %7606, label %7616

; <label>:7606                                    ; preds = %7604
  %7607 = fsub fast float %167, %7295
  %7608 = fsub fast float %168, %7296
  %7609 = fsub fast float %169, %7566
  %7610 = fmul fast float %7607, %7607
  %7611 = fmul fast float %7608, %7608
  %7612 = fadd fast float %7610, %7611
  %7613 = fmul fast float %7609, %7609
  %7614 = fadd fast float %7612, %7613
  %7615 = call float @dx.op.unary.f32(i32 24, float %7614)  ; Sqrt(value)
  br label %7616

; <label>:7616                                    ; preds = %7606, %7604, %7594
  %7617 = phi float [ %7603, %7594 ], [ %7615, %7606 ], [ 0.000000e+00, %7604 ]
  %7618 = and i1 %7561, %7559
  %7619 = fsub fast float -0.000000e+00, %7617
  %7620 = select i1 %7618, float -0.000000e+00, float %7619
  %7621 = fmul fast float %4715, 0x3FF7154760000000
  %7622 = fmul fast float %7621, %7620
  %7623 = fmul fast float %4716, 0x3FF7154760000000
  %7624 = fmul fast float %7623, %7620
  %7625 = fmul fast float %4717, 0x3FF7154760000000
  %7626 = fmul fast float %7625, %7620
  %7627 = call float @dx.op.unary.f32(i32 21, float %7622)  ; Exp(value)
  %7628 = call float @dx.op.unary.f32(i32 21, float %7624)  ; Exp(value)
  %7629 = call float @dx.op.unary.f32(i32 21, float %7626)  ; Exp(value)
  %7630 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7631 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7632 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  %7633 = fmul fast float %7555, %7630
  %7634 = fmul fast float %7556, %7631
  %7635 = fmul fast float %7557, %7632
  %7636 = fsub fast float %7329, %187
  %7637 = fsub fast float %7330, %188
  %7638 = fsub fast float %7331, %189
  %7639 = call float @dx.op.dot3.f32(i32 55, float %7636, float %7637, float %7638, float %7636, float %7637, float %7638)  ; Dot3(ax,ay,az,bx,by,bz)
  %7640 = call float @dx.op.unary.f32(i32 25, float %7639)  ; Rsqrt(value)
  %7641 = fmul fast float %7640, %7636
  %7642 = fmul fast float %7640, %7637
  %7643 = fmul fast float %7640, %7638
  %7644 = call float @dx.op.dot3.f32(i32 55, float %7329, float %7330, float %7331, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %7645 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %7641, float %7642, float %7643)  ; Dot3(ax,ay,az,bx,by,bz)
  %7646 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7647 = fmul fast float %7646, %7336
  %7648 = fmul fast float %7646, %7646
  %7649 = fmul fast float %7648, %4936
  %7650 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7651 = fmul fast float %7647, %7650
  %7652 = bitcast float %7326 to i32
  %7653 = ashr i32 %7652, 1
  %7654 = sub nsw i32 1597463007, %7653
  %7655 = bitcast i32 %7654 to float
  %7656 = fmul fast float %7655, %7323
  %7657 = fmul fast float %7655, %7324
  %7658 = fmul fast float %7655, %7325
  %7659 = fsub fast float %7656, %187
  %7660 = fsub fast float %7657, %188
  %7661 = fsub fast float %7658, %189
  %7662 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float %7659, float %7660, float %7661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = call float @dx.op.unary.f32(i32 25, float %7662)  ; Rsqrt(value)
  %7664 = fmul fast float %7659, %7663
  %7665 = fmul fast float %7660, %7663
  %7666 = fmul fast float %7661, %7663
  %7667 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %7664, float %7665, float %7666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = fmul fast float %7667, %7667
  %7669 = call float @dx.op.unary.f32(i32 6, float %7644)  ; FAbs(value)
  %7670 = fsub fast float 1.000000e+00, %4929
  %7671 = fmul fast float %4911, %4911
  %7672 = fmul fast float %7671, %7670
  %7673 = fadd fast float %7672, %4929
  %7674 = bitcast float %7673 to i32
  %7675 = ashr i32 %7674, 1
  %7676 = add nsw i32 %7675, 532487669
  %7677 = bitcast i32 %7676 to float
  %7678 = fadd fast float %7677, %4911
  %7679 = fmul fast float %4929, %7668
  %7680 = fsub fast float 1.000000e+00, %7668
  %7681 = fadd fast float %7680, %7679
  %7682 = fmul fast float %7669, %7669
  %7683 = fmul fast float %7682, %7670
  %7684 = fadd fast float %7683, %4929
  %7685 = bitcast float %7684 to i32
  %7686 = ashr i32 %7685, 1
  %7687 = add nsw i32 %7686, 532487669
  %7688 = bitcast i32 %7687 to float
  %7689 = fadd fast float %7688, %7669
  %7690 = fmul fast float %7681, %7681
  %7691 = fmul fast float %7690, %7678
  %7692 = fmul fast float %7691, %7689
  %7693 = fdiv fast float 1.000000e+00, %7692
  %7694 = bitcast float %4929 to i32
  %7695 = sitofp i32 %7694 to float
  %7696 = fmul fast float %7695, 0x3FE7F73180000000
  %7697 = fadd fast float %7696, 0x41AFE27C40000000
  %7698 = fptosi float %7697 to i32
  %7699 = bitcast i32 %7698 to float
  %7700 = fmul fast float %7292, 0x3FD80E9D60000000
  %7701 = fmul fast float %7700, %7655
  %7702 = fadd fast float %7699, %7701
  %7703 = bitcast float %7702 to i32
  %7704 = sub nsw i32 2129859010, %7703
  %7705 = bitcast i32 %7704 to float
  %7706 = fmul fast float %4929, %7693
  %7707 = fmul fast float %7706, %7699
  %7708 = fmul fast float %7707, %7705
  %7709 = call float @dx.op.unary.f32(i32 6, float %7645)  ; FAbs(value)
  %7710 = fsub fast float 1.000000e+00, %7709
  %7711 = bitcast float %7710 to i32
  %7712 = sitofp i32 %7711 to float
  %7713 = fmul fast float %7712, 5.000000e+00
  %7714 = fadd fast float %7713, 0xC1EFBF8940000000
  %7715 = fptosi float %7714 to i32
  %7716 = bitcast i32 %7715 to float
  %7717 = fsub fast float 1.000000e+00, %4903
  %7718 = fsub fast float 1.000000e+00, %4904
  %7719 = fsub fast float 1.000000e+00, %4909
  %7720 = fmul fast float %7716, %7717
  %7721 = fmul fast float %7716, %7718
  %7722 = fmul fast float %7716, %7719
  %7723 = fadd fast float %7720, %4903
  %7724 = fadd fast float %7721, %4904
  %7725 = fadd fast float %7722, %4909
  br i1 %5048, label %7726, label %7749

; <label>:7726                                    ; preds = %7616
  %7727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4291, float %7709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7728 = extractvalue %dx.types.ResRet.f32 %7727, 0
  %7729 = extractvalue %dx.types.ResRet.f32 %7727, 1
  %7730 = extractvalue %dx.types.ResRet.f32 %7727, 2
  %7731 = fadd fast float %7728, -5.000000e-01
  %7732 = fadd fast float %7729, -5.000000e-01
  %7733 = fadd fast float %7730, -5.000000e-01
  %7734 = fmul fast float %4903, 4.000000e+00
  %7735 = fmul fast float %7734, %7717
  %7736 = fmul fast float %7735, %7731
  %7737 = fmul fast float %4904, 4.000000e+00
  %7738 = fmul fast float %7737, %7718
  %7739 = fmul fast float %7738, %7732
  %7740 = fmul fast float %4909, 4.000000e+00
  %7741 = fmul fast float %7740, %7719
  %7742 = fmul fast float %7741, %7733
  %7743 = fadd fast float %7736, %7723
  %7744 = fadd fast float %7739, %7724
  %7745 = fadd fast float %7742, %7725
  %7746 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7747 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7748 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  br label %7749

; <label>:7749                                    ; preds = %7726, %7616
  %7750 = phi float [ %7746, %7726 ], [ %7723, %7616 ]
  %7751 = phi float [ %7747, %7726 ], [ %7724, %7616 ]
  %7752 = phi float [ %7748, %7726 ], [ %7725, %7616 ]
  %7753 = fmul fast float %7644, 9.843750e-01
  %7754 = fadd fast float %7753, 7.812500e-03
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7754, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 2
  %7757 = extractvalue %dx.types.ResRet.f32 %7755, 3
  %7758 = fmul fast float %7756, %4903
  %7759 = fmul fast float %7756, %4904
  %7760 = fmul fast float %7756, %4909
  %7761 = fadd fast float %7758, %7757
  %7762 = fadd fast float %7759, %7757
  %7763 = fadd fast float %7760, %7757
  br i1 %5048, label %7764, label %7787

; <label>:7764                                    ; preds = %7749
  %7765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4291, float %7644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = fadd fast float %7766, -5.000000e-01
  %7770 = fadd fast float %7767, -5.000000e-01
  %7771 = fadd fast float %7768, -5.000000e-01
  %7772 = fmul fast float %4903, 4.000000e+00
  %7773 = fmul fast float %7772, %7717
  %7774 = fmul fast float %7773, %7769
  %7775 = fmul fast float %4904, 4.000000e+00
  %7776 = fmul fast float %7775, %7718
  %7777 = fmul fast float %7776, %7770
  %7778 = fmul fast float %4909, 4.000000e+00
  %7779 = fmul fast float %7778, %7719
  %7780 = fmul fast float %7779, %7771
  %7781 = fadd fast float %7774, %7761
  %7782 = fadd fast float %7777, %7762
  %7783 = fadd fast float %7780, %7763
  %7784 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7785 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7786 = call float @dx.op.unary.f32(i32 7, float %7783)  ; Saturate(value)
  br label %7787

; <label>:7787                                    ; preds = %7764, %7749
  %7788 = phi float [ %7784, %7764 ], [ %7761, %7749 ]
  %7789 = phi float [ %7785, %7764 ], [ %7762, %7749 ]
  %7790 = phi float [ %7786, %7764 ], [ %7763, %7749 ]
  %7791 = call float @dx.op.binary.f32(i32 35, float %7789, float %7790)  ; FMax(a,b)
  %7792 = call float @dx.op.binary.f32(i32 35, float %7788, float %7791)  ; FMax(a,b)
  %7793 = fsub fast float 1.000000e+00, %7792
  %7794 = fmul fast float %7750, %7708
  %7795 = fmul fast float %7751, %7708
  %7796 = fmul fast float %7752, %7708
  %7797 = fsub fast float 1.000000e+00, %7645
  %7798 = bitcast float %7797 to i32
  %7799 = sitofp i32 %7798 to float
  %7800 = fmul fast float %7799, 5.000000e+00
  %7801 = fadd fast float %7800, 0xC1EFBF8940000000
  %7802 = fptosi float %7801 to i32
  %7803 = bitcast i32 %7802 to float
  %7804 = fmul fast float %7803, %4292
  %7805 = fmul fast float %7793, %7804
  %7806 = fmul fast float %7805, %5590
  %7807 = fmul fast float %7805, %5591
  %7808 = fmul fast float %7805, %5592
  %7809 = fadd fast float %7806, %7794
  %7810 = fadd fast float %7807, %7795
  %7811 = fadd fast float %7808, %7796
  %7812 = fmul fast float %7633, %4317
  %7813 = fmul fast float %7812, %7651
  %7814 = fmul fast float %7813, %7793
  %7815 = fmul fast float %7634, %4317
  %7816 = fmul fast float %7815, %7651
  %7817 = fmul fast float %7816, %7793
  %7818 = fmul fast float %7635, %4317
  %7819 = fmul fast float %7818, %7651
  %7820 = fmul fast float %7819, %7793
  %7821 = fadd fast float %7814, %7266
  %7822 = fadd fast float %7817, %7267
  %7823 = fadd fast float %7820, %7268
  %7824 = fmul fast float %7813, %7809
  %7825 = fmul fast float %7816, %7810
  %7826 = fmul fast float %7819, %7811
  %7827 = fadd fast float %7824, %7263
  %7828 = fadd fast float %7825, %7264
  %7829 = fadd fast float %7826, %7265
  br label %7395

; <label>:7830                                    ; preds = %7395
  br label %7831

; <label>:7831                                    ; preds = %7830, %7229
  %7832 = phi float [ %7231, %7229 ], [ %7396, %7830 ]
  %7833 = phi float [ %7232, %7229 ], [ %7397, %7830 ]
  %7834 = phi float [ %7233, %7229 ], [ %7398, %7830 ]
  %7835 = phi float [ %7234, %7229 ], [ %7399, %7830 ]
  %7836 = phi float [ %7235, %7229 ], [ %7400, %7830 ]
  %7837 = phi float [ %7236, %7229 ], [ %7401, %7830 ]
  %7838 = add i32 %7230, 1
  %7839 = icmp ugt i32 %7838, %7226
  br i1 %7839, label %7840, label %7229

; <label>:7840                                    ; preds = %7831
  br label %7841

; <label>:7841                                    ; preds = %7840, %7179, %7169
  %7842 = phi float [ %7170, %7169 ], [ %7170, %7179 ], [ %7832, %7840 ]
  %7843 = phi float [ %7171, %7169 ], [ %7171, %7179 ], [ %7833, %7840 ]
  %7844 = phi float [ %7172, %7169 ], [ %7172, %7179 ], [ %7834, %7840 ]
  %7845 = phi float [ %7173, %7169 ], [ %7173, %7179 ], [ %7835, %7840 ]
  %7846 = phi float [ %7174, %7169 ], [ %7174, %7179 ], [ %7836, %7840 ]
  %7847 = phi float [ %7175, %7169 ], [ %7175, %7179 ], [ %7837, %7840 ]
  %7848 = fmul fast float %4317, %4317
  %7849 = fsub fast float 1.000000e+00, %7848
  %7850 = call float @dx.op.dot3.f32(i32 55, float %7849, float %7849, float %7849, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = fsub fast float 1.000000e+00, %7850
  %7852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7853 = extractvalue %dx.types.CBufRet.f32 %7852, 0
  %7854 = fmul fast float %7853, %5596
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7857 = fsub fast float 1.000000e+00, %4295
  %7858 = call float @dx.op.unary.f32(i32 7, float %7857)  ; Saturate(value)
  %7859 = fadd fast float %7847, %4294
  %7860 = fmul fast float %7859, %4295
  %7861 = fmul fast float %7858, %7856
  %7862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %7863 = extractvalue %dx.types.ResRet.i32 %7862, 3
  %7864 = bitcast i32 %7863 to float
  %7865 = fsub fast float %7851, %7864
  %7866 = fmul fast float %7865, %201
  %7867 = fadd fast float %7866, %7864
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 3
  %7870 = fmul fast float %7845, %4897
  %7871 = fmul fast float %7846, %4898
  %7872 = fmul fast float %7847, %4899
  %7873 = fcmp fast ogt float %92, %221
  %7874 = and i1 %7873, %4720
  %7875 = or i1 %4726, %7874
  %7876 = icmp eq i32 %4719, 2
  %7877 = fcmp fast ole float %92, %221
  %7878 = and i1 %7877, %7876
  %7879 = or i1 %7878, %7875
  br i1 %7874, label %7880, label %8137

; <label>:7880                                    ; preds = %7841
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 3
  %7884 = fmul fast float %7882, %104
  %7885 = fmul fast float %7883, %105
  %7886 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7887 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7888 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7886, float %7887, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7889 = extractvalue %dx.types.ResRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.ResRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.ResRet.f32 %7888, 2
  %7892 = extractvalue %dx.types.ResRet.f32 %7888, 3
  %7893 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7886, float %7887, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7894 = extractvalue %dx.types.ResRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.ResRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.ResRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.ResRet.f32 %7893, 3
  %7898 = call float @dx.op.binary.f32(i32 35, float %7890, float %7891)  ; FMax(a,b)
  %7899 = call float @dx.op.binary.f32(i32 35, float %7889, float %7898)  ; FMax(a,b)
  %7900 = call float @dx.op.binary.f32(i32 35, float %7899, float %7892)  ; FMax(a,b)
  %7901 = call float @dx.op.binary.f32(i32 36, float %7895, float %7896)  ; FMin(a,b)
  %7902 = call float @dx.op.binary.f32(i32 36, float %7894, float %7901)  ; FMin(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7902, float %7897)  ; FMin(a,b)
  %7904 = fmul fast float %7900, 2.550000e+02
  %7905 = fadd fast float %7904, 0x3F70101020000000
  %7906 = fptoui float %7905 to i32
  %7907 = fmul fast float %7903, 2.550000e+02
  %7908 = fadd fast float %7907, 0x3F70101020000000
  %7909 = fptoui float %7908 to i32
  %7910 = icmp ult i32 %7906, %7909
  br i1 %7910, label %7911, label %8079

; <label>:7911                                    ; preds = %7880
  %7912 = fcmp fast ogt float %91, 9.843750e-01
  %7913 = fadd fast float %92, -4.000000e+00
  %7914 = select i1 %7912, float -4.000000e+00, float %7913
  %7915 = call float @dx.op.binary.f32(i32 35, float %7914, float 0.000000e+00)  ; FMax(a,b)
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = fadd fast float %7917, %7915
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = fmul fast float %7918, %7919
  %7921 = call float @dx.op.unary.f32(i32 23, float %7920)  ; Log(value)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7923 = fmul fast float %7922, %7921
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7926 = fmul fast float %7923, %7925
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = uitofp i32 %7906 to float
  %7929 = uitofp i32 %7909 to float
  %7930 = fadd fast float %7928, 5.000000e-01
  %7931 = fadd fast float %7929, 5.000000e-01
  %7932 = fmul fast float %7925, %7930
  %7933 = fmul fast float %7925, %7931
  %7934 = fadd fast float %7932, 0x3F0FFB4800000000
  %7935 = fadd fast float %7933, 0xBF0FFB4800000000
  %7936 = call float @dx.op.binary.f32(i32 35, float %7927, float %7934)  ; FMax(a,b)
  %7937 = call float @dx.op.binary.f32(i32 36, float %7936, float %7935)  ; FMin(a,b)
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 1
  %7940 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7941 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %7942 = fmul fast float %7939, %7937
  %7943 = fadd fast float %7941, %7942
  %7944 = fadd fast float %7941, %7940
  %7945 = fsub fast float %7939, %7940
  %7946 = fadd fast float %7945, %7941
  %7947 = call float @dx.op.binary.f32(i32 35, float %7943, float %7944)  ; FMax(a,b)
  %7948 = call float @dx.op.binary.f32(i32 36, float %7947, float %7946)  ; FMin(a,b)
  %7949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7886, float %7887, float %7948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.ResRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.ResRet.f32 %7949, 2
  %7953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.i32 %7953, 0
  %7955 = extractvalue %dx.types.CBufRet.i32 %7953, 1
  %7956 = uitofp i32 %7954 to float
  %7957 = uitofp i32 %7955 to float
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %7960 = extractvalue %dx.types.CBufRet.f32 %7958, 1
  %7961 = fmul fast float %7956, %7886
  %7962 = fmul fast float %7957, %7887
  %7963 = fadd fast float %7961, -5.000000e-01
  %7964 = fadd fast float %7962, -5.000000e-01
  %7965 = call float @dx.op.unary.f32(i32 22, float %7963)  ; Frc(value)
  %7966 = call float @dx.op.unary.f32(i32 22, float %7964)  ; Frc(value)
  %7967 = fmul fast float %7965, %7965
  %7968 = fmul fast float %7967, %7965
  %7969 = fsub fast float 3.000000e+00, %7965
  %7970 = fmul fast float %7967, %7969
  %7971 = fmul fast float %7965, 3.000000e+00
  %7972 = fmul fast float %7968, 3.000000e+00
  %7973 = fmul fast float %7967, 6.000000e+00
  %7974 = fsub fast float %7972, %7973
  %7975 = fadd fast float %7974, 4.000000e+00
  %7976 = fmul fast float %7975, 0x3FC5555560000000
  %7977 = fmul fast float %7968, -3.000000e+00
  %7978 = fadd fast float %7967, %7965
  %7979 = fmul fast float %7978, 3.000000e+00
  %7980 = fadd fast float %7977, 1.000000e+00
  %7981 = fadd fast float %7980, %7979
  %7982 = fmul fast float %7968, 0x3FC5555560000000
  %7983 = fmul fast float %7966, %7966
  %7984 = fmul fast float %7983, %7966
  %7985 = fsub fast float 3.000000e+00, %7966
  %7986 = fmul fast float %7983, %7985
  %7987 = fmul fast float %7966, 3.000000e+00
  %7988 = fmul fast float %7984, 3.000000e+00
  %7989 = fmul fast float %7983, 6.000000e+00
  %7990 = fsub fast float %7988, %7989
  %7991 = fadd fast float %7990, 4.000000e+00
  %7992 = fmul fast float %7991, 0x3FC5555560000000
  %7993 = fmul fast float %7984, -3.000000e+00
  %7994 = fadd fast float %7983, %7966
  %7995 = fmul fast float %7994, 3.000000e+00
  %7996 = fadd fast float %7993, 1.000000e+00
  %7997 = fadd fast float %7996, %7995
  %7998 = fmul fast float %7984, 0x3FC5555560000000
  %7999 = fadd fast float %7965, 1.000000e+00
  %8000 = fsub fast float 1.000000e+00, %7971
  %8001 = fadd fast float %8000, %7970
  %8002 = fadd fast float %8001, %7975
  %8003 = fmul fast float %8002, 0x3FC5555560000000
  %8004 = fdiv fast float %7976, %8003
  %8005 = fsub fast float %7999, %8004
  %8006 = fsub fast float 1.000000e+00, %7965
  %8007 = fadd fast float %7981, %7968
  %8008 = fmul fast float %8007, 0x3FC5555560000000
  %8009 = fdiv fast float %7982, %8008
  %8010 = fadd fast float %8006, %8009
  %8011 = fadd fast float %7966, 1.000000e+00
  %8012 = fsub fast float 1.000000e+00, %7987
  %8013 = fadd fast float %8012, %7986
  %8014 = fadd fast float %8013, %7991
  %8015 = fmul fast float %8014, 0x3FC5555560000000
  %8016 = fdiv fast float %7992, %8015
  %8017 = fsub fast float %8011, %8016
  %8018 = fsub fast float 1.000000e+00, %7966
  %8019 = fadd fast float %7997, %7984
  %8020 = fmul fast float %8019, 0x3FC5555560000000
  %8021 = fdiv fast float %7998, %8020
  %8022 = fadd fast float %8021, %8018
  %8023 = fmul fast float %8005, %7959
  %8024 = fsub fast float %7886, %8023
  %8025 = fmul fast float %8010, %7959
  %8026 = fadd fast float %8025, %7886
  %8027 = fmul fast float %8022, %7960
  %8028 = fadd fast float %8027, %7887
  %8029 = fmul fast float %8017, %7960
  %8030 = fsub fast float %7887, %8029
  %8031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8024, float %8030, float %7948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8026, float %8030, float %7948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8024, float %8028, float %7948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8040 = extractvalue %dx.types.ResRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.ResRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.ResRet.f32 %8039, 2
  %8043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8026, float %8028, float %7948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.ResRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.ResRet.f32 %8043, 2
  %8047 = fsub fast float %8040, %8032
  %8048 = fsub fast float %8041, %8033
  %8049 = fsub fast float %8042, %8034
  %8050 = fmul fast float %8047, %8020
  %8051 = fmul fast float %8048, %8020
  %8052 = fmul fast float %8049, %8020
  %8053 = fadd fast float %8050, %8032
  %8054 = fadd fast float %8051, %8033
  %8055 = fadd fast float %8052, %8034
  %8056 = fsub fast float %8044, %8036
  %8057 = fsub fast float %8045, %8037
  %8058 = fsub fast float %8046, %8038
  %8059 = fmul fast float %8056, %8020
  %8060 = fmul fast float %8057, %8020
  %8061 = fmul fast float %8058, %8020
  %8062 = fsub fast float %8036, %8053
  %8063 = fadd fast float %8062, %8059
  %8064 = fsub fast float %8037, %8054
  %8065 = fadd fast float %8064, %8060
  %8066 = fsub fast float %8038, %8055
  %8067 = fadd fast float %8066, %8061
  %8068 = fmul fast float %8063, %8008
  %8069 = fmul fast float %8065, %8008
  %8070 = fmul fast float %8067, %8008
  %8071 = fadd fast float %8068, %8053
  %8072 = fadd fast float %8069, %8054
  %8073 = fadd fast float %8070, %8055
  %8074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.f32 %8074, 1
  %8076 = fmul fast float %8071, %8075
  %8077 = fmul fast float %8072, %8075
  %8078 = fmul fast float %8073, %8075
  br label %8079

; <label>:8079                                    ; preds = %7911, %7880
  %8080 = phi float [ %7950, %7911 ], [ 1.000000e+00, %7880 ]
  %8081 = phi float [ %7951, %7911 ], [ 1.000000e+00, %7880 ]
  %8082 = phi float [ %7952, %7911 ], [ 1.000000e+00, %7880 ]
  %8083 = phi float [ %8076, %7911 ], [ 0.000000e+00, %7880 ]
  %8084 = phi float [ %8077, %7911 ], [ 0.000000e+00, %7880 ]
  %8085 = phi float [ %8078, %7911 ], [ 0.000000e+00, %7880 ]
  %8086 = fmul fast float %8083, %7867
  %8087 = fmul fast float %8084, %7867
  %8088 = fmul fast float %8085, %7867
  %8089 = call float @dx.op.dot3.f32(i32 55, float %8080, float %8081, float %8082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8090 = call float @dx.op.dot3.f32(i32 55, float %8086, float %8087, float %8088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8091 = select i1 %261, float %8089, float %8080
  %8092 = select i1 %261, float %8089, float %8081
  %8093 = select i1 %261, float 1.000000e+00, float %8082
  %8094 = select i1 %261, float %8090, float %8086
  %8095 = select i1 %261, float 0.000000e+00, float %8087
  %8096 = select i1 %261, float 0.000000e+00, float %8088
  %8097 = fmul fast float %8091, %7870
  %8098 = fmul fast float %8092, %7871
  %8099 = fmul fast float %8093, %7872
  %8100 = fadd fast float %8097, %8094
  %8101 = fadd fast float %8098, %8095
  %8102 = fadd fast float %8096, %8099
  %8103 = fmul fast float %8091, %7842
  %8104 = fmul fast float %8092, %7843
  %8105 = fmul fast float %8093, %7844
  %8106 = fmul fast float %137, %7882
  %8107 = fmul fast float %139, %7883
  %8108 = fsub fast float 1.000000e+00, %8106
  %8109 = fsub fast float 1.000000e+00, %8107
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8114 = fmul fast float %8108, %8111
  %8115 = fmul fast float %8108, %8112
  %8116 = fmul fast float %8108, %8113
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8121 = fmul fast float %8109, %8118
  %8122 = fmul fast float %8109, %8119
  %8123 = fmul fast float %8109, %8120
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = fadd fast float %8121, %8125
  %8129 = fadd fast float %8128, %8114
  %8130 = fadd fast float %8122, %8126
  %8131 = fadd fast float %8130, %8115
  %8132 = fadd fast float %8123, %8127
  %8133 = fadd fast float %8132, %8116
  %8134 = fmul fast float %8129, %221
  %8135 = fmul fast float %8131, %221
  %8136 = fmul fast float %8133, %221
  br label %8137

; <label>:8137                                    ; preds = %8079, %7841
  %8138 = phi float [ %8134, %8079 ], [ %167, %7841 ]
  %8139 = phi float [ %8135, %8079 ], [ %168, %7841 ]
  %8140 = phi float [ %8136, %8079 ], [ %169, %7841 ]
  %8141 = phi float [ %221, %8079 ], [ %92, %7841 ]
  %8142 = phi float [ %8100, %8079 ], [ %7870, %7841 ]
  %8143 = phi float [ %8101, %8079 ], [ %7871, %7841 ]
  %8144 = phi float [ %8102, %8079 ], [ %7872, %7841 ]
  %8145 = phi float [ %8103, %8079 ], [ %7842, %7841 ]
  %8146 = phi float [ %8104, %8079 ], [ %7843, %7841 ]
  %8147 = phi float [ %8105, %8079 ], [ %7844, %7841 ]
  %8148 = phi float [ %8080, %8079 ], [ 1.000000e+00, %7841 ]
  br i1 %7879, label %9303, label %8149

; <label>:8149                                    ; preds = %8137
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.CBufRet.f32 %8150, 1
  %8153 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8154 = extractvalue %dx.types.CBufRet.f32 %8150, 3
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8159 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8164 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8165, 0
  %8167 = extractvalue %dx.types.CBufRet.f32 %8165, 1
  %8168 = extractvalue %dx.types.CBufRet.f32 %8165, 2
  %8169 = extractvalue %dx.types.CBufRet.f32 %8165, 3
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 3
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 3
  %8174 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8177 = fcmp fast olt float %8176, -5.000000e-01
  %8178 = call float @dx.op.dot3.f32(i32 55, float %8138, float %8139, float %8140, float %8138, float %8139, float %8140)  ; Dot3(ax,ay,az,bx,by,bz)
  %8179 = call float @dx.op.unary.f32(i32 25, float %8178)  ; Rsqrt(value)
  %8180 = fmul fast float %8179, %8178
  %8181 = fmul fast float %8179, %8138
  %8182 = fmul fast float %8179, %8139
  %8183 = fmul fast float %8179, %8140
  %8184 = fadd fast float %8180, %8154
  %8185 = call float @dx.op.dot3.f32(i32 55, float %8181, float %8182, float %8183, float %8151, float %8152, float %8153)  ; Dot3(ax,ay,az,bx,by,bz)
  %8186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.i32 %8186, 1
  %8188 = and i32 %8187, 1
  %8189 = icmp ne i32 %8188, 0
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8192 = fcmp fast ogt float %8191, 0.000000e+00
  %8193 = and i1 %8189, %8192
  br i1 %8193, label %8194, label %8600, !dx.controlflow.hints !132

; <label>:8194                                    ; preds = %8149
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 2
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8201 = fsub fast float %8198, %8200
  %8202 = and i32 %8187, 2
  %8203 = extractvalue %dx.types.CBufRet.i32 %8186, 0
  %8204 = call i32 @dx.op.binary.i32(i32 40, i32 %8203, i32 3)  ; UMin(a,b)
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %8209 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8210 = fsub fast float %8206, %8208
  %8211 = fsub fast float %8207, %8209
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = fcmp fast ogt float %8213, 0.000000e+00
  %8215 = fsub fast float -0.000000e+00, %8210
  %8216 = fsub fast float -0.000000e+00, %8211
  %8217 = call float @dx.op.dot2.f32(i32 54, float %8181, float %8182, float %8181, float %8182)  ; Dot2(ax,ay,bx,by)
  %8218 = call float @dx.op.dot2.f32(i32 54, float %8181, float %8182, float %8215, float %8216)  ; Dot2(ax,ay,bx,by)
  %8219 = fmul fast float %8218, 2.000000e+00
  %8220 = call float @dx.op.dot2.f32(i32 54, float %8215, float %8216, float %8215, float %8216)  ; Dot2(ax,ay,bx,by)
  %8221 = fmul fast float %8213, %8213
  %8222 = fsub fast float %8220, %8221
  %8223 = fmul fast float %8219, %8219
  %8224 = fmul fast float %8217, 4.000000e+00
  %8225 = fmul fast float %8224, %8222
  %8226 = fsub fast float %8223, %8225
  %8227 = fcmp fast ogt float %8226, 0.000000e+00
  br i1 %8227, label %8228, label %8243

; <label>:8228                                    ; preds = %8194
  %8229 = fcmp fast ogt float %8219, 0.000000e+00
  %8230 = call float @dx.op.unary.f32(i32 24, float %8226)  ; Sqrt(value)
  %8231 = fsub fast float -0.000000e+00, %8230
  %8232 = select i1 %8229, float %8230, float %8231
  %8233 = fadd fast float %8232, %8219
  %8234 = fmul float %8233, -5.000000e-01
  %8235 = fdiv fast float %8234, %8217
  %8236 = call float @dx.op.binary.f32(i32 35, float %8235, float 0.000000e+00)  ; FMax(a,b)
  %8237 = call float @dx.op.binary.f32(i32 36, float %8180, float %8236)  ; FMin(a,b)
  %8238 = fdiv fast float %8222, %8234
  %8239 = call float @dx.op.binary.f32(i32 35, float %8238, float 0.000000e+00)  ; FMax(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8180, float %8239)  ; FMin(a,b)
  %8241 = call float @dx.op.binary.f32(i32 36, float %8237, float %8240)  ; FMin(a,b)
  %8242 = call float @dx.op.binary.f32(i32 35, float %8237, float %8240)  ; FMax(a,b)
  br label %8243

; <label>:8243                                    ; preds = %8228, %8194
  %8244 = phi float [ %8242, %8228 ], [ -1.000000e+00, %8194 ]
  %8245 = phi float [ %8241, %8228 ], [ -1.000000e+00, %8194 ]
  %8246 = phi i1 [ true, %8228 ], [ false, %8194 ]
  %8247 = and i1 %8214, %8246
  br i1 %8247, label %8248, label %8250

; <label>:8248                                    ; preds = %8243
  %8249 = fcmp fast oeq float %8245, %8244
  br i1 %8249, label %8553, label %8251

; <label>:8250                                    ; preds = %8243
  br i1 %8214, label %8553, label %8251

; <label>:8251                                    ; preds = %8250, %8248
  %8252 = phi float [ %8180, %8250 ], [ %8244, %8248 ]
  %8253 = phi float [ 0.000000e+00, %8250 ], [ %8245, %8248 ]
  %8254 = icmp ne i32 %8202, 0
  %8255 = fmul fast float %8252, %8183
  %8256 = fadd fast float %8255, %8196
  %8257 = fmul fast float %8256, %8252
  %8258 = select i1 %8254, float 0.000000e+00, float %8257
  %8259 = fcmp fast oeq float %8183, 0.000000e+00
  %8260 = fdiv fast float %8201, %8183
  %8261 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8260)  ; FMax(a,b)
  %8262 = select i1 %8259, float %8252, float %8261
  %8263 = call float @dx.op.binary.f32(i32 36, float %8252, float %8262)  ; FMin(a,b)
  %8264 = fcmp fast ogt float %8183, 0.000000e+00
  %8265 = fcmp fast olt float %8201, 0.000000e+00
  br i1 %8264, label %8266, label %8323

; <label>:8266                                    ; preds = %8251
  %8267 = icmp eq i32 %8202, 0
  br i1 %8265, label %8268, label %8312

; <label>:8268                                    ; preds = %8266
  %8269 = select i1 %8267, float %8252, float 0.000000e+00
  %8270 = fsub fast float -0.000000e+00, %8269
  %8271 = call float @dx.op.unary.f32(i32 6, float %8270)  ; FAbs(value)
  %8272 = fmul fast float %8269, %8183
  %8273 = fadd fast float %8272, %8196
  %8274 = fmul fast float %8271, %8273
  %8275 = fsub fast float %8258, %8274
  %8276 = fsub fast float %8252, %8271
  %8277 = select i1 %8267, float %8276, float 0.000000e+00
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8282, 3
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8289 = call float @dx.op.binary.f32(i32 36, float %8275, float %8288)  ; FMin(a,b)
  %8290 = fmul fast float %8286, %8277
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = fsub fast float %8283, %8279
  %8293 = fsub fast float %8284, %8280
  %8294 = fsub fast float %8285, %8281
  %8295 = fmul fast float %8291, %8292
  %8296 = fmul fast float %8291, %8293
  %8297 = fmul fast float %8291, %8294
  %8298 = fadd fast float %8295, %8279
  %8299 = fadd fast float %8296, %8280
  %8300 = fadd fast float %8297, %8281
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8304 = fadd fast float %8303, %8302
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8307 = extractvalue %dx.types.CBufRet.f32 %8301, 3
  %8308 = fadd fast float %8307, %8306
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  %8310 = fmul fast float %8305, %8289
  %8311 = fmul fast float %8310, %8309
  br label %8553

; <label>:8312                                    ; preds = %8266
  br i1 %8267, label %8313, label %8334

; <label>:8313                                    ; preds = %8312
  %8314 = call float @dx.op.binary.f32(i32 36, float %8263, float %8253)  ; FMin(a,b)
  %8315 = fsub fast float %8263, %8314
  %8316 = fsub fast float %8315, %8252
  %8317 = call float @dx.op.unary.f32(i32 6, float %8316)  ; FAbs(value)
  %8318 = fadd fast float %8315, %8252
  %8319 = fmul fast float %8318, %8183
  %8320 = fadd fast float %8319, %8196
  %8321 = fmul fast float %8320, %8317
  %8322 = fsub fast float %8258, %8321
  br label %8334

; <label>:8323                                    ; preds = %8251
  br i1 %8265, label %8324, label %8334

; <label>:8324                                    ; preds = %8323
  %8325 = call float @dx.op.binary.f32(i32 35, float %8253, float %8263)  ; FMax(a,b)
  %8326 = icmp eq i32 %8202, 0
  %8327 = select i1 %8326, float %8263, float 0.000000e+00
  %8328 = fsub fast float -0.000000e+00, %8327
  %8329 = call float @dx.op.unary.f32(i32 6, float %8328)  ; FAbs(value)
  %8330 = fmul fast float %8327, %8183
  %8331 = fadd fast float %8330, %8196
  %8332 = fmul fast float %8329, %8331
  %8333 = fsub fast float %8258, %8332
  br label %8334

; <label>:8334                                    ; preds = %8324, %8323, %8313, %8312
  %8335 = phi float [ %8253, %8312 ], [ %8253, %8313 ], [ %8325, %8324 ], [ %8253, %8323 ]
  %8336 = phi float [ 0.000000e+00, %8312 ], [ %8317, %8313 ], [ %8329, %8324 ], [ 0.000000e+00, %8323 ]
  %8337 = phi float [ %8258, %8312 ], [ %8322, %8313 ], [ %8333, %8324 ], [ %8258, %8323 ]
  %8338 = phi float [ %8263, %8312 ], [ %8263, %8313 ], [ %8252, %8324 ], [ %8252, %8323 ]
  %8339 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8339, align 4, !tbaa !119, !noalias !133
  %8340 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8340, align 4, !tbaa !119, !noalias !133
  %8341 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8341, align 4, !tbaa !119, !noalias !133
  %8342 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8342, align 4, !tbaa !119, !noalias !133
  %8343 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8343, align 4, !tbaa !119, !noalias !133
  %8344 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8344, align 4, !tbaa !119, !noalias !133
  %8345 = icmp sgt i32 %8204, 0
  br i1 %8345, label %8346, label %8407

; <label>:8346                                    ; preds = %8334
  br label %8347

; <label>:8347                                    ; preds = %8396, %8346
  %8348 = phi i32 [ %8397, %8396 ], [ 0, %8346 ]
  %8349 = phi i32 [ %8398, %8396 ], [ 0, %8346 ]
  %8350 = add nuw i32 %8349, 171
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8350)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8357 = fsub fast float %8352, %8355
  %8358 = fsub fast float %8353, %8356
  %8359 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8360 = fsub fast float -0.000000e+00, %8357
  %8361 = fsub fast float -0.000000e+00, %8358
  %8362 = call float @dx.op.dot2.f32(i32 54, float %8181, float %8182, float %8360, float %8361)  ; Dot2(ax,ay,bx,by)
  %8363 = fmul fast float %8362, 2.000000e+00
  %8364 = call float @dx.op.dot2.f32(i32 54, float %8360, float %8361, float %8360, float %8361)  ; Dot2(ax,ay,bx,by)
  %8365 = fmul fast float %8359, %8359
  %8366 = fsub fast float %8364, %8365
  %8367 = fmul fast float %8363, %8363
  %8368 = fmul fast float %8224, %8366
  %8369 = fsub fast float %8367, %8368
  %8370 = fcmp fast ogt float %8369, 0.000000e+00
  br i1 %8370, label %8371, label %8386

; <label>:8371                                    ; preds = %8347
  %8372 = fcmp fast ogt float %8363, 0.000000e+00
  %8373 = call float @dx.op.unary.f32(i32 24, float %8369)  ; Sqrt(value)
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = select i1 %8372, float %8373, float %8374
  %8376 = fadd fast float %8375, %8363
  %8377 = fmul float %8376, -5.000000e-01
  %8378 = fdiv fast float %8377, %8217
  %8379 = call float @dx.op.binary.f32(i32 35, float %8378, float 0.000000e+00)  ; FMax(a,b)
  %8380 = call float @dx.op.binary.f32(i32 36, float %8252, float %8379)  ; FMin(a,b)
  %8381 = fdiv fast float %8366, %8377
  %8382 = call float @dx.op.binary.f32(i32 35, float %8381, float 0.000000e+00)  ; FMax(a,b)
  %8383 = call float @dx.op.binary.f32(i32 36, float %8252, float %8382)  ; FMin(a,b)
  %8384 = call float @dx.op.binary.f32(i32 36, float %8380, float %8383)  ; FMin(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8380, float %8383)  ; FMax(a,b)
  br label %8386

; <label>:8386                                    ; preds = %8371, %8347
  %8387 = phi float [ %8385, %8371 ], [ -1.000000e+00, %8347 ]
  %8388 = phi float [ %8384, %8371 ], [ -1.000000e+00, %8347 ]
  %8389 = phi i1 [ true, %8371 ], [ false, %8347 ]
  br i1 %8389, label %8390, label %8396

; <label>:8390                                    ; preds = %8386
  %8391 = call float @dx.op.binary.f32(i32 35, float %8335, float %8388)  ; FMax(a,b)
  %8392 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8349
  store float %8391, float* %8392, align 4, !tbaa !119, !noalias !133
  %8393 = call float @dx.op.binary.f32(i32 35, float %8335, float %8387)  ; FMax(a,b)
  %8394 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8349
  store float %8393, float* %8394, align 4, !tbaa !119, !noalias !133
  %8395 = add nsw i32 %8348, 1
  br label %8396

; <label>:8396                                    ; preds = %8390, %8386
  %8397 = phi i32 [ %8395, %8390 ], [ %8348, %8386 ]
  %8398 = add nuw nsw i32 %8349, 1
  %8399 = icmp eq i32 %8398, %8204
  br i1 %8399, label %8400, label %8347

; <label>:8400                                    ; preds = %8396
  %8401 = load float, float* %8341, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8402 = load float, float* %8340, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  %8403 = load float, float* %8339, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  %8404 = load float, float* %8344, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8405 = load float, float* %8343, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  %8406 = load float, float* %8342, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  br label %8407

; <label>:8407                                    ; preds = %8400, %8334
  %8408 = phi float [ -1.000000e+00, %8334 ], [ %8406, %8400 ]
  %8409 = phi float [ -1.000000e+00, %8334 ], [ %8405, %8400 ]
  %8410 = phi float [ -1.000000e+00, %8334 ], [ %8404, %8400 ]
  %8411 = phi float [ -1.000000e+00, %8334 ], [ %8403, %8400 ]
  %8412 = phi float [ -1.000000e+00, %8334 ], [ %8402, %8400 ]
  %8413 = phi float [ -1.000000e+00, %8334 ], [ %8401, %8400 ]
  %8414 = phi i32 [ 0, %8334 ], [ %8397, %8400 ]
  %8415 = call float @dx.op.binary.f32(i32 36, float %8412, float %8413)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8411, float %8415)  ; FMin(a,b)
  %8417 = call float @dx.op.binary.f32(i32 35, float %8411, float %8412)  ; FMax(a,b)
  %8418 = call float @dx.op.binary.f32(i32 36, float %8417, float %8413)  ; FMin(a,b)
  %8419 = call float @dx.op.binary.f32(i32 36, float %8411, float %8412)  ; FMin(a,b)
  %8420 = call float @dx.op.binary.f32(i32 35, float %8419, float %8418)  ; FMax(a,b)
  %8421 = call float @dx.op.binary.f32(i32 35, float %8412, float %8413)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 35, float %8411, float %8421)  ; FMax(a,b)
  store float %8416, float* %8339, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  store float %8420, float* %8340, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %8422, float* %8341, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8423 = call float @dx.op.binary.f32(i32 36, float %8409, float %8410)  ; FMin(a,b)
  %8424 = call float @dx.op.binary.f32(i32 36, float %8408, float %8423)  ; FMin(a,b)
  %8425 = call float @dx.op.binary.f32(i32 35, float %8408, float %8409)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 36, float %8425, float %8410)  ; FMin(a,b)
  %8427 = call float @dx.op.binary.f32(i32 36, float %8408, float %8409)  ; FMin(a,b)
  %8428 = call float @dx.op.binary.f32(i32 35, float %8427, float %8426)  ; FMax(a,b)
  %8429 = call float @dx.op.binary.f32(i32 35, float %8409, float %8410)  ; FMax(a,b)
  %8430 = call float @dx.op.binary.f32(i32 35, float %8408, float %8429)  ; FMax(a,b)
  store float %8424, float* %8342, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  store float %8428, float* %8343, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  store float %8430, float* %8344, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8431 = sub nsw i32 3, %8414
  %8432 = icmp sgt i32 %8431, 2
  br i1 %8432, label %8433, label %8471

; <label>:8433                                    ; preds = %8407
  %8434 = icmp eq i32 %8202, 0
  %8435 = fsub fast float %8252, %8336
  %8436 = select i1 %8434, float %8435, float %8336
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8448 = call float @dx.op.binary.f32(i32 36, float %8337, float %8447)  ; FMin(a,b)
  %8449 = fmul fast float %8445, %8436
  %8450 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8451 = fsub fast float %8442, %8438
  %8452 = fsub fast float %8443, %8439
  %8453 = fsub fast float %8444, %8440
  %8454 = fmul fast float %8450, %8451
  %8455 = fmul fast float %8450, %8452
  %8456 = fmul fast float %8450, %8453
  %8457 = fadd fast float %8454, %8438
  %8458 = fadd fast float %8455, %8439
  %8459 = fadd fast float %8456, %8440
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8460, 1
  %8463 = fadd fast float %8462, %8461
  %8464 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8466 = extractvalue %dx.types.CBufRet.f32 %8460, 3
  %8467 = fadd fast float %8466, %8465
  %8468 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8469 = fmul fast float %8464, %8448
  %8470 = fmul fast float %8469, %8468
  br label %8553

; <label>:8471                                    ; preds = %8407
  %8472 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8431
  %8473 = load float, float* %8472, align 4, !tbaa !119, !noalias !133
  %8474 = fcmp fast olt float %8473, %8338
  %8475 = icmp sgt i32 %8414, 0
  %8476 = and i1 %8475, %8474
  br i1 %8476, label %8477, label %8514

; <label>:8477                                    ; preds = %8471
  br label %8478

; <label>:8478                                    ; preds = %8507, %8477
  %8479 = phi float [ %8508, %8507 ], [ %8336, %8477 ]
  %8480 = phi float [ %8509, %8507 ], [ %8337, %8477 ]
  %8481 = phi float [ %8489, %8507 ], [ %8473, %8477 ]
  %8482 = phi i32 [ %8486, %8507 ], [ %8431, %8477 ]
  %8483 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8482
  %8484 = load float, float* %8483, align 4, !tbaa !119, !noalias !133
  %8485 = icmp slt i32 %8482, 2
  %8486 = add nsw i32 %8482, 1
  %8487 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8486
  %8488 = load float, float* %8487, align 4, !tbaa !119, !noalias !133
  %8489 = select i1 %8485, float %8488, float %8252
  %8490 = call float @dx.op.binary.f32(i32 36, float %8489, float %8484)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8338, float %8490)  ; FMin(a,b)
  %8492 = icmp eq i32 %8202, 0
  %8493 = fadd fast float %8491, %8481
  %8494 = fmul fast float %8493, %8183
  %8495 = fadd fast float %8494, %8196
  br i1 %8492, label %8501, label %8496

; <label>:8496                                    ; preds = %8478
  %8497 = fsub fast float %8491, %8481
  %8498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8497)  ; FMax(a,b)
  %8499 = fmul fast float %8498, %8495
  %8500 = fadd fast float %8499, %8480
  br label %8507

; <label>:8501                                    ; preds = %8478
  %8502 = fsub fast float %8481, %8491
  %8503 = call float @dx.op.unary.f32(i32 6, float %8502)  ; FAbs(value)
  %8504 = fadd fast float %8503, %8479
  %8505 = fmul fast float %8503, %8495
  %8506 = fsub fast float %8480, %8505
  br label %8507

; <label>:8507                                    ; preds = %8501, %8496
  %8508 = phi float [ %8498, %8496 ], [ %8504, %8501 ]
  %8509 = phi float [ %8500, %8496 ], [ %8506, %8501 ]
  %8510 = fcmp fast olt float %8489, %8338
  %8511 = icmp slt i32 %8486, 3
  %8512 = and i1 %8511, %8510
  br i1 %8512, label %8478, label %8513

; <label>:8513                                    ; preds = %8507
  br label %8514

; <label>:8514                                    ; preds = %8513, %8471
  %8515 = phi float [ %8336, %8471 ], [ %8508, %8513 ]
  %8516 = phi float [ %8337, %8471 ], [ %8509, %8513 ]
  %8517 = fsub fast float %8252, %8515
  %8518 = select i1 %8254, float %8515, float %8517
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 0
  %8521 = extractvalue %dx.types.CBufRet.f32 %8519, 1
  %8522 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8523, 0
  %8525 = extractvalue %dx.types.CBufRet.f32 %8523, 1
  %8526 = extractvalue %dx.types.CBufRet.f32 %8523, 2
  %8527 = extractvalue %dx.types.CBufRet.f32 %8523, 3
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 3
  %8530 = call float @dx.op.binary.f32(i32 36, float %8516, float %8529)  ; FMin(a,b)
  %8531 = fmul fast float %8527, %8518
  %8532 = call float @dx.op.unary.f32(i32 7, float %8531)  ; Saturate(value)
  %8533 = fsub fast float %8524, %8520
  %8534 = fsub fast float %8525, %8521
  %8535 = fsub fast float %8526, %8522
  %8536 = fmul fast float %8532, %8533
  %8537 = fmul fast float %8532, %8534
  %8538 = fmul fast float %8532, %8535
  %8539 = fadd fast float %8536, %8520
  %8540 = fadd fast float %8537, %8521
  %8541 = fadd fast float %8538, %8522
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = fadd fast float %8544, %8543
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8548 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8549 = fadd fast float %8548, %8547
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fmul fast float %8546, %8530
  %8552 = fmul fast float %8551, %8550
  br label %8553

; <label>:8553                                    ; preds = %8514, %8433, %8268, %8250, %8248
  %8554 = phi float [ %8277, %8268 ], [ %8436, %8433 ], [ %8518, %8514 ], [ 0.000000e+00, %8248 ], [ 0.000000e+00, %8250 ]
  %8555 = phi float [ %8311, %8268 ], [ %8470, %8433 ], [ %8552, %8514 ], [ 0.000000e+00, %8248 ], [ 0.000000e+00, %8250 ]
  %8556 = phi float [ %8298, %8268 ], [ %8457, %8433 ], [ %8539, %8514 ], [ 0.000000e+00, %8248 ], [ 0.000000e+00, %8250 ]
  %8557 = phi float [ %8299, %8268 ], [ %8458, %8433 ], [ %8540, %8514 ], [ 0.000000e+00, %8248 ], [ 0.000000e+00, %8250 ]
  %8558 = phi float [ %8300, %8268 ], [ %8459, %8433 ], [ %8541, %8514 ], [ 0.000000e+00, %8248 ], [ 0.000000e+00, %8250 ]
  %8559 = fmul fast float %8191, %8555
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 2
  %8562 = fsub fast float %8198, %8561
  %8563 = fcmp fast olt float %8559, -2.000000e+01
  %8564 = call float @dx.op.unary.f32(i32 21, float %8559)  ; Exp(value)
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 3
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %8570 = fmul fast float %8567, %8562
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = fsub fast float 1.000000e+00, %8571
  %8573 = fmul fast float %8183, 5.000000e-01
  %8574 = fadd fast float %8573, 5.000000e-01
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fsub fast float 1.000000e+00, %8575
  %8577 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8572)  ; FMax(a,b)
  %8578 = fdiv fast float %8576, %8577
  %8579 = fsub fast float %8562, %8140
  %8580 = call float @dx.op.unary.f32(i32 6, float %8579)  ; FAbs(value)
  %8581 = fmul fast float %8580, %8566
  %8582 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8583 = fsub fast float 1.000000e+00, %8581
  %8584 = fmul fast float %8583, %8582
  %8585 = fadd fast float %8584, %8581
  %8586 = fmul fast float %8569, %8562
  %8587 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8588 = fsub fast float 1.000000e+00, %8585
  %8589 = fmul fast float %8588, %8587
  %8590 = fadd fast float %8589, %8585
  %8591 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8592 = fadd fast float %8564, -1.000000e+00
  %8593 = select i1 %8563, float -1.000000e+00, float %8592
  %8594 = fmul fast float %8591, %8593
  %8595 = fadd fast float %8594, 1.000000e+00
  %8596 = fsub fast float -0.000000e+00, %8594
  %8597 = fmul fast float %8556, %8596
  %8598 = fmul fast float %8557, %8596
  %8599 = fmul fast float %8558, %8596
  br label %8600

; <label>:8600                                    ; preds = %8553, %8149
  %8601 = phi float [ %8554, %8553 ], [ 0.000000e+00, %8149 ]
  %8602 = phi float [ %8595, %8553 ], [ 1.000000e+00, %8149 ]
  %8603 = phi float [ %8597, %8553 ], [ 0.000000e+00, %8149 ]
  %8604 = phi float [ %8598, %8553 ], [ 0.000000e+00, %8149 ]
  %8605 = phi float [ %8599, %8553 ], [ 0.000000e+00, %8149 ]
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8608 = fsub fast float 1.000000e+00, %8602
  %8609 = fmul fast float %8608, %8184
  %8610 = fmul fast float %8609, %8607
  %8611 = fsub fast float %8184, %8610
  br i1 %8177, label %8612, label %8641, !dx.controlflow.hints !169

; <label>:8612                                    ; preds = %8600
  %8613 = fmul fast float %8185, %8174
  %8614 = fadd fast float %8613, %8175
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = fmul fast float %8156, %8611
  %8617 = fsub fast float -0.000000e+00, %8616
  %8618 = fmul fast float %8157, %8611
  %8619 = fsub fast float -0.000000e+00, %8618
  %8620 = call float @dx.op.unary.f32(i32 21, float %8617)  ; Exp(value)
  %8621 = call float @dx.op.unary.f32(i32 21, float %8619)  ; Exp(value)
  %8622 = call float @dx.op.binary.f32(i32 35, float %8164, float %8620)  ; FMax(a,b)
  %8623 = call float @dx.op.binary.f32(i32 35, float %8164, float %8621)  ; FMax(a,b)
  %8624 = fsub fast float %8623, %8622
  %8625 = fmul fast float %8624, %8615
  %8626 = fadd fast float %8625, %8622
  %8627 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8628 = fsub fast float %8161, %8166
  %8629 = fsub fast float %8162, %8167
  %8630 = fsub fast float %8163, %8168
  %8631 = fmul fast float %8615, %8628
  %8632 = fmul fast float %8615, %8629
  %8633 = fmul fast float %8615, %8630
  %8634 = fadd fast float %8631, %8166
  %8635 = fadd fast float %8632, %8167
  %8636 = fadd fast float %8633, %8168
  %8637 = fsub fast float 1.000000e+00, %8627
  %8638 = fmul fast float %8637, %8634
  %8639 = fmul fast float %8637, %8635
  %8640 = fmul fast float %8637, %8636
  br label %8700

; <label>:8641                                    ; preds = %8600
  %8642 = fmul fast float %8611, %8173
  %8643 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  %8644 = fsub fast float 2.000000e+00, %8643
  %8645 = fmul fast float %8643, 9.921875e-01
  %8646 = fmul fast float %8645, %8644
  %8647 = fadd fast float %8646, 3.906250e-03
  %8648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8647, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8649 = extractvalue %dx.types.ResRet.f32 %8648, 0
  %8650 = fsub fast float %8643, %8649
  %8651 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8650)  ; FMax(a,b)
  %8652 = fmul fast float %8159, %8140
  %8653 = call float @dx.op.unary.f32(i32 6, float %8652)  ; FAbs(value)
  %8654 = fcmp fast ogt float %8653, 0x3EB0C6F7A0000000
  br i1 %8654, label %8655, label %8661, !dx.controlflow.hints !170

; <label>:8655                                    ; preds = %8641
  %8656 = fmul fast float %8652, 0xBFF7154760000000
  %8657 = call float @dx.op.unary.f32(i32 21, float %8656)  ; Exp(value)
  %8658 = fsub fast float 1.000000e+00, %8657
  %8659 = fdiv fast float %8658, %8652
  %8660 = fmul fast float %8659, %8169
  br label %8661

; <label>:8661                                    ; preds = %8655, %8641
  %8662 = phi float [ %8660, %8655 ], [ %8169, %8641 ]
  %8663 = fadd fast float %8662, %8171
  %8664 = fmul fast float %8663, %8651
  %8665 = fmul fast float %8156, %8664
  %8666 = fsub fast float -0.000000e+00, %8665
  %8667 = fmul fast float %8157, %8664
  %8668 = fsub fast float -0.000000e+00, %8667
  %8669 = fmul fast float %8158, %8664
  %8670 = fsub fast float -0.000000e+00, %8669
  %8671 = call float @dx.op.unary.f32(i32 21, float %8666)  ; Exp(value)
  %8672 = call float @dx.op.unary.f32(i32 21, float %8668)  ; Exp(value)
  %8673 = call float @dx.op.unary.f32(i32 21, float %8670)  ; Exp(value)
  %8674 = fmul fast float %8185, %8185
  %8675 = fadd fast float %8674, 1.000000e+00
  %8676 = fmul fast float %8675, 0x3FAE8EC8A0000000
  %8677 = fmul fast float %8676, %8166
  %8678 = fmul fast float %8676, %8167
  %8679 = fmul fast float %8676, %8168
  %8680 = fmul fast float %8185, %8164
  %8681 = fsub fast float 1.000000e+00, %8680
  %8682 = fmul fast float %8164, %8164
  %8683 = fsub fast float 1.000000e+00, %8682
  %8684 = fmul fast float %8683, 0x3FB45F3060000000
  %8685 = fmul fast float %8681, %8681
  %8686 = fdiv fast float 1.000000e+00, %8685
  %8687 = fmul fast float %8684, %8686
  %8688 = fmul fast float %8687, %8161
  %8689 = fmul fast float %8687, %8162
  %8690 = fmul fast float %8687, %8163
  %8691 = fadd fast float %8688, %8677
  %8692 = fadd fast float %8689, %8678
  %8693 = fadd fast float %8690, %8679
  %8694 = fsub fast float 1.000000e+00, %8671
  %8695 = fsub fast float 1.000000e+00, %8672
  %8696 = fsub fast float 1.000000e+00, %8673
  %8697 = fmul fast float %8691, %8694
  %8698 = fmul fast float %8692, %8695
  %8699 = fmul fast float %8693, %8696
  br label %8700

; <label>:8700                                    ; preds = %8661, %8612
  %8701 = phi float [ %8638, %8612 ], [ %8697, %8661 ]
  %8702 = phi float [ %8639, %8612 ], [ %8698, %8661 ]
  %8703 = phi float [ %8640, %8612 ], [ %8699, %8661 ]
  %8704 = phi float [ %8627, %8612 ], [ %8671, %8661 ]
  %8705 = phi float [ %8627, %8612 ], [ %8672, %8661 ]
  %8706 = phi float [ %8627, %8612 ], [ %8673, %8661 ]
  br i1 %8193, label %8707, label %8905, !dx.controlflow.hints !171

; <label>:8707                                    ; preds = %8700
  %8708 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8709 = fmul fast float %8708, %8608
  %8710 = fsub fast float %8603, %8701
  %8711 = fsub fast float %8604, %8702
  %8712 = fsub fast float %8605, %8703
  %8713 = fmul fast float %8709, %8710
  %8714 = fmul fast float %8709, %8711
  %8715 = fmul fast float %8709, %8712
  %8716 = fadd fast float %8713, %8701
  %8717 = fadd fast float %8714, %8702
  %8718 = fadd fast float %8715, %8703
  %8719 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8704)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8705)  ; FMax(a,b)
  %8721 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8706)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8602)  ; FMax(a,b)
  %8723 = call float @dx.op.binary.f32(i32 35, float %8601, float %8611)  ; FMax(a,b)
  %8724 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8723)  ; FMax(a,b)
  %8725 = fdiv fast float %8601, %8724
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fdiv fast float %8611, %8724
  %8728 = call float @dx.op.unary.f32(i32 7, float %8727)  ; Saturate(value)
  %8729 = fcmp fast une float %8722, 1.000000e+00
  br i1 %8729, label %8730, label %8743, !dx.controlflow.hints !172

; <label>:8730                                    ; preds = %8707
  %8731 = call float @dx.op.unary.f32(i32 23, float %8722)  ; Log(value)
  %8732 = fmul fast float %8731, 0x3FE62E4300000000
  %8733 = fmul fast float %8603, %8732
  %8734 = fsub fast float -0.000000e+00, %8733
  %8735 = fmul fast float %8604, %8732
  %8736 = fsub fast float -0.000000e+00, %8735
  %8737 = fmul fast float %8605, %8732
  %8738 = fsub fast float -0.000000e+00, %8737
  %8739 = fsub fast float 1.000000e+00, %8722
  %8740 = fdiv fast float %8734, %8739
  %8741 = fdiv fast float %8736, %8739
  %8742 = fdiv fast float %8738, %8739
  br label %8743

; <label>:8743                                    ; preds = %8730, %8707
  %8744 = phi float [ %8740, %8730 ], [ %8603, %8707 ]
  %8745 = phi float [ %8741, %8730 ], [ %8604, %8707 ]
  %8746 = phi float [ %8742, %8730 ], [ %8605, %8707 ]
  %8747 = phi float [ %8732, %8730 ], [ 0.000000e+00, %8707 ]
  %8748 = fcmp fast une float %8719, 1.000000e+00
  br i1 %8748, label %8749, label %8756, !dx.controlflow.hints !173

; <label>:8749                                    ; preds = %8743
  %8750 = call float @dx.op.unary.f32(i32 23, float %8719)  ; Log(value)
  %8751 = fmul fast float %8750, 0x3FE62E4300000000
  %8752 = fmul fast float %8716, %8751
  %8753 = fsub fast float -0.000000e+00, %8752
  %8754 = fsub fast float 1.000000e+00, %8719
  %8755 = fdiv fast float %8753, %8754
  br label %8756

; <label>:8756                                    ; preds = %8749, %8743
  %8757 = phi float [ %8755, %8749 ], [ %8716, %8743 ]
  %8758 = phi float [ %8751, %8749 ], [ 0.000000e+00, %8743 ]
  %8759 = fcmp fast une float %8720, 1.000000e+00
  br i1 %8759, label %8760, label %8767, !dx.controlflow.hints !173

; <label>:8760                                    ; preds = %8756
  %8761 = call float @dx.op.unary.f32(i32 23, float %8720)  ; Log(value)
  %8762 = fmul fast float %8761, 0x3FE62E4300000000
  %8763 = fmul fast float %8717, %8762
  %8764 = fsub fast float -0.000000e+00, %8763
  %8765 = fsub fast float 1.000000e+00, %8720
  %8766 = fdiv fast float %8764, %8765
  br label %8767

; <label>:8767                                    ; preds = %8760, %8756
  %8768 = phi float [ %8766, %8760 ], [ %8717, %8756 ]
  %8769 = phi float [ %8762, %8760 ], [ 0.000000e+00, %8756 ]
  %8770 = fcmp fast une float %8721, 1.000000e+00
  br i1 %8770, label %8771, label %8778, !dx.controlflow.hints !173

; <label>:8771                                    ; preds = %8767
  %8772 = call float @dx.op.unary.f32(i32 23, float %8721)  ; Log(value)
  %8773 = fmul fast float %8772, 0x3FE62E4300000000
  %8774 = fmul fast float %8718, %8773
  %8775 = fsub fast float -0.000000e+00, %8774
  %8776 = fsub fast float 1.000000e+00, %8721
  %8777 = fdiv fast float %8775, %8776
  br label %8778

; <label>:8778                                    ; preds = %8771, %8767
  %8779 = phi float [ %8777, %8771 ], [ %8718, %8767 ]
  %8780 = phi float [ %8773, %8771 ], [ 0.000000e+00, %8767 ]
  %8781 = fmul fast float %8744, %8728
  %8782 = fmul fast float %8745, %8728
  %8783 = fmul fast float %8746, %8728
  %8784 = fmul fast float %8747, %8728
  %8785 = fmul fast float %8757, %8726
  %8786 = fmul fast float %8768, %8726
  %8787 = fmul fast float %8779, %8726
  %8788 = fmul fast float %8758, %8726
  %8789 = fmul fast float %8769, %8726
  %8790 = fmul fast float %8780, %8726
  %8791 = fadd fast float %8785, %8781
  %8792 = fadd fast float %8786, %8782
  %8793 = fadd fast float %8787, %8783
  %8794 = fadd fast float %8788, %8784
  %8795 = fadd fast float %8789, %8784
  %8796 = fadd fast float %8790, %8784
  %8797 = fcmp fast une float %8794, 0.000000e+00
  br i1 %8797, label %8798, label %8805, !dx.controlflow.hints !174

; <label>:8798                                    ; preds = %8778
  %8799 = fmul fast float %8794, 0x3FF7154760000000
  %8800 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8791, %8801
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = fdiv fast float %8803, %8794
  br label %8805

; <label>:8805                                    ; preds = %8798, %8778
  %8806 = phi float [ %8800, %8798 ], [ 1.000000e+00, %8778 ]
  %8807 = phi float [ %8804, %8798 ], [ %8791, %8778 ]
  %8808 = fcmp fast une float %8795, 0.000000e+00
  br i1 %8808, label %8809, label %8816, !dx.controlflow.hints !174

; <label>:8809                                    ; preds = %8805
  %8810 = fmul fast float %8795, 0x3FF7154760000000
  %8811 = call float @dx.op.unary.f32(i32 21, float %8810)  ; Exp(value)
  %8812 = fsub fast float 1.000000e+00, %8811
  %8813 = fmul fast float %8792, %8812
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = fdiv fast float %8814, %8795
  br label %8816

; <label>:8816                                    ; preds = %8809, %8805
  %8817 = phi float [ %8811, %8809 ], [ 1.000000e+00, %8805 ]
  %8818 = phi float [ %8815, %8809 ], [ %8792, %8805 ]
  %8819 = fcmp fast une float %8796, 0.000000e+00
  br i1 %8819, label %8820, label %8827, !dx.controlflow.hints !174

; <label>:8820                                    ; preds = %8816
  %8821 = fmul fast float %8796, 0x3FF7154760000000
  %8822 = call float @dx.op.unary.f32(i32 21, float %8821)  ; Exp(value)
  %8823 = fsub fast float 1.000000e+00, %8822
  %8824 = fmul fast float %8793, %8823
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fdiv fast float %8825, %8796
  br label %8827

; <label>:8827                                    ; preds = %8820, %8816
  %8828 = phi float [ %8822, %8820 ], [ 1.000000e+00, %8816 ]
  %8829 = phi float [ %8826, %8820 ], [ %8793, %8816 ]
  %8830 = fcmp fast ogt float %8726, %8728
  br i1 %8830, label %8831, label %8851

; <label>:8831                                    ; preds = %8827
  %8832 = fsub fast float 1.000000e+00, %8728
  %8833 = fmul fast float %8744, %8832
  %8834 = fmul fast float %8745, %8832
  %8835 = fmul fast float %8746, %8832
  %8836 = fmul fast float %8747, %8832
  %8837 = fcmp fast une float %8836, 0.000000e+00
  br i1 %8837, label %8838, label %8889, !dx.controlflow.hints !175

; <label>:8838                                    ; preds = %8831
  %8839 = fmul fast float %8836, 0x3FF7154760000000
  %8840 = call float @dx.op.unary.f32(i32 21, float %8839)  ; Exp(value)
  %8841 = fsub fast float 1.000000e+00, %8840
  %8842 = fmul fast float %8833, %8841
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fmul fast float %8834, %8841
  %8845 = fsub fast float -0.000000e+00, %8844
  %8846 = fmul fast float %8835, %8841
  %8847 = fsub fast float -0.000000e+00, %8846
  %8848 = fdiv fast float %8843, %8836
  %8849 = fdiv fast float %8845, %8836
  %8850 = fdiv fast float %8847, %8836
  br label %8889

; <label>:8851                                    ; preds = %8827
  %8852 = fsub fast float 1.000000e+00, %8726
  %8853 = fmul fast float %8757, %8852
  %8854 = fmul fast float %8768, %8852
  %8855 = fmul fast float %8779, %8852
  %8856 = fmul fast float %8758, %8852
  %8857 = fmul fast float %8769, %8852
  %8858 = fmul fast float %8780, %8852
  %8859 = fcmp fast une float %8856, 0.000000e+00
  br i1 %8859, label %8860, label %8867, !dx.controlflow.hints !174

; <label>:8860                                    ; preds = %8851
  %8861 = fmul fast float %8856, 0x3FF7154760000000
  %8862 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = fmul fast float %8853, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fdiv fast float %8865, %8856
  br label %8867

; <label>:8867                                    ; preds = %8860, %8851
  %8868 = phi float [ %8866, %8860 ], [ %8853, %8851 ]
  %8869 = phi float [ %8862, %8860 ], [ 1.000000e+00, %8851 ]
  %8870 = fcmp fast une float %8857, 0.000000e+00
  br i1 %8870, label %8871, label %8878, !dx.controlflow.hints !174

; <label>:8871                                    ; preds = %8867
  %8872 = fmul fast float %8857, 0x3FF7154760000000
  %8873 = call float @dx.op.unary.f32(i32 21, float %8872)  ; Exp(value)
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = fmul fast float %8854, %8874
  %8876 = fsub fast float -0.000000e+00, %8875
  %8877 = fdiv fast float %8876, %8857
  br label %8878

; <label>:8878                                    ; preds = %8871, %8867
  %8879 = phi float [ %8877, %8871 ], [ %8854, %8867 ]
  %8880 = phi float [ %8873, %8871 ], [ 1.000000e+00, %8867 ]
  %8881 = fcmp fast une float %8858, 0.000000e+00
  br i1 %8881, label %8882, label %8889, !dx.controlflow.hints !174

; <label>:8882                                    ; preds = %8878
  %8883 = fmul fast float %8858, 0x3FF7154760000000
  %8884 = call float @dx.op.unary.f32(i32 21, float %8883)  ; Exp(value)
  %8885 = fsub fast float 1.000000e+00, %8884
  %8886 = fmul fast float %8855, %8885
  %8887 = fsub fast float -0.000000e+00, %8886
  %8888 = fdiv fast float %8887, %8858
  br label %8889

; <label>:8889                                    ; preds = %8882, %8878, %8838, %8831
  %8890 = phi float [ %8888, %8882 ], [ %8850, %8838 ], [ %8835, %8831 ], [ %8855, %8878 ]
  %8891 = phi float [ %8879, %8882 ], [ %8849, %8838 ], [ %8834, %8831 ], [ %8879, %8878 ]
  %8892 = phi float [ %8868, %8882 ], [ %8848, %8838 ], [ %8833, %8831 ], [ %8868, %8878 ]
  %8893 = phi float [ %8884, %8882 ], [ %8840, %8838 ], [ 1.000000e+00, %8831 ], [ 1.000000e+00, %8878 ]
  %8894 = phi float [ %8880, %8882 ], [ %8840, %8838 ], [ 1.000000e+00, %8831 ], [ %8880, %8878 ]
  %8895 = phi float [ %8869, %8882 ], [ %8840, %8838 ], [ 1.000000e+00, %8831 ], [ %8869, %8878 ]
  %8896 = fmul fast float %8895, %8807
  %8897 = fmul fast float %8894, %8818
  %8898 = fmul fast float %8893, %8829
  %8899 = fadd fast float %8896, %8892
  %8900 = fadd fast float %8897, %8891
  %8901 = fadd fast float %8898, %8890
  %8902 = fmul fast float %8895, %8806
  %8903 = fmul fast float %8894, %8817
  %8904 = fmul fast float %8893, %8828
  br label %8905

; <label>:8905                                    ; preds = %8889, %8700
  %8906 = phi float [ %8904, %8889 ], [ %8706, %8700 ]
  %8907 = phi float [ %8903, %8889 ], [ %8705, %8700 ]
  %8908 = phi float [ %8902, %8889 ], [ %8704, %8700 ]
  %8909 = phi float [ %8901, %8889 ], [ %8703, %8700 ]
  %8910 = phi float [ %8900, %8889 ], [ %8702, %8700 ]
  %8911 = phi float [ %8899, %8889 ], [ %8701, %8700 ]
  %8912 = fmul fast float %8911, %7867
  %8913 = fmul fast float %8910, %7867
  %8914 = fmul fast float %8909, %7867
  %8915 = fmul fast float %8908, %8148
  %8916 = call float @dx.op.dot3.f32(i32 55, float %8908, float %8907, float %8906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8917 = call float @dx.op.dot3.f32(i32 55, float %8912, float %8913, float %8914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8918 = select i1 %261, float %8916, float %8908
  %8919 = select i1 %261, float %8916, float %8907
  %8920 = select i1 %261, float 1.000000e+00, float %8906
  %8921 = select i1 %261, float %8917, float %8912
  %8922 = select i1 %261, float 0.000000e+00, float %8913
  %8923 = select i1 %261, float 0.000000e+00, float %8914
  %8924 = fmul fast float %8918, %8142
  %8925 = fmul fast float %8919, %8143
  %8926 = fmul fast float %8920, %8144
  %8927 = fadd fast float %8924, %8921
  %8928 = fadd fast float %8925, %8922
  %8929 = fadd fast float %8923, %8926
  %8930 = fmul fast float %8918, %8145
  %8931 = fmul fast float %8919, %8146
  %8932 = fmul fast float %8920, %8147
  %8933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.i32 %8933, 0
  %8935 = icmp eq i32 %8934, 0
  br i1 %8935, label %9303, label %8936, !dx.controlflow.hints !176

; <label>:8936                                    ; preds = %8905
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 2
  %8939 = extractvalue %dx.types.CBufRet.f32 %8937, 3
  %8940 = fmul fast float %8938, %104
  %8941 = fmul fast float %8939, %105
  %8942 = fmul fast float %8940, 2.000000e+00
  %8943 = fmul fast float %8941, 2.000000e+00
  %8944 = fsub fast float 1.000000e+00, %8942
  %8945 = fsub fast float 1.000000e+00, %8943
  %8946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.f32 %8946, 0
  %8948 = extractvalue %dx.types.CBufRet.f32 %8946, 1
  %8949 = extractvalue %dx.types.CBufRet.f32 %8946, 2
  %8950 = fmul fast float %8944, %8947
  %8951 = fmul fast float %8944, %8948
  %8952 = fmul fast float %8944, %8949
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8957 = fmul fast float %8945, %8954
  %8958 = fmul fast float %8945, %8955
  %8959 = fmul fast float %8945, %8956
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = fadd fast float %8957, %8961
  %8965 = fadd fast float %8964, %8950
  %8966 = fadd fast float %8958, %8962
  %8967 = fadd fast float %8966, %8951
  %8968 = fadd fast float %8959, %8963
  %8969 = fadd fast float %8968, %8952
  %8970 = fmul fast float %8965, %8141
  %8971 = fmul fast float %8967, %8141
  %8972 = fmul fast float %8969, %8141
  %8973 = fmul fast float %8970, %8970
  %8974 = fmul fast float %8971, %8971
  %8975 = fadd fast float %8973, %8974
  %8976 = fmul fast float %8972, %8972
  %8977 = fadd fast float %8975, %8976
  %8978 = call float @dx.op.unary.f32(i32 24, float %8977)  ; Sqrt(value)
  %8979 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %8980 = fsub fast float %8978, %8979
  %8981 = extractvalue %dx.types.CBufRet.f32 %7868, 2
  %8982 = fmul fast float %8980, %8981
  %8983 = call float @dx.op.unary.f32(i32 7, float %8982)  ; Saturate(value)
  %8984 = fadd fast float %8983, -5.000000e-01
  %8985 = fmul fast float %8984, 2.000000e+00
  %8986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.f32 %8986, 2
  %8988 = call float @dx.op.binary.f32(i32 36, float %8987, float %8985)  ; FMin(a,b)
  %8989 = fsub fast float -0.000000e+00, %8987
  %8990 = fcmp fast ogt float %8988, %8989
  br i1 %8990, label %8991, label %9303, !dx.controlflow.hints !177

; <label>:8991                                    ; preds = %8936
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 3
  %8994 = fcmp fast ogt float %8993, 0.000000e+00
  br i1 %8994, label %8995, label %9070, !dx.controlflow.hints !178

; <label>:8995                                    ; preds = %8991
  %8996 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8997 = extractvalue %dx.types.Dimensions %8996, 0
  %8998 = sitofp i32 %8997 to float
  %8999 = extractvalue %dx.types.Dimensions %8996, 1
  %9000 = sitofp i32 %8999 to float
  %9001 = fmul fast float %8940, %8998
  %9002 = fmul fast float %8941, %9000
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9005 = fsub fast float -0.000000e+00, %9004
  %9006 = fptoui float %9005 to i32
  %9007 = fptoui float %9001 to i32
  %9008 = fptoui float %9002 to i32
  %9009 = and i32 %9006, 31
  %9010 = lshr i32 %9007, %9009
  %9011 = lshr i32 %9008, %9009
  %9012 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9006, i32 %9010, i32 %9011, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9013 = extractvalue %dx.types.ResRet.f32 %9012, 0
  %9014 = fcmp fast olt float %9013, -1.000000e+00
  %9015 = fcmp fast ogt float %9013, -1.000000e+00
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 1
  %9018 = select i1 %9015, float %9017, float 1.000000e+00
  %9019 = fadd fast float %9013, 1.000000e+00
  %9020 = fmul fast float %9018, %9019
  %9021 = call float @dx.op.unary.f32(i32 6, float %9020)  ; FAbs(value)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9023 = fcmp fast oge float %9021, %9022
  %9024 = select i1 %9023, float 0x4197782600000000, float %9021
  %9025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9025, 0
  %9027 = extractvalue %dx.types.CBufRet.f32 %9025, 1
  %9028 = extractvalue %dx.types.CBufRet.f32 %9025, 2
  %9029 = select i1 %9014, float %9026, float %8947
  %9030 = select i1 %9014, float %9027, float %8948
  %9031 = select i1 %9014, float %9028, float %8949
  %9032 = fmul fast float %9029, %8944
  %9033 = fmul fast float %9030, %8944
  %9034 = fmul fast float %9031, %8944
  %9035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.CBufRet.f32 %9035, 1
  %9038 = extractvalue %dx.types.CBufRet.f32 %9035, 2
  %9039 = select i1 %9014, float %9036, float %8954
  %9040 = select i1 %9014, float %9037, float %8955
  %9041 = select i1 %9014, float %9038, float %8956
  %9042 = fmul fast float %9039, %8945
  %9043 = fmul fast float %9040, %8945
  %9044 = fmul fast float %9041, %8945
  %9045 = fadd fast float %9042, %9032
  %9046 = fadd fast float %9043, %9033
  %9047 = fadd fast float %9044, %9034
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9050 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9051 = extractvalue %dx.types.CBufRet.f32 %9048, 2
  %9052 = select i1 %9014, float %9049, float %8961
  %9053 = select i1 %9014, float %9050, float %8962
  %9054 = select i1 %9014, float %9051, float %8963
  %9055 = fadd fast float %9045, %9052
  %9056 = fadd fast float %9046, %9053
  %9057 = fadd fast float %9047, %9054
  %9058 = fmul fast float %9055, %9024
  %9059 = fmul fast float %9056, %9024
  %9060 = fmul fast float %9057, %9024
  %9061 = fmul fast float %9058, %9058
  %9062 = fmul fast float %9059, %9059
  %9063 = fadd fast float %9061, %9062
  %9064 = fmul fast float %9060, %9060
  %9065 = fadd fast float %9063, %9064
  %9066 = call float @dx.op.unary.f32(i32 24, float %9065)  ; Sqrt(value)
  %9067 = fsub fast float %9066, %8979
  %9068 = fmul fast float %9067, %8981
  %9069 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  br label %9070

; <label>:9070                                    ; preds = %8995, %8991
  %9071 = phi float [ %9069, %8995 ], [ 1.000000e+00, %8991 ]
  %9072 = fmul fast float %8988, 5.000000e-01
  %9073 = fadd fast float %9072, 5.000000e-01
  %9074 = call float @dx.op.unary.f32(i32 22, float %9073)  ; Frc(value)
  %9075 = call float @dx.op.unary.f32(i32 27, float %9074)  ; Round_ni(value)
  %9076 = call float @dx.op.unary.f32(i32 22, float %9074)  ; Frc(value)
  %9077 = fmul fast float %9076, 2.000000e+00
  %9078 = fadd fast float %9077, -1.000000e+00
  %9079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8940, float %8941, float %9075, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9080 = extractvalue %dx.types.ResRet.f32 %9079, 0
  %9081 = extractvalue %dx.types.ResRet.f32 %9079, 1
  %9082 = extractvalue %dx.types.ResRet.f32 %9079, 2
  %9083 = extractvalue %dx.types.ResRet.f32 %9079, 3
  %9084 = fadd fast float %9080, -5.000000e-01
  %9085 = fadd fast float %9082, -5.000000e-01
  %9086 = fmul fast float %9084, 0xBFD5555560000000
  %9087 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9085, float %9086)  ; FMad(a,b,c)
  %9088 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9081, float 0.000000e+00)  ; FMad(a,b,c)
  %9089 = fadd fast float %9088, %9083
  %9090 = fmul fast float %9084, -7.500000e-01
  %9091 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9085, float %9090)  ; FMad(a,b,c)
  %9092 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9081, float 0.000000e+00)  ; FMad(a,b,c)
  %9093 = fadd fast float %9092, %9083
  %9094 = call float @dx.op.binary.f32(i32 35, float %9087, float -1.000000e+00)  ; FMax(a,b)
  %9095 = call float @dx.op.binary.f32(i32 35, float %9089, float -1.000000e+00)  ; FMax(a,b)
  %9096 = call float @dx.op.binary.f32(i32 35, float %9091, float -1.000000e+00)  ; FMax(a,b)
  %9097 = call float @dx.op.binary.f32(i32 35, float %9093, float -1.000000e+00)  ; FMax(a,b)
  %9098 = call float @dx.op.binary.f32(i32 36, float %9094, float 1.000000e+00)  ; FMin(a,b)
  %9099 = call float @dx.op.binary.f32(i32 36, float %9095, float 1.000000e+00)  ; FMin(a,b)
  %9100 = call float @dx.op.binary.f32(i32 36, float %9096, float 1.000000e+00)  ; FMin(a,b)
  %9101 = call float @dx.op.binary.f32(i32 36, float %9097, float 1.000000e+00)  ; FMin(a,b)
  %9102 = fcmp fast olt float %9098, 0x3FEFFF8020000000
  br i1 %9102, label %9103, label %9218, !dx.controlflow.hints !179

; <label>:9103                                    ; preds = %9070
  %9104 = extractvalue %dx.types.CBufRet.f32 %8986, 3
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9109 = extractvalue %dx.types.CBufRet.f32 %9105, 3
  %9110 = fsub fast float %9106, %9098
  %9111 = fsub fast float %9107, %9099
  %9112 = fsub fast float %9108, %9100
  %9113 = fsub fast float %9109, %9101
  %9114 = fmul fast float %9110, %9104
  %9115 = fmul fast float %9111, %9104
  %9116 = fmul fast float %9112, %9104
  %9117 = fmul fast float %9113, %9104
  %9118 = fadd fast float %9114, %9098
  %9119 = fadd fast float %9115, %9099
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fadd fast float %9116, %9100
  %9122 = fadd fast float %9117, %9101
  %9123 = fmul fast float %9118, %9118
  %9124 = fsub fast float %9119, %9123
  %9125 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9124)  ; FMax(a,b)
  %9126 = fdiv fast float 1.000000e+00, %9125
  %9127 = fmul fast float %9119, %9118
  %9128 = fsub fast float %9121, %9127
  %9129 = fsub fast float %9078, %9118
  %9130 = fmul fast float %9078, %9078
  %9131 = fsub fast float %9130, %9119
  %9132 = fmul fast float %9129, %9126
  %9133 = fmul fast float %9132, %9128
  %9134 = fsub fast float %9131, %9133
  %9135 = fmul fast float %9119, %9119
  %9136 = fsub fast float %9122, %9135
  %9137 = fmul fast float %9128, %9128
  %9138 = fmul fast float %9137, %9126
  %9139 = fsub fast float %9136, %9138
  %9140 = fdiv fast float %9134, %9139
  %9141 = fmul fast float %9128, %9140
  %9142 = fsub fast float %9129, %9141
  %9143 = fmul fast float %9142, %9126
  %9144 = fmul fast float %9143, %9118
  %9145 = fsub fast float 1.000000e+00, %9144
  %9146 = fmul fast float %9119, %9140
  %9147 = fsub fast float %9145, %9146
  %9148 = fmul fast float %9143, %9143
  %9149 = fmul fast float %9140, 4.000000e+00
  %9150 = fmul fast float %9149, %9147
  %9151 = fsub fast float %9148, %9150
  %9152 = call float @dx.op.unary.f32(i32 24, float %9151)  ; Sqrt(value)
  %9153 = fcmp fast oge float %9143, 0.000000e+00
  %9154 = fsub fast float -0.000000e+00, %9152
  %9155 = select i1 %9153, float %9154, float %9152
  %9156 = fsub fast float %9155, %9143
  %9157 = fdiv fast float %9156, %9140
  %9158 = fdiv fast float %9147, %9156
  %9159 = fmul fast float %9157, 5.000000e-01
  %9160 = fmul fast float %9158, 2.000000e+00
  %9161 = select i1 %9153, float %9159, float %9160
  %9162 = select i1 %9153, float %9160, float %9159
  %9163 = call float @dx.op.binary.f32(i32 35, float %9161, float %9162)  ; FMax(a,b)
  %9164 = call float @dx.op.binary.f32(i32 36, float %9161, float %9162)  ; FMin(a,b)
  %9165 = fcmp fast ogt float %9078, %9164
  br i1 %9165, label %9166, label %9176

; <label>:9166                                    ; preds = %9103
  %9167 = fsub fast float %9078, %9164
  %9168 = fsub fast float %9163, %9164
  %9169 = fmul fast float %9167, %9168
  %9170 = fmul fast float %9163, %9078
  %9171 = fadd fast float %9163, %9078
  %9172 = fmul fast float %9171, %9118
  %9173 = fadd fast float %9170, %9119
  %9174 = fsub fast float %9173, %9172
  %9175 = fdiv fast float %9174, %9169
  br label %9176

; <label>:9176                                    ; preds = %9166, %9103
  %9177 = phi float [ %9175, %9166 ], [ 0.000000e+00, %9103 ]
  %9178 = fcmp fast ogt float %9078, %9163
  %9179 = fsub fast float %9078, %9163
  br i1 %9178, label %9180, label %9190

; <label>:9180                                    ; preds = %9176
  %9181 = fsub fast float %9163, %9164
  %9182 = fmul fast float %9181, %9179
  %9183 = fmul fast float %9164, %9078
  %9184 = fadd fast float %9164, %9078
  %9185 = fmul fast float %9184, %9118
  %9186 = fsub fast float %9120, %9183
  %9187 = fadd fast float %9186, %9185
  %9188 = fdiv fast float %9187, %9182
  %9189 = fadd fast float %9188, %9177
  br label %9190

; <label>:9190                                    ; preds = %9180, %9176
  %9191 = phi float [ %9189, %9180 ], [ %9177, %9176 ]
  %9192 = fsub fast float %9078, %9164
  %9193 = fmul fast float %9192, %9179
  %9194 = fmul fast float %9164, %9163
  %9195 = fadd fast float %9164, %9163
  %9196 = fmul fast float %9195, %9118
  %9197 = fadd fast float %9194, %9119
  %9198 = fsub fast float %9197, %9196
  %9199 = fdiv fast float %9198, %9193
  %9200 = call float @dx.op.unary.f32(i32 7, float %9191)  ; Saturate(value)
  %9201 = fcmp fast oeq float %7869, 0.000000e+00
  %9202 = extractvalue %dx.types.CBufRet.f32 %8986, 0
  %9203 = fcmp fast oeq float %9202, 0.000000e+00
  %9204 = or i1 %9201, %9203
  %9205 = fmul fast float %9202, 2.000000e+00
  %9206 = fadd fast float %8987, %8988
  %9207 = fdiv fast float %9206, %9205
  %9208 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  %9209 = fmul fast float %9208, 2.000000e+00
  %9210 = fsub fast float 3.000000e+00, %9209
  %9211 = fmul fast float %9208, %9208
  %9212 = fmul fast float %9211, %9210
  %9213 = select i1 %9204, float 1.000000e+00, float %9212
  %9214 = fmul fast float %9199, %7869
  %9215 = fadd fast float %9200, %9214
  %9216 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9217 = fmul fast float %9213, %9216
  br label %9218

; <label>:9218                                    ; preds = %9190, %9070
  %9219 = phi float [ %9217, %9190 ], [ 0.000000e+00, %9070 ]
  %9220 = fsub fast float 1.000000e+00, %9219
  %9221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8940, float %8941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9222 = extractvalue %dx.types.ResRet.f32 %9221, 0
  %9223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.i32 %9223, 2
  %9225 = icmp eq i32 %9224, 0
  br i1 %9225, label %9231, label %9226

; <label>:9226                                    ; preds = %9218
  %9227 = call float @dx.op.unary.f32(i32 7, float %9219)  ; Saturate(value)
  %9228 = fadd fast float %9222, -1.000000e+00
  %9229 = fmul fast float %9227, %9228
  %9230 = fadd fast float %9229, 1.000000e+00
  br label %9231

; <label>:9231                                    ; preds = %9226, %9218
  %9232 = phi float [ %9230, %9226 ], [ %9220, %9218 ]
  br i1 %8994, label %9233, label %9251

; <label>:9233                                    ; preds = %9231
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9236 = fsub fast float %9071, %9235
  %9237 = call float @dx.op.unary.f32(i32 7, float %9236)  ; Saturate(value)
  %9238 = fsub fast float %9071, %8993
  %9239 = call float @dx.op.unary.f32(i32 7, float %9238)  ; Saturate(value)
  %9240 = fsub fast float %9237, %9239
  %9241 = fsub fast float %9073, %9239
  %9242 = fdiv fast float %9241, %9240
  %9243 = call float @dx.op.unary.f32(i32 7, float %9242)  ; Saturate(value)
  %9244 = fmul fast float %9243, 2.000000e+00
  %9245 = fsub fast float 3.000000e+00, %9244
  %9246 = fsub fast float %9222, %9232
  %9247 = fmul fast float %9243, %9243
  %9248 = fmul fast float %9247, %9246
  %9249 = fmul fast float %9248, %9245
  %9250 = fadd fast float %9249, %9232
  br label %9251

; <label>:9251                                    ; preds = %9233, %9231
  %9252 = phi float [ %9250, %9233 ], [ %9232, %9231 ]
  %9253 = call float @dx.op.binary.f32(i32 35, float %9222, float %9252)  ; FMax(a,b)
  %9254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9255 = extractvalue %dx.types.CBufRet.i32 %9254, 2
  %9256 = and i32 %9255, 1
  %9257 = icmp eq i32 %9256, 0
  %9258 = fcmp fast une float %9253, 1.000000e+00
  %9259 = and i1 %9258, %9257
  br i1 %9259, label %9260, label %9279

; <label>:9260                                    ; preds = %9251
  %9261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8940, float %8941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9262 = extractvalue %dx.types.ResRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.ResRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.ResRet.f32 %9261, 2
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 1
  %9267 = fmul fast float %9266, %9262
  %9268 = fmul fast float %9266, %9263
  %9269 = fmul fast float %9266, %9264
  %9270 = fcmp fast ogt float %9222, 0x3FEFFF2E40000000
  %9271 = fsub fast float 1.000000e+00, %9253
  %9272 = fsub fast float 1.000000e+00, %9222
  %9273 = fdiv fast float %9271, %9272
  %9274 = call float @dx.op.unary.f32(i32 7, float %9273)  ; Saturate(value)
  %9275 = select i1 %9270, float 0.000000e+00, float %9274
  %9276 = fmul fast float %9267, %9275
  %9277 = fmul fast float %9268, %9275
  %9278 = fmul fast float %9269, %9275
  br label %9279

; <label>:9279                                    ; preds = %9260, %9251
  %9280 = phi float [ 0.000000e+00, %9251 ], [ %9276, %9260 ]
  %9281 = phi float [ 0.000000e+00, %9251 ], [ %9277, %9260 ]
  %9282 = phi float [ 0.000000e+00, %9251 ], [ %9278, %9260 ]
  %9283 = fmul fast float %9280, %7867
  %9284 = fmul fast float %9281, %7867
  %9285 = fmul fast float %9282, %7867
  %9286 = fmul fast float %9253, %8915
  %9287 = call float @dx.op.dot3.f32(i32 55, float %9253, float %9253, float %9253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9288 = call float @dx.op.dot3.f32(i32 55, float %9283, float %9284, float %9285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9289 = select i1 %261, float %9287, float %9253
  %9290 = select i1 %261, float 1.000000e+00, float %9253
  %9291 = select i1 %261, float %9288, float %9283
  %9292 = select i1 %261, float 0.000000e+00, float %9284
  %9293 = select i1 %261, float 0.000000e+00, float %9285
  %9294 = fmul fast float %9289, %8927
  %9295 = fmul fast float %9289, %8928
  %9296 = fmul fast float %9290, %8929
  %9297 = fadd fast float %9294, %9291
  %9298 = fadd fast float %9295, %9292
  %9299 = fadd fast float %9293, %9296
  %9300 = fmul fast float %9289, %8930
  %9301 = fmul fast float %9289, %8931
  %9302 = fmul fast float %9290, %8932
  br label %9303

; <label>:9303                                    ; preds = %9279, %8936, %8905, %8137
  %9304 = phi float [ %8142, %8137 ], [ %8927, %8905 ], [ %9297, %9279 ], [ %8927, %8936 ]
  %9305 = phi float [ %8143, %8137 ], [ %8928, %8905 ], [ %9298, %9279 ], [ %8928, %8936 ]
  %9306 = phi float [ %8144, %8137 ], [ %8929, %8905 ], [ %9299, %9279 ], [ %8929, %8936 ]
  %9307 = phi float [ %8145, %8137 ], [ %8930, %8905 ], [ %9300, %9279 ], [ %8930, %8936 ]
  %9308 = phi float [ %8146, %8137 ], [ %8931, %8905 ], [ %9301, %9279 ], [ %8931, %8936 ]
  %9309 = phi float [ %8147, %8137 ], [ %8932, %8905 ], [ %9302, %9279 ], [ %8932, %8936 ]
  %9310 = phi float [ %8148, %8137 ], [ %8915, %8905 ], [ %9286, %9279 ], [ %8915, %8936 ]
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 2
  %9313 = extractvalue %dx.types.CBufRet.f32 %9311, 3
  %9314 = fmul fast float %9312, %104
  %9315 = fmul fast float %9313, %105
  %9316 = call float @dx.op.unary.f32(i32 7, float %9314)  ; Saturate(value)
  %9317 = call float @dx.op.unary.f32(i32 7, float %9315)  ; Saturate(value)
  %9318 = select i1 %7879, i32 2, i32 0
  %9319 = or i32 %9318, 1
  %9320 = uitofp i32 %9319 to float
  %9321 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9316, float %9317, float %9320, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9322 = extractvalue %dx.types.ResRet.f32 %9321, 0
  %9323 = extractvalue %dx.types.ResRet.f32 %9321, 1
  %9324 = extractvalue %dx.types.ResRet.f32 %9321, 2
  %9325 = extractvalue %dx.types.ResRet.f32 %9321, 3
  %9326 = add nuw nsw i32 %9318, 2
  %9327 = uitofp i32 %9326 to float
  %9328 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9316, float %9317, float %9327, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9329 = extractvalue %dx.types.ResRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.ResRet.f32 %9328, 1
  %9331 = extractvalue %dx.types.ResRet.f32 %9328, 2
  %9332 = extractvalue %dx.types.ResRet.f32 %9328, 3
  %9333 = call float @dx.op.binary.f32(i32 35, float %9323, float %9324)  ; FMax(a,b)
  %9334 = call float @dx.op.binary.f32(i32 35, float %9322, float %9333)  ; FMax(a,b)
  %9335 = call float @dx.op.binary.f32(i32 35, float %9334, float %9325)  ; FMax(a,b)
  %9336 = call float @dx.op.binary.f32(i32 36, float %9330, float %9331)  ; FMin(a,b)
  %9337 = call float @dx.op.binary.f32(i32 36, float %9329, float %9336)  ; FMin(a,b)
  %9338 = call float @dx.op.binary.f32(i32 36, float %9337, float %9332)  ; FMin(a,b)
  %9339 = fmul fast float %9335, 2.550000e+02
  %9340 = fadd fast float %9339, 0x3F70101020000000
  %9341 = fptoui float %9340 to i32
  %9342 = fmul fast float %9338, 2.550000e+02
  %9343 = fadd fast float %9342, 0x3F70101020000000
  %9344 = fptoui float %9343 to i32
  %9345 = icmp ult i32 %9341, %9344
  br i1 %9345, label %9346, label %9515

; <label>:9346                                    ; preds = %9303
  %9347 = fcmp fast ogt float %91, 9.843750e-01
  %9348 = fadd fast float %8141, -4.000000e+00
  %9349 = select i1 %9347, float -4.000000e+00, float %9348
  %9350 = call float @dx.op.binary.f32(i32 35, float %9349, float 0.000000e+00)  ; FMax(a,b)
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 0
  %9353 = fadd fast float %9352, %9350
  %9354 = extractvalue %dx.types.CBufRet.f32 %9351, 2
  %9355 = fmul fast float %9353, %9354
  %9356 = call float @dx.op.unary.f32(i32 23, float %9355)  ; Log(value)
  %9357 = extractvalue %dx.types.CBufRet.f32 %9351, 3
  %9358 = fmul fast float %9357, %9356
  %9359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.f32 %9359, 2
  %9361 = fmul fast float %9358, %9360
  %9362 = call float @dx.op.unary.f32(i32 7, float %9361)  ; Saturate(value)
  %9363 = uitofp i32 %9341 to float
  %9364 = uitofp i32 %9344 to float
  %9365 = fadd fast float %9363, 5.000000e-01
  %9366 = fadd fast float %9364, 5.000000e-01
  %9367 = fmul fast float %9360, %9365
  %9368 = fmul fast float %9360, %9366
  %9369 = fadd fast float %9367, 0x3F0FFB4800000000
  %9370 = fadd fast float %9368, 0xBF0FFB4800000000
  %9371 = call float @dx.op.binary.f32(i32 35, float %9362, float %9369)  ; FMax(a,b)
  %9372 = call float @dx.op.binary.f32(i32 36, float %9371, float %9370)  ; FMin(a,b)
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9377 = select i1 %7879, float %9376, float 0.000000e+00
  %9378 = fmul fast float %9374, %9372
  %9379 = fadd fast float %9377, %9378
  %9380 = fadd fast float %9377, %9375
  %9381 = fsub fast float %9374, %9375
  %9382 = fadd fast float %9381, %9377
  %9383 = call float @dx.op.binary.f32(i32 35, float %9379, float %9380)  ; FMax(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9383, float %9382)  ; FMin(a,b)
  %9385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9316, float %9317, float %9384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9386 = extractvalue %dx.types.ResRet.f32 %9385, 0
  %9387 = extractvalue %dx.types.ResRet.f32 %9385, 1
  %9388 = extractvalue %dx.types.ResRet.f32 %9385, 2
  %9389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.i32 %9389, 0
  %9391 = extractvalue %dx.types.CBufRet.i32 %9389, 1
  %9392 = uitofp i32 %9390 to float
  %9393 = uitofp i32 %9391 to float
  %9394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9394, 0
  %9396 = extractvalue %dx.types.CBufRet.f32 %9394, 1
  %9397 = fmul fast float %9392, %9316
  %9398 = fmul fast float %9393, %9317
  %9399 = fadd fast float %9397, -5.000000e-01
  %9400 = fadd fast float %9398, -5.000000e-01
  %9401 = call float @dx.op.unary.f32(i32 22, float %9399)  ; Frc(value)
  %9402 = call float @dx.op.unary.f32(i32 22, float %9400)  ; Frc(value)
  %9403 = fmul fast float %9401, %9401
  %9404 = fmul fast float %9403, %9401
  %9405 = fsub fast float 3.000000e+00, %9401
  %9406 = fmul fast float %9403, %9405
  %9407 = fmul fast float %9401, 3.000000e+00
  %9408 = fmul fast float %9404, 3.000000e+00
  %9409 = fmul fast float %9403, 6.000000e+00
  %9410 = fsub fast float %9408, %9409
  %9411 = fadd fast float %9410, 4.000000e+00
  %9412 = fmul fast float %9411, 0x3FC5555560000000
  %9413 = fmul fast float %9404, -3.000000e+00
  %9414 = fadd fast float %9403, %9401
  %9415 = fmul fast float %9414, 3.000000e+00
  %9416 = fadd fast float %9413, 1.000000e+00
  %9417 = fadd fast float %9416, %9415
  %9418 = fmul fast float %9404, 0x3FC5555560000000
  %9419 = fmul fast float %9402, %9402
  %9420 = fmul fast float %9419, %9402
  %9421 = fsub fast float 3.000000e+00, %9402
  %9422 = fmul fast float %9419, %9421
  %9423 = fmul fast float %9402, 3.000000e+00
  %9424 = fmul fast float %9420, 3.000000e+00
  %9425 = fmul fast float %9419, 6.000000e+00
  %9426 = fsub fast float %9424, %9425
  %9427 = fadd fast float %9426, 4.000000e+00
  %9428 = fmul fast float %9427, 0x3FC5555560000000
  %9429 = fmul fast float %9420, -3.000000e+00
  %9430 = fadd fast float %9419, %9402
  %9431 = fmul fast float %9430, 3.000000e+00
  %9432 = fadd fast float %9429, 1.000000e+00
  %9433 = fadd fast float %9432, %9431
  %9434 = fmul fast float %9420, 0x3FC5555560000000
  %9435 = fadd fast float %9401, 1.000000e+00
  %9436 = fsub fast float 1.000000e+00, %9407
  %9437 = fadd fast float %9436, %9406
  %9438 = fadd fast float %9437, %9411
  %9439 = fmul fast float %9438, 0x3FC5555560000000
  %9440 = fdiv fast float %9412, %9439
  %9441 = fsub fast float %9435, %9440
  %9442 = fsub fast float 1.000000e+00, %9401
  %9443 = fadd fast float %9417, %9404
  %9444 = fmul fast float %9443, 0x3FC5555560000000
  %9445 = fdiv fast float %9418, %9444
  %9446 = fadd fast float %9442, %9445
  %9447 = fadd fast float %9402, 1.000000e+00
  %9448 = fsub fast float 1.000000e+00, %9423
  %9449 = fadd fast float %9448, %9422
  %9450 = fadd fast float %9449, %9427
  %9451 = fmul fast float %9450, 0x3FC5555560000000
  %9452 = fdiv fast float %9428, %9451
  %9453 = fsub fast float %9447, %9452
  %9454 = fsub fast float 1.000000e+00, %9402
  %9455 = fadd fast float %9433, %9420
  %9456 = fmul fast float %9455, 0x3FC5555560000000
  %9457 = fdiv fast float %9434, %9456
  %9458 = fadd fast float %9457, %9454
  %9459 = fmul fast float %9441, %9395
  %9460 = fsub fast float %9316, %9459
  %9461 = fmul fast float %9446, %9395
  %9462 = fadd fast float %9461, %9316
  %9463 = fmul fast float %9458, %9396
  %9464 = fadd fast float %9463, %9317
  %9465 = fmul fast float %9453, %9396
  %9466 = fsub fast float %9317, %9465
  %9467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9460, float %9466, float %9384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9468 = extractvalue %dx.types.ResRet.f32 %9467, 0
  %9469 = extractvalue %dx.types.ResRet.f32 %9467, 1
  %9470 = extractvalue %dx.types.ResRet.f32 %9467, 2
  %9471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9462, float %9466, float %9384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9472 = extractvalue %dx.types.ResRet.f32 %9471, 0
  %9473 = extractvalue %dx.types.ResRet.f32 %9471, 1
  %9474 = extractvalue %dx.types.ResRet.f32 %9471, 2
  %9475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9460, float %9464, float %9384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9476 = extractvalue %dx.types.ResRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.ResRet.f32 %9475, 1
  %9478 = extractvalue %dx.types.ResRet.f32 %9475, 2
  %9479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9462, float %9464, float %9384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9480 = extractvalue %dx.types.ResRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.ResRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.ResRet.f32 %9479, 2
  %9483 = fsub fast float %9476, %9468
  %9484 = fsub fast float %9477, %9469
  %9485 = fsub fast float %9478, %9470
  %9486 = fmul fast float %9483, %9456
  %9487 = fmul fast float %9484, %9456
  %9488 = fmul fast float %9485, %9456
  %9489 = fadd fast float %9486, %9468
  %9490 = fadd fast float %9487, %9469
  %9491 = fadd fast float %9488, %9470
  %9492 = fsub fast float %9480, %9472
  %9493 = fsub fast float %9481, %9473
  %9494 = fsub fast float %9482, %9474
  %9495 = fmul fast float %9492, %9456
  %9496 = fmul fast float %9493, %9456
  %9497 = fmul fast float %9494, %9456
  %9498 = fsub fast float %9472, %9489
  %9499 = fadd fast float %9498, %9495
  %9500 = fsub fast float %9473, %9490
  %9501 = fadd fast float %9500, %9496
  %9502 = fsub fast float %9474, %9491
  %9503 = fadd fast float %9502, %9497
  %9504 = fmul fast float %9499, %9444
  %9505 = fmul fast float %9501, %9444
  %9506 = fmul fast float %9503, %9444
  %9507 = fadd fast float %9504, %9489
  %9508 = fadd fast float %9505, %9490
  %9509 = fadd fast float %9506, %9491
  %9510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9511 = extractvalue %dx.types.CBufRet.f32 %9510, 1
  %9512 = fmul fast float %9507, %9511
  %9513 = fmul fast float %9508, %9511
  %9514 = fmul fast float %9509, %9511
  br label %9515

; <label>:9515                                    ; preds = %9346, %9303
  %9516 = phi float [ %9386, %9346 ], [ 1.000000e+00, %9303 ]
  %9517 = phi float [ %9387, %9346 ], [ 1.000000e+00, %9303 ]
  %9518 = phi float [ %9388, %9346 ], [ 1.000000e+00, %9303 ]
  %9519 = phi float [ %9512, %9346 ], [ 0.000000e+00, %9303 ]
  %9520 = phi float [ %9513, %9346 ], [ 0.000000e+00, %9303 ]
  %9521 = phi float [ %9514, %9346 ], [ 0.000000e+00, %9303 ]
  %9522 = fmul fast float %9519, %7867
  %9523 = fmul fast float %9520, %7867
  %9524 = fmul fast float %9521, %7867
  %9525 = fmul fast float %9516, %9310
  %9526 = call float @dx.op.dot3.f32(i32 55, float %9516, float %9517, float %9518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9527 = call float @dx.op.dot3.f32(i32 55, float %9522, float %9523, float %9524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9528 = select i1 %261, float %9526, float %9516
  %9529 = select i1 %261, float %9526, float %9517
  %9530 = select i1 %261, float 1.000000e+00, float %9518
  %9531 = select i1 %261, float %9527, float %9522
  %9532 = select i1 %261, float 0.000000e+00, float %9523
  %9533 = select i1 %261, float 0.000000e+00, float %9524
  %9534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.i32 %9534, 3
  %9536 = and i32 %9535, 3
  %9537 = icmp ne i32 %9536, 0
  %9538 = and i32 %9535, 4
  %9539 = icmp ne i32 %9538, 0
  %9540 = and i1 %9537, %9539
  %9541 = and i1 %261, %9540
  br i1 %9541, label %9542, label %9548

; <label>:9542                                    ; preds = %9515
  %9543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9543, 1
  %9545 = fadd fast float %9525, -1.000000e+00
  %9546 = fmul fast float %9544, %9545
  %9547 = fadd fast float %9546, 1.000000e+00
  br label %9548

; <label>:9548                                    ; preds = %9542, %9515
  %9549 = phi float [ %9547, %9542 ], [ %9525, %9515 ]
  %9550 = fadd fast float %9307, %9304
  %9551 = fmul fast float %9528, %9550
  %9552 = fadd fast float %9551, %9531
  %9553 = fadd fast float %9308, %9305
  %9554 = fmul fast float %9529, %9553
  %9555 = fadd fast float %9554, %9532
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  br i1 %261, label %9558, label %9582

; <label>:9558                                    ; preds = %9548
  %9559 = fadd fast float %9552, %9555
  %9560 = fmul fast float %9557, %9559
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 3
  %9563 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %9564 = fsub fast float %7860, %7854
  %9565 = fadd fast float %9564, %7861
  %9566 = fsub fast float %9565, %9563
  %9567 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %9568 = fmul fast float %9566, %9567
  %9569 = call float @dx.op.unary.f32(i32 7, float %9568)  ; Saturate(value)
  %9570 = fsub fast float %9569, %9562
  %9571 = fmul fast float %9570, %9549
  %9572 = fadd fast float %9571, %9562
  %9573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9574 = extractvalue %dx.types.CBufRet.f32 %9573, 0
  %9575 = fsub fast float %9572, %9574
  %9576 = fmul fast float %9575, 1.000000e+01
  %9577 = call float @dx.op.unary.f32(i32 7, float %9576)  ; Saturate(value)
  %9578 = fsub fast float 1.000000e+00, %7867
  %9579 = fmul fast float %9577, %9578
  %9580 = fadd fast float %9579, %7867
  %9581 = fmul fast float %9580, %9572
  br label %9606

; <label>:9582                                    ; preds = %9548
  %9583 = fadd fast float %9309, %9306
  %9584 = fmul fast float %9530, %9583
  %9585 = fadd fast float %9584, %9533
  %9586 = fmul fast float %9557, %9552
  %9587 = fmul fast float %9557, %9555
  %9588 = fmul fast float %9557, %9585
  %9589 = call float @dx.op.binary.f32(i32 35, float %9587, float %9588)  ; FMax(a,b)
  %9590 = call float @dx.op.binary.f32(i32 35, float %9586, float %9589)  ; FMax(a,b)
  %9591 = call float @dx.op.binary.f32(i32 35, float %9590, float %7867)  ; FMax(a,b)
  %9592 = fcmp fast ugt float %9591, 0x3F10000000000000
  br i1 %9592, label %9594, label %9593

; <label>:9593                                    ; preds = %9582
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9594

; <label>:9594                                    ; preds = %9593, %9582
  %9595 = add i32 %60, 356
  %9596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9595, i32 undef)  ; BufferLoad(srv,index,wot)
  %9597 = extractvalue %dx.types.ResRet.i32 %9596, 0
  %9598 = and i32 %9597, 32
  %9599 = icmp eq i32 %9598, 0
  br i1 %9599, label %9606, label %9600

; <label>:9600                                    ; preds = %9594
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 0
  %9603 = fmul fast float %9602, 0x3FE99999A0000000
  %9604 = fadd fast float %9602, %9586
  %9605 = fadd fast float %9603, %9588
  br label %9606

; <label>:9606                                    ; preds = %9600, %9594, %9558
  %9607 = phi float [ %9560, %9558 ], [ %9604, %9600 ], [ %9586, %9594 ]
  %9608 = phi float [ %9581, %9558 ], [ %9587, %9600 ], [ %9587, %9594 ]
  %9609 = phi float [ %9580, %9558 ], [ %9605, %9600 ], [ %9588, %9594 ]
  %9610 = phi float [ %9580, %9558 ], [ %7867, %9600 ], [ %7867, %9594 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9611 = call float @dx.op.binary.f32(i32 36, float %9607, float 3.225500e+04)  ; FMin(a,b)
  %9612 = call float @dx.op.binary.f32(i32 36, float %9608, float 3.225500e+04)  ; FMin(a,b)
  %9613 = call float @dx.op.binary.f32(i32 36, float %9609, float 3.225500e+04)  ; FMin(a,b)
  %9614 = call float @dx.op.binary.f32(i32 36, float %9610, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9611)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9612)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9613)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

