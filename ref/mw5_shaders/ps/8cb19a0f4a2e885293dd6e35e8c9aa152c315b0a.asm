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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
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
; shader hash: 840d7d1999daa1ab4a361ded9fcb9fc0
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
; Number of inputs: 48, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %95
  %111 = fmul fast float %109, %96
  %112 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %113 = bitcast float %112 to i32
  %114 = ashr i32 %113, 1
  %115 = sub nsw i32 1597250115, %114
  %116 = bitcast i32 %115 to float
  %117 = fmul fast float %116, %86
  %118 = fmul fast float %116, %87
  %119 = fmul fast float %116, %88
  %120 = fmul fast float %87, %84
  %121 = fmul fast float %88, %83
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %88, %82
  %124 = fmul fast float %86, %84
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %86, %83
  %127 = fmul fast float %87, %82
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %122, %85
  %130 = fmul fast float %125, %85
  %131 = fmul fast float %128, %85
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %110, 2.000000e+00
  %136 = fmul fast float %135, %133
  %137 = fmul fast float %111, 2.000000e+00
  %138 = fmul fast float %137, %134
  %139 = fsub fast float 1.000000e+00, %136
  %140 = fsub fast float 1.000000e+00, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %139, %142
  %146 = fmul fast float %139, %143
  %147 = fmul fast float %139, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %140, %149
  %153 = fmul fast float %140, %150
  %154 = fmul fast float %140, %151
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fadd fast float %152, %156
  %160 = fadd fast float %159, %145
  %161 = fadd fast float %153, %157
  %162 = fadd fast float %161, %146
  %163 = fadd fast float %154, %158
  %164 = fadd fast float %163, %147
  %165 = fmul fast float %160, %98
  %166 = fmul fast float %162, %98
  %167 = fmul fast float %164, %98
  %168 = fmul fast float %110, 5.000000e-01
  %169 = fmul fast float %111, 5.000000e-01
  %170 = fptosi float %168 to i32
  %171 = fptosi float %169 to i32
  %172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %170, i32 %171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = lshr i32 %173, 18
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F4C00EBA0000000
  %177 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %178 = fadd fast float %177, -1.000000e+00
  %179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %180 = extractvalue %dx.types.Dimensions %179, 0
  %181 = sitofp i32 %180 to float
  %182 = extractvalue %dx.types.Dimensions %179, 1
  %183 = sitofp i32 %182 to float
  %184 = fcmp fast oge float %168, %181
  %185 = fcmp fast oge float %169, %183
  %186 = or i1 %184, %185
  %187 = select i1 %186, float 0x4197782600000000, float %178
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %191 = fmul fast float %189, %110
  %192 = fmul fast float %190, %111
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = and i32 %194, 114688
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %196, float %191, float 0.000000e+00
  %198 = select i1 %196, float %192, float 0.000000e+00
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fmul fast float %200, 2.550000e+02
  %202 = fptoui float %201 to i32
  %203 = select i1 %196, i32 %202, i32 0
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.i32 %205, 3
  %207 = and i32 %206, 3
  %208 = icmp ne i32 %207, 0
  %209 = and i32 %206, 4
  %210 = icmp ne i32 %209, 0
  %211 = and i1 %208, %210
  br i1 %211, label %212, label %223

; <label>:212                                     ; preds = %0
  %213 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %214 = fmul fast float %213, %111
  %215 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %216 = fmul fast float %215, %110
  %217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %216, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = fsub fast float 1.000000e+00, %218
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = fcmp fast olt float %219, %221
  br label %226

; <label>:223                                     ; preds = %0
  %224 = icmp eq i32 %209, 0
  %225 = and i1 %208, %224
  br label %226

; <label>:226                                     ; preds = %223, %212
  %227 = phi i1 [ %222, %212 ], [ %225, %223 ]
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = fmul fast float %229, 0x3FE3C6EF40000000
  %231 = frem fast float %110, 2.560000e+02
  %232 = frem fast float %111, 2.560000e+02
  %233 = fptoui float %231 to i32
  %234 = fptoui float %232 to i32
  %235 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %233, i32 %234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fadd fast float %236, %230
  %238 = call float @dx.op.unary.f32(i32 22, float %237)  ; Frc(value)
  %239 = add i32 %60, 156
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = shl i32 %241, 4
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %241, 7
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %241, 22
  %249 = shl nuw nsw i32 %248, 5
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %60, 216
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %253, 8
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %253, 16
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = add i32 %60, 36
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %60, 288
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %274, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = fmul fast float %276, 0x3F50624DE0000000
  %280 = fmul fast float %278, 0x3F50624DE0000000
  %281 = add i32 %60, 172
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %60, 232
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %60, 52
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %60, 304
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %60, 188
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %60, 248
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %60, 68
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %60, 320
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %360, 0x3F50624DE0000000
  %364 = fmul fast float %362, 0x3F50624DE0000000
  %365 = add i32 %60, 204
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %367, 22
  %375 = shl nuw nsw i32 %374, 5
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %60, 264
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %379, 8
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %379, 16
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = add i32 %60, 84
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = add i32 %60, 336
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fmul fast float %402, 0x3F50624DE0000000
  %406 = fmul fast float %404, 0x3F50624DE0000000
  %407 = add i32 %60, 348
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 32
  %411 = icmp eq i32 %410, 0
  %412 = and i32 %409, 64
  %413 = icmp eq i32 %412, 0
  %414 = and i32 %409, 128
  %415 = icmp eq i32 %414, 0
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %435, label %420

; <label>:420                                     ; preds = %226
  %421 = add i32 %60, 520
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, 0
  %425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %425, %dx.types.Handle %107, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = fmul fast float %430, %91
  %432 = fmul fast float %427, %92
  %433 = fmul fast float %428, %93
  %434 = fmul fast float %429, %94
  br label %435

; <label>:435                                     ; preds = %420, %226
  %436 = phi float [ %94, %226 ], [ %434, %420 ]
  %437 = phi float [ %93, %226 ], [ %433, %420 ]
  %438 = phi float [ %92, %226 ], [ %432, %420 ]
  %439 = phi float [ %91, %226 ], [ %431, %420 ]
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 2
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %463, label %444

; <label>:444                                     ; preds = %435
  %445 = add i32 %60, 44
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 1
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %438, float 1.000000e+00
  %451 = add i32 %60, 60
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 1
  %455 = icmp ne i32 %454, 0
  %456 = select i1 %455, float %437, float 1.000000e+00
  %457 = add i32 %60, 76
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 1
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %461, float %436, float 1.000000e+00
  br label %463

; <label>:463                                     ; preds = %444, %435
  %464 = phi float [ %436, %435 ], [ %462, %444 ]
  %465 = phi float [ %437, %435 ], [ %456, %444 ]
  %466 = phi float [ %438, %435 ], [ %450, %444 ]
  %467 = lshr i32 %441, 20
  %468 = and i32 %467, 3
  %469 = add nuw nsw i32 %468, 1
  %470 = add i32 %60, 24
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = add i32 %60, 28
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = or i32 %475, %472
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %1238, label %478

; <label>:478                                     ; preds = %463
  %479 = and i32 %472, 262144
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %64, float 1.000000e+00
  %482 = select i1 %480, float %65, float 0.000000e+00
  %483 = select i1 %480, float %66, float 0.000000e+00
  %484 = select i1 %480, float %67, float 1.000000e+00
  %485 = select i1 %480, float %68, float %89
  %486 = select i1 %480, float %69, float %90
  %487 = add i32 %60, 284
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 16
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = fmul fast float %491, 0x3F50624DE0000000
  %493 = add i32 %60, 88
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 16
  %497 = and i32 %496, 255
  %498 = lshr i32 %495, 24
  %499 = add i32 %60, 292
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 65535
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %501, 16
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = add i32 %60, 32
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 22
  %510 = shl nuw nsw i32 %509, 5
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = shl i32 %508, 4
  %513 = and i32 %512, 32752
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = lshr i32 %508, 7
  %516 = and i32 %515, 32752
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %520 = fmul fast float %519, 1.000000e+03
  %521 = fmul fast float %279, %520
  %522 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %523 = fadd fast float %522, %269
  %524 = fmul fast float %280, %520
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = fadd fast float %525, %271
  %527 = fmul fast float %492, %520
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = fmul fast float %528, 0x401921FB60000000
  %530 = fadd fast float %529, %511
  %531 = call float @dx.op.unary.f32(i32 13, float %530)  ; Sin(value)
  %532 = call float @dx.op.unary.f32(i32 12, float %530)  ; Cos(value)
  %533 = fsub fast float -0.000000e+00, %531
  %534 = fadd fast float %485, -5.000000e-01
  %535 = fadd fast float %486, -5.000000e-01
  %536 = fmul fast float %503, %534
  %537 = fmul fast float %505, %535
  %538 = fadd fast float %536, 5.000000e-01
  %539 = fadd fast float %537, 5.000000e-01
  %540 = fmul fast float %514, %538
  %541 = fmul fast float %517, %539
  %542 = fmul fast float %532, %540
  %543 = call float @dx.op.tertiary.f32(i32 46, float %533, float %541, float %542)  ; FMad(a,b,c)
  %544 = fmul fast float %531, %540
  %545 = call float @dx.op.tertiary.f32(i32 46, float %532, float %541, float %544)  ; FMad(a,b,c)
  %546 = fadd fast float %523, %543
  %547 = fadd fast float %526, %545
  %548 = icmp ugt i32 %497, 1
  %549 = icmp ugt i32 %495, 33554431
  %550 = or i1 %549, %548
  br i1 %550, label %551, label %576

; <label>:551                                     ; preds = %478
  %552 = add i32 %60, 228
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = fmul fast float %519, %556
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = mul nuw nsw i32 %497, %498
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %558, %560
  %562 = call float @dx.op.unary.f32(i32 27, float %561)  ; Round_ni(value)
  %563 = fptoui float %562 to i32
  %564 = urem i32 %563, %497
  %565 = udiv i32 %563, %498
  %566 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %567 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %568 = uitofp i32 %564 to float
  %569 = uitofp i32 %565 to float
  %570 = fadd fast float %566, %568
  %571 = fadd fast float %567, %569
  %572 = uitofp i32 %497 to float
  %573 = uitofp i32 %498 to float
  %574 = fdiv fast float %570, %572
  %575 = fdiv fast float %571, %573
  br label %576

; <label>:576                                     ; preds = %551, %478
  %577 = phi float [ %574, %551 ], [ %546, %478 ]
  %578 = phi float [ %575, %551 ], [ %547, %478 ]
  %579 = and i32 %472, 16777216
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %690, label %581

; <label>:581                                     ; preds = %576
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = fadd fast float %583, %165
  %587 = fadd fast float %584, %166
  %588 = fadd fast float %585, %167
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = icmp eq i32 %61, 65535
  br i1 %592, label %687, label %593

; <label>:593                                     ; preds = %581
  %594 = lshr i32 %61, 1
  %595 = shl i32 %594, 2
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %61, 1
  %599 = icmp ne i32 %598, 0
  %600 = lshr i32 %597, 16
  %601 = and i32 %597, 65535
  %602 = select i1 %599, i32 %600, i32 %601
  %603 = icmp eq i32 %602, 65535
  br i1 %603, label %683, label %604

; <label>:604                                     ; preds = %593
  %605 = mul nuw nsw i32 %602, 40
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %605, 12
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %605, 24
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = add nuw nsw i32 %605, 36
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = fsub fast float %586, %607
  %624 = fsub fast float %587, %608
  %625 = fsub fast float %588, %609
  %626 = fmul fast float %622, %623
  %627 = fmul fast float %622, %624
  %628 = fmul fast float %622, %625
  %629 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %630 = call float @dx.op.unary.f32(i32 27, float %627)  ; Round_ni(value)
  %631 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %632 = fadd fast float %629, 5.000000e-01
  %633 = fadd fast float %630, 5.000000e-01
  %634 = fadd fast float %631, 5.000000e-01
  %635 = fmul fast float %632, %612
  %636 = fmul fast float %633, %613
  %637 = fmul fast float %634, %614
  %638 = shl i32 %61, 2
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = add i32 %640, 0
  %642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %643 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %644 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %645 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %642, %dx.types.Handle %55, float %643, float %644, float %645, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = fmul fast float %647, 1.023000e+03
  %651 = fmul fast float %648, 1.023000e+03
  %652 = fmul fast float %649, 1.023000e+03
  %653 = fadd fast float %650, 5.000000e-01
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = fsub fast float %626, %629
  %660 = fsub fast float %627, %630
  %661 = fsub fast float %628, %631
  %662 = fmul fast float %659, 7.500000e-01
  %663 = fmul fast float %660, 7.500000e-01
  %664 = fmul fast float %661, 7.500000e-01
  %665 = fadd fast float %629, 1.250000e-01
  %666 = fadd fast float %665, %662
  %667 = fadd fast float %666, %656
  %668 = fadd fast float %630, 1.250000e-01
  %669 = fadd fast float %668, %663
  %670 = fadd fast float %669, %657
  %671 = fadd fast float %631, 1.250000e-01
  %672 = fadd fast float %671, %664
  %673 = fadd fast float %672, %658
  %674 = fmul fast float %667, %617
  %675 = fmul fast float %670, %618
  %676 = fmul fast float %673, %619
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %680, %dx.types.Handle %53, float %674, float %675, float %676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  br label %683

; <label>:683                                     ; preds = %604, %593
  %684 = phi float [ %682, %604 ], [ -1.000000e+00, %593 ]
  %685 = fadd fast float %684, %591
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  br label %687

; <label>:687                                     ; preds = %683, %581
  %688 = phi float [ %686, %683 ], [ %591, %581 ]
  %689 = fmul fast float %688, %439
  br label %690

; <label>:690                                     ; preds = %687, %576
  %691 = phi float [ %689, %687 ], [ %439, %576 ]
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 256
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %742, label %696

; <label>:696                                     ; preds = %690
  %697 = add i32 %60, 456
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %699, 0
  %701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %700, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %701, %dx.types.Handle %107, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = add i32 %60, 100
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = shl i32 %706, 4
  %708 = and i32 %707, 32752
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = lshr i32 %706, 7
  %711 = and i32 %710, 32752
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fsub fast float 1.000000e+00, %691
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %715 = bitcast float %691 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %712, %717
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = bitcast float %714 to i32
  %723 = sitofp i32 %722 to float
  %724 = fadd fast float %723, 0xC1CFBF8940000000
  %725 = fmul fast float %724, %712
  %726 = fadd fast float %725, 0x41CFBF8940000000
  %727 = fptosi float %726 to i32
  %728 = bitcast i32 %727 to float
  %729 = fmul fast float %721, %709
  %730 = fmul fast float %728, %709
  %731 = fsub fast float %714, %729
  %732 = fadd fast float %730, %714
  %733 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %734 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %735 = fsub fast float %703, %733
  %736 = fsub fast float %734, %733
  %737 = bitcast float %736 to i32
  %738 = sub nsw i32 2129859010, %737
  %739 = bitcast i32 %738 to float
  %740 = fmul fast float %739, %735
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  br label %742

; <label>:742                                     ; preds = %696, %690
  %743 = phi float [ %741, %696 ], [ %691, %690 ]
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 128
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %764, label %748

; <label>:748                                     ; preds = %742
  %749 = add i32 %60, 440
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = add i32 %751, 0
  %753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %753, %dx.types.Handle %107, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 524288
  %759 = icmp ne i32 %758, 0
  %760 = fcmp fast ogt float %755, 0x3FE0101020000000
  %761 = select i1 %760, float 1.000000e+00, float 0.000000e+00
  %762 = select i1 %759, float %761, float %755
  %763 = fmul fast float %762, %743
  br label %764

; <label>:764                                     ; preds = %748, %742
  %765 = phi float [ %763, %748 ], [ %743, %742 ]
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 16
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %968, label %770

; <label>:770                                     ; preds = %764
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %60, 392
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %775, 0
  %777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %777, %dx.types.Handle %106, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = and i32 %772, 255
  %784 = uitofp i32 %783 to float
  %785 = lshr i32 %772, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %782, %784
  %789 = fadd fast float %788, %787
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 512
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %803, label %795

; <label>:795                                     ; preds = %770
  %796 = add i32 %60, 472
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = add i32 %798, 0
  %800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %800, %dx.types.Handle %107, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  br label %803

; <label>:803                                     ; preds = %795, %770
  %804 = phi float [ %802, %795 ], [ 1.000000e+00, %770 ]
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 33554432
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %915, label %809

; <label>:809                                     ; preds = %803
  %810 = add i32 %60, 224
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %812, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = add i32 %60, 228
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 65535
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = lshr i32 %823, 24
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = and i32 %823, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = lshr i32 %823, 8
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %823, 16
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = add i32 %60, 220
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = lshr i32 %840, 24
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = and i32 %840, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = lshr i32 %840, 8
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %840, 16
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = bitcast float %779 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %779, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %779
  %864 = fmul fast float %863, %862
  %865 = bitcast float %780 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463174, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %780, 5.000000e-01
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %870, %869
  %872 = fsub fast float 1.500000e+00, %871
  %873 = fmul fast float %868, %780
  %874 = fmul fast float %873, %872
  %875 = bitcast float %781 to i32
  %876 = ashr i32 %875, 1
  %877 = sub nsw i32 1597463174, %876
  %878 = bitcast i32 %877 to float
  %879 = fmul fast float %781, 5.000000e-01
  %880 = fmul fast float %878, %878
  %881 = fmul fast float %880, %879
  %882 = fsub fast float 1.500000e+00, %881
  %883 = fmul fast float %878, %781
  %884 = fmul fast float %883, %882
  %885 = fsub fast float %864, %846
  %886 = fsub fast float %874, %850
  %887 = fsub fast float %884, %854
  %888 = fmul fast float %885, %814
  %889 = fmul fast float %886, %816
  %890 = fmul fast float %887, %821
  %891 = fadd fast float %888, %829
  %892 = fadd fast float %889, %833
  %893 = fadd fast float %890, %837
  %894 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %895 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %896 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %897 = fmul fast float %894, %894
  %898 = fmul fast float %895, %895
  %899 = fmul fast float %896, %896
  %900 = fsub fast float %897, %779
  %901 = fsub fast float %898, %780
  %902 = fsub fast float %899, %781
  %903 = fmul fast float %900, %804
  %904 = fmul fast float %901, %804
  %905 = fmul fast float %902, %804
  %906 = fadd fast float %903, %779
  %907 = fadd fast float %904, %780
  %908 = fadd fast float %905, %781
  %909 = fadd fast float %826, %790
  %910 = fsub fast float %909, %843
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fsub fast float %911, %790
  %913 = fmul fast float %912, %804
  %914 = fadd fast float %913, %790
  br label %968

; <label>:915                                     ; preds = %803
  %916 = and i32 %806, 134217728
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %952, label %918

; <label>:918                                     ; preds = %915
  %919 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %920 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %922 = fadd fast float %919, -5.000000e-01
  %923 = fadd fast float %920, -5.000000e-01
  %924 = fadd fast float %921, -5.000000e-01
  %925 = fmul fast float %922, %804
  %926 = fmul fast float %923, %804
  %927 = fmul fast float %924, %804
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fadd fast float %927, 5.000000e-01
  %931 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %932 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %933 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %934 = fmul fast float %928, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %931
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %931
  %939 = fmul fast float %929, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %932
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %932
  %944 = fmul fast float %930, 2.000000e+00
  %945 = fsub fast float 1.000000e+00, %944
  %946 = fmul fast float %945, %933
  %947 = fadd fast float %946, %944
  %948 = fmul fast float %947, %933
  %949 = fmul fast float %938, %938
  %950 = fmul fast float %943, %943
  %951 = fmul fast float %948, %948
  br label %968

; <label>:952                                     ; preds = %915
  %953 = fmul fast float %256, %256
  %954 = fmul fast float %260, %260
  %955 = fmul fast float %264, %264
  %956 = fadd fast float %953, -1.000000e+00
  %957 = fadd fast float %954, -1.000000e+00
  %958 = fadd fast float %955, -1.000000e+00
  %959 = fmul fast float %804, %956
  %960 = fmul fast float %804, %957
  %961 = fmul fast float %804, %958
  %962 = fadd fast float %959, 1.000000e+00
  %963 = fadd fast float %960, 1.000000e+00
  %964 = fadd fast float %961, 1.000000e+00
  %965 = fmul fast float %962, %779
  %966 = fmul fast float %963, %780
  %967 = fmul fast float %964, %781
  br label %968

; <label>:968                                     ; preds = %952, %918, %809, %764
  %969 = phi float [ %914, %809 ], [ %790, %918 ], [ %790, %952 ], [ 0x3FA23C0BE0000000, %764 ]
  %970 = phi float [ %906, %809 ], [ %949, %918 ], [ %965, %952 ], [ 1.000000e+00, %764 ]
  %971 = phi float [ %907, %809 ], [ %950, %918 ], [ %966, %952 ], [ 1.000000e+00, %764 ]
  %972 = phi float [ %908, %809 ], [ %951, %918 ], [ %967, %952 ], [ 1.000000e+00, %764 ]
  %973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.i32 %973, 1
  %975 = and i32 %974, 1
  %976 = icmp ne i32 %975, 0
  %977 = add i32 %60, 356
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 32
  %981 = icmp ne i32 %980, 0
  %982 = and i1 %976, %981
  %983 = select i1 %982, float 1.000000e+00, float %970
  %984 = select i1 %982, float 0x3FD3333340000000, float %971
  %985 = select i1 %982, float 0x3FD3333340000000, float %972
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 32
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1062, label %990

; <label>:990                                     ; preds = %968
  %991 = add i32 %60, 92
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = add i32 %60, 408
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = add i32 %996, 0
  %998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %999 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %998, %dx.types.Handle %106, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = extractvalue %dx.types.ResRet.f32 %999, 3
  %1004 = and i32 %993, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = lshr i32 %993, 8
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = lshr i32 %993, 16
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = fmul fast float %1011, 0x3F70101000000000
  %1013 = fmul fast float %1000, %1005
  %1014 = fadd fast float %1013, %1008
  %1015 = fmul fast float %1014, 0x3F70101000000000
  %1016 = fadd fast float %1001, -5.000000e-01
  %1017 = fadd fast float %1003, -5.000000e-01
  %1018 = fmul fast float %1016, %1012
  %1019 = fmul fast float %1017, %1012
  %1020 = fadd fast float %1018, 5.000000e-01
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fmul fast float %1020, 2.000000e+00
  %1023 = fadd fast float %1022, -1.000000e+00
  %1024 = fmul fast float %1021, 2.000000e+00
  %1025 = fadd fast float %1024, -1.000000e+00
  %1026 = fadd fast float %1023, %1025
  %1027 = fmul fast float %1026, 5.000000e-01
  %1028 = fsub fast float %1023, %1025
  %1029 = fmul fast float %1028, 5.000000e-01
  %1030 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1031 = fsub fast float 1.000000e+00, %1030
  %1032 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1033 = fsub fast float %1031, %1032
  %1034 = call float @dx.op.dot3.f32(i32 55, float %1027, float %1029, float %1033, float %1027, float %1029, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.unary.f32(i32 25, float %1034)  ; Rsqrt(value)
  %1036 = fmul fast float %1027, %1035
  %1037 = fmul fast float %1029, %1035
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 67108864
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1058, label %1042

; <label>:1042                                    ; preds = %990
  %1043 = add i32 %60, 280
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = lshr i32 %1045, 16
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = fsub fast float %1015, %1053
  %1055 = fmul fast float %1054, %1047
  %1056 = fadd fast float %1055, %1051
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  br label %1058

; <label>:1058                                    ; preds = %1042, %990
  %1059 = phi float [ %1057, %1042 ], [ %1015, %990 ]
  %1060 = call float @dx.op.dot2.f32(i32 54, float %1036, float %1037, float %481, float %482)  ; Dot2(ax,ay,bx,by)
  %1061 = call float @dx.op.dot2.f32(i32 54, float %1036, float %1037, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  br label %1062

; <label>:1062                                    ; preds = %1058, %968
  %1063 = phi float [ %1059, %1058 ], [ 0x3FD6666660000000, %968 ]
  %1064 = phi float [ %1060, %1058 ], [ 0.000000e+00, %968 ]
  %1065 = phi float [ %1061, %1058 ], [ 0.000000e+00, %968 ]
  %1066 = phi float [ %1002, %1058 ], [ 1.000000e+00, %968 ]
  %1067 = add i32 %60, 160
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = lshr i32 %1069, 22
  %1071 = shl nuw nsw i32 %1070, 5
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 64
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1110, label %1077

; <label>:1077                                    ; preds = %1062
  %1078 = add i32 %60, 424
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 131072
  %1086 = icmp eq i32 %1085, 0
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1082, %dx.types.Handle %106, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = fmul fast float %1088, %244
  %1092 = fmul fast float %1089, %247
  %1093 = fmul fast float %1090, %250
  br i1 %1086, label %1100, label %1094

; <label>:1094                                    ; preds = %1077
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = fmul fast float %1096, %1091
  %1098 = fmul fast float %1096, %1092
  %1099 = fmul fast float %1096, %1093
  br label %1100

; <label>:1100                                    ; preds = %1094, %1077
  %1101 = phi float [ %1097, %1094 ], [ %1091, %1077 ]
  %1102 = phi float [ %1098, %1094 ], [ %1092, %1077 ]
  %1103 = phi float [ %1099, %1094 ], [ %1093, %1077 ]
  %1104 = fmul fast float %1101, %1072
  %1105 = select i1 %227, float %1104, float %1101
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1105, float %1102, float %1103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = select i1 %227, float 0.000000e+00, float %1101
  %1108 = select i1 %227, float %1106, float %1102
  %1109 = select i1 %227, float 0.000000e+00, float %1103
  br label %1110

; <label>:1110                                    ; preds = %1100, %1062
  %1111 = phi float [ %1107, %1100 ], [ 0.000000e+00, %1062 ]
  %1112 = phi float [ %1108, %1100 ], [ 0.000000e+00, %1062 ]
  %1113 = phi float [ %1109, %1100 ], [ 0.000000e+00, %1062 ]
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 1024
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1148, label %1118

; <label>:1118                                    ; preds = %1110
  %1119 = add i32 %60, 152
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1121, 8
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = lshr i32 %1121, 16
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = fmul fast float %1124, %1124
  %1134 = fmul fast float %1128, %1128
  %1135 = fmul fast float %1132, %1132
  %1136 = add i32 %60, 488
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %1138, 0
  %1140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1140, %dx.types.Handle %107, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = fmul fast float %1133, %1142
  %1146 = fmul fast float %1134, %1143
  %1147 = fmul fast float %1135, %1144
  br label %1148

; <label>:1148                                    ; preds = %1118, %1110
  %1149 = phi float [ %1145, %1118 ], [ 0.000000e+00, %1110 ]
  %1150 = phi float [ %1146, %1118 ], [ 0.000000e+00, %1110 ]
  %1151 = phi float [ %1147, %1118 ], [ 0.000000e+00, %1110 ]
  %1152 = fcmp fast ogt float %1149, 0.000000e+00
  %1153 = fcmp fast ogt float %1150, 0.000000e+00
  %1154 = fcmp fast ogt float %1151, 0.000000e+00
  %1155 = call float @dx.op.unary.f32(i32 23, float %1149)  ; Log(value)
  %1156 = call float @dx.op.unary.f32(i32 23, float %1150)  ; Log(value)
  %1157 = call float @dx.op.unary.f32(i32 23, float %1151)  ; Log(value)
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = lshr i32 %1159, 7
  %1161 = and i32 %1160, 32752
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = fmul fast float %1155, 0xBFE62E4300000000
  %1164 = fmul fast float %1163, %1162
  %1165 = fmul fast float %1156, 0xBFE62E4300000000
  %1166 = fmul fast float %1165, %1162
  %1167 = fmul fast float %1157, 0xBFE62E4300000000
  %1168 = fmul fast float %1167, %1162
  %1169 = select i1 %1152, float %1164, float 1.270000e+02
  %1170 = select i1 %1153, float %1166, float 1.270000e+02
  %1171 = select i1 %1154, float %1168, float 1.270000e+02
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 10240
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1220, label %1176

; <label>:1176                                    ; preds = %1148
  %1177 = add i32 %60, 504
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %1179, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1181, %dx.types.Handle %107, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 1048576
  %1188 = icmp ne i32 %1187, 0
  %1189 = and i32 %1186, 8192
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1206, label %1191

; <label>:1191                                    ; preds = %1176
  %1192 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1193 = select i1 %1188, float %1192, float %1183
  %1194 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1195 = select i1 %1188, float %1194, float %1183
  %1196 = add i32 %60, 96
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = lshr i32 %1198, 16
  %1200 = and i32 %1199, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F80101020000000
  %1203 = fmul fast float %1202, %1195
  %1204 = fmul fast float %1202, %1183
  %1205 = fmul fast float %1202, %1193
  br label %1206

; <label>:1206                                    ; preds = %1191, %1176
  %1207 = phi float [ %1203, %1191 ], [ 0.000000e+00, %1176 ]
  %1208 = phi float [ %1204, %1191 ], [ 0.000000e+00, %1176 ]
  %1209 = phi float [ %1205, %1191 ], [ 0.000000e+00, %1176 ]
  %1210 = and i32 %1186, 2048
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1220, label %1212

; <label>:1212                                    ; preds = %1206
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = shl i32 %1214, 4
  %1216 = and i32 %1215, 32752
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = fmul fast float %1217, %1184
  %1219 = call float @dx.op.binary.f32(i32 35, float %1218, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1220

; <label>:1220                                    ; preds = %1212, %1206, %1148
  %1221 = phi float [ %1207, %1212 ], [ %1207, %1206 ], [ 0.000000e+00, %1148 ]
  %1222 = phi float [ %1208, %1212 ], [ %1208, %1206 ], [ 0.000000e+00, %1148 ]
  %1223 = phi float [ %1209, %1212 ], [ %1209, %1206 ], [ 0.000000e+00, %1148 ]
  %1224 = phi float [ %1219, %1212 ], [ 0x3F70101020000000, %1206 ], [ 0x3F70101020000000, %1148 ]
  %1225 = add i32 %60, 96
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = lshr i32 %1227, 8
  %1231 = and i32 %1230, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = call float @dx.op.dot3.f32(i32 55, float %983, float %984, float %985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = fmul fast float %1232, %1233
  %1235 = fadd fast float %1234, %1229
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  br label %1238

; <label>:1238                                    ; preds = %1220, %463
  %1239 = phi float [ 0.000000e+00, %463 ], [ %1064, %1220 ]
  %1240 = phi float [ 0.000000e+00, %463 ], [ %1065, %1220 ]
  %1241 = phi float [ 0.000000e+00, %463 ], [ %983, %1220 ]
  %1242 = phi float [ 0.000000e+00, %463 ], [ %984, %1220 ]
  %1243 = phi float [ 0.000000e+00, %463 ], [ %985, %1220 ]
  %1244 = phi float [ 0.000000e+00, %463 ], [ %1111, %1220 ]
  %1245 = phi float [ 0.000000e+00, %463 ], [ %1112, %1220 ]
  %1246 = phi float [ 0.000000e+00, %463 ], [ %1113, %1220 ]
  %1247 = phi float [ 0.000000e+00, %463 ], [ %1221, %1220 ]
  %1248 = phi float [ 0.000000e+00, %463 ], [ %1222, %1220 ]
  %1249 = phi float [ 0.000000e+00, %463 ], [ %1223, %1220 ]
  %1250 = phi float [ 0.000000e+00, %463 ], [ %1169, %1220 ]
  %1251 = phi float [ 0.000000e+00, %463 ], [ %1170, %1220 ]
  %1252 = phi float [ 0.000000e+00, %463 ], [ %1171, %1220 ]
  %1253 = phi float [ 0.000000e+00, %463 ], [ %969, %1220 ]
  %1254 = phi float [ 0.000000e+00, %463 ], [ %765, %1220 ]
  %1255 = phi float [ 0.000000e+00, %463 ], [ %1063, %1220 ]
  %1256 = phi float [ 0.000000e+00, %463 ], [ %1066, %1220 ]
  %1257 = phi float [ 0.000000e+00, %463 ], [ %1224, %1220 ]
  %1258 = phi float [ 0.000000e+00, %463 ], [ %1237, %1220 ]
  br i1 %411, label %2296, label %1259

; <label>:1259                                    ; preds = %1238
  %1260 = icmp ult i32 %469, 2
  %1261 = add i32 %60, 40
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %60, 44
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = or i32 %1266, %1263
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %2296, label %1269

; <label>:1269                                    ; preds = %1259
  %1270 = and i32 %1263, 262144
  %1271 = icmp ne i32 %1270, 0
  %1272 = select i1 %1271, float %64, float 1.000000e+00
  %1273 = select i1 %1271, float %65, float 0.000000e+00
  %1274 = select i1 %1271, float %66, float 0.000000e+00
  %1275 = select i1 %1271, float %67, float 1.000000e+00
  %1276 = select i1 %1271, float %68, float %89
  %1277 = select i1 %1271, float %69, float %90
  %1278 = add i32 %60, 300
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = fmul fast float %1282, 0x3F50624DE0000000
  %1284 = add i32 %60, 104
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 16
  %1288 = and i32 %1287, 255
  %1289 = lshr i32 %1286, 24
  %1290 = add i32 %60, 308
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = lshr i32 %1292, 16
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = add i32 %60, 48
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 22
  %1301 = shl nuw nsw i32 %1300, 5
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = shl i32 %1299, 4
  %1304 = and i32 %1303, 32752
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1299, 7
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1311 = fmul fast float %1310, 1.000000e+03
  %1312 = fmul fast float %321, %1311
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = fadd fast float %1313, %311
  %1315 = fmul fast float %322, %1311
  %1316 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1317 = fadd fast float %1316, %313
  %1318 = fmul fast float %1283, %1311
  %1319 = call float @dx.op.unary.f32(i32 22, float %1318)  ; Frc(value)
  %1320 = fmul fast float %1319, 0x401921FB60000000
  %1321 = fadd fast float %1320, %1302
  %1322 = call float @dx.op.unary.f32(i32 13, float %1321)  ; Sin(value)
  %1323 = call float @dx.op.unary.f32(i32 12, float %1321)  ; Cos(value)
  %1324 = fsub fast float -0.000000e+00, %1322
  %1325 = fadd fast float %1276, -5.000000e-01
  %1326 = fadd fast float %1277, -5.000000e-01
  %1327 = fmul fast float %1294, %1325
  %1328 = fmul fast float %1296, %1326
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fmul fast float %1305, %1329
  %1332 = fmul fast float %1308, %1330
  %1333 = fmul fast float %1323, %1331
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1332, float %1333)  ; FMad(a,b,c)
  %1335 = fmul fast float %1322, %1331
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1332, float %1335)  ; FMad(a,b,c)
  %1337 = fadd fast float %1314, %1334
  %1338 = fadd fast float %1317, %1336
  %1339 = icmp ugt i32 %1288, 1
  %1340 = icmp ugt i32 %1286, 33554431
  %1341 = or i1 %1340, %1339
  br i1 %1341, label %1342, label %1367

; <label>:1342                                    ; preds = %1269
  %1343 = add i32 %60, 244
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = lshr i32 %1345, 16
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = fmul fast float %1310, %1347
  %1349 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1350 = mul nuw nsw i32 %1288, %1289
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1349, %1351
  %1353 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1354 = fptoui float %1353 to i32
  %1355 = urem i32 %1354, %1288
  %1356 = udiv i32 %1354, %1289
  %1357 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1359 = uitofp i32 %1355 to float
  %1360 = uitofp i32 %1356 to float
  %1361 = fadd fast float %1357, %1359
  %1362 = fadd fast float %1358, %1360
  %1363 = uitofp i32 %1288 to float
  %1364 = uitofp i32 %1289 to float
  %1365 = fdiv fast float %1361, %1363
  %1366 = fdiv fast float %1362, %1364
  br label %1367

; <label>:1367                                    ; preds = %1342, %1269
  %1368 = phi float [ %1365, %1342 ], [ %1337, %1269 ]
  %1369 = phi float [ %1366, %1342 ], [ %1338, %1269 ]
  %1370 = and i32 %1263, 16777216
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1481, label %1372

; <label>:1372                                    ; preds = %1367
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.CBufRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.CBufRet.f32 %1373, 2
  %1377 = fadd fast float %1374, %165
  %1378 = fadd fast float %1375, %166
  %1379 = fadd fast float %1376, %167
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = icmp eq i32 %61, 65535
  br i1 %1383, label %1478, label %1384

; <label>:1384                                    ; preds = %1372
  %1385 = lshr i32 %61, 1
  %1386 = shl i32 %1385, 2
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %61, 1
  %1390 = icmp ne i32 %1389, 0
  %1391 = lshr i32 %1388, 16
  %1392 = and i32 %1388, 65535
  %1393 = select i1 %1390, i32 %1391, i32 %1392
  %1394 = icmp eq i32 %1393, 65535
  br i1 %1394, label %1474, label %1395

; <label>:1395                                    ; preds = %1384
  %1396 = mul nuw nsw i32 %1393, 40
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1396, 12
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = add nuw nsw i32 %1396, 24
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = add nuw nsw i32 %1396, 36
  %1412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = fsub fast float %1377, %1398
  %1415 = fsub fast float %1378, %1399
  %1416 = fsub fast float %1379, %1400
  %1417 = fmul fast float %1413, %1414
  %1418 = fmul fast float %1413, %1415
  %1419 = fmul fast float %1413, %1416
  %1420 = call float @dx.op.unary.f32(i32 27, float %1417)  ; Round_ni(value)
  %1421 = call float @dx.op.unary.f32(i32 27, float %1418)  ; Round_ni(value)
  %1422 = call float @dx.op.unary.f32(i32 27, float %1419)  ; Round_ni(value)
  %1423 = fadd fast float %1420, 5.000000e-01
  %1424 = fadd fast float %1421, 5.000000e-01
  %1425 = fadd fast float %1422, 5.000000e-01
  %1426 = fmul fast float %1423, %1403
  %1427 = fmul fast float %1424, %1404
  %1428 = fmul fast float %1425, %1405
  %1429 = shl i32 %61, 2
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %1431, 0
  %1433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1434 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1435 = call float @dx.op.unary.f32(i32 22, float %1427)  ; Frc(value)
  %1436 = call float @dx.op.unary.f32(i32 22, float %1428)  ; Frc(value)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1433, %dx.types.Handle %55, float %1434, float %1435, float %1436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = fmul fast float %1438, 1.023000e+03
  %1442 = fmul fast float %1439, 1.023000e+03
  %1443 = fmul fast float %1440, 1.023000e+03
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = fadd fast float %1443, 5.000000e-01
  %1447 = call float @dx.op.unary.f32(i32 27, float %1444)  ; Round_ni(value)
  %1448 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1449 = call float @dx.op.unary.f32(i32 27, float %1446)  ; Round_ni(value)
  %1450 = fsub fast float %1417, %1420
  %1451 = fsub fast float %1418, %1421
  %1452 = fsub fast float %1419, %1422
  %1453 = fmul fast float %1450, 7.500000e-01
  %1454 = fmul fast float %1451, 7.500000e-01
  %1455 = fmul fast float %1452, 7.500000e-01
  %1456 = fadd fast float %1420, 1.250000e-01
  %1457 = fadd fast float %1456, %1453
  %1458 = fadd fast float %1457, %1447
  %1459 = fadd fast float %1421, 1.250000e-01
  %1460 = fadd fast float %1459, %1454
  %1461 = fadd fast float %1460, %1448
  %1462 = fadd fast float %1422, 1.250000e-01
  %1463 = fadd fast float %1462, %1455
  %1464 = fadd fast float %1463, %1449
  %1465 = fmul fast float %1458, %1408
  %1466 = fmul fast float %1461, %1409
  %1467 = fmul fast float %1464, %1410
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1471, %dx.types.Handle %53, float %1465, float %1466, float %1467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  br label %1474

; <label>:1474                                    ; preds = %1395, %1384
  %1475 = phi float [ %1473, %1395 ], [ -1.000000e+00, %1384 ]
  %1476 = fadd fast float %1475, %1382
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  br label %1478

; <label>:1478                                    ; preds = %1474, %1372
  %1479 = phi float [ %1477, %1474 ], [ %1382, %1372 ]
  %1480 = fmul fast float %1479, %466
  br label %1481

; <label>:1481                                    ; preds = %1478, %1367
  %1482 = phi float [ %1480, %1478 ], [ %466, %1367 ]
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 256
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1533, label %1487

; <label>:1487                                    ; preds = %1481
  %1488 = add i32 %60, 460
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1490, 0
  %1492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1492, %dx.types.Handle %107, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = add i32 %60, 116
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = shl i32 %1497, 4
  %1499 = and i32 %1498, 32752
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = lshr i32 %1497, 7
  %1502 = and i32 %1501, 32752
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = fsub fast float 1.000000e+00, %1482
  %1505 = call float @dx.op.binary.f32(i32 35, float %1504, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1506 = bitcast float %1482 to i32
  %1507 = sitofp i32 %1506 to float
  %1508 = fadd fast float %1507, 0xC1CFBF8940000000
  %1509 = fmul fast float %1503, %1508
  %1510 = fadd fast float %1509, 0x41CFBF8940000000
  %1511 = fptosi float %1510 to i32
  %1512 = bitcast i32 %1511 to float
  %1513 = bitcast float %1505 to i32
  %1514 = sitofp i32 %1513 to float
  %1515 = fadd fast float %1514, 0xC1CFBF8940000000
  %1516 = fmul fast float %1515, %1503
  %1517 = fadd fast float %1516, 0x41CFBF8940000000
  %1518 = fptosi float %1517 to i32
  %1519 = bitcast i32 %1518 to float
  %1520 = fmul fast float %1512, %1500
  %1521 = fmul fast float %1519, %1500
  %1522 = fsub fast float %1505, %1520
  %1523 = fadd fast float %1521, %1505
  %1524 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1526 = fsub fast float %1494, %1524
  %1527 = fsub fast float %1525, %1524
  %1528 = bitcast float %1527 to i32
  %1529 = sub nsw i32 2129859010, %1528
  %1530 = bitcast i32 %1529 to float
  %1531 = fmul fast float %1530, %1526
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  br label %1533

; <label>:1533                                    ; preds = %1487, %1481
  %1534 = phi float [ %1532, %1487 ], [ %1482, %1481 ]
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 128
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1555, label %1539

; <label>:1539                                    ; preds = %1533
  %1540 = add i32 %60, 444
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = add i32 %1542, 0
  %1544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1544, %dx.types.Handle %107, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 524288
  %1550 = icmp ne i32 %1549, 0
  %1551 = fcmp fast ogt float %1546, 0x3FE0101020000000
  %1552 = select i1 %1551, float 1.000000e+00, float 0.000000e+00
  %1553 = select i1 %1550, float %1552, float %1546
  %1554 = fmul fast float %1553, %1534
  br label %1555

; <label>:1555                                    ; preds = %1539, %1533
  %1556 = phi float [ %1554, %1539 ], [ %1534, %1533 ]
  %1557 = fcmp fast ult float %1556, 0x3F70101020000000
  br i1 %1557, label %2296, label %1558

; <label>:1558                                    ; preds = %1555
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 16
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1761, label %1563

; <label>:1563                                    ; preds = %1558
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %60, 396
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = add i32 %1568, 0
  %1570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1570, %dx.types.Handle %106, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.ResRet.f32 %1571, 1
  %1574 = extractvalue %dx.types.ResRet.f32 %1571, 2
  %1575 = extractvalue %dx.types.ResRet.f32 %1571, 3
  %1576 = and i32 %1565, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = lshr i32 %1565, 8
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1575, %1577
  %1582 = fadd fast float %1581, %1580
  %1583 = fmul fast float %1582, 0x3F70101000000000
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 512
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1596, label %1588

; <label>:1588                                    ; preds = %1563
  %1589 = add i32 %60, 476
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1593, %dx.types.Handle %107, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  br label %1596

; <label>:1596                                    ; preds = %1588, %1563
  %1597 = phi float [ %1595, %1588 ], [ 1.000000e+00, %1563 ]
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 33554432
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1708, label %1602

; <label>:1602                                    ; preds = %1596
  %1603 = add i32 %60, 240
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 65535
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = lshr i32 %1605, 16
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = add i32 %60, 244
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 65535
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = lshr i32 %1616, 24
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = and i32 %1616, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = lshr i32 %1616, 8
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = lshr i32 %1616, 16
  %1628 = and i32 %1627, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = add i32 %60, 236
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = lshr i32 %1633, 24
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = and i32 %1633, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = lshr i32 %1633, 8
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = lshr i32 %1633, 16
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = bitcast float %1572 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1572, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1572
  %1657 = fmul fast float %1656, %1655
  %1658 = bitcast float %1573 to i32
  %1659 = ashr i32 %1658, 1
  %1660 = sub nsw i32 1597463174, %1659
  %1661 = bitcast i32 %1660 to float
  %1662 = fmul fast float %1573, 5.000000e-01
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float 1.500000e+00, %1664
  %1666 = fmul fast float %1661, %1573
  %1667 = fmul fast float %1666, %1665
  %1668 = bitcast float %1574 to i32
  %1669 = ashr i32 %1668, 1
  %1670 = sub nsw i32 1597463174, %1669
  %1671 = bitcast i32 %1670 to float
  %1672 = fmul fast float %1574, 5.000000e-01
  %1673 = fmul fast float %1671, %1671
  %1674 = fmul fast float %1673, %1672
  %1675 = fsub fast float 1.500000e+00, %1674
  %1676 = fmul fast float %1671, %1574
  %1677 = fmul fast float %1676, %1675
  %1678 = fsub fast float %1657, %1639
  %1679 = fsub fast float %1667, %1643
  %1680 = fsub fast float %1677, %1647
  %1681 = fmul fast float %1678, %1607
  %1682 = fmul fast float %1679, %1609
  %1683 = fmul fast float %1680, %1614
  %1684 = fadd fast float %1681, %1622
  %1685 = fadd fast float %1682, %1626
  %1686 = fadd fast float %1683, %1630
  %1687 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1689 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1690 = fmul fast float %1687, %1687
  %1691 = fmul fast float %1688, %1688
  %1692 = fmul fast float %1689, %1689
  %1693 = fsub fast float %1690, %1572
  %1694 = fsub fast float %1691, %1573
  %1695 = fsub fast float %1692, %1574
  %1696 = fmul fast float %1693, %1597
  %1697 = fmul fast float %1694, %1597
  %1698 = fmul fast float %1695, %1597
  %1699 = fadd fast float %1696, %1572
  %1700 = fadd fast float %1697, %1573
  %1701 = fadd fast float %1698, %1574
  %1702 = fadd fast float %1619, %1583
  %1703 = fsub fast float %1702, %1636
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fsub fast float %1704, %1583
  %1706 = fmul fast float %1705, %1597
  %1707 = fadd fast float %1706, %1583
  br label %1761

; <label>:1708                                    ; preds = %1596
  %1709 = and i32 %1599, 134217728
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1745, label %1711

; <label>:1711                                    ; preds = %1708
  %1712 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fadd fast float %1714, -5.000000e-01
  %1718 = fmul fast float %1715, %1597
  %1719 = fmul fast float %1716, %1597
  %1720 = fmul fast float %1717, %1597
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fadd fast float %1720, 5.000000e-01
  %1724 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1573)  ; Sqrt(value)
  %1726 = call float @dx.op.unary.f32(i32 24, float %1574)  ; Sqrt(value)
  %1727 = fmul fast float %1721, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1724
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1724
  %1732 = fmul fast float %1722, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1725
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1725
  %1737 = fmul fast float %1723, 2.000000e+00
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1738, %1726
  %1740 = fadd fast float %1739, %1737
  %1741 = fmul fast float %1740, %1726
  %1742 = fmul fast float %1731, %1731
  %1743 = fmul fast float %1736, %1736
  %1744 = fmul fast float %1741, %1741
  br label %1761

; <label>:1745                                    ; preds = %1708
  %1746 = fmul fast float %298, %298
  %1747 = fmul fast float %302, %302
  %1748 = fmul fast float %306, %306
  %1749 = fadd fast float %1746, -1.000000e+00
  %1750 = fadd fast float %1747, -1.000000e+00
  %1751 = fadd fast float %1748, -1.000000e+00
  %1752 = fmul fast float %1597, %1749
  %1753 = fmul fast float %1597, %1750
  %1754 = fmul fast float %1597, %1751
  %1755 = fadd fast float %1752, 1.000000e+00
  %1756 = fadd fast float %1753, 1.000000e+00
  %1757 = fadd fast float %1754, 1.000000e+00
  %1758 = fmul fast float %1755, %1572
  %1759 = fmul fast float %1756, %1573
  %1760 = fmul fast float %1757, %1574
  br label %1761

; <label>:1761                                    ; preds = %1745, %1711, %1602, %1558
  %1762 = phi float [ %1707, %1602 ], [ %1583, %1711 ], [ %1583, %1745 ], [ 0x3FA23C0BE0000000, %1558 ]
  %1763 = phi float [ %1699, %1602 ], [ %1742, %1711 ], [ %1758, %1745 ], [ 1.000000e+00, %1558 ]
  %1764 = phi float [ %1700, %1602 ], [ %1743, %1711 ], [ %1759, %1745 ], [ 1.000000e+00, %1558 ]
  %1765 = phi float [ %1701, %1602 ], [ %1744, %1711 ], [ %1760, %1745 ], [ 1.000000e+00, %1558 ]
  %1766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.i32 %1766, 1
  %1768 = and i32 %1767, 1
  %1769 = icmp ne i32 %1768, 0
  %1770 = add i32 %60, 356
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 32
  %1774 = icmp ne i32 %1773, 0
  %1775 = and i1 %1769, %1774
  %1776 = select i1 %1775, float 1.000000e+00, float %1763
  %1777 = select i1 %1775, float 0x3FD3333340000000, float %1764
  %1778 = select i1 %1775, float 0x3FD3333340000000, float %1765
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 32
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1855, label %1783

; <label>:1783                                    ; preds = %1761
  %1784 = add i32 %60, 108
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = add i32 %60, 412
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = add i32 %1789, 0
  %1791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1791, %dx.types.Handle %106, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.ResRet.f32 %1792, 3
  %1797 = and i32 %1786, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = lshr i32 %1786, 8
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = lshr i32 %1786, 16
  %1803 = and i32 %1802, 255
  %1804 = uitofp i32 %1803 to float
  %1805 = fmul fast float %1804, 0x3F70101000000000
  %1806 = fmul fast float %1793, %1798
  %1807 = fadd fast float %1806, %1801
  %1808 = fmul fast float %1807, 0x3F70101000000000
  %1809 = fadd fast float %1794, -5.000000e-01
  %1810 = fadd fast float %1796, -5.000000e-01
  %1811 = fmul fast float %1809, %1805
  %1812 = fmul fast float %1810, %1805
  %1813 = fadd fast float %1811, 5.000000e-01
  %1814 = fadd fast float %1812, 5.000000e-01
  %1815 = fmul fast float %1813, 2.000000e+00
  %1816 = fadd fast float %1815, -1.000000e+00
  %1817 = fmul fast float %1814, 2.000000e+00
  %1818 = fadd fast float %1817, -1.000000e+00
  %1819 = fadd fast float %1816, %1818
  %1820 = fmul fast float %1819, 5.000000e-01
  %1821 = fsub fast float %1816, %1818
  %1822 = fmul fast float %1821, 5.000000e-01
  %1823 = call float @dx.op.unary.f32(i32 6, float %1820)  ; FAbs(value)
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = call float @dx.op.unary.f32(i32 6, float %1822)  ; FAbs(value)
  %1826 = fsub fast float %1824, %1825
  %1827 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1822, float %1826, float %1820, float %1822, float %1826)  ; Dot3(ax,ay,az,bx,by,bz)
  %1828 = call float @dx.op.unary.f32(i32 25, float %1827)  ; Rsqrt(value)
  %1829 = fmul fast float %1820, %1828
  %1830 = fmul fast float %1822, %1828
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 67108864
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1851, label %1835

; <label>:1835                                    ; preds = %1783
  %1836 = add i32 %60, 296
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 65535
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = lshr i32 %1838, 16
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = fsub fast float %1808, %1846
  %1848 = fmul fast float %1847, %1840
  %1849 = fadd fast float %1848, %1844
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  br label %1851

; <label>:1851                                    ; preds = %1835, %1783
  %1852 = phi float [ %1850, %1835 ], [ %1808, %1783 ]
  %1853 = call float @dx.op.dot2.f32(i32 54, float %1829, float %1830, float %1272, float %1273)  ; Dot2(ax,ay,bx,by)
  %1854 = call float @dx.op.dot2.f32(i32 54, float %1829, float %1830, float %1274, float %1275)  ; Dot2(ax,ay,bx,by)
  br label %1855

; <label>:1855                                    ; preds = %1851, %1761
  %1856 = phi float [ %1852, %1851 ], [ 0x3FD6666660000000, %1761 ]
  %1857 = phi float [ %1853, %1851 ], [ 0.000000e+00, %1761 ]
  %1858 = phi float [ %1854, %1851 ], [ 0.000000e+00, %1761 ]
  %1859 = phi float [ %1795, %1851 ], [ 1.000000e+00, %1761 ]
  %1860 = add i32 %60, 176
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = lshr i32 %1862, 22
  %1864 = shl nuw nsw i32 %1863, 5
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 64
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1903, label %1870

; <label>:1870                                    ; preds = %1855
  %1871 = add i32 %60, 428
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = add i32 %1873, 0
  %1875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %1877, 131072
  %1879 = icmp eq i32 %1878, 0
  %1880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1875, %dx.types.Handle %106, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.ResRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.ResRet.f32 %1880, 2
  %1884 = fmul fast float %1881, %286
  %1885 = fmul fast float %1882, %289
  %1886 = fmul fast float %1883, %292
  br i1 %1879, label %1893, label %1887

; <label>:1887                                    ; preds = %1870
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = fmul fast float %1889, %1884
  %1891 = fmul fast float %1889, %1885
  %1892 = fmul fast float %1889, %1886
  br label %1893

; <label>:1893                                    ; preds = %1887, %1870
  %1894 = phi float [ %1890, %1887 ], [ %1884, %1870 ]
  %1895 = phi float [ %1891, %1887 ], [ %1885, %1870 ]
  %1896 = phi float [ %1892, %1887 ], [ %1886, %1870 ]
  %1897 = fmul fast float %1894, %1865
  %1898 = select i1 %227, float %1897, float %1894
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1898, float %1895, float %1896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = select i1 %227, float 0.000000e+00, float %1894
  %1901 = select i1 %227, float %1899, float %1895
  %1902 = select i1 %227, float 0.000000e+00, float %1896
  br label %1903

; <label>:1903                                    ; preds = %1893, %1855
  %1904 = phi float [ %1900, %1893 ], [ 0.000000e+00, %1855 ]
  %1905 = phi float [ %1901, %1893 ], [ 0.000000e+00, %1855 ]
  %1906 = phi float [ %1902, %1893 ], [ 0.000000e+00, %1855 ]
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 1024
  %1910 = icmp eq i32 %1909, 0
  br i1 %1910, label %1941, label %1911

; <label>:1911                                    ; preds = %1903
  %1912 = add i32 %60, 168
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1914, 8
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = lshr i32 %1914, 16
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1924, 0x3F70101020000000
  %1926 = fmul fast float %1917, %1917
  %1927 = fmul fast float %1921, %1921
  %1928 = fmul fast float %1925, %1925
  %1929 = add i32 %60, 492
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1933, %dx.types.Handle %107, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = fmul fast float %1926, %1935
  %1939 = fmul fast float %1927, %1936
  %1940 = fmul fast float %1928, %1937
  br label %1941

; <label>:1941                                    ; preds = %1911, %1903
  %1942 = phi float [ %1938, %1911 ], [ 0.000000e+00, %1903 ]
  %1943 = phi float [ %1939, %1911 ], [ 0.000000e+00, %1903 ]
  %1944 = phi float [ %1940, %1911 ], [ 0.000000e+00, %1903 ]
  %1945 = fcmp fast ogt float %1942, 0.000000e+00
  %1946 = fcmp fast ogt float %1943, 0.000000e+00
  %1947 = fcmp fast ogt float %1944, 0.000000e+00
  %1948 = call float @dx.op.unary.f32(i32 23, float %1942)  ; Log(value)
  %1949 = call float @dx.op.unary.f32(i32 23, float %1943)  ; Log(value)
  %1950 = call float @dx.op.unary.f32(i32 23, float %1944)  ; Log(value)
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = lshr i32 %1952, 7
  %1954 = and i32 %1953, 32752
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = fmul fast float %1948, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1955
  %1958 = fmul fast float %1949, 0xBFE62E4300000000
  %1959 = fmul fast float %1958, %1955
  %1960 = fmul fast float %1950, 0xBFE62E4300000000
  %1961 = fmul fast float %1960, %1955
  %1962 = select i1 %1945, float %1957, float 1.270000e+02
  %1963 = select i1 %1946, float %1959, float 1.270000e+02
  %1964 = select i1 %1947, float %1961, float 1.270000e+02
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 10240
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %2013, label %1969

; <label>:1969                                    ; preds = %1941
  %1970 = add i32 %60, 508
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1974, %dx.types.Handle %107, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 3
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %1979, 1048576
  %1981 = icmp ne i32 %1980, 0
  %1982 = and i32 %1979, 8192
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %1999, label %1984

; <label>:1984                                    ; preds = %1969
  %1985 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1986 = select i1 %1981, float %1985, float %1976
  %1987 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1988 = select i1 %1981, float %1987, float %1976
  %1989 = add i32 %60, 112
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = lshr i32 %1991, 16
  %1993 = and i32 %1992, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1994, 0x3F80101020000000
  %1996 = fmul fast float %1995, %1988
  %1997 = fmul fast float %1995, %1976
  %1998 = fmul fast float %1995, %1986
  br label %1999

; <label>:1999                                    ; preds = %1984, %1969
  %2000 = phi float [ %1996, %1984 ], [ 0.000000e+00, %1969 ]
  %2001 = phi float [ %1997, %1984 ], [ 0.000000e+00, %1969 ]
  %2002 = phi float [ %1998, %1984 ], [ 0.000000e+00, %1969 ]
  %2003 = and i32 %1979, 2048
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2013, label %2005

; <label>:2005                                    ; preds = %1999
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = shl i32 %2007, 4
  %2009 = and i32 %2008, 32752
  %2010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2009)  ; LegacyF16ToF32(value)
  %2011 = fmul fast float %2010, %1977
  %2012 = call float @dx.op.binary.f32(i32 35, float %2011, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2013

; <label>:2013                                    ; preds = %2005, %1999, %1941
  %2014 = phi float [ %2000, %2005 ], [ %2000, %1999 ], [ 0.000000e+00, %1941 ]
  %2015 = phi float [ %2001, %2005 ], [ %2001, %1999 ], [ 0.000000e+00, %1941 ]
  %2016 = phi float [ %2002, %2005 ], [ %2002, %1999 ], [ 0.000000e+00, %1941 ]
  %2017 = phi float [ %2012, %2005 ], [ 0x3F70101020000000, %1999 ], [ 0x3F70101020000000, %1941 ]
  %2018 = add i32 %60, 112
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = lshr i32 %2020, 8
  %2024 = and i32 %2023, 255
  %2025 = uitofp i32 %2024 to float
  %2026 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1777, float %1778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2027 = fmul fast float %2025, %2026
  %2028 = fadd fast float %2027, %2022
  %2029 = fmul fast float %2028, 0x3F70101020000000
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  br i1 %1260, label %2031, label %2066

; <label>:2031                                    ; preds = %2013
  %2032 = fmul fast float %2017, 2.000000e+00
  %2033 = fcmp fast olt float %1962, 1.270000e+02
  %2034 = fcmp fast olt float %1963, 1.270000e+02
  %2035 = fcmp fast olt float %1964, 1.270000e+02
  %2036 = fmul fast float %1962, 0xBFF7154760000000
  %2037 = fmul fast float %2036, %2032
  %2038 = fmul fast float %1963, 0xBFF7154760000000
  %2039 = fmul fast float %2038, %2032
  %2040 = fmul fast float %1964, 0xBFF7154760000000
  %2041 = fmul fast float %2040, %2032
  %2042 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2043 = call float @dx.op.unary.f32(i32 21, float %2039)  ; Exp(value)
  %2044 = call float @dx.op.unary.f32(i32 21, float %2041)  ; Exp(value)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2046 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2047 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2048 = fadd fast float %2045, -1.000000e+00
  %2049 = select i1 %2033, float %2048, float -1.000000e+00
  %2050 = fadd fast float %2046, -1.000000e+00
  %2051 = select i1 %2034, float %2050, float -1.000000e+00
  %2052 = fadd fast float %2047, -1.000000e+00
  %2053 = select i1 %2035, float %2052, float -1.000000e+00
  %2054 = fmul fast float %2049, %1556
  %2055 = fmul fast float %2051, %1556
  %2056 = fmul fast float %2053, %1556
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fadd fast float %2055, 1.000000e+00
  %2059 = fadd fast float %2056, 1.000000e+00
  %2060 = fmul fast float %2057, %1241
  %2061 = fmul fast float %2058, %1242
  %2062 = fmul fast float %2059, %1243
  %2063 = fmul fast float %2057, %1244
  %2064 = fmul fast float %2058, %1245
  %2065 = fmul fast float %2059, %1246
  br label %2066

; <label>:2066                                    ; preds = %2031, %2013
  %2067 = phi float [ %2060, %2031 ], [ %1241, %2013 ]
  %2068 = phi float [ %2061, %2031 ], [ %1242, %2013 ]
  %2069 = phi float [ %2062, %2031 ], [ %1243, %2013 ]
  %2070 = phi float [ %2063, %2031 ], [ %1244, %2013 ]
  %2071 = phi float [ %2064, %2031 ], [ %1245, %2013 ]
  %2072 = phi float [ %2065, %2031 ], [ %1246, %2013 ]
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 3
  %2076 = icmp eq i32 %2075, 3
  br i1 %2076, label %2155, label %2077

; <label>:2077                                    ; preds = %2066
  %2078 = and i32 %2074, 16
  %2079 = icmp ne i32 %2078, 0
  %2080 = select i1 %2079, float %1556, float 0.000000e+00
  %2081 = icmp eq i32 %2075, 0
  br i1 %2081, label %2082, label %2110

; <label>:2082                                    ; preds = %2077
  %2083 = and i32 %2074, 64
  %2084 = icmp ne i32 %2083, 0
  %2085 = select i1 %2084, float %1556, float 0.000000e+00
  %2086 = fsub fast float %1776, %2067
  %2087 = fsub fast float %1777, %2068
  %2088 = fsub fast float %1778, %2069
  %2089 = fmul fast float %2080, %2086
  %2090 = fmul fast float %2080, %2087
  %2091 = fmul fast float %2080, %2088
  %2092 = fadd fast float %2089, %2067
  %2093 = fadd fast float %2090, %2068
  %2094 = fadd fast float %2091, %2069
  %2095 = fsub fast float %1762, %1253
  %2096 = fmul fast float %2080, %2095
  %2097 = fadd fast float %2096, %1253
  %2098 = fsub fast float %1904, %2070
  %2099 = fsub fast float %1905, %2071
  %2100 = fsub fast float %1906, %2072
  %2101 = fmul fast float %2085, %2098
  %2102 = fmul fast float %2085, %2099
  %2103 = fmul fast float %2085, %2100
  %2104 = fadd fast float %2101, %2070
  %2105 = fadd fast float %2102, %2071
  %2106 = fadd fast float %2103, %2072
  %2107 = fsub fast float %2030, %1258
  %2108 = fmul fast float %2080, %2107
  %2109 = fadd fast float %2108, %1258
  br label %2155

; <label>:2110                                    ; preds = %2077
  %2111 = icmp eq i32 %2075, 1
  br i1 %2111, label %2112, label %2125

; <label>:2112                                    ; preds = %2110
  %2113 = fadd fast float %1776, -1.000000e+00
  %2114 = fadd fast float %1777, -1.000000e+00
  %2115 = fadd fast float %1778, -1.000000e+00
  %2116 = fmul fast float %2080, %2113
  %2117 = fmul fast float %2080, %2114
  %2118 = fmul fast float %2080, %2115
  %2119 = fadd fast float %2116, 1.000000e+00
  %2120 = fadd fast float %2117, 1.000000e+00
  %2121 = fadd fast float %2118, 1.000000e+00
  %2122 = fmul fast float %2119, %2067
  %2123 = fmul fast float %2120, %2068
  %2124 = fmul fast float %2121, %2069
  br label %2155

; <label>:2125                                    ; preds = %2110
  %2126 = icmp eq i32 %2075, 2
  br i1 %2126, label %2127, label %2155

; <label>:2127                                    ; preds = %2125
  %2128 = call float @dx.op.unary.f32(i32 24, float %1776)  ; Sqrt(value)
  %2129 = call float @dx.op.unary.f32(i32 24, float %1777)  ; Sqrt(value)
  %2130 = call float @dx.op.unary.f32(i32 24, float %1778)  ; Sqrt(value)
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fadd fast float %2129, -5.000000e-01
  %2133 = fadd fast float %2130, -5.000000e-01
  %2134 = fmul fast float %2131, %2080
  %2135 = fmul fast float %2132, %2080
  %2136 = fmul fast float %2133, %2080
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = fadd fast float %2135, 5.000000e-01
  %2139 = fadd fast float %2136, 5.000000e-01
  %2140 = fmul fast float %2137, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2067
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2067
  %2145 = fmul fast float %2138, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2068
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2068
  %2150 = fmul fast float %2139, 2.000000e+00
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2151, %2069
  %2153 = fadd fast float %2152, %2150
  %2154 = fmul fast float %2153, %2069
  br label %2155

; <label>:2155                                    ; preds = %2127, %2125, %2112, %2082, %2066
  %2156 = phi float [ %2067, %2066 ], [ %2144, %2127 ], [ %2067, %2125 ], [ %2122, %2112 ], [ %2092, %2082 ]
  %2157 = phi float [ %2068, %2066 ], [ %2149, %2127 ], [ %2068, %2125 ], [ %2123, %2112 ], [ %2093, %2082 ]
  %2158 = phi float [ %2069, %2066 ], [ %2154, %2127 ], [ %2069, %2125 ], [ %2124, %2112 ], [ %2094, %2082 ]
  %2159 = phi float [ %2070, %2066 ], [ %2070, %2127 ], [ %2070, %2125 ], [ %2070, %2112 ], [ %2104, %2082 ]
  %2160 = phi float [ %2071, %2066 ], [ %2071, %2127 ], [ %2071, %2125 ], [ %2071, %2112 ], [ %2105, %2082 ]
  %2161 = phi float [ %2072, %2066 ], [ %2072, %2127 ], [ %2072, %2125 ], [ %2072, %2112 ], [ %2106, %2082 ]
  %2162 = phi float [ %1253, %2066 ], [ %1253, %2127 ], [ %1253, %2125 ], [ %1253, %2112 ], [ %2097, %2082 ]
  %2163 = phi float [ %1258, %2066 ], [ %1258, %2127 ], [ %1258, %2125 ], [ %1258, %2112 ], [ %2109, %2082 ]
  %2164 = and i32 %2074, 12
  %2165 = icmp eq i32 %2164, 12
  br i1 %2165, label %2296, label %2166

; <label>:2166                                    ; preds = %2155
  %2167 = and i32 %2074, 2097184
  %2168 = icmp eq i32 %2167, 2097184
  %2169 = select i1 %2168, float %1556, float 0.000000e+00
  %2170 = and i32 %2074, 4194336
  %2171 = icmp eq i32 %2170, 4194336
  %2172 = select i1 %2171, float %1556, float 0.000000e+00
  %2173 = and i32 %2074, 8388640
  %2174 = icmp eq i32 %2173, 8388640
  %2175 = select i1 %2174, float %1556, float 0.000000e+00
  %2176 = and i32 %2074, 1024
  %2177 = icmp ne i32 %2176, 0
  %2178 = select i1 %2177, float %1556, float 0.000000e+00
  %2179 = and i32 %2074, 2048
  %2180 = icmp ne i32 %2179, 0
  %2181 = select i1 %2180, float %1556, float 0.000000e+00
  %2182 = and i32 %2074, 8192
  %2183 = icmp ne i32 %2182, 0
  %2184 = select i1 %2183, float %1556, float 0.000000e+00
  %2185 = icmp eq i32 %2164, 0
  br i1 %2185, label %2186, label %2220

; <label>:2186                                    ; preds = %2166
  %2187 = fsub fast float %1857, %1239
  %2188 = fsub fast float %1858, %1240
  %2189 = fmul fast float %2169, %2187
  %2190 = fmul fast float %2169, %2188
  %2191 = fadd fast float %2189, %1239
  %2192 = fadd fast float %2190, %1240
  %2193 = fsub fast float %1859, %1256
  %2194 = fmul fast float %2172, %2193
  %2195 = fadd fast float %2194, %1256
  %2196 = fsub fast float %1856, %1255
  %2197 = fmul fast float %2175, %2196
  %2198 = fadd fast float %2197, %1255
  %2199 = fsub fast float %1962, %1250
  %2200 = fsub fast float %1963, %1251
  %2201 = fsub fast float %1964, %1252
  %2202 = fmul fast float %2178, %2199
  %2203 = fmul fast float %2178, %2200
  %2204 = fmul fast float %2178, %2201
  %2205 = fadd fast float %2202, %1250
  %2206 = fadd fast float %2203, %1251
  %2207 = fadd fast float %2204, %1252
  %2208 = fsub fast float %2017, %1257
  %2209 = fmul fast float %2181, %2208
  %2210 = fadd fast float %2209, %1257
  %2211 = fsub fast float %2014, %1247
  %2212 = fsub fast float %2015, %1248
  %2213 = fsub fast float %2016, %1249
  %2214 = fmul fast float %2184, %2211
  %2215 = fmul fast float %2184, %2212
  %2216 = fmul fast float %2184, %2213
  %2217 = fadd fast float %2214, %1247
  %2218 = fadd fast float %2215, %1248
  %2219 = fadd fast float %2216, %1249
  br label %2296

; <label>:2220                                    ; preds = %2166
  %2221 = icmp eq i32 %2164, 4
  br i1 %2221, label %2222, label %2268

; <label>:2222                                    ; preds = %2220
  %2223 = fmul fast float %2169, %1857
  %2224 = fmul fast float %2169, %1858
  %2225 = fadd fast float %2223, %1239
  %2226 = fadd fast float %2224, %1240
  %2227 = call float @dx.op.binary.f32(i32 36, float %1256, float %1859)  ; FMin(a,b)
  %2228 = fsub fast float %2227, %1256
  %2229 = fmul fast float %2228, %2172
  %2230 = fadd fast float %2229, %1256
  %2231 = fadd fast float %1856, %1255
  %2232 = fmul fast float %2231, 0x3FF337FAE0000000
  %2233 = fmul fast float %1255, %1255
  %2234 = fmul fast float %1856, %1856
  %2235 = fadd fast float %2234, %2233
  %2236 = fmul fast float %2235, 0x3FE5152B00000000
  %2237 = fmul fast float %1255, 0xBFCC1F85E0000000
  %2238 = fmul fast float %2237, %1856
  %2239 = fadd fast float %2238, 0xBFE1363700000000
  %2240 = fadd fast float %2239, %2232
  %2241 = fsub fast float %2240, %2236
  %2242 = fmul fast float %2231, 0x3FBA6F0D00000000
  %2243 = fmul fast float %2235, 0x3FD0432880000000
  %2244 = fmul fast float %1255, 0xBFEF110800000000
  %2245 = fmul fast float %2244, %1856
  %2246 = fadd fast float %2245, 1.000000e+00
  %2247 = fsub fast float %2246, %2242
  %2248 = fadd fast float %2247, %2243
  %2249 = fdiv fast float %2241, %2248
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2251 = fsub fast float %2250, %1255
  %2252 = fmul fast float %2251, %2175
  %2253 = fadd fast float %2252, %1255
  %2254 = fmul fast float %2178, %1962
  %2255 = fmul fast float %2178, %1963
  %2256 = fmul fast float %2178, %1964
  %2257 = fadd fast float %2254, %1250
  %2258 = fadd fast float %2255, %1251
  %2259 = fadd fast float %2256, %1252
  %2260 = fmul fast float %2181, %2017
  %2261 = fadd fast float %2260, %1257
  %2262 = fmul fast float %2184, %2014
  %2263 = fmul fast float %2184, %2015
  %2264 = fmul fast float %2184, %2016
  %2265 = fadd fast float %2262, %1247
  %2266 = fadd fast float %2263, %1248
  %2267 = fadd fast float %2264, %1249
  br label %2296

; <label>:2268                                    ; preds = %2220
  %2269 = icmp eq i32 %2164, 8
  br i1 %2269, label %2270, label %2296

; <label>:2270                                    ; preds = %2268
  %2271 = fmul fast float %2169, %1857
  %2272 = fmul fast float %2169, %1858
  %2273 = fadd fast float %2271, %1239
  %2274 = fadd fast float %2272, %1240
  %2275 = call float @dx.op.binary.f32(i32 36, float %1256, float %1859)  ; FMin(a,b)
  %2276 = fsub fast float %2275, %1256
  %2277 = fmul fast float %2276, %2172
  %2278 = fadd fast float %2277, %1256
  %2279 = fsub fast float %1856, %1255
  %2280 = fmul fast float %2175, %2279
  %2281 = fadd fast float %2280, %1255
  %2282 = fmul fast float %2178, %1962
  %2283 = fmul fast float %2178, %1963
  %2284 = fmul fast float %2178, %1964
  %2285 = fadd fast float %2282, %1250
  %2286 = fadd fast float %2283, %1251
  %2287 = fadd fast float %2284, %1252
  %2288 = fmul fast float %2181, %2017
  %2289 = fadd fast float %2288, %1257
  %2290 = fmul fast float %2184, %2014
  %2291 = fmul fast float %2184, %2015
  %2292 = fmul fast float %2184, %2016
  %2293 = fadd fast float %2290, %1247
  %2294 = fadd fast float %2291, %1248
  %2295 = fadd fast float %2292, %1249
  br label %2296

; <label>:2296                                    ; preds = %2270, %2268, %2222, %2186, %2155, %1555, %1259, %1238
  %2297 = phi float [ %1239, %2155 ], [ %1239, %1555 ], [ %1239, %1238 ], [ %2273, %2270 ], [ %1239, %2268 ], [ %2225, %2222 ], [ %2191, %2186 ], [ %1239, %1259 ]
  %2298 = phi float [ %1240, %2155 ], [ %1240, %1555 ], [ %1240, %1238 ], [ %2274, %2270 ], [ %1240, %2268 ], [ %2226, %2222 ], [ %2192, %2186 ], [ %1240, %1259 ]
  %2299 = phi float [ %2156, %2155 ], [ %1241, %1555 ], [ %1241, %1238 ], [ %2156, %2270 ], [ %2156, %2268 ], [ %2156, %2222 ], [ %2156, %2186 ], [ %1241, %1259 ]
  %2300 = phi float [ %2157, %2155 ], [ %1242, %1555 ], [ %1242, %1238 ], [ %2157, %2270 ], [ %2157, %2268 ], [ %2157, %2222 ], [ %2157, %2186 ], [ %1242, %1259 ]
  %2301 = phi float [ %2158, %2155 ], [ %1243, %1555 ], [ %1243, %1238 ], [ %2158, %2270 ], [ %2158, %2268 ], [ %2158, %2222 ], [ %2158, %2186 ], [ %1243, %1259 ]
  %2302 = phi float [ %2159, %2155 ], [ %1244, %1555 ], [ %1244, %1238 ], [ %2159, %2270 ], [ %2159, %2268 ], [ %2159, %2222 ], [ %2159, %2186 ], [ %1244, %1259 ]
  %2303 = phi float [ %2160, %2155 ], [ %1245, %1555 ], [ %1245, %1238 ], [ %2160, %2270 ], [ %2160, %2268 ], [ %2160, %2222 ], [ %2160, %2186 ], [ %1245, %1259 ]
  %2304 = phi float [ %2161, %2155 ], [ %1246, %1555 ], [ %1246, %1238 ], [ %2161, %2270 ], [ %2161, %2268 ], [ %2161, %2222 ], [ %2161, %2186 ], [ %1246, %1259 ]
  %2305 = phi float [ %1247, %2155 ], [ %1247, %1555 ], [ %1247, %1238 ], [ %2293, %2270 ], [ %1247, %2268 ], [ %2265, %2222 ], [ %2217, %2186 ], [ %1247, %1259 ]
  %2306 = phi float [ %1248, %2155 ], [ %1248, %1555 ], [ %1248, %1238 ], [ %2294, %2270 ], [ %1248, %2268 ], [ %2266, %2222 ], [ %2218, %2186 ], [ %1248, %1259 ]
  %2307 = phi float [ %1249, %2155 ], [ %1249, %1555 ], [ %1249, %1238 ], [ %2295, %2270 ], [ %1249, %2268 ], [ %2267, %2222 ], [ %2219, %2186 ], [ %1249, %1259 ]
  %2308 = phi float [ %1250, %2155 ], [ %1250, %1555 ], [ %1250, %1238 ], [ %2285, %2270 ], [ %1250, %2268 ], [ %2257, %2222 ], [ %2205, %2186 ], [ %1250, %1259 ]
  %2309 = phi float [ %1251, %2155 ], [ %1251, %1555 ], [ %1251, %1238 ], [ %2286, %2270 ], [ %1251, %2268 ], [ %2258, %2222 ], [ %2206, %2186 ], [ %1251, %1259 ]
  %2310 = phi float [ %1252, %2155 ], [ %1252, %1555 ], [ %1252, %1238 ], [ %2287, %2270 ], [ %1252, %2268 ], [ %2259, %2222 ], [ %2207, %2186 ], [ %1252, %1259 ]
  %2311 = phi float [ %2162, %2155 ], [ %1253, %1555 ], [ %1253, %1238 ], [ %2162, %2270 ], [ %2162, %2268 ], [ %2162, %2222 ], [ %2162, %2186 ], [ %1253, %1259 ]
  %2312 = phi float [ %1255, %2155 ], [ %1255, %1555 ], [ %1255, %1238 ], [ %2281, %2270 ], [ %1255, %2268 ], [ %2253, %2222 ], [ %2198, %2186 ], [ %1255, %1259 ]
  %2313 = phi float [ %1256, %2155 ], [ %1256, %1555 ], [ %1256, %1238 ], [ %2278, %2270 ], [ %1256, %2268 ], [ %2230, %2222 ], [ %2195, %2186 ], [ %1256, %1259 ]
  %2314 = phi float [ %1257, %2155 ], [ %1257, %1555 ], [ %1257, %1238 ], [ %2289, %2270 ], [ %1257, %2268 ], [ %2261, %2222 ], [ %2210, %2186 ], [ %1257, %1259 ]
  %2315 = phi float [ %2163, %2155 ], [ %1258, %1555 ], [ %1258, %1238 ], [ %2163, %2270 ], [ %2163, %2268 ], [ %2163, %2222 ], [ %2163, %2186 ], [ %1258, %1259 ]
  br i1 %413, label %3353, label %2316

; <label>:2316                                    ; preds = %2296
  %2317 = icmp ult i32 %469, 3
  %2318 = add i32 %60, 56
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %60, 60
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = or i32 %2323, %2320
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %3353, label %2326

; <label>:2326                                    ; preds = %2316
  %2327 = and i32 %2320, 262144
  %2328 = icmp ne i32 %2327, 0
  %2329 = select i1 %2328, float %64, float 1.000000e+00
  %2330 = select i1 %2328, float %65, float 0.000000e+00
  %2331 = select i1 %2328, float %66, float 0.000000e+00
  %2332 = select i1 %2328, float %67, float 1.000000e+00
  %2333 = select i1 %2328, float %68, float %89
  %2334 = select i1 %2328, float %69, float %90
  %2335 = add i32 %60, 316
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = lshr i32 %2337, 16
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = fmul fast float %2339, 0x3F50624DE0000000
  %2341 = add i32 %60, 120
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = lshr i32 %2343, 16
  %2345 = and i32 %2344, 255
  %2346 = lshr i32 %2343, 24
  %2347 = add i32 %60, 324
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 65535
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = lshr i32 %2349, 16
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = add i32 %60, 64
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = lshr i32 %2356, 22
  %2358 = shl nuw nsw i32 %2357, 5
  %2359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2358)  ; LegacyF16ToF32(value)
  %2360 = shl i32 %2356, 4
  %2361 = and i32 %2360, 32752
  %2362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2361)  ; LegacyF16ToF32(value)
  %2363 = lshr i32 %2356, 7
  %2364 = and i32 %2363, 32752
  %2365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2364)  ; LegacyF16ToF32(value)
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2368 = fmul fast float %2367, 1.000000e+03
  %2369 = fmul fast float %363, %2368
  %2370 = call float @dx.op.unary.f32(i32 22, float %2369)  ; Frc(value)
  %2371 = fadd fast float %2370, %353
  %2372 = fmul fast float %364, %2368
  %2373 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2374 = fadd fast float %2373, %355
  %2375 = fmul fast float %2340, %2368
  %2376 = call float @dx.op.unary.f32(i32 22, float %2375)  ; Frc(value)
  %2377 = fmul fast float %2376, 0x401921FB60000000
  %2378 = fadd fast float %2377, %2359
  %2379 = call float @dx.op.unary.f32(i32 13, float %2378)  ; Sin(value)
  %2380 = call float @dx.op.unary.f32(i32 12, float %2378)  ; Cos(value)
  %2381 = fsub fast float -0.000000e+00, %2379
  %2382 = fadd fast float %2333, -5.000000e-01
  %2383 = fadd fast float %2334, -5.000000e-01
  %2384 = fmul fast float %2351, %2382
  %2385 = fmul fast float %2353, %2383
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fmul fast float %2362, %2386
  %2389 = fmul fast float %2365, %2387
  %2390 = fmul fast float %2380, %2388
  %2391 = call float @dx.op.tertiary.f32(i32 46, float %2381, float %2389, float %2390)  ; FMad(a,b,c)
  %2392 = fmul fast float %2379, %2388
  %2393 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2389, float %2392)  ; FMad(a,b,c)
  %2394 = fadd fast float %2371, %2391
  %2395 = fadd fast float %2374, %2393
  %2396 = icmp ugt i32 %2345, 1
  %2397 = icmp ugt i32 %2343, 33554431
  %2398 = or i1 %2397, %2396
  br i1 %2398, label %2399, label %2424

; <label>:2399                                    ; preds = %2326
  %2400 = add i32 %60, 260
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = lshr i32 %2402, 16
  %2404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2403)  ; LegacyF16ToF32(value)
  %2405 = fmul fast float %2367, %2404
  %2406 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2407 = mul nuw nsw i32 %2345, %2346
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2406, %2408
  %2410 = call float @dx.op.unary.f32(i32 27, float %2409)  ; Round_ni(value)
  %2411 = fptoui float %2410 to i32
  %2412 = urem i32 %2411, %2345
  %2413 = udiv i32 %2411, %2346
  %2414 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2415 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2416 = uitofp i32 %2412 to float
  %2417 = uitofp i32 %2413 to float
  %2418 = fadd fast float %2414, %2416
  %2419 = fadd fast float %2415, %2417
  %2420 = uitofp i32 %2345 to float
  %2421 = uitofp i32 %2346 to float
  %2422 = fdiv fast float %2418, %2420
  %2423 = fdiv fast float %2419, %2421
  br label %2424

; <label>:2424                                    ; preds = %2399, %2326
  %2425 = phi float [ %2422, %2399 ], [ %2394, %2326 ]
  %2426 = phi float [ %2423, %2399 ], [ %2395, %2326 ]
  %2427 = and i32 %2320, 16777216
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2538, label %2429

; <label>:2429                                    ; preds = %2424
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2434 = fadd fast float %2431, %165
  %2435 = fadd fast float %2432, %166
  %2436 = fadd fast float %2433, %167
  %2437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.f32 %2437, 0
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = icmp eq i32 %61, 65535
  br i1 %2440, label %2535, label %2441

; <label>:2441                                    ; preds = %2429
  %2442 = lshr i32 %61, 1
  %2443 = shl i32 %2442, 2
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %61, 1
  %2447 = icmp ne i32 %2446, 0
  %2448 = lshr i32 %2445, 16
  %2449 = and i32 %2445, 65535
  %2450 = select i1 %2447, i32 %2448, i32 %2449
  %2451 = icmp eq i32 %2450, 65535
  br i1 %2451, label %2531, label %2452

; <label>:2452                                    ; preds = %2441
  %2453 = mul nuw nsw i32 %2450, 40
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2453, 12
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = add nuw nsw i32 %2453, 24
  %2464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.ResRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.ResRet.f32 %2464, 2
  %2468 = add nuw nsw i32 %2453, 36
  %2469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 0
  %2471 = fsub fast float %2434, %2455
  %2472 = fsub fast float %2435, %2456
  %2473 = fsub fast float %2436, %2457
  %2474 = fmul fast float %2470, %2471
  %2475 = fmul fast float %2470, %2472
  %2476 = fmul fast float %2470, %2473
  %2477 = call float @dx.op.unary.f32(i32 27, float %2474)  ; Round_ni(value)
  %2478 = call float @dx.op.unary.f32(i32 27, float %2475)  ; Round_ni(value)
  %2479 = call float @dx.op.unary.f32(i32 27, float %2476)  ; Round_ni(value)
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fmul fast float %2480, %2460
  %2484 = fmul fast float %2481, %2461
  %2485 = fmul fast float %2482, %2462
  %2486 = shl i32 %61, 2
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2492 = call float @dx.op.unary.f32(i32 22, float %2484)  ; Frc(value)
  %2493 = call float @dx.op.unary.f32(i32 22, float %2485)  ; Frc(value)
  %2494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2490, %dx.types.Handle %55, float %2491, float %2492, float %2493, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.ResRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.ResRet.f32 %2494, 2
  %2498 = fmul fast float %2495, 1.023000e+03
  %2499 = fmul fast float %2496, 1.023000e+03
  %2500 = fmul fast float %2497, 1.023000e+03
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2505 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2506 = call float @dx.op.unary.f32(i32 27, float %2503)  ; Round_ni(value)
  %2507 = fsub fast float %2474, %2477
  %2508 = fsub fast float %2475, %2478
  %2509 = fsub fast float %2476, %2479
  %2510 = fmul fast float %2507, 7.500000e-01
  %2511 = fmul fast float %2508, 7.500000e-01
  %2512 = fmul fast float %2509, 7.500000e-01
  %2513 = fadd fast float %2477, 1.250000e-01
  %2514 = fadd fast float %2513, %2510
  %2515 = fadd fast float %2514, %2504
  %2516 = fadd fast float %2478, 1.250000e-01
  %2517 = fadd fast float %2516, %2511
  %2518 = fadd fast float %2517, %2505
  %2519 = fadd fast float %2479, 1.250000e-01
  %2520 = fadd fast float %2519, %2512
  %2521 = fadd fast float %2520, %2506
  %2522 = fmul fast float %2515, %2465
  %2523 = fmul fast float %2518, %2466
  %2524 = fmul fast float %2521, %2467
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %2526, 0
  %2528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2528, %dx.types.Handle %53, float %2522, float %2523, float %2524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  br label %2531

; <label>:2531                                    ; preds = %2452, %2441
  %2532 = phi float [ %2530, %2452 ], [ -1.000000e+00, %2441 ]
  %2533 = fadd fast float %2532, %2439
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  br label %2535

; <label>:2535                                    ; preds = %2531, %2429
  %2536 = phi float [ %2534, %2531 ], [ %2439, %2429 ]
  %2537 = fmul fast float %2536, %465
  br label %2538

; <label>:2538                                    ; preds = %2535, %2424
  %2539 = phi float [ %2537, %2535 ], [ %465, %2424 ]
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 256
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2590, label %2544

; <label>:2544                                    ; preds = %2538
  %2545 = add i32 %60, 464
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = add i32 %2547, 0
  %2549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2549, %dx.types.Handle %107, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = add i32 %60, 132
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = shl i32 %2554, 4
  %2556 = and i32 %2555, 32752
  %2557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2556)  ; LegacyF16ToF32(value)
  %2558 = lshr i32 %2554, 7
  %2559 = and i32 %2558, 32752
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = fsub fast float 1.000000e+00, %2539
  %2562 = call float @dx.op.binary.f32(i32 35, float %2561, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2563 = bitcast float %2539 to i32
  %2564 = sitofp i32 %2563 to float
  %2565 = fadd fast float %2564, 0xC1CFBF8940000000
  %2566 = fmul fast float %2560, %2565
  %2567 = fadd fast float %2566, 0x41CFBF8940000000
  %2568 = fptosi float %2567 to i32
  %2569 = bitcast i32 %2568 to float
  %2570 = bitcast float %2562 to i32
  %2571 = sitofp i32 %2570 to float
  %2572 = fadd fast float %2571, 0xC1CFBF8940000000
  %2573 = fmul fast float %2572, %2560
  %2574 = fadd fast float %2573, 0x41CFBF8940000000
  %2575 = fptosi float %2574 to i32
  %2576 = bitcast i32 %2575 to float
  %2577 = fmul fast float %2569, %2557
  %2578 = fmul fast float %2576, %2557
  %2579 = fsub fast float %2562, %2577
  %2580 = fadd fast float %2578, %2562
  %2581 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  %2582 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2583 = fsub fast float %2551, %2581
  %2584 = fsub fast float %2582, %2581
  %2585 = bitcast float %2584 to i32
  %2586 = sub nsw i32 2129859010, %2585
  %2587 = bitcast i32 %2586 to float
  %2588 = fmul fast float %2587, %2583
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  br label %2590

; <label>:2590                                    ; preds = %2544, %2538
  %2591 = phi float [ %2589, %2544 ], [ %2539, %2538 ]
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 128
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2612, label %2596

; <label>:2596                                    ; preds = %2590
  %2597 = add i32 %60, 448
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = add i32 %2599, 0
  %2601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2601, %dx.types.Handle %107, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 524288
  %2607 = icmp ne i32 %2606, 0
  %2608 = fcmp fast ogt float %2603, 0x3FE0101020000000
  %2609 = select i1 %2608, float 1.000000e+00, float 0.000000e+00
  %2610 = select i1 %2607, float %2609, float %2603
  %2611 = fmul fast float %2610, %2591
  br label %2612

; <label>:2612                                    ; preds = %2596, %2590
  %2613 = phi float [ %2611, %2596 ], [ %2591, %2590 ]
  %2614 = fcmp fast ult float %2613, 0x3F70101020000000
  br i1 %2614, label %3353, label %2615

; <label>:2615                                    ; preds = %2612
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 16
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2818, label %2620

; <label>:2620                                    ; preds = %2615
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %60, 400
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = add i32 %2625, 0
  %2627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2627, %dx.types.Handle %106, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2629 = extractvalue %dx.types.ResRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.ResRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.ResRet.f32 %2628, 2
  %2632 = extractvalue %dx.types.ResRet.f32 %2628, 3
  %2633 = and i32 %2622, 255
  %2634 = uitofp i32 %2633 to float
  %2635 = lshr i32 %2622, 8
  %2636 = and i32 %2635, 255
  %2637 = uitofp i32 %2636 to float
  %2638 = fmul fast float %2632, %2634
  %2639 = fadd fast float %2638, %2637
  %2640 = fmul fast float %2639, 0x3F70101000000000
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 512
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2653, label %2645

; <label>:2645                                    ; preds = %2620
  %2646 = add i32 %60, 480
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = add i32 %2648, 0
  %2650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2650, %dx.types.Handle %107, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  br label %2653

; <label>:2653                                    ; preds = %2645, %2620
  %2654 = phi float [ %2652, %2645 ], [ 1.000000e+00, %2620 ]
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 33554432
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2765, label %2659

; <label>:2659                                    ; preds = %2653
  %2660 = add i32 %60, 256
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 65535
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = lshr i32 %2662, 16
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = add i32 %60, 260
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 65535
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = lshr i32 %2673, 24
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = and i32 %2673, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = lshr i32 %2673, 8
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = lshr i32 %2673, 16
  %2685 = and i32 %2684, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = add i32 %60, 252
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = lshr i32 %2690, 24
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = and i32 %2690, 255
  %2695 = uitofp i32 %2694 to float
  %2696 = fmul fast float %2695, 0x3F70101020000000
  %2697 = lshr i32 %2690, 8
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = lshr i32 %2690, 16
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F70101020000000
  %2705 = bitcast float %2629 to i32
  %2706 = ashr i32 %2705, 1
  %2707 = sub nsw i32 1597463174, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2629, 5.000000e-01
  %2710 = fmul fast float %2708, %2708
  %2711 = fmul fast float %2710, %2709
  %2712 = fsub fast float 1.500000e+00, %2711
  %2713 = fmul fast float %2708, %2629
  %2714 = fmul fast float %2713, %2712
  %2715 = bitcast float %2630 to i32
  %2716 = ashr i32 %2715, 1
  %2717 = sub nsw i32 1597463174, %2716
  %2718 = bitcast i32 %2717 to float
  %2719 = fmul fast float %2630, 5.000000e-01
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float 1.500000e+00, %2721
  %2723 = fmul fast float %2718, %2630
  %2724 = fmul fast float %2723, %2722
  %2725 = bitcast float %2631 to i32
  %2726 = ashr i32 %2725, 1
  %2727 = sub nsw i32 1597463174, %2726
  %2728 = bitcast i32 %2727 to float
  %2729 = fmul fast float %2631, 5.000000e-01
  %2730 = fmul fast float %2728, %2728
  %2731 = fmul fast float %2730, %2729
  %2732 = fsub fast float 1.500000e+00, %2731
  %2733 = fmul fast float %2728, %2631
  %2734 = fmul fast float %2733, %2732
  %2735 = fsub fast float %2714, %2696
  %2736 = fsub fast float %2724, %2700
  %2737 = fsub fast float %2734, %2704
  %2738 = fmul fast float %2735, %2664
  %2739 = fmul fast float %2736, %2666
  %2740 = fmul fast float %2737, %2671
  %2741 = fadd fast float %2738, %2679
  %2742 = fadd fast float %2739, %2683
  %2743 = fadd fast float %2740, %2687
  %2744 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2745 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2746 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2747 = fmul fast float %2744, %2744
  %2748 = fmul fast float %2745, %2745
  %2749 = fmul fast float %2746, %2746
  %2750 = fsub fast float %2747, %2629
  %2751 = fsub fast float %2748, %2630
  %2752 = fsub fast float %2749, %2631
  %2753 = fmul fast float %2750, %2654
  %2754 = fmul fast float %2751, %2654
  %2755 = fmul fast float %2752, %2654
  %2756 = fadd fast float %2753, %2629
  %2757 = fadd fast float %2754, %2630
  %2758 = fadd fast float %2755, %2631
  %2759 = fadd fast float %2676, %2640
  %2760 = fsub fast float %2759, %2693
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fsub fast float %2761, %2640
  %2763 = fmul fast float %2762, %2654
  %2764 = fadd fast float %2763, %2640
  br label %2818

; <label>:2765                                    ; preds = %2653
  %2766 = and i32 %2656, 134217728
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2802, label %2768

; <label>:2768                                    ; preds = %2765
  %2769 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2770 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2771 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fadd fast float %2770, -5.000000e-01
  %2774 = fadd fast float %2771, -5.000000e-01
  %2775 = fmul fast float %2772, %2654
  %2776 = fmul fast float %2773, %2654
  %2777 = fmul fast float %2774, %2654
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2782 = call float @dx.op.unary.f32(i32 24, float %2630)  ; Sqrt(value)
  %2783 = call float @dx.op.unary.f32(i32 24, float %2631)  ; Sqrt(value)
  %2784 = fmul fast float %2778, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2781
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2781
  %2789 = fmul fast float %2779, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2782
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2782
  %2794 = fmul fast float %2780, 2.000000e+00
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2795, %2783
  %2797 = fadd fast float %2796, %2794
  %2798 = fmul fast float %2797, %2783
  %2799 = fmul fast float %2788, %2788
  %2800 = fmul fast float %2793, %2793
  %2801 = fmul fast float %2798, %2798
  br label %2818

; <label>:2802                                    ; preds = %2765
  %2803 = fmul fast float %340, %340
  %2804 = fmul fast float %344, %344
  %2805 = fmul fast float %348, %348
  %2806 = fadd fast float %2803, -1.000000e+00
  %2807 = fadd fast float %2804, -1.000000e+00
  %2808 = fadd fast float %2805, -1.000000e+00
  %2809 = fmul fast float %2654, %2806
  %2810 = fmul fast float %2654, %2807
  %2811 = fmul fast float %2654, %2808
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fadd fast float %2811, 1.000000e+00
  %2815 = fmul fast float %2812, %2629
  %2816 = fmul fast float %2813, %2630
  %2817 = fmul fast float %2814, %2631
  br label %2818

; <label>:2818                                    ; preds = %2802, %2768, %2659, %2615
  %2819 = phi float [ %2764, %2659 ], [ %2640, %2768 ], [ %2640, %2802 ], [ 0x3FA23C0BE0000000, %2615 ]
  %2820 = phi float [ %2756, %2659 ], [ %2799, %2768 ], [ %2815, %2802 ], [ 1.000000e+00, %2615 ]
  %2821 = phi float [ %2757, %2659 ], [ %2800, %2768 ], [ %2816, %2802 ], [ 1.000000e+00, %2615 ]
  %2822 = phi float [ %2758, %2659 ], [ %2801, %2768 ], [ %2817, %2802 ], [ 1.000000e+00, %2615 ]
  %2823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.i32 %2823, 1
  %2825 = and i32 %2824, 1
  %2826 = icmp ne i32 %2825, 0
  %2827 = add i32 %60, 356
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = and i32 %2829, 32
  %2831 = icmp ne i32 %2830, 0
  %2832 = and i1 %2826, %2831
  %2833 = select i1 %2832, float 1.000000e+00, float %2820
  %2834 = select i1 %2832, float 0x3FD3333340000000, float %2821
  %2835 = select i1 %2832, float 0x3FD3333340000000, float %2822
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 32
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2912, label %2840

; <label>:2840                                    ; preds = %2818
  %2841 = add i32 %60, 124
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %60, 416
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %2846, 0
  %2848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2848, %dx.types.Handle %106, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.ResRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.ResRet.f32 %2849, 2
  %2853 = extractvalue %dx.types.ResRet.f32 %2849, 3
  %2854 = and i32 %2843, 255
  %2855 = uitofp i32 %2854 to float
  %2856 = lshr i32 %2843, 8
  %2857 = and i32 %2856, 255
  %2858 = uitofp i32 %2857 to float
  %2859 = lshr i32 %2843, 16
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fmul fast float %2861, 0x3F70101000000000
  %2863 = fmul fast float %2850, %2855
  %2864 = fadd fast float %2863, %2858
  %2865 = fmul fast float %2864, 0x3F70101000000000
  %2866 = fadd fast float %2851, -5.000000e-01
  %2867 = fadd fast float %2853, -5.000000e-01
  %2868 = fmul fast float %2866, %2862
  %2869 = fmul fast float %2867, %2862
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = fadd fast float %2869, 5.000000e-01
  %2872 = fmul fast float %2870, 2.000000e+00
  %2873 = fadd fast float %2872, -1.000000e+00
  %2874 = fmul fast float %2871, 2.000000e+00
  %2875 = fadd fast float %2874, -1.000000e+00
  %2876 = fadd fast float %2873, %2875
  %2877 = fmul fast float %2876, 5.000000e-01
  %2878 = fsub fast float %2873, %2875
  %2879 = fmul fast float %2878, 5.000000e-01
  %2880 = call float @dx.op.unary.f32(i32 6, float %2877)  ; FAbs(value)
  %2881 = fsub fast float 1.000000e+00, %2880
  %2882 = call float @dx.op.unary.f32(i32 6, float %2879)  ; FAbs(value)
  %2883 = fsub fast float %2881, %2882
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2877, float %2879, float %2883, float %2877, float %2879, float %2883)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = call float @dx.op.unary.f32(i32 25, float %2884)  ; Rsqrt(value)
  %2886 = fmul fast float %2877, %2885
  %2887 = fmul fast float %2879, %2885
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 67108864
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2908, label %2892

; <label>:2892                                    ; preds = %2840
  %2893 = add i32 %60, 312
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 65535
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = lshr i32 %2895, 16
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = fsub fast float %2865, %2903
  %2905 = fmul fast float %2904, %2897
  %2906 = fadd fast float %2905, %2901
  %2907 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  br label %2908

; <label>:2908                                    ; preds = %2892, %2840
  %2909 = phi float [ %2907, %2892 ], [ %2865, %2840 ]
  %2910 = call float @dx.op.dot2.f32(i32 54, float %2886, float %2887, float %2329, float %2330)  ; Dot2(ax,ay,bx,by)
  %2911 = call float @dx.op.dot2.f32(i32 54, float %2886, float %2887, float %2331, float %2332)  ; Dot2(ax,ay,bx,by)
  br label %2912

; <label>:2912                                    ; preds = %2908, %2818
  %2913 = phi float [ %2909, %2908 ], [ 0x3FD6666660000000, %2818 ]
  %2914 = phi float [ %2910, %2908 ], [ 0.000000e+00, %2818 ]
  %2915 = phi float [ %2911, %2908 ], [ 0.000000e+00, %2818 ]
  %2916 = phi float [ %2852, %2908 ], [ 1.000000e+00, %2818 ]
  %2917 = add i32 %60, 192
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = lshr i32 %2919, 22
  %2921 = shl nuw nsw i32 %2920, 5
  %2922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2921)  ; LegacyF16ToF32(value)
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 64
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2960, label %2927

; <label>:2927                                    ; preds = %2912
  %2928 = add i32 %60, 432
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = add i32 %2930, 0
  %2932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 131072
  %2936 = icmp eq i32 %2935, 0
  %2937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2932, %dx.types.Handle %106, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = fmul fast float %2938, %328
  %2942 = fmul fast float %2939, %331
  %2943 = fmul fast float %2940, %334
  br i1 %2936, label %2950, label %2944

; <label>:2944                                    ; preds = %2927
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = fmul fast float %2946, %2941
  %2948 = fmul fast float %2946, %2942
  %2949 = fmul fast float %2946, %2943
  br label %2950

; <label>:2950                                    ; preds = %2944, %2927
  %2951 = phi float [ %2947, %2944 ], [ %2941, %2927 ]
  %2952 = phi float [ %2948, %2944 ], [ %2942, %2927 ]
  %2953 = phi float [ %2949, %2944 ], [ %2943, %2927 ]
  %2954 = fmul fast float %2951, %2922
  %2955 = select i1 %227, float %2954, float %2951
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2955, float %2952, float %2953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = select i1 %227, float 0.000000e+00, float %2951
  %2958 = select i1 %227, float %2956, float %2952
  %2959 = select i1 %227, float 0.000000e+00, float %2953
  br label %2960

; <label>:2960                                    ; preds = %2950, %2912
  %2961 = phi float [ %2957, %2950 ], [ 0.000000e+00, %2912 ]
  %2962 = phi float [ %2958, %2950 ], [ 0.000000e+00, %2912 ]
  %2963 = phi float [ %2959, %2950 ], [ 0.000000e+00, %2912 ]
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 1024
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %2998, label %2968

; <label>:2968                                    ; preds = %2960
  %2969 = add i32 %60, 184
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2971, 8
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = lshr i32 %2971, 16
  %2980 = and i32 %2979, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = fmul fast float %2974, %2974
  %2984 = fmul fast float %2978, %2978
  %2985 = fmul fast float %2982, %2982
  %2986 = add i32 %60, 496
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = add i32 %2988, 0
  %2990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2990, %dx.types.Handle %107, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = fmul fast float %2983, %2992
  %2996 = fmul fast float %2984, %2993
  %2997 = fmul fast float %2985, %2994
  br label %2998

; <label>:2998                                    ; preds = %2968, %2960
  %2999 = phi float [ %2995, %2968 ], [ 0.000000e+00, %2960 ]
  %3000 = phi float [ %2996, %2968 ], [ 0.000000e+00, %2960 ]
  %3001 = phi float [ %2997, %2968 ], [ 0.000000e+00, %2960 ]
  %3002 = fcmp fast ogt float %2999, 0.000000e+00
  %3003 = fcmp fast ogt float %3000, 0.000000e+00
  %3004 = fcmp fast ogt float %3001, 0.000000e+00
  %3005 = call float @dx.op.unary.f32(i32 23, float %2999)  ; Log(value)
  %3006 = call float @dx.op.unary.f32(i32 23, float %3000)  ; Log(value)
  %3007 = call float @dx.op.unary.f32(i32 23, float %3001)  ; Log(value)
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = lshr i32 %3009, 7
  %3011 = and i32 %3010, 32752
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = fmul fast float %3005, 0xBFE62E4300000000
  %3014 = fmul fast float %3013, %3012
  %3015 = fmul fast float %3006, 0xBFE62E4300000000
  %3016 = fmul fast float %3015, %3012
  %3017 = fmul fast float %3007, 0xBFE62E4300000000
  %3018 = fmul fast float %3017, %3012
  %3019 = select i1 %3002, float %3014, float 1.270000e+02
  %3020 = select i1 %3003, float %3016, float 1.270000e+02
  %3021 = select i1 %3004, float %3018, float 1.270000e+02
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 10240
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3070, label %3026

; <label>:3026                                    ; preds = %2998
  %3027 = add i32 %60, 512
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3031, %dx.types.Handle %107, float %2425, float %2426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3032, 3
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 1048576
  %3038 = icmp ne i32 %3037, 0
  %3039 = and i32 %3036, 8192
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3056, label %3041

; <label>:3041                                    ; preds = %3026
  %3042 = extractvalue %dx.types.ResRet.f32 %3032, 2
  %3043 = select i1 %3038, float %3042, float %3033
  %3044 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3045 = select i1 %3038, float %3044, float %3033
  %3046 = add i32 %60, 128
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = lshr i32 %3048, 16
  %3050 = and i32 %3049, 255
  %3051 = uitofp i32 %3050 to float
  %3052 = fmul fast float %3051, 0x3F80101020000000
  %3053 = fmul fast float %3052, %3045
  %3054 = fmul fast float %3052, %3033
  %3055 = fmul fast float %3052, %3043
  br label %3056

; <label>:3056                                    ; preds = %3041, %3026
  %3057 = phi float [ %3053, %3041 ], [ 0.000000e+00, %3026 ]
  %3058 = phi float [ %3054, %3041 ], [ 0.000000e+00, %3026 ]
  %3059 = phi float [ %3055, %3041 ], [ 0.000000e+00, %3026 ]
  %3060 = and i32 %3036, 2048
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3070, label %3062

; <label>:3062                                    ; preds = %3056
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = shl i32 %3064, 4
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = fmul fast float %3067, %3034
  %3069 = call float @dx.op.binary.f32(i32 35, float %3068, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3070

; <label>:3070                                    ; preds = %3062, %3056, %2998
  %3071 = phi float [ %3057, %3062 ], [ %3057, %3056 ], [ 0.000000e+00, %2998 ]
  %3072 = phi float [ %3058, %3062 ], [ %3058, %3056 ], [ 0.000000e+00, %2998 ]
  %3073 = phi float [ %3059, %3062 ], [ %3059, %3056 ], [ 0.000000e+00, %2998 ]
  %3074 = phi float [ %3069, %3062 ], [ 0x3F70101020000000, %3056 ], [ 0x3F70101020000000, %2998 ]
  %3075 = add i32 %60, 128
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = lshr i32 %3077, 8
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2834, float %2835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3084 = fmul fast float %3082, %3083
  %3085 = fadd fast float %3084, %3079
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  br i1 %2317, label %3088, label %3123

; <label>:3088                                    ; preds = %3070
  %3089 = fmul fast float %3074, 2.000000e+00
  %3090 = fcmp fast olt float %3019, 1.270000e+02
  %3091 = fcmp fast olt float %3020, 1.270000e+02
  %3092 = fcmp fast olt float %3021, 1.270000e+02
  %3093 = fmul fast float %3019, 0xBFF7154760000000
  %3094 = fmul fast float %3093, %3089
  %3095 = fmul fast float %3020, 0xBFF7154760000000
  %3096 = fmul fast float %3095, %3089
  %3097 = fmul fast float %3021, 0xBFF7154760000000
  %3098 = fmul fast float %3097, %3089
  %3099 = call float @dx.op.unary.f32(i32 21, float %3094)  ; Exp(value)
  %3100 = call float @dx.op.unary.f32(i32 21, float %3096)  ; Exp(value)
  %3101 = call float @dx.op.unary.f32(i32 21, float %3098)  ; Exp(value)
  %3102 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3103 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3104 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = select i1 %3090, float %3105, float -1.000000e+00
  %3107 = fadd fast float %3103, -1.000000e+00
  %3108 = select i1 %3091, float %3107, float -1.000000e+00
  %3109 = fadd fast float %3104, -1.000000e+00
  %3110 = select i1 %3092, float %3109, float -1.000000e+00
  %3111 = fmul fast float %3106, %2613
  %3112 = fmul fast float %3108, %2613
  %3113 = fmul fast float %3110, %2613
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fadd fast float %3113, 1.000000e+00
  %3117 = fmul fast float %3114, %2299
  %3118 = fmul fast float %3115, %2300
  %3119 = fmul fast float %3116, %2301
  %3120 = fmul fast float %3114, %2302
  %3121 = fmul fast float %3115, %2303
  %3122 = fmul fast float %3116, %2304
  br label %3123

; <label>:3123                                    ; preds = %3088, %3070
  %3124 = phi float [ %3117, %3088 ], [ %2299, %3070 ]
  %3125 = phi float [ %3118, %3088 ], [ %2300, %3070 ]
  %3126 = phi float [ %3119, %3088 ], [ %2301, %3070 ]
  %3127 = phi float [ %3120, %3088 ], [ %2302, %3070 ]
  %3128 = phi float [ %3121, %3088 ], [ %2303, %3070 ]
  %3129 = phi float [ %3122, %3088 ], [ %2304, %3070 ]
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 3
  %3133 = icmp eq i32 %3132, 3
  br i1 %3133, label %3212, label %3134

; <label>:3134                                    ; preds = %3123
  %3135 = and i32 %3131, 16
  %3136 = icmp ne i32 %3135, 0
  %3137 = select i1 %3136, float %2613, float 0.000000e+00
  %3138 = icmp eq i32 %3132, 0
  br i1 %3138, label %3139, label %3167

; <label>:3139                                    ; preds = %3134
  %3140 = and i32 %3131, 64
  %3141 = icmp ne i32 %3140, 0
  %3142 = select i1 %3141, float %2613, float 0.000000e+00
  %3143 = fsub fast float %2833, %3124
  %3144 = fsub fast float %2834, %3125
  %3145 = fsub fast float %2835, %3126
  %3146 = fmul fast float %3137, %3143
  %3147 = fmul fast float %3137, %3144
  %3148 = fmul fast float %3137, %3145
  %3149 = fadd fast float %3146, %3124
  %3150 = fadd fast float %3147, %3125
  %3151 = fadd fast float %3148, %3126
  %3152 = fsub fast float %2819, %2311
  %3153 = fmul fast float %3137, %3152
  %3154 = fadd fast float %3153, %2311
  %3155 = fsub fast float %2961, %3127
  %3156 = fsub fast float %2962, %3128
  %3157 = fsub fast float %2963, %3129
  %3158 = fmul fast float %3142, %3155
  %3159 = fmul fast float %3142, %3156
  %3160 = fmul fast float %3142, %3157
  %3161 = fadd fast float %3158, %3127
  %3162 = fadd fast float %3159, %3128
  %3163 = fadd fast float %3160, %3129
  %3164 = fsub fast float %3087, %2315
  %3165 = fmul fast float %3137, %3164
  %3166 = fadd fast float %3165, %2315
  br label %3212

; <label>:3167                                    ; preds = %3134
  %3168 = icmp eq i32 %3132, 1
  br i1 %3168, label %3169, label %3182

; <label>:3169                                    ; preds = %3167
  %3170 = fadd fast float %2833, -1.000000e+00
  %3171 = fadd fast float %2834, -1.000000e+00
  %3172 = fadd fast float %2835, -1.000000e+00
  %3173 = fmul fast float %3137, %3170
  %3174 = fmul fast float %3137, %3171
  %3175 = fmul fast float %3137, %3172
  %3176 = fadd fast float %3173, 1.000000e+00
  %3177 = fadd fast float %3174, 1.000000e+00
  %3178 = fadd fast float %3175, 1.000000e+00
  %3179 = fmul fast float %3176, %3124
  %3180 = fmul fast float %3177, %3125
  %3181 = fmul fast float %3178, %3126
  br label %3212

; <label>:3182                                    ; preds = %3167
  %3183 = icmp eq i32 %3132, 2
  br i1 %3183, label %3184, label %3212

; <label>:3184                                    ; preds = %3182
  %3185 = call float @dx.op.unary.f32(i32 24, float %2833)  ; Sqrt(value)
  %3186 = call float @dx.op.unary.f32(i32 24, float %2834)  ; Sqrt(value)
  %3187 = call float @dx.op.unary.f32(i32 24, float %2835)  ; Sqrt(value)
  %3188 = fadd fast float %3185, -5.000000e-01
  %3189 = fadd fast float %3186, -5.000000e-01
  %3190 = fadd fast float %3187, -5.000000e-01
  %3191 = fmul fast float %3188, %3137
  %3192 = fmul fast float %3189, %3137
  %3193 = fmul fast float %3190, %3137
  %3194 = fadd fast float %3191, 5.000000e-01
  %3195 = fadd fast float %3192, 5.000000e-01
  %3196 = fadd fast float %3193, 5.000000e-01
  %3197 = fmul fast float %3194, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3124
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3124
  %3202 = fmul fast float %3195, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3125
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3125
  %3207 = fmul fast float %3196, 2.000000e+00
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3208, %3126
  %3210 = fadd fast float %3209, %3207
  %3211 = fmul fast float %3210, %3126
  br label %3212

; <label>:3212                                    ; preds = %3184, %3182, %3169, %3139, %3123
  %3213 = phi float [ %3124, %3123 ], [ %3201, %3184 ], [ %3124, %3182 ], [ %3179, %3169 ], [ %3149, %3139 ]
  %3214 = phi float [ %3125, %3123 ], [ %3206, %3184 ], [ %3125, %3182 ], [ %3180, %3169 ], [ %3150, %3139 ]
  %3215 = phi float [ %3126, %3123 ], [ %3211, %3184 ], [ %3126, %3182 ], [ %3181, %3169 ], [ %3151, %3139 ]
  %3216 = phi float [ %3127, %3123 ], [ %3127, %3184 ], [ %3127, %3182 ], [ %3127, %3169 ], [ %3161, %3139 ]
  %3217 = phi float [ %3128, %3123 ], [ %3128, %3184 ], [ %3128, %3182 ], [ %3128, %3169 ], [ %3162, %3139 ]
  %3218 = phi float [ %3129, %3123 ], [ %3129, %3184 ], [ %3129, %3182 ], [ %3129, %3169 ], [ %3163, %3139 ]
  %3219 = phi float [ %2311, %3123 ], [ %2311, %3184 ], [ %2311, %3182 ], [ %2311, %3169 ], [ %3154, %3139 ]
  %3220 = phi float [ %2315, %3123 ], [ %2315, %3184 ], [ %2315, %3182 ], [ %2315, %3169 ], [ %3166, %3139 ]
  %3221 = and i32 %3131, 12
  %3222 = icmp eq i32 %3221, 12
  br i1 %3222, label %3353, label %3223

; <label>:3223                                    ; preds = %3212
  %3224 = and i32 %3131, 2097184
  %3225 = icmp eq i32 %3224, 2097184
  %3226 = select i1 %3225, float %2613, float 0.000000e+00
  %3227 = and i32 %3131, 4194336
  %3228 = icmp eq i32 %3227, 4194336
  %3229 = select i1 %3228, float %2613, float 0.000000e+00
  %3230 = and i32 %3131, 8388640
  %3231 = icmp eq i32 %3230, 8388640
  %3232 = select i1 %3231, float %2613, float 0.000000e+00
  %3233 = and i32 %3131, 1024
  %3234 = icmp ne i32 %3233, 0
  %3235 = select i1 %3234, float %2613, float 0.000000e+00
  %3236 = and i32 %3131, 2048
  %3237 = icmp ne i32 %3236, 0
  %3238 = select i1 %3237, float %2613, float 0.000000e+00
  %3239 = and i32 %3131, 8192
  %3240 = icmp ne i32 %3239, 0
  %3241 = select i1 %3240, float %2613, float 0.000000e+00
  %3242 = icmp eq i32 %3221, 0
  br i1 %3242, label %3243, label %3277

; <label>:3243                                    ; preds = %3223
  %3244 = fsub fast float %2914, %2297
  %3245 = fsub fast float %2915, %2298
  %3246 = fmul fast float %3226, %3244
  %3247 = fmul fast float %3226, %3245
  %3248 = fadd fast float %3246, %2297
  %3249 = fadd fast float %3247, %2298
  %3250 = fsub fast float %2916, %2313
  %3251 = fmul fast float %3229, %3250
  %3252 = fadd fast float %3251, %2313
  %3253 = fsub fast float %2913, %2312
  %3254 = fmul fast float %3232, %3253
  %3255 = fadd fast float %3254, %2312
  %3256 = fsub fast float %3019, %2308
  %3257 = fsub fast float %3020, %2309
  %3258 = fsub fast float %3021, %2310
  %3259 = fmul fast float %3235, %3256
  %3260 = fmul fast float %3235, %3257
  %3261 = fmul fast float %3235, %3258
  %3262 = fadd fast float %3259, %2308
  %3263 = fadd fast float %3260, %2309
  %3264 = fadd fast float %3261, %2310
  %3265 = fsub fast float %3074, %2314
  %3266 = fmul fast float %3238, %3265
  %3267 = fadd fast float %3266, %2314
  %3268 = fsub fast float %3071, %2305
  %3269 = fsub fast float %3072, %2306
  %3270 = fsub fast float %3073, %2307
  %3271 = fmul fast float %3241, %3268
  %3272 = fmul fast float %3241, %3269
  %3273 = fmul fast float %3241, %3270
  %3274 = fadd fast float %3271, %2305
  %3275 = fadd fast float %3272, %2306
  %3276 = fadd fast float %3273, %2307
  br label %3353

; <label>:3277                                    ; preds = %3223
  %3278 = icmp eq i32 %3221, 4
  br i1 %3278, label %3279, label %3325

; <label>:3279                                    ; preds = %3277
  %3280 = fmul fast float %3226, %2914
  %3281 = fmul fast float %3226, %2915
  %3282 = fadd fast float %3280, %2297
  %3283 = fadd fast float %3281, %2298
  %3284 = call float @dx.op.binary.f32(i32 36, float %2313, float %2916)  ; FMin(a,b)
  %3285 = fsub fast float %3284, %2313
  %3286 = fmul fast float %3285, %3229
  %3287 = fadd fast float %3286, %2313
  %3288 = fadd fast float %2913, %2312
  %3289 = fmul fast float %3288, 0x3FF337FAE0000000
  %3290 = fmul fast float %2312, %2312
  %3291 = fmul fast float %2913, %2913
  %3292 = fadd fast float %3291, %3290
  %3293 = fmul fast float %3292, 0x3FE5152B00000000
  %3294 = fmul fast float %2312, 0xBFCC1F85E0000000
  %3295 = fmul fast float %3294, %2913
  %3296 = fadd fast float %3295, 0xBFE1363700000000
  %3297 = fadd fast float %3296, %3289
  %3298 = fsub fast float %3297, %3293
  %3299 = fmul fast float %3288, 0x3FBA6F0D00000000
  %3300 = fmul fast float %3292, 0x3FD0432880000000
  %3301 = fmul fast float %2312, 0xBFEF110800000000
  %3302 = fmul fast float %3301, %2913
  %3303 = fadd fast float %3302, 1.000000e+00
  %3304 = fsub fast float %3303, %3299
  %3305 = fadd fast float %3304, %3300
  %3306 = fdiv fast float %3298, %3305
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fsub fast float %3307, %2312
  %3309 = fmul fast float %3308, %3232
  %3310 = fadd fast float %3309, %2312
  %3311 = fmul fast float %3235, %3019
  %3312 = fmul fast float %3235, %3020
  %3313 = fmul fast float %3235, %3021
  %3314 = fadd fast float %3311, %2308
  %3315 = fadd fast float %3312, %2309
  %3316 = fadd fast float %3313, %2310
  %3317 = fmul fast float %3238, %3074
  %3318 = fadd fast float %3317, %2314
  %3319 = fmul fast float %3241, %3071
  %3320 = fmul fast float %3241, %3072
  %3321 = fmul fast float %3241, %3073
  %3322 = fadd fast float %3319, %2305
  %3323 = fadd fast float %3320, %2306
  %3324 = fadd fast float %3321, %2307
  br label %3353

; <label>:3325                                    ; preds = %3277
  %3326 = icmp eq i32 %3221, 8
  br i1 %3326, label %3327, label %3353

; <label>:3327                                    ; preds = %3325
  %3328 = fmul fast float %3226, %2914
  %3329 = fmul fast float %3226, %2915
  %3330 = fadd fast float %3328, %2297
  %3331 = fadd fast float %3329, %2298
  %3332 = call float @dx.op.binary.f32(i32 36, float %2313, float %2916)  ; FMin(a,b)
  %3333 = fsub fast float %3332, %2313
  %3334 = fmul fast float %3333, %3229
  %3335 = fadd fast float %3334, %2313
  %3336 = fsub fast float %2913, %2312
  %3337 = fmul fast float %3232, %3336
  %3338 = fadd fast float %3337, %2312
  %3339 = fmul fast float %3235, %3019
  %3340 = fmul fast float %3235, %3020
  %3341 = fmul fast float %3235, %3021
  %3342 = fadd fast float %3339, %2308
  %3343 = fadd fast float %3340, %2309
  %3344 = fadd fast float %3341, %2310
  %3345 = fmul fast float %3238, %3074
  %3346 = fadd fast float %3345, %2314
  %3347 = fmul fast float %3241, %3071
  %3348 = fmul fast float %3241, %3072
  %3349 = fmul fast float %3241, %3073
  %3350 = fadd fast float %3347, %2305
  %3351 = fadd fast float %3348, %2306
  %3352 = fadd fast float %3349, %2307
  br label %3353

; <label>:3353                                    ; preds = %3327, %3325, %3279, %3243, %3212, %2612, %2316, %2296
  %3354 = phi float [ %2297, %3212 ], [ %2297, %2612 ], [ %2297, %2296 ], [ %3330, %3327 ], [ %2297, %3325 ], [ %3282, %3279 ], [ %3248, %3243 ], [ %2297, %2316 ]
  %3355 = phi float [ %2298, %3212 ], [ %2298, %2612 ], [ %2298, %2296 ], [ %3331, %3327 ], [ %2298, %3325 ], [ %3283, %3279 ], [ %3249, %3243 ], [ %2298, %2316 ]
  %3356 = phi float [ %3213, %3212 ], [ %2299, %2612 ], [ %2299, %2296 ], [ %3213, %3327 ], [ %3213, %3325 ], [ %3213, %3279 ], [ %3213, %3243 ], [ %2299, %2316 ]
  %3357 = phi float [ %3214, %3212 ], [ %2300, %2612 ], [ %2300, %2296 ], [ %3214, %3327 ], [ %3214, %3325 ], [ %3214, %3279 ], [ %3214, %3243 ], [ %2300, %2316 ]
  %3358 = phi float [ %3215, %3212 ], [ %2301, %2612 ], [ %2301, %2296 ], [ %3215, %3327 ], [ %3215, %3325 ], [ %3215, %3279 ], [ %3215, %3243 ], [ %2301, %2316 ]
  %3359 = phi float [ %3216, %3212 ], [ %2302, %2612 ], [ %2302, %2296 ], [ %3216, %3327 ], [ %3216, %3325 ], [ %3216, %3279 ], [ %3216, %3243 ], [ %2302, %2316 ]
  %3360 = phi float [ %3217, %3212 ], [ %2303, %2612 ], [ %2303, %2296 ], [ %3217, %3327 ], [ %3217, %3325 ], [ %3217, %3279 ], [ %3217, %3243 ], [ %2303, %2316 ]
  %3361 = phi float [ %3218, %3212 ], [ %2304, %2612 ], [ %2304, %2296 ], [ %3218, %3327 ], [ %3218, %3325 ], [ %3218, %3279 ], [ %3218, %3243 ], [ %2304, %2316 ]
  %3362 = phi float [ %2305, %3212 ], [ %2305, %2612 ], [ %2305, %2296 ], [ %3350, %3327 ], [ %2305, %3325 ], [ %3322, %3279 ], [ %3274, %3243 ], [ %2305, %2316 ]
  %3363 = phi float [ %2306, %3212 ], [ %2306, %2612 ], [ %2306, %2296 ], [ %3351, %3327 ], [ %2306, %3325 ], [ %3323, %3279 ], [ %3275, %3243 ], [ %2306, %2316 ]
  %3364 = phi float [ %2307, %3212 ], [ %2307, %2612 ], [ %2307, %2296 ], [ %3352, %3327 ], [ %2307, %3325 ], [ %3324, %3279 ], [ %3276, %3243 ], [ %2307, %2316 ]
  %3365 = phi float [ %2308, %3212 ], [ %2308, %2612 ], [ %2308, %2296 ], [ %3342, %3327 ], [ %2308, %3325 ], [ %3314, %3279 ], [ %3262, %3243 ], [ %2308, %2316 ]
  %3366 = phi float [ %2309, %3212 ], [ %2309, %2612 ], [ %2309, %2296 ], [ %3343, %3327 ], [ %2309, %3325 ], [ %3315, %3279 ], [ %3263, %3243 ], [ %2309, %2316 ]
  %3367 = phi float [ %2310, %3212 ], [ %2310, %2612 ], [ %2310, %2296 ], [ %3344, %3327 ], [ %2310, %3325 ], [ %3316, %3279 ], [ %3264, %3243 ], [ %2310, %2316 ]
  %3368 = phi float [ %3219, %3212 ], [ %2311, %2612 ], [ %2311, %2296 ], [ %3219, %3327 ], [ %3219, %3325 ], [ %3219, %3279 ], [ %3219, %3243 ], [ %2311, %2316 ]
  %3369 = phi float [ %2312, %3212 ], [ %2312, %2612 ], [ %2312, %2296 ], [ %3338, %3327 ], [ %2312, %3325 ], [ %3310, %3279 ], [ %3255, %3243 ], [ %2312, %2316 ]
  %3370 = phi float [ %2313, %3212 ], [ %2313, %2612 ], [ %2313, %2296 ], [ %3335, %3327 ], [ %2313, %3325 ], [ %3287, %3279 ], [ %3252, %3243 ], [ %2313, %2316 ]
  %3371 = phi float [ %2314, %3212 ], [ %2314, %2612 ], [ %2314, %2296 ], [ %3346, %3327 ], [ %2314, %3325 ], [ %3318, %3279 ], [ %3267, %3243 ], [ %2314, %2316 ]
  %3372 = phi float [ %3220, %3212 ], [ %2315, %2612 ], [ %2315, %2296 ], [ %3220, %3327 ], [ %3220, %3325 ], [ %3220, %3279 ], [ %3220, %3243 ], [ %2315, %2316 ]
  br i1 %415, label %4410, label %3373

; <label>:3373                                    ; preds = %3353
  %3374 = icmp ult i32 %469, 4
  %3375 = add i32 %60, 72
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = add i32 %60, 76
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = or i32 %3380, %3377
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %4410, label %3383

; <label>:3383                                    ; preds = %3373
  %3384 = and i32 %3377, 262144
  %3385 = icmp ne i32 %3384, 0
  %3386 = select i1 %3385, float %64, float 1.000000e+00
  %3387 = select i1 %3385, float %65, float 0.000000e+00
  %3388 = select i1 %3385, float %66, float 0.000000e+00
  %3389 = select i1 %3385, float %67, float 1.000000e+00
  %3390 = select i1 %3385, float %68, float %89
  %3391 = select i1 %3385, float %69, float %90
  %3392 = add i32 %60, 332
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = lshr i32 %3394, 16
  %3396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3395)  ; LegacyF16ToF32(value)
  %3397 = fmul fast float %3396, 0x3F50624DE0000000
  %3398 = add i32 %60, 136
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = lshr i32 %3400, 16
  %3402 = and i32 %3401, 255
  %3403 = lshr i32 %3400, 24
  %3404 = add i32 %60, 340
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3406, 16
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = add i32 %60, 80
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = lshr i32 %3413, 22
  %3415 = shl nuw nsw i32 %3414, 5
  %3416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3415)  ; LegacyF16ToF32(value)
  %3417 = shl i32 %3413, 4
  %3418 = and i32 %3417, 32752
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = lshr i32 %3413, 7
  %3421 = and i32 %3420, 32752
  %3422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3421)  ; LegacyF16ToF32(value)
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3425 = fmul fast float %3424, 1.000000e+03
  %3426 = fmul fast float %405, %3425
  %3427 = call float @dx.op.unary.f32(i32 22, float %3426)  ; Frc(value)
  %3428 = fadd fast float %3427, %395
  %3429 = fmul fast float %406, %3425
  %3430 = call float @dx.op.unary.f32(i32 22, float %3429)  ; Frc(value)
  %3431 = fadd fast float %3430, %397
  %3432 = fmul fast float %3397, %3425
  %3433 = call float @dx.op.unary.f32(i32 22, float %3432)  ; Frc(value)
  %3434 = fmul fast float %3433, 0x401921FB60000000
  %3435 = fadd fast float %3434, %3416
  %3436 = call float @dx.op.unary.f32(i32 13, float %3435)  ; Sin(value)
  %3437 = call float @dx.op.unary.f32(i32 12, float %3435)  ; Cos(value)
  %3438 = fsub fast float -0.000000e+00, %3436
  %3439 = fadd fast float %3390, -5.000000e-01
  %3440 = fadd fast float %3391, -5.000000e-01
  %3441 = fmul fast float %3408, %3439
  %3442 = fmul fast float %3410, %3440
  %3443 = fadd fast float %3441, 5.000000e-01
  %3444 = fadd fast float %3442, 5.000000e-01
  %3445 = fmul fast float %3419, %3443
  %3446 = fmul fast float %3422, %3444
  %3447 = fmul fast float %3437, %3445
  %3448 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3446, float %3447)  ; FMad(a,b,c)
  %3449 = fmul fast float %3436, %3445
  %3450 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3446, float %3449)  ; FMad(a,b,c)
  %3451 = fadd fast float %3428, %3448
  %3452 = fadd fast float %3431, %3450
  %3453 = icmp ugt i32 %3402, 1
  %3454 = icmp ugt i32 %3400, 33554431
  %3455 = or i1 %3454, %3453
  br i1 %3455, label %3456, label %3481

; <label>:3456                                    ; preds = %3383
  %3457 = add i32 %60, 276
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = lshr i32 %3459, 16
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = fmul fast float %3424, %3461
  %3463 = call float @dx.op.unary.f32(i32 22, float %3462)  ; Frc(value)
  %3464 = mul nuw nsw i32 %3402, %3403
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3463, %3465
  %3467 = call float @dx.op.unary.f32(i32 27, float %3466)  ; Round_ni(value)
  %3468 = fptoui float %3467 to i32
  %3469 = urem i32 %3468, %3402
  %3470 = udiv i32 %3468, %3403
  %3471 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3472 = call float @dx.op.unary.f32(i32 22, float %3452)  ; Frc(value)
  %3473 = uitofp i32 %3469 to float
  %3474 = uitofp i32 %3470 to float
  %3475 = fadd fast float %3471, %3473
  %3476 = fadd fast float %3472, %3474
  %3477 = uitofp i32 %3402 to float
  %3478 = uitofp i32 %3403 to float
  %3479 = fdiv fast float %3475, %3477
  %3480 = fdiv fast float %3476, %3478
  br label %3481

; <label>:3481                                    ; preds = %3456, %3383
  %3482 = phi float [ %3479, %3456 ], [ %3451, %3383 ]
  %3483 = phi float [ %3480, %3456 ], [ %3452, %3383 ]
  %3484 = and i32 %3377, 16777216
  %3485 = icmp eq i32 %3484, 0
  br i1 %3485, label %3595, label %3486

; <label>:3486                                    ; preds = %3481
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3491 = fadd fast float %3488, %165
  %3492 = fadd fast float %3489, %166
  %3493 = fadd fast float %3490, %167
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = icmp eq i32 %61, 65535
  br i1 %3497, label %3592, label %3498

; <label>:3498                                    ; preds = %3486
  %3499 = lshr i32 %61, 1
  %3500 = shl i32 %3499, 2
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = and i32 %61, 1
  %3504 = icmp ne i32 %3503, 0
  %3505 = lshr i32 %3502, 16
  %3506 = and i32 %3502, 65535
  %3507 = select i1 %3504, i32 %3505, i32 %3506
  %3508 = icmp eq i32 %3507, 65535
  br i1 %3508, label %3588, label %3509

; <label>:3509                                    ; preds = %3498
  %3510 = mul nuw nsw i32 %3507, 40
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3510, 12
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = add nuw nsw i32 %3510, 24
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = add nuw nsw i32 %3510, 36
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = fsub fast float %3491, %3512
  %3529 = fsub fast float %3492, %3513
  %3530 = fsub fast float %3493, %3514
  %3531 = fmul fast float %3527, %3528
  %3532 = fmul fast float %3527, %3529
  %3533 = fmul fast float %3527, %3530
  %3534 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3535 = call float @dx.op.unary.f32(i32 27, float %3532)  ; Round_ni(value)
  %3536 = call float @dx.op.unary.f32(i32 27, float %3533)  ; Round_ni(value)
  %3537 = fadd fast float %3534, 5.000000e-01
  %3538 = fadd fast float %3535, 5.000000e-01
  %3539 = fadd fast float %3536, 5.000000e-01
  %3540 = fmul fast float %3537, %3517
  %3541 = fmul fast float %3538, %3518
  %3542 = fmul fast float %3539, %3519
  %3543 = shl i32 %61, 2
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = add i32 %3545, 0
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call float @dx.op.unary.f32(i32 22, float %3540)  ; Frc(value)
  %3549 = call float @dx.op.unary.f32(i32 22, float %3541)  ; Frc(value)
  %3550 = call float @dx.op.unary.f32(i32 22, float %3542)  ; Frc(value)
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3547, %dx.types.Handle %55, float %3548, float %3549, float %3550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3551, 2
  %3555 = fmul fast float %3552, 1.023000e+03
  %3556 = fmul fast float %3553, 1.023000e+03
  %3557 = fmul fast float %3554, 1.023000e+03
  %3558 = fadd fast float %3555, 5.000000e-01
  %3559 = fadd fast float %3556, 5.000000e-01
  %3560 = fadd fast float %3557, 5.000000e-01
  %3561 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3562 = call float @dx.op.unary.f32(i32 27, float %3559)  ; Round_ni(value)
  %3563 = call float @dx.op.unary.f32(i32 27, float %3560)  ; Round_ni(value)
  %3564 = fsub fast float %3531, %3534
  %3565 = fsub fast float %3532, %3535
  %3566 = fsub fast float %3533, %3536
  %3567 = fmul fast float %3564, 7.500000e-01
  %3568 = fmul fast float %3565, 7.500000e-01
  %3569 = fmul fast float %3566, 7.500000e-01
  %3570 = fadd fast float %3534, 1.250000e-01
  %3571 = fadd fast float %3570, %3567
  %3572 = fadd fast float %3571, %3561
  %3573 = fadd fast float %3535, 1.250000e-01
  %3574 = fadd fast float %3573, %3568
  %3575 = fadd fast float %3574, %3562
  %3576 = fadd fast float %3536, 1.250000e-01
  %3577 = fadd fast float %3576, %3569
  %3578 = fadd fast float %3577, %3563
  %3579 = fmul fast float %3572, %3522
  %3580 = fmul fast float %3575, %3523
  %3581 = fmul fast float %3578, %3524
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = add i32 %3583, 0
  %3585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3585, %dx.types.Handle %53, float %3579, float %3580, float %3581, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  br label %3588

; <label>:3588                                    ; preds = %3509, %3498
  %3589 = phi float [ %3587, %3509 ], [ -1.000000e+00, %3498 ]
  %3590 = fadd fast float %3589, %3496
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  br label %3592

; <label>:3592                                    ; preds = %3588, %3486
  %3593 = phi float [ %3591, %3588 ], [ %3496, %3486 ]
  %3594 = fmul fast float %3593, %464
  br label %3595

; <label>:3595                                    ; preds = %3592, %3481
  %3596 = phi float [ %3594, %3592 ], [ %464, %3481 ]
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 256
  %3600 = icmp eq i32 %3599, 0
  br i1 %3600, label %3647, label %3601

; <label>:3601                                    ; preds = %3595
  %3602 = add i32 %60, 468
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = add i32 %3604, 0
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3606, %dx.types.Handle %107, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = add i32 %60, 148
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = shl i32 %3611, 4
  %3613 = and i32 %3612, 32752
  %3614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3613)  ; LegacyF16ToF32(value)
  %3615 = lshr i32 %3611, 7
  %3616 = and i32 %3615, 32752
  %3617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3616)  ; LegacyF16ToF32(value)
  %3618 = fsub fast float 1.000000e+00, %3596
  %3619 = call float @dx.op.binary.f32(i32 35, float %3618, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3620 = bitcast float %3596 to i32
  %3621 = sitofp i32 %3620 to float
  %3622 = fadd fast float %3621, 0xC1CFBF8940000000
  %3623 = fmul fast float %3617, %3622
  %3624 = fadd fast float %3623, 0x41CFBF8940000000
  %3625 = fptosi float %3624 to i32
  %3626 = bitcast i32 %3625 to float
  %3627 = bitcast float %3619 to i32
  %3628 = sitofp i32 %3627 to float
  %3629 = fadd fast float %3628, 0xC1CFBF8940000000
  %3630 = fmul fast float %3629, %3617
  %3631 = fadd fast float %3630, 0x41CFBF8940000000
  %3632 = fptosi float %3631 to i32
  %3633 = bitcast i32 %3632 to float
  %3634 = fmul fast float %3626, %3614
  %3635 = fmul fast float %3633, %3614
  %3636 = fsub fast float %3619, %3634
  %3637 = fadd fast float %3635, %3619
  %3638 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3639 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3640 = fsub fast float %3608, %3638
  %3641 = fsub fast float %3639, %3638
  %3642 = bitcast float %3641 to i32
  %3643 = sub nsw i32 2129859010, %3642
  %3644 = bitcast i32 %3643 to float
  %3645 = fmul fast float %3644, %3640
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  br label %3647

; <label>:3647                                    ; preds = %3601, %3595
  %3648 = phi float [ %3646, %3601 ], [ %3596, %3595 ]
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = and i32 %3650, 128
  %3652 = icmp eq i32 %3651, 0
  br i1 %3652, label %3669, label %3653

; <label>:3653                                    ; preds = %3647
  %3654 = add i32 %60, 452
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = add i32 %3656, 0
  %3658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3658, %dx.types.Handle %107, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 524288
  %3664 = icmp ne i32 %3663, 0
  %3665 = fcmp fast ogt float %3660, 0x3FE0101020000000
  %3666 = select i1 %3665, float 1.000000e+00, float 0.000000e+00
  %3667 = select i1 %3664, float %3666, float %3660
  %3668 = fmul fast float %3667, %3648
  br label %3669

; <label>:3669                                    ; preds = %3653, %3647
  %3670 = phi float [ %3668, %3653 ], [ %3648, %3647 ]
  %3671 = fcmp fast ult float %3670, 0x3F70101020000000
  br i1 %3671, label %4410, label %3672

; <label>:3672                                    ; preds = %3669
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = and i32 %3674, 16
  %3676 = icmp eq i32 %3675, 0
  br i1 %3676, label %3875, label %3677

; <label>:3677                                    ; preds = %3672
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = add i32 %60, 404
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = add i32 %3682, 0
  %3684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3684, %dx.types.Handle %106, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.ResRet.f32 %3685, 3
  %3690 = and i32 %3679, 255
  %3691 = uitofp i32 %3690 to float
  %3692 = lshr i32 %3679, 8
  %3693 = and i32 %3692, 255
  %3694 = uitofp i32 %3693 to float
  %3695 = fmul fast float %3689, %3691
  %3696 = fadd fast float %3695, %3694
  %3697 = fmul fast float %3696, 0x3F70101000000000
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = and i32 %3699, 512
  %3701 = icmp eq i32 %3700, 0
  br i1 %3701, label %3710, label %3702

; <label>:3702                                    ; preds = %3677
  %3703 = add i32 %60, 484
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = add i32 %3705, 0
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3707, %dx.types.Handle %107, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  br label %3710

; <label>:3710                                    ; preds = %3702, %3677
  %3711 = phi float [ %3709, %3702 ], [ 1.000000e+00, %3677 ]
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = and i32 %3713, 33554432
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3822, label %3716

; <label>:3716                                    ; preds = %3710
  %3717 = add i32 %60, 272
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 65535
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = lshr i32 %3719, 16
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = add i32 %60, 276
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = and i32 %3726, 65535
  %3728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3727)  ; LegacyF16ToF32(value)
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = lshr i32 %3730, 24
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101020000000
  %3734 = and i32 %3730, 255
  %3735 = uitofp i32 %3734 to float
  %3736 = fmul fast float %3735, 0x3F70101020000000
  %3737 = lshr i32 %3730, 8
  %3738 = and i32 %3737, 255
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = lshr i32 %3730, 16
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = add i32 %60, 268
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = lshr i32 %3747, 24
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = and i32 %3747, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = fmul fast float %3752, 0x3F70101020000000
  %3754 = lshr i32 %3747, 8
  %3755 = and i32 %3754, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F70101020000000
  %3758 = lshr i32 %3747, 16
  %3759 = and i32 %3758, 255
  %3760 = uitofp i32 %3759 to float
  %3761 = fmul fast float %3760, 0x3F70101020000000
  %3762 = bitcast float %3686 to i32
  %3763 = ashr i32 %3762, 1
  %3764 = sub nsw i32 1597463174, %3763
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3686, 5.000000e-01
  %3767 = fmul fast float %3765, %3765
  %3768 = fmul fast float %3767, %3766
  %3769 = fsub fast float 1.500000e+00, %3768
  %3770 = fmul fast float %3765, %3686
  %3771 = fmul fast float %3770, %3769
  %3772 = bitcast float %3687 to i32
  %3773 = ashr i32 %3772, 1
  %3774 = sub nsw i32 1597463174, %3773
  %3775 = bitcast i32 %3774 to float
  %3776 = fmul fast float %3687, 5.000000e-01
  %3777 = fmul fast float %3775, %3775
  %3778 = fmul fast float %3777, %3776
  %3779 = fsub fast float 1.500000e+00, %3778
  %3780 = fmul fast float %3775, %3687
  %3781 = fmul fast float %3780, %3779
  %3782 = bitcast float %3688 to i32
  %3783 = ashr i32 %3782, 1
  %3784 = sub nsw i32 1597463174, %3783
  %3785 = bitcast i32 %3784 to float
  %3786 = fmul fast float %3688, 5.000000e-01
  %3787 = fmul fast float %3785, %3785
  %3788 = fmul fast float %3787, %3786
  %3789 = fsub fast float 1.500000e+00, %3788
  %3790 = fmul fast float %3785, %3688
  %3791 = fmul fast float %3790, %3789
  %3792 = fsub fast float %3771, %3753
  %3793 = fsub fast float %3781, %3757
  %3794 = fsub fast float %3791, %3761
  %3795 = fmul fast float %3792, %3721
  %3796 = fmul fast float %3793, %3723
  %3797 = fmul fast float %3794, %3728
  %3798 = fadd fast float %3795, %3736
  %3799 = fadd fast float %3796, %3740
  %3800 = fadd fast float %3797, %3744
  %3801 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3802 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3803 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  %3804 = fmul fast float %3801, %3801
  %3805 = fmul fast float %3802, %3802
  %3806 = fmul fast float %3803, %3803
  %3807 = fsub fast float %3804, %3686
  %3808 = fsub fast float %3805, %3687
  %3809 = fsub fast float %3806, %3688
  %3810 = fmul fast float %3807, %3711
  %3811 = fmul fast float %3808, %3711
  %3812 = fmul fast float %3809, %3711
  %3813 = fadd fast float %3810, %3686
  %3814 = fadd fast float %3811, %3687
  %3815 = fadd fast float %3812, %3688
  %3816 = fadd fast float %3733, %3697
  %3817 = fsub fast float %3816, %3750
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = fsub fast float %3818, %3697
  %3820 = fmul fast float %3819, %3711
  %3821 = fadd fast float %3820, %3697
  br label %3875

; <label>:3822                                    ; preds = %3710
  %3823 = and i32 %3713, 134217728
  %3824 = icmp eq i32 %3823, 0
  br i1 %3824, label %3859, label %3825

; <label>:3825                                    ; preds = %3822
  %3826 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3827 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3828 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3829 = fadd fast float %3826, -5.000000e-01
  %3830 = fadd fast float %3827, -5.000000e-01
  %3831 = fadd fast float %3828, -5.000000e-01
  %3832 = fmul fast float %3829, %3711
  %3833 = fmul fast float %3830, %3711
  %3834 = fmul fast float %3831, %3711
  %3835 = fadd fast float %3832, 5.000000e-01
  %3836 = fadd fast float %3833, 5.000000e-01
  %3837 = fadd fast float %3834, 5.000000e-01
  %3838 = call float @dx.op.unary.f32(i32 24, float %3686)  ; Sqrt(value)
  %3839 = call float @dx.op.unary.f32(i32 24, float %3687)  ; Sqrt(value)
  %3840 = call float @dx.op.unary.f32(i32 24, float %3688)  ; Sqrt(value)
  %3841 = fmul fast float %3835, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3838
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3838
  %3846 = fmul fast float %3836, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3839
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3839
  %3851 = fmul fast float %3837, 2.000000e+00
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = fmul fast float %3852, %3840
  %3854 = fadd fast float %3853, %3851
  %3855 = fmul fast float %3854, %3840
  %3856 = fmul fast float %3845, %3845
  %3857 = fmul fast float %3850, %3850
  %3858 = fmul fast float %3855, %3855
  br label %3875

; <label>:3859                                    ; preds = %3822
  %3860 = fmul fast float %382, %382
  %3861 = fmul fast float %386, %386
  %3862 = fmul fast float %390, %390
  %3863 = fadd fast float %3860, -1.000000e+00
  %3864 = fadd fast float %3861, -1.000000e+00
  %3865 = fadd fast float %3862, -1.000000e+00
  %3866 = fmul fast float %3711, %3863
  %3867 = fmul fast float %3711, %3864
  %3868 = fmul fast float %3711, %3865
  %3869 = fadd fast float %3866, 1.000000e+00
  %3870 = fadd fast float %3867, 1.000000e+00
  %3871 = fadd fast float %3868, 1.000000e+00
  %3872 = fmul fast float %3869, %3686
  %3873 = fmul fast float %3870, %3687
  %3874 = fmul fast float %3871, %3688
  br label %3875

; <label>:3875                                    ; preds = %3859, %3825, %3716, %3672
  %3876 = phi float [ %3821, %3716 ], [ %3697, %3825 ], [ %3697, %3859 ], [ 0x3FA23C0BE0000000, %3672 ]
  %3877 = phi float [ %3813, %3716 ], [ %3856, %3825 ], [ %3872, %3859 ], [ 1.000000e+00, %3672 ]
  %3878 = phi float [ %3814, %3716 ], [ %3857, %3825 ], [ %3873, %3859 ], [ 1.000000e+00, %3672 ]
  %3879 = phi float [ %3815, %3716 ], [ %3858, %3825 ], [ %3874, %3859 ], [ 1.000000e+00, %3672 ]
  %3880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.i32 %3880, 1
  %3882 = and i32 %3881, 1
  %3883 = icmp ne i32 %3882, 0
  %3884 = add i32 %60, 356
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = and i32 %3886, 32
  %3888 = icmp ne i32 %3887, 0
  %3889 = and i1 %3883, %3888
  %3890 = select i1 %3889, float 1.000000e+00, float %3877
  %3891 = select i1 %3889, float 0x3FD3333340000000, float %3878
  %3892 = select i1 %3889, float 0x3FD3333340000000, float %3879
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = and i32 %3894, 32
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3969, label %3897

; <label>:3897                                    ; preds = %3875
  %3898 = add i32 %60, 140
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = add i32 %60, 420
  %3902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.i32 %3902, 0
  %3904 = add i32 %3903, 0
  %3905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3905, %dx.types.Handle %106, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %3911 = and i32 %3900, 255
  %3912 = uitofp i32 %3911 to float
  %3913 = lshr i32 %3900, 8
  %3914 = and i32 %3913, 255
  %3915 = uitofp i32 %3914 to float
  %3916 = lshr i32 %3900, 16
  %3917 = and i32 %3916, 255
  %3918 = uitofp i32 %3917 to float
  %3919 = fmul fast float %3918, 0x3F70101000000000
  %3920 = fmul fast float %3907, %3912
  %3921 = fadd fast float %3920, %3915
  %3922 = fmul fast float %3921, 0x3F70101000000000
  %3923 = fadd fast float %3908, -5.000000e-01
  %3924 = fadd fast float %3910, -5.000000e-01
  %3925 = fmul fast float %3923, %3919
  %3926 = fmul fast float %3924, %3919
  %3927 = fadd fast float %3925, 5.000000e-01
  %3928 = fadd fast float %3926, 5.000000e-01
  %3929 = fmul fast float %3927, 2.000000e+00
  %3930 = fadd fast float %3929, -1.000000e+00
  %3931 = fmul fast float %3928, 2.000000e+00
  %3932 = fadd fast float %3931, -1.000000e+00
  %3933 = fadd fast float %3930, %3932
  %3934 = fmul fast float %3933, 5.000000e-01
  %3935 = fsub fast float %3930, %3932
  %3936 = fmul fast float %3935, 5.000000e-01
  %3937 = call float @dx.op.unary.f32(i32 6, float %3934)  ; FAbs(value)
  %3938 = fsub fast float 1.000000e+00, %3937
  %3939 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3940 = fsub fast float %3938, %3939
  %3941 = call float @dx.op.dot3.f32(i32 55, float %3934, float %3936, float %3940, float %3934, float %3936, float %3940)  ; Dot3(ax,ay,az,bx,by,bz)
  %3942 = call float @dx.op.unary.f32(i32 25, float %3941)  ; Rsqrt(value)
  %3943 = fmul fast float %3934, %3942
  %3944 = fmul fast float %3936, %3942
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 67108864
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %3965, label %3949

; <label>:3949                                    ; preds = %3897
  %3950 = add i32 %60, 328
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = and i32 %3952, 65535
  %3954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3953)  ; LegacyF16ToF32(value)
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = and i32 %3956, 65535
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = lshr i32 %3952, 16
  %3960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3959)  ; LegacyF16ToF32(value)
  %3961 = fsub fast float %3922, %3960
  %3962 = fmul fast float %3961, %3954
  %3963 = fadd fast float %3962, %3958
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  br label %3965

; <label>:3965                                    ; preds = %3949, %3897
  %3966 = phi float [ %3964, %3949 ], [ %3922, %3897 ]
  %3967 = call float @dx.op.dot2.f32(i32 54, float %3943, float %3944, float %3386, float %3387)  ; Dot2(ax,ay,bx,by)
  %3968 = call float @dx.op.dot2.f32(i32 54, float %3943, float %3944, float %3388, float %3389)  ; Dot2(ax,ay,bx,by)
  br label %3969

; <label>:3969                                    ; preds = %3965, %3875
  %3970 = phi float [ %3966, %3965 ], [ 0x3FD6666660000000, %3875 ]
  %3971 = phi float [ %3967, %3965 ], [ 0.000000e+00, %3875 ]
  %3972 = phi float [ %3968, %3965 ], [ 0.000000e+00, %3875 ]
  %3973 = phi float [ %3909, %3965 ], [ 1.000000e+00, %3875 ]
  %3974 = add i32 %60, 208
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = lshr i32 %3976, 22
  %3978 = shl nuw nsw i32 %3977, 5
  %3979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3978)  ; LegacyF16ToF32(value)
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = and i32 %3981, 64
  %3983 = icmp eq i32 %3982, 0
  br i1 %3983, label %4017, label %3984

; <label>:3984                                    ; preds = %3969
  %3985 = add i32 %60, 436
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = add i32 %3987, 0
  %3989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = and i32 %3991, 131072
  %3993 = icmp eq i32 %3992, 0
  %3994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3989, %dx.types.Handle %106, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = fmul fast float %3995, %370
  %3999 = fmul fast float %3996, %373
  %4000 = fmul fast float %3997, %376
  br i1 %3993, label %4007, label %4001

; <label>:4001                                    ; preds = %3984
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = fmul fast float %4003, %3998
  %4005 = fmul fast float %4003, %3999
  %4006 = fmul fast float %4003, %4000
  br label %4007

; <label>:4007                                    ; preds = %4001, %3984
  %4008 = phi float [ %4004, %4001 ], [ %3998, %3984 ]
  %4009 = phi float [ %4005, %4001 ], [ %3999, %3984 ]
  %4010 = phi float [ %4006, %4001 ], [ %4000, %3984 ]
  %4011 = fmul fast float %4008, %3979
  %4012 = select i1 %227, float %4011, float %4008
  %4013 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4009, float %4010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = select i1 %227, float 0.000000e+00, float %4008
  %4015 = select i1 %227, float %4013, float %4009
  %4016 = select i1 %227, float 0.000000e+00, float %4010
  br label %4017

; <label>:4017                                    ; preds = %4007, %3969
  %4018 = phi float [ %4014, %4007 ], [ 0.000000e+00, %3969 ]
  %4019 = phi float [ %4015, %4007 ], [ 0.000000e+00, %3969 ]
  %4020 = phi float [ %4016, %4007 ], [ 0.000000e+00, %3969 ]
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = and i32 %4022, 1024
  %4024 = icmp eq i32 %4023, 0
  br i1 %4024, label %4055, label %4025

; <label>:4025                                    ; preds = %4017
  %4026 = add i32 %60, 200
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = and i32 %4028, 255
  %4030 = uitofp i32 %4029 to float
  %4031 = fmul fast float %4030, 0x3F70101020000000
  %4032 = lshr i32 %4028, 8
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3F70101020000000
  %4036 = lshr i32 %4028, 16
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = fmul fast float %4038, 0x3F70101020000000
  %4040 = fmul fast float %4031, %4031
  %4041 = fmul fast float %4035, %4035
  %4042 = fmul fast float %4039, %4039
  %4043 = add i32 %60, 500
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = add i32 %4045, 0
  %4047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4047, %dx.types.Handle %107, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4049 = extractvalue %dx.types.ResRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.ResRet.f32 %4048, 1
  %4051 = extractvalue %dx.types.ResRet.f32 %4048, 2
  %4052 = fmul fast float %4040, %4049
  %4053 = fmul fast float %4041, %4050
  %4054 = fmul fast float %4042, %4051
  br label %4055

; <label>:4055                                    ; preds = %4025, %4017
  %4056 = phi float [ %4052, %4025 ], [ 0.000000e+00, %4017 ]
  %4057 = phi float [ %4053, %4025 ], [ 0.000000e+00, %4017 ]
  %4058 = phi float [ %4054, %4025 ], [ 0.000000e+00, %4017 ]
  %4059 = fcmp fast ogt float %4056, 0.000000e+00
  %4060 = fcmp fast ogt float %4057, 0.000000e+00
  %4061 = fcmp fast ogt float %4058, 0.000000e+00
  %4062 = call float @dx.op.unary.f32(i32 23, float %4056)  ; Log(value)
  %4063 = call float @dx.op.unary.f32(i32 23, float %4057)  ; Log(value)
  %4064 = call float @dx.op.unary.f32(i32 23, float %4058)  ; Log(value)
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = lshr i32 %4066, 7
  %4068 = and i32 %4067, 32752
  %4069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4068)  ; LegacyF16ToF32(value)
  %4070 = fmul fast float %4062, 0xBFE62E4300000000
  %4071 = fmul fast float %4070, %4069
  %4072 = fmul fast float %4063, 0xBFE62E4300000000
  %4073 = fmul fast float %4072, %4069
  %4074 = fmul fast float %4064, 0xBFE62E4300000000
  %4075 = fmul fast float %4074, %4069
  %4076 = select i1 %4059, float %4071, float 1.270000e+02
  %4077 = select i1 %4060, float %4073, float 1.270000e+02
  %4078 = select i1 %4061, float %4075, float 1.270000e+02
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = and i32 %4080, 10240
  %4082 = icmp eq i32 %4081, 0
  br i1 %4082, label %4127, label %4083

; <label>:4083                                    ; preds = %4055
  %4084 = add i32 %60, 516
  %4085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.i32 %4085, 0
  %4087 = add i32 %4086, 0
  %4088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4088, %dx.types.Handle %107, float %3482, float %3483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 3
  %4092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.i32 %4092, 0
  %4094 = and i32 %4093, 1048576
  %4095 = icmp ne i32 %4094, 0
  %4096 = and i32 %4093, 8192
  %4097 = icmp eq i32 %4096, 0
  br i1 %4097, label %4113, label %4098

; <label>:4098                                    ; preds = %4083
  %4099 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4100 = select i1 %4095, float %4099, float %4090
  %4101 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4102 = select i1 %4095, float %4101, float %4090
  %4103 = add i32 %60, 144
  %4104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.i32 %4104, 0
  %4106 = lshr i32 %4105, 16
  %4107 = and i32 %4106, 255
  %4108 = uitofp i32 %4107 to float
  %4109 = fmul fast float %4108, 0x3F80101020000000
  %4110 = fmul fast float %4109, %4102
  %4111 = fmul fast float %4109, %4090
  %4112 = fmul fast float %4109, %4100
  br label %4113

; <label>:4113                                    ; preds = %4098, %4083
  %4114 = phi float [ %4110, %4098 ], [ 0.000000e+00, %4083 ]
  %4115 = phi float [ %4111, %4098 ], [ 0.000000e+00, %4083 ]
  %4116 = phi float [ %4112, %4098 ], [ 0.000000e+00, %4083 ]
  %4117 = and i32 %4093, 2048
  %4118 = icmp eq i32 %4117, 0
  br i1 %4118, label %4127, label %4119

; <label>:4119                                    ; preds = %4113
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = shl i32 %4121, 4
  %4123 = and i32 %4122, 32752
  %4124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4123)  ; LegacyF16ToF32(value)
  %4125 = fmul fast float %4124, %4091
  %4126 = call float @dx.op.binary.f32(i32 35, float %4125, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4127

; <label>:4127                                    ; preds = %4119, %4113, %4055
  %4128 = phi float [ %4114, %4119 ], [ %4114, %4113 ], [ 0.000000e+00, %4055 ]
  %4129 = phi float [ %4115, %4119 ], [ %4115, %4113 ], [ 0.000000e+00, %4055 ]
  %4130 = phi float [ %4116, %4119 ], [ %4116, %4113 ], [ 0.000000e+00, %4055 ]
  %4131 = phi float [ %4126, %4119 ], [ 0x3F70101020000000, %4113 ], [ 0x3F70101020000000, %4055 ]
  %4132 = add i32 %60, 144
  %4133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.i32 %4133, 0
  %4135 = and i32 %4134, 255
  %4136 = uitofp i32 %4135 to float
  %4137 = lshr i32 %4134, 8
  %4138 = and i32 %4137, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = call float @dx.op.dot3.f32(i32 55, float %3890, float %3891, float %3892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = fmul fast float %4139, %4140
  %4142 = fadd fast float %4141, %4136
  %4143 = fmul fast float %4142, 0x3F70101020000000
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  br i1 %3374, label %4145, label %4180

; <label>:4145                                    ; preds = %4127
  %4146 = fmul fast float %4131, 2.000000e+00
  %4147 = fcmp fast olt float %4076, 1.270000e+02
  %4148 = fcmp fast olt float %4077, 1.270000e+02
  %4149 = fcmp fast olt float %4078, 1.270000e+02
  %4150 = fmul fast float %4076, 0xBFF7154760000000
  %4151 = fmul fast float %4150, %4146
  %4152 = fmul fast float %4077, 0xBFF7154760000000
  %4153 = fmul fast float %4152, %4146
  %4154 = fmul fast float %4078, 0xBFF7154760000000
  %4155 = fmul fast float %4154, %4146
  %4156 = call float @dx.op.unary.f32(i32 21, float %4151)  ; Exp(value)
  %4157 = call float @dx.op.unary.f32(i32 21, float %4153)  ; Exp(value)
  %4158 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = fadd fast float %4159, -1.000000e+00
  %4163 = select i1 %4147, float %4162, float -1.000000e+00
  %4164 = fadd fast float %4160, -1.000000e+00
  %4165 = select i1 %4148, float %4164, float -1.000000e+00
  %4166 = fadd fast float %4161, -1.000000e+00
  %4167 = select i1 %4149, float %4166, float -1.000000e+00
  %4168 = fmul fast float %4163, %3670
  %4169 = fmul fast float %4165, %3670
  %4170 = fmul fast float %4167, %3670
  %4171 = fadd fast float %4168, 1.000000e+00
  %4172 = fadd fast float %4169, 1.000000e+00
  %4173 = fadd fast float %4170, 1.000000e+00
  %4174 = fmul fast float %4171, %3356
  %4175 = fmul fast float %4172, %3357
  %4176 = fmul fast float %4173, %3358
  %4177 = fmul fast float %4171, %3359
  %4178 = fmul fast float %4172, %3360
  %4179 = fmul fast float %4173, %3361
  br label %4180

; <label>:4180                                    ; preds = %4145, %4127
  %4181 = phi float [ %4174, %4145 ], [ %3356, %4127 ]
  %4182 = phi float [ %4175, %4145 ], [ %3357, %4127 ]
  %4183 = phi float [ %4176, %4145 ], [ %3358, %4127 ]
  %4184 = phi float [ %4177, %4145 ], [ %3359, %4127 ]
  %4185 = phi float [ %4178, %4145 ], [ %3360, %4127 ]
  %4186 = phi float [ %4179, %4145 ], [ %3361, %4127 ]
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = and i32 %4188, 3
  %4190 = icmp eq i32 %4189, 3
  br i1 %4190, label %4269, label %4191

; <label>:4191                                    ; preds = %4180
  %4192 = and i32 %4188, 16
  %4193 = icmp ne i32 %4192, 0
  %4194 = select i1 %4193, float %3670, float 0.000000e+00
  %4195 = icmp eq i32 %4189, 0
  br i1 %4195, label %4196, label %4224

; <label>:4196                                    ; preds = %4191
  %4197 = and i32 %4188, 64
  %4198 = icmp ne i32 %4197, 0
  %4199 = select i1 %4198, float %3670, float 0.000000e+00
  %4200 = fsub fast float %3890, %4181
  %4201 = fsub fast float %3891, %4182
  %4202 = fsub fast float %3892, %4183
  %4203 = fmul fast float %4194, %4200
  %4204 = fmul fast float %4194, %4201
  %4205 = fmul fast float %4194, %4202
  %4206 = fadd fast float %4203, %4181
  %4207 = fadd fast float %4204, %4182
  %4208 = fadd fast float %4205, %4183
  %4209 = fsub fast float %3876, %3368
  %4210 = fmul fast float %4194, %4209
  %4211 = fadd fast float %4210, %3368
  %4212 = fsub fast float %4018, %4184
  %4213 = fsub fast float %4019, %4185
  %4214 = fsub fast float %4020, %4186
  %4215 = fmul fast float %4199, %4212
  %4216 = fmul fast float %4199, %4213
  %4217 = fmul fast float %4199, %4214
  %4218 = fadd fast float %4215, %4184
  %4219 = fadd fast float %4216, %4185
  %4220 = fadd fast float %4217, %4186
  %4221 = fsub fast float %4144, %3372
  %4222 = fmul fast float %4194, %4221
  %4223 = fadd fast float %4222, %3372
  br label %4269

; <label>:4224                                    ; preds = %4191
  %4225 = icmp eq i32 %4189, 1
  br i1 %4225, label %4226, label %4239

; <label>:4226                                    ; preds = %4224
  %4227 = fadd fast float %3890, -1.000000e+00
  %4228 = fadd fast float %3891, -1.000000e+00
  %4229 = fadd fast float %3892, -1.000000e+00
  %4230 = fmul fast float %4194, %4227
  %4231 = fmul fast float %4194, %4228
  %4232 = fmul fast float %4194, %4229
  %4233 = fadd fast float %4230, 1.000000e+00
  %4234 = fadd fast float %4231, 1.000000e+00
  %4235 = fadd fast float %4232, 1.000000e+00
  %4236 = fmul fast float %4233, %4181
  %4237 = fmul fast float %4234, %4182
  %4238 = fmul fast float %4235, %4183
  br label %4269

; <label>:4239                                    ; preds = %4224
  %4240 = icmp eq i32 %4189, 2
  br i1 %4240, label %4241, label %4269

; <label>:4241                                    ; preds = %4239
  %4242 = call float @dx.op.unary.f32(i32 24, float %3890)  ; Sqrt(value)
  %4243 = call float @dx.op.unary.f32(i32 24, float %3891)  ; Sqrt(value)
  %4244 = call float @dx.op.unary.f32(i32 24, float %3892)  ; Sqrt(value)
  %4245 = fadd fast float %4242, -5.000000e-01
  %4246 = fadd fast float %4243, -5.000000e-01
  %4247 = fadd fast float %4244, -5.000000e-01
  %4248 = fmul fast float %4245, %4194
  %4249 = fmul fast float %4246, %4194
  %4250 = fmul fast float %4247, %4194
  %4251 = fadd fast float %4248, 5.000000e-01
  %4252 = fadd fast float %4249, 5.000000e-01
  %4253 = fadd fast float %4250, 5.000000e-01
  %4254 = fmul fast float %4251, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4181
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4181
  %4259 = fmul fast float %4252, 2.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %4260, %4182
  %4262 = fadd fast float %4261, %4259
  %4263 = fmul fast float %4262, %4182
  %4264 = fmul fast float %4253, 2.000000e+00
  %4265 = fsub fast float 1.000000e+00, %4264
  %4266 = fmul fast float %4265, %4183
  %4267 = fadd fast float %4266, %4264
  %4268 = fmul fast float %4267, %4183
  br label %4269

; <label>:4269                                    ; preds = %4241, %4239, %4226, %4196, %4180
  %4270 = phi float [ %4181, %4180 ], [ %4258, %4241 ], [ %4181, %4239 ], [ %4236, %4226 ], [ %4206, %4196 ]
  %4271 = phi float [ %4182, %4180 ], [ %4263, %4241 ], [ %4182, %4239 ], [ %4237, %4226 ], [ %4207, %4196 ]
  %4272 = phi float [ %4183, %4180 ], [ %4268, %4241 ], [ %4183, %4239 ], [ %4238, %4226 ], [ %4208, %4196 ]
  %4273 = phi float [ %4184, %4180 ], [ %4184, %4241 ], [ %4184, %4239 ], [ %4184, %4226 ], [ %4218, %4196 ]
  %4274 = phi float [ %4185, %4180 ], [ %4185, %4241 ], [ %4185, %4239 ], [ %4185, %4226 ], [ %4219, %4196 ]
  %4275 = phi float [ %4186, %4180 ], [ %4186, %4241 ], [ %4186, %4239 ], [ %4186, %4226 ], [ %4220, %4196 ]
  %4276 = phi float [ %3368, %4180 ], [ %3368, %4241 ], [ %3368, %4239 ], [ %3368, %4226 ], [ %4211, %4196 ]
  %4277 = phi float [ %3372, %4180 ], [ %3372, %4241 ], [ %3372, %4239 ], [ %3372, %4226 ], [ %4223, %4196 ]
  %4278 = and i32 %4188, 12
  %4279 = icmp eq i32 %4278, 12
  br i1 %4279, label %4410, label %4280

; <label>:4280                                    ; preds = %4269
  %4281 = and i32 %4188, 2097184
  %4282 = icmp eq i32 %4281, 2097184
  %4283 = select i1 %4282, float %3670, float 0.000000e+00
  %4284 = and i32 %4188, 4194336
  %4285 = icmp eq i32 %4284, 4194336
  %4286 = select i1 %4285, float %3670, float 0.000000e+00
  %4287 = and i32 %4188, 8388640
  %4288 = icmp eq i32 %4287, 8388640
  %4289 = select i1 %4288, float %3670, float 0.000000e+00
  %4290 = and i32 %4188, 1024
  %4291 = icmp ne i32 %4290, 0
  %4292 = select i1 %4291, float %3670, float 0.000000e+00
  %4293 = and i32 %4188, 2048
  %4294 = icmp ne i32 %4293, 0
  %4295 = select i1 %4294, float %3670, float 0.000000e+00
  %4296 = and i32 %4188, 8192
  %4297 = icmp ne i32 %4296, 0
  %4298 = select i1 %4297, float %3670, float 0.000000e+00
  %4299 = icmp eq i32 %4278, 0
  br i1 %4299, label %4300, label %4334

; <label>:4300                                    ; preds = %4280
  %4301 = fsub fast float %3971, %3354
  %4302 = fsub fast float %3972, %3355
  %4303 = fmul fast float %4283, %4301
  %4304 = fmul fast float %4283, %4302
  %4305 = fadd fast float %4303, %3354
  %4306 = fadd fast float %4304, %3355
  %4307 = fsub fast float %3973, %3370
  %4308 = fmul fast float %4286, %4307
  %4309 = fadd fast float %4308, %3370
  %4310 = fsub fast float %3970, %3369
  %4311 = fmul fast float %4289, %4310
  %4312 = fadd fast float %4311, %3369
  %4313 = fsub fast float %4076, %3365
  %4314 = fsub fast float %4077, %3366
  %4315 = fsub fast float %4078, %3367
  %4316 = fmul fast float %4292, %4313
  %4317 = fmul fast float %4292, %4314
  %4318 = fmul fast float %4292, %4315
  %4319 = fadd fast float %4316, %3365
  %4320 = fadd fast float %4317, %3366
  %4321 = fadd fast float %4318, %3367
  %4322 = fsub fast float %4131, %3371
  %4323 = fmul fast float %4295, %4322
  %4324 = fadd fast float %4323, %3371
  %4325 = fsub fast float %4128, %3362
  %4326 = fsub fast float %4129, %3363
  %4327 = fsub fast float %4130, %3364
  %4328 = fmul fast float %4298, %4325
  %4329 = fmul fast float %4298, %4326
  %4330 = fmul fast float %4298, %4327
  %4331 = fadd fast float %4328, %3362
  %4332 = fadd fast float %4329, %3363
  %4333 = fadd fast float %4330, %3364
  br label %4410

; <label>:4334                                    ; preds = %4280
  %4335 = icmp eq i32 %4278, 4
  br i1 %4335, label %4336, label %4382

; <label>:4336                                    ; preds = %4334
  %4337 = fmul fast float %4283, %3971
  %4338 = fmul fast float %4283, %3972
  %4339 = fadd fast float %4337, %3354
  %4340 = fadd fast float %4338, %3355
  %4341 = call float @dx.op.binary.f32(i32 36, float %3370, float %3973)  ; FMin(a,b)
  %4342 = fsub fast float %4341, %3370
  %4343 = fmul fast float %4342, %4286
  %4344 = fadd fast float %4343, %3370
  %4345 = fadd fast float %3970, %3369
  %4346 = fmul fast float %4345, 0x3FF337FAE0000000
  %4347 = fmul fast float %3369, %3369
  %4348 = fmul fast float %3970, %3970
  %4349 = fadd fast float %4348, %4347
  %4350 = fmul fast float %4349, 0x3FE5152B00000000
  %4351 = fmul fast float %3369, 0xBFCC1F85E0000000
  %4352 = fmul fast float %4351, %3970
  %4353 = fadd fast float %4352, 0xBFE1363700000000
  %4354 = fadd fast float %4353, %4346
  %4355 = fsub fast float %4354, %4350
  %4356 = fmul fast float %4345, 0x3FBA6F0D00000000
  %4357 = fmul fast float %4349, 0x3FD0432880000000
  %4358 = fmul fast float %3369, 0xBFEF110800000000
  %4359 = fmul fast float %4358, %3970
  %4360 = fadd fast float %4359, 1.000000e+00
  %4361 = fsub fast float %4360, %4356
  %4362 = fadd fast float %4361, %4357
  %4363 = fdiv fast float %4355, %4362
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fsub fast float %4364, %3369
  %4366 = fmul fast float %4365, %4289
  %4367 = fadd fast float %4366, %3369
  %4368 = fmul fast float %4292, %4076
  %4369 = fmul fast float %4292, %4077
  %4370 = fmul fast float %4292, %4078
  %4371 = fadd fast float %4368, %3365
  %4372 = fadd fast float %4369, %3366
  %4373 = fadd fast float %4370, %3367
  %4374 = fmul fast float %4295, %4131
  %4375 = fadd fast float %4374, %3371
  %4376 = fmul fast float %4298, %4128
  %4377 = fmul fast float %4298, %4129
  %4378 = fmul fast float %4298, %4130
  %4379 = fadd fast float %4376, %3362
  %4380 = fadd fast float %4377, %3363
  %4381 = fadd fast float %4378, %3364
  br label %4410

; <label>:4382                                    ; preds = %4334
  %4383 = icmp eq i32 %4278, 8
  br i1 %4383, label %4384, label %4410

; <label>:4384                                    ; preds = %4382
  %4385 = fmul fast float %4283, %3971
  %4386 = fmul fast float %4283, %3972
  %4387 = fadd fast float %4385, %3354
  %4388 = fadd fast float %4386, %3355
  %4389 = call float @dx.op.binary.f32(i32 36, float %3370, float %3973)  ; FMin(a,b)
  %4390 = fsub fast float %4389, %3370
  %4391 = fmul fast float %4390, %4286
  %4392 = fadd fast float %4391, %3370
  %4393 = fsub fast float %3970, %3369
  %4394 = fmul fast float %4289, %4393
  %4395 = fadd fast float %4394, %3369
  %4396 = fmul fast float %4292, %4076
  %4397 = fmul fast float %4292, %4077
  %4398 = fmul fast float %4292, %4078
  %4399 = fadd fast float %4396, %3365
  %4400 = fadd fast float %4397, %3366
  %4401 = fadd fast float %4398, %3367
  %4402 = fmul fast float %4295, %4131
  %4403 = fadd fast float %4402, %3371
  %4404 = fmul fast float %4298, %4128
  %4405 = fmul fast float %4298, %4129
  %4406 = fmul fast float %4298, %4130
  %4407 = fadd fast float %4404, %3362
  %4408 = fadd fast float %4405, %3363
  %4409 = fadd fast float %4406, %3364
  br label %4410

; <label>:4410                                    ; preds = %4384, %4382, %4336, %4300, %4269, %3669, %3373, %3353
  %4411 = phi float [ %3354, %4269 ], [ %3354, %3669 ], [ %3354, %3353 ], [ %3354, %3373 ], [ %4305, %4300 ], [ %4339, %4336 ], [ %3354, %4382 ], [ %4387, %4384 ]
  %4412 = phi float [ %3355, %4269 ], [ %3355, %3669 ], [ %3355, %3353 ], [ %3355, %3373 ], [ %4306, %4300 ], [ %4340, %4336 ], [ %3355, %4382 ], [ %4388, %4384 ]
  %4413 = phi float [ %4270, %4269 ], [ %3356, %3669 ], [ %3356, %3353 ], [ %3356, %3373 ], [ %4270, %4300 ], [ %4270, %4336 ], [ %4270, %4382 ], [ %4270, %4384 ]
  %4414 = phi float [ %4271, %4269 ], [ %3357, %3669 ], [ %3357, %3353 ], [ %3357, %3373 ], [ %4271, %4300 ], [ %4271, %4336 ], [ %4271, %4382 ], [ %4271, %4384 ]
  %4415 = phi float [ %4272, %4269 ], [ %3358, %3669 ], [ %3358, %3353 ], [ %3358, %3373 ], [ %4272, %4300 ], [ %4272, %4336 ], [ %4272, %4382 ], [ %4272, %4384 ]
  %4416 = phi float [ %4273, %4269 ], [ %3359, %3669 ], [ %3359, %3353 ], [ %3359, %3373 ], [ %4273, %4300 ], [ %4273, %4336 ], [ %4273, %4382 ], [ %4273, %4384 ]
  %4417 = phi float [ %4274, %4269 ], [ %3360, %3669 ], [ %3360, %3353 ], [ %3360, %3373 ], [ %4274, %4300 ], [ %4274, %4336 ], [ %4274, %4382 ], [ %4274, %4384 ]
  %4418 = phi float [ %4275, %4269 ], [ %3361, %3669 ], [ %3361, %3353 ], [ %3361, %3373 ], [ %4275, %4300 ], [ %4275, %4336 ], [ %4275, %4382 ], [ %4275, %4384 ]
  %4419 = phi float [ %3362, %4269 ], [ %3362, %3669 ], [ %3362, %3353 ], [ %3362, %3373 ], [ %4331, %4300 ], [ %4379, %4336 ], [ %3362, %4382 ], [ %4407, %4384 ]
  %4420 = phi float [ %3363, %4269 ], [ %3363, %3669 ], [ %3363, %3353 ], [ %3363, %3373 ], [ %4332, %4300 ], [ %4380, %4336 ], [ %3363, %4382 ], [ %4408, %4384 ]
  %4421 = phi float [ %3364, %4269 ], [ %3364, %3669 ], [ %3364, %3353 ], [ %3364, %3373 ], [ %4333, %4300 ], [ %4381, %4336 ], [ %3364, %4382 ], [ %4409, %4384 ]
  %4422 = phi float [ %3365, %4269 ], [ %3365, %3669 ], [ %3365, %3353 ], [ %3365, %3373 ], [ %4319, %4300 ], [ %4371, %4336 ], [ %3365, %4382 ], [ %4399, %4384 ]
  %4423 = phi float [ %3366, %4269 ], [ %3366, %3669 ], [ %3366, %3353 ], [ %3366, %3373 ], [ %4320, %4300 ], [ %4372, %4336 ], [ %3366, %4382 ], [ %4400, %4384 ]
  %4424 = phi float [ %3367, %4269 ], [ %3367, %3669 ], [ %3367, %3353 ], [ %3367, %3373 ], [ %4321, %4300 ], [ %4373, %4336 ], [ %3367, %4382 ], [ %4401, %4384 ]
  %4425 = phi float [ %4276, %4269 ], [ %3368, %3669 ], [ %3368, %3353 ], [ %3368, %3373 ], [ %4276, %4300 ], [ %4276, %4336 ], [ %4276, %4382 ], [ %4276, %4384 ]
  %4426 = phi float [ %3369, %4269 ], [ %3369, %3669 ], [ %3369, %3353 ], [ %3369, %3373 ], [ %4312, %4300 ], [ %4367, %4336 ], [ %3369, %4382 ], [ %4395, %4384 ]
  %4427 = phi float [ %3370, %4269 ], [ %3370, %3669 ], [ %3370, %3353 ], [ %3370, %3373 ], [ %4309, %4300 ], [ %4344, %4336 ], [ %3370, %4382 ], [ %4392, %4384 ]
  %4428 = phi float [ %3371, %4269 ], [ %3371, %3669 ], [ %3371, %3353 ], [ %3371, %3373 ], [ %4324, %4300 ], [ %4375, %4336 ], [ %3371, %4382 ], [ %4403, %4384 ]
  %4429 = phi float [ %4277, %4269 ], [ %3372, %3669 ], [ %3372, %3353 ], [ %3372, %3373 ], [ %4277, %4300 ], [ %4277, %4336 ], [ %4277, %4382 ], [ %4277, %4384 ]
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = call float @dx.op.dot2.f32(i32 54, float %4411, float %4412, float %4411, float %4412)  ; Dot2(ax,ay,bx,by)
  %4433 = fmul fast float %4432, 0x3FE3333340000000
  %4434 = fsub fast float 1.000000e+00, %4433
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4412, float %4434, float %4411, float %4412, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 25, float %4435)  ; Rsqrt(value)
  %4437 = fmul fast float %4436, %4411
  %4438 = fmul fast float %4436, %4412
  %4439 = fmul fast float %4434, %4436
  %4440 = fmul fast float %4439, %117
  %4441 = fmul fast float %4439, %118
  %4442 = fmul fast float %4439, %119
  %4443 = fmul fast float %4437, %82
  %4444 = fmul fast float %4437, %83
  %4445 = fmul fast float %4437, %84
  %4446 = fadd fast float %4440, %4443
  %4447 = fadd fast float %4441, %4444
  %4448 = fadd fast float %4442, %4445
  %4449 = fmul fast float %129, %4438
  %4450 = fmul fast float %130, %4438
  %4451 = fmul fast float %131, %4438
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = fadd fast float %4448, %4451
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4452, float %4453, float %4454, float %4452, float %4453, float %4454)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  %4457 = fmul fast float %4452, %4456
  %4458 = fmul fast float %4453, %4456
  %4459 = fmul fast float %4454, %4456
  %4460 = and i32 %62, 1
  %4461 = icmp eq i32 %4460, 0
  br i1 %4461, label %4462, label %5058

; <label>:4462                                    ; preds = %4410
  %4463 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4464 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4468 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4469 = fadd fast float %4463, %165
  %4470 = fadd fast float %4464, %166
  %4471 = fadd fast float %4465, %167
  %4472 = fadd fast float %4466, %165
  %4473 = fadd fast float %4467, %166
  %4474 = fadd fast float %4468, %167
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 1
  %4478 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4481 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4482 = fmul fast float %4476, %110
  %4483 = fmul fast float %4482, %4480
  %4484 = fmul fast float %4477, %111
  %4485 = fmul fast float %4484, %4481
  %4486 = fptoui float %4483 to i32
  %4487 = fptoui float %4485 to i32
  %4488 = fadd fast float %4476, -1.000000e+00
  %4489 = fadd fast float %4477, -1.000000e+00
  %4490 = fptoui float %4488 to i32
  %4491 = fptoui float %4489 to i32
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 %4490)  ; UMin(a,b)
  %4493 = call i32 @dx.op.binary.i32(i32 40, i32 %4487, i32 %4491)  ; UMin(a,b)
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 2
  %4496 = extractvalue %dx.types.CBufRet.f32 %4494, 3
  %4497 = fmul fast float %4495, %98
  %4498 = fsub fast float %4497, %4496
  %4499 = fadd fast float %4478, -1.000000e+00
  %4500 = call float @dx.op.binary.f32(i32 36, float %4498, float %4499)  ; FMin(a,b)
  %4501 = fptoui float %4500 to i32
  %4502 = fptoui float %4476 to i32
  %4503 = fptoui float %4477 to i32
  %4504 = mul i32 %4501, %4503
  %4505 = add i32 %4504, %4493
  %4506 = mul i32 %4505, %4502
  %4507 = add i32 %4506, %4492
  %4508 = shl i32 %4507, 2
  %4509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.i32 %4509, 0
  %4511 = and i32 %4510, 1023
  %4512 = lshr i32 %4510, 10
  %4513 = icmp eq i32 %4511, 0
  br i1 %4513, label %5020, label %4514

; <label>:4514                                    ; preds = %4462
  %4515 = and i32 %4510, 1023
  br label %4516

; <label>:4516                                    ; preds = %4649, %4514
  %4517 = phi i32 [ %4599, %4649 ], [ 0, %4514 ]
  %4518 = phi float [ %4650, %4649 ], [ 0.000000e+00, %4514 ]
  %4519 = phi float [ %4651, %4649 ], [ %1254, %4514 ]
  %4520 = phi float [ %4652, %4649 ], [ %4431, %4514 ]
  %4521 = phi float [ %4653, %4649 ], [ %4429, %4514 ]
  %4522 = phi float [ %4654, %4649 ], [ %4422, %4514 ]
  %4523 = phi float [ %4655, %4649 ], [ %4423, %4514 ]
  %4524 = phi float [ %4656, %4649 ], [ %4424, %4514 ]
  %4525 = phi float [ %4657, %4649 ], [ 0.000000e+00, %4514 ]
  %4526 = phi float [ %4658, %4649 ], [ 0.000000e+00, %4514 ]
  %4527 = phi float [ %4659, %4649 ], [ %4419, %4514 ]
  %4528 = phi float [ %4660, %4649 ], [ %4420, %4514 ]
  %4529 = phi float [ %4661, %4649 ], [ %4421, %4514 ]
  %4530 = phi float [ %4662, %4649 ], [ %4416, %4514 ]
  %4531 = phi float [ %4663, %4649 ], [ %4417, %4514 ]
  %4532 = phi float [ %4664, %4649 ], [ %4418, %4514 ]
  %4533 = phi float [ %4665, %4649 ], [ %4457, %4514 ]
  %4534 = phi float [ %4666, %4649 ], [ %4458, %4514 ]
  %4535 = phi float [ %4667, %4649 ], [ %4459, %4514 ]
  %4536 = phi float [ %4668, %4649 ], [ %4427, %4514 ]
  %4537 = phi float [ %4669, %4649 ], [ %4426, %4514 ]
  %4538 = phi float [ %4670, %4649 ], [ 0.000000e+00, %4514 ]
  %4539 = phi float [ %4671, %4649 ], [ %4425, %4514 ]
  %4540 = phi float [ %4672, %4649 ], [ %4413, %4514 ]
  %4541 = phi float [ %4673, %4649 ], [ %4414, %4514 ]
  %4542 = phi float [ %4674, %4649 ], [ %4415, %4514 ]
  %4543 = add nuw nsw i32 %4517, %4512
  %4544 = shl i32 %4543, 2
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = shl i32 %4546, 8
  %4548 = or i32 %4547, 48
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = or i32 %4547, 64
  %4555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.i32 %4555, 0
  %4557 = extractvalue %dx.types.ResRet.i32 %4555, 1
  %4558 = or i32 %4547, 80
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4562 = or i32 %4547, 96
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4547, 112
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4571 = or i32 %4547, 128
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4547, 144
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4547, 160
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4589 = or i32 %4547, 192
  %4590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.i32 %4590, 0
  %4592 = or i32 %4547, 208
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = or i32 %4547, 248
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = add nuw nsw i32 %4517, 1
  %4600 = bitcast float %4553 to i32
  %4601 = and i32 %4600, 512
  %4602 = icmp eq i32 %4601, 0
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4609 = or i32 %4547, 16
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4616 = or i32 %4547, 32
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4618, float %4619, float %4620, float %4621, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4608)  ; Round_ni(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 27, float %4615)  ; Round_ni(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %4625)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 6, float %4622)  ; FAbs(value)
  %4628 = call float @dx.op.unary.f32(i32 27, float %4627)  ; Round_ni(value)
  %4629 = fadd fast float %4626, %4624
  %4630 = fadd fast float %4629, %4628
  %4631 = fcmp fast oeq float %4630, 0.000000e+00
  %4632 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %4469, float %4470, float %4471, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4633 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %4469, float %4470, float %4471, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4634 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4611, float %4612, float %4613, float %4614, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = fsub fast float %4632, %4608
  %4637 = fsub fast float %4634, %4608
  %4638 = fsub fast float %4633, %4615
  %4639 = fsub fast float %4635, %4615
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4552, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = fadd fast float %4642, %4640
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4646 = fcmp fast ogt float %4644, %4645
  %4647 = and i1 %4631, %4646
  %4648 = and i1 %4602, %4647
  br i1 %4648, label %4676, label %4649

; <label>:4649                                    ; preds = %5006, %4757, %4676, %4516
  %4650 = phi float [ %4518, %4676 ], [ %4760, %4757 ], [ %4760, %5006 ], [ %4518, %4516 ]
  %4651 = phi float [ %4519, %4676 ], [ %4519, %4757 ], [ %4982, %5006 ], [ %4519, %4516 ]
  %4652 = phi float [ %4520, %4676 ], [ %4520, %4757 ], [ %4981, %5006 ], [ %4520, %4516 ]
  %4653 = phi float [ %4521, %4676 ], [ %4521, %4757 ], [ %4979, %5006 ], [ %4521, %4516 ]
  %4654 = phi float [ %4522, %4676 ], [ %4522, %4757 ], [ %4957, %5006 ], [ %4522, %4516 ]
  %4655 = phi float [ %4523, %4676 ], [ %4523, %4757 ], [ %4958, %5006 ], [ %4523, %4516 ]
  %4656 = phi float [ %4524, %4676 ], [ %4524, %4757 ], [ %4959, %5006 ], [ %4524, %4516 ]
  %4657 = phi float [ %4525, %4676 ], [ %4525, %4757 ], [ %4884, %5006 ], [ %4525, %4516 ]
  %4658 = phi float [ %4526, %4676 ], [ %4526, %4757 ], [ %4882, %5006 ], [ %4526, %4516 ]
  %4659 = phi float [ %4527, %4676 ], [ %4527, %4757 ], [ %4927, %5006 ], [ %4527, %4516 ]
  %4660 = phi float [ %4528, %4676 ], [ %4528, %4757 ], [ %4928, %5006 ], [ %4528, %4516 ]
  %4661 = phi float [ %4529, %4676 ], [ %4529, %4757 ], [ %4929, %5006 ], [ %4529, %4516 ]
  %4662 = phi float [ %4530, %4676 ], [ %4530, %4757 ], [ %5016, %5006 ], [ %4530, %4516 ]
  %4663 = phi float [ %4531, %4676 ], [ %4531, %4757 ], [ %5017, %5006 ], [ %4531, %4516 ]
  %4664 = phi float [ %4532, %4676 ], [ %4532, %4757 ], [ %5018, %5006 ], [ %4532, %4516 ]
  %4665 = phi float [ %4533, %4676 ], [ %4533, %4757 ], [ %4863, %5006 ], [ %4533, %4516 ]
  %4666 = phi float [ %4534, %4676 ], [ %4534, %4757 ], [ %4864, %5006 ], [ %4534, %4516 ]
  %4667 = phi float [ %4535, %4676 ], [ %4535, %4757 ], [ %4865, %5006 ], [ %4535, %4516 ]
  %4668 = phi float [ %4536, %4676 ], [ %4536, %4757 ], [ %4937, %5006 ], [ %4536, %4516 ]
  %4669 = phi float [ %4537, %4676 ], [ %4537, %4757 ], [ %4934, %5006 ], [ %4537, %4516 ]
  %4670 = phi float [ %4538, %4676 ], [ %4538, %4757 ], [ %4931, %5006 ], [ %4538, %4516 ]
  %4671 = phi float [ %4539, %4676 ], [ %4539, %4757 ], [ %4880, %5006 ], [ %4539, %4516 ]
  %4672 = phi float [ %4540, %4676 ], [ %4540, %4757 ], [ %4875, %5006 ], [ %4540, %4516 ]
  %4673 = phi float [ %4541, %4676 ], [ %4541, %4757 ], [ %4876, %5006 ], [ %4541, %4516 ]
  %4674 = phi float [ %4542, %4676 ], [ %4542, %4757 ], [ %4877, %5006 ], [ %4542, %4516 ]
  %4675 = icmp eq i32 %4599, %4515
  br i1 %4675, label %5019, label %4516

; <label>:4676                                    ; preds = %4516
  %4677 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4678 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4679 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4680 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4681 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4682 = extractvalue %dx.types.ResRet.i32 %4555, 3
  %4683 = extractvalue %dx.types.ResRet.i32 %4555, 2
  %4684 = add i32 %4682, 0
  %4685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4684, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4687 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4685, %dx.types.Handle %4686, float %4608, float %4615, float undef, float undef, i32 0, i32 0, i32 undef, float %4636, float %4638, float undef, float %4637, float %4639, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4688 = extractvalue %dx.types.ResRet.f32 %4687, 0
  %4689 = fmul fast float %4688, %4681
  %4690 = fadd fast float %4689, %4680
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fmul fast float %4608, %4564
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4615, float %4692)  ; FMad(a,b,c)
  %4694 = fadd fast float %4693, %4679
  %4695 = fmul fast float %4608, %4566
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4615, float %4695)  ; FMad(a,b,c)
  %4697 = fadd fast float %4696, %4678
  %4698 = fmul fast float %4636, %4564
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4638, float %4698)  ; FMad(a,b,c)
  %4700 = fmul fast float %4636, %4566
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4638, float %4700)  ; FMad(a,b,c)
  %4702 = fmul fast float %4637, %4564
  %4703 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4639, float %4702)  ; FMad(a,b,c)
  %4704 = fmul fast float %4637, %4566
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4639, float %4704)  ; FMad(a,b,c)
  %4706 = add i32 %4683, 0
  %4707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4706, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4707, %dx.types.Handle %4686, float %4694, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4699, float %4701, float undef, float %4703, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = and i32 %4600, 1024
  %4711 = icmp ne i32 %4710, 0
  %4712 = fcmp fast ogt float %4709, 0x3FE0101020000000
  %4713 = uitofp i1 %4712 to float
  %4714 = select i1 %4711, float %4713, float %4709
  %4715 = and i32 %4600, 8192
  %4716 = icmp ne i32 %4715, 0
  %4717 = select i1 %4716, float %4677, float 1.000000e+00
  %4718 = fmul fast float %4608, 2.000000e+00
  %4719 = fadd fast float %4718, -1.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 6, float %4719)  ; FAbs(value)
  %4721 = fmul fast float %4720, %4597
  %4722 = fsub fast float %4721, %4597
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4615, 2.000000e+00
  %4725 = fadd fast float %4724, -1.000000e+00
  %4726 = call float @dx.op.unary.f32(i32 6, float %4725)  ; FAbs(value)
  %4727 = fmul fast float %4726, %4598
  %4728 = fsub fast float %4727, %4598
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4627, %4560
  %4731 = fsub fast float %4730, %4560
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4691, %4717
  %4734 = fmul fast float %4733, %4688
  %4735 = fmul fast float %4734, %4723
  %4736 = fmul fast float %4735, %4714
  %4737 = fmul fast float %4736, %4729
  %4738 = fmul fast float %4737, %4732
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4742 = fsub fast float %4644, %4741
  %4743 = fmul fast float %4742, %4740
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4738, %4561
  %4746 = fadd fast float %4738, %4561
  %4747 = fmul fast float %4746, %4570
  %4748 = fsub fast float %4747, %4570
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = and i32 %4600, 128
  %4751 = icmp ne i32 %4750, 0
  %4752 = select i1 %4751, float %4749, float %4745
  %4753 = fmul fast float %4752, %4744
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 0
  %4756 = fcmp fast ugt float %4753, %4755
  br i1 %4756, label %4757, label %4649

; <label>:4757                                    ; preds = %4676
  %4758 = select i1 %4716, float %4753, float 0.000000e+00
  %4759 = fadd fast float %4758, %4518
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  br i1 %4716, label %4649, label %4761

; <label>:4761                                    ; preds = %4757
  %4762 = and i32 %4600, 4
  %4763 = and i32 %4600, 8
  %4764 = add i32 %4556, 0
  %4765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4764, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4765, %dx.types.Handle %4766, float %4694, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4699, float %4701, float undef, float %4703, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4772 = bitcast float %4582 to i32
  %4773 = and i32 %4772, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = lshr i32 %4772, 8
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = fmul fast float %4771, %4774
  %4779 = fadd fast float %4778, %4777
  %4780 = fmul fast float %4779, 0x3F70101000000000
  %4781 = add i32 %4557, 0
  %4782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4782, %dx.types.Handle %4766, float %4694, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4699, float %4701, float undef, float %4703, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.ResRet.f32 %4783, 1
  %4786 = extractvalue %dx.types.ResRet.f32 %4783, 2
  %4787 = extractvalue %dx.types.ResRet.f32 %4783, 3
  %4788 = bitcast float %4576 to i32
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = lshr i32 %4788, 8
  %4792 = and i32 %4791, 255
  %4793 = uitofp i32 %4792 to float
  %4794 = lshr i32 %4788, 16
  %4795 = and i32 %4794, 255
  %4796 = uitofp i32 %4795 to float
  %4797 = fmul fast float %4796, 0x3F70101000000000
  %4798 = fmul fast float %4784, %4790
  %4799 = fadd fast float %4798, %4793
  %4800 = fmul fast float %4799, 0x3F70101000000000
  %4801 = fadd fast float %4785, -5.000000e-01
  %4802 = fadd fast float %4787, -5.000000e-01
  %4803 = fmul fast float %4801, %4797
  %4804 = fmul fast float %4802, %4797
  %4805 = fadd fast float %4803, 5.000000e-01
  %4806 = fadd fast float %4804, 5.000000e-01
  %4807 = fmul fast float %4768, %4585
  %4808 = fmul fast float %4769, %4586
  %4809 = fmul fast float %4770, %4587
  %4810 = fmul fast float %4805, 2.000000e+00
  %4811 = fadd fast float %4810, -1.000000e+00
  %4812 = fmul fast float %4806, 2.000000e+00
  %4813 = fadd fast float %4812, -1.000000e+00
  %4814 = fadd fast float %4811, %4813
  %4815 = fmul fast float %4814, 5.000000e-01
  %4816 = fsub fast float %4811, %4813
  %4817 = fmul fast float %4816, 5.000000e-01
  %4818 = call float @dx.op.unary.f32(i32 6, float %4815)  ; FAbs(value)
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = call float @dx.op.unary.f32(i32 6, float %4817)  ; FAbs(value)
  %4821 = fsub fast float %4819, %4820
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4817, float %4821, float %4815, float %4817, float %4821)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  %4824 = fmul fast float %4815, %4823
  %4825 = fmul fast float %4817, %4823
  %4826 = fmul fast float %4823, %4821
  %4827 = fmul fast float %4826, %4550
  %4828 = fmul fast float %4826, %4551
  %4829 = fmul fast float %4826, %4552
  %4830 = fmul fast float %4824, %4573
  %4831 = fmul fast float %4824, %4574
  %4832 = fmul fast float %4824, %4575
  %4833 = fadd fast float %4830, %4827
  %4834 = fadd fast float %4831, %4828
  %4835 = fadd fast float %4832, %4829
  %4836 = fmul fast float %4825, %4579
  %4837 = fmul fast float %4825, %4580
  %4838 = fmul fast float %4825, %4581
  %4839 = fadd fast float %4833, %4836
  %4840 = fadd fast float %4834, %4837
  %4841 = fadd fast float %4835, %4838
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4839, float %4840, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4839, %4843
  %4845 = fmul fast float %4840, %4843
  %4846 = fmul fast float %4841, %4843
  %4847 = icmp ne i32 %4763, 0
  %4848 = select i1 %4847, float 1.000000e+00, float 0.000000e+00
  %4849 = fmul fast float %4753, %4848
  %4850 = and i32 %4600, 1
  %4851 = icmp eq i32 %4850, 0
  br i1 %4851, label %4852, label %4856

; <label>:4852                                    ; preds = %4761
  %4853 = fsub fast float %4844, %4533
  %4854 = fsub fast float %4845, %4534
  %4855 = fsub fast float %4846, %4535
  br label %4856

; <label>:4856                                    ; preds = %4852, %4761
  %4857 = phi float [ %4853, %4852 ], [ %4844, %4761 ]
  %4858 = phi float [ %4854, %4852 ], [ %4845, %4761 ]
  %4859 = phi float [ %4855, %4852 ], [ %4846, %4761 ]
  %4860 = fmul float %4859, %4849
  %4861 = fmul float %4858, %4849
  %4862 = fmul float %4857, %4849
  %4863 = fadd fast float %4862, %4533
  %4864 = fadd fast float %4861, %4534
  %4865 = fadd fast float %4860, %4535
  %4866 = icmp ne i32 %4762, 0
  %4867 = select i1 %4866, float 1.000000e+00, float 0.000000e+00
  %4868 = fmul fast float %4753, %4867
  %4869 = fsub fast float %4807, %4540
  %4870 = fsub fast float %4808, %4541
  %4871 = fsub fast float %4809, %4542
  %4872 = fmul fast float %4869, %4868
  %4873 = fmul fast float %4870, %4868
  %4874 = fmul fast float %4871, %4868
  %4875 = fadd fast float %4872, %4540
  %4876 = fadd fast float %4873, %4541
  %4877 = fadd fast float %4874, %4542
  %4878 = fsub fast float %4780, %4539
  %4879 = fmul fast float %4878, %4868
  %4880 = fadd fast float %4879, %4539
  %4881 = fmul fast float %4868, %4526
  %4882 = fsub fast float %4526, %4881
  %4883 = fmul fast float %4868, %4525
  %4884 = fsub fast float %4525, %4883
  %4885 = bitcast float %4594 to i32
  %4886 = lshr i32 %4885, 16
  %4887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4886)  ; LegacyF16ToF32(value)
  %4888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.i32 %4888, 0
  %4890 = and i32 %4889, 1
  %4891 = icmp eq i32 %4890, 0
  br i1 %4891, label %4892, label %4917

; <label>:4892                                    ; preds = %4856
  %4893 = fadd fast float %4780, 0xBFB99999A0000000
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, 0x3FF1C71C80000000
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4897, %4807
  %4899 = fmul fast float %4897, %4808
  %4900 = fmul fast float %4897, %4809
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4904 = call float @dx.op.binary.f32(i32 35, float %4902, float %4903)  ; FMax(a,b)
  %4905 = call float @dx.op.binary.f32(i32 35, float %4901, float %4904)  ; FMax(a,b)
  %4906 = fcmp fast ogt float %4905, 0.000000e+00
  %4907 = bitcast float %4905 to i32
  %4908 = sub nsw i32 2129859010, %4907
  %4909 = bitcast i32 %4908 to float
  %4910 = select i1 %4906, float %4909, float 0.000000e+00
  %4911 = fmul fast float %4901, %4887
  %4912 = fmul fast float %4902, %4887
  %4913 = fmul fast float %4903, %4887
  %4914 = fmul fast float %4911, %4910
  %4915 = fmul fast float %4912, %4910
  %4916 = fmul fast float %4913, %4910
  br label %4917

; <label>:4917                                    ; preds = %4892, %4856
  %4918 = phi float [ %4887, %4856 ], [ %4914, %4892 ]
  %4919 = phi float [ %4887, %4856 ], [ %4915, %4892 ]
  %4920 = phi float [ %4887, %4856 ], [ %4916, %4892 ]
  %4921 = fsub fast float %4918, %4527
  %4922 = fsub fast float %4919, %4528
  %4923 = fsub fast float %4920, %4529
  %4924 = fmul fast float %4921, %4868
  %4925 = fmul fast float %4922, %4868
  %4926 = fmul fast float %4923, %4868
  %4927 = fadd fast float %4924, %4527
  %4928 = fadd fast float %4925, %4528
  %4929 = fadd fast float %4926, %4529
  %4930 = fadd fast float %4753, %4538
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fsub fast float %4800, %4537
  %4933 = fmul fast float %4932, %4849
  %4934 = fadd fast float %4933, %4537
  %4935 = fsub fast float %4786, %4536
  %4936 = fmul fast float %4935, %4849
  %4937 = fadd fast float %4936, %4536
  br i1 %4851, label %4946, label %4938

; <label>:4938                                    ; preds = %4917
  %4939 = and i32 %4600, 32768
  %4940 = icmp eq i32 %4939, 0
  br i1 %4940, label %4956, label %4941

; <label>:4941                                    ; preds = %4938
  %4942 = fmul fast float %4849, 1.270000e+02
  %4943 = fadd fast float %4942, %4522
  %4944 = fadd fast float %4942, %4523
  %4945 = fadd fast float %4942, %4524
  br label %4956

; <label>:4946                                    ; preds = %4917
  %4947 = fsub fast float 1.270000e+02, %4522
  %4948 = fsub fast float 1.270000e+02, %4523
  %4949 = fsub fast float 1.270000e+02, %4524
  %4950 = fmul fast float %4849, %4947
  %4951 = fmul fast float %4849, %4948
  %4952 = fmul fast float %4849, %4949
  %4953 = fadd fast float %4950, %4522
  %4954 = fadd fast float %4951, %4523
  %4955 = fadd fast float %4952, %4524
  br label %4956

; <label>:4956                                    ; preds = %4946, %4941, %4938
  %4957 = phi float [ %4943, %4941 ], [ %4522, %4938 ], [ %4953, %4946 ]
  %4958 = phi float [ %4944, %4941 ], [ %4523, %4938 ], [ %4954, %4946 ]
  %4959 = phi float [ %4945, %4941 ], [ %4524, %4938 ], [ %4955, %4946 ]
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %4809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = fmul fast float %4963, %4960
  %4965 = fadd fast float %4964, %4962
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = bitcast float %4588 to i32
  %4968 = and i32 %4967, 65535
  %4969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4968)  ; LegacyF16ToF32(value)
  %4970 = lshr i32 %4967, 16
  %4971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4970)  ; LegacyF16ToF32(value)
  %4972 = fcmp fast oge float %4969, 0.000000e+00
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = select i1 %4972, float %4969, float %4974
  %4976 = fadd fast float %4975, %4971
  %4977 = fsub fast float %4966, %4521
  %4978 = fmul fast float %4977, %4753
  %4979 = fadd fast float %4978, %4521
  %4980 = fmul fast float %4976, %4753
  %4981 = call float @dx.op.binary.f32(i32 35, float %4520, float %4980)  ; FMax(a,b)
  %4982 = call float @dx.op.binary.f32(i32 35, float %4519, float %4753)  ; FMax(a,b)
  %4983 = and i32 %4600, 16
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5006, label %4985

; <label>:4985                                    ; preds = %4956
  %4986 = add i32 %4591, 0
  %4987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4987, %dx.types.Handle %4766, float %4694, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4699, float %4701, float undef, float %4703, float %4705, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = and i32 %4885, 65535
  %4993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4992)  ; LegacyF16ToF32(value)
  %4994 = fmul fast float %4989, %4585
  %4995 = fmul fast float %4990, %4586
  %4996 = fmul fast float %4991, %4587
  %4997 = and i32 %4600, 16384
  %4998 = icmp ne i32 %4997, 0
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = select i1 %4998, float %5000, float 1.000000e+00
  %5002 = fmul fast float %5001, %4993
  %5003 = fmul fast float %4994, %5002
  %5004 = fmul fast float %4995, %5002
  %5005 = fmul fast float %4996, %5002
  br label %5006

; <label>:5006                                    ; preds = %4985, %4956
  %5007 = phi float [ %5003, %4985 ], [ 0.000000e+00, %4956 ]
  %5008 = phi float [ %5004, %4985 ], [ 0.000000e+00, %4956 ]
  %5009 = phi float [ %5005, %4985 ], [ 0.000000e+00, %4956 ]
  %5010 = fsub fast float %5007, %4530
  %5011 = fsub fast float %5008, %4531
  %5012 = fsub fast float %5009, %4532
  %5013 = fmul fast float %5010, %4753
  %5014 = fmul fast float %5011, %4753
  %5015 = fmul fast float %5012, %4753
  %5016 = fadd fast float %5013, %4530
  %5017 = fadd fast float %5014, %4531
  %5018 = fadd fast float %5015, %4532
  br label %4649

; <label>:5019                                    ; preds = %4649
  br label %5020

; <label>:5020                                    ; preds = %5019, %4462
  %5021 = phi float [ 0.000000e+00, %4462 ], [ %4650, %5019 ]
  %5022 = phi float [ %1254, %4462 ], [ %4651, %5019 ]
  %5023 = phi float [ %4431, %4462 ], [ %4652, %5019 ]
  %5024 = phi float [ %4429, %4462 ], [ %4653, %5019 ]
  %5025 = phi float [ %4422, %4462 ], [ %4654, %5019 ]
  %5026 = phi float [ %4423, %4462 ], [ %4655, %5019 ]
  %5027 = phi float [ %4424, %4462 ], [ %4656, %5019 ]
  %5028 = phi float [ 0.000000e+00, %4462 ], [ %4657, %5019 ]
  %5029 = phi float [ 0.000000e+00, %4462 ], [ %4658, %5019 ]
  %5030 = phi float [ %4419, %4462 ], [ %4659, %5019 ]
  %5031 = phi float [ %4420, %4462 ], [ %4660, %5019 ]
  %5032 = phi float [ %4421, %4462 ], [ %4661, %5019 ]
  %5033 = phi float [ %4416, %4462 ], [ %4662, %5019 ]
  %5034 = phi float [ %4417, %4462 ], [ %4663, %5019 ]
  %5035 = phi float [ %4418, %4462 ], [ %4664, %5019 ]
  %5036 = phi float [ %4457, %4462 ], [ %4665, %5019 ]
  %5037 = phi float [ %4458, %4462 ], [ %4666, %5019 ]
  %5038 = phi float [ %4459, %4462 ], [ %4667, %5019 ]
  %5039 = phi float [ %4427, %4462 ], [ %4668, %5019 ]
  %5040 = phi float [ %4426, %4462 ], [ %4669, %5019 ]
  %5041 = phi float [ 0.000000e+00, %4462 ], [ %4670, %5019 ]
  %5042 = phi float [ %4425, %4462 ], [ %4671, %5019 ]
  %5043 = phi float [ %4413, %4462 ], [ %4672, %5019 ]
  %5044 = phi float [ %4414, %4462 ], [ %4673, %5019 ]
  %5045 = phi float [ %4415, %4462 ], [ %4674, %5019 ]
  %5046 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call float @dx.op.unary.f32(i32 25, float %5046)  ; Rsqrt(value)
  %5048 = fmul fast float %5047, %5036
  %5049 = fmul fast float %5047, %5037
  %5050 = fmul fast float %5047, %5038
  %5051 = fadd fast float %5041, %1254
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call float @dx.op.unary.f32(i32 25, float %5053)  ; Rsqrt(value)
  %5055 = fmul fast float %5054, %5048
  %5056 = fmul fast float %5054, %5049
  %5057 = fmul fast float %5054, %5050
  br label %5058

; <label>:5058                                    ; preds = %5020, %4410
  %5059 = phi float [ %5043, %5020 ], [ %4413, %4410 ]
  %5060 = phi float [ %5044, %5020 ], [ %4414, %4410 ]
  %5061 = phi float [ %5045, %5020 ], [ %4415, %4410 ]
  %5062 = phi float [ %5033, %5020 ], [ %4416, %4410 ]
  %5063 = phi float [ %5034, %5020 ], [ %4417, %4410 ]
  %5064 = phi float [ %5035, %5020 ], [ %4418, %4410 ]
  %5065 = phi float [ %5030, %5020 ], [ %4419, %4410 ]
  %5066 = phi float [ %5031, %5020 ], [ %4420, %4410 ]
  %5067 = phi float [ %5032, %5020 ], [ %4421, %4410 ]
  %5068 = phi float [ %5025, %5020 ], [ %4422, %4410 ]
  %5069 = phi float [ %5026, %5020 ], [ %4423, %4410 ]
  %5070 = phi float [ %5027, %5020 ], [ %4424, %4410 ]
  %5071 = phi float [ %5055, %5020 ], [ %4457, %4410 ]
  %5072 = phi float [ %5056, %5020 ], [ %4458, %4410 ]
  %5073 = phi float [ %5057, %5020 ], [ %4459, %4410 ]
  %5074 = phi float [ %5042, %5020 ], [ %4425, %4410 ]
  %5075 = phi float [ %5052, %5020 ], [ %1254, %4410 ]
  %5076 = phi float [ %5040, %5020 ], [ %4426, %4410 ]
  %5077 = phi float [ %5039, %5020 ], [ %4427, %4410 ]
  %5078 = phi float [ %5029, %5020 ], [ 0.000000e+00, %4410 ]
  %5079 = phi float [ %5028, %5020 ], [ 0.000000e+00, %4410 ]
  %5080 = phi float [ %5021, %5020 ], [ 0.000000e+00, %4410 ]
  %5081 = phi float [ %5023, %5020 ], [ %4431, %4410 ]
  %5082 = phi float [ %5022, %5020 ], [ %1254, %4410 ]
  %5083 = phi float [ %5024, %5020 ], [ %4429, %4410 ]
  %5084 = fadd fast float %5074, 0xBFB99999A0000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, 0x3FF1C71C80000000
  %5087 = call float @dx.op.binary.f32(i32 36, float %5074, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5088 = fsub fast float 1.000000e+00, %5086
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, %5059
  %5091 = fmul fast float %5089, %5060
  %5092 = fmul fast float %5089, %5061
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = fmul fast float %5086, %5059
  %5097 = fmul fast float %5086, %5060
  %5098 = fmul fast float %5086, %5061
  %5099 = fadd fast float %5096, %5087
  %5100 = fadd fast float %5097, %5087
  %5101 = fadd fast float %5098, %5087
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5107 = extractvalue %dx.types.ResRet.i32 %5106, 0
  %5108 = and i32 %5107, 1
  %5109 = icmp eq i32 %5108, 0
  br i1 %5109, label %5124, label %5110

; <label>:5110                                    ; preds = %5058
  %5111 = call float @dx.op.binary.f32(i32 35, float %5094, float %5095)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5093, float %5111)  ; FMax(a,b)
  %5113 = fcmp fast ogt float %5112, 0.000000e+00
  %5114 = bitcast float %5112 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = select i1 %5113, float %5116, float 0.000000e+00
  %5118 = fmul fast float %5093, %5065
  %5119 = fmul fast float %5094, %5066
  %5120 = fmul fast float %5095, %5067
  %5121 = fmul fast float %5118, %5117
  %5122 = fmul fast float %5119, %5117
  %5123 = fmul fast float %5120, %5117
  br label %5124

; <label>:5124                                    ; preds = %5110, %5058
  %5125 = phi float [ %5121, %5110 ], [ %5065, %5058 ]
  %5126 = phi float [ %5122, %5110 ], [ %5066, %5058 ]
  %5127 = phi float [ %5123, %5110 ], [ %5067, %5058 ]
  %5128 = call float @dx.op.binary.f32(i32 36, float %5068, float 1.270000e+02)  ; FMin(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5069, float 1.270000e+02)  ; FMin(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5070, float 1.270000e+02)  ; FMin(a,b)
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 3
  %5133 = and i32 %5132, 8
  %5134 = icmp ne i32 %5133, 0
  %5135 = call float @dx.op.binary.f32(i32 35, float %5093, float %5059)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5094, float %5059)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5095, float %5059)  ; FMax(a,b)
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = select i1 %227, float %5059, float %5093
  %5140 = select i1 %227, float %5138, float %5094
  %5141 = select i1 %227, float 1.000000e+00, float %5095
  %5142 = select i1 %5134, float %5135, float %5139
  %5143 = select i1 %5134, float %5136, float %5140
  %5144 = select i1 %5134, float %5137, float %5141
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = select i1 %227, float %5145, float %5125
  %5147 = select i1 %227, float %5145, float %5126
  %5148 = select i1 %227, float %5145, float %5127
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5153 = fadd fast float %5150, %165
  %5154 = fadd fast float %5151, %166
  %5155 = fadd fast float %5152, %167
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = fsub fast float %5153, %5157
  %5160 = fsub fast float %5154, %5158
  %5161 = fmul fast float %5159, %5159
  %5162 = fmul fast float %5160, %5160
  %5163 = fadd fast float %5161, %5162
  %5164 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5166 = fcmp fast olt float %5164, %5165
  br i1 %5166, label %5167, label %5234

; <label>:5167                                    ; preds = %5124
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5178 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5179 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5180 = fadd fast float %5177, %5153
  %5181 = fadd fast float %5178, %5154
  %5182 = fadd fast float %5179, %5155
  %5183 = fmul fast float %5180, %5169
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5171, float %5183)  ; FMad(a,b,c)
  %5185 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5173, float %5184)  ; FMad(a,b,c)
  %5186 = fmul fast float %5180, %5174
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5176, float %5187)  ; FMad(a,b,c)
  %5189 = fsub fast float %5185, %5177
  %5190 = fsub fast float %5188, %5178
  %5191 = fsub fast float %5189, %5157
  %5192 = fadd fast float %5191, %5165
  %5193 = fsub fast float %5190, %5158
  %5194 = fadd fast float %5193, %5165
  %5195 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5196 = fmul fast float %5192, %5195
  %5197 = fmul fast float %5194, %5195
  %5198 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5200 = fsub fast float 1.000000e+00, %5198
  %5201 = fsub fast float 1.000000e+00, %5199
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = fcmp fast ugt float %5203, 0.000000e+00
  br i1 %5204, label %5205, label %5508

; <label>:5205                                    ; preds = %5167
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5208 = fmul fast float %5207, %5203
  %5209 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5210 = fadd fast float %5209, %5208
  %5211 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5212 = fadd fast float %5210, %5179
  %5213 = fmul fast float %5185, %5173
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5176, float %5213)  ; FMad(a,b,c)
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5211, float %5214)  ; FMad(a,b,c)
  %5216 = fsub fast float %5215, %5179
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = fsub fast float %5216, %5218
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = fadd fast float %5225, %5221
  %5229 = fmul fast float %5228, 0x3F847AE140000000
  %5230 = fadd fast float %5226, %5222
  %5231 = fmul fast float %5230, 0x3F847AE140000000
  %5232 = fadd fast float %5227, %5223
  %5233 = fmul fast float %5232, 0x3F847AE140000000
  br label %5508

; <label>:5234                                    ; preds = %5124
  %5235 = and i32 %203, 1
  %5236 = icmp eq i32 %5235, 0
  br i1 %5236, label %5508, label %5237

; <label>:5237                                    ; preds = %5234
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5248 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5249 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5250 = fadd fast float %5247, %5153
  %5251 = fadd fast float %5248, %5154
  %5252 = fadd fast float %5249, %5155
  %5253 = fmul fast float %5250, %5239
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5241, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5243, float %5254)  ; FMad(a,b,c)
  %5256 = fmul fast float %5250, %5244
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5246, float %5257)  ; FMad(a,b,c)
  %5259 = fsub fast float %5255, %5247
  %5260 = fsub fast float %5258, %5248
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.i32 %5268, 1
  %5271 = udiv i32 %5270, %5269
  %5272 = fsub fast float %5259, %5262
  %5273 = fsub fast float %5260, %5263
  %5274 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5275 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5274, float %5264)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5275, float %5265)  ; FMin(a,b)
  %5278 = add i32 %5269, -1
  %5279 = add i32 %5271, -1
  %5280 = fmul fast float %5276, %5267
  %5281 = fmul fast float %5277, %5267
  %5282 = fptoui float %5280 to i32
  %5283 = fptoui float %5281 to i32
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5278)  ; UMin(a,b)
  %5285 = call i32 @dx.op.binary.i32(i32 40, i32 %5283, i32 %5279)  ; UMin(a,b)
  %5286 = mul i32 %5285, %5269
  %5287 = add i32 %5286, %5284
  %5288 = shl i32 %5287, 2
  %5289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.i32 %5289, 0
  %5291 = icmp eq i32 %5290, -1
  br i1 %5291, label %5508, label %5292

; <label>:5292                                    ; preds = %5237
  %5293 = mul i32 %5290, 148
  %5294 = add i32 %5293, 4
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = add i32 %5293, 8
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = add i32 %5293, 36
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = add i32 %5293, 60
  %5304 = add i32 %5293, 92
  %5305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.i32 %5305, 0
  %5307 = add i32 %5293, 116
  %5308 = fsub fast float %5259, %5296
  %5309 = fsub fast float %5260, %5299
  %5310 = fmul fast float %5267, %5308
  %5311 = fmul fast float %5267, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5317 = call float @dx.op.unary.f32(i32 83, float %5312)  ; DerivCoarseX(value)
  %5318 = call float @dx.op.unary.f32(i32 83, float %5314)  ; DerivCoarseX(value)
  %5319 = call float @dx.op.unary.f32(i32 84, float %5312)  ; DerivCoarseY(value)
  %5320 = call float @dx.op.unary.f32(i32 84, float %5314)  ; DerivCoarseY(value)
  %5321 = fmul fast float %5317, %5316
  %5322 = fmul fast float %5318, %5316
  %5323 = fmul fast float %5319, %5316
  %5324 = fmul fast float %5320, %5316
  %5325 = call float @dx.op.dot2.f32(i32 54, float %5323, float %5324, float %5323, float %5324)  ; Dot2(ax,ay,bx,by)
  %5326 = call float @dx.op.dot2.f32(i32 54, float %5321, float %5322, float %5321, float %5322)  ; Dot2(ax,ay,bx,by)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5326, float %5325)  ; FMax(a,b)
  %5328 = call float @dx.op.unary.f32(i32 23, float %5327)  ; Log(value)
  %5329 = fmul fast float %5328, 5.000000e-01
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5332 = fadd fast float %5331, %5329
  %5333 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5336 = fadd fast float %5335, %5333
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5339 = fadd fast float %5336, %5338
  %5340 = add i32 %5306, 0
  %5341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5340, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5342 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5341, i32 0)  ; GetDimensions(handle,mipLevel)
  %5343 = extractvalue %dx.types.Dimensions %5342, 0
  %5344 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5343)  ; FirstbitLo(value)
  %5345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.i32 %5345, 1
  %5347 = sub nsw i32 %5346, %5344
  %5348 = sitofp i32 %5347 to float
  %5349 = fsub fast float %5339, %5348
  %5350 = call float @dx.op.binary.f32(i32 35, float %5349, float 0.000000e+00)  ; FMax(a,b)
  %5351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5341, %dx.types.Handle %52, float %5312, float %5314, float %5302, float undef, i32 0, i32 0, i32 undef, float %5350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = fcmp ule float %5352, 0x3FE0101020000000
  %5354 = extractvalue %dx.types.CBufRet.i32 %5345, 0
  %5355 = and i32 %5354, 128
  %5356 = icmp ne i32 %5355, 0
  %5357 = and i1 %5353, %5356
  br i1 %5357, label %5508, label %5358

; <label>:5358                                    ; preds = %5292
  %5359 = add i32 %5293, 20
  %5360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = add i32 %5293, 24
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = add i32 %5293, 40
  %5366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = add i32 %5293, 96
  %5369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.i32 %5369, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5373 = fmul fast float %5372, %5312
  %5374 = fmul fast float %5372, %5314
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = fadd fast float %5373, %5375
  %5377 = fadd fast float %5374, %5375
  %5378 = add i32 %5370, 0
  %5379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5379, i32 0)  ; GetDimensions(handle,mipLevel)
  %5381 = extractvalue %dx.types.Dimensions %5380, 0
  %5382 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5381)  ; FirstbitLo(value)
  %5383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.i32 %5383, 1
  %5385 = sub nsw i32 %5384, %5382
  %5386 = sitofp i32 %5385 to float
  %5387 = fsub fast float %5336, %5386
  %5388 = call float @dx.op.binary.f32(i32 35, float %5387, float 0.000000e+00)  ; FMax(a,b)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5379, %dx.types.Handle %52, float %5376, float %5377, float %5367, float undef, i32 0, i32 0, i32 undef, float %5388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = fmul fast float %5390, %5361
  %5392 = fadd fast float %5391, %5364
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5401 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5402 = fadd fast float %5398, %5259
  %5403 = fadd fast float %5400, %5260
  %5404 = fadd fast float %5392, %5401
  %5405 = fmul fast float %5402, %5394
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5403, float %5395, float %5405)  ; FMad(a,b,c)
  %5407 = call float @dx.op.tertiary.f32(i32 46, float %5404, float %5396, float %5406)  ; FMad(a,b,c)
  %5408 = fsub fast float %5407, %5401
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = fsub fast float %5408, %5410
  %5412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.i32 %5412, 0
  %5414 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 %5413)  ; UMin(a,b)
  %5415 = mul i32 %5414, 36
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = add i32 %5415, 4
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = fmul fast float %5420, %5312
  %5422 = fmul fast float %5420, %5314
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5424 = fadd fast float %5421, %5423
  %5425 = fadd fast float %5422, %5423
  %5426 = icmp eq i32 %5417, 0
  br i1 %5426, label %5495, label %5427

; <label>:5427                                    ; preds = %5358
  br label %5428

; <label>:5428                                    ; preds = %5485, %5427
  %5429 = phi float [ %5486, %5485 ], [ 0.000000e+00, %5427 ]
  %5430 = phi float [ %5487, %5485 ], [ 0.000000e+00, %5427 ]
  %5431 = phi float [ %5488, %5485 ], [ 0.000000e+00, %5427 ]
  %5432 = phi float [ %5489, %5485 ], [ 0.000000e+00, %5427 ]
  %5433 = phi float [ %5490, %5485 ], [ 0.000000e+00, %5427 ]
  %5434 = phi float [ %5491, %5485 ], [ 0.000000e+00, %5427 ]
  %5435 = phi i32 [ %5492, %5485 ], [ 0, %5427 ]
  %5436 = shl i32 %5435, 2
  %5437 = add i32 %5303, %5436
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = add i32 %5307, %5436
  %5441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.i32 %5441, 0
  %5443 = add i32 %5442, 0
  %5444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5445 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5444, i32 0)  ; GetDimensions(handle,mipLevel)
  %5446 = extractvalue %dx.types.Dimensions %5445, 0
  %5447 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5446)  ; FirstbitLo(value)
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 1
  %5450 = sub nsw i32 %5449, %5447
  %5451 = sitofp i32 %5450 to float
  %5452 = fsub fast float %5336, %5451
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5444, %dx.types.Handle %52, float %5424, float %5425, float %5439, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5456, label %5457, label %5485

; <label>:5457                                    ; preds = %5428
  %5458 = add i32 %5418, %5436
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = and i32 %5460, 32767
  %5462 = mul nuw nsw i32 %5461, 928
  %5463 = add nuw nsw i32 %5462, 48
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = add nuw nsw i32 %5462, 60
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = fmul fast float %5465, %5455
  %5474 = fmul fast float %5466, %5455
  %5475 = fmul fast float %5467, %5455
  %5476 = fadd fast float %5473, %5429
  %5477 = fadd fast float %5474, %5430
  %5478 = fadd fast float %5475, %5431
  %5479 = fmul fast float %5470, %5455
  %5480 = fmul fast float %5471, %5455
  %5481 = fmul fast float %5472, %5455
  %5482 = fadd fast float %5479, %5432
  %5483 = fadd fast float %5480, %5433
  %5484 = fadd fast float %5481, %5434
  br label %5485

; <label>:5485                                    ; preds = %5457, %5428
  %5486 = phi float [ %5476, %5457 ], [ %5429, %5428 ]
  %5487 = phi float [ %5477, %5457 ], [ %5430, %5428 ]
  %5488 = phi float [ %5478, %5457 ], [ %5431, %5428 ]
  %5489 = phi float [ %5482, %5457 ], [ %5432, %5428 ]
  %5490 = phi float [ %5483, %5457 ], [ %5433, %5428 ]
  %5491 = phi float [ %5484, %5457 ], [ %5434, %5428 ]
  %5492 = add nuw i32 %5435, 1
  %5493 = icmp eq i32 %5492, %5417
  br i1 %5493, label %5494, label %5428

; <label>:5494                                    ; preds = %5485
  br label %5495

; <label>:5495                                    ; preds = %5494, %5358
  %5496 = phi float [ 0.000000e+00, %5358 ], [ %5486, %5494 ]
  %5497 = phi float [ 0.000000e+00, %5358 ], [ %5487, %5494 ]
  %5498 = phi float [ 0.000000e+00, %5358 ], [ %5488, %5494 ]
  %5499 = phi float [ 0.000000e+00, %5358 ], [ %5489, %5494 ]
  %5500 = phi float [ 0.000000e+00, %5358 ], [ %5490, %5494 ]
  %5501 = phi float [ 0.000000e+00, %5358 ], [ %5491, %5494 ]
  %5502 = fadd fast float %5499, %5496
  %5503 = fmul fast float %5502, 0x3F847AE140000000
  %5504 = fadd fast float %5500, %5497
  %5505 = fmul fast float %5504, 0x3F847AE140000000
  %5506 = fadd fast float %5501, %5498
  %5507 = fmul fast float %5506, 0x3F847AE140000000
  br label %5508

; <label>:5508                                    ; preds = %5495, %5292, %5237, %5234, %5205, %5167
  %5509 = phi float [ %5219, %5205 ], [ -1.310720e+05, %5167 ], [ %5411, %5495 ], [ -1.310720e+05, %5237 ], [ -1.310720e+05, %5292 ], [ -1.310720e+05, %5234 ]
  %5510 = phi float [ %5229, %5205 ], [ 0.000000e+00, %5167 ], [ %5503, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5511 = phi float [ %5231, %5205 ], [ 0.000000e+00, %5167 ], [ %5505, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5512 = phi float [ %5233, %5205 ], [ 0.000000e+00, %5167 ], [ %5507, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5513 = phi i1 [ true, %5205 ], [ false, %5167 ], [ true, %5495 ], [ false, %5237 ], [ false, %5292 ], [ false, %5234 ]
  %5514 = and i32 %203, 3
  %5515 = icmp eq i32 %5514, 1
  %5516 = select i1 %5515, float 1.000000e+00, float 0.000000e+00
  %5517 = fsub fast float %5509, %167
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = select i1 %5513, float %5518, float 1.000000e+00
  %5520 = fmul fast float %5519, %5516
  %5521 = icmp eq i32 %5514, 3
  %5522 = select i1 %5521, float 1.000000e+00, float %5520
  %5523 = call float @dx.op.binary.f32(i32 35, float %5080, float %5522)  ; FMax(a,b)
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = fcmp fast une float %5524, 0.000000e+00
  %5526 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 25, float %5526)  ; Rsqrt(value)
  br i1 %5525, label %5535, label %5528

; <label>:5528                                    ; preds = %5508
  %5529 = fmul fast float %5527, %165
  %5530 = fmul fast float %5527, %166
  %5531 = fmul fast float %5527, %167
  %5532 = fsub fast float -0.000000e+00, %5529
  %5533 = fsub fast float -0.000000e+00, %5530
  %5534 = fsub fast float -0.000000e+00, %5531
  br label %5703

; <label>:5535                                    ; preds = %5508
  %5536 = fmul fast float %165, %5527
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = fmul fast float %166, %5527
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fmul fast float %167, %5527
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5539, float %5541, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5524, 2.500000e+00
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5524, 0x4013FFFFE0000000
  %5546 = fadd fast float %5545, 0xBFFFFFFFE0000000
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fmul fast float %5524, 0x4004000020000000
  %5549 = fadd fast float %5548, 0xBFF8000040000000
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5552 = fmul fast float %5084, 1.000000e+01
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = fsub fast float 3.000000e+00, %5554
  %5556 = fmul fast float %5553, %5553
  %5557 = fmul fast float %5556, %5555
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = fsub fast float 0x3FE3333340000000, %5105
  %5560 = fmul fast float %5559, 0x400AAAAAA0000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fmul fast float %5558, %5561
  %5563 = fmul fast float %5142, 0x3FEA2B8620000000
  %5564 = fmul fast float %5143, 0x3FEA2B8620000000
  %5565 = fmul fast float %5144, 0x3FEA2B8620000000
  %5566 = fadd fast float %5563, 0x3FC81DFBA0000000
  %5567 = fmul fast float %5566, %5142
  %5568 = fadd fast float %5567, 0x3F910E6020000000
  %5569 = fadd fast float %5564, 0x3FC81DFBA0000000
  %5570 = fmul fast float %5569, %5143
  %5571 = fadd fast float %5570, 0x3F910E6020000000
  %5572 = fadd fast float %5565, 0x3FC81DFBA0000000
  %5573 = fmul fast float %5572, %5144
  %5574 = fadd fast float %5573, 0x3F910E6020000000
  %5575 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = fsub fast float %5575, %5142
  %5579 = fsub fast float %5576, %5143
  %5580 = fsub fast float %5577, %5144
  %5581 = fmul fast float %5578, %5551
  %5582 = fmul fast float %5581, %5562
  %5583 = fmul fast float %5579, %5551
  %5584 = fmul fast float %5583, %5562
  %5585 = fmul fast float %5580, %5551
  %5586 = fmul fast float %5585, %5562
  %5587 = fadd fast float %5582, %5142
  %5588 = fadd fast float %5584, %5143
  %5589 = fadd fast float %5586, %5144
  %5590 = fmul fast float %5077, %5077
  %5591 = fmul fast float %5590, %5590
  %5592 = fadd fast float %5547, 1.000000e+00
  %5593 = fsub fast float %5592, %5562
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fsub fast float 1.000000e+00, %5591
  %5598 = call float @dx.op.binary.f32(i32 36, float %5594, float %5597)  ; FMin(a,b)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5598, float %5599)  ; FMax(a,b)
  %5601 = fadd fast float %5596, 0xBFE4CCCCC0000000
  %5602 = fmul fast float %5601, 0x4006DB6DA0000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = fsub fast float 3.000000e+00, %5604
  %5606 = bitcast float %5102 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = bitcast float %5103 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = bitcast float %5104 to i32
  %5625 = ashr i32 %5624, 1
  %5626 = add nsw i32 %5625, 532487669
  %5627 = bitcast i32 %5626 to float
  %5628 = fsub fast float 1.000000e+00, %5627
  %5629 = bitcast float %5628 to i32
  %5630 = sub nsw i32 2129859010, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5631, 2.000000e+00
  %5633 = fsub fast float 0x4002A9FBE0000000, %5614
  %5634 = fadd fast float %5614, 0x3FD54FDF00000000
  %5635 = bitcast float %5634 to i32
  %5636 = sub nsw i32 2129859010, %5635
  %5637 = bitcast i32 %5636 to float
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %5638, %5638
  %5640 = fsub fast float 0x4002A9FBE0000000, %5623
  %5641 = fadd fast float %5623, 0x3FD54FDF00000000
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5645, %5645
  %5647 = fsub fast float 0x4002A9FBE0000000, %5632
  %5648 = fadd fast float %5632, 0x3FD54FDF00000000
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = bitcast i32 %5650 to float
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5652, %5652
  %5654 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5639)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5646)  ; FMax(a,b)
  %5656 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5653)  ; FMax(a,b)
  %5657 = fsub fast float 1.000000e+00, %5542
  %5658 = fadd fast float %5657, %5558
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5522
  %5661 = fmul fast float %5600, %5660
  %5662 = fmul fast float %5603, %5603
  %5663 = fmul fast float %5662, %5661
  %5664 = fmul fast float %5663, %5605
  %5665 = fmul fast float %5660, 0xBFE99999A0000000
  %5666 = fmul fast float %5665, %5551
  %5667 = fmul fast float %5666, %5562
  %5668 = fadd fast float %5667, 1.000000e+00
  %5669 = fadd fast float %5105, -1.000000e+00
  %5670 = fmul fast float %5668, %5669
  %5671 = fadd fast float %5670, 1.000000e+00
  %5672 = fsub fast float %5654, %5102
  %5673 = fsub fast float %5655, %5103
  %5674 = fsub fast float %5656, %5104
  %5675 = fmul fast float %5664, %5672
  %5676 = fmul fast float %5664, %5673
  %5677 = fmul fast float %5664, %5674
  %5678 = fadd fast float %5675, %5102
  %5679 = fadd fast float %5676, %5103
  %5680 = fadd fast float %5677, %5104
  %5681 = fsub fast float %117, %5071
  %5682 = fsub fast float %118, %5072
  %5683 = fsub fast float %119, %5073
  %5684 = fmul fast float %5664, %5681
  %5685 = fmul fast float %5664, %5682
  %5686 = fmul fast float %5664, %5683
  %5687 = fadd fast float %5684, %5071
  %5688 = fadd fast float %5685, %5072
  %5689 = fadd fast float %5686, %5073
  %5690 = fmul fast float %5664, %5659
  %5691 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5690, %5692
  %5694 = fadd fast float %5693, %5691
  %5695 = fsub fast float 1.000000e+00, %5077
  %5696 = fmul fast float %5664, %5695
  %5697 = fadd fast float %5696, %5077
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 25, float %5698)  ; Rsqrt(value)
  %5700 = fmul fast float %5687, %5699
  %5701 = fmul fast float %5688, %5699
  %5702 = fmul fast float %5689, %5699
  br label %5703

; <label>:5703                                    ; preds = %5535, %5528
  %5704 = phi float [ %5534, %5528 ], [ %5541, %5535 ]
  %5705 = phi float [ %5533, %5528 ], [ %5539, %5535 ]
  %5706 = phi float [ %5532, %5528 ], [ %5537, %5535 ]
  %5707 = phi float [ %5531, %5528 ], [ %5540, %5535 ]
  %5708 = phi float [ %5530, %5528 ], [ %5538, %5535 ]
  %5709 = phi float [ %5529, %5528 ], [ %5536, %5535 ]
  %5710 = phi float [ %5102, %5528 ], [ %5678, %5535 ]
  %5711 = phi float [ %5103, %5528 ], [ %5679, %5535 ]
  %5712 = phi float [ %5104, %5528 ], [ %5680, %5535 ]
  %5713 = phi float [ %5142, %5528 ], [ %5587, %5535 ]
  %5714 = phi float [ %5143, %5528 ], [ %5588, %5535 ]
  %5715 = phi float [ %5144, %5528 ], [ %5589, %5535 ]
  %5716 = phi float [ %5071, %5528 ], [ %5700, %5535 ]
  %5717 = phi float [ %5072, %5528 ], [ %5701, %5535 ]
  %5718 = phi float [ %5073, %5528 ], [ %5702, %5535 ]
  %5719 = phi float [ %5105, %5528 ], [ %5694, %5535 ]
  %5720 = phi float [ %5077, %5528 ], [ %5697, %5535 ]
  %5721 = fsub fast float -0.000000e+00, %167
  %5722 = select i1 %227, float 0.000000e+00, float %5712
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5706, float %5705, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5708, float %5707, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fmul fast float %5725, 2.000000e+00
  %5727 = fmul fast float %5726, %5716
  %5728 = fmul fast float %5726, %5717
  %5729 = fmul fast float %5726, %5718
  %5730 = fsub fast float %5709, %5727
  %5731 = fsub fast float %5708, %5728
  %5732 = fsub fast float %5707, %5729
  %5733 = call float @dx.op.binary.f32(i32 36, float %5720, float 1.000000e+00)  ; FMin(a,b)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = ashr i32 %5735, 1
  %5737 = add nsw i32 %5736, 532487669
  %5738 = bitcast i32 %5737 to float
  %5739 = fsub fast float 1.000000e+00, %5719
  %5740 = call float @dx.op.binary.f32(i32 35, float %5739, float 0x3F847AE140000000)  ; FMax(a,b)
  %5741 = fmul fast float %5740, %5740
  %5742 = fmul fast float %5741, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5738, float %5742, float %5743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fsub fast float 1.000000e+00, %5720
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fmul fast float %5750, 0x3FD20DD760000000
  %5752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5753 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fcmp fast oeq float %5752, 0.000000e+00
  %5756 = or i1 %5755, %5754
  br i1 %5756, label %5786, label %5757

; <label>:5757                                    ; preds = %5703
  %5758 = fsub fast float -0.000000e+00, %81
  %5759 = fsub fast float -0.000000e+00, %79
  %5760 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5761 = fdiv fast float %5760, %5752
  %5762 = fcmp fast ogt float %5761, 0x3FFB6F8900000000
  %5763 = select i1 %5762, float 0x3FFB6F8900000000, float %5761
  %5764 = fmul fast float %5763, 0x3FE8A23460000000
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5767 = fmul fast float %5765, %5752
  %5768 = fmul fast float %5766, 0x3FF279A740000000
  %5769 = fadd fast float %5768, -1.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %80, float %5758, float %5759, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5758
  %5773 = fmul fast float %5771, %5759
  %5774 = fmul fast float %5771, %80
  %5775 = fmul fast float %5769, %5769
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5766, 0x40005F8BE0000000
  %5778 = fsub fast float 0x400C5BF8A0000000, %5777
  %5779 = fdiv fast float %5767, %5778
  %5780 = fmul fast float %5779, 0x3FEE31C3C0000000
  %5781 = fmul fast float %5780, %5776
  %5782 = fmul fast float %5766, 0x3FDACB7480000000
  %5783 = fadd fast float %5782, 0xBFD7347680000000
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5776
  br label %5786

; <label>:5786                                    ; preds = %5757, %5703
  %5787 = phi float [ %5772, %5757 ], [ 0.000000e+00, %5703 ]
  %5788 = phi float [ %5773, %5757 ], [ 0.000000e+00, %5703 ]
  %5789 = phi float [ %5774, %5757 ], [ 0.000000e+00, %5703 ]
  %5790 = phi float [ %5781, %5757 ], [ 0.000000e+00, %5703 ]
  %5791 = phi float [ %5785, %5757 ], [ 0.000000e+00, %5703 ]
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = fmul fast float %5752, 0x3FD20DD760000000
  %5798 = fmul fast float %5796, %5791
  %5799 = fadd fast float %5798, %5797
  %5800 = fmul fast float %5793, %5790
  %5801 = fadd fast float %5799, %5800
  %5802 = fsub fast float %5799, %5800
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, 0x3FDF454380000000
  %5805 = fmul fast float %5803, %5803
  %5806 = fmul fast float %5805, 0x3FEE471020000000
  %5807 = fadd fast float %5806, 0xBFD42F6020000000
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5790, float %5791, float 0x3FD20DD760000000, float %5804, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5810 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fcmp fast oeq float %5810, 0.000000e+00
  %5812 = fcmp fast oeq float %5809, 0.000000e+00
  %5813 = or i1 %5812, %5811
  br i1 %5813, label %5843, label %5814

; <label>:5814                                    ; preds = %5786
  %5815 = fsub fast float -0.000000e+00, %77
  %5816 = fsub fast float -0.000000e+00, %75
  %5817 = call float @dx.op.unary.f32(i32 24, float %5810)  ; Sqrt(value)
  %5818 = fdiv fast float %5817, %5809
  %5819 = fcmp fast ogt float %5818, 0x3FFB6F8900000000
  %5820 = select i1 %5819, float 0x3FFB6F8900000000, float %5818
  %5821 = fmul fast float %5820, 0x3FE8A23460000000
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5820, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5824 = fmul fast float %5822, %5809
  %5825 = fmul fast float %5823, 0x3FF279A740000000
  %5826 = fadd fast float %5825, -1.000000e+00
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %76, float %5815, float %5816, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.unary.f32(i32 25, float %5827)  ; Rsqrt(value)
  %5829 = fmul fast float %5828, %5815
  %5830 = fmul fast float %5828, %5816
  %5831 = fmul fast float %5828, %76
  %5832 = fmul fast float %5826, %5826
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5823, 0x40005F8BE0000000
  %5835 = fsub fast float 0x400C5BF8A0000000, %5834
  %5836 = fdiv fast float %5824, %5835
  %5837 = fmul fast float %5836, 0x3FEE31C3C0000000
  %5838 = fmul fast float %5837, %5833
  %5839 = fmul fast float %5823, 0x3FDACB7480000000
  %5840 = fadd fast float %5839, 0xBFD7347680000000
  %5841 = fmul fast float %5840, %5836
  %5842 = fmul fast float %5841, %5833
  br label %5843

; <label>:5843                                    ; preds = %5814, %5786
  %5844 = phi float [ %5829, %5814 ], [ 0.000000e+00, %5786 ]
  %5845 = phi float [ %5830, %5814 ], [ 0.000000e+00, %5786 ]
  %5846 = phi float [ %5831, %5814 ], [ 0.000000e+00, %5786 ]
  %5847 = phi float [ %5838, %5814 ], [ 0.000000e+00, %5786 ]
  %5848 = phi float [ %5842, %5814 ], [ 0.000000e+00, %5786 ]
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fmul fast float %5849, 0x3FDF454380000000
  %5851 = fmul fast float %5849, %5849
  %5852 = fmul fast float %5851, 0x3FEE471020000000
  %5853 = fadd fast float %5852, 0xBFD42F6020000000
  %5854 = fmul fast float %5809, 0x3FD20DD760000000
  %5855 = fmul fast float %5853, %5848
  %5856 = fadd fast float %5855, %5854
  %5857 = fmul fast float %5850, %5847
  %5858 = fadd fast float %5856, %5857
  %5859 = fsub fast float %5856, %5857
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, 0x3FDF454380000000
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5847, float %5848, float 0x3FD20DD760000000, float %5861, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5867 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  %5869 = fcmp fast oeq float %5866, 0.000000e+00
  %5870 = or i1 %5869, %5868
  br i1 %5870, label %5900, label %5871

; <label>:5871                                    ; preds = %5843
  %5872 = fsub fast float -0.000000e+00, %73
  %5873 = fsub fast float -0.000000e+00, %71
  %5874 = call float @dx.op.unary.f32(i32 24, float %5867)  ; Sqrt(value)
  %5875 = fdiv fast float %5874, %5866
  %5876 = fcmp fast ogt float %5875, 0x3FFB6F8900000000
  %5877 = select i1 %5876, float 0x3FFB6F8900000000, float %5875
  %5878 = fmul fast float %5877, 0x3FE8A23460000000
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5881 = fmul fast float %5879, %5866
  %5882 = fmul fast float %5880, 0x3FF279A740000000
  %5883 = fadd fast float %5882, -1.000000e+00
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %72, float %5872, float %5873, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 25, float %5884)  ; Rsqrt(value)
  %5886 = fmul fast float %5885, %5872
  %5887 = fmul fast float %5885, %5873
  %5888 = fmul fast float %5885, %72
  %5889 = fmul fast float %5883, %5883
  %5890 = fsub fast float 1.000000e+00, %5889
  %5891 = fmul fast float %5880, 0x40005F8BE0000000
  %5892 = fsub fast float 0x400C5BF8A0000000, %5891
  %5893 = fdiv fast float %5881, %5892
  %5894 = fmul fast float %5893, 0x3FEE31C3C0000000
  %5895 = fmul fast float %5894, %5890
  %5896 = fmul fast float %5880, 0x3FDACB7480000000
  %5897 = fadd fast float %5896, 0xBFD7347680000000
  %5898 = fmul fast float %5897, %5893
  %5899 = fmul fast float %5898, %5890
  br label %5900

; <label>:5900                                    ; preds = %5871, %5843
  %5901 = phi float [ %5886, %5871 ], [ 0.000000e+00, %5843 ]
  %5902 = phi float [ %5887, %5871 ], [ 0.000000e+00, %5843 ]
  %5903 = phi float [ %5888, %5871 ], [ 0.000000e+00, %5843 ]
  %5904 = phi float [ %5895, %5871 ], [ 0.000000e+00, %5843 ]
  %5905 = phi float [ %5899, %5871 ], [ 0.000000e+00, %5843 ]
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fmul fast float %5906, 0x3FDF454380000000
  %5908 = fmul fast float %5906, %5906
  %5909 = fmul fast float %5908, 0x3FEE471020000000
  %5910 = fadd fast float %5909, 0xBFD42F6020000000
  %5911 = fmul fast float %5866, 0x3FD20DD760000000
  %5912 = fmul fast float %5910, %5905
  %5913 = fadd fast float %5912, %5911
  %5914 = fmul fast float %5907, %5904
  %5915 = fadd fast float %5913, %5914
  %5916 = fsub fast float %5913, %5914
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, 0x3FDF454380000000
  %5919 = fmul fast float %5917, %5917
  %5920 = fmul fast float %5919, 0x3FEE471020000000
  %5921 = fadd fast float %5920, 0xBFD42F6020000000
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5904, float %5905, float 0x3FD20DD760000000, float %5918, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5802, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5859, float 0.000000e+00)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5916, float 0.000000e+00)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = call float @dx.op.binary.f32(i32 36, float %5713, float %5933)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5734
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = call float @dx.op.binary.f32(i32 36, float %5714, float %5933)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5734
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = bitcast float %5942 to i32
  %5944 = sub nsw i32 2129859010, %5943
  %5945 = bitcast i32 %5944 to float
  %5946 = call float @dx.op.binary.f32(i32 36, float %5715, float %5933)  ; FMin(a,b)
  %5947 = fmul fast float %5946, %5734
  %5948 = fsub fast float 1.000000e+00, %5947
  %5949 = bitcast float %5948 to i32
  %5950 = sub nsw i32 2129859010, %5949
  %5951 = bitcast i32 %5950 to float
  %5952 = fmul fast float %5923, %5733
  %5953 = fmul fast float %5952, %5939
  %5954 = fmul fast float %5924, %5733
  %5955 = fmul fast float %5954, %5945
  %5956 = fmul fast float %5925, %5733
  %5957 = fmul fast float %5956, %5951
  %5958 = call float @dx.op.binary.f32(i32 36, float %5710, float %5933)  ; FMin(a,b)
  %5959 = fmul fast float %5958, %5734
  %5960 = fsub fast float 1.000000e+00, %5959
  %5961 = bitcast float %5960 to i32
  %5962 = sub nsw i32 2129859010, %5961
  %5963 = bitcast i32 %5962 to float
  %5964 = call float @dx.op.binary.f32(i32 36, float %5711, float %5933)  ; FMin(a,b)
  %5965 = fmul fast float %5964, %5734
  %5966 = fsub fast float 1.000000e+00, %5965
  %5967 = bitcast float %5966 to i32
  %5968 = sub nsw i32 2129859010, %5967
  %5969 = bitcast i32 %5968 to float
  %5970 = call float @dx.op.binary.f32(i32 36, float %5722, float %5933)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5734
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = fmul fast float %5929, %5733
  %5977 = fmul fast float %5976, %5963
  %5978 = fmul fast float %5930, %5733
  %5979 = fmul fast float %5978, %5969
  %5980 = fmul fast float %5931, %5733
  %5981 = fmul fast float %5980, %5975
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5955, float %5957, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = select i1 %227, float 0.000000e+00, float %5953
  %5984 = select i1 %227, float %5982, float %5955
  %5985 = select i1 %227, float 0.000000e+00, float %5957
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = select i1 %227, float 0.000000e+00, float %5926
  %5988 = select i1 %227, float %5986, float %5927
  %5989 = select i1 %227, float 0.000000e+00, float %5928
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5979, float %5981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = select i1 %227, float 0.000000e+00, float %5977
  %5992 = select i1 %227, float %5990, float %5979
  %5993 = select i1 %227, float 0.000000e+00, float %5981
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5996 = fsub fast float %98, %5995
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = fmul fast float %5996, %5997
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = fmul fast float %5750, 0x4071A18460000000
  %6001 = fadd fast float %6000, 0x3F0FFB4800000000
  %6002 = call float @dx.op.unary.f32(i32 23, float %6001)  ; Log(value)
  %6003 = fadd fast float %6002, 0x4006B851E0000000
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6007 = fsub fast float %6005, %6003
  %6008 = fcmp fast ogt float %6007, 0.000000e+00
  %6009 = fcmp fast olt float %6007, 0.000000e+00
  %6010 = zext i1 %6008 to i32
  %6011 = zext i1 %6009 to i32
  %6012 = sub nsw i32 %6010, %6011
  %6013 = sitofp i32 %6012 to float
  %6014 = call float @dx.op.unary.f32(i32 6, float %6007)  ; FAbs(value)
  %6015 = fsub fast float %6014, %6006
  %6016 = call float @dx.op.binary.f32(i32 35, float %6015, float 0.000000e+00)  ; FMax(a,b)
  %6017 = fmul fast float %6013, %6016
  %6018 = fadd fast float %6002, %6017
  %6019 = call float @dx.op.unary.f32(i32 21, float %6018)  ; Exp(value)
  %6020 = fmul fast float %6019, 0x3F50624DE0000000
  %6021 = fcmp fast oeq float %5751, 0.000000e+00
  %6022 = fdiv fast float 0x400C5BF880000000, %5750
  %6023 = fmul fast float %6020, %6022
  %6024 = select i1 %6021, float 1.000000e+00, float %6023
  %6025 = call float @dx.op.binary.f32(i32 35, float %6024, float 1.000000e+00)  ; FMax(a,b)
  %6026 = fadd fast float %6025, -1.000000e+00
  %6027 = fmul fast float %6026, %5999
  %6028 = fadd fast float %6027, 1.000000e+00
  %6029 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6030 = fmul fast float %6029, %5983
  %6031 = fmul fast float %6029, %5984
  %6032 = fmul fast float %6029, %5985
  %6033 = fmul fast float %4428, %4428
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = fmul fast float %5724, 9.843750e-01
  %6036 = fmul fast float %5719, 9.843750e-01
  %6037 = fadd fast float %6035, 7.812500e-03
  %6038 = fadd fast float %6036, 7.812500e-03
  %6039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6037, float %6038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6040 = extractvalue %dx.types.ResRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.ResRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.ResRet.f32 %6039, 2
  %6043 = extractvalue %dx.types.ResRet.f32 %6039, 3
  %6044 = fsub fast float 1.000000e+00, %6034
  %6045 = fsub fast float %6042, %6040
  %6046 = fsub fast float %6043, %6041
  %6047 = fmul fast float %6045, %6044
  %6048 = fmul fast float %6046, %6044
  %6049 = fadd fast float %6047, %6040
  %6050 = fadd fast float %6048, %6041
  %6051 = fmul fast float %6049, %5710
  %6052 = fmul fast float %6049, %5711
  %6053 = fmul fast float %6049, %5722
  %6054 = fadd fast float %6051, %6050
  %6055 = fadd fast float %6052, %6050
  %6056 = fadd fast float %6053, %6050
  %6057 = fcmp fast ogt float %5078, 0.000000e+00
  br i1 %6057, label %6058, label %6084

; <label>:6058                                    ; preds = %5900
  %6059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %5724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fsub fast float 1.000000e+00, %5710
  %6067 = fsub fast float 1.000000e+00, %5711
  %6068 = fsub fast float 1.000000e+00, %5722
  %6069 = fmul fast float %5710, 4.000000e+00
  %6070 = fmul fast float %6069, %6066
  %6071 = fmul fast float %6070, %6063
  %6072 = fmul fast float %5711, 4.000000e+00
  %6073 = fmul fast float %6072, %6067
  %6074 = fmul fast float %6073, %6064
  %6075 = fmul fast float %5722, 4.000000e+00
  %6076 = fmul fast float %6075, %6068
  %6077 = fmul fast float %6076, %6065
  %6078 = fadd fast float %6071, %6054
  %6079 = fadd fast float %6074, %6055
  %6080 = fadd fast float %6077, %6056
  %6081 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6082 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  br label %6084

; <label>:6084                                    ; preds = %6058, %5900
  %6085 = phi float [ %6081, %6058 ], [ %6054, %5900 ]
  %6086 = phi float [ %6082, %6058 ], [ %6055, %5900 ]
  %6087 = phi float [ %6083, %6058 ], [ %6056, %5900 ]
  %6088 = call float @dx.op.binary.f32(i32 35, float %6086, float %6087)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 35, float %6085, float %6088)  ; FMax(a,b)
  %6090 = fsub fast float 1.000000e+00, %6089
  %6091 = fmul fast float %6089, %5719
  %6092 = fadd fast float %6091, %5719
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 2
  %6095 = extractvalue %dx.types.CBufRet.f32 %6093, 3
  %6096 = fmul fast float %6092, %6094
  %6097 = fadd fast float %6096, %6095
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = fsub fast float 1.000000e+00, %5745
  %6100 = fadd fast float %6099, %6098
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6102 = fcmp fast olt float %6101, 1.000000e+00
  br i1 %6102, label %6103, label %6579

; <label>:6103                                    ; preds = %6084
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6107 = fmul fast float %6105, %110
  %6108 = fmul fast float %6106, %111
  %6109 = fptoui float %6107 to i32
  %6110 = fptoui float %6108 to i32
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6115 = fadd fast float %98, -4.000000e+00
  %6116 = call float @dx.op.binary.f32(i32 35, float %6115, float 0.000000e+00)  ; FMax(a,b)
  %6117 = fadd fast float %6116, %6112
  %6118 = fmul fast float %6117, %6113
  %6119 = call float @dx.op.unary.f32(i32 23, float %6118)  ; Log(value)
  %6120 = fmul fast float %6119, %6114
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6123 = fmul fast float %6120, %6122
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.i32 %6125, 1
  %6127 = add i32 %6126, -1
  %6128 = uitofp i32 %6126 to float
  %6129 = fmul fast float %6128, %6124
  %6130 = fptoui float %6129 to i32
  %6131 = call i32 @dx.op.binary.i32(i32 40, i32 %6130, i32 %6127)  ; UMin(a,b)
  %6132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.i32 %6132, 2
  %6134 = extractvalue %dx.types.CBufRet.i32 %6132, 3
  %6135 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6110, i32 %6133, i32 %6109)  ; UMad(a,b,c)
  %6136 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6131, i32 %6134, i32 %6135)  ; UMad(a,b,c)
  %6137 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6138 = fptoui float %6137 to i32
  %6139 = lshr i32 %6138, 5
  %6140 = call i32 @dx.op.binary.i32(i32 40, i32 %6139, i32 8191)  ; UMin(a,b)
  %6141 = fsub fast float %5509, %167
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  %6144 = fcmp fast ogt float %5732, 0.000000e+00
  %6145 = and i1 %6144, %6143
  br i1 %6145, label %6146, label %6175

; <label>:6146                                    ; preds = %6103
  %6147 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6148 = call float @dx.op.binary.f32(i32 35, float %6147, float -1.000000e+00)  ; FMax(a,b)
  %6149 = call float @dx.op.binary.f32(i32 36, float %6148, float 1.000000e+00)  ; FMin(a,b)
  %6150 = fmul fast float %6149, %6149
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = fmul fast float %6151, 0x3FFC6E2300000000
  %6153 = fsub fast float 1.000000e+00, %6152
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = call float @dx.op.unary.f32(i32 24, float %6153)  ; Sqrt(value)
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = call float @dx.op.unary.f32(i32 23, float %6156)  ; Log(value)
  %6158 = fmul fast float %6157, 5.000000e+00
  %6159 = call float @dx.op.unary.f32(i32 21, float %6158)  ; Exp(value)
  %6160 = fmul fast float %6159, 0x3FEF591A60000000
  %6161 = fadd fast float %6160, 0x3F94DCB540000000
  %6162 = select i1 %6154, float %6161, float 1.000000e+00
  %6163 = fcmp fast oge float %6162, 1.000000e+00
  %6164 = fmul fast float %6147, 2.000000e+00
  %6165 = fadd fast float %6164, %5732
  %6166 = select i1 %6163, float %6165, float %5732
  %6167 = fsub fast float %6166, %5732
  %6168 = fmul fast float %6167, %6142
  %6169 = fadd fast float %6168, %5732
  %6170 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %6169, float %5730, float %5731, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = call float @dx.op.unary.f32(i32 25, float %6170)  ; Rsqrt(value)
  %6172 = fmul fast float %6171, %5730
  %6173 = fmul fast float %6171, %5731
  %6174 = fmul fast float %6169, %6171
  br label %6175

; <label>:6175                                    ; preds = %6146, %6103
  %6176 = phi float [ %6172, %6146 ], [ %5730, %6103 ]
  %6177 = phi float [ %6173, %6146 ], [ %5731, %6103 ]
  %6178 = phi float [ %6174, %6146 ], [ %5732, %6103 ]
  %6179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.i32 %6179, 2
  %6181 = add nsw i32 %6180, -1
  %6182 = call i32 @dx.op.binary.i32(i32 37, i32 %6181, i32 0)  ; IMax(a,b)
  %6183 = shl i32 %6140, 2
  %6184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6183, i32 undef)  ; BufferLoad(srv,index,wot)
  %6185 = extractvalue %dx.types.ResRet.i32 %6184, 0
  %6186 = lshr i32 %6185, 16
  %6187 = and i32 %6185, 65535
  %6188 = lshr i32 %6185, 21
  %6189 = lshr i32 %6187, 5
  %6190 = call i32 @dx.op.binary.i32(i32 40, i32 %6189, i32 %6182)  ; UMin(a,b)
  %6191 = icmp ugt i32 %6188, %6190
  br i1 %6191, label %6555, label %6192

; <label>:6192                                    ; preds = %6175
  br label %6193

; <label>:6193                                    ; preds = %6547, %6192
  %6194 = phi float [ %6548, %6547 ], [ 0.000000e+00, %6192 ]
  %6195 = phi float [ %6549, %6547 ], [ 0.000000e+00, %6192 ]
  %6196 = phi float [ %6550, %6547 ], [ 0.000000e+00, %6192 ]
  %6197 = phi float [ %6551, %6547 ], [ 1.000000e+00, %6192 ]
  %6198 = phi i32 [ %6552, %6547 ], [ %6188, %6192 ]
  %6199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.i32 %6199, 2
  %6201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6136, i32 %6200, i32 %6198)  ; UMad(a,b,c)
  %6202 = shl i32 %6201, 2
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = shl i32 %6198, 5
  %6206 = sub nsw i32 %6186, %6205
  %6207 = call i32 @dx.op.binary.i32(i32 37, i32 %6206, i32 0)  ; IMax(a,b)
  %6208 = call i32 @dx.op.binary.i32(i32 38, i32 %6207, i32 31)  ; IMin(a,b)
  %6209 = sub nsw i32 1, %6186
  %6210 = add nsw i32 %6209, %6187
  %6211 = call i32 @dx.op.binary.i32(i32 37, i32 %6210, i32 0)  ; IMax(a,b)
  %6212 = call i32 @dx.op.binary.i32(i32 38, i32 %6211, i32 32)  ; IMin(a,b)
  %6213 = and i32 %6212, 31
  %6214 = shl i32 -1, %6213
  %6215 = xor i32 %6214, -1
  %6216 = and i32 %6208, 31
  %6217 = shl i32 %6215, %6216
  %6218 = icmp eq i32 %6212, 32
  %6219 = select i1 %6218, i32 -1, i32 %6217
  %6220 = and i32 %6219, %6204
  %6221 = icmp eq i32 %6220, 0
  br i1 %6221, label %6547, label %6222

; <label>:6222                                    ; preds = %6193
  br label %6223

; <label>:6223                                    ; preds = %6330, %6222
  %6224 = phi float [ %6331, %6330 ], [ %6194, %6222 ]
  %6225 = phi float [ %6332, %6330 ], [ %6195, %6222 ]
  %6226 = phi float [ %6333, %6330 ], [ %6196, %6222 ]
  %6227 = phi float [ %6334, %6330 ], [ %6197, %6222 ]
  %6228 = phi i32 [ %6233, %6330 ], [ %6220, %6222 ]
  %6229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6228)  ; FirstbitLo(value)
  %6230 = add i32 %6229, %6205
  %6231 = and i32 %6229, 31
  %6232 = shl i32 1, %6231
  %6233 = xor i32 %6232, %6228
  %6234 = mul i32 %6230, 72
  %6235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6234, i32 undef)  ; BufferLoad(srv,index,wot)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = add i32 %6234, 12
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = add i32 %6234, 16
  %6243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6242, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6247 = add i32 %6234, 28
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = add i32 %6234, 32
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.ResRet.f32 %6251, 2
  %6255 = extractvalue %dx.types.ResRet.f32 %6251, 3
  %6256 = add i32 %6234, 48
  %6257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6256, i32 undef)  ; BufferLoad(srv,index,wot)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 1
  %6260 = add i32 %6234, 56
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = add i32 %6234, 64
  %6265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 1
  %6268 = mul i32 %6230, 60
  %6269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6268, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = add i32 %6268, 12
  %6274 = add i32 %6268, 48
  %6275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6274, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.ResRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.ResRet.f32 %6275, 2
  %6279 = and i32 %6241, 32767
  %6280 = bitcast float %6236 to i32
  %6281 = icmp eq i32 %6280, -1
  %6282 = bitcast float %6237 to i32
  %6283 = and i32 %6241, 32768
  %6284 = icmp ne i32 %6283, 0
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = fsub fast float %6270, %6286
  %6290 = fsub fast float %6271, %6287
  %6291 = fsub fast float %6272, %6288
  %6292 = fsub fast float %165, %6289
  %6293 = fsub fast float %166, %6290
  %6294 = fsub fast float %167, %6291
  %6295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6273, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.ResRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.ResRet.f32 %6295, 2
  %6299 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = add i32 %6268, 24
  %6301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6300, i32 undef)  ; BufferLoad(srv,index,wot)
  %6302 = extractvalue %dx.types.ResRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.ResRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.ResRet.f32 %6301, 2
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = add i32 %6268, 36
  %6307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.ResRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.ResRet.f32 %6307, 2
  %6311 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6308, float %6309, float %6310)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6313 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6314 = call float @dx.op.unary.f32(i32 6, float %6311)  ; FAbs(value)
  %6315 = fsub fast float %6276, %6312
  %6316 = fsub fast float %6277, %6313
  %6317 = fsub fast float %6278, %6314
  %6318 = fmul fast float %6315, %6244
  %6319 = fmul fast float %6316, %6245
  %6320 = fmul fast float %6317, %6246
  %6321 = call float @dx.op.binary.f32(i32 36, float %6319, float %6320)  ; FMin(a,b)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6318, float %6321)  ; FMin(a,b)
  %6323 = call float @dx.op.unary.f32(i32 7, float %6322)  ; Saturate(value)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6227, float %6323)  ; FMin(a,b)
  %6325 = uitofp i1 %6284 to float
  %6326 = fadd fast float %6142, 1.000000e+00
  %6327 = fsub fast float %6326, %6325
  %6328 = fmul fast float %6324, %6327
  %6329 = fcmp fast ogt float %6328, 0.000000e+00
  br i1 %6329, label %6336, label %6330

; <label>:6330                                    ; preds = %6478, %6223
  %6331 = phi float [ %6542, %6478 ], [ %6224, %6223 ]
  %6332 = phi float [ %6543, %6478 ], [ %6225, %6223 ]
  %6333 = phi float [ %6544, %6478 ], [ %6226, %6223 ]
  %6334 = phi float [ %6545, %6478 ], [ %6227, %6223 ]
  %6335 = icmp eq i32 %6228, %6232
  br i1 %6335, label %6546, label %6223

; <label>:6336                                    ; preds = %6223
  br i1 %6281, label %6394, label %6337

; <label>:6337                                    ; preds = %6336
  %6338 = fsub fast float -0.000000e+00, %6296
  %6339 = fsub fast float -0.000000e+00, %6297
  %6340 = fsub fast float -0.000000e+00, %6298
  %6341 = call float @dx.op.dot3.f32(i32 55, float %6176, float %6177, float %6178, float %6338, float %6339, float %6340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6342 = fsub fast float -0.000000e+00, %6341
  %6343 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6338, float %6339, float %6340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = fadd fast float %6343, %6259
  %6345 = fadd fast float %6258, %6343
  %6346 = fsub fast float -0.000000e+00, %6345
  %6347 = fcmp ogt float %6341, -0.000000e+00
  %6348 = select i1 %6347, float %6346, float %6344
  %6349 = call float @dx.op.unary.f32(i32 6, float %6342)  ; FAbs(value)
  %6350 = fdiv fast float 1.000000e+00, %6349
  %6351 = fmul fast float %6348, %6350
  %6352 = call float @dx.op.binary.f32(i32 35, float %6351, float 0.000000e+00)  ; FMax(a,b)
  %6353 = fsub fast float -0.000000e+00, %6302
  %6354 = fsub fast float -0.000000e+00, %6303
  %6355 = fsub fast float -0.000000e+00, %6304
  %6356 = call float @dx.op.dot3.f32(i32 55, float %6176, float %6177, float %6178, float %6353, float %6354, float %6355)  ; Dot3(ax,ay,az,bx,by,bz)
  %6357 = fsub fast float -0.000000e+00, %6356
  %6358 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6353, float %6354, float %6355)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = fadd fast float %6358, %6263
  %6360 = fadd fast float %6262, %6358
  %6361 = fsub fast float -0.000000e+00, %6360
  %6362 = fcmp ogt float %6356, -0.000000e+00
  %6363 = select i1 %6362, float %6361, float %6359
  %6364 = call float @dx.op.unary.f32(i32 6, float %6357)  ; FAbs(value)
  %6365 = fdiv fast float 1.000000e+00, %6364
  %6366 = fmul fast float %6363, %6365
  %6367 = call float @dx.op.binary.f32(i32 35, float %6366, float 0.000000e+00)  ; FMax(a,b)
  %6368 = fsub fast float -0.000000e+00, %6308
  %6369 = fsub fast float -0.000000e+00, %6309
  %6370 = fsub fast float -0.000000e+00, %6310
  %6371 = call float @dx.op.dot3.f32(i32 55, float %6176, float %6177, float %6178, float %6368, float %6369, float %6370)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = fsub fast float -0.000000e+00, %6371
  %6373 = call float @dx.op.dot3.f32(i32 55, float %6292, float %6293, float %6294, float %6368, float %6369, float %6370)  ; Dot3(ax,ay,az,bx,by,bz)
  %6374 = fadd fast float %6373, %6267
  %6375 = fadd fast float %6266, %6373
  %6376 = fsub fast float -0.000000e+00, %6375
  %6377 = fcmp ogt float %6371, -0.000000e+00
  %6378 = select i1 %6377, float %6376, float %6374
  %6379 = call float @dx.op.unary.f32(i32 6, float %6372)  ; FAbs(value)
  %6380 = fdiv fast float 1.000000e+00, %6379
  %6381 = fmul fast float %6378, %6380
  %6382 = call float @dx.op.binary.f32(i32 35, float %6381, float 0.000000e+00)  ; FMax(a,b)
  %6383 = call float @dx.op.binary.f32(i32 36, float %6367, float %6382)  ; FMin(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6352, float %6383)  ; FMin(a,b)
  %6385 = fmul fast float %6384, %6176
  %6386 = fmul fast float %6384, %6177
  %6387 = fmul fast float %6384, %6178
  %6388 = fadd fast float %6385, %165
  %6389 = fadd fast float %6386, %166
  %6390 = fadd fast float %6387, %167
  %6391 = fsub fast float %6388, %6236
  %6392 = fsub fast float %6389, %6237
  %6393 = fsub fast float %6390, %6238
  br label %6401

; <label>:6394                                    ; preds = %6336
  %6395 = fmul fast float %6176, 8.096000e+03
  %6396 = fmul fast float %6177, 8.096000e+03
  %6397 = fmul fast float %6178, 8.096000e+03
  %6398 = fadd fast float %6395, %165
  %6399 = fadd fast float %6396, %166
  %6400 = fadd fast float %6397, %167
  br label %6401

; <label>:6401                                    ; preds = %6394, %6337
  %6402 = phi float [ %6176, %6394 ], [ %6391, %6337 ]
  %6403 = phi float [ %6177, %6394 ], [ %6392, %6337 ]
  %6404 = phi float [ %6178, %6394 ], [ %6393, %6337 ]
  %6405 = phi float [ %6398, %6394 ], [ %6388, %6337 ]
  %6406 = phi float [ %6399, %6394 ], [ %6389, %6337 ]
  %6407 = phi float [ %6400, %6394 ], [ %6390, %6337 ]
  %6408 = fcmp fast olt float %6255, 1.000000e+00
  br i1 %6408, label %6409, label %6440, !dx.controlflow.hints !102

; <label>:6409                                    ; preds = %6401
  %6410 = fmul fast float %6404, %6253
  %6411 = fmul fast float %6403, %6254
  %6412 = fsub fast float %6410, %6411
  %6413 = fmul fast float %6402, %6254
  %6414 = fmul fast float %6404, %6252
  %6415 = fsub fast float %6413, %6414
  %6416 = fmul fast float %6403, %6252
  %6417 = fmul fast float %6402, %6253
  %6418 = fsub fast float %6416, %6417
  %6419 = fmul fast float %6412, 2.000000e+00
  %6420 = fmul fast float %6415, 2.000000e+00
  %6421 = fmul fast float %6418, 2.000000e+00
  %6422 = fmul fast float %6419, %6255
  %6423 = fmul fast float %6420, %6255
  %6424 = fmul fast float %6421, %6255
  %6425 = fmul fast float %6421, %6253
  %6426 = fmul fast float %6420, %6254
  %6427 = fmul fast float %6419, %6254
  %6428 = fmul fast float %6421, %6252
  %6429 = fmul fast float %6420, %6252
  %6430 = fmul fast float %6419, %6253
  %6431 = fadd fast float %6425, %6402
  %6432 = fadd fast float %6431, %6422
  %6433 = fsub fast float %6432, %6426
  %6434 = fsub fast float %6403, %6428
  %6435 = fadd fast float %6434, %6423
  %6436 = fadd fast float %6435, %6427
  %6437 = fadd fast float %6424, %6404
  %6438 = fsub fast float %6437, %6430
  %6439 = fadd fast float %6438, %6429
  br label %6440

; <label>:6440                                    ; preds = %6409, %6401
  %6441 = phi float [ %6433, %6409 ], [ %6402, %6401 ]
  %6442 = phi float [ %6436, %6409 ], [ %6403, %6401 ]
  %6443 = phi float [ %6439, %6409 ], [ %6404, %6401 ]
  br i1 %6281, label %6475, label %6444

; <label>:6444                                    ; preds = %6440
  %6445 = fmul fast float %5719, 0x400187C840000000
  %6446 = fadd fast float %6445, 0xC00EFC2120000000
  %6447 = fmul fast float %6446, %5719
  %6448 = fadd fast float %6447, 0x3FE5D16340000000
  %6449 = fmul fast float %6448, %5719
  %6450 = fadd fast float %6449, 1.000000e+00
  %6451 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6452 = fsub fast float %6405, %165
  %6453 = fsub fast float %6406, %166
  %6454 = fsub fast float %6407, %167
  %6455 = fsub fast float %6405, %6236
  %6456 = fsub fast float %6406, %6237
  %6457 = fsub fast float %6407, %6238
  %6458 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float %6452, float %6453, float %6454)  ; Dot3(ax,ay,az,bx,by,bz)
  %6459 = call float @dx.op.dot3.f32(i32 55, float %6455, float %6456, float %6457, float %6455, float %6456, float %6457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = fadd fast float %6459, 0x3EE4F8B580000000
  %6461 = fdiv fast float %6458, %6460
  %6462 = bitcast float %6461 to i32
  %6463 = ashr i32 %6462, 1
  %6464 = add nsw i32 %6463, 532487669
  %6465 = bitcast i32 %6464 to float
  %6466 = fmul fast float %6465, %6451
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = fmul fast float %6467, 0x4009981AE0000000
  %6469 = fsub fast float 0x40111BBD80000000, %6468
  %6470 = fmul fast float %6469, %6467
  %6471 = fadd fast float %6470, 0xC0009F6020000000
  %6472 = fmul fast float %6471, %6467
  %6473 = fadd fast float %6472, 1.000000e+00
  %6474 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  br label %6478

; <label>:6475                                    ; preds = %6440
  %6476 = icmp ne i32 %6282, -1
  %6477 = zext i1 %6476 to i32
  br label %6478

; <label>:6478                                    ; preds = %6475, %6444
  %6479 = phi float [ %5719, %6475 ], [ %6474, %6444 ]
  %6480 = phi i32 [ %6477, %6475 ], [ 0, %6444 ]
  %6481 = fmul float %6479, 5.000000e+00
  %6482 = fsub float 5.000000e+00, %6481
  %6483 = icmp ne i32 %6480, 0
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6486 = fadd fast float %6485, %6482
  %6487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6486)  ; FMax(a,b)
  %6488 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6489 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6490 = fadd fast float %6489, %6488
  %6491 = call float @dx.op.unary.f32(i32 6, float %6443)  ; FAbs(value)
  %6492 = fadd fast float %6490, %6491
  %6493 = fcmp fast oeq float %6492, 0.000000e+00
  %6494 = fdiv fast float 1.000000e+00, %6492
  %6495 = select i1 %6493, float 1.000000e+00, float %6494
  %6496 = fmul fast float %6495, %6441
  %6497 = fmul fast float %6495, %6442
  %6498 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6499 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6500 = fsub fast float 1.000000e+00, %6498
  %6501 = fsub fast float 1.000000e+00, %6499
  %6502 = fcmp fast oge float %6496, 0.000000e+00
  %6503 = fcmp fast oge float %6497, 0.000000e+00
  %6504 = select i1 %6502, float 1.000000e+00, float -1.000000e+00
  %6505 = select i1 %6503, float 1.000000e+00, float -1.000000e+00
  %6506 = fcmp fast ole float %6443, 0.000000e+00
  %6507 = fmul fast float %6504, %6500
  %6508 = fmul fast float %6505, %6501
  %6509 = select i1 %6506, float %6507, float %6496
  %6510 = select i1 %6506, float %6508, float %6497
  %6511 = fmul fast float %6509, 5.000000e-01
  %6512 = fmul fast float %6510, 5.000000e-01
  %6513 = fadd fast float %6511, 5.000000e-01
  %6514 = fadd fast float %6512, 5.000000e-01
  %6515 = uitofp i32 %6279 to float
  %6516 = call float @dx.op.binary.f32(i32 36, float %6487, float 3.000000e+00)  ; FMin(a,b)
  %6517 = fadd fast float %6516, 2.000000e+00
  %6518 = call float @dx.op.unary.f32(i32 21, float %6517)  ; Exp(value)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6520 = fmul fast float %6519, %6518
  %6521 = fmul fast float %6520, 2.000000e+00
  %6522 = fsub fast float 1.000000e+00, %6521
  %6523 = fmul fast float %6513, %6522
  %6524 = fmul fast float %6514, %6522
  %6525 = fadd fast float %6523, %6520
  %6526 = fadd fast float %6524, %6520
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6525, float %6526, float %6515, float undef, i32 0, i32 0, i32 undef, float %6487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 0
  %6529 = extractvalue %dx.types.ResRet.f32 %6527, 1
  %6530 = extractvalue %dx.types.ResRet.f32 %6527, 2
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6533 = fmul fast float %6532, %6249
  %6534 = call float @dx.op.binary.f32(i32 36, float %5751, float %6533)  ; FMin(a,b)
  %6535 = select i1 %6483, float %6534, float %6533
  %6536 = fmul fast float %6528, %6328
  %6537 = fmul fast float %6536, %6535
  %6538 = fmul fast float %6529, %6328
  %6539 = fmul fast float %6538, %6535
  %6540 = fmul fast float %6530, %6328
  %6541 = fmul fast float %6540, %6535
  %6542 = fadd fast float %6537, %6224
  %6543 = fadd fast float %6539, %6225
  %6544 = fadd fast float %6541, %6226
  %6545 = fsub fast float %6227, %6328
  br label %6330

; <label>:6546                                    ; preds = %6330
  br label %6547

; <label>:6547                                    ; preds = %6546, %6193
  %6548 = phi float [ %6194, %6193 ], [ %6331, %6546 ]
  %6549 = phi float [ %6195, %6193 ], [ %6332, %6546 ]
  %6550 = phi float [ %6196, %6193 ], [ %6333, %6546 ]
  %6551 = phi float [ %6197, %6193 ], [ %6334, %6546 ]
  %6552 = add i32 %6198, 1
  %6553 = icmp ugt i32 %6552, %6190
  br i1 %6553, label %6554, label %6193, !llvm.loop !103

; <label>:6554                                    ; preds = %6547
  br label %6555

; <label>:6555                                    ; preds = %6554, %6175
  %6556 = phi float [ 0.000000e+00, %6175 ], [ %6548, %6554 ]
  %6557 = phi float [ 0.000000e+00, %6175 ], [ %6549, %6554 ]
  %6558 = phi float [ 0.000000e+00, %6175 ], [ %6550, %6554 ]
  %6559 = call float @dx.op.dot3.f32(i32 55, float %6556, float %6557, float %6558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = select i1 %227, float 0.000000e+00, float %6556
  %6561 = select i1 %227, float %6559, float %6557
  %6562 = select i1 %227, float 0.000000e+00, float %6558
  %6563 = fcmp fast olt float %6101, 0.000000e+00
  %6564 = call float @dx.op.unary.f32(i32 6, float %6101)  ; FAbs(value)
  %6565 = fmul fast float %6564, %5991
  %6566 = fmul fast float %6564, %5992
  %6567 = fmul fast float %6564, %5993
  %6568 = select i1 %6563, float %5991, float %6565
  %6569 = select i1 %6563, float %5992, float %6566
  %6570 = select i1 %6563, float %5993, float %6567
  %6571 = fsub fast float 1.000000e+00, %6564
  %6572 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6573 = fmul fast float %6572, %6560
  %6574 = fmul fast float %6572, %6561
  %6575 = fmul fast float %6572, %6562
  %6576 = fadd fast float %6568, %6573
  %6577 = fadd fast float %6569, %6574
  %6578 = fadd fast float %6570, %6575
  br label %6579

; <label>:6579                                    ; preds = %6555, %6084
  %6580 = phi float [ %6576, %6555 ], [ %5991, %6084 ]
  %6581 = phi float [ %6577, %6555 ], [ %5992, %6084 ]
  %6582 = phi float [ %6578, %6555 ], [ %5993, %6084 ]
  %6583 = fmul fast float %165, %165
  %6584 = fmul fast float %166, %166
  %6585 = fadd fast float %6584, %6583
  %6586 = fmul fast float %167, %167
  %6587 = fadd fast float %6585, %6586
  %6588 = call float @dx.op.unary.f32(i32 24, float %6587)  ; Sqrt(value)
  %6589 = fsub fast float %6588, %5995
  %6590 = fmul fast float %6589, %5997
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %6593 = extractvalue %dx.types.CBufRet.f32 %5994, 3
  %6594 = fmul fast float %6591, %63
  %6595 = fmul fast float %6594, %6592
  %6596 = fmul fast float %6594, %6593
  %6597 = fadd fast float %6596, 1.000000e+00
  %6598 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6599 = fcmp fast ogt float %6598, 0x3E7FF19E20000000
  %6600 = fdiv fast float 1.000000e+00, %6598
  %6601 = select i1 %6599, float %6600, float 0.000000e+00
  %6602 = fmul fast float %6601, %5713
  %6603 = fmul fast float %6601, %5714
  %6604 = fmul fast float %6601, %5715
  %6605 = fadd fast float %6602, -1.000000e+00
  %6606 = fadd fast float %6603, -1.000000e+00
  %6607 = fadd fast float %6604, -1.000000e+00
  %6608 = fmul fast float %6605, 5.000000e-01
  %6609 = fmul fast float %6606, 5.000000e-01
  %6610 = fmul fast float %6607, 5.000000e-01
  %6611 = fadd fast float %6608, 1.000000e+00
  %6612 = fadd fast float %6609, 1.000000e+00
  %6613 = fadd fast float %6610, 1.000000e+00
  %6614 = fadd fast float %6595, %5079
  %6615 = call float @dx.op.binary.f32(i32 35, float %5724, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6616 = fdiv fast float %4428, %6615
  %6617 = fcmp fast olt float %5128, 1.270000e+02
  %6618 = fcmp fast olt float %5129, 1.270000e+02
  %6619 = fcmp fast olt float %5130, 1.270000e+02
  %6620 = fmul fast float %5128, 0xBFF7154760000000
  %6621 = fmul fast float %6620, %6616
  %6622 = fmul fast float %5129, 0xBFF7154760000000
  %6623 = fmul fast float %6622, %6616
  %6624 = fmul fast float %5130, 0xBFF7154760000000
  %6625 = fmul fast float %6624, %6616
  %6626 = call float @dx.op.unary.f32(i32 21, float %6621)  ; Exp(value)
  %6627 = call float @dx.op.unary.f32(i32 21, float %6623)  ; Exp(value)
  %6628 = call float @dx.op.unary.f32(i32 21, float %6625)  ; Exp(value)
  %6629 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6630 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6631 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  %6632 = select i1 %6617, float %6629, float 0.000000e+00
  %6633 = select i1 %6618, float %6630, float 0.000000e+00
  %6634 = select i1 %6619, float %6631, float 0.000000e+00
  %6635 = fmul fast float %6632, %6090
  %6636 = fmul fast float %6633, %6090
  %6637 = fmul fast float %6634, %6090
  %6638 = fadd fast float %6635, -1.000000e+00
  %6639 = fadd fast float %6636, -1.000000e+00
  %6640 = fadd fast float %6637, -1.000000e+00
  %6641 = fmul fast float %6638, %5075
  %6642 = fmul fast float %6639, %5075
  %6643 = fmul fast float %6640, %5075
  %6644 = fmul fast float %6580, %6085
  %6645 = fmul fast float %6581, %6086
  %6646 = fmul fast float %6582, %6087
  %6647 = fsub fast float 1.000000e+00, %5724
  %6648 = bitcast float %6647 to i32
  %6649 = sitofp i32 %6648 to float
  %6650 = fmul fast float %6649, 5.000000e+00
  %6651 = fadd fast float %6650, 0xC1EFBF8940000000
  %6652 = fptosi float %6651 to i32
  %6653 = bitcast i32 %6652 to float
  %6654 = fmul fast float %6614, %6653
  %6655 = fmul fast float %6090, %6030
  %6656 = fmul fast float %6655, %6654
  %6657 = fmul fast float %6656, %6611
  %6658 = fmul fast float %6090, %6031
  %6659 = fmul fast float %6658, %6654
  %6660 = fmul fast float %6659, %6612
  %6661 = fmul fast float %6090, %6032
  %6662 = fmul fast float %6661, %6654
  %6663 = fmul fast float %6662, %6613
  %6664 = fadd fast float %6644, %5062
  %6665 = fadd fast float %6664, %6657
  %6666 = fmul fast float %6665, %5075
  %6667 = fadd fast float %6645, %5063
  %6668 = fadd fast float %6667, %6660
  %6669 = fmul fast float %6668, %5075
  %6670 = fadd fast float %6646, %5064
  %6671 = fadd fast float %6670, %6663
  %6672 = fmul fast float %6671, %5075
  %6673 = fmul fast float %5711, 0x4012D0A400000000
  %6674 = fadd fast float %6643, 1.000000e+00
  %6675 = fadd fast float %6642, 1.000000e+00
  %6676 = fadd fast float %6641, 1.000000e+00
  %6677 = fmul fast float %6661, %6597
  %6678 = fmul fast float %6658, %6597
  %6679 = fmul fast float %6655, %6597
  %6680 = fmul fast float %5739, %5075
  %6681 = fsub fast float 1.000000e+00, %6680
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fsub fast float 1.000000e+00, %6682
  %6684 = fadd fast float %6673, 0x3FDB6377A0000000
  %6685 = fmul fast float %6683, %6684
  %6686 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6687 = fadd fast float %6685, %6686
  %6688 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6689 = call float @dx.op.binary.f32(i32 35, float %6688, float 0x3F847AE140000000)  ; FMax(a,b)
  %6690 = fmul fast float %6689, %6689
  %6691 = fmul fast float %6690, %6690
  %6692 = fmul fast float %6691, 0xC00A935000000000
  %6693 = call float @dx.op.unary.f32(i32 21, float %6692)  ; Exp(value)
  %6694 = fsub fast float 1.000000e+00, %6693
  %6695 = fmul fast float %6676, %5987
  %6696 = fmul fast float %6695, %6694
  %6697 = fmul fast float %6675, %5988
  %6698 = fmul fast float %6697, %6694
  %6699 = fmul fast float %6674, %5989
  %6700 = fmul fast float %6699, %6694
  %6701 = fadd fast float %6696, %6679
  %6702 = fmul fast float %6701, %5075
  %6703 = fadd fast float %6698, %6678
  %6704 = fmul fast float %6703, %5075
  %6705 = fadd fast float %6700, %6677
  %6706 = fmul fast float %6705, %5075
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 3
  %6709 = fcmp fast oeq float %6708, 0.000000e+00
  br i1 %6709, label %8387, label %6710

; <label>:6710                                    ; preds = %6579
  %6711 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = call float @dx.op.dot3.f32(i32 55, float %6715, float %6716, float %6717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6722 = select i1 %227, float %6719, float %6715
  %6723 = select i1 %227, float %6721, float %6716
  %6724 = select i1 %227, float %6720, float %6717
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6727 = fmul fast float %6726, %117
  %6728 = fmul fast float %6726, %118
  %6729 = fmul fast float %6726, %119
  %6730 = fadd fast float %6727, %165
  %6731 = fadd fast float %6728, %166
  %6732 = fadd fast float %6729, %167
  %6733 = fcmp fast olt float %6708, 0.000000e+00
  br i1 %6733, label %7829, label %6734

; <label>:6734                                    ; preds = %6710
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6739 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.CBufRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.CBufRet.f32 %6740, 2
  %6744 = extractvalue %dx.types.CBufRet.f32 %6740, 3
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.CBufRet.f32 %6745, 1
  %6748 = extractvalue %dx.types.CBufRet.f32 %6745, 2
  %6749 = extractvalue %dx.types.CBufRet.f32 %6745, 3
  %6750 = fmul fast float %6736, %6730
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6737, float %6750)  ; FMad(a,b,c)
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6738, float %6751)  ; FMad(a,b,c)
  %6753 = fadd fast float %6752, %6739
  %6754 = fmul fast float %6741, %6730
  %6755 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6742, float %6754)  ; FMad(a,b,c)
  %6756 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6743, float %6755)  ; FMad(a,b,c)
  %6757 = fadd fast float %6756, %6744
  %6758 = fmul fast float %6746, %6730
  %6759 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6747, float %6758)  ; FMad(a,b,c)
  %6760 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6748, float %6759)  ; FMad(a,b,c)
  %6761 = fadd fast float %6760, %6749
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.CBufRet.f32 %6762, 3
  %6766 = fmul fast float %6765, %6753
  %6767 = fmul fast float %6765, %6757
  %6768 = fadd fast float %6766, %6763
  %6769 = fadd fast float %6767, %6764
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.CBufRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.CBufRet.f32 %6770, 3
  %6774 = fmul fast float %6773, %6753
  %6775 = fmul fast float %6773, %6757
  %6776 = fadd fast float %6774, %6771
  %6777 = fadd fast float %6775, %6772
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6780 = fsub fast float %6779, %6761
  %6781 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6782 = fmul fast float %6780, %6781
  %6783 = fsub fast float 1.000000e+00, %6782
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6770, 2
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 2
  %6788 = fadd fast float %6787, %6785
  %6789 = fcmp fast ogt float %6788, 0.000000e+00
  br i1 %6789, label %6790, label %6814

; <label>:6790                                    ; preds = %6734
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6794 = fsub fast float %6776, %6792
  %6795 = fsub fast float %6777, %6793
  %6796 = fcmp fast olt float %6794, 0.000000e+00
  %6797 = fcmp fast olt float %6795, 0.000000e+00
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = select i1 %6796, float %6799, float %6801
  %6804 = select i1 %6797, float %6800, float %6802
  %6805 = fmul fast float %6803, %6794
  %6806 = fmul fast float %6804, %6795
  %6807 = call float @dx.op.unary.f32(i32 6, float %6805)  ; FAbs(value)
  %6808 = call float @dx.op.unary.f32(i32 6, float %6806)  ; FAbs(value)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6810 = call float @dx.op.binary.f32(i32 35, float %6807, float %6808)  ; FMax(a,b)
  %6811 = fsub fast float %6809, %6810
  %6812 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6813 = fmul fast float %6812, %6784
  br label %6814

; <label>:6814                                    ; preds = %6790, %6734
  %6815 = phi float [ %6813, %6790 ], [ 0.000000e+00, %6734 ]
  %6816 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %6817 = extractvalue %dx.types.CBufRet.f32 %6786, 1
  %6818 = fadd fast float %6817, %6816
  %6819 = fcmp fast ogt float %6818, 0.000000e+00
  %6820 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  br i1 %6819, label %6821, label %6844

; <label>:6821                                    ; preds = %6814
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = fsub fast float %6768, %6823
  %6826 = fsub fast float %6769, %6824
  %6827 = fcmp fast olt float %6825, 0.000000e+00
  %6828 = fcmp fast olt float %6826, 0.000000e+00
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6833 = extractvalue %dx.types.CBufRet.f32 %6829, 3
  %6834 = select i1 %6827, float %6830, float %6832
  %6835 = select i1 %6828, float %6831, float %6833
  %6836 = fmul fast float %6834, %6825
  %6837 = fmul fast float %6835, %6826
  %6838 = call float @dx.op.unary.f32(i32 6, float %6836)  ; FAbs(value)
  %6839 = call float @dx.op.unary.f32(i32 6, float %6837)  ; FAbs(value)
  %6840 = call float @dx.op.binary.f32(i32 35, float %6838, float %6839)  ; FMax(a,b)
  %6841 = fsub fast float %6820, %6840
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = fmul fast float %6842, %6784
  br label %6844

; <label>:6844                                    ; preds = %6821, %6814
  %6845 = phi float [ %6843, %6821 ], [ 0.000000e+00, %6814 ]
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6848 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = fsub fast float %6753, %6850
  %6853 = fsub fast float %6757, %6851
  %6854 = fcmp fast olt float %6852, 0.000000e+00
  %6855 = fcmp fast olt float %6853, 0.000000e+00
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6860 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6861 = select i1 %6854, float %6857, float %6859
  %6862 = select i1 %6855, float %6858, float %6860
  %6863 = fmul fast float %6861, %6852
  %6864 = fmul fast float %6862, %6853
  %6865 = call float @dx.op.unary.f32(i32 6, float %6863)  ; FAbs(value)
  %6866 = call float @dx.op.unary.f32(i32 6, float %6864)  ; FAbs(value)
  %6867 = call float @dx.op.binary.f32(i32 35, float %6865, float %6866)  ; FMax(a,b)
  %6868 = fsub fast float %6820, %6867
  %6869 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6870 = call float @dx.op.binary.f32(i32 36, float %6869, float %6848)  ; FMin(a,b)
  %6871 = fmul fast float %6870, %6784
  %6872 = fsub fast float %6845, %6871
  %6873 = fsub fast float %6815, %6845
  %6874 = fsub fast float %6873, %6871
  %6875 = call float @dx.op.binary.f32(i32 35, float %6845, float %6815)  ; FMax(a,b)
  %6876 = call float @dx.op.binary.f32(i32 35, float %6871, float %6875)  ; FMax(a,b)
  %6877 = fcmp fast olt float %6876, 1.000000e+00
  br i1 %6877, label %6878, label %7276, !dx.controlflow.hints !105

; <label>:6878                                    ; preds = %6844
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = fcmp fast une float %6880, 0.000000e+00
  br i1 %6881, label %6882, label %7276, !dx.controlflow.hints !106

; <label>:6882                                    ; preds = %6878
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.CBufRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6887 = extractvalue %dx.types.CBufRet.f32 %6883, 3
  %6888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.CBufRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.CBufRet.f32 %6888, 2
  %6892 = extractvalue %dx.types.CBufRet.f32 %6888, 3
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6898 = fmul fast float %6884, %6730
  %6899 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6885, float %6898)  ; FMad(a,b,c)
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6886, float %6899)  ; FMad(a,b,c)
  %6901 = fadd fast float %6900, %6887
  %6902 = fmul fast float %6889, %6730
  %6903 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6890, float %6902)  ; FMad(a,b,c)
  %6904 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6891, float %6903)  ; FMad(a,b,c)
  %6905 = fadd fast float %6904, %6892
  %6906 = fmul fast float %6894, %6730
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %6895, float %6906)  ; FMad(a,b,c)
  %6908 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %6896, float %6907)  ; FMad(a,b,c)
  %6909 = fadd fast float %6908, %6897
  %6910 = fcmp fast oge float %6901, 1.000000e+00
  %6911 = fcmp fast oge float %6905, 1.000000e+00
  %6912 = or i1 %6910, %6911
  %6913 = fcmp fast olt float %6901, 0.000000e+00
  %6914 = fcmp fast olt float %6905, 0.000000e+00
  %6915 = or i1 %6913, %6914
  %6916 = or i1 %6912, %6915
  br i1 %6916, label %7276, label %6917, !dx.controlflow.hints !107

; <label>:6917                                    ; preds = %6882
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 0
  %6920 = extractvalue %dx.types.CBufRet.f32 %6918, 1
  %6921 = extractvalue %dx.types.CBufRet.f32 %6918, 2
  %6922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.i32 %6922, 2
  %6924 = uitofp i32 %6923 to float
  %6925 = extractvalue %dx.types.CBufRet.i32 %6922, 3
  %6926 = uitofp i32 %6925 to float
  %6927 = extractvalue %dx.types.CBufRet.f32 %6918, 3
  %6928 = fmul fast float %6927, 2.000000e+00
  %6929 = fsub fast float %6901, %6919
  %6930 = fsub fast float %6905, %6920
  %6931 = fmul fast float %6928, %6929
  %6932 = fmul fast float %6928, %6930
  %6933 = fdiv fast float 1.000000e+00, %6713
  %6934 = fmul fast float %6932, %6933
  %6935 = call float @dx.op.unary.f32(i32 6, float %6934)  ; FAbs(value)
  %6936 = fmul fast float %6921, %6732
  %6937 = fmul fast float %6936, %6928
  %6938 = call float @dx.op.unary.f32(i32 6, float %6937)  ; FAbs(value)
  %6939 = call float @dx.op.unary.f32(i32 6, float %6931)  ; FAbs(value)
  %6940 = call float @dx.op.binary.f32(i32 35, float %6938, float %6935)  ; FMax(a,b)
  %6941 = call float @dx.op.binary.f32(i32 35, float %6939, float %6940)  ; FMax(a,b)
  %6942 = fmul fast float %6941, 2.000000e+00
  %6943 = call float @dx.op.unary.f32(i32 23, float %6942)  ; Log(value)
  %6944 = call float @dx.op.binary.f32(i32 35, float %6943, float %6924)  ; FMax(a,b)
  %6945 = call float @dx.op.unary.f32(i32 22, float %6944)  ; Frc(value)
  %6946 = fadd fast float %6945, 0xBFEA666660000000
  %6947 = fmul fast float %6946, 8.000000e+00
  %6948 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6949 = call float @dx.op.unary.f32(i32 27, float %6944)  ; Round_ni(value)
  %6950 = fadd fast float %6949, %6948
  %6951 = call float @dx.op.binary.f32(i32 36, float %6950, float %6926)  ; FMin(a,b)
  %6952 = call float @dx.op.unary.f32(i32 27, float %6951)  ; Round_ni(value)
  %6953 = fsub fast float -0.000000e+00, %6952
  %6954 = call float @dx.op.unary.f32(i32 21, float %6953)  ; Exp(value)
  %6955 = fmul fast float %6954, %6928
  %6956 = fmul fast float %6955, %6901
  %6957 = fmul fast float %6955, %6905
  %6958 = fmul fast float %6956, 2.500000e-01
  %6959 = fmul fast float %6957, 2.500000e-01
  %6960 = fadd fast float %6958, 5.000000e-01
  %6961 = fadd fast float %6959, 5.000000e-01
  %6962 = fsub fast float %6926, %6924
  %6963 = fptoui float %6962 to i32
  %6964 = add i32 %6963, 320
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6964)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = fcmp fast une float %6951, %6926
  %6969 = fsub fast float %6901, %6966
  %6970 = fsub fast float %6905, %6967
  %6971 = call float @dx.op.unary.f32(i32 6, float %6969)  ; FAbs(value)
  %6972 = call float @dx.op.unary.f32(i32 6, float %6970)  ; FAbs(value)
  %6973 = fmul fast float %6971, %6955
  %6974 = fmul fast float %6972, %6955
  %6975 = fcmp fast olt float %6973, 1.000000e+00
  %6976 = fcmp fast olt float %6974, 1.000000e+00
  %6977 = and i1 %6975, %6976
  %6978 = or i1 %6968, %6977
  br i1 %6978, label %6979, label %7276, !dx.controlflow.hints !108

; <label>:6979                                    ; preds = %6917
  %6980 = fmul fast float %6957, 5.000000e-01
  %6981 = fmul fast float %6956, 5.000000e-01
  %6982 = fadd fast float %6980, 5.000000e-01
  %6983 = fadd fast float %6981, 5.000000e-01
  %6984 = sitofp i32 %6923 to float
  %6985 = fsub fast float %6951, %6984
  %6986 = call float @dx.op.unary.f32(i32 27, float %6985)  ; Round_ni(value)
  %6987 = call float @dx.op.unary.f32(i32 22, float %6951)  ; Frc(value)
  %6988 = call float @dx.op.unary.f32(i32 22, float %6983)  ; Frc(value)
  %6989 = call float @dx.op.unary.f32(i32 22, float %6982)  ; Frc(value)
  %6990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6988, float %6989, float %6986, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6991 = extractvalue %dx.types.ResRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.ResRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.ResRet.f32 %6990, 2
  %6994 = extractvalue %dx.types.ResRet.f32 %6990, 3
  %6995 = fcmp fast ogt float %6987, 0.000000e+00
  br i1 %6995, label %6996, label %7017, !dx.controlflow.hints !109

; <label>:6996                                    ; preds = %6979
  %6997 = fadd fast float %6986, 1.000000e+00
  %6998 = call float @dx.op.unary.f32(i32 22, float %6960)  ; Frc(value)
  %6999 = call float @dx.op.unary.f32(i32 22, float %6961)  ; Frc(value)
  %7000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6998, float %6999, float %6997, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7001 = extractvalue %dx.types.ResRet.f32 %7000, 0
  %7002 = extractvalue %dx.types.ResRet.f32 %7000, 1
  %7003 = extractvalue %dx.types.ResRet.f32 %7000, 2
  %7004 = extractvalue %dx.types.ResRet.f32 %7000, 3
  %7005 = fsub fast float %7001, %6991
  %7006 = fsub fast float %7002, %6992
  %7007 = fsub fast float %7003, %6993
  %7008 = fsub fast float %7004, %6994
  %7009 = fmul fast float %7005, %6987
  %7010 = fmul fast float %7006, %6987
  %7011 = fmul fast float %7007, %6987
  %7012 = fmul fast float %7008, %6987
  %7013 = fadd fast float %7009, %6991
  %7014 = fadd fast float %7010, %6992
  %7015 = fadd fast float %7011, %6993
  %7016 = fadd fast float %7012, %6994
  br label %7017

; <label>:7017                                    ; preds = %6996, %6979
  %7018 = phi float [ %7013, %6996 ], [ %6991, %6979 ]
  %7019 = phi float [ %7014, %6996 ], [ %6992, %6979 ]
  %7020 = phi float [ %7015, %6996 ], [ %6993, %6979 ]
  %7021 = phi float [ %7016, %6996 ], [ %6994, %6979 ]
  %7022 = fadd fast float %7018, -5.000000e-01
  %7023 = fadd fast float %7020, -5.000000e-01
  %7024 = fmul fast float %7022, 0xBFD5555560000000
  %7025 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7023, float %7024)  ; FMad(a,b,c)
  %7026 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7019, float 0.000000e+00)  ; FMad(a,b,c)
  %7027 = fadd fast float %7026, %7021
  %7028 = fmul fast float %7022, -7.500000e-01
  %7029 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7023, float %7028)  ; FMad(a,b,c)
  %7030 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7019, float 0.000000e+00)  ; FMad(a,b,c)
  %7031 = fadd fast float %7030, %7021
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 0
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7038 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7039 = fsub fast float %7035, %7025
  %7040 = fsub fast float %7036, %7027
  %7041 = fsub fast float %7037, %7029
  %7042 = fsub fast float %7038, %7031
  %7043 = fmul fast float %7039, %7033
  %7044 = fmul fast float %7040, %7033
  %7045 = fmul fast float %7041, %7033
  %7046 = fmul fast float %7042, %7033
  %7047 = fadd fast float %7043, %7025
  %7048 = fadd fast float %7044, %7027
  %7049 = fadd fast float %7045, %7029
  %7050 = fadd fast float %7046, %7031
  %7051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.i32 %7051, 0
  %7053 = and i32 %7052, 536870911
  %7054 = uitofp i32 %7053 to float
  %7055 = fmul fast float %7054, %6901
  %7056 = fmul fast float %7054, %6905
  %7057 = fptoui float %7055 to i32
  %7058 = fptoui float %7056 to i32
  %7059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7060 = extractvalue %dx.types.ResRet.i32 %7059, 0
  %7061 = and i32 %7060, 31
  %7062 = lshr i32 %7057, %7061
  %7063 = lshr i32 %7058, %7061
  %7064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7065 = extractvalue %dx.types.ResRet.i32 %7064, 0
  %7066 = and i32 %7065, 31
  %7067 = shl i32 1, %7066
  %7068 = call i32 @dx.op.binary.i32(i32 40, i32 %7067, i32 4)  ; UMin(a,b)
  %7069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7070 = extractvalue %dx.types.ResRet.i32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.i32 %7069, 1
  %7072 = icmp eq i32 %7068, 0
  br i1 %7072, label %7114, label %7073

; <label>:7073                                    ; preds = %7017
  br label %7074

; <label>:7074                                    ; preds = %7102, %7073
  %7075 = phi i32 [ %7105, %7102 ], [ 0, %7073 ]
  %7076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7077 = extractvalue %dx.types.ResRet.i32 %7076, 0
  %7078 = lshr i32 %7077, 16
  %7079 = and i32 %7078, 31
  %7080 = shl i32 %7063, %7079
  %7081 = add i32 %7080, %7062
  %7082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.i32 %7082, 0
  %7084 = and i32 %7083, 31
  %7085 = shl i32 %7081, %7084
  %7086 = add i32 %7085, %7075
  %7087 = shl i32 %7086, 2
  %7088 = add i32 %7087, 32
  %7089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7088, i32 undef)  ; BufferLoad(srv,index,wot)
  %7090 = extractvalue %dx.types.ResRet.i32 %7089, 0
  %7091 = icmp slt i32 %7090, 0
  %7092 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7075
  %7093 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7075
  %7094 = bitcast float* %7092 to i32*
  %7095 = bitcast float* %7093 to i32*
  br i1 %7091, label %7096, label %7102

; <label>:7096                                    ; preds = %7074
  %7097 = and i32 %7090, 1073741823
  %7098 = add nuw nsw i32 %7097, 20
  %7099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7098, i32 undef)  ; BufferLoad(srv,index,wot)
  %7100 = extractvalue %dx.types.ResRet.i32 %7099, 0
  %7101 = extractvalue %dx.types.ResRet.i32 %7099, 1
  br label %7102

; <label>:7102                                    ; preds = %7096, %7074
  %7103 = phi i32 [ %7100, %7096 ], [ %7070, %7074 ]
  %7104 = phi i32 [ %7101, %7096 ], [ %7071, %7074 ]
  store i32 %7103, i32* %7094, align 4
  store i32 %7104, i32* %7095, align 4
  %7105 = add nuw i32 %7075, 1
  %7106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.i32 %7106, 2
  %7108 = icmp eq i32 %7107, 0
  %7109 = icmp ugt i32 %7090, -1073741825
  %7110 = and i1 %7109, %7108
  %7111 = icmp ult i32 %7105, %7068
  %7112 = and i1 %7110, %7111
  br i1 %7112, label %7074, label %7113

; <label>:7113                                    ; preds = %7102
  br label %7114

; <label>:7114                                    ; preds = %7113, %7017
  %7115 = phi i32 [ 0, %7017 ], [ %7105, %7113 ]
  %7116 = extractvalue %dx.types.CBufRet.f32 %6879, 2
  %7117 = fptoui float %7116 to i32
  %7118 = icmp eq i32 %7117, 0
  br i1 %7118, label %7170, label %7119

; <label>:7119                                    ; preds = %7114
  br label %7120

; <label>:7120                                    ; preds = %7165, %7119
  %7121 = phi i32 [ %7166, %7165 ], [ %7115, %7119 ]
  %7122 = phi i32 [ %7167, %7165 ], [ 0, %7119 ]
  %7123 = lshr i32 %7122, 2
  %7124 = and i32 %7122, 3
  %7125 = add nuw nsw i32 %7123, 83
  %7126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7125)  ; CBufferLoadLegacy(handle,regIndex)
  %7127 = extractvalue %dx.types.CBufRet.i32 %7126, 0
  %7128 = extractvalue %dx.types.CBufRet.i32 %7126, 1
  %7129 = extractvalue %dx.types.CBufRet.i32 %7126, 2
  %7130 = extractvalue %dx.types.CBufRet.i32 %7126, 3
  %7131 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7127, i32* %7131, align 4
  %7132 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7128, i32* %7132, align 4
  %7133 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7129, i32* %7133, align 4
  %7134 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7130, i32* %7134, align 4
  %7135 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7124
  %7136 = load i32, i32* %7135, align 4, !tbaa !110, !noalias !114
  %7137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7138 = extractvalue %dx.types.ResRet.i32 %7137, 0
  %7139 = lshr i32 %7138, 16
  %7140 = and i32 %7139, 31
  %7141 = shl i32 %7063, %7140
  %7142 = add i32 %7141, %7062
  %7143 = shl i32 %7142, 2
  %7144 = add i32 %7143, %7136
  %7145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7144, i32 undef)  ; BufferLoad(srv,index,wot)
  %7146 = extractvalue %dx.types.ResRet.i32 %7145, 0
  %7147 = icmp eq i32 %7146, 0
  br i1 %7147, label %7165, label %7148

; <label>:7148                                    ; preds = %7120
  %7149 = icmp slt i32 %7146, 0
  %7150 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7121
  %7151 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7121
  %7152 = bitcast float* %7150 to i32*
  %7153 = bitcast float* %7151 to i32*
  br i1 %7149, label %7154, label %7161

; <label>:7154                                    ; preds = %7148
  %7155 = and i32 %7146, 1073741823
  %7156 = add i32 %7136, 20
  %7157 = add i32 %7156, %7155
  %7158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7157, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.i32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.i32 %7158, 1
  br label %7161

; <label>:7161                                    ; preds = %7154, %7148
  %7162 = phi i32 [ %7159, %7154 ], [ %7070, %7148 ]
  %7163 = phi i32 [ %7160, %7154 ], [ %7071, %7148 ]
  store i32 %7162, i32* %7152, align 4
  store i32 %7163, i32* %7153, align 4
  %7164 = add i32 %7121, 1
  br label %7165

; <label>:7165                                    ; preds = %7161, %7120
  %7166 = phi i32 [ %7121, %7120 ], [ %7164, %7161 ]
  %7167 = add nuw i32 %7122, 1
  %7168 = icmp eq i32 %7167, %7117
  br i1 %7168, label %7169, label %7120

; <label>:7169                                    ; preds = %7165
  br label %7170

; <label>:7170                                    ; preds = %7169, %7114
  %7171 = phi i32 [ %7115, %7114 ], [ %7166, %7169 ]
  %7172 = icmp eq i32 %7171, 1
  %7173 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7174 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7172, label %7175, label %7178

; <label>:7175                                    ; preds = %7170
  %7176 = load float, float* %7173, align 4
  %7177 = load float, float* %7174, align 4
  br label %7205

; <label>:7178                                    ; preds = %7170
  %7179 = load float, float* %7173, align 4
  %7180 = load float, float* %7174, align 4
  %7181 = fdiv fast float 1.000000e+00, %7180
  %7182 = fsub fast float %7179, %7181
  %7183 = icmp ugt i32 %7171, 1
  br i1 %7183, label %7184, label %7200

; <label>:7184                                    ; preds = %7178
  br label %7185

; <label>:7185                                    ; preds = %7185, %7184
  %7186 = phi float [ %7195, %7185 ], [ %7182, %7184 ]
  %7187 = phi float [ %7196, %7185 ], [ %7179, %7184 ]
  %7188 = phi i32 [ %7197, %7185 ], [ 1, %7184 ]
  %7189 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7188
  %7190 = load float, float* %7189, align 4
  %7191 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7188
  %7192 = load float, float* %7191, align 4
  %7193 = fdiv fast float 1.000000e+00, %7192
  %7194 = fsub fast float %7190, %7193
  %7195 = call float @dx.op.binary.f32(i32 36, float %7186, float %7194)  ; FMin(a,b)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7187, float %7190)  ; FMax(a,b)
  %7197 = add nuw i32 %7188, 1
  %7198 = icmp eq i32 %7197, %7171
  br i1 %7198, label %7199, label %7185

; <label>:7199                                    ; preds = %7185
  br label %7200

; <label>:7200                                    ; preds = %7199, %7178
  %7201 = phi float [ %7182, %7178 ], [ %7195, %7199 ]
  %7202 = phi float [ %7179, %7178 ], [ %7196, %7199 ]
  %7203 = fsub fast float %7202, %7201
  %7204 = fdiv fast float 1.000000e+00, %7203
  br label %7205

; <label>:7205                                    ; preds = %7200, %7175
  %7206 = phi float [ %7176, %7175 ], [ %7202, %7200 ]
  %7207 = phi float [ %7177, %7175 ], [ %7204, %7200 ]
  %7208 = fadd fast float %6909, %7206
  %7209 = fmul fast float %7208, %7207
  %7210 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7211 = fmul fast float %7210, 2.000000e+00
  %7212 = fsub fast float 1.000000e+00, %7211
  %7213 = fmul fast float %7047, %7047
  %7214 = fsub fast float %7048, %7213
  %7215 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7214)  ; FMax(a,b)
  %7216 = fdiv fast float 1.000000e+00, %7215
  %7217 = fmul fast float %7048, %7047
  %7218 = fsub fast float %7049, %7217
  %7219 = fsub fast float %7212, %7047
  %7220 = fmul fast float %7212, %7212
  %7221 = fsub fast float %7220, %7048
  %7222 = fmul fast float %7216, %7218
  %7223 = fmul fast float %7222, %7219
  %7224 = fsub fast float %7221, %7223
  %7225 = fmul fast float %7048, %7048
  %7226 = fsub fast float %7050, %7225
  %7227 = fmul fast float %7218, %7218
  %7228 = fmul fast float %7227, %7216
  %7229 = fsub fast float %7226, %7228
  %7230 = fdiv fast float %7224, %7229
  %7231 = fmul fast float %7230, %7218
  %7232 = fsub fast float %7219, %7231
  %7233 = fmul fast float %7232, %7216
  %7234 = fmul fast float %7233, %7047
  %7235 = fsub fast float 1.000000e+00, %7234
  %7236 = fmul fast float %7230, %7048
  %7237 = fsub fast float %7235, %7236
  %7238 = fmul fast float %7233, %7233
  %7239 = fmul fast float %7230, 4.000000e+00
  %7240 = fmul fast float %7239, %7237
  %7241 = fsub fast float %7238, %7240
  %7242 = call float @dx.op.unary.f32(i32 24, float %7241)  ; Sqrt(value)
  %7243 = fcmp fast oge float %7233, 0.000000e+00
  %7244 = fsub fast float -0.000000e+00, %7242
  %7245 = select i1 %7243, float %7244, float %7242
  %7246 = fsub fast float %7245, %7233
  %7247 = fdiv fast float %7246, %7230
  %7248 = fdiv fast float %7237, %7246
  %7249 = fmul fast float %7247, 5.000000e-01
  %7250 = fmul fast float %7248, 2.000000e+00
  %7251 = select i1 %7243, float %7249, float %7250
  %7252 = select i1 %7243, float %7250, float %7249
  %7253 = call float @dx.op.binary.f32(i32 35, float %7251, float %7252)  ; FMax(a,b)
  %7254 = call float @dx.op.binary.f32(i32 36, float %7251, float %7252)  ; FMin(a,b)
  %7255 = fcmp fast ogt float %7212, %7253
  %7256 = fsub fast float %7212, %7254
  %7257 = fsub fast float %7212, %7253
  %7258 = fsub fast float %7253, %7254
  %7259 = select i1 %7255, float %7257, float %7258
  %7260 = fmul float %7256, %7259
  %7261 = select i1 %7255, float %7254, float %7212
  %7262 = fcmp fast ogt float %7212, %7254
  %7263 = fmul fast float %7261, %7253
  %7264 = fadd fast float %7261, %7253
  %7265 = fmul fast float %7264, %7047
  %7266 = fadd fast float %7263, %7048
  %7267 = fsub fast float %7266, %7265
  %7268 = fdiv fast float %7267, %7260
  %7269 = select i1 %7262, float %7268, float 0.000000e+00
  %7270 = fsub fast float 1.000000e+00, %7269
  %7271 = select i1 %7255, float %7270, float %7269
  %7272 = call float @dx.op.unary.f32(i32 7, float %7271)  ; Saturate(value)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7274 = fmul fast float %7273, %7272
  %7275 = fsub fast float 1.000000e+00, %7274
  br label %7276

; <label>:7276                                    ; preds = %7205, %6917, %6882, %6878, %6844
  %7277 = phi float [ 1.000000e+00, %6844 ], [ %7275, %7205 ], [ 1.000000e+00, %6882 ], [ 1.000000e+00, %6917 ], [ 1.000000e+00, %6878 ]
  %7278 = fcmp fast ogt float %6874, 0.000000e+00
  br i1 %7278, label %7279, label %7441, !dx.controlflow.hints !123

; <label>:7279                                    ; preds = %7276
  %7280 = fadd fast float %6787, %6761
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 2
  %7283 = extractvalue %dx.types.CBufRet.f32 %7281, 3
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 2
  %7286 = call float @dx.op.binary.f32(i32 35, float %7280, float 0.000000e+00)  ; FMax(a,b)
  %7287 = fadd fast float %7286, 0x3F10000000000000
  %7288 = fcmp fast oeq float %7285, 0.000000e+00
  br i1 %7288, label %7289, label %7356

; <label>:7289                                    ; preds = %7279
  %7290 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7291 = extractvalue %dx.types.CBufRet.f32 %7281, 0
  %7292 = fmul fast float %7291, %6776
  %7293 = fmul fast float %7290, %6777
  %7294 = fadd fast float %7292, 5.000000e-01
  %7295 = call float @dx.op.unary.f32(i32 27, float %7294)  ; Round_ni(value)
  %7296 = fadd fast float %7293, 5.000000e-01
  %7297 = call float @dx.op.unary.f32(i32 27, float %7296)  ; Round_ni(value)
  %7298 = fsub fast float %7294, %7295
  %7299 = fsub fast float %7296, %7297
  %7300 = fadd fast float %7295, -5.000000e-01
  %7301 = fadd fast float %7297, -5.000000e-01
  %7302 = fmul fast float %7298, 2.000000e+00
  %7303 = fsub fast float 3.000000e+00, %7302
  %7304 = fadd fast float %7302, 1.000000e+00
  %7305 = fsub fast float 2.000000e+00, %7298
  %7306 = bitcast float %7303 to i32
  %7307 = sub nsw i32 2129859010, %7306
  %7308 = bitcast i32 %7307 to float
  %7309 = fmul fast float %7308, %7305
  %7310 = fadd fast float %7309, -1.000000e+00
  %7311 = bitcast float %7304 to i32
  %7312 = sub nsw i32 2129859010, %7311
  %7313 = bitcast i32 %7312 to float
  %7314 = fmul fast float %7313, %7298
  %7315 = fadd fast float %7314, 1.000000e+00
  %7316 = fmul fast float %7299, 2.000000e+00
  %7317 = fsub fast float 3.000000e+00, %7316
  %7318 = fadd fast float %7316, 1.000000e+00
  %7319 = fsub fast float 2.000000e+00, %7299
  %7320 = bitcast float %7317 to i32
  %7321 = sub nsw i32 2129859010, %7320
  %7322 = bitcast i32 %7321 to float
  %7323 = fmul fast float %7322, %7319
  %7324 = fadd fast float %7323, -1.000000e+00
  %7325 = bitcast float %7318 to i32
  %7326 = sub nsw i32 2129859010, %7325
  %7327 = bitcast i32 %7326 to float
  %7328 = fmul fast float %7327, %7299
  %7329 = fadd fast float %7328, 1.000000e+00
  %7330 = fadd fast float %7310, %7300
  %7331 = fmul fast float %7330, %7282
  %7332 = fadd fast float %7324, %7301
  %7333 = fmul fast float %7332, %7283
  %7334 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7331, float %7333, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7335 = extractvalue %dx.types.ResRet.f32 %7334, 0
  %7336 = fmul fast float %7335, %7303
  %7337 = fadd fast float %7315, %7300
  %7338 = fmul fast float %7337, %7282
  %7339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7338, float %7333, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7340 = extractvalue %dx.types.ResRet.f32 %7339, 0
  %7341 = fmul fast float %7340, %7304
  %7342 = fadd fast float %7329, %7301
  %7343 = fmul fast float %7342, %7283
  %7344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7331, float %7343, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7345 = extractvalue %dx.types.ResRet.f32 %7344, 0
  %7346 = fmul fast float %7345, %7303
  %7347 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7338, float %7343, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7348 = extractvalue %dx.types.ResRet.f32 %7347, 0
  %7349 = fmul fast float %7348, %7304
  %7350 = fadd fast float %7349, %7346
  %7351 = fmul fast float %7350, %7318
  %7352 = fadd fast float %7341, %7336
  %7353 = fmul fast float %7352, %7317
  %7354 = fadd fast float %7353, %7351
  %7355 = fmul fast float %7354, 6.250000e-02
  br label %7441

; <label>:7356                                    ; preds = %7279
  %7357 = fmul fast float %238, 0x401921FB60000000
  %7358 = call float @dx.op.unary.f32(i32 13, float %7357)  ; Sin(value)
  %7359 = call float @dx.op.unary.f32(i32 12, float %7357)  ; Cos(value)
  %7360 = fsub fast float -0.000000e+00, %7358
  br label %7361

; <label>:7361                                    ; preds = %7410, %7356
  %7362 = phi float [ 0.000000e+00, %7356 ], [ %7405, %7410 ]
  %7363 = phi float [ 0.000000e+00, %7356 ], [ %7407, %7410 ]
  %7364 = phi i32 [ 0, %7356 ], [ %7411, %7410 ]
  %7365 = mul i32 %7364, 2
  %7366 = add i32 0, %7365
  %7367 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7366
  %7368 = load float, float* %7367, align 4
  %7369 = mul i32 %7364, 2
  %7370 = add i32 1, %7369
  %7371 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7370
  %7372 = load float, float* %7371, align 4
  %7373 = fmul fast float %7368, %7359
  %7374 = call float @dx.op.tertiary.f32(i32 46, float %7372, float %7360, float %7373)  ; FMad(a,b,c)
  %7375 = fmul fast float %7368, %7358
  %7376 = call float @dx.op.tertiary.f32(i32 46, float %7372, float %7359, float %7375)  ; FMad(a,b,c)
  %7377 = fmul fast float %7374, %7285
  %7378 = fmul fast float %7376, %7285
  %7379 = fadd fast float %7377, %6776
  %7380 = fadd fast float %7378, %6777
  %7381 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7379, float %7380, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.ResRet.f32 %7381, 1
  %7384 = extractvalue %dx.types.ResRet.f32 %7381, 2
  %7385 = extractvalue %dx.types.ResRet.f32 %7381, 3
  %7386 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7382, float* %7386, align 4
  %7387 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7383, float* %7387, align 4
  %7388 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7384, float* %7388, align 4
  %7389 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7385, float* %7389, align 4
  %7390 = fsub fast float %7382, %7287
  %7391 = fcmp fast olt float %7390, 0.000000e+00
  %7392 = select i1 %7391, float 0.000000e+00, float 1.000000e+00
  %7393 = fadd fast float %7392, %7362
  %7394 = fmul fast float %7392, %7390
  %7395 = fadd fast float %7394, %7363
  br label %7396

; <label>:7396                                    ; preds = %7396, %7361
  %7397 = phi i32 [ 1, %7361 ], [ %7408, %7396 ]
  %7398 = phi float [ %7395, %7361 ], [ %7407, %7396 ]
  %7399 = phi float [ %7393, %7361 ], [ %7405, %7396 ]
  %7400 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7397
  %7401 = load float, float* %7400, align 4, !tbaa !124, !noalias !114
  %7402 = fsub fast float %7401, %7287
  %7403 = fcmp fast olt float %7402, 0.000000e+00
  %7404 = select i1 %7403, float 0.000000e+00, float 1.000000e+00
  %7405 = fadd fast float %7404, %7399
  %7406 = fmul fast float %7404, %7402
  %7407 = fadd fast float %7406, %7398
  %7408 = add nuw nsw i32 %7397, 1
  %7409 = icmp eq i32 %7408, 4
  br i1 %7409, label %7410, label %7396, !llvm.loop !126

; <label>:7410                                    ; preds = %7396
  %7411 = add nuw nsw i32 %7364, 1
  %7412 = icmp eq i32 %7411, 8
  br i1 %7412, label %7413, label %7361, !llvm.loop !127

; <label>:7413                                    ; preds = %7410
  %7414 = fdiv fast float 1.000000e+00, %7405
  %7415 = fmul fast float %7414, %7407
  %7416 = fdiv fast float 1.000000e+00, %7287
  %7417 = fmul fast float %7415, %7416
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7419 = call float @dx.op.binary.f32(i32 35, float %7418, float 0.000000e+00)  ; FMax(a,b)
  %7420 = fmul fast float %7405, 3.125000e-02
  %7421 = call float @dx.op.unary.f32(i32 7, float %7420)  ; Saturate(value)
  %7422 = fmul fast float %7421, 2.000000e+00
  %7423 = fadd fast float %7422, -1.000000e+00
  %7424 = fcmp fast ogt float %7423, 0.000000e+00
  %7425 = fcmp fast olt float %7423, 0.000000e+00
  %7426 = zext i1 %7424 to i32
  %7427 = zext i1 %7425 to i32
  %7428 = sub nsw i32 %7426, %7427
  %7429 = sitofp i32 %7428 to float
  %7430 = fmul fast float %7429, %7423
  %7431 = fsub fast float 1.000000e+00, %7430
  %7432 = fmul fast float %7431, %7431
  %7433 = fmul fast float %7432, %7431
  %7434 = fsub fast float %7431, %7433
  %7435 = fmul fast float %7434, %7419
  %7436 = fsub fast float 1.000000e+00, %7433
  %7437 = fsub fast float %7436, %7435
  %7438 = fmul fast float %7429, 5.000000e-01
  %7439 = fmul fast float %7438, %7437
  %7440 = fsub fast float 5.000000e-01, %7439
  br label %7441

; <label>:7441                                    ; preds = %7413, %7289, %7276
  %7442 = phi float [ 1.000000e+00, %7276 ], [ %7355, %7289 ], [ %7440, %7413 ]
  %7443 = fcmp fast ogt float %6872, 0.000000e+00
  br i1 %7443, label %7444, label %7608, !dx.controlflow.hints !128

; <label>:7444                                    ; preds = %7441
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7447 = fadd fast float %7446, %6761
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7450 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7453 = call float @dx.op.binary.f32(i32 35, float %7447, float 0.000000e+00)  ; FMax(a,b)
  %7454 = fadd fast float %7453, 0x3F10000000000000
  %7455 = fcmp fast oeq float %7452, 0.000000e+00
  br i1 %7455, label %7456, label %7523

; <label>:7456                                    ; preds = %7444
  %7457 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7459 = fmul fast float %7458, %6768
  %7460 = fmul fast float %7457, %6769
  %7461 = fadd fast float %7459, 5.000000e-01
  %7462 = call float @dx.op.unary.f32(i32 27, float %7461)  ; Round_ni(value)
  %7463 = fadd fast float %7460, 5.000000e-01
  %7464 = call float @dx.op.unary.f32(i32 27, float %7463)  ; Round_ni(value)
  %7465 = fsub fast float %7461, %7462
  %7466 = fsub fast float %7463, %7464
  %7467 = fadd fast float %7462, -5.000000e-01
  %7468 = fadd fast float %7464, -5.000000e-01
  %7469 = fmul fast float %7465, 2.000000e+00
  %7470 = fsub fast float 3.000000e+00, %7469
  %7471 = fadd fast float %7469, 1.000000e+00
  %7472 = fsub fast float 2.000000e+00, %7465
  %7473 = bitcast float %7470 to i32
  %7474 = sub nsw i32 2129859010, %7473
  %7475 = bitcast i32 %7474 to float
  %7476 = fmul fast float %7475, %7472
  %7477 = fadd fast float %7476, -1.000000e+00
  %7478 = bitcast float %7471 to i32
  %7479 = sub nsw i32 2129859010, %7478
  %7480 = bitcast i32 %7479 to float
  %7481 = fmul fast float %7480, %7465
  %7482 = fadd fast float %7481, 1.000000e+00
  %7483 = fmul fast float %7466, 2.000000e+00
  %7484 = fsub fast float 3.000000e+00, %7483
  %7485 = fadd fast float %7483, 1.000000e+00
  %7486 = fsub fast float 2.000000e+00, %7466
  %7487 = bitcast float %7484 to i32
  %7488 = sub nsw i32 2129859010, %7487
  %7489 = bitcast i32 %7488 to float
  %7490 = fmul fast float %7489, %7486
  %7491 = fadd fast float %7490, -1.000000e+00
  %7492 = bitcast float %7485 to i32
  %7493 = sub nsw i32 2129859010, %7492
  %7494 = bitcast i32 %7493 to float
  %7495 = fmul fast float %7494, %7466
  %7496 = fadd fast float %7495, 1.000000e+00
  %7497 = fadd fast float %7477, %7467
  %7498 = fmul fast float %7497, %7449
  %7499 = fadd fast float %7491, %7468
  %7500 = fmul fast float %7499, %7450
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7498, float %7500, float undef, float undef, i32 0, i32 0, i32 undef, float %7454)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = fmul fast float %7502, %7470
  %7504 = fadd fast float %7482, %7467
  %7505 = fmul fast float %7504, %7449
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7505, float %7500, float undef, float undef, i32 0, i32 0, i32 undef, float %7454)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7471
  %7509 = fadd fast float %7496, %7468
  %7510 = fmul fast float %7509, %7450
  %7511 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7498, float %7510, float undef, float undef, i32 0, i32 0, i32 undef, float %7454)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7512 = extractvalue %dx.types.ResRet.f32 %7511, 0
  %7513 = fmul fast float %7512, %7470
  %7514 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7505, float %7510, float undef, float undef, i32 0, i32 0, i32 undef, float %7454)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7515 = extractvalue %dx.types.ResRet.f32 %7514, 0
  %7516 = fmul fast float %7515, %7471
  %7517 = fadd fast float %7516, %7513
  %7518 = fmul fast float %7517, %7485
  %7519 = fadd fast float %7508, %7503
  %7520 = fmul fast float %7519, %7484
  %7521 = fadd fast float %7520, %7518
  %7522 = fmul fast float %7521, 6.250000e-02
  br label %7608

; <label>:7523                                    ; preds = %7444
  %7524 = fmul fast float %238, 0x401921FB60000000
  %7525 = call float @dx.op.unary.f32(i32 13, float %7524)  ; Sin(value)
  %7526 = call float @dx.op.unary.f32(i32 12, float %7524)  ; Cos(value)
  %7527 = fsub fast float -0.000000e+00, %7525
  br label %7528

; <label>:7528                                    ; preds = %7577, %7523
  %7529 = phi float [ 0.000000e+00, %7523 ], [ %7572, %7577 ]
  %7530 = phi float [ 0.000000e+00, %7523 ], [ %7574, %7577 ]
  %7531 = phi i32 [ 0, %7523 ], [ %7578, %7577 ]
  %7532 = mul i32 %7531, 2
  %7533 = add i32 0, %7532
  %7534 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7533
  %7535 = load float, float* %7534, align 4
  %7536 = mul i32 %7531, 2
  %7537 = add i32 1, %7536
  %7538 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7537
  %7539 = load float, float* %7538, align 4
  %7540 = fmul fast float %7535, %7526
  %7541 = call float @dx.op.tertiary.f32(i32 46, float %7539, float %7527, float %7540)  ; FMad(a,b,c)
  %7542 = fmul fast float %7535, %7525
  %7543 = call float @dx.op.tertiary.f32(i32 46, float %7539, float %7526, float %7542)  ; FMad(a,b,c)
  %7544 = fmul fast float %7541, %7452
  %7545 = fmul fast float %7543, %7452
  %7546 = fadd fast float %7544, %6768
  %7547 = fadd fast float %7545, %6769
  %7548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7546, float %7547, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7549 = extractvalue %dx.types.ResRet.f32 %7548, 0
  %7550 = extractvalue %dx.types.ResRet.f32 %7548, 1
  %7551 = extractvalue %dx.types.ResRet.f32 %7548, 2
  %7552 = extractvalue %dx.types.ResRet.f32 %7548, 3
  %7553 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7549, float* %7553, align 4
  %7554 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7550, float* %7554, align 4
  %7555 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7551, float* %7555, align 4
  %7556 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7552, float* %7556, align 4
  %7557 = fsub fast float %7549, %7454
  %7558 = fcmp fast olt float %7557, 0.000000e+00
  %7559 = select i1 %7558, float 0.000000e+00, float 1.000000e+00
  %7560 = fadd fast float %7559, %7529
  %7561 = fmul fast float %7559, %7557
  %7562 = fadd fast float %7561, %7530
  br label %7563

; <label>:7563                                    ; preds = %7563, %7528
  %7564 = phi i32 [ 1, %7528 ], [ %7575, %7563 ]
  %7565 = phi float [ %7562, %7528 ], [ %7574, %7563 ]
  %7566 = phi float [ %7560, %7528 ], [ %7572, %7563 ]
  %7567 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7564
  %7568 = load float, float* %7567, align 4, !tbaa !124, !noalias !114
  %7569 = fsub fast float %7568, %7454
  %7570 = fcmp fast olt float %7569, 0.000000e+00
  %7571 = select i1 %7570, float 0.000000e+00, float 1.000000e+00
  %7572 = fadd fast float %7571, %7566
  %7573 = fmul fast float %7571, %7569
  %7574 = fadd fast float %7573, %7565
  %7575 = add nuw nsw i32 %7564, 1
  %7576 = icmp eq i32 %7575, 4
  br i1 %7576, label %7577, label %7563, !llvm.loop !126

; <label>:7577                                    ; preds = %7563
  %7578 = add nuw nsw i32 %7531, 1
  %7579 = icmp eq i32 %7578, 8
  br i1 %7579, label %7580, label %7528, !llvm.loop !127

; <label>:7580                                    ; preds = %7577
  %7581 = fdiv fast float 1.000000e+00, %7572
  %7582 = fmul fast float %7581, %7574
  %7583 = fdiv fast float 1.000000e+00, %7454
  %7584 = fmul fast float %7582, %7583
  %7585 = call float @dx.op.unary.f32(i32 7, float %7584)  ; Saturate(value)
  %7586 = call float @dx.op.binary.f32(i32 35, float %7585, float 0.000000e+00)  ; FMax(a,b)
  %7587 = fmul fast float %7572, 3.125000e-02
  %7588 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7589 = fmul fast float %7588, 2.000000e+00
  %7590 = fadd fast float %7589, -1.000000e+00
  %7591 = fcmp fast ogt float %7590, 0.000000e+00
  %7592 = fcmp fast olt float %7590, 0.000000e+00
  %7593 = zext i1 %7591 to i32
  %7594 = zext i1 %7592 to i32
  %7595 = sub nsw i32 %7593, %7594
  %7596 = sitofp i32 %7595 to float
  %7597 = fmul fast float %7596, %7590
  %7598 = fsub fast float 1.000000e+00, %7597
  %7599 = fmul fast float %7598, %7598
  %7600 = fmul fast float %7599, %7598
  %7601 = fsub fast float %7598, %7600
  %7602 = fmul fast float %7601, %7586
  %7603 = fsub fast float 1.000000e+00, %7600
  %7604 = fsub fast float %7603, %7602
  %7605 = fmul fast float %7596, 5.000000e-01
  %7606 = fmul fast float %7605, %7604
  %7607 = fsub fast float 5.000000e-01, %7606
  br label %7608

; <label>:7608                                    ; preds = %7580, %7456, %7441
  %7609 = phi float [ 1.000000e+00, %7441 ], [ %7522, %7456 ], [ %7607, %7580 ]
  %7610 = fcmp fast ogt float %6871, 0.000000e+00
  br i1 %7610, label %7611, label %7775, !dx.controlflow.hints !129

; <label>:7611                                    ; preds = %7608
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 0
  %7614 = fadd fast float %7613, %6761
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = call float @dx.op.binary.f32(i32 35, float %7614, float 0.000000e+00)  ; FMax(a,b)
  %7621 = fadd fast float %7620, 0x3F10000000000000
  %7622 = fcmp fast oeq float %7619, 0.000000e+00
  br i1 %7622, label %7623, label %7690

; <label>:7623                                    ; preds = %7611
  %7624 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7626 = fmul fast float %7625, %6753
  %7627 = fmul fast float %7624, %6757
  %7628 = fadd fast float %7626, 5.000000e-01
  %7629 = call float @dx.op.unary.f32(i32 27, float %7628)  ; Round_ni(value)
  %7630 = fadd fast float %7627, 5.000000e-01
  %7631 = call float @dx.op.unary.f32(i32 27, float %7630)  ; Round_ni(value)
  %7632 = fsub fast float %7628, %7629
  %7633 = fsub fast float %7630, %7631
  %7634 = fadd fast float %7629, -5.000000e-01
  %7635 = fadd fast float %7631, -5.000000e-01
  %7636 = fmul fast float %7632, 2.000000e+00
  %7637 = fsub fast float 3.000000e+00, %7636
  %7638 = fadd fast float %7636, 1.000000e+00
  %7639 = fsub fast float 2.000000e+00, %7632
  %7640 = bitcast float %7637 to i32
  %7641 = sub nsw i32 2129859010, %7640
  %7642 = bitcast i32 %7641 to float
  %7643 = fmul fast float %7642, %7639
  %7644 = fadd fast float %7643, -1.000000e+00
  %7645 = bitcast float %7638 to i32
  %7646 = sub nsw i32 2129859010, %7645
  %7647 = bitcast i32 %7646 to float
  %7648 = fmul fast float %7647, %7632
  %7649 = fadd fast float %7648, 1.000000e+00
  %7650 = fmul fast float %7633, 2.000000e+00
  %7651 = fsub fast float 3.000000e+00, %7650
  %7652 = fadd fast float %7650, 1.000000e+00
  %7653 = fsub fast float 2.000000e+00, %7633
  %7654 = bitcast float %7651 to i32
  %7655 = sub nsw i32 2129859010, %7654
  %7656 = bitcast i32 %7655 to float
  %7657 = fmul fast float %7656, %7653
  %7658 = fadd fast float %7657, -1.000000e+00
  %7659 = bitcast float %7652 to i32
  %7660 = sub nsw i32 2129859010, %7659
  %7661 = bitcast i32 %7660 to float
  %7662 = fmul fast float %7661, %7633
  %7663 = fadd fast float %7662, 1.000000e+00
  %7664 = fadd fast float %7644, %7634
  %7665 = fmul fast float %7664, %7616
  %7666 = fadd fast float %7658, %7635
  %7667 = fmul fast float %7666, %7617
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7665, float %7667, float undef, float undef, i32 0, i32 0, i32 undef, float %7621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = fmul fast float %7669, %7637
  %7671 = fadd fast float %7649, %7634
  %7672 = fmul fast float %7671, %7616
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7672, float %7667, float undef, float undef, i32 0, i32 0, i32 undef, float %7621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = fmul fast float %7674, %7638
  %7676 = fadd fast float %7663, %7635
  %7677 = fmul fast float %7676, %7617
  %7678 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7665, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float %7621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = fmul fast float %7679, %7637
  %7681 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7672, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float %7621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 0
  %7683 = fmul fast float %7682, %7638
  %7684 = fadd fast float %7683, %7680
  %7685 = fmul fast float %7684, %7652
  %7686 = fadd fast float %7675, %7670
  %7687 = fmul fast float %7686, %7651
  %7688 = fadd fast float %7687, %7685
  %7689 = fmul fast float %7688, 6.250000e-02
  br label %7775

; <label>:7690                                    ; preds = %7611
  %7691 = fmul fast float %238, 0x401921FB60000000
  %7692 = call float @dx.op.unary.f32(i32 13, float %7691)  ; Sin(value)
  %7693 = call float @dx.op.unary.f32(i32 12, float %7691)  ; Cos(value)
  %7694 = fsub fast float -0.000000e+00, %7692
  br label %7695

; <label>:7695                                    ; preds = %7744, %7690
  %7696 = phi float [ 0.000000e+00, %7690 ], [ %7739, %7744 ]
  %7697 = phi float [ 0.000000e+00, %7690 ], [ %7741, %7744 ]
  %7698 = phi i32 [ 0, %7690 ], [ %7745, %7744 ]
  %7699 = mul i32 %7698, 2
  %7700 = add i32 0, %7699
  %7701 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7700
  %7702 = load float, float* %7701, align 4
  %7703 = mul i32 %7698, 2
  %7704 = add i32 1, %7703
  %7705 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7704
  %7706 = load float, float* %7705, align 4
  %7707 = fmul fast float %7702, %7693
  %7708 = call float @dx.op.tertiary.f32(i32 46, float %7706, float %7694, float %7707)  ; FMad(a,b,c)
  %7709 = fmul fast float %7702, %7692
  %7710 = call float @dx.op.tertiary.f32(i32 46, float %7706, float %7693, float %7709)  ; FMad(a,b,c)
  %7711 = fmul fast float %7708, %7619
  %7712 = fmul fast float %7710, %7619
  %7713 = fadd fast float %7711, %6753
  %7714 = fadd fast float %7712, %6757
  %7715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7713, float %7714, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.ResRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.ResRet.f32 %7715, 2
  %7719 = extractvalue %dx.types.ResRet.f32 %7715, 3
  %7720 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7716, float* %7720, align 4
  %7721 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7717, float* %7721, align 4
  %7722 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7718, float* %7722, align 4
  %7723 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7719, float* %7723, align 4
  %7724 = fsub fast float %7716, %7621
  %7725 = fcmp fast olt float %7724, 0.000000e+00
  %7726 = select i1 %7725, float 0.000000e+00, float 1.000000e+00
  %7727 = fadd fast float %7726, %7696
  %7728 = fmul fast float %7726, %7724
  %7729 = fadd fast float %7728, %7697
  br label %7730

; <label>:7730                                    ; preds = %7730, %7695
  %7731 = phi i32 [ 1, %7695 ], [ %7742, %7730 ]
  %7732 = phi float [ %7729, %7695 ], [ %7741, %7730 ]
  %7733 = phi float [ %7727, %7695 ], [ %7739, %7730 ]
  %7734 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7731
  %7735 = load float, float* %7734, align 4, !tbaa !124, !noalias !114
  %7736 = fsub fast float %7735, %7621
  %7737 = fcmp fast olt float %7736, 0.000000e+00
  %7738 = select i1 %7737, float 0.000000e+00, float 1.000000e+00
  %7739 = fadd fast float %7738, %7733
  %7740 = fmul fast float %7738, %7736
  %7741 = fadd fast float %7740, %7732
  %7742 = add nuw nsw i32 %7731, 1
  %7743 = icmp eq i32 %7742, 4
  br i1 %7743, label %7744, label %7730, !llvm.loop !126

; <label>:7744                                    ; preds = %7730
  %7745 = add nuw nsw i32 %7698, 1
  %7746 = icmp eq i32 %7745, 8
  br i1 %7746, label %7747, label %7695, !llvm.loop !127

; <label>:7747                                    ; preds = %7744
  %7748 = fdiv fast float 1.000000e+00, %7739
  %7749 = fmul fast float %7748, %7741
  %7750 = fdiv fast float 1.000000e+00, %7621
  %7751 = fmul fast float %7749, %7750
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = call float @dx.op.binary.f32(i32 35, float %7752, float 0.000000e+00)  ; FMax(a,b)
  %7754 = fmul fast float %7739, 3.125000e-02
  %7755 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7756 = fmul fast float %7755, 2.000000e+00
  %7757 = fadd fast float %7756, -1.000000e+00
  %7758 = fcmp fast ogt float %7757, 0.000000e+00
  %7759 = fcmp fast olt float %7757, 0.000000e+00
  %7760 = zext i1 %7758 to i32
  %7761 = zext i1 %7759 to i32
  %7762 = sub nsw i32 %7760, %7761
  %7763 = sitofp i32 %7762 to float
  %7764 = fmul fast float %7763, %7757
  %7765 = fsub fast float 1.000000e+00, %7764
  %7766 = fmul fast float %7765, %7765
  %7767 = fmul fast float %7766, %7765
  %7768 = fsub fast float %7765, %7767
  %7769 = fmul fast float %7768, %7753
  %7770 = fsub fast float 1.000000e+00, %7767
  %7771 = fsub fast float %7770, %7769
  %7772 = fmul fast float %7763, 5.000000e-01
  %7773 = fmul fast float %7772, %7771
  %7774 = fsub fast float 5.000000e-01, %7773
  br label %7775

; <label>:7775                                    ; preds = %7747, %7623, %7608
  %7776 = phi float [ 1.000000e+00, %7608 ], [ %7689, %7623 ], [ %7774, %7747 ]
  %7777 = fsub fast float %7442, %7277
  %7778 = fmul fast float %7777, %6815
  %7779 = fadd fast float %7778, %7277
  %7780 = fsub fast float %7609, %7779
  %7781 = fmul fast float %7780, %6845
  %7782 = fadd fast float %7781, %7779
  %7783 = fsub fast float %7776, %7782
  %7784 = fmul fast float %7783, %6871
  %7785 = fadd fast float %7784, %7782
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7788 = fcmp fast ogt float %7787, 0.000000e+00
  br i1 %7788, label %7789, label %7829, !dx.controlflow.hints !130

; <label>:7789                                    ; preds = %7775
  %7790 = fcmp fast ugt float %7787, 0.000000e+00
  br i1 %7790, label %7791, label %7826

; <label>:7791                                    ; preds = %7789
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.CBufRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.CBufRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7802 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7803 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.CBufRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7808 = fadd fast float %7805, %6730
  %7809 = fadd fast float %7806, %6731
  %7810 = fadd fast float %7807, %6732
  %7811 = fmul fast float %7808, %7793
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %7794, float %7809, float %7811)  ; FMad(a,b,c)
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7810, float %7812)  ; FMad(a,b,c)
  %7814 = fadd fast float %7813, %7796
  %7815 = fmul fast float %7808, %7798
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %7799, float %7809, float %7815)  ; FMad(a,b,c)
  %7817 = call float @dx.op.tertiary.f32(i32 46, float %7800, float %7810, float %7816)  ; FMad(a,b,c)
  %7818 = fadd fast float %7817, %7801
  %7819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7814, float %7818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7820 = extractvalue %dx.types.ResRet.f32 %7819, 0
  %7821 = fmul fast float %7820, %7803
  %7822 = fadd fast float %7821, %7802
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fmul fast float %7823, %7787
  %7825 = fsub fast float 1.000000e+00, %7824
  br label %7826

; <label>:7826                                    ; preds = %7791, %7789
  %7827 = phi float [ %7825, %7791 ], [ 1.000000e+00, %7789 ]
  %7828 = fmul fast float %7827, %7785
  br label %7829

; <label>:7829                                    ; preds = %7826, %7775, %6710
  %7830 = phi float [ 1.000000e+00, %6710 ], [ %7828, %7826 ], [ %7785, %7775 ]
  %7831 = call float @dx.op.binary.f32(i32 36, float %7830, float %7830)  ; FMin(a,b)
  %7832 = call float @dx.op.binary.f32(i32 36, float %7830, float %7831)  ; FMin(a,b)
  %7833 = fcmp fast ogt float %7832, 0.000000e+00
  br i1 %7833, label %7834, label %7999, !dx.controlflow.hints !131

; <label>:7834                                    ; preds = %7829
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.CBufRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.CBufRet.f32 %7835, 2
  %7839 = extractvalue %dx.types.CBufRet.f32 %7835, 3
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.CBufRet.f32 %7840, 2
  %7844 = extractvalue %dx.types.CBufRet.f32 %7840, 3
  %7845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.CBufRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.CBufRet.f32 %7845, 2
  %7849 = extractvalue %dx.types.CBufRet.f32 %7845, 3
  %7850 = fmul fast float %7836, %6730
  %7851 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %7837, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %7838, float %7851)  ; FMad(a,b,c)
  %7853 = fadd fast float %7852, %7839
  %7854 = fmul fast float %7841, %6730
  %7855 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %7842, float %7854)  ; FMad(a,b,c)
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %7843, float %7855)  ; FMad(a,b,c)
  %7857 = fadd fast float %7856, %7844
  %7858 = fmul fast float %7846, %6730
  %7859 = call float @dx.op.tertiary.f32(i32 46, float %6731, float %7847, float %7858)  ; FMad(a,b,c)
  %7860 = call float @dx.op.tertiary.f32(i32 46, float %6732, float %7848, float %7859)  ; FMad(a,b,c)
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.CBufRet.f32 %7861, 3
  %7865 = fmul fast float %7864, %7853
  %7866 = fmul fast float %7864, %7857
  %7867 = fadd fast float %7865, %7862
  %7868 = fadd fast float %7866, %7863
  %7869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.f32 %7869, 0
  %7871 = extractvalue %dx.types.CBufRet.f32 %7869, 1
  %7872 = fsub fast float %7867, %7870
  %7873 = fsub fast float %7868, %7871
  %7874 = fcmp fast olt float %7872, 0.000000e+00
  %7875 = fcmp fast olt float %7873, 0.000000e+00
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.CBufRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.CBufRet.f32 %7876, 2
  %7880 = extractvalue %dx.types.CBufRet.f32 %7876, 3
  %7881 = select i1 %7874, float %7877, float %7879
  %7882 = select i1 %7875, float %7878, float %7880
  %7883 = fmul fast float %7881, %7872
  %7884 = fmul fast float %7882, %7873
  %7885 = call float @dx.op.unary.f32(i32 6, float %7883)  ; FAbs(value)
  %7886 = call float @dx.op.unary.f32(i32 6, float %7884)  ; FAbs(value)
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 0
  %7889 = call float @dx.op.binary.f32(i32 35, float %7885, float %7886)  ; FMax(a,b)
  %7890 = fsub fast float %7888, %7889
  %7891 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7892 = fcmp fast ogt float %7891, 0.000000e+00
  br i1 %7892, label %7893, label %7934, !dx.controlflow.hints !132

; <label>:7893                                    ; preds = %7834
  %7894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7867, float %7868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7895 = extractvalue %dx.types.ResRet.f32 %7894, 1
  %7896 = fcmp fast ogt float %7895, 0.000000e+00
  br i1 %7896, label %7897, label %7929

; <label>:7897                                    ; preds = %7893
  %7898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7867, float %7868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7899 = extractvalue %dx.types.ResRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.ResRet.f32 %7898, 1
  %7901 = extractvalue %dx.types.ResRet.f32 %7898, 2
  %7902 = extractvalue %dx.types.ResRet.f32 %7898, 3
  %7903 = fsub fast float 1.000000e+00, %7849
  %7904 = fsub fast float %7903, %7860
  %7905 = fmul fast float %7904, 0x400921FB60000000
  %7906 = fadd fast float %7905, 0x3FF921FB60000000
  %7907 = call float @dx.op.unary.f32(i32 13, float %7906)  ; Sin(value)
  %7908 = fadd fast float %7907, -1.000000e+00
  %7909 = fmul fast float %7908, 0x3FD45F3060000000
  %7910 = fmul fast float %7904, 0x401921FB60000000
  %7911 = fadd fast float %7910, 0x400921FB60000000
  %7912 = call float @dx.op.unary.f32(i32 13, float %7911)  ; Sin(value)
  %7913 = fadd fast float %7912, 0x3E7777A5C0000000
  %7914 = fmul fast float %7913, 0x3FC45F3060000000
  %7915 = fmul fast float %7904, 0x4022D97C80000000
  %7916 = fadd fast float %7915, 0x4012D97C80000000
  %7917 = call float @dx.op.unary.f32(i32 13, float %7916)  ; Sin(value)
  %7918 = fadd fast float %7917, 1.000000e+00
  %7919 = fmul fast float %7918, 0x3FBB2995E0000000
  %7920 = fmul fast float %7904, 0x402921FB60000000
  %7921 = fadd fast float %7920, 0x401921FB60000000
  %7922 = call float @dx.op.unary.f32(i32 13, float %7921)  ; Sin(value)
  %7923 = fadd fast float %7922, 0xBE8777A5C0000000
  %7924 = fmul fast float %7923, 0x3FB45F3060000000
  %7925 = call float @dx.op.dot4.f32(i32 56, float %7899, float %7900, float %7901, float %7902, float %7909, float %7914, float %7919, float %7924)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7926 = fmul fast float %7925, 0xBFF7154760000000
  %7927 = call float @dx.op.unary.f32(i32 21, float %7926)  ; Exp(value)
  %7928 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  br label %7929

; <label>:7929                                    ; preds = %7897, %7893
  %7930 = phi float [ %7928, %7897 ], [ 1.000000e+00, %7893 ]
  %7931 = fadd fast float %7930, -1.000000e+00
  %7932 = fmul fast float %7931, %7891
  %7933 = fadd fast float %7932, 1.000000e+00
  br label %7934

; <label>:7934                                    ; preds = %7929, %7834
  %7935 = phi float [ %7933, %7929 ], [ 1.000000e+00, %7834 ]
  %7936 = fmul fast float %7935, %7830
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.CBufRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.CBufRet.f32 %7937, 2
  %7941 = fadd fast float %7938, %165
  %7942 = fadd fast float %7939, %166
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.CBufRet.f32 %7945, 1
  %7948 = extractvalue %dx.types.CBufRet.f32 %7945, 2
  %7949 = fsub fast float -0.000000e+00, %7941
  %7950 = fsub fast float -0.000000e+00, %7942
  %7951 = fsub fast float %5721, %7940
  %7952 = fadd fast float %7951, %7944
  %7953 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7949, float %7950, float %7952)  ; Dot3(ax,ay,az,bx,by,bz)
  %7954 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7946, float %7947, float %7948)  ; Dot3(ax,ay,az,bx,by,bz)
  %7955 = fdiv fast float 1.000000e+00, %7954
  %7956 = fmul fast float %7955, %7953
  %7957 = fmul fast float %7946, %7956
  %7958 = fmul fast float %7947, %7956
  %7959 = fadd fast float %7957, %7941
  %7960 = fadd fast float %7958, %7942
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.CBufRet.f32 %7961, 1
  %7964 = fsub fast float %7959, %7962
  %7965 = fsub fast float %7960, %7963
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %7968 = extractvalue %dx.types.CBufRet.f32 %7966, 3
  %7969 = fmul fast float %7964, %7967
  %7970 = fmul fast float %7965, %7968
  %7971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.i32 %7971, 3
  %7973 = icmp eq i32 %7972, 0
  br i1 %7973, label %7979, label %7974

; <label>:7974                                    ; preds = %7934
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7969, float %7970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.ResRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.ResRet.f32 %7975, 2
  br label %7984

; <label>:7979                                    ; preds = %7934
  %7980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7969, float %7970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7981 = extractvalue %dx.types.ResRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.ResRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.ResRet.f32 %7980, 2
  br label %7984

; <label>:7984                                    ; preds = %7979, %7974
  %7985 = phi float [ %7976, %7974 ], [ %7981, %7979 ]
  %7986 = phi float [ %7977, %7974 ], [ %7982, %7979 ]
  %7987 = phi float [ %7978, %7974 ], [ %7983, %7979 ]
  %7988 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %7989 = fmul fast float %7988, %7985
  %7990 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7991 = fsub fast float %7956, %7990
  %7992 = fsub fast float %7991, %7989
  %7993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7992)  ; FMax(a,b)
  %7994 = fmul fast float %7993, %7986
  %7995 = call float @dx.op.binary.f32(i32 36, float %7987, float %7994)  ; FMin(a,b)
  %7996 = fmul fast float %7995, 0xBFF7154760000000
  %7997 = call float @dx.op.unary.f32(i32 21, float %7996)  ; Exp(value)
  %7998 = fmul fast float %7936, %7997
  br label %7999

; <label>:7999                                    ; preds = %7984, %7829
  %8000 = phi float [ %7998, %7984 ], [ %7830, %7829 ]
  %8001 = call float @dx.op.binary.f32(i32 36, float %8000, float %8000)  ; FMin(a,b)
  %8002 = call float @dx.op.binary.f32(i32 36, float %8000, float %8001)  ; FMin(a,b)
  %8003 = fcmp fast ogt float %8002, 0.000000e+00
  br i1 %8003, label %8004, label %8387, !dx.controlflow.hints !133

; <label>:8004                                    ; preds = %7999
  %8005 = fmul fast float %8000, %6722
  %8006 = fmul fast float %8000, %6723
  %8007 = fmul fast float %8000, %6724
  %8008 = fsub fast float %167, %5509
  %8009 = fcmp fast ogt float %8008, 0.000000e+00
  %8010 = fmul fast float %6711, 5.120000e+02
  %8011 = fmul fast float %6712, 5.120000e+02
  %8012 = fmul fast float %6713, 5.120000e+02
  %8013 = fadd fast float %8012, %167
  %8014 = fsub fast float %5509, %8013
  %8015 = fmul fast float %8014, 2.000000e+00
  %8016 = fadd fast float %8015, %8013
  %8017 = select i1 %8009, float %8016, float %8013
  %8018 = fsub fast float %8017, %167
  %8019 = call float @dx.op.dot3.f32(i32 55, float %8010, float %8011, float %8018, float %8010, float %8011, float %8018)  ; Dot3(ax,ay,az,bx,by,bz)
  %8020 = call float @dx.op.unary.f32(i32 25, float %8019)  ; Rsqrt(value)
  %8021 = fmul fast float %8020, %8010
  %8022 = fmul fast float %8020, %8011
  %8023 = fmul fast float %8020, %8018
  %8024 = fsub fast float %5509, %167
  %8025 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8024)  ; Dot3(ax,ay,az,bx,by,bz)
  %8026 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8021, float %8022, float %8023)  ; Dot3(ax,ay,az,bx,by,bz)
  %8027 = fdiv fast float 1.000000e+00, %8026
  %8028 = fmul fast float %8027, %8025
  %8029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8008, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  %8031 = fcmp fast olt float %8029, 0.000000e+00
  %8032 = zext i1 %8030 to i32
  %8033 = zext i1 %8031 to i32
  %8034 = sub nsw i32 %8032, %8033
  %8035 = sitofp i32 %8034 to float
  %8036 = fsub fast float %8017, %5509
  %8037 = call float @dx.op.dot3.f32(i32 55, float %8010, float %8011, float %8036, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8038 = fcmp fast ogt float %8037, 0.000000e+00
  %8039 = fcmp fast olt float %8037, 0.000000e+00
  %8040 = zext i1 %8038 to i32
  %8041 = zext i1 %8039 to i32
  %8042 = sub nsw i32 %8040, %8041
  %8043 = sitofp i32 %8042 to float
  %8044 = fcmp fast une float %8035, %8043
  br i1 %8044, label %8045, label %8055

; <label>:8045                                    ; preds = %8004
  %8046 = fmul fast float %8028, %8023
  %8047 = fmul fast float %8028, %8022
  %8048 = fmul fast float %8028, %8021
  %8049 = fmul fast float %8048, %8048
  %8050 = fmul fast float %8047, %8047
  %8051 = fadd fast float %8049, %8050
  %8052 = fmul fast float %8046, %8046
  %8053 = fadd fast float %8051, %8052
  %8054 = call float @dx.op.unary.f32(i32 24, float %8053)  ; Sqrt(value)
  br label %8065

; <label>:8055                                    ; preds = %8004
  %8056 = icmp slt i32 %8034, 0
  br i1 %8056, label %8057, label %8065

; <label>:8057                                    ; preds = %8055
  %8058 = fsub fast float %167, %8017
  %8059 = fmul fast float %8010, %8010
  %8060 = fmul fast float %8011, %8011
  %8061 = fadd fast float %8059, %8060
  %8062 = fmul fast float %8058, %8058
  %8063 = fadd fast float %8061, %8062
  %8064 = call float @dx.op.unary.f32(i32 24, float %8063)  ; Sqrt(value)
  br label %8065

; <label>:8065                                    ; preds = %8057, %8055, %8045
  %8066 = phi float [ %8054, %8045 ], [ %8064, %8057 ], [ 0.000000e+00, %8055 ]
  %8067 = fsub fast float -0.000000e+00, %8066
  %8068 = select i1 %8009, float -0.000000e+00, float %8067
  %8069 = fmul fast float %5510, 0x3FF7154760000000
  %8070 = fmul fast float %8069, %8068
  %8071 = fmul fast float %5511, 0x3FF7154760000000
  %8072 = fmul fast float %8071, %8068
  %8073 = fmul fast float %5512, 0x3FF7154760000000
  %8074 = fmul fast float %8073, %8068
  %8075 = call float @dx.op.unary.f32(i32 21, float %8070)  ; Exp(value)
  %8076 = call float @dx.op.unary.f32(i32 21, float %8072)  ; Exp(value)
  %8077 = call float @dx.op.unary.f32(i32 21, float %8074)  ; Exp(value)
  %8078 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8079 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8080 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8081 = fmul fast float %8005, %8078
  %8082 = fmul fast float %8006, %8079
  %8083 = fmul fast float %8007, %8080
  %8084 = fsub fast float %6711, %5709
  %8085 = fsub fast float %6712, %5708
  %8086 = fsub fast float %6713, %5707
  %8087 = call float @dx.op.dot3.f32(i32 55, float %8084, float %8085, float %8086, float %8084, float %8085, float %8086)  ; Dot3(ax,ay,az,bx,by,bz)
  %8088 = call float @dx.op.unary.f32(i32 25, float %8087)  ; Rsqrt(value)
  %8089 = fmul fast float %8088, %8084
  %8090 = fmul fast float %8088, %8085
  %8091 = fmul fast float %8088, %8086
  %8092 = call float @dx.op.dot3.f32(i32 55, float %6711, float %6712, float %6713, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8093 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8089, float %8090, float %8091)  ; Dot3(ax,ay,az,bx,by,bz)
  %8094 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8095 = fmul fast float %8094, %8094
  %8096 = fmul fast float %8095, %5749
  %8097 = call float @dx.op.unary.f32(i32 7, float %8096)  ; Saturate(value)
  %8098 = fmul fast float %8097, %8094
  %8099 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8089, float %8090, float %8091)  ; Dot3(ax,ay,az,bx,by,bz)
  %8100 = fmul fast float %8099, %8099
  %8101 = call float @dx.op.unary.f32(i32 6, float %8092)  ; FAbs(value)
  %8102 = fsub fast float 1.000000e+00, %5742
  %8103 = fmul fast float %5724, %5724
  %8104 = fmul fast float %8103, %8102
  %8105 = fadd fast float %8104, %5742
  %8106 = bitcast float %8105 to i32
  %8107 = ashr i32 %8106, 1
  %8108 = add nsw i32 %8107, 532487669
  %8109 = bitcast i32 %8108 to float
  %8110 = fadd fast float %8109, %5724
  %8111 = fmul fast float %5742, %8100
  %8112 = fsub fast float 1.000000e+00, %8100
  %8113 = fadd fast float %8112, %8111
  %8114 = fmul fast float %8101, %8101
  %8115 = fmul fast float %8114, %8102
  %8116 = fadd fast float %8115, %5742
  %8117 = bitcast float %8116 to i32
  %8118 = ashr i32 %8117, 1
  %8119 = add nsw i32 %8118, 532487669
  %8120 = bitcast i32 %8119 to float
  %8121 = fadd fast float %8120, %8101
  %8122 = fmul fast float %8113, %8113
  %8123 = fmul fast float %8122, %8110
  %8124 = fmul fast float %8123, %8121
  %8125 = fdiv fast float 0x3FF0A00000000000, %8124
  %8126 = fmul fast float %8125, %5742
  %8127 = fmul fast float %6034, 0x3FF9999980000000
  %8128 = fsub fast float 5.000000e+00, %8127
  %8129 = call float @dx.op.unary.f32(i32 6, float %8093)  ; FAbs(value)
  %8130 = fsub fast float 1.000000e+00, %8129
  %8131 = fmul fast float %6034, 0x41D9660740000000
  %8132 = fadd fast float %8131, 0xC1EFBF8940000000
  %8133 = bitcast float %8130 to i32
  %8134 = sitofp i32 %8133 to float
  %8135 = fmul fast float %8134, %8128
  %8136 = fadd fast float %8132, %8135
  %8137 = fptosi float %8136 to i32
  %8138 = bitcast i32 %8137 to float
  %8139 = fsub fast float 1.000000e+00, %5710
  %8140 = fsub fast float 1.000000e+00, %5711
  %8141 = fsub fast float 1.000000e+00, %5722
  %8142 = fmul fast float %8138, %8139
  %8143 = fmul fast float %8138, %8140
  %8144 = fmul fast float %8138, %8141
  %8145 = fadd fast float %8142, %5710
  %8146 = fadd fast float %8143, %5711
  %8147 = fadd fast float %8144, %5722
  br i1 %6057, label %8148, label %8171

; <label>:8148                                    ; preds = %8065
  %8149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %8129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8150 = extractvalue %dx.types.ResRet.f32 %8149, 0
  %8151 = extractvalue %dx.types.ResRet.f32 %8149, 1
  %8152 = extractvalue %dx.types.ResRet.f32 %8149, 2
  %8153 = fadd fast float %8150, -5.000000e-01
  %8154 = fadd fast float %8151, -5.000000e-01
  %8155 = fadd fast float %8152, -5.000000e-01
  %8156 = fmul fast float %5710, 4.000000e+00
  %8157 = fmul fast float %8156, %8139
  %8158 = fmul fast float %8157, %8153
  %8159 = fmul fast float %5711, 4.000000e+00
  %8160 = fmul fast float %8159, %8140
  %8161 = fmul fast float %8160, %8154
  %8162 = fmul fast float %5722, 4.000000e+00
  %8163 = fmul fast float %8162, %8141
  %8164 = fmul fast float %8163, %8155
  %8165 = fadd fast float %8158, %8145
  %8166 = fadd fast float %8161, %8146
  %8167 = fadd fast float %8164, %8147
  %8168 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8169 = call float @dx.op.unary.f32(i32 7, float %8166)  ; Saturate(value)
  %8170 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  br label %8171

; <label>:8171                                    ; preds = %8148, %8065
  %8172 = phi float [ %8168, %8148 ], [ %8145, %8065 ]
  %8173 = phi float [ %8169, %8148 ], [ %8146, %8065 ]
  %8174 = phi float [ %8170, %8148 ], [ %8147, %8065 ]
  %8175 = fmul fast float %8092, 9.843750e-01
  %8176 = fadd fast float %8175, 7.812500e-03
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8176, float %6038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.ResRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.ResRet.f32 %8177, 2
  %8181 = extractvalue %dx.types.ResRet.f32 %8177, 3
  %8182 = fsub fast float %8180, %8178
  %8183 = fsub fast float %8181, %8179
  %8184 = fmul fast float %8182, %6044
  %8185 = fmul fast float %8183, %6044
  %8186 = fadd fast float %8184, %8178
  %8187 = fadd fast float %8185, %8179
  %8188 = fmul fast float %8186, %5710
  %8189 = fmul fast float %8186, %5711
  %8190 = fmul fast float %8186, %5722
  %8191 = fadd fast float %8188, %8187
  %8192 = fadd fast float %8189, %8187
  %8193 = fadd fast float %8190, %8187
  br i1 %6057, label %8194, label %8217

; <label>:8194                                    ; preds = %8171
  %8195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %8092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.ResRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.ResRet.f32 %8195, 2
  %8199 = fadd fast float %8196, -5.000000e-01
  %8200 = fadd fast float %8197, -5.000000e-01
  %8201 = fadd fast float %8198, -5.000000e-01
  %8202 = fmul fast float %5710, 4.000000e+00
  %8203 = fmul fast float %8202, %8139
  %8204 = fmul fast float %8203, %8199
  %8205 = fmul fast float %5711, 4.000000e+00
  %8206 = fmul fast float %8205, %8140
  %8207 = fmul fast float %8206, %8200
  %8208 = fmul fast float %5722, 4.000000e+00
  %8209 = fmul fast float %8208, %8141
  %8210 = fmul fast float %8209, %8201
  %8211 = fadd fast float %8204, %8191
  %8212 = fadd fast float %8207, %8192
  %8213 = fadd fast float %8210, %8193
  %8214 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8216 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  br label %8217

; <label>:8217                                    ; preds = %8194, %8171
  %8218 = phi float [ %8214, %8194 ], [ %8191, %8171 ]
  %8219 = phi float [ %8215, %8194 ], [ %8192, %8171 ]
  %8220 = phi float [ %8216, %8194 ], [ %8193, %8171 ]
  %8221 = call float @dx.op.binary.f32(i32 35, float %8219, float %8220)  ; FMax(a,b)
  %8222 = call float @dx.op.binary.f32(i32 35, float %8218, float %8221)  ; FMax(a,b)
  %8223 = fsub fast float 1.000000e+00, %8222
  %8224 = call float @dx.op.binary.f32(i32 35, float %8101, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8225 = fdiv fast float %4428, %8224
  %8226 = fmul fast float %6620, %8225
  %8227 = fmul fast float %6622, %8225
  %8228 = fmul fast float %6624, %8225
  %8229 = call float @dx.op.unary.f32(i32 21, float %8226)  ; Exp(value)
  %8230 = call float @dx.op.unary.f32(i32 21, float %8227)  ; Exp(value)
  %8231 = call float @dx.op.unary.f32(i32 21, float %8228)  ; Exp(value)
  %8232 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8233 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8234 = call float @dx.op.unary.f32(i32 7, float %8231)  ; Saturate(value)
  %8235 = select i1 %6617, float %8232, float 0.000000e+00
  %8236 = select i1 %6618, float %8233, float 0.000000e+00
  %8237 = select i1 %6619, float %8234, float 0.000000e+00
  %8238 = fsub fast float -0.000000e+00, %5716
  %8239 = fsub fast float -0.000000e+00, %5717
  %8240 = fsub fast float -0.000000e+00, %5718
  %8241 = call float @dx.op.dot3.f32(i32 55, float %6711, float %6712, float %6713, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8242 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8243 = fmul fast float %8242, 9.843750e-01
  %8244 = fadd fast float %8243, 7.812500e-03
  %8245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8244, float %6038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8246 = extractvalue %dx.types.ResRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.ResRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.ResRet.f32 %8245, 2
  %8249 = extractvalue %dx.types.ResRet.f32 %8245, 3
  %8250 = fsub fast float %8248, %8246
  %8251 = fsub fast float %8249, %8247
  %8252 = fmul fast float %8250, %6044
  %8253 = fmul fast float %8251, %6044
  %8254 = fadd fast float %8252, %8246
  %8255 = fadd fast float %8253, %8247
  %8256 = fmul fast float %8254, %5710
  %8257 = fmul fast float %8254, %5711
  %8258 = fmul fast float %8254, %5722
  %8259 = fadd fast float %8256, %8255
  %8260 = fadd fast float %8257, %8255
  %8261 = fadd fast float %8258, %8255
  br i1 %6057, label %8262, label %8285

; <label>:8262                                    ; preds = %8217
  %8263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %8242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8264 = extractvalue %dx.types.ResRet.f32 %8263, 0
  %8265 = extractvalue %dx.types.ResRet.f32 %8263, 1
  %8266 = extractvalue %dx.types.ResRet.f32 %8263, 2
  %8267 = fadd fast float %8264, -5.000000e-01
  %8268 = fadd fast float %8265, -5.000000e-01
  %8269 = fadd fast float %8266, -5.000000e-01
  %8270 = fmul fast float %5710, 4.000000e+00
  %8271 = fmul fast float %8270, %8139
  %8272 = fmul fast float %8271, %8267
  %8273 = fmul fast float %5711, 4.000000e+00
  %8274 = fmul fast float %8273, %8140
  %8275 = fmul fast float %8274, %8268
  %8276 = fmul fast float %5722, 4.000000e+00
  %8277 = fmul fast float %8276, %8141
  %8278 = fmul fast float %8277, %8269
  %8279 = fadd fast float %8272, %8259
  %8280 = fadd fast float %8275, %8260
  %8281 = fadd fast float %8278, %8261
  %8282 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8283 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8284 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  br label %8285

; <label>:8285                                    ; preds = %8262, %8217
  %8286 = phi float [ %8282, %8262 ], [ %8259, %8217 ]
  %8287 = phi float [ %8283, %8262 ], [ %8260, %8217 ]
  %8288 = phi float [ %8284, %8262 ], [ %8261, %8217 ]
  %8289 = call float @dx.op.binary.f32(i32 35, float %8287, float %8288)  ; FMax(a,b)
  %8290 = call float @dx.op.binary.f32(i32 35, float %8286, float %8289)  ; FMax(a,b)
  %8291 = fsub fast float 1.000000e+00, %8290
  %8292 = fmul fast float %5739, %6684
  %8293 = fadd fast float %6686, %8292
  %8294 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  %8295 = fsub fast float %6711, %5730
  %8296 = fsub fast float %6712, %5731
  %8297 = fsub fast float %6713, %5732
  %8298 = call float @dx.op.dot3.f32(i32 55, float %8295, float %8296, float %8297, float %8295, float %8296, float %8297)  ; Dot3(ax,ay,az,bx,by,bz)
  %8299 = call float @dx.op.unary.f32(i32 25, float %8298)  ; Rsqrt(value)
  %8300 = fmul fast float %8299, %8295
  %8301 = fmul fast float %8299, %8296
  %8302 = fmul fast float %8299, %8297
  %8303 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8240, float %8300, float %8301, float %8302)  ; Dot3(ax,ay,az,bx,by,bz)
  %8304 = fmul fast float %8303, %8303
  %8305 = call float @dx.op.unary.f32(i32 6, float %8242)  ; FAbs(value)
  %8306 = call float @dx.op.binary.f32(i32 35, float %8294, float 0x3F847AE140000000)  ; FMax(a,b)
  %8307 = fmul fast float %8306, %8306
  %8308 = fmul fast float %8307, %8307
  %8309 = fsub fast float 1.000000e+00, %8308
  %8310 = fmul fast float %8103, %8309
  %8311 = fadd fast float %8310, %8308
  %8312 = bitcast float %8311 to i32
  %8313 = ashr i32 %8312, 1
  %8314 = add nsw i32 %8313, 532487669
  %8315 = bitcast i32 %8314 to float
  %8316 = fadd fast float %8315, %5724
  %8317 = fmul fast float %8308, %8304
  %8318 = fsub fast float 1.000000e+00, %8304
  %8319 = fadd fast float %8318, %8317
  %8320 = fmul fast float %8305, %8305
  %8321 = fmul fast float %8320, %8309
  %8322 = fadd fast float %8321, %8308
  %8323 = bitcast float %8322 to i32
  %8324 = ashr i32 %8323, 1
  %8325 = add nsw i32 %8324, 532487669
  %8326 = bitcast i32 %8325 to float
  %8327 = fadd fast float %8326, %8305
  %8328 = fmul fast float %8319, %8319
  %8329 = fmul fast float %8328, %8316
  %8330 = fmul fast float %8329, %8327
  %8331 = fdiv fast float 0x3FF0A00000000000, %8330
  %8332 = fmul fast float %8331, %8308
  %8333 = fmul fast float %8242, %8235
  %8334 = fmul fast float %8242, %8236
  %8335 = fmul fast float %8242, %8237
  %8336 = fmul fast float %8333, %8291
  %8337 = fmul fast float %8336, %8332
  %8338 = fmul fast float %8334, %8291
  %8339 = fmul fast float %8338, %8332
  %8340 = fmul fast float %8335, %8291
  %8341 = fmul fast float %8340, %8332
  %8342 = fmul fast float %8172, %8126
  %8343 = fmul fast float %8173, %8126
  %8344 = fmul fast float %8174, %8126
  %8345 = fsub fast float 1.000000e+00, %8093
  %8346 = bitcast float %8345 to i32
  %8347 = sitofp i32 %8346 to float
  %8348 = fmul fast float %8347, 5.000000e+00
  %8349 = fadd fast float %8348, 0xC1EFBF8940000000
  %8350 = fptosi float %8349 to i32
  %8351 = bitcast i32 %8350 to float
  %8352 = fmul fast float %8351, %5079
  %8353 = fmul fast float %8223, %8352
  %8354 = fmul fast float %8353, %6611
  %8355 = fmul fast float %8353, %6612
  %8356 = fmul fast float %8353, %6613
  %8357 = fadd fast float %8354, %8342
  %8358 = fadd fast float %8355, %8343
  %8359 = fadd fast float %8356, %8344
  %8360 = fmul fast float %8357, %8098
  %8361 = fmul fast float %8358, %8098
  %8362 = fmul fast float %8359, %8098
  %8363 = fmul fast float %8098, %8081
  %8364 = fmul fast float %8363, %8223
  %8365 = fmul fast float %8098, %8082
  %8366 = fmul fast float %8365, %8223
  %8367 = fmul fast float %8098, %8083
  %8368 = fmul fast float %8367, %8223
  %8369 = fadd fast float %8360, %8337
  %8370 = fadd fast float %8361, %8339
  %8371 = fadd fast float %8362, %8341
  %8372 = fmul fast float %8369, %8081
  %8373 = fmul fast float %8370, %8082
  %8374 = fmul fast float %8371, %8083
  %8375 = fadd fast float %8364, %6701
  %8376 = fmul fast float %8375, %5075
  %8377 = fadd fast float %8366, %6703
  %8378 = fmul fast float %8377, %5075
  %8379 = fadd fast float %8368, %6705
  %8380 = fmul fast float %8379, %5075
  %8381 = fadd fast float %8372, %6665
  %8382 = fmul fast float %8381, %5075
  %8383 = fadd fast float %8373, %6668
  %8384 = fmul fast float %8383, %5075
  %8385 = fadd fast float %8374, %6671
  %8386 = fmul fast float %8385, %5075
  br label %8387

; <label>:8387                                    ; preds = %8285, %7999, %6579
  %8388 = phi float [ %6666, %6579 ], [ %6666, %7999 ], [ %8382, %8285 ]
  %8389 = phi float [ %6669, %6579 ], [ %6669, %7999 ], [ %8384, %8285 ]
  %8390 = phi float [ %6672, %6579 ], [ %6672, %7999 ], [ %8386, %8285 ]
  %8391 = phi float [ %6702, %6579 ], [ %6702, %7999 ], [ %8376, %8285 ]
  %8392 = phi float [ %6704, %6579 ], [ %6704, %7999 ], [ %8378, %8285 ]
  %8393 = phi float [ %6706, %6579 ], [ %6706, %7999 ], [ %8380, %8285 ]
  %8394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.i32 %8394, 0
  %8396 = icmp eq i32 %8395, 0
  br i1 %8396, label %9214, label %8397

; <label>:8397                                    ; preds = %8387
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 2
  %8400 = extractvalue %dx.types.CBufRet.f32 %8398, 3
  %8401 = fmul fast float %8399, %110
  %8402 = fmul fast float %8400, %111
  %8403 = fptoui float %8401 to i32
  %8404 = fptoui float %8402 to i32
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 0
  %8407 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8405, 3
  %8409 = fadd fast float %98, -4.000000e+00
  %8410 = call float @dx.op.binary.f32(i32 35, float %8409, float 0.000000e+00)  ; FMax(a,b)
  %8411 = fadd fast float %8410, %8406
  %8412 = fmul fast float %8411, %8407
  %8413 = call float @dx.op.unary.f32(i32 23, float %8412)  ; Log(value)
  %8414 = fmul fast float %8413, %8408
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8417 = fmul fast float %8414, %8416
  %8418 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  %8419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.i32 %8419, 1
  %8421 = add i32 %8420, -1
  %8422 = uitofp i32 %8420 to float
  %8423 = fmul fast float %8422, %8418
  %8424 = fptoui float %8423 to i32
  %8425 = call i32 @dx.op.binary.i32(i32 40, i32 %8424, i32 %8421)  ; UMin(a,b)
  %8426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.i32 %8426, 2
  %8428 = extractvalue %dx.types.CBufRet.i32 %8426, 3
  %8429 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8404, i32 %8427, i32 %8403)  ; UMad(a,b,c)
  %8430 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8425, i32 %8428, i32 %8429)  ; UMad(a,b,c)
  %8431 = add nsw i32 %8395, -1
  %8432 = call i32 @dx.op.binary.i32(i32 37, i32 %8431, i32 0)  ; IMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %8434 = fptoui float %8433 to i32
  %8435 = lshr i32 %8434, 5
  %8436 = call i32 @dx.op.binary.i32(i32 40, i32 %8435, i32 8191)  ; UMin(a,b)
  %8437 = shl i32 %8436, 2
  %8438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8437, i32 undef)  ; BufferLoad(srv,index,wot)
  %8439 = extractvalue %dx.types.ResRet.i32 %8438, 0
  %8440 = lshr i32 %8439, 16
  %8441 = and i32 %8439, 65535
  %8442 = lshr i32 %8439, 21
  %8443 = lshr i32 %8441, 5
  %8444 = call i32 @dx.op.binary.i32(i32 40, i32 %8443, i32 %8432)  ; UMin(a,b)
  %8445 = icmp ugt i32 %8442, %8444
  br i1 %8445, label %9214, label %8446

; <label>:8446                                    ; preds = %8397
  br label %8447

; <label>:8447                                    ; preds = %9204, %8446
  %8448 = phi i32 [ %9211, %9204 ], [ %8442, %8446 ]
  %8449 = phi float [ %9205, %9204 ], [ %8388, %8446 ]
  %8450 = phi float [ %9206, %9204 ], [ %8389, %8446 ]
  %8451 = phi float [ %9207, %9204 ], [ %8390, %8446 ]
  %8452 = phi float [ %9208, %9204 ], [ %8391, %8446 ]
  %8453 = phi float [ %9209, %9204 ], [ %8392, %8446 ]
  %8454 = phi float [ %9210, %9204 ], [ %8393, %8446 ]
  %8455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.i32 %8455, 0
  %8457 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8430, i32 %8456, i32 %8448)  ; UMad(a,b,c)
  %8458 = shl i32 %8457, 2
  %8459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8458, i32 undef)  ; BufferLoad(srv,index,wot)
  %8460 = extractvalue %dx.types.ResRet.i32 %8459, 0
  %8461 = shl i32 %8448, 5
  %8462 = sub nsw i32 %8440, %8461
  %8463 = call i32 @dx.op.binary.i32(i32 37, i32 %8462, i32 0)  ; IMax(a,b)
  %8464 = call i32 @dx.op.binary.i32(i32 38, i32 %8463, i32 31)  ; IMin(a,b)
  %8465 = sub nsw i32 1, %8440
  %8466 = add nsw i32 %8465, %8441
  %8467 = call i32 @dx.op.binary.i32(i32 37, i32 %8466, i32 0)  ; IMax(a,b)
  %8468 = call i32 @dx.op.binary.i32(i32 38, i32 %8467, i32 32)  ; IMin(a,b)
  %8469 = and i32 %8468, 31
  %8470 = shl i32 -1, %8469
  %8471 = xor i32 %8470, -1
  %8472 = and i32 %8464, 31
  %8473 = shl i32 %8471, %8472
  %8474 = icmp eq i32 %8468, 32
  %8475 = select i1 %8474, i32 -1, i32 %8473
  %8476 = and i32 %8475, %8460
  %8477 = icmp eq i32 %8476, 0
  br i1 %8477, label %9204, label %8478

; <label>:8478                                    ; preds = %8447
  br label %8479

; <label>:8479                                    ; preds = %8614, %8478
  %8480 = phi i32 [ %8491, %8614 ], [ %8476, %8478 ]
  %8481 = phi float [ %8615, %8614 ], [ %8449, %8478 ]
  %8482 = phi float [ %8616, %8614 ], [ %8450, %8478 ]
  %8483 = phi float [ %8617, %8614 ], [ %8451, %8478 ]
  %8484 = phi float [ %8618, %8614 ], [ %8452, %8478 ]
  %8485 = phi float [ %8619, %8614 ], [ %8453, %8478 ]
  %8486 = phi float [ %8620, %8614 ], [ %8454, %8478 ]
  %8487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8480)  ; FirstbitLo(value)
  %8488 = add i32 %8487, %8461
  %8489 = and i32 %8487, 31
  %8490 = shl i32 1, %8489
  %8491 = xor i32 %8490, %8480
  %8492 = mul i32 %8488, 112
  %8493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8492, i32 undef)  ; BufferLoad(srv,index,wot)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = or i32 %8492, 12
  %8498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8497, i32 undef)  ; BufferLoad(srv,index,wot)
  %8499 = extractvalue %dx.types.ResRet.f32 %8498, 0
  %8500 = add i32 %8492, 16
  %8501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8500, i32 undef)  ; BufferLoad(srv,index,wot)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.ResRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.ResRet.f32 %8501, 2
  %8505 = add i32 %8492, 28
  %8506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8505, i32 undef)  ; BufferLoad(srv,index,wot)
  %8507 = extractvalue %dx.types.ResRet.i32 %8506, 0
  %8508 = add i32 %8492, 44
  %8509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8508, i32 undef)  ; BufferLoad(srv,index,wot)
  %8510 = extractvalue %dx.types.ResRet.f32 %8509, 0
  %8511 = add i32 %8492, 48
  %8512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8511, i32 undef)  ; BufferLoad(srv,index,wot)
  %8513 = extractvalue %dx.types.ResRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.ResRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.ResRet.f32 %8512, 2
  %8516 = extractvalue %dx.types.ResRet.f32 %8512, 3
  %8517 = add i32 %8492, 64
  %8518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8517, i32 undef)  ; BufferLoad(srv,index,wot)
  %8519 = extractvalue %dx.types.ResRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.ResRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.ResRet.f32 %8518, 2
  %8522 = extractvalue %dx.types.ResRet.f32 %8518, 3
  %8523 = add i32 %8492, 80
  %8524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8523, i32 undef)  ; BufferLoad(srv,index,wot)
  %8525 = extractvalue %dx.types.ResRet.f32 %8524, 1
  %8526 = extractvalue %dx.types.ResRet.f32 %8524, 2
  %8527 = add i32 %8492, 92
  %8528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8527, i32 undef)  ; BufferLoad(srv,index,wot)
  %8529 = extractvalue %dx.types.ResRet.i32 %8528, 0
  %8530 = call float @dx.op.dot3.f32(i32 55, float %8494, float %8495, float %8496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8531 = select i1 %227, float %8525, float %8494
  %8532 = select i1 %227, float %8530, float %8495
  %8533 = select i1 %227, float %8526, float %8496
  %8534 = and i32 %8529, 65535
  %8535 = uitofp i32 %8534 to float
  %8536 = lshr i32 %8529, 16
  %8537 = uitofp i32 %8536 to float
  %8538 = and i32 %8507, 65535
  %8539 = and i32 %8507, 50331648
  %8540 = icmp slt i32 %8507, 0
  %8541 = icmp eq i32 %8539, 33554432
  %8542 = fsub fast float %8513, %165
  %8543 = fsub fast float %8514, %166
  %8544 = fsub fast float %8515, %167
  %8545 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8543, float %8544, float %8542, float %8543, float %8544)  ; Dot3(ax,ay,az,bx,by,bz)
  %8546 = call float @dx.op.unary.f32(i32 24, float %8545)  ; Sqrt(value)
  %8547 = fdiv fast float 1.000000e+00, %8546
  %8548 = fmul fast float %8547, %8542
  %8549 = fmul fast float %8547, %8543
  %8550 = fmul fast float %8547, %8544
  %8551 = fadd fast float %8546, %8499
  %8552 = fdiv fast float 1.000000e+00, %8551
  %8553 = fmul float %8510, %8552
  %8554 = fmul float %8553, %8553
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  br i1 %8541, label %8556, label %8577

; <label>:8556                                    ; preds = %8479
  %8557 = fmul fast float %8521, %8502
  %8558 = fmul fast float %8521, %8503
  %8559 = fmul fast float %8521, %8504
  %8560 = fadd fast float %8542, %8557
  %8561 = fadd fast float %8543, %8558
  %8562 = fadd fast float %8544, %8559
  %8563 = call float @dx.op.dot3.f32(i32 55, float %8560, float %8561, float %8562, float %8560, float %8561, float %8562)  ; Dot3(ax,ay,az,bx,by,bz)
  %8564 = call float @dx.op.unary.f32(i32 25, float %8563)  ; Rsqrt(value)
  %8565 = fmul fast float %8564, %8560
  %8566 = fmul fast float %8564, %8561
  %8567 = fmul fast float %8564, %8562
  %8568 = fsub fast float %165, %8513
  %8569 = fsub fast float %166, %8514
  %8570 = fsub fast float %167, %8515
  %8571 = fsub fast float -0.000000e+00, %8568
  %8572 = fsub fast float -0.000000e+00, %8569
  %8573 = fsub fast float -0.000000e+00, %8570
  %8574 = call float @dx.op.dot3.f32(i32 55, float %8571, float %8572, float %8573, float %8502, float %8503, float %8504)  ; Dot3(ax,ay,az,bx,by,bz)
  %8575 = fcmp fast ogt float %8574, 0.000000e+00
  %8576 = uitofp i1 %8575 to float
  br label %8577

; <label>:8577                                    ; preds = %8556, %8479
  %8578 = phi float [ %8576, %8556 ], [ 1.000000e+00, %8479 ]
  %8579 = phi float [ %8565, %8556 ], [ %8548, %8479 ]
  %8580 = phi float [ %8566, %8556 ], [ %8549, %8479 ]
  %8581 = phi float [ %8567, %8556 ], [ %8550, %8479 ]
  %8582 = call float @dx.op.dot3.f32(i32 55, float %8502, float %8503, float %8504, float %8579, float %8580, float %8581)  ; Dot3(ax,ay,az,bx,by,bz)
  %8583 = fmul fast float %8582, %8582
  %8584 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8585 = fsub fast float 1.000000e+00, %8584
  %8586 = fmul fast float %8585, 5.000000e-01
  %8587 = fcmp fast ogt float %8582, 0.000000e+00
  %8588 = fsub fast float 1.000000e+00, %8586
  %8589 = select i1 %8587, float %8586, float %8588
  %8590 = fmul fast float %8589, %8537
  %8591 = fadd fast float %8590, %8535
  %8592 = fmul fast float %8591, 0x3EF0001000000000
  %8593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8592, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = fmul fast float %8582, %8519
  %8596 = fadd fast float %8595, %8520
  %8597 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8598 = select i1 %8541, float 1.000000e+00, float %8597
  %8599 = select i1 %8541, float %8597, float 1.000000e+00
  %8600 = fmul fast float %8546, %8516
  %8601 = fsub fast float 1.000000e+00, %8600
  %8602 = fmul fast float %8601, %8522
  %8603 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8604 = fmul fast float %8603, %8599
  %8605 = fmul fast float %8604, 2.000000e+00
  %8606 = fsub fast float 3.000000e+00, %8605
  %8607 = fmul fast float %8594, %8578
  %8608 = fmul fast float %8604, %8604
  %8609 = fmul fast float %8608, %8607
  %8610 = fmul fast float %8609, %8606
  %8611 = call float @dx.op.binary.f32(i32 36, float %8610, float %8610)  ; FMin(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8610, float %8611)  ; FMin(a,b)
  %8613 = fcmp fast ogt float %8612, 0.000000e+00
  br i1 %8613, label %8622, label %8614, !dx.controlflow.hints !134

; <label>:8614                                    ; preds = %9157, %8768, %8577
  %8615 = phi float [ %8481, %8768 ], [ %8481, %8577 ], [ %9200, %9157 ]
  %8616 = phi float [ %8482, %8768 ], [ %8482, %8577 ], [ %9201, %9157 ]
  %8617 = phi float [ %8483, %8768 ], [ %8483, %8577 ], [ %9202, %9157 ]
  %8618 = phi float [ %8484, %8768 ], [ %8484, %8577 ], [ %9194, %9157 ]
  %8619 = phi float [ %8485, %8768 ], [ %8485, %8577 ], [ %9195, %9157 ]
  %8620 = phi float [ %8486, %8768 ], [ %8486, %8577 ], [ %9196, %9157 ]
  %8621 = icmp eq i32 %8480, %8490
  br i1 %8621, label %9203, label %8479

; <label>:8622                                    ; preds = %8577
  %8623 = icmp eq i32 %8538, 255
  br i1 %8623, label %8768, label %8624, !dx.controlflow.hints !135

; <label>:8624                                    ; preds = %8622
  %8625 = mul nuw nsw i32 %8538, 176
  %8626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8625, i32 undef)  ; BufferLoad(srv,index,wot)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = extractvalue %dx.types.ResRet.f32 %8626, 3
  %8631 = add nuw nsw i32 %8625, 16
  %8632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8631, i32 undef)  ; BufferLoad(srv,index,wot)
  %8633 = extractvalue %dx.types.ResRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.ResRet.f32 %8632, 1
  %8635 = add nuw nsw i32 %8625, 32
  %8636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8635, i32 undef)  ; BufferLoad(srv,index,wot)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.ResRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.ResRet.f32 %8636, 2
  %8640 = add nuw nsw i32 %8625, 48
  %8641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8640, i32 undef)  ; BufferLoad(srv,index,wot)
  %8642 = extractvalue %dx.types.ResRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.ResRet.f32 %8641, 1
  %8644 = extractvalue %dx.types.ResRet.f32 %8641, 2
  %8645 = extractvalue %dx.types.ResRet.f32 %8641, 3
  %8646 = add nuw nsw i32 %8625, 64
  %8647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8646, i32 undef)  ; BufferLoad(srv,index,wot)
  %8648 = extractvalue %dx.types.ResRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.ResRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.ResRet.f32 %8647, 2
  %8651 = extractvalue %dx.types.ResRet.f32 %8647, 3
  %8652 = add nuw nsw i32 %8625, 80
  %8653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8652, i32 undef)  ; BufferLoad(srv,index,wot)
  %8654 = extractvalue %dx.types.ResRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.ResRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.ResRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.ResRet.f32 %8653, 3
  %8658 = add nuw nsw i32 %8625, 96
  %8659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8658, i32 undef)  ; BufferLoad(srv,index,wot)
  %8660 = extractvalue %dx.types.ResRet.f32 %8659, 0
  %8661 = extractvalue %dx.types.ResRet.f32 %8659, 1
  %8662 = extractvalue %dx.types.ResRet.f32 %8659, 2
  %8663 = extractvalue %dx.types.ResRet.f32 %8659, 3
  %8664 = bitcast float %8634 to i32
  %8665 = fmul fast float %8639, %117
  %8666 = fmul fast float %8639, %118
  %8667 = fmul fast float %8639, %119
  %8668 = fadd fast float %8665, %165
  %8669 = fadd fast float %8666, %166
  %8670 = fadd fast float %8667, %167
  %8671 = fmul fast float %8668, %8642
  %8672 = call float @dx.op.tertiary.f32(i32 46, float %8669, float %8648, float %8671)  ; FMad(a,b,c)
  %8673 = call float @dx.op.tertiary.f32(i32 46, float %8670, float %8654, float %8672)  ; FMad(a,b,c)
  %8674 = fadd fast float %8673, %8660
  %8675 = fmul fast float %8668, %8643
  %8676 = call float @dx.op.tertiary.f32(i32 46, float %8669, float %8649, float %8675)  ; FMad(a,b,c)
  %8677 = call float @dx.op.tertiary.f32(i32 46, float %8670, float %8655, float %8676)  ; FMad(a,b,c)
  %8678 = fadd fast float %8677, %8661
  %8679 = fmul fast float %8668, %8644
  %8680 = call float @dx.op.tertiary.f32(i32 46, float %8669, float %8650, float %8679)  ; FMad(a,b,c)
  %8681 = call float @dx.op.tertiary.f32(i32 46, float %8670, float %8656, float %8680)  ; FMad(a,b,c)
  %8682 = fadd fast float %8681, %8662
  %8683 = fmul fast float %8668, %8645
  %8684 = call float @dx.op.tertiary.f32(i32 46, float %8669, float %8651, float %8683)  ; FMad(a,b,c)
  %8685 = call float @dx.op.tertiary.f32(i32 46, float %8670, float %8657, float %8684)  ; FMad(a,b,c)
  %8686 = fadd fast float %8685, %8663
  %8687 = fdiv fast float %8674, %8686
  %8688 = fdiv fast float %8678, %8686
  %8689 = fdiv fast float %8682, %8686
  %8690 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8689)  ; FMax(a,b)
  %8691 = fmul fast float %238, 0x401921FB60000000
  %8692 = call float @dx.op.unary.f32(i32 13, float %8691)  ; Sin(value)
  %8693 = call float @dx.op.unary.f32(i32 12, float %8691)  ; Cos(value)
  %8694 = fmul fast float %8693, %8638
  %8695 = call float @dx.op.tertiary.f32(i32 46, float %8692, float %8638, float 0.000000e+00)  ; FMad(a,b,c)
  %8696 = fmul fast float %8638, %8692
  %8697 = fsub fast float -0.000000e+00, %8696
  %8698 = call float @dx.op.tertiary.f32(i32 46, float %8693, float %8638, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8699

; <label>:8699                                    ; preds = %8699, %8624
  %8700 = phi float [ 0.000000e+00, %8624 ], [ %8732, %8699 ]
  %8701 = phi float [ 0.000000e+00, %8624 ], [ %8734, %8699 ]
  %8702 = phi i32 [ 0, %8624 ], [ %8735, %8699 ]
  %8703 = mul i32 %8702, 2
  %8704 = add i32 0, %8703
  %8705 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8704
  %8706 = load float, float* %8705, align 4
  %8707 = mul i32 %8702, 2
  %8708 = add i32 1, %8707
  %8709 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8708
  %8710 = load float, float* %8709, align 4
  %8711 = fmul fast float %8694, %8706
  %8712 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8697, float %8711)  ; FMad(a,b,c)
  %8713 = fmul fast float %8706, %8695
  %8714 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8698, float %8713)  ; FMad(a,b,c)
  %8715 = fadd fast float %8712, %8687
  %8716 = fadd fast float %8714, %8688
  %8717 = fmul fast float %8715, %8633
  %8718 = fmul fast float %8716, %8633
  %8719 = call float @dx.op.binary.f32(i32 35, float %8717, float %8629)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 35, float %8718, float %8629)  ; FMax(a,b)
  %8721 = call float @dx.op.binary.f32(i32 36, float %8719, float %8630)  ; FMin(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8720, float %8630)  ; FMin(a,b)
  %8723 = fadd fast float %8721, %8627
  %8724 = fadd fast float %8722, %8628
  %8725 = uitofp i32 %8664 to float
  %8726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8723, float %8724, float %8725, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8727 = extractvalue %dx.types.ResRet.f32 %8726, 0
  %8728 = fsub fast float %8727, %8690
  %8729 = fsub fast float %8728, %8637
  %8730 = fcmp fast ogt float %8729, 0.000000e+00
  %8731 = select i1 %8730, float 1.000000e+00, float 0.000000e+00
  %8732 = fadd fast float %8731, %8700
  %8733 = select i1 %8730, float %8729, float 0.000000e+00
  %8734 = fadd fast float %8733, %8701
  %8735 = add nuw nsw i32 %8702, 1
  %8736 = icmp eq i32 %8735, 8
  br i1 %8736, label %8737, label %8699

; <label>:8737                                    ; preds = %8699
  %8738 = fdiv fast float 1.000000e+00, %8732
  %8739 = fmul fast float %8738, %8734
  %8740 = fdiv fast float 1.000000e+00, %8690
  %8741 = fmul fast float %8739, %8740
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = call float @dx.op.binary.f32(i32 35, float %8742, float 0.000000e+00)  ; FMax(a,b)
  %8744 = fmul fast float %8732, 1.250000e-01
  %8745 = call float @dx.op.unary.f32(i32 7, float %8744)  ; Saturate(value)
  %8746 = fmul fast float %8745, 2.000000e+00
  %8747 = fadd fast float %8746, -1.000000e+00
  %8748 = fcmp fast ogt float %8747, 0.000000e+00
  %8749 = fcmp fast olt float %8747, 0.000000e+00
  %8750 = zext i1 %8748 to i32
  %8751 = zext i1 %8749 to i32
  %8752 = sub nsw i32 %8750, %8751
  %8753 = sitofp i32 %8752 to float
  %8754 = fmul fast float %8753, %8747
  %8755 = fsub fast float 1.000000e+00, %8754
  %8756 = fmul fast float %8755, %8755
  %8757 = fmul fast float %8756, %8755
  %8758 = fsub fast float %8755, %8757
  %8759 = fmul fast float %8758, %8743
  %8760 = fsub fast float 1.000000e+00, %8757
  %8761 = fsub fast float %8760, %8759
  %8762 = fmul fast float %8753, 5.000000e-01
  %8763 = fmul fast float %8762, %8761
  %8764 = fsub fast float -5.000000e-01, %8763
  %8765 = fmul fast float %8764, %8598
  %8766 = fadd fast float %8765, 1.000000e+00
  %8767 = fmul fast float %8766, %8610
  br label %8768

; <label>:8768                                    ; preds = %8737, %8622
  %8769 = phi float [ %8767, %8737 ], [ %8610, %8622 ]
  %8770 = call float @dx.op.binary.f32(i32 36, float %8769, float %8769)  ; FMin(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8769, float %8770)  ; FMin(a,b)
  %8772 = fcmp fast ogt float %8771, 0.000000e+00
  br i1 %8772, label %8773, label %8614, !dx.controlflow.hints !136

; <label>:8773                                    ; preds = %8768
  %8774 = fmul fast float %8769, %8531
  %8775 = fmul fast float %8769, %8532
  %8776 = fmul fast float %8769, %8533
  %8777 = fsub fast float %8515, %5509
  %8778 = fcmp fast ogt float %8777, 0.000000e+00
  %8779 = fsub fast float %167, %5509
  %8780 = fcmp fast ogt float %8779, 0.000000e+00
  %8781 = xor i1 %8780, %8778
  %8782 = fsub fast float %5509, %8515
  %8783 = fmul fast float %8782, 2.000000e+00
  %8784 = fadd fast float %8783, %8515
  %8785 = select i1 %8781, float %8515, float %8784
  %8786 = fsub fast float %8785, %167
  %8787 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8543, float %8786, float %8542, float %8543, float %8786)  ; Dot3(ax,ay,az,bx,by,bz)
  %8788 = call float @dx.op.unary.f32(i32 25, float %8787)  ; Rsqrt(value)
  %8789 = fmul fast float %8788, %8542
  %8790 = fmul fast float %8788, %8543
  %8791 = fmul fast float %8788, %8786
  %8792 = fsub fast float %5509, %167
  %8793 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8792)  ; Dot3(ax,ay,az,bx,by,bz)
  %8794 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8789, float %8790, float %8791)  ; Dot3(ax,ay,az,bx,by,bz)
  %8795 = fdiv fast float 1.000000e+00, %8794
  %8796 = fmul fast float %8795, %8793
  %8797 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8779, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8798 = fcmp fast ogt float %8797, 0.000000e+00
  %8799 = fcmp fast olt float %8797, 0.000000e+00
  %8800 = zext i1 %8798 to i32
  %8801 = zext i1 %8799 to i32
  %8802 = sub nsw i32 %8800, %8801
  %8803 = sitofp i32 %8802 to float
  %8804 = fsub fast float %8785, %5509
  %8805 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8543, float %8804, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8806 = fcmp fast ogt float %8805, 0.000000e+00
  %8807 = fcmp fast olt float %8805, 0.000000e+00
  %8808 = zext i1 %8806 to i32
  %8809 = zext i1 %8807 to i32
  %8810 = sub nsw i32 %8808, %8809
  %8811 = sitofp i32 %8810 to float
  %8812 = fcmp fast une float %8803, %8811
  br i1 %8812, label %8813, label %8823

; <label>:8813                                    ; preds = %8773
  %8814 = fmul fast float %8796, %8791
  %8815 = fmul fast float %8796, %8790
  %8816 = fmul fast float %8796, %8789
  %8817 = fmul fast float %8816, %8816
  %8818 = fmul fast float %8815, %8815
  %8819 = fadd fast float %8817, %8818
  %8820 = fmul fast float %8814, %8814
  %8821 = fadd fast float %8819, %8820
  %8822 = call float @dx.op.unary.f32(i32 24, float %8821)  ; Sqrt(value)
  br label %8835

; <label>:8823                                    ; preds = %8773
  %8824 = icmp slt i32 %8802, 0
  br i1 %8824, label %8825, label %8835

; <label>:8825                                    ; preds = %8823
  %8826 = fsub fast float %165, %8513
  %8827 = fsub fast float %166, %8514
  %8828 = fsub fast float %167, %8785
  %8829 = fmul fast float %8826, %8826
  %8830 = fmul fast float %8827, %8827
  %8831 = fadd fast float %8829, %8830
  %8832 = fmul fast float %8828, %8828
  %8833 = fadd fast float %8831, %8832
  %8834 = call float @dx.op.unary.f32(i32 24, float %8833)  ; Sqrt(value)
  br label %8835

; <label>:8835                                    ; preds = %8825, %8823, %8813
  %8836 = phi float [ %8822, %8813 ], [ %8834, %8825 ], [ 0.000000e+00, %8823 ]
  %8837 = and i1 %8780, %8778
  %8838 = fsub fast float -0.000000e+00, %8836
  %8839 = select i1 %8837, float -0.000000e+00, float %8838
  %8840 = fmul fast float %5510, 0x3FF7154760000000
  %8841 = fmul fast float %8840, %8839
  %8842 = fmul fast float %5511, 0x3FF7154760000000
  %8843 = fmul fast float %8842, %8839
  %8844 = fmul fast float %5512, 0x3FF7154760000000
  %8845 = fmul fast float %8844, %8839
  %8846 = call float @dx.op.unary.f32(i32 21, float %8841)  ; Exp(value)
  %8847 = call float @dx.op.unary.f32(i32 21, float %8843)  ; Exp(value)
  %8848 = call float @dx.op.unary.f32(i32 21, float %8845)  ; Exp(value)
  %8849 = call float @dx.op.unary.f32(i32 7, float %8846)  ; Saturate(value)
  %8850 = call float @dx.op.unary.f32(i32 7, float %8847)  ; Saturate(value)
  %8851 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8852 = fmul fast float %8774, %8849
  %8853 = fmul fast float %8775, %8850
  %8854 = fmul fast float %8776, %8851
  %8855 = fsub fast float %8548, %5709
  %8856 = fsub fast float %8549, %5708
  %8857 = fsub fast float %8550, %5707
  %8858 = call float @dx.op.dot3.f32(i32 55, float %8855, float %8856, float %8857, float %8855, float %8856, float %8857)  ; Dot3(ax,ay,az,bx,by,bz)
  %8859 = call float @dx.op.unary.f32(i32 25, float %8858)  ; Rsqrt(value)
  %8860 = fmul fast float %8859, %8855
  %8861 = fmul fast float %8859, %8856
  %8862 = fmul fast float %8859, %8857
  %8863 = call float @dx.op.dot3.f32(i32 55, float %8548, float %8549, float %8550, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8864 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8860, float %8861, float %8862)  ; Dot3(ax,ay,az,bx,by,bz)
  %8865 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8866 = fmul fast float %8865, %8555
  %8867 = fmul fast float %8865, %8865
  %8868 = fmul fast float %8867, %5749
  %8869 = call float @dx.op.unary.f32(i32 7, float %8868)  ; Saturate(value)
  %8870 = fmul fast float %8866, %8869
  %8871 = bitcast float %8545 to i32
  %8872 = ashr i32 %8871, 1
  %8873 = sub nsw i32 1597463007, %8872
  %8874 = bitcast i32 %8873 to float
  %8875 = fmul fast float %8874, %8542
  %8876 = fmul fast float %8874, %8543
  %8877 = fmul fast float %8874, %8544
  %8878 = fsub fast float %8875, %5709
  %8879 = fsub fast float %8876, %5708
  %8880 = fsub fast float %8877, %5707
  %8881 = call float @dx.op.dot3.f32(i32 55, float %8878, float %8879, float %8880, float %8878, float %8879, float %8880)  ; Dot3(ax,ay,az,bx,by,bz)
  %8882 = call float @dx.op.unary.f32(i32 25, float %8881)  ; Rsqrt(value)
  %8883 = fmul fast float %8878, %8882
  %8884 = fmul fast float %8879, %8882
  %8885 = fmul fast float %8880, %8882
  %8886 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8883, float %8884, float %8885)  ; Dot3(ax,ay,az,bx,by,bz)
  %8887 = fmul fast float %8886, %8886
  %8888 = call float @dx.op.unary.f32(i32 6, float %8863)  ; FAbs(value)
  %8889 = fsub fast float 1.000000e+00, %5742
  %8890 = fmul fast float %5724, %5724
  %8891 = fmul fast float %8890, %8889
  %8892 = fadd fast float %8891, %5742
  %8893 = bitcast float %8892 to i32
  %8894 = ashr i32 %8893, 1
  %8895 = add nsw i32 %8894, 532487669
  %8896 = bitcast i32 %8895 to float
  %8897 = fadd fast float %8896, %5724
  %8898 = fmul fast float %5742, %8887
  %8899 = fsub fast float 1.000000e+00, %8887
  %8900 = fadd fast float %8899, %8898
  %8901 = fmul fast float %8888, %8888
  %8902 = fmul fast float %8901, %8889
  %8903 = fadd fast float %8902, %5742
  %8904 = bitcast float %8903 to i32
  %8905 = ashr i32 %8904, 1
  %8906 = add nsw i32 %8905, 532487669
  %8907 = bitcast i32 %8906 to float
  %8908 = fadd fast float %8907, %8888
  %8909 = fmul fast float %8900, %8900
  %8910 = fmul fast float %8909, %8897
  %8911 = fmul fast float %8910, %8908
  %8912 = fdiv fast float 1.000000e+00, %8911
  %8913 = bitcast float %5742 to i32
  %8914 = sitofp i32 %8913 to float
  %8915 = fmul fast float %8914, 0x3FE7F73180000000
  %8916 = fadd fast float %8915, 0x41AFE27C40000000
  %8917 = fptosi float %8916 to i32
  %8918 = bitcast i32 %8917 to float
  %8919 = fmul fast float %8510, 0x3FD80E9D60000000
  %8920 = fmul fast float %8919, %8874
  %8921 = fadd fast float %8918, %8920
  %8922 = bitcast float %8921 to i32
  %8923 = sub nsw i32 2129859010, %8922
  %8924 = bitcast i32 %8923 to float
  %8925 = fmul fast float %5742, %8912
  %8926 = fmul fast float %8925, %8918
  %8927 = fmul fast float %8926, %8924
  %8928 = fmul fast float %6034, 0x3FF9999980000000
  %8929 = fsub fast float 5.000000e+00, %8928
  %8930 = call float @dx.op.unary.f32(i32 6, float %8864)  ; FAbs(value)
  %8931 = fsub fast float 1.000000e+00, %8930
  %8932 = fmul fast float %6034, 0x41D9660740000000
  %8933 = fadd fast float %8932, 0xC1EFBF8940000000
  %8934 = bitcast float %8931 to i32
  %8935 = sitofp i32 %8934 to float
  %8936 = fmul fast float %8935, %8929
  %8937 = fadd fast float %8933, %8936
  %8938 = fptosi float %8937 to i32
  %8939 = bitcast i32 %8938 to float
  %8940 = fsub fast float 1.000000e+00, %5710
  %8941 = fsub fast float 1.000000e+00, %5711
  %8942 = fsub fast float 1.000000e+00, %5722
  %8943 = fmul fast float %8939, %8940
  %8944 = fmul fast float %8939, %8941
  %8945 = fmul fast float %8939, %8942
  %8946 = fadd fast float %8943, %5710
  %8947 = fadd fast float %8944, %5711
  %8948 = fadd fast float %8945, %5722
  br i1 %6057, label %8949, label %8972

; <label>:8949                                    ; preds = %8835
  %8950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %8930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8951 = extractvalue %dx.types.ResRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.ResRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.ResRet.f32 %8950, 2
  %8954 = fadd fast float %8951, -5.000000e-01
  %8955 = fadd fast float %8952, -5.000000e-01
  %8956 = fadd fast float %8953, -5.000000e-01
  %8957 = fmul fast float %5710, 4.000000e+00
  %8958 = fmul fast float %8957, %8940
  %8959 = fmul fast float %8958, %8954
  %8960 = fmul fast float %5711, 4.000000e+00
  %8961 = fmul fast float %8960, %8941
  %8962 = fmul fast float %8961, %8955
  %8963 = fmul fast float %5722, 4.000000e+00
  %8964 = fmul fast float %8963, %8942
  %8965 = fmul fast float %8964, %8956
  %8966 = fadd fast float %8959, %8946
  %8967 = fadd fast float %8962, %8947
  %8968 = fadd fast float %8965, %8948
  %8969 = call float @dx.op.unary.f32(i32 7, float %8966)  ; Saturate(value)
  %8970 = call float @dx.op.unary.f32(i32 7, float %8967)  ; Saturate(value)
  %8971 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  br label %8972

; <label>:8972                                    ; preds = %8949, %8835
  %8973 = phi float [ %8969, %8949 ], [ %8946, %8835 ]
  %8974 = phi float [ %8970, %8949 ], [ %8947, %8835 ]
  %8975 = phi float [ %8971, %8949 ], [ %8948, %8835 ]
  %8976 = fmul fast float %8863, 9.843750e-01
  %8977 = fadd fast float %8976, 7.812500e-03
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8977, float %6038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = extractvalue %dx.types.ResRet.f32 %8978, 1
  %8981 = extractvalue %dx.types.ResRet.f32 %8978, 2
  %8982 = extractvalue %dx.types.ResRet.f32 %8978, 3
  %8983 = fsub fast float %8981, %8979
  %8984 = fsub fast float %8982, %8980
  %8985 = fmul fast float %8983, %6044
  %8986 = fmul fast float %8984, %6044
  %8987 = fadd fast float %8985, %8979
  %8988 = fadd fast float %8986, %8980
  %8989 = fmul fast float %8987, %5710
  %8990 = fmul fast float %8987, %5711
  %8991 = fmul fast float %8987, %5722
  %8992 = fadd fast float %8989, %8988
  %8993 = fadd fast float %8990, %8988
  %8994 = fadd fast float %8991, %8988
  br i1 %6057, label %8995, label %9018

; <label>:8995                                    ; preds = %8972
  %8996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %8863, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8997 = extractvalue %dx.types.ResRet.f32 %8996, 0
  %8998 = extractvalue %dx.types.ResRet.f32 %8996, 1
  %8999 = extractvalue %dx.types.ResRet.f32 %8996, 2
  %9000 = fadd fast float %8997, -5.000000e-01
  %9001 = fadd fast float %8998, -5.000000e-01
  %9002 = fadd fast float %8999, -5.000000e-01
  %9003 = fmul fast float %5710, 4.000000e+00
  %9004 = fmul fast float %9003, %8940
  %9005 = fmul fast float %9004, %9000
  %9006 = fmul fast float %5711, 4.000000e+00
  %9007 = fmul fast float %9006, %8941
  %9008 = fmul fast float %9007, %9001
  %9009 = fmul fast float %5722, 4.000000e+00
  %9010 = fmul fast float %9009, %8942
  %9011 = fmul fast float %9010, %9002
  %9012 = fadd fast float %9005, %8992
  %9013 = fadd fast float %9008, %8993
  %9014 = fadd fast float %9011, %8994
  %9015 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9016 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9017 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  br label %9018

; <label>:9018                                    ; preds = %8995, %8972
  %9019 = phi float [ %9015, %8995 ], [ %8992, %8972 ]
  %9020 = phi float [ %9016, %8995 ], [ %8993, %8972 ]
  %9021 = phi float [ %9017, %8995 ], [ %8994, %8972 ]
  %9022 = call float @dx.op.binary.f32(i32 35, float %9020, float %9021)  ; FMax(a,b)
  %9023 = call float @dx.op.binary.f32(i32 35, float %9019, float %9022)  ; FMax(a,b)
  %9024 = fsub fast float 1.000000e+00, %9023
  %9025 = call float @dx.op.binary.f32(i32 35, float %8888, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9026 = fdiv fast float %4428, %9025
  %9027 = fmul fast float %6620, %9026
  %9028 = fmul fast float %6622, %9026
  %9029 = fmul fast float %6624, %9026
  %9030 = call float @dx.op.unary.f32(i32 21, float %9027)  ; Exp(value)
  %9031 = call float @dx.op.unary.f32(i32 21, float %9028)  ; Exp(value)
  %9032 = call float @dx.op.unary.f32(i32 21, float %9029)  ; Exp(value)
  %9033 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9034 = call float @dx.op.unary.f32(i32 7, float %9031)  ; Saturate(value)
  %9035 = call float @dx.op.unary.f32(i32 7, float %9032)  ; Saturate(value)
  %9036 = select i1 %6617, float %9033, float 0.000000e+00
  %9037 = select i1 %6618, float %9034, float 0.000000e+00
  %9038 = select i1 %6619, float %9035, float 0.000000e+00
  %9039 = fsub fast float -0.000000e+00, %5716
  %9040 = fsub fast float -0.000000e+00, %5717
  %9041 = fsub fast float -0.000000e+00, %5718
  %9042 = call float @dx.op.dot3.f32(i32 55, float %8548, float %8549, float %8550, float %9039, float %9040, float %9041)  ; Dot3(ax,ay,az,bx,by,bz)
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fmul fast float %9043, %8555
  %9045 = fmul fast float %9043, 9.843750e-01
  %9046 = fadd fast float %9045, 7.812500e-03
  %9047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9046, float %6038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9048 = extractvalue %dx.types.ResRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.ResRet.f32 %9047, 1
  %9050 = extractvalue %dx.types.ResRet.f32 %9047, 2
  %9051 = extractvalue %dx.types.ResRet.f32 %9047, 3
  %9052 = fsub fast float %9050, %9048
  %9053 = fsub fast float %9051, %9049
  %9054 = fmul fast float %9052, %6044
  %9055 = fmul fast float %9053, %6044
  %9056 = fadd fast float %9054, %9048
  %9057 = fadd fast float %9055, %9049
  %9058 = fmul fast float %9056, %5710
  %9059 = fmul fast float %9056, %5711
  %9060 = fmul fast float %9056, %5722
  %9061 = fadd fast float %9058, %9057
  %9062 = fadd fast float %9059, %9057
  %9063 = fadd fast float %9060, %9057
  br i1 %6057, label %9064, label %9087

; <label>:9064                                    ; preds = %9018
  %9065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5078, float %9043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9066 = extractvalue %dx.types.ResRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.ResRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.ResRet.f32 %9065, 2
  %9069 = fadd fast float %9066, -5.000000e-01
  %9070 = fadd fast float %9067, -5.000000e-01
  %9071 = fadd fast float %9068, -5.000000e-01
  %9072 = fmul fast float %5710, 4.000000e+00
  %9073 = fmul fast float %9072, %8940
  %9074 = fmul fast float %9073, %9069
  %9075 = fmul fast float %5711, 4.000000e+00
  %9076 = fmul fast float %9075, %8941
  %9077 = fmul fast float %9076, %9070
  %9078 = fmul fast float %5722, 4.000000e+00
  %9079 = fmul fast float %9078, %8942
  %9080 = fmul fast float %9079, %9071
  %9081 = fadd fast float %9074, %9061
  %9082 = fadd fast float %9077, %9062
  %9083 = fadd fast float %9080, %9063
  %9084 = call float @dx.op.unary.f32(i32 7, float %9081)  ; Saturate(value)
  %9085 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9086 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  br label %9087

; <label>:9087                                    ; preds = %9064, %9018
  %9088 = phi float [ %9084, %9064 ], [ %9061, %9018 ]
  %9089 = phi float [ %9085, %9064 ], [ %9062, %9018 ]
  %9090 = phi float [ %9086, %9064 ], [ %9063, %9018 ]
  %9091 = call float @dx.op.binary.f32(i32 35, float %9089, float %9090)  ; FMax(a,b)
  %9092 = call float @dx.op.binary.f32(i32 35, float %9088, float %9091)  ; FMax(a,b)
  %9093 = fsub fast float 1.000000e+00, %9092
  %9094 = fmul fast float %5739, %6684
  %9095 = fadd fast float %6686, %9094
  %9096 = call float @dx.op.unary.f32(i32 7, float %9095)  ; Saturate(value)
  %9097 = fsub fast float %8875, %5730
  %9098 = fsub fast float %8876, %5731
  %9099 = fsub fast float %8877, %5732
  %9100 = call float @dx.op.dot3.f32(i32 55, float %9097, float %9098, float %9099, float %9097, float %9098, float %9099)  ; Dot3(ax,ay,az,bx,by,bz)
  %9101 = call float @dx.op.unary.f32(i32 25, float %9100)  ; Rsqrt(value)
  %9102 = fmul fast float %9097, %9101
  %9103 = fmul fast float %9098, %9101
  %9104 = fmul fast float %9099, %9101
  %9105 = call float @dx.op.dot3.f32(i32 55, float %9039, float %9040, float %9041, float %9102, float %9103, float %9104)  ; Dot3(ax,ay,az,bx,by,bz)
  %9106 = fmul fast float %9105, %9105
  %9107 = call float @dx.op.unary.f32(i32 6, float %9043)  ; FAbs(value)
  %9108 = call float @dx.op.binary.f32(i32 35, float %9096, float 0x3F847AE140000000)  ; FMax(a,b)
  %9109 = fmul fast float %9108, %9108
  %9110 = fmul fast float %9109, %9109
  %9111 = fsub fast float 1.000000e+00, %9110
  %9112 = fmul fast float %8890, %9111
  %9113 = fadd fast float %9112, %9110
  %9114 = bitcast float %9113 to i32
  %9115 = ashr i32 %9114, 1
  %9116 = add nsw i32 %9115, 532487669
  %9117 = bitcast i32 %9116 to float
  %9118 = fadd fast float %9117, %5724
  %9119 = fmul fast float %9110, %9106
  %9120 = fsub fast float 1.000000e+00, %9106
  %9121 = fadd fast float %9120, %9119
  %9122 = fmul fast float %9107, %9107
  %9123 = fmul fast float %9122, %9111
  %9124 = fadd fast float %9123, %9110
  %9125 = bitcast float %9124 to i32
  %9126 = ashr i32 %9125, 1
  %9127 = add nsw i32 %9126, 532487669
  %9128 = bitcast i32 %9127 to float
  %9129 = fadd fast float %9128, %9107
  %9130 = fmul fast float %9121, %9121
  %9131 = fmul fast float %9130, %9118
  %9132 = fmul fast float %9131, %9129
  %9133 = fdiv fast float 1.000000e+00, %9132
  %9134 = bitcast float %9110 to i32
  %9135 = sitofp i32 %9134 to float
  %9136 = fmul fast float %9135, 0x3FE7F73180000000
  %9137 = fadd fast float %9136, 0x41AFE27C40000000
  %9138 = fptosi float %9137 to i32
  %9139 = bitcast i32 %9138 to float
  %9140 = fadd fast float %9139, %8920
  %9141 = bitcast float %9140 to i32
  %9142 = sub nsw i32 2129859010, %9141
  %9143 = bitcast i32 %9142 to float
  %9144 = fmul fast float %9110, %9133
  %9145 = fmul fast float %9144, %9139
  %9146 = fmul fast float %9145, %9143
  br i1 %8540, label %9147, label %9157

; <label>:9147                                    ; preds = %9087
  %9148 = fmul fast float %9044, %9036
  %9149 = fmul fast float %9044, %9037
  %9150 = fmul fast float %9044, %9038
  %9151 = fmul fast float %9148, %9093
  %9152 = fmul fast float %9151, %9146
  %9153 = fmul fast float %9149, %9093
  %9154 = fmul fast float %9153, %9146
  %9155 = fmul fast float %9150, %9093
  %9156 = fmul fast float %9155, %9146
  br label %9157

; <label>:9157                                    ; preds = %9147, %9087
  %9158 = phi float [ %9152, %9147 ], [ 0.000000e+00, %9087 ]
  %9159 = phi float [ %9154, %9147 ], [ 0.000000e+00, %9087 ]
  %9160 = phi float [ %9156, %9147 ], [ 0.000000e+00, %9087 ]
  %9161 = fmul fast float %8973, %8927
  %9162 = fmul fast float %8974, %8927
  %9163 = fmul fast float %8975, %8927
  %9164 = fsub fast float 1.000000e+00, %8864
  %9165 = bitcast float %9164 to i32
  %9166 = sitofp i32 %9165 to float
  %9167 = fmul fast float %9166, 5.000000e+00
  %9168 = fadd fast float %9167, 0xC1EFBF8940000000
  %9169 = fptosi float %9168 to i32
  %9170 = bitcast i32 %9169 to float
  %9171 = fmul fast float %9170, %5079
  %9172 = fmul fast float %9024, %9171
  %9173 = fmul fast float %9172, %6611
  %9174 = fmul fast float %9172, %6612
  %9175 = fmul fast float %9172, %6613
  %9176 = fadd fast float %9173, %9161
  %9177 = fadd fast float %9174, %9162
  %9178 = fadd fast float %9175, %9163
  %9179 = fmul fast float %9176, %8870
  %9180 = fmul fast float %9177, %8870
  %9181 = fmul fast float %9178, %8870
  %9182 = fadd fast float %9179, %9158
  %9183 = fadd fast float %9180, %9159
  %9184 = fadd fast float %9181, %9160
  %9185 = fmul fast float %8852, %5075
  %9186 = fmul fast float %9185, %8870
  %9187 = fmul fast float %9186, %9024
  %9188 = fmul fast float %8853, %5075
  %9189 = fmul fast float %9188, %8870
  %9190 = fmul fast float %9189, %9024
  %9191 = fmul fast float %8854, %5075
  %9192 = fmul fast float %9191, %8870
  %9193 = fmul fast float %9192, %9024
  %9194 = fadd fast float %9187, %8484
  %9195 = fadd fast float %9190, %8485
  %9196 = fadd fast float %9193, %8486
  %9197 = fmul fast float %9185, %9182
  %9198 = fmul fast float %9188, %9183
  %9199 = fmul fast float %9191, %9184
  %9200 = fadd fast float %9197, %8481
  %9201 = fadd fast float %9198, %8482
  %9202 = fadd fast float %9199, %8483
  br label %8614

; <label>:9203                                    ; preds = %8614
  br label %9204

; <label>:9204                                    ; preds = %9203, %8447
  %9205 = phi float [ %8449, %8447 ], [ %8615, %9203 ]
  %9206 = phi float [ %8450, %8447 ], [ %8616, %9203 ]
  %9207 = phi float [ %8451, %8447 ], [ %8617, %9203 ]
  %9208 = phi float [ %8452, %8447 ], [ %8618, %9203 ]
  %9209 = phi float [ %8453, %8447 ], [ %8619, %9203 ]
  %9210 = phi float [ %8454, %8447 ], [ %8620, %9203 ]
  %9211 = add i32 %8448, 1
  %9212 = icmp ugt i32 %9211, %8444
  br i1 %9212, label %9213, label %8447

; <label>:9213                                    ; preds = %9204
  br label %9214

; <label>:9214                                    ; preds = %9213, %8397, %8387
  %9215 = phi float [ %8388, %8387 ], [ %8388, %8397 ], [ %9205, %9213 ]
  %9216 = phi float [ %8389, %8387 ], [ %8389, %8397 ], [ %9206, %9213 ]
  %9217 = phi float [ %8390, %8387 ], [ %8390, %8397 ], [ %9207, %9213 ]
  %9218 = phi float [ %8391, %8387 ], [ %8391, %8397 ], [ %9208, %9213 ]
  %9219 = phi float [ %8392, %8387 ], [ %8392, %8397 ], [ %9209, %9213 ]
  %9220 = phi float [ %8393, %8387 ], [ %8393, %8397 ], [ %9210, %9213 ]
  %9221 = fmul fast float %5075, %6641
  %9222 = fsub fast float -0.000000e+00, %9221
  %9223 = fmul fast float %5075, %6642
  %9224 = fsub fast float -0.000000e+00, %9223
  %9225 = fmul fast float %5075, %6643
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9228 = extractvalue %dx.types.CBufRet.f32 %9227, 0
  %9229 = fmul fast float %9228, %6647
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9232 = fsub fast float 1.000000e+00, %5083
  %9233 = call float @dx.op.unary.f32(i32 7, float %9232)  ; Saturate(value)
  %9234 = fadd fast float %9220, %5081
  %9235 = fmul fast float %9234, %5083
  %9236 = fmul fast float %9233, %9231
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 3
  %9239 = fmul fast float %9218, %5713
  %9240 = fmul fast float %9219, %5714
  %9241 = fmul fast float %9220, %5715
  %9242 = fcmp fast ogt float %98, %187
  %9243 = and i1 %9242, %5515
  %9244 = or i1 %5521, %9243
  %9245 = icmp eq i32 %5514, 2
  %9246 = fcmp fast ole float %98, %187
  %9247 = and i1 %9246, %9245
  %9248 = or i1 %9247, %9244
  br i1 %9243, label %9249, label %9506

; <label>:9249                                    ; preds = %9214
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9252 = extractvalue %dx.types.CBufRet.f32 %9250, 3
  %9253 = fmul fast float %9251, %110
  %9254 = fmul fast float %9252, %111
  %9255 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9256 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9257 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9255, float %9256, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9258 = extractvalue %dx.types.ResRet.f32 %9257, 0
  %9259 = extractvalue %dx.types.ResRet.f32 %9257, 1
  %9260 = extractvalue %dx.types.ResRet.f32 %9257, 2
  %9261 = extractvalue %dx.types.ResRet.f32 %9257, 3
  %9262 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9255, float %9256, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9263 = extractvalue %dx.types.ResRet.f32 %9262, 0
  %9264 = extractvalue %dx.types.ResRet.f32 %9262, 1
  %9265 = extractvalue %dx.types.ResRet.f32 %9262, 2
  %9266 = extractvalue %dx.types.ResRet.f32 %9262, 3
  %9267 = call float @dx.op.binary.f32(i32 35, float %9259, float %9260)  ; FMax(a,b)
  %9268 = call float @dx.op.binary.f32(i32 35, float %9258, float %9267)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 35, float %9268, float %9261)  ; FMax(a,b)
  %9270 = call float @dx.op.binary.f32(i32 36, float %9264, float %9265)  ; FMin(a,b)
  %9271 = call float @dx.op.binary.f32(i32 36, float %9263, float %9270)  ; FMin(a,b)
  %9272 = call float @dx.op.binary.f32(i32 36, float %9271, float %9266)  ; FMin(a,b)
  %9273 = fmul fast float %9269, 2.550000e+02
  %9274 = fadd fast float %9273, 0x3F70101020000000
  %9275 = fptoui float %9274 to i32
  %9276 = fmul fast float %9272, 2.550000e+02
  %9277 = fadd fast float %9276, 0x3F70101020000000
  %9278 = fptoui float %9277 to i32
  %9279 = icmp ult i32 %9275, %9278
  br i1 %9279, label %9280, label %9448

; <label>:9280                                    ; preds = %9249
  %9281 = fcmp fast ogt float %97, 9.843750e-01
  %9282 = fadd fast float %98, -4.000000e+00
  %9283 = select i1 %9281, float -4.000000e+00, float %9282
  %9284 = call float @dx.op.binary.f32(i32 35, float %9283, float 0.000000e+00)  ; FMax(a,b)
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  %9287 = fadd fast float %9286, %9284
  %9288 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9289 = fmul fast float %9287, %9288
  %9290 = call float @dx.op.unary.f32(i32 23, float %9289)  ; Log(value)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9285, 3
  %9292 = fmul fast float %9291, %9290
  %9293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9294 = extractvalue %dx.types.CBufRet.f32 %9293, 2
  %9295 = fmul fast float %9292, %9294
  %9296 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9297 = uitofp i32 %9275 to float
  %9298 = uitofp i32 %9278 to float
  %9299 = fadd fast float %9297, 5.000000e-01
  %9300 = fadd fast float %9298, 5.000000e-01
  %9301 = fmul fast float %9294, %9299
  %9302 = fmul fast float %9294, %9300
  %9303 = fadd fast float %9301, 0x3F0FFB4800000000
  %9304 = fadd fast float %9302, 0xBF0FFB4800000000
  %9305 = call float @dx.op.binary.f32(i32 35, float %9296, float %9303)  ; FMax(a,b)
  %9306 = call float @dx.op.binary.f32(i32 36, float %9305, float %9304)  ; FMin(a,b)
  %9307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9308 = extractvalue %dx.types.CBufRet.f32 %9307, 1
  %9309 = extractvalue %dx.types.CBufRet.f32 %9307, 2
  %9310 = extractvalue %dx.types.CBufRet.f32 %9307, 0
  %9311 = fmul fast float %9308, %9306
  %9312 = fadd fast float %9310, %9311
  %9313 = fadd fast float %9310, %9309
  %9314 = fsub fast float %9308, %9309
  %9315 = fadd fast float %9314, %9310
  %9316 = call float @dx.op.binary.f32(i32 35, float %9312, float %9313)  ; FMax(a,b)
  %9317 = call float @dx.op.binary.f32(i32 36, float %9316, float %9315)  ; FMin(a,b)
  %9318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9255, float %9256, float %9317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9319 = extractvalue %dx.types.ResRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.ResRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.ResRet.f32 %9318, 2
  %9322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9323 = extractvalue %dx.types.CBufRet.i32 %9322, 0
  %9324 = extractvalue %dx.types.CBufRet.i32 %9322, 1
  %9325 = uitofp i32 %9323 to float
  %9326 = uitofp i32 %9324 to float
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 0
  %9329 = extractvalue %dx.types.CBufRet.f32 %9327, 1
  %9330 = fmul fast float %9325, %9255
  %9331 = fmul fast float %9326, %9256
  %9332 = fadd fast float %9330, -5.000000e-01
  %9333 = fadd fast float %9331, -5.000000e-01
  %9334 = call float @dx.op.unary.f32(i32 22, float %9332)  ; Frc(value)
  %9335 = call float @dx.op.unary.f32(i32 22, float %9333)  ; Frc(value)
  %9336 = fmul fast float %9334, %9334
  %9337 = fmul fast float %9336, %9334
  %9338 = fsub fast float 3.000000e+00, %9334
  %9339 = fmul fast float %9336, %9338
  %9340 = fmul fast float %9334, 3.000000e+00
  %9341 = fmul fast float %9337, 3.000000e+00
  %9342 = fmul fast float %9336, 6.000000e+00
  %9343 = fsub fast float %9341, %9342
  %9344 = fadd fast float %9343, 4.000000e+00
  %9345 = fmul fast float %9344, 0x3FC5555560000000
  %9346 = fmul fast float %9337, -3.000000e+00
  %9347 = fadd fast float %9336, %9334
  %9348 = fmul fast float %9347, 3.000000e+00
  %9349 = fadd fast float %9346, 1.000000e+00
  %9350 = fadd fast float %9349, %9348
  %9351 = fmul fast float %9337, 0x3FC5555560000000
  %9352 = fmul fast float %9335, %9335
  %9353 = fmul fast float %9352, %9335
  %9354 = fsub fast float 3.000000e+00, %9335
  %9355 = fmul fast float %9352, %9354
  %9356 = fmul fast float %9335, 3.000000e+00
  %9357 = fmul fast float %9353, 3.000000e+00
  %9358 = fmul fast float %9352, 6.000000e+00
  %9359 = fsub fast float %9357, %9358
  %9360 = fadd fast float %9359, 4.000000e+00
  %9361 = fmul fast float %9360, 0x3FC5555560000000
  %9362 = fmul fast float %9353, -3.000000e+00
  %9363 = fadd fast float %9352, %9335
  %9364 = fmul fast float %9363, 3.000000e+00
  %9365 = fadd fast float %9362, 1.000000e+00
  %9366 = fadd fast float %9365, %9364
  %9367 = fmul fast float %9353, 0x3FC5555560000000
  %9368 = fadd fast float %9334, 1.000000e+00
  %9369 = fsub fast float 1.000000e+00, %9340
  %9370 = fadd fast float %9369, %9339
  %9371 = fadd fast float %9370, %9344
  %9372 = fmul fast float %9371, 0x3FC5555560000000
  %9373 = fdiv fast float %9345, %9372
  %9374 = fsub fast float %9368, %9373
  %9375 = fsub fast float 1.000000e+00, %9334
  %9376 = fadd fast float %9350, %9337
  %9377 = fmul fast float %9376, 0x3FC5555560000000
  %9378 = fdiv fast float %9351, %9377
  %9379 = fadd fast float %9375, %9378
  %9380 = fadd fast float %9335, 1.000000e+00
  %9381 = fsub fast float 1.000000e+00, %9356
  %9382 = fadd fast float %9381, %9355
  %9383 = fadd fast float %9382, %9360
  %9384 = fmul fast float %9383, 0x3FC5555560000000
  %9385 = fdiv fast float %9361, %9384
  %9386 = fsub fast float %9380, %9385
  %9387 = fsub fast float 1.000000e+00, %9335
  %9388 = fadd fast float %9366, %9353
  %9389 = fmul fast float %9388, 0x3FC5555560000000
  %9390 = fdiv fast float %9367, %9389
  %9391 = fadd fast float %9390, %9387
  %9392 = fmul fast float %9374, %9328
  %9393 = fsub fast float %9255, %9392
  %9394 = fmul fast float %9379, %9328
  %9395 = fadd fast float %9394, %9255
  %9396 = fmul fast float %9391, %9329
  %9397 = fadd fast float %9396, %9256
  %9398 = fmul fast float %9386, %9329
  %9399 = fsub fast float %9256, %9398
  %9400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9393, float %9399, float %9317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9401 = extractvalue %dx.types.ResRet.f32 %9400, 0
  %9402 = extractvalue %dx.types.ResRet.f32 %9400, 1
  %9403 = extractvalue %dx.types.ResRet.f32 %9400, 2
  %9404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9395, float %9399, float %9317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9405 = extractvalue %dx.types.ResRet.f32 %9404, 0
  %9406 = extractvalue %dx.types.ResRet.f32 %9404, 1
  %9407 = extractvalue %dx.types.ResRet.f32 %9404, 2
  %9408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9393, float %9397, float %9317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9409 = extractvalue %dx.types.ResRet.f32 %9408, 0
  %9410 = extractvalue %dx.types.ResRet.f32 %9408, 1
  %9411 = extractvalue %dx.types.ResRet.f32 %9408, 2
  %9412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9395, float %9397, float %9317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9413 = extractvalue %dx.types.ResRet.f32 %9412, 0
  %9414 = extractvalue %dx.types.ResRet.f32 %9412, 1
  %9415 = extractvalue %dx.types.ResRet.f32 %9412, 2
  %9416 = fsub fast float %9409, %9401
  %9417 = fsub fast float %9410, %9402
  %9418 = fsub fast float %9411, %9403
  %9419 = fmul fast float %9416, %9389
  %9420 = fmul fast float %9417, %9389
  %9421 = fmul fast float %9418, %9389
  %9422 = fadd fast float %9419, %9401
  %9423 = fadd fast float %9420, %9402
  %9424 = fadd fast float %9421, %9403
  %9425 = fsub fast float %9413, %9405
  %9426 = fsub fast float %9414, %9406
  %9427 = fsub fast float %9415, %9407
  %9428 = fmul fast float %9425, %9389
  %9429 = fmul fast float %9426, %9389
  %9430 = fmul fast float %9427, %9389
  %9431 = fsub fast float %9405, %9422
  %9432 = fadd fast float %9431, %9428
  %9433 = fsub fast float %9406, %9423
  %9434 = fadd fast float %9433, %9429
  %9435 = fsub fast float %9407, %9424
  %9436 = fadd fast float %9435, %9430
  %9437 = fmul fast float %9432, %9377
  %9438 = fmul fast float %9434, %9377
  %9439 = fmul fast float %9436, %9377
  %9440 = fadd fast float %9437, %9422
  %9441 = fadd fast float %9438, %9423
  %9442 = fadd fast float %9439, %9424
  %9443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9443, 1
  %9445 = fmul fast float %9440, %9444
  %9446 = fmul fast float %9441, %9444
  %9447 = fmul fast float %9442, %9444
  br label %9448

; <label>:9448                                    ; preds = %9280, %9249
  %9449 = phi float [ %9319, %9280 ], [ 1.000000e+00, %9249 ]
  %9450 = phi float [ %9320, %9280 ], [ 1.000000e+00, %9249 ]
  %9451 = phi float [ %9321, %9280 ], [ 1.000000e+00, %9249 ]
  %9452 = phi float [ %9445, %9280 ], [ 0.000000e+00, %9249 ]
  %9453 = phi float [ %9446, %9280 ], [ 0.000000e+00, %9249 ]
  %9454 = phi float [ %9447, %9280 ], [ 0.000000e+00, %9249 ]
  %9455 = fmul fast float %9452, %9222
  %9456 = fmul fast float %9453, %9224
  %9457 = fmul fast float %9454, %9226
  %9458 = call float @dx.op.dot3.f32(i32 55, float %9449, float %9450, float %9451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9459 = call float @dx.op.dot3.f32(i32 55, float %9455, float %9456, float %9457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9460 = select i1 %227, float %9458, float %9449
  %9461 = select i1 %227, float %9458, float %9450
  %9462 = select i1 %227, float 1.000000e+00, float %9451
  %9463 = select i1 %227, float %9459, float %9455
  %9464 = select i1 %227, float 0.000000e+00, float %9456
  %9465 = select i1 %227, float 0.000000e+00, float %9457
  %9466 = fmul fast float %9460, %9239
  %9467 = fmul fast float %9461, %9240
  %9468 = fmul fast float %9462, %9241
  %9469 = fadd fast float %9466, %9463
  %9470 = fadd fast float %9467, %9464
  %9471 = fadd fast float %9465, %9468
  %9472 = fmul fast float %9460, %9215
  %9473 = fmul fast float %9461, %9216
  %9474 = fmul fast float %9462, %9217
  %9475 = fmul fast float %135, %9251
  %9476 = fmul fast float %137, %9252
  %9477 = fsub fast float 1.000000e+00, %9475
  %9478 = fsub fast float 1.000000e+00, %9476
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = fmul fast float %9477, %9480
  %9484 = fmul fast float %9477, %9481
  %9485 = fmul fast float %9477, %9482
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9490 = fmul fast float %9478, %9487
  %9491 = fmul fast float %9478, %9488
  %9492 = fmul fast float %9478, %9489
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 0
  %9495 = extractvalue %dx.types.CBufRet.f32 %9493, 1
  %9496 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9497 = fadd fast float %9490, %9494
  %9498 = fadd fast float %9497, %9483
  %9499 = fadd fast float %9491, %9495
  %9500 = fadd fast float %9499, %9484
  %9501 = fadd fast float %9492, %9496
  %9502 = fadd fast float %9501, %9485
  %9503 = fmul fast float %9498, %187
  %9504 = fmul fast float %9500, %187
  %9505 = fmul fast float %9502, %187
  br label %9506

; <label>:9506                                    ; preds = %9448, %9214
  %9507 = phi float [ %9503, %9448 ], [ %165, %9214 ]
  %9508 = phi float [ %9504, %9448 ], [ %166, %9214 ]
  %9509 = phi float [ %9505, %9448 ], [ %167, %9214 ]
  %9510 = phi float [ %187, %9448 ], [ %98, %9214 ]
  %9511 = phi float [ %9469, %9448 ], [ %9239, %9214 ]
  %9512 = phi float [ %9470, %9448 ], [ %9240, %9214 ]
  %9513 = phi float [ %9471, %9448 ], [ %9241, %9214 ]
  %9514 = phi float [ %9472, %9448 ], [ %9215, %9214 ]
  %9515 = phi float [ %9473, %9448 ], [ %9216, %9214 ]
  %9516 = phi float [ %9474, %9448 ], [ %9217, %9214 ]
  %9517 = phi float [ %9449, %9448 ], [ 1.000000e+00, %9214 ]
  br i1 %9248, label %10672, label %9518

; <label>:9518                                    ; preds = %9506
  %9519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9519, 0
  %9521 = extractvalue %dx.types.CBufRet.f32 %9519, 1
  %9522 = extractvalue %dx.types.CBufRet.f32 %9519, 2
  %9523 = extractvalue %dx.types.CBufRet.f32 %9519, 3
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 0
  %9526 = extractvalue %dx.types.CBufRet.f32 %9524, 1
  %9527 = extractvalue %dx.types.CBufRet.f32 %9524, 2
  %9528 = extractvalue %dx.types.CBufRet.f32 %9524, 3
  %9529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9530 = extractvalue %dx.types.CBufRet.f32 %9529, 0
  %9531 = extractvalue %dx.types.CBufRet.f32 %9529, 1
  %9532 = extractvalue %dx.types.CBufRet.f32 %9529, 2
  %9533 = extractvalue %dx.types.CBufRet.f32 %9529, 3
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 0
  %9536 = extractvalue %dx.types.CBufRet.f32 %9534, 1
  %9537 = extractvalue %dx.types.CBufRet.f32 %9534, 2
  %9538 = extractvalue %dx.types.CBufRet.f32 %9534, 3
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 3
  %9543 = extractvalue %dx.types.CBufRet.f32 %9541, 0
  %9544 = extractvalue %dx.types.CBufRet.f32 %9541, 1
  %9545 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9546 = fcmp fast olt float %9545, -5.000000e-01
  %9547 = call float @dx.op.dot3.f32(i32 55, float %9507, float %9508, float %9509, float %9507, float %9508, float %9509)  ; Dot3(ax,ay,az,bx,by,bz)
  %9548 = call float @dx.op.unary.f32(i32 25, float %9547)  ; Rsqrt(value)
  %9549 = fmul fast float %9548, %9547
  %9550 = fmul fast float %9548, %9507
  %9551 = fmul fast float %9548, %9508
  %9552 = fmul fast float %9548, %9509
  %9553 = fadd fast float %9549, %9523
  %9554 = call float @dx.op.dot3.f32(i32 55, float %9550, float %9551, float %9552, float %9520, float %9521, float %9522)  ; Dot3(ax,ay,az,bx,by,bz)
  %9555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.i32 %9555, 1
  %9557 = and i32 %9556, 1
  %9558 = icmp ne i32 %9557, 0
  %9559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.f32 %9559, 2
  %9561 = fcmp fast ogt float %9560, 0.000000e+00
  %9562 = and i1 %9558, %9561
  br i1 %9562, label %9563, label %9969, !dx.controlflow.hints !137

; <label>:9563                                    ; preds = %9518
  %9564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.f32 %9564, 3
  %9566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9567 = extractvalue %dx.types.CBufRet.f32 %9566, 2
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 2
  %9570 = fsub fast float %9567, %9569
  %9571 = and i32 %9556, 2
  %9572 = extractvalue %dx.types.CBufRet.i32 %9555, 0
  %9573 = call i32 @dx.op.binary.i32(i32 40, i32 %9572, i32 3)  ; UMin(a,b)
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 0
  %9576 = extractvalue %dx.types.CBufRet.f32 %9574, 1
  %9577 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9578 = extractvalue %dx.types.CBufRet.f32 %9568, 1
  %9579 = fsub fast float %9575, %9577
  %9580 = fsub fast float %9576, %9578
  %9581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.f32 %9581, 0
  %9583 = fcmp fast ogt float %9582, 0.000000e+00
  %9584 = fsub fast float -0.000000e+00, %9579
  %9585 = fsub fast float -0.000000e+00, %9580
  %9586 = call float @dx.op.dot2.f32(i32 54, float %9550, float %9551, float %9550, float %9551)  ; Dot2(ax,ay,bx,by)
  %9587 = call float @dx.op.dot2.f32(i32 54, float %9550, float %9551, float %9584, float %9585)  ; Dot2(ax,ay,bx,by)
  %9588 = fmul fast float %9587, 2.000000e+00
  %9589 = call float @dx.op.dot2.f32(i32 54, float %9584, float %9585, float %9584, float %9585)  ; Dot2(ax,ay,bx,by)
  %9590 = fmul fast float %9582, %9582
  %9591 = fsub fast float %9589, %9590
  %9592 = fmul fast float %9588, %9588
  %9593 = fmul fast float %9586, 4.000000e+00
  %9594 = fmul fast float %9593, %9591
  %9595 = fsub fast float %9592, %9594
  %9596 = fcmp fast ogt float %9595, 0.000000e+00
  br i1 %9596, label %9597, label %9612

; <label>:9597                                    ; preds = %9563
  %9598 = fcmp fast ogt float %9588, 0.000000e+00
  %9599 = call float @dx.op.unary.f32(i32 24, float %9595)  ; Sqrt(value)
  %9600 = fsub fast float -0.000000e+00, %9599
  %9601 = select i1 %9598, float %9599, float %9600
  %9602 = fadd fast float %9601, %9588
  %9603 = fmul float %9602, -5.000000e-01
  %9604 = fdiv fast float %9603, %9586
  %9605 = call float @dx.op.binary.f32(i32 35, float %9604, float 0.000000e+00)  ; FMax(a,b)
  %9606 = call float @dx.op.binary.f32(i32 36, float %9549, float %9605)  ; FMin(a,b)
  %9607 = fdiv fast float %9591, %9603
  %9608 = call float @dx.op.binary.f32(i32 35, float %9607, float 0.000000e+00)  ; FMax(a,b)
  %9609 = call float @dx.op.binary.f32(i32 36, float %9549, float %9608)  ; FMin(a,b)
  %9610 = call float @dx.op.binary.f32(i32 36, float %9606, float %9609)  ; FMin(a,b)
  %9611 = call float @dx.op.binary.f32(i32 35, float %9606, float %9609)  ; FMax(a,b)
  br label %9612

; <label>:9612                                    ; preds = %9597, %9563
  %9613 = phi float [ %9611, %9597 ], [ -1.000000e+00, %9563 ]
  %9614 = phi float [ %9610, %9597 ], [ -1.000000e+00, %9563 ]
  %9615 = phi i1 [ true, %9597 ], [ false, %9563 ]
  %9616 = and i1 %9583, %9615
  br i1 %9616, label %9617, label %9619

; <label>:9617                                    ; preds = %9612
  %9618 = fcmp fast oeq float %9614, %9613
  br i1 %9618, label %9922, label %9620

; <label>:9619                                    ; preds = %9612
  br i1 %9583, label %9922, label %9620

; <label>:9620                                    ; preds = %9619, %9617
  %9621 = phi float [ %9549, %9619 ], [ %9613, %9617 ]
  %9622 = phi float [ 0.000000e+00, %9619 ], [ %9614, %9617 ]
  %9623 = icmp ne i32 %9571, 0
  %9624 = fmul fast float %9621, %9552
  %9625 = fadd fast float %9624, %9565
  %9626 = fmul fast float %9625, %9621
  %9627 = select i1 %9623, float 0.000000e+00, float %9626
  %9628 = fcmp fast oeq float %9552, 0.000000e+00
  %9629 = fdiv fast float %9570, %9552
  %9630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9629)  ; FMax(a,b)
  %9631 = select i1 %9628, float %9621, float %9630
  %9632 = call float @dx.op.binary.f32(i32 36, float %9621, float %9631)  ; FMin(a,b)
  %9633 = fcmp fast ogt float %9552, 0.000000e+00
  %9634 = fcmp fast olt float %9570, 0.000000e+00
  br i1 %9633, label %9635, label %9692

; <label>:9635                                    ; preds = %9620
  %9636 = icmp eq i32 %9571, 0
  br i1 %9634, label %9637, label %9681

; <label>:9637                                    ; preds = %9635
  %9638 = select i1 %9636, float %9621, float 0.000000e+00
  %9639 = fsub fast float -0.000000e+00, %9638
  %9640 = call float @dx.op.unary.f32(i32 6, float %9639)  ; FAbs(value)
  %9641 = fmul fast float %9638, %9552
  %9642 = fadd fast float %9641, %9565
  %9643 = fmul fast float %9640, %9642
  %9644 = fsub fast float %9627, %9643
  %9645 = fsub fast float %9621, %9640
  %9646 = select i1 %9636, float %9645, float 0.000000e+00
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 0
  %9649 = extractvalue %dx.types.CBufRet.f32 %9647, 1
  %9650 = extractvalue %dx.types.CBufRet.f32 %9647, 2
  %9651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.f32 %9651, 0
  %9653 = extractvalue %dx.types.CBufRet.f32 %9651, 1
  %9654 = extractvalue %dx.types.CBufRet.f32 %9651, 2
  %9655 = extractvalue %dx.types.CBufRet.f32 %9651, 3
  %9656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.f32 %9656, 3
  %9658 = call float @dx.op.binary.f32(i32 36, float %9644, float %9657)  ; FMin(a,b)
  %9659 = fmul fast float %9655, %9646
  %9660 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9661 = fsub fast float %9652, %9648
  %9662 = fsub fast float %9653, %9649
  %9663 = fsub fast float %9654, %9650
  %9664 = fmul fast float %9660, %9661
  %9665 = fmul fast float %9660, %9662
  %9666 = fmul fast float %9660, %9663
  %9667 = fadd fast float %9664, %9648
  %9668 = fadd fast float %9665, %9649
  %9669 = fadd fast float %9666, %9650
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.CBufRet.f32 %9670, 1
  %9673 = fadd fast float %9672, %9671
  %9674 = call float @dx.op.unary.f32(i32 7, float %9673)  ; Saturate(value)
  %9675 = extractvalue %dx.types.CBufRet.f32 %9670, 2
  %9676 = extractvalue %dx.types.CBufRet.f32 %9670, 3
  %9677 = fadd fast float %9676, %9675
  %9678 = call float @dx.op.unary.f32(i32 7, float %9677)  ; Saturate(value)
  %9679 = fmul fast float %9674, %9658
  %9680 = fmul fast float %9679, %9678
  br label %9922

; <label>:9681                                    ; preds = %9635
  br i1 %9636, label %9682, label %9703

; <label>:9682                                    ; preds = %9681
  %9683 = call float @dx.op.binary.f32(i32 36, float %9632, float %9622)  ; FMin(a,b)
  %9684 = fsub fast float %9632, %9683
  %9685 = fsub fast float %9684, %9621
  %9686 = call float @dx.op.unary.f32(i32 6, float %9685)  ; FAbs(value)
  %9687 = fadd fast float %9684, %9621
  %9688 = fmul fast float %9687, %9552
  %9689 = fadd fast float %9688, %9565
  %9690 = fmul fast float %9689, %9686
  %9691 = fsub fast float %9627, %9690
  br label %9703

; <label>:9692                                    ; preds = %9620
  br i1 %9634, label %9693, label %9703

; <label>:9693                                    ; preds = %9692
  %9694 = call float @dx.op.binary.f32(i32 35, float %9622, float %9632)  ; FMax(a,b)
  %9695 = icmp eq i32 %9571, 0
  %9696 = select i1 %9695, float %9632, float 0.000000e+00
  %9697 = fsub fast float -0.000000e+00, %9696
  %9698 = call float @dx.op.unary.f32(i32 6, float %9697)  ; FAbs(value)
  %9699 = fmul fast float %9696, %9552
  %9700 = fadd fast float %9699, %9565
  %9701 = fmul fast float %9698, %9700
  %9702 = fsub fast float %9627, %9701
  br label %9703

; <label>:9703                                    ; preds = %9693, %9692, %9682, %9681
  %9704 = phi float [ %9622, %9681 ], [ %9622, %9682 ], [ %9694, %9693 ], [ %9622, %9692 ]
  %9705 = phi float [ 0.000000e+00, %9681 ], [ %9686, %9682 ], [ %9698, %9693 ], [ 0.000000e+00, %9692 ]
  %9706 = phi float [ %9627, %9681 ], [ %9691, %9682 ], [ %9702, %9693 ], [ %9627, %9692 ]
  %9707 = phi float [ %9632, %9681 ], [ %9632, %9682 ], [ %9621, %9693 ], [ %9621, %9692 ]
  %9708 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9708, align 4, !tbaa !124, !noalias !138
  %9709 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9709, align 4, !tbaa !124, !noalias !138
  %9710 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9710, align 4, !tbaa !124, !noalias !138
  %9711 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9711, align 4, !tbaa !124, !noalias !138
  %9712 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9712, align 4, !tbaa !124, !noalias !138
  %9713 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9713, align 4, !tbaa !124, !noalias !138
  %9714 = icmp sgt i32 %9573, 0
  br i1 %9714, label %9715, label %9776

; <label>:9715                                    ; preds = %9703
  br label %9716

; <label>:9716                                    ; preds = %9765, %9715
  %9717 = phi i32 [ %9766, %9765 ], [ 0, %9715 ]
  %9718 = phi i32 [ %9767, %9765 ], [ 0, %9715 ]
  %9719 = add nuw i32 %9718, 171
  %9720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9719)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.f32 %9720, 0
  %9722 = extractvalue %dx.types.CBufRet.f32 %9720, 1
  %9723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9724 = extractvalue %dx.types.CBufRet.f32 %9723, 0
  %9725 = extractvalue %dx.types.CBufRet.f32 %9723, 1
  %9726 = fsub fast float %9721, %9724
  %9727 = fsub fast float %9722, %9725
  %9728 = extractvalue %dx.types.CBufRet.f32 %9720, 2
  %9729 = fsub fast float -0.000000e+00, %9726
  %9730 = fsub fast float -0.000000e+00, %9727
  %9731 = call float @dx.op.dot2.f32(i32 54, float %9550, float %9551, float %9729, float %9730)  ; Dot2(ax,ay,bx,by)
  %9732 = fmul fast float %9731, 2.000000e+00
  %9733 = call float @dx.op.dot2.f32(i32 54, float %9729, float %9730, float %9729, float %9730)  ; Dot2(ax,ay,bx,by)
  %9734 = fmul fast float %9728, %9728
  %9735 = fsub fast float %9733, %9734
  %9736 = fmul fast float %9732, %9732
  %9737 = fmul fast float %9593, %9735
  %9738 = fsub fast float %9736, %9737
  %9739 = fcmp fast ogt float %9738, 0.000000e+00
  br i1 %9739, label %9740, label %9755

; <label>:9740                                    ; preds = %9716
  %9741 = fcmp fast ogt float %9732, 0.000000e+00
  %9742 = call float @dx.op.unary.f32(i32 24, float %9738)  ; Sqrt(value)
  %9743 = fsub fast float -0.000000e+00, %9742
  %9744 = select i1 %9741, float %9742, float %9743
  %9745 = fadd fast float %9744, %9732
  %9746 = fmul float %9745, -5.000000e-01
  %9747 = fdiv fast float %9746, %9586
  %9748 = call float @dx.op.binary.f32(i32 35, float %9747, float 0.000000e+00)  ; FMax(a,b)
  %9749 = call float @dx.op.binary.f32(i32 36, float %9621, float %9748)  ; FMin(a,b)
  %9750 = fdiv fast float %9735, %9746
  %9751 = call float @dx.op.binary.f32(i32 35, float %9750, float 0.000000e+00)  ; FMax(a,b)
  %9752 = call float @dx.op.binary.f32(i32 36, float %9621, float %9751)  ; FMin(a,b)
  %9753 = call float @dx.op.binary.f32(i32 36, float %9749, float %9752)  ; FMin(a,b)
  %9754 = call float @dx.op.binary.f32(i32 35, float %9749, float %9752)  ; FMax(a,b)
  br label %9755

; <label>:9755                                    ; preds = %9740, %9716
  %9756 = phi float [ %9754, %9740 ], [ -1.000000e+00, %9716 ]
  %9757 = phi float [ %9753, %9740 ], [ -1.000000e+00, %9716 ]
  %9758 = phi i1 [ true, %9740 ], [ false, %9716 ]
  br i1 %9758, label %9759, label %9765

; <label>:9759                                    ; preds = %9755
  %9760 = call float @dx.op.binary.f32(i32 35, float %9704, float %9757)  ; FMax(a,b)
  %9761 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9718
  store float %9760, float* %9761, align 4, !tbaa !124, !noalias !138
  %9762 = call float @dx.op.binary.f32(i32 35, float %9704, float %9756)  ; FMax(a,b)
  %9763 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9718
  store float %9762, float* %9763, align 4, !tbaa !124, !noalias !138
  %9764 = add nsw i32 %9717, 1
  br label %9765

; <label>:9765                                    ; preds = %9759, %9755
  %9766 = phi i32 [ %9764, %9759 ], [ %9717, %9755 ]
  %9767 = add nuw nsw i32 %9718, 1
  %9768 = icmp eq i32 %9767, %9573
  br i1 %9768, label %9769, label %9716

; <label>:9769                                    ; preds = %9765
  %9770 = load float, float* %9710, align 4, !tbaa !124, !alias.scope !154, !noalias !157
  %9771 = load float, float* %9709, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  %9772 = load float, float* %9708, align 4, !tbaa !124, !alias.scope !162, !noalias !163
  %9773 = load float, float* %9713, align 4, !tbaa !124, !alias.scope !164, !noalias !167
  %9774 = load float, float* %9712, align 4, !tbaa !124, !alias.scope !170, !noalias !171
  %9775 = load float, float* %9711, align 4, !tbaa !124, !alias.scope !172, !noalias !173
  br label %9776

; <label>:9776                                    ; preds = %9769, %9703
  %9777 = phi float [ -1.000000e+00, %9703 ], [ %9775, %9769 ]
  %9778 = phi float [ -1.000000e+00, %9703 ], [ %9774, %9769 ]
  %9779 = phi float [ -1.000000e+00, %9703 ], [ %9773, %9769 ]
  %9780 = phi float [ -1.000000e+00, %9703 ], [ %9772, %9769 ]
  %9781 = phi float [ -1.000000e+00, %9703 ], [ %9771, %9769 ]
  %9782 = phi float [ -1.000000e+00, %9703 ], [ %9770, %9769 ]
  %9783 = phi i32 [ 0, %9703 ], [ %9766, %9769 ]
  %9784 = call float @dx.op.binary.f32(i32 36, float %9781, float %9782)  ; FMin(a,b)
  %9785 = call float @dx.op.binary.f32(i32 36, float %9780, float %9784)  ; FMin(a,b)
  %9786 = call float @dx.op.binary.f32(i32 35, float %9780, float %9781)  ; FMax(a,b)
  %9787 = call float @dx.op.binary.f32(i32 36, float %9786, float %9782)  ; FMin(a,b)
  %9788 = call float @dx.op.binary.f32(i32 36, float %9780, float %9781)  ; FMin(a,b)
  %9789 = call float @dx.op.binary.f32(i32 35, float %9788, float %9787)  ; FMax(a,b)
  %9790 = call float @dx.op.binary.f32(i32 35, float %9781, float %9782)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 35, float %9780, float %9790)  ; FMax(a,b)
  store float %9785, float* %9708, align 4, !tbaa !124, !alias.scope !162, !noalias !163
  store float %9789, float* %9709, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %9791, float* %9710, align 4, !tbaa !124, !alias.scope !154, !noalias !157
  %9792 = call float @dx.op.binary.f32(i32 36, float %9778, float %9779)  ; FMin(a,b)
  %9793 = call float @dx.op.binary.f32(i32 36, float %9777, float %9792)  ; FMin(a,b)
  %9794 = call float @dx.op.binary.f32(i32 35, float %9777, float %9778)  ; FMax(a,b)
  %9795 = call float @dx.op.binary.f32(i32 36, float %9794, float %9779)  ; FMin(a,b)
  %9796 = call float @dx.op.binary.f32(i32 36, float %9777, float %9778)  ; FMin(a,b)
  %9797 = call float @dx.op.binary.f32(i32 35, float %9796, float %9795)  ; FMax(a,b)
  %9798 = call float @dx.op.binary.f32(i32 35, float %9778, float %9779)  ; FMax(a,b)
  %9799 = call float @dx.op.binary.f32(i32 35, float %9777, float %9798)  ; FMax(a,b)
  store float %9793, float* %9711, align 4, !tbaa !124, !alias.scope !172, !noalias !173
  store float %9797, float* %9712, align 4, !tbaa !124, !alias.scope !170, !noalias !171
  store float %9799, float* %9713, align 4, !tbaa !124, !alias.scope !164, !noalias !167
  %9800 = sub nsw i32 3, %9783
  %9801 = icmp sgt i32 %9800, 2
  br i1 %9801, label %9802, label %9840

; <label>:9802                                    ; preds = %9776
  %9803 = icmp eq i32 %9571, 0
  %9804 = fsub fast float %9621, %9705
  %9805 = select i1 %9803, float %9804, float %9705
  %9806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9806, 0
  %9808 = extractvalue %dx.types.CBufRet.f32 %9806, 1
  %9809 = extractvalue %dx.types.CBufRet.f32 %9806, 2
  %9810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.CBufRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.CBufRet.f32 %9810, 2
  %9814 = extractvalue %dx.types.CBufRet.f32 %9810, 3
  %9815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9816 = extractvalue %dx.types.CBufRet.f32 %9815, 3
  %9817 = call float @dx.op.binary.f32(i32 36, float %9706, float %9816)  ; FMin(a,b)
  %9818 = fmul fast float %9814, %9805
  %9819 = call float @dx.op.unary.f32(i32 7, float %9818)  ; Saturate(value)
  %9820 = fsub fast float %9811, %9807
  %9821 = fsub fast float %9812, %9808
  %9822 = fsub fast float %9813, %9809
  %9823 = fmul fast float %9819, %9820
  %9824 = fmul fast float %9819, %9821
  %9825 = fmul fast float %9819, %9822
  %9826 = fadd fast float %9823, %9807
  %9827 = fadd fast float %9824, %9808
  %9828 = fadd fast float %9825, %9809
  %9829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9830 = extractvalue %dx.types.CBufRet.f32 %9829, 0
  %9831 = extractvalue %dx.types.CBufRet.f32 %9829, 1
  %9832 = fadd fast float %9831, %9830
  %9833 = call float @dx.op.unary.f32(i32 7, float %9832)  ; Saturate(value)
  %9834 = extractvalue %dx.types.CBufRet.f32 %9829, 2
  %9835 = extractvalue %dx.types.CBufRet.f32 %9829, 3
  %9836 = fadd fast float %9835, %9834
  %9837 = call float @dx.op.unary.f32(i32 7, float %9836)  ; Saturate(value)
  %9838 = fmul fast float %9833, %9817
  %9839 = fmul fast float %9838, %9837
  br label %9922

; <label>:9840                                    ; preds = %9776
  %9841 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9800
  %9842 = load float, float* %9841, align 4, !tbaa !124, !noalias !138
  %9843 = fcmp fast olt float %9842, %9707
  %9844 = icmp sgt i32 %9783, 0
  %9845 = and i1 %9844, %9843
  br i1 %9845, label %9846, label %9883

; <label>:9846                                    ; preds = %9840
  br label %9847

; <label>:9847                                    ; preds = %9876, %9846
  %9848 = phi float [ %9877, %9876 ], [ %9705, %9846 ]
  %9849 = phi float [ %9878, %9876 ], [ %9706, %9846 ]
  %9850 = phi float [ %9858, %9876 ], [ %9842, %9846 ]
  %9851 = phi i32 [ %9855, %9876 ], [ %9800, %9846 ]
  %9852 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9851
  %9853 = load float, float* %9852, align 4, !tbaa !124, !noalias !138
  %9854 = icmp slt i32 %9851, 2
  %9855 = add nsw i32 %9851, 1
  %9856 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9855
  %9857 = load float, float* %9856, align 4, !tbaa !124, !noalias !138
  %9858 = select i1 %9854, float %9857, float %9621
  %9859 = call float @dx.op.binary.f32(i32 36, float %9858, float %9853)  ; FMin(a,b)
  %9860 = call float @dx.op.binary.f32(i32 36, float %9707, float %9859)  ; FMin(a,b)
  %9861 = icmp eq i32 %9571, 0
  %9862 = fadd fast float %9860, %9850
  %9863 = fmul fast float %9862, %9552
  %9864 = fadd fast float %9863, %9565
  br i1 %9861, label %9870, label %9865

; <label>:9865                                    ; preds = %9847
  %9866 = fsub fast float %9860, %9850
  %9867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9866)  ; FMax(a,b)
  %9868 = fmul fast float %9867, %9864
  %9869 = fadd fast float %9868, %9849
  br label %9876

; <label>:9870                                    ; preds = %9847
  %9871 = fsub fast float %9850, %9860
  %9872 = call float @dx.op.unary.f32(i32 6, float %9871)  ; FAbs(value)
  %9873 = fadd fast float %9872, %9848
  %9874 = fmul fast float %9872, %9864
  %9875 = fsub fast float %9849, %9874
  br label %9876

; <label>:9876                                    ; preds = %9870, %9865
  %9877 = phi float [ %9867, %9865 ], [ %9873, %9870 ]
  %9878 = phi float [ %9869, %9865 ], [ %9875, %9870 ]
  %9879 = fcmp fast olt float %9858, %9707
  %9880 = icmp slt i32 %9855, 3
  %9881 = and i1 %9880, %9879
  br i1 %9881, label %9847, label %9882

; <label>:9882                                    ; preds = %9876
  br label %9883

; <label>:9883                                    ; preds = %9882, %9840
  %9884 = phi float [ %9705, %9840 ], [ %9877, %9882 ]
  %9885 = phi float [ %9706, %9840 ], [ %9878, %9882 ]
  %9886 = fsub fast float %9621, %9884
  %9887 = select i1 %9623, float %9884, float %9886
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 0
  %9890 = extractvalue %dx.types.CBufRet.f32 %9888, 1
  %9891 = extractvalue %dx.types.CBufRet.f32 %9888, 2
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9895 = extractvalue %dx.types.CBufRet.f32 %9892, 2
  %9896 = extractvalue %dx.types.CBufRet.f32 %9892, 3
  %9897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9898 = extractvalue %dx.types.CBufRet.f32 %9897, 3
  %9899 = call float @dx.op.binary.f32(i32 36, float %9885, float %9898)  ; FMin(a,b)
  %9900 = fmul fast float %9896, %9887
  %9901 = call float @dx.op.unary.f32(i32 7, float %9900)  ; Saturate(value)
  %9902 = fsub fast float %9893, %9889
  %9903 = fsub fast float %9894, %9890
  %9904 = fsub fast float %9895, %9891
  %9905 = fmul fast float %9901, %9902
  %9906 = fmul fast float %9901, %9903
  %9907 = fmul fast float %9901, %9904
  %9908 = fadd fast float %9905, %9889
  %9909 = fadd fast float %9906, %9890
  %9910 = fadd fast float %9907, %9891
  %9911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9912 = extractvalue %dx.types.CBufRet.f32 %9911, 0
  %9913 = extractvalue %dx.types.CBufRet.f32 %9911, 1
  %9914 = fadd fast float %9913, %9912
  %9915 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9916 = extractvalue %dx.types.CBufRet.f32 %9911, 2
  %9917 = extractvalue %dx.types.CBufRet.f32 %9911, 3
  %9918 = fadd fast float %9917, %9916
  %9919 = call float @dx.op.unary.f32(i32 7, float %9918)  ; Saturate(value)
  %9920 = fmul fast float %9915, %9899
  %9921 = fmul fast float %9920, %9919
  br label %9922

; <label>:9922                                    ; preds = %9883, %9802, %9637, %9619, %9617
  %9923 = phi float [ %9646, %9637 ], [ %9805, %9802 ], [ %9887, %9883 ], [ 0.000000e+00, %9617 ], [ 0.000000e+00, %9619 ]
  %9924 = phi float [ %9680, %9637 ], [ %9839, %9802 ], [ %9921, %9883 ], [ 0.000000e+00, %9617 ], [ 0.000000e+00, %9619 ]
  %9925 = phi float [ %9667, %9637 ], [ %9826, %9802 ], [ %9908, %9883 ], [ 0.000000e+00, %9617 ], [ 0.000000e+00, %9619 ]
  %9926 = phi float [ %9668, %9637 ], [ %9827, %9802 ], [ %9909, %9883 ], [ 0.000000e+00, %9617 ], [ 0.000000e+00, %9619 ]
  %9927 = phi float [ %9669, %9637 ], [ %9828, %9802 ], [ %9910, %9883 ], [ 0.000000e+00, %9617 ], [ 0.000000e+00, %9619 ]
  %9928 = fmul fast float %9560, %9924
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 2
  %9931 = fsub fast float %9567, %9930
  %9932 = fcmp fast olt float %9928, -2.000000e+01
  %9933 = call float @dx.op.unary.f32(i32 21, float %9928)  ; Exp(value)
  %9934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9935 = extractvalue %dx.types.CBufRet.f32 %9934, 2
  %9936 = extractvalue %dx.types.CBufRet.f32 %9934, 3
  %9937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9938 = extractvalue %dx.types.CBufRet.f32 %9937, 2
  %9939 = fmul fast float %9936, %9931
  %9940 = call float @dx.op.unary.f32(i32 7, float %9939)  ; Saturate(value)
  %9941 = fsub fast float 1.000000e+00, %9940
  %9942 = fmul fast float %9552, 5.000000e-01
  %9943 = fadd fast float %9942, 5.000000e-01
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = fsub fast float 1.000000e+00, %9944
  %9946 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9941)  ; FMax(a,b)
  %9947 = fdiv fast float %9945, %9946
  %9948 = fsub fast float %9931, %9509
  %9949 = call float @dx.op.unary.f32(i32 6, float %9948)  ; FAbs(value)
  %9950 = fmul fast float %9949, %9935
  %9951 = call float @dx.op.unary.f32(i32 7, float %9947)  ; Saturate(value)
  %9952 = fsub fast float 1.000000e+00, %9950
  %9953 = fmul fast float %9952, %9951
  %9954 = fadd fast float %9953, %9950
  %9955 = fmul fast float %9938, %9931
  %9956 = call float @dx.op.unary.f32(i32 7, float %9955)  ; Saturate(value)
  %9957 = fsub fast float 1.000000e+00, %9954
  %9958 = fmul fast float %9957, %9956
  %9959 = fadd fast float %9958, %9954
  %9960 = call float @dx.op.unary.f32(i32 7, float %9959)  ; Saturate(value)
  %9961 = fadd fast float %9933, -1.000000e+00
  %9962 = select i1 %9932, float -1.000000e+00, float %9961
  %9963 = fmul fast float %9960, %9962
  %9964 = fadd fast float %9963, 1.000000e+00
  %9965 = fsub fast float -0.000000e+00, %9963
  %9966 = fmul fast float %9925, %9965
  %9967 = fmul fast float %9926, %9965
  %9968 = fmul fast float %9927, %9965
  br label %9969

; <label>:9969                                    ; preds = %9922, %9518
  %9970 = phi float [ %9923, %9922 ], [ 0.000000e+00, %9518 ]
  %9971 = phi float [ %9964, %9922 ], [ 1.000000e+00, %9518 ]
  %9972 = phi float [ %9966, %9922 ], [ 0.000000e+00, %9518 ]
  %9973 = phi float [ %9967, %9922 ], [ 0.000000e+00, %9518 ]
  %9974 = phi float [ %9968, %9922 ], [ 0.000000e+00, %9518 ]
  %9975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9976 = extractvalue %dx.types.CBufRet.f32 %9975, 1
  %9977 = fsub fast float 1.000000e+00, %9971
  %9978 = fmul fast float %9977, %9553
  %9979 = fmul fast float %9978, %9976
  %9980 = fsub fast float %9553, %9979
  br i1 %9546, label %9981, label %10010, !dx.controlflow.hints !174

; <label>:9981                                    ; preds = %9969
  %9982 = fmul fast float %9554, %9543
  %9983 = fadd fast float %9982, %9544
  %9984 = call float @dx.op.unary.f32(i32 7, float %9983)  ; Saturate(value)
  %9985 = fmul fast float %9525, %9980
  %9986 = fsub fast float -0.000000e+00, %9985
  %9987 = fmul fast float %9526, %9980
  %9988 = fsub fast float -0.000000e+00, %9987
  %9989 = call float @dx.op.unary.f32(i32 21, float %9986)  ; Exp(value)
  %9990 = call float @dx.op.unary.f32(i32 21, float %9988)  ; Exp(value)
  %9991 = call float @dx.op.binary.f32(i32 35, float %9533, float %9989)  ; FMax(a,b)
  %9992 = call float @dx.op.binary.f32(i32 35, float %9533, float %9990)  ; FMax(a,b)
  %9993 = fsub fast float %9992, %9991
  %9994 = fmul fast float %9993, %9984
  %9995 = fadd fast float %9994, %9991
  %9996 = call float @dx.op.unary.f32(i32 7, float %9995)  ; Saturate(value)
  %9997 = fsub fast float %9530, %9535
  %9998 = fsub fast float %9531, %9536
  %9999 = fsub fast float %9532, %9537
  %10000 = fmul fast float %9984, %9997
  %10001 = fmul fast float %9984, %9998
  %10002 = fmul fast float %9984, %9999
  %10003 = fadd fast float %10000, %9535
  %10004 = fadd fast float %10001, %9536
  %10005 = fadd fast float %10002, %9537
  %10006 = fsub fast float 1.000000e+00, %9996
  %10007 = fmul fast float %10006, %10003
  %10008 = fmul fast float %10006, %10004
  %10009 = fmul fast float %10006, %10005
  br label %10069

; <label>:10010                                   ; preds = %9969
  %10011 = fmul fast float %9980, %9542
  %10012 = call float @dx.op.unary.f32(i32 7, float %10011)  ; Saturate(value)
  %10013 = fsub fast float 2.000000e+00, %10012
  %10014 = fmul fast float %10012, 9.921875e-01
  %10015 = fmul fast float %10014, %10013
  %10016 = fadd fast float %10015, 3.906250e-03
  %10017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10016, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10018 = extractvalue %dx.types.ResRet.f32 %10017, 0
  %10019 = fsub fast float %10012, %10018
  %10020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10019)  ; FMax(a,b)
  %10021 = fmul fast float %9528, %9509
  %10022 = call float @dx.op.unary.f32(i32 6, float %10021)  ; FAbs(value)
  %10023 = fcmp fast ogt float %10022, 0x3EB0C6F7A0000000
  br i1 %10023, label %10024, label %10030, !dx.controlflow.hints !175

; <label>:10024                                   ; preds = %10010
  %10025 = fmul fast float %10021, 0xBFF7154760000000
  %10026 = call float @dx.op.unary.f32(i32 21, float %10025)  ; Exp(value)
  %10027 = fsub fast float 1.000000e+00, %10026
  %10028 = fdiv fast float %10027, %10021
  %10029 = fmul fast float %10028, %9538
  br label %10030

; <label>:10030                                   ; preds = %10024, %10010
  %10031 = phi float [ %10029, %10024 ], [ %9538, %10010 ]
  %10032 = fadd fast float %10031, %9540
  %10033 = fmul fast float %10032, %10020
  %10034 = fmul fast float %9525, %10033
  %10035 = fsub fast float -0.000000e+00, %10034
  %10036 = fmul fast float %9526, %10033
  %10037 = fsub fast float -0.000000e+00, %10036
  %10038 = fmul fast float %9527, %10033
  %10039 = fsub fast float -0.000000e+00, %10038
  %10040 = call float @dx.op.unary.f32(i32 21, float %10035)  ; Exp(value)
  %10041 = call float @dx.op.unary.f32(i32 21, float %10037)  ; Exp(value)
  %10042 = call float @dx.op.unary.f32(i32 21, float %10039)  ; Exp(value)
  %10043 = fmul fast float %9554, %9554
  %10044 = fadd fast float %10043, 1.000000e+00
  %10045 = fmul fast float %10044, 0x3FAE8EC8A0000000
  %10046 = fmul fast float %10045, %9535
  %10047 = fmul fast float %10045, %9536
  %10048 = fmul fast float %10045, %9537
  %10049 = fmul fast float %9554, %9533
  %10050 = fsub fast float 1.000000e+00, %10049
  %10051 = fmul fast float %9533, %9533
  %10052 = fsub fast float 1.000000e+00, %10051
  %10053 = fmul fast float %10052, 0x3FB45F3060000000
  %10054 = fmul fast float %10050, %10050
  %10055 = fdiv fast float 1.000000e+00, %10054
  %10056 = fmul fast float %10053, %10055
  %10057 = fmul fast float %10056, %9530
  %10058 = fmul fast float %10056, %9531
  %10059 = fmul fast float %10056, %9532
  %10060 = fadd fast float %10057, %10046
  %10061 = fadd fast float %10058, %10047
  %10062 = fadd fast float %10059, %10048
  %10063 = fsub fast float 1.000000e+00, %10040
  %10064 = fsub fast float 1.000000e+00, %10041
  %10065 = fsub fast float 1.000000e+00, %10042
  %10066 = fmul fast float %10060, %10063
  %10067 = fmul fast float %10061, %10064
  %10068 = fmul fast float %10062, %10065
  br label %10069

; <label>:10069                                   ; preds = %10030, %9981
  %10070 = phi float [ %10007, %9981 ], [ %10066, %10030 ]
  %10071 = phi float [ %10008, %9981 ], [ %10067, %10030 ]
  %10072 = phi float [ %10009, %9981 ], [ %10068, %10030 ]
  %10073 = phi float [ %9996, %9981 ], [ %10040, %10030 ]
  %10074 = phi float [ %9996, %9981 ], [ %10041, %10030 ]
  %10075 = phi float [ %9996, %9981 ], [ %10042, %10030 ]
  br i1 %9562, label %10076, label %10274, !dx.controlflow.hints !176

; <label>:10076                                   ; preds = %10069
  %10077 = extractvalue %dx.types.CBufRet.f32 %9975, 0
  %10078 = fmul fast float %10077, %9977
  %10079 = fsub fast float %9972, %10070
  %10080 = fsub fast float %9973, %10071
  %10081 = fsub fast float %9974, %10072
  %10082 = fmul fast float %10078, %10079
  %10083 = fmul fast float %10078, %10080
  %10084 = fmul fast float %10078, %10081
  %10085 = fadd fast float %10082, %10070
  %10086 = fadd fast float %10083, %10071
  %10087 = fadd fast float %10084, %10072
  %10088 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10073)  ; FMax(a,b)
  %10089 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10074)  ; FMax(a,b)
  %10090 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10075)  ; FMax(a,b)
  %10091 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9971)  ; FMax(a,b)
  %10092 = call float @dx.op.binary.f32(i32 35, float %9970, float %9980)  ; FMax(a,b)
  %10093 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10092)  ; FMax(a,b)
  %10094 = fdiv fast float %9970, %10093
  %10095 = call float @dx.op.unary.f32(i32 7, float %10094)  ; Saturate(value)
  %10096 = fdiv fast float %9980, %10093
  %10097 = call float @dx.op.unary.f32(i32 7, float %10096)  ; Saturate(value)
  %10098 = fcmp fast une float %10091, 1.000000e+00
  br i1 %10098, label %10099, label %10112, !dx.controlflow.hints !177

; <label>:10099                                   ; preds = %10076
  %10100 = call float @dx.op.unary.f32(i32 23, float %10091)  ; Log(value)
  %10101 = fmul fast float %10100, 0x3FE62E4300000000
  %10102 = fmul fast float %9972, %10101
  %10103 = fsub fast float -0.000000e+00, %10102
  %10104 = fmul fast float %9973, %10101
  %10105 = fsub fast float -0.000000e+00, %10104
  %10106 = fmul fast float %9974, %10101
  %10107 = fsub fast float -0.000000e+00, %10106
  %10108 = fsub fast float 1.000000e+00, %10091
  %10109 = fdiv fast float %10103, %10108
  %10110 = fdiv fast float %10105, %10108
  %10111 = fdiv fast float %10107, %10108
  br label %10112

; <label>:10112                                   ; preds = %10099, %10076
  %10113 = phi float [ %10109, %10099 ], [ %9972, %10076 ]
  %10114 = phi float [ %10110, %10099 ], [ %9973, %10076 ]
  %10115 = phi float [ %10111, %10099 ], [ %9974, %10076 ]
  %10116 = phi float [ %10101, %10099 ], [ 0.000000e+00, %10076 ]
  %10117 = fcmp fast une float %10088, 1.000000e+00
  br i1 %10117, label %10118, label %10125, !dx.controlflow.hints !178

; <label>:10118                                   ; preds = %10112
  %10119 = call float @dx.op.unary.f32(i32 23, float %10088)  ; Log(value)
  %10120 = fmul fast float %10119, 0x3FE62E4300000000
  %10121 = fmul fast float %10085, %10120
  %10122 = fsub fast float -0.000000e+00, %10121
  %10123 = fsub fast float 1.000000e+00, %10088
  %10124 = fdiv fast float %10122, %10123
  br label %10125

; <label>:10125                                   ; preds = %10118, %10112
  %10126 = phi float [ %10124, %10118 ], [ %10085, %10112 ]
  %10127 = phi float [ %10120, %10118 ], [ 0.000000e+00, %10112 ]
  %10128 = fcmp fast une float %10089, 1.000000e+00
  br i1 %10128, label %10129, label %10136, !dx.controlflow.hints !178

; <label>:10129                                   ; preds = %10125
  %10130 = call float @dx.op.unary.f32(i32 23, float %10089)  ; Log(value)
  %10131 = fmul fast float %10130, 0x3FE62E4300000000
  %10132 = fmul fast float %10086, %10131
  %10133 = fsub fast float -0.000000e+00, %10132
  %10134 = fsub fast float 1.000000e+00, %10089
  %10135 = fdiv fast float %10133, %10134
  br label %10136

; <label>:10136                                   ; preds = %10129, %10125
  %10137 = phi float [ %10135, %10129 ], [ %10086, %10125 ]
  %10138 = phi float [ %10131, %10129 ], [ 0.000000e+00, %10125 ]
  %10139 = fcmp fast une float %10090, 1.000000e+00
  br i1 %10139, label %10140, label %10147, !dx.controlflow.hints !178

; <label>:10140                                   ; preds = %10136
  %10141 = call float @dx.op.unary.f32(i32 23, float %10090)  ; Log(value)
  %10142 = fmul fast float %10141, 0x3FE62E4300000000
  %10143 = fmul fast float %10087, %10142
  %10144 = fsub fast float -0.000000e+00, %10143
  %10145 = fsub fast float 1.000000e+00, %10090
  %10146 = fdiv fast float %10144, %10145
  br label %10147

; <label>:10147                                   ; preds = %10140, %10136
  %10148 = phi float [ %10146, %10140 ], [ %10087, %10136 ]
  %10149 = phi float [ %10142, %10140 ], [ 0.000000e+00, %10136 ]
  %10150 = fmul fast float %10113, %10097
  %10151 = fmul fast float %10114, %10097
  %10152 = fmul fast float %10115, %10097
  %10153 = fmul fast float %10116, %10097
  %10154 = fmul fast float %10126, %10095
  %10155 = fmul fast float %10137, %10095
  %10156 = fmul fast float %10148, %10095
  %10157 = fmul fast float %10127, %10095
  %10158 = fmul fast float %10138, %10095
  %10159 = fmul fast float %10149, %10095
  %10160 = fadd fast float %10154, %10150
  %10161 = fadd fast float %10155, %10151
  %10162 = fadd fast float %10156, %10152
  %10163 = fadd fast float %10157, %10153
  %10164 = fadd fast float %10158, %10153
  %10165 = fadd fast float %10159, %10153
  %10166 = fcmp fast une float %10163, 0.000000e+00
  br i1 %10166, label %10167, label %10174, !dx.controlflow.hints !179

; <label>:10167                                   ; preds = %10147
  %10168 = fmul fast float %10163, 0x3FF7154760000000
  %10169 = call float @dx.op.unary.f32(i32 21, float %10168)  ; Exp(value)
  %10170 = fsub fast float 1.000000e+00, %10169
  %10171 = fmul fast float %10160, %10170
  %10172 = fsub fast float -0.000000e+00, %10171
  %10173 = fdiv fast float %10172, %10163
  br label %10174

; <label>:10174                                   ; preds = %10167, %10147
  %10175 = phi float [ %10169, %10167 ], [ 1.000000e+00, %10147 ]
  %10176 = phi float [ %10173, %10167 ], [ %10160, %10147 ]
  %10177 = fcmp fast une float %10164, 0.000000e+00
  br i1 %10177, label %10178, label %10185, !dx.controlflow.hints !179

; <label>:10178                                   ; preds = %10174
  %10179 = fmul fast float %10164, 0x3FF7154760000000
  %10180 = call float @dx.op.unary.f32(i32 21, float %10179)  ; Exp(value)
  %10181 = fsub fast float 1.000000e+00, %10180
  %10182 = fmul fast float %10161, %10181
  %10183 = fsub fast float -0.000000e+00, %10182
  %10184 = fdiv fast float %10183, %10164
  br label %10185

; <label>:10185                                   ; preds = %10178, %10174
  %10186 = phi float [ %10180, %10178 ], [ 1.000000e+00, %10174 ]
  %10187 = phi float [ %10184, %10178 ], [ %10161, %10174 ]
  %10188 = fcmp fast une float %10165, 0.000000e+00
  br i1 %10188, label %10189, label %10196, !dx.controlflow.hints !179

; <label>:10189                                   ; preds = %10185
  %10190 = fmul fast float %10165, 0x3FF7154760000000
  %10191 = call float @dx.op.unary.f32(i32 21, float %10190)  ; Exp(value)
  %10192 = fsub fast float 1.000000e+00, %10191
  %10193 = fmul fast float %10162, %10192
  %10194 = fsub fast float -0.000000e+00, %10193
  %10195 = fdiv fast float %10194, %10165
  br label %10196

; <label>:10196                                   ; preds = %10189, %10185
  %10197 = phi float [ %10191, %10189 ], [ 1.000000e+00, %10185 ]
  %10198 = phi float [ %10195, %10189 ], [ %10162, %10185 ]
  %10199 = fcmp fast ogt float %10095, %10097
  br i1 %10199, label %10200, label %10220

; <label>:10200                                   ; preds = %10196
  %10201 = fsub fast float 1.000000e+00, %10097
  %10202 = fmul fast float %10113, %10201
  %10203 = fmul fast float %10114, %10201
  %10204 = fmul fast float %10115, %10201
  %10205 = fmul fast float %10116, %10201
  %10206 = fcmp fast une float %10205, 0.000000e+00
  br i1 %10206, label %10207, label %10258, !dx.controlflow.hints !180

; <label>:10207                                   ; preds = %10200
  %10208 = fmul fast float %10205, 0x3FF7154760000000
  %10209 = call float @dx.op.unary.f32(i32 21, float %10208)  ; Exp(value)
  %10210 = fsub fast float 1.000000e+00, %10209
  %10211 = fmul fast float %10202, %10210
  %10212 = fsub fast float -0.000000e+00, %10211
  %10213 = fmul fast float %10203, %10210
  %10214 = fsub fast float -0.000000e+00, %10213
  %10215 = fmul fast float %10204, %10210
  %10216 = fsub fast float -0.000000e+00, %10215
  %10217 = fdiv fast float %10212, %10205
  %10218 = fdiv fast float %10214, %10205
  %10219 = fdiv fast float %10216, %10205
  br label %10258

; <label>:10220                                   ; preds = %10196
  %10221 = fsub fast float 1.000000e+00, %10095
  %10222 = fmul fast float %10126, %10221
  %10223 = fmul fast float %10137, %10221
  %10224 = fmul fast float %10148, %10221
  %10225 = fmul fast float %10127, %10221
  %10226 = fmul fast float %10138, %10221
  %10227 = fmul fast float %10149, %10221
  %10228 = fcmp fast une float %10225, 0.000000e+00
  br i1 %10228, label %10229, label %10236, !dx.controlflow.hints !179

; <label>:10229                                   ; preds = %10220
  %10230 = fmul fast float %10225, 0x3FF7154760000000
  %10231 = call float @dx.op.unary.f32(i32 21, float %10230)  ; Exp(value)
  %10232 = fsub fast float 1.000000e+00, %10231
  %10233 = fmul fast float %10222, %10232
  %10234 = fsub fast float -0.000000e+00, %10233
  %10235 = fdiv fast float %10234, %10225
  br label %10236

; <label>:10236                                   ; preds = %10229, %10220
  %10237 = phi float [ %10235, %10229 ], [ %10222, %10220 ]
  %10238 = phi float [ %10231, %10229 ], [ 1.000000e+00, %10220 ]
  %10239 = fcmp fast une float %10226, 0.000000e+00
  br i1 %10239, label %10240, label %10247, !dx.controlflow.hints !179

; <label>:10240                                   ; preds = %10236
  %10241 = fmul fast float %10226, 0x3FF7154760000000
  %10242 = call float @dx.op.unary.f32(i32 21, float %10241)  ; Exp(value)
  %10243 = fsub fast float 1.000000e+00, %10242
  %10244 = fmul fast float %10223, %10243
  %10245 = fsub fast float -0.000000e+00, %10244
  %10246 = fdiv fast float %10245, %10226
  br label %10247

; <label>:10247                                   ; preds = %10240, %10236
  %10248 = phi float [ %10246, %10240 ], [ %10223, %10236 ]
  %10249 = phi float [ %10242, %10240 ], [ 1.000000e+00, %10236 ]
  %10250 = fcmp fast une float %10227, 0.000000e+00
  br i1 %10250, label %10251, label %10258, !dx.controlflow.hints !179

; <label>:10251                                   ; preds = %10247
  %10252 = fmul fast float %10227, 0x3FF7154760000000
  %10253 = call float @dx.op.unary.f32(i32 21, float %10252)  ; Exp(value)
  %10254 = fsub fast float 1.000000e+00, %10253
  %10255 = fmul fast float %10224, %10254
  %10256 = fsub fast float -0.000000e+00, %10255
  %10257 = fdiv fast float %10256, %10227
  br label %10258

; <label>:10258                                   ; preds = %10251, %10247, %10207, %10200
  %10259 = phi float [ %10257, %10251 ], [ %10219, %10207 ], [ %10204, %10200 ], [ %10224, %10247 ]
  %10260 = phi float [ %10248, %10251 ], [ %10218, %10207 ], [ %10203, %10200 ], [ %10248, %10247 ]
  %10261 = phi float [ %10237, %10251 ], [ %10217, %10207 ], [ %10202, %10200 ], [ %10237, %10247 ]
  %10262 = phi float [ %10253, %10251 ], [ %10209, %10207 ], [ 1.000000e+00, %10200 ], [ 1.000000e+00, %10247 ]
  %10263 = phi float [ %10249, %10251 ], [ %10209, %10207 ], [ 1.000000e+00, %10200 ], [ %10249, %10247 ]
  %10264 = phi float [ %10238, %10251 ], [ %10209, %10207 ], [ 1.000000e+00, %10200 ], [ %10238, %10247 ]
  %10265 = fmul fast float %10264, %10176
  %10266 = fmul fast float %10263, %10187
  %10267 = fmul fast float %10262, %10198
  %10268 = fadd fast float %10265, %10261
  %10269 = fadd fast float %10266, %10260
  %10270 = fadd fast float %10267, %10259
  %10271 = fmul fast float %10264, %10175
  %10272 = fmul fast float %10263, %10186
  %10273 = fmul fast float %10262, %10197
  br label %10274

; <label>:10274                                   ; preds = %10258, %10069
  %10275 = phi float [ %10273, %10258 ], [ %10075, %10069 ]
  %10276 = phi float [ %10272, %10258 ], [ %10074, %10069 ]
  %10277 = phi float [ %10271, %10258 ], [ %10073, %10069 ]
  %10278 = phi float [ %10270, %10258 ], [ %10072, %10069 ]
  %10279 = phi float [ %10269, %10258 ], [ %10071, %10069 ]
  %10280 = phi float [ %10268, %10258 ], [ %10070, %10069 ]
  %10281 = fmul fast float %10280, %9222
  %10282 = fmul fast float %10279, %9224
  %10283 = fmul fast float %10278, %9226
  %10284 = fmul fast float %10277, %9517
  %10285 = call float @dx.op.dot3.f32(i32 55, float %10277, float %10276, float %10275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10286 = call float @dx.op.dot3.f32(i32 55, float %10281, float %10282, float %10283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10287 = select i1 %227, float %10285, float %10277
  %10288 = select i1 %227, float %10285, float %10276
  %10289 = select i1 %227, float 1.000000e+00, float %10275
  %10290 = select i1 %227, float %10286, float %10281
  %10291 = select i1 %227, float 0.000000e+00, float %10282
  %10292 = select i1 %227, float 0.000000e+00, float %10283
  %10293 = fmul fast float %10287, %9511
  %10294 = fmul fast float %10288, %9512
  %10295 = fmul fast float %10289, %9513
  %10296 = fadd fast float %10293, %10290
  %10297 = fadd fast float %10294, %10291
  %10298 = fadd fast float %10292, %10295
  %10299 = fmul fast float %10287, %9514
  %10300 = fmul fast float %10288, %9515
  %10301 = fmul fast float %10289, %9516
  %10302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10303 = extractvalue %dx.types.CBufRet.i32 %10302, 0
  %10304 = icmp eq i32 %10303, 0
  br i1 %10304, label %10672, label %10305, !dx.controlflow.hints !181

; <label>:10305                                   ; preds = %10274
  %10306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10307 = extractvalue %dx.types.CBufRet.f32 %10306, 2
  %10308 = extractvalue %dx.types.CBufRet.f32 %10306, 3
  %10309 = fmul fast float %10307, %110
  %10310 = fmul fast float %10308, %111
  %10311 = fmul fast float %10309, 2.000000e+00
  %10312 = fmul fast float %10310, 2.000000e+00
  %10313 = fsub fast float 1.000000e+00, %10311
  %10314 = fsub fast float 1.000000e+00, %10312
  %10315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10316 = extractvalue %dx.types.CBufRet.f32 %10315, 0
  %10317 = extractvalue %dx.types.CBufRet.f32 %10315, 1
  %10318 = extractvalue %dx.types.CBufRet.f32 %10315, 2
  %10319 = fmul fast float %10313, %10316
  %10320 = fmul fast float %10313, %10317
  %10321 = fmul fast float %10313, %10318
  %10322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10323 = extractvalue %dx.types.CBufRet.f32 %10322, 0
  %10324 = extractvalue %dx.types.CBufRet.f32 %10322, 1
  %10325 = extractvalue %dx.types.CBufRet.f32 %10322, 2
  %10326 = fmul fast float %10314, %10323
  %10327 = fmul fast float %10314, %10324
  %10328 = fmul fast float %10314, %10325
  %10329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10330 = extractvalue %dx.types.CBufRet.f32 %10329, 0
  %10331 = extractvalue %dx.types.CBufRet.f32 %10329, 1
  %10332 = extractvalue %dx.types.CBufRet.f32 %10329, 2
  %10333 = fadd fast float %10326, %10330
  %10334 = fadd fast float %10333, %10319
  %10335 = fadd fast float %10327, %10331
  %10336 = fadd fast float %10335, %10320
  %10337 = fadd fast float %10328, %10332
  %10338 = fadd fast float %10337, %10321
  %10339 = fmul fast float %10334, %9510
  %10340 = fmul fast float %10336, %9510
  %10341 = fmul fast float %10338, %9510
  %10342 = fmul fast float %10339, %10339
  %10343 = fmul fast float %10340, %10340
  %10344 = fadd fast float %10342, %10343
  %10345 = fmul fast float %10341, %10341
  %10346 = fadd fast float %10344, %10345
  %10347 = call float @dx.op.unary.f32(i32 24, float %10346)  ; Sqrt(value)
  %10348 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %10349 = fsub fast float %10347, %10348
  %10350 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %10351 = fmul fast float %10349, %10350
  %10352 = call float @dx.op.unary.f32(i32 7, float %10351)  ; Saturate(value)
  %10353 = fadd fast float %10352, -5.000000e-01
  %10354 = fmul fast float %10353, 2.000000e+00
  %10355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10356 = extractvalue %dx.types.CBufRet.f32 %10355, 2
  %10357 = call float @dx.op.binary.f32(i32 36, float %10356, float %10354)  ; FMin(a,b)
  %10358 = fsub fast float -0.000000e+00, %10356
  %10359 = fcmp fast ogt float %10357, %10358
  br i1 %10359, label %10360, label %10672, !dx.controlflow.hints !182

; <label>:10360                                   ; preds = %10305
  %10361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10362 = extractvalue %dx.types.CBufRet.f32 %10361, 3
  %10363 = fcmp fast ogt float %10362, 0.000000e+00
  br i1 %10363, label %10364, label %10439, !dx.controlflow.hints !183

; <label>:10364                                   ; preds = %10360
  %10365 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10366 = extractvalue %dx.types.Dimensions %10365, 0
  %10367 = sitofp i32 %10366 to float
  %10368 = extractvalue %dx.types.Dimensions %10365, 1
  %10369 = sitofp i32 %10368 to float
  %10370 = fmul fast float %10309, %10367
  %10371 = fmul fast float %10310, %10369
  %10372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10373 = extractvalue %dx.types.CBufRet.f32 %10372, 1
  %10374 = fsub fast float -0.000000e+00, %10373
  %10375 = fptoui float %10374 to i32
  %10376 = fptoui float %10370 to i32
  %10377 = fptoui float %10371 to i32
  %10378 = and i32 %10375, 31
  %10379 = lshr i32 %10376, %10378
  %10380 = lshr i32 %10377, %10378
  %10381 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10375, i32 %10379, i32 %10380, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10382 = extractvalue %dx.types.ResRet.f32 %10381, 0
  %10383 = fcmp fast olt float %10382, -1.000000e+00
  %10384 = fcmp fast ogt float %10382, -1.000000e+00
  %10385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10386 = extractvalue %dx.types.CBufRet.f32 %10385, 1
  %10387 = select i1 %10384, float %10386, float 1.000000e+00
  %10388 = fadd fast float %10382, 1.000000e+00
  %10389 = fmul fast float %10387, %10388
  %10390 = call float @dx.op.unary.f32(i32 6, float %10389)  ; FAbs(value)
  %10391 = extractvalue %dx.types.CBufRet.f32 %10385, 3
  %10392 = fcmp fast oge float %10390, %10391
  %10393 = select i1 %10392, float 0x4197782600000000, float %10390
  %10394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10395 = extractvalue %dx.types.CBufRet.f32 %10394, 0
  %10396 = extractvalue %dx.types.CBufRet.f32 %10394, 1
  %10397 = extractvalue %dx.types.CBufRet.f32 %10394, 2
  %10398 = select i1 %10383, float %10395, float %10316
  %10399 = select i1 %10383, float %10396, float %10317
  %10400 = select i1 %10383, float %10397, float %10318
  %10401 = fmul fast float %10398, %10313
  %10402 = fmul fast float %10399, %10313
  %10403 = fmul fast float %10400, %10313
  %10404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10405 = extractvalue %dx.types.CBufRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.CBufRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.CBufRet.f32 %10404, 2
  %10408 = select i1 %10383, float %10405, float %10323
  %10409 = select i1 %10383, float %10406, float %10324
  %10410 = select i1 %10383, float %10407, float %10325
  %10411 = fmul fast float %10408, %10314
  %10412 = fmul fast float %10409, %10314
  %10413 = fmul fast float %10410, %10314
  %10414 = fadd fast float %10411, %10401
  %10415 = fadd fast float %10412, %10402
  %10416 = fadd fast float %10413, %10403
  %10417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10418 = extractvalue %dx.types.CBufRet.f32 %10417, 0
  %10419 = extractvalue %dx.types.CBufRet.f32 %10417, 1
  %10420 = extractvalue %dx.types.CBufRet.f32 %10417, 2
  %10421 = select i1 %10383, float %10418, float %10330
  %10422 = select i1 %10383, float %10419, float %10331
  %10423 = select i1 %10383, float %10420, float %10332
  %10424 = fadd fast float %10414, %10421
  %10425 = fadd fast float %10415, %10422
  %10426 = fadd fast float %10416, %10423
  %10427 = fmul fast float %10424, %10393
  %10428 = fmul fast float %10425, %10393
  %10429 = fmul fast float %10426, %10393
  %10430 = fmul fast float %10427, %10427
  %10431 = fmul fast float %10428, %10428
  %10432 = fadd fast float %10430, %10431
  %10433 = fmul fast float %10429, %10429
  %10434 = fadd fast float %10432, %10433
  %10435 = call float @dx.op.unary.f32(i32 24, float %10434)  ; Sqrt(value)
  %10436 = fsub fast float %10435, %10348
  %10437 = fmul fast float %10436, %10350
  %10438 = call float @dx.op.unary.f32(i32 7, float %10437)  ; Saturate(value)
  br label %10439

; <label>:10439                                   ; preds = %10364, %10360
  %10440 = phi float [ %10438, %10364 ], [ 1.000000e+00, %10360 ]
  %10441 = fmul fast float %10357, 5.000000e-01
  %10442 = fadd fast float %10441, 5.000000e-01
  %10443 = call float @dx.op.unary.f32(i32 22, float %10442)  ; Frc(value)
  %10444 = call float @dx.op.unary.f32(i32 27, float %10443)  ; Round_ni(value)
  %10445 = call float @dx.op.unary.f32(i32 22, float %10443)  ; Frc(value)
  %10446 = fmul fast float %10445, 2.000000e+00
  %10447 = fadd fast float %10446, -1.000000e+00
  %10448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10309, float %10310, float %10444, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10449 = extractvalue %dx.types.ResRet.f32 %10448, 0
  %10450 = extractvalue %dx.types.ResRet.f32 %10448, 1
  %10451 = extractvalue %dx.types.ResRet.f32 %10448, 2
  %10452 = extractvalue %dx.types.ResRet.f32 %10448, 3
  %10453 = fadd fast float %10449, -5.000000e-01
  %10454 = fadd fast float %10451, -5.000000e-01
  %10455 = fmul fast float %10453, 0xBFD5555560000000
  %10456 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10454, float %10455)  ; FMad(a,b,c)
  %10457 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10450, float 0.000000e+00)  ; FMad(a,b,c)
  %10458 = fadd fast float %10457, %10452
  %10459 = fmul fast float %10453, -7.500000e-01
  %10460 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10454, float %10459)  ; FMad(a,b,c)
  %10461 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10450, float 0.000000e+00)  ; FMad(a,b,c)
  %10462 = fadd fast float %10461, %10452
  %10463 = call float @dx.op.binary.f32(i32 35, float %10456, float -1.000000e+00)  ; FMax(a,b)
  %10464 = call float @dx.op.binary.f32(i32 35, float %10458, float -1.000000e+00)  ; FMax(a,b)
  %10465 = call float @dx.op.binary.f32(i32 35, float %10460, float -1.000000e+00)  ; FMax(a,b)
  %10466 = call float @dx.op.binary.f32(i32 35, float %10462, float -1.000000e+00)  ; FMax(a,b)
  %10467 = call float @dx.op.binary.f32(i32 36, float %10463, float 1.000000e+00)  ; FMin(a,b)
  %10468 = call float @dx.op.binary.f32(i32 36, float %10464, float 1.000000e+00)  ; FMin(a,b)
  %10469 = call float @dx.op.binary.f32(i32 36, float %10465, float 1.000000e+00)  ; FMin(a,b)
  %10470 = call float @dx.op.binary.f32(i32 36, float %10466, float 1.000000e+00)  ; FMin(a,b)
  %10471 = fcmp fast olt float %10467, 0x3FEFFF8020000000
  br i1 %10471, label %10472, label %10587, !dx.controlflow.hints !184

; <label>:10472                                   ; preds = %10439
  %10473 = extractvalue %dx.types.CBufRet.f32 %10355, 3
  %10474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10475 = extractvalue %dx.types.CBufRet.f32 %10474, 0
  %10476 = extractvalue %dx.types.CBufRet.f32 %10474, 1
  %10477 = extractvalue %dx.types.CBufRet.f32 %10474, 2
  %10478 = extractvalue %dx.types.CBufRet.f32 %10474, 3
  %10479 = fsub fast float %10475, %10467
  %10480 = fsub fast float %10476, %10468
  %10481 = fsub fast float %10477, %10469
  %10482 = fsub fast float %10478, %10470
  %10483 = fmul fast float %10479, %10473
  %10484 = fmul fast float %10480, %10473
  %10485 = fmul fast float %10481, %10473
  %10486 = fmul fast float %10482, %10473
  %10487 = fadd fast float %10483, %10467
  %10488 = fadd fast float %10484, %10468
  %10489 = fsub fast float -0.000000e+00, %10488
  %10490 = fadd fast float %10485, %10469
  %10491 = fadd fast float %10486, %10470
  %10492 = fmul fast float %10487, %10487
  %10493 = fsub fast float %10488, %10492
  %10494 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10493)  ; FMax(a,b)
  %10495 = fdiv fast float 1.000000e+00, %10494
  %10496 = fmul fast float %10488, %10487
  %10497 = fsub fast float %10490, %10496
  %10498 = fsub fast float %10447, %10487
  %10499 = fmul fast float %10447, %10447
  %10500 = fsub fast float %10499, %10488
  %10501 = fmul fast float %10498, %10495
  %10502 = fmul fast float %10501, %10497
  %10503 = fsub fast float %10500, %10502
  %10504 = fmul fast float %10488, %10488
  %10505 = fsub fast float %10491, %10504
  %10506 = fmul fast float %10497, %10497
  %10507 = fmul fast float %10506, %10495
  %10508 = fsub fast float %10505, %10507
  %10509 = fdiv fast float %10503, %10508
  %10510 = fmul fast float %10497, %10509
  %10511 = fsub fast float %10498, %10510
  %10512 = fmul fast float %10511, %10495
  %10513 = fmul fast float %10512, %10487
  %10514 = fsub fast float 1.000000e+00, %10513
  %10515 = fmul fast float %10488, %10509
  %10516 = fsub fast float %10514, %10515
  %10517 = fmul fast float %10512, %10512
  %10518 = fmul fast float %10509, 4.000000e+00
  %10519 = fmul fast float %10518, %10516
  %10520 = fsub fast float %10517, %10519
  %10521 = call float @dx.op.unary.f32(i32 24, float %10520)  ; Sqrt(value)
  %10522 = fcmp fast oge float %10512, 0.000000e+00
  %10523 = fsub fast float -0.000000e+00, %10521
  %10524 = select i1 %10522, float %10523, float %10521
  %10525 = fsub fast float %10524, %10512
  %10526 = fdiv fast float %10525, %10509
  %10527 = fdiv fast float %10516, %10525
  %10528 = fmul fast float %10526, 5.000000e-01
  %10529 = fmul fast float %10527, 2.000000e+00
  %10530 = select i1 %10522, float %10528, float %10529
  %10531 = select i1 %10522, float %10529, float %10528
  %10532 = call float @dx.op.binary.f32(i32 35, float %10530, float %10531)  ; FMax(a,b)
  %10533 = call float @dx.op.binary.f32(i32 36, float %10530, float %10531)  ; FMin(a,b)
  %10534 = fcmp fast ogt float %10447, %10533
  br i1 %10534, label %10535, label %10545

; <label>:10535                                   ; preds = %10472
  %10536 = fsub fast float %10447, %10533
  %10537 = fsub fast float %10532, %10533
  %10538 = fmul fast float %10536, %10537
  %10539 = fmul fast float %10532, %10447
  %10540 = fadd fast float %10532, %10447
  %10541 = fmul fast float %10540, %10487
  %10542 = fadd fast float %10539, %10488
  %10543 = fsub fast float %10542, %10541
  %10544 = fdiv fast float %10543, %10538
  br label %10545

; <label>:10545                                   ; preds = %10535, %10472
  %10546 = phi float [ %10544, %10535 ], [ 0.000000e+00, %10472 ]
  %10547 = fcmp fast ogt float %10447, %10532
  %10548 = fsub fast float %10447, %10532
  br i1 %10547, label %10549, label %10559

; <label>:10549                                   ; preds = %10545
  %10550 = fsub fast float %10532, %10533
  %10551 = fmul fast float %10550, %10548
  %10552 = fmul fast float %10533, %10447
  %10553 = fadd fast float %10533, %10447
  %10554 = fmul fast float %10553, %10487
  %10555 = fsub fast float %10489, %10552
  %10556 = fadd fast float %10555, %10554
  %10557 = fdiv fast float %10556, %10551
  %10558 = fadd fast float %10557, %10546
  br label %10559

; <label>:10559                                   ; preds = %10549, %10545
  %10560 = phi float [ %10558, %10549 ], [ %10546, %10545 ]
  %10561 = fsub fast float %10447, %10533
  %10562 = fmul fast float %10561, %10548
  %10563 = fmul fast float %10533, %10532
  %10564 = fadd fast float %10533, %10532
  %10565 = fmul fast float %10564, %10487
  %10566 = fadd fast float %10563, %10488
  %10567 = fsub fast float %10566, %10565
  %10568 = fdiv fast float %10567, %10562
  %10569 = call float @dx.op.unary.f32(i32 7, float %10560)  ; Saturate(value)
  %10570 = fcmp fast oeq float %9238, 0.000000e+00
  %10571 = extractvalue %dx.types.CBufRet.f32 %10355, 0
  %10572 = fcmp fast oeq float %10571, 0.000000e+00
  %10573 = or i1 %10570, %10572
  %10574 = fmul fast float %10571, 2.000000e+00
  %10575 = fadd fast float %10356, %10357
  %10576 = fdiv fast float %10575, %10574
  %10577 = call float @dx.op.unary.f32(i32 7, float %10576)  ; Saturate(value)
  %10578 = fmul fast float %10577, 2.000000e+00
  %10579 = fsub fast float 3.000000e+00, %10578
  %10580 = fmul fast float %10577, %10577
  %10581 = fmul fast float %10580, %10579
  %10582 = select i1 %10573, float 1.000000e+00, float %10581
  %10583 = fmul fast float %10568, %9238
  %10584 = fadd fast float %10569, %10583
  %10585 = call float @dx.op.unary.f32(i32 7, float %10584)  ; Saturate(value)
  %10586 = fmul fast float %10582, %10585
  br label %10587

; <label>:10587                                   ; preds = %10559, %10439
  %10588 = phi float [ %10586, %10559 ], [ 0.000000e+00, %10439 ]
  %10589 = fsub fast float 1.000000e+00, %10588
  %10590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10309, float %10310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10591 = extractvalue %dx.types.ResRet.f32 %10590, 0
  %10592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10593 = extractvalue %dx.types.CBufRet.i32 %10592, 2
  %10594 = icmp eq i32 %10593, 0
  br i1 %10594, label %10600, label %10595

; <label>:10595                                   ; preds = %10587
  %10596 = call float @dx.op.unary.f32(i32 7, float %10588)  ; Saturate(value)
  %10597 = fadd fast float %10591, -1.000000e+00
  %10598 = fmul fast float %10596, %10597
  %10599 = fadd fast float %10598, 1.000000e+00
  br label %10600

; <label>:10600                                   ; preds = %10595, %10587
  %10601 = phi float [ %10599, %10595 ], [ %10589, %10587 ]
  br i1 %10363, label %10602, label %10620

; <label>:10602                                   ; preds = %10600
  %10603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10604 = extractvalue %dx.types.CBufRet.f32 %10603, 1
  %10605 = fsub fast float %10440, %10604
  %10606 = call float @dx.op.unary.f32(i32 7, float %10605)  ; Saturate(value)
  %10607 = fsub fast float %10440, %10362
  %10608 = call float @dx.op.unary.f32(i32 7, float %10607)  ; Saturate(value)
  %10609 = fsub fast float %10606, %10608
  %10610 = fsub fast float %10442, %10608
  %10611 = fdiv fast float %10610, %10609
  %10612 = call float @dx.op.unary.f32(i32 7, float %10611)  ; Saturate(value)
  %10613 = fmul fast float %10612, 2.000000e+00
  %10614 = fsub fast float 3.000000e+00, %10613
  %10615 = fsub fast float %10591, %10601
  %10616 = fmul fast float %10612, %10612
  %10617 = fmul fast float %10616, %10615
  %10618 = fmul fast float %10617, %10614
  %10619 = fadd fast float %10618, %10601
  br label %10620

; <label>:10620                                   ; preds = %10602, %10600
  %10621 = phi float [ %10619, %10602 ], [ %10601, %10600 ]
  %10622 = call float @dx.op.binary.f32(i32 35, float %10591, float %10621)  ; FMax(a,b)
  %10623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10624 = extractvalue %dx.types.CBufRet.i32 %10623, 2
  %10625 = and i32 %10624, 1
  %10626 = icmp eq i32 %10625, 0
  %10627 = fcmp fast une float %10622, 1.000000e+00
  %10628 = and i1 %10627, %10626
  br i1 %10628, label %10629, label %10648

; <label>:10629                                   ; preds = %10620
  %10630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10309, float %10310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10631 = extractvalue %dx.types.ResRet.f32 %10630, 0
  %10632 = extractvalue %dx.types.ResRet.f32 %10630, 1
  %10633 = extractvalue %dx.types.ResRet.f32 %10630, 2
  %10634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10635 = extractvalue %dx.types.CBufRet.f32 %10634, 1
  %10636 = fmul fast float %10635, %10631
  %10637 = fmul fast float %10635, %10632
  %10638 = fmul fast float %10635, %10633
  %10639 = fcmp fast ogt float %10591, 0x3FEFFF2E40000000
  %10640 = fsub fast float 1.000000e+00, %10622
  %10641 = fsub fast float 1.000000e+00, %10591
  %10642 = fdiv fast float %10640, %10641
  %10643 = call float @dx.op.unary.f32(i32 7, float %10642)  ; Saturate(value)
  %10644 = select i1 %10639, float 0.000000e+00, float %10643
  %10645 = fmul fast float %10636, %10644
  %10646 = fmul fast float %10637, %10644
  %10647 = fmul fast float %10638, %10644
  br label %10648

; <label>:10648                                   ; preds = %10629, %10620
  %10649 = phi float [ 0.000000e+00, %10620 ], [ %10645, %10629 ]
  %10650 = phi float [ 0.000000e+00, %10620 ], [ %10646, %10629 ]
  %10651 = phi float [ 0.000000e+00, %10620 ], [ %10647, %10629 ]
  %10652 = fmul fast float %10649, %9222
  %10653 = fmul fast float %10650, %9224
  %10654 = fmul fast float %10651, %9226
  %10655 = fmul fast float %10622, %10284
  %10656 = call float @dx.op.dot3.f32(i32 55, float %10622, float %10622, float %10622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10657 = call float @dx.op.dot3.f32(i32 55, float %10652, float %10653, float %10654, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10658 = select i1 %227, float %10656, float %10622
  %10659 = select i1 %227, float 1.000000e+00, float %10622
  %10660 = select i1 %227, float %10657, float %10652
  %10661 = select i1 %227, float 0.000000e+00, float %10653
  %10662 = select i1 %227, float 0.000000e+00, float %10654
  %10663 = fmul fast float %10658, %10296
  %10664 = fmul fast float %10658, %10297
  %10665 = fmul fast float %10659, %10298
  %10666 = fadd fast float %10663, %10660
  %10667 = fadd fast float %10664, %10661
  %10668 = fadd fast float %10662, %10665
  %10669 = fmul fast float %10658, %10299
  %10670 = fmul fast float %10658, %10300
  %10671 = fmul fast float %10659, %10301
  br label %10672

; <label>:10672                                   ; preds = %10648, %10305, %10274, %9506
  %10673 = phi float [ %9511, %9506 ], [ %10296, %10274 ], [ %10666, %10648 ], [ %10296, %10305 ]
  %10674 = phi float [ %9512, %9506 ], [ %10297, %10274 ], [ %10667, %10648 ], [ %10297, %10305 ]
  %10675 = phi float [ %9513, %9506 ], [ %10298, %10274 ], [ %10668, %10648 ], [ %10298, %10305 ]
  %10676 = phi float [ %9514, %9506 ], [ %10299, %10274 ], [ %10669, %10648 ], [ %10299, %10305 ]
  %10677 = phi float [ %9515, %9506 ], [ %10300, %10274 ], [ %10670, %10648 ], [ %10300, %10305 ]
  %10678 = phi float [ %9516, %9506 ], [ %10301, %10274 ], [ %10671, %10648 ], [ %10301, %10305 ]
  %10679 = phi float [ %9517, %9506 ], [ %10284, %10274 ], [ %10655, %10648 ], [ %10284, %10305 ]
  %10680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10681 = extractvalue %dx.types.CBufRet.f32 %10680, 2
  %10682 = extractvalue %dx.types.CBufRet.f32 %10680, 3
  %10683 = fmul fast float %10681, %110
  %10684 = fmul fast float %10682, %111
  %10685 = call float @dx.op.unary.f32(i32 7, float %10683)  ; Saturate(value)
  %10686 = call float @dx.op.unary.f32(i32 7, float %10684)  ; Saturate(value)
  %10687 = select i1 %9248, i32 2, i32 0
  %10688 = or i32 %10687, 1
  %10689 = uitofp i32 %10688 to float
  %10690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10685, float %10686, float %10689, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10691 = extractvalue %dx.types.ResRet.f32 %10690, 0
  %10692 = extractvalue %dx.types.ResRet.f32 %10690, 1
  %10693 = extractvalue %dx.types.ResRet.f32 %10690, 2
  %10694 = extractvalue %dx.types.ResRet.f32 %10690, 3
  %10695 = add nuw nsw i32 %10687, 2
  %10696 = uitofp i32 %10695 to float
  %10697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10685, float %10686, float %10696, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10698 = extractvalue %dx.types.ResRet.f32 %10697, 0
  %10699 = extractvalue %dx.types.ResRet.f32 %10697, 1
  %10700 = extractvalue %dx.types.ResRet.f32 %10697, 2
  %10701 = extractvalue %dx.types.ResRet.f32 %10697, 3
  %10702 = call float @dx.op.binary.f32(i32 35, float %10692, float %10693)  ; FMax(a,b)
  %10703 = call float @dx.op.binary.f32(i32 35, float %10691, float %10702)  ; FMax(a,b)
  %10704 = call float @dx.op.binary.f32(i32 35, float %10703, float %10694)  ; FMax(a,b)
  %10705 = call float @dx.op.binary.f32(i32 36, float %10699, float %10700)  ; FMin(a,b)
  %10706 = call float @dx.op.binary.f32(i32 36, float %10698, float %10705)  ; FMin(a,b)
  %10707 = call float @dx.op.binary.f32(i32 36, float %10706, float %10701)  ; FMin(a,b)
  %10708 = fmul fast float %10704, 2.550000e+02
  %10709 = fadd fast float %10708, 0x3F70101020000000
  %10710 = fptoui float %10709 to i32
  %10711 = fmul fast float %10707, 2.550000e+02
  %10712 = fadd fast float %10711, 0x3F70101020000000
  %10713 = fptoui float %10712 to i32
  %10714 = icmp ult i32 %10710, %10713
  br i1 %10714, label %10715, label %10884

; <label>:10715                                   ; preds = %10672
  %10716 = fcmp fast ogt float %97, 9.843750e-01
  %10717 = fadd fast float %9510, -4.000000e+00
  %10718 = select i1 %10716, float -4.000000e+00, float %10717
  %10719 = call float @dx.op.binary.f32(i32 35, float %10718, float 0.000000e+00)  ; FMax(a,b)
  %10720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10721 = extractvalue %dx.types.CBufRet.f32 %10720, 0
  %10722 = fadd fast float %10721, %10719
  %10723 = extractvalue %dx.types.CBufRet.f32 %10720, 2
  %10724 = fmul fast float %10722, %10723
  %10725 = call float @dx.op.unary.f32(i32 23, float %10724)  ; Log(value)
  %10726 = extractvalue %dx.types.CBufRet.f32 %10720, 3
  %10727 = fmul fast float %10726, %10725
  %10728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10729 = extractvalue %dx.types.CBufRet.f32 %10728, 2
  %10730 = fmul fast float %10727, %10729
  %10731 = call float @dx.op.unary.f32(i32 7, float %10730)  ; Saturate(value)
  %10732 = uitofp i32 %10710 to float
  %10733 = uitofp i32 %10713 to float
  %10734 = fadd fast float %10732, 5.000000e-01
  %10735 = fadd fast float %10733, 5.000000e-01
  %10736 = fmul fast float %10729, %10734
  %10737 = fmul fast float %10729, %10735
  %10738 = fadd fast float %10736, 0x3F0FFB4800000000
  %10739 = fadd fast float %10737, 0xBF0FFB4800000000
  %10740 = call float @dx.op.binary.f32(i32 35, float %10731, float %10738)  ; FMax(a,b)
  %10741 = call float @dx.op.binary.f32(i32 36, float %10740, float %10739)  ; FMin(a,b)
  %10742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10743 = extractvalue %dx.types.CBufRet.f32 %10742, 1
  %10744 = extractvalue %dx.types.CBufRet.f32 %10742, 2
  %10745 = extractvalue %dx.types.CBufRet.f32 %10742, 0
  %10746 = select i1 %9248, float %10745, float 0.000000e+00
  %10747 = fmul fast float %10743, %10741
  %10748 = fadd fast float %10746, %10747
  %10749 = fadd fast float %10746, %10744
  %10750 = fsub fast float %10743, %10744
  %10751 = fadd fast float %10750, %10746
  %10752 = call float @dx.op.binary.f32(i32 35, float %10748, float %10749)  ; FMax(a,b)
  %10753 = call float @dx.op.binary.f32(i32 36, float %10752, float %10751)  ; FMin(a,b)
  %10754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10685, float %10686, float %10753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10755 = extractvalue %dx.types.ResRet.f32 %10754, 0
  %10756 = extractvalue %dx.types.ResRet.f32 %10754, 1
  %10757 = extractvalue %dx.types.ResRet.f32 %10754, 2
  %10758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10759 = extractvalue %dx.types.CBufRet.i32 %10758, 0
  %10760 = extractvalue %dx.types.CBufRet.i32 %10758, 1
  %10761 = uitofp i32 %10759 to float
  %10762 = uitofp i32 %10760 to float
  %10763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10764 = extractvalue %dx.types.CBufRet.f32 %10763, 0
  %10765 = extractvalue %dx.types.CBufRet.f32 %10763, 1
  %10766 = fmul fast float %10761, %10685
  %10767 = fmul fast float %10762, %10686
  %10768 = fadd fast float %10766, -5.000000e-01
  %10769 = fadd fast float %10767, -5.000000e-01
  %10770 = call float @dx.op.unary.f32(i32 22, float %10768)  ; Frc(value)
  %10771 = call float @dx.op.unary.f32(i32 22, float %10769)  ; Frc(value)
  %10772 = fmul fast float %10770, %10770
  %10773 = fmul fast float %10772, %10770
  %10774 = fsub fast float 3.000000e+00, %10770
  %10775 = fmul fast float %10772, %10774
  %10776 = fmul fast float %10770, 3.000000e+00
  %10777 = fmul fast float %10773, 3.000000e+00
  %10778 = fmul fast float %10772, 6.000000e+00
  %10779 = fsub fast float %10777, %10778
  %10780 = fadd fast float %10779, 4.000000e+00
  %10781 = fmul fast float %10780, 0x3FC5555560000000
  %10782 = fmul fast float %10773, -3.000000e+00
  %10783 = fadd fast float %10772, %10770
  %10784 = fmul fast float %10783, 3.000000e+00
  %10785 = fadd fast float %10782, 1.000000e+00
  %10786 = fadd fast float %10785, %10784
  %10787 = fmul fast float %10773, 0x3FC5555560000000
  %10788 = fmul fast float %10771, %10771
  %10789 = fmul fast float %10788, %10771
  %10790 = fsub fast float 3.000000e+00, %10771
  %10791 = fmul fast float %10788, %10790
  %10792 = fmul fast float %10771, 3.000000e+00
  %10793 = fmul fast float %10789, 3.000000e+00
  %10794 = fmul fast float %10788, 6.000000e+00
  %10795 = fsub fast float %10793, %10794
  %10796 = fadd fast float %10795, 4.000000e+00
  %10797 = fmul fast float %10796, 0x3FC5555560000000
  %10798 = fmul fast float %10789, -3.000000e+00
  %10799 = fadd fast float %10788, %10771
  %10800 = fmul fast float %10799, 3.000000e+00
  %10801 = fadd fast float %10798, 1.000000e+00
  %10802 = fadd fast float %10801, %10800
  %10803 = fmul fast float %10789, 0x3FC5555560000000
  %10804 = fadd fast float %10770, 1.000000e+00
  %10805 = fsub fast float 1.000000e+00, %10776
  %10806 = fadd fast float %10805, %10775
  %10807 = fadd fast float %10806, %10780
  %10808 = fmul fast float %10807, 0x3FC5555560000000
  %10809 = fdiv fast float %10781, %10808
  %10810 = fsub fast float %10804, %10809
  %10811 = fsub fast float 1.000000e+00, %10770
  %10812 = fadd fast float %10786, %10773
  %10813 = fmul fast float %10812, 0x3FC5555560000000
  %10814 = fdiv fast float %10787, %10813
  %10815 = fadd fast float %10811, %10814
  %10816 = fadd fast float %10771, 1.000000e+00
  %10817 = fsub fast float 1.000000e+00, %10792
  %10818 = fadd fast float %10817, %10791
  %10819 = fadd fast float %10818, %10796
  %10820 = fmul fast float %10819, 0x3FC5555560000000
  %10821 = fdiv fast float %10797, %10820
  %10822 = fsub fast float %10816, %10821
  %10823 = fsub fast float 1.000000e+00, %10771
  %10824 = fadd fast float %10802, %10789
  %10825 = fmul fast float %10824, 0x3FC5555560000000
  %10826 = fdiv fast float %10803, %10825
  %10827 = fadd fast float %10826, %10823
  %10828 = fmul fast float %10810, %10764
  %10829 = fsub fast float %10685, %10828
  %10830 = fmul fast float %10815, %10764
  %10831 = fadd fast float %10830, %10685
  %10832 = fmul fast float %10827, %10765
  %10833 = fadd fast float %10832, %10686
  %10834 = fmul fast float %10822, %10765
  %10835 = fsub fast float %10686, %10834
  %10836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10829, float %10835, float %10753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10837 = extractvalue %dx.types.ResRet.f32 %10836, 0
  %10838 = extractvalue %dx.types.ResRet.f32 %10836, 1
  %10839 = extractvalue %dx.types.ResRet.f32 %10836, 2
  %10840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10831, float %10835, float %10753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10841 = extractvalue %dx.types.ResRet.f32 %10840, 0
  %10842 = extractvalue %dx.types.ResRet.f32 %10840, 1
  %10843 = extractvalue %dx.types.ResRet.f32 %10840, 2
  %10844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10829, float %10833, float %10753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10845 = extractvalue %dx.types.ResRet.f32 %10844, 0
  %10846 = extractvalue %dx.types.ResRet.f32 %10844, 1
  %10847 = extractvalue %dx.types.ResRet.f32 %10844, 2
  %10848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10831, float %10833, float %10753, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10849 = extractvalue %dx.types.ResRet.f32 %10848, 0
  %10850 = extractvalue %dx.types.ResRet.f32 %10848, 1
  %10851 = extractvalue %dx.types.ResRet.f32 %10848, 2
  %10852 = fsub fast float %10845, %10837
  %10853 = fsub fast float %10846, %10838
  %10854 = fsub fast float %10847, %10839
  %10855 = fmul fast float %10852, %10825
  %10856 = fmul fast float %10853, %10825
  %10857 = fmul fast float %10854, %10825
  %10858 = fadd fast float %10855, %10837
  %10859 = fadd fast float %10856, %10838
  %10860 = fadd fast float %10857, %10839
  %10861 = fsub fast float %10849, %10841
  %10862 = fsub fast float %10850, %10842
  %10863 = fsub fast float %10851, %10843
  %10864 = fmul fast float %10861, %10825
  %10865 = fmul fast float %10862, %10825
  %10866 = fmul fast float %10863, %10825
  %10867 = fsub fast float %10841, %10858
  %10868 = fadd fast float %10867, %10864
  %10869 = fsub fast float %10842, %10859
  %10870 = fadd fast float %10869, %10865
  %10871 = fsub fast float %10843, %10860
  %10872 = fadd fast float %10871, %10866
  %10873 = fmul fast float %10868, %10813
  %10874 = fmul fast float %10870, %10813
  %10875 = fmul fast float %10872, %10813
  %10876 = fadd fast float %10873, %10858
  %10877 = fadd fast float %10874, %10859
  %10878 = fadd fast float %10875, %10860
  %10879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10880 = extractvalue %dx.types.CBufRet.f32 %10879, 1
  %10881 = fmul fast float %10876, %10880
  %10882 = fmul fast float %10877, %10880
  %10883 = fmul fast float %10878, %10880
  br label %10884

; <label>:10884                                   ; preds = %10715, %10672
  %10885 = phi float [ %10755, %10715 ], [ 1.000000e+00, %10672 ]
  %10886 = phi float [ %10756, %10715 ], [ 1.000000e+00, %10672 ]
  %10887 = phi float [ %10757, %10715 ], [ 1.000000e+00, %10672 ]
  %10888 = phi float [ %10881, %10715 ], [ 0.000000e+00, %10672 ]
  %10889 = phi float [ %10882, %10715 ], [ 0.000000e+00, %10672 ]
  %10890 = phi float [ %10883, %10715 ], [ 0.000000e+00, %10672 ]
  %10891 = fmul fast float %10888, %9222
  %10892 = fmul fast float %10889, %9224
  %10893 = fmul fast float %10890, %9226
  %10894 = fmul fast float %10885, %10679
  %10895 = call float @dx.op.dot3.f32(i32 55, float %10885, float %10886, float %10887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10896 = call float @dx.op.dot3.f32(i32 55, float %10891, float %10892, float %10893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10897 = select i1 %227, float %10895, float %10885
  %10898 = select i1 %227, float %10895, float %10886
  %10899 = select i1 %227, float 1.000000e+00, float %10887
  %10900 = select i1 %227, float %10896, float %10891
  %10901 = select i1 %227, float 0.000000e+00, float %10892
  %10902 = select i1 %227, float 0.000000e+00, float %10893
  %10903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10904 = extractvalue %dx.types.CBufRet.i32 %10903, 3
  %10905 = and i32 %10904, 3
  %10906 = icmp ne i32 %10905, 0
  %10907 = and i32 %10904, 4
  %10908 = icmp ne i32 %10907, 0
  %10909 = and i1 %10906, %10908
  %10910 = and i1 %227, %10909
  br i1 %10910, label %10911, label %10917

; <label>:10911                                   ; preds = %10884
  %10912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10913 = extractvalue %dx.types.CBufRet.f32 %10912, 1
  %10914 = fadd fast float %10894, -1.000000e+00
  %10915 = fmul fast float %10913, %10914
  %10916 = fadd fast float %10915, 1.000000e+00
  br label %10917

; <label>:10917                                   ; preds = %10911, %10884
  %10918 = phi float [ %10916, %10911 ], [ %10894, %10884 ]
  %10919 = fadd fast float %10676, %10673
  %10920 = fmul fast float %10897, %10919
  %10921 = fadd fast float %10920, %10900
  %10922 = fadd fast float %10677, %10674
  %10923 = fmul fast float %10898, %10922
  %10924 = fadd fast float %10923, %10901
  %10925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10926 = extractvalue %dx.types.CBufRet.f32 %10925, 0
  br i1 %227, label %10927, label %10943

; <label>:10927                                   ; preds = %10917
  %10928 = fadd fast float %10921, %10924
  %10929 = fmul fast float %10926, %10928
  %10930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10931 = extractvalue %dx.types.CBufRet.f32 %10930, 3
  %10932 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %10933 = fsub fast float %9235, %9229
  %10934 = fadd fast float %10933, %9236
  %10935 = fsub fast float %10934, %10932
  %10936 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %10937 = fmul fast float %10935, %10936
  %10938 = call float @dx.op.unary.f32(i32 7, float %10937)  ; Saturate(value)
  %10939 = fsub fast float %10938, %10931
  %10940 = fmul fast float %10939, %10918
  %10941 = fadd fast float %10940, %10931
  %10942 = fmul fast float %10941, %5082
  br label %10969

; <label>:10943                                   ; preds = %10917
  %10944 = fadd fast float %10678, %10675
  %10945 = fmul fast float %10899, %10944
  %10946 = fadd fast float %10945, %10902
  %10947 = fmul fast float %10926, %10921
  %10948 = fmul fast float %10926, %10924
  %10949 = fmul fast float %10926, %10946
  %10950 = call float @dx.op.binary.f32(i32 35, float %10948, float %10949)  ; FMax(a,b)
  %10951 = call float @dx.op.binary.f32(i32 35, float %10947, float %10950)  ; FMax(a,b)
  %10952 = call float @dx.op.binary.f32(i32 35, float %9224, float %9226)  ; FMax(a,b)
  %10953 = call float @dx.op.binary.f32(i32 35, float %9222, float %10952)  ; FMax(a,b)
  %10954 = call float @dx.op.binary.f32(i32 35, float %10951, float %10953)  ; FMax(a,b)
  %10955 = fcmp fast ugt float %10954, 0x3F10000000000000
  br i1 %10955, label %10957, label %10956

; <label>:10956                                   ; preds = %10943
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10957

; <label>:10957                                   ; preds = %10956, %10943
  %10958 = add i32 %60, 356
  %10959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10958, i32 undef)  ; BufferLoad(srv,index,wot)
  %10960 = extractvalue %dx.types.ResRet.i32 %10959, 0
  %10961 = and i32 %10960, 32
  %10962 = icmp eq i32 %10961, 0
  br i1 %10962, label %10969, label %10963

; <label>:10963                                   ; preds = %10957
  %10964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10965 = extractvalue %dx.types.CBufRet.f32 %10964, 0
  %10966 = fmul fast float %10965, 0x3FE99999A0000000
  %10967 = fadd fast float %10965, %10947
  %10968 = fadd fast float %10966, %10949
  br label %10969

; <label>:10969                                   ; preds = %10963, %10957, %10927
  %10970 = phi float [ %5082, %10927 ], [ %9224, %10963 ], [ %9224, %10957 ]
  %10971 = phi float [ %5082, %10927 ], [ %9226, %10963 ], [ %9226, %10957 ]
  %10972 = phi float [ %10929, %10927 ], [ %10967, %10963 ], [ %10947, %10957 ]
  %10973 = phi float [ %10942, %10927 ], [ %10948, %10963 ], [ %10948, %10957 ]
  %10974 = phi float [ %5082, %10927 ], [ %10968, %10963 ], [ %10949, %10957 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10975 = call float @dx.op.binary.f32(i32 36, float %10972, float 3.225500e+04)  ; FMin(a,b)
  %10976 = call float @dx.op.binary.f32(i32 36, float %10973, float 3.225500e+04)  ; FMin(a,b)
  %10977 = call float @dx.op.binary.f32(i32 36, float %10974, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10975)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10976)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10978 = call float @dx.op.binary.f32(i32 36, float %9222, float 3.225500e+04)  ; FMin(a,b)
  %10979 = call float @dx.op.binary.f32(i32 36, float %10970, float 3.225500e+04)  ; FMin(a,b)
  %10980 = call float @dx.op.binary.f32(i32 36, float %10971, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[50 x i32] [i32 48, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 7, i32 119, i32 0, i32 119, i32 119]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !101}
!76 = !{!77, !97, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94, !96}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 8, i8 0, !83}
!91 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 10, i8 0, !93}
!93 = !{i32 3, i32 8}
!94 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 11, i8 0, !95}
!95 = !{i32 3, i32 13}
!96 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !80}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !112, i64 0}
!126 = distinct !{!126, !104}
!127 = distinct !{!127, !104}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = !{!139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!139 = distinct !{!139, !140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!140 = distinct !{!140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!141 = distinct !{!141, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!142 = distinct !{!142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!143 = distinct !{!143, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!153 = distinct !{!153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!162 = !{!158}
!163 = !{!159, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!172 = !{!168}
!173 = !{!169, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 2}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}

