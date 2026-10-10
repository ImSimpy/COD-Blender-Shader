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
; shader hash: e25290b54d869894461622b92c2f6eb4
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
;   [144 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T19             t1     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     u32          2d     T29     t56,space2     1
;                                   texture     f32     2darray     T30     t35,space2     1
;                                   texture     f32          2d     T31     t34,space2     1
;                                   texture     f32          3d     T32     t31,space2     1
;                                   texture    byte         r/o     T33     t10,space1     1
;                                   texture    byte         r/o     T34      t1,space1     1
;                                   texture     f32          1d     T35     t32,space2     1
;                                   texture     f32     2darray     T36      t8,space2     1
;                                   texture     f32          2d     T37      t2,space2     1
;                                   texture     f32          2d     T38      t3,space2     1
;                                   texture     f32          2d     T39      t4,space2     1
;                                   textureunorm_f32     2darray     T40     t80,space2     1
;                                   texture    byte         r/o     T41     t67,space1     1
;                                   texture     f32          2d     T42      t7,space2     1
;                                   texture     f32          2d     T43      t6,space2     1
;                                   texture     f32          2d     T44      t5,space2     1
;                                   texture     f32          2d     T45     t38,space2     1
;                                   texture    byte         r/o     T46     t12,space1     1
;                                   texture    byte         r/o     T47     t13,space1     1
;                                   texture     f32          1d     T48     t30,space2     1
;                                   texture     f32          3d     T49     t44,space2     1
;                                   texture     f32          3d     T50     t45,space2     1
;                                   texture     f32     2darray     T51     t47,space2     1
;                                   textureunorm_f32     2darray     T52     t85,space2     1
;                                   texture     f32          2d     T53     t83,space2     1
;                                   texture     f32          2d     T54     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fmul fast float %104, %90
  %106 = fmul fast float %104, %91
  %107 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %108 = bitcast float %107 to i32
  %109 = ashr i32 %108, 1
  %110 = sub nsw i32 1597250115, %109
  %111 = bitcast i32 %110 to float
  %112 = fmul fast float %111, %81
  %113 = fmul fast float %111, %82
  %114 = fmul fast float %111, %83
  %115 = fmul fast float %82, %79
  %116 = fmul fast float %83, %78
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %83, %77
  %119 = fmul fast float %81, %79
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %81, %78
  %122 = fmul fast float %82, %77
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %117, %80
  %125 = fmul fast float %120, %80
  %126 = fmul fast float %123, %80
  %127 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %128 = bitcast float %127 to i32
  %129 = ashr i32 %128, 1
  %130 = sub nsw i32 1597250115, %129
  %131 = bitcast i32 %130 to float
  %132 = fmul fast float %131, %70
  %133 = fmul fast float %131, %71
  %134 = fmul fast float %131, %72
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %105, 2.000000e+00
  %139 = fmul fast float %138, %136
  %140 = fmul fast float %106, 2.000000e+00
  %141 = fmul fast float %140, %137
  %142 = fsub fast float 1.000000e+00, %139
  %143 = fsub fast float 1.000000e+00, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %142, %145
  %149 = fmul fast float %142, %146
  %150 = fmul fast float %142, %147
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %143, %152
  %156 = fmul fast float %143, %153
  %157 = fmul fast float %143, %154
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fadd fast float %155, %159
  %163 = fadd fast float %162, %148
  %164 = fadd fast float %156, %160
  %165 = fadd fast float %164, %149
  %166 = fadd fast float %157, %161
  %167 = fadd fast float %166, %150
  %168 = fmul fast float %163, %93
  %169 = fmul fast float %165, %93
  %170 = fmul fast float %167, %93
  %171 = fmul fast float %105, 5.000000e-01
  %172 = fmul fast float %106, 5.000000e-01
  %173 = fptosi float %171 to i32
  %174 = fptosi float %172 to i32
  %175 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %173, i32 %174, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 18
  %178 = uitofp i32 %177 to float
  %179 = fmul fast float %178, 0x3F4C00EBA0000000
  %180 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %181 = fadd fast float %180, -1.000000e+00
  %182 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %183 = extractvalue %dx.types.Dimensions %182, 0
  %184 = sitofp i32 %183 to float
  %185 = extractvalue %dx.types.Dimensions %182, 1
  %186 = sitofp i32 %185 to float
  %187 = fcmp fast oge float %171, %184
  %188 = fcmp fast oge float %172, %186
  %189 = or i1 %187, %188
  %190 = select i1 %189, float 0x4197782600000000, float %181
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %194 = fmul fast float %192, %105
  %195 = fmul fast float %193, %106
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 114688
  %199 = icmp ne i32 %198, 0
  %200 = select i1 %199, float %194, float 0.000000e+00
  %201 = select i1 %199, float %195, float 0.000000e+00
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %200, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fmul fast float %203, 2.550000e+02
  %205 = fptoui float %204 to i32
  %206 = select i1 %199, i32 %205, i32 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %210 = and i32 %209, 3
  %211 = icmp ne i32 %210, 0
  %212 = and i32 %209, 4
  %213 = icmp ne i32 %212, 0
  %214 = and i1 %211, %213
  br i1 %214, label %215, label %226

; <label>:215                                     ; preds = %0
  %216 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %217 = fmul fast float %216, %106
  %218 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %219 = fmul fast float %218, %105
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %55, float %219, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fsub fast float 1.000000e+00, %221
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = fcmp fast olt float %222, %224
  br label %229

; <label>:226                                     ; preds = %0
  %227 = icmp eq i32 %212, 0
  %228 = and i1 %211, %227
  br label %229

; <label>:229                                     ; preds = %226, %215
  %230 = phi i1 [ %225, %215 ], [ %228, %226 ]
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = fmul fast float %232, 0x3FE3C6EF40000000
  %234 = frem fast float %105, 2.560000e+02
  %235 = frem fast float %106, 2.560000e+02
  %236 = fptoui float %234 to i32
  %237 = fptoui float %235 to i32
  %238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fadd fast float %239, %233
  %241 = call float @dx.op.unary.f32(i32 22, float %240)  ; Frc(value)
  %242 = add i32 %61, 156
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %61, 216
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %61, 36
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %61, 288
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %61, 172
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %61, 232
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %61, 52
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %61, 304
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %61, 188
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %61, 248
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %61, 68
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %61, 320
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %61, 204
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = shl i32 %370, 4
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %370, 7
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %370, 22
  %378 = shl nuw nsw i32 %377, 5
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = add i32 %61, 264
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = lshr i32 %382, 8
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = lshr i32 %382, 16
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = add i32 %61, 84
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = add i32 %61, 336
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fmul fast float %405, 0x3F50624DE0000000
  %409 = fmul fast float %407, 0x3F50624DE0000000
  %410 = add i32 %61, 348
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 32
  %414 = icmp eq i32 %413, 0
  %415 = and i32 %412, 64
  %416 = icmp eq i32 %415, 0
  %417 = and i32 %412, 128
  %418 = icmp eq i32 %417, 0
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 2
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %438, label %423

; <label>:423                                     ; preds = %229
  %424 = add i32 %61, 472
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %426, 0
  %428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %428, %dx.types.Handle %102, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = extractvalue %dx.types.ResRet.f32 %429, 2
  %433 = extractvalue %dx.types.ResRet.f32 %429, 3
  %434 = fmul fast float %433, %86
  %435 = fmul fast float %430, %87
  %436 = fmul fast float %431, %88
  %437 = fmul fast float %432, %89
  br label %438

; <label>:438                                     ; preds = %423, %229
  %439 = phi float [ %89, %229 ], [ %437, %423 ]
  %440 = phi float [ %88, %229 ], [ %436, %423 ]
  %441 = phi float [ %87, %229 ], [ %435, %423 ]
  %442 = phi float [ %86, %229 ], [ %434, %423 ]
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 2
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %466, label %447

; <label>:447                                     ; preds = %438
  %448 = add i32 %61, 44
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %441, float 1.000000e+00
  %454 = add i32 %61, 60
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 1
  %458 = icmp ne i32 %457, 0
  %459 = select i1 %458, float %440, float 1.000000e+00
  %460 = add i32 %61, 76
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 1
  %464 = icmp ne i32 %463, 0
  %465 = select i1 %464, float %439, float 1.000000e+00
  br label %466

; <label>:466                                     ; preds = %447, %438
  %467 = phi float [ %439, %438 ], [ %465, %447 ]
  %468 = phi float [ %440, %438 ], [ %459, %447 ]
  %469 = phi float [ %441, %438 ], [ %453, %447 ]
  %470 = lshr i32 %444, 20
  %471 = and i32 %470, 3
  %472 = add nuw nsw i32 %471, 1
  %473 = add i32 %61, 24
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %61, 28
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = or i32 %478, %475
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %1130, label %481

; <label>:481                                     ; preds = %466
  %482 = and i32 %475, 262144
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %64, float 1.000000e+00
  %485 = select i1 %483, float %65, float 0.000000e+00
  %486 = select i1 %483, float %66, float 0.000000e+00
  %487 = select i1 %483, float %67, float 1.000000e+00
  %488 = select i1 %483, float %68, float %84
  %489 = select i1 %483, float %69, float %85
  %490 = add i32 %61, 284
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = lshr i32 %492, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = fmul fast float %494, 0x3F50624DE0000000
  %496 = add i32 %61, 88
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 16
  %500 = and i32 %499, 255
  %501 = lshr i32 %498, 24
  %502 = add i32 %61, 292
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = and i32 %504, 65535
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = lshr i32 %504, 16
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = add i32 %61, 32
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 22
  %513 = shl nuw nsw i32 %512, 5
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = shl i32 %511, 4
  %516 = and i32 %515, 32752
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = lshr i32 %511, 7
  %519 = and i32 %518, 32752
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %523 = fmul fast float %522, 1.000000e+03
  %524 = fmul fast float %282, %523
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = fadd fast float %525, %272
  %527 = fmul fast float %283, %523
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = fadd fast float %528, %274
  %530 = fmul fast float %495, %523
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = fmul fast float %531, 0x401921FB60000000
  %533 = fadd fast float %532, %514
  %534 = call float @dx.op.unary.f32(i32 13, float %533)  ; Sin(value)
  %535 = call float @dx.op.unary.f32(i32 12, float %533)  ; Cos(value)
  %536 = fsub fast float -0.000000e+00, %534
  %537 = fadd fast float %488, -5.000000e-01
  %538 = fadd fast float %489, -5.000000e-01
  %539 = fmul fast float %506, %537
  %540 = fmul fast float %508, %538
  %541 = fadd fast float %539, 5.000000e-01
  %542 = fadd fast float %540, 5.000000e-01
  %543 = fmul fast float %517, %541
  %544 = fmul fast float %520, %542
  %545 = fmul fast float %535, %543
  %546 = call float @dx.op.tertiary.f32(i32 46, float %536, float %544, float %545)  ; FMad(a,b,c)
  %547 = fmul fast float %534, %543
  %548 = call float @dx.op.tertiary.f32(i32 46, float %535, float %544, float %547)  ; FMad(a,b,c)
  %549 = fadd fast float %526, %546
  %550 = fadd fast float %529, %548
  %551 = icmp ugt i32 %500, 1
  %552 = icmp ugt i32 %498, 33554431
  %553 = or i1 %552, %551
  br i1 %553, label %554, label %579

; <label>:554                                     ; preds = %481
  %555 = add i32 %61, 228
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = lshr i32 %557, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = fmul fast float %522, %559
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = mul nuw nsw i32 %500, %501
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %561, %563
  %565 = call float @dx.op.unary.f32(i32 27, float %564)  ; Round_ni(value)
  %566 = fptoui float %565 to i32
  %567 = urem i32 %566, %500
  %568 = udiv i32 %566, %501
  %569 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %570 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %571 = uitofp i32 %567 to float
  %572 = uitofp i32 %568 to float
  %573 = fadd fast float %569, %571
  %574 = fadd fast float %570, %572
  %575 = uitofp i32 %500 to float
  %576 = uitofp i32 %501 to float
  %577 = fdiv fast float %573, %575
  %578 = fdiv fast float %574, %576
  br label %579

; <label>:579                                     ; preds = %554, %481
  %580 = phi float [ %577, %554 ], [ %549, %481 ]
  %581 = phi float [ %578, %554 ], [ %550, %481 ]
  %582 = and i32 %475, 16777216
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %693, label %584

; <label>:584                                     ; preds = %579
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %588 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %589 = fadd fast float %586, %168
  %590 = fadd fast float %587, %169
  %591 = fadd fast float %588, %170
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = icmp eq i32 %62, 65535
  br i1 %595, label %690, label %596

; <label>:596                                     ; preds = %584
  %597 = lshr i32 %62, 1
  %598 = shl i32 %597, 2
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %62, 1
  %602 = icmp ne i32 %601, 0
  %603 = lshr i32 %600, 16
  %604 = and i32 %600, 65535
  %605 = select i1 %602, i32 %603, i32 %604
  %606 = icmp eq i32 %605, 65535
  br i1 %606, label %686, label %607

; <label>:607                                     ; preds = %596
  %608 = mul nuw nsw i32 %605, 40
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %608, 12
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = add nuw nsw i32 %608, 24
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = add nuw nsw i32 %608, 36
  %624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = fsub fast float %589, %610
  %627 = fsub fast float %590, %611
  %628 = fsub fast float %591, %612
  %629 = fmul fast float %625, %626
  %630 = fmul fast float %625, %627
  %631 = fmul fast float %625, %628
  %632 = call float @dx.op.unary.f32(i32 27, float %629)  ; Round_ni(value)
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fmul fast float %635, %615
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = shl i32 %62, 2
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = add i32 %643, 0
  %645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %646 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %645, %dx.types.Handle %56, float %646, float %647, float %648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = fmul fast float %650, 1.023000e+03
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = fsub fast float %629, %632
  %663 = fsub fast float %630, %633
  %664 = fsub fast float %631, %634
  %665 = fmul fast float %662, 7.500000e-01
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fadd fast float %632, 1.250000e-01
  %669 = fadd fast float %668, %665
  %670 = fadd fast float %669, %659
  %671 = fadd fast float %633, 1.250000e-01
  %672 = fadd fast float %671, %666
  %673 = fadd fast float %672, %660
  %674 = fadd fast float %634, 1.250000e-01
  %675 = fadd fast float %674, %667
  %676 = fadd fast float %675, %661
  %677 = fmul fast float %670, %620
  %678 = fmul fast float %673, %621
  %679 = fmul fast float %676, %622
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %681, 0
  %683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %683, %dx.types.Handle %54, float %677, float %678, float %679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  br label %686

; <label>:686                                     ; preds = %607, %596
  %687 = phi float [ %685, %607 ], [ -1.000000e+00, %596 ]
  %688 = fadd fast float %687, %594
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  br label %690

; <label>:690                                     ; preds = %686, %584
  %691 = phi float [ %689, %686 ], [ %594, %584 ]
  %692 = fmul fast float %691, %442
  br label %693

; <label>:693                                     ; preds = %690, %579
  %694 = phi float [ %692, %690 ], [ %442, %579 ]
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 256
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %745, label %699

; <label>:699                                     ; preds = %693
  %700 = add i32 %61, 424
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %102, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = add i32 %61, 100
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = shl i32 %709, 4
  %711 = and i32 %710, 32752
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %709, 7
  %714 = and i32 %713, 32752
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = fsub fast float 1.000000e+00, %694
  %717 = call float @dx.op.binary.f32(i32 35, float %716, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %718 = bitcast float %694 to i32
  %719 = sitofp i32 %718 to float
  %720 = fadd fast float %719, 0xC1CFBF8940000000
  %721 = fmul fast float %715, %720
  %722 = fadd fast float %721, 0x41CFBF8940000000
  %723 = fptosi float %722 to i32
  %724 = bitcast i32 %723 to float
  %725 = bitcast float %717 to i32
  %726 = sitofp i32 %725 to float
  %727 = fadd fast float %726, 0xC1CFBF8940000000
  %728 = fmul fast float %727, %715
  %729 = fadd fast float %728, 0x41CFBF8940000000
  %730 = fptosi float %729 to i32
  %731 = bitcast i32 %730 to float
  %732 = fmul fast float %724, %712
  %733 = fmul fast float %731, %712
  %734 = fsub fast float %717, %732
  %735 = fadd fast float %733, %717
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = fsub fast float %706, %736
  %739 = fsub fast float %737, %736
  %740 = bitcast float %739 to i32
  %741 = sub nsw i32 2129859010, %740
  %742 = bitcast i32 %741 to float
  %743 = fmul fast float %742, %738
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  br label %745

; <label>:745                                     ; preds = %699, %693
  %746 = phi float [ %744, %699 ], [ %694, %693 ]
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 128
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %767, label %751

; <label>:751                                     ; preds = %745
  %752 = add i32 %61, 408
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = add i32 %754, 0
  %756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %756, %dx.types.Handle %102, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 524288
  %762 = icmp ne i32 %761, 0
  %763 = fcmp fast ogt float %758, 0x3FE0101020000000
  %764 = select i1 %763, float 1.000000e+00, float 0.000000e+00
  %765 = select i1 %762, float %764, float %758
  %766 = fmul fast float %765, %746
  br label %767

; <label>:767                                     ; preds = %751, %745
  %768 = phi float [ %766, %751 ], [ %746, %745 ]
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 16
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %971, label %773

; <label>:773                                     ; preds = %767
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %61, 360
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %778, 0
  %780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %780, %dx.types.Handle %101, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = and i32 %775, 255
  %787 = uitofp i32 %786 to float
  %788 = lshr i32 %775, 8
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %785, %787
  %792 = fadd fast float %791, %790
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 512
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %806, label %798

; <label>:798                                     ; preds = %773
  %799 = add i32 %61, 440
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = add i32 %801, 0
  %803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %802, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %804 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %803, %dx.types.Handle %102, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  br label %806

; <label>:806                                     ; preds = %798, %773
  %807 = phi float [ %805, %798 ], [ 1.000000e+00, %773 ]
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 33554432
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %918, label %812

; <label>:812                                     ; preds = %806
  %813 = add i32 %61, 224
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %815, 16
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = add i32 %61, 228
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 65535
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = lshr i32 %826, 24
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = and i32 %826, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = lshr i32 %826, 8
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %826, 16
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = add i32 %61, 220
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = lshr i32 %843, 24
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = and i32 %843, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = lshr i32 %843, 8
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F70101020000000
  %854 = lshr i32 %843, 16
  %855 = and i32 %854, 255
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F70101020000000
  %858 = bitcast float %782 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %782, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %782
  %867 = fmul fast float %866, %865
  %868 = bitcast float %783 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %783, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %783
  %877 = fmul fast float %876, %875
  %878 = bitcast float %784 to i32
  %879 = ashr i32 %878, 1
  %880 = sub nsw i32 1597463174, %879
  %881 = bitcast i32 %880 to float
  %882 = fmul fast float %784, 5.000000e-01
  %883 = fmul fast float %881, %881
  %884 = fmul fast float %883, %882
  %885 = fsub fast float 1.500000e+00, %884
  %886 = fmul fast float %881, %784
  %887 = fmul fast float %886, %885
  %888 = fsub fast float %867, %849
  %889 = fsub fast float %877, %853
  %890 = fsub fast float %887, %857
  %891 = fmul fast float %888, %817
  %892 = fmul fast float %889, %819
  %893 = fmul fast float %890, %824
  %894 = fadd fast float %891, %832
  %895 = fadd fast float %892, %836
  %896 = fadd fast float %893, %840
  %897 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = fmul fast float %897, %897
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fsub fast float %900, %782
  %904 = fsub fast float %901, %783
  %905 = fsub fast float %902, %784
  %906 = fmul fast float %903, %807
  %907 = fmul fast float %904, %807
  %908 = fmul fast float %905, %807
  %909 = fadd fast float %906, %782
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %829, %793
  %913 = fsub fast float %912, %846
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float %914, %793
  %916 = fmul fast float %915, %807
  %917 = fadd fast float %916, %793
  br label %971

; <label>:918                                     ; preds = %806
  %919 = and i32 %809, 134217728
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %955, label %921

; <label>:921                                     ; preds = %918
  %922 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %925 = fadd fast float %922, -5.000000e-01
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fmul fast float %925, %807
  %929 = fmul fast float %926, %807
  %930 = fmul fast float %927, %807
  %931 = fadd fast float %928, 5.000000e-01
  %932 = fadd fast float %929, 5.000000e-01
  %933 = fadd fast float %930, 5.000000e-01
  %934 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = fmul fast float %931, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %934
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %934
  %942 = fmul fast float %932, 2.000000e+00
  %943 = fsub fast float 1.000000e+00, %942
  %944 = fmul fast float %943, %935
  %945 = fadd fast float %944, %942
  %946 = fmul fast float %945, %935
  %947 = fmul fast float %933, 2.000000e+00
  %948 = fsub fast float 1.000000e+00, %947
  %949 = fmul fast float %948, %936
  %950 = fadd fast float %949, %947
  %951 = fmul fast float %950, %936
  %952 = fmul fast float %941, %941
  %953 = fmul fast float %946, %946
  %954 = fmul fast float %951, %951
  br label %971

; <label>:955                                     ; preds = %918
  %956 = fmul fast float %259, %259
  %957 = fmul fast float %263, %263
  %958 = fmul fast float %267, %267
  %959 = fadd fast float %956, -1.000000e+00
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fmul fast float %807, %959
  %963 = fmul fast float %807, %960
  %964 = fmul fast float %807, %961
  %965 = fadd fast float %962, 1.000000e+00
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fmul fast float %965, %782
  %969 = fmul fast float %966, %783
  %970 = fmul fast float %967, %784
  br label %971

; <label>:971                                     ; preds = %955, %921, %812, %767
  %972 = phi float [ %917, %812 ], [ %793, %921 ], [ %793, %955 ], [ 0x3FA23C0BE0000000, %767 ]
  %973 = phi float [ %909, %812 ], [ %952, %921 ], [ %968, %955 ], [ 1.000000e+00, %767 ]
  %974 = phi float [ %910, %812 ], [ %953, %921 ], [ %969, %955 ], [ 1.000000e+00, %767 ]
  %975 = phi float [ %911, %812 ], [ %954, %921 ], [ %970, %955 ], [ 1.000000e+00, %767 ]
  %976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.i32 %976, 1
  %978 = and i32 %977, 1
  %979 = icmp ne i32 %978, 0
  %980 = add i32 %61, 356
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 32
  %984 = icmp ne i32 %983, 0
  %985 = and i1 %979, %984
  %986 = select i1 %985, float 1.000000e+00, float %973
  %987 = select i1 %985, float 0x3FD3333340000000, float %974
  %988 = select i1 %985, float 0x3FD3333340000000, float %975
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = and i32 %990, 32
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %1065, label %993

; <label>:993                                     ; preds = %971
  %994 = add i32 %61, 92
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = add i32 %61, 376
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = add i32 %999, 0
  %1001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1001, %dx.types.Handle %101, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1002, 3
  %1007 = and i32 %996, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = lshr i32 %996, 8
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = lshr i32 %996, 16
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F70101000000000
  %1016 = fmul fast float %1003, %1008
  %1017 = fadd fast float %1016, %1011
  %1018 = fmul fast float %1017, 0x3F70101000000000
  %1019 = fadd fast float %1004, -5.000000e-01
  %1020 = fadd fast float %1006, -5.000000e-01
  %1021 = fmul fast float %1019, %1015
  %1022 = fmul fast float %1020, %1015
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fmul fast float %1023, 2.000000e+00
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = fmul fast float %1024, 2.000000e+00
  %1028 = fadd fast float %1027, -1.000000e+00
  %1029 = fadd fast float %1026, %1028
  %1030 = fmul fast float %1029, 5.000000e-01
  %1031 = fsub fast float %1026, %1028
  %1032 = fmul fast float %1031, 5.000000e-01
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = fsub fast float 1.000000e+00, %1033
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = fsub fast float %1034, %1035
  %1037 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1032, float %1036, float %1030, float %1032, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = call float @dx.op.unary.f32(i32 25, float %1037)  ; Rsqrt(value)
  %1039 = fmul fast float %1030, %1038
  %1040 = fmul fast float %1032, %1038
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 67108864
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1061, label %1045

; <label>:1045                                    ; preds = %993
  %1046 = add i32 %61, 280
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 65535
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 65535
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1048, 16
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = fsub fast float %1018, %1056
  %1058 = fmul fast float %1057, %1050
  %1059 = fadd fast float %1058, %1054
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  br label %1061

; <label>:1061                                    ; preds = %1045, %993
  %1062 = phi float [ %1060, %1045 ], [ %1018, %993 ]
  %1063 = call float @dx.op.dot2.f32(i32 54, float %1039, float %1040, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  %1064 = call float @dx.op.dot2.f32(i32 54, float %1039, float %1040, float %486, float %487)  ; Dot2(ax,ay,bx,by)
  br label %1065

; <label>:1065                                    ; preds = %1061, %971
  %1066 = phi float [ %1062, %1061 ], [ 0x3FD6666660000000, %971 ]
  %1067 = phi float [ %1063, %1061 ], [ 0.000000e+00, %971 ]
  %1068 = phi float [ %1064, %1061 ], [ 0.000000e+00, %971 ]
  %1069 = phi float [ %1005, %1061 ], [ 1.000000e+00, %971 ]
  %1070 = add i32 %61, 160
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = lshr i32 %1072, 22
  %1074 = shl nuw nsw i32 %1073, 5
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 64
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1113, label %1080

; <label>:1080                                    ; preds = %1065
  %1081 = add i32 %61, 392
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 131072
  %1089 = icmp eq i32 %1088, 0
  %1090 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1085, %dx.types.Handle %101, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = fmul fast float %1091, %247
  %1095 = fmul fast float %1092, %250
  %1096 = fmul fast float %1093, %253
  br i1 %1089, label %1103, label %1097

; <label>:1097                                    ; preds = %1080
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = fmul fast float %1099, %1094
  %1101 = fmul fast float %1099, %1095
  %1102 = fmul fast float %1099, %1096
  br label %1103

; <label>:1103                                    ; preds = %1097, %1080
  %1104 = phi float [ %1100, %1097 ], [ %1094, %1080 ]
  %1105 = phi float [ %1101, %1097 ], [ %1095, %1080 ]
  %1106 = phi float [ %1102, %1097 ], [ %1096, %1080 ]
  %1107 = fmul fast float %1104, %1075
  %1108 = select i1 %230, float %1107, float %1104
  %1109 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1105, float %1106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = select i1 %230, float 0.000000e+00, float %1104
  %1111 = select i1 %230, float %1109, float %1105
  %1112 = select i1 %230, float 0.000000e+00, float %1106
  br label %1113

; <label>:1113                                    ; preds = %1103, %1065
  %1114 = phi float [ %1110, %1103 ], [ 0.000000e+00, %1065 ]
  %1115 = phi float [ %1111, %1103 ], [ 0.000000e+00, %1065 ]
  %1116 = phi float [ %1112, %1103 ], [ 0.000000e+00, %1065 ]
  %1117 = add i32 %61, 96
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1119, 8
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = fmul fast float %1124, %1125
  %1127 = fadd fast float %1126, %1121
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  br label %1130

; <label>:1130                                    ; preds = %1113, %466
  %1131 = phi float [ 0.000000e+00, %466 ], [ %1067, %1113 ]
  %1132 = phi float [ 0.000000e+00, %466 ], [ %1068, %1113 ]
  %1133 = phi float [ 0.000000e+00, %466 ], [ %986, %1113 ]
  %1134 = phi float [ 0.000000e+00, %466 ], [ %987, %1113 ]
  %1135 = phi float [ 0.000000e+00, %466 ], [ %988, %1113 ]
  %1136 = phi float [ 0.000000e+00, %466 ], [ %1114, %1113 ]
  %1137 = phi float [ 0.000000e+00, %466 ], [ %1115, %1113 ]
  %1138 = phi float [ 0.000000e+00, %466 ], [ %1116, %1113 ]
  %1139 = phi float [ 0.000000e+00, %466 ], [ %972, %1113 ]
  %1140 = phi float [ 0.000000e+00, %466 ], [ %768, %1113 ]
  %1141 = phi float [ 0.000000e+00, %466 ], [ %1066, %1113 ]
  %1142 = phi float [ 0.000000e+00, %466 ], [ %1069, %1113 ]
  %1143 = phi float [ 0.000000e+00, %466 ], [ %1129, %1113 ]
  br i1 %414, label %1985, label %1144

; <label>:1144                                    ; preds = %1130
  %1145 = icmp ult i32 %472, 2
  %1146 = add i32 %61, 40
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %61, 44
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = or i32 %1151, %1148
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1985, label %1154

; <label>:1154                                    ; preds = %1144
  %1155 = and i32 %1148, 262144
  %1156 = icmp ne i32 %1155, 0
  %1157 = select i1 %1156, float %64, float 1.000000e+00
  %1158 = select i1 %1156, float %65, float 0.000000e+00
  %1159 = select i1 %1156, float %66, float 0.000000e+00
  %1160 = select i1 %1156, float %67, float 1.000000e+00
  %1161 = select i1 %1156, float %68, float %84
  %1162 = select i1 %1156, float %69, float %85
  %1163 = add i32 %61, 300
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 16
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1167, 0x3F50624DE0000000
  %1169 = add i32 %61, 104
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 16
  %1173 = and i32 %1172, 255
  %1174 = lshr i32 %1171, 24
  %1175 = add i32 %61, 308
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 65535
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = lshr i32 %1177, 16
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = add i32 %61, 48
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 22
  %1186 = shl nuw nsw i32 %1185, 5
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = shl i32 %1184, 4
  %1189 = and i32 %1188, 32752
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1184, 7
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1196 = fmul fast float %1195, 1.000000e+03
  %1197 = fmul fast float %324, %1196
  %1198 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1199 = fadd fast float %1198, %314
  %1200 = fmul fast float %325, %1196
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fadd fast float %1201, %316
  %1203 = fmul fast float %1168, %1196
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fmul fast float %1204, 0x401921FB60000000
  %1206 = fadd fast float %1205, %1187
  %1207 = call float @dx.op.unary.f32(i32 13, float %1206)  ; Sin(value)
  %1208 = call float @dx.op.unary.f32(i32 12, float %1206)  ; Cos(value)
  %1209 = fsub fast float -0.000000e+00, %1207
  %1210 = fadd fast float %1161, -5.000000e-01
  %1211 = fadd fast float %1162, -5.000000e-01
  %1212 = fmul fast float %1179, %1210
  %1213 = fmul fast float %1181, %1211
  %1214 = fadd fast float %1212, 5.000000e-01
  %1215 = fadd fast float %1213, 5.000000e-01
  %1216 = fmul fast float %1190, %1214
  %1217 = fmul fast float %1193, %1215
  %1218 = fmul fast float %1208, %1216
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1217, float %1218)  ; FMad(a,b,c)
  %1220 = fmul fast float %1207, %1216
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %1208, float %1217, float %1220)  ; FMad(a,b,c)
  %1222 = fadd fast float %1199, %1219
  %1223 = fadd fast float %1202, %1221
  %1224 = icmp ugt i32 %1173, 1
  %1225 = icmp ugt i32 %1171, 33554431
  %1226 = or i1 %1225, %1224
  br i1 %1226, label %1227, label %1252

; <label>:1227                                    ; preds = %1154
  %1228 = add i32 %61, 244
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = fmul fast float %1195, %1232
  %1234 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1235 = mul nuw nsw i32 %1173, %1174
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1234, %1236
  %1238 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1239 = fptoui float %1238 to i32
  %1240 = urem i32 %1239, %1173
  %1241 = udiv i32 %1239, %1174
  %1242 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1243 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1244 = uitofp i32 %1240 to float
  %1245 = uitofp i32 %1241 to float
  %1246 = fadd fast float %1242, %1244
  %1247 = fadd fast float %1243, %1245
  %1248 = uitofp i32 %1173 to float
  %1249 = uitofp i32 %1174 to float
  %1250 = fdiv fast float %1246, %1248
  %1251 = fdiv fast float %1247, %1249
  br label %1252

; <label>:1252                                    ; preds = %1227, %1154
  %1253 = phi float [ %1250, %1227 ], [ %1222, %1154 ]
  %1254 = phi float [ %1251, %1227 ], [ %1223, %1154 ]
  %1255 = and i32 %1148, 16777216
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1366, label %1257

; <label>:1257                                    ; preds = %1252
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = fadd fast float %1259, %168
  %1263 = fadd fast float %1260, %169
  %1264 = fadd fast float %1261, %170
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = icmp eq i32 %62, 65535
  br i1 %1268, label %1363, label %1269

; <label>:1269                                    ; preds = %1257
  %1270 = lshr i32 %62, 1
  %1271 = shl i32 %1270, 2
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %62, 1
  %1275 = icmp ne i32 %1274, 0
  %1276 = lshr i32 %1273, 16
  %1277 = and i32 %1273, 65535
  %1278 = select i1 %1275, i32 %1276, i32 %1277
  %1279 = icmp eq i32 %1278, 65535
  br i1 %1279, label %1359, label %1280

; <label>:1280                                    ; preds = %1269
  %1281 = mul nuw nsw i32 %1278, 40
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = add nuw nsw i32 %1281, 12
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = add nuw nsw i32 %1281, 24
  %1292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = add nuw nsw i32 %1281, 36
  %1297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = fsub fast float %1262, %1283
  %1300 = fsub fast float %1263, %1284
  %1301 = fsub fast float %1264, %1285
  %1302 = fmul fast float %1298, %1299
  %1303 = fmul fast float %1298, %1300
  %1304 = fmul fast float %1298, %1301
  %1305 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1306 = call float @dx.op.unary.f32(i32 27, float %1303)  ; Round_ni(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1308 = fadd fast float %1305, 5.000000e-01
  %1309 = fadd fast float %1306, 5.000000e-01
  %1310 = fadd fast float %1307, 5.000000e-01
  %1311 = fmul fast float %1308, %1288
  %1312 = fmul fast float %1309, %1289
  %1313 = fmul fast float %1310, %1290
  %1314 = shl i32 %62, 2
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = add i32 %1316, 0
  %1318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1319 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1320 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1318, %dx.types.Handle %56, float %1319, float %1320, float %1321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = fmul fast float %1323, 1.023000e+03
  %1327 = fmul fast float %1324, 1.023000e+03
  %1328 = fmul fast float %1325, 1.023000e+03
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = call float @dx.op.unary.f32(i32 27, float %1329)  ; Round_ni(value)
  %1333 = call float @dx.op.unary.f32(i32 27, float %1330)  ; Round_ni(value)
  %1334 = call float @dx.op.unary.f32(i32 27, float %1331)  ; Round_ni(value)
  %1335 = fsub fast float %1302, %1305
  %1336 = fsub fast float %1303, %1306
  %1337 = fsub fast float %1304, %1307
  %1338 = fmul fast float %1335, 7.500000e-01
  %1339 = fmul fast float %1336, 7.500000e-01
  %1340 = fmul fast float %1337, 7.500000e-01
  %1341 = fadd fast float %1305, 1.250000e-01
  %1342 = fadd fast float %1341, %1338
  %1343 = fadd fast float %1342, %1332
  %1344 = fadd fast float %1306, 1.250000e-01
  %1345 = fadd fast float %1344, %1339
  %1346 = fadd fast float %1345, %1333
  %1347 = fadd fast float %1307, 1.250000e-01
  %1348 = fadd fast float %1347, %1340
  %1349 = fadd fast float %1348, %1334
  %1350 = fmul fast float %1343, %1293
  %1351 = fmul fast float %1346, %1294
  %1352 = fmul fast float %1349, %1295
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1356, %dx.types.Handle %54, float %1350, float %1351, float %1352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  br label %1359

; <label>:1359                                    ; preds = %1280, %1269
  %1360 = phi float [ %1358, %1280 ], [ -1.000000e+00, %1269 ]
  %1361 = fadd fast float %1360, %1267
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  br label %1363

; <label>:1363                                    ; preds = %1359, %1257
  %1364 = phi float [ %1362, %1359 ], [ %1267, %1257 ]
  %1365 = fmul fast float %1364, %469
  br label %1366

; <label>:1366                                    ; preds = %1363, %1252
  %1367 = phi float [ %1365, %1363 ], [ %469, %1252 ]
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 256
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1418, label %1372

; <label>:1372                                    ; preds = %1366
  %1373 = add i32 %61, 428
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1377, %dx.types.Handle %102, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = add i32 %61, 116
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = shl i32 %1382, 4
  %1384 = and i32 %1383, 32752
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1382, 7
  %1387 = and i32 %1386, 32752
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = fsub fast float 1.000000e+00, %1367
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1391 = bitcast float %1367 to i32
  %1392 = sitofp i32 %1391 to float
  %1393 = fadd fast float %1392, 0xC1CFBF8940000000
  %1394 = fmul fast float %1388, %1393
  %1395 = fadd fast float %1394, 0x41CFBF8940000000
  %1396 = fptosi float %1395 to i32
  %1397 = bitcast i32 %1396 to float
  %1398 = bitcast float %1390 to i32
  %1399 = sitofp i32 %1398 to float
  %1400 = fadd fast float %1399, 0xC1CFBF8940000000
  %1401 = fmul fast float %1400, %1388
  %1402 = fadd fast float %1401, 0x41CFBF8940000000
  %1403 = fptosi float %1402 to i32
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1397, %1385
  %1406 = fmul fast float %1404, %1385
  %1407 = fsub fast float %1390, %1405
  %1408 = fadd fast float %1406, %1390
  %1409 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = fsub fast float %1379, %1409
  %1412 = fsub fast float %1410, %1409
  %1413 = bitcast float %1412 to i32
  %1414 = sub nsw i32 2129859010, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1415, %1411
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  br label %1418

; <label>:1418                                    ; preds = %1372, %1366
  %1419 = phi float [ %1417, %1372 ], [ %1367, %1366 ]
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 128
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1440, label %1424

; <label>:1424                                    ; preds = %1418
  %1425 = add i32 %61, 412
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %102, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 524288
  %1435 = icmp ne i32 %1434, 0
  %1436 = fcmp fast ogt float %1431, 0x3FE0101020000000
  %1437 = select i1 %1436, float 1.000000e+00, float 0.000000e+00
  %1438 = select i1 %1435, float %1437, float %1431
  %1439 = fmul fast float %1438, %1419
  br label %1440

; <label>:1440                                    ; preds = %1424, %1418
  %1441 = phi float [ %1439, %1424 ], [ %1419, %1418 ]
  %1442 = fcmp fast ult float %1441, 0x3F70101020000000
  br i1 %1442, label %1985, label %1443

; <label>:1443                                    ; preds = %1440
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 16
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1646, label %1448

; <label>:1448                                    ; preds = %1443
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %61, 364
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %101, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = and i32 %1450, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1450, 8
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1460, %1462
  %1467 = fadd fast float %1466, %1465
  %1468 = fmul fast float %1467, 0x3F70101000000000
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 512
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1481, label %1473

; <label>:1473                                    ; preds = %1448
  %1474 = add i32 %61, 444
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1478, %dx.types.Handle %102, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  br label %1481

; <label>:1481                                    ; preds = %1473, %1448
  %1482 = phi float [ %1480, %1473 ], [ 1.000000e+00, %1448 ]
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 33554432
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1593, label %1487

; <label>:1487                                    ; preds = %1481
  %1488 = add i32 %61, 240
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = lshr i32 %1490, 16
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = add i32 %61, 244
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = lshr i32 %1501, 24
  %1503 = uitofp i32 %1502 to float
  %1504 = fmul fast float %1503, 0x3F70101020000000
  %1505 = and i32 %1501, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = lshr i32 %1501, 8
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = lshr i32 %1501, 16
  %1513 = and i32 %1512, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101020000000
  %1516 = add i32 %61, 236
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = lshr i32 %1518, 24
  %1520 = uitofp i32 %1519 to float
  %1521 = fmul fast float %1520, 0x3F70101020000000
  %1522 = and i32 %1518, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = lshr i32 %1518, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = lshr i32 %1518, 16
  %1530 = and i32 %1529, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = fmul fast float %1531, 0x3F70101020000000
  %1533 = bitcast float %1457 to i32
  %1534 = ashr i32 %1533, 1
  %1535 = sub nsw i32 1597463174, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1457, 5.000000e-01
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1538, %1537
  %1540 = fsub fast float 1.500000e+00, %1539
  %1541 = fmul fast float %1536, %1457
  %1542 = fmul fast float %1541, %1540
  %1543 = bitcast float %1458 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = sub nsw i32 1597463174, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1458, 5.000000e-01
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1548, %1547
  %1550 = fsub fast float 1.500000e+00, %1549
  %1551 = fmul fast float %1546, %1458
  %1552 = fmul fast float %1551, %1550
  %1553 = bitcast float %1459 to i32
  %1554 = ashr i32 %1553, 1
  %1555 = sub nsw i32 1597463174, %1554
  %1556 = bitcast i32 %1555 to float
  %1557 = fmul fast float %1459, 5.000000e-01
  %1558 = fmul fast float %1556, %1556
  %1559 = fmul fast float %1558, %1557
  %1560 = fsub fast float 1.500000e+00, %1559
  %1561 = fmul fast float %1556, %1459
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float %1542, %1524
  %1564 = fsub fast float %1552, %1528
  %1565 = fsub fast float %1562, %1532
  %1566 = fmul fast float %1563, %1492
  %1567 = fmul fast float %1564, %1494
  %1568 = fmul fast float %1565, %1499
  %1569 = fadd fast float %1566, %1507
  %1570 = fadd fast float %1567, %1511
  %1571 = fadd fast float %1568, %1515
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = fmul fast float %1572, %1572
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fsub fast float %1575, %1457
  %1579 = fsub fast float %1576, %1458
  %1580 = fsub fast float %1577, %1459
  %1581 = fmul fast float %1578, %1482
  %1582 = fmul fast float %1579, %1482
  %1583 = fmul fast float %1580, %1482
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1583, %1459
  %1587 = fadd fast float %1504, %1468
  %1588 = fsub fast float %1587, %1521
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fsub fast float %1589, %1468
  %1591 = fmul fast float %1590, %1482
  %1592 = fadd fast float %1591, %1468
  br label %1646

; <label>:1593                                    ; preds = %1481
  %1594 = and i32 %1484, 134217728
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1630, label %1596

; <label>:1596                                    ; preds = %1593
  %1597 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fmul fast float %1600, %1482
  %1604 = fmul fast float %1601, %1482
  %1605 = fmul fast float %1602, %1482
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1612 = fmul fast float %1606, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1609
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1609
  %1617 = fmul fast float %1607, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1610
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1610
  %1622 = fmul fast float %1608, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1611
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1611
  %1627 = fmul fast float %1616, %1616
  %1628 = fmul fast float %1621, %1621
  %1629 = fmul fast float %1626, %1626
  br label %1646

; <label>:1630                                    ; preds = %1593
  %1631 = fmul fast float %301, %301
  %1632 = fmul fast float %305, %305
  %1633 = fmul fast float %309, %309
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fadd fast float %1633, -1.000000e+00
  %1637 = fmul fast float %1482, %1634
  %1638 = fmul fast float %1482, %1635
  %1639 = fmul fast float %1482, %1636
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %1457
  %1644 = fmul fast float %1641, %1458
  %1645 = fmul fast float %1642, %1459
  br label %1646

; <label>:1646                                    ; preds = %1630, %1596, %1487, %1443
  %1647 = phi float [ %1592, %1487 ], [ %1468, %1596 ], [ %1468, %1630 ], [ 0x3FA23C0BE0000000, %1443 ]
  %1648 = phi float [ %1584, %1487 ], [ %1627, %1596 ], [ %1643, %1630 ], [ 1.000000e+00, %1443 ]
  %1649 = phi float [ %1585, %1487 ], [ %1628, %1596 ], [ %1644, %1630 ], [ 1.000000e+00, %1443 ]
  %1650 = phi float [ %1586, %1487 ], [ %1629, %1596 ], [ %1645, %1630 ], [ 1.000000e+00, %1443 ]
  %1651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.i32 %1651, 1
  %1653 = and i32 %1652, 1
  %1654 = icmp ne i32 %1653, 0
  %1655 = add i32 %61, 356
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 32
  %1659 = icmp ne i32 %1658, 0
  %1660 = and i1 %1654, %1659
  %1661 = select i1 %1660, float 1.000000e+00, float %1648
  %1662 = select i1 %1660, float 0x3FD3333340000000, float %1649
  %1663 = select i1 %1660, float 0x3FD3333340000000, float %1650
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 32
  %1667 = icmp eq i32 %1666, 0
  br i1 %1667, label %1740, label %1668

; <label>:1668                                    ; preds = %1646
  %1669 = add i32 %61, 108
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = add i32 %61, 380
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = add i32 %1674, 0
  %1676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1676, %dx.types.Handle %101, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.ResRet.f32 %1677, 3
  %1682 = and i32 %1671, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = lshr i32 %1671, 8
  %1685 = and i32 %1684, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = lshr i32 %1671, 16
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101000000000
  %1691 = fmul fast float %1678, %1683
  %1692 = fadd fast float %1691, %1686
  %1693 = fmul fast float %1692, 0x3F70101000000000
  %1694 = fadd fast float %1679, -5.000000e-01
  %1695 = fadd fast float %1681, -5.000000e-01
  %1696 = fmul fast float %1694, %1690
  %1697 = fmul fast float %1695, %1690
  %1698 = fadd fast float %1696, 5.000000e-01
  %1699 = fadd fast float %1697, 5.000000e-01
  %1700 = fmul fast float %1698, 2.000000e+00
  %1701 = fadd fast float %1700, -1.000000e+00
  %1702 = fmul fast float %1699, 2.000000e+00
  %1703 = fadd fast float %1702, -1.000000e+00
  %1704 = fadd fast float %1701, %1703
  %1705 = fmul fast float %1704, 5.000000e-01
  %1706 = fsub fast float %1701, %1703
  %1707 = fmul fast float %1706, 5.000000e-01
  %1708 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = call float @dx.op.unary.f32(i32 6, float %1707)  ; FAbs(value)
  %1711 = fsub fast float %1709, %1710
  %1712 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1707, float %1711, float %1705, float %1707, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = call float @dx.op.unary.f32(i32 25, float %1712)  ; Rsqrt(value)
  %1714 = fmul fast float %1705, %1713
  %1715 = fmul fast float %1707, %1713
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 67108864
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1736, label %1720

; <label>:1720                                    ; preds = %1668
  %1721 = add i32 %61, 296
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 65535
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 65535
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = lshr i32 %1723, 16
  %1731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1730)  ; LegacyF16ToF32(value)
  %1732 = fsub fast float %1693, %1731
  %1733 = fmul fast float %1732, %1725
  %1734 = fadd fast float %1733, %1729
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  br label %1736

; <label>:1736                                    ; preds = %1720, %1668
  %1737 = phi float [ %1735, %1720 ], [ %1693, %1668 ]
  %1738 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1157, float %1158)  ; Dot2(ax,ay,bx,by)
  %1739 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1159, float %1160)  ; Dot2(ax,ay,bx,by)
  br label %1740

; <label>:1740                                    ; preds = %1736, %1646
  %1741 = phi float [ %1737, %1736 ], [ 0x3FD6666660000000, %1646 ]
  %1742 = phi float [ %1738, %1736 ], [ 0.000000e+00, %1646 ]
  %1743 = phi float [ %1739, %1736 ], [ 0.000000e+00, %1646 ]
  %1744 = phi float [ %1680, %1736 ], [ 1.000000e+00, %1646 ]
  %1745 = add i32 %61, 176
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 22
  %1749 = shl nuw nsw i32 %1748, 5
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 64
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1788, label %1755

; <label>:1755                                    ; preds = %1740
  %1756 = add i32 %61, 396
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %1758, 0
  %1760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 131072
  %1764 = icmp eq i32 %1763, 0
  %1765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1760, %dx.types.Handle %101, float %1253, float %1254, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1769 = fmul fast float %1766, %289
  %1770 = fmul fast float %1767, %292
  %1771 = fmul fast float %1768, %295
  br i1 %1764, label %1778, label %1772

; <label>:1772                                    ; preds = %1755
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = fmul fast float %1774, %1769
  %1776 = fmul fast float %1774, %1770
  %1777 = fmul fast float %1774, %1771
  br label %1778

; <label>:1778                                    ; preds = %1772, %1755
  %1779 = phi float [ %1775, %1772 ], [ %1769, %1755 ]
  %1780 = phi float [ %1776, %1772 ], [ %1770, %1755 ]
  %1781 = phi float [ %1777, %1772 ], [ %1771, %1755 ]
  %1782 = fmul fast float %1779, %1750
  %1783 = select i1 %230, float %1782, float %1779
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1780, float %1781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = select i1 %230, float 0.000000e+00, float %1779
  %1786 = select i1 %230, float %1784, float %1780
  %1787 = select i1 %230, float 0.000000e+00, float %1781
  br label %1788

; <label>:1788                                    ; preds = %1778, %1740
  %1789 = phi float [ %1785, %1778 ], [ 0.000000e+00, %1740 ]
  %1790 = phi float [ %1786, %1778 ], [ 0.000000e+00, %1740 ]
  %1791 = phi float [ %1787, %1778 ], [ 0.000000e+00, %1740 ]
  %1792 = add i32 %61, 112
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 255
  %1796 = uitofp i32 %1795 to float
  %1797 = lshr i32 %1794, 8
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1662, float %1663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = fmul fast float %1799, %1800
  %1802 = fadd fast float %1801, %1796
  %1803 = fmul fast float %1802, 0x3F70101020000000
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  br i1 %1145, label %1805, label %1813

; <label>:1805                                    ; preds = %1788
  %1806 = fsub fast float 1.000000e+00, %1441
  %1807 = fmul fast float %1806, %1133
  %1808 = fmul fast float %1806, %1134
  %1809 = fmul fast float %1806, %1135
  %1810 = fmul fast float %1806, %1136
  %1811 = fmul fast float %1806, %1137
  %1812 = fmul fast float %1806, %1138
  br label %1813

; <label>:1813                                    ; preds = %1805, %1788
  %1814 = phi float [ %1807, %1805 ], [ %1133, %1788 ]
  %1815 = phi float [ %1808, %1805 ], [ %1134, %1788 ]
  %1816 = phi float [ %1809, %1805 ], [ %1135, %1788 ]
  %1817 = phi float [ %1810, %1805 ], [ %1136, %1788 ]
  %1818 = phi float [ %1811, %1805 ], [ %1137, %1788 ]
  %1819 = phi float [ %1812, %1805 ], [ %1138, %1788 ]
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 3
  %1823 = icmp eq i32 %1822, 3
  br i1 %1823, label %1902, label %1824

; <label>:1824                                    ; preds = %1813
  %1825 = and i32 %1821, 16
  %1826 = icmp ne i32 %1825, 0
  %1827 = select i1 %1826, float %1441, float 0.000000e+00
  %1828 = icmp eq i32 %1822, 0
  br i1 %1828, label %1829, label %1857

; <label>:1829                                    ; preds = %1824
  %1830 = and i32 %1821, 64
  %1831 = icmp ne i32 %1830, 0
  %1832 = select i1 %1831, float %1441, float 0.000000e+00
  %1833 = fsub fast float %1661, %1814
  %1834 = fsub fast float %1662, %1815
  %1835 = fsub fast float %1663, %1816
  %1836 = fmul fast float %1827, %1833
  %1837 = fmul fast float %1827, %1834
  %1838 = fmul fast float %1827, %1835
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  %1842 = fsub fast float %1647, %1139
  %1843 = fmul fast float %1827, %1842
  %1844 = fadd fast float %1843, %1139
  %1845 = fsub fast float %1789, %1817
  %1846 = fsub fast float %1790, %1818
  %1847 = fsub fast float %1791, %1819
  %1848 = fmul fast float %1832, %1845
  %1849 = fmul fast float %1832, %1846
  %1850 = fmul fast float %1832, %1847
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fadd fast float %1850, %1819
  %1854 = fsub fast float %1804, %1143
  %1855 = fmul fast float %1827, %1854
  %1856 = fadd fast float %1855, %1143
  br label %1902

; <label>:1857                                    ; preds = %1824
  %1858 = icmp eq i32 %1822, 1
  br i1 %1858, label %1859, label %1872

; <label>:1859                                    ; preds = %1857
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fadd fast float %1663, -1.000000e+00
  %1863 = fmul fast float %1827, %1860
  %1864 = fmul fast float %1827, %1861
  %1865 = fmul fast float %1827, %1862
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1816
  br label %1902

; <label>:1872                                    ; preds = %1857
  %1873 = icmp eq i32 %1822, 2
  br i1 %1873, label %1874, label %1902

; <label>:1874                                    ; preds = %1872
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fmul fast float %1878, %1827
  %1882 = fmul fast float %1879, %1827
  %1883 = fmul fast float %1880, %1827
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fmul fast float %1884, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1814
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1814
  %1892 = fmul fast float %1885, 2.000000e+00
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1893, %1815
  %1895 = fadd fast float %1894, %1892
  %1896 = fmul fast float %1895, %1815
  %1897 = fmul fast float %1886, 2.000000e+00
  %1898 = fsub fast float 1.000000e+00, %1897
  %1899 = fmul fast float %1898, %1816
  %1900 = fadd fast float %1899, %1897
  %1901 = fmul fast float %1900, %1816
  br label %1902

; <label>:1902                                    ; preds = %1874, %1872, %1859, %1829, %1813
  %1903 = phi float [ %1814, %1813 ], [ %1891, %1874 ], [ %1814, %1872 ], [ %1869, %1859 ], [ %1839, %1829 ]
  %1904 = phi float [ %1815, %1813 ], [ %1896, %1874 ], [ %1815, %1872 ], [ %1870, %1859 ], [ %1840, %1829 ]
  %1905 = phi float [ %1816, %1813 ], [ %1901, %1874 ], [ %1816, %1872 ], [ %1871, %1859 ], [ %1841, %1829 ]
  %1906 = phi float [ %1817, %1813 ], [ %1817, %1874 ], [ %1817, %1872 ], [ %1817, %1859 ], [ %1851, %1829 ]
  %1907 = phi float [ %1818, %1813 ], [ %1818, %1874 ], [ %1818, %1872 ], [ %1818, %1859 ], [ %1852, %1829 ]
  %1908 = phi float [ %1819, %1813 ], [ %1819, %1874 ], [ %1819, %1872 ], [ %1819, %1859 ], [ %1853, %1829 ]
  %1909 = phi float [ %1139, %1813 ], [ %1139, %1874 ], [ %1139, %1872 ], [ %1139, %1859 ], [ %1844, %1829 ]
  %1910 = phi float [ %1143, %1813 ], [ %1143, %1874 ], [ %1143, %1872 ], [ %1143, %1859 ], [ %1856, %1829 ]
  %1911 = and i32 %1821, 12
  %1912 = icmp eq i32 %1911, 12
  br i1 %1912, label %1985, label %1913

; <label>:1913                                    ; preds = %1902
  %1914 = and i32 %1821, 2097184
  %1915 = icmp eq i32 %1914, 2097184
  %1916 = select i1 %1915, float %1441, float 0.000000e+00
  %1917 = and i32 %1821, 4194336
  %1918 = icmp eq i32 %1917, 4194336
  %1919 = select i1 %1918, float %1441, float 0.000000e+00
  %1920 = and i32 %1821, 8388640
  %1921 = icmp eq i32 %1920, 8388640
  %1922 = select i1 %1921, float %1441, float 0.000000e+00
  %1923 = icmp eq i32 %1911, 0
  br i1 %1923, label %1924, label %1937

; <label>:1924                                    ; preds = %1913
  %1925 = fsub fast float %1742, %1131
  %1926 = fsub fast float %1743, %1132
  %1927 = fmul fast float %1916, %1925
  %1928 = fmul fast float %1916, %1926
  %1929 = fadd fast float %1927, %1131
  %1930 = fadd fast float %1928, %1132
  %1931 = fsub fast float %1744, %1142
  %1932 = fmul fast float %1919, %1931
  %1933 = fadd fast float %1932, %1142
  %1934 = fsub fast float %1741, %1141
  %1935 = fmul fast float %1922, %1934
  %1936 = fadd fast float %1935, %1141
  br label %1985

; <label>:1937                                    ; preds = %1913
  %1938 = icmp eq i32 %1911, 4
  br i1 %1938, label %1939, label %1971

; <label>:1939                                    ; preds = %1937
  %1940 = fmul fast float %1916, %1742
  %1941 = fmul fast float %1916, %1743
  %1942 = fadd fast float %1940, %1131
  %1943 = fadd fast float %1941, %1132
  %1944 = call float @dx.op.binary.f32(i32 36, float %1142, float %1744)  ; FMin(a,b)
  %1945 = fsub fast float %1944, %1142
  %1946 = fmul fast float %1945, %1919
  %1947 = fadd fast float %1946, %1142
  %1948 = fadd fast float %1741, %1141
  %1949 = fmul fast float %1948, 0x3FF337FAE0000000
  %1950 = fmul fast float %1141, %1141
  %1951 = fmul fast float %1741, %1741
  %1952 = fadd fast float %1951, %1950
  %1953 = fmul fast float %1952, 0x3FE5152B00000000
  %1954 = fmul fast float %1141, 0xBFCC1F85E0000000
  %1955 = fmul fast float %1954, %1741
  %1956 = fadd fast float %1955, 0xBFE1363700000000
  %1957 = fadd fast float %1956, %1949
  %1958 = fsub fast float %1957, %1953
  %1959 = fmul fast float %1948, 0x3FBA6F0D00000000
  %1960 = fmul fast float %1952, 0x3FD0432880000000
  %1961 = fmul fast float %1141, 0xBFEF110800000000
  %1962 = fmul fast float %1961, %1741
  %1963 = fadd fast float %1962, 1.000000e+00
  %1964 = fsub fast float %1963, %1959
  %1965 = fadd fast float %1964, %1960
  %1966 = fdiv fast float %1958, %1965
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fsub fast float %1967, %1141
  %1969 = fmul fast float %1968, %1922
  %1970 = fadd fast float %1969, %1141
  br label %1985

; <label>:1971                                    ; preds = %1937
  %1972 = icmp eq i32 %1911, 8
  br i1 %1972, label %1973, label %1985

; <label>:1973                                    ; preds = %1971
  %1974 = fmul fast float %1916, %1742
  %1975 = fmul fast float %1916, %1743
  %1976 = fadd fast float %1974, %1131
  %1977 = fadd fast float %1975, %1132
  %1978 = call float @dx.op.binary.f32(i32 36, float %1142, float %1744)  ; FMin(a,b)
  %1979 = fsub fast float %1978, %1142
  %1980 = fmul fast float %1979, %1919
  %1981 = fadd fast float %1980, %1142
  %1982 = fsub fast float %1741, %1141
  %1983 = fmul fast float %1922, %1982
  %1984 = fadd fast float %1983, %1141
  br label %1985

; <label>:1985                                    ; preds = %1973, %1971, %1939, %1924, %1902, %1440, %1144, %1130
  %1986 = phi float [ %1131, %1902 ], [ %1131, %1440 ], [ %1131, %1130 ], [ %1976, %1973 ], [ %1131, %1971 ], [ %1942, %1939 ], [ %1929, %1924 ], [ %1131, %1144 ]
  %1987 = phi float [ %1132, %1902 ], [ %1132, %1440 ], [ %1132, %1130 ], [ %1977, %1973 ], [ %1132, %1971 ], [ %1943, %1939 ], [ %1930, %1924 ], [ %1132, %1144 ]
  %1988 = phi float [ %1903, %1902 ], [ %1133, %1440 ], [ %1133, %1130 ], [ %1903, %1973 ], [ %1903, %1971 ], [ %1903, %1939 ], [ %1903, %1924 ], [ %1133, %1144 ]
  %1989 = phi float [ %1904, %1902 ], [ %1134, %1440 ], [ %1134, %1130 ], [ %1904, %1973 ], [ %1904, %1971 ], [ %1904, %1939 ], [ %1904, %1924 ], [ %1134, %1144 ]
  %1990 = phi float [ %1905, %1902 ], [ %1135, %1440 ], [ %1135, %1130 ], [ %1905, %1973 ], [ %1905, %1971 ], [ %1905, %1939 ], [ %1905, %1924 ], [ %1135, %1144 ]
  %1991 = phi float [ %1906, %1902 ], [ %1136, %1440 ], [ %1136, %1130 ], [ %1906, %1973 ], [ %1906, %1971 ], [ %1906, %1939 ], [ %1906, %1924 ], [ %1136, %1144 ]
  %1992 = phi float [ %1907, %1902 ], [ %1137, %1440 ], [ %1137, %1130 ], [ %1907, %1973 ], [ %1907, %1971 ], [ %1907, %1939 ], [ %1907, %1924 ], [ %1137, %1144 ]
  %1993 = phi float [ %1908, %1902 ], [ %1138, %1440 ], [ %1138, %1130 ], [ %1908, %1973 ], [ %1908, %1971 ], [ %1908, %1939 ], [ %1908, %1924 ], [ %1138, %1144 ]
  %1994 = phi float [ %1909, %1902 ], [ %1139, %1440 ], [ %1139, %1130 ], [ %1909, %1973 ], [ %1909, %1971 ], [ %1909, %1939 ], [ %1909, %1924 ], [ %1139, %1144 ]
  %1995 = phi float [ %1141, %1902 ], [ %1141, %1440 ], [ %1141, %1130 ], [ %1984, %1973 ], [ %1141, %1971 ], [ %1970, %1939 ], [ %1936, %1924 ], [ %1141, %1144 ]
  %1996 = phi float [ %1142, %1902 ], [ %1142, %1440 ], [ %1142, %1130 ], [ %1981, %1973 ], [ %1142, %1971 ], [ %1947, %1939 ], [ %1933, %1924 ], [ %1142, %1144 ]
  %1997 = phi float [ %1910, %1902 ], [ %1143, %1440 ], [ %1143, %1130 ], [ %1910, %1973 ], [ %1910, %1971 ], [ %1910, %1939 ], [ %1910, %1924 ], [ %1143, %1144 ]
  br i1 %416, label %2839, label %1998

; <label>:1998                                    ; preds = %1985
  %1999 = icmp ult i32 %472, 3
  %2000 = add i32 %61, 56
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %61, 60
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = or i32 %2005, %2002
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2839, label %2008

; <label>:2008                                    ; preds = %1998
  %2009 = and i32 %2002, 262144
  %2010 = icmp ne i32 %2009, 0
  %2011 = select i1 %2010, float %64, float 1.000000e+00
  %2012 = select i1 %2010, float %65, float 0.000000e+00
  %2013 = select i1 %2010, float %66, float 0.000000e+00
  %2014 = select i1 %2010, float %67, float 1.000000e+00
  %2015 = select i1 %2010, float %68, float %84
  %2016 = select i1 %2010, float %69, float %85
  %2017 = add i32 %61, 316
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = lshr i32 %2019, 16
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %2021, 0x3F50624DE0000000
  %2023 = add i32 %61, 120
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = lshr i32 %2025, 16
  %2027 = and i32 %2026, 255
  %2028 = lshr i32 %2025, 24
  %2029 = add i32 %61, 324
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 65535
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = lshr i32 %2031, 16
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = add i32 %61, 64
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = lshr i32 %2038, 22
  %2040 = shl nuw nsw i32 %2039, 5
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = shl i32 %2038, 4
  %2043 = and i32 %2042, 32752
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = lshr i32 %2038, 7
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2050 = fmul fast float %2049, 1.000000e+03
  %2051 = fmul fast float %366, %2050
  %2052 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2053 = fadd fast float %2052, %356
  %2054 = fmul fast float %367, %2050
  %2055 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2056 = fadd fast float %2055, %358
  %2057 = fmul fast float %2022, %2050
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = fmul fast float %2058, 0x401921FB60000000
  %2060 = fadd fast float %2059, %2041
  %2061 = call float @dx.op.unary.f32(i32 13, float %2060)  ; Sin(value)
  %2062 = call float @dx.op.unary.f32(i32 12, float %2060)  ; Cos(value)
  %2063 = fsub fast float -0.000000e+00, %2061
  %2064 = fadd fast float %2015, -5.000000e-01
  %2065 = fadd fast float %2016, -5.000000e-01
  %2066 = fmul fast float %2033, %2064
  %2067 = fmul fast float %2035, %2065
  %2068 = fadd fast float %2066, 5.000000e-01
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fmul fast float %2044, %2068
  %2071 = fmul fast float %2047, %2069
  %2072 = fmul fast float %2062, %2070
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2063, float %2071, float %2072)  ; FMad(a,b,c)
  %2074 = fmul fast float %2061, %2070
  %2075 = call float @dx.op.tertiary.f32(i32 46, float %2062, float %2071, float %2074)  ; FMad(a,b,c)
  %2076 = fadd fast float %2053, %2073
  %2077 = fadd fast float %2056, %2075
  %2078 = icmp ugt i32 %2027, 1
  %2079 = icmp ugt i32 %2025, 33554431
  %2080 = or i1 %2079, %2078
  br i1 %2080, label %2081, label %2106

; <label>:2081                                    ; preds = %2008
  %2082 = add i32 %61, 260
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = lshr i32 %2084, 16
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = fmul fast float %2049, %2086
  %2088 = call float @dx.op.unary.f32(i32 22, float %2087)  ; Frc(value)
  %2089 = mul nuw nsw i32 %2027, %2028
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2088, %2090
  %2092 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2093 = fptoui float %2092 to i32
  %2094 = urem i32 %2093, %2027
  %2095 = udiv i32 %2093, %2028
  %2096 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2097 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2098 = uitofp i32 %2094 to float
  %2099 = uitofp i32 %2095 to float
  %2100 = fadd fast float %2096, %2098
  %2101 = fadd fast float %2097, %2099
  %2102 = uitofp i32 %2027 to float
  %2103 = uitofp i32 %2028 to float
  %2104 = fdiv fast float %2100, %2102
  %2105 = fdiv fast float %2101, %2103
  br label %2106

; <label>:2106                                    ; preds = %2081, %2008
  %2107 = phi float [ %2104, %2081 ], [ %2076, %2008 ]
  %2108 = phi float [ %2105, %2081 ], [ %2077, %2008 ]
  %2109 = and i32 %2002, 16777216
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2220, label %2111

; <label>:2111                                    ; preds = %2106
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2116 = fadd fast float %2113, %168
  %2117 = fadd fast float %2114, %169
  %2118 = fadd fast float %2115, %170
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = icmp eq i32 %62, 65535
  br i1 %2122, label %2217, label %2123

; <label>:2123                                    ; preds = %2111
  %2124 = lshr i32 %62, 1
  %2125 = shl i32 %2124, 2
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %62, 1
  %2129 = icmp ne i32 %2128, 0
  %2130 = lshr i32 %2127, 16
  %2131 = and i32 %2127, 65535
  %2132 = select i1 %2129, i32 %2130, i32 %2131
  %2133 = icmp eq i32 %2132, 65535
  br i1 %2133, label %2213, label %2134

; <label>:2134                                    ; preds = %2123
  %2135 = mul nuw nsw i32 %2132, 40
  %2136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.ResRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.ResRet.f32 %2136, 2
  %2140 = add nuw nsw i32 %2135, 12
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = add nuw nsw i32 %2135, 24
  %2146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.ResRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.ResRet.f32 %2146, 2
  %2150 = add nuw nsw i32 %2135, 36
  %2151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = fsub fast float %2116, %2137
  %2154 = fsub fast float %2117, %2138
  %2155 = fsub fast float %2118, %2139
  %2156 = fmul fast float %2152, %2153
  %2157 = fmul fast float %2152, %2154
  %2158 = fmul fast float %2152, %2155
  %2159 = call float @dx.op.unary.f32(i32 27, float %2156)  ; Round_ni(value)
  %2160 = call float @dx.op.unary.f32(i32 27, float %2157)  ; Round_ni(value)
  %2161 = call float @dx.op.unary.f32(i32 27, float %2158)  ; Round_ni(value)
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fmul fast float %2162, %2142
  %2166 = fmul fast float %2163, %2143
  %2167 = fmul fast float %2164, %2144
  %2168 = shl i32 %62, 2
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = add i32 %2170, 0
  %2172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2173 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2175 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2172, %dx.types.Handle %56, float %2173, float %2174, float %2175, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = fmul fast float %2177, 1.023000e+03
  %2181 = fmul fast float %2178, 1.023000e+03
  %2182 = fmul fast float %2179, 1.023000e+03
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = call float @dx.op.unary.f32(i32 27, float %2183)  ; Round_ni(value)
  %2187 = call float @dx.op.unary.f32(i32 27, float %2184)  ; Round_ni(value)
  %2188 = call float @dx.op.unary.f32(i32 27, float %2185)  ; Round_ni(value)
  %2189 = fsub fast float %2156, %2159
  %2190 = fsub fast float %2157, %2160
  %2191 = fsub fast float %2158, %2161
  %2192 = fmul fast float %2189, 7.500000e-01
  %2193 = fmul fast float %2190, 7.500000e-01
  %2194 = fmul fast float %2191, 7.500000e-01
  %2195 = fadd fast float %2159, 1.250000e-01
  %2196 = fadd fast float %2195, %2192
  %2197 = fadd fast float %2196, %2186
  %2198 = fadd fast float %2160, 1.250000e-01
  %2199 = fadd fast float %2198, %2193
  %2200 = fadd fast float %2199, %2187
  %2201 = fadd fast float %2161, 1.250000e-01
  %2202 = fadd fast float %2201, %2194
  %2203 = fadd fast float %2202, %2188
  %2204 = fmul fast float %2197, %2147
  %2205 = fmul fast float %2200, %2148
  %2206 = fmul fast float %2203, %2149
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2210, %dx.types.Handle %54, float %2204, float %2205, float %2206, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  br label %2213

; <label>:2213                                    ; preds = %2134, %2123
  %2214 = phi float [ %2212, %2134 ], [ -1.000000e+00, %2123 ]
  %2215 = fadd fast float %2214, %2121
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  br label %2217

; <label>:2217                                    ; preds = %2213, %2111
  %2218 = phi float [ %2216, %2213 ], [ %2121, %2111 ]
  %2219 = fmul fast float %2218, %468
  br label %2220

; <label>:2220                                    ; preds = %2217, %2106
  %2221 = phi float [ %2219, %2217 ], [ %468, %2106 ]
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 256
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2272, label %2226

; <label>:2226                                    ; preds = %2220
  %2227 = add i32 %61, 432
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %2229, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2231, %dx.types.Handle %102, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = add i32 %61, 132
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = shl i32 %2236, 4
  %2238 = and i32 %2237, 32752
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = lshr i32 %2236, 7
  %2241 = and i32 %2240, 32752
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = fsub fast float 1.000000e+00, %2221
  %2244 = call float @dx.op.binary.f32(i32 35, float %2243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2245 = bitcast float %2221 to i32
  %2246 = sitofp i32 %2245 to float
  %2247 = fadd fast float %2246, 0xC1CFBF8940000000
  %2248 = fmul fast float %2242, %2247
  %2249 = fadd fast float %2248, 0x41CFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = bitcast float %2244 to i32
  %2253 = sitofp i32 %2252 to float
  %2254 = fadd fast float %2253, 0xC1CFBF8940000000
  %2255 = fmul fast float %2254, %2242
  %2256 = fadd fast float %2255, 0x41CFBF8940000000
  %2257 = fptosi float %2256 to i32
  %2258 = bitcast i32 %2257 to float
  %2259 = fmul fast float %2251, %2239
  %2260 = fmul fast float %2258, %2239
  %2261 = fsub fast float %2244, %2259
  %2262 = fadd fast float %2260, %2244
  %2263 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2264 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2265 = fsub fast float %2233, %2263
  %2266 = fsub fast float %2264, %2263
  %2267 = bitcast float %2266 to i32
  %2268 = sub nsw i32 2129859010, %2267
  %2269 = bitcast i32 %2268 to float
  %2270 = fmul fast float %2269, %2265
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  br label %2272

; <label>:2272                                    ; preds = %2226, %2220
  %2273 = phi float [ %2271, %2226 ], [ %2221, %2220 ]
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 128
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2294, label %2278

; <label>:2278                                    ; preds = %2272
  %2279 = add i32 %61, 416
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %102, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 524288
  %2289 = icmp ne i32 %2288, 0
  %2290 = fcmp fast ogt float %2285, 0x3FE0101020000000
  %2291 = select i1 %2290, float 1.000000e+00, float 0.000000e+00
  %2292 = select i1 %2289, float %2291, float %2285
  %2293 = fmul fast float %2292, %2273
  br label %2294

; <label>:2294                                    ; preds = %2278, %2272
  %2295 = phi float [ %2293, %2278 ], [ %2273, %2272 ]
  %2296 = fcmp fast ult float %2295, 0x3F70101020000000
  br i1 %2296, label %2839, label %2297

; <label>:2297                                    ; preds = %2294
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 16
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2500, label %2302

; <label>:2302                                    ; preds = %2297
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = add i32 %61, 368
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = add i32 %2307, 0
  %2309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2309, %dx.types.Handle %101, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2311 = extractvalue %dx.types.ResRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.ResRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.ResRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.ResRet.f32 %2310, 3
  %2315 = and i32 %2304, 255
  %2316 = uitofp i32 %2315 to float
  %2317 = lshr i32 %2304, 8
  %2318 = and i32 %2317, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = fmul fast float %2314, %2316
  %2321 = fadd fast float %2320, %2319
  %2322 = fmul fast float %2321, 0x3F70101000000000
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 512
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2335, label %2327

; <label>:2327                                    ; preds = %2302
  %2328 = add i32 %61, 448
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = add i32 %2330, 0
  %2332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2332, %dx.types.Handle %102, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  br label %2335

; <label>:2335                                    ; preds = %2327, %2302
  %2336 = phi float [ %2334, %2327 ], [ 1.000000e+00, %2302 ]
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 33554432
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2447, label %2341

; <label>:2341                                    ; preds = %2335
  %2342 = add i32 %61, 256
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = lshr i32 %2344, 16
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = add i32 %61, 260
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 65535
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 24
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = and i32 %2355, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = lshr i32 %2355, 8
  %2363 = and i32 %2362, 255
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = lshr i32 %2355, 16
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = add i32 %61, 252
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = lshr i32 %2372, 24
  %2374 = uitofp i32 %2373 to float
  %2375 = fmul fast float %2374, 0x3F70101020000000
  %2376 = and i32 %2372, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101020000000
  %2379 = lshr i32 %2372, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = fmul fast float %2381, 0x3F70101020000000
  %2383 = lshr i32 %2372, 16
  %2384 = and i32 %2383, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = bitcast float %2311 to i32
  %2388 = ashr i32 %2387, 1
  %2389 = sub nsw i32 1597463174, %2388
  %2390 = bitcast i32 %2389 to float
  %2391 = fmul fast float %2311, 5.000000e-01
  %2392 = fmul fast float %2390, %2390
  %2393 = fmul fast float %2392, %2391
  %2394 = fsub fast float 1.500000e+00, %2393
  %2395 = fmul fast float %2390, %2311
  %2396 = fmul fast float %2395, %2394
  %2397 = bitcast float %2312 to i32
  %2398 = ashr i32 %2397, 1
  %2399 = sub nsw i32 1597463174, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2312, 5.000000e-01
  %2402 = fmul fast float %2400, %2400
  %2403 = fmul fast float %2402, %2401
  %2404 = fsub fast float 1.500000e+00, %2403
  %2405 = fmul fast float %2400, %2312
  %2406 = fmul fast float %2405, %2404
  %2407 = bitcast float %2313 to i32
  %2408 = ashr i32 %2407, 1
  %2409 = sub nsw i32 1597463174, %2408
  %2410 = bitcast i32 %2409 to float
  %2411 = fmul fast float %2313, 5.000000e-01
  %2412 = fmul fast float %2410, %2410
  %2413 = fmul fast float %2412, %2411
  %2414 = fsub fast float 1.500000e+00, %2413
  %2415 = fmul fast float %2410, %2313
  %2416 = fmul fast float %2415, %2414
  %2417 = fsub fast float %2396, %2378
  %2418 = fsub fast float %2406, %2382
  %2419 = fsub fast float %2416, %2386
  %2420 = fmul fast float %2417, %2346
  %2421 = fmul fast float %2418, %2348
  %2422 = fmul fast float %2419, %2353
  %2423 = fadd fast float %2420, %2361
  %2424 = fadd fast float %2421, %2365
  %2425 = fadd fast float %2422, %2369
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2428 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2429 = fmul fast float %2426, %2426
  %2430 = fmul fast float %2427, %2427
  %2431 = fmul fast float %2428, %2428
  %2432 = fsub fast float %2429, %2311
  %2433 = fsub fast float %2430, %2312
  %2434 = fsub fast float %2431, %2313
  %2435 = fmul fast float %2432, %2336
  %2436 = fmul fast float %2433, %2336
  %2437 = fmul fast float %2434, %2336
  %2438 = fadd fast float %2435, %2311
  %2439 = fadd fast float %2436, %2312
  %2440 = fadd fast float %2437, %2313
  %2441 = fadd fast float %2358, %2322
  %2442 = fsub fast float %2441, %2375
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2444 = fsub fast float %2443, %2322
  %2445 = fmul fast float %2444, %2336
  %2446 = fadd fast float %2445, %2322
  br label %2500

; <label>:2447                                    ; preds = %2335
  %2448 = and i32 %2338, 134217728
  %2449 = icmp eq i32 %2448, 0
  br i1 %2449, label %2484, label %2450

; <label>:2450                                    ; preds = %2447
  %2451 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2452 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %2453 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fmul fast float %2454, %2336
  %2458 = fmul fast float %2455, %2336
  %2459 = fmul fast float %2456, %2336
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2464 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2465 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2466 = fmul fast float %2460, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2463
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2463
  %2471 = fmul fast float %2461, 2.000000e+00
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2472, %2464
  %2474 = fadd fast float %2473, %2471
  %2475 = fmul fast float %2474, %2464
  %2476 = fmul fast float %2462, 2.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2477, %2465
  %2479 = fadd fast float %2478, %2476
  %2480 = fmul fast float %2479, %2465
  %2481 = fmul fast float %2470, %2470
  %2482 = fmul fast float %2475, %2475
  %2483 = fmul fast float %2480, %2480
  br label %2500

; <label>:2484                                    ; preds = %2447
  %2485 = fmul fast float %343, %343
  %2486 = fmul fast float %347, %347
  %2487 = fmul fast float %351, %351
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fadd fast float %2487, -1.000000e+00
  %2491 = fmul fast float %2336, %2488
  %2492 = fmul fast float %2336, %2489
  %2493 = fmul fast float %2336, %2490
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fadd fast float %2493, 1.000000e+00
  %2497 = fmul fast float %2494, %2311
  %2498 = fmul fast float %2495, %2312
  %2499 = fmul fast float %2496, %2313
  br label %2500

; <label>:2500                                    ; preds = %2484, %2450, %2341, %2297
  %2501 = phi float [ %2446, %2341 ], [ %2322, %2450 ], [ %2322, %2484 ], [ 0x3FA23C0BE0000000, %2297 ]
  %2502 = phi float [ %2438, %2341 ], [ %2481, %2450 ], [ %2497, %2484 ], [ 1.000000e+00, %2297 ]
  %2503 = phi float [ %2439, %2341 ], [ %2482, %2450 ], [ %2498, %2484 ], [ 1.000000e+00, %2297 ]
  %2504 = phi float [ %2440, %2341 ], [ %2483, %2450 ], [ %2499, %2484 ], [ 1.000000e+00, %2297 ]
  %2505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.i32 %2505, 1
  %2507 = and i32 %2506, 1
  %2508 = icmp ne i32 %2507, 0
  %2509 = add i32 %61, 356
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 32
  %2513 = icmp ne i32 %2512, 0
  %2514 = and i1 %2508, %2513
  %2515 = select i1 %2514, float 1.000000e+00, float %2502
  %2516 = select i1 %2514, float 0x3FD3333340000000, float %2503
  %2517 = select i1 %2514, float 0x3FD3333340000000, float %2504
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 32
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2594, label %2522

; <label>:2522                                    ; preds = %2500
  %2523 = add i32 %61, 124
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = add i32 %61, 384
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = add i32 %2528, 0
  %2530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2530, %dx.types.Handle %101, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = extractvalue %dx.types.ResRet.f32 %2531, 3
  %2536 = and i32 %2525, 255
  %2537 = uitofp i32 %2536 to float
  %2538 = lshr i32 %2525, 8
  %2539 = and i32 %2538, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = lshr i32 %2525, 16
  %2542 = and i32 %2541, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = fmul fast float %2543, 0x3F70101000000000
  %2545 = fmul fast float %2532, %2537
  %2546 = fadd fast float %2545, %2540
  %2547 = fmul fast float %2546, 0x3F70101000000000
  %2548 = fadd fast float %2533, -5.000000e-01
  %2549 = fadd fast float %2535, -5.000000e-01
  %2550 = fmul fast float %2548, %2544
  %2551 = fmul fast float %2549, %2544
  %2552 = fadd fast float %2550, 5.000000e-01
  %2553 = fadd fast float %2551, 5.000000e-01
  %2554 = fmul fast float %2552, 2.000000e+00
  %2555 = fadd fast float %2554, -1.000000e+00
  %2556 = fmul fast float %2553, 2.000000e+00
  %2557 = fadd fast float %2556, -1.000000e+00
  %2558 = fadd fast float %2555, %2557
  %2559 = fmul fast float %2558, 5.000000e-01
  %2560 = fsub fast float %2555, %2557
  %2561 = fmul fast float %2560, 5.000000e-01
  %2562 = call float @dx.op.unary.f32(i32 6, float %2559)  ; FAbs(value)
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = call float @dx.op.unary.f32(i32 6, float %2561)  ; FAbs(value)
  %2565 = fsub fast float %2563, %2564
  %2566 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2561, float %2565, float %2559, float %2561, float %2565)  ; Dot3(ax,ay,az,bx,by,bz)
  %2567 = call float @dx.op.unary.f32(i32 25, float %2566)  ; Rsqrt(value)
  %2568 = fmul fast float %2559, %2567
  %2569 = fmul fast float %2561, %2567
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 67108864
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2590, label %2574

; <label>:2574                                    ; preds = %2522
  %2575 = add i32 %61, 312
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 65535
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 65535
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = lshr i32 %2577, 16
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = fsub fast float %2547, %2585
  %2587 = fmul fast float %2586, %2579
  %2588 = fadd fast float %2587, %2583
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  br label %2590

; <label>:2590                                    ; preds = %2574, %2522
  %2591 = phi float [ %2589, %2574 ], [ %2547, %2522 ]
  %2592 = call float @dx.op.dot2.f32(i32 54, float %2568, float %2569, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  %2593 = call float @dx.op.dot2.f32(i32 54, float %2568, float %2569, float %2013, float %2014)  ; Dot2(ax,ay,bx,by)
  br label %2594

; <label>:2594                                    ; preds = %2590, %2500
  %2595 = phi float [ %2591, %2590 ], [ 0x3FD6666660000000, %2500 ]
  %2596 = phi float [ %2592, %2590 ], [ 0.000000e+00, %2500 ]
  %2597 = phi float [ %2593, %2590 ], [ 0.000000e+00, %2500 ]
  %2598 = phi float [ %2534, %2590 ], [ 1.000000e+00, %2500 ]
  %2599 = add i32 %61, 192
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = lshr i32 %2601, 22
  %2603 = shl nuw nsw i32 %2602, 5
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 64
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2642, label %2609

; <label>:2609                                    ; preds = %2594
  %2610 = add i32 %61, 400
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %2612, 0
  %2614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 131072
  %2618 = icmp eq i32 %2617, 0
  %2619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2614, %dx.types.Handle %101, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = fmul fast float %2620, %331
  %2624 = fmul fast float %2621, %334
  %2625 = fmul fast float %2622, %337
  br i1 %2618, label %2632, label %2626

; <label>:2626                                    ; preds = %2609
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = fmul fast float %2628, %2623
  %2630 = fmul fast float %2628, %2624
  %2631 = fmul fast float %2628, %2625
  br label %2632

; <label>:2632                                    ; preds = %2626, %2609
  %2633 = phi float [ %2629, %2626 ], [ %2623, %2609 ]
  %2634 = phi float [ %2630, %2626 ], [ %2624, %2609 ]
  %2635 = phi float [ %2631, %2626 ], [ %2625, %2609 ]
  %2636 = fmul fast float %2633, %2604
  %2637 = select i1 %230, float %2636, float %2633
  %2638 = call float @dx.op.dot3.f32(i32 55, float %2637, float %2634, float %2635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2639 = select i1 %230, float 0.000000e+00, float %2633
  %2640 = select i1 %230, float %2638, float %2634
  %2641 = select i1 %230, float 0.000000e+00, float %2635
  br label %2642

; <label>:2642                                    ; preds = %2632, %2594
  %2643 = phi float [ %2639, %2632 ], [ 0.000000e+00, %2594 ]
  %2644 = phi float [ %2640, %2632 ], [ 0.000000e+00, %2594 ]
  %2645 = phi float [ %2641, %2632 ], [ 0.000000e+00, %2594 ]
  %2646 = add i32 %61, 128
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 255
  %2650 = uitofp i32 %2649 to float
  %2651 = lshr i32 %2648, 8
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2515, float %2516, float %2517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = fmul fast float %2653, %2654
  %2656 = fadd fast float %2655, %2650
  %2657 = fmul fast float %2656, 0x3F70101020000000
  %2658 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  br i1 %1999, label %2659, label %2667

; <label>:2659                                    ; preds = %2642
  %2660 = fsub fast float 1.000000e+00, %2295
  %2661 = fmul fast float %2660, %1988
  %2662 = fmul fast float %2660, %1989
  %2663 = fmul fast float %2660, %1990
  %2664 = fmul fast float %2660, %1991
  %2665 = fmul fast float %2660, %1992
  %2666 = fmul fast float %2660, %1993
  br label %2667

; <label>:2667                                    ; preds = %2659, %2642
  %2668 = phi float [ %2661, %2659 ], [ %1988, %2642 ]
  %2669 = phi float [ %2662, %2659 ], [ %1989, %2642 ]
  %2670 = phi float [ %2663, %2659 ], [ %1990, %2642 ]
  %2671 = phi float [ %2664, %2659 ], [ %1991, %2642 ]
  %2672 = phi float [ %2665, %2659 ], [ %1992, %2642 ]
  %2673 = phi float [ %2666, %2659 ], [ %1993, %2642 ]
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = and i32 %2675, 3
  %2677 = icmp eq i32 %2676, 3
  br i1 %2677, label %2756, label %2678

; <label>:2678                                    ; preds = %2667
  %2679 = and i32 %2675, 16
  %2680 = icmp ne i32 %2679, 0
  %2681 = select i1 %2680, float %2295, float 0.000000e+00
  %2682 = icmp eq i32 %2676, 0
  br i1 %2682, label %2683, label %2711

; <label>:2683                                    ; preds = %2678
  %2684 = and i32 %2675, 64
  %2685 = icmp ne i32 %2684, 0
  %2686 = select i1 %2685, float %2295, float 0.000000e+00
  %2687 = fsub fast float %2515, %2668
  %2688 = fsub fast float %2516, %2669
  %2689 = fsub fast float %2517, %2670
  %2690 = fmul fast float %2681, %2687
  %2691 = fmul fast float %2681, %2688
  %2692 = fmul fast float %2681, %2689
  %2693 = fadd fast float %2690, %2668
  %2694 = fadd fast float %2691, %2669
  %2695 = fadd fast float %2692, %2670
  %2696 = fsub fast float %2501, %1994
  %2697 = fmul fast float %2681, %2696
  %2698 = fadd fast float %2697, %1994
  %2699 = fsub fast float %2643, %2671
  %2700 = fsub fast float %2644, %2672
  %2701 = fsub fast float %2645, %2673
  %2702 = fmul fast float %2686, %2699
  %2703 = fmul fast float %2686, %2700
  %2704 = fmul fast float %2686, %2701
  %2705 = fadd fast float %2702, %2671
  %2706 = fadd fast float %2703, %2672
  %2707 = fadd fast float %2704, %2673
  %2708 = fsub fast float %2658, %1997
  %2709 = fmul fast float %2681, %2708
  %2710 = fadd fast float %2709, %1997
  br label %2756

; <label>:2711                                    ; preds = %2678
  %2712 = icmp eq i32 %2676, 1
  br i1 %2712, label %2713, label %2726

; <label>:2713                                    ; preds = %2711
  %2714 = fadd fast float %2515, -1.000000e+00
  %2715 = fadd fast float %2516, -1.000000e+00
  %2716 = fadd fast float %2517, -1.000000e+00
  %2717 = fmul fast float %2681, %2714
  %2718 = fmul fast float %2681, %2715
  %2719 = fmul fast float %2681, %2716
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fmul fast float %2720, %2668
  %2724 = fmul fast float %2721, %2669
  %2725 = fmul fast float %2722, %2670
  br label %2756

; <label>:2726                                    ; preds = %2711
  %2727 = icmp eq i32 %2676, 2
  br i1 %2727, label %2728, label %2756

; <label>:2728                                    ; preds = %2726
  %2729 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2730 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2731 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fadd fast float %2731, -5.000000e-01
  %2735 = fmul fast float %2732, %2681
  %2736 = fmul fast float %2733, %2681
  %2737 = fmul fast float %2734, %2681
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = fmul fast float %2738, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2668
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2668
  %2746 = fmul fast float %2739, 2.000000e+00
  %2747 = fsub fast float 1.000000e+00, %2746
  %2748 = fmul fast float %2747, %2669
  %2749 = fadd fast float %2748, %2746
  %2750 = fmul fast float %2749, %2669
  %2751 = fmul fast float %2740, 2.000000e+00
  %2752 = fsub fast float 1.000000e+00, %2751
  %2753 = fmul fast float %2752, %2670
  %2754 = fadd fast float %2753, %2751
  %2755 = fmul fast float %2754, %2670
  br label %2756

; <label>:2756                                    ; preds = %2728, %2726, %2713, %2683, %2667
  %2757 = phi float [ %2668, %2667 ], [ %2745, %2728 ], [ %2668, %2726 ], [ %2723, %2713 ], [ %2693, %2683 ]
  %2758 = phi float [ %2669, %2667 ], [ %2750, %2728 ], [ %2669, %2726 ], [ %2724, %2713 ], [ %2694, %2683 ]
  %2759 = phi float [ %2670, %2667 ], [ %2755, %2728 ], [ %2670, %2726 ], [ %2725, %2713 ], [ %2695, %2683 ]
  %2760 = phi float [ %2671, %2667 ], [ %2671, %2728 ], [ %2671, %2726 ], [ %2671, %2713 ], [ %2705, %2683 ]
  %2761 = phi float [ %2672, %2667 ], [ %2672, %2728 ], [ %2672, %2726 ], [ %2672, %2713 ], [ %2706, %2683 ]
  %2762 = phi float [ %2673, %2667 ], [ %2673, %2728 ], [ %2673, %2726 ], [ %2673, %2713 ], [ %2707, %2683 ]
  %2763 = phi float [ %1994, %2667 ], [ %1994, %2728 ], [ %1994, %2726 ], [ %1994, %2713 ], [ %2698, %2683 ]
  %2764 = phi float [ %1997, %2667 ], [ %1997, %2728 ], [ %1997, %2726 ], [ %1997, %2713 ], [ %2710, %2683 ]
  %2765 = and i32 %2675, 12
  %2766 = icmp eq i32 %2765, 12
  br i1 %2766, label %2839, label %2767

; <label>:2767                                    ; preds = %2756
  %2768 = and i32 %2675, 2097184
  %2769 = icmp eq i32 %2768, 2097184
  %2770 = select i1 %2769, float %2295, float 0.000000e+00
  %2771 = and i32 %2675, 4194336
  %2772 = icmp eq i32 %2771, 4194336
  %2773 = select i1 %2772, float %2295, float 0.000000e+00
  %2774 = and i32 %2675, 8388640
  %2775 = icmp eq i32 %2774, 8388640
  %2776 = select i1 %2775, float %2295, float 0.000000e+00
  %2777 = icmp eq i32 %2765, 0
  br i1 %2777, label %2778, label %2791

; <label>:2778                                    ; preds = %2767
  %2779 = fsub fast float %2596, %1986
  %2780 = fsub fast float %2597, %1987
  %2781 = fmul fast float %2770, %2779
  %2782 = fmul fast float %2770, %2780
  %2783 = fadd fast float %2781, %1986
  %2784 = fadd fast float %2782, %1987
  %2785 = fsub fast float %2598, %1996
  %2786 = fmul fast float %2773, %2785
  %2787 = fadd fast float %2786, %1996
  %2788 = fsub fast float %2595, %1995
  %2789 = fmul fast float %2776, %2788
  %2790 = fadd fast float %2789, %1995
  br label %2839

; <label>:2791                                    ; preds = %2767
  %2792 = icmp eq i32 %2765, 4
  br i1 %2792, label %2793, label %2825

; <label>:2793                                    ; preds = %2791
  %2794 = fmul fast float %2770, %2596
  %2795 = fmul fast float %2770, %2597
  %2796 = fadd fast float %2794, %1986
  %2797 = fadd fast float %2795, %1987
  %2798 = call float @dx.op.binary.f32(i32 36, float %1996, float %2598)  ; FMin(a,b)
  %2799 = fsub fast float %2798, %1996
  %2800 = fmul fast float %2799, %2773
  %2801 = fadd fast float %2800, %1996
  %2802 = fadd fast float %2595, %1995
  %2803 = fmul fast float %2802, 0x3FF337FAE0000000
  %2804 = fmul fast float %1995, %1995
  %2805 = fmul fast float %2595, %2595
  %2806 = fadd fast float %2805, %2804
  %2807 = fmul fast float %2806, 0x3FE5152B00000000
  %2808 = fmul fast float %1995, 0xBFCC1F85E0000000
  %2809 = fmul fast float %2808, %2595
  %2810 = fadd fast float %2809, 0xBFE1363700000000
  %2811 = fadd fast float %2810, %2803
  %2812 = fsub fast float %2811, %2807
  %2813 = fmul fast float %2802, 0x3FBA6F0D00000000
  %2814 = fmul fast float %2806, 0x3FD0432880000000
  %2815 = fmul fast float %1995, 0xBFEF110800000000
  %2816 = fmul fast float %2815, %2595
  %2817 = fadd fast float %2816, 1.000000e+00
  %2818 = fsub fast float %2817, %2813
  %2819 = fadd fast float %2818, %2814
  %2820 = fdiv fast float %2812, %2819
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fsub fast float %2821, %1995
  %2823 = fmul fast float %2822, %2776
  %2824 = fadd fast float %2823, %1995
  br label %2839

; <label>:2825                                    ; preds = %2791
  %2826 = icmp eq i32 %2765, 8
  br i1 %2826, label %2827, label %2839

; <label>:2827                                    ; preds = %2825
  %2828 = fmul fast float %2770, %2596
  %2829 = fmul fast float %2770, %2597
  %2830 = fadd fast float %2828, %1986
  %2831 = fadd fast float %2829, %1987
  %2832 = call float @dx.op.binary.f32(i32 36, float %1996, float %2598)  ; FMin(a,b)
  %2833 = fsub fast float %2832, %1996
  %2834 = fmul fast float %2833, %2773
  %2835 = fadd fast float %2834, %1996
  %2836 = fsub fast float %2595, %1995
  %2837 = fmul fast float %2776, %2836
  %2838 = fadd fast float %2837, %1995
  br label %2839

; <label>:2839                                    ; preds = %2827, %2825, %2793, %2778, %2756, %2294, %1998, %1985
  %2840 = phi float [ %1986, %2756 ], [ %1986, %2294 ], [ %1986, %1985 ], [ %2830, %2827 ], [ %1986, %2825 ], [ %2796, %2793 ], [ %2783, %2778 ], [ %1986, %1998 ]
  %2841 = phi float [ %1987, %2756 ], [ %1987, %2294 ], [ %1987, %1985 ], [ %2831, %2827 ], [ %1987, %2825 ], [ %2797, %2793 ], [ %2784, %2778 ], [ %1987, %1998 ]
  %2842 = phi float [ %2757, %2756 ], [ %1988, %2294 ], [ %1988, %1985 ], [ %2757, %2827 ], [ %2757, %2825 ], [ %2757, %2793 ], [ %2757, %2778 ], [ %1988, %1998 ]
  %2843 = phi float [ %2758, %2756 ], [ %1989, %2294 ], [ %1989, %1985 ], [ %2758, %2827 ], [ %2758, %2825 ], [ %2758, %2793 ], [ %2758, %2778 ], [ %1989, %1998 ]
  %2844 = phi float [ %2759, %2756 ], [ %1990, %2294 ], [ %1990, %1985 ], [ %2759, %2827 ], [ %2759, %2825 ], [ %2759, %2793 ], [ %2759, %2778 ], [ %1990, %1998 ]
  %2845 = phi float [ %2760, %2756 ], [ %1991, %2294 ], [ %1991, %1985 ], [ %2760, %2827 ], [ %2760, %2825 ], [ %2760, %2793 ], [ %2760, %2778 ], [ %1991, %1998 ]
  %2846 = phi float [ %2761, %2756 ], [ %1992, %2294 ], [ %1992, %1985 ], [ %2761, %2827 ], [ %2761, %2825 ], [ %2761, %2793 ], [ %2761, %2778 ], [ %1992, %1998 ]
  %2847 = phi float [ %2762, %2756 ], [ %1993, %2294 ], [ %1993, %1985 ], [ %2762, %2827 ], [ %2762, %2825 ], [ %2762, %2793 ], [ %2762, %2778 ], [ %1993, %1998 ]
  %2848 = phi float [ %2763, %2756 ], [ %1994, %2294 ], [ %1994, %1985 ], [ %2763, %2827 ], [ %2763, %2825 ], [ %2763, %2793 ], [ %2763, %2778 ], [ %1994, %1998 ]
  %2849 = phi float [ %1995, %2756 ], [ %1995, %2294 ], [ %1995, %1985 ], [ %2838, %2827 ], [ %1995, %2825 ], [ %2824, %2793 ], [ %2790, %2778 ], [ %1995, %1998 ]
  %2850 = phi float [ %1996, %2756 ], [ %1996, %2294 ], [ %1996, %1985 ], [ %2835, %2827 ], [ %1996, %2825 ], [ %2801, %2793 ], [ %2787, %2778 ], [ %1996, %1998 ]
  %2851 = phi float [ %2764, %2756 ], [ %1997, %2294 ], [ %1997, %1985 ], [ %2764, %2827 ], [ %2764, %2825 ], [ %2764, %2793 ], [ %2764, %2778 ], [ %1997, %1998 ]
  br i1 %418, label %3693, label %2852

; <label>:2852                                    ; preds = %2839
  %2853 = icmp ult i32 %472, 4
  %2854 = add i32 %61, 72
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %61, 76
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = or i32 %2859, %2856
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %3693, label %2862

; <label>:2862                                    ; preds = %2852
  %2863 = and i32 %2856, 262144
  %2864 = icmp ne i32 %2863, 0
  %2865 = select i1 %2864, float %64, float 1.000000e+00
  %2866 = select i1 %2864, float %65, float 0.000000e+00
  %2867 = select i1 %2864, float %66, float 0.000000e+00
  %2868 = select i1 %2864, float %67, float 1.000000e+00
  %2869 = select i1 %2864, float %68, float %84
  %2870 = select i1 %2864, float %69, float %85
  %2871 = add i32 %61, 332
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = lshr i32 %2873, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = fmul fast float %2875, 0x3F50624DE0000000
  %2877 = add i32 %61, 136
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = lshr i32 %2879, 16
  %2881 = and i32 %2880, 255
  %2882 = lshr i32 %2879, 24
  %2883 = add i32 %61, 340
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = lshr i32 %2885, 16
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = add i32 %61, 80
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = lshr i32 %2892, 22
  %2894 = shl nuw nsw i32 %2893, 5
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = shl i32 %2892, 4
  %2897 = and i32 %2896, 32752
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = lshr i32 %2892, 7
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2902, 3
  %2904 = fmul fast float %2903, 1.000000e+03
  %2905 = fmul fast float %408, %2904
  %2906 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2907 = fadd fast float %2906, %398
  %2908 = fmul fast float %409, %2904
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = fadd fast float %2909, %400
  %2911 = fmul fast float %2876, %2904
  %2912 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2913 = fmul fast float %2912, 0x401921FB60000000
  %2914 = fadd fast float %2913, %2895
  %2915 = call float @dx.op.unary.f32(i32 13, float %2914)  ; Sin(value)
  %2916 = call float @dx.op.unary.f32(i32 12, float %2914)  ; Cos(value)
  %2917 = fsub fast float -0.000000e+00, %2915
  %2918 = fadd fast float %2869, -5.000000e-01
  %2919 = fadd fast float %2870, -5.000000e-01
  %2920 = fmul fast float %2887, %2918
  %2921 = fmul fast float %2889, %2919
  %2922 = fadd fast float %2920, 5.000000e-01
  %2923 = fadd fast float %2921, 5.000000e-01
  %2924 = fmul fast float %2898, %2922
  %2925 = fmul fast float %2901, %2923
  %2926 = fmul fast float %2916, %2924
  %2927 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2925, float %2926)  ; FMad(a,b,c)
  %2928 = fmul fast float %2915, %2924
  %2929 = call float @dx.op.tertiary.f32(i32 46, float %2916, float %2925, float %2928)  ; FMad(a,b,c)
  %2930 = fadd fast float %2907, %2927
  %2931 = fadd fast float %2910, %2929
  %2932 = icmp ugt i32 %2881, 1
  %2933 = icmp ugt i32 %2879, 33554431
  %2934 = or i1 %2933, %2932
  br i1 %2934, label %2935, label %2960

; <label>:2935                                    ; preds = %2862
  %2936 = add i32 %61, 276
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = lshr i32 %2938, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = fmul fast float %2903, %2940
  %2942 = call float @dx.op.unary.f32(i32 22, float %2941)  ; Frc(value)
  %2943 = mul nuw nsw i32 %2881, %2882
  %2944 = uitofp i32 %2943 to float
  %2945 = fmul fast float %2942, %2944
  %2946 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2947 = fptoui float %2946 to i32
  %2948 = urem i32 %2947, %2881
  %2949 = udiv i32 %2947, %2882
  %2950 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2951 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2952 = uitofp i32 %2948 to float
  %2953 = uitofp i32 %2949 to float
  %2954 = fadd fast float %2950, %2952
  %2955 = fadd fast float %2951, %2953
  %2956 = uitofp i32 %2881 to float
  %2957 = uitofp i32 %2882 to float
  %2958 = fdiv fast float %2954, %2956
  %2959 = fdiv fast float %2955, %2957
  br label %2960

; <label>:2960                                    ; preds = %2935, %2862
  %2961 = phi float [ %2958, %2935 ], [ %2930, %2862 ]
  %2962 = phi float [ %2959, %2935 ], [ %2931, %2862 ]
  %2963 = and i32 %2856, 16777216
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %3074, label %2965

; <label>:2965                                    ; preds = %2960
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.CBufRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.CBufRet.f32 %2966, 2
  %2970 = fadd fast float %2967, %168
  %2971 = fadd fast float %2968, %169
  %2972 = fadd fast float %2969, %170
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 0
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = icmp eq i32 %62, 65535
  br i1 %2976, label %3071, label %2977

; <label>:2977                                    ; preds = %2965
  %2978 = lshr i32 %62, 1
  %2979 = shl i32 %2978, 2
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %62, 1
  %2983 = icmp ne i32 %2982, 0
  %2984 = lshr i32 %2981, 16
  %2985 = and i32 %2981, 65535
  %2986 = select i1 %2983, i32 %2984, i32 %2985
  %2987 = icmp eq i32 %2986, 65535
  br i1 %2987, label %3067, label %2988

; <label>:2988                                    ; preds = %2977
  %2989 = mul nuw nsw i32 %2986, 40
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = add nuw nsw i32 %2989, 12
  %2995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.ResRet.f32 %2995, 2
  %2999 = add nuw nsw i32 %2989, 24
  %3000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.ResRet.f32 %3000, 2
  %3004 = add nuw nsw i32 %2989, 36
  %3005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = fsub fast float %2970, %2991
  %3008 = fsub fast float %2971, %2992
  %3009 = fsub fast float %2972, %2993
  %3010 = fmul fast float %3006, %3007
  %3011 = fmul fast float %3006, %3008
  %3012 = fmul fast float %3006, %3009
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fmul fast float %3016, %2996
  %3020 = fmul fast float %3017, %2997
  %3021 = fmul fast float %3018, %2998
  %3022 = shl i32 %62, 2
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3028 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3029 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3026, %dx.types.Handle %56, float %3027, float %3028, float %3029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3033 = extractvalue %dx.types.ResRet.f32 %3030, 2
  %3034 = fmul fast float %3031, 1.023000e+03
  %3035 = fmul fast float %3032, 1.023000e+03
  %3036 = fmul fast float %3033, 1.023000e+03
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = call float @dx.op.unary.f32(i32 27, float %3037)  ; Round_ni(value)
  %3041 = call float @dx.op.unary.f32(i32 27, float %3038)  ; Round_ni(value)
  %3042 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3043 = fsub fast float %3010, %3013
  %3044 = fsub fast float %3011, %3014
  %3045 = fsub fast float %3012, %3015
  %3046 = fmul fast float %3043, 7.500000e-01
  %3047 = fmul fast float %3044, 7.500000e-01
  %3048 = fmul fast float %3045, 7.500000e-01
  %3049 = fadd fast float %3013, 1.250000e-01
  %3050 = fadd fast float %3049, %3046
  %3051 = fadd fast float %3050, %3040
  %3052 = fadd fast float %3014, 1.250000e-01
  %3053 = fadd fast float %3052, %3047
  %3054 = fadd fast float %3053, %3041
  %3055 = fadd fast float %3015, 1.250000e-01
  %3056 = fadd fast float %3055, %3048
  %3057 = fadd fast float %3056, %3042
  %3058 = fmul fast float %3051, %3001
  %3059 = fmul fast float %3054, %3002
  %3060 = fmul fast float %3057, %3003
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = add i32 %3062, 0
  %3064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3064, %dx.types.Handle %54, float %3058, float %3059, float %3060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  br label %3067

; <label>:3067                                    ; preds = %2988, %2977
  %3068 = phi float [ %3066, %2988 ], [ -1.000000e+00, %2977 ]
  %3069 = fadd fast float %3068, %2975
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  br label %3071

; <label>:3071                                    ; preds = %3067, %2965
  %3072 = phi float [ %3070, %3067 ], [ %2975, %2965 ]
  %3073 = fmul fast float %3072, %467
  br label %3074

; <label>:3074                                    ; preds = %3071, %2960
  %3075 = phi float [ %3073, %3071 ], [ %467, %2960 ]
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 256
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3126, label %3080

; <label>:3080                                    ; preds = %3074
  %3081 = add i32 %61, 436
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = add i32 %3083, 0
  %3085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3085, %dx.types.Handle %102, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3087 = extractvalue %dx.types.ResRet.f32 %3086, 0
  %3088 = add i32 %61, 148
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = shl i32 %3090, 4
  %3092 = and i32 %3091, 32752
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = lshr i32 %3090, 7
  %3095 = and i32 %3094, 32752
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = fsub fast float 1.000000e+00, %3075
  %3098 = call float @dx.op.binary.f32(i32 35, float %3097, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3099 = bitcast float %3075 to i32
  %3100 = sitofp i32 %3099 to float
  %3101 = fadd fast float %3100, 0xC1CFBF8940000000
  %3102 = fmul fast float %3096, %3101
  %3103 = fadd fast float %3102, 0x41CFBF8940000000
  %3104 = fptosi float %3103 to i32
  %3105 = bitcast i32 %3104 to float
  %3106 = bitcast float %3098 to i32
  %3107 = sitofp i32 %3106 to float
  %3108 = fadd fast float %3107, 0xC1CFBF8940000000
  %3109 = fmul fast float %3108, %3096
  %3110 = fadd fast float %3109, 0x41CFBF8940000000
  %3111 = fptosi float %3110 to i32
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3105, %3093
  %3114 = fmul fast float %3112, %3093
  %3115 = fsub fast float %3098, %3113
  %3116 = fadd fast float %3114, %3098
  %3117 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3119 = fsub fast float %3087, %3117
  %3120 = fsub fast float %3118, %3117
  %3121 = bitcast float %3120 to i32
  %3122 = sub nsw i32 2129859010, %3121
  %3123 = bitcast i32 %3122 to float
  %3124 = fmul fast float %3123, %3119
  %3125 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  br label %3126

; <label>:3126                                    ; preds = %3080, %3074
  %3127 = phi float [ %3125, %3080 ], [ %3075, %3074 ]
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 128
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3148, label %3132

; <label>:3132                                    ; preds = %3126
  %3133 = add i32 %61, 420
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %102, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = and i32 %3141, 524288
  %3143 = icmp ne i32 %3142, 0
  %3144 = fcmp fast ogt float %3139, 0x3FE0101020000000
  %3145 = select i1 %3144, float 1.000000e+00, float 0.000000e+00
  %3146 = select i1 %3143, float %3145, float %3139
  %3147 = fmul fast float %3146, %3127
  br label %3148

; <label>:3148                                    ; preds = %3132, %3126
  %3149 = phi float [ %3147, %3132 ], [ %3127, %3126 ]
  %3150 = fcmp fast ult float %3149, 0x3F70101020000000
  br i1 %3150, label %3693, label %3151

; <label>:3151                                    ; preds = %3148
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 16
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3354, label %3156

; <label>:3156                                    ; preds = %3151
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %61, 372
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %3161, 0
  %3163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3163, %dx.types.Handle %101, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = extractvalue %dx.types.ResRet.f32 %3164, 3
  %3169 = and i32 %3158, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = lshr i32 %3158, 8
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3168, %3170
  %3175 = fadd fast float %3174, %3173
  %3176 = fmul fast float %3175, 0x3F70101000000000
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 512
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3189, label %3181

; <label>:3181                                    ; preds = %3156
  %3182 = add i32 %61, 452
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = add i32 %3184, 0
  %3186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3186, %dx.types.Handle %102, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  br label %3189

; <label>:3189                                    ; preds = %3181, %3156
  %3190 = phi float [ %3188, %3181 ], [ 1.000000e+00, %3156 ]
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 33554432
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3301, label %3195

; <label>:3195                                    ; preds = %3189
  %3196 = add i32 %61, 272
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 65535
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = lshr i32 %3198, 16
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = add i32 %61, 276
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = and i32 %3205, 65535
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = lshr i32 %3209, 24
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = and i32 %3209, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = lshr i32 %3209, 8
  %3217 = and i32 %3216, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = lshr i32 %3209, 16
  %3221 = and i32 %3220, 255
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3222, 0x3F70101020000000
  %3224 = add i32 %61, 268
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = lshr i32 %3226, 24
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101020000000
  %3230 = and i32 %3226, 255
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = lshr i32 %3226, 8
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = fmul fast float %3235, 0x3F70101020000000
  %3237 = lshr i32 %3226, 16
  %3238 = and i32 %3237, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = fmul fast float %3239, 0x3F70101020000000
  %3241 = bitcast float %3165 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = sub nsw i32 1597463174, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3165, 5.000000e-01
  %3246 = fmul fast float %3244, %3244
  %3247 = fmul fast float %3246, %3245
  %3248 = fsub fast float 1.500000e+00, %3247
  %3249 = fmul fast float %3244, %3165
  %3250 = fmul fast float %3249, %3248
  %3251 = bitcast float %3166 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = sub nsw i32 1597463174, %3252
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3166, 5.000000e-01
  %3256 = fmul fast float %3254, %3254
  %3257 = fmul fast float %3256, %3255
  %3258 = fsub fast float 1.500000e+00, %3257
  %3259 = fmul fast float %3254, %3166
  %3260 = fmul fast float %3259, %3258
  %3261 = bitcast float %3167 to i32
  %3262 = ashr i32 %3261, 1
  %3263 = sub nsw i32 1597463174, %3262
  %3264 = bitcast i32 %3263 to float
  %3265 = fmul fast float %3167, 5.000000e-01
  %3266 = fmul fast float %3264, %3264
  %3267 = fmul fast float %3266, %3265
  %3268 = fsub fast float 1.500000e+00, %3267
  %3269 = fmul fast float %3264, %3167
  %3270 = fmul fast float %3269, %3268
  %3271 = fsub fast float %3250, %3232
  %3272 = fsub fast float %3260, %3236
  %3273 = fsub fast float %3270, %3240
  %3274 = fmul fast float %3271, %3200
  %3275 = fmul fast float %3272, %3202
  %3276 = fmul fast float %3273, %3207
  %3277 = fadd fast float %3274, %3215
  %3278 = fadd fast float %3275, %3219
  %3279 = fadd fast float %3276, %3223
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3283 = fmul fast float %3280, %3280
  %3284 = fmul fast float %3281, %3281
  %3285 = fmul fast float %3282, %3282
  %3286 = fsub fast float %3283, %3165
  %3287 = fsub fast float %3284, %3166
  %3288 = fsub fast float %3285, %3167
  %3289 = fmul fast float %3286, %3190
  %3290 = fmul fast float %3287, %3190
  %3291 = fmul fast float %3288, %3190
  %3292 = fadd fast float %3289, %3165
  %3293 = fadd fast float %3290, %3166
  %3294 = fadd fast float %3291, %3167
  %3295 = fadd fast float %3212, %3176
  %3296 = fsub fast float %3295, %3229
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fsub fast float %3297, %3176
  %3299 = fmul fast float %3298, %3190
  %3300 = fadd fast float %3299, %3176
  br label %3354

; <label>:3301                                    ; preds = %3189
  %3302 = and i32 %3192, 134217728
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3338, label %3304

; <label>:3304                                    ; preds = %3301
  %3305 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3306 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fmul fast float %3308, %3190
  %3312 = fmul fast float %3309, %3190
  %3313 = fmul fast float %3310, %3190
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3318 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3319 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3320 = fmul fast float %3314, 2.000000e+00
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %3321, %3317
  %3323 = fadd fast float %3322, %3320
  %3324 = fmul fast float %3323, %3317
  %3325 = fmul fast float %3315, 2.000000e+00
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = fmul fast float %3326, %3318
  %3328 = fadd fast float %3327, %3325
  %3329 = fmul fast float %3328, %3318
  %3330 = fmul fast float %3316, 2.000000e+00
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = fmul fast float %3331, %3319
  %3333 = fadd fast float %3332, %3330
  %3334 = fmul fast float %3333, %3319
  %3335 = fmul fast float %3324, %3324
  %3336 = fmul fast float %3329, %3329
  %3337 = fmul fast float %3334, %3334
  br label %3354

; <label>:3338                                    ; preds = %3301
  %3339 = fmul fast float %385, %385
  %3340 = fmul fast float %389, %389
  %3341 = fmul fast float %393, %393
  %3342 = fadd fast float %3339, -1.000000e+00
  %3343 = fadd fast float %3340, -1.000000e+00
  %3344 = fadd fast float %3341, -1.000000e+00
  %3345 = fmul fast float %3190, %3342
  %3346 = fmul fast float %3190, %3343
  %3347 = fmul fast float %3190, %3344
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fmul fast float %3348, %3165
  %3352 = fmul fast float %3349, %3166
  %3353 = fmul fast float %3350, %3167
  br label %3354

; <label>:3354                                    ; preds = %3338, %3304, %3195, %3151
  %3355 = phi float [ %3300, %3195 ], [ %3176, %3304 ], [ %3176, %3338 ], [ 0x3FA23C0BE0000000, %3151 ]
  %3356 = phi float [ %3292, %3195 ], [ %3335, %3304 ], [ %3351, %3338 ], [ 1.000000e+00, %3151 ]
  %3357 = phi float [ %3293, %3195 ], [ %3336, %3304 ], [ %3352, %3338 ], [ 1.000000e+00, %3151 ]
  %3358 = phi float [ %3294, %3195 ], [ %3337, %3304 ], [ %3353, %3338 ], [ 1.000000e+00, %3151 ]
  %3359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.i32 %3359, 1
  %3361 = and i32 %3360, 1
  %3362 = icmp ne i32 %3361, 0
  %3363 = add i32 %61, 356
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = and i32 %3365, 32
  %3367 = icmp ne i32 %3366, 0
  %3368 = and i1 %3362, %3367
  %3369 = select i1 %3368, float 1.000000e+00, float %3356
  %3370 = select i1 %3368, float 0x3FD3333340000000, float %3357
  %3371 = select i1 %3368, float 0x3FD3333340000000, float %3358
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 32
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3448, label %3376

; <label>:3376                                    ; preds = %3354
  %3377 = add i32 %61, 140
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = add i32 %61, 388
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %3382, 0
  %3384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3384, %dx.types.Handle %101, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3389 = extractvalue %dx.types.ResRet.f32 %3385, 3
  %3390 = and i32 %3379, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = lshr i32 %3379, 8
  %3393 = and i32 %3392, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = lshr i32 %3379, 16
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = fmul fast float %3397, 0x3F70101000000000
  %3399 = fmul fast float %3386, %3391
  %3400 = fadd fast float %3399, %3394
  %3401 = fmul fast float %3400, 0x3F70101000000000
  %3402 = fadd fast float %3387, -5.000000e-01
  %3403 = fadd fast float %3389, -5.000000e-01
  %3404 = fmul fast float %3402, %3398
  %3405 = fmul fast float %3403, %3398
  %3406 = fadd fast float %3404, 5.000000e-01
  %3407 = fadd fast float %3405, 5.000000e-01
  %3408 = fmul fast float %3406, 2.000000e+00
  %3409 = fadd fast float %3408, -1.000000e+00
  %3410 = fmul fast float %3407, 2.000000e+00
  %3411 = fadd fast float %3410, -1.000000e+00
  %3412 = fadd fast float %3409, %3411
  %3413 = fmul fast float %3412, 5.000000e-01
  %3414 = fsub fast float %3409, %3411
  %3415 = fmul fast float %3414, 5.000000e-01
  %3416 = call float @dx.op.unary.f32(i32 6, float %3413)  ; FAbs(value)
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = call float @dx.op.unary.f32(i32 6, float %3415)  ; FAbs(value)
  %3419 = fsub fast float %3417, %3418
  %3420 = call float @dx.op.dot3.f32(i32 55, float %3413, float %3415, float %3419, float %3413, float %3415, float %3419)  ; Dot3(ax,ay,az,bx,by,bz)
  %3421 = call float @dx.op.unary.f32(i32 25, float %3420)  ; Rsqrt(value)
  %3422 = fmul fast float %3413, %3421
  %3423 = fmul fast float %3415, %3421
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 67108864
  %3427 = icmp eq i32 %3426, 0
  br i1 %3427, label %3444, label %3428

; <label>:3428                                    ; preds = %3376
  %3429 = add i32 %61, 328
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 65535
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 65535
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = lshr i32 %3431, 16
  %3439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3438)  ; LegacyF16ToF32(value)
  %3440 = fsub fast float %3401, %3439
  %3441 = fmul fast float %3440, %3433
  %3442 = fadd fast float %3441, %3437
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  br label %3444

; <label>:3444                                    ; preds = %3428, %3376
  %3445 = phi float [ %3443, %3428 ], [ %3401, %3376 ]
  %3446 = call float @dx.op.dot2.f32(i32 54, float %3422, float %3423, float %2865, float %2866)  ; Dot2(ax,ay,bx,by)
  %3447 = call float @dx.op.dot2.f32(i32 54, float %3422, float %3423, float %2867, float %2868)  ; Dot2(ax,ay,bx,by)
  br label %3448

; <label>:3448                                    ; preds = %3444, %3354
  %3449 = phi float [ %3445, %3444 ], [ 0x3FD6666660000000, %3354 ]
  %3450 = phi float [ %3446, %3444 ], [ 0.000000e+00, %3354 ]
  %3451 = phi float [ %3447, %3444 ], [ 0.000000e+00, %3354 ]
  %3452 = phi float [ %3388, %3444 ], [ 1.000000e+00, %3354 ]
  %3453 = add i32 %61, 208
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = lshr i32 %3455, 22
  %3457 = shl nuw nsw i32 %3456, 5
  %3458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3457)  ; LegacyF16ToF32(value)
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 64
  %3462 = icmp eq i32 %3461, 0
  br i1 %3462, label %3496, label %3463

; <label>:3463                                    ; preds = %3448
  %3464 = add i32 %61, 404
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = add i32 %3466, 0
  %3468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 131072
  %3472 = icmp eq i32 %3471, 0
  %3473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3468, %dx.types.Handle %101, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = fmul fast float %3474, %373
  %3478 = fmul fast float %3475, %376
  %3479 = fmul fast float %3476, %379
  br i1 %3472, label %3486, label %3480

; <label>:3480                                    ; preds = %3463
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 0
  %3483 = fmul fast float %3482, %3477
  %3484 = fmul fast float %3482, %3478
  %3485 = fmul fast float %3482, %3479
  br label %3486

; <label>:3486                                    ; preds = %3480, %3463
  %3487 = phi float [ %3483, %3480 ], [ %3477, %3463 ]
  %3488 = phi float [ %3484, %3480 ], [ %3478, %3463 ]
  %3489 = phi float [ %3485, %3480 ], [ %3479, %3463 ]
  %3490 = fmul fast float %3487, %3458
  %3491 = select i1 %230, float %3490, float %3487
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3491, float %3488, float %3489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = select i1 %230, float 0.000000e+00, float %3487
  %3494 = select i1 %230, float %3492, float %3488
  %3495 = select i1 %230, float 0.000000e+00, float %3489
  br label %3496

; <label>:3496                                    ; preds = %3486, %3448
  %3497 = phi float [ %3493, %3486 ], [ 0.000000e+00, %3448 ]
  %3498 = phi float [ %3494, %3486 ], [ 0.000000e+00, %3448 ]
  %3499 = phi float [ %3495, %3486 ], [ 0.000000e+00, %3448 ]
  %3500 = add i32 %61, 144
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = and i32 %3502, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = lshr i32 %3502, 8
  %3506 = and i32 %3505, 255
  %3507 = uitofp i32 %3506 to float
  %3508 = call float @dx.op.dot3.f32(i32 55, float %3369, float %3370, float %3371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3509 = fmul fast float %3507, %3508
  %3510 = fadd fast float %3509, %3504
  %3511 = fmul fast float %3510, 0x3F70101020000000
  %3512 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  br i1 %2853, label %3513, label %3521

; <label>:3513                                    ; preds = %3496
  %3514 = fsub fast float 1.000000e+00, %3149
  %3515 = fmul fast float %3514, %2842
  %3516 = fmul fast float %3514, %2843
  %3517 = fmul fast float %3514, %2844
  %3518 = fmul fast float %3514, %2845
  %3519 = fmul fast float %3514, %2846
  %3520 = fmul fast float %3514, %2847
  br label %3521

; <label>:3521                                    ; preds = %3513, %3496
  %3522 = phi float [ %3515, %3513 ], [ %2842, %3496 ]
  %3523 = phi float [ %3516, %3513 ], [ %2843, %3496 ]
  %3524 = phi float [ %3517, %3513 ], [ %2844, %3496 ]
  %3525 = phi float [ %3518, %3513 ], [ %2845, %3496 ]
  %3526 = phi float [ %3519, %3513 ], [ %2846, %3496 ]
  %3527 = phi float [ %3520, %3513 ], [ %2847, %3496 ]
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 3
  %3531 = icmp eq i32 %3530, 3
  br i1 %3531, label %3610, label %3532

; <label>:3532                                    ; preds = %3521
  %3533 = and i32 %3529, 16
  %3534 = icmp ne i32 %3533, 0
  %3535 = select i1 %3534, float %3149, float 0.000000e+00
  %3536 = icmp eq i32 %3530, 0
  br i1 %3536, label %3537, label %3565

; <label>:3537                                    ; preds = %3532
  %3538 = and i32 %3529, 64
  %3539 = icmp ne i32 %3538, 0
  %3540 = select i1 %3539, float %3149, float 0.000000e+00
  %3541 = fsub fast float %3369, %3522
  %3542 = fsub fast float %3370, %3523
  %3543 = fsub fast float %3371, %3524
  %3544 = fmul fast float %3535, %3541
  %3545 = fmul fast float %3535, %3542
  %3546 = fmul fast float %3535, %3543
  %3547 = fadd fast float %3544, %3522
  %3548 = fadd fast float %3545, %3523
  %3549 = fadd fast float %3546, %3524
  %3550 = fsub fast float %3355, %2848
  %3551 = fmul fast float %3535, %3550
  %3552 = fadd fast float %3551, %2848
  %3553 = fsub fast float %3497, %3525
  %3554 = fsub fast float %3498, %3526
  %3555 = fsub fast float %3499, %3527
  %3556 = fmul fast float %3540, %3553
  %3557 = fmul fast float %3540, %3554
  %3558 = fmul fast float %3540, %3555
  %3559 = fadd fast float %3556, %3525
  %3560 = fadd fast float %3557, %3526
  %3561 = fadd fast float %3558, %3527
  %3562 = fsub fast float %3512, %2851
  %3563 = fmul fast float %3535, %3562
  %3564 = fadd fast float %3563, %2851
  br label %3610

; <label>:3565                                    ; preds = %3532
  %3566 = icmp eq i32 %3530, 1
  br i1 %3566, label %3567, label %3580

; <label>:3567                                    ; preds = %3565
  %3568 = fadd fast float %3369, -1.000000e+00
  %3569 = fadd fast float %3370, -1.000000e+00
  %3570 = fadd fast float %3371, -1.000000e+00
  %3571 = fmul fast float %3535, %3568
  %3572 = fmul fast float %3535, %3569
  %3573 = fmul fast float %3535, %3570
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fmul fast float %3574, %3522
  %3578 = fmul fast float %3575, %3523
  %3579 = fmul fast float %3576, %3524
  br label %3610

; <label>:3580                                    ; preds = %3565
  %3581 = icmp eq i32 %3530, 2
  br i1 %3581, label %3582, label %3610

; <label>:3582                                    ; preds = %3580
  %3583 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3584 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3585 = call float @dx.op.unary.f32(i32 24, float %3371)  ; Sqrt(value)
  %3586 = fadd fast float %3583, -5.000000e-01
  %3587 = fadd fast float %3584, -5.000000e-01
  %3588 = fadd fast float %3585, -5.000000e-01
  %3589 = fmul fast float %3586, %3535
  %3590 = fmul fast float %3587, %3535
  %3591 = fmul fast float %3588, %3535
  %3592 = fadd fast float %3589, 5.000000e-01
  %3593 = fadd fast float %3590, 5.000000e-01
  %3594 = fadd fast float %3591, 5.000000e-01
  %3595 = fmul fast float %3592, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3522
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3522
  %3600 = fmul fast float %3593, 2.000000e+00
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = fmul fast float %3601, %3523
  %3603 = fadd fast float %3602, %3600
  %3604 = fmul fast float %3603, %3523
  %3605 = fmul fast float %3594, 2.000000e+00
  %3606 = fsub fast float 1.000000e+00, %3605
  %3607 = fmul fast float %3606, %3524
  %3608 = fadd fast float %3607, %3605
  %3609 = fmul fast float %3608, %3524
  br label %3610

; <label>:3610                                    ; preds = %3582, %3580, %3567, %3537, %3521
  %3611 = phi float [ %3522, %3521 ], [ %3599, %3582 ], [ %3522, %3580 ], [ %3577, %3567 ], [ %3547, %3537 ]
  %3612 = phi float [ %3523, %3521 ], [ %3604, %3582 ], [ %3523, %3580 ], [ %3578, %3567 ], [ %3548, %3537 ]
  %3613 = phi float [ %3524, %3521 ], [ %3609, %3582 ], [ %3524, %3580 ], [ %3579, %3567 ], [ %3549, %3537 ]
  %3614 = phi float [ %3525, %3521 ], [ %3525, %3582 ], [ %3525, %3580 ], [ %3525, %3567 ], [ %3559, %3537 ]
  %3615 = phi float [ %3526, %3521 ], [ %3526, %3582 ], [ %3526, %3580 ], [ %3526, %3567 ], [ %3560, %3537 ]
  %3616 = phi float [ %3527, %3521 ], [ %3527, %3582 ], [ %3527, %3580 ], [ %3527, %3567 ], [ %3561, %3537 ]
  %3617 = phi float [ %2848, %3521 ], [ %2848, %3582 ], [ %2848, %3580 ], [ %2848, %3567 ], [ %3552, %3537 ]
  %3618 = phi float [ %2851, %3521 ], [ %2851, %3582 ], [ %2851, %3580 ], [ %2851, %3567 ], [ %3564, %3537 ]
  %3619 = and i32 %3529, 12
  %3620 = icmp eq i32 %3619, 12
  br i1 %3620, label %3693, label %3621

; <label>:3621                                    ; preds = %3610
  %3622 = and i32 %3529, 2097184
  %3623 = icmp eq i32 %3622, 2097184
  %3624 = select i1 %3623, float %3149, float 0.000000e+00
  %3625 = and i32 %3529, 4194336
  %3626 = icmp eq i32 %3625, 4194336
  %3627 = select i1 %3626, float %3149, float 0.000000e+00
  %3628 = and i32 %3529, 8388640
  %3629 = icmp eq i32 %3628, 8388640
  %3630 = select i1 %3629, float %3149, float 0.000000e+00
  %3631 = icmp eq i32 %3619, 0
  br i1 %3631, label %3632, label %3645

; <label>:3632                                    ; preds = %3621
  %3633 = fsub fast float %3450, %2840
  %3634 = fsub fast float %3451, %2841
  %3635 = fmul fast float %3624, %3633
  %3636 = fmul fast float %3624, %3634
  %3637 = fadd fast float %3635, %2840
  %3638 = fadd fast float %3636, %2841
  %3639 = fsub fast float %3452, %2850
  %3640 = fmul fast float %3627, %3639
  %3641 = fadd fast float %3640, %2850
  %3642 = fsub fast float %3449, %2849
  %3643 = fmul fast float %3630, %3642
  %3644 = fadd fast float %3643, %2849
  br label %3693

; <label>:3645                                    ; preds = %3621
  %3646 = icmp eq i32 %3619, 4
  br i1 %3646, label %3647, label %3679

; <label>:3647                                    ; preds = %3645
  %3648 = fmul fast float %3624, %3450
  %3649 = fmul fast float %3624, %3451
  %3650 = fadd fast float %3648, %2840
  %3651 = fadd fast float %3649, %2841
  %3652 = call float @dx.op.binary.f32(i32 36, float %2850, float %3452)  ; FMin(a,b)
  %3653 = fsub fast float %3652, %2850
  %3654 = fmul fast float %3653, %3627
  %3655 = fadd fast float %3654, %2850
  %3656 = fadd fast float %3449, %2849
  %3657 = fmul fast float %3656, 0x3FF337FAE0000000
  %3658 = fmul fast float %2849, %2849
  %3659 = fmul fast float %3449, %3449
  %3660 = fadd fast float %3659, %3658
  %3661 = fmul fast float %3660, 0x3FE5152B00000000
  %3662 = fmul fast float %2849, 0xBFCC1F85E0000000
  %3663 = fmul fast float %3662, %3449
  %3664 = fadd fast float %3663, 0xBFE1363700000000
  %3665 = fadd fast float %3664, %3657
  %3666 = fsub fast float %3665, %3661
  %3667 = fmul fast float %3656, 0x3FBA6F0D00000000
  %3668 = fmul fast float %3660, 0x3FD0432880000000
  %3669 = fmul fast float %2849, 0xBFEF110800000000
  %3670 = fmul fast float %3669, %3449
  %3671 = fadd fast float %3670, 1.000000e+00
  %3672 = fsub fast float %3671, %3667
  %3673 = fadd fast float %3672, %3668
  %3674 = fdiv fast float %3666, %3673
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fsub fast float %3675, %2849
  %3677 = fmul fast float %3676, %3630
  %3678 = fadd fast float %3677, %2849
  br label %3693

; <label>:3679                                    ; preds = %3645
  %3680 = icmp eq i32 %3619, 8
  br i1 %3680, label %3681, label %3693

; <label>:3681                                    ; preds = %3679
  %3682 = fmul fast float %3624, %3450
  %3683 = fmul fast float %3624, %3451
  %3684 = fadd fast float %3682, %2840
  %3685 = fadd fast float %3683, %2841
  %3686 = call float @dx.op.binary.f32(i32 36, float %2850, float %3452)  ; FMin(a,b)
  %3687 = fsub fast float %3686, %2850
  %3688 = fmul fast float %3687, %3627
  %3689 = fadd fast float %3688, %2850
  %3690 = fsub fast float %3449, %2849
  %3691 = fmul fast float %3630, %3690
  %3692 = fadd fast float %3691, %2849
  br label %3693

; <label>:3693                                    ; preds = %3681, %3679, %3647, %3632, %3610, %3148, %2852, %2839
  %3694 = phi float [ %2840, %3610 ], [ %2840, %3148 ], [ %2840, %2839 ], [ %2840, %2852 ], [ %3637, %3632 ], [ %3650, %3647 ], [ %2840, %3679 ], [ %3684, %3681 ]
  %3695 = phi float [ %2841, %3610 ], [ %2841, %3148 ], [ %2841, %2839 ], [ %2841, %2852 ], [ %3638, %3632 ], [ %3651, %3647 ], [ %2841, %3679 ], [ %3685, %3681 ]
  %3696 = phi float [ %3611, %3610 ], [ %2842, %3148 ], [ %2842, %2839 ], [ %2842, %2852 ], [ %3611, %3632 ], [ %3611, %3647 ], [ %3611, %3679 ], [ %3611, %3681 ]
  %3697 = phi float [ %3612, %3610 ], [ %2843, %3148 ], [ %2843, %2839 ], [ %2843, %2852 ], [ %3612, %3632 ], [ %3612, %3647 ], [ %3612, %3679 ], [ %3612, %3681 ]
  %3698 = phi float [ %3613, %3610 ], [ %2844, %3148 ], [ %2844, %2839 ], [ %2844, %2852 ], [ %3613, %3632 ], [ %3613, %3647 ], [ %3613, %3679 ], [ %3613, %3681 ]
  %3699 = phi float [ %3614, %3610 ], [ %2845, %3148 ], [ %2845, %2839 ], [ %2845, %2852 ], [ %3614, %3632 ], [ %3614, %3647 ], [ %3614, %3679 ], [ %3614, %3681 ]
  %3700 = phi float [ %3615, %3610 ], [ %2846, %3148 ], [ %2846, %2839 ], [ %2846, %2852 ], [ %3615, %3632 ], [ %3615, %3647 ], [ %3615, %3679 ], [ %3615, %3681 ]
  %3701 = phi float [ %3616, %3610 ], [ %2847, %3148 ], [ %2847, %2839 ], [ %2847, %2852 ], [ %3616, %3632 ], [ %3616, %3647 ], [ %3616, %3679 ], [ %3616, %3681 ]
  %3702 = phi float [ %3617, %3610 ], [ %2848, %3148 ], [ %2848, %2839 ], [ %2848, %2852 ], [ %3617, %3632 ], [ %3617, %3647 ], [ %3617, %3679 ], [ %3617, %3681 ]
  %3703 = phi float [ %2849, %3610 ], [ %2849, %3148 ], [ %2849, %2839 ], [ %2849, %2852 ], [ %3644, %3632 ], [ %3678, %3647 ], [ %2849, %3679 ], [ %3692, %3681 ]
  %3704 = phi float [ %2850, %3610 ], [ %2850, %3148 ], [ %2850, %2839 ], [ %2850, %2852 ], [ %3641, %3632 ], [ %3655, %3647 ], [ %2850, %3679 ], [ %3689, %3681 ]
  %3705 = phi float [ %3618, %3610 ], [ %2851, %3148 ], [ %2851, %2839 ], [ %2851, %2852 ], [ %3618, %3632 ], [ %3618, %3647 ], [ %3618, %3679 ], [ %3618, %3681 ]
  %3706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3707 = extractvalue %dx.types.CBufRet.f32 %3706, 0
  %3708 = call float @dx.op.dot2.f32(i32 54, float %3694, float %3695, float %3694, float %3695)  ; Dot2(ax,ay,bx,by)
  %3709 = fmul fast float %3708, 0x3FE3333340000000
  %3710 = fsub fast float 1.000000e+00, %3709
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3694, float %3695, float %3710, float %3694, float %3695, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = call float @dx.op.unary.f32(i32 25, float %3711)  ; Rsqrt(value)
  %3713 = fmul fast float %3712, %3694
  %3714 = fmul fast float %3712, %3695
  %3715 = fmul fast float %3710, %3712
  %3716 = fmul fast float %3715, %112
  %3717 = fmul fast float %3715, %113
  %3718 = fmul fast float %3715, %114
  %3719 = fmul fast float %3713, %77
  %3720 = fmul fast float %3713, %78
  %3721 = fmul fast float %3713, %79
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = fadd fast float %3718, %3721
  %3725 = fmul fast float %124, %3714
  %3726 = fmul fast float %125, %3714
  %3727 = fmul fast float %126, %3714
  %3728 = fadd fast float %3722, %3725
  %3729 = fadd fast float %3723, %3726
  %3730 = fadd fast float %3724, %3727
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = call float @dx.op.unary.f32(i32 25, float %3731)  ; Rsqrt(value)
  %3733 = fmul fast float %3728, %3732
  %3734 = fmul fast float %3729, %3732
  %3735 = fmul fast float %3730, %3732
  %3736 = and i32 %63, 1
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3738, label %4246

; <label>:3738                                    ; preds = %3693
  %3739 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3740 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3741 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %3742 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3743 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3744 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %3745 = fadd fast float %3739, %168
  %3746 = fadd fast float %3740, %169
  %3747 = fadd fast float %3741, %170
  %3748 = fadd fast float %3742, %168
  %3749 = fadd fast float %3743, %169
  %3750 = fadd fast float %3744, %170
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 2
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 3
  %3758 = fmul fast float %3752, %105
  %3759 = fmul fast float %3758, %3756
  %3760 = fmul fast float %3753, %106
  %3761 = fmul fast float %3760, %3757
  %3762 = fptoui float %3759 to i32
  %3763 = fptoui float %3761 to i32
  %3764 = fadd fast float %3752, -1.000000e+00
  %3765 = fadd fast float %3753, -1.000000e+00
  %3766 = fptoui float %3764 to i32
  %3767 = fptoui float %3765 to i32
  %3768 = call i32 @dx.op.binary.i32(i32 40, i32 %3762, i32 %3766)  ; UMin(a,b)
  %3769 = call i32 @dx.op.binary.i32(i32 40, i32 %3763, i32 %3767)  ; UMin(a,b)
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 2
  %3772 = extractvalue %dx.types.CBufRet.f32 %3770, 3
  %3773 = fmul fast float %3771, %93
  %3774 = fsub fast float %3773, %3772
  %3775 = fadd fast float %3754, -1.000000e+00
  %3776 = call float @dx.op.binary.f32(i32 36, float %3774, float %3775)  ; FMin(a,b)
  %3777 = fptoui float %3776 to i32
  %3778 = fptoui float %3752 to i32
  %3779 = fptoui float %3753 to i32
  %3780 = mul i32 %3777, %3779
  %3781 = add i32 %3780, %3769
  %3782 = mul i32 %3781, %3778
  %3783 = add i32 %3782, %3768
  %3784 = shl i32 %3783, 2
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = and i32 %3786, 1023
  %3788 = lshr i32 %3786, 10
  %3789 = icmp eq i32 %3787, 0
  br i1 %3789, label %4215, label %3790

; <label>:3790                                    ; preds = %3738
  %3791 = and i32 %3786, 1023
  br label %3792

; <label>:3792                                    ; preds = %3918, %3790
  %3793 = phi i32 [ %3868, %3918 ], [ 0, %3790 ]
  %3794 = phi float [ %3919, %3918 ], [ 0.000000e+00, %3790 ]
  %3795 = phi float [ %3920, %3918 ], [ %3707, %3790 ]
  %3796 = phi float [ %3921, %3918 ], [ %3705, %3790 ]
  %3797 = phi float [ %3922, %3918 ], [ 0.000000e+00, %3790 ]
  %3798 = phi float [ %3923, %3918 ], [ 0.000000e+00, %3790 ]
  %3799 = phi float [ %3924, %3918 ], [ %3699, %3790 ]
  %3800 = phi float [ %3925, %3918 ], [ %3700, %3790 ]
  %3801 = phi float [ %3926, %3918 ], [ %3701, %3790 ]
  %3802 = phi float [ %3927, %3918 ], [ %3733, %3790 ]
  %3803 = phi float [ %3928, %3918 ], [ %3734, %3790 ]
  %3804 = phi float [ %3929, %3918 ], [ %3735, %3790 ]
  %3805 = phi float [ %3930, %3918 ], [ %3704, %3790 ]
  %3806 = phi float [ %3931, %3918 ], [ %3703, %3790 ]
  %3807 = phi float [ %3932, %3918 ], [ 0.000000e+00, %3790 ]
  %3808 = phi float [ %3933, %3918 ], [ %3702, %3790 ]
  %3809 = phi float [ %3934, %3918 ], [ %3696, %3790 ]
  %3810 = phi float [ %3935, %3918 ], [ %3697, %3790 ]
  %3811 = phi float [ %3936, %3918 ], [ %3698, %3790 ]
  %3812 = add nuw nsw i32 %3793, %3788
  %3813 = shl i32 %3812, 2
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = shl i32 %3815, 8
  %3817 = or i32 %3816, 48
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = or i32 %3816, 64
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.i32 %3824, 1
  %3827 = or i32 %3816, 80
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3831 = or i32 %3816, 96
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = or i32 %3816, 112
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3840 = or i32 %3816, 128
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3816, 144
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = or i32 %3816, 160
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = extractvalue %dx.types.ResRet.f32 %3853, 3
  %3858 = or i32 %3816, 192
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = or i32 %3816, 208
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = or i32 %3816, 248
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = add nuw nsw i32 %3793, 1
  %3869 = bitcast float %3822 to i32
  %3870 = and i32 %3869, 512
  %3871 = icmp eq i32 %3870, 0
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = or i32 %3816, 16
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3885 = or i32 %3816, 32
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3887, float %3888, float %3889, float %3890, float %168, float %169, float %170, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.unary.f32(i32 27, float %3877)  ; Round_ni(value)
  %3893 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3894 = call float @dx.op.unary.f32(i32 27, float %3884)  ; Round_ni(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 27, float %3896)  ; Round_ni(value)
  %3898 = fadd fast float %3895, %3893
  %3899 = fadd fast float %3898, %3897
  %3900 = fcmp fast oeq float %3899, 0.000000e+00
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %3745, float %3746, float %3747, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3745, float %3746, float %3747, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %3748, float %3749, float %3750, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = call float @dx.op.dot4.f32(i32 56, float %3880, float %3881, float %3882, float %3883, float %3748, float %3749, float %3750, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3905 = fsub fast float %3901, %3877
  %3906 = fsub fast float %3903, %3877
  %3907 = fsub fast float %3902, %3884
  %3908 = fsub fast float %3904, %3884
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3819, float %3820, float %3821, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3912 = fadd fast float %3911, %3909
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3915 = fcmp fast ogt float %3913, %3914
  %3916 = and i1 %3900, %3915
  %3917 = and i1 %3871, %3916
  br i1 %3917, label %3938, label %3918

; <label>:3918                                    ; preds = %4201, %4019, %3938, %3792
  %3919 = phi float [ %3794, %3938 ], [ %4022, %4019 ], [ %4022, %4201 ], [ %3794, %3792 ]
  %3920 = phi float [ %3795, %3938 ], [ %3795, %4019 ], [ %4176, %4201 ], [ %3795, %3792 ]
  %3921 = phi float [ %3796, %3938 ], [ %3796, %4019 ], [ %4174, %4201 ], [ %3796, %3792 ]
  %3922 = phi float [ %3797, %3938 ], [ %3797, %4019 ], [ %4146, %4201 ], [ %3797, %3792 ]
  %3923 = phi float [ %3798, %3938 ], [ %3798, %4019 ], [ %4144, %4201 ], [ %3798, %3792 ]
  %3924 = phi float [ %3799, %3938 ], [ %3799, %4019 ], [ %4211, %4201 ], [ %3799, %3792 ]
  %3925 = phi float [ %3800, %3938 ], [ %3800, %4019 ], [ %4212, %4201 ], [ %3800, %3792 ]
  %3926 = phi float [ %3801, %3938 ], [ %3801, %4019 ], [ %4213, %4201 ], [ %3801, %3792 ]
  %3927 = phi float [ %3802, %3938 ], [ %3802, %4019 ], [ %4125, %4201 ], [ %3802, %3792 ]
  %3928 = phi float [ %3803, %3938 ], [ %3803, %4019 ], [ %4126, %4201 ], [ %3803, %3792 ]
  %3929 = phi float [ %3804, %3938 ], [ %3804, %4019 ], [ %4127, %4201 ], [ %3804, %3792 ]
  %3930 = phi float [ %3805, %3938 ], [ %3805, %4019 ], [ %4154, %4201 ], [ %3805, %3792 ]
  %3931 = phi float [ %3806, %3938 ], [ %3806, %4019 ], [ %4151, %4201 ], [ %3806, %3792 ]
  %3932 = phi float [ %3807, %3938 ], [ %3807, %4019 ], [ %4148, %4201 ], [ %3807, %3792 ]
  %3933 = phi float [ %3808, %3938 ], [ %3808, %4019 ], [ %4142, %4201 ], [ %3808, %3792 ]
  %3934 = phi float [ %3809, %3938 ], [ %3809, %4019 ], [ %4137, %4201 ], [ %3809, %3792 ]
  %3935 = phi float [ %3810, %3938 ], [ %3810, %4019 ], [ %4138, %4201 ], [ %3810, %3792 ]
  %3936 = phi float [ %3811, %3938 ], [ %3811, %4019 ], [ %4139, %4201 ], [ %3811, %3792 ]
  %3937 = icmp eq i32 %3868, %3791
  br i1 %3937, label %4214, label %3792

; <label>:3938                                    ; preds = %3792
  %3939 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3940 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3944 = extractvalue %dx.types.ResRet.i32 %3824, 3
  %3945 = extractvalue %dx.types.ResRet.i32 %3824, 2
  %3946 = add i32 %3944, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3948, float %3877, float %3884, float undef, float undef, i32 0, i32 0, i32 undef, float %3905, float %3907, float undef, float %3906, float %3908, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = fmul fast float %3950, %3943
  %3952 = fadd fast float %3951, %3942
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3877, %3833
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3884, float %3954)  ; FMad(a,b,c)
  %3956 = fadd fast float %3955, %3941
  %3957 = fmul fast float %3877, %3835
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3884, float %3957)  ; FMad(a,b,c)
  %3959 = fadd fast float %3958, %3940
  %3960 = fmul fast float %3905, %3833
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3907, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3905, %3835
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3907, float %3962)  ; FMad(a,b,c)
  %3964 = fmul fast float %3906, %3833
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3908, float %3964)  ; FMad(a,b,c)
  %3966 = fmul fast float %3906, %3835
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3908, float %3966)  ; FMad(a,b,c)
  %3968 = add i32 %3945, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %3948, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = and i32 %3869, 1024
  %3973 = icmp ne i32 %3972, 0
  %3974 = fcmp fast ogt float %3971, 0x3FE0101020000000
  %3975 = uitofp i1 %3974 to float
  %3976 = select i1 %3973, float %3975, float %3971
  %3977 = and i32 %3869, 8192
  %3978 = icmp ne i32 %3977, 0
  %3979 = select i1 %3978, float %3939, float 1.000000e+00
  %3980 = fmul fast float %3877, 2.000000e+00
  %3981 = fadd fast float %3980, -1.000000e+00
  %3982 = call float @dx.op.unary.f32(i32 6, float %3981)  ; FAbs(value)
  %3983 = fmul fast float %3982, %3866
  %3984 = fsub fast float %3983, %3866
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3884, 2.000000e+00
  %3987 = fadd fast float %3986, -1.000000e+00
  %3988 = call float @dx.op.unary.f32(i32 6, float %3987)  ; FAbs(value)
  %3989 = fmul fast float %3988, %3867
  %3990 = fsub fast float %3989, %3867
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3896, %3829
  %3993 = fsub fast float %3992, %3829
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3953, %3979
  %3996 = fmul fast float %3995, %3950
  %3997 = fmul fast float %3996, %3985
  %3998 = fmul fast float %3997, %3976
  %3999 = fmul fast float %3998, %3991
  %4000 = fmul fast float %3999, %3994
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4004 = fsub fast float %3913, %4003
  %4005 = fmul fast float %4004, %4002
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = fmul fast float %4000, %3830
  %4008 = fadd fast float %4000, %3830
  %4009 = fmul fast float %4008, %3839
  %4010 = fsub fast float %4009, %3839
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = and i32 %3869, 128
  %4013 = icmp ne i32 %4012, 0
  %4014 = select i1 %4013, float %4011, float %4007
  %4015 = fmul fast float %4014, %4006
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = fcmp fast ugt float %4015, %4017
  br i1 %4018, label %4019, label %3918

; <label>:4019                                    ; preds = %3938
  %4020 = select i1 %3978, float %4015, float 0.000000e+00
  %4021 = fadd fast float %4020, %3794
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  br i1 %3978, label %3918, label %4023

; <label>:4023                                    ; preds = %4019
  %4024 = and i32 %3869, 4
  %4025 = and i32 %3869, 8
  %4026 = add i32 %3825, 0
  %4027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4026, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4027, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = bitcast float %3851 to i32
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = lshr i32 %4034, 8
  %4038 = and i32 %4037, 255
  %4039 = uitofp i32 %4038 to float
  %4040 = fmul fast float %4033, %4036
  %4041 = fadd fast float %4040, %4039
  %4042 = fmul fast float %4041, 0x3F70101000000000
  %4043 = add i32 %3826, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = bitcast float %3845 to i32
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = lshr i32 %4050, 8
  %4054 = and i32 %4053, 255
  %4055 = uitofp i32 %4054 to float
  %4056 = lshr i32 %4050, 16
  %4057 = and i32 %4056, 255
  %4058 = uitofp i32 %4057 to float
  %4059 = fmul fast float %4058, 0x3F70101000000000
  %4060 = fmul fast float %4046, %4052
  %4061 = fadd fast float %4060, %4055
  %4062 = fmul fast float %4061, 0x3F70101000000000
  %4063 = fadd fast float %4047, -5.000000e-01
  %4064 = fadd fast float %4049, -5.000000e-01
  %4065 = fmul fast float %4063, %4059
  %4066 = fmul fast float %4064, %4059
  %4067 = fadd fast float %4065, 5.000000e-01
  %4068 = fadd fast float %4066, 5.000000e-01
  %4069 = fmul fast float %4030, %3854
  %4070 = fmul fast float %4031, %3855
  %4071 = fmul fast float %4032, %3856
  %4072 = fmul fast float %4067, 2.000000e+00
  %4073 = fadd fast float %4072, -1.000000e+00
  %4074 = fmul fast float %4068, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = fadd fast float %4073, %4075
  %4077 = fmul fast float %4076, 5.000000e-01
  %4078 = fsub fast float %4073, %4075
  %4079 = fmul fast float %4078, 5.000000e-01
  %4080 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4083 = fsub fast float %4081, %4082
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4079, float %4083, float %4077, float %4079, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4077, %4085
  %4087 = fmul fast float %4079, %4085
  %4088 = fmul fast float %4085, %4083
  %4089 = fmul fast float %4088, %3819
  %4090 = fmul fast float %4088, %3820
  %4091 = fmul fast float %4088, %3821
  %4092 = fmul fast float %4086, %3842
  %4093 = fmul fast float %4086, %3843
  %4094 = fmul fast float %4086, %3844
  %4095 = fadd fast float %4092, %4089
  %4096 = fadd fast float %4093, %4090
  %4097 = fadd fast float %4094, %4091
  %4098 = fmul fast float %4087, %3848
  %4099 = fmul fast float %4087, %3849
  %4100 = fmul fast float %4087, %3850
  %4101 = fadd fast float %4095, %4098
  %4102 = fadd fast float %4096, %4099
  %4103 = fadd fast float %4097, %4100
  %4104 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4102, float %4103, float %4101, float %4102, float %4103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4105 = call float @dx.op.unary.f32(i32 25, float %4104)  ; Rsqrt(value)
  %4106 = fmul fast float %4101, %4105
  %4107 = fmul fast float %4102, %4105
  %4108 = fmul fast float %4103, %4105
  %4109 = icmp ne i32 %4025, 0
  %4110 = select i1 %4109, float 1.000000e+00, float 0.000000e+00
  %4111 = fmul fast float %4015, %4110
  %4112 = and i32 %3869, 1
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4114, label %4118

; <label>:4114                                    ; preds = %4023
  %4115 = fsub fast float %4106, %3802
  %4116 = fsub fast float %4107, %3803
  %4117 = fsub fast float %4108, %3804
  br label %4118

; <label>:4118                                    ; preds = %4114, %4023
  %4119 = phi float [ %4115, %4114 ], [ %4106, %4023 ]
  %4120 = phi float [ %4116, %4114 ], [ %4107, %4023 ]
  %4121 = phi float [ %4117, %4114 ], [ %4108, %4023 ]
  %4122 = fmul float %4121, %4111
  %4123 = fmul float %4120, %4111
  %4124 = fmul float %4119, %4111
  %4125 = fadd fast float %4124, %3802
  %4126 = fadd fast float %4123, %3803
  %4127 = fadd fast float %4122, %3804
  %4128 = icmp ne i32 %4024, 0
  %4129 = select i1 %4128, float 1.000000e+00, float 0.000000e+00
  %4130 = fmul fast float %4015, %4129
  %4131 = fsub fast float %4069, %3809
  %4132 = fsub fast float %4070, %3810
  %4133 = fsub fast float %4071, %3811
  %4134 = fmul fast float %4131, %4130
  %4135 = fmul fast float %4132, %4130
  %4136 = fmul fast float %4133, %4130
  %4137 = fadd fast float %4134, %3809
  %4138 = fadd fast float %4135, %3810
  %4139 = fadd fast float %4136, %3811
  %4140 = fsub fast float %4042, %3808
  %4141 = fmul fast float %4140, %4130
  %4142 = fadd fast float %4141, %3808
  %4143 = fmul fast float %4130, %3798
  %4144 = fsub fast float %3798, %4143
  %4145 = fmul fast float %4130, %3797
  %4146 = fsub fast float %3797, %4145
  %4147 = fadd fast float %4015, %3807
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fsub fast float %4062, %3806
  %4150 = fmul fast float %4149, %4111
  %4151 = fadd fast float %4150, %3806
  %4152 = fsub fast float %4048, %3805
  %4153 = fmul fast float %4152, %4111
  %4154 = fadd fast float %4153, %3805
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = fmul fast float %4158, %4155
  %4160 = fadd fast float %4159, %4157
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = bitcast float %3857 to i32
  %4163 = and i32 %4162, 65535
  %4164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4163)  ; LegacyF16ToF32(value)
  %4165 = lshr i32 %4162, 16
  %4166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4165)  ; LegacyF16ToF32(value)
  %4167 = fcmp fast oge float %4164, 0.000000e+00
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = select i1 %4167, float %4164, float %4169
  %4171 = fadd fast float %4170, %4166
  %4172 = fsub fast float %4161, %3796
  %4173 = fmul fast float %4172, %4015
  %4174 = fadd fast float %4173, %3796
  %4175 = fmul fast float %4171, %4015
  %4176 = call float @dx.op.binary.f32(i32 35, float %3795, float %4175)  ; FMax(a,b)
  %4177 = and i32 %3869, 16
  %4178 = icmp eq i32 %4177, 0
  br i1 %4178, label %4201, label %4179

; <label>:4179                                    ; preds = %4118
  %4180 = bitcast float %3863 to i32
  %4181 = add i32 %3860, 0
  %4182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4181, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4183 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4182, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.ResRet.f32 %4183, 2
  %4187 = and i32 %4180, 65535
  %4188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4187)  ; LegacyF16ToF32(value)
  %4189 = fmul fast float %4184, %3854
  %4190 = fmul fast float %4185, %3855
  %4191 = fmul fast float %4186, %3856
  %4192 = and i32 %3869, 16384
  %4193 = icmp ne i32 %4192, 0
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = select i1 %4193, float %4195, float 1.000000e+00
  %4197 = fmul fast float %4196, %4188
  %4198 = fmul fast float %4189, %4197
  %4199 = fmul fast float %4190, %4197
  %4200 = fmul fast float %4191, %4197
  br label %4201

; <label>:4201                                    ; preds = %4179, %4118
  %4202 = phi float [ %4198, %4179 ], [ 0.000000e+00, %4118 ]
  %4203 = phi float [ %4199, %4179 ], [ 0.000000e+00, %4118 ]
  %4204 = phi float [ %4200, %4179 ], [ 0.000000e+00, %4118 ]
  %4205 = fsub fast float %4202, %3799
  %4206 = fsub fast float %4203, %3800
  %4207 = fsub fast float %4204, %3801
  %4208 = fmul fast float %4205, %4015
  %4209 = fmul fast float %4206, %4015
  %4210 = fmul fast float %4207, %4015
  %4211 = fadd fast float %4208, %3799
  %4212 = fadd fast float %4209, %3800
  %4213 = fadd fast float %4210, %3801
  br label %3918

; <label>:4214                                    ; preds = %3918
  br label %4215

; <label>:4215                                    ; preds = %4214, %3738
  %4216 = phi float [ 0.000000e+00, %3738 ], [ %3919, %4214 ]
  %4217 = phi float [ %3707, %3738 ], [ %3920, %4214 ]
  %4218 = phi float [ %3705, %3738 ], [ %3921, %4214 ]
  %4219 = phi float [ 0.000000e+00, %3738 ], [ %3922, %4214 ]
  %4220 = phi float [ 0.000000e+00, %3738 ], [ %3923, %4214 ]
  %4221 = phi float [ %3699, %3738 ], [ %3924, %4214 ]
  %4222 = phi float [ %3700, %3738 ], [ %3925, %4214 ]
  %4223 = phi float [ %3701, %3738 ], [ %3926, %4214 ]
  %4224 = phi float [ %3733, %3738 ], [ %3927, %4214 ]
  %4225 = phi float [ %3734, %3738 ], [ %3928, %4214 ]
  %4226 = phi float [ %3735, %3738 ], [ %3929, %4214 ]
  %4227 = phi float [ %3704, %3738 ], [ %3930, %4214 ]
  %4228 = phi float [ %3703, %3738 ], [ %3931, %4214 ]
  %4229 = phi float [ 0.000000e+00, %3738 ], [ %3932, %4214 ]
  %4230 = phi float [ %3702, %3738 ], [ %3933, %4214 ]
  %4231 = phi float [ %3696, %3738 ], [ %3934, %4214 ]
  %4232 = phi float [ %3697, %3738 ], [ %3935, %4214 ]
  %4233 = phi float [ %3698, %3738 ], [ %3936, %4214 ]
  %4234 = call float @dx.op.dot3.f32(i32 55, float %4224, float %4225, float %4226, float %4224, float %4225, float %4226)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = call float @dx.op.unary.f32(i32 25, float %4234)  ; Rsqrt(value)
  %4236 = fmul fast float %4235, %4224
  %4237 = fmul fast float %4235, %4225
  %4238 = fmul fast float %4235, %4226
  %4239 = fadd fast float %4229, %1140
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call float @dx.op.unary.f32(i32 25, float %4241)  ; Rsqrt(value)
  %4243 = fmul fast float %4242, %4236
  %4244 = fmul fast float %4242, %4237
  %4245 = fmul fast float %4242, %4238
  br label %4246

; <label>:4246                                    ; preds = %4215, %3693
  %4247 = phi float [ %4243, %4215 ], [ %3733, %3693 ]
  %4248 = phi float [ %4244, %4215 ], [ %3734, %3693 ]
  %4249 = phi float [ %4245, %4215 ], [ %3735, %3693 ]
  %4250 = phi float [ %4231, %4215 ], [ %3696, %3693 ]
  %4251 = phi float [ %4232, %4215 ], [ %3697, %3693 ]
  %4252 = phi float [ %4233, %4215 ], [ %3698, %3693 ]
  %4253 = phi float [ %4221, %4215 ], [ %3699, %3693 ]
  %4254 = phi float [ %4222, %4215 ], [ %3700, %3693 ]
  %4255 = phi float [ %4223, %4215 ], [ %3701, %3693 ]
  %4256 = phi float [ %4230, %4215 ], [ %3702, %3693 ]
  %4257 = phi float [ %4240, %4215 ], [ %1140, %3693 ]
  %4258 = phi float [ %4228, %4215 ], [ %3703, %3693 ]
  %4259 = phi float [ %4227, %4215 ], [ %3704, %3693 ]
  %4260 = phi float [ %4220, %4215 ], [ 0.000000e+00, %3693 ]
  %4261 = phi float [ %4219, %4215 ], [ 0.000000e+00, %3693 ]
  %4262 = phi float [ %4216, %4215 ], [ 0.000000e+00, %3693 ]
  %4263 = phi float [ %4217, %4215 ], [ %3707, %3693 ]
  %4264 = phi float [ %4218, %4215 ], [ %3705, %3693 ]
  %4265 = fadd fast float %4256, 0xBFB99999A0000000
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = fmul fast float %4266, 0x3FF1C71C80000000
  %4268 = call float @dx.op.binary.f32(i32 36, float %4256, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4269 = fsub fast float 1.000000e+00, %4267
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = fmul fast float %4270, %4250
  %4272 = fmul fast float %4270, %4251
  %4273 = fmul fast float %4270, %4252
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = fmul fast float %4267, %4250
  %4278 = fmul fast float %4267, %4251
  %4279 = fmul fast float %4267, %4252
  %4280 = fadd fast float %4277, %4268
  %4281 = fadd fast float %4278, %4268
  %4282 = fadd fast float %4279, %4268
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.i32 %4287, 3
  %4289 = and i32 %4288, 8
  %4290 = icmp ne i32 %4289, 0
  %4291 = call float @dx.op.binary.f32(i32 35, float %4274, float %4250)  ; FMax(a,b)
  %4292 = call float @dx.op.binary.f32(i32 35, float %4275, float %4250)  ; FMax(a,b)
  %4293 = call float @dx.op.binary.f32(i32 35, float %4276, float %4250)  ; FMax(a,b)
  %4294 = call float @dx.op.dot3.f32(i32 55, float %4274, float %4275, float %4276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4295 = select i1 %230, float %4250, float %4274
  %4296 = select i1 %230, float %4294, float %4275
  %4297 = select i1 %230, float 1.000000e+00, float %4276
  %4298 = select i1 %4290, float %4291, float %4295
  %4299 = select i1 %4290, float %4292, float %4296
  %4300 = select i1 %4290, float %4293, float %4297
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4305 = fadd fast float %4302, %168
  %4306 = fadd fast float %4303, %169
  %4307 = fadd fast float %4304, %170
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = fsub fast float %4305, %4309
  %4312 = fsub fast float %4306, %4310
  %4313 = fmul fast float %4311, %4311
  %4314 = fmul fast float %4312, %4312
  %4315 = fadd fast float %4313, %4314
  %4316 = call float @dx.op.unary.f32(i32 24, float %4315)  ; Sqrt(value)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4318 = fcmp fast olt float %4316, %4317
  br i1 %4318, label %4319, label %4386

; <label>:4319                                    ; preds = %4246
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4330 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4331 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4332 = fadd fast float %4329, %4305
  %4333 = fadd fast float %4330, %4306
  %4334 = fadd fast float %4331, %4307
  %4335 = fmul fast float %4332, %4321
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4333, float %4323, float %4335)  ; FMad(a,b,c)
  %4337 = call float @dx.op.tertiary.f32(i32 46, float %4334, float %4325, float %4336)  ; FMad(a,b,c)
  %4338 = fmul fast float %4332, %4326
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4333, float %4327, float %4338)  ; FMad(a,b,c)
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4334, float %4328, float %4339)  ; FMad(a,b,c)
  %4341 = fsub fast float %4337, %4329
  %4342 = fsub fast float %4340, %4330
  %4343 = fsub fast float %4341, %4309
  %4344 = fadd fast float %4343, %4317
  %4345 = fsub fast float %4342, %4310
  %4346 = fadd fast float %4345, %4317
  %4347 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4348 = fmul fast float %4344, %4347
  %4349 = fmul fast float %4346, %4347
  %4350 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4352 = fsub fast float 1.000000e+00, %4350
  %4353 = fsub fast float 1.000000e+00, %4351
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = fcmp fast ugt float %4355, 0.000000e+00
  br i1 %4356, label %4357, label %4660

; <label>:4357                                    ; preds = %4319
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = fmul fast float %4359, %4355
  %4361 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4362 = fadd fast float %4361, %4360
  %4363 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4364 = fadd fast float %4362, %4331
  %4365 = fmul fast float %4337, %4325
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4328, float %4365)  ; FMad(a,b,c)
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4363, float %4366)  ; FMad(a,b,c)
  %4368 = fsub fast float %4367, %4331
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 2
  %4371 = fsub fast float %4368, %4370
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.ResRet.f32 %4372, 1
  %4375 = extractvalue %dx.types.ResRet.f32 %4372, 2
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %55, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = fadd fast float %4377, %4373
  %4381 = fmul fast float %4380, 0x3F847AE140000000
  %4382 = fadd fast float %4378, %4374
  %4383 = fmul fast float %4382, 0x3F847AE140000000
  %4384 = fadd fast float %4379, %4375
  %4385 = fmul fast float %4384, 0x3F847AE140000000
  br label %4660

; <label>:4386                                    ; preds = %4246
  %4387 = and i32 %206, 1
  %4388 = icmp eq i32 %4387, 0
  br i1 %4388, label %4660, label %4389

; <label>:4389                                    ; preds = %4386
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4397 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4399 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4400 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4401 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4402 = fadd fast float %4399, %4305
  %4403 = fadd fast float %4400, %4306
  %4404 = fadd fast float %4401, %4307
  %4405 = fmul fast float %4402, %4391
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4393, float %4405)  ; FMad(a,b,c)
  %4407 = call float @dx.op.tertiary.f32(i32 46, float %4404, float %4395, float %4406)  ; FMad(a,b,c)
  %4408 = fmul fast float %4402, %4396
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4397, float %4408)  ; FMad(a,b,c)
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4404, float %4398, float %4409)  ; FMad(a,b,c)
  %4411 = fsub fast float %4407, %4399
  %4412 = fsub fast float %4410, %4400
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.CBufRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 3
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 0
  %4422 = extractvalue %dx.types.CBufRet.i32 %4420, 1
  %4423 = udiv i32 %4422, %4421
  %4424 = fsub fast float %4411, %4414
  %4425 = fsub fast float %4412, %4415
  %4426 = call float @dx.op.binary.f32(i32 35, float %4424, float 0.000000e+00)  ; FMax(a,b)
  %4427 = call float @dx.op.binary.f32(i32 35, float %4425, float 0.000000e+00)  ; FMax(a,b)
  %4428 = call float @dx.op.binary.f32(i32 36, float %4426, float %4416)  ; FMin(a,b)
  %4429 = call float @dx.op.binary.f32(i32 36, float %4427, float %4417)  ; FMin(a,b)
  %4430 = add i32 %4421, -1
  %4431 = add i32 %4423, -1
  %4432 = fmul fast float %4428, %4419
  %4433 = fmul fast float %4429, %4419
  %4434 = fptoui float %4432 to i32
  %4435 = fptoui float %4433 to i32
  %4436 = call i32 @dx.op.binary.i32(i32 40, i32 %4434, i32 %4430)  ; UMin(a,b)
  %4437 = call i32 @dx.op.binary.i32(i32 40, i32 %4435, i32 %4431)  ; UMin(a,b)
  %4438 = mul i32 %4437, %4421
  %4439 = add i32 %4438, %4436
  %4440 = shl i32 %4439, 2
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = icmp eq i32 %4442, -1
  br i1 %4443, label %4660, label %4444

; <label>:4444                                    ; preds = %4389
  %4445 = mul i32 %4442, 148
  %4446 = add i32 %4445, 4
  %4447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4446, i32 undef)  ; BufferLoad(srv,index,wot)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = add i32 %4445, 8
  %4450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = add i32 %4445, 36
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = add i32 %4445, 60
  %4456 = add i32 %4445, 92
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = add i32 %4445, 116
  %4460 = fsub fast float %4411, %4448
  %4461 = fsub fast float %4412, %4451
  %4462 = fmul fast float %4419, %4460
  %4463 = fmul fast float %4419, %4461
  %4464 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4469 = call float @dx.op.unary.f32(i32 83, float %4464)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 83, float %4466)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %4464)  ; DerivCoarseY(value)
  %4472 = call float @dx.op.unary.f32(i32 84, float %4466)  ; DerivCoarseY(value)
  %4473 = fmul fast float %4469, %4468
  %4474 = fmul fast float %4470, %4468
  %4475 = fmul fast float %4471, %4468
  %4476 = fmul fast float %4472, %4468
  %4477 = call float @dx.op.dot2.f32(i32 54, float %4475, float %4476, float %4475, float %4476)  ; Dot2(ax,ay,bx,by)
  %4478 = call float @dx.op.dot2.f32(i32 54, float %4473, float %4474, float %4473, float %4474)  ; Dot2(ax,ay,bx,by)
  %4479 = call float @dx.op.binary.f32(i32 35, float %4478, float %4477)  ; FMax(a,b)
  %4480 = call float @dx.op.unary.f32(i32 23, float %4479)  ; Log(value)
  %4481 = fmul fast float %4480, 5.000000e-01
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4484 = fadd fast float %4483, %4481
  %4485 = call float @dx.op.binary.f32(i32 35, float %4484, float 0.000000e+00)  ; FMax(a,b)
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 3
  %4488 = fadd fast float %4487, %4485
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4491 = fadd fast float %4488, %4490
  %4492 = add i32 %4458, 0
  %4493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4493, i32 0)  ; GetDimensions(handle,mipLevel)
  %4495 = extractvalue %dx.types.Dimensions %4494, 0
  %4496 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4495)  ; FirstbitLo(value)
  %4497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.i32 %4497, 1
  %4499 = sub nsw i32 %4498, %4496
  %4500 = sitofp i32 %4499 to float
  %4501 = fsub fast float %4491, %4500
  %4502 = call float @dx.op.binary.f32(i32 35, float %4501, float 0.000000e+00)  ; FMax(a,b)
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4493, %dx.types.Handle %53, float %4464, float %4466, float %4454, float undef, i32 0, i32 0, i32 undef, float %4502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = fcmp ule float %4504, 0x3FE0101020000000
  %4506 = extractvalue %dx.types.CBufRet.i32 %4497, 0
  %4507 = and i32 %4506, 128
  %4508 = icmp ne i32 %4507, 0
  %4509 = and i1 %4505, %4508
  br i1 %4509, label %4660, label %4510

; <label>:4510                                    ; preds = %4444
  %4511 = add i32 %4445, 20
  %4512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = add i32 %4445, 24
  %4515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4514, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = add i32 %4445, 40
  %4518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4517, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = add i32 %4445, 96
  %4521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4520, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.i32 %4521, 0
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4525 = fmul fast float %4524, %4464
  %4526 = fmul fast float %4524, %4466
  %4527 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4528 = fadd fast float %4525, %4527
  %4529 = fadd fast float %4526, %4527
  %4530 = add i32 %4522, 0
  %4531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4532 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4531, i32 0)  ; GetDimensions(handle,mipLevel)
  %4533 = extractvalue %dx.types.Dimensions %4532, 0
  %4534 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4533)  ; FirstbitLo(value)
  %4535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.i32 %4535, 1
  %4537 = sub nsw i32 %4536, %4534
  %4538 = sitofp i32 %4537 to float
  %4539 = fsub fast float %4488, %4538
  %4540 = call float @dx.op.binary.f32(i32 35, float %4539, float 0.000000e+00)  ; FMax(a,b)
  %4541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4531, %dx.types.Handle %53, float %4528, float %4529, float %4519, float undef, i32 0, i32 0, i32 undef, float %4540)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = fmul fast float %4542, %4513
  %4544 = fadd fast float %4543, %4516
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.CBufRet.f32 %4545, 2
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 3
  %4553 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4554 = fadd fast float %4550, %4411
  %4555 = fadd fast float %4552, %4412
  %4556 = fadd fast float %4544, %4553
  %4557 = fmul fast float %4554, %4546
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4547, float %4557)  ; FMad(a,b,c)
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4548, float %4558)  ; FMad(a,b,c)
  %4560 = fsub fast float %4559, %4553
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4563 = fsub fast float %4560, %4562
  %4564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.i32 %4564, 0
  %4566 = call i32 @dx.op.binary.i32(i32 40, i32 %4442, i32 %4565)  ; UMin(a,b)
  %4567 = mul i32 %4566, 36
  %4568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.i32 %4568, 0
  %4570 = add i32 %4567, 4
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = fmul fast float %4572, %4464
  %4574 = fmul fast float %4572, %4466
  %4575 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4576 = fadd fast float %4573, %4575
  %4577 = fadd fast float %4574, %4575
  %4578 = icmp eq i32 %4569, 0
  br i1 %4578, label %4647, label %4579

; <label>:4579                                    ; preds = %4510
  br label %4580

; <label>:4580                                    ; preds = %4637, %4579
  %4581 = phi float [ %4638, %4637 ], [ 0.000000e+00, %4579 ]
  %4582 = phi float [ %4639, %4637 ], [ 0.000000e+00, %4579 ]
  %4583 = phi float [ %4640, %4637 ], [ 0.000000e+00, %4579 ]
  %4584 = phi float [ %4641, %4637 ], [ 0.000000e+00, %4579 ]
  %4585 = phi float [ %4642, %4637 ], [ 0.000000e+00, %4579 ]
  %4586 = phi float [ %4643, %4637 ], [ 0.000000e+00, %4579 ]
  %4587 = phi i32 [ %4644, %4637 ], [ 0, %4579 ]
  %4588 = shl i32 %4587, 2
  %4589 = add i32 %4455, %4588
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = add i32 %4459, %4588
  %4593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.i32 %4593, 0
  %4595 = add i32 %4594, 0
  %4596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4595, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4597 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4596, i32 0)  ; GetDimensions(handle,mipLevel)
  %4598 = extractvalue %dx.types.Dimensions %4597, 0
  %4599 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4598)  ; FirstbitLo(value)
  %4600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.i32 %4600, 1
  %4602 = sub nsw i32 %4601, %4599
  %4603 = sitofp i32 %4602 to float
  %4604 = fsub fast float %4488, %4603
  %4605 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4596, %dx.types.Handle %53, float %4576, float %4577, float %4591, float undef, i32 0, i32 0, i32 undef, float %4605)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = fcmp fast ogt float %4607, 0.000000e+00
  br i1 %4608, label %4609, label %4637

; <label>:4609                                    ; preds = %4580
  %4610 = add i32 %4570, %4588
  %4611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.i32 %4611, 0
  %4613 = and i32 %4612, 32767
  %4614 = mul nuw nsw i32 %4613, 928
  %4615 = add nuw nsw i32 %4614, 48
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = add nuw nsw i32 %4614, 60
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = fmul fast float %4617, %4607
  %4626 = fmul fast float %4618, %4607
  %4627 = fmul fast float %4619, %4607
  %4628 = fadd fast float %4625, %4581
  %4629 = fadd fast float %4626, %4582
  %4630 = fadd fast float %4627, %4583
  %4631 = fmul fast float %4622, %4607
  %4632 = fmul fast float %4623, %4607
  %4633 = fmul fast float %4624, %4607
  %4634 = fadd fast float %4631, %4584
  %4635 = fadd fast float %4632, %4585
  %4636 = fadd fast float %4633, %4586
  br label %4637

; <label>:4637                                    ; preds = %4609, %4580
  %4638 = phi float [ %4628, %4609 ], [ %4581, %4580 ]
  %4639 = phi float [ %4629, %4609 ], [ %4582, %4580 ]
  %4640 = phi float [ %4630, %4609 ], [ %4583, %4580 ]
  %4641 = phi float [ %4634, %4609 ], [ %4584, %4580 ]
  %4642 = phi float [ %4635, %4609 ], [ %4585, %4580 ]
  %4643 = phi float [ %4636, %4609 ], [ %4586, %4580 ]
  %4644 = add nuw i32 %4587, 1
  %4645 = icmp eq i32 %4644, %4569
  br i1 %4645, label %4646, label %4580

; <label>:4646                                    ; preds = %4637
  br label %4647

; <label>:4647                                    ; preds = %4646, %4510
  %4648 = phi float [ 0.000000e+00, %4510 ], [ %4638, %4646 ]
  %4649 = phi float [ 0.000000e+00, %4510 ], [ %4639, %4646 ]
  %4650 = phi float [ 0.000000e+00, %4510 ], [ %4640, %4646 ]
  %4651 = phi float [ 0.000000e+00, %4510 ], [ %4641, %4646 ]
  %4652 = phi float [ 0.000000e+00, %4510 ], [ %4642, %4646 ]
  %4653 = phi float [ 0.000000e+00, %4510 ], [ %4643, %4646 ]
  %4654 = fadd fast float %4651, %4648
  %4655 = fmul fast float %4654, 0x3F847AE140000000
  %4656 = fadd fast float %4652, %4649
  %4657 = fmul fast float %4656, 0x3F847AE140000000
  %4658 = fadd fast float %4653, %4650
  %4659 = fmul fast float %4658, 0x3F847AE140000000
  br label %4660

; <label>:4660                                    ; preds = %4647, %4444, %4389, %4386, %4357, %4319
  %4661 = phi float [ %4371, %4357 ], [ -1.310720e+05, %4319 ], [ %4563, %4647 ], [ -1.310720e+05, %4389 ], [ -1.310720e+05, %4444 ], [ -1.310720e+05, %4386 ]
  %4662 = phi float [ %4381, %4357 ], [ 0.000000e+00, %4319 ], [ %4655, %4647 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4444 ], [ 0.000000e+00, %4386 ]
  %4663 = phi float [ %4383, %4357 ], [ 0.000000e+00, %4319 ], [ %4657, %4647 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4444 ], [ 0.000000e+00, %4386 ]
  %4664 = phi float [ %4385, %4357 ], [ 0.000000e+00, %4319 ], [ %4659, %4647 ], [ 0.000000e+00, %4389 ], [ 0.000000e+00, %4444 ], [ 0.000000e+00, %4386 ]
  %4665 = phi i1 [ true, %4357 ], [ false, %4319 ], [ true, %4647 ], [ false, %4389 ], [ false, %4444 ], [ false, %4386 ]
  %4666 = and i32 %206, 3
  %4667 = icmp eq i32 %4666, 1
  %4668 = select i1 %4667, float 1.000000e+00, float 0.000000e+00
  %4669 = fsub fast float %4661, %170
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = select i1 %4665, float %4670, float 1.000000e+00
  %4672 = fmul fast float %4671, %4668
  %4673 = icmp eq i32 %4666, 3
  %4674 = select i1 %4673, float 1.000000e+00, float %4672
  %4675 = call float @dx.op.binary.f32(i32 35, float %4262, float %4674)  ; FMax(a,b)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fcmp fast une float %4676, 0.000000e+00
  %4678 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.unary.f32(i32 25, float %4678)  ; Rsqrt(value)
  br i1 %4677, label %4687, label %4680

; <label>:4680                                    ; preds = %4660
  %4681 = fmul fast float %4679, %168
  %4682 = fmul fast float %4679, %169
  %4683 = fmul fast float %4679, %170
  %4684 = fsub fast float -0.000000e+00, %4681
  %4685 = fsub fast float -0.000000e+00, %4682
  %4686 = fsub fast float -0.000000e+00, %4683
  br label %4855

; <label>:4687                                    ; preds = %4660
  %4688 = fmul fast float %168, %4679
  %4689 = fsub fast float -0.000000e+00, %4688
  %4690 = fmul fast float %169, %4679
  %4691 = fsub fast float -0.000000e+00, %4690
  %4692 = fmul fast float %170, %4679
  %4693 = fsub fast float -0.000000e+00, %4692
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4691, float %4693, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = fmul fast float %4676, 2.500000e+00
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4676, 0x4013FFFFE0000000
  %4698 = fadd fast float %4697, 0xBFFFFFFFE0000000
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4676, 0x4004000020000000
  %4701 = fadd fast float %4700, 0xBFF8000040000000
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4704 = fmul fast float %4265, 1.000000e+01
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, 2.000000e+00
  %4707 = fsub fast float 3.000000e+00, %4706
  %4708 = fmul fast float %4705, %4705
  %4709 = fmul fast float %4708, %4707
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = fsub fast float 0x3FE3333340000000, %4286
  %4712 = fmul fast float %4711, 0x400AAAAAA0000000
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4710, %4713
  %4715 = fmul fast float %4298, 0x3FEA2B8620000000
  %4716 = fmul fast float %4299, 0x3FEA2B8620000000
  %4717 = fmul fast float %4300, 0x3FEA2B8620000000
  %4718 = fadd fast float %4715, 0x3FC81DFBA0000000
  %4719 = fmul fast float %4718, %4298
  %4720 = fadd fast float %4719, 0x3F910E6020000000
  %4721 = fadd fast float %4716, 0x3FC81DFBA0000000
  %4722 = fmul fast float %4721, %4299
  %4723 = fadd fast float %4722, 0x3F910E6020000000
  %4724 = fadd fast float %4717, 0x3FC81DFBA0000000
  %4725 = fmul fast float %4724, %4300
  %4726 = fadd fast float %4725, 0x3F910E6020000000
  %4727 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = fsub fast float %4727, %4298
  %4731 = fsub fast float %4728, %4299
  %4732 = fsub fast float %4729, %4300
  %4733 = fmul fast float %4730, %4703
  %4734 = fmul fast float %4733, %4714
  %4735 = fmul fast float %4731, %4703
  %4736 = fmul fast float %4735, %4714
  %4737 = fmul fast float %4732, %4703
  %4738 = fmul fast float %4737, %4714
  %4739 = fadd fast float %4734, %4298
  %4740 = fadd fast float %4736, %4299
  %4741 = fadd fast float %4738, %4300
  %4742 = fmul fast float %4259, %4259
  %4743 = fmul fast float %4742, %4742
  %4744 = fadd fast float %4699, 1.000000e+00
  %4745 = fsub fast float %4744, %4714
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = call float @dx.op.dot3.f32(i32 55, float %112, float %113, float %114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fsub fast float 1.000000e+00, %4743
  %4750 = call float @dx.op.binary.f32(i32 36, float %4746, float %4749)  ; FMin(a,b)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4750, float %4751)  ; FMax(a,b)
  %4753 = fadd fast float %4748, 0xBFE4CCCCC0000000
  %4754 = fmul fast float %4753, 0x4006DB6DA0000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %4755, 2.000000e+00
  %4757 = fsub fast float 3.000000e+00, %4756
  %4758 = bitcast float %4283 to i32
  %4759 = ashr i32 %4758, 1
  %4760 = add nsw i32 %4759, 532487669
  %4761 = bitcast i32 %4760 to float
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = fmul fast float %4765, 2.000000e+00
  %4767 = bitcast float %4284 to i32
  %4768 = ashr i32 %4767, 1
  %4769 = add nsw i32 %4768, 532487669
  %4770 = bitcast i32 %4769 to float
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = fmul fast float %4774, 2.000000e+00
  %4776 = bitcast float %4285 to i32
  %4777 = ashr i32 %4776, 1
  %4778 = add nsw i32 %4777, 532487669
  %4779 = bitcast i32 %4778 to float
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = bitcast float %4780 to i32
  %4782 = sub nsw i32 2129859010, %4781
  %4783 = bitcast i32 %4782 to float
  %4784 = fmul fast float %4783, 2.000000e+00
  %4785 = fsub fast float 0x4002A9FBE0000000, %4766
  %4786 = fadd fast float %4766, 0x3FD54FDF00000000
  %4787 = bitcast float %4786 to i32
  %4788 = sub nsw i32 2129859010, %4787
  %4789 = bitcast i32 %4788 to float
  %4790 = fmul fast float %4789, %4785
  %4791 = fmul fast float %4790, %4790
  %4792 = fsub fast float 0x4002A9FBE0000000, %4775
  %4793 = fadd fast float %4775, 0x3FD54FDF00000000
  %4794 = bitcast float %4793 to i32
  %4795 = sub nsw i32 2129859010, %4794
  %4796 = bitcast i32 %4795 to float
  %4797 = fmul fast float %4796, %4792
  %4798 = fmul fast float %4797, %4797
  %4799 = fsub fast float 0x4002A9FBE0000000, %4784
  %4800 = fadd fast float %4784, 0x3FD54FDF00000000
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = fmul fast float %4803, %4799
  %4805 = fmul fast float %4804, %4804
  %4806 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4791)  ; FMax(a,b)
  %4807 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4798)  ; FMax(a,b)
  %4808 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4805)  ; FMax(a,b)
  %4809 = fsub fast float 1.000000e+00, %4694
  %4810 = fadd fast float %4809, %4710
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fsub fast float 1.000000e+00, %4674
  %4813 = fmul fast float %4752, %4812
  %4814 = fmul fast float %4755, %4755
  %4815 = fmul fast float %4814, %4813
  %4816 = fmul fast float %4815, %4757
  %4817 = fmul fast float %4812, 0xBFE99999A0000000
  %4818 = fmul fast float %4817, %4703
  %4819 = fmul fast float %4818, %4714
  %4820 = fadd fast float %4819, 1.000000e+00
  %4821 = fadd fast float %4286, -1.000000e+00
  %4822 = fmul fast float %4820, %4821
  %4823 = fadd fast float %4822, 1.000000e+00
  %4824 = fsub fast float %4806, %4283
  %4825 = fsub fast float %4807, %4284
  %4826 = fsub fast float %4808, %4285
  %4827 = fmul fast float %4816, %4824
  %4828 = fmul fast float %4816, %4825
  %4829 = fmul fast float %4816, %4826
  %4830 = fadd fast float %4827, %4283
  %4831 = fadd fast float %4828, %4284
  %4832 = fadd fast float %4829, %4285
  %4833 = fsub fast float %112, %4247
  %4834 = fsub fast float %113, %4248
  %4835 = fsub fast float %114, %4249
  %4836 = fmul fast float %4816, %4833
  %4837 = fmul fast float %4816, %4834
  %4838 = fmul fast float %4816, %4835
  %4839 = fadd fast float %4836, %4247
  %4840 = fadd fast float %4837, %4248
  %4841 = fadd fast float %4838, %4249
  %4842 = fmul fast float %4816, %4811
  %4843 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4844 = fsub fast float 1.000000e+00, %4843
  %4845 = fmul fast float %4842, %4844
  %4846 = fadd fast float %4845, %4843
  %4847 = fsub fast float 1.000000e+00, %4259
  %4848 = fmul fast float %4816, %4847
  %4849 = fadd fast float %4848, %4259
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4839, float %4840, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.unary.f32(i32 25, float %4850)  ; Rsqrt(value)
  %4852 = fmul fast float %4839, %4851
  %4853 = fmul fast float %4840, %4851
  %4854 = fmul fast float %4841, %4851
  br label %4855

; <label>:4855                                    ; preds = %4687, %4680
  %4856 = phi float [ %4686, %4680 ], [ %4693, %4687 ]
  %4857 = phi float [ %4685, %4680 ], [ %4691, %4687 ]
  %4858 = phi float [ %4684, %4680 ], [ %4689, %4687 ]
  %4859 = phi float [ %4683, %4680 ], [ %4692, %4687 ]
  %4860 = phi float [ %4682, %4680 ], [ %4690, %4687 ]
  %4861 = phi float [ %4681, %4680 ], [ %4688, %4687 ]
  %4862 = phi float [ %4283, %4680 ], [ %4830, %4687 ]
  %4863 = phi float [ %4284, %4680 ], [ %4831, %4687 ]
  %4864 = phi float [ %4285, %4680 ], [ %4832, %4687 ]
  %4865 = phi float [ %4247, %4680 ], [ %4852, %4687 ]
  %4866 = phi float [ %4248, %4680 ], [ %4853, %4687 ]
  %4867 = phi float [ %4249, %4680 ], [ %4854, %4687 ]
  %4868 = phi float [ %4298, %4680 ], [ %4739, %4687 ]
  %4869 = phi float [ %4299, %4680 ], [ %4740, %4687 ]
  %4870 = phi float [ %4300, %4680 ], [ %4741, %4687 ]
  %4871 = phi float [ %4286, %4680 ], [ %4846, %4687 ]
  %4872 = phi float [ %4259, %4680 ], [ %4849, %4687 ]
  %4873 = fsub fast float -0.000000e+00, %170
  %4874 = select i1 %230, float 0.000000e+00, float %4864
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %4858, float %4857, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4860, float %4859, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = fmul fast float %4877, 2.000000e+00
  %4879 = fmul fast float %4878, %4865
  %4880 = fmul fast float %4878, %4866
  %4881 = fmul fast float %4878, %4867
  %4882 = fsub fast float %4861, %4879
  %4883 = fsub fast float %4860, %4880
  %4884 = fsub fast float %4859, %4881
  %4885 = call float @dx.op.binary.f32(i32 36, float %4872, float 1.000000e+00)  ; FMin(a,b)
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = bitcast float %4886 to i32
  %4888 = ashr i32 %4887, 1
  %4889 = add nsw i32 %4888, 532487669
  %4890 = bitcast i32 %4889 to float
  %4891 = fsub fast float 1.000000e+00, %4871
  %4892 = call float @dx.op.binary.f32(i32 35, float %4891, float 0x3F847AE140000000)  ; FMax(a,b)
  %4893 = fmul fast float %4892, %4892
  %4894 = fmul fast float %4893, %4893
  %4895 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %55, float %4890, float %4894, float %4895, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = fsub fast float 1.000000e+00, %4872
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = fsub fast float 1.000000e+00, %73
  %4902 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4902, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4904 = fdiv fast float %4901, %4903
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, 5.000000e-01
  %4908 = fadd fast float %4907, 5.000000e-01
  %4909 = fmul fast float %4908, %73
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, %4904
  %4913 = fadd fast float %4909, %4912
  %4914 = fsub fast float 5.000000e-01, %4907
  %4915 = fmul fast float %4914, %4868
  %4916 = fmul fast float %4914, %4869
  %4917 = fmul fast float %4914, %4870
  %4918 = fadd fast float %4913, %4915
  %4919 = fadd fast float %4913, %4916
  %4920 = fadd fast float %4913, %4917
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %112, float %113, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 5.000000e-01
  %4924 = fadd fast float %4923, 5.000000e-01
  %4925 = fmul fast float %4924, %73
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, %4904
  %4929 = fadd fast float %4925, %4928
  %4930 = fsub fast float 5.000000e-01, %4923
  %4931 = fmul fast float %4930, %4868
  %4932 = fmul fast float %4930, %4869
  %4933 = fmul fast float %4930, %4870
  %4934 = fadd fast float %4929, %4931
  %4935 = fadd fast float %4929, %4932
  %4936 = fadd fast float %4929, %4933
  %4937 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = call float @dx.op.binary.f32(i32 36, float %4868, float %4939)  ; FMin(a,b)
  %4941 = fmul fast float %4940, %4886
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = call float @dx.op.binary.f32(i32 36, float %4869, float %4939)  ; FMin(a,b)
  %4947 = fmul fast float %4946, %4886
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = call float @dx.op.binary.f32(i32 36, float %4870, float %4939)  ; FMin(a,b)
  %4953 = fmul fast float %4952, %4886
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4885, %74
  %4959 = fmul fast float %4958, %4918
  %4960 = fmul fast float %4959, %4945
  %4961 = fmul fast float %4885, %75
  %4962 = fmul fast float %4961, %4919
  %4963 = fmul fast float %4962, %4951
  %4964 = fmul fast float %4885, %76
  %4965 = fmul fast float %4964, %4920
  %4966 = fmul fast float %4965, %4957
  %4967 = call float @dx.op.binary.f32(i32 36, float %4862, float %4939)  ; FMin(a,b)
  %4968 = fmul fast float %4967, %4886
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = call float @dx.op.binary.f32(i32 36, float %4863, float %4939)  ; FMin(a,b)
  %4974 = fmul fast float %4973, %4886
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = call float @dx.op.binary.f32(i32 36, float %4874, float %4939)  ; FMin(a,b)
  %4980 = fmul fast float %4979, %4886
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
  %4992 = select i1 %230, float 0.000000e+00, float %4960
  %4993 = select i1 %230, float %4991, float %4963
  %4994 = select i1 %230, float 0.000000e+00, float %4966
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4988, float %4990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = select i1 %230, float 0.000000e+00, float %4986
  %4997 = select i1 %230, float %4995, float %4988
  %4998 = select i1 %230, float 0.000000e+00, float %4990
  %4999 = fmul fast float %4876, 9.843750e-01
  %5000 = fmul fast float %4871, 9.843750e-01
  %5001 = fadd fast float %4999, 7.812500e-03
  %5002 = fadd fast float %5000, 7.812500e-03
  %5003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 2
  %5005 = extractvalue %dx.types.ResRet.f32 %5003, 3
  %5006 = fmul fast float %5004, %4862
  %5007 = fmul fast float %5004, %4863
  %5008 = fmul fast float %5004, %4874
  %5009 = fadd fast float %5006, %5005
  %5010 = fadd fast float %5007, %5005
  %5011 = fadd fast float %5008, %5005
  %5012 = fcmp fast ogt float %4260, 0.000000e+00
  br i1 %5012, label %5013, label %5039

; <label>:5013                                    ; preds = %4855
  %5014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %4260, float %4876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = fadd fast float %5015, -5.000000e-01
  %5019 = fadd fast float %5016, -5.000000e-01
  %5020 = fadd fast float %5017, -5.000000e-01
  %5021 = fsub fast float 1.000000e+00, %4862
  %5022 = fsub fast float 1.000000e+00, %4863
  %5023 = fsub fast float 1.000000e+00, %4874
  %5024 = fmul fast float %4862, 4.000000e+00
  %5025 = fmul fast float %5024, %5021
  %5026 = fmul fast float %5025, %5018
  %5027 = fmul fast float %4863, 4.000000e+00
  %5028 = fmul fast float %5027, %5022
  %5029 = fmul fast float %5028, %5019
  %5030 = fmul fast float %4874, 4.000000e+00
  %5031 = fmul fast float %5030, %5023
  %5032 = fmul fast float %5031, %5020
  %5033 = fadd fast float %5026, %5009
  %5034 = fadd fast float %5029, %5010
  %5035 = fadd fast float %5032, %5011
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5037 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  br label %5039

; <label>:5039                                    ; preds = %5013, %4855
  %5040 = phi float [ %5036, %5013 ], [ %5009, %4855 ]
  %5041 = phi float [ %5037, %5013 ], [ %5010, %4855 ]
  %5042 = phi float [ %5038, %5013 ], [ %5011, %4855 ]
  %5043 = call float @dx.op.binary.f32(i32 35, float %5041, float %5042)  ; FMax(a,b)
  %5044 = call float @dx.op.binary.f32(i32 35, float %5040, float %5043)  ; FMax(a,b)
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = fmul fast float %5044, %4871
  %5047 = fadd fast float %5046, %4871
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5051 = fmul fast float %5047, %5049
  %5052 = fadd fast float %5051, %5050
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fsub fast float 1.000000e+00, %4897
  %5055 = fadd fast float %5054, %5053
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fcmp fast olt float %5056, 1.000000e+00
  br i1 %5057, label %5058, label %5640

; <label>:5058                                    ; preds = %5039
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 3
  %5062 = fmul fast float %5060, %105
  %5063 = fmul fast float %5061, %106
  %5064 = fptoui float %5062 to i32
  %5065 = fptoui float %5063 to i32
  %5066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.CBufRet.f32 %5066, 2
  %5069 = extractvalue %dx.types.CBufRet.f32 %5066, 3
  %5070 = fadd fast float %93, -4.000000e+00
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0.000000e+00)  ; FMax(a,b)
  %5072 = fadd fast float %5071, %5067
  %5073 = fmul fast float %5072, %5068
  %5074 = call float @dx.op.unary.f32(i32 23, float %5073)  ; Log(value)
  %5075 = fmul fast float %5074, %5069
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5078 = fmul fast float %5075, %5077
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.i32 %5080, 1
  %5082 = add i32 %5081, -1
  %5083 = uitofp i32 %5081 to float
  %5084 = fmul fast float %5083, %5079
  %5085 = fptoui float %5084 to i32
  %5086 = call i32 @dx.op.binary.i32(i32 40, i32 %5085, i32 %5082)  ; UMin(a,b)
  %5087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.i32 %5087, 2
  %5089 = extractvalue %dx.types.CBufRet.i32 %5087, 3
  %5090 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5065, i32 %5088, i32 %5064)  ; UMad(a,b,c)
  %5091 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5086, i32 %5089, i32 %5090)  ; UMad(a,b,c)
  %5092 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %5093 = fptoui float %5092 to i32
  %5094 = lshr i32 %5093, 5
  %5095 = call i32 @dx.op.binary.i32(i32 40, i32 %5094, i32 8191)  ; UMin(a,b)
  %5096 = fsub fast float %4661, %170
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fcmp fast ogt float %5097, 0.000000e+00
  %5099 = fcmp fast ogt float %4884, 0.000000e+00
  %5100 = and i1 %5099, %5098
  br i1 %5100, label %5101, label %5130

; <label>:5101                                    ; preds = %5058
  %5102 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5120 = fadd fast float %5119, %4884
  %5121 = select i1 %5118, float %5120, float %4884
  %5122 = fsub fast float %5121, %4884
  %5123 = fmul fast float %5122, %5097
  %5124 = fadd fast float %5123, %4884
  %5125 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %5124, float %4882, float %4883, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = call float @dx.op.unary.f32(i32 25, float %5125)  ; Rsqrt(value)
  %5127 = fmul fast float %5126, %4882
  %5128 = fmul fast float %5126, %4883
  %5129 = fmul fast float %5124, %5126
  br label %5130

; <label>:5130                                    ; preds = %5101, %5058
  %5131 = phi float [ %5127, %5101 ], [ %4882, %5058 ]
  %5132 = phi float [ %5128, %5101 ], [ %4883, %5058 ]
  %5133 = phi float [ %5129, %5101 ], [ %4884, %5058 ]
  %5134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.i32 %5134, 2
  %5136 = add nsw i32 %5135, -1
  %5137 = call i32 @dx.op.binary.i32(i32 37, i32 %5136, i32 0)  ; IMax(a,b)
  %5138 = shl i32 %5095, 2
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = lshr i32 %5140, 16
  %5142 = and i32 %5140, 65535
  %5143 = lshr i32 %5140, 21
  %5144 = lshr i32 %5142, 5
  %5145 = call i32 @dx.op.binary.i32(i32 40, i32 %5144, i32 %5137)  ; UMin(a,b)
  %5146 = icmp ugt i32 %5143, %5145
  br i1 %5146, label %5528, label %5147

; <label>:5147                                    ; preds = %5130
  br label %5148

; <label>:5148                                    ; preds = %5517, %5147
  %5149 = phi float [ %5518, %5517 ], [ 0.000000e+00, %5147 ]
  %5150 = phi float [ %5519, %5517 ], [ 0.000000e+00, %5147 ]
  %5151 = phi float [ %5520, %5517 ], [ 0.000000e+00, %5147 ]
  %5152 = phi float [ %5521, %5517 ], [ 1.000000e+00, %5147 ]
  %5153 = phi i32 [ %5525, %5517 ], [ %5143, %5147 ]
  %5154 = phi float [ %5522, %5517 ], [ 0.000000e+00, %5147 ]
  %5155 = phi float [ %5523, %5517 ], [ 0.000000e+00, %5147 ]
  %5156 = phi float [ %5524, %5517 ], [ 0.000000e+00, %5147 ]
  %5157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.i32 %5157, 2
  %5159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5091, i32 %5158, i32 %5153)  ; UMad(a,b,c)
  %5160 = shl i32 %5159, 2
  %5161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.i32 %5161, 0
  %5163 = shl i32 %5153, 5
  %5164 = sub nsw i32 %5141, %5163
  %5165 = call i32 @dx.op.binary.i32(i32 37, i32 %5164, i32 0)  ; IMax(a,b)
  %5166 = call i32 @dx.op.binary.i32(i32 38, i32 %5165, i32 31)  ; IMin(a,b)
  %5167 = sub nsw i32 1, %5141
  %5168 = add nsw i32 %5167, %5142
  %5169 = call i32 @dx.op.binary.i32(i32 37, i32 %5168, i32 0)  ; IMax(a,b)
  %5170 = call i32 @dx.op.binary.i32(i32 38, i32 %5169, i32 32)  ; IMin(a,b)
  %5171 = and i32 %5170, 31
  %5172 = shl i32 -1, %5171
  %5173 = xor i32 %5172, -1
  %5174 = and i32 %5166, 31
  %5175 = shl i32 %5173, %5174
  %5176 = icmp eq i32 %5170, 32
  %5177 = select i1 %5176, i32 -1, i32 %5175
  %5178 = and i32 %5177, %5162
  %5179 = icmp eq i32 %5178, 0
  br i1 %5179, label %5517, label %5180

; <label>:5180                                    ; preds = %5148
  br label %5181

; <label>:5181                                    ; preds = %5291, %5180
  %5182 = phi float [ %5292, %5291 ], [ %5149, %5180 ]
  %5183 = phi float [ %5293, %5291 ], [ %5150, %5180 ]
  %5184 = phi float [ %5294, %5291 ], [ %5151, %5180 ]
  %5185 = phi float [ %5295, %5291 ], [ %5152, %5180 ]
  %5186 = phi i32 [ %5194, %5291 ], [ %5178, %5180 ]
  %5187 = phi float [ %5296, %5291 ], [ %5154, %5180 ]
  %5188 = phi float [ %5297, %5291 ], [ %5155, %5180 ]
  %5189 = phi float [ %5298, %5291 ], [ %5156, %5180 ]
  %5190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5186)  ; FirstbitLo(value)
  %5191 = add i32 %5190, %5163
  %5192 = and i32 %5190, 31
  %5193 = shl i32 1, %5192
  %5194 = xor i32 %5193, %5186
  %5195 = mul i32 %5191, 72
  %5196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5195, i32 undef)  ; BufferLoad(srv,index,wot)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = add i32 %5195, 12
  %5201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %5200, i32 undef)  ; BufferLoad(srv,index,wot)
  %5202 = extractvalue %dx.types.ResRet.i32 %5201, 0
  %5203 = add i32 %5195, 16
  %5204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5203, i32 undef)  ; BufferLoad(srv,index,wot)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.f32 %5204, 2
  %5208 = add i32 %5195, 28
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = add i32 %5195, 32
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = extractvalue %dx.types.ResRet.f32 %5212, 3
  %5217 = add i32 %5195, 48
  %5218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.ResRet.f32 %5218, 1
  %5221 = add i32 %5195, 56
  %5222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = add i32 %5195, 64
  %5226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = mul i32 %5191, 60
  %5230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5229, i32 undef)  ; BufferLoad(srv,index,wot)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5234 = add i32 %5229, 12
  %5235 = add i32 %5229, 48
  %5236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5235, i32 undef)  ; BufferLoad(srv,index,wot)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 0
  %5238 = extractvalue %dx.types.ResRet.f32 %5236, 1
  %5239 = extractvalue %dx.types.ResRet.f32 %5236, 2
  %5240 = and i32 %5202, 32767
  %5241 = bitcast float %5197 to i32
  %5242 = icmp eq i32 %5241, -1
  %5243 = bitcast float %5198 to i32
  %5244 = and i32 %5202, 32768
  %5245 = icmp ne i32 %5244, 0
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = fsub fast float %5231, %5247
  %5251 = fsub fast float %5232, %5248
  %5252 = fsub fast float %5233, %5249
  %5253 = fsub fast float %168, %5250
  %5254 = fsub fast float %169, %5251
  %5255 = fsub fast float %170, %5252
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5257, float %5258, float %5259)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = add i32 %5229, 24
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = add i32 %5229, 36
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5269, float %5270, float %5271)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 6, float %5260)  ; FAbs(value)
  %5274 = call float @dx.op.unary.f32(i32 6, float %5266)  ; FAbs(value)
  %5275 = call float @dx.op.unary.f32(i32 6, float %5272)  ; FAbs(value)
  %5276 = fsub fast float %5237, %5273
  %5277 = fsub fast float %5238, %5274
  %5278 = fsub fast float %5239, %5275
  %5279 = fmul fast float %5276, %5205
  %5280 = fmul fast float %5277, %5206
  %5281 = fmul fast float %5278, %5207
  %5282 = call float @dx.op.binary.f32(i32 36, float %5280, float %5281)  ; FMin(a,b)
  %5283 = call float @dx.op.binary.f32(i32 36, float %5279, float %5282)  ; FMin(a,b)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = call float @dx.op.binary.f32(i32 36, float %5185, float %5284)  ; FMin(a,b)
  %5286 = uitofp i1 %5245 to float
  %5287 = fadd fast float %5097, 1.000000e+00
  %5288 = fsub fast float %5287, %5286
  %5289 = fmul fast float %5285, %5288
  %5290 = fcmp fast ogt float %5289, 0.000000e+00
  br i1 %5290, label %5300, label %5291

; <label>:5291                                    ; preds = %5442, %5181
  %5292 = phi float [ %5506, %5442 ], [ %5182, %5181 ]
  %5293 = phi float [ %5507, %5442 ], [ %5183, %5181 ]
  %5294 = phi float [ %5508, %5442 ], [ %5184, %5181 ]
  %5295 = phi float [ %5515, %5442 ], [ %5185, %5181 ]
  %5296 = phi float [ %5512, %5442 ], [ %5187, %5181 ]
  %5297 = phi float [ %5513, %5442 ], [ %5188, %5181 ]
  %5298 = phi float [ %5514, %5442 ], [ %5189, %5181 ]
  %5299 = icmp eq i32 %5186, %5193
  br i1 %5299, label %5516, label %5181

; <label>:5300                                    ; preds = %5181
  br i1 %5242, label %5358, label %5301

; <label>:5301                                    ; preds = %5300
  %5302 = fsub fast float -0.000000e+00, %5257
  %5303 = fsub fast float -0.000000e+00, %5258
  %5304 = fsub fast float -0.000000e+00, %5259
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = fsub fast float -0.000000e+00, %5305
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = fadd fast float %5307, %5220
  %5309 = fadd fast float %5219, %5307
  %5310 = fsub fast float -0.000000e+00, %5309
  %5311 = fcmp ogt float %5305, -0.000000e+00
  %5312 = select i1 %5311, float %5310, float %5308
  %5313 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5314 = fdiv fast float 1.000000e+00, %5313
  %5315 = fmul fast float %5312, %5314
  %5316 = call float @dx.op.binary.f32(i32 35, float %5315, float 0.000000e+00)  ; FMax(a,b)
  %5317 = fsub fast float -0.000000e+00, %5263
  %5318 = fsub fast float -0.000000e+00, %5264
  %5319 = fsub fast float -0.000000e+00, %5265
  %5320 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = fsub fast float -0.000000e+00, %5320
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5317, float %5318, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = fadd fast float %5322, %5224
  %5324 = fadd fast float %5223, %5322
  %5325 = fsub fast float -0.000000e+00, %5324
  %5326 = fcmp ogt float %5320, -0.000000e+00
  %5327 = select i1 %5326, float %5325, float %5323
  %5328 = call float @dx.op.unary.f32(i32 6, float %5321)  ; FAbs(value)
  %5329 = fdiv fast float 1.000000e+00, %5328
  %5330 = fmul fast float %5327, %5329
  %5331 = call float @dx.op.binary.f32(i32 35, float %5330, float 0.000000e+00)  ; FMax(a,b)
  %5332 = fsub fast float -0.000000e+00, %5269
  %5333 = fsub fast float -0.000000e+00, %5270
  %5334 = fsub fast float -0.000000e+00, %5271
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fsub fast float -0.000000e+00, %5335
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fadd fast float %5337, %5228
  %5339 = fadd fast float %5227, %5337
  %5340 = fsub fast float -0.000000e+00, %5339
  %5341 = fcmp ogt float %5335, -0.000000e+00
  %5342 = select i1 %5341, float %5340, float %5338
  %5343 = call float @dx.op.unary.f32(i32 6, float %5336)  ; FAbs(value)
  %5344 = fdiv fast float 1.000000e+00, %5343
  %5345 = fmul fast float %5342, %5344
  %5346 = call float @dx.op.binary.f32(i32 35, float %5345, float 0.000000e+00)  ; FMax(a,b)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5331, float %5346)  ; FMin(a,b)
  %5348 = call float @dx.op.binary.f32(i32 36, float %5316, float %5347)  ; FMin(a,b)
  %5349 = fmul fast float %5348, %5131
  %5350 = fmul fast float %5348, %5132
  %5351 = fmul fast float %5348, %5133
  %5352 = fadd fast float %5349, %168
  %5353 = fadd fast float %5350, %169
  %5354 = fadd fast float %5351, %170
  %5355 = fsub fast float %5352, %5197
  %5356 = fsub fast float %5353, %5198
  %5357 = fsub fast float %5354, %5199
  br label %5365

; <label>:5358                                    ; preds = %5300
  %5359 = fmul fast float %5131, 8.096000e+03
  %5360 = fmul fast float %5132, 8.096000e+03
  %5361 = fmul fast float %5133, 8.096000e+03
  %5362 = fadd fast float %5359, %168
  %5363 = fadd fast float %5360, %169
  %5364 = fadd fast float %5361, %170
  br label %5365

; <label>:5365                                    ; preds = %5358, %5301
  %5366 = phi float [ %5131, %5358 ], [ %5355, %5301 ]
  %5367 = phi float [ %5132, %5358 ], [ %5356, %5301 ]
  %5368 = phi float [ %5133, %5358 ], [ %5357, %5301 ]
  %5369 = phi float [ %5362, %5358 ], [ %5352, %5301 ]
  %5370 = phi float [ %5363, %5358 ], [ %5353, %5301 ]
  %5371 = phi float [ %5364, %5358 ], [ %5354, %5301 ]
  %5372 = fcmp fast olt float %5216, 1.000000e+00
  br i1 %5372, label %5373, label %5404, !dx.controlflow.hints !98

; <label>:5373                                    ; preds = %5365
  %5374 = fmul fast float %5368, %5214
  %5375 = fmul fast float %5367, %5215
  %5376 = fsub fast float %5374, %5375
  %5377 = fmul fast float %5366, %5215
  %5378 = fmul fast float %5368, %5213
  %5379 = fsub fast float %5377, %5378
  %5380 = fmul fast float %5367, %5213
  %5381 = fmul fast float %5366, %5214
  %5382 = fsub fast float %5380, %5381
  %5383 = fmul fast float %5376, 2.000000e+00
  %5384 = fmul fast float %5379, 2.000000e+00
  %5385 = fmul fast float %5382, 2.000000e+00
  %5386 = fmul fast float %5383, %5216
  %5387 = fmul fast float %5384, %5216
  %5388 = fmul fast float %5385, %5216
  %5389 = fmul fast float %5385, %5214
  %5390 = fmul fast float %5384, %5215
  %5391 = fmul fast float %5383, %5215
  %5392 = fmul fast float %5385, %5213
  %5393 = fmul fast float %5384, %5213
  %5394 = fmul fast float %5383, %5214
  %5395 = fadd fast float %5389, %5366
  %5396 = fadd fast float %5395, %5386
  %5397 = fsub fast float %5396, %5390
  %5398 = fsub fast float %5367, %5392
  %5399 = fadd fast float %5398, %5387
  %5400 = fadd fast float %5399, %5391
  %5401 = fadd fast float %5388, %5368
  %5402 = fsub fast float %5401, %5394
  %5403 = fadd fast float %5402, %5393
  br label %5404

; <label>:5404                                    ; preds = %5373, %5365
  %5405 = phi float [ %5397, %5373 ], [ %5366, %5365 ]
  %5406 = phi float [ %5400, %5373 ], [ %5367, %5365 ]
  %5407 = phi float [ %5403, %5373 ], [ %5368, %5365 ]
  br i1 %5242, label %5439, label %5408

; <label>:5408                                    ; preds = %5404
  %5409 = fmul fast float %4871, 0x400187C840000000
  %5410 = fadd fast float %5409, 0xC00EFC2120000000
  %5411 = fmul fast float %5410, %4871
  %5412 = fadd fast float %5411, 0x3FE5D16340000000
  %5413 = fmul fast float %5412, %4871
  %5414 = fadd fast float %5413, 1.000000e+00
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = fsub fast float %5369, %168
  %5417 = fsub fast float %5370, %169
  %5418 = fsub fast float %5371, %170
  %5419 = fsub fast float %5369, %5197
  %5420 = fsub fast float %5370, %5198
  %5421 = fsub fast float %5371, %5199
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5416, float %5417, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = fadd fast float %5423, 0x3EE4F8B580000000
  %5425 = fdiv fast float %5422, %5424
  %5426 = bitcast float %5425 to i32
  %5427 = ashr i32 %5426, 1
  %5428 = add nsw i32 %5427, 532487669
  %5429 = bitcast i32 %5428 to float
  %5430 = fmul fast float %5429, %5415
  %5431 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5432 = fmul fast float %5431, 0x4009981AE0000000
  %5433 = fsub fast float 0x40111BBD80000000, %5432
  %5434 = fmul fast float %5433, %5431
  %5435 = fadd fast float %5434, 0xC0009F6020000000
  %5436 = fmul fast float %5435, %5431
  %5437 = fadd fast float %5436, 1.000000e+00
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  br label %5442

; <label>:5439                                    ; preds = %5404
  %5440 = icmp ne i32 %5243, -1
  %5441 = zext i1 %5440 to i32
  br label %5442

; <label>:5442                                    ; preds = %5439, %5408
  %5443 = phi float [ %4871, %5439 ], [ %5438, %5408 ]
  %5444 = phi i32 [ %5441, %5439 ], [ 0, %5408 ]
  %5445 = fmul float %5443, 5.000000e+00
  %5446 = fsub float 5.000000e+00, %5445
  %5447 = icmp ne i32 %5444, 0
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5450 = fadd fast float %5449, %5446
  %5451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5450)  ; FMax(a,b)
  %5452 = call float @dx.op.unary.f32(i32 6, float %5405)  ; FAbs(value)
  %5453 = call float @dx.op.unary.f32(i32 6, float %5406)  ; FAbs(value)
  %5454 = fadd fast float %5453, %5452
  %5455 = call float @dx.op.unary.f32(i32 6, float %5407)  ; FAbs(value)
  %5456 = fadd fast float %5454, %5455
  %5457 = fcmp fast oeq float %5456, 0.000000e+00
  %5458 = fdiv fast float 1.000000e+00, %5456
  %5459 = select i1 %5457, float 1.000000e+00, float %5458
  %5460 = fmul fast float %5459, %5405
  %5461 = fmul fast float %5459, %5406
  %5462 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5463 = call float @dx.op.unary.f32(i32 6, float %5460)  ; FAbs(value)
  %5464 = fsub fast float 1.000000e+00, %5462
  %5465 = fsub fast float 1.000000e+00, %5463
  %5466 = fcmp fast oge float %5460, 0.000000e+00
  %5467 = fcmp fast oge float %5461, 0.000000e+00
  %5468 = select i1 %5466, float 1.000000e+00, float -1.000000e+00
  %5469 = select i1 %5467, float 1.000000e+00, float -1.000000e+00
  %5470 = fcmp fast ole float %5407, 0.000000e+00
  %5471 = fmul fast float %5468, %5464
  %5472 = fmul fast float %5469, %5465
  %5473 = select i1 %5470, float %5471, float %5460
  %5474 = select i1 %5470, float %5472, float %5461
  %5475 = fmul fast float %5473, 5.000000e-01
  %5476 = fmul fast float %5474, 5.000000e-01
  %5477 = fadd fast float %5475, 5.000000e-01
  %5478 = fadd fast float %5476, 5.000000e-01
  %5479 = uitofp i32 %5240 to float
  %5480 = call float @dx.op.binary.f32(i32 36, float %5451, float 3.000000e+00)  ; FMin(a,b)
  %5481 = fadd fast float %5480, 2.000000e+00
  %5482 = call float @dx.op.unary.f32(i32 21, float %5481)  ; Exp(value)
  %5483 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5484 = fmul fast float %5483, %5482
  %5485 = fmul fast float %5484, 2.000000e+00
  %5486 = fsub fast float 1.000000e+00, %5485
  %5487 = fmul fast float %5477, %5486
  %5488 = fmul fast float %5478, %5486
  %5489 = fadd fast float %5487, %5484
  %5490 = fadd fast float %5488, %5484
  %5491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %53, float %5489, float %5490, float %5479, float undef, i32 0, i32 0, i32 undef, float %5451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.ResRet.f32 %5491, 2
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5497 = fmul fast float %5496, %5210
  %5498 = call float @dx.op.binary.f32(i32 36, float %4937, float %5497)  ; FMin(a,b)
  %5499 = select i1 %5447, float %5498, float %5497
  %5500 = fmul fast float %5492, %5289
  %5501 = fmul fast float %5500, %5499
  %5502 = fmul fast float %5493, %5289
  %5503 = fmul fast float %5502, %5499
  %5504 = fmul fast float %5494, %5289
  %5505 = fmul fast float %5504, %5499
  %5506 = fadd fast float %5501, %5182
  %5507 = fadd fast float %5503, %5183
  %5508 = fadd fast float %5505, %5184
  %5509 = fmul fast float %5369, %5289
  %5510 = fmul fast float %5370, %5289
  %5511 = fmul fast float %5371, %5289
  %5512 = fadd fast float %5509, %5187
  %5513 = fadd fast float %5510, %5188
  %5514 = fadd fast float %5511, %5189
  %5515 = fsub fast float %5185, %5289
  br label %5291

; <label>:5516                                    ; preds = %5291
  br label %5517

; <label>:5517                                    ; preds = %5516, %5148
  %5518 = phi float [ %5149, %5148 ], [ %5292, %5516 ]
  %5519 = phi float [ %5150, %5148 ], [ %5293, %5516 ]
  %5520 = phi float [ %5151, %5148 ], [ %5294, %5516 ]
  %5521 = phi float [ %5152, %5148 ], [ %5295, %5516 ]
  %5522 = phi float [ %5154, %5148 ], [ %5296, %5516 ]
  %5523 = phi float [ %5155, %5148 ], [ %5297, %5516 ]
  %5524 = phi float [ %5156, %5148 ], [ %5298, %5516 ]
  %5525 = add i32 %5153, 1
  %5526 = icmp ugt i32 %5525, %5145
  br i1 %5526, label %5527, label %5148, !llvm.loop !99

; <label>:5527                                    ; preds = %5517
  br label %5528

; <label>:5528                                    ; preds = %5527, %5130
  %5529 = phi float [ 0.000000e+00, %5130 ], [ %5518, %5527 ]
  %5530 = phi float [ 0.000000e+00, %5130 ], [ %5519, %5527 ]
  %5531 = phi float [ 0.000000e+00, %5130 ], [ %5520, %5527 ]
  %5532 = phi float [ 0.000000e+00, %5130 ], [ %5522, %5527 ]
  %5533 = phi float [ 0.000000e+00, %5130 ], [ %5523, %5527 ]
  %5534 = phi float [ 0.000000e+00, %5130 ], [ %5524, %5527 ]
  %5535 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = select i1 %230, float 0.000000e+00, float %5529
  %5537 = select i1 %230, float %5535, float %5530
  %5538 = select i1 %230, float 0.000000e+00, float %5531
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5542 = extractvalue %dx.types.CBufRet.f32 %5539, 2
  %5543 = extractvalue %dx.types.CBufRet.f32 %5539, 3
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %5548 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5553 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %5552, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fadd fast float %4871, -1.000000e+00
  %5558 = fsub fast float %5555, %5556
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5561 = fmul fast float %5560, %5555
  %5562 = fdiv fast float 1.600000e+02, %5561
  %5563 = fmul fast float %5557, %5557
  %5564 = fmul fast float %5563, 0xBFB5B17960000000
  %5565 = fmul fast float %5564, %5558
  %5566 = fmul fast float %5565, %5562
  %5567 = call float @dx.op.unary.f32(i32 21, float %5566)  ; Exp(value)
  %5568 = fmul fast float %5567, 0x3FF04B2960000000
  %5569 = fsub fast float 0x3FF04B2960000000, %5568
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = fmul fast float %5570, 4.000000e+00
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.CBufRet.f32 %5572, 2
  %5576 = fadd fast float %5573, %5532
  %5577 = fadd fast float %5574, %5533
  %5578 = fadd fast float %5575, %5534
  %5579 = fmul fast float %5576, %5540
  %5580 = call float @dx.op.tertiary.f32(i32 46, float %5577, float %5541, float %5579)  ; FMad(a,b,c)
  %5581 = call float @dx.op.tertiary.f32(i32 46, float %5578, float %5542, float %5580)  ; FMad(a,b,c)
  %5582 = fadd fast float %5581, %5543
  %5583 = fmul fast float %5576, %5545
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %5577, float %5546, float %5583)  ; FMad(a,b,c)
  %5585 = call float @dx.op.tertiary.f32(i32 46, float %5578, float %5547, float %5584)  ; FMad(a,b,c)
  %5586 = fadd fast float %5585, %5548
  %5587 = fmul fast float %5576, %5550
  %5588 = call float @dx.op.tertiary.f32(i32 46, float %5577, float %5551, float %5587)  ; FMad(a,b,c)
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %5578, float %5552, float %5588)  ; FMad(a,b,c)
  %5590 = fadd fast float %5589, %5553
  %5591 = fdiv fast float %5582, %5590
  %5592 = fdiv fast float %5586, %5590
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = fmul fast float %5594, %5591
  %5597 = fmul fast float %5595, %5592
  %5598 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5599 = extractvalue %dx.types.CBufRet.f32 %5593, 3
  %5600 = fadd fast float %5596, %5598
  %5601 = fadd fast float %5597, %5599
  %5602 = fmul fast float %5554, 8.000000e+00
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = fmul fast float %5600, 2.000000e+00
  %5607 = fmul fast float %5601, 2.000000e+00
  %5608 = fadd fast float %5606, -1.000000e+00
  %5609 = fadd fast float %5607, -1.000000e+00
  %5610 = fmul fast float %5608, %5608
  %5611 = fsub fast float 1.000000e+00, %5610
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5609, %5609
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5605, %5612
  %5617 = fmul fast float %5616, %5615
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = fmul fast float %5618, %5603
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %53, float %5600, float %5601, float undef, float undef, i32 0, i32 0, i32 undef, float %5571)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = select i1 %230, float 0.000000e+00, float %5622
  %5625 = select i1 %230, float 0.000000e+00, float %5623
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5628 = fmul fast float %5627, %5621
  %5629 = fmul fast float %5624, %5627
  %5630 = fmul fast float %5625, %5627
  %5631 = fsub fast float %5628, %5536
  %5632 = fsub fast float %5629, %5537
  %5633 = fsub fast float %5630, %5538
  %5634 = fmul fast float %5631, %5619
  %5635 = fmul fast float %5632, %5619
  %5636 = fmul fast float %5633, %5619
  %5637 = fadd fast float %5634, %5536
  %5638 = fadd fast float %5635, %5537
  %5639 = fadd fast float %5636, %5538
  br label %5640

; <label>:5640                                    ; preds = %5528, %5039
  %5641 = phi float [ %4996, %5039 ], [ %5637, %5528 ]
  %5642 = phi float [ %4997, %5039 ], [ %5638, %5528 ]
  %5643 = phi float [ %4998, %5039 ], [ %5639, %5528 ]
  %5644 = fmul fast float %5045, %4992
  %5645 = fmul fast float %5045, %4993
  %5646 = fmul fast float %5045, %4994
  %5647 = call float @dx.op.dot3.f32(i32 55, float %4868, float %4869, float %4870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fcmp fast ogt float %5647, 0x3E7FF19E20000000
  %5649 = fdiv fast float 1.000000e+00, %5647
  %5650 = select i1 %5648, float %5649, float 0.000000e+00
  %5651 = fmul fast float %5650, %4868
  %5652 = fmul fast float %5650, %4869
  %5653 = fmul fast float %5650, %4870
  %5654 = fadd fast float %5651, -1.000000e+00
  %5655 = fadd fast float %5652, -1.000000e+00
  %5656 = fadd fast float %5653, -1.000000e+00
  %5657 = fmul fast float %5654, 5.000000e-01
  %5658 = fmul fast float %5655, 5.000000e-01
  %5659 = fmul fast float %5656, 5.000000e-01
  %5660 = fadd fast float %5657, 1.000000e+00
  %5661 = fadd fast float %5658, 1.000000e+00
  %5662 = fadd fast float %5659, 1.000000e+00
  %5663 = fmul fast float %5641, %5040
  %5664 = fmul fast float %5642, %5041
  %5665 = fmul fast float %5643, %5042
  %5666 = fsub fast float 1.000000e+00, %4876
  %5667 = bitcast float %5666 to i32
  %5668 = sitofp i32 %5667 to float
  %5669 = fmul fast float %5668, 5.000000e+00
  %5670 = fadd fast float %5669, 0xC1EFBF8940000000
  %5671 = fptosi float %5670 to i32
  %5672 = bitcast i32 %5671 to float
  %5673 = fmul fast float %5672, %4261
  %5674 = fmul fast float %4992, %5673
  %5675 = fmul fast float %5674, %5045
  %5676 = fmul fast float %5675, %5660
  %5677 = fmul fast float %4993, %5673
  %5678 = fmul fast float %5677, %5045
  %5679 = fmul fast float %5678, %5661
  %5680 = fmul fast float %4994, %5673
  %5681 = fmul fast float %5680, %5045
  %5682 = fmul fast float %5681, %5662
  %5683 = fmul fast float %5644, %4257
  %5684 = fmul fast float %5645, %4257
  %5685 = fmul fast float %5646, %4257
  %5686 = fadd fast float %5663, %4253
  %5687 = fadd fast float %5686, %5676
  %5688 = fmul fast float %5687, %4257
  %5689 = fadd fast float %5664, %4254
  %5690 = fadd fast float %5689, %5679
  %5691 = fmul fast float %5690, %4257
  %5692 = fadd fast float %5665, %4255
  %5693 = fadd fast float %5692, %5682
  %5694 = fmul fast float %5693, %4257
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5697 = fcmp fast oeq float %5696, 0.000000e+00
  br i1 %5697, label %7240, label %5698

; <label>:5698                                    ; preds = %5640
  %5699 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5701 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = extractvalue %dx.types.CBufRet.f32 %5706, 1
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5704, float %5705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = select i1 %230, float %5707, float %5703
  %5711 = select i1 %230, float %5709, float %5704
  %5712 = select i1 %230, float %5708, float %5705
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 2
  %5715 = fmul fast float %5714, %112
  %5716 = fmul fast float %5714, %113
  %5717 = fmul fast float %5714, %114
  %5718 = fadd fast float %5715, %168
  %5719 = fadd fast float %5716, %169
  %5720 = fadd fast float %5717, %170
  %5721 = fcmp fast olt float %5696, 0.000000e+00
  br i1 %5721, label %6817, label %5722

; <label>:5722                                    ; preds = %5698
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5737 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5738 = fmul fast float %5724, %5718
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5725, float %5738)  ; FMad(a,b,c)
  %5740 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5726, float %5739)  ; FMad(a,b,c)
  %5741 = fadd fast float %5740, %5727
  %5742 = fmul fast float %5729, %5718
  %5743 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5730, float %5742)  ; FMad(a,b,c)
  %5744 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5731, float %5743)  ; FMad(a,b,c)
  %5745 = fadd fast float %5744, %5732
  %5746 = fmul fast float %5734, %5718
  %5747 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5735, float %5746)  ; FMad(a,b,c)
  %5748 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5736, float %5747)  ; FMad(a,b,c)
  %5749 = fadd fast float %5748, %5737
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5754 = fmul fast float %5753, %5741
  %5755 = fmul fast float %5753, %5745
  %5756 = fadd fast float %5754, %5751
  %5757 = fadd fast float %5755, %5752
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5762 = fmul fast float %5761, %5741
  %5763 = fmul fast float %5761, %5745
  %5764 = fadd fast float %5762, %5759
  %5765 = fadd fast float %5763, %5760
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5768 = fsub fast float %5767, %5749
  %5769 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5770 = fmul fast float %5768, %5769
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5776 = fadd fast float %5775, %5773
  %5777 = fcmp fast ogt float %5776, 0.000000e+00
  br i1 %5777, label %5778, label %5802

; <label>:5778                                    ; preds = %5722
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = fsub fast float %5764, %5780
  %5783 = fsub fast float %5765, %5781
  %5784 = fcmp fast olt float %5782, 0.000000e+00
  %5785 = fcmp fast olt float %5783, 0.000000e+00
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5791 = select i1 %5784, float %5787, float %5789
  %5792 = select i1 %5785, float %5788, float %5790
  %5793 = fmul fast float %5791, %5782
  %5794 = fmul fast float %5792, %5783
  %5795 = call float @dx.op.unary.f32(i32 6, float %5793)  ; FAbs(value)
  %5796 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5713, 0
  %5798 = call float @dx.op.binary.f32(i32 35, float %5795, float %5796)  ; FMax(a,b)
  %5799 = fsub fast float %5797, %5798
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5801 = fmul fast float %5800, %5772
  br label %5802

; <label>:5802                                    ; preds = %5778, %5722
  %5803 = phi float [ %5801, %5778 ], [ 0.000000e+00, %5722 ]
  %5804 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5805 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5806 = fadd fast float %5805, %5804
  %5807 = fcmp fast ogt float %5806, 0.000000e+00
  %5808 = extractvalue %dx.types.CBufRet.f32 %5713, 0
  br i1 %5807, label %5809, label %5832

; <label>:5809                                    ; preds = %5802
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = fsub fast float %5756, %5811
  %5814 = fsub fast float %5757, %5812
  %5815 = fcmp fast olt float %5813, 0.000000e+00
  %5816 = fcmp fast olt float %5814, 0.000000e+00
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = select i1 %5815, float %5818, float %5820
  %5823 = select i1 %5816, float %5819, float %5821
  %5824 = fmul fast float %5822, %5813
  %5825 = fmul fast float %5823, %5814
  %5826 = call float @dx.op.unary.f32(i32 6, float %5824)  ; FAbs(value)
  %5827 = call float @dx.op.unary.f32(i32 6, float %5825)  ; FAbs(value)
  %5828 = call float @dx.op.binary.f32(i32 35, float %5826, float %5827)  ; FMax(a,b)
  %5829 = fsub fast float %5808, %5828
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = fmul fast float %5830, %5772
  br label %5832

; <label>:5832                                    ; preds = %5809, %5802
  %5833 = phi float [ %5831, %5809 ], [ 0.000000e+00, %5802 ]
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 1
  %5836 = call float @dx.op.unary.f32(i32 7, float %5835)  ; Saturate(value)
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = fsub fast float %5741, %5838
  %5841 = fsub fast float %5745, %5839
  %5842 = fcmp fast olt float %5840, 0.000000e+00
  %5843 = fcmp fast olt float %5841, 0.000000e+00
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5848 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5849 = select i1 %5842, float %5845, float %5847
  %5850 = select i1 %5843, float %5846, float %5848
  %5851 = fmul fast float %5849, %5840
  %5852 = fmul fast float %5850, %5841
  %5853 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %5854 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5855 = call float @dx.op.binary.f32(i32 35, float %5853, float %5854)  ; FMax(a,b)
  %5856 = fsub fast float %5808, %5855
  %5857 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5858 = call float @dx.op.binary.f32(i32 36, float %5857, float %5836)  ; FMin(a,b)
  %5859 = fmul fast float %5858, %5772
  %5860 = fsub fast float %5833, %5859
  %5861 = fsub fast float %5803, %5833
  %5862 = fsub fast float %5861, %5859
  %5863 = call float @dx.op.binary.f32(i32 35, float %5833, float %5803)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5859, float %5863)  ; FMax(a,b)
  %5865 = fcmp fast olt float %5864, 1.000000e+00
  br i1 %5865, label %5866, label %6264, !dx.controlflow.hints !101

; <label>:5866                                    ; preds = %5832
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = fcmp fast une float %5868, 0.000000e+00
  br i1 %5869, label %5870, label %6264, !dx.controlflow.hints !102

; <label>:5870                                    ; preds = %5866
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5880 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5885 = extractvalue %dx.types.CBufRet.f32 %5881, 3
  %5886 = fmul fast float %5872, %5718
  %5887 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5873, float %5886)  ; FMad(a,b,c)
  %5888 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5874, float %5887)  ; FMad(a,b,c)
  %5889 = fadd fast float %5888, %5875
  %5890 = fmul fast float %5877, %5718
  %5891 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5878, float %5890)  ; FMad(a,b,c)
  %5892 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5879, float %5891)  ; FMad(a,b,c)
  %5893 = fadd fast float %5892, %5880
  %5894 = fmul fast float %5882, %5718
  %5895 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %5883, float %5894)  ; FMad(a,b,c)
  %5896 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %5884, float %5895)  ; FMad(a,b,c)
  %5897 = fadd fast float %5896, %5885
  %5898 = fcmp fast oge float %5889, 1.000000e+00
  %5899 = fcmp fast oge float %5893, 1.000000e+00
  %5900 = or i1 %5898, %5899
  %5901 = fcmp fast olt float %5889, 0.000000e+00
  %5902 = fcmp fast olt float %5893, 0.000000e+00
  %5903 = or i1 %5901, %5902
  %5904 = or i1 %5900, %5903
  br i1 %5904, label %6264, label %5905, !dx.controlflow.hints !103

; <label>:5905                                    ; preds = %5870
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.i32 %5910, 2
  %5912 = uitofp i32 %5911 to float
  %5913 = extractvalue %dx.types.CBufRet.i32 %5910, 3
  %5914 = uitofp i32 %5913 to float
  %5915 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5916 = fmul fast float %5915, 2.000000e+00
  %5917 = fsub fast float %5889, %5907
  %5918 = fsub fast float %5893, %5908
  %5919 = fmul fast float %5916, %5917
  %5920 = fmul fast float %5916, %5918
  %5921 = fdiv fast float 1.000000e+00, %5701
  %5922 = fmul fast float %5920, %5921
  %5923 = call float @dx.op.unary.f32(i32 6, float %5922)  ; FAbs(value)
  %5924 = fmul fast float %5909, %5720
  %5925 = fmul fast float %5924, %5916
  %5926 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5927 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5926, float %5923)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5927, float %5928)  ; FMax(a,b)
  %5930 = fmul fast float %5929, 2.000000e+00
  %5931 = call float @dx.op.unary.f32(i32 23, float %5930)  ; Log(value)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5931, float %5912)  ; FMax(a,b)
  %5933 = call float @dx.op.unary.f32(i32 22, float %5932)  ; Frc(value)
  %5934 = fadd fast float %5933, 0xBFEA666660000000
  %5935 = fmul fast float %5934, 8.000000e+00
  %5936 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5937 = call float @dx.op.unary.f32(i32 27, float %5932)  ; Round_ni(value)
  %5938 = fadd fast float %5937, %5936
  %5939 = call float @dx.op.binary.f32(i32 36, float %5938, float %5914)  ; FMin(a,b)
  %5940 = call float @dx.op.unary.f32(i32 27, float %5939)  ; Round_ni(value)
  %5941 = fsub fast float -0.000000e+00, %5940
  %5942 = call float @dx.op.unary.f32(i32 21, float %5941)  ; Exp(value)
  %5943 = fmul fast float %5942, %5916
  %5944 = fmul fast float %5943, %5889
  %5945 = fmul fast float %5943, %5893
  %5946 = fmul fast float %5944, 2.500000e-01
  %5947 = fmul fast float %5945, 2.500000e-01
  %5948 = fadd fast float %5946, 5.000000e-01
  %5949 = fadd fast float %5947, 5.000000e-01
  %5950 = fsub fast float %5914, %5912
  %5951 = fptoui float %5950 to i32
  %5952 = add i32 %5951, 320
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %5952)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = fcmp fast une float %5939, %5914
  %5957 = fsub fast float %5889, %5954
  %5958 = fsub fast float %5893, %5955
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5961 = fmul fast float %5959, %5943
  %5962 = fmul fast float %5960, %5943
  %5963 = fcmp fast olt float %5961, 1.000000e+00
  %5964 = fcmp fast olt float %5962, 1.000000e+00
  %5965 = and i1 %5963, %5964
  %5966 = or i1 %5956, %5965
  br i1 %5966, label %5967, label %6264, !dx.controlflow.hints !104

; <label>:5967                                    ; preds = %5905
  %5968 = fmul fast float %5945, 5.000000e-01
  %5969 = fmul fast float %5944, 5.000000e-01
  %5970 = fadd fast float %5968, 5.000000e-01
  %5971 = fadd fast float %5969, 5.000000e-01
  %5972 = sitofp i32 %5911 to float
  %5973 = fsub fast float %5939, %5972
  %5974 = call float @dx.op.unary.f32(i32 27, float %5973)  ; Round_ni(value)
  %5975 = call float @dx.op.unary.f32(i32 22, float %5939)  ; Frc(value)
  %5976 = call float @dx.op.unary.f32(i32 22, float %5971)  ; Frc(value)
  %5977 = call float @dx.op.unary.f32(i32 22, float %5970)  ; Frc(value)
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %5976, float %5977, float %5974, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.ResRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.ResRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.ResRet.f32 %5978, 3
  %5983 = fcmp fast ogt float %5975, 0.000000e+00
  br i1 %5983, label %5984, label %6005, !dx.controlflow.hints !105

; <label>:5984                                    ; preds = %5967
  %5985 = fadd fast float %5974, 1.000000e+00
  %5986 = call float @dx.op.unary.f32(i32 22, float %5948)  ; Frc(value)
  %5987 = call float @dx.op.unary.f32(i32 22, float %5949)  ; Frc(value)
  %5988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %5986, float %5987, float %5985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5989 = extractvalue %dx.types.ResRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.ResRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.ResRet.f32 %5988, 2
  %5992 = extractvalue %dx.types.ResRet.f32 %5988, 3
  %5993 = fsub fast float %5989, %5979
  %5994 = fsub fast float %5990, %5980
  %5995 = fsub fast float %5991, %5981
  %5996 = fsub fast float %5992, %5982
  %5997 = fmul fast float %5993, %5975
  %5998 = fmul fast float %5994, %5975
  %5999 = fmul fast float %5995, %5975
  %6000 = fmul fast float %5996, %5975
  %6001 = fadd fast float %5997, %5979
  %6002 = fadd fast float %5998, %5980
  %6003 = fadd fast float %5999, %5981
  %6004 = fadd fast float %6000, %5982
  br label %6005

; <label>:6005                                    ; preds = %5984, %5967
  %6006 = phi float [ %6001, %5984 ], [ %5979, %5967 ]
  %6007 = phi float [ %6002, %5984 ], [ %5980, %5967 ]
  %6008 = phi float [ %6003, %5984 ], [ %5981, %5967 ]
  %6009 = phi float [ %6004, %5984 ], [ %5982, %5967 ]
  %6010 = fadd fast float %6006, -5.000000e-01
  %6011 = fadd fast float %6008, -5.000000e-01
  %6012 = fmul fast float %6010, 0xBFD5555560000000
  %6013 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6011, float %6012)  ; FMad(a,b,c)
  %6014 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6007, float 0.000000e+00)  ; FMad(a,b,c)
  %6015 = fadd fast float %6014, %6009
  %6016 = fmul fast float %6010, -7.500000e-01
  %6017 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6011, float %6016)  ; FMad(a,b,c)
  %6018 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6007, float 0.000000e+00)  ; FMad(a,b,c)
  %6019 = fadd fast float %6018, %6009
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6026 = extractvalue %dx.types.CBufRet.f32 %6022, 3
  %6027 = fsub fast float %6023, %6013
  %6028 = fsub fast float %6024, %6015
  %6029 = fsub fast float %6025, %6017
  %6030 = fsub fast float %6026, %6019
  %6031 = fmul fast float %6027, %6021
  %6032 = fmul fast float %6028, %6021
  %6033 = fmul fast float %6029, %6021
  %6034 = fmul fast float %6030, %6021
  %6035 = fadd fast float %6031, %6013
  %6036 = fadd fast float %6032, %6015
  %6037 = fadd fast float %6033, %6017
  %6038 = fadd fast float %6034, %6019
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = and i32 %6040, 536870911
  %6042 = uitofp i32 %6041 to float
  %6043 = fmul fast float %6042, %5889
  %6044 = fmul fast float %6042, %5893
  %6045 = fptoui float %6043 to i32
  %6046 = fptoui float %6044 to i32
  %6047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6048 = extractvalue %dx.types.ResRet.i32 %6047, 0
  %6049 = and i32 %6048, 31
  %6050 = lshr i32 %6045, %6049
  %6051 = lshr i32 %6046, %6049
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 31
  %6055 = shl i32 1, %6054
  %6056 = call i32 @dx.op.binary.i32(i32 40, i32 %6055, i32 4)  ; UMin(a,b)
  %6057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.i32 %6057, 0
  %6059 = extractvalue %dx.types.ResRet.i32 %6057, 1
  %6060 = icmp eq i32 %6056, 0
  br i1 %6060, label %6102, label %6061

; <label>:6061                                    ; preds = %6005
  br label %6062

; <label>:6062                                    ; preds = %6090, %6061
  %6063 = phi i32 [ %6093, %6090 ], [ 0, %6061 ]
  %6064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.i32 %6064, 0
  %6066 = lshr i32 %6065, 16
  %6067 = and i32 %6066, 31
  %6068 = shl i32 %6051, %6067
  %6069 = add i32 %6068, %6050
  %6070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6071 = extractvalue %dx.types.ResRet.i32 %6070, 0
  %6072 = and i32 %6071, 31
  %6073 = shl i32 %6069, %6072
  %6074 = add i32 %6073, %6063
  %6075 = shl i32 %6074, 2
  %6076 = add i32 %6075, 32
  %6077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.i32 %6077, 0
  %6079 = icmp slt i32 %6078, 0
  %6080 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6063
  %6081 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6063
  %6082 = bitcast float* %6080 to i32*
  %6083 = bitcast float* %6081 to i32*
  br i1 %6079, label %6084, label %6090

; <label>:6084                                    ; preds = %6062
  %6085 = and i32 %6078, 1073741823
  %6086 = add nuw nsw i32 %6085, 20
  %6087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6086, i32 undef)  ; BufferLoad(srv,index,wot)
  %6088 = extractvalue %dx.types.ResRet.i32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.i32 %6087, 1
  br label %6090

; <label>:6090                                    ; preds = %6084, %6062
  %6091 = phi i32 [ %6088, %6084 ], [ %6058, %6062 ]
  %6092 = phi i32 [ %6089, %6084 ], [ %6059, %6062 ]
  store i32 %6091, i32* %6082, align 4
  store i32 %6092, i32* %6083, align 4
  %6093 = add nuw i32 %6063, 1
  %6094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.i32 %6094, 2
  %6096 = icmp eq i32 %6095, 0
  %6097 = icmp ugt i32 %6078, -1073741825
  %6098 = and i1 %6097, %6096
  %6099 = icmp ult i32 %6093, %6056
  %6100 = and i1 %6098, %6099
  br i1 %6100, label %6062, label %6101

; <label>:6101                                    ; preds = %6090
  br label %6102

; <label>:6102                                    ; preds = %6101, %6005
  %6103 = phi i32 [ 0, %6005 ], [ %6093, %6101 ]
  %6104 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %6105 = fptoui float %6104 to i32
  %6106 = icmp eq i32 %6105, 0
  br i1 %6106, label %6158, label %6107

; <label>:6107                                    ; preds = %6102
  br label %6108

; <label>:6108                                    ; preds = %6153, %6107
  %6109 = phi i32 [ %6154, %6153 ], [ %6103, %6107 ]
  %6110 = phi i32 [ %6155, %6153 ], [ 0, %6107 ]
  %6111 = lshr i32 %6110, 2
  %6112 = and i32 %6110, 3
  %6113 = add nuw nsw i32 %6111, 83
  %6114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6113)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.i32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.i32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.i32 %6114, 2
  %6118 = extractvalue %dx.types.CBufRet.i32 %6114, 3
  %6119 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6115, i32* %6119, align 4
  %6120 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6116, i32* %6120, align 4
  %6121 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6117, i32* %6121, align 4
  %6122 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6118, i32* %6122, align 4
  %6123 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6112
  %6124 = load i32, i32* %6123, align 4, !tbaa !106, !noalias !110
  %6125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.i32 %6125, 0
  %6127 = lshr i32 %6126, 16
  %6128 = and i32 %6127, 31
  %6129 = shl i32 %6051, %6128
  %6130 = add i32 %6129, %6050
  %6131 = shl i32 %6130, 2
  %6132 = add i32 %6131, %6124
  %6133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6132, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.i32 %6133, 0
  %6135 = icmp eq i32 %6134, 0
  br i1 %6135, label %6153, label %6136

; <label>:6136                                    ; preds = %6108
  %6137 = icmp slt i32 %6134, 0
  %6138 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6109
  %6139 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6109
  %6140 = bitcast float* %6138 to i32*
  %6141 = bitcast float* %6139 to i32*
  br i1 %6137, label %6142, label %6149

; <label>:6142                                    ; preds = %6136
  %6143 = and i32 %6134, 1073741823
  %6144 = add i32 %6124, 20
  %6145 = add i32 %6144, %6143
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.i32 %6146, 1
  br label %6149

; <label>:6149                                    ; preds = %6142, %6136
  %6150 = phi i32 [ %6147, %6142 ], [ %6058, %6136 ]
  %6151 = phi i32 [ %6148, %6142 ], [ %6059, %6136 ]
  store i32 %6150, i32* %6140, align 4
  store i32 %6151, i32* %6141, align 4
  %6152 = add i32 %6109, 1
  br label %6153

; <label>:6153                                    ; preds = %6149, %6108
  %6154 = phi i32 [ %6109, %6108 ], [ %6152, %6149 ]
  %6155 = add nuw i32 %6110, 1
  %6156 = icmp eq i32 %6155, %6105
  br i1 %6156, label %6157, label %6108

; <label>:6157                                    ; preds = %6153
  br label %6158

; <label>:6158                                    ; preds = %6157, %6102
  %6159 = phi i32 [ %6103, %6102 ], [ %6154, %6157 ]
  %6160 = icmp eq i32 %6159, 1
  %6161 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6162 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6160, label %6163, label %6166

; <label>:6163                                    ; preds = %6158
  %6164 = load float, float* %6161, align 4
  %6165 = load float, float* %6162, align 4
  br label %6193

; <label>:6166                                    ; preds = %6158
  %6167 = load float, float* %6161, align 4
  %6168 = load float, float* %6162, align 4
  %6169 = fdiv fast float 1.000000e+00, %6168
  %6170 = fsub fast float %6167, %6169
  %6171 = icmp ugt i32 %6159, 1
  br i1 %6171, label %6172, label %6188

; <label>:6172                                    ; preds = %6166
  br label %6173

; <label>:6173                                    ; preds = %6173, %6172
  %6174 = phi float [ %6183, %6173 ], [ %6170, %6172 ]
  %6175 = phi float [ %6184, %6173 ], [ %6167, %6172 ]
  %6176 = phi i32 [ %6185, %6173 ], [ 1, %6172 ]
  %6177 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6176
  %6178 = load float, float* %6177, align 4
  %6179 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6176
  %6180 = load float, float* %6179, align 4
  %6181 = fdiv fast float 1.000000e+00, %6180
  %6182 = fsub fast float %6178, %6181
  %6183 = call float @dx.op.binary.f32(i32 36, float %6174, float %6182)  ; FMin(a,b)
  %6184 = call float @dx.op.binary.f32(i32 35, float %6175, float %6178)  ; FMax(a,b)
  %6185 = add nuw i32 %6176, 1
  %6186 = icmp eq i32 %6185, %6159
  br i1 %6186, label %6187, label %6173

; <label>:6187                                    ; preds = %6173
  br label %6188

; <label>:6188                                    ; preds = %6187, %6166
  %6189 = phi float [ %6170, %6166 ], [ %6183, %6187 ]
  %6190 = phi float [ %6167, %6166 ], [ %6184, %6187 ]
  %6191 = fsub fast float %6190, %6189
  %6192 = fdiv fast float 1.000000e+00, %6191
  br label %6193

; <label>:6193                                    ; preds = %6188, %6163
  %6194 = phi float [ %6164, %6163 ], [ %6190, %6188 ]
  %6195 = phi float [ %6165, %6163 ], [ %6192, %6188 ]
  %6196 = fadd fast float %5897, %6194
  %6197 = fmul fast float %6196, %6195
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fmul fast float %6198, 2.000000e+00
  %6200 = fsub fast float 1.000000e+00, %6199
  %6201 = fmul fast float %6035, %6035
  %6202 = fsub fast float %6036, %6201
  %6203 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6202)  ; FMax(a,b)
  %6204 = fdiv fast float 1.000000e+00, %6203
  %6205 = fmul fast float %6036, %6035
  %6206 = fsub fast float %6037, %6205
  %6207 = fsub fast float %6200, %6035
  %6208 = fmul fast float %6200, %6200
  %6209 = fsub fast float %6208, %6036
  %6210 = fmul fast float %6204, %6206
  %6211 = fmul fast float %6210, %6207
  %6212 = fsub fast float %6209, %6211
  %6213 = fmul fast float %6036, %6036
  %6214 = fsub fast float %6038, %6213
  %6215 = fmul fast float %6206, %6206
  %6216 = fmul fast float %6215, %6204
  %6217 = fsub fast float %6214, %6216
  %6218 = fdiv fast float %6212, %6217
  %6219 = fmul fast float %6218, %6206
  %6220 = fsub fast float %6207, %6219
  %6221 = fmul fast float %6220, %6204
  %6222 = fmul fast float %6221, %6035
  %6223 = fsub fast float 1.000000e+00, %6222
  %6224 = fmul fast float %6218, %6036
  %6225 = fsub fast float %6223, %6224
  %6226 = fmul fast float %6221, %6221
  %6227 = fmul fast float %6218, 4.000000e+00
  %6228 = fmul fast float %6227, %6225
  %6229 = fsub fast float %6226, %6228
  %6230 = call float @dx.op.unary.f32(i32 24, float %6229)  ; Sqrt(value)
  %6231 = fcmp fast oge float %6221, 0.000000e+00
  %6232 = fsub fast float -0.000000e+00, %6230
  %6233 = select i1 %6231, float %6232, float %6230
  %6234 = fsub fast float %6233, %6221
  %6235 = fdiv fast float %6234, %6218
  %6236 = fdiv fast float %6225, %6234
  %6237 = fmul fast float %6235, 5.000000e-01
  %6238 = fmul fast float %6236, 2.000000e+00
  %6239 = select i1 %6231, float %6237, float %6238
  %6240 = select i1 %6231, float %6238, float %6237
  %6241 = call float @dx.op.binary.f32(i32 35, float %6239, float %6240)  ; FMax(a,b)
  %6242 = call float @dx.op.binary.f32(i32 36, float %6239, float %6240)  ; FMin(a,b)
  %6243 = fcmp fast ogt float %6200, %6241
  %6244 = fsub fast float %6200, %6242
  %6245 = fsub fast float %6200, %6241
  %6246 = fsub fast float %6241, %6242
  %6247 = select i1 %6243, float %6245, float %6246
  %6248 = fmul float %6244, %6247
  %6249 = select i1 %6243, float %6242, float %6200
  %6250 = fcmp fast ogt float %6200, %6242
  %6251 = fmul fast float %6249, %6241
  %6252 = fadd fast float %6249, %6241
  %6253 = fmul fast float %6252, %6035
  %6254 = fadd fast float %6251, %6036
  %6255 = fsub fast float %6254, %6253
  %6256 = fdiv fast float %6255, %6248
  %6257 = select i1 %6250, float %6256, float 0.000000e+00
  %6258 = fsub fast float 1.000000e+00, %6257
  %6259 = select i1 %6243, float %6258, float %6257
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6020, 3
  %6262 = fmul fast float %6261, %6260
  %6263 = fsub fast float 1.000000e+00, %6262
  br label %6264

; <label>:6264                                    ; preds = %6193, %5905, %5870, %5866, %5832
  %6265 = phi float [ 1.000000e+00, %5832 ], [ %6263, %6193 ], [ 1.000000e+00, %5870 ], [ 1.000000e+00, %5905 ], [ 1.000000e+00, %5866 ]
  %6266 = fcmp fast ogt float %5862, 0.000000e+00
  br i1 %6266, label %6267, label %6429, !dx.controlflow.hints !119

; <label>:6267                                    ; preds = %6264
  %6268 = fadd fast float %5775, %5749
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6274 = call float @dx.op.binary.f32(i32 35, float %6268, float 0.000000e+00)  ; FMax(a,b)
  %6275 = fadd fast float %6274, 0x3F10000000000000
  %6276 = fcmp fast oeq float %6273, 0.000000e+00
  br i1 %6276, label %6277, label %6344

; <label>:6277                                    ; preds = %6267
  %6278 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6280 = fmul fast float %6279, %5764
  %6281 = fmul fast float %6278, %5765
  %6282 = fadd fast float %6280, 5.000000e-01
  %6283 = call float @dx.op.unary.f32(i32 27, float %6282)  ; Round_ni(value)
  %6284 = fadd fast float %6281, 5.000000e-01
  %6285 = call float @dx.op.unary.f32(i32 27, float %6284)  ; Round_ni(value)
  %6286 = fsub fast float %6282, %6283
  %6287 = fsub fast float %6284, %6285
  %6288 = fadd fast float %6283, -5.000000e-01
  %6289 = fadd fast float %6285, -5.000000e-01
  %6290 = fmul fast float %6286, 2.000000e+00
  %6291 = fsub fast float 3.000000e+00, %6290
  %6292 = fadd fast float %6290, 1.000000e+00
  %6293 = fsub fast float 2.000000e+00, %6286
  %6294 = bitcast float %6291 to i32
  %6295 = sub nsw i32 2129859010, %6294
  %6296 = bitcast i32 %6295 to float
  %6297 = fmul fast float %6296, %6293
  %6298 = fadd fast float %6297, -1.000000e+00
  %6299 = bitcast float %6292 to i32
  %6300 = sub nsw i32 2129859010, %6299
  %6301 = bitcast i32 %6300 to float
  %6302 = fmul fast float %6301, %6286
  %6303 = fadd fast float %6302, 1.000000e+00
  %6304 = fmul fast float %6287, 2.000000e+00
  %6305 = fsub fast float 3.000000e+00, %6304
  %6306 = fadd fast float %6304, 1.000000e+00
  %6307 = fsub fast float 2.000000e+00, %6287
  %6308 = bitcast float %6305 to i32
  %6309 = sub nsw i32 2129859010, %6308
  %6310 = bitcast i32 %6309 to float
  %6311 = fmul fast float %6310, %6307
  %6312 = fadd fast float %6311, -1.000000e+00
  %6313 = bitcast float %6306 to i32
  %6314 = sub nsw i32 2129859010, %6313
  %6315 = bitcast i32 %6314 to float
  %6316 = fmul fast float %6315, %6287
  %6317 = fadd fast float %6316, 1.000000e+00
  %6318 = fadd fast float %6298, %6288
  %6319 = fmul fast float %6318, %6270
  %6320 = fadd fast float %6312, %6289
  %6321 = fmul fast float %6320, %6271
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6319, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float %6275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = fmul fast float %6323, %6291
  %6325 = fadd fast float %6303, %6288
  %6326 = fmul fast float %6325, %6270
  %6327 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6326, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float %6275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = fmul fast float %6328, %6292
  %6330 = fadd fast float %6317, %6289
  %6331 = fmul fast float %6330, %6271
  %6332 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6319, float %6331, float undef, float undef, i32 0, i32 0, i32 undef, float %6275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = fmul fast float %6333, %6291
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6326, float %6331, float undef, float undef, i32 0, i32 0, i32 undef, float %6275)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = fmul fast float %6336, %6292
  %6338 = fadd fast float %6337, %6334
  %6339 = fmul fast float %6338, %6306
  %6340 = fadd fast float %6329, %6324
  %6341 = fmul fast float %6340, %6305
  %6342 = fadd fast float %6341, %6339
  %6343 = fmul fast float %6342, 6.250000e-02
  br label %6429

; <label>:6344                                    ; preds = %6267
  %6345 = fmul fast float %241, 0x401921FB60000000
  %6346 = call float @dx.op.unary.f32(i32 13, float %6345)  ; Sin(value)
  %6347 = call float @dx.op.unary.f32(i32 12, float %6345)  ; Cos(value)
  %6348 = fsub fast float -0.000000e+00, %6346
  br label %6349

; <label>:6349                                    ; preds = %6398, %6344
  %6350 = phi float [ 0.000000e+00, %6344 ], [ %6393, %6398 ]
  %6351 = phi float [ 0.000000e+00, %6344 ], [ %6395, %6398 ]
  %6352 = phi i32 [ 0, %6344 ], [ %6399, %6398 ]
  %6353 = mul i32 %6352, 2
  %6354 = add i32 0, %6353
  %6355 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6354
  %6356 = load float, float* %6355, align 4
  %6357 = mul i32 %6352, 2
  %6358 = add i32 1, %6357
  %6359 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6358
  %6360 = load float, float* %6359, align 4
  %6361 = fmul fast float %6356, %6347
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = fmul fast float %6356, %6346
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6347, float %6363)  ; FMad(a,b,c)
  %6365 = fmul fast float %6362, %6273
  %6366 = fmul fast float %6364, %6273
  %6367 = fadd fast float %6365, %5764
  %6368 = fadd fast float %6366, %5765
  %6369 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6367, float %6368, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6370 = extractvalue %dx.types.ResRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.ResRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.ResRet.f32 %6369, 2
  %6373 = extractvalue %dx.types.ResRet.f32 %6369, 3
  %6374 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %6370, float* %6374, align 4
  %6375 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %6371, float* %6375, align 4
  %6376 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %6372, float* %6376, align 4
  %6377 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %6373, float* %6377, align 4
  %6378 = fsub fast float %6370, %6275
  %6379 = fcmp fast olt float %6378, 0.000000e+00
  %6380 = select i1 %6379, float 0.000000e+00, float 1.000000e+00
  %6381 = fadd fast float %6380, %6350
  %6382 = fmul fast float %6380, %6378
  %6383 = fadd fast float %6382, %6351
  br label %6384

; <label>:6384                                    ; preds = %6384, %6349
  %6385 = phi i32 [ 1, %6349 ], [ %6396, %6384 ]
  %6386 = phi float [ %6383, %6349 ], [ %6395, %6384 ]
  %6387 = phi float [ %6381, %6349 ], [ %6393, %6384 ]
  %6388 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %6385
  %6389 = load float, float* %6388, align 4, !tbaa !120, !noalias !110
  %6390 = fsub fast float %6389, %6275
  %6391 = fcmp fast olt float %6390, 0.000000e+00
  %6392 = select i1 %6391, float 0.000000e+00, float 1.000000e+00
  %6393 = fadd fast float %6392, %6387
  %6394 = fmul fast float %6392, %6390
  %6395 = fadd fast float %6394, %6386
  %6396 = add nuw nsw i32 %6385, 1
  %6397 = icmp eq i32 %6396, 4
  br i1 %6397, label %6398, label %6384, !llvm.loop !122

; <label>:6398                                    ; preds = %6384
  %6399 = add nuw nsw i32 %6352, 1
  %6400 = icmp eq i32 %6399, 8
  br i1 %6400, label %6401, label %6349, !llvm.loop !123

; <label>:6401                                    ; preds = %6398
  %6402 = fdiv fast float 1.000000e+00, %6393
  %6403 = fmul fast float %6402, %6395
  %6404 = fdiv fast float 1.000000e+00, %6275
  %6405 = fmul fast float %6403, %6404
  %6406 = call float @dx.op.unary.f32(i32 7, float %6405)  ; Saturate(value)
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6408 = fmul fast float %6393, 3.125000e-02
  %6409 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  %6410 = fmul fast float %6409, 2.000000e+00
  %6411 = fadd fast float %6410, -1.000000e+00
  %6412 = fcmp fast ogt float %6411, 0.000000e+00
  %6413 = fcmp fast olt float %6411, 0.000000e+00
  %6414 = zext i1 %6412 to i32
  %6415 = zext i1 %6413 to i32
  %6416 = sub nsw i32 %6414, %6415
  %6417 = sitofp i32 %6416 to float
  %6418 = fmul fast float %6417, %6411
  %6419 = fsub fast float 1.000000e+00, %6418
  %6420 = fmul fast float %6419, %6419
  %6421 = fmul fast float %6420, %6419
  %6422 = fsub fast float %6419, %6421
  %6423 = fmul fast float %6422, %6407
  %6424 = fsub fast float 1.000000e+00, %6421
  %6425 = fsub fast float %6424, %6423
  %6426 = fmul fast float %6417, 5.000000e-01
  %6427 = fmul fast float %6426, %6425
  %6428 = fsub fast float 5.000000e-01, %6427
  br label %6429

; <label>:6429                                    ; preds = %6401, %6277, %6264
  %6430 = phi float [ 1.000000e+00, %6264 ], [ %6343, %6277 ], [ %6428, %6401 ]
  %6431 = fcmp fast ogt float %5860, 0.000000e+00
  br i1 %6431, label %6432, label %6596, !dx.controlflow.hints !124

; <label>:6432                                    ; preds = %6429
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6435 = fadd fast float %6434, %5749
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6441 = call float @dx.op.binary.f32(i32 35, float %6435, float 0.000000e+00)  ; FMax(a,b)
  %6442 = fadd fast float %6441, 0x3F10000000000000
  %6443 = fcmp fast oeq float %6440, 0.000000e+00
  br i1 %6443, label %6444, label %6511

; <label>:6444                                    ; preds = %6432
  %6445 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6446 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6447 = fmul fast float %6446, %5756
  %6448 = fmul fast float %6445, %5757
  %6449 = fadd fast float %6447, 5.000000e-01
  %6450 = call float @dx.op.unary.f32(i32 27, float %6449)  ; Round_ni(value)
  %6451 = fadd fast float %6448, 5.000000e-01
  %6452 = call float @dx.op.unary.f32(i32 27, float %6451)  ; Round_ni(value)
  %6453 = fsub fast float %6449, %6450
  %6454 = fsub fast float %6451, %6452
  %6455 = fadd fast float %6450, -5.000000e-01
  %6456 = fadd fast float %6452, -5.000000e-01
  %6457 = fmul fast float %6453, 2.000000e+00
  %6458 = fsub fast float 3.000000e+00, %6457
  %6459 = fadd fast float %6457, 1.000000e+00
  %6460 = fsub fast float 2.000000e+00, %6453
  %6461 = bitcast float %6458 to i32
  %6462 = sub nsw i32 2129859010, %6461
  %6463 = bitcast i32 %6462 to float
  %6464 = fmul fast float %6463, %6460
  %6465 = fadd fast float %6464, -1.000000e+00
  %6466 = bitcast float %6459 to i32
  %6467 = sub nsw i32 2129859010, %6466
  %6468 = bitcast i32 %6467 to float
  %6469 = fmul fast float %6468, %6453
  %6470 = fadd fast float %6469, 1.000000e+00
  %6471 = fmul fast float %6454, 2.000000e+00
  %6472 = fsub fast float 3.000000e+00, %6471
  %6473 = fadd fast float %6471, 1.000000e+00
  %6474 = fsub fast float 2.000000e+00, %6454
  %6475 = bitcast float %6472 to i32
  %6476 = sub nsw i32 2129859010, %6475
  %6477 = bitcast i32 %6476 to float
  %6478 = fmul fast float %6477, %6474
  %6479 = fadd fast float %6478, -1.000000e+00
  %6480 = bitcast float %6473 to i32
  %6481 = sub nsw i32 2129859010, %6480
  %6482 = bitcast i32 %6481 to float
  %6483 = fmul fast float %6482, %6454
  %6484 = fadd fast float %6483, 1.000000e+00
  %6485 = fadd fast float %6465, %6455
  %6486 = fmul fast float %6485, %6437
  %6487 = fadd fast float %6479, %6456
  %6488 = fmul fast float %6487, %6438
  %6489 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6486, float %6488, float undef, float undef, i32 0, i32 0, i32 undef, float %6442)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = fmul fast float %6490, %6458
  %6492 = fadd fast float %6470, %6455
  %6493 = fmul fast float %6492, %6437
  %6494 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6493, float %6488, float undef, float undef, i32 0, i32 0, i32 undef, float %6442)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6495 = extractvalue %dx.types.ResRet.f32 %6494, 0
  %6496 = fmul fast float %6495, %6459
  %6497 = fadd fast float %6484, %6456
  %6498 = fmul fast float %6497, %6438
  %6499 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6486, float %6498, float undef, float undef, i32 0, i32 0, i32 undef, float %6442)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = fmul fast float %6500, %6458
  %6502 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6493, float %6498, float undef, float undef, i32 0, i32 0, i32 undef, float %6442)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = fmul fast float %6503, %6459
  %6505 = fadd fast float %6504, %6501
  %6506 = fmul fast float %6505, %6473
  %6507 = fadd fast float %6496, %6491
  %6508 = fmul fast float %6507, %6472
  %6509 = fadd fast float %6508, %6506
  %6510 = fmul fast float %6509, 6.250000e-02
  br label %6596

; <label>:6511                                    ; preds = %6432
  %6512 = fmul fast float %241, 0x401921FB60000000
  %6513 = call float @dx.op.unary.f32(i32 13, float %6512)  ; Sin(value)
  %6514 = call float @dx.op.unary.f32(i32 12, float %6512)  ; Cos(value)
  %6515 = fsub fast float -0.000000e+00, %6513
  br label %6516

; <label>:6516                                    ; preds = %6565, %6511
  %6517 = phi float [ 0.000000e+00, %6511 ], [ %6560, %6565 ]
  %6518 = phi float [ 0.000000e+00, %6511 ], [ %6562, %6565 ]
  %6519 = phi i32 [ 0, %6511 ], [ %6566, %6565 ]
  %6520 = mul i32 %6519, 2
  %6521 = add i32 0, %6520
  %6522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6521
  %6523 = load float, float* %6522, align 4
  %6524 = mul i32 %6519, 2
  %6525 = add i32 1, %6524
  %6526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6525
  %6527 = load float, float* %6526, align 4
  %6528 = fmul fast float %6523, %6514
  %6529 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6515, float %6528)  ; FMad(a,b,c)
  %6530 = fmul fast float %6523, %6513
  %6531 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6514, float %6530)  ; FMad(a,b,c)
  %6532 = fmul fast float %6529, %6440
  %6533 = fmul fast float %6531, %6440
  %6534 = fadd fast float %6532, %5756
  %6535 = fadd fast float %6533, %5757
  %6536 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6534, float %6535, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.ResRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.ResRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.ResRet.f32 %6536, 3
  %6541 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6537, float* %6541, align 4
  %6542 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6538, float* %6542, align 4
  %6543 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6539, float* %6543, align 4
  %6544 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6540, float* %6544, align 4
  %6545 = fsub fast float %6537, %6442
  %6546 = fcmp fast olt float %6545, 0.000000e+00
  %6547 = select i1 %6546, float 0.000000e+00, float 1.000000e+00
  %6548 = fadd fast float %6547, %6517
  %6549 = fmul fast float %6547, %6545
  %6550 = fadd fast float %6549, %6518
  br label %6551

; <label>:6551                                    ; preds = %6551, %6516
  %6552 = phi i32 [ 1, %6516 ], [ %6563, %6551 ]
  %6553 = phi float [ %6550, %6516 ], [ %6562, %6551 ]
  %6554 = phi float [ %6548, %6516 ], [ %6560, %6551 ]
  %6555 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6552
  %6556 = load float, float* %6555, align 4, !tbaa !120, !noalias !110
  %6557 = fsub fast float %6556, %6442
  %6558 = fcmp fast olt float %6557, 0.000000e+00
  %6559 = select i1 %6558, float 0.000000e+00, float 1.000000e+00
  %6560 = fadd fast float %6559, %6554
  %6561 = fmul fast float %6559, %6557
  %6562 = fadd fast float %6561, %6553
  %6563 = add nuw nsw i32 %6552, 1
  %6564 = icmp eq i32 %6563, 4
  br i1 %6564, label %6565, label %6551, !llvm.loop !122

; <label>:6565                                    ; preds = %6551
  %6566 = add nuw nsw i32 %6519, 1
  %6567 = icmp eq i32 %6566, 8
  br i1 %6567, label %6568, label %6516, !llvm.loop !123

; <label>:6568                                    ; preds = %6565
  %6569 = fdiv fast float 1.000000e+00, %6560
  %6570 = fmul fast float %6569, %6562
  %6571 = fdiv fast float 1.000000e+00, %6442
  %6572 = fmul fast float %6570, %6571
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6574 = call float @dx.op.binary.f32(i32 35, float %6573, float 0.000000e+00)  ; FMax(a,b)
  %6575 = fmul fast float %6560, 3.125000e-02
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = fmul fast float %6576, 2.000000e+00
  %6578 = fadd fast float %6577, -1.000000e+00
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  %6580 = fcmp fast olt float %6578, 0.000000e+00
  %6581 = zext i1 %6579 to i32
  %6582 = zext i1 %6580 to i32
  %6583 = sub nsw i32 %6581, %6582
  %6584 = sitofp i32 %6583 to float
  %6585 = fmul fast float %6584, %6578
  %6586 = fsub fast float 1.000000e+00, %6585
  %6587 = fmul fast float %6586, %6586
  %6588 = fmul fast float %6587, %6586
  %6589 = fsub fast float %6586, %6588
  %6590 = fmul fast float %6589, %6574
  %6591 = fsub fast float 1.000000e+00, %6588
  %6592 = fsub fast float %6591, %6590
  %6593 = fmul fast float %6584, 5.000000e-01
  %6594 = fmul fast float %6593, %6592
  %6595 = fsub fast float 5.000000e-01, %6594
  br label %6596

; <label>:6596                                    ; preds = %6568, %6444, %6429
  %6597 = phi float [ 1.000000e+00, %6429 ], [ %6510, %6444 ], [ %6595, %6568 ]
  %6598 = fcmp fast ogt float %5859, 0.000000e+00
  br i1 %6598, label %6599, label %6763, !dx.controlflow.hints !125

; <label>:6599                                    ; preds = %6596
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = fadd fast float %6601, %5749
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 2
  %6605 = extractvalue %dx.types.CBufRet.f32 %6603, 3
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = call float @dx.op.binary.f32(i32 35, float %6602, float 0.000000e+00)  ; FMax(a,b)
  %6609 = fadd fast float %6608, 0x3F10000000000000
  %6610 = fcmp fast oeq float %6607, 0.000000e+00
  br i1 %6610, label %6611, label %6678

; <label>:6611                                    ; preds = %6599
  %6612 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6613 = extractvalue %dx.types.CBufRet.f32 %6603, 0
  %6614 = fmul fast float %6613, %5741
  %6615 = fmul fast float %6612, %5745
  %6616 = fadd fast float %6614, 5.000000e-01
  %6617 = call float @dx.op.unary.f32(i32 27, float %6616)  ; Round_ni(value)
  %6618 = fadd fast float %6615, 5.000000e-01
  %6619 = call float @dx.op.unary.f32(i32 27, float %6618)  ; Round_ni(value)
  %6620 = fsub fast float %6616, %6617
  %6621 = fsub fast float %6618, %6619
  %6622 = fadd fast float %6617, -5.000000e-01
  %6623 = fadd fast float %6619, -5.000000e-01
  %6624 = fmul fast float %6620, 2.000000e+00
  %6625 = fsub fast float 3.000000e+00, %6624
  %6626 = fadd fast float %6624, 1.000000e+00
  %6627 = fsub fast float 2.000000e+00, %6620
  %6628 = bitcast float %6625 to i32
  %6629 = sub nsw i32 2129859010, %6628
  %6630 = bitcast i32 %6629 to float
  %6631 = fmul fast float %6630, %6627
  %6632 = fadd fast float %6631, -1.000000e+00
  %6633 = bitcast float %6626 to i32
  %6634 = sub nsw i32 2129859010, %6633
  %6635 = bitcast i32 %6634 to float
  %6636 = fmul fast float %6635, %6620
  %6637 = fadd fast float %6636, 1.000000e+00
  %6638 = fmul fast float %6621, 2.000000e+00
  %6639 = fsub fast float 3.000000e+00, %6638
  %6640 = fadd fast float %6638, 1.000000e+00
  %6641 = fsub fast float 2.000000e+00, %6621
  %6642 = bitcast float %6639 to i32
  %6643 = sub nsw i32 2129859010, %6642
  %6644 = bitcast i32 %6643 to float
  %6645 = fmul fast float %6644, %6641
  %6646 = fadd fast float %6645, -1.000000e+00
  %6647 = bitcast float %6640 to i32
  %6648 = sub nsw i32 2129859010, %6647
  %6649 = bitcast i32 %6648 to float
  %6650 = fmul fast float %6649, %6621
  %6651 = fadd fast float %6650, 1.000000e+00
  %6652 = fadd fast float %6632, %6622
  %6653 = fmul fast float %6652, %6604
  %6654 = fadd fast float %6646, %6623
  %6655 = fmul fast float %6654, %6605
  %6656 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6653, float %6655, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = fmul fast float %6657, %6625
  %6659 = fadd fast float %6637, %6622
  %6660 = fmul fast float %6659, %6604
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6660, float %6655, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = fmul fast float %6662, %6626
  %6664 = fadd fast float %6651, %6623
  %6665 = fmul fast float %6664, %6605
  %6666 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6653, float %6665, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = fmul fast float %6667, %6625
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6660, float %6665, float undef, float undef, i32 0, i32 0, i32 undef, float %6609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = fmul fast float %6670, %6626
  %6672 = fadd fast float %6671, %6668
  %6673 = fmul fast float %6672, %6640
  %6674 = fadd fast float %6663, %6658
  %6675 = fmul fast float %6674, %6639
  %6676 = fadd fast float %6675, %6673
  %6677 = fmul fast float %6676, 6.250000e-02
  br label %6763

; <label>:6678                                    ; preds = %6599
  %6679 = fmul fast float %241, 0x401921FB60000000
  %6680 = call float @dx.op.unary.f32(i32 13, float %6679)  ; Sin(value)
  %6681 = call float @dx.op.unary.f32(i32 12, float %6679)  ; Cos(value)
  %6682 = fsub fast float -0.000000e+00, %6680
  br label %6683

; <label>:6683                                    ; preds = %6732, %6678
  %6684 = phi float [ 0.000000e+00, %6678 ], [ %6727, %6732 ]
  %6685 = phi float [ 0.000000e+00, %6678 ], [ %6729, %6732 ]
  %6686 = phi i32 [ 0, %6678 ], [ %6733, %6732 ]
  %6687 = mul i32 %6686, 2
  %6688 = add i32 0, %6687
  %6689 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6688
  %6690 = load float, float* %6689, align 4
  %6691 = mul i32 %6686, 2
  %6692 = add i32 1, %6691
  %6693 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6692
  %6694 = load float, float* %6693, align 4
  %6695 = fmul fast float %6690, %6681
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6694, float %6682, float %6695)  ; FMad(a,b,c)
  %6697 = fmul fast float %6690, %6680
  %6698 = call float @dx.op.tertiary.f32(i32 46, float %6694, float %6681, float %6697)  ; FMad(a,b,c)
  %6699 = fmul fast float %6696, %6607
  %6700 = fmul fast float %6698, %6607
  %6701 = fadd fast float %6699, %5741
  %6702 = fadd fast float %6700, %5745
  %6703 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %6701, float %6702, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6704 = extractvalue %dx.types.ResRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.ResRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.ResRet.f32 %6703, 2
  %6707 = extractvalue %dx.types.ResRet.f32 %6703, 3
  %6708 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6704, float* %6708, align 4
  %6709 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6705, float* %6709, align 4
  %6710 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6706, float* %6710, align 4
  %6711 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6707, float* %6711, align 4
  %6712 = fsub fast float %6704, %6609
  %6713 = fcmp fast olt float %6712, 0.000000e+00
  %6714 = select i1 %6713, float 0.000000e+00, float 1.000000e+00
  %6715 = fadd fast float %6714, %6684
  %6716 = fmul fast float %6714, %6712
  %6717 = fadd fast float %6716, %6685
  br label %6718

; <label>:6718                                    ; preds = %6718, %6683
  %6719 = phi i32 [ 1, %6683 ], [ %6730, %6718 ]
  %6720 = phi float [ %6717, %6683 ], [ %6729, %6718 ]
  %6721 = phi float [ %6715, %6683 ], [ %6727, %6718 ]
  %6722 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6719
  %6723 = load float, float* %6722, align 4, !tbaa !120, !noalias !110
  %6724 = fsub fast float %6723, %6609
  %6725 = fcmp fast olt float %6724, 0.000000e+00
  %6726 = select i1 %6725, float 0.000000e+00, float 1.000000e+00
  %6727 = fadd fast float %6726, %6721
  %6728 = fmul fast float %6726, %6724
  %6729 = fadd fast float %6728, %6720
  %6730 = add nuw nsw i32 %6719, 1
  %6731 = icmp eq i32 %6730, 4
  br i1 %6731, label %6732, label %6718, !llvm.loop !122

; <label>:6732                                    ; preds = %6718
  %6733 = add nuw nsw i32 %6686, 1
  %6734 = icmp eq i32 %6733, 8
  br i1 %6734, label %6735, label %6683, !llvm.loop !123

; <label>:6735                                    ; preds = %6732
  %6736 = fdiv fast float 1.000000e+00, %6727
  %6737 = fmul fast float %6736, %6729
  %6738 = fdiv fast float 1.000000e+00, %6609
  %6739 = fmul fast float %6737, %6738
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = call float @dx.op.binary.f32(i32 35, float %6740, float 0.000000e+00)  ; FMax(a,b)
  %6742 = fmul fast float %6727, 3.125000e-02
  %6743 = call float @dx.op.unary.f32(i32 7, float %6742)  ; Saturate(value)
  %6744 = fmul fast float %6743, 2.000000e+00
  %6745 = fadd fast float %6744, -1.000000e+00
  %6746 = fcmp fast ogt float %6745, 0.000000e+00
  %6747 = fcmp fast olt float %6745, 0.000000e+00
  %6748 = zext i1 %6746 to i32
  %6749 = zext i1 %6747 to i32
  %6750 = sub nsw i32 %6748, %6749
  %6751 = sitofp i32 %6750 to float
  %6752 = fmul fast float %6751, %6745
  %6753 = fsub fast float 1.000000e+00, %6752
  %6754 = fmul fast float %6753, %6753
  %6755 = fmul fast float %6754, %6753
  %6756 = fsub fast float %6753, %6755
  %6757 = fmul fast float %6756, %6741
  %6758 = fsub fast float 1.000000e+00, %6755
  %6759 = fsub fast float %6758, %6757
  %6760 = fmul fast float %6751, 5.000000e-01
  %6761 = fmul fast float %6760, %6759
  %6762 = fsub fast float 5.000000e-01, %6761
  br label %6763

; <label>:6763                                    ; preds = %6735, %6611, %6596
  %6764 = phi float [ 1.000000e+00, %6596 ], [ %6677, %6611 ], [ %6762, %6735 ]
  %6765 = fsub fast float %6430, %6265
  %6766 = fmul fast float %6765, %5803
  %6767 = fadd fast float %6766, %6265
  %6768 = fsub fast float %6597, %6767
  %6769 = fmul fast float %6768, %5833
  %6770 = fadd fast float %6769, %6767
  %6771 = fsub fast float %6764, %6770
  %6772 = fmul fast float %6771, %5859
  %6773 = fadd fast float %6772, %6770
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6776 = fcmp fast ogt float %6775, 0.000000e+00
  br i1 %6776, label %6777, label %6817, !dx.controlflow.hints !126

; <label>:6777                                    ; preds = %6763
  %6778 = fcmp fast ugt float %6775, 0.000000e+00
  br i1 %6778, label %6779, label %6814

; <label>:6779                                    ; preds = %6777
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6791 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = fadd fast float %6793, %5718
  %6797 = fadd fast float %6794, %5719
  %6798 = fadd fast float %6795, %5720
  %6799 = fmul fast float %6796, %6781
  %6800 = call float @dx.op.tertiary.f32(i32 46, float %6782, float %6797, float %6799)  ; FMad(a,b,c)
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6783, float %6798, float %6800)  ; FMad(a,b,c)
  %6802 = fadd fast float %6801, %6784
  %6803 = fmul fast float %6796, %6786
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6797, float %6803)  ; FMad(a,b,c)
  %6805 = call float @dx.op.tertiary.f32(i32 46, float %6788, float %6798, float %6804)  ; FMad(a,b,c)
  %6806 = fadd fast float %6805, %6789
  %6807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %6802, float %6806, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = fmul fast float %6808, %6791
  %6810 = fadd fast float %6809, %6790
  %6811 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  %6812 = fmul fast float %6811, %6775
  %6813 = fsub fast float 1.000000e+00, %6812
  br label %6814

; <label>:6814                                    ; preds = %6779, %6777
  %6815 = phi float [ %6813, %6779 ], [ 1.000000e+00, %6777 ]
  %6816 = fmul fast float %6815, %6773
  br label %6817

; <label>:6817                                    ; preds = %6814, %6763, %5698
  %6818 = phi float [ 1.000000e+00, %5698 ], [ %6816, %6814 ], [ %6773, %6763 ]
  %6819 = call float @dx.op.binary.f32(i32 36, float %6818, float %6818)  ; FMin(a,b)
  %6820 = call float @dx.op.binary.f32(i32 36, float %6818, float %6819)  ; FMin(a,b)
  %6821 = fcmp fast ogt float %6820, 0.000000e+00
  br i1 %6821, label %6822, label %6987, !dx.controlflow.hints !127

; <label>:6822                                    ; preds = %6817
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.CBufRet.f32 %6823, 1
  %6826 = extractvalue %dx.types.CBufRet.f32 %6823, 2
  %6827 = extractvalue %dx.types.CBufRet.f32 %6823, 3
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6838 = fmul fast float %6824, %5718
  %6839 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %6825, float %6838)  ; FMad(a,b,c)
  %6840 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %6826, float %6839)  ; FMad(a,b,c)
  %6841 = fadd fast float %6840, %6827
  %6842 = fmul fast float %6829, %5718
  %6843 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %6830, float %6842)  ; FMad(a,b,c)
  %6844 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %6831, float %6843)  ; FMad(a,b,c)
  %6845 = fadd fast float %6844, %6832
  %6846 = fmul fast float %6834, %5718
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %5719, float %6835, float %6846)  ; FMad(a,b,c)
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %5720, float %6836, float %6847)  ; FMad(a,b,c)
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.CBufRet.f32 %6849, 3
  %6853 = fmul fast float %6852, %6841
  %6854 = fmul fast float %6852, %6845
  %6855 = fadd fast float %6853, %6850
  %6856 = fadd fast float %6854, %6851
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = fsub fast float %6855, %6858
  %6861 = fsub fast float %6856, %6859
  %6862 = fcmp fast olt float %6860, 0.000000e+00
  %6863 = fcmp fast olt float %6861, 0.000000e+00
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = extractvalue %dx.types.CBufRet.f32 %6864, 3
  %6869 = select i1 %6862, float %6865, float %6867
  %6870 = select i1 %6863, float %6866, float %6868
  %6871 = fmul fast float %6869, %6860
  %6872 = fmul fast float %6870, %6861
  %6873 = call float @dx.op.unary.f32(i32 6, float %6871)  ; FAbs(value)
  %6874 = call float @dx.op.unary.f32(i32 6, float %6872)  ; FAbs(value)
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = call float @dx.op.binary.f32(i32 35, float %6873, float %6874)  ; FMax(a,b)
  %6878 = fsub fast float %6876, %6877
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = fcmp fast ogt float %6879, 0.000000e+00
  br i1 %6880, label %6881, label %6922, !dx.controlflow.hints !128

; <label>:6881                                    ; preds = %6822
  %6882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6883 = extractvalue %dx.types.ResRet.f32 %6882, 1
  %6884 = fcmp fast ogt float %6883, 0.000000e+00
  br i1 %6884, label %6885, label %6917

; <label>:6885                                    ; preds = %6881
  %6886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.ResRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.ResRet.f32 %6886, 2
  %6890 = extractvalue %dx.types.ResRet.f32 %6886, 3
  %6891 = fsub fast float 1.000000e+00, %6837
  %6892 = fsub fast float %6891, %6848
  %6893 = fmul fast float %6892, 0x400921FB60000000
  %6894 = fadd fast float %6893, 0x3FF921FB60000000
  %6895 = call float @dx.op.unary.f32(i32 13, float %6894)  ; Sin(value)
  %6896 = fadd fast float %6895, -1.000000e+00
  %6897 = fmul fast float %6896, 0x3FD45F3060000000
  %6898 = fmul fast float %6892, 0x401921FB60000000
  %6899 = fadd fast float %6898, 0x400921FB60000000
  %6900 = call float @dx.op.unary.f32(i32 13, float %6899)  ; Sin(value)
  %6901 = fadd fast float %6900, 0x3E7777A5C0000000
  %6902 = fmul fast float %6901, 0x3FC45F3060000000
  %6903 = fmul fast float %6892, 0x4022D97C80000000
  %6904 = fadd fast float %6903, 0x4012D97C80000000
  %6905 = call float @dx.op.unary.f32(i32 13, float %6904)  ; Sin(value)
  %6906 = fadd fast float %6905, 1.000000e+00
  %6907 = fmul fast float %6906, 0x3FBB2995E0000000
  %6908 = fmul fast float %6892, 0x402921FB60000000
  %6909 = fadd fast float %6908, 0x401921FB60000000
  %6910 = call float @dx.op.unary.f32(i32 13, float %6909)  ; Sin(value)
  %6911 = fadd fast float %6910, 0xBE8777A5C0000000
  %6912 = fmul fast float %6911, 0x3FB45F3060000000
  %6913 = call float @dx.op.dot4.f32(i32 56, float %6887, float %6888, float %6889, float %6890, float %6897, float %6902, float %6907, float %6912)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6914 = fmul fast float %6913, 0xBFF7154760000000
  %6915 = call float @dx.op.unary.f32(i32 21, float %6914)  ; Exp(value)
  %6916 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  br label %6917

; <label>:6917                                    ; preds = %6885, %6881
  %6918 = phi float [ %6916, %6885 ], [ 1.000000e+00, %6881 ]
  %6919 = fadd fast float %6918, -1.000000e+00
  %6920 = fmul fast float %6919, %6879
  %6921 = fadd fast float %6920, 1.000000e+00
  br label %6922

; <label>:6922                                    ; preds = %6917, %6822
  %6923 = phi float [ %6921, %6917 ], [ 1.000000e+00, %6822 ]
  %6924 = fmul fast float %6923, %6818
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.CBufRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.CBufRet.f32 %6925, 2
  %6929 = fadd fast float %6926, %168
  %6930 = fadd fast float %6927, %169
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = fsub fast float -0.000000e+00, %6929
  %6938 = fsub fast float -0.000000e+00, %6930
  %6939 = fsub fast float %4873, %6928
  %6940 = fadd fast float %6939, %6932
  %6941 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6937, float %6938, float %6940)  ; Dot3(ax,ay,az,bx,by,bz)
  %6942 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6934, float %6935, float %6936)  ; Dot3(ax,ay,az,bx,by,bz)
  %6943 = fdiv fast float 1.000000e+00, %6942
  %6944 = fmul fast float %6943, %6941
  %6945 = fmul fast float %6934, %6944
  %6946 = fmul fast float %6935, %6944
  %6947 = fadd fast float %6945, %6929
  %6948 = fadd fast float %6946, %6930
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = fsub fast float %6947, %6950
  %6953 = fsub fast float %6948, %6951
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 3
  %6957 = fmul fast float %6952, %6955
  %6958 = fmul fast float %6953, %6956
  %6959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.i32 %6959, 3
  %6961 = icmp eq i32 %6960, 0
  br i1 %6961, label %6967, label %6962

; <label>:6962                                    ; preds = %6922
  %6963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6957, float %6958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  br label %6972

; <label>:6967                                    ; preds = %6922
  %6968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %6957, float %6958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.ResRet.f32 %6968, 1
  %6971 = extractvalue %dx.types.ResRet.f32 %6968, 2
  br label %6972

; <label>:6972                                    ; preds = %6967, %6962
  %6973 = phi float [ %6964, %6962 ], [ %6969, %6967 ]
  %6974 = phi float [ %6965, %6962 ], [ %6970, %6967 ]
  %6975 = phi float [ %6966, %6962 ], [ %6971, %6967 ]
  %6976 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6977 = fmul fast float %6976, %6973
  %6978 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6979 = fsub fast float %6944, %6978
  %6980 = fsub fast float %6979, %6977
  %6981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6980)  ; FMax(a,b)
  %6982 = fmul fast float %6981, %6974
  %6983 = call float @dx.op.binary.f32(i32 36, float %6975, float %6982)  ; FMin(a,b)
  %6984 = fmul fast float %6983, 0xBFF7154760000000
  %6985 = call float @dx.op.unary.f32(i32 21, float %6984)  ; Exp(value)
  %6986 = fmul fast float %6924, %6985
  br label %6987

; <label>:6987                                    ; preds = %6972, %6817
  %6988 = phi float [ %6986, %6972 ], [ %6818, %6817 ]
  %6989 = call float @dx.op.binary.f32(i32 36, float %6988, float %6988)  ; FMin(a,b)
  %6990 = call float @dx.op.binary.f32(i32 36, float %6988, float %6989)  ; FMin(a,b)
  %6991 = fcmp fast ogt float %6990, 0.000000e+00
  br i1 %6991, label %6992, label %7240, !dx.controlflow.hints !129

; <label>:6992                                    ; preds = %6987
  %6993 = fmul fast float %6988, %5710
  %6994 = fmul fast float %6988, %5711
  %6995 = fmul fast float %6988, %5712
  %6996 = fsub fast float %170, %4661
  %6997 = fcmp fast ogt float %6996, 0.000000e+00
  %6998 = fmul fast float %5699, 5.120000e+02
  %6999 = fmul fast float %5700, 5.120000e+02
  %7000 = fmul fast float %5701, 5.120000e+02
  %7001 = fadd fast float %7000, %170
  %7002 = fsub fast float %4661, %7001
  %7003 = fmul fast float %7002, 2.000000e+00
  %7004 = fadd fast float %7003, %7001
  %7005 = select i1 %6997, float %7004, float %7001
  %7006 = fsub fast float %7005, %170
  %7007 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7006, float %6998, float %6999, float %7006)  ; Dot3(ax,ay,az,bx,by,bz)
  %7008 = call float @dx.op.unary.f32(i32 25, float %7007)  ; Rsqrt(value)
  %7009 = fmul fast float %7008, %6998
  %7010 = fmul fast float %7008, %6999
  %7011 = fmul fast float %7008, %7006
  %7012 = fsub fast float %4661, %170
  %7013 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7012)  ; Dot3(ax,ay,az,bx,by,bz)
  %7014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7009, float %7010, float %7011)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = fdiv fast float 1.000000e+00, %7014
  %7016 = fmul fast float %7015, %7013
  %7017 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6996, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fcmp fast ogt float %7017, 0.000000e+00
  %7019 = fcmp fast olt float %7017, 0.000000e+00
  %7020 = zext i1 %7018 to i32
  %7021 = zext i1 %7019 to i32
  %7022 = sub nsw i32 %7020, %7021
  %7023 = sitofp i32 %7022 to float
  %7024 = fsub fast float %7005, %4661
  %7025 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7024, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7026 = fcmp fast ogt float %7025, 0.000000e+00
  %7027 = fcmp fast olt float %7025, 0.000000e+00
  %7028 = zext i1 %7026 to i32
  %7029 = zext i1 %7027 to i32
  %7030 = sub nsw i32 %7028, %7029
  %7031 = sitofp i32 %7030 to float
  %7032 = fcmp fast une float %7023, %7031
  br i1 %7032, label %7033, label %7043

; <label>:7033                                    ; preds = %6992
  %7034 = fmul fast float %7016, %7011
  %7035 = fmul fast float %7016, %7010
  %7036 = fmul fast float %7016, %7009
  %7037 = fmul fast float %7036, %7036
  %7038 = fmul fast float %7035, %7035
  %7039 = fadd fast float %7037, %7038
  %7040 = fmul fast float %7034, %7034
  %7041 = fadd fast float %7039, %7040
  %7042 = call float @dx.op.unary.f32(i32 24, float %7041)  ; Sqrt(value)
  br label %7053

; <label>:7043                                    ; preds = %6992
  %7044 = icmp slt i32 %7022, 0
  br i1 %7044, label %7045, label %7053

; <label>:7045                                    ; preds = %7043
  %7046 = fsub fast float %170, %7005
  %7047 = fmul fast float %6998, %6998
  %7048 = fmul fast float %6999, %6999
  %7049 = fadd fast float %7047, %7048
  %7050 = fmul fast float %7046, %7046
  %7051 = fadd fast float %7049, %7050
  %7052 = call float @dx.op.unary.f32(i32 24, float %7051)  ; Sqrt(value)
  br label %7053

; <label>:7053                                    ; preds = %7045, %7043, %7033
  %7054 = phi float [ %7042, %7033 ], [ %7052, %7045 ], [ 0.000000e+00, %7043 ]
  %7055 = fsub fast float -0.000000e+00, %7054
  %7056 = select i1 %6997, float -0.000000e+00, float %7055
  %7057 = fmul fast float %4662, 0x3FF7154760000000
  %7058 = fmul fast float %7057, %7056
  %7059 = fmul fast float %4663, 0x3FF7154760000000
  %7060 = fmul fast float %7059, %7056
  %7061 = fmul fast float %4664, 0x3FF7154760000000
  %7062 = fmul fast float %7061, %7056
  %7063 = call float @dx.op.unary.f32(i32 21, float %7058)  ; Exp(value)
  %7064 = call float @dx.op.unary.f32(i32 21, float %7060)  ; Exp(value)
  %7065 = call float @dx.op.unary.f32(i32 21, float %7062)  ; Exp(value)
  %7066 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7067 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  %7068 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7069 = fmul fast float %6993, %7066
  %7070 = fmul fast float %6994, %7067
  %7071 = fmul fast float %6995, %7068
  %7072 = fsub fast float %5699, %4861
  %7073 = fsub fast float %5700, %4860
  %7074 = fsub fast float %5701, %4859
  %7075 = call float @dx.op.dot3.f32(i32 55, float %7072, float %7073, float %7074, float %7072, float %7073, float %7074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7076 = call float @dx.op.unary.f32(i32 25, float %7075)  ; Rsqrt(value)
  %7077 = fmul fast float %7076, %7072
  %7078 = fmul fast float %7076, %7073
  %7079 = fmul fast float %7076, %7074
  %7080 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4857, float %4856, float %7077, float %7078, float %7079)  ; Dot3(ax,ay,az,bx,by,bz)
  %7082 = call float @dx.op.unary.f32(i32 7, float %7080)  ; Saturate(value)
  %7083 = bitcast i32 %4900 to float
  %7084 = fmul fast float %7082, %7082
  %7085 = fmul fast float %7084, %7083
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = fmul fast float %7086, %7082
  %7088 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %7077, float %7078, float %7079)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = fmul fast float %7088, %7088
  %7090 = call float @dx.op.unary.f32(i32 6, float %7080)  ; FAbs(value)
  %7091 = fsub fast float 1.000000e+00, %4894
  %7092 = fmul fast float %4876, %4876
  %7093 = fmul fast float %7092, %7091
  %7094 = fadd fast float %7093, %4894
  %7095 = bitcast float %7094 to i32
  %7096 = ashr i32 %7095, 1
  %7097 = add nsw i32 %7096, 532487669
  %7098 = bitcast i32 %7097 to float
  %7099 = fadd fast float %7098, %4876
  %7100 = fmul fast float %4894, %7089
  %7101 = fsub fast float 1.000000e+00, %7089
  %7102 = fadd fast float %7101, %7100
  %7103 = fmul fast float %7090, %7090
  %7104 = fmul fast float %7103, %7091
  %7105 = fadd fast float %7104, %4894
  %7106 = bitcast float %7105 to i32
  %7107 = ashr i32 %7106, 1
  %7108 = add nsw i32 %7107, 532487669
  %7109 = bitcast i32 %7108 to float
  %7110 = fadd fast float %7109, %7090
  %7111 = fmul fast float %7102, %7102
  %7112 = fmul fast float %7111, %7099
  %7113 = fmul fast float %7112, %7110
  %7114 = fdiv fast float 0x3FF0A00000000000, %7113
  %7115 = fmul fast float %7114, %4894
  %7116 = call float @dx.op.unary.f32(i32 6, float %7081)  ; FAbs(value)
  %7117 = fsub fast float 1.000000e+00, %7116
  %7118 = bitcast float %7117 to i32
  %7119 = sitofp i32 %7118 to float
  %7120 = fmul fast float %7119, 5.000000e+00
  %7121 = fadd fast float %7120, 0xC1EFBF8940000000
  %7122 = fptosi float %7121 to i32
  %7123 = bitcast i32 %7122 to float
  %7124 = fsub fast float 1.000000e+00, %4862
  %7125 = fsub fast float 1.000000e+00, %4863
  %7126 = fsub fast float 1.000000e+00, %4874
  %7127 = fmul fast float %7123, %7124
  %7128 = fmul fast float %7123, %7125
  %7129 = fmul fast float %7123, %7126
  %7130 = fadd fast float %7127, %4862
  %7131 = fadd fast float %7128, %4863
  %7132 = fadd fast float %7129, %4874
  br i1 %5012, label %7133, label %7156

; <label>:7133                                    ; preds = %7053
  %7134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %4260, float %7116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7135 = extractvalue %dx.types.ResRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.ResRet.f32 %7134, 1
  %7137 = extractvalue %dx.types.ResRet.f32 %7134, 2
  %7138 = fadd fast float %7135, -5.000000e-01
  %7139 = fadd fast float %7136, -5.000000e-01
  %7140 = fadd fast float %7137, -5.000000e-01
  %7141 = fmul fast float %4862, 4.000000e+00
  %7142 = fmul fast float %7141, %7124
  %7143 = fmul fast float %7142, %7138
  %7144 = fmul fast float %4863, 4.000000e+00
  %7145 = fmul fast float %7144, %7125
  %7146 = fmul fast float %7145, %7139
  %7147 = fmul fast float %4874, 4.000000e+00
  %7148 = fmul fast float %7147, %7126
  %7149 = fmul fast float %7148, %7140
  %7150 = fadd fast float %7143, %7130
  %7151 = fadd fast float %7146, %7131
  %7152 = fadd fast float %7149, %7132
  %7153 = call float @dx.op.unary.f32(i32 7, float %7150)  ; Saturate(value)
  %7154 = call float @dx.op.unary.f32(i32 7, float %7151)  ; Saturate(value)
  %7155 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  br label %7156

; <label>:7156                                    ; preds = %7133, %7053
  %7157 = phi float [ %7153, %7133 ], [ %7130, %7053 ]
  %7158 = phi float [ %7154, %7133 ], [ %7131, %7053 ]
  %7159 = phi float [ %7155, %7133 ], [ %7132, %7053 ]
  %7160 = fmul fast float %7080, 9.843750e-01
  %7161 = fadd fast float %7160, 7.812500e-03
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %7161, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 2
  %7164 = extractvalue %dx.types.ResRet.f32 %7162, 3
  %7165 = fmul fast float %7163, %4862
  %7166 = fmul fast float %7163, %4863
  %7167 = fmul fast float %7163, %4874
  %7168 = fadd fast float %7165, %7164
  %7169 = fadd fast float %7166, %7164
  %7170 = fadd fast float %7167, %7164
  br i1 %5012, label %7171, label %7194

; <label>:7171                                    ; preds = %7156
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %4260, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = extractvalue %dx.types.ResRet.f32 %7172, 1
  %7175 = extractvalue %dx.types.ResRet.f32 %7172, 2
  %7176 = fadd fast float %7173, -5.000000e-01
  %7177 = fadd fast float %7174, -5.000000e-01
  %7178 = fadd fast float %7175, -5.000000e-01
  %7179 = fmul fast float %4862, 4.000000e+00
  %7180 = fmul fast float %7179, %7124
  %7181 = fmul fast float %7180, %7176
  %7182 = fmul fast float %4863, 4.000000e+00
  %7183 = fmul fast float %7182, %7125
  %7184 = fmul fast float %7183, %7177
  %7185 = fmul fast float %4874, 4.000000e+00
  %7186 = fmul fast float %7185, %7126
  %7187 = fmul fast float %7186, %7178
  %7188 = fadd fast float %7181, %7168
  %7189 = fadd fast float %7184, %7169
  %7190 = fadd fast float %7187, %7170
  %7191 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7192 = call float @dx.op.unary.f32(i32 7, float %7189)  ; Saturate(value)
  %7193 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  br label %7194

; <label>:7194                                    ; preds = %7171, %7156
  %7195 = phi float [ %7191, %7171 ], [ %7168, %7156 ]
  %7196 = phi float [ %7192, %7171 ], [ %7169, %7156 ]
  %7197 = phi float [ %7193, %7171 ], [ %7170, %7156 ]
  %7198 = call float @dx.op.binary.f32(i32 35, float %7196, float %7197)  ; FMax(a,b)
  %7199 = call float @dx.op.binary.f32(i32 35, float %7195, float %7198)  ; FMax(a,b)
  %7200 = fsub fast float 1.000000e+00, %7199
  %7201 = fmul fast float %7157, %7115
  %7202 = fmul fast float %7158, %7115
  %7203 = fmul fast float %7159, %7115
  %7204 = fsub fast float 1.000000e+00, %7081
  %7205 = bitcast float %7204 to i32
  %7206 = sitofp i32 %7205 to float
  %7207 = fmul fast float %7206, 5.000000e+00
  %7208 = fadd fast float %7207, 0xC1EFBF8940000000
  %7209 = fptosi float %7208 to i32
  %7210 = bitcast i32 %7209 to float
  %7211 = fmul fast float %7210, %4261
  %7212 = fmul fast float %7200, %7211
  %7213 = fmul fast float %7212, %5660
  %7214 = fmul fast float %7212, %5661
  %7215 = fmul fast float %7212, %5662
  %7216 = fadd fast float %7213, %7201
  %7217 = fadd fast float %7214, %7202
  %7218 = fadd fast float %7215, %7203
  %7219 = fmul fast float %7087, %7069
  %7220 = fmul fast float %7219, %7200
  %7221 = fmul fast float %7087, %7070
  %7222 = fmul fast float %7221, %7200
  %7223 = fmul fast float %7087, %7071
  %7224 = fmul fast float %7223, %7200
  %7225 = fmul fast float %7219, %7216
  %7226 = fmul fast float %7221, %7217
  %7227 = fmul fast float %7223, %7218
  %7228 = fadd fast float %7220, %5644
  %7229 = fmul fast float %7228, %4257
  %7230 = fadd fast float %7222, %5645
  %7231 = fmul fast float %7230, %4257
  %7232 = fadd fast float %7224, %5646
  %7233 = fmul fast float %7232, %4257
  %7234 = fadd fast float %7225, %5687
  %7235 = fmul fast float %7234, %4257
  %7236 = fadd fast float %7226, %5690
  %7237 = fmul fast float %7236, %4257
  %7238 = fadd fast float %7227, %5693
  %7239 = fmul fast float %7238, %4257
  br label %7240

; <label>:7240                                    ; preds = %7194, %6987, %5640
  %7241 = phi float [ %5688, %5640 ], [ %5688, %6987 ], [ %7235, %7194 ]
  %7242 = phi float [ %5691, %5640 ], [ %5691, %6987 ], [ %7237, %7194 ]
  %7243 = phi float [ %5694, %5640 ], [ %5694, %6987 ], [ %7239, %7194 ]
  %7244 = phi float [ %5683, %5640 ], [ %5683, %6987 ], [ %7229, %7194 ]
  %7245 = phi float [ %5684, %5640 ], [ %5684, %6987 ], [ %7231, %7194 ]
  %7246 = phi float [ %5685, %5640 ], [ %5685, %6987 ], [ %7233, %7194 ]
  %7247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.i32 %7247, 0
  %7249 = icmp eq i32 %7248, 0
  br i1 %7249, label %7913, label %7250

; <label>:7250                                    ; preds = %7240
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7254 = fmul fast float %7252, %105
  %7255 = fmul fast float %7253, %106
  %7256 = fptoui float %7254 to i32
  %7257 = fptoui float %7255 to i32
  %7258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7259 = extractvalue %dx.types.CBufRet.f32 %7258, 0
  %7260 = extractvalue %dx.types.CBufRet.f32 %7258, 2
  %7261 = extractvalue %dx.types.CBufRet.f32 %7258, 3
  %7262 = fadd fast float %93, -4.000000e+00
  %7263 = call float @dx.op.binary.f32(i32 35, float %7262, float 0.000000e+00)  ; FMax(a,b)
  %7264 = fadd fast float %7263, %7259
  %7265 = fmul fast float %7264, %7260
  %7266 = call float @dx.op.unary.f32(i32 23, float %7265)  ; Log(value)
  %7267 = fmul fast float %7266, %7261
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 2
  %7270 = fmul fast float %7267, %7269
  %7271 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.i32 %7272, 1
  %7274 = add i32 %7273, -1
  %7275 = uitofp i32 %7273 to float
  %7276 = fmul fast float %7275, %7271
  %7277 = fptoui float %7276 to i32
  %7278 = call i32 @dx.op.binary.i32(i32 40, i32 %7277, i32 %7274)  ; UMin(a,b)
  %7279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.i32 %7279, 2
  %7281 = extractvalue %dx.types.CBufRet.i32 %7279, 3
  %7282 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7257, i32 %7280, i32 %7256)  ; UMad(a,b,c)
  %7283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7278, i32 %7281, i32 %7282)  ; UMad(a,b,c)
  %7284 = add nsw i32 %7248, -1
  %7285 = call i32 @dx.op.binary.i32(i32 37, i32 %7284, i32 0)  ; IMax(a,b)
  %7286 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7287 = fptoui float %7286 to i32
  %7288 = lshr i32 %7287, 5
  %7289 = call i32 @dx.op.binary.i32(i32 40, i32 %7288, i32 8191)  ; UMin(a,b)
  %7290 = shl i32 %7289, 2
  %7291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7290, i32 undef)  ; BufferLoad(srv,index,wot)
  %7292 = extractvalue %dx.types.ResRet.i32 %7291, 0
  %7293 = lshr i32 %7292, 16
  %7294 = and i32 %7292, 65535
  %7295 = lshr i32 %7292, 21
  %7296 = lshr i32 %7294, 5
  %7297 = call i32 @dx.op.binary.i32(i32 40, i32 %7296, i32 %7285)  ; UMin(a,b)
  %7298 = icmp ugt i32 %7295, %7297
  br i1 %7298, label %7913, label %7299

; <label>:7299                                    ; preds = %7250
  br label %7300

; <label>:7300                                    ; preds = %7903, %7299
  %7301 = phi i32 [ %7910, %7903 ], [ %7295, %7299 ]
  %7302 = phi float [ %7904, %7903 ], [ %7241, %7299 ]
  %7303 = phi float [ %7905, %7903 ], [ %7242, %7299 ]
  %7304 = phi float [ %7906, %7903 ], [ %7243, %7299 ]
  %7305 = phi float [ %7907, %7903 ], [ %7244, %7299 ]
  %7306 = phi float [ %7908, %7903 ], [ %7245, %7299 ]
  %7307 = phi float [ %7909, %7903 ], [ %7246, %7299 ]
  %7308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.i32 %7308, 0
  %7310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7283, i32 %7309, i32 %7301)  ; UMad(a,b,c)
  %7311 = shl i32 %7310, 2
  %7312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7311, i32 undef)  ; BufferLoad(srv,index,wot)
  %7313 = extractvalue %dx.types.ResRet.i32 %7312, 0
  %7314 = shl i32 %7301, 5
  %7315 = sub nsw i32 %7293, %7314
  %7316 = call i32 @dx.op.binary.i32(i32 37, i32 %7315, i32 0)  ; IMax(a,b)
  %7317 = call i32 @dx.op.binary.i32(i32 38, i32 %7316, i32 31)  ; IMin(a,b)
  %7318 = sub nsw i32 1, %7293
  %7319 = add nsw i32 %7318, %7294
  %7320 = call i32 @dx.op.binary.i32(i32 37, i32 %7319, i32 0)  ; IMax(a,b)
  %7321 = call i32 @dx.op.binary.i32(i32 38, i32 %7320, i32 32)  ; IMin(a,b)
  %7322 = and i32 %7321, 31
  %7323 = shl i32 -1, %7322
  %7324 = xor i32 %7323, -1
  %7325 = and i32 %7317, 31
  %7326 = shl i32 %7324, %7325
  %7327 = icmp eq i32 %7321, 32
  %7328 = select i1 %7327, i32 -1, i32 %7326
  %7329 = and i32 %7328, %7313
  %7330 = icmp eq i32 %7329, 0
  br i1 %7330, label %7903, label %7331

; <label>:7331                                    ; preds = %7300
  br label %7332

; <label>:7332                                    ; preds = %7466, %7331
  %7333 = phi i32 [ %7344, %7466 ], [ %7329, %7331 ]
  %7334 = phi float [ %7467, %7466 ], [ %7302, %7331 ]
  %7335 = phi float [ %7468, %7466 ], [ %7303, %7331 ]
  %7336 = phi float [ %7469, %7466 ], [ %7304, %7331 ]
  %7337 = phi float [ %7470, %7466 ], [ %7305, %7331 ]
  %7338 = phi float [ %7471, %7466 ], [ %7306, %7331 ]
  %7339 = phi float [ %7472, %7466 ], [ %7307, %7331 ]
  %7340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7333)  ; FirstbitLo(value)
  %7341 = add i32 %7340, %7314
  %7342 = and i32 %7340, 31
  %7343 = shl i32 1, %7342
  %7344 = xor i32 %7343, %7333
  %7345 = mul i32 %7341, 112
  %7346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7345, i32 undef)  ; BufferLoad(srv,index,wot)
  %7347 = extractvalue %dx.types.ResRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.ResRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.ResRet.f32 %7346, 2
  %7350 = or i32 %7345, 12
  %7351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7350, i32 undef)  ; BufferLoad(srv,index,wot)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = add i32 %7345, 16
  %7354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7353, i32 undef)  ; BufferLoad(srv,index,wot)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.ResRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.ResRet.f32 %7354, 2
  %7358 = add i32 %7345, 28
  %7359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7358, i32 undef)  ; BufferLoad(srv,index,wot)
  %7360 = extractvalue %dx.types.ResRet.i32 %7359, 0
  %7361 = add i32 %7345, 44
  %7362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = add i32 %7345, 48
  %7365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7364, i32 undef)  ; BufferLoad(srv,index,wot)
  %7366 = extractvalue %dx.types.ResRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.ResRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.ResRet.f32 %7365, 2
  %7369 = extractvalue %dx.types.ResRet.f32 %7365, 3
  %7370 = add i32 %7345, 64
  %7371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7370, i32 undef)  ; BufferLoad(srv,index,wot)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = extractvalue %dx.types.ResRet.f32 %7371, 3
  %7376 = add i32 %7345, 80
  %7377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7376, i32 undef)  ; BufferLoad(srv,index,wot)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7377, 2
  %7380 = add i32 %7345, 92
  %7381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7380, i32 undef)  ; BufferLoad(srv,index,wot)
  %7382 = extractvalue %dx.types.ResRet.i32 %7381, 0
  %7383 = call float @dx.op.dot3.f32(i32 55, float %7347, float %7348, float %7349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7384 = select i1 %230, float %7378, float %7347
  %7385 = select i1 %230, float %7383, float %7348
  %7386 = select i1 %230, float %7379, float %7349
  %7387 = and i32 %7382, 65535
  %7388 = uitofp i32 %7387 to float
  %7389 = lshr i32 %7382, 16
  %7390 = uitofp i32 %7389 to float
  %7391 = and i32 %7360, 65535
  %7392 = and i32 %7360, 50331648
  %7393 = icmp eq i32 %7392, 33554432
  %7394 = fsub fast float %7366, %168
  %7395 = fsub fast float %7367, %169
  %7396 = fsub fast float %7368, %170
  %7397 = call float @dx.op.dot3.f32(i32 55, float %7394, float %7395, float %7396, float %7394, float %7395, float %7396)  ; Dot3(ax,ay,az,bx,by,bz)
  %7398 = call float @dx.op.unary.f32(i32 24, float %7397)  ; Sqrt(value)
  %7399 = fdiv fast float 1.000000e+00, %7398
  %7400 = fmul fast float %7399, %7394
  %7401 = fmul fast float %7399, %7395
  %7402 = fmul fast float %7399, %7396
  %7403 = fadd fast float %7398, %7352
  %7404 = fdiv fast float 1.000000e+00, %7403
  %7405 = fmul float %7363, %7404
  %7406 = fmul float %7405, %7405
  %7407 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  br i1 %7393, label %7408, label %7429

; <label>:7408                                    ; preds = %7332
  %7409 = fmul fast float %7374, %7355
  %7410 = fmul fast float %7374, %7356
  %7411 = fmul fast float %7374, %7357
  %7412 = fadd fast float %7394, %7409
  %7413 = fadd fast float %7395, %7410
  %7414 = fadd fast float %7396, %7411
  %7415 = call float @dx.op.dot3.f32(i32 55, float %7412, float %7413, float %7414, float %7412, float %7413, float %7414)  ; Dot3(ax,ay,az,bx,by,bz)
  %7416 = call float @dx.op.unary.f32(i32 25, float %7415)  ; Rsqrt(value)
  %7417 = fmul fast float %7416, %7412
  %7418 = fmul fast float %7416, %7413
  %7419 = fmul fast float %7416, %7414
  %7420 = fsub fast float %168, %7366
  %7421 = fsub fast float %169, %7367
  %7422 = fsub fast float %170, %7368
  %7423 = fsub fast float -0.000000e+00, %7420
  %7424 = fsub fast float -0.000000e+00, %7421
  %7425 = fsub fast float -0.000000e+00, %7422
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7423, float %7424, float %7425, float %7355, float %7356, float %7357)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = fcmp fast ogt float %7426, 0.000000e+00
  %7428 = uitofp i1 %7427 to float
  br label %7429

; <label>:7429                                    ; preds = %7408, %7332
  %7430 = phi float [ %7428, %7408 ], [ 1.000000e+00, %7332 ]
  %7431 = phi float [ %7417, %7408 ], [ %7400, %7332 ]
  %7432 = phi float [ %7418, %7408 ], [ %7401, %7332 ]
  %7433 = phi float [ %7419, %7408 ], [ %7402, %7332 ]
  %7434 = call float @dx.op.dot3.f32(i32 55, float %7355, float %7356, float %7357, float %7431, float %7432, float %7433)  ; Dot3(ax,ay,az,bx,by,bz)
  %7435 = fmul fast float %7434, %7434
  %7436 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7437 = fsub fast float 1.000000e+00, %7436
  %7438 = fmul fast float %7437, 5.000000e-01
  %7439 = fcmp fast ogt float %7434, 0.000000e+00
  %7440 = fsub fast float 1.000000e+00, %7438
  %7441 = select i1 %7439, float %7438, float %7440
  %7442 = fmul fast float %7441, %7390
  %7443 = fadd fast float %7442, %7388
  %7444 = fmul fast float %7443, 0x3EF0001000000000
  %7445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7444, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = fmul fast float %7434, %7372
  %7448 = fadd fast float %7447, %7373
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = select i1 %7393, float 1.000000e+00, float %7449
  %7451 = select i1 %7393, float %7449, float 1.000000e+00
  %7452 = fmul fast float %7398, %7369
  %7453 = fsub fast float 1.000000e+00, %7452
  %7454 = fmul fast float %7453, %7375
  %7455 = call float @dx.op.unary.f32(i32 7, float %7454)  ; Saturate(value)
  %7456 = fmul fast float %7455, %7451
  %7457 = fmul fast float %7456, 2.000000e+00
  %7458 = fsub fast float 3.000000e+00, %7457
  %7459 = fmul fast float %7446, %7430
  %7460 = fmul fast float %7456, %7456
  %7461 = fmul fast float %7460, %7459
  %7462 = fmul fast float %7461, %7458
  %7463 = call float @dx.op.binary.f32(i32 36, float %7462, float %7462)  ; FMin(a,b)
  %7464 = call float @dx.op.binary.f32(i32 36, float %7462, float %7463)  ; FMin(a,b)
  %7465 = fcmp fast ogt float %7464, 0.000000e+00
  br i1 %7465, label %7474, label %7466, !dx.controlflow.hints !130

; <label>:7466                                    ; preds = %7859, %7620, %7429
  %7467 = phi float [ %7334, %7620 ], [ %7334, %7429 ], [ %7899, %7859 ]
  %7468 = phi float [ %7335, %7620 ], [ %7335, %7429 ], [ %7900, %7859 ]
  %7469 = phi float [ %7336, %7620 ], [ %7336, %7429 ], [ %7901, %7859 ]
  %7470 = phi float [ %7337, %7620 ], [ %7337, %7429 ], [ %7893, %7859 ]
  %7471 = phi float [ %7338, %7620 ], [ %7338, %7429 ], [ %7894, %7859 ]
  %7472 = phi float [ %7339, %7620 ], [ %7339, %7429 ], [ %7895, %7859 ]
  %7473 = icmp eq i32 %7333, %7343
  br i1 %7473, label %7902, label %7332

; <label>:7474                                    ; preds = %7429
  %7475 = icmp eq i32 %7391, 255
  br i1 %7475, label %7620, label %7476, !dx.controlflow.hints !131

; <label>:7476                                    ; preds = %7474
  %7477 = mul nuw nsw i32 %7391, 176
  %7478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7477, i32 undef)  ; BufferLoad(srv,index,wot)
  %7479 = extractvalue %dx.types.ResRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.ResRet.f32 %7478, 1
  %7481 = extractvalue %dx.types.ResRet.f32 %7478, 2
  %7482 = extractvalue %dx.types.ResRet.f32 %7478, 3
  %7483 = add nuw nsw i32 %7477, 16
  %7484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7483, i32 undef)  ; BufferLoad(srv,index,wot)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = extractvalue %dx.types.ResRet.f32 %7484, 1
  %7487 = add nuw nsw i32 %7477, 32
  %7488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7487, i32 undef)  ; BufferLoad(srv,index,wot)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = extractvalue %dx.types.ResRet.f32 %7488, 1
  %7491 = extractvalue %dx.types.ResRet.f32 %7488, 2
  %7492 = add nuw nsw i32 %7477, 48
  %7493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7492, i32 undef)  ; BufferLoad(srv,index,wot)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.ResRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7493, 2
  %7497 = extractvalue %dx.types.ResRet.f32 %7493, 3
  %7498 = add nuw nsw i32 %7477, 64
  %7499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = extractvalue %dx.types.ResRet.f32 %7499, 3
  %7504 = add nuw nsw i32 %7477, 80
  %7505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7504, i32 undef)  ; BufferLoad(srv,index,wot)
  %7506 = extractvalue %dx.types.ResRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.ResRet.f32 %7505, 1
  %7508 = extractvalue %dx.types.ResRet.f32 %7505, 2
  %7509 = extractvalue %dx.types.ResRet.f32 %7505, 3
  %7510 = add nuw nsw i32 %7477, 96
  %7511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7510, i32 undef)  ; BufferLoad(srv,index,wot)
  %7512 = extractvalue %dx.types.ResRet.f32 %7511, 0
  %7513 = extractvalue %dx.types.ResRet.f32 %7511, 1
  %7514 = extractvalue %dx.types.ResRet.f32 %7511, 2
  %7515 = extractvalue %dx.types.ResRet.f32 %7511, 3
  %7516 = bitcast float %7486 to i32
  %7517 = fmul fast float %7491, %112
  %7518 = fmul fast float %7491, %113
  %7519 = fmul fast float %7491, %114
  %7520 = fadd fast float %7517, %168
  %7521 = fadd fast float %7518, %169
  %7522 = fadd fast float %7519, %170
  %7523 = fmul fast float %7520, %7494
  %7524 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7500, float %7523)  ; FMad(a,b,c)
  %7525 = call float @dx.op.tertiary.f32(i32 46, float %7522, float %7506, float %7524)  ; FMad(a,b,c)
  %7526 = fadd fast float %7525, %7512
  %7527 = fmul fast float %7520, %7495
  %7528 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7501, float %7527)  ; FMad(a,b,c)
  %7529 = call float @dx.op.tertiary.f32(i32 46, float %7522, float %7507, float %7528)  ; FMad(a,b,c)
  %7530 = fadd fast float %7529, %7513
  %7531 = fmul fast float %7520, %7496
  %7532 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7502, float %7531)  ; FMad(a,b,c)
  %7533 = call float @dx.op.tertiary.f32(i32 46, float %7522, float %7508, float %7532)  ; FMad(a,b,c)
  %7534 = fadd fast float %7533, %7514
  %7535 = fmul fast float %7520, %7497
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7503, float %7535)  ; FMad(a,b,c)
  %7537 = call float @dx.op.tertiary.f32(i32 46, float %7522, float %7509, float %7536)  ; FMad(a,b,c)
  %7538 = fadd fast float %7537, %7515
  %7539 = fdiv fast float %7526, %7538
  %7540 = fdiv fast float %7530, %7538
  %7541 = fdiv fast float %7534, %7538
  %7542 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7541)  ; FMax(a,b)
  %7543 = fmul fast float %241, 0x401921FB60000000
  %7544 = call float @dx.op.unary.f32(i32 13, float %7543)  ; Sin(value)
  %7545 = call float @dx.op.unary.f32(i32 12, float %7543)  ; Cos(value)
  %7546 = fmul fast float %7545, %7490
  %7547 = call float @dx.op.tertiary.f32(i32 46, float %7544, float %7490, float 0.000000e+00)  ; FMad(a,b,c)
  %7548 = fmul fast float %7490, %7544
  %7549 = fsub fast float -0.000000e+00, %7548
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %7545, float %7490, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7551

; <label>:7551                                    ; preds = %7551, %7476
  %7552 = phi float [ 0.000000e+00, %7476 ], [ %7584, %7551 ]
  %7553 = phi float [ 0.000000e+00, %7476 ], [ %7586, %7551 ]
  %7554 = phi i32 [ 0, %7476 ], [ %7587, %7551 ]
  %7555 = mul i32 %7554, 2
  %7556 = add i32 0, %7555
  %7557 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7556
  %7558 = load float, float* %7557, align 4
  %7559 = mul i32 %7554, 2
  %7560 = add i32 1, %7559
  %7561 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7560
  %7562 = load float, float* %7561, align 4
  %7563 = fmul fast float %7546, %7558
  %7564 = call float @dx.op.tertiary.f32(i32 46, float %7562, float %7549, float %7563)  ; FMad(a,b,c)
  %7565 = fmul fast float %7558, %7547
  %7566 = call float @dx.op.tertiary.f32(i32 46, float %7562, float %7550, float %7565)  ; FMad(a,b,c)
  %7567 = fadd fast float %7564, %7539
  %7568 = fadd fast float %7566, %7540
  %7569 = fmul fast float %7567, %7485
  %7570 = fmul fast float %7568, %7485
  %7571 = call float @dx.op.binary.f32(i32 35, float %7569, float %7481)  ; FMax(a,b)
  %7572 = call float @dx.op.binary.f32(i32 35, float %7570, float %7481)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 36, float %7571, float %7482)  ; FMin(a,b)
  %7574 = call float @dx.op.binary.f32(i32 36, float %7572, float %7482)  ; FMin(a,b)
  %7575 = fadd fast float %7573, %7479
  %7576 = fadd fast float %7574, %7480
  %7577 = uitofp i32 %7516 to float
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %56, float %7575, float %7576, float %7577, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = fsub fast float %7579, %7542
  %7581 = fsub fast float %7580, %7489
  %7582 = fcmp fast ogt float %7581, 0.000000e+00
  %7583 = select i1 %7582, float 1.000000e+00, float 0.000000e+00
  %7584 = fadd fast float %7583, %7552
  %7585 = select i1 %7582, float %7581, float 0.000000e+00
  %7586 = fadd fast float %7585, %7553
  %7587 = add nuw nsw i32 %7554, 1
  %7588 = icmp eq i32 %7587, 8
  br i1 %7588, label %7589, label %7551

; <label>:7589                                    ; preds = %7551
  %7590 = fdiv fast float 1.000000e+00, %7584
  %7591 = fmul fast float %7590, %7586
  %7592 = fdiv fast float 1.000000e+00, %7542
  %7593 = fmul fast float %7591, %7592
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = call float @dx.op.binary.f32(i32 35, float %7594, float 0.000000e+00)  ; FMax(a,b)
  %7596 = fmul fast float %7584, 1.250000e-01
  %7597 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7598 = fmul fast float %7597, 2.000000e+00
  %7599 = fadd fast float %7598, -1.000000e+00
  %7600 = fcmp fast ogt float %7599, 0.000000e+00
  %7601 = fcmp fast olt float %7599, 0.000000e+00
  %7602 = zext i1 %7600 to i32
  %7603 = zext i1 %7601 to i32
  %7604 = sub nsw i32 %7602, %7603
  %7605 = sitofp i32 %7604 to float
  %7606 = fmul fast float %7605, %7599
  %7607 = fsub fast float 1.000000e+00, %7606
  %7608 = fmul fast float %7607, %7607
  %7609 = fmul fast float %7608, %7607
  %7610 = fsub fast float %7607, %7609
  %7611 = fmul fast float %7610, %7595
  %7612 = fsub fast float 1.000000e+00, %7609
  %7613 = fsub fast float %7612, %7611
  %7614 = fmul fast float %7605, 5.000000e-01
  %7615 = fmul fast float %7614, %7613
  %7616 = fsub fast float -5.000000e-01, %7615
  %7617 = fmul fast float %7616, %7450
  %7618 = fadd fast float %7617, 1.000000e+00
  %7619 = fmul fast float %7618, %7462
  br label %7620

; <label>:7620                                    ; preds = %7589, %7474
  %7621 = phi float [ %7619, %7589 ], [ %7462, %7474 ]
  %7622 = call float @dx.op.binary.f32(i32 36, float %7621, float %7621)  ; FMin(a,b)
  %7623 = call float @dx.op.binary.f32(i32 36, float %7621, float %7622)  ; FMin(a,b)
  %7624 = fcmp fast ogt float %7623, 0.000000e+00
  br i1 %7624, label %7625, label %7466, !dx.controlflow.hints !132

; <label>:7625                                    ; preds = %7620
  %7626 = fmul fast float %7621, %7384
  %7627 = fmul fast float %7621, %7385
  %7628 = fmul fast float %7621, %7386
  %7629 = fsub fast float %7368, %4661
  %7630 = fcmp fast ogt float %7629, 0.000000e+00
  %7631 = fsub fast float %170, %4661
  %7632 = fcmp fast ogt float %7631, 0.000000e+00
  %7633 = xor i1 %7632, %7630
  %7634 = fsub fast float %4661, %7368
  %7635 = fmul fast float %7634, 2.000000e+00
  %7636 = fadd fast float %7635, %7368
  %7637 = select i1 %7633, float %7368, float %7636
  %7638 = fsub fast float %7637, %170
  %7639 = call float @dx.op.dot3.f32(i32 55, float %7394, float %7395, float %7638, float %7394, float %7395, float %7638)  ; Dot3(ax,ay,az,bx,by,bz)
  %7640 = call float @dx.op.unary.f32(i32 25, float %7639)  ; Rsqrt(value)
  %7641 = fmul fast float %7640, %7394
  %7642 = fmul fast float %7640, %7395
  %7643 = fmul fast float %7640, %7638
  %7644 = fsub fast float %4661, %170
  %7645 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7641, float %7642, float %7643)  ; Dot3(ax,ay,az,bx,by,bz)
  %7647 = fdiv fast float 1.000000e+00, %7646
  %7648 = fmul fast float %7647, %7645
  %7649 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7631, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = fcmp fast ogt float %7649, 0.000000e+00
  %7651 = fcmp fast olt float %7649, 0.000000e+00
  %7652 = zext i1 %7650 to i32
  %7653 = zext i1 %7651 to i32
  %7654 = sub nsw i32 %7652, %7653
  %7655 = sitofp i32 %7654 to float
  %7656 = fsub fast float %7637, %4661
  %7657 = call float @dx.op.dot3.f32(i32 55, float %7394, float %7395, float %7656, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  %7659 = fcmp fast olt float %7657, 0.000000e+00
  %7660 = zext i1 %7658 to i32
  %7661 = zext i1 %7659 to i32
  %7662 = sub nsw i32 %7660, %7661
  %7663 = sitofp i32 %7662 to float
  %7664 = fcmp fast une float %7655, %7663
  br i1 %7664, label %7665, label %7675

; <label>:7665                                    ; preds = %7625
  %7666 = fmul fast float %7648, %7643
  %7667 = fmul fast float %7648, %7642
  %7668 = fmul fast float %7648, %7641
  %7669 = fmul fast float %7668, %7668
  %7670 = fmul fast float %7667, %7667
  %7671 = fadd fast float %7669, %7670
  %7672 = fmul fast float %7666, %7666
  %7673 = fadd fast float %7671, %7672
  %7674 = call float @dx.op.unary.f32(i32 24, float %7673)  ; Sqrt(value)
  br label %7687

; <label>:7675                                    ; preds = %7625
  %7676 = icmp slt i32 %7654, 0
  br i1 %7676, label %7677, label %7687

; <label>:7677                                    ; preds = %7675
  %7678 = fsub fast float %168, %7366
  %7679 = fsub fast float %169, %7367
  %7680 = fsub fast float %170, %7637
  %7681 = fmul fast float %7678, %7678
  %7682 = fmul fast float %7679, %7679
  %7683 = fadd fast float %7681, %7682
  %7684 = fmul fast float %7680, %7680
  %7685 = fadd fast float %7683, %7684
  %7686 = call float @dx.op.unary.f32(i32 24, float %7685)  ; Sqrt(value)
  br label %7687

; <label>:7687                                    ; preds = %7677, %7675, %7665
  %7688 = phi float [ %7674, %7665 ], [ %7686, %7677 ], [ 0.000000e+00, %7675 ]
  %7689 = and i1 %7632, %7630
  %7690 = fsub fast float -0.000000e+00, %7688
  %7691 = select i1 %7689, float -0.000000e+00, float %7690
  %7692 = fmul fast float %4662, 0x3FF7154760000000
  %7693 = fmul fast float %7692, %7691
  %7694 = fmul fast float %4663, 0x3FF7154760000000
  %7695 = fmul fast float %7694, %7691
  %7696 = fmul fast float %4664, 0x3FF7154760000000
  %7697 = fmul fast float %7696, %7691
  %7698 = call float @dx.op.unary.f32(i32 21, float %7693)  ; Exp(value)
  %7699 = call float @dx.op.unary.f32(i32 21, float %7695)  ; Exp(value)
  %7700 = call float @dx.op.unary.f32(i32 21, float %7697)  ; Exp(value)
  %7701 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7702 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7703 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7704 = fmul fast float %7626, %7701
  %7705 = fmul fast float %7627, %7702
  %7706 = fmul fast float %7628, %7703
  %7707 = fsub fast float %7400, %4861
  %7708 = fsub fast float %7401, %4860
  %7709 = fsub fast float %7402, %4859
  %7710 = call float @dx.op.dot3.f32(i32 55, float %7707, float %7708, float %7709, float %7707, float %7708, float %7709)  ; Dot3(ax,ay,az,bx,by,bz)
  %7711 = call float @dx.op.unary.f32(i32 25, float %7710)  ; Rsqrt(value)
  %7712 = fmul fast float %7711, %7707
  %7713 = fmul fast float %7711, %7708
  %7714 = fmul fast float %7711, %7709
  %7715 = call float @dx.op.dot3.f32(i32 55, float %7400, float %7401, float %7402, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7716 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4857, float %4856, float %7712, float %7713, float %7714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7718 = fmul fast float %7717, %7407
  %7719 = bitcast i32 %4900 to float
  %7720 = fmul fast float %7717, %7717
  %7721 = fmul fast float %7720, %7719
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fmul fast float %7718, %7722
  %7724 = bitcast float %7397 to i32
  %7725 = ashr i32 %7724, 1
  %7726 = sub nsw i32 1597463007, %7725
  %7727 = bitcast i32 %7726 to float
  %7728 = fmul fast float %7727, %7394
  %7729 = fmul fast float %7727, %7395
  %7730 = fmul fast float %7727, %7396
  %7731 = fsub fast float %7728, %4861
  %7732 = fsub fast float %7729, %4860
  %7733 = fsub fast float %7730, %4859
  %7734 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %7731, float %7732, float %7733)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call float @dx.op.unary.f32(i32 25, float %7734)  ; Rsqrt(value)
  %7736 = fmul fast float %7731, %7735
  %7737 = fmul fast float %7732, %7735
  %7738 = fmul fast float %7733, %7735
  %7739 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %7736, float %7737, float %7738)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = fmul fast float %7739, %7739
  %7741 = call float @dx.op.unary.f32(i32 6, float %7715)  ; FAbs(value)
  %7742 = fsub fast float 1.000000e+00, %4894
  %7743 = fmul fast float %4876, %4876
  %7744 = fmul fast float %7743, %7742
  %7745 = fadd fast float %7744, %4894
  %7746 = bitcast float %7745 to i32
  %7747 = ashr i32 %7746, 1
  %7748 = add nsw i32 %7747, 532487669
  %7749 = bitcast i32 %7748 to float
  %7750 = fadd fast float %7749, %4876
  %7751 = fmul fast float %4894, %7740
  %7752 = fsub fast float 1.000000e+00, %7740
  %7753 = fadd fast float %7752, %7751
  %7754 = fmul fast float %7741, %7741
  %7755 = fmul fast float %7754, %7742
  %7756 = fadd fast float %7755, %4894
  %7757 = bitcast float %7756 to i32
  %7758 = ashr i32 %7757, 1
  %7759 = add nsw i32 %7758, 532487669
  %7760 = bitcast i32 %7759 to float
  %7761 = fadd fast float %7760, %7741
  %7762 = fmul fast float %7753, %7753
  %7763 = fmul fast float %7762, %7750
  %7764 = fmul fast float %7763, %7761
  %7765 = fdiv fast float 1.000000e+00, %7764
  %7766 = bitcast float %4894 to i32
  %7767 = sitofp i32 %7766 to float
  %7768 = fmul fast float %7767, 0x3FE7F73180000000
  %7769 = fadd fast float %7768, 0x41AFE27C40000000
  %7770 = fptosi float %7769 to i32
  %7771 = bitcast i32 %7770 to float
  %7772 = fmul fast float %7363, 0x3FD80E9D60000000
  %7773 = fmul fast float %7772, %7727
  %7774 = fadd fast float %7771, %7773
  %7775 = bitcast float %7774 to i32
  %7776 = sub nsw i32 2129859010, %7775
  %7777 = bitcast i32 %7776 to float
  %7778 = fmul fast float %4894, %7765
  %7779 = fmul fast float %7778, %7771
  %7780 = fmul fast float %7779, %7777
  %7781 = call float @dx.op.unary.f32(i32 6, float %7716)  ; FAbs(value)
  %7782 = fsub fast float 1.000000e+00, %7781
  %7783 = bitcast float %7782 to i32
  %7784 = sitofp i32 %7783 to float
  %7785 = fmul fast float %7784, 5.000000e+00
  %7786 = fadd fast float %7785, 0xC1EFBF8940000000
  %7787 = fptosi float %7786 to i32
  %7788 = bitcast i32 %7787 to float
  %7789 = fsub fast float 1.000000e+00, %4862
  %7790 = fsub fast float 1.000000e+00, %4863
  %7791 = fsub fast float 1.000000e+00, %4874
  %7792 = fmul fast float %7788, %7789
  %7793 = fmul fast float %7788, %7790
  %7794 = fmul fast float %7788, %7791
  %7795 = fadd fast float %7792, %4862
  %7796 = fadd fast float %7793, %4863
  %7797 = fadd fast float %7794, %4874
  br i1 %5012, label %7798, label %7821

; <label>:7798                                    ; preds = %7687
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %4260, float %7781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = fadd fast float %7800, -5.000000e-01
  %7804 = fadd fast float %7801, -5.000000e-01
  %7805 = fadd fast float %7802, -5.000000e-01
  %7806 = fmul fast float %4862, 4.000000e+00
  %7807 = fmul fast float %7806, %7789
  %7808 = fmul fast float %7807, %7803
  %7809 = fmul fast float %4863, 4.000000e+00
  %7810 = fmul fast float %7809, %7790
  %7811 = fmul fast float %7810, %7804
  %7812 = fmul fast float %4874, 4.000000e+00
  %7813 = fmul fast float %7812, %7791
  %7814 = fmul fast float %7813, %7805
  %7815 = fadd fast float %7808, %7795
  %7816 = fadd fast float %7811, %7796
  %7817 = fadd fast float %7814, %7797
  %7818 = call float @dx.op.unary.f32(i32 7, float %7815)  ; Saturate(value)
  %7819 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  br label %7821

; <label>:7821                                    ; preds = %7798, %7687
  %7822 = phi float [ %7818, %7798 ], [ %7795, %7687 ]
  %7823 = phi float [ %7819, %7798 ], [ %7796, %7687 ]
  %7824 = phi float [ %7820, %7798 ], [ %7797, %7687 ]
  %7825 = fmul fast float %7715, 9.843750e-01
  %7826 = fadd fast float %7825, 7.812500e-03
  %7827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %7826, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7828 = extractvalue %dx.types.ResRet.f32 %7827, 2
  %7829 = extractvalue %dx.types.ResRet.f32 %7827, 3
  %7830 = fmul fast float %7828, %4862
  %7831 = fmul fast float %7828, %4863
  %7832 = fmul fast float %7828, %4874
  %7833 = fadd fast float %7830, %7829
  %7834 = fadd fast float %7831, %7829
  %7835 = fadd fast float %7832, %7829
  br i1 %5012, label %7836, label %7859

; <label>:7836                                    ; preds = %7821
  %7837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %4260, float %7715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7838 = extractvalue %dx.types.ResRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.ResRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.ResRet.f32 %7837, 2
  %7841 = fadd fast float %7838, -5.000000e-01
  %7842 = fadd fast float %7839, -5.000000e-01
  %7843 = fadd fast float %7840, -5.000000e-01
  %7844 = fmul fast float %4862, 4.000000e+00
  %7845 = fmul fast float %7844, %7789
  %7846 = fmul fast float %7845, %7841
  %7847 = fmul fast float %4863, 4.000000e+00
  %7848 = fmul fast float %7847, %7790
  %7849 = fmul fast float %7848, %7842
  %7850 = fmul fast float %4874, 4.000000e+00
  %7851 = fmul fast float %7850, %7791
  %7852 = fmul fast float %7851, %7843
  %7853 = fadd fast float %7846, %7833
  %7854 = fadd fast float %7849, %7834
  %7855 = fadd fast float %7852, %7835
  %7856 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7857 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  %7858 = call float @dx.op.unary.f32(i32 7, float %7855)  ; Saturate(value)
  br label %7859

; <label>:7859                                    ; preds = %7836, %7821
  %7860 = phi float [ %7856, %7836 ], [ %7833, %7821 ]
  %7861 = phi float [ %7857, %7836 ], [ %7834, %7821 ]
  %7862 = phi float [ %7858, %7836 ], [ %7835, %7821 ]
  %7863 = call float @dx.op.binary.f32(i32 35, float %7861, float %7862)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 35, float %7860, float %7863)  ; FMax(a,b)
  %7865 = fsub fast float 1.000000e+00, %7864
  %7866 = fmul fast float %7822, %7780
  %7867 = fmul fast float %7823, %7780
  %7868 = fmul fast float %7824, %7780
  %7869 = fsub fast float 1.000000e+00, %7716
  %7870 = bitcast float %7869 to i32
  %7871 = sitofp i32 %7870 to float
  %7872 = fmul fast float %7871, 5.000000e+00
  %7873 = fadd fast float %7872, 0xC1EFBF8940000000
  %7874 = fptosi float %7873 to i32
  %7875 = bitcast i32 %7874 to float
  %7876 = fmul fast float %7875, %4261
  %7877 = fmul fast float %7865, %7876
  %7878 = fmul fast float %7877, %5660
  %7879 = fmul fast float %7877, %5661
  %7880 = fmul fast float %7877, %5662
  %7881 = fadd fast float %7878, %7866
  %7882 = fadd fast float %7879, %7867
  %7883 = fadd fast float %7880, %7868
  %7884 = fmul fast float %7704, %4257
  %7885 = fmul fast float %7884, %7723
  %7886 = fmul fast float %7885, %7865
  %7887 = fmul fast float %7705, %4257
  %7888 = fmul fast float %7887, %7723
  %7889 = fmul fast float %7888, %7865
  %7890 = fmul fast float %7706, %4257
  %7891 = fmul fast float %7890, %7723
  %7892 = fmul fast float %7891, %7865
  %7893 = fadd fast float %7886, %7337
  %7894 = fadd fast float %7889, %7338
  %7895 = fadd fast float %7892, %7339
  %7896 = fmul fast float %7885, %7881
  %7897 = fmul fast float %7888, %7882
  %7898 = fmul fast float %7891, %7883
  %7899 = fadd fast float %7896, %7334
  %7900 = fadd fast float %7897, %7335
  %7901 = fadd fast float %7898, %7336
  br label %7466

; <label>:7902                                    ; preds = %7466
  br label %7903

; <label>:7903                                    ; preds = %7902, %7300
  %7904 = phi float [ %7302, %7300 ], [ %7467, %7902 ]
  %7905 = phi float [ %7303, %7300 ], [ %7468, %7902 ]
  %7906 = phi float [ %7304, %7300 ], [ %7469, %7902 ]
  %7907 = phi float [ %7305, %7300 ], [ %7470, %7902 ]
  %7908 = phi float [ %7306, %7300 ], [ %7471, %7902 ]
  %7909 = phi float [ %7307, %7300 ], [ %7472, %7902 ]
  %7910 = add i32 %7301, 1
  %7911 = icmp ugt i32 %7910, %7297
  br i1 %7911, label %7912, label %7300

; <label>:7912                                    ; preds = %7903
  br label %7913

; <label>:7913                                    ; preds = %7912, %7250, %7240
  %7914 = phi float [ %7241, %7240 ], [ %7241, %7250 ], [ %7904, %7912 ]
  %7915 = phi float [ %7242, %7240 ], [ %7242, %7250 ], [ %7905, %7912 ]
  %7916 = phi float [ %7243, %7240 ], [ %7243, %7250 ], [ %7906, %7912 ]
  %7917 = phi float [ %7244, %7240 ], [ %7244, %7250 ], [ %7907, %7912 ]
  %7918 = phi float [ %7245, %7240 ], [ %7245, %7250 ], [ %7908, %7912 ]
  %7919 = phi float [ %7246, %7240 ], [ %7246, %7250 ], [ %7909, %7912 ]
  %7920 = fmul fast float %4257, %4257
  %7921 = fsub fast float 1.000000e+00, %7920
  %7922 = call float @dx.op.dot3.f32(i32 55, float %7921, float %7921, float %7921, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = fsub fast float 1.000000e+00, %7922
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7926 = fmul fast float %7925, %5666
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 3
  %7929 = fsub fast float 1.000000e+00, %4264
  %7930 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7931 = fadd fast float %7919, %4263
  %7932 = fmul fast float %7931, %4264
  %7933 = fmul fast float %7930, %7928
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 3
  %7936 = fmul fast float %7917, %4868
  %7937 = fmul fast float %7918, %4869
  %7938 = fmul fast float %7919, %4870
  %7939 = fcmp fast ogt float %93, %190
  %7940 = and i1 %7939, %4667
  %7941 = or i1 %4673, %7940
  %7942 = icmp eq i32 %4666, 2
  %7943 = fcmp fast ole float %93, %190
  %7944 = and i1 %7943, %7942
  %7945 = or i1 %7944, %7941
  br i1 %7940, label %7946, label %8203

; <label>:7946                                    ; preds = %7913
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7950 = fmul fast float %7948, %105
  %7951 = fmul fast float %7949, %106
  %7952 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7953 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7954 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %7952, float %7953, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.ResRet.f32 %7954, 3
  %7959 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %7952, float %7953, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.ResRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.ResRet.f32 %7959, 3
  %7964 = call float @dx.op.binary.f32(i32 35, float %7956, float %7957)  ; FMax(a,b)
  %7965 = call float @dx.op.binary.f32(i32 35, float %7955, float %7964)  ; FMax(a,b)
  %7966 = call float @dx.op.binary.f32(i32 35, float %7965, float %7958)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 36, float %7961, float %7962)  ; FMin(a,b)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7960, float %7967)  ; FMin(a,b)
  %7969 = call float @dx.op.binary.f32(i32 36, float %7968, float %7963)  ; FMin(a,b)
  %7970 = fmul fast float %7966, 2.550000e+02
  %7971 = fadd fast float %7970, 0x3F70101020000000
  %7972 = fptoui float %7971 to i32
  %7973 = fmul fast float %7969, 2.550000e+02
  %7974 = fadd fast float %7973, 0x3F70101020000000
  %7975 = fptoui float %7974 to i32
  %7976 = icmp ult i32 %7972, %7975
  br i1 %7976, label %7977, label %8145

; <label>:7977                                    ; preds = %7946
  %7978 = fcmp fast ogt float %92, 9.843750e-01
  %7979 = fadd fast float %93, -4.000000e+00
  %7980 = select i1 %7978, float -4.000000e+00, float %7979
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float 0.000000e+00)  ; FMax(a,b)
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 0
  %7984 = fadd fast float %7983, %7981
  %7985 = extractvalue %dx.types.CBufRet.f32 %7982, 2
  %7986 = fmul fast float %7984, %7985
  %7987 = call float @dx.op.unary.f32(i32 23, float %7986)  ; Log(value)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7982, 3
  %7989 = fmul fast float %7988, %7987
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 2
  %7992 = fmul fast float %7989, %7991
  %7993 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7994 = uitofp i32 %7972 to float
  %7995 = uitofp i32 %7975 to float
  %7996 = fadd fast float %7994, 5.000000e-01
  %7997 = fadd fast float %7995, 5.000000e-01
  %7998 = fmul fast float %7991, %7996
  %7999 = fmul fast float %7991, %7997
  %8000 = fadd fast float %7998, 0x3F0FFB4800000000
  %8001 = fadd fast float %7999, 0xBF0FFB4800000000
  %8002 = call float @dx.op.binary.f32(i32 35, float %7993, float %8000)  ; FMax(a,b)
  %8003 = call float @dx.op.binary.f32(i32 36, float %8002, float %8001)  ; FMin(a,b)
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8007 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8008 = fmul fast float %8005, %8003
  %8009 = fadd fast float %8007, %8008
  %8010 = fadd fast float %8007, %8006
  %8011 = fsub fast float %8005, %8006
  %8012 = fadd fast float %8011, %8007
  %8013 = call float @dx.op.binary.f32(i32 35, float %8009, float %8010)  ; FMax(a,b)
  %8014 = call float @dx.op.binary.f32(i32 36, float %8013, float %8012)  ; FMin(a,b)
  %8015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %7952, float %7953, float %8014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  %8019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.i32 %8019, 0
  %8021 = extractvalue %dx.types.CBufRet.i32 %8019, 1
  %8022 = uitofp i32 %8020 to float
  %8023 = uitofp i32 %8021 to float
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.CBufRet.f32 %8024, 1
  %8027 = fmul fast float %8022, %7952
  %8028 = fmul fast float %8023, %7953
  %8029 = fadd fast float %8027, -5.000000e-01
  %8030 = fadd fast float %8028, -5.000000e-01
  %8031 = call float @dx.op.unary.f32(i32 22, float %8029)  ; Frc(value)
  %8032 = call float @dx.op.unary.f32(i32 22, float %8030)  ; Frc(value)
  %8033 = fmul fast float %8031, %8031
  %8034 = fmul fast float %8033, %8031
  %8035 = fsub fast float 3.000000e+00, %8031
  %8036 = fmul fast float %8033, %8035
  %8037 = fmul fast float %8031, 3.000000e+00
  %8038 = fmul fast float %8034, 3.000000e+00
  %8039 = fmul fast float %8033, 6.000000e+00
  %8040 = fsub fast float %8038, %8039
  %8041 = fadd fast float %8040, 4.000000e+00
  %8042 = fmul fast float %8041, 0x3FC5555560000000
  %8043 = fmul fast float %8034, -3.000000e+00
  %8044 = fadd fast float %8033, %8031
  %8045 = fmul fast float %8044, 3.000000e+00
  %8046 = fadd fast float %8043, 1.000000e+00
  %8047 = fadd fast float %8046, %8045
  %8048 = fmul fast float %8034, 0x3FC5555560000000
  %8049 = fmul fast float %8032, %8032
  %8050 = fmul fast float %8049, %8032
  %8051 = fsub fast float 3.000000e+00, %8032
  %8052 = fmul fast float %8049, %8051
  %8053 = fmul fast float %8032, 3.000000e+00
  %8054 = fmul fast float %8050, 3.000000e+00
  %8055 = fmul fast float %8049, 6.000000e+00
  %8056 = fsub fast float %8054, %8055
  %8057 = fadd fast float %8056, 4.000000e+00
  %8058 = fmul fast float %8057, 0x3FC5555560000000
  %8059 = fmul fast float %8050, -3.000000e+00
  %8060 = fadd fast float %8049, %8032
  %8061 = fmul fast float %8060, 3.000000e+00
  %8062 = fadd fast float %8059, 1.000000e+00
  %8063 = fadd fast float %8062, %8061
  %8064 = fmul fast float %8050, 0x3FC5555560000000
  %8065 = fadd fast float %8031, 1.000000e+00
  %8066 = fsub fast float 1.000000e+00, %8037
  %8067 = fadd fast float %8066, %8036
  %8068 = fadd fast float %8067, %8041
  %8069 = fmul fast float %8068, 0x3FC5555560000000
  %8070 = fdiv fast float %8042, %8069
  %8071 = fsub fast float %8065, %8070
  %8072 = fsub fast float 1.000000e+00, %8031
  %8073 = fadd fast float %8047, %8034
  %8074 = fmul fast float %8073, 0x3FC5555560000000
  %8075 = fdiv fast float %8048, %8074
  %8076 = fadd fast float %8072, %8075
  %8077 = fadd fast float %8032, 1.000000e+00
  %8078 = fsub fast float 1.000000e+00, %8053
  %8079 = fadd fast float %8078, %8052
  %8080 = fadd fast float %8079, %8057
  %8081 = fmul fast float %8080, 0x3FC5555560000000
  %8082 = fdiv fast float %8058, %8081
  %8083 = fsub fast float %8077, %8082
  %8084 = fsub fast float 1.000000e+00, %8032
  %8085 = fadd fast float %8063, %8050
  %8086 = fmul fast float %8085, 0x3FC5555560000000
  %8087 = fdiv fast float %8064, %8086
  %8088 = fadd fast float %8087, %8084
  %8089 = fmul fast float %8071, %8025
  %8090 = fsub fast float %7952, %8089
  %8091 = fmul fast float %8076, %8025
  %8092 = fadd fast float %8091, %7952
  %8093 = fmul fast float %8088, %8026
  %8094 = fadd fast float %8093, %7953
  %8095 = fmul fast float %8083, %8026
  %8096 = fsub fast float %7953, %8095
  %8097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8090, float %8096, float %8014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8098 = extractvalue %dx.types.ResRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.ResRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.ResRet.f32 %8097, 2
  %8101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8092, float %8096, float %8014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8090, float %8094, float %8014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8092, float %8094, float %8014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8110 = extractvalue %dx.types.ResRet.f32 %8109, 0
  %8111 = extractvalue %dx.types.ResRet.f32 %8109, 1
  %8112 = extractvalue %dx.types.ResRet.f32 %8109, 2
  %8113 = fsub fast float %8106, %8098
  %8114 = fsub fast float %8107, %8099
  %8115 = fsub fast float %8108, %8100
  %8116 = fmul fast float %8113, %8086
  %8117 = fmul fast float %8114, %8086
  %8118 = fmul fast float %8115, %8086
  %8119 = fadd fast float %8116, %8098
  %8120 = fadd fast float %8117, %8099
  %8121 = fadd fast float %8118, %8100
  %8122 = fsub fast float %8110, %8102
  %8123 = fsub fast float %8111, %8103
  %8124 = fsub fast float %8112, %8104
  %8125 = fmul fast float %8122, %8086
  %8126 = fmul fast float %8123, %8086
  %8127 = fmul fast float %8124, %8086
  %8128 = fsub fast float %8102, %8119
  %8129 = fadd fast float %8128, %8125
  %8130 = fsub fast float %8103, %8120
  %8131 = fadd fast float %8130, %8126
  %8132 = fsub fast float %8104, %8121
  %8133 = fadd fast float %8132, %8127
  %8134 = fmul fast float %8129, %8074
  %8135 = fmul fast float %8131, %8074
  %8136 = fmul fast float %8133, %8074
  %8137 = fadd fast float %8134, %8119
  %8138 = fadd fast float %8135, %8120
  %8139 = fadd fast float %8136, %8121
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %8142 = fmul fast float %8137, %8141
  %8143 = fmul fast float %8138, %8141
  %8144 = fmul fast float %8139, %8141
  br label %8145

; <label>:8145                                    ; preds = %7977, %7946
  %8146 = phi float [ %8016, %7977 ], [ 1.000000e+00, %7946 ]
  %8147 = phi float [ %8017, %7977 ], [ 1.000000e+00, %7946 ]
  %8148 = phi float [ %8018, %7977 ], [ 1.000000e+00, %7946 ]
  %8149 = phi float [ %8142, %7977 ], [ 0.000000e+00, %7946 ]
  %8150 = phi float [ %8143, %7977 ], [ 0.000000e+00, %7946 ]
  %8151 = phi float [ %8144, %7977 ], [ 0.000000e+00, %7946 ]
  %8152 = fmul fast float %8149, %7923
  %8153 = fmul fast float %8150, %7923
  %8154 = fmul fast float %8151, %7923
  %8155 = call float @dx.op.dot3.f32(i32 55, float %8146, float %8147, float %8148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8156 = call float @dx.op.dot3.f32(i32 55, float %8152, float %8153, float %8154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8157 = select i1 %230, float %8155, float %8146
  %8158 = select i1 %230, float %8155, float %8147
  %8159 = select i1 %230, float 1.000000e+00, float %8148
  %8160 = select i1 %230, float %8156, float %8152
  %8161 = select i1 %230, float 0.000000e+00, float %8153
  %8162 = select i1 %230, float 0.000000e+00, float %8154
  %8163 = fmul fast float %8157, %7936
  %8164 = fmul fast float %8158, %7937
  %8165 = fmul fast float %8159, %7938
  %8166 = fadd fast float %8163, %8160
  %8167 = fadd fast float %8164, %8161
  %8168 = fadd fast float %8162, %8165
  %8169 = fmul fast float %8157, %7914
  %8170 = fmul fast float %8158, %7915
  %8171 = fmul fast float %8159, %7916
  %8172 = fmul fast float %138, %7948
  %8173 = fmul fast float %140, %7949
  %8174 = fsub fast float 1.000000e+00, %8172
  %8175 = fsub fast float 1.000000e+00, %8173
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %8180 = fmul fast float %8174, %8177
  %8181 = fmul fast float %8174, %8178
  %8182 = fmul fast float %8174, %8179
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 0
  %8185 = extractvalue %dx.types.CBufRet.f32 %8183, 1
  %8186 = extractvalue %dx.types.CBufRet.f32 %8183, 2
  %8187 = fmul fast float %8175, %8184
  %8188 = fmul fast float %8175, %8185
  %8189 = fmul fast float %8175, %8186
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = fadd fast float %8187, %8191
  %8195 = fadd fast float %8194, %8180
  %8196 = fadd fast float %8188, %8192
  %8197 = fadd fast float %8196, %8181
  %8198 = fadd fast float %8189, %8193
  %8199 = fadd fast float %8198, %8182
  %8200 = fmul fast float %8195, %190
  %8201 = fmul fast float %8197, %190
  %8202 = fmul fast float %8199, %190
  br label %8203

; <label>:8203                                    ; preds = %8145, %7913
  %8204 = phi float [ %8200, %8145 ], [ %168, %7913 ]
  %8205 = phi float [ %8201, %8145 ], [ %169, %7913 ]
  %8206 = phi float [ %8202, %8145 ], [ %170, %7913 ]
  %8207 = phi float [ %190, %8145 ], [ %93, %7913 ]
  %8208 = phi float [ %8166, %8145 ], [ %7936, %7913 ]
  %8209 = phi float [ %8167, %8145 ], [ %7937, %7913 ]
  %8210 = phi float [ %8168, %8145 ], [ %7938, %7913 ]
  %8211 = phi float [ %8169, %8145 ], [ %7914, %7913 ]
  %8212 = phi float [ %8170, %8145 ], [ %7915, %7913 ]
  %8213 = phi float [ %8171, %8145 ], [ %7916, %7913 ]
  %8214 = phi float [ %8146, %8145 ], [ 1.000000e+00, %7913 ]
  br i1 %7945, label %9369, label %8215

; <label>:8215                                    ; preds = %8203
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8216, 3
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8230 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8235 = extractvalue %dx.types.CBufRet.f32 %8231, 3
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 3
  %8240 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8241 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8242 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8243 = fcmp fast olt float %8242, -5.000000e-01
  %8244 = call float @dx.op.dot3.f32(i32 55, float %8204, float %8205, float %8206, float %8204, float %8205, float %8206)  ; Dot3(ax,ay,az,bx,by,bz)
  %8245 = call float @dx.op.unary.f32(i32 25, float %8244)  ; Rsqrt(value)
  %8246 = fmul fast float %8245, %8244
  %8247 = fmul fast float %8245, %8204
  %8248 = fmul fast float %8245, %8205
  %8249 = fmul fast float %8245, %8206
  %8250 = fadd fast float %8246, %8220
  %8251 = call float @dx.op.dot3.f32(i32 55, float %8247, float %8248, float %8249, float %8217, float %8218, float %8219)  ; Dot3(ax,ay,az,bx,by,bz)
  %8252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.i32 %8252, 1
  %8254 = and i32 %8253, 1
  %8255 = icmp ne i32 %8254, 0
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8258 = fcmp fast ogt float %8257, 0.000000e+00
  %8259 = and i1 %8255, %8258
  br i1 %8259, label %8260, label %8666, !dx.controlflow.hints !133

; <label>:8260                                    ; preds = %8215
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 2
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8267 = fsub fast float %8264, %8266
  %8268 = and i32 %8253, 2
  %8269 = extractvalue %dx.types.CBufRet.i32 %8252, 0
  %8270 = call i32 @dx.op.binary.i32(i32 40, i32 %8269, i32 3)  ; UMin(a,b)
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 0
  %8273 = extractvalue %dx.types.CBufRet.f32 %8271, 1
  %8274 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8275 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8276 = fsub fast float %8272, %8274
  %8277 = fsub fast float %8273, %8275
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = fcmp fast ogt float %8279, 0.000000e+00
  %8281 = fsub fast float -0.000000e+00, %8276
  %8282 = fsub fast float -0.000000e+00, %8277
  %8283 = call float @dx.op.dot2.f32(i32 54, float %8247, float %8248, float %8247, float %8248)  ; Dot2(ax,ay,bx,by)
  %8284 = call float @dx.op.dot2.f32(i32 54, float %8247, float %8248, float %8281, float %8282)  ; Dot2(ax,ay,bx,by)
  %8285 = fmul fast float %8284, 2.000000e+00
  %8286 = call float @dx.op.dot2.f32(i32 54, float %8281, float %8282, float %8281, float %8282)  ; Dot2(ax,ay,bx,by)
  %8287 = fmul fast float %8279, %8279
  %8288 = fsub fast float %8286, %8287
  %8289 = fmul fast float %8285, %8285
  %8290 = fmul fast float %8283, 4.000000e+00
  %8291 = fmul fast float %8290, %8288
  %8292 = fsub fast float %8289, %8291
  %8293 = fcmp fast ogt float %8292, 0.000000e+00
  br i1 %8293, label %8294, label %8309

; <label>:8294                                    ; preds = %8260
  %8295 = fcmp fast ogt float %8285, 0.000000e+00
  %8296 = call float @dx.op.unary.f32(i32 24, float %8292)  ; Sqrt(value)
  %8297 = fsub fast float -0.000000e+00, %8296
  %8298 = select i1 %8295, float %8296, float %8297
  %8299 = fadd fast float %8298, %8285
  %8300 = fmul float %8299, -5.000000e-01
  %8301 = fdiv fast float %8300, %8283
  %8302 = call float @dx.op.binary.f32(i32 35, float %8301, float 0.000000e+00)  ; FMax(a,b)
  %8303 = call float @dx.op.binary.f32(i32 36, float %8246, float %8302)  ; FMin(a,b)
  %8304 = fdiv fast float %8288, %8300
  %8305 = call float @dx.op.binary.f32(i32 35, float %8304, float 0.000000e+00)  ; FMax(a,b)
  %8306 = call float @dx.op.binary.f32(i32 36, float %8246, float %8305)  ; FMin(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8303, float %8306)  ; FMin(a,b)
  %8308 = call float @dx.op.binary.f32(i32 35, float %8303, float %8306)  ; FMax(a,b)
  br label %8309

; <label>:8309                                    ; preds = %8294, %8260
  %8310 = phi float [ %8308, %8294 ], [ -1.000000e+00, %8260 ]
  %8311 = phi float [ %8307, %8294 ], [ -1.000000e+00, %8260 ]
  %8312 = phi i1 [ true, %8294 ], [ false, %8260 ]
  %8313 = and i1 %8280, %8312
  br i1 %8313, label %8314, label %8316

; <label>:8314                                    ; preds = %8309
  %8315 = fcmp fast oeq float %8311, %8310
  br i1 %8315, label %8619, label %8317

; <label>:8316                                    ; preds = %8309
  br i1 %8280, label %8619, label %8317

; <label>:8317                                    ; preds = %8316, %8314
  %8318 = phi float [ %8246, %8316 ], [ %8310, %8314 ]
  %8319 = phi float [ 0.000000e+00, %8316 ], [ %8311, %8314 ]
  %8320 = icmp ne i32 %8268, 0
  %8321 = fmul fast float %8318, %8249
  %8322 = fadd fast float %8321, %8262
  %8323 = fmul fast float %8322, %8318
  %8324 = select i1 %8320, float 0.000000e+00, float %8323
  %8325 = fcmp fast oeq float %8249, 0.000000e+00
  %8326 = fdiv fast float %8267, %8249
  %8327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8326)  ; FMax(a,b)
  %8328 = select i1 %8325, float %8318, float %8327
  %8329 = call float @dx.op.binary.f32(i32 36, float %8318, float %8328)  ; FMin(a,b)
  %8330 = fcmp fast ogt float %8249, 0.000000e+00
  %8331 = fcmp fast olt float %8267, 0.000000e+00
  br i1 %8330, label %8332, label %8389

; <label>:8332                                    ; preds = %8317
  %8333 = icmp eq i32 %8268, 0
  br i1 %8331, label %8334, label %8378

; <label>:8334                                    ; preds = %8332
  %8335 = select i1 %8333, float %8318, float 0.000000e+00
  %8336 = fsub fast float -0.000000e+00, %8335
  %8337 = call float @dx.op.unary.f32(i32 6, float %8336)  ; FAbs(value)
  %8338 = fmul fast float %8335, %8249
  %8339 = fadd fast float %8338, %8262
  %8340 = fmul fast float %8337, %8339
  %8341 = fsub fast float %8324, %8340
  %8342 = fsub fast float %8318, %8337
  %8343 = select i1 %8333, float %8342, float 0.000000e+00
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 0
  %8350 = extractvalue %dx.types.CBufRet.f32 %8348, 1
  %8351 = extractvalue %dx.types.CBufRet.f32 %8348, 2
  %8352 = extractvalue %dx.types.CBufRet.f32 %8348, 3
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 3
  %8355 = call float @dx.op.binary.f32(i32 36, float %8341, float %8354)  ; FMin(a,b)
  %8356 = fmul fast float %8352, %8343
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fsub fast float %8349, %8345
  %8359 = fsub fast float %8350, %8346
  %8360 = fsub fast float %8351, %8347
  %8361 = fmul fast float %8357, %8358
  %8362 = fmul fast float %8357, %8359
  %8363 = fmul fast float %8357, %8360
  %8364 = fadd fast float %8361, %8345
  %8365 = fadd fast float %8362, %8346
  %8366 = fadd fast float %8363, %8347
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = fadd fast float %8369, %8368
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8373 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8374 = fadd fast float %8373, %8372
  %8375 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8376 = fmul fast float %8371, %8355
  %8377 = fmul fast float %8376, %8375
  br label %8619

; <label>:8378                                    ; preds = %8332
  br i1 %8333, label %8379, label %8400

; <label>:8379                                    ; preds = %8378
  %8380 = call float @dx.op.binary.f32(i32 36, float %8329, float %8319)  ; FMin(a,b)
  %8381 = fsub fast float %8329, %8380
  %8382 = fsub fast float %8381, %8318
  %8383 = call float @dx.op.unary.f32(i32 6, float %8382)  ; FAbs(value)
  %8384 = fadd fast float %8381, %8318
  %8385 = fmul fast float %8384, %8249
  %8386 = fadd fast float %8385, %8262
  %8387 = fmul fast float %8386, %8383
  %8388 = fsub fast float %8324, %8387
  br label %8400

; <label>:8389                                    ; preds = %8317
  br i1 %8331, label %8390, label %8400

; <label>:8390                                    ; preds = %8389
  %8391 = call float @dx.op.binary.f32(i32 35, float %8319, float %8329)  ; FMax(a,b)
  %8392 = icmp eq i32 %8268, 0
  %8393 = select i1 %8392, float %8329, float 0.000000e+00
  %8394 = fsub fast float -0.000000e+00, %8393
  %8395 = call float @dx.op.unary.f32(i32 6, float %8394)  ; FAbs(value)
  %8396 = fmul fast float %8393, %8249
  %8397 = fadd fast float %8396, %8262
  %8398 = fmul fast float %8395, %8397
  %8399 = fsub fast float %8324, %8398
  br label %8400

; <label>:8400                                    ; preds = %8390, %8389, %8379, %8378
  %8401 = phi float [ %8319, %8378 ], [ %8319, %8379 ], [ %8391, %8390 ], [ %8319, %8389 ]
  %8402 = phi float [ 0.000000e+00, %8378 ], [ %8383, %8379 ], [ %8395, %8390 ], [ 0.000000e+00, %8389 ]
  %8403 = phi float [ %8324, %8378 ], [ %8388, %8379 ], [ %8399, %8390 ], [ %8324, %8389 ]
  %8404 = phi float [ %8329, %8378 ], [ %8329, %8379 ], [ %8318, %8390 ], [ %8318, %8389 ]
  %8405 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8405, align 4, !tbaa !120, !noalias !134
  %8406 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8406, align 4, !tbaa !120, !noalias !134
  %8407 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8407, align 4, !tbaa !120, !noalias !134
  %8408 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8408, align 4, !tbaa !120, !noalias !134
  %8409 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8409, align 4, !tbaa !120, !noalias !134
  %8410 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8410, align 4, !tbaa !120, !noalias !134
  %8411 = icmp sgt i32 %8270, 0
  br i1 %8411, label %8412, label %8473

; <label>:8412                                    ; preds = %8400
  br label %8413

; <label>:8413                                    ; preds = %8462, %8412
  %8414 = phi i32 [ %8463, %8462 ], [ 0, %8412 ]
  %8415 = phi i32 [ %8464, %8462 ], [ 0, %8412 ]
  %8416 = add nuw i32 %8415, 171
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8416)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 0
  %8419 = extractvalue %dx.types.CBufRet.f32 %8417, 1
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 0
  %8422 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8423 = fsub fast float %8418, %8421
  %8424 = fsub fast float %8419, %8422
  %8425 = extractvalue %dx.types.CBufRet.f32 %8417, 2
  %8426 = fsub fast float -0.000000e+00, %8423
  %8427 = fsub fast float -0.000000e+00, %8424
  %8428 = call float @dx.op.dot2.f32(i32 54, float %8247, float %8248, float %8426, float %8427)  ; Dot2(ax,ay,bx,by)
  %8429 = fmul fast float %8428, 2.000000e+00
  %8430 = call float @dx.op.dot2.f32(i32 54, float %8426, float %8427, float %8426, float %8427)  ; Dot2(ax,ay,bx,by)
  %8431 = fmul fast float %8425, %8425
  %8432 = fsub fast float %8430, %8431
  %8433 = fmul fast float %8429, %8429
  %8434 = fmul fast float %8290, %8432
  %8435 = fsub fast float %8433, %8434
  %8436 = fcmp fast ogt float %8435, 0.000000e+00
  br i1 %8436, label %8437, label %8452

; <label>:8437                                    ; preds = %8413
  %8438 = fcmp fast ogt float %8429, 0.000000e+00
  %8439 = call float @dx.op.unary.f32(i32 24, float %8435)  ; Sqrt(value)
  %8440 = fsub fast float -0.000000e+00, %8439
  %8441 = select i1 %8438, float %8439, float %8440
  %8442 = fadd fast float %8441, %8429
  %8443 = fmul float %8442, -5.000000e-01
  %8444 = fdiv fast float %8443, %8283
  %8445 = call float @dx.op.binary.f32(i32 35, float %8444, float 0.000000e+00)  ; FMax(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8318, float %8445)  ; FMin(a,b)
  %8447 = fdiv fast float %8432, %8443
  %8448 = call float @dx.op.binary.f32(i32 35, float %8447, float 0.000000e+00)  ; FMax(a,b)
  %8449 = call float @dx.op.binary.f32(i32 36, float %8318, float %8448)  ; FMin(a,b)
  %8450 = call float @dx.op.binary.f32(i32 36, float %8446, float %8449)  ; FMin(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float %8446, float %8449)  ; FMax(a,b)
  br label %8452

; <label>:8452                                    ; preds = %8437, %8413
  %8453 = phi float [ %8451, %8437 ], [ -1.000000e+00, %8413 ]
  %8454 = phi float [ %8450, %8437 ], [ -1.000000e+00, %8413 ]
  %8455 = phi i1 [ true, %8437 ], [ false, %8413 ]
  br i1 %8455, label %8456, label %8462

; <label>:8456                                    ; preds = %8452
  %8457 = call float @dx.op.binary.f32(i32 35, float %8401, float %8454)  ; FMax(a,b)
  %8458 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8415
  store float %8457, float* %8458, align 4, !tbaa !120, !noalias !134
  %8459 = call float @dx.op.binary.f32(i32 35, float %8401, float %8453)  ; FMax(a,b)
  %8460 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8415
  store float %8459, float* %8460, align 4, !tbaa !120, !noalias !134
  %8461 = add nsw i32 %8414, 1
  br label %8462

; <label>:8462                                    ; preds = %8456, %8452
  %8463 = phi i32 [ %8461, %8456 ], [ %8414, %8452 ]
  %8464 = add nuw nsw i32 %8415, 1
  %8465 = icmp eq i32 %8464, %8270
  br i1 %8465, label %8466, label %8413

; <label>:8466                                    ; preds = %8462
  %8467 = load float, float* %8407, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %8468 = load float, float* %8406, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  %8469 = load float, float* %8405, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  %8470 = load float, float* %8410, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %8471 = load float, float* %8409, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  %8472 = load float, float* %8408, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  br label %8473

; <label>:8473                                    ; preds = %8466, %8400
  %8474 = phi float [ -1.000000e+00, %8400 ], [ %8472, %8466 ]
  %8475 = phi float [ -1.000000e+00, %8400 ], [ %8471, %8466 ]
  %8476 = phi float [ -1.000000e+00, %8400 ], [ %8470, %8466 ]
  %8477 = phi float [ -1.000000e+00, %8400 ], [ %8469, %8466 ]
  %8478 = phi float [ -1.000000e+00, %8400 ], [ %8468, %8466 ]
  %8479 = phi float [ -1.000000e+00, %8400 ], [ %8467, %8466 ]
  %8480 = phi i32 [ 0, %8400 ], [ %8463, %8466 ]
  %8481 = call float @dx.op.binary.f32(i32 36, float %8478, float %8479)  ; FMin(a,b)
  %8482 = call float @dx.op.binary.f32(i32 36, float %8477, float %8481)  ; FMin(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float %8477, float %8478)  ; FMax(a,b)
  %8484 = call float @dx.op.binary.f32(i32 36, float %8483, float %8479)  ; FMin(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8477, float %8478)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 35, float %8485, float %8484)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 35, float %8478, float %8479)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 35, float %8477, float %8487)  ; FMax(a,b)
  store float %8482, float* %8405, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  store float %8486, float* %8406, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %8488, float* %8407, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %8489 = call float @dx.op.binary.f32(i32 36, float %8475, float %8476)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8474, float %8489)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8474, float %8475)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 36, float %8491, float %8476)  ; FMin(a,b)
  %8493 = call float @dx.op.binary.f32(i32 36, float %8474, float %8475)  ; FMin(a,b)
  %8494 = call float @dx.op.binary.f32(i32 35, float %8493, float %8492)  ; FMax(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8475, float %8476)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 35, float %8474, float %8495)  ; FMax(a,b)
  store float %8490, float* %8408, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  store float %8494, float* %8409, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  store float %8496, float* %8410, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %8497 = sub nsw i32 3, %8480
  %8498 = icmp sgt i32 %8497, 2
  br i1 %8498, label %8499, label %8537

; <label>:8499                                    ; preds = %8473
  %8500 = icmp eq i32 %8268, 0
  %8501 = fsub fast float %8318, %8402
  %8502 = select i1 %8500, float %8501, float %8402
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8503, 2
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8510 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8511 = extractvalue %dx.types.CBufRet.f32 %8507, 3
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 3
  %8514 = call float @dx.op.binary.f32(i32 36, float %8403, float %8513)  ; FMin(a,b)
  %8515 = fmul fast float %8511, %8502
  %8516 = call float @dx.op.unary.f32(i32 7, float %8515)  ; Saturate(value)
  %8517 = fsub fast float %8508, %8504
  %8518 = fsub fast float %8509, %8505
  %8519 = fsub fast float %8510, %8506
  %8520 = fmul fast float %8516, %8517
  %8521 = fmul fast float %8516, %8518
  %8522 = fmul fast float %8516, %8519
  %8523 = fadd fast float %8520, %8504
  %8524 = fadd fast float %8521, %8505
  %8525 = fadd fast float %8522, %8506
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 0
  %8528 = extractvalue %dx.types.CBufRet.f32 %8526, 1
  %8529 = fadd fast float %8528, %8527
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8526, 2
  %8532 = extractvalue %dx.types.CBufRet.f32 %8526, 3
  %8533 = fadd fast float %8532, %8531
  %8534 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8535 = fmul fast float %8530, %8514
  %8536 = fmul fast float %8535, %8534
  br label %8619

; <label>:8537                                    ; preds = %8473
  %8538 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8497
  %8539 = load float, float* %8538, align 4, !tbaa !120, !noalias !134
  %8540 = fcmp fast olt float %8539, %8404
  %8541 = icmp sgt i32 %8480, 0
  %8542 = and i1 %8541, %8540
  br i1 %8542, label %8543, label %8580

; <label>:8543                                    ; preds = %8537
  br label %8544

; <label>:8544                                    ; preds = %8573, %8543
  %8545 = phi float [ %8574, %8573 ], [ %8402, %8543 ]
  %8546 = phi float [ %8575, %8573 ], [ %8403, %8543 ]
  %8547 = phi float [ %8555, %8573 ], [ %8539, %8543 ]
  %8548 = phi i32 [ %8552, %8573 ], [ %8497, %8543 ]
  %8549 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8548
  %8550 = load float, float* %8549, align 4, !tbaa !120, !noalias !134
  %8551 = icmp slt i32 %8548, 2
  %8552 = add nsw i32 %8548, 1
  %8553 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8552
  %8554 = load float, float* %8553, align 4, !tbaa !120, !noalias !134
  %8555 = select i1 %8551, float %8554, float %8318
  %8556 = call float @dx.op.binary.f32(i32 36, float %8555, float %8550)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8404, float %8556)  ; FMin(a,b)
  %8558 = icmp eq i32 %8268, 0
  %8559 = fadd fast float %8557, %8547
  %8560 = fmul fast float %8559, %8249
  %8561 = fadd fast float %8560, %8262
  br i1 %8558, label %8567, label %8562

; <label>:8562                                    ; preds = %8544
  %8563 = fsub fast float %8557, %8547
  %8564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8563)  ; FMax(a,b)
  %8565 = fmul fast float %8564, %8561
  %8566 = fadd fast float %8565, %8546
  br label %8573

; <label>:8567                                    ; preds = %8544
  %8568 = fsub fast float %8547, %8557
  %8569 = call float @dx.op.unary.f32(i32 6, float %8568)  ; FAbs(value)
  %8570 = fadd fast float %8569, %8545
  %8571 = fmul fast float %8569, %8561
  %8572 = fsub fast float %8546, %8571
  br label %8573

; <label>:8573                                    ; preds = %8567, %8562
  %8574 = phi float [ %8564, %8562 ], [ %8570, %8567 ]
  %8575 = phi float [ %8566, %8562 ], [ %8572, %8567 ]
  %8576 = fcmp fast olt float %8555, %8404
  %8577 = icmp slt i32 %8552, 3
  %8578 = and i1 %8577, %8576
  br i1 %8578, label %8544, label %8579

; <label>:8579                                    ; preds = %8573
  br label %8580

; <label>:8580                                    ; preds = %8579, %8537
  %8581 = phi float [ %8402, %8537 ], [ %8574, %8579 ]
  %8582 = phi float [ %8403, %8537 ], [ %8575, %8579 ]
  %8583 = fsub fast float %8318, %8581
  %8584 = select i1 %8320, float %8581, float %8583
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8592 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8593 = extractvalue %dx.types.CBufRet.f32 %8589, 3
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 3
  %8596 = call float @dx.op.binary.f32(i32 36, float %8582, float %8595)  ; FMin(a,b)
  %8597 = fmul fast float %8593, %8584
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = fsub fast float %8590, %8586
  %8600 = fsub fast float %8591, %8587
  %8601 = fsub fast float %8592, %8588
  %8602 = fmul fast float %8598, %8599
  %8603 = fmul fast float %8598, %8600
  %8604 = fmul fast float %8598, %8601
  %8605 = fadd fast float %8602, %8586
  %8606 = fadd fast float %8603, %8587
  %8607 = fadd fast float %8604, %8588
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 1
  %8611 = fadd fast float %8610, %8609
  %8612 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8614 = extractvalue %dx.types.CBufRet.f32 %8608, 3
  %8615 = fadd fast float %8614, %8613
  %8616 = call float @dx.op.unary.f32(i32 7, float %8615)  ; Saturate(value)
  %8617 = fmul fast float %8612, %8596
  %8618 = fmul fast float %8617, %8616
  br label %8619

; <label>:8619                                    ; preds = %8580, %8499, %8334, %8316, %8314
  %8620 = phi float [ %8343, %8334 ], [ %8502, %8499 ], [ %8584, %8580 ], [ 0.000000e+00, %8314 ], [ 0.000000e+00, %8316 ]
  %8621 = phi float [ %8377, %8334 ], [ %8536, %8499 ], [ %8618, %8580 ], [ 0.000000e+00, %8314 ], [ 0.000000e+00, %8316 ]
  %8622 = phi float [ %8364, %8334 ], [ %8523, %8499 ], [ %8605, %8580 ], [ 0.000000e+00, %8314 ], [ 0.000000e+00, %8316 ]
  %8623 = phi float [ %8365, %8334 ], [ %8524, %8499 ], [ %8606, %8580 ], [ 0.000000e+00, %8314 ], [ 0.000000e+00, %8316 ]
  %8624 = phi float [ %8366, %8334 ], [ %8525, %8499 ], [ %8607, %8580 ], [ 0.000000e+00, %8314 ], [ 0.000000e+00, %8316 ]
  %8625 = fmul fast float %8257, %8621
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8628 = fsub fast float %8264, %8627
  %8629 = fcmp fast olt float %8625, -2.000000e+01
  %8630 = call float @dx.op.unary.f32(i32 21, float %8625)  ; Exp(value)
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8633 = extractvalue %dx.types.CBufRet.f32 %8631, 3
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8636 = fmul fast float %8633, %8628
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = fmul fast float %8249, 5.000000e-01
  %8640 = fadd fast float %8639, 5.000000e-01
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = fsub fast float 1.000000e+00, %8641
  %8643 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8638)  ; FMax(a,b)
  %8644 = fdiv fast float %8642, %8643
  %8645 = fsub fast float %8628, %8206
  %8646 = call float @dx.op.unary.f32(i32 6, float %8645)  ; FAbs(value)
  %8647 = fmul fast float %8646, %8632
  %8648 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8649 = fsub fast float 1.000000e+00, %8647
  %8650 = fmul fast float %8649, %8648
  %8651 = fadd fast float %8650, %8647
  %8652 = fmul fast float %8635, %8628
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fsub fast float 1.000000e+00, %8651
  %8655 = fmul fast float %8654, %8653
  %8656 = fadd fast float %8655, %8651
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = fadd fast float %8630, -1.000000e+00
  %8659 = select i1 %8629, float -1.000000e+00, float %8658
  %8660 = fmul fast float %8657, %8659
  %8661 = fadd fast float %8660, 1.000000e+00
  %8662 = fsub fast float -0.000000e+00, %8660
  %8663 = fmul fast float %8622, %8662
  %8664 = fmul fast float %8623, %8662
  %8665 = fmul fast float %8624, %8662
  br label %8666

; <label>:8666                                    ; preds = %8619, %8215
  %8667 = phi float [ %8620, %8619 ], [ 0.000000e+00, %8215 ]
  %8668 = phi float [ %8661, %8619 ], [ 1.000000e+00, %8215 ]
  %8669 = phi float [ %8663, %8619 ], [ 0.000000e+00, %8215 ]
  %8670 = phi float [ %8664, %8619 ], [ 0.000000e+00, %8215 ]
  %8671 = phi float [ %8665, %8619 ], [ 0.000000e+00, %8215 ]
  %8672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8672, 1
  %8674 = fsub fast float 1.000000e+00, %8668
  %8675 = fmul fast float %8674, %8250
  %8676 = fmul fast float %8675, %8673
  %8677 = fsub fast float %8250, %8676
  br i1 %8243, label %8678, label %8707, !dx.controlflow.hints !170

; <label>:8678                                    ; preds = %8666
  %8679 = fmul fast float %8251, %8240
  %8680 = fadd fast float %8679, %8241
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fmul fast float %8222, %8677
  %8683 = fsub fast float -0.000000e+00, %8682
  %8684 = fmul fast float %8223, %8677
  %8685 = fsub fast float -0.000000e+00, %8684
  %8686 = call float @dx.op.unary.f32(i32 21, float %8683)  ; Exp(value)
  %8687 = call float @dx.op.unary.f32(i32 21, float %8685)  ; Exp(value)
  %8688 = call float @dx.op.binary.f32(i32 35, float %8230, float %8686)  ; FMax(a,b)
  %8689 = call float @dx.op.binary.f32(i32 35, float %8230, float %8687)  ; FMax(a,b)
  %8690 = fsub fast float %8689, %8688
  %8691 = fmul fast float %8690, %8681
  %8692 = fadd fast float %8691, %8688
  %8693 = call float @dx.op.unary.f32(i32 7, float %8692)  ; Saturate(value)
  %8694 = fsub fast float %8227, %8232
  %8695 = fsub fast float %8228, %8233
  %8696 = fsub fast float %8229, %8234
  %8697 = fmul fast float %8681, %8694
  %8698 = fmul fast float %8681, %8695
  %8699 = fmul fast float %8681, %8696
  %8700 = fadd fast float %8697, %8232
  %8701 = fadd fast float %8698, %8233
  %8702 = fadd fast float %8699, %8234
  %8703 = fsub fast float 1.000000e+00, %8693
  %8704 = fmul fast float %8703, %8700
  %8705 = fmul fast float %8703, %8701
  %8706 = fmul fast float %8703, %8702
  br label %8766

; <label>:8707                                    ; preds = %8666
  %8708 = fmul fast float %8677, %8239
  %8709 = call float @dx.op.unary.f32(i32 7, float %8708)  ; Saturate(value)
  %8710 = fsub fast float 2.000000e+00, %8709
  %8711 = fmul fast float %8709, 9.921875e-01
  %8712 = fmul fast float %8711, %8710
  %8713 = fadd fast float %8712, 3.906250e-03
  %8714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %8713, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8715 = extractvalue %dx.types.ResRet.f32 %8714, 0
  %8716 = fsub fast float %8709, %8715
  %8717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8716)  ; FMax(a,b)
  %8718 = fmul fast float %8225, %8206
  %8719 = call float @dx.op.unary.f32(i32 6, float %8718)  ; FAbs(value)
  %8720 = fcmp fast ogt float %8719, 0x3EB0C6F7A0000000
  br i1 %8720, label %8721, label %8727, !dx.controlflow.hints !171

; <label>:8721                                    ; preds = %8707
  %8722 = fmul fast float %8718, 0xBFF7154760000000
  %8723 = call float @dx.op.unary.f32(i32 21, float %8722)  ; Exp(value)
  %8724 = fsub fast float 1.000000e+00, %8723
  %8725 = fdiv fast float %8724, %8718
  %8726 = fmul fast float %8725, %8235
  br label %8727

; <label>:8727                                    ; preds = %8721, %8707
  %8728 = phi float [ %8726, %8721 ], [ %8235, %8707 ]
  %8729 = fadd fast float %8728, %8237
  %8730 = fmul fast float %8729, %8717
  %8731 = fmul fast float %8222, %8730
  %8732 = fsub fast float -0.000000e+00, %8731
  %8733 = fmul fast float %8223, %8730
  %8734 = fsub fast float -0.000000e+00, %8733
  %8735 = fmul fast float %8224, %8730
  %8736 = fsub fast float -0.000000e+00, %8735
  %8737 = call float @dx.op.unary.f32(i32 21, float %8732)  ; Exp(value)
  %8738 = call float @dx.op.unary.f32(i32 21, float %8734)  ; Exp(value)
  %8739 = call float @dx.op.unary.f32(i32 21, float %8736)  ; Exp(value)
  %8740 = fmul fast float %8251, %8251
  %8741 = fadd fast float %8740, 1.000000e+00
  %8742 = fmul fast float %8741, 0x3FAE8EC8A0000000
  %8743 = fmul fast float %8742, %8232
  %8744 = fmul fast float %8742, %8233
  %8745 = fmul fast float %8742, %8234
  %8746 = fmul fast float %8251, %8230
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = fmul fast float %8230, %8230
  %8749 = fsub fast float 1.000000e+00, %8748
  %8750 = fmul fast float %8749, 0x3FB45F3060000000
  %8751 = fmul fast float %8747, %8747
  %8752 = fdiv fast float 1.000000e+00, %8751
  %8753 = fmul fast float %8750, %8752
  %8754 = fmul fast float %8753, %8227
  %8755 = fmul fast float %8753, %8228
  %8756 = fmul fast float %8753, %8229
  %8757 = fadd fast float %8754, %8743
  %8758 = fadd fast float %8755, %8744
  %8759 = fadd fast float %8756, %8745
  %8760 = fsub fast float 1.000000e+00, %8737
  %8761 = fsub fast float 1.000000e+00, %8738
  %8762 = fsub fast float 1.000000e+00, %8739
  %8763 = fmul fast float %8757, %8760
  %8764 = fmul fast float %8758, %8761
  %8765 = fmul fast float %8759, %8762
  br label %8766

; <label>:8766                                    ; preds = %8727, %8678
  %8767 = phi float [ %8704, %8678 ], [ %8763, %8727 ]
  %8768 = phi float [ %8705, %8678 ], [ %8764, %8727 ]
  %8769 = phi float [ %8706, %8678 ], [ %8765, %8727 ]
  %8770 = phi float [ %8693, %8678 ], [ %8737, %8727 ]
  %8771 = phi float [ %8693, %8678 ], [ %8738, %8727 ]
  %8772 = phi float [ %8693, %8678 ], [ %8739, %8727 ]
  br i1 %8259, label %8773, label %8971, !dx.controlflow.hints !172

; <label>:8773                                    ; preds = %8766
  %8774 = extractvalue %dx.types.CBufRet.f32 %8672, 0
  %8775 = fmul fast float %8774, %8674
  %8776 = fsub fast float %8669, %8767
  %8777 = fsub fast float %8670, %8768
  %8778 = fsub fast float %8671, %8769
  %8779 = fmul fast float %8775, %8776
  %8780 = fmul fast float %8775, %8777
  %8781 = fmul fast float %8775, %8778
  %8782 = fadd fast float %8779, %8767
  %8783 = fadd fast float %8780, %8768
  %8784 = fadd fast float %8781, %8769
  %8785 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8770)  ; FMax(a,b)
  %8786 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8771)  ; FMax(a,b)
  %8787 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8772)  ; FMax(a,b)
  %8788 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8668)  ; FMax(a,b)
  %8789 = call float @dx.op.binary.f32(i32 35, float %8667, float %8677)  ; FMax(a,b)
  %8790 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8789)  ; FMax(a,b)
  %8791 = fdiv fast float %8667, %8790
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = fdiv fast float %8677, %8790
  %8794 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8795 = fcmp fast une float %8788, 1.000000e+00
  br i1 %8795, label %8796, label %8809, !dx.controlflow.hints !173

; <label>:8796                                    ; preds = %8773
  %8797 = call float @dx.op.unary.f32(i32 23, float %8788)  ; Log(value)
  %8798 = fmul fast float %8797, 0x3FE62E4300000000
  %8799 = fmul fast float %8669, %8798
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fmul fast float %8670, %8798
  %8802 = fsub fast float -0.000000e+00, %8801
  %8803 = fmul fast float %8671, %8798
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = fsub fast float 1.000000e+00, %8788
  %8806 = fdiv fast float %8800, %8805
  %8807 = fdiv fast float %8802, %8805
  %8808 = fdiv fast float %8804, %8805
  br label %8809

; <label>:8809                                    ; preds = %8796, %8773
  %8810 = phi float [ %8806, %8796 ], [ %8669, %8773 ]
  %8811 = phi float [ %8807, %8796 ], [ %8670, %8773 ]
  %8812 = phi float [ %8808, %8796 ], [ %8671, %8773 ]
  %8813 = phi float [ %8798, %8796 ], [ 0.000000e+00, %8773 ]
  %8814 = fcmp fast une float %8785, 1.000000e+00
  br i1 %8814, label %8815, label %8822, !dx.controlflow.hints !174

; <label>:8815                                    ; preds = %8809
  %8816 = call float @dx.op.unary.f32(i32 23, float %8785)  ; Log(value)
  %8817 = fmul fast float %8816, 0x3FE62E4300000000
  %8818 = fmul fast float %8782, %8817
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fsub fast float 1.000000e+00, %8785
  %8821 = fdiv fast float %8819, %8820
  br label %8822

; <label>:8822                                    ; preds = %8815, %8809
  %8823 = phi float [ %8821, %8815 ], [ %8782, %8809 ]
  %8824 = phi float [ %8817, %8815 ], [ 0.000000e+00, %8809 ]
  %8825 = fcmp fast une float %8786, 1.000000e+00
  br i1 %8825, label %8826, label %8833, !dx.controlflow.hints !174

; <label>:8826                                    ; preds = %8822
  %8827 = call float @dx.op.unary.f32(i32 23, float %8786)  ; Log(value)
  %8828 = fmul fast float %8827, 0x3FE62E4300000000
  %8829 = fmul fast float %8783, %8828
  %8830 = fsub fast float -0.000000e+00, %8829
  %8831 = fsub fast float 1.000000e+00, %8786
  %8832 = fdiv fast float %8830, %8831
  br label %8833

; <label>:8833                                    ; preds = %8826, %8822
  %8834 = phi float [ %8832, %8826 ], [ %8783, %8822 ]
  %8835 = phi float [ %8828, %8826 ], [ 0.000000e+00, %8822 ]
  %8836 = fcmp fast une float %8787, 1.000000e+00
  br i1 %8836, label %8837, label %8844, !dx.controlflow.hints !174

; <label>:8837                                    ; preds = %8833
  %8838 = call float @dx.op.unary.f32(i32 23, float %8787)  ; Log(value)
  %8839 = fmul fast float %8838, 0x3FE62E4300000000
  %8840 = fmul fast float %8784, %8839
  %8841 = fsub fast float -0.000000e+00, %8840
  %8842 = fsub fast float 1.000000e+00, %8787
  %8843 = fdiv fast float %8841, %8842
  br label %8844

; <label>:8844                                    ; preds = %8837, %8833
  %8845 = phi float [ %8843, %8837 ], [ %8784, %8833 ]
  %8846 = phi float [ %8839, %8837 ], [ 0.000000e+00, %8833 ]
  %8847 = fmul fast float %8810, %8794
  %8848 = fmul fast float %8811, %8794
  %8849 = fmul fast float %8812, %8794
  %8850 = fmul fast float %8813, %8794
  %8851 = fmul fast float %8823, %8792
  %8852 = fmul fast float %8834, %8792
  %8853 = fmul fast float %8845, %8792
  %8854 = fmul fast float %8824, %8792
  %8855 = fmul fast float %8835, %8792
  %8856 = fmul fast float %8846, %8792
  %8857 = fadd fast float %8851, %8847
  %8858 = fadd fast float %8852, %8848
  %8859 = fadd fast float %8853, %8849
  %8860 = fadd fast float %8854, %8850
  %8861 = fadd fast float %8855, %8850
  %8862 = fadd fast float %8856, %8850
  %8863 = fcmp fast une float %8860, 0.000000e+00
  br i1 %8863, label %8864, label %8871, !dx.controlflow.hints !175

; <label>:8864                                    ; preds = %8844
  %8865 = fmul fast float %8860, 0x3FF7154760000000
  %8866 = call float @dx.op.unary.f32(i32 21, float %8865)  ; Exp(value)
  %8867 = fsub fast float 1.000000e+00, %8866
  %8868 = fmul fast float %8857, %8867
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = fdiv fast float %8869, %8860
  br label %8871

; <label>:8871                                    ; preds = %8864, %8844
  %8872 = phi float [ %8866, %8864 ], [ 1.000000e+00, %8844 ]
  %8873 = phi float [ %8870, %8864 ], [ %8857, %8844 ]
  %8874 = fcmp fast une float %8861, 0.000000e+00
  br i1 %8874, label %8875, label %8882, !dx.controlflow.hints !175

; <label>:8875                                    ; preds = %8871
  %8876 = fmul fast float %8861, 0x3FF7154760000000
  %8877 = call float @dx.op.unary.f32(i32 21, float %8876)  ; Exp(value)
  %8878 = fsub fast float 1.000000e+00, %8877
  %8879 = fmul fast float %8858, %8878
  %8880 = fsub fast float -0.000000e+00, %8879
  %8881 = fdiv fast float %8880, %8861
  br label %8882

; <label>:8882                                    ; preds = %8875, %8871
  %8883 = phi float [ %8877, %8875 ], [ 1.000000e+00, %8871 ]
  %8884 = phi float [ %8881, %8875 ], [ %8858, %8871 ]
  %8885 = fcmp fast une float %8862, 0.000000e+00
  br i1 %8885, label %8886, label %8893, !dx.controlflow.hints !175

; <label>:8886                                    ; preds = %8882
  %8887 = fmul fast float %8862, 0x3FF7154760000000
  %8888 = call float @dx.op.unary.f32(i32 21, float %8887)  ; Exp(value)
  %8889 = fsub fast float 1.000000e+00, %8888
  %8890 = fmul fast float %8859, %8889
  %8891 = fsub fast float -0.000000e+00, %8890
  %8892 = fdiv fast float %8891, %8862
  br label %8893

; <label>:8893                                    ; preds = %8886, %8882
  %8894 = phi float [ %8888, %8886 ], [ 1.000000e+00, %8882 ]
  %8895 = phi float [ %8892, %8886 ], [ %8859, %8882 ]
  %8896 = fcmp fast ogt float %8792, %8794
  br i1 %8896, label %8897, label %8917

; <label>:8897                                    ; preds = %8893
  %8898 = fsub fast float 1.000000e+00, %8794
  %8899 = fmul fast float %8810, %8898
  %8900 = fmul fast float %8811, %8898
  %8901 = fmul fast float %8812, %8898
  %8902 = fmul fast float %8813, %8898
  %8903 = fcmp fast une float %8902, 0.000000e+00
  br i1 %8903, label %8904, label %8955, !dx.controlflow.hints !176

; <label>:8904                                    ; preds = %8897
  %8905 = fmul fast float %8902, 0x3FF7154760000000
  %8906 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8907 = fsub fast float 1.000000e+00, %8906
  %8908 = fmul fast float %8899, %8907
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fmul fast float %8900, %8907
  %8911 = fsub fast float -0.000000e+00, %8910
  %8912 = fmul fast float %8901, %8907
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = fdiv fast float %8909, %8902
  %8915 = fdiv fast float %8911, %8902
  %8916 = fdiv fast float %8913, %8902
  br label %8955

; <label>:8917                                    ; preds = %8893
  %8918 = fsub fast float 1.000000e+00, %8792
  %8919 = fmul fast float %8823, %8918
  %8920 = fmul fast float %8834, %8918
  %8921 = fmul fast float %8845, %8918
  %8922 = fmul fast float %8824, %8918
  %8923 = fmul fast float %8835, %8918
  %8924 = fmul fast float %8846, %8918
  %8925 = fcmp fast une float %8922, 0.000000e+00
  br i1 %8925, label %8926, label %8933, !dx.controlflow.hints !175

; <label>:8926                                    ; preds = %8917
  %8927 = fmul fast float %8922, 0x3FF7154760000000
  %8928 = call float @dx.op.unary.f32(i32 21, float %8927)  ; Exp(value)
  %8929 = fsub fast float 1.000000e+00, %8928
  %8930 = fmul fast float %8919, %8929
  %8931 = fsub fast float -0.000000e+00, %8930
  %8932 = fdiv fast float %8931, %8922
  br label %8933

; <label>:8933                                    ; preds = %8926, %8917
  %8934 = phi float [ %8932, %8926 ], [ %8919, %8917 ]
  %8935 = phi float [ %8928, %8926 ], [ 1.000000e+00, %8917 ]
  %8936 = fcmp fast une float %8923, 0.000000e+00
  br i1 %8936, label %8937, label %8944, !dx.controlflow.hints !175

; <label>:8937                                    ; preds = %8933
  %8938 = fmul fast float %8923, 0x3FF7154760000000
  %8939 = call float @dx.op.unary.f32(i32 21, float %8938)  ; Exp(value)
  %8940 = fsub fast float 1.000000e+00, %8939
  %8941 = fmul fast float %8920, %8940
  %8942 = fsub fast float -0.000000e+00, %8941
  %8943 = fdiv fast float %8942, %8923
  br label %8944

; <label>:8944                                    ; preds = %8937, %8933
  %8945 = phi float [ %8943, %8937 ], [ %8920, %8933 ]
  %8946 = phi float [ %8939, %8937 ], [ 1.000000e+00, %8933 ]
  %8947 = fcmp fast une float %8924, 0.000000e+00
  br i1 %8947, label %8948, label %8955, !dx.controlflow.hints !175

; <label>:8948                                    ; preds = %8944
  %8949 = fmul fast float %8924, 0x3FF7154760000000
  %8950 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8951 = fsub fast float 1.000000e+00, %8950
  %8952 = fmul fast float %8921, %8951
  %8953 = fsub fast float -0.000000e+00, %8952
  %8954 = fdiv fast float %8953, %8924
  br label %8955

; <label>:8955                                    ; preds = %8948, %8944, %8904, %8897
  %8956 = phi float [ %8954, %8948 ], [ %8916, %8904 ], [ %8901, %8897 ], [ %8921, %8944 ]
  %8957 = phi float [ %8945, %8948 ], [ %8915, %8904 ], [ %8900, %8897 ], [ %8945, %8944 ]
  %8958 = phi float [ %8934, %8948 ], [ %8914, %8904 ], [ %8899, %8897 ], [ %8934, %8944 ]
  %8959 = phi float [ %8950, %8948 ], [ %8906, %8904 ], [ 1.000000e+00, %8897 ], [ 1.000000e+00, %8944 ]
  %8960 = phi float [ %8946, %8948 ], [ %8906, %8904 ], [ 1.000000e+00, %8897 ], [ %8946, %8944 ]
  %8961 = phi float [ %8935, %8948 ], [ %8906, %8904 ], [ 1.000000e+00, %8897 ], [ %8935, %8944 ]
  %8962 = fmul fast float %8961, %8873
  %8963 = fmul fast float %8960, %8884
  %8964 = fmul fast float %8959, %8895
  %8965 = fadd fast float %8962, %8958
  %8966 = fadd fast float %8963, %8957
  %8967 = fadd fast float %8964, %8956
  %8968 = fmul fast float %8961, %8872
  %8969 = fmul fast float %8960, %8883
  %8970 = fmul fast float %8959, %8894
  br label %8971

; <label>:8971                                    ; preds = %8955, %8766
  %8972 = phi float [ %8970, %8955 ], [ %8772, %8766 ]
  %8973 = phi float [ %8969, %8955 ], [ %8771, %8766 ]
  %8974 = phi float [ %8968, %8955 ], [ %8770, %8766 ]
  %8975 = phi float [ %8967, %8955 ], [ %8769, %8766 ]
  %8976 = phi float [ %8966, %8955 ], [ %8768, %8766 ]
  %8977 = phi float [ %8965, %8955 ], [ %8767, %8766 ]
  %8978 = fmul fast float %8977, %7923
  %8979 = fmul fast float %8976, %7923
  %8980 = fmul fast float %8975, %7923
  %8981 = fmul fast float %8974, %8214
  %8982 = call float @dx.op.dot3.f32(i32 55, float %8974, float %8973, float %8972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8983 = call float @dx.op.dot3.f32(i32 55, float %8978, float %8979, float %8980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8984 = select i1 %230, float %8982, float %8974
  %8985 = select i1 %230, float %8982, float %8973
  %8986 = select i1 %230, float 1.000000e+00, float %8972
  %8987 = select i1 %230, float %8983, float %8978
  %8988 = select i1 %230, float 0.000000e+00, float %8979
  %8989 = select i1 %230, float 0.000000e+00, float %8980
  %8990 = fmul fast float %8984, %8208
  %8991 = fmul fast float %8985, %8209
  %8992 = fmul fast float %8986, %8210
  %8993 = fadd fast float %8990, %8987
  %8994 = fadd fast float %8991, %8988
  %8995 = fadd fast float %8989, %8992
  %8996 = fmul fast float %8984, %8211
  %8997 = fmul fast float %8985, %8212
  %8998 = fmul fast float %8986, %8213
  %8999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.i32 %8999, 0
  %9001 = icmp eq i32 %9000, 0
  br i1 %9001, label %9369, label %9002, !dx.controlflow.hints !177

; <label>:9002                                    ; preds = %8971
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 3
  %9006 = fmul fast float %9004, %105
  %9007 = fmul fast float %9005, %106
  %9008 = fmul fast float %9006, 2.000000e+00
  %9009 = fmul fast float %9007, 2.000000e+00
  %9010 = fsub fast float 1.000000e+00, %9008
  %9011 = fsub fast float 1.000000e+00, %9009
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9016 = fmul fast float %9010, %9013
  %9017 = fmul fast float %9010, %9014
  %9018 = fmul fast float %9010, %9015
  %9019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9020 = extractvalue %dx.types.CBufRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.CBufRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.CBufRet.f32 %9019, 2
  %9023 = fmul fast float %9011, %9020
  %9024 = fmul fast float %9011, %9021
  %9025 = fmul fast float %9011, %9022
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 0
  %9028 = extractvalue %dx.types.CBufRet.f32 %9026, 1
  %9029 = extractvalue %dx.types.CBufRet.f32 %9026, 2
  %9030 = fadd fast float %9023, %9027
  %9031 = fadd fast float %9030, %9016
  %9032 = fadd fast float %9024, %9028
  %9033 = fadd fast float %9032, %9017
  %9034 = fadd fast float %9025, %9029
  %9035 = fadd fast float %9034, %9018
  %9036 = fmul fast float %9031, %8207
  %9037 = fmul fast float %9033, %8207
  %9038 = fmul fast float %9035, %8207
  %9039 = fmul fast float %9036, %9036
  %9040 = fmul fast float %9037, %9037
  %9041 = fadd fast float %9039, %9040
  %9042 = fmul fast float %9038, %9038
  %9043 = fadd fast float %9041, %9042
  %9044 = call float @dx.op.unary.f32(i32 24, float %9043)  ; Sqrt(value)
  %9045 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %9046 = fsub fast float %9044, %9045
  %9047 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %9048 = fmul fast float %9046, %9047
  %9049 = call float @dx.op.unary.f32(i32 7, float %9048)  ; Saturate(value)
  %9050 = fadd fast float %9049, -5.000000e-01
  %9051 = fmul fast float %9050, 2.000000e+00
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9054 = call float @dx.op.binary.f32(i32 36, float %9053, float %9051)  ; FMin(a,b)
  %9055 = fsub fast float -0.000000e+00, %9053
  %9056 = fcmp fast ogt float %9054, %9055
  br i1 %9056, label %9057, label %9369, !dx.controlflow.hints !178

; <label>:9057                                    ; preds = %9002
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 3
  %9060 = fcmp fast ogt float %9059, 0.000000e+00
  br i1 %9060, label %9061, label %9136, !dx.controlflow.hints !179

; <label>:9061                                    ; preds = %9057
  %9062 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9063 = extractvalue %dx.types.Dimensions %9062, 0
  %9064 = sitofp i32 %9063 to float
  %9065 = extractvalue %dx.types.Dimensions %9062, 1
  %9066 = sitofp i32 %9065 to float
  %9067 = fmul fast float %9006, %9064
  %9068 = fmul fast float %9007, %9066
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9071 = fsub fast float -0.000000e+00, %9070
  %9072 = fptoui float %9071 to i32
  %9073 = fptoui float %9067 to i32
  %9074 = fptoui float %9068 to i32
  %9075 = and i32 %9072, 31
  %9076 = lshr i32 %9073, %9075
  %9077 = lshr i32 %9074, %9075
  %9078 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9072, i32 %9076, i32 %9077, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9079 = extractvalue %dx.types.ResRet.f32 %9078, 0
  %9080 = fcmp fast olt float %9079, -1.000000e+00
  %9081 = fcmp fast ogt float %9079, -1.000000e+00
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9084 = select i1 %9081, float %9083, float 1.000000e+00
  %9085 = fadd fast float %9079, 1.000000e+00
  %9086 = fmul fast float %9084, %9085
  %9087 = call float @dx.op.unary.f32(i32 6, float %9086)  ; FAbs(value)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9089 = fcmp fast oge float %9087, %9088
  %9090 = select i1 %9089, float 0x4197782600000000, float %9087
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = select i1 %9080, float %9092, float %9013
  %9096 = select i1 %9080, float %9093, float %9014
  %9097 = select i1 %9080, float %9094, float %9015
  %9098 = fmul fast float %9095, %9010
  %9099 = fmul fast float %9096, %9010
  %9100 = fmul fast float %9097, %9010
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.CBufRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9105 = select i1 %9080, float %9102, float %9020
  %9106 = select i1 %9080, float %9103, float %9021
  %9107 = select i1 %9080, float %9104, float %9022
  %9108 = fmul fast float %9105, %9011
  %9109 = fmul fast float %9106, %9011
  %9110 = fmul fast float %9107, %9011
  %9111 = fadd fast float %9108, %9098
  %9112 = fadd fast float %9109, %9099
  %9113 = fadd fast float %9110, %9100
  %9114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.f32 %9114, 0
  %9116 = extractvalue %dx.types.CBufRet.f32 %9114, 1
  %9117 = extractvalue %dx.types.CBufRet.f32 %9114, 2
  %9118 = select i1 %9080, float %9115, float %9027
  %9119 = select i1 %9080, float %9116, float %9028
  %9120 = select i1 %9080, float %9117, float %9029
  %9121 = fadd fast float %9111, %9118
  %9122 = fadd fast float %9112, %9119
  %9123 = fadd fast float %9113, %9120
  %9124 = fmul fast float %9121, %9090
  %9125 = fmul fast float %9122, %9090
  %9126 = fmul fast float %9123, %9090
  %9127 = fmul fast float %9124, %9124
  %9128 = fmul fast float %9125, %9125
  %9129 = fadd fast float %9127, %9128
  %9130 = fmul fast float %9126, %9126
  %9131 = fadd fast float %9129, %9130
  %9132 = call float @dx.op.unary.f32(i32 24, float %9131)  ; Sqrt(value)
  %9133 = fsub fast float %9132, %9045
  %9134 = fmul fast float %9133, %9047
  %9135 = call float @dx.op.unary.f32(i32 7, float %9134)  ; Saturate(value)
  br label %9136

; <label>:9136                                    ; preds = %9061, %9057
  %9137 = phi float [ %9135, %9061 ], [ 1.000000e+00, %9057 ]
  %9138 = fmul fast float %9054, 5.000000e-01
  %9139 = fadd fast float %9138, 5.000000e-01
  %9140 = call float @dx.op.unary.f32(i32 22, float %9139)  ; Frc(value)
  %9141 = call float @dx.op.unary.f32(i32 27, float %9140)  ; Round_ni(value)
  %9142 = call float @dx.op.unary.f32(i32 22, float %9140)  ; Frc(value)
  %9143 = fmul fast float %9142, 2.000000e+00
  %9144 = fadd fast float %9143, -1.000000e+00
  %9145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9006, float %9007, float %9141, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9146 = extractvalue %dx.types.ResRet.f32 %9145, 0
  %9147 = extractvalue %dx.types.ResRet.f32 %9145, 1
  %9148 = extractvalue %dx.types.ResRet.f32 %9145, 2
  %9149 = extractvalue %dx.types.ResRet.f32 %9145, 3
  %9150 = fadd fast float %9146, -5.000000e-01
  %9151 = fadd fast float %9148, -5.000000e-01
  %9152 = fmul fast float %9150, 0xBFD5555560000000
  %9153 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9151, float %9152)  ; FMad(a,b,c)
  %9154 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9147, float 0.000000e+00)  ; FMad(a,b,c)
  %9155 = fadd fast float %9154, %9149
  %9156 = fmul fast float %9150, -7.500000e-01
  %9157 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9151, float %9156)  ; FMad(a,b,c)
  %9158 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9147, float 0.000000e+00)  ; FMad(a,b,c)
  %9159 = fadd fast float %9158, %9149
  %9160 = call float @dx.op.binary.f32(i32 35, float %9153, float -1.000000e+00)  ; FMax(a,b)
  %9161 = call float @dx.op.binary.f32(i32 35, float %9155, float -1.000000e+00)  ; FMax(a,b)
  %9162 = call float @dx.op.binary.f32(i32 35, float %9157, float -1.000000e+00)  ; FMax(a,b)
  %9163 = call float @dx.op.binary.f32(i32 35, float %9159, float -1.000000e+00)  ; FMax(a,b)
  %9164 = call float @dx.op.binary.f32(i32 36, float %9160, float 1.000000e+00)  ; FMin(a,b)
  %9165 = call float @dx.op.binary.f32(i32 36, float %9161, float 1.000000e+00)  ; FMin(a,b)
  %9166 = call float @dx.op.binary.f32(i32 36, float %9162, float 1.000000e+00)  ; FMin(a,b)
  %9167 = call float @dx.op.binary.f32(i32 36, float %9163, float 1.000000e+00)  ; FMin(a,b)
  %9168 = fcmp fast olt float %9164, 0x3FEFFF8020000000
  br i1 %9168, label %9169, label %9284, !dx.controlflow.hints !180

; <label>:9169                                    ; preds = %9136
  %9170 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 0
  %9173 = extractvalue %dx.types.CBufRet.f32 %9171, 1
  %9174 = extractvalue %dx.types.CBufRet.f32 %9171, 2
  %9175 = extractvalue %dx.types.CBufRet.f32 %9171, 3
  %9176 = fsub fast float %9172, %9164
  %9177 = fsub fast float %9173, %9165
  %9178 = fsub fast float %9174, %9166
  %9179 = fsub fast float %9175, %9167
  %9180 = fmul fast float %9176, %9170
  %9181 = fmul fast float %9177, %9170
  %9182 = fmul fast float %9178, %9170
  %9183 = fmul fast float %9179, %9170
  %9184 = fadd fast float %9180, %9164
  %9185 = fadd fast float %9181, %9165
  %9186 = fsub fast float -0.000000e+00, %9185
  %9187 = fadd fast float %9182, %9166
  %9188 = fadd fast float %9183, %9167
  %9189 = fmul fast float %9184, %9184
  %9190 = fsub fast float %9185, %9189
  %9191 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9190)  ; FMax(a,b)
  %9192 = fdiv fast float 1.000000e+00, %9191
  %9193 = fmul fast float %9185, %9184
  %9194 = fsub fast float %9187, %9193
  %9195 = fsub fast float %9144, %9184
  %9196 = fmul fast float %9144, %9144
  %9197 = fsub fast float %9196, %9185
  %9198 = fmul fast float %9195, %9192
  %9199 = fmul fast float %9198, %9194
  %9200 = fsub fast float %9197, %9199
  %9201 = fmul fast float %9185, %9185
  %9202 = fsub fast float %9188, %9201
  %9203 = fmul fast float %9194, %9194
  %9204 = fmul fast float %9203, %9192
  %9205 = fsub fast float %9202, %9204
  %9206 = fdiv fast float %9200, %9205
  %9207 = fmul fast float %9194, %9206
  %9208 = fsub fast float %9195, %9207
  %9209 = fmul fast float %9208, %9192
  %9210 = fmul fast float %9209, %9184
  %9211 = fsub fast float 1.000000e+00, %9210
  %9212 = fmul fast float %9185, %9206
  %9213 = fsub fast float %9211, %9212
  %9214 = fmul fast float %9209, %9209
  %9215 = fmul fast float %9206, 4.000000e+00
  %9216 = fmul fast float %9215, %9213
  %9217 = fsub fast float %9214, %9216
  %9218 = call float @dx.op.unary.f32(i32 24, float %9217)  ; Sqrt(value)
  %9219 = fcmp fast oge float %9209, 0.000000e+00
  %9220 = fsub fast float -0.000000e+00, %9218
  %9221 = select i1 %9219, float %9220, float %9218
  %9222 = fsub fast float %9221, %9209
  %9223 = fdiv fast float %9222, %9206
  %9224 = fdiv fast float %9213, %9222
  %9225 = fmul fast float %9223, 5.000000e-01
  %9226 = fmul fast float %9224, 2.000000e+00
  %9227 = select i1 %9219, float %9225, float %9226
  %9228 = select i1 %9219, float %9226, float %9225
  %9229 = call float @dx.op.binary.f32(i32 35, float %9227, float %9228)  ; FMax(a,b)
  %9230 = call float @dx.op.binary.f32(i32 36, float %9227, float %9228)  ; FMin(a,b)
  %9231 = fcmp fast ogt float %9144, %9230
  br i1 %9231, label %9232, label %9242

; <label>:9232                                    ; preds = %9169
  %9233 = fsub fast float %9144, %9230
  %9234 = fsub fast float %9229, %9230
  %9235 = fmul fast float %9233, %9234
  %9236 = fmul fast float %9229, %9144
  %9237 = fadd fast float %9229, %9144
  %9238 = fmul fast float %9237, %9184
  %9239 = fadd fast float %9236, %9185
  %9240 = fsub fast float %9239, %9238
  %9241 = fdiv fast float %9240, %9235
  br label %9242

; <label>:9242                                    ; preds = %9232, %9169
  %9243 = phi float [ %9241, %9232 ], [ 0.000000e+00, %9169 ]
  %9244 = fcmp fast ogt float %9144, %9229
  %9245 = fsub fast float %9144, %9229
  br i1 %9244, label %9246, label %9256

; <label>:9246                                    ; preds = %9242
  %9247 = fsub fast float %9229, %9230
  %9248 = fmul fast float %9247, %9245
  %9249 = fmul fast float %9230, %9144
  %9250 = fadd fast float %9230, %9144
  %9251 = fmul fast float %9250, %9184
  %9252 = fsub fast float %9186, %9249
  %9253 = fadd fast float %9252, %9251
  %9254 = fdiv fast float %9253, %9248
  %9255 = fadd fast float %9254, %9243
  br label %9256

; <label>:9256                                    ; preds = %9246, %9242
  %9257 = phi float [ %9255, %9246 ], [ %9243, %9242 ]
  %9258 = fsub fast float %9144, %9230
  %9259 = fmul fast float %9258, %9245
  %9260 = fmul fast float %9230, %9229
  %9261 = fadd fast float %9230, %9229
  %9262 = fmul fast float %9261, %9184
  %9263 = fadd fast float %9260, %9185
  %9264 = fsub fast float %9263, %9262
  %9265 = fdiv fast float %9264, %9259
  %9266 = call float @dx.op.unary.f32(i32 7, float %9257)  ; Saturate(value)
  %9267 = fcmp fast oeq float %7935, 0.000000e+00
  %9268 = extractvalue %dx.types.CBufRet.f32 %9052, 0
  %9269 = fcmp fast oeq float %9268, 0.000000e+00
  %9270 = or i1 %9267, %9269
  %9271 = fmul fast float %9268, 2.000000e+00
  %9272 = fadd fast float %9053, %9054
  %9273 = fdiv fast float %9272, %9271
  %9274 = call float @dx.op.unary.f32(i32 7, float %9273)  ; Saturate(value)
  %9275 = fmul fast float %9274, 2.000000e+00
  %9276 = fsub fast float 3.000000e+00, %9275
  %9277 = fmul fast float %9274, %9274
  %9278 = fmul fast float %9277, %9276
  %9279 = select i1 %9270, float 1.000000e+00, float %9278
  %9280 = fmul fast float %9265, %7935
  %9281 = fadd fast float %9266, %9280
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = fmul fast float %9279, %9282
  br label %9284

; <label>:9284                                    ; preds = %9256, %9136
  %9285 = phi float [ %9283, %9256 ], [ 0.000000e+00, %9136 ]
  %9286 = fsub fast float 1.000000e+00, %9285
  %9287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9006, float %9007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9288 = extractvalue %dx.types.ResRet.f32 %9287, 0
  %9289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.i32 %9289, 2
  %9291 = icmp eq i32 %9290, 0
  br i1 %9291, label %9297, label %9292

; <label>:9292                                    ; preds = %9284
  %9293 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9294 = fadd fast float %9288, -1.000000e+00
  %9295 = fmul fast float %9293, %9294
  %9296 = fadd fast float %9295, 1.000000e+00
  br label %9297

; <label>:9297                                    ; preds = %9292, %9284
  %9298 = phi float [ %9296, %9292 ], [ %9286, %9284 ]
  br i1 %9060, label %9299, label %9317

; <label>:9299                                    ; preds = %9297
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9302 = fsub fast float %9137, %9301
  %9303 = call float @dx.op.unary.f32(i32 7, float %9302)  ; Saturate(value)
  %9304 = fsub fast float %9137, %9059
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fsub fast float %9303, %9305
  %9307 = fsub fast float %9139, %9305
  %9308 = fdiv fast float %9307, %9306
  %9309 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9310 = fmul fast float %9309, 2.000000e+00
  %9311 = fsub fast float 3.000000e+00, %9310
  %9312 = fsub fast float %9288, %9298
  %9313 = fmul fast float %9309, %9309
  %9314 = fmul fast float %9313, %9312
  %9315 = fmul fast float %9314, %9311
  %9316 = fadd fast float %9315, %9298
  br label %9317

; <label>:9317                                    ; preds = %9299, %9297
  %9318 = phi float [ %9316, %9299 ], [ %9298, %9297 ]
  %9319 = call float @dx.op.binary.f32(i32 35, float %9288, float %9318)  ; FMax(a,b)
  %9320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.i32 %9320, 2
  %9322 = and i32 %9321, 1
  %9323 = icmp eq i32 %9322, 0
  %9324 = fcmp fast une float %9319, 1.000000e+00
  %9325 = and i1 %9324, %9323
  br i1 %9325, label %9326, label %9345

; <label>:9326                                    ; preds = %9317
  %9327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9006, float %9007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9328 = extractvalue %dx.types.ResRet.f32 %9327, 0
  %9329 = extractvalue %dx.types.ResRet.f32 %9327, 1
  %9330 = extractvalue %dx.types.ResRet.f32 %9327, 2
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 1
  %9333 = fmul fast float %9332, %9328
  %9334 = fmul fast float %9332, %9329
  %9335 = fmul fast float %9332, %9330
  %9336 = fcmp fast ogt float %9288, 0x3FEFFF2E40000000
  %9337 = fsub fast float 1.000000e+00, %9319
  %9338 = fsub fast float 1.000000e+00, %9288
  %9339 = fdiv fast float %9337, %9338
  %9340 = call float @dx.op.unary.f32(i32 7, float %9339)  ; Saturate(value)
  %9341 = select i1 %9336, float 0.000000e+00, float %9340
  %9342 = fmul fast float %9333, %9341
  %9343 = fmul fast float %9334, %9341
  %9344 = fmul fast float %9335, %9341
  br label %9345

; <label>:9345                                    ; preds = %9326, %9317
  %9346 = phi float [ 0.000000e+00, %9317 ], [ %9342, %9326 ]
  %9347 = phi float [ 0.000000e+00, %9317 ], [ %9343, %9326 ]
  %9348 = phi float [ 0.000000e+00, %9317 ], [ %9344, %9326 ]
  %9349 = fmul fast float %9346, %7923
  %9350 = fmul fast float %9347, %7923
  %9351 = fmul fast float %9348, %7923
  %9352 = fmul fast float %9319, %8981
  %9353 = call float @dx.op.dot3.f32(i32 55, float %9319, float %9319, float %9319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9354 = call float @dx.op.dot3.f32(i32 55, float %9349, float %9350, float %9351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9355 = select i1 %230, float %9353, float %9319
  %9356 = select i1 %230, float 1.000000e+00, float %9319
  %9357 = select i1 %230, float %9354, float %9349
  %9358 = select i1 %230, float 0.000000e+00, float %9350
  %9359 = select i1 %230, float 0.000000e+00, float %9351
  %9360 = fmul fast float %9355, %8993
  %9361 = fmul fast float %9355, %8994
  %9362 = fmul fast float %9356, %8995
  %9363 = fadd fast float %9360, %9357
  %9364 = fadd fast float %9361, %9358
  %9365 = fadd fast float %9359, %9362
  %9366 = fmul fast float %9355, %8996
  %9367 = fmul fast float %9355, %8997
  %9368 = fmul fast float %9356, %8998
  br label %9369

; <label>:9369                                    ; preds = %9345, %9002, %8971, %8203
  %9370 = phi float [ %8208, %8203 ], [ %8993, %8971 ], [ %9363, %9345 ], [ %8993, %9002 ]
  %9371 = phi float [ %8209, %8203 ], [ %8994, %8971 ], [ %9364, %9345 ], [ %8994, %9002 ]
  %9372 = phi float [ %8210, %8203 ], [ %8995, %8971 ], [ %9365, %9345 ], [ %8995, %9002 ]
  %9373 = phi float [ %8211, %8203 ], [ %8996, %8971 ], [ %9366, %9345 ], [ %8996, %9002 ]
  %9374 = phi float [ %8212, %8203 ], [ %8997, %8971 ], [ %9367, %9345 ], [ %8997, %9002 ]
  %9375 = phi float [ %8213, %8203 ], [ %8998, %8971 ], [ %9368, %9345 ], [ %8998, %9002 ]
  %9376 = phi float [ %8214, %8203 ], [ %8981, %8971 ], [ %9352, %9345 ], [ %8981, %9002 ]
  %9377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9377, 2
  %9379 = extractvalue %dx.types.CBufRet.f32 %9377, 3
  %9380 = fmul fast float %9378, %105
  %9381 = fmul fast float %9379, %106
  %9382 = call float @dx.op.unary.f32(i32 7, float %9380)  ; Saturate(value)
  %9383 = call float @dx.op.unary.f32(i32 7, float %9381)  ; Saturate(value)
  %9384 = select i1 %7945, i32 2, i32 0
  %9385 = or i32 %9384, 1
  %9386 = uitofp i32 %9385 to float
  %9387 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9382, float %9383, float %9386, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9388 = extractvalue %dx.types.ResRet.f32 %9387, 0
  %9389 = extractvalue %dx.types.ResRet.f32 %9387, 1
  %9390 = extractvalue %dx.types.ResRet.f32 %9387, 2
  %9391 = extractvalue %dx.types.ResRet.f32 %9387, 3
  %9392 = add nuw nsw i32 %9384, 2
  %9393 = uitofp i32 %9392 to float
  %9394 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9382, float %9383, float %9393, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9395 = extractvalue %dx.types.ResRet.f32 %9394, 0
  %9396 = extractvalue %dx.types.ResRet.f32 %9394, 1
  %9397 = extractvalue %dx.types.ResRet.f32 %9394, 2
  %9398 = extractvalue %dx.types.ResRet.f32 %9394, 3
  %9399 = call float @dx.op.binary.f32(i32 35, float %9389, float %9390)  ; FMax(a,b)
  %9400 = call float @dx.op.binary.f32(i32 35, float %9388, float %9399)  ; FMax(a,b)
  %9401 = call float @dx.op.binary.f32(i32 35, float %9400, float %9391)  ; FMax(a,b)
  %9402 = call float @dx.op.binary.f32(i32 36, float %9396, float %9397)  ; FMin(a,b)
  %9403 = call float @dx.op.binary.f32(i32 36, float %9395, float %9402)  ; FMin(a,b)
  %9404 = call float @dx.op.binary.f32(i32 36, float %9403, float %9398)  ; FMin(a,b)
  %9405 = fmul fast float %9401, 2.550000e+02
  %9406 = fadd fast float %9405, 0x3F70101020000000
  %9407 = fptoui float %9406 to i32
  %9408 = fmul fast float %9404, 2.550000e+02
  %9409 = fadd fast float %9408, 0x3F70101020000000
  %9410 = fptoui float %9409 to i32
  %9411 = icmp ult i32 %9407, %9410
  br i1 %9411, label %9412, label %9581

; <label>:9412                                    ; preds = %9369
  %9413 = fcmp fast ogt float %92, 9.843750e-01
  %9414 = fadd fast float %8207, -4.000000e+00
  %9415 = select i1 %9413, float -4.000000e+00, float %9414
  %9416 = call float @dx.op.binary.f32(i32 35, float %9415, float 0.000000e+00)  ; FMax(a,b)
  %9417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9417, 0
  %9419 = fadd fast float %9418, %9416
  %9420 = extractvalue %dx.types.CBufRet.f32 %9417, 2
  %9421 = fmul fast float %9419, %9420
  %9422 = call float @dx.op.unary.f32(i32 23, float %9421)  ; Log(value)
  %9423 = extractvalue %dx.types.CBufRet.f32 %9417, 3
  %9424 = fmul fast float %9423, %9422
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 2
  %9427 = fmul fast float %9424, %9426
  %9428 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  %9429 = uitofp i32 %9407 to float
  %9430 = uitofp i32 %9410 to float
  %9431 = fadd fast float %9429, 5.000000e-01
  %9432 = fadd fast float %9430, 5.000000e-01
  %9433 = fmul fast float %9426, %9431
  %9434 = fmul fast float %9426, %9432
  %9435 = fadd fast float %9433, 0x3F0FFB4800000000
  %9436 = fadd fast float %9434, 0xBF0FFB4800000000
  %9437 = call float @dx.op.binary.f32(i32 35, float %9428, float %9435)  ; FMax(a,b)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9437, float %9436)  ; FMin(a,b)
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 1
  %9441 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9442 = extractvalue %dx.types.CBufRet.f32 %9439, 0
  %9443 = select i1 %7945, float %9442, float 0.000000e+00
  %9444 = fmul fast float %9440, %9438
  %9445 = fadd fast float %9443, %9444
  %9446 = fadd fast float %9443, %9441
  %9447 = fsub fast float %9440, %9441
  %9448 = fadd fast float %9447, %9443
  %9449 = call float @dx.op.binary.f32(i32 35, float %9445, float %9446)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9449, float %9448)  ; FMin(a,b)
  %9451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9382, float %9383, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9452 = extractvalue %dx.types.ResRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.ResRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.ResRet.f32 %9451, 2
  %9455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.i32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.i32 %9455, 1
  %9458 = uitofp i32 %9456 to float
  %9459 = uitofp i32 %9457 to float
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 0
  %9462 = extractvalue %dx.types.CBufRet.f32 %9460, 1
  %9463 = fmul fast float %9458, %9382
  %9464 = fmul fast float %9459, %9383
  %9465 = fadd fast float %9463, -5.000000e-01
  %9466 = fadd fast float %9464, -5.000000e-01
  %9467 = call float @dx.op.unary.f32(i32 22, float %9465)  ; Frc(value)
  %9468 = call float @dx.op.unary.f32(i32 22, float %9466)  ; Frc(value)
  %9469 = fmul fast float %9467, %9467
  %9470 = fmul fast float %9469, %9467
  %9471 = fsub fast float 3.000000e+00, %9467
  %9472 = fmul fast float %9469, %9471
  %9473 = fmul fast float %9467, 3.000000e+00
  %9474 = fmul fast float %9470, 3.000000e+00
  %9475 = fmul fast float %9469, 6.000000e+00
  %9476 = fsub fast float %9474, %9475
  %9477 = fadd fast float %9476, 4.000000e+00
  %9478 = fmul fast float %9477, 0x3FC5555560000000
  %9479 = fmul fast float %9470, -3.000000e+00
  %9480 = fadd fast float %9469, %9467
  %9481 = fmul fast float %9480, 3.000000e+00
  %9482 = fadd fast float %9479, 1.000000e+00
  %9483 = fadd fast float %9482, %9481
  %9484 = fmul fast float %9470, 0x3FC5555560000000
  %9485 = fmul fast float %9468, %9468
  %9486 = fmul fast float %9485, %9468
  %9487 = fsub fast float 3.000000e+00, %9468
  %9488 = fmul fast float %9485, %9487
  %9489 = fmul fast float %9468, 3.000000e+00
  %9490 = fmul fast float %9486, 3.000000e+00
  %9491 = fmul fast float %9485, 6.000000e+00
  %9492 = fsub fast float %9490, %9491
  %9493 = fadd fast float %9492, 4.000000e+00
  %9494 = fmul fast float %9493, 0x3FC5555560000000
  %9495 = fmul fast float %9486, -3.000000e+00
  %9496 = fadd fast float %9485, %9468
  %9497 = fmul fast float %9496, 3.000000e+00
  %9498 = fadd fast float %9495, 1.000000e+00
  %9499 = fadd fast float %9498, %9497
  %9500 = fmul fast float %9486, 0x3FC5555560000000
  %9501 = fadd fast float %9467, 1.000000e+00
  %9502 = fsub fast float 1.000000e+00, %9473
  %9503 = fadd fast float %9502, %9472
  %9504 = fadd fast float %9503, %9477
  %9505 = fmul fast float %9504, 0x3FC5555560000000
  %9506 = fdiv fast float %9478, %9505
  %9507 = fsub fast float %9501, %9506
  %9508 = fsub fast float 1.000000e+00, %9467
  %9509 = fadd fast float %9483, %9470
  %9510 = fmul fast float %9509, 0x3FC5555560000000
  %9511 = fdiv fast float %9484, %9510
  %9512 = fadd fast float %9508, %9511
  %9513 = fadd fast float %9468, 1.000000e+00
  %9514 = fsub fast float 1.000000e+00, %9489
  %9515 = fadd fast float %9514, %9488
  %9516 = fadd fast float %9515, %9493
  %9517 = fmul fast float %9516, 0x3FC5555560000000
  %9518 = fdiv fast float %9494, %9517
  %9519 = fsub fast float %9513, %9518
  %9520 = fsub fast float 1.000000e+00, %9468
  %9521 = fadd fast float %9499, %9486
  %9522 = fmul fast float %9521, 0x3FC5555560000000
  %9523 = fdiv fast float %9500, %9522
  %9524 = fadd fast float %9523, %9520
  %9525 = fmul fast float %9507, %9461
  %9526 = fsub fast float %9382, %9525
  %9527 = fmul fast float %9512, %9461
  %9528 = fadd fast float %9527, %9382
  %9529 = fmul fast float %9524, %9462
  %9530 = fadd fast float %9529, %9383
  %9531 = fmul fast float %9519, %9462
  %9532 = fsub fast float %9383, %9531
  %9533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9526, float %9532, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9534 = extractvalue %dx.types.ResRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.ResRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.ResRet.f32 %9533, 2
  %9537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9528, float %9532, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9538 = extractvalue %dx.types.ResRet.f32 %9537, 0
  %9539 = extractvalue %dx.types.ResRet.f32 %9537, 1
  %9540 = extractvalue %dx.types.ResRet.f32 %9537, 2
  %9541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9526, float %9530, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9542 = extractvalue %dx.types.ResRet.f32 %9541, 0
  %9543 = extractvalue %dx.types.ResRet.f32 %9541, 1
  %9544 = extractvalue %dx.types.ResRet.f32 %9541, 2
  %9545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9528, float %9530, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9546 = extractvalue %dx.types.ResRet.f32 %9545, 0
  %9547 = extractvalue %dx.types.ResRet.f32 %9545, 1
  %9548 = extractvalue %dx.types.ResRet.f32 %9545, 2
  %9549 = fsub fast float %9542, %9534
  %9550 = fsub fast float %9543, %9535
  %9551 = fsub fast float %9544, %9536
  %9552 = fmul fast float %9549, %9522
  %9553 = fmul fast float %9550, %9522
  %9554 = fmul fast float %9551, %9522
  %9555 = fadd fast float %9552, %9534
  %9556 = fadd fast float %9553, %9535
  %9557 = fadd fast float %9554, %9536
  %9558 = fsub fast float %9546, %9538
  %9559 = fsub fast float %9547, %9539
  %9560 = fsub fast float %9548, %9540
  %9561 = fmul fast float %9558, %9522
  %9562 = fmul fast float %9559, %9522
  %9563 = fmul fast float %9560, %9522
  %9564 = fsub fast float %9538, %9555
  %9565 = fadd fast float %9564, %9561
  %9566 = fsub fast float %9539, %9556
  %9567 = fadd fast float %9566, %9562
  %9568 = fsub fast float %9540, %9557
  %9569 = fadd fast float %9568, %9563
  %9570 = fmul fast float %9565, %9510
  %9571 = fmul fast float %9567, %9510
  %9572 = fmul fast float %9569, %9510
  %9573 = fadd fast float %9570, %9555
  %9574 = fadd fast float %9571, %9556
  %9575 = fadd fast float %9572, %9557
  %9576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.f32 %9576, 1
  %9578 = fmul fast float %9573, %9577
  %9579 = fmul fast float %9574, %9577
  %9580 = fmul fast float %9575, %9577
  br label %9581

; <label>:9581                                    ; preds = %9412, %9369
  %9582 = phi float [ %9452, %9412 ], [ 1.000000e+00, %9369 ]
  %9583 = phi float [ %9453, %9412 ], [ 1.000000e+00, %9369 ]
  %9584 = phi float [ %9454, %9412 ], [ 1.000000e+00, %9369 ]
  %9585 = phi float [ %9578, %9412 ], [ 0.000000e+00, %9369 ]
  %9586 = phi float [ %9579, %9412 ], [ 0.000000e+00, %9369 ]
  %9587 = phi float [ %9580, %9412 ], [ 0.000000e+00, %9369 ]
  %9588 = fmul fast float %9585, %7923
  %9589 = fmul fast float %9586, %7923
  %9590 = fmul fast float %9587, %7923
  %9591 = fmul fast float %9582, %9376
  %9592 = call float @dx.op.dot3.f32(i32 55, float %9582, float %9583, float %9584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9593 = call float @dx.op.dot3.f32(i32 55, float %9588, float %9589, float %9590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9594 = select i1 %230, float %9592, float %9582
  %9595 = select i1 %230, float %9592, float %9583
  %9596 = select i1 %230, float 1.000000e+00, float %9584
  %9597 = select i1 %230, float %9593, float %9588
  %9598 = select i1 %230, float 0.000000e+00, float %9589
  %9599 = select i1 %230, float 0.000000e+00, float %9590
  %9600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9601 = extractvalue %dx.types.CBufRet.i32 %9600, 3
  %9602 = and i32 %9601, 3
  %9603 = icmp ne i32 %9602, 0
  %9604 = and i32 %9601, 4
  %9605 = icmp ne i32 %9604, 0
  %9606 = and i1 %9603, %9605
  %9607 = and i1 %230, %9606
  br i1 %9607, label %9608, label %9614

; <label>:9608                                    ; preds = %9581
  %9609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.f32 %9609, 1
  %9611 = fadd fast float %9591, -1.000000e+00
  %9612 = fmul fast float %9610, %9611
  %9613 = fadd fast float %9612, 1.000000e+00
  br label %9614

; <label>:9614                                    ; preds = %9608, %9581
  %9615 = phi float [ %9613, %9608 ], [ %9591, %9581 ]
  %9616 = fadd fast float %9373, %9370
  %9617 = fmul fast float %9594, %9616
  %9618 = fadd fast float %9617, %9597
  %9619 = fadd fast float %9374, %9371
  %9620 = fmul fast float %9595, %9619
  %9621 = fadd fast float %9620, %9598
  %9622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.f32 %9622, 0
  br i1 %230, label %9624, label %9647

; <label>:9624                                    ; preds = %9614
  %9625 = fadd fast float %9618, %9621
  %9626 = fmul fast float %9623, %9625
  %9627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9628 = extractvalue %dx.types.CBufRet.f32 %9627, 3
  %9629 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %9630 = fsub fast float %7932, %7926
  %9631 = fadd fast float %9630, %7933
  %9632 = fsub fast float %9631, %9629
  %9633 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %9634 = fmul fast float %9632, %9633
  %9635 = call float @dx.op.unary.f32(i32 7, float %9634)  ; Saturate(value)
  %9636 = fsub fast float %9635, %9628
  %9637 = fmul fast float %9636, %9615
  %9638 = fadd fast float %9637, %9628
  %9639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9639, 0
  %9641 = fsub fast float %9638, %9640
  %9642 = fmul fast float %9641, 1.000000e+01
  %9643 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9644 = fmul fast float %9643, %7922
  %9645 = fadd fast float %9644, %7923
  %9646 = fmul fast float %9645, %9638
  br label %9671

; <label>:9647                                    ; preds = %9614
  %9648 = fadd fast float %9375, %9372
  %9649 = fmul fast float %9596, %9648
  %9650 = fadd fast float %9649, %9599
  %9651 = fmul fast float %9623, %9618
  %9652 = fmul fast float %9623, %9621
  %9653 = fmul fast float %9623, %9650
  %9654 = call float @dx.op.binary.f32(i32 35, float %9652, float %9653)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 35, float %9651, float %9654)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 35, float %9655, float %7923)  ; FMax(a,b)
  %9657 = fcmp fast ugt float %9656, 0x3F10000000000000
  br i1 %9657, label %9659, label %9658

; <label>:9658                                    ; preds = %9647
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9659

; <label>:9659                                    ; preds = %9658, %9647
  %9660 = add i32 %61, 356
  %9661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9660, i32 undef)  ; BufferLoad(srv,index,wot)
  %9662 = extractvalue %dx.types.ResRet.i32 %9661, 0
  %9663 = and i32 %9662, 32
  %9664 = icmp eq i32 %9663, 0
  br i1 %9664, label %9671, label %9665

; <label>:9665                                    ; preds = %9659
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9668 = fmul fast float %9667, 0x3FE99999A0000000
  %9669 = fadd fast float %9667, %9651
  %9670 = fadd fast float %9668, %9653
  br label %9671

; <label>:9671                                    ; preds = %9665, %9659, %9624
  %9672 = phi float [ %9626, %9624 ], [ %9669, %9665 ], [ %9651, %9659 ]
  %9673 = phi float [ %9646, %9624 ], [ %9652, %9665 ], [ %9652, %9659 ]
  %9674 = phi float [ %9645, %9624 ], [ %9670, %9665 ], [ %9653, %9659 ]
  %9675 = phi float [ %9645, %9624 ], [ %7923, %9665 ], [ %7923, %9659 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9672, float 3.225500e+04)  ; FMin(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9673, float 3.225500e+04)  ; FMin(a,b)
  %9678 = call float @dx.op.binary.f32(i32 36, float %9674, float 3.225500e+04)  ; FMin(a,b)
  %9679 = call float @dx.op.binary.f32(i32 36, float %9675, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9676)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !67}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
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
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 29, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !37}
!37 = !{i32 0, i32 5}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!44 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !49}
!49 = !{i32 0, i32 14}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!61 = !{i32 52, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !49}
!62 = !{i32 53, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!64 = !{!65, !66}
!65 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!66 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !97}
!77 = !{!78, !95, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !91, !92, !94}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!88 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 5, i8 0, !86}
!89 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!90 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 7, i8 0, !84}
!91 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 8, i8 0, !81}
!92 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 9, i8 0, !93}
!93 = !{i32 3, i32 13}
!94 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !108, i64 0}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = !{!135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!135 = distinct !{!135, !136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!136 = distinct !{!136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!137 = distinct !{!137, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!138 = distinct !{!138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!139 = distinct !{!139, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!149 = distinct !{!149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!158 = !{!154}
!159 = !{!155, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?sort@@YAXAIAM00@Z: %c"}
!162 = distinct !{!162, !"\01?sort@@YAXAIAM00@Z"}
!163 = !{!164, !165, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!164 = distinct !{!164, !162, !"\01?sort@@YAXAIAM00@Z: %a"}
!165 = distinct !{!165, !162, !"\01?sort@@YAXAIAM00@Z: %b"}
!166 = !{!165}
!167 = !{!164, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!168 = !{!164}
!169 = !{!165, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 2}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}

