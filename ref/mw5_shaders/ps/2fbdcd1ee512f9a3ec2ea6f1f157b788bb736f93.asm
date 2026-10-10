;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw        9     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f078c64fd12778f91a698472c859fa36
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
; COMP_FACTOR              0                 linear       
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
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
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = alloca [12 x float], align 4
  %96 = alloca [12 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fmul fast float %105, %91
  %107 = fmul fast float %105, %92
  %108 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = bitcast float %108 to i32
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 1597250115, %110
  %112 = bitcast i32 %111 to float
  %113 = fmul fast float %112, %82
  %114 = fmul fast float %112, %83
  %115 = fmul fast float %112, %84
  %116 = fmul fast float %83, %80
  %117 = fmul fast float %84, %79
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %84, %78
  %120 = fmul fast float %82, %80
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %82, %79
  %123 = fmul fast float %83, %78
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %81
  %126 = fmul fast float %121, %81
  %127 = fmul fast float %124, %81
  %128 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %132, %71
  %134 = fmul fast float %132, %72
  %135 = fmul fast float %132, %73
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %106, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %107, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %143, %146
  %150 = fmul fast float %143, %147
  %151 = fmul fast float %143, %148
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fmul fast float %144, %153
  %157 = fmul fast float %144, %154
  %158 = fmul fast float %144, %155
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %163, %149
  %165 = fadd fast float %157, %161
  %166 = fadd fast float %165, %150
  %167 = fadd fast float %158, %162
  %168 = fadd fast float %167, %151
  %169 = fmul fast float %164, %94
  %170 = fmul fast float %166, %94
  %171 = fmul fast float %168, %94
  %172 = fmul fast float %106, 5.000000e-01
  %173 = fmul fast float %107, 5.000000e-01
  %174 = fptosi float %172 to i32
  %175 = fptosi float %173 to i32
  %176 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %174, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = lshr i32 %177, 18
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F4C00EBA0000000
  %181 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  %182 = fadd fast float %181, -1.000000e+00
  %183 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %184 = extractvalue %dx.types.Dimensions %183, 0
  %185 = sitofp i32 %184 to float
  %186 = extractvalue %dx.types.Dimensions %183, 1
  %187 = sitofp i32 %186 to float
  %188 = fcmp fast oge float %172, %185
  %189 = fcmp fast oge float %173, %187
  %190 = or i1 %188, %189
  %191 = select i1 %190, float 0x4197782600000000, float %182
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %195 = fmul fast float %193, %106
  %196 = fmul fast float %194, %107
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = and i32 %198, 114688
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %200, float %195, float 0.000000e+00
  %202 = select i1 %200, float %196, float 0.000000e+00
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fmul fast float %204, 2.550000e+02
  %206 = fptoui float %205 to i32
  %207 = select i1 %200, i32 %206, i32 0
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 3
  %211 = and i32 %210, 3
  %212 = icmp ne i32 %211, 0
  %213 = and i32 %210, 4
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %216, label %227

; <label>:216                                     ; preds = %0
  %217 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %218 = fmul fast float %217, %107
  %219 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %220 = fmul fast float %219, %106
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %220, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fsub fast float 1.000000e+00, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fcmp fast olt float %223, %225
  br label %230

; <label>:227                                     ; preds = %0
  %228 = icmp eq i32 %213, 0
  %229 = and i1 %212, %228
  br label %230

; <label>:230                                     ; preds = %227, %216
  %231 = phi i1 [ %226, %216 ], [ %229, %227 ]
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, 0x3FE3C6EF40000000
  %235 = frem fast float %106, 2.560000e+02
  %236 = frem fast float %107, 2.560000e+02
  %237 = fptoui float %235 to i32
  %238 = fptoui float %236 to i32
  %239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fadd fast float %240, %234
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = add i32 %60, 156
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %60, 216
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %60, 36
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %60, 288
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %60, 172
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %60, 232
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %60, 52
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %60, 304
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %60, 188
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %60, 248
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %60, 68
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %60, 320
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %60, 204
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %60, 264
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %60, 84
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %60, 336
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %60, 348
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 32
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %413, 64
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %413, 128
  %419 = icmp eq i32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %439, label %424

; <label>:424                                     ; preds = %230
  %425 = add i32 %60, 524
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %103, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = fmul fast float %434, %87
  %436 = fmul fast float %431, %88
  %437 = fmul fast float %432, %89
  %438 = fmul fast float %433, %90
  br label %439

; <label>:439                                     ; preds = %424, %230
  %440 = phi float [ %90, %230 ], [ %438, %424 ]
  %441 = phi float [ %89, %230 ], [ %437, %424 ]
  %442 = phi float [ %88, %230 ], [ %436, %424 ]
  %443 = phi float [ %87, %230 ], [ %435, %424 ]
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %467, label %448

; <label>:448                                     ; preds = %439
  %449 = add i32 %60, 44
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %442, float 1.000000e+00
  %455 = add i32 %60, 60
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %441, float 1.000000e+00
  %461 = add i32 %60, 76
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 1
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %440, float 1.000000e+00
  br label %467

; <label>:467                                     ; preds = %448, %439
  %468 = phi float [ %440, %439 ], [ %466, %448 ]
  %469 = phi float [ %441, %439 ], [ %460, %448 ]
  %470 = phi float [ %442, %439 ], [ %454, %448 ]
  %471 = lshr i32 %445, 20
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 1
  %474 = add i32 %60, 24
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %60, 28
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = or i32 %479, %476
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %1160, label %482

; <label>:482                                     ; preds = %467
  %483 = and i32 %476, 262144
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %64, float 1.000000e+00
  %486 = select i1 %484, float %65, float 0.000000e+00
  %487 = select i1 %484, float %66, float 0.000000e+00
  %488 = select i1 %484, float %67, float 1.000000e+00
  %489 = select i1 %484, float %68, float %85
  %490 = select i1 %484, float %69, float %86
  %491 = add i32 %60, 284
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = fmul fast float %495, 0x3F50624DE0000000
  %497 = add i32 %60, 88
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 16
  %501 = and i32 %500, 255
  %502 = lshr i32 %499, 24
  %503 = add i32 %60, 292
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = add i32 %60, 32
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 22
  %514 = shl nuw nsw i32 %513, 5
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = shl i32 %512, 4
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %512, 7
  %520 = and i32 %519, 32752
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fmul fast float %523, 1.000000e+03
  %525 = fmul fast float %283, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %273
  %528 = fmul fast float %284, %524
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fadd fast float %529, %275
  %531 = fmul fast float %496, %524
  %532 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %533 = fmul fast float %532, 0x401921FB60000000
  %534 = fadd fast float %533, %515
  %535 = call float @dx.op.unary.f32(i32 13, float %534)  ; Sin(value)
  %536 = call float @dx.op.unary.f32(i32 12, float %534)  ; Cos(value)
  %537 = fsub fast float -0.000000e+00, %535
  %538 = fadd fast float %489, -5.000000e-01
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fmul fast float %507, %538
  %541 = fmul fast float %509, %539
  %542 = fadd fast float %540, 5.000000e-01
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fmul fast float %518, %542
  %545 = fmul fast float %521, %543
  %546 = fmul fast float %536, %544
  %547 = call float @dx.op.tertiary.f32(i32 46, float %537, float %545, float %546)  ; FMad(a,b,c)
  %548 = fmul fast float %535, %544
  %549 = call float @dx.op.tertiary.f32(i32 46, float %536, float %545, float %548)  ; FMad(a,b,c)
  %550 = fadd fast float %527, %547
  %551 = fadd fast float %530, %549
  %552 = icmp ugt i32 %501, 1
  %553 = icmp ugt i32 %499, 33554431
  %554 = or i1 %553, %552
  br i1 %554, label %555, label %580

; <label>:555                                     ; preds = %482
  %556 = add i32 %60, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = fmul fast float %523, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = mul nuw nsw i32 %501, %502
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %562, %564
  %566 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %567 = fptoui float %566 to i32
  %568 = urem i32 %567, %501
  %569 = udiv i32 %567, %502
  %570 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = uitofp i32 %568 to float
  %573 = uitofp i32 %569 to float
  %574 = fadd fast float %570, %572
  %575 = fadd fast float %571, %573
  %576 = uitofp i32 %501 to float
  %577 = uitofp i32 %502 to float
  %578 = fdiv fast float %574, %576
  %579 = fdiv fast float %575, %577
  br label %580

; <label>:580                                     ; preds = %555, %482
  %581 = phi float [ %578, %555 ], [ %550, %482 ]
  %582 = phi float [ %579, %555 ], [ %551, %482 ]
  %583 = and i32 %476, 16777216
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %694, label %585

; <label>:585                                     ; preds = %580
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = fadd fast float %587, %169
  %591 = fadd fast float %588, %170
  %592 = fadd fast float %589, %171
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = icmp eq i32 %61, 65535
  br i1 %596, label %691, label %597

; <label>:597                                     ; preds = %585
  %598 = lshr i32 %61, 1
  %599 = shl i32 %598, 2
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %61, 1
  %603 = icmp ne i32 %602, 0
  %604 = lshr i32 %601, 16
  %605 = and i32 %601, 65535
  %606 = select i1 %603, i32 %604, i32 %605
  %607 = icmp eq i32 %606, 65535
  br i1 %607, label %687, label %608

; <label>:608                                     ; preds = %597
  %609 = mul nuw nsw i32 %606, 40
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = add nuw nsw i32 %609, 12
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add nuw nsw i32 %609, 24
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = add nuw nsw i32 %609, 36
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = fsub fast float %590, %611
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fmul fast float %626, %627
  %631 = fmul fast float %626, %628
  %632 = fmul fast float %626, %629
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = shl i32 %61, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %646, %dx.types.Handle %55, float %647, float %648, float %649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = fsub fast float %630, %633
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fadd fast float %633, 1.250000e-01
  %670 = fadd fast float %669, %666
  %671 = fadd fast float %670, %660
  %672 = fadd fast float %634, 1.250000e-01
  %673 = fadd fast float %672, %667
  %674 = fadd fast float %673, %661
  %675 = fadd fast float %635, 1.250000e-01
  %676 = fadd fast float %675, %668
  %677 = fadd fast float %676, %662
  %678 = fmul fast float %671, %621
  %679 = fmul fast float %674, %622
  %680 = fmul fast float %677, %623
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %684, %dx.types.Handle %53, float %678, float %679, float %680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  br label %687

; <label>:687                                     ; preds = %608, %597
  %688 = phi float [ %686, %608 ], [ -1.000000e+00, %597 ]
  %689 = fadd fast float %688, %595
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  br label %691

; <label>:691                                     ; preds = %687, %585
  %692 = phi float [ %690, %687 ], [ %595, %585 ]
  %693 = fmul fast float %692, %443
  br label %694

; <label>:694                                     ; preds = %691, %580
  %695 = phi float [ %693, %691 ], [ %443, %580 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 256
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %746, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %60, 472
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %103, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = add i32 %60, 100
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = shl i32 %710, 4
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %710, 7
  %715 = and i32 %714, 32752
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fsub fast float 1.000000e+00, %695
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %719 = bitcast float %695 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %716, %721
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = bitcast float %718 to i32
  %727 = sitofp i32 %726 to float
  %728 = fadd fast float %727, 0xC1CFBF8940000000
  %729 = fmul fast float %728, %716
  %730 = fadd fast float %729, 0x41CFBF8940000000
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %725, %713
  %734 = fmul fast float %732, %713
  %735 = fsub fast float %718, %733
  %736 = fadd fast float %734, %718
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = fsub fast float %707, %737
  %740 = fsub fast float %738, %737
  %741 = bitcast float %740 to i32
  %742 = sub nsw i32 2129859010, %741
  %743 = bitcast i32 %742 to float
  %744 = fmul fast float %743, %739
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  br label %746

; <label>:746                                     ; preds = %700, %694
  %747 = phi float [ %745, %700 ], [ %695, %694 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 128
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %768, label %752

; <label>:752                                     ; preds = %746
  %753 = add i32 %60, 456
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %103, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 524288
  %763 = icmp ne i32 %762, 0
  %764 = fcmp fast ogt float %759, 0x3FE0101020000000
  %765 = select i1 %764, float 1.000000e+00, float 0.000000e+00
  %766 = select i1 %763, float %765, float %759
  %767 = fmul fast float %766, %747
  br label %768

; <label>:768                                     ; preds = %752, %746
  %769 = phi float [ %767, %752 ], [ %747, %746 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 16
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %972, label %774

; <label>:774                                     ; preds = %768
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %60, 408
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = add i32 %779, 0
  %781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %781, %dx.types.Handle %102, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = and i32 %776, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %776, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %786, %788
  %793 = fadd fast float %792, %791
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 512
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %807, label %799

; <label>:799                                     ; preds = %774
  %800 = add i32 %60, 492
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %103, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  br label %807

; <label>:807                                     ; preds = %799, %774
  %808 = phi float [ %806, %799 ], [ 1.000000e+00, %774 ]
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 33554432
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %919, label %813

; <label>:813                                     ; preds = %807
  %814 = add i32 %60, 224
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %816, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = add i32 %60, 228
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = and i32 %827, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %827, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %827, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = add i32 %60, 220
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = and i32 %844, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %844, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %844, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = bitcast float %783 to i32
  %860 = ashr i32 %859, 1
  %861 = sub nsw i32 1597463174, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %783, 5.000000e-01
  %864 = fmul fast float %862, %862
  %865 = fmul fast float %864, %863
  %866 = fsub fast float 1.500000e+00, %865
  %867 = fmul fast float %862, %783
  %868 = fmul fast float %867, %866
  %869 = bitcast float %784 to i32
  %870 = ashr i32 %869, 1
  %871 = sub nsw i32 1597463174, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %784, 5.000000e-01
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %874, %873
  %876 = fsub fast float 1.500000e+00, %875
  %877 = fmul fast float %872, %784
  %878 = fmul fast float %877, %876
  %879 = bitcast float %785 to i32
  %880 = ashr i32 %879, 1
  %881 = sub nsw i32 1597463174, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %785, 5.000000e-01
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.500000e+00, %885
  %887 = fmul fast float %882, %785
  %888 = fmul fast float %887, %886
  %889 = fsub fast float %868, %850
  %890 = fsub fast float %878, %854
  %891 = fsub fast float %888, %858
  %892 = fmul fast float %889, %818
  %893 = fmul fast float %890, %820
  %894 = fmul fast float %891, %825
  %895 = fadd fast float %892, %833
  %896 = fadd fast float %893, %837
  %897 = fadd fast float %894, %841
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fsub fast float %901, %783
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fmul fast float %904, %808
  %908 = fmul fast float %905, %808
  %909 = fmul fast float %906, %808
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %830, %794
  %914 = fsub fast float %913, %847
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fsub fast float %915, %794
  %917 = fmul fast float %916, %808
  %918 = fadd fast float %917, %794
  br label %972

; <label>:919                                     ; preds = %807
  %920 = and i32 %810, 134217728
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %956, label %922

; <label>:922                                     ; preds = %919
  %923 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fmul fast float %926, %808
  %930 = fmul fast float %927, %808
  %931 = fmul fast float %928, %808
  %932 = fadd fast float %929, 5.000000e-01
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = fmul fast float %932, 2.000000e+00
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %935
  %941 = fadd fast float %940, %938
  %942 = fmul fast float %941, %935
  %943 = fmul fast float %933, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %936
  %946 = fadd fast float %945, %943
  %947 = fmul fast float %946, %936
  %948 = fmul fast float %934, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %937
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %937
  %953 = fmul fast float %942, %942
  %954 = fmul fast float %947, %947
  %955 = fmul fast float %952, %952
  br label %972

; <label>:956                                     ; preds = %919
  %957 = fmul fast float %260, %260
  %958 = fmul fast float %264, %264
  %959 = fmul fast float %268, %268
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fmul fast float %808, %960
  %964 = fmul fast float %808, %961
  %965 = fmul fast float %808, %962
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fmul fast float %966, %783
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  br label %972

; <label>:972                                     ; preds = %956, %922, %813, %768
  %973 = phi float [ %918, %813 ], [ %794, %922 ], [ %794, %956 ], [ 0x3FA23C0BE0000000, %768 ]
  %974 = phi float [ %910, %813 ], [ %953, %922 ], [ %969, %956 ], [ 1.000000e+00, %768 ]
  %975 = phi float [ %911, %813 ], [ %954, %922 ], [ %970, %956 ], [ 1.000000e+00, %768 ]
  %976 = phi float [ %912, %813 ], [ %955, %922 ], [ %971, %956 ], [ 1.000000e+00, %768 ]
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 1
  %979 = and i32 %978, 1
  %980 = icmp ne i32 %979, 0
  %981 = add i32 %60, 356
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp ne i32 %984, 0
  %986 = and i1 %980, %985
  %987 = select i1 %986, float 1.000000e+00, float %974
  %988 = select i1 %986, float 0x3FD3333340000000, float %975
  %989 = select i1 %986, float 0x3FD3333340000000, float %976
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 32
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1066, label %994

; <label>:994                                     ; preds = %972
  %995 = add i32 %60, 92
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %60, 424
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %102, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = and i32 %997, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %997, 8
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = lshr i32 %997, 16
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fmul fast float %1004, %1009
  %1018 = fadd fast float %1017, %1012
  %1019 = fmul fast float %1018, 0x3F70101000000000
  %1020 = fadd fast float %1005, -5.000000e-01
  %1021 = fadd fast float %1007, -5.000000e-01
  %1022 = fmul fast float %1020, %1016
  %1023 = fmul fast float %1021, %1016
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fmul fast float %1024, 2.000000e+00
  %1027 = fadd fast float %1026, -1.000000e+00
  %1028 = fmul fast float %1025, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fadd fast float %1027, %1029
  %1031 = fmul fast float %1030, 5.000000e-01
  %1032 = fsub fast float %1027, %1029
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float 1.000000e+00, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1035, %1036
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1033, float %1037, float %1031, float %1033, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1031, %1039
  %1041 = fmul fast float %1033, %1039
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 67108864
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1062, label %1046

; <label>:1046                                    ; preds = %994
  %1047 = add i32 %60, 280
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1049, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float %1019, %1057
  %1059 = fmul fast float %1058, %1051
  %1060 = fadd fast float %1059, %1055
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  br label %1062

; <label>:1062                                    ; preds = %1046, %994
  %1063 = phi float [ %1061, %1046 ], [ %1019, %994 ]
  %1064 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  br label %1066

; <label>:1066                                    ; preds = %1062, %972
  %1067 = phi float [ %1063, %1062 ], [ 0x3FD6666660000000, %972 ]
  %1068 = phi float [ %1064, %1062 ], [ 0.000000e+00, %972 ]
  %1069 = phi float [ %1065, %1062 ], [ 0.000000e+00, %972 ]
  %1070 = phi float [ %1006, %1062 ], [ 1.000000e+00, %972 ]
  %1071 = add i32 %60, 160
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 22
  %1075 = shl nuw nsw i32 %1074, 5
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 64
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1114, label %1081

; <label>:1081                                    ; preds = %1066
  %1082 = add i32 %60, 440
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 131072
  %1090 = icmp eq i32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %102, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1092, %248
  %1096 = fmul fast float %1093, %251
  %1097 = fmul fast float %1094, %254
  br i1 %1090, label %1104, label %1098

; <label>:1098                                    ; preds = %1081
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1095
  %1102 = fmul fast float %1100, %1096
  %1103 = fmul fast float %1100, %1097
  br label %1104

; <label>:1104                                    ; preds = %1098, %1081
  %1105 = phi float [ %1101, %1098 ], [ %1095, %1081 ]
  %1106 = phi float [ %1102, %1098 ], [ %1096, %1081 ]
  %1107 = phi float [ %1103, %1098 ], [ %1097, %1081 ]
  %1108 = fmul fast float %1105, %1076
  %1109 = select i1 %231, float %1108, float %1105
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1106, float %1107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = select i1 %231, float 0.000000e+00, float %1105
  %1112 = select i1 %231, float %1110, float %1106
  %1113 = select i1 %231, float 0.000000e+00, float %1107
  br label %1114

; <label>:1114                                    ; preds = %1104, %1066
  %1115 = phi float [ %1111, %1104 ], [ 0.000000e+00, %1066 ]
  %1116 = phi float [ %1112, %1104 ], [ 0.000000e+00, %1066 ]
  %1117 = phi float [ %1113, %1104 ], [ 0.000000e+00, %1066 ]
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 26624
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1145, label %1122

; <label>:1122                                    ; preds = %1114
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 16384
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1145, label %1127

; <label>:1127                                    ; preds = %1122
  %1128 = and i32 %1124, 1048576
  %1129 = icmp ne i32 %1128, 0
  %1130 = add i32 %60, 508
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = add i32 %1132, 0
  %1134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1134, %dx.types.Handle %103, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = add i32 %60, 96
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = lshr i32 %1139, 24
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1136, 0x3F70101020000000
  %1143 = select i1 %1129, float 0x3F70101020000000, float %1142
  %1144 = fmul fast float %1143, %1141
  br label %1145

; <label>:1145                                    ; preds = %1127, %1122, %1114
  %1146 = phi float [ %1144, %1127 ], [ 0.000000e+00, %1122 ], [ 0.000000e+00, %1114 ]
  %1147 = add i32 %60, 96
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 255
  %1151 = uitofp i32 %1150 to float
  %1152 = lshr i32 %1149, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = fmul fast float %1154, %1155
  %1157 = fadd fast float %1156, %1151
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  br label %1160

; <label>:1160                                    ; preds = %1145, %467
  %1161 = phi float [ 0.000000e+00, %467 ], [ %1068, %1145 ]
  %1162 = phi float [ 0.000000e+00, %467 ], [ %1069, %1145 ]
  %1163 = phi float [ 0.000000e+00, %467 ], [ %987, %1145 ]
  %1164 = phi float [ 0.000000e+00, %467 ], [ %988, %1145 ]
  %1165 = phi float [ 0.000000e+00, %467 ], [ %989, %1145 ]
  %1166 = phi float [ 0.000000e+00, %467 ], [ %1115, %1145 ]
  %1167 = phi float [ 0.000000e+00, %467 ], [ %1116, %1145 ]
  %1168 = phi float [ 0.000000e+00, %467 ], [ %1117, %1145 ]
  %1169 = phi float [ 0.000000e+00, %467 ], [ %973, %1145 ]
  %1170 = phi float [ 0.000000e+00, %467 ], [ %769, %1145 ]
  %1171 = phi float [ 0.000000e+00, %467 ], [ %1067, %1145 ]
  %1172 = phi float [ 0.000000e+00, %467 ], [ %1070, %1145 ]
  %1173 = phi float [ 0.000000e+00, %467 ], [ %1146, %1145 ]
  %1174 = phi float [ 0.000000e+00, %467 ], [ %1159, %1145 ]
  br i1 %415, label %2055, label %1175

; <label>:1175                                    ; preds = %1160
  %1176 = icmp ult i32 %473, 2
  %1177 = add i32 %60, 40
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %60, 44
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = or i32 %1182, %1179
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %2055, label %1185

; <label>:1185                                    ; preds = %1175
  %1186 = and i32 %1179, 262144
  %1187 = icmp ne i32 %1186, 0
  %1188 = select i1 %1187, float %64, float 1.000000e+00
  %1189 = select i1 %1187, float %65, float 0.000000e+00
  %1190 = select i1 %1187, float %66, float 0.000000e+00
  %1191 = select i1 %1187, float %67, float 1.000000e+00
  %1192 = select i1 %1187, float %68, float %85
  %1193 = select i1 %1187, float %69, float %86
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
  %1228 = fmul fast float %325, %1227
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = fadd fast float %1229, %315
  %1231 = fmul fast float %326, %1227
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = fadd fast float %1232, %317
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
  %1293 = fadd fast float %1290, %169
  %1294 = fadd fast float %1291, %170
  %1295 = fadd fast float %1292, %171
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
  %1396 = fmul fast float %1395, %470
  br label %1397

; <label>:1397                                    ; preds = %1394, %1283
  %1398 = phi float [ %1396, %1394 ], [ %470, %1283 ]
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
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %103, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1460, %dx.types.Handle %103, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  br i1 %1473, label %2055, label %1474

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
  %1487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %102, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1505 = add i32 %60, 496
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %103, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1628 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1629 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1630 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
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
  %1662 = fmul fast float %302, %302
  %1663 = fmul fast float %306, %306
  %1664 = fmul fast float %310, %310
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
  %1708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1707, %dx.types.Handle %102, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1791, %dx.types.Handle %102, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = fmul fast float %1797, %290
  %1801 = fmul fast float %1798, %293
  %1802 = fmul fast float %1799, %296
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
  %1814 = select i1 %231, float %1813, float %1810
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1811, float %1812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = select i1 %231, float 0.000000e+00, float %1810
  %1817 = select i1 %231, float %1815, float %1811
  %1818 = select i1 %231, float 0.000000e+00, float %1812
  br label %1819

; <label>:1819                                    ; preds = %1809, %1771
  %1820 = phi float [ %1816, %1809 ], [ 0.000000e+00, %1771 ]
  %1821 = phi float [ %1817, %1809 ], [ 0.000000e+00, %1771 ]
  %1822 = phi float [ %1818, %1809 ], [ 0.000000e+00, %1771 ]
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 26624
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1850, label %1827

; <label>:1827                                    ; preds = %1819
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 16384
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1850, label %1832

; <label>:1832                                    ; preds = %1827
  %1833 = and i32 %1829, 1048576
  %1834 = icmp ne i32 %1833, 0
  %1835 = add i32 %60, 512
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = add i32 %1837, 0
  %1839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1839, %dx.types.Handle %103, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = add i32 %60, 112
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 24
  %1846 = uitofp i32 %1845 to float
  %1847 = fmul fast float %1841, 0x3F70101020000000
  %1848 = select i1 %1834, float 0x3F70101020000000, float %1847
  %1849 = fmul fast float %1848, %1846
  br label %1850

; <label>:1850                                    ; preds = %1832, %1827, %1819
  %1851 = phi float [ %1849, %1832 ], [ 0.000000e+00, %1827 ], [ 0.000000e+00, %1819 ]
  %1852 = add i32 %60, 112
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 255
  %1856 = uitofp i32 %1855 to float
  %1857 = lshr i32 %1854, 8
  %1858 = and i32 %1857, 255
  %1859 = uitofp i32 %1858 to float
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = fmul fast float %1859, %1860
  %1862 = fadd fast float %1861, %1856
  %1863 = fmul fast float %1862, 0x3F70101020000000
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  br i1 %1176, label %1865, label %1873

; <label>:1865                                    ; preds = %1850
  %1866 = fsub fast float 1.000000e+00, %1472
  %1867 = fmul fast float %1866, %1163
  %1868 = fmul fast float %1866, %1164
  %1869 = fmul fast float %1866, %1165
  %1870 = fmul fast float %1866, %1166
  %1871 = fmul fast float %1866, %1167
  %1872 = fmul fast float %1866, %1168
  br label %1873

; <label>:1873                                    ; preds = %1865, %1850
  %1874 = phi float [ %1867, %1865 ], [ %1163, %1850 ]
  %1875 = phi float [ %1868, %1865 ], [ %1164, %1850 ]
  %1876 = phi float [ %1869, %1865 ], [ %1165, %1850 ]
  %1877 = phi float [ %1870, %1865 ], [ %1166, %1850 ]
  %1878 = phi float [ %1871, %1865 ], [ %1167, %1850 ]
  %1879 = phi float [ %1872, %1865 ], [ %1168, %1850 ]
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 3
  %1883 = icmp eq i32 %1882, 3
  br i1 %1883, label %1962, label %1884

; <label>:1884                                    ; preds = %1873
  %1885 = and i32 %1881, 16
  %1886 = icmp ne i32 %1885, 0
  %1887 = select i1 %1886, float %1472, float 0.000000e+00
  %1888 = icmp eq i32 %1882, 0
  br i1 %1888, label %1889, label %1917

; <label>:1889                                    ; preds = %1884
  %1890 = and i32 %1881, 64
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %1472, float 0.000000e+00
  %1893 = fsub fast float %1692, %1874
  %1894 = fsub fast float %1693, %1875
  %1895 = fsub fast float %1694, %1876
  %1896 = fmul fast float %1887, %1893
  %1897 = fmul fast float %1887, %1894
  %1898 = fmul fast float %1887, %1895
  %1899 = fadd fast float %1896, %1874
  %1900 = fadd fast float %1897, %1875
  %1901 = fadd fast float %1898, %1876
  %1902 = fsub fast float %1678, %1169
  %1903 = fmul fast float %1887, %1902
  %1904 = fadd fast float %1903, %1169
  %1905 = fsub fast float %1820, %1877
  %1906 = fsub fast float %1821, %1878
  %1907 = fsub fast float %1822, %1879
  %1908 = fmul fast float %1892, %1905
  %1909 = fmul fast float %1892, %1906
  %1910 = fmul fast float %1892, %1907
  %1911 = fadd fast float %1908, %1877
  %1912 = fadd fast float %1909, %1878
  %1913 = fadd fast float %1910, %1879
  %1914 = fsub fast float %1864, %1174
  %1915 = fmul fast float %1887, %1914
  %1916 = fadd fast float %1915, %1174
  br label %1962

; <label>:1917                                    ; preds = %1884
  %1918 = icmp eq i32 %1882, 1
  br i1 %1918, label %1919, label %1932

; <label>:1919                                    ; preds = %1917
  %1920 = fadd fast float %1692, -1.000000e+00
  %1921 = fadd fast float %1693, -1.000000e+00
  %1922 = fadd fast float %1694, -1.000000e+00
  %1923 = fmul fast float %1887, %1920
  %1924 = fmul fast float %1887, %1921
  %1925 = fmul fast float %1887, %1922
  %1926 = fadd fast float %1923, 1.000000e+00
  %1927 = fadd fast float %1924, 1.000000e+00
  %1928 = fadd fast float %1925, 1.000000e+00
  %1929 = fmul fast float %1926, %1874
  %1930 = fmul fast float %1927, %1875
  %1931 = fmul fast float %1928, %1876
  br label %1962

; <label>:1932                                    ; preds = %1917
  %1933 = icmp eq i32 %1882, 2
  br i1 %1933, label %1934, label %1962

; <label>:1934                                    ; preds = %1932
  %1935 = call float @dx.op.unary.f32(i32 24, float %1692)  ; Sqrt(value)
  %1936 = call float @dx.op.unary.f32(i32 24, float %1693)  ; Sqrt(value)
  %1937 = call float @dx.op.unary.f32(i32 24, float %1694)  ; Sqrt(value)
  %1938 = fadd fast float %1935, -5.000000e-01
  %1939 = fadd fast float %1936, -5.000000e-01
  %1940 = fadd fast float %1937, -5.000000e-01
  %1941 = fmul fast float %1938, %1887
  %1942 = fmul fast float %1939, %1887
  %1943 = fmul fast float %1940, %1887
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fmul fast float %1944, 2.000000e+00
  %1948 = fsub fast float 1.000000e+00, %1947
  %1949 = fmul fast float %1948, %1874
  %1950 = fadd fast float %1949, %1947
  %1951 = fmul fast float %1950, %1874
  %1952 = fmul fast float %1945, 2.000000e+00
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = fmul fast float %1953, %1875
  %1955 = fadd fast float %1954, %1952
  %1956 = fmul fast float %1955, %1875
  %1957 = fmul fast float %1946, 2.000000e+00
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fmul fast float %1958, %1876
  %1960 = fadd fast float %1959, %1957
  %1961 = fmul fast float %1960, %1876
  br label %1962

; <label>:1962                                    ; preds = %1934, %1932, %1919, %1889, %1873
  %1963 = phi float [ %1874, %1873 ], [ %1951, %1934 ], [ %1874, %1932 ], [ %1929, %1919 ], [ %1899, %1889 ]
  %1964 = phi float [ %1875, %1873 ], [ %1956, %1934 ], [ %1875, %1932 ], [ %1930, %1919 ], [ %1900, %1889 ]
  %1965 = phi float [ %1876, %1873 ], [ %1961, %1934 ], [ %1876, %1932 ], [ %1931, %1919 ], [ %1901, %1889 ]
  %1966 = phi float [ %1877, %1873 ], [ %1877, %1934 ], [ %1877, %1932 ], [ %1877, %1919 ], [ %1911, %1889 ]
  %1967 = phi float [ %1878, %1873 ], [ %1878, %1934 ], [ %1878, %1932 ], [ %1878, %1919 ], [ %1912, %1889 ]
  %1968 = phi float [ %1879, %1873 ], [ %1879, %1934 ], [ %1879, %1932 ], [ %1879, %1919 ], [ %1913, %1889 ]
  %1969 = phi float [ %1169, %1873 ], [ %1169, %1934 ], [ %1169, %1932 ], [ %1169, %1919 ], [ %1904, %1889 ]
  %1970 = phi float [ %1174, %1873 ], [ %1174, %1934 ], [ %1174, %1932 ], [ %1174, %1919 ], [ %1916, %1889 ]
  %1971 = and i32 %1881, 12
  %1972 = icmp eq i32 %1971, 12
  br i1 %1972, label %2055, label %1973

; <label>:1973                                    ; preds = %1962
  %1974 = and i32 %1881, 2097184
  %1975 = icmp eq i32 %1974, 2097184
  %1976 = select i1 %1975, float %1472, float 0.000000e+00
  %1977 = and i32 %1881, 4194336
  %1978 = icmp eq i32 %1977, 4194336
  %1979 = select i1 %1978, float %1472, float 0.000000e+00
  %1980 = and i32 %1881, 8388640
  %1981 = icmp eq i32 %1980, 8388640
  %1982 = select i1 %1981, float %1472, float 0.000000e+00
  %1983 = and i32 %1881, 16384
  %1984 = icmp ne i32 %1983, 0
  %1985 = select i1 %1984, float %1472, float 0.000000e+00
  %1986 = icmp eq i32 %1971, 0
  br i1 %1986, label %1987, label %2003

; <label>:1987                                    ; preds = %1973
  %1988 = fsub fast float %1773, %1161
  %1989 = fsub fast float %1774, %1162
  %1990 = fmul fast float %1976, %1988
  %1991 = fmul fast float %1976, %1989
  %1992 = fadd fast float %1990, %1161
  %1993 = fadd fast float %1991, %1162
  %1994 = fsub fast float %1775, %1172
  %1995 = fmul fast float %1979, %1994
  %1996 = fadd fast float %1995, %1172
  %1997 = fsub fast float %1772, %1171
  %1998 = fmul fast float %1982, %1997
  %1999 = fadd fast float %1998, %1171
  %2000 = fsub fast float %1851, %1173
  %2001 = fmul fast float %1985, %2000
  %2002 = fadd fast float %2001, %1173
  br label %2055

; <label>:2003                                    ; preds = %1973
  %2004 = icmp eq i32 %1971, 4
  br i1 %2004, label %2005, label %2039

; <label>:2005                                    ; preds = %2003
  %2006 = fmul fast float %1976, %1773
  %2007 = fmul fast float %1976, %1774
  %2008 = fadd fast float %2006, %1161
  %2009 = fadd fast float %2007, %1162
  %2010 = call float @dx.op.binary.f32(i32 36, float %1172, float %1775)  ; FMin(a,b)
  %2011 = fsub fast float %2010, %1172
  %2012 = fmul fast float %2011, %1979
  %2013 = fadd fast float %2012, %1172
  %2014 = fadd fast float %1772, %1171
  %2015 = fmul fast float %2014, 0x3FF337FAE0000000
  %2016 = fmul fast float %1171, %1171
  %2017 = fmul fast float %1772, %1772
  %2018 = fadd fast float %2017, %2016
  %2019 = fmul fast float %2018, 0x3FE5152B00000000
  %2020 = fmul fast float %1171, 0xBFCC1F85E0000000
  %2021 = fmul fast float %2020, %1772
  %2022 = fadd fast float %2021, 0xBFE1363700000000
  %2023 = fadd fast float %2022, %2015
  %2024 = fsub fast float %2023, %2019
  %2025 = fmul fast float %2014, 0x3FBA6F0D00000000
  %2026 = fmul fast float %2018, 0x3FD0432880000000
  %2027 = fmul fast float %1171, 0xBFEF110800000000
  %2028 = fmul fast float %2027, %1772
  %2029 = fadd fast float %2028, 1.000000e+00
  %2030 = fsub fast float %2029, %2025
  %2031 = fadd fast float %2030, %2026
  %2032 = fdiv fast float %2024, %2031
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fsub fast float %2033, %1171
  %2035 = fmul fast float %2034, %1982
  %2036 = fadd fast float %2035, %1171
  %2037 = fmul fast float %1985, %1851
  %2038 = fadd fast float %2037, %1173
  br label %2055

; <label>:2039                                    ; preds = %2003
  %2040 = icmp eq i32 %1971, 8
  br i1 %2040, label %2041, label %2055

; <label>:2041                                    ; preds = %2039
  %2042 = fmul fast float %1976, %1773
  %2043 = fmul fast float %1976, %1774
  %2044 = fadd fast float %2042, %1161
  %2045 = fadd fast float %2043, %1162
  %2046 = call float @dx.op.binary.f32(i32 36, float %1172, float %1775)  ; FMin(a,b)
  %2047 = fsub fast float %2046, %1172
  %2048 = fmul fast float %2047, %1979
  %2049 = fadd fast float %2048, %1172
  %2050 = fsub fast float %1772, %1171
  %2051 = fmul fast float %1982, %2050
  %2052 = fadd fast float %2051, %1171
  %2053 = fmul fast float %1985, %1851
  %2054 = fadd fast float %2053, %1173
  br label %2055

; <label>:2055                                    ; preds = %2041, %2039, %2005, %1987, %1962, %1471, %1175, %1160
  %2056 = phi float [ %1161, %1962 ], [ %1161, %1471 ], [ %1161, %1160 ], [ %2044, %2041 ], [ %1161, %2039 ], [ %2008, %2005 ], [ %1992, %1987 ], [ %1161, %1175 ]
  %2057 = phi float [ %1162, %1962 ], [ %1162, %1471 ], [ %1162, %1160 ], [ %2045, %2041 ], [ %1162, %2039 ], [ %2009, %2005 ], [ %1993, %1987 ], [ %1162, %1175 ]
  %2058 = phi float [ %1963, %1962 ], [ %1163, %1471 ], [ %1163, %1160 ], [ %1963, %2041 ], [ %1963, %2039 ], [ %1963, %2005 ], [ %1963, %1987 ], [ %1163, %1175 ]
  %2059 = phi float [ %1964, %1962 ], [ %1164, %1471 ], [ %1164, %1160 ], [ %1964, %2041 ], [ %1964, %2039 ], [ %1964, %2005 ], [ %1964, %1987 ], [ %1164, %1175 ]
  %2060 = phi float [ %1965, %1962 ], [ %1165, %1471 ], [ %1165, %1160 ], [ %1965, %2041 ], [ %1965, %2039 ], [ %1965, %2005 ], [ %1965, %1987 ], [ %1165, %1175 ]
  %2061 = phi float [ %1966, %1962 ], [ %1166, %1471 ], [ %1166, %1160 ], [ %1966, %2041 ], [ %1966, %2039 ], [ %1966, %2005 ], [ %1966, %1987 ], [ %1166, %1175 ]
  %2062 = phi float [ %1967, %1962 ], [ %1167, %1471 ], [ %1167, %1160 ], [ %1967, %2041 ], [ %1967, %2039 ], [ %1967, %2005 ], [ %1967, %1987 ], [ %1167, %1175 ]
  %2063 = phi float [ %1968, %1962 ], [ %1168, %1471 ], [ %1168, %1160 ], [ %1968, %2041 ], [ %1968, %2039 ], [ %1968, %2005 ], [ %1968, %1987 ], [ %1168, %1175 ]
  %2064 = phi float [ %1969, %1962 ], [ %1169, %1471 ], [ %1169, %1160 ], [ %1969, %2041 ], [ %1969, %2039 ], [ %1969, %2005 ], [ %1969, %1987 ], [ %1169, %1175 ]
  %2065 = phi float [ %1171, %1962 ], [ %1171, %1471 ], [ %1171, %1160 ], [ %2052, %2041 ], [ %1171, %2039 ], [ %2036, %2005 ], [ %1999, %1987 ], [ %1171, %1175 ]
  %2066 = phi float [ %1172, %1962 ], [ %1172, %1471 ], [ %1172, %1160 ], [ %2049, %2041 ], [ %1172, %2039 ], [ %2013, %2005 ], [ %1996, %1987 ], [ %1172, %1175 ]
  %2067 = phi float [ %1173, %1962 ], [ %1173, %1471 ], [ %1173, %1160 ], [ %2054, %2041 ], [ %1173, %2039 ], [ %2038, %2005 ], [ %2002, %1987 ], [ %1173, %1175 ]
  %2068 = phi float [ %1970, %1962 ], [ %1174, %1471 ], [ %1174, %1160 ], [ %1970, %2041 ], [ %1970, %2039 ], [ %1970, %2005 ], [ %1970, %1987 ], [ %1174, %1175 ]
  br i1 %417, label %2949, label %2069

; <label>:2069                                    ; preds = %2055
  %2070 = icmp ult i32 %473, 3
  %2071 = add i32 %60, 56
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %60, 60
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = or i32 %2076, %2073
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2949, label %2079

; <label>:2079                                    ; preds = %2069
  %2080 = and i32 %2073, 262144
  %2081 = icmp ne i32 %2080, 0
  %2082 = select i1 %2081, float %64, float 1.000000e+00
  %2083 = select i1 %2081, float %65, float 0.000000e+00
  %2084 = select i1 %2081, float %66, float 0.000000e+00
  %2085 = select i1 %2081, float %67, float 1.000000e+00
  %2086 = select i1 %2081, float %68, float %85
  %2087 = select i1 %2081, float %69, float %86
  %2088 = add i32 %60, 316
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = lshr i32 %2090, 16
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = fmul fast float %2092, 0x3F50624DE0000000
  %2094 = add i32 %60, 120
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = lshr i32 %2096, 16
  %2098 = and i32 %2097, 255
  %2099 = lshr i32 %2096, 24
  %2100 = add i32 %60, 324
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = and i32 %2102, 65535
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = lshr i32 %2102, 16
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = add i32 %60, 64
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = lshr i32 %2109, 22
  %2111 = shl nuw nsw i32 %2110, 5
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = shl i32 %2109, 4
  %2114 = and i32 %2113, 32752
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = lshr i32 %2109, 7
  %2117 = and i32 %2116, 32752
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 3
  %2121 = fmul fast float %2120, 1.000000e+03
  %2122 = fmul fast float %367, %2121
  %2123 = call float @dx.op.unary.f32(i32 22, float %2122)  ; Frc(value)
  %2124 = fadd fast float %2123, %357
  %2125 = fmul fast float %368, %2121
  %2126 = call float @dx.op.unary.f32(i32 22, float %2125)  ; Frc(value)
  %2127 = fadd fast float %2126, %359
  %2128 = fmul fast float %2093, %2121
  %2129 = call float @dx.op.unary.f32(i32 22, float %2128)  ; Frc(value)
  %2130 = fmul fast float %2129, 0x401921FB60000000
  %2131 = fadd fast float %2130, %2112
  %2132 = call float @dx.op.unary.f32(i32 13, float %2131)  ; Sin(value)
  %2133 = call float @dx.op.unary.f32(i32 12, float %2131)  ; Cos(value)
  %2134 = fsub fast float -0.000000e+00, %2132
  %2135 = fadd fast float %2086, -5.000000e-01
  %2136 = fadd fast float %2087, -5.000000e-01
  %2137 = fmul fast float %2104, %2135
  %2138 = fmul fast float %2106, %2136
  %2139 = fadd fast float %2137, 5.000000e-01
  %2140 = fadd fast float %2138, 5.000000e-01
  %2141 = fmul fast float %2115, %2139
  %2142 = fmul fast float %2118, %2140
  %2143 = fmul fast float %2133, %2141
  %2144 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2142, float %2143)  ; FMad(a,b,c)
  %2145 = fmul fast float %2132, %2141
  %2146 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2142, float %2145)  ; FMad(a,b,c)
  %2147 = fadd fast float %2124, %2144
  %2148 = fadd fast float %2127, %2146
  %2149 = icmp ugt i32 %2098, 1
  %2150 = icmp ugt i32 %2096, 33554431
  %2151 = or i1 %2150, %2149
  br i1 %2151, label %2152, label %2177

; <label>:2152                                    ; preds = %2079
  %2153 = add i32 %60, 260
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 16
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = fmul fast float %2120, %2157
  %2159 = call float @dx.op.unary.f32(i32 22, float %2158)  ; Frc(value)
  %2160 = mul nuw nsw i32 %2098, %2099
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2159, %2161
  %2163 = call float @dx.op.unary.f32(i32 27, float %2162)  ; Round_ni(value)
  %2164 = fptoui float %2163 to i32
  %2165 = urem i32 %2164, %2098
  %2166 = udiv i32 %2164, %2099
  %2167 = call float @dx.op.unary.f32(i32 22, float %2147)  ; Frc(value)
  %2168 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2169 = uitofp i32 %2165 to float
  %2170 = uitofp i32 %2166 to float
  %2171 = fadd fast float %2167, %2169
  %2172 = fadd fast float %2168, %2170
  %2173 = uitofp i32 %2098 to float
  %2174 = uitofp i32 %2099 to float
  %2175 = fdiv fast float %2171, %2173
  %2176 = fdiv fast float %2172, %2174
  br label %2177

; <label>:2177                                    ; preds = %2152, %2079
  %2178 = phi float [ %2175, %2152 ], [ %2147, %2079 ]
  %2179 = phi float [ %2176, %2152 ], [ %2148, %2079 ]
  %2180 = and i32 %2073, 16777216
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2291, label %2182

; <label>:2182                                    ; preds = %2177
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.CBufRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2187 = fadd fast float %2184, %169
  %2188 = fadd fast float %2185, %170
  %2189 = fadd fast float %2186, %171
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = icmp eq i32 %61, 65535
  br i1 %2193, label %2288, label %2194

; <label>:2194                                    ; preds = %2182
  %2195 = lshr i32 %61, 1
  %2196 = shl i32 %2195, 2
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %61, 1
  %2200 = icmp ne i32 %2199, 0
  %2201 = lshr i32 %2198, 16
  %2202 = and i32 %2198, 65535
  %2203 = select i1 %2200, i32 %2201, i32 %2202
  %2204 = icmp eq i32 %2203, 65535
  br i1 %2204, label %2284, label %2205

; <label>:2205                                    ; preds = %2194
  %2206 = mul nuw nsw i32 %2203, 40
  %2207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = add nuw nsw i32 %2206, 12
  %2212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.ResRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.ResRet.f32 %2212, 2
  %2216 = add nuw nsw i32 %2206, 24
  %2217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = add nuw nsw i32 %2206, 36
  %2222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = fsub fast float %2187, %2208
  %2225 = fsub fast float %2188, %2209
  %2226 = fsub fast float %2189, %2210
  %2227 = fmul fast float %2223, %2224
  %2228 = fmul fast float %2223, %2225
  %2229 = fmul fast float %2223, %2226
  %2230 = call float @dx.op.unary.f32(i32 27, float %2227)  ; Round_ni(value)
  %2231 = call float @dx.op.unary.f32(i32 27, float %2228)  ; Round_ni(value)
  %2232 = call float @dx.op.unary.f32(i32 27, float %2229)  ; Round_ni(value)
  %2233 = fadd fast float %2230, 5.000000e-01
  %2234 = fadd fast float %2231, 5.000000e-01
  %2235 = fadd fast float %2232, 5.000000e-01
  %2236 = fmul fast float %2233, %2213
  %2237 = fmul fast float %2234, %2214
  %2238 = fmul fast float %2235, %2215
  %2239 = shl i32 %61, 2
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %2241, 0
  %2243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2244 = call float @dx.op.unary.f32(i32 22, float %2236)  ; Frc(value)
  %2245 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2246 = call float @dx.op.unary.f32(i32 22, float %2238)  ; Frc(value)
  %2247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2243, %dx.types.Handle %55, float %2244, float %2245, float %2246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.ResRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.ResRet.f32 %2247, 2
  %2251 = fmul fast float %2248, 1.023000e+03
  %2252 = fmul fast float %2249, 1.023000e+03
  %2253 = fmul fast float %2250, 1.023000e+03
  %2254 = fadd fast float %2251, 5.000000e-01
  %2255 = fadd fast float %2252, 5.000000e-01
  %2256 = fadd fast float %2253, 5.000000e-01
  %2257 = call float @dx.op.unary.f32(i32 27, float %2254)  ; Round_ni(value)
  %2258 = call float @dx.op.unary.f32(i32 27, float %2255)  ; Round_ni(value)
  %2259 = call float @dx.op.unary.f32(i32 27, float %2256)  ; Round_ni(value)
  %2260 = fsub fast float %2227, %2230
  %2261 = fsub fast float %2228, %2231
  %2262 = fsub fast float %2229, %2232
  %2263 = fmul fast float %2260, 7.500000e-01
  %2264 = fmul fast float %2261, 7.500000e-01
  %2265 = fmul fast float %2262, 7.500000e-01
  %2266 = fadd fast float %2230, 1.250000e-01
  %2267 = fadd fast float %2266, %2263
  %2268 = fadd fast float %2267, %2257
  %2269 = fadd fast float %2231, 1.250000e-01
  %2270 = fadd fast float %2269, %2264
  %2271 = fadd fast float %2270, %2258
  %2272 = fadd fast float %2232, 1.250000e-01
  %2273 = fadd fast float %2272, %2265
  %2274 = fadd fast float %2273, %2259
  %2275 = fmul fast float %2268, %2218
  %2276 = fmul fast float %2271, %2219
  %2277 = fmul fast float %2274, %2220
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = add i32 %2279, 0
  %2281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2281, %dx.types.Handle %53, float %2275, float %2276, float %2277, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  br label %2284

; <label>:2284                                    ; preds = %2205, %2194
  %2285 = phi float [ %2283, %2205 ], [ -1.000000e+00, %2194 ]
  %2286 = fadd fast float %2285, %2192
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  br label %2288

; <label>:2288                                    ; preds = %2284, %2182
  %2289 = phi float [ %2287, %2284 ], [ %2192, %2182 ]
  %2290 = fmul fast float %2289, %469
  br label %2291

; <label>:2291                                    ; preds = %2288, %2177
  %2292 = phi float [ %2290, %2288 ], [ %469, %2177 ]
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 256
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2343, label %2297

; <label>:2297                                    ; preds = %2291
  %2298 = add i32 %60, 480
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %103, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = add i32 %60, 132
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = shl i32 %2307, 4
  %2309 = and i32 %2308, 32752
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = lshr i32 %2307, 7
  %2312 = and i32 %2311, 32752
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = fsub fast float 1.000000e+00, %2292
  %2315 = call float @dx.op.binary.f32(i32 35, float %2314, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2316 = bitcast float %2292 to i32
  %2317 = sitofp i32 %2316 to float
  %2318 = fadd fast float %2317, 0xC1CFBF8940000000
  %2319 = fmul fast float %2313, %2318
  %2320 = fadd fast float %2319, 0x41CFBF8940000000
  %2321 = fptosi float %2320 to i32
  %2322 = bitcast i32 %2321 to float
  %2323 = bitcast float %2315 to i32
  %2324 = sitofp i32 %2323 to float
  %2325 = fadd fast float %2324, 0xC1CFBF8940000000
  %2326 = fmul fast float %2325, %2313
  %2327 = fadd fast float %2326, 0x41CFBF8940000000
  %2328 = fptosi float %2327 to i32
  %2329 = bitcast i32 %2328 to float
  %2330 = fmul fast float %2322, %2310
  %2331 = fmul fast float %2329, %2310
  %2332 = fsub fast float %2315, %2330
  %2333 = fadd fast float %2331, %2315
  %2334 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2335 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2336 = fsub fast float %2304, %2334
  %2337 = fsub fast float %2335, %2334
  %2338 = bitcast float %2337 to i32
  %2339 = sub nsw i32 2129859010, %2338
  %2340 = bitcast i32 %2339 to float
  %2341 = fmul fast float %2340, %2336
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  br label %2343

; <label>:2343                                    ; preds = %2297, %2291
  %2344 = phi float [ %2342, %2297 ], [ %2292, %2291 ]
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 128
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2365, label %2349

; <label>:2349                                    ; preds = %2343
  %2350 = add i32 %60, 464
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %2352, 0
  %2354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2354, %dx.types.Handle %103, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 524288
  %2360 = icmp ne i32 %2359, 0
  %2361 = fcmp fast ogt float %2356, 0x3FE0101020000000
  %2362 = select i1 %2361, float 1.000000e+00, float 0.000000e+00
  %2363 = select i1 %2360, float %2362, float %2356
  %2364 = fmul fast float %2363, %2344
  br label %2365

; <label>:2365                                    ; preds = %2349, %2343
  %2366 = phi float [ %2364, %2349 ], [ %2344, %2343 ]
  %2367 = fcmp fast ult float %2366, 0x3F70101020000000
  br i1 %2367, label %2949, label %2368

; <label>:2368                                    ; preds = %2365
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 16
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2571, label %2373

; <label>:2373                                    ; preds = %2368
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = add i32 %60, 416
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = add i32 %2378, 0
  %2380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2380, %dx.types.Handle %102, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = extractvalue %dx.types.ResRet.f32 %2381, 3
  %2386 = and i32 %2375, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = lshr i32 %2375, 8
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2385, %2387
  %2392 = fadd fast float %2391, %2390
  %2393 = fmul fast float %2392, 0x3F70101000000000
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 512
  %2397 = icmp eq i32 %2396, 0
  br i1 %2397, label %2406, label %2398

; <label>:2398                                    ; preds = %2373
  %2399 = add i32 %60, 500
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %2401, 0
  %2403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2403, %dx.types.Handle %103, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  br label %2406

; <label>:2406                                    ; preds = %2398, %2373
  %2407 = phi float [ %2405, %2398 ], [ 1.000000e+00, %2373 ]
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 33554432
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2518, label %2412

; <label>:2412                                    ; preds = %2406
  %2413 = add i32 %60, 256
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 65535
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = lshr i32 %2415, 16
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = add i32 %60, 260
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 65535
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = lshr i32 %2426, 24
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, 0x3F70101020000000
  %2430 = and i32 %2426, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101020000000
  %2433 = lshr i32 %2426, 8
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101020000000
  %2437 = lshr i32 %2426, 16
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = add i32 %60, 252
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = lshr i32 %2443, 24
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101020000000
  %2447 = and i32 %2443, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3F70101020000000
  %2450 = lshr i32 %2443, 8
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = fmul fast float %2452, 0x3F70101020000000
  %2454 = lshr i32 %2443, 16
  %2455 = and i32 %2454, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = fmul fast float %2456, 0x3F70101020000000
  %2458 = bitcast float %2382 to i32
  %2459 = ashr i32 %2458, 1
  %2460 = sub nsw i32 1597463174, %2459
  %2461 = bitcast i32 %2460 to float
  %2462 = fmul fast float %2382, 5.000000e-01
  %2463 = fmul fast float %2461, %2461
  %2464 = fmul fast float %2463, %2462
  %2465 = fsub fast float 1.500000e+00, %2464
  %2466 = fmul fast float %2461, %2382
  %2467 = fmul fast float %2466, %2465
  %2468 = bitcast float %2383 to i32
  %2469 = ashr i32 %2468, 1
  %2470 = sub nsw i32 1597463174, %2469
  %2471 = bitcast i32 %2470 to float
  %2472 = fmul fast float %2383, 5.000000e-01
  %2473 = fmul fast float %2471, %2471
  %2474 = fmul fast float %2473, %2472
  %2475 = fsub fast float 1.500000e+00, %2474
  %2476 = fmul fast float %2471, %2383
  %2477 = fmul fast float %2476, %2475
  %2478 = bitcast float %2384 to i32
  %2479 = ashr i32 %2478, 1
  %2480 = sub nsw i32 1597463174, %2479
  %2481 = bitcast i32 %2480 to float
  %2482 = fmul fast float %2384, 5.000000e-01
  %2483 = fmul fast float %2481, %2481
  %2484 = fmul fast float %2483, %2482
  %2485 = fsub fast float 1.500000e+00, %2484
  %2486 = fmul fast float %2481, %2384
  %2487 = fmul fast float %2486, %2485
  %2488 = fsub fast float %2467, %2449
  %2489 = fsub fast float %2477, %2453
  %2490 = fsub fast float %2487, %2457
  %2491 = fmul fast float %2488, %2417
  %2492 = fmul fast float %2489, %2419
  %2493 = fmul fast float %2490, %2424
  %2494 = fadd fast float %2491, %2432
  %2495 = fadd fast float %2492, %2436
  %2496 = fadd fast float %2493, %2440
  %2497 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2498 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2499 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2500 = fmul fast float %2497, %2497
  %2501 = fmul fast float %2498, %2498
  %2502 = fmul fast float %2499, %2499
  %2503 = fsub fast float %2500, %2382
  %2504 = fsub fast float %2501, %2383
  %2505 = fsub fast float %2502, %2384
  %2506 = fmul fast float %2503, %2407
  %2507 = fmul fast float %2504, %2407
  %2508 = fmul fast float %2505, %2407
  %2509 = fadd fast float %2506, %2382
  %2510 = fadd fast float %2507, %2383
  %2511 = fadd fast float %2508, %2384
  %2512 = fadd fast float %2429, %2393
  %2513 = fsub fast float %2512, %2446
  %2514 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2515 = fsub fast float %2514, %2393
  %2516 = fmul fast float %2515, %2407
  %2517 = fadd fast float %2516, %2393
  br label %2571

; <label>:2518                                    ; preds = %2406
  %2519 = and i32 %2409, 134217728
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2555, label %2521

; <label>:2521                                    ; preds = %2518
  %2522 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2523 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2525 = fadd fast float %2522, -5.000000e-01
  %2526 = fadd fast float %2523, -5.000000e-01
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fmul fast float %2525, %2407
  %2529 = fmul fast float %2526, %2407
  %2530 = fmul fast float %2527, %2407
  %2531 = fadd fast float %2528, 5.000000e-01
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = call float @dx.op.unary.f32(i32 24, float %2382)  ; Sqrt(value)
  %2535 = call float @dx.op.unary.f32(i32 24, float %2383)  ; Sqrt(value)
  %2536 = call float @dx.op.unary.f32(i32 24, float %2384)  ; Sqrt(value)
  %2537 = fmul fast float %2531, 2.000000e+00
  %2538 = fsub fast float 1.000000e+00, %2537
  %2539 = fmul fast float %2538, %2534
  %2540 = fadd fast float %2539, %2537
  %2541 = fmul fast float %2540, %2534
  %2542 = fmul fast float %2532, 2.000000e+00
  %2543 = fsub fast float 1.000000e+00, %2542
  %2544 = fmul fast float %2543, %2535
  %2545 = fadd fast float %2544, %2542
  %2546 = fmul fast float %2545, %2535
  %2547 = fmul fast float %2533, 2.000000e+00
  %2548 = fsub fast float 1.000000e+00, %2547
  %2549 = fmul fast float %2548, %2536
  %2550 = fadd fast float %2549, %2547
  %2551 = fmul fast float %2550, %2536
  %2552 = fmul fast float %2541, %2541
  %2553 = fmul fast float %2546, %2546
  %2554 = fmul fast float %2551, %2551
  br label %2571

; <label>:2555                                    ; preds = %2518
  %2556 = fmul fast float %344, %344
  %2557 = fmul fast float %348, %348
  %2558 = fmul fast float %352, %352
  %2559 = fadd fast float %2556, -1.000000e+00
  %2560 = fadd fast float %2557, -1.000000e+00
  %2561 = fadd fast float %2558, -1.000000e+00
  %2562 = fmul fast float %2407, %2559
  %2563 = fmul fast float %2407, %2560
  %2564 = fmul fast float %2407, %2561
  %2565 = fadd fast float %2562, 1.000000e+00
  %2566 = fadd fast float %2563, 1.000000e+00
  %2567 = fadd fast float %2564, 1.000000e+00
  %2568 = fmul fast float %2565, %2382
  %2569 = fmul fast float %2566, %2383
  %2570 = fmul fast float %2567, %2384
  br label %2571

; <label>:2571                                    ; preds = %2555, %2521, %2412, %2368
  %2572 = phi float [ %2517, %2412 ], [ %2393, %2521 ], [ %2393, %2555 ], [ 0x3FA23C0BE0000000, %2368 ]
  %2573 = phi float [ %2509, %2412 ], [ %2552, %2521 ], [ %2568, %2555 ], [ 1.000000e+00, %2368 ]
  %2574 = phi float [ %2510, %2412 ], [ %2553, %2521 ], [ %2569, %2555 ], [ 1.000000e+00, %2368 ]
  %2575 = phi float [ %2511, %2412 ], [ %2554, %2521 ], [ %2570, %2555 ], [ 1.000000e+00, %2368 ]
  %2576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.i32 %2576, 1
  %2578 = and i32 %2577, 1
  %2579 = icmp ne i32 %2578, 0
  %2580 = add i32 %60, 356
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 32
  %2584 = icmp ne i32 %2583, 0
  %2585 = and i1 %2579, %2584
  %2586 = select i1 %2585, float 1.000000e+00, float %2573
  %2587 = select i1 %2585, float 0x3FD3333340000000, float %2574
  %2588 = select i1 %2585, float 0x3FD3333340000000, float %2575
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 32
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2665, label %2593

; <label>:2593                                    ; preds = %2571
  %2594 = add i32 %60, 124
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = add i32 %60, 432
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = add i32 %2599, 0
  %2601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2601, %dx.types.Handle %102, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2606 = extractvalue %dx.types.ResRet.f32 %2602, 3
  %2607 = and i32 %2596, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = lshr i32 %2596, 8
  %2610 = and i32 %2609, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = lshr i32 %2596, 16
  %2613 = and i32 %2612, 255
  %2614 = uitofp i32 %2613 to float
  %2615 = fmul fast float %2614, 0x3F70101000000000
  %2616 = fmul fast float %2603, %2608
  %2617 = fadd fast float %2616, %2611
  %2618 = fmul fast float %2617, 0x3F70101000000000
  %2619 = fadd fast float %2604, -5.000000e-01
  %2620 = fadd fast float %2606, -5.000000e-01
  %2621 = fmul fast float %2619, %2615
  %2622 = fmul fast float %2620, %2615
  %2623 = fadd fast float %2621, 5.000000e-01
  %2624 = fadd fast float %2622, 5.000000e-01
  %2625 = fmul fast float %2623, 2.000000e+00
  %2626 = fadd fast float %2625, -1.000000e+00
  %2627 = fmul fast float %2624, 2.000000e+00
  %2628 = fadd fast float %2627, -1.000000e+00
  %2629 = fadd fast float %2626, %2628
  %2630 = fmul fast float %2629, 5.000000e-01
  %2631 = fsub fast float %2626, %2628
  %2632 = fmul fast float %2631, 5.000000e-01
  %2633 = call float @dx.op.unary.f32(i32 6, float %2630)  ; FAbs(value)
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = call float @dx.op.unary.f32(i32 6, float %2632)  ; FAbs(value)
  %2636 = fsub fast float %2634, %2635
  %2637 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2632, float %2636, float %2630, float %2632, float %2636)  ; Dot3(ax,ay,az,bx,by,bz)
  %2638 = call float @dx.op.unary.f32(i32 25, float %2637)  ; Rsqrt(value)
  %2639 = fmul fast float %2630, %2638
  %2640 = fmul fast float %2632, %2638
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 67108864
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2661, label %2645

; <label>:2645                                    ; preds = %2593
  %2646 = add i32 %60, 312
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 65535
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 65535
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = lshr i32 %2648, 16
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = fsub fast float %2618, %2656
  %2658 = fmul fast float %2657, %2650
  %2659 = fadd fast float %2658, %2654
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  br label %2661

; <label>:2661                                    ; preds = %2645, %2593
  %2662 = phi float [ %2660, %2645 ], [ %2618, %2593 ]
  %2663 = call float @dx.op.dot2.f32(i32 54, float %2639, float %2640, float %2082, float %2083)  ; Dot2(ax,ay,bx,by)
  %2664 = call float @dx.op.dot2.f32(i32 54, float %2639, float %2640, float %2084, float %2085)  ; Dot2(ax,ay,bx,by)
  br label %2665

; <label>:2665                                    ; preds = %2661, %2571
  %2666 = phi float [ %2662, %2661 ], [ 0x3FD6666660000000, %2571 ]
  %2667 = phi float [ %2663, %2661 ], [ 0.000000e+00, %2571 ]
  %2668 = phi float [ %2664, %2661 ], [ 0.000000e+00, %2571 ]
  %2669 = phi float [ %2605, %2661 ], [ 1.000000e+00, %2571 ]
  %2670 = add i32 %60, 192
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 22
  %2674 = shl nuw nsw i32 %2673, 5
  %2675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2674)  ; LegacyF16ToF32(value)
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = and i32 %2677, 64
  %2679 = icmp eq i32 %2678, 0
  br i1 %2679, label %2713, label %2680

; <label>:2680                                    ; preds = %2665
  %2681 = add i32 %60, 448
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = add i32 %2683, 0
  %2685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 131072
  %2689 = icmp eq i32 %2688, 0
  %2690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2685, %dx.types.Handle %102, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.ResRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.ResRet.f32 %2690, 2
  %2694 = fmul fast float %2691, %332
  %2695 = fmul fast float %2692, %335
  %2696 = fmul fast float %2693, %338
  br i1 %2689, label %2703, label %2697

; <label>:2697                                    ; preds = %2680
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = fmul fast float %2699, %2694
  %2701 = fmul fast float %2699, %2695
  %2702 = fmul fast float %2699, %2696
  br label %2703

; <label>:2703                                    ; preds = %2697, %2680
  %2704 = phi float [ %2700, %2697 ], [ %2694, %2680 ]
  %2705 = phi float [ %2701, %2697 ], [ %2695, %2680 ]
  %2706 = phi float [ %2702, %2697 ], [ %2696, %2680 ]
  %2707 = fmul fast float %2704, %2675
  %2708 = select i1 %231, float %2707, float %2704
  %2709 = call float @dx.op.dot3.f32(i32 55, float %2708, float %2705, float %2706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2710 = select i1 %231, float 0.000000e+00, float %2704
  %2711 = select i1 %231, float %2709, float %2705
  %2712 = select i1 %231, float 0.000000e+00, float %2706
  br label %2713

; <label>:2713                                    ; preds = %2703, %2665
  %2714 = phi float [ %2710, %2703 ], [ 0.000000e+00, %2665 ]
  %2715 = phi float [ %2711, %2703 ], [ 0.000000e+00, %2665 ]
  %2716 = phi float [ %2712, %2703 ], [ 0.000000e+00, %2665 ]
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 26624
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2744, label %2721

; <label>:2721                                    ; preds = %2713
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 16384
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2744, label %2726

; <label>:2726                                    ; preds = %2721
  %2727 = and i32 %2723, 1048576
  %2728 = icmp ne i32 %2727, 0
  %2729 = add i32 %60, 516
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %2731, 0
  %2733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2733, %dx.types.Handle %103, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = add i32 %60, 128
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 24
  %2740 = uitofp i32 %2739 to float
  %2741 = fmul fast float %2735, 0x3F70101020000000
  %2742 = select i1 %2728, float 0x3F70101020000000, float %2741
  %2743 = fmul fast float %2742, %2740
  br label %2744

; <label>:2744                                    ; preds = %2726, %2721, %2713
  %2745 = phi float [ %2743, %2726 ], [ 0.000000e+00, %2721 ], [ 0.000000e+00, %2713 ]
  %2746 = add i32 %60, 128
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 255
  %2750 = uitofp i32 %2749 to float
  %2751 = lshr i32 %2748, 8
  %2752 = and i32 %2751, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2755 = fmul fast float %2753, %2754
  %2756 = fadd fast float %2755, %2750
  %2757 = fmul fast float %2756, 0x3F70101020000000
  %2758 = call float @dx.op.unary.f32(i32 7, float %2757)  ; Saturate(value)
  br i1 %2070, label %2759, label %2767

; <label>:2759                                    ; preds = %2744
  %2760 = fsub fast float 1.000000e+00, %2366
  %2761 = fmul fast float %2760, %2058
  %2762 = fmul fast float %2760, %2059
  %2763 = fmul fast float %2760, %2060
  %2764 = fmul fast float %2760, %2061
  %2765 = fmul fast float %2760, %2062
  %2766 = fmul fast float %2760, %2063
  br label %2767

; <label>:2767                                    ; preds = %2759, %2744
  %2768 = phi float [ %2761, %2759 ], [ %2058, %2744 ]
  %2769 = phi float [ %2762, %2759 ], [ %2059, %2744 ]
  %2770 = phi float [ %2763, %2759 ], [ %2060, %2744 ]
  %2771 = phi float [ %2764, %2759 ], [ %2061, %2744 ]
  %2772 = phi float [ %2765, %2759 ], [ %2062, %2744 ]
  %2773 = phi float [ %2766, %2759 ], [ %2063, %2744 ]
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 3
  %2777 = icmp eq i32 %2776, 3
  br i1 %2777, label %2856, label %2778

; <label>:2778                                    ; preds = %2767
  %2779 = and i32 %2775, 16
  %2780 = icmp ne i32 %2779, 0
  %2781 = select i1 %2780, float %2366, float 0.000000e+00
  %2782 = icmp eq i32 %2776, 0
  br i1 %2782, label %2783, label %2811

; <label>:2783                                    ; preds = %2778
  %2784 = and i32 %2775, 64
  %2785 = icmp ne i32 %2784, 0
  %2786 = select i1 %2785, float %2366, float 0.000000e+00
  %2787 = fsub fast float %2586, %2768
  %2788 = fsub fast float %2587, %2769
  %2789 = fsub fast float %2588, %2770
  %2790 = fmul fast float %2781, %2787
  %2791 = fmul fast float %2781, %2788
  %2792 = fmul fast float %2781, %2789
  %2793 = fadd fast float %2790, %2768
  %2794 = fadd fast float %2791, %2769
  %2795 = fadd fast float %2792, %2770
  %2796 = fsub fast float %2572, %2064
  %2797 = fmul fast float %2781, %2796
  %2798 = fadd fast float %2797, %2064
  %2799 = fsub fast float %2714, %2771
  %2800 = fsub fast float %2715, %2772
  %2801 = fsub fast float %2716, %2773
  %2802 = fmul fast float %2786, %2799
  %2803 = fmul fast float %2786, %2800
  %2804 = fmul fast float %2786, %2801
  %2805 = fadd fast float %2802, %2771
  %2806 = fadd fast float %2803, %2772
  %2807 = fadd fast float %2804, %2773
  %2808 = fsub fast float %2758, %2068
  %2809 = fmul fast float %2781, %2808
  %2810 = fadd fast float %2809, %2068
  br label %2856

; <label>:2811                                    ; preds = %2778
  %2812 = icmp eq i32 %2776, 1
  br i1 %2812, label %2813, label %2826

; <label>:2813                                    ; preds = %2811
  %2814 = fadd fast float %2586, -1.000000e+00
  %2815 = fadd fast float %2587, -1.000000e+00
  %2816 = fadd fast float %2588, -1.000000e+00
  %2817 = fmul fast float %2781, %2814
  %2818 = fmul fast float %2781, %2815
  %2819 = fmul fast float %2781, %2816
  %2820 = fadd fast float %2817, 1.000000e+00
  %2821 = fadd fast float %2818, 1.000000e+00
  %2822 = fadd fast float %2819, 1.000000e+00
  %2823 = fmul fast float %2820, %2768
  %2824 = fmul fast float %2821, %2769
  %2825 = fmul fast float %2822, %2770
  br label %2856

; <label>:2826                                    ; preds = %2811
  %2827 = icmp eq i32 %2776, 2
  br i1 %2827, label %2828, label %2856

; <label>:2828                                    ; preds = %2826
  %2829 = call float @dx.op.unary.f32(i32 24, float %2586)  ; Sqrt(value)
  %2830 = call float @dx.op.unary.f32(i32 24, float %2587)  ; Sqrt(value)
  %2831 = call float @dx.op.unary.f32(i32 24, float %2588)  ; Sqrt(value)
  %2832 = fadd fast float %2829, -5.000000e-01
  %2833 = fadd fast float %2830, -5.000000e-01
  %2834 = fadd fast float %2831, -5.000000e-01
  %2835 = fmul fast float %2832, %2781
  %2836 = fmul fast float %2833, %2781
  %2837 = fmul fast float %2834, %2781
  %2838 = fadd fast float %2835, 5.000000e-01
  %2839 = fadd fast float %2836, 5.000000e-01
  %2840 = fadd fast float %2837, 5.000000e-01
  %2841 = fmul fast float %2838, 2.000000e+00
  %2842 = fsub fast float 1.000000e+00, %2841
  %2843 = fmul fast float %2842, %2768
  %2844 = fadd fast float %2843, %2841
  %2845 = fmul fast float %2844, %2768
  %2846 = fmul fast float %2839, 2.000000e+00
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = fmul fast float %2847, %2769
  %2849 = fadd fast float %2848, %2846
  %2850 = fmul fast float %2849, %2769
  %2851 = fmul fast float %2840, 2.000000e+00
  %2852 = fsub fast float 1.000000e+00, %2851
  %2853 = fmul fast float %2852, %2770
  %2854 = fadd fast float %2853, %2851
  %2855 = fmul fast float %2854, %2770
  br label %2856

; <label>:2856                                    ; preds = %2828, %2826, %2813, %2783, %2767
  %2857 = phi float [ %2768, %2767 ], [ %2845, %2828 ], [ %2768, %2826 ], [ %2823, %2813 ], [ %2793, %2783 ]
  %2858 = phi float [ %2769, %2767 ], [ %2850, %2828 ], [ %2769, %2826 ], [ %2824, %2813 ], [ %2794, %2783 ]
  %2859 = phi float [ %2770, %2767 ], [ %2855, %2828 ], [ %2770, %2826 ], [ %2825, %2813 ], [ %2795, %2783 ]
  %2860 = phi float [ %2771, %2767 ], [ %2771, %2828 ], [ %2771, %2826 ], [ %2771, %2813 ], [ %2805, %2783 ]
  %2861 = phi float [ %2772, %2767 ], [ %2772, %2828 ], [ %2772, %2826 ], [ %2772, %2813 ], [ %2806, %2783 ]
  %2862 = phi float [ %2773, %2767 ], [ %2773, %2828 ], [ %2773, %2826 ], [ %2773, %2813 ], [ %2807, %2783 ]
  %2863 = phi float [ %2064, %2767 ], [ %2064, %2828 ], [ %2064, %2826 ], [ %2064, %2813 ], [ %2798, %2783 ]
  %2864 = phi float [ %2068, %2767 ], [ %2068, %2828 ], [ %2068, %2826 ], [ %2068, %2813 ], [ %2810, %2783 ]
  %2865 = and i32 %2775, 12
  %2866 = icmp eq i32 %2865, 12
  br i1 %2866, label %2949, label %2867

; <label>:2867                                    ; preds = %2856
  %2868 = and i32 %2775, 2097184
  %2869 = icmp eq i32 %2868, 2097184
  %2870 = select i1 %2869, float %2366, float 0.000000e+00
  %2871 = and i32 %2775, 4194336
  %2872 = icmp eq i32 %2871, 4194336
  %2873 = select i1 %2872, float %2366, float 0.000000e+00
  %2874 = and i32 %2775, 8388640
  %2875 = icmp eq i32 %2874, 8388640
  %2876 = select i1 %2875, float %2366, float 0.000000e+00
  %2877 = and i32 %2775, 16384
  %2878 = icmp ne i32 %2877, 0
  %2879 = select i1 %2878, float %2366, float 0.000000e+00
  %2880 = icmp eq i32 %2865, 0
  br i1 %2880, label %2881, label %2897

; <label>:2881                                    ; preds = %2867
  %2882 = fsub fast float %2667, %2056
  %2883 = fsub fast float %2668, %2057
  %2884 = fmul fast float %2870, %2882
  %2885 = fmul fast float %2870, %2883
  %2886 = fadd fast float %2884, %2056
  %2887 = fadd fast float %2885, %2057
  %2888 = fsub fast float %2669, %2066
  %2889 = fmul fast float %2873, %2888
  %2890 = fadd fast float %2889, %2066
  %2891 = fsub fast float %2666, %2065
  %2892 = fmul fast float %2876, %2891
  %2893 = fadd fast float %2892, %2065
  %2894 = fsub fast float %2745, %2067
  %2895 = fmul fast float %2879, %2894
  %2896 = fadd fast float %2895, %2067
  br label %2949

; <label>:2897                                    ; preds = %2867
  %2898 = icmp eq i32 %2865, 4
  br i1 %2898, label %2899, label %2933

; <label>:2899                                    ; preds = %2897
  %2900 = fmul fast float %2870, %2667
  %2901 = fmul fast float %2870, %2668
  %2902 = fadd fast float %2900, %2056
  %2903 = fadd fast float %2901, %2057
  %2904 = call float @dx.op.binary.f32(i32 36, float %2066, float %2669)  ; FMin(a,b)
  %2905 = fsub fast float %2904, %2066
  %2906 = fmul fast float %2905, %2873
  %2907 = fadd fast float %2906, %2066
  %2908 = fadd fast float %2666, %2065
  %2909 = fmul fast float %2908, 0x3FF337FAE0000000
  %2910 = fmul fast float %2065, %2065
  %2911 = fmul fast float %2666, %2666
  %2912 = fadd fast float %2911, %2910
  %2913 = fmul fast float %2912, 0x3FE5152B00000000
  %2914 = fmul fast float %2065, 0xBFCC1F85E0000000
  %2915 = fmul fast float %2914, %2666
  %2916 = fadd fast float %2915, 0xBFE1363700000000
  %2917 = fadd fast float %2916, %2909
  %2918 = fsub fast float %2917, %2913
  %2919 = fmul fast float %2908, 0x3FBA6F0D00000000
  %2920 = fmul fast float %2912, 0x3FD0432880000000
  %2921 = fmul fast float %2065, 0xBFEF110800000000
  %2922 = fmul fast float %2921, %2666
  %2923 = fadd fast float %2922, 1.000000e+00
  %2924 = fsub fast float %2923, %2919
  %2925 = fadd fast float %2924, %2920
  %2926 = fdiv fast float %2918, %2925
  %2927 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2928 = fsub fast float %2927, %2065
  %2929 = fmul fast float %2928, %2876
  %2930 = fadd fast float %2929, %2065
  %2931 = fmul fast float %2879, %2745
  %2932 = fadd fast float %2931, %2067
  br label %2949

; <label>:2933                                    ; preds = %2897
  %2934 = icmp eq i32 %2865, 8
  br i1 %2934, label %2935, label %2949

; <label>:2935                                    ; preds = %2933
  %2936 = fmul fast float %2870, %2667
  %2937 = fmul fast float %2870, %2668
  %2938 = fadd fast float %2936, %2056
  %2939 = fadd fast float %2937, %2057
  %2940 = call float @dx.op.binary.f32(i32 36, float %2066, float %2669)  ; FMin(a,b)
  %2941 = fsub fast float %2940, %2066
  %2942 = fmul fast float %2941, %2873
  %2943 = fadd fast float %2942, %2066
  %2944 = fsub fast float %2666, %2065
  %2945 = fmul fast float %2876, %2944
  %2946 = fadd fast float %2945, %2065
  %2947 = fmul fast float %2879, %2745
  %2948 = fadd fast float %2947, %2067
  br label %2949

; <label>:2949                                    ; preds = %2935, %2933, %2899, %2881, %2856, %2365, %2069, %2055
  %2950 = phi float [ %2056, %2856 ], [ %2056, %2365 ], [ %2056, %2055 ], [ %2938, %2935 ], [ %2056, %2933 ], [ %2902, %2899 ], [ %2886, %2881 ], [ %2056, %2069 ]
  %2951 = phi float [ %2057, %2856 ], [ %2057, %2365 ], [ %2057, %2055 ], [ %2939, %2935 ], [ %2057, %2933 ], [ %2903, %2899 ], [ %2887, %2881 ], [ %2057, %2069 ]
  %2952 = phi float [ %2857, %2856 ], [ %2058, %2365 ], [ %2058, %2055 ], [ %2857, %2935 ], [ %2857, %2933 ], [ %2857, %2899 ], [ %2857, %2881 ], [ %2058, %2069 ]
  %2953 = phi float [ %2858, %2856 ], [ %2059, %2365 ], [ %2059, %2055 ], [ %2858, %2935 ], [ %2858, %2933 ], [ %2858, %2899 ], [ %2858, %2881 ], [ %2059, %2069 ]
  %2954 = phi float [ %2859, %2856 ], [ %2060, %2365 ], [ %2060, %2055 ], [ %2859, %2935 ], [ %2859, %2933 ], [ %2859, %2899 ], [ %2859, %2881 ], [ %2060, %2069 ]
  %2955 = phi float [ %2860, %2856 ], [ %2061, %2365 ], [ %2061, %2055 ], [ %2860, %2935 ], [ %2860, %2933 ], [ %2860, %2899 ], [ %2860, %2881 ], [ %2061, %2069 ]
  %2956 = phi float [ %2861, %2856 ], [ %2062, %2365 ], [ %2062, %2055 ], [ %2861, %2935 ], [ %2861, %2933 ], [ %2861, %2899 ], [ %2861, %2881 ], [ %2062, %2069 ]
  %2957 = phi float [ %2862, %2856 ], [ %2063, %2365 ], [ %2063, %2055 ], [ %2862, %2935 ], [ %2862, %2933 ], [ %2862, %2899 ], [ %2862, %2881 ], [ %2063, %2069 ]
  %2958 = phi float [ %2863, %2856 ], [ %2064, %2365 ], [ %2064, %2055 ], [ %2863, %2935 ], [ %2863, %2933 ], [ %2863, %2899 ], [ %2863, %2881 ], [ %2064, %2069 ]
  %2959 = phi float [ %2065, %2856 ], [ %2065, %2365 ], [ %2065, %2055 ], [ %2946, %2935 ], [ %2065, %2933 ], [ %2930, %2899 ], [ %2893, %2881 ], [ %2065, %2069 ]
  %2960 = phi float [ %2066, %2856 ], [ %2066, %2365 ], [ %2066, %2055 ], [ %2943, %2935 ], [ %2066, %2933 ], [ %2907, %2899 ], [ %2890, %2881 ], [ %2066, %2069 ]
  %2961 = phi float [ %2067, %2856 ], [ %2067, %2365 ], [ %2067, %2055 ], [ %2948, %2935 ], [ %2067, %2933 ], [ %2932, %2899 ], [ %2896, %2881 ], [ %2067, %2069 ]
  %2962 = phi float [ %2864, %2856 ], [ %2068, %2365 ], [ %2068, %2055 ], [ %2864, %2935 ], [ %2864, %2933 ], [ %2864, %2899 ], [ %2864, %2881 ], [ %2068, %2069 ]
  br i1 %419, label %3843, label %2963

; <label>:2963                                    ; preds = %2949
  %2964 = icmp ult i32 %473, 4
  %2965 = add i32 %60, 72
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %60, 76
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = or i32 %2970, %2967
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %3843, label %2973

; <label>:2973                                    ; preds = %2963
  %2974 = and i32 %2967, 262144
  %2975 = icmp ne i32 %2974, 0
  %2976 = select i1 %2975, float %64, float 1.000000e+00
  %2977 = select i1 %2975, float %65, float 0.000000e+00
  %2978 = select i1 %2975, float %66, float 0.000000e+00
  %2979 = select i1 %2975, float %67, float 1.000000e+00
  %2980 = select i1 %2975, float %68, float %85
  %2981 = select i1 %2975, float %69, float %86
  %2982 = add i32 %60, 332
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = lshr i32 %2984, 16
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = fmul fast float %2986, 0x3F50624DE0000000
  %2988 = add i32 %60, 136
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = lshr i32 %2990, 16
  %2992 = and i32 %2991, 255
  %2993 = lshr i32 %2990, 24
  %2994 = add i32 %60, 340
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 65535
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = lshr i32 %2996, 16
  %3000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2999)  ; LegacyF16ToF32(value)
  %3001 = add i32 %60, 80
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = lshr i32 %3003, 22
  %3005 = shl nuw nsw i32 %3004, 5
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = shl i32 %3003, 4
  %3008 = and i32 %3007, 32752
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = lshr i32 %3003, 7
  %3011 = and i32 %3010, 32752
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 3
  %3015 = fmul fast float %3014, 1.000000e+03
  %3016 = fmul fast float %409, %3015
  %3017 = call float @dx.op.unary.f32(i32 22, float %3016)  ; Frc(value)
  %3018 = fadd fast float %3017, %399
  %3019 = fmul fast float %410, %3015
  %3020 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3021 = fadd fast float %3020, %401
  %3022 = fmul fast float %2987, %3015
  %3023 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3024 = fmul fast float %3023, 0x401921FB60000000
  %3025 = fadd fast float %3024, %3006
  %3026 = call float @dx.op.unary.f32(i32 13, float %3025)  ; Sin(value)
  %3027 = call float @dx.op.unary.f32(i32 12, float %3025)  ; Cos(value)
  %3028 = fsub fast float -0.000000e+00, %3026
  %3029 = fadd fast float %2980, -5.000000e-01
  %3030 = fadd fast float %2981, -5.000000e-01
  %3031 = fmul fast float %2998, %3029
  %3032 = fmul fast float %3000, %3030
  %3033 = fadd fast float %3031, 5.000000e-01
  %3034 = fadd fast float %3032, 5.000000e-01
  %3035 = fmul fast float %3009, %3033
  %3036 = fmul fast float %3012, %3034
  %3037 = fmul fast float %3027, %3035
  %3038 = call float @dx.op.tertiary.f32(i32 46, float %3028, float %3036, float %3037)  ; FMad(a,b,c)
  %3039 = fmul fast float %3026, %3035
  %3040 = call float @dx.op.tertiary.f32(i32 46, float %3027, float %3036, float %3039)  ; FMad(a,b,c)
  %3041 = fadd fast float %3018, %3038
  %3042 = fadd fast float %3021, %3040
  %3043 = icmp ugt i32 %2992, 1
  %3044 = icmp ugt i32 %2990, 33554431
  %3045 = or i1 %3044, %3043
  br i1 %3045, label %3046, label %3071

; <label>:3046                                    ; preds = %2973
  %3047 = add i32 %60, 276
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = lshr i32 %3049, 16
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = fmul fast float %3014, %3051
  %3053 = call float @dx.op.unary.f32(i32 22, float %3052)  ; Frc(value)
  %3054 = mul nuw nsw i32 %2992, %2993
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3053, %3055
  %3057 = call float @dx.op.unary.f32(i32 27, float %3056)  ; Round_ni(value)
  %3058 = fptoui float %3057 to i32
  %3059 = urem i32 %3058, %2992
  %3060 = udiv i32 %3058, %2993
  %3061 = call float @dx.op.unary.f32(i32 22, float %3041)  ; Frc(value)
  %3062 = call float @dx.op.unary.f32(i32 22, float %3042)  ; Frc(value)
  %3063 = uitofp i32 %3059 to float
  %3064 = uitofp i32 %3060 to float
  %3065 = fadd fast float %3061, %3063
  %3066 = fadd fast float %3062, %3064
  %3067 = uitofp i32 %2992 to float
  %3068 = uitofp i32 %2993 to float
  %3069 = fdiv fast float %3065, %3067
  %3070 = fdiv fast float %3066, %3068
  br label %3071

; <label>:3071                                    ; preds = %3046, %2973
  %3072 = phi float [ %3069, %3046 ], [ %3041, %2973 ]
  %3073 = phi float [ %3070, %3046 ], [ %3042, %2973 ]
  %3074 = and i32 %2967, 16777216
  %3075 = icmp eq i32 %3074, 0
  br i1 %3075, label %3185, label %3076

; <label>:3076                                    ; preds = %3071
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3080 = extractvalue %dx.types.CBufRet.f32 %3077, 2
  %3081 = fadd fast float %3078, %169
  %3082 = fadd fast float %3079, %170
  %3083 = fadd fast float %3080, %171
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3087 = icmp eq i32 %61, 65535
  br i1 %3087, label %3182, label %3088

; <label>:3088                                    ; preds = %3076
  %3089 = lshr i32 %61, 1
  %3090 = shl i32 %3089, 2
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %61, 1
  %3094 = icmp ne i32 %3093, 0
  %3095 = lshr i32 %3092, 16
  %3096 = and i32 %3092, 65535
  %3097 = select i1 %3094, i32 %3095, i32 %3096
  %3098 = icmp eq i32 %3097, 65535
  br i1 %3098, label %3178, label %3099

; <label>:3099                                    ; preds = %3088
  %3100 = mul nuw nsw i32 %3097, 40
  %3101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.ResRet.f32 %3101, 1
  %3104 = extractvalue %dx.types.ResRet.f32 %3101, 2
  %3105 = add nuw nsw i32 %3100, 12
  %3106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 0
  %3108 = extractvalue %dx.types.ResRet.f32 %3106, 1
  %3109 = extractvalue %dx.types.ResRet.f32 %3106, 2
  %3110 = add nuw nsw i32 %3100, 24
  %3111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = add nuw nsw i32 %3100, 36
  %3116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.f32 %3116, 0
  %3118 = fsub fast float %3081, %3102
  %3119 = fsub fast float %3082, %3103
  %3120 = fsub fast float %3083, %3104
  %3121 = fmul fast float %3117, %3118
  %3122 = fmul fast float %3117, %3119
  %3123 = fmul fast float %3117, %3120
  %3124 = call float @dx.op.unary.f32(i32 27, float %3121)  ; Round_ni(value)
  %3125 = call float @dx.op.unary.f32(i32 27, float %3122)  ; Round_ni(value)
  %3126 = call float @dx.op.unary.f32(i32 27, float %3123)  ; Round_ni(value)
  %3127 = fadd fast float %3124, 5.000000e-01
  %3128 = fadd fast float %3125, 5.000000e-01
  %3129 = fadd fast float %3126, 5.000000e-01
  %3130 = fmul fast float %3127, %3107
  %3131 = fmul fast float %3128, %3108
  %3132 = fmul fast float %3129, %3109
  %3133 = shl i32 %61, 2
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call float @dx.op.unary.f32(i32 22, float %3130)  ; Frc(value)
  %3139 = call float @dx.op.unary.f32(i32 22, float %3131)  ; Frc(value)
  %3140 = call float @dx.op.unary.f32(i32 22, float %3132)  ; Frc(value)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3137, %dx.types.Handle %55, float %3138, float %3139, float %3140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  %3145 = fmul fast float %3142, 1.023000e+03
  %3146 = fmul fast float %3143, 1.023000e+03
  %3147 = fmul fast float %3144, 1.023000e+03
  %3148 = fadd fast float %3145, 5.000000e-01
  %3149 = fadd fast float %3146, 5.000000e-01
  %3150 = fadd fast float %3147, 5.000000e-01
  %3151 = call float @dx.op.unary.f32(i32 27, float %3148)  ; Round_ni(value)
  %3152 = call float @dx.op.unary.f32(i32 27, float %3149)  ; Round_ni(value)
  %3153 = call float @dx.op.unary.f32(i32 27, float %3150)  ; Round_ni(value)
  %3154 = fsub fast float %3121, %3124
  %3155 = fsub fast float %3122, %3125
  %3156 = fsub fast float %3123, %3126
  %3157 = fmul fast float %3154, 7.500000e-01
  %3158 = fmul fast float %3155, 7.500000e-01
  %3159 = fmul fast float %3156, 7.500000e-01
  %3160 = fadd fast float %3124, 1.250000e-01
  %3161 = fadd fast float %3160, %3157
  %3162 = fadd fast float %3161, %3151
  %3163 = fadd fast float %3125, 1.250000e-01
  %3164 = fadd fast float %3163, %3158
  %3165 = fadd fast float %3164, %3152
  %3166 = fadd fast float %3126, 1.250000e-01
  %3167 = fadd fast float %3166, %3159
  %3168 = fadd fast float %3167, %3153
  %3169 = fmul fast float %3162, %3112
  %3170 = fmul fast float %3165, %3113
  %3171 = fmul fast float %3168, %3114
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = add i32 %3173, 0
  %3175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3175, %dx.types.Handle %53, float %3169, float %3170, float %3171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3177 = extractvalue %dx.types.ResRet.f32 %3176, 0
  br label %3178

; <label>:3178                                    ; preds = %3099, %3088
  %3179 = phi float [ %3177, %3099 ], [ -1.000000e+00, %3088 ]
  %3180 = fadd fast float %3179, %3086
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  br label %3182

; <label>:3182                                    ; preds = %3178, %3076
  %3183 = phi float [ %3181, %3178 ], [ %3086, %3076 ]
  %3184 = fmul fast float %3183, %468
  br label %3185

; <label>:3185                                    ; preds = %3182, %3071
  %3186 = phi float [ %3184, %3182 ], [ %468, %3071 ]
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 256
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3237, label %3191

; <label>:3191                                    ; preds = %3185
  %3192 = add i32 %60, 484
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = add i32 %3194, 0
  %3196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3196, %dx.types.Handle %103, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = add i32 %60, 148
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = shl i32 %3201, 4
  %3203 = and i32 %3202, 32752
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = lshr i32 %3201, 7
  %3206 = and i32 %3205, 32752
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = fsub fast float 1.000000e+00, %3186
  %3209 = call float @dx.op.binary.f32(i32 35, float %3208, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3210 = bitcast float %3186 to i32
  %3211 = sitofp i32 %3210 to float
  %3212 = fadd fast float %3211, 0xC1CFBF8940000000
  %3213 = fmul fast float %3207, %3212
  %3214 = fadd fast float %3213, 0x41CFBF8940000000
  %3215 = fptosi float %3214 to i32
  %3216 = bitcast i32 %3215 to float
  %3217 = bitcast float %3209 to i32
  %3218 = sitofp i32 %3217 to float
  %3219 = fadd fast float %3218, 0xC1CFBF8940000000
  %3220 = fmul fast float %3219, %3207
  %3221 = fadd fast float %3220, 0x41CFBF8940000000
  %3222 = fptosi float %3221 to i32
  %3223 = bitcast i32 %3222 to float
  %3224 = fmul fast float %3216, %3204
  %3225 = fmul fast float %3223, %3204
  %3226 = fsub fast float %3209, %3224
  %3227 = fadd fast float %3225, %3209
  %3228 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3229 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3230 = fsub fast float %3198, %3228
  %3231 = fsub fast float %3229, %3228
  %3232 = bitcast float %3231 to i32
  %3233 = sub nsw i32 2129859010, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3234, %3230
  %3236 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  br label %3237

; <label>:3237                                    ; preds = %3191, %3185
  %3238 = phi float [ %3236, %3191 ], [ %3186, %3185 ]
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 128
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3259, label %3243

; <label>:3243                                    ; preds = %3237
  %3244 = add i32 %60, 468
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = add i32 %3246, 0
  %3248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3248, %dx.types.Handle %103, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = and i32 %3252, 524288
  %3254 = icmp ne i32 %3253, 0
  %3255 = fcmp fast ogt float %3250, 0x3FE0101020000000
  %3256 = select i1 %3255, float 1.000000e+00, float 0.000000e+00
  %3257 = select i1 %3254, float %3256, float %3250
  %3258 = fmul fast float %3257, %3238
  br label %3259

; <label>:3259                                    ; preds = %3243, %3237
  %3260 = phi float [ %3258, %3243 ], [ %3238, %3237 ]
  %3261 = fcmp fast ult float %3260, 0x3F70101020000000
  br i1 %3261, label %3843, label %3262

; <label>:3262                                    ; preds = %3259
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 16
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3465, label %3267

; <label>:3267                                    ; preds = %3262
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = add i32 %60, 420
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %3272, 0
  %3274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3274, %dx.types.Handle %102, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.ResRet.f32 %3275, 2
  %3279 = extractvalue %dx.types.ResRet.f32 %3275, 3
  %3280 = and i32 %3269, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = lshr i32 %3269, 8
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3279, %3281
  %3286 = fadd fast float %3285, %3284
  %3287 = fmul fast float %3286, 0x3F70101000000000
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = and i32 %3289, 512
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %3300, label %3292

; <label>:3292                                    ; preds = %3267
  %3293 = add i32 %60, 504
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = add i32 %3295, 0
  %3297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3297, %dx.types.Handle %103, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  br label %3300

; <label>:3300                                    ; preds = %3292, %3267
  %3301 = phi float [ %3299, %3292 ], [ 1.000000e+00, %3267 ]
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 33554432
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3412, label %3306

; <label>:3306                                    ; preds = %3300
  %3307 = add i32 %60, 272
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = and i32 %3309, 65535
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = lshr i32 %3309, 16
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = add i32 %60, 276
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 65535
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = lshr i32 %3320, 24
  %3322 = uitofp i32 %3321 to float
  %3323 = fmul fast float %3322, 0x3F70101020000000
  %3324 = and i32 %3320, 255
  %3325 = uitofp i32 %3324 to float
  %3326 = fmul fast float %3325, 0x3F70101020000000
  %3327 = lshr i32 %3320, 8
  %3328 = and i32 %3327, 255
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3329, 0x3F70101020000000
  %3331 = lshr i32 %3320, 16
  %3332 = and i32 %3331, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = fmul fast float %3333, 0x3F70101020000000
  %3335 = add i32 %60, 268
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = lshr i32 %3337, 24
  %3339 = uitofp i32 %3338 to float
  %3340 = fmul fast float %3339, 0x3F70101020000000
  %3341 = and i32 %3337, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101020000000
  %3344 = lshr i32 %3337, 8
  %3345 = and i32 %3344, 255
  %3346 = uitofp i32 %3345 to float
  %3347 = fmul fast float %3346, 0x3F70101020000000
  %3348 = lshr i32 %3337, 16
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = fmul fast float %3350, 0x3F70101020000000
  %3352 = bitcast float %3276 to i32
  %3353 = ashr i32 %3352, 1
  %3354 = sub nsw i32 1597463174, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = fmul fast float %3276, 5.000000e-01
  %3357 = fmul fast float %3355, %3355
  %3358 = fmul fast float %3357, %3356
  %3359 = fsub fast float 1.500000e+00, %3358
  %3360 = fmul fast float %3355, %3276
  %3361 = fmul fast float %3360, %3359
  %3362 = bitcast float %3277 to i32
  %3363 = ashr i32 %3362, 1
  %3364 = sub nsw i32 1597463174, %3363
  %3365 = bitcast i32 %3364 to float
  %3366 = fmul fast float %3277, 5.000000e-01
  %3367 = fmul fast float %3365, %3365
  %3368 = fmul fast float %3367, %3366
  %3369 = fsub fast float 1.500000e+00, %3368
  %3370 = fmul fast float %3365, %3277
  %3371 = fmul fast float %3370, %3369
  %3372 = bitcast float %3278 to i32
  %3373 = ashr i32 %3372, 1
  %3374 = sub nsw i32 1597463174, %3373
  %3375 = bitcast i32 %3374 to float
  %3376 = fmul fast float %3278, 5.000000e-01
  %3377 = fmul fast float %3375, %3375
  %3378 = fmul fast float %3377, %3376
  %3379 = fsub fast float 1.500000e+00, %3378
  %3380 = fmul fast float %3375, %3278
  %3381 = fmul fast float %3380, %3379
  %3382 = fsub fast float %3361, %3343
  %3383 = fsub fast float %3371, %3347
  %3384 = fsub fast float %3381, %3351
  %3385 = fmul fast float %3382, %3311
  %3386 = fmul fast float %3383, %3313
  %3387 = fmul fast float %3384, %3318
  %3388 = fadd fast float %3385, %3326
  %3389 = fadd fast float %3386, %3330
  %3390 = fadd fast float %3387, %3334
  %3391 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3392 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3393 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3394 = fmul fast float %3391, %3391
  %3395 = fmul fast float %3392, %3392
  %3396 = fmul fast float %3393, %3393
  %3397 = fsub fast float %3394, %3276
  %3398 = fsub fast float %3395, %3277
  %3399 = fsub fast float %3396, %3278
  %3400 = fmul fast float %3397, %3301
  %3401 = fmul fast float %3398, %3301
  %3402 = fmul fast float %3399, %3301
  %3403 = fadd fast float %3400, %3276
  %3404 = fadd fast float %3401, %3277
  %3405 = fadd fast float %3402, %3278
  %3406 = fadd fast float %3323, %3287
  %3407 = fsub fast float %3406, %3340
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3409 = fsub fast float %3408, %3287
  %3410 = fmul fast float %3409, %3301
  %3411 = fadd fast float %3410, %3287
  br label %3465

; <label>:3412                                    ; preds = %3300
  %3413 = and i32 %3303, 134217728
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %3449, label %3415

; <label>:3415                                    ; preds = %3412
  %3416 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3417 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3418 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %3419 = fadd fast float %3416, -5.000000e-01
  %3420 = fadd fast float %3417, -5.000000e-01
  %3421 = fadd fast float %3418, -5.000000e-01
  %3422 = fmul fast float %3419, %3301
  %3423 = fmul fast float %3420, %3301
  %3424 = fmul fast float %3421, %3301
  %3425 = fadd fast float %3422, 5.000000e-01
  %3426 = fadd fast float %3423, 5.000000e-01
  %3427 = fadd fast float %3424, 5.000000e-01
  %3428 = call float @dx.op.unary.f32(i32 24, float %3276)  ; Sqrt(value)
  %3429 = call float @dx.op.unary.f32(i32 24, float %3277)  ; Sqrt(value)
  %3430 = call float @dx.op.unary.f32(i32 24, float %3278)  ; Sqrt(value)
  %3431 = fmul fast float %3425, 2.000000e+00
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3432, %3428
  %3434 = fadd fast float %3433, %3431
  %3435 = fmul fast float %3434, %3428
  %3436 = fmul fast float %3426, 2.000000e+00
  %3437 = fsub fast float 1.000000e+00, %3436
  %3438 = fmul fast float %3437, %3429
  %3439 = fadd fast float %3438, %3436
  %3440 = fmul fast float %3439, %3429
  %3441 = fmul fast float %3427, 2.000000e+00
  %3442 = fsub fast float 1.000000e+00, %3441
  %3443 = fmul fast float %3442, %3430
  %3444 = fadd fast float %3443, %3441
  %3445 = fmul fast float %3444, %3430
  %3446 = fmul fast float %3435, %3435
  %3447 = fmul fast float %3440, %3440
  %3448 = fmul fast float %3445, %3445
  br label %3465

; <label>:3449                                    ; preds = %3412
  %3450 = fmul fast float %386, %386
  %3451 = fmul fast float %390, %390
  %3452 = fmul fast float %394, %394
  %3453 = fadd fast float %3450, -1.000000e+00
  %3454 = fadd fast float %3451, -1.000000e+00
  %3455 = fadd fast float %3452, -1.000000e+00
  %3456 = fmul fast float %3301, %3453
  %3457 = fmul fast float %3301, %3454
  %3458 = fmul fast float %3301, %3455
  %3459 = fadd fast float %3456, 1.000000e+00
  %3460 = fadd fast float %3457, 1.000000e+00
  %3461 = fadd fast float %3458, 1.000000e+00
  %3462 = fmul fast float %3459, %3276
  %3463 = fmul fast float %3460, %3277
  %3464 = fmul fast float %3461, %3278
  br label %3465

; <label>:3465                                    ; preds = %3449, %3415, %3306, %3262
  %3466 = phi float [ %3411, %3306 ], [ %3287, %3415 ], [ %3287, %3449 ], [ 0x3FA23C0BE0000000, %3262 ]
  %3467 = phi float [ %3403, %3306 ], [ %3446, %3415 ], [ %3462, %3449 ], [ 1.000000e+00, %3262 ]
  %3468 = phi float [ %3404, %3306 ], [ %3447, %3415 ], [ %3463, %3449 ], [ 1.000000e+00, %3262 ]
  %3469 = phi float [ %3405, %3306 ], [ %3448, %3415 ], [ %3464, %3449 ], [ 1.000000e+00, %3262 ]
  %3470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.i32 %3470, 1
  %3472 = and i32 %3471, 1
  %3473 = icmp ne i32 %3472, 0
  %3474 = add i32 %60, 356
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 32
  %3478 = icmp ne i32 %3477, 0
  %3479 = and i1 %3473, %3478
  %3480 = select i1 %3479, float 1.000000e+00, float %3467
  %3481 = select i1 %3479, float 0x3FD3333340000000, float %3468
  %3482 = select i1 %3479, float 0x3FD3333340000000, float %3469
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %3484, 32
  %3486 = icmp eq i32 %3485, 0
  br i1 %3486, label %3559, label %3487

; <label>:3487                                    ; preds = %3465
  %3488 = add i32 %60, 140
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = add i32 %60, 436
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = add i32 %3493, 0
  %3495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3495, %dx.types.Handle %102, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3500 = extractvalue %dx.types.ResRet.f32 %3496, 3
  %3501 = and i32 %3490, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = lshr i32 %3490, 8
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = lshr i32 %3490, 16
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = fmul fast float %3508, 0x3F70101000000000
  %3510 = fmul fast float %3497, %3502
  %3511 = fadd fast float %3510, %3505
  %3512 = fmul fast float %3511, 0x3F70101000000000
  %3513 = fadd fast float %3498, -5.000000e-01
  %3514 = fadd fast float %3500, -5.000000e-01
  %3515 = fmul fast float %3513, %3509
  %3516 = fmul fast float %3514, %3509
  %3517 = fadd fast float %3515, 5.000000e-01
  %3518 = fadd fast float %3516, 5.000000e-01
  %3519 = fmul fast float %3517, 2.000000e+00
  %3520 = fadd fast float %3519, -1.000000e+00
  %3521 = fmul fast float %3518, 2.000000e+00
  %3522 = fadd fast float %3521, -1.000000e+00
  %3523 = fadd fast float %3520, %3522
  %3524 = fmul fast float %3523, 5.000000e-01
  %3525 = fsub fast float %3520, %3522
  %3526 = fmul fast float %3525, 5.000000e-01
  %3527 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3528 = fsub fast float 1.000000e+00, %3527
  %3529 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3530 = fsub fast float %3528, %3529
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3524, float %3526, float %3530, float %3524, float %3526, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3524, %3532
  %3534 = fmul fast float %3526, %3532
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 67108864
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3555, label %3539

; <label>:3539                                    ; preds = %3487
  %3540 = add i32 %60, 328
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 65535
  %3544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3543)  ; LegacyF16ToF32(value)
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 65535
  %3548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3547)  ; LegacyF16ToF32(value)
  %3549 = lshr i32 %3542, 16
  %3550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3549)  ; LegacyF16ToF32(value)
  %3551 = fsub fast float %3512, %3550
  %3552 = fmul fast float %3551, %3544
  %3553 = fadd fast float %3552, %3548
  %3554 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  br label %3555

; <label>:3555                                    ; preds = %3539, %3487
  %3556 = phi float [ %3554, %3539 ], [ %3512, %3487 ]
  %3557 = call float @dx.op.dot2.f32(i32 54, float %3533, float %3534, float %2976, float %2977)  ; Dot2(ax,ay,bx,by)
  %3558 = call float @dx.op.dot2.f32(i32 54, float %3533, float %3534, float %2978, float %2979)  ; Dot2(ax,ay,bx,by)
  br label %3559

; <label>:3559                                    ; preds = %3555, %3465
  %3560 = phi float [ %3556, %3555 ], [ 0x3FD6666660000000, %3465 ]
  %3561 = phi float [ %3557, %3555 ], [ 0.000000e+00, %3465 ]
  %3562 = phi float [ %3558, %3555 ], [ 0.000000e+00, %3465 ]
  %3563 = phi float [ %3499, %3555 ], [ 1.000000e+00, %3465 ]
  %3564 = add i32 %60, 208
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = lshr i32 %3566, 22
  %3568 = shl nuw nsw i32 %3567, 5
  %3569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3568)  ; LegacyF16ToF32(value)
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 64
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3607, label %3574

; <label>:3574                                    ; preds = %3559
  %3575 = add i32 %60, 452
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = add i32 %3577, 0
  %3579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = and i32 %3581, 131072
  %3583 = icmp eq i32 %3582, 0
  %3584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3579, %dx.types.Handle %102, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3588 = fmul fast float %3585, %374
  %3589 = fmul fast float %3586, %377
  %3590 = fmul fast float %3587, %380
  br i1 %3583, label %3597, label %3591

; <label>:3591                                    ; preds = %3574
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3594 = fmul fast float %3593, %3588
  %3595 = fmul fast float %3593, %3589
  %3596 = fmul fast float %3593, %3590
  br label %3597

; <label>:3597                                    ; preds = %3591, %3574
  %3598 = phi float [ %3594, %3591 ], [ %3588, %3574 ]
  %3599 = phi float [ %3595, %3591 ], [ %3589, %3574 ]
  %3600 = phi float [ %3596, %3591 ], [ %3590, %3574 ]
  %3601 = fmul fast float %3598, %3569
  %3602 = select i1 %231, float %3601, float %3598
  %3603 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3599, float %3600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = select i1 %231, float 0.000000e+00, float %3598
  %3605 = select i1 %231, float %3603, float %3599
  %3606 = select i1 %231, float 0.000000e+00, float %3600
  br label %3607

; <label>:3607                                    ; preds = %3597, %3559
  %3608 = phi float [ %3604, %3597 ], [ 0.000000e+00, %3559 ]
  %3609 = phi float [ %3605, %3597 ], [ 0.000000e+00, %3559 ]
  %3610 = phi float [ %3606, %3597 ], [ 0.000000e+00, %3559 ]
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 26624
  %3614 = icmp eq i32 %3613, 0
  br i1 %3614, label %3638, label %3615

; <label>:3615                                    ; preds = %3607
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = and i32 %3617, 16384
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3638, label %3620

; <label>:3620                                    ; preds = %3615
  %3621 = and i32 %3617, 1048576
  %3622 = icmp ne i32 %3621, 0
  %3623 = add i32 %60, 520
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = add i32 %3625, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3627, %dx.types.Handle %103, float %3072, float %3073, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = add i32 %60, 144
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = lshr i32 %3632, 24
  %3634 = uitofp i32 %3633 to float
  %3635 = fmul fast float %3629, 0x3F70101020000000
  %3636 = select i1 %3622, float 0x3F70101020000000, float %3635
  %3637 = fmul fast float %3636, %3634
  br label %3638

; <label>:3638                                    ; preds = %3620, %3615, %3607
  %3639 = phi float [ %3637, %3620 ], [ 0.000000e+00, %3615 ], [ 0.000000e+00, %3607 ]
  %3640 = add i32 %60, 144
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = and i32 %3642, 255
  %3644 = uitofp i32 %3643 to float
  %3645 = lshr i32 %3642, 8
  %3646 = and i32 %3645, 255
  %3647 = uitofp i32 %3646 to float
  %3648 = call float @dx.op.dot3.f32(i32 55, float %3480, float %3481, float %3482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3649 = fmul fast float %3647, %3648
  %3650 = fadd fast float %3649, %3644
  %3651 = fmul fast float %3650, 0x3F70101020000000
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  br i1 %2964, label %3653, label %3661

; <label>:3653                                    ; preds = %3638
  %3654 = fsub fast float 1.000000e+00, %3260
  %3655 = fmul fast float %3654, %2952
  %3656 = fmul fast float %3654, %2953
  %3657 = fmul fast float %3654, %2954
  %3658 = fmul fast float %3654, %2955
  %3659 = fmul fast float %3654, %2956
  %3660 = fmul fast float %3654, %2957
  br label %3661

; <label>:3661                                    ; preds = %3653, %3638
  %3662 = phi float [ %3655, %3653 ], [ %2952, %3638 ]
  %3663 = phi float [ %3656, %3653 ], [ %2953, %3638 ]
  %3664 = phi float [ %3657, %3653 ], [ %2954, %3638 ]
  %3665 = phi float [ %3658, %3653 ], [ %2955, %3638 ]
  %3666 = phi float [ %3659, %3653 ], [ %2956, %3638 ]
  %3667 = phi float [ %3660, %3653 ], [ %2957, %3638 ]
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = and i32 %3669, 3
  %3671 = icmp eq i32 %3670, 3
  br i1 %3671, label %3750, label %3672

; <label>:3672                                    ; preds = %3661
  %3673 = and i32 %3669, 16
  %3674 = icmp ne i32 %3673, 0
  %3675 = select i1 %3674, float %3260, float 0.000000e+00
  %3676 = icmp eq i32 %3670, 0
  br i1 %3676, label %3677, label %3705

; <label>:3677                                    ; preds = %3672
  %3678 = and i32 %3669, 64
  %3679 = icmp ne i32 %3678, 0
  %3680 = select i1 %3679, float %3260, float 0.000000e+00
  %3681 = fsub fast float %3480, %3662
  %3682 = fsub fast float %3481, %3663
  %3683 = fsub fast float %3482, %3664
  %3684 = fmul fast float %3675, %3681
  %3685 = fmul fast float %3675, %3682
  %3686 = fmul fast float %3675, %3683
  %3687 = fadd fast float %3684, %3662
  %3688 = fadd fast float %3685, %3663
  %3689 = fadd fast float %3686, %3664
  %3690 = fsub fast float %3466, %2958
  %3691 = fmul fast float %3675, %3690
  %3692 = fadd fast float %3691, %2958
  %3693 = fsub fast float %3608, %3665
  %3694 = fsub fast float %3609, %3666
  %3695 = fsub fast float %3610, %3667
  %3696 = fmul fast float %3680, %3693
  %3697 = fmul fast float %3680, %3694
  %3698 = fmul fast float %3680, %3695
  %3699 = fadd fast float %3696, %3665
  %3700 = fadd fast float %3697, %3666
  %3701 = fadd fast float %3698, %3667
  %3702 = fsub fast float %3652, %2962
  %3703 = fmul fast float %3675, %3702
  %3704 = fadd fast float %3703, %2962
  br label %3750

; <label>:3705                                    ; preds = %3672
  %3706 = icmp eq i32 %3670, 1
  br i1 %3706, label %3707, label %3720

; <label>:3707                                    ; preds = %3705
  %3708 = fadd fast float %3480, -1.000000e+00
  %3709 = fadd fast float %3481, -1.000000e+00
  %3710 = fadd fast float %3482, -1.000000e+00
  %3711 = fmul fast float %3675, %3708
  %3712 = fmul fast float %3675, %3709
  %3713 = fmul fast float %3675, %3710
  %3714 = fadd fast float %3711, 1.000000e+00
  %3715 = fadd fast float %3712, 1.000000e+00
  %3716 = fadd fast float %3713, 1.000000e+00
  %3717 = fmul fast float %3714, %3662
  %3718 = fmul fast float %3715, %3663
  %3719 = fmul fast float %3716, %3664
  br label %3750

; <label>:3720                                    ; preds = %3705
  %3721 = icmp eq i32 %3670, 2
  br i1 %3721, label %3722, label %3750

; <label>:3722                                    ; preds = %3720
  %3723 = call float @dx.op.unary.f32(i32 24, float %3480)  ; Sqrt(value)
  %3724 = call float @dx.op.unary.f32(i32 24, float %3481)  ; Sqrt(value)
  %3725 = call float @dx.op.unary.f32(i32 24, float %3482)  ; Sqrt(value)
  %3726 = fadd fast float %3723, -5.000000e-01
  %3727 = fadd fast float %3724, -5.000000e-01
  %3728 = fadd fast float %3725, -5.000000e-01
  %3729 = fmul fast float %3726, %3675
  %3730 = fmul fast float %3727, %3675
  %3731 = fmul fast float %3728, %3675
  %3732 = fadd fast float %3729, 5.000000e-01
  %3733 = fadd fast float %3730, 5.000000e-01
  %3734 = fadd fast float %3731, 5.000000e-01
  %3735 = fmul fast float %3732, 2.000000e+00
  %3736 = fsub fast float 1.000000e+00, %3735
  %3737 = fmul fast float %3736, %3662
  %3738 = fadd fast float %3737, %3735
  %3739 = fmul fast float %3738, %3662
  %3740 = fmul fast float %3733, 2.000000e+00
  %3741 = fsub fast float 1.000000e+00, %3740
  %3742 = fmul fast float %3741, %3663
  %3743 = fadd fast float %3742, %3740
  %3744 = fmul fast float %3743, %3663
  %3745 = fmul fast float %3734, 2.000000e+00
  %3746 = fsub fast float 1.000000e+00, %3745
  %3747 = fmul fast float %3746, %3664
  %3748 = fadd fast float %3747, %3745
  %3749 = fmul fast float %3748, %3664
  br label %3750

; <label>:3750                                    ; preds = %3722, %3720, %3707, %3677, %3661
  %3751 = phi float [ %3662, %3661 ], [ %3739, %3722 ], [ %3662, %3720 ], [ %3717, %3707 ], [ %3687, %3677 ]
  %3752 = phi float [ %3663, %3661 ], [ %3744, %3722 ], [ %3663, %3720 ], [ %3718, %3707 ], [ %3688, %3677 ]
  %3753 = phi float [ %3664, %3661 ], [ %3749, %3722 ], [ %3664, %3720 ], [ %3719, %3707 ], [ %3689, %3677 ]
  %3754 = phi float [ %3665, %3661 ], [ %3665, %3722 ], [ %3665, %3720 ], [ %3665, %3707 ], [ %3699, %3677 ]
  %3755 = phi float [ %3666, %3661 ], [ %3666, %3722 ], [ %3666, %3720 ], [ %3666, %3707 ], [ %3700, %3677 ]
  %3756 = phi float [ %3667, %3661 ], [ %3667, %3722 ], [ %3667, %3720 ], [ %3667, %3707 ], [ %3701, %3677 ]
  %3757 = phi float [ %2958, %3661 ], [ %2958, %3722 ], [ %2958, %3720 ], [ %2958, %3707 ], [ %3692, %3677 ]
  %3758 = phi float [ %2962, %3661 ], [ %2962, %3722 ], [ %2962, %3720 ], [ %2962, %3707 ], [ %3704, %3677 ]
  %3759 = and i32 %3669, 12
  %3760 = icmp eq i32 %3759, 12
  br i1 %3760, label %3843, label %3761

; <label>:3761                                    ; preds = %3750
  %3762 = and i32 %3669, 2097184
  %3763 = icmp eq i32 %3762, 2097184
  %3764 = select i1 %3763, float %3260, float 0.000000e+00
  %3765 = and i32 %3669, 4194336
  %3766 = icmp eq i32 %3765, 4194336
  %3767 = select i1 %3766, float %3260, float 0.000000e+00
  %3768 = and i32 %3669, 8388640
  %3769 = icmp eq i32 %3768, 8388640
  %3770 = select i1 %3769, float %3260, float 0.000000e+00
  %3771 = and i32 %3669, 16384
  %3772 = icmp ne i32 %3771, 0
  %3773 = select i1 %3772, float %3260, float 0.000000e+00
  %3774 = icmp eq i32 %3759, 0
  br i1 %3774, label %3775, label %3791

; <label>:3775                                    ; preds = %3761
  %3776 = fsub fast float %3561, %2950
  %3777 = fsub fast float %3562, %2951
  %3778 = fmul fast float %3764, %3776
  %3779 = fmul fast float %3764, %3777
  %3780 = fadd fast float %3778, %2950
  %3781 = fadd fast float %3779, %2951
  %3782 = fsub fast float %3563, %2960
  %3783 = fmul fast float %3767, %3782
  %3784 = fadd fast float %3783, %2960
  %3785 = fsub fast float %3560, %2959
  %3786 = fmul fast float %3770, %3785
  %3787 = fadd fast float %3786, %2959
  %3788 = fsub fast float %3639, %2961
  %3789 = fmul fast float %3773, %3788
  %3790 = fadd fast float %3789, %2961
  br label %3843

; <label>:3791                                    ; preds = %3761
  %3792 = icmp eq i32 %3759, 4
  br i1 %3792, label %3793, label %3827

; <label>:3793                                    ; preds = %3791
  %3794 = fmul fast float %3764, %3561
  %3795 = fmul fast float %3764, %3562
  %3796 = fadd fast float %3794, %2950
  %3797 = fadd fast float %3795, %2951
  %3798 = call float @dx.op.binary.f32(i32 36, float %2960, float %3563)  ; FMin(a,b)
  %3799 = fsub fast float %3798, %2960
  %3800 = fmul fast float %3799, %3767
  %3801 = fadd fast float %3800, %2960
  %3802 = fadd fast float %3560, %2959
  %3803 = fmul fast float %3802, 0x3FF337FAE0000000
  %3804 = fmul fast float %2959, %2959
  %3805 = fmul fast float %3560, %3560
  %3806 = fadd fast float %3805, %3804
  %3807 = fmul fast float %3806, 0x3FE5152B00000000
  %3808 = fmul fast float %2959, 0xBFCC1F85E0000000
  %3809 = fmul fast float %3808, %3560
  %3810 = fadd fast float %3809, 0xBFE1363700000000
  %3811 = fadd fast float %3810, %3803
  %3812 = fsub fast float %3811, %3807
  %3813 = fmul fast float %3802, 0x3FBA6F0D00000000
  %3814 = fmul fast float %3806, 0x3FD0432880000000
  %3815 = fmul fast float %2959, 0xBFEF110800000000
  %3816 = fmul fast float %3815, %3560
  %3817 = fadd fast float %3816, 1.000000e+00
  %3818 = fsub fast float %3817, %3813
  %3819 = fadd fast float %3818, %3814
  %3820 = fdiv fast float %3812, %3819
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fsub fast float %3821, %2959
  %3823 = fmul fast float %3822, %3770
  %3824 = fadd fast float %3823, %2959
  %3825 = fmul fast float %3773, %3639
  %3826 = fadd fast float %3825, %2961
  br label %3843

; <label>:3827                                    ; preds = %3791
  %3828 = icmp eq i32 %3759, 8
  br i1 %3828, label %3829, label %3843

; <label>:3829                                    ; preds = %3827
  %3830 = fmul fast float %3764, %3561
  %3831 = fmul fast float %3764, %3562
  %3832 = fadd fast float %3830, %2950
  %3833 = fadd fast float %3831, %2951
  %3834 = call float @dx.op.binary.f32(i32 36, float %2960, float %3563)  ; FMin(a,b)
  %3835 = fsub fast float %3834, %2960
  %3836 = fmul fast float %3835, %3767
  %3837 = fadd fast float %3836, %2960
  %3838 = fsub fast float %3560, %2959
  %3839 = fmul fast float %3770, %3838
  %3840 = fadd fast float %3839, %2959
  %3841 = fmul fast float %3773, %3639
  %3842 = fadd fast float %3841, %2961
  br label %3843

; <label>:3843                                    ; preds = %3829, %3827, %3793, %3775, %3750, %3259, %2963, %2949
  %3844 = phi float [ %2950, %3750 ], [ %2950, %3259 ], [ %2950, %2949 ], [ %2950, %2963 ], [ %3780, %3775 ], [ %3796, %3793 ], [ %2950, %3827 ], [ %3832, %3829 ]
  %3845 = phi float [ %2951, %3750 ], [ %2951, %3259 ], [ %2951, %2949 ], [ %2951, %2963 ], [ %3781, %3775 ], [ %3797, %3793 ], [ %2951, %3827 ], [ %3833, %3829 ]
  %3846 = phi float [ %3751, %3750 ], [ %2952, %3259 ], [ %2952, %2949 ], [ %2952, %2963 ], [ %3751, %3775 ], [ %3751, %3793 ], [ %3751, %3827 ], [ %3751, %3829 ]
  %3847 = phi float [ %3752, %3750 ], [ %2953, %3259 ], [ %2953, %2949 ], [ %2953, %2963 ], [ %3752, %3775 ], [ %3752, %3793 ], [ %3752, %3827 ], [ %3752, %3829 ]
  %3848 = phi float [ %3753, %3750 ], [ %2954, %3259 ], [ %2954, %2949 ], [ %2954, %2963 ], [ %3753, %3775 ], [ %3753, %3793 ], [ %3753, %3827 ], [ %3753, %3829 ]
  %3849 = phi float [ %3754, %3750 ], [ %2955, %3259 ], [ %2955, %2949 ], [ %2955, %2963 ], [ %3754, %3775 ], [ %3754, %3793 ], [ %3754, %3827 ], [ %3754, %3829 ]
  %3850 = phi float [ %3755, %3750 ], [ %2956, %3259 ], [ %2956, %2949 ], [ %2956, %2963 ], [ %3755, %3775 ], [ %3755, %3793 ], [ %3755, %3827 ], [ %3755, %3829 ]
  %3851 = phi float [ %3756, %3750 ], [ %2957, %3259 ], [ %2957, %2949 ], [ %2957, %2963 ], [ %3756, %3775 ], [ %3756, %3793 ], [ %3756, %3827 ], [ %3756, %3829 ]
  %3852 = phi float [ %3757, %3750 ], [ %2958, %3259 ], [ %2958, %2949 ], [ %2958, %2963 ], [ %3757, %3775 ], [ %3757, %3793 ], [ %3757, %3827 ], [ %3757, %3829 ]
  %3853 = phi float [ %2959, %3750 ], [ %2959, %3259 ], [ %2959, %2949 ], [ %2959, %2963 ], [ %3787, %3775 ], [ %3824, %3793 ], [ %2959, %3827 ], [ %3840, %3829 ]
  %3854 = phi float [ %2960, %3750 ], [ %2960, %3259 ], [ %2960, %2949 ], [ %2960, %2963 ], [ %3784, %3775 ], [ %3801, %3793 ], [ %2960, %3827 ], [ %3837, %3829 ]
  %3855 = phi float [ %2961, %3750 ], [ %2961, %3259 ], [ %2961, %2949 ], [ %2961, %2963 ], [ %3790, %3775 ], [ %3826, %3793 ], [ %2961, %3827 ], [ %3842, %3829 ]
  %3856 = phi float [ %3758, %3750 ], [ %2962, %3259 ], [ %2962, %2949 ], [ %2962, %2963 ], [ %3758, %3775 ], [ %3758, %3793 ], [ %3758, %3827 ], [ %3758, %3829 ]
  %3857 = add i32 %60, 360
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.i32 %3858, 1
  %3861 = bitcast i32 %3859 to float
  %3862 = bitcast i32 %3860 to float
  %3863 = fcmp fast oge float %3861, 0.000000e+00
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3866 = select i1 %3863, float %3861, float %3865
  %3867 = add i32 %60, 488
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = add i32 %3869, 0
  %3871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3871, %dx.types.Handle %103, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = fmul fast float %3873, %3862
  %3875 = fadd fast float %3874, %3866
  %3876 = call float @dx.op.dot2.f32(i32 54, float %3844, float %3845, float %3844, float %3845)  ; Dot2(ax,ay,bx,by)
  %3877 = fmul fast float %3876, 0x3FE3333340000000
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3878, float %3844, float %3845, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = call float @dx.op.unary.f32(i32 25, float %3879)  ; Rsqrt(value)
  %3881 = fmul fast float %3880, %3844
  %3882 = fmul fast float %3880, %3845
  %3883 = fmul fast float %3878, %3880
  %3884 = fmul fast float %3883, %113
  %3885 = fmul fast float %3883, %114
  %3886 = fmul fast float %3883, %115
  %3887 = fmul fast float %3881, %78
  %3888 = fmul fast float %3881, %79
  %3889 = fmul fast float %3881, %80
  %3890 = fadd fast float %3884, %3887
  %3891 = fadd fast float %3885, %3888
  %3892 = fadd fast float %3886, %3889
  %3893 = fmul fast float %125, %3882
  %3894 = fmul fast float %126, %3882
  %3895 = fmul fast float %127, %3882
  %3896 = fadd fast float %3890, %3893
  %3897 = fadd fast float %3891, %3894
  %3898 = fadd fast float %3892, %3895
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3898, float %3896, float %3897, float %3898)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call float @dx.op.unary.f32(i32 25, float %3899)  ; Rsqrt(value)
  %3901 = fmul fast float %3896, %3900
  %3902 = fmul fast float %3897, %3900
  %3903 = fmul fast float %3898, %3900
  %3904 = and i32 %62, 1
  %3905 = icmp eq i32 %3904, 0
  br i1 %3905, label %3906, label %4418

; <label>:3906                                    ; preds = %3843
  %3907 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3908 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %3909 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %3910 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3911 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %3912 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %3913 = fadd fast float %3907, %169
  %3914 = fadd fast float %3908, %170
  %3915 = fadd fast float %3909, %171
  %3916 = fadd fast float %3910, %169
  %3917 = fadd fast float %3911, %170
  %3918 = fadd fast float %3912, %171
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 2
  %3925 = extractvalue %dx.types.CBufRet.f32 %3923, 3
  %3926 = fmul fast float %3920, %106
  %3927 = fmul fast float %3926, %3924
  %3928 = fmul fast float %3921, %107
  %3929 = fmul fast float %3928, %3925
  %3930 = fptoui float %3927 to i32
  %3931 = fptoui float %3929 to i32
  %3932 = fadd fast float %3920, -1.000000e+00
  %3933 = fadd fast float %3921, -1.000000e+00
  %3934 = fptoui float %3932 to i32
  %3935 = fptoui float %3933 to i32
  %3936 = call i32 @dx.op.binary.i32(i32 40, i32 %3930, i32 %3934)  ; UMin(a,b)
  %3937 = call i32 @dx.op.binary.i32(i32 40, i32 %3931, i32 %3935)  ; UMin(a,b)
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3941 = fmul fast float %3939, %94
  %3942 = fsub fast float %3941, %3940
  %3943 = fadd fast float %3922, -1.000000e+00
  %3944 = call float @dx.op.binary.f32(i32 36, float %3942, float %3943)  ; FMin(a,b)
  %3945 = fptoui float %3944 to i32
  %3946 = fptoui float %3920 to i32
  %3947 = fptoui float %3921 to i32
  %3948 = mul i32 %3945, %3947
  %3949 = add i32 %3948, %3937
  %3950 = mul i32 %3949, %3946
  %3951 = add i32 %3950, %3936
  %3952 = shl i32 %3951, 2
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = and i32 %3954, 1023
  %3956 = lshr i32 %3954, 10
  %3957 = icmp eq i32 %3955, 0
  br i1 %3957, label %4386, label %3958

; <label>:3958                                    ; preds = %3906
  %3959 = and i32 %3954, 1023
  br label %3960

; <label>:3960                                    ; preds = %4087, %3958
  %3961 = phi i32 [ %4037, %4087 ], [ 0, %3958 ]
  %3962 = phi float [ %4088, %4087 ], [ 0.000000e+00, %3958 ]
  %3963 = phi float [ %4089, %4087 ], [ %1170, %3958 ]
  %3964 = phi float [ %4090, %4087 ], [ %3875, %3958 ]
  %3965 = phi float [ %4091, %4087 ], [ %3856, %3958 ]
  %3966 = phi float [ %4092, %4087 ], [ %3855, %3958 ]
  %3967 = phi float [ %4093, %4087 ], [ 0.000000e+00, %3958 ]
  %3968 = phi float [ %4094, %4087 ], [ %3849, %3958 ]
  %3969 = phi float [ %4095, %4087 ], [ %3850, %3958 ]
  %3970 = phi float [ %4096, %4087 ], [ %3851, %3958 ]
  %3971 = phi float [ %4097, %4087 ], [ %3901, %3958 ]
  %3972 = phi float [ %4098, %4087 ], [ %3902, %3958 ]
  %3973 = phi float [ %4099, %4087 ], [ %3903, %3958 ]
  %3974 = phi float [ %4100, %4087 ], [ %3854, %3958 ]
  %3975 = phi float [ %4101, %4087 ], [ %3853, %3958 ]
  %3976 = phi float [ %4102, %4087 ], [ 0.000000e+00, %3958 ]
  %3977 = phi float [ %4103, %4087 ], [ %3852, %3958 ]
  %3978 = phi float [ %4104, %4087 ], [ %3846, %3958 ]
  %3979 = phi float [ %4105, %4087 ], [ %3847, %3958 ]
  %3980 = phi float [ %4106, %4087 ], [ %3848, %3958 ]
  %3981 = add nuw nsw i32 %3961, %3956
  %3982 = shl i32 %3981, 2
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = shl i32 %3984, 8
  %3986 = or i32 %3985, 48
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = or i32 %3985, 64
  %3993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.i32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.i32 %3993, 1
  %3996 = or i32 %3985, 80
  %3997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 3
  %4000 = or i32 %3985, 96
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.ResRet.f32 %4001, 3
  %4006 = or i32 %3985, 112
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4009 = or i32 %3985, 128
  %4010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = extractvalue %dx.types.ResRet.f32 %4010, 1
  %4013 = extractvalue %dx.types.ResRet.f32 %4010, 2
  %4014 = extractvalue %dx.types.ResRet.f32 %4010, 3
  %4015 = or i32 %3985, 144
  %4016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = or i32 %3985, 160
  %4022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.ResRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.ResRet.f32 %4022, 2
  %4026 = extractvalue %dx.types.ResRet.f32 %4022, 3
  %4027 = or i32 %3985, 192
  %4028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.i32 %4028, 0
  %4030 = or i32 %3985, 208
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = or i32 %3985, 248
  %4034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = add nuw nsw i32 %3961, 1
  %4038 = bitcast float %3991 to i32
  %4039 = and i32 %4038, 512
  %4040 = icmp eq i32 %4039, 0
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4047 = or i32 %3985, 16
  %4048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.ResRet.f32 %4048, 1
  %4051 = extractvalue %dx.types.ResRet.f32 %4048, 2
  %4052 = extractvalue %dx.types.ResRet.f32 %4048, 3
  %4053 = call float @dx.op.dot4.f32(i32 56, float %4049, float %4050, float %4051, float %4052, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4054 = or i32 %3985, 32
  %4055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %4055, 2
  %4059 = extractvalue %dx.types.ResRet.f32 %4055, 3
  %4060 = call float @dx.op.dot4.f32(i32 56, float %4056, float %4057, float %4058, float %4059, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4061 = call float @dx.op.unary.f32(i32 27, float %4046)  ; Round_ni(value)
  %4062 = call float @dx.op.unary.f32(i32 6, float %4061)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 27, float %4053)  ; Round_ni(value)
  %4064 = call float @dx.op.unary.f32(i32 6, float %4063)  ; FAbs(value)
  %4065 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4066 = call float @dx.op.unary.f32(i32 27, float %4065)  ; Round_ni(value)
  %4067 = fadd fast float %4064, %4062
  %4068 = fadd fast float %4067, %4066
  %4069 = fcmp fast oeq float %4068, 0.000000e+00
  %4070 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %3913, float %3914, float %3915, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4071 = call float @dx.op.dot4.f32(i32 56, float %4049, float %4050, float %4051, float %4052, float %3913, float %3914, float %3915, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4072 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %3916, float %3917, float %3918, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4073 = call float @dx.op.dot4.f32(i32 56, float %4049, float %4050, float %4051, float %4052, float %3916, float %3917, float %3918, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4074 = fsub fast float %4070, %4046
  %4075 = fsub fast float %4072, %4046
  %4076 = fsub fast float %4071, %4053
  %4077 = fsub fast float %4073, %4053
  %4078 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %3990, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4081 = fadd fast float %4080, %4078
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4084 = fcmp fast ogt float %4082, %4083
  %4085 = and i1 %4069, %4084
  %4086 = and i1 %4040, %4085
  br i1 %4086, label %4108, label %4087

; <label>:4087                                    ; preds = %4372, %4189, %4108, %3960
  %4088 = phi float [ %3962, %4108 ], [ %4192, %4189 ], [ %4192, %4372 ], [ %3962, %3960 ]
  %4089 = phi float [ %3963, %4108 ], [ %3963, %4189 ], [ %4347, %4372 ], [ %3963, %3960 ]
  %4090 = phi float [ %3964, %4108 ], [ %3964, %4189 ], [ %4346, %4372 ], [ %3964, %3960 ]
  %4091 = phi float [ %3965, %4108 ], [ %3965, %4189 ], [ %4344, %4372 ], [ %3965, %3960 ]
  %4092 = phi float [ %3966, %4108 ], [ %3966, %4189 ], [ %4316, %4372 ], [ %3966, %3960 ]
  %4093 = phi float [ %3967, %4108 ], [ %3967, %4189 ], [ %4314, %4372 ], [ %3967, %3960 ]
  %4094 = phi float [ %3968, %4108 ], [ %3968, %4189 ], [ %4382, %4372 ], [ %3968, %3960 ]
  %4095 = phi float [ %3969, %4108 ], [ %3969, %4189 ], [ %4383, %4372 ], [ %3969, %3960 ]
  %4096 = phi float [ %3970, %4108 ], [ %3970, %4189 ], [ %4384, %4372 ], [ %3970, %3960 ]
  %4097 = phi float [ %3971, %4108 ], [ %3971, %4189 ], [ %4295, %4372 ], [ %3971, %3960 ]
  %4098 = phi float [ %3972, %4108 ], [ %3972, %4189 ], [ %4296, %4372 ], [ %3972, %3960 ]
  %4099 = phi float [ %3973, %4108 ], [ %3973, %4189 ], [ %4297, %4372 ], [ %3973, %3960 ]
  %4100 = phi float [ %3974, %4108 ], [ %3974, %4189 ], [ %4324, %4372 ], [ %3974, %3960 ]
  %4101 = phi float [ %3975, %4108 ], [ %3975, %4189 ], [ %4321, %4372 ], [ %3975, %3960 ]
  %4102 = phi float [ %3976, %4108 ], [ %3976, %4189 ], [ %4318, %4372 ], [ %3976, %3960 ]
  %4103 = phi float [ %3977, %4108 ], [ %3977, %4189 ], [ %4312, %4372 ], [ %3977, %3960 ]
  %4104 = phi float [ %3978, %4108 ], [ %3978, %4189 ], [ %4307, %4372 ], [ %3978, %3960 ]
  %4105 = phi float [ %3979, %4108 ], [ %3979, %4189 ], [ %4308, %4372 ], [ %3979, %3960 ]
  %4106 = phi float [ %3980, %4108 ], [ %3980, %4189 ], [ %4309, %4372 ], [ %3980, %3960 ]
  %4107 = icmp eq i32 %4037, %3959
  br i1 %4107, label %4385, label %3960

; <label>:4108                                    ; preds = %3960
  %4109 = extractvalue %dx.types.ResRet.f32 %4007, 3
  %4110 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4111 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %4114 = extractvalue %dx.types.ResRet.i32 %3993, 3
  %4115 = extractvalue %dx.types.ResRet.i32 %3993, 2
  %4116 = add i32 %4114, 0
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4117, %dx.types.Handle %4118, float %4046, float %4053, float undef, float undef, i32 0, i32 0, i32 undef, float %4074, float %4076, float undef, float %4075, float %4077, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = fmul fast float %4120, %4113
  %4122 = fadd fast float %4121, %4112
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = fmul fast float %4046, %4002
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4053, float %4124)  ; FMad(a,b,c)
  %4126 = fadd fast float %4125, %4111
  %4127 = fmul fast float %4046, %4004
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %4053, float %4127)  ; FMad(a,b,c)
  %4129 = fadd fast float %4128, %4110
  %4130 = fmul fast float %4074, %4002
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4076, float %4130)  ; FMad(a,b,c)
  %4132 = fmul fast float %4074, %4004
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %4076, float %4132)  ; FMad(a,b,c)
  %4134 = fmul fast float %4075, %4002
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %4077, float %4134)  ; FMad(a,b,c)
  %4136 = fmul fast float %4075, %4004
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %4077, float %4136)  ; FMad(a,b,c)
  %4138 = add i32 %4115, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4138, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4139, %dx.types.Handle %4118, float %4126, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float %4131, float %4133, float undef, float %4135, float %4137, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = and i32 %4038, 1024
  %4143 = icmp ne i32 %4142, 0
  %4144 = fcmp fast ogt float %4141, 0x3FE0101020000000
  %4145 = uitofp i1 %4144 to float
  %4146 = select i1 %4143, float %4145, float %4141
  %4147 = and i32 %4038, 8192
  %4148 = icmp ne i32 %4147, 0
  %4149 = select i1 %4148, float %4109, float 1.000000e+00
  %4150 = fmul fast float %4046, 2.000000e+00
  %4151 = fadd fast float %4150, -1.000000e+00
  %4152 = call float @dx.op.unary.f32(i32 6, float %4151)  ; FAbs(value)
  %4153 = fmul fast float %4152, %4035
  %4154 = fsub fast float %4153, %4035
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fmul fast float %4053, 2.000000e+00
  %4157 = fadd fast float %4156, -1.000000e+00
  %4158 = call float @dx.op.unary.f32(i32 6, float %4157)  ; FAbs(value)
  %4159 = fmul fast float %4158, %4036
  %4160 = fsub fast float %4159, %4036
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4065, %3998
  %4163 = fsub fast float %4162, %3998
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = fmul fast float %4123, %4149
  %4166 = fmul fast float %4165, %4120
  %4167 = fmul fast float %4166, %4155
  %4168 = fmul fast float %4167, %4146
  %4169 = fmul fast float %4168, %4161
  %4170 = fmul fast float %4169, %4164
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4174 = fsub fast float %4082, %4173
  %4175 = fmul fast float %4174, %4172
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = fmul fast float %4170, %3999
  %4178 = fadd fast float %4170, %3999
  %4179 = fmul fast float %4178, %4008
  %4180 = fsub fast float %4179, %4008
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = and i32 %4038, 128
  %4183 = icmp ne i32 %4182, 0
  %4184 = select i1 %4183, float %4181, float %4177
  %4185 = fmul fast float %4184, %4176
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = fcmp fast ugt float %4185, %4187
  br i1 %4188, label %4189, label %4087

; <label>:4189                                    ; preds = %4108
  %4190 = select i1 %4148, float %4185, float 0.000000e+00
  %4191 = fadd fast float %4190, %3962
  %4192 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  br i1 %4148, label %4087, label %4193

; <label>:4193                                    ; preds = %4189
  %4194 = and i32 %4038, 4
  %4195 = and i32 %4038, 8
  %4196 = add i32 %3994, 0
  %4197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4196, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4197, %dx.types.Handle %4198, float %4126, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float %4131, float %4133, float undef, float %4135, float %4137, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = bitcast float %4020 to i32
  %4205 = and i32 %4204, 255
  %4206 = uitofp i32 %4205 to float
  %4207 = lshr i32 %4204, 8
  %4208 = and i32 %4207, 255
  %4209 = uitofp i32 %4208 to float
  %4210 = fmul fast float %4203, %4206
  %4211 = fadd fast float %4210, %4209
  %4212 = fmul fast float %4211, 0x3F70101000000000
  %4213 = add i32 %3995, 0
  %4214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4213, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4215 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4214, %dx.types.Handle %4198, float %4126, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float %4131, float %4133, float undef, float %4135, float %4137, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = extractvalue %dx.types.ResRet.f32 %4215, 3
  %4220 = bitcast float %4014 to i32
  %4221 = and i32 %4220, 255
  %4222 = uitofp i32 %4221 to float
  %4223 = lshr i32 %4220, 8
  %4224 = and i32 %4223, 255
  %4225 = uitofp i32 %4224 to float
  %4226 = lshr i32 %4220, 16
  %4227 = and i32 %4226, 255
  %4228 = uitofp i32 %4227 to float
  %4229 = fmul fast float %4228, 0x3F70101000000000
  %4230 = fmul fast float %4216, %4222
  %4231 = fadd fast float %4230, %4225
  %4232 = fmul fast float %4231, 0x3F70101000000000
  %4233 = fadd fast float %4217, -5.000000e-01
  %4234 = fadd fast float %4219, -5.000000e-01
  %4235 = fmul fast float %4233, %4229
  %4236 = fmul fast float %4234, %4229
  %4237 = fadd fast float %4235, 5.000000e-01
  %4238 = fadd fast float %4236, 5.000000e-01
  %4239 = fmul fast float %4200, %4023
  %4240 = fmul fast float %4201, %4024
  %4241 = fmul fast float %4202, %4025
  %4242 = fmul fast float %4237, 2.000000e+00
  %4243 = fadd fast float %4242, -1.000000e+00
  %4244 = fmul fast float %4238, 2.000000e+00
  %4245 = fadd fast float %4244, -1.000000e+00
  %4246 = fadd fast float %4243, %4245
  %4247 = fmul fast float %4246, 5.000000e-01
  %4248 = fsub fast float %4243, %4245
  %4249 = fmul fast float %4248, 5.000000e-01
  %4250 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = call float @dx.op.unary.f32(i32 6, float %4249)  ; FAbs(value)
  %4253 = fsub fast float %4251, %4252
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4249, float %4253, float %4247, float %4249, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = call float @dx.op.unary.f32(i32 25, float %4254)  ; Rsqrt(value)
  %4256 = fmul fast float %4247, %4255
  %4257 = fmul fast float %4249, %4255
  %4258 = fmul fast float %4255, %4253
  %4259 = fmul fast float %4258, %3988
  %4260 = fmul fast float %4258, %3989
  %4261 = fmul fast float %4258, %3990
  %4262 = fmul fast float %4256, %4011
  %4263 = fmul fast float %4256, %4012
  %4264 = fmul fast float %4256, %4013
  %4265 = fadd fast float %4262, %4259
  %4266 = fadd fast float %4263, %4260
  %4267 = fadd fast float %4264, %4261
  %4268 = fmul fast float %4257, %4017
  %4269 = fmul fast float %4257, %4018
  %4270 = fmul fast float %4257, %4019
  %4271 = fadd fast float %4265, %4268
  %4272 = fadd fast float %4266, %4269
  %4273 = fadd fast float %4267, %4270
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4271, float %4272, float %4273, float %4271, float %4272, float %4273)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = call float @dx.op.unary.f32(i32 25, float %4274)  ; Rsqrt(value)
  %4276 = fmul fast float %4271, %4275
  %4277 = fmul fast float %4272, %4275
  %4278 = fmul fast float %4273, %4275
  %4279 = icmp ne i32 %4195, 0
  %4280 = select i1 %4279, float 1.000000e+00, float 0.000000e+00
  %4281 = fmul fast float %4185, %4280
  %4282 = and i32 %4038, 1
  %4283 = icmp eq i32 %4282, 0
  br i1 %4283, label %4284, label %4288

; <label>:4284                                    ; preds = %4193
  %4285 = fsub fast float %4276, %3971
  %4286 = fsub fast float %4277, %3972
  %4287 = fsub fast float %4278, %3973
  br label %4288

; <label>:4288                                    ; preds = %4284, %4193
  %4289 = phi float [ %4285, %4284 ], [ %4276, %4193 ]
  %4290 = phi float [ %4286, %4284 ], [ %4277, %4193 ]
  %4291 = phi float [ %4287, %4284 ], [ %4278, %4193 ]
  %4292 = fmul float %4291, %4281
  %4293 = fmul float %4290, %4281
  %4294 = fmul float %4289, %4281
  %4295 = fadd fast float %4294, %3971
  %4296 = fadd fast float %4293, %3972
  %4297 = fadd fast float %4292, %3973
  %4298 = icmp ne i32 %4194, 0
  %4299 = select i1 %4298, float 1.000000e+00, float 0.000000e+00
  %4300 = fmul fast float %4185, %4299
  %4301 = fsub fast float %4239, %3978
  %4302 = fsub fast float %4240, %3979
  %4303 = fsub fast float %4241, %3980
  %4304 = fmul fast float %4301, %4300
  %4305 = fmul fast float %4302, %4300
  %4306 = fmul fast float %4303, %4300
  %4307 = fadd fast float %4304, %3978
  %4308 = fadd fast float %4305, %3979
  %4309 = fadd fast float %4306, %3980
  %4310 = fsub fast float %4212, %3977
  %4311 = fmul fast float %4310, %4300
  %4312 = fadd fast float %4311, %3977
  %4313 = fmul fast float %4300, %3967
  %4314 = fsub fast float %3967, %4313
  %4315 = fmul fast float %4300, %3966
  %4316 = fsub fast float %3966, %4315
  %4317 = fadd fast float %4185, %3976
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fsub fast float %4232, %3975
  %4320 = fmul fast float %4319, %4281
  %4321 = fadd fast float %4320, %3975
  %4322 = fsub fast float %4218, %3974
  %4323 = fmul fast float %4322, %4281
  %4324 = fadd fast float %4323, %3974
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4329 = fmul fast float %4328, %4325
  %4330 = fadd fast float %4329, %4327
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = bitcast float %4026 to i32
  %4333 = and i32 %4332, 65535
  %4334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4333)  ; LegacyF16ToF32(value)
  %4335 = lshr i32 %4332, 16
  %4336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4335)  ; LegacyF16ToF32(value)
  %4337 = fcmp fast oge float %4334, 0.000000e+00
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = select i1 %4337, float %4334, float %4339
  %4341 = fadd fast float %4340, %4336
  %4342 = fsub fast float %4331, %3965
  %4343 = fmul fast float %4342, %4185
  %4344 = fadd fast float %4343, %3965
  %4345 = fmul fast float %4341, %4185
  %4346 = call float @dx.op.binary.f32(i32 35, float %3964, float %4345)  ; FMax(a,b)
  %4347 = call float @dx.op.binary.f32(i32 35, float %3963, float %4185)  ; FMax(a,b)
  %4348 = and i32 %4038, 16
  %4349 = icmp eq i32 %4348, 0
  br i1 %4349, label %4372, label %4350

; <label>:4350                                    ; preds = %4288
  %4351 = bitcast float %4032 to i32
  %4352 = add i32 %4029, 0
  %4353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4352, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4353, %dx.types.Handle %4198, float %4126, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float %4131, float %4133, float undef, float %4135, float %4137, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = and i32 %4351, 65535
  %4359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4358)  ; LegacyF16ToF32(value)
  %4360 = fmul fast float %4355, %4023
  %4361 = fmul fast float %4356, %4024
  %4362 = fmul fast float %4357, %4025
  %4363 = and i32 %4038, 16384
  %4364 = icmp ne i32 %4363, 0
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4367 = select i1 %4364, float %4366, float 1.000000e+00
  %4368 = fmul fast float %4367, %4359
  %4369 = fmul fast float %4360, %4368
  %4370 = fmul fast float %4361, %4368
  %4371 = fmul fast float %4362, %4368
  br label %4372

; <label>:4372                                    ; preds = %4350, %4288
  %4373 = phi float [ %4369, %4350 ], [ 0.000000e+00, %4288 ]
  %4374 = phi float [ %4370, %4350 ], [ 0.000000e+00, %4288 ]
  %4375 = phi float [ %4371, %4350 ], [ 0.000000e+00, %4288 ]
  %4376 = fsub fast float %4373, %3968
  %4377 = fsub fast float %4374, %3969
  %4378 = fsub fast float %4375, %3970
  %4379 = fmul fast float %4376, %4185
  %4380 = fmul fast float %4377, %4185
  %4381 = fmul fast float %4378, %4185
  %4382 = fadd fast float %4379, %3968
  %4383 = fadd fast float %4380, %3969
  %4384 = fadd fast float %4381, %3970
  br label %4087

; <label>:4385                                    ; preds = %4087
  br label %4386

; <label>:4386                                    ; preds = %4385, %3906
  %4387 = phi float [ 0.000000e+00, %3906 ], [ %4088, %4385 ]
  %4388 = phi float [ %1170, %3906 ], [ %4089, %4385 ]
  %4389 = phi float [ %3875, %3906 ], [ %4090, %4385 ]
  %4390 = phi float [ %3856, %3906 ], [ %4091, %4385 ]
  %4391 = phi float [ %3855, %3906 ], [ %4092, %4385 ]
  %4392 = phi float [ 0.000000e+00, %3906 ], [ %4093, %4385 ]
  %4393 = phi float [ %3849, %3906 ], [ %4094, %4385 ]
  %4394 = phi float [ %3850, %3906 ], [ %4095, %4385 ]
  %4395 = phi float [ %3851, %3906 ], [ %4096, %4385 ]
  %4396 = phi float [ %3901, %3906 ], [ %4097, %4385 ]
  %4397 = phi float [ %3902, %3906 ], [ %4098, %4385 ]
  %4398 = phi float [ %3903, %3906 ], [ %4099, %4385 ]
  %4399 = phi float [ %3854, %3906 ], [ %4100, %4385 ]
  %4400 = phi float [ %3853, %3906 ], [ %4101, %4385 ]
  %4401 = phi float [ 0.000000e+00, %3906 ], [ %4102, %4385 ]
  %4402 = phi float [ %3852, %3906 ], [ %4103, %4385 ]
  %4403 = phi float [ %3846, %3906 ], [ %4104, %4385 ]
  %4404 = phi float [ %3847, %3906 ], [ %4105, %4385 ]
  %4405 = phi float [ %3848, %3906 ], [ %4106, %4385 ]
  %4406 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4397, float %4398, float %4396, float %4397, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %4407 = call float @dx.op.unary.f32(i32 25, float %4406)  ; Rsqrt(value)
  %4408 = fmul fast float %4407, %4396
  %4409 = fmul fast float %4407, %4397
  %4410 = fmul fast float %4407, %4398
  %4411 = fadd fast float %4401, %1170
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4410, float %4408, float %4409, float %4410)  ; Dot3(ax,ay,az,bx,by,bz)
  %4414 = call float @dx.op.unary.f32(i32 25, float %4413)  ; Rsqrt(value)
  %4415 = fmul fast float %4414, %4408
  %4416 = fmul fast float %4414, %4409
  %4417 = fmul fast float %4414, %4410
  br label %4418

; <label>:4418                                    ; preds = %4386, %3843
  %4419 = phi float [ %4415, %4386 ], [ %3901, %3843 ]
  %4420 = phi float [ %4416, %4386 ], [ %3902, %3843 ]
  %4421 = phi float [ %4417, %4386 ], [ %3903, %3843 ]
  %4422 = phi float [ %4403, %4386 ], [ %3846, %3843 ]
  %4423 = phi float [ %4404, %4386 ], [ %3847, %3843 ]
  %4424 = phi float [ %4405, %4386 ], [ %3848, %3843 ]
  %4425 = phi float [ %4393, %4386 ], [ %3849, %3843 ]
  %4426 = phi float [ %4394, %4386 ], [ %3850, %3843 ]
  %4427 = phi float [ %4395, %4386 ], [ %3851, %3843 ]
  %4428 = phi float [ %4402, %4386 ], [ %3852, %3843 ]
  %4429 = phi float [ %4412, %4386 ], [ %1170, %3843 ]
  %4430 = phi float [ %4400, %4386 ], [ %3853, %3843 ]
  %4431 = phi float [ %4399, %4386 ], [ %3854, %3843 ]
  %4432 = phi float [ %4392, %4386 ], [ 0.000000e+00, %3843 ]
  %4433 = phi float [ %4391, %4386 ], [ %3855, %3843 ]
  %4434 = phi float [ %4387, %4386 ], [ 0.000000e+00, %3843 ]
  %4435 = phi float [ %4389, %4386 ], [ %3875, %3843 ]
  %4436 = phi float [ %4388, %4386 ], [ %1170, %3843 ]
  %4437 = phi float [ %4390, %4386 ], [ %3856, %3843 ]
  %4438 = fadd fast float %4428, 0xBFB99999A0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, 0x3FF1C71C80000000
  %4441 = call float @dx.op.binary.f32(i32 36, float %4428, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4442 = fsub fast float 1.000000e+00, %4440
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4443, %4422
  %4445 = fmul fast float %4443, %4423
  %4446 = fmul fast float %4443, %4424
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = fmul fast float %4440, %4422
  %4451 = fmul fast float %4440, %4423
  %4452 = fmul fast float %4440, %4424
  %4453 = fadd fast float %4450, %4441
  %4454 = fadd fast float %4451, %4441
  %4455 = fadd fast float %4452, %4441
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.i32 %4460, 3
  %4462 = and i32 %4461, 8
  %4463 = icmp ne i32 %4462, 0
  %4464 = call float @dx.op.binary.f32(i32 35, float %4447, float %4422)  ; FMax(a,b)
  %4465 = call float @dx.op.binary.f32(i32 35, float %4448, float %4422)  ; FMax(a,b)
  %4466 = call float @dx.op.binary.f32(i32 35, float %4449, float %4422)  ; FMax(a,b)
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = select i1 %231, float %4422, float %4447
  %4469 = select i1 %231, float %4467, float %4448
  %4470 = select i1 %231, float 1.000000e+00, float %4449
  %4471 = select i1 %4463, float %4464, float %4468
  %4472 = select i1 %4463, float %4465, float %4469
  %4473 = select i1 %4463, float %4466, float %4470
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4478 = fadd fast float %4475, %169
  %4479 = fadd fast float %4476, %170
  %4480 = fadd fast float %4477, %171
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4484 = fsub fast float %4478, %4482
  %4485 = fsub fast float %4479, %4483
  %4486 = fmul fast float %4484, %4484
  %4487 = fmul fast float %4485, %4485
  %4488 = fadd fast float %4486, %4487
  %4489 = call float @dx.op.unary.f32(i32 24, float %4488)  ; Sqrt(value)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4491 = fcmp fast olt float %4489, %4490
  br i1 %4491, label %4492, label %4559

; <label>:4492                                    ; preds = %4418
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4502 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4503 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4504 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4505 = fadd fast float %4502, %4478
  %4506 = fadd fast float %4503, %4479
  %4507 = fadd fast float %4504, %4480
  %4508 = fmul fast float %4505, %4494
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4506, float %4496, float %4508)  ; FMad(a,b,c)
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4498, float %4509)  ; FMad(a,b,c)
  %4511 = fmul fast float %4505, %4499
  %4512 = call float @dx.op.tertiary.f32(i32 46, float %4506, float %4500, float %4511)  ; FMad(a,b,c)
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4501, float %4512)  ; FMad(a,b,c)
  %4514 = fsub fast float %4510, %4502
  %4515 = fsub fast float %4513, %4503
  %4516 = fsub fast float %4514, %4482
  %4517 = fadd fast float %4516, %4490
  %4518 = fsub fast float %4515, %4483
  %4519 = fadd fast float %4518, %4490
  %4520 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4521 = fmul fast float %4517, %4520
  %4522 = fmul fast float %4519, %4520
  %4523 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4525 = fsub fast float 1.000000e+00, %4523
  %4526 = fsub fast float 1.000000e+00, %4524
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4525, float %4526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = fcmp fast ugt float %4528, 0.000000e+00
  br i1 %4529, label %4530, label %4833

; <label>:4530                                    ; preds = %4492
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4533 = fmul fast float %4532, %4528
  %4534 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4535 = fadd fast float %4534, %4533
  %4536 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4537 = fadd fast float %4535, %4504
  %4538 = fmul fast float %4510, %4498
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4501, float %4538)  ; FMad(a,b,c)
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4536, float %4539)  ; FMad(a,b,c)
  %4541 = fsub fast float %4540, %4504
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 2
  %4544 = fsub fast float %4541, %4543
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4525, float %4526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4525, float %4526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = fadd fast float %4550, %4546
  %4554 = fmul fast float %4553, 0x3F847AE140000000
  %4555 = fadd fast float %4551, %4547
  %4556 = fmul fast float %4555, 0x3F847AE140000000
  %4557 = fadd fast float %4552, %4548
  %4558 = fmul fast float %4557, 0x3F847AE140000000
  br label %4833

; <label>:4559                                    ; preds = %4418
  %4560 = and i32 %207, 1
  %4561 = icmp eq i32 %4560, 0
  br i1 %4561, label %4833, label %4562

; <label>:4562                                    ; preds = %4559
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4570 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4571 = extractvalue %dx.types.CBufRet.f32 %4567, 1
  %4572 = extractvalue %dx.types.CBufRet.f32 %4563, 3
  %4573 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4574 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4575 = fadd fast float %4572, %4478
  %4576 = fadd fast float %4573, %4479
  %4577 = fadd fast float %4574, %4480
  %4578 = fmul fast float %4575, %4564
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4566, float %4578)  ; FMad(a,b,c)
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4577, float %4568, float %4579)  ; FMad(a,b,c)
  %4581 = fmul fast float %4575, %4569
  %4582 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4570, float %4581)  ; FMad(a,b,c)
  %4583 = call float @dx.op.tertiary.f32(i32 46, float %4577, float %4571, float %4582)  ; FMad(a,b,c)
  %4584 = fsub fast float %4580, %4572
  %4585 = fsub fast float %4583, %4573
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4586, 2
  %4590 = extractvalue %dx.types.CBufRet.f32 %4586, 3
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.i32 %4593, 0
  %4595 = extractvalue %dx.types.CBufRet.i32 %4593, 1
  %4596 = udiv i32 %4595, %4594
  %4597 = fsub fast float %4584, %4587
  %4598 = fsub fast float %4585, %4588
  %4599 = call float @dx.op.binary.f32(i32 35, float %4597, float 0.000000e+00)  ; FMax(a,b)
  %4600 = call float @dx.op.binary.f32(i32 35, float %4598, float 0.000000e+00)  ; FMax(a,b)
  %4601 = call float @dx.op.binary.f32(i32 36, float %4599, float %4589)  ; FMin(a,b)
  %4602 = call float @dx.op.binary.f32(i32 36, float %4600, float %4590)  ; FMin(a,b)
  %4603 = add i32 %4594, -1
  %4604 = add i32 %4596, -1
  %4605 = fmul fast float %4601, %4592
  %4606 = fmul fast float %4602, %4592
  %4607 = fptoui float %4605 to i32
  %4608 = fptoui float %4606 to i32
  %4609 = call i32 @dx.op.binary.i32(i32 40, i32 %4607, i32 %4603)  ; UMin(a,b)
  %4610 = call i32 @dx.op.binary.i32(i32 40, i32 %4608, i32 %4604)  ; UMin(a,b)
  %4611 = mul i32 %4610, %4594
  %4612 = add i32 %4611, %4609
  %4613 = shl i32 %4612, 2
  %4614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.i32 %4614, 0
  %4616 = icmp eq i32 %4615, -1
  br i1 %4616, label %4833, label %4617

; <label>:4617                                    ; preds = %4562
  %4618 = mul i32 %4615, 148
  %4619 = add i32 %4618, 4
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = add i32 %4618, 8
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = add i32 %4618, 36
  %4626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = add i32 %4618, 60
  %4629 = add i32 %4618, 92
  %4630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.i32 %4630, 0
  %4632 = add i32 %4618, 116
  %4633 = fsub fast float %4584, %4621
  %4634 = fsub fast float %4585, %4624
  %4635 = fmul fast float %4592, %4633
  %4636 = fmul fast float %4592, %4634
  %4637 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4639 = fsub fast float 1.000000e+00, %4638
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 2
  %4642 = call float @dx.op.unary.f32(i32 83, float %4637)  ; DerivCoarseX(value)
  %4643 = call float @dx.op.unary.f32(i32 83, float %4639)  ; DerivCoarseX(value)
  %4644 = call float @dx.op.unary.f32(i32 84, float %4637)  ; DerivCoarseY(value)
  %4645 = call float @dx.op.unary.f32(i32 84, float %4639)  ; DerivCoarseY(value)
  %4646 = fmul fast float %4642, %4641
  %4647 = fmul fast float %4643, %4641
  %4648 = fmul fast float %4644, %4641
  %4649 = fmul fast float %4645, %4641
  %4650 = call float @dx.op.dot2.f32(i32 54, float %4648, float %4649, float %4648, float %4649)  ; Dot2(ax,ay,bx,by)
  %4651 = call float @dx.op.dot2.f32(i32 54, float %4646, float %4647, float %4646, float %4647)  ; Dot2(ax,ay,bx,by)
  %4652 = call float @dx.op.binary.f32(i32 35, float %4651, float %4650)  ; FMax(a,b)
  %4653 = call float @dx.op.unary.f32(i32 23, float %4652)  ; Log(value)
  %4654 = fmul fast float %4653, 5.000000e-01
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4657 = fadd fast float %4656, %4654
  %4658 = call float @dx.op.binary.f32(i32 35, float %4657, float 0.000000e+00)  ; FMax(a,b)
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4661 = fadd fast float %4660, %4658
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 3
  %4664 = fadd fast float %4661, %4663
  %4665 = add i32 %4631, 0
  %4666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4667 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4666, i32 0)  ; GetDimensions(handle,mipLevel)
  %4668 = extractvalue %dx.types.Dimensions %4667, 0
  %4669 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4668)  ; FirstbitLo(value)
  %4670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.i32 %4670, 1
  %4672 = sub nsw i32 %4671, %4669
  %4673 = sitofp i32 %4672 to float
  %4674 = fsub fast float %4664, %4673
  %4675 = call float @dx.op.binary.f32(i32 35, float %4674, float 0.000000e+00)  ; FMax(a,b)
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4666, %dx.types.Handle %52, float %4637, float %4639, float %4627, float undef, i32 0, i32 0, i32 undef, float %4675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fcmp ule float %4677, 0x3FE0101020000000
  %4679 = extractvalue %dx.types.CBufRet.i32 %4670, 0
  %4680 = and i32 %4679, 128
  %4681 = icmp ne i32 %4680, 0
  %4682 = and i1 %4678, %4681
  br i1 %4682, label %4833, label %4683

; <label>:4683                                    ; preds = %4617
  %4684 = add i32 %4618, 20
  %4685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = add i32 %4618, 24
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = add i32 %4618, 40
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = add i32 %4618, 96
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4698 = fmul fast float %4697, %4637
  %4699 = fmul fast float %4697, %4639
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = fadd fast float %4698, %4700
  %4702 = fadd fast float %4699, %4700
  %4703 = add i32 %4695, 0
  %4704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4703, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4705 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4704, i32 0)  ; GetDimensions(handle,mipLevel)
  %4706 = extractvalue %dx.types.Dimensions %4705, 0
  %4707 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4706)  ; FirstbitLo(value)
  %4708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.i32 %4708, 1
  %4710 = sub nsw i32 %4709, %4707
  %4711 = sitofp i32 %4710 to float
  %4712 = fsub fast float %4661, %4711
  %4713 = call float @dx.op.binary.f32(i32 35, float %4712, float 0.000000e+00)  ; FMax(a,b)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4704, %dx.types.Handle %52, float %4701, float %4702, float %4692, float undef, i32 0, i32 0, i32 undef, float %4713)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = fmul fast float %4715, %4686
  %4717 = fadd fast float %4716, %4689
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 3
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 3
  %4726 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4727 = fadd fast float %4723, %4584
  %4728 = fadd fast float %4725, %4585
  %4729 = fadd fast float %4717, %4726
  %4730 = fmul fast float %4727, %4719
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4720, float %4730)  ; FMad(a,b,c)
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4721, float %4731)  ; FMad(a,b,c)
  %4733 = fsub fast float %4732, %4726
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 2
  %4736 = fsub fast float %4733, %4735
  %4737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.i32 %4737, 0
  %4739 = call i32 @dx.op.binary.i32(i32 40, i32 %4615, i32 %4738)  ; UMin(a,b)
  %4740 = mul i32 %4739, 36
  %4741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4740, i32 undef)  ; BufferLoad(srv,index,wot)
  %4742 = extractvalue %dx.types.ResRet.i32 %4741, 0
  %4743 = add i32 %4740, 4
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = fmul fast float %4745, %4637
  %4747 = fmul fast float %4745, %4639
  %4748 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4749 = fadd fast float %4746, %4748
  %4750 = fadd fast float %4747, %4748
  %4751 = icmp eq i32 %4742, 0
  br i1 %4751, label %4820, label %4752

; <label>:4752                                    ; preds = %4683
  br label %4753

; <label>:4753                                    ; preds = %4810, %4752
  %4754 = phi float [ %4811, %4810 ], [ 0.000000e+00, %4752 ]
  %4755 = phi float [ %4812, %4810 ], [ 0.000000e+00, %4752 ]
  %4756 = phi float [ %4813, %4810 ], [ 0.000000e+00, %4752 ]
  %4757 = phi float [ %4814, %4810 ], [ 0.000000e+00, %4752 ]
  %4758 = phi float [ %4815, %4810 ], [ 0.000000e+00, %4752 ]
  %4759 = phi float [ %4816, %4810 ], [ 0.000000e+00, %4752 ]
  %4760 = phi i32 [ %4817, %4810 ], [ 0, %4752 ]
  %4761 = shl i32 %4760, 2
  %4762 = add i32 %4628, %4761
  %4763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = add i32 %4632, %4761
  %4766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4765, i32 undef)  ; BufferLoad(srv,index,wot)
  %4767 = extractvalue %dx.types.ResRet.i32 %4766, 0
  %4768 = add i32 %4767, 0
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4769, i32 0)  ; GetDimensions(handle,mipLevel)
  %4771 = extractvalue %dx.types.Dimensions %4770, 0
  %4772 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4771)  ; FirstbitLo(value)
  %4773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.i32 %4773, 1
  %4775 = sub nsw i32 %4774, %4772
  %4776 = sitofp i32 %4775 to float
  %4777 = fsub fast float %4661, %4776
  %4778 = call float @dx.op.binary.f32(i32 35, float %4777, float 0.000000e+00)  ; FMax(a,b)
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4769, %dx.types.Handle %52, float %4749, float %4750, float %4764, float undef, i32 0, i32 0, i32 undef, float %4778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = fcmp fast ogt float %4780, 0.000000e+00
  br i1 %4781, label %4782, label %4810

; <label>:4782                                    ; preds = %4753
  %4783 = add i32 %4743, %4761
  %4784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4783, i32 undef)  ; BufferLoad(srv,index,wot)
  %4785 = extractvalue %dx.types.ResRet.i32 %4784, 0
  %4786 = and i32 %4785, 32767
  %4787 = mul nuw nsw i32 %4786, 928
  %4788 = add nuw nsw i32 %4787, 48
  %4789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4788, i32 undef)  ; BufferLoad(srv,index,wot)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.ResRet.f32 %4789, 1
  %4792 = extractvalue %dx.types.ResRet.f32 %4789, 2
  %4793 = add nuw nsw i32 %4787, 60
  %4794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4793, i32 undef)  ; BufferLoad(srv,index,wot)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.ResRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.ResRet.f32 %4794, 2
  %4798 = fmul fast float %4790, %4780
  %4799 = fmul fast float %4791, %4780
  %4800 = fmul fast float %4792, %4780
  %4801 = fadd fast float %4798, %4754
  %4802 = fadd fast float %4799, %4755
  %4803 = fadd fast float %4800, %4756
  %4804 = fmul fast float %4795, %4780
  %4805 = fmul fast float %4796, %4780
  %4806 = fmul fast float %4797, %4780
  %4807 = fadd fast float %4804, %4757
  %4808 = fadd fast float %4805, %4758
  %4809 = fadd fast float %4806, %4759
  br label %4810

; <label>:4810                                    ; preds = %4782, %4753
  %4811 = phi float [ %4801, %4782 ], [ %4754, %4753 ]
  %4812 = phi float [ %4802, %4782 ], [ %4755, %4753 ]
  %4813 = phi float [ %4803, %4782 ], [ %4756, %4753 ]
  %4814 = phi float [ %4807, %4782 ], [ %4757, %4753 ]
  %4815 = phi float [ %4808, %4782 ], [ %4758, %4753 ]
  %4816 = phi float [ %4809, %4782 ], [ %4759, %4753 ]
  %4817 = add nuw i32 %4760, 1
  %4818 = icmp eq i32 %4817, %4742
  br i1 %4818, label %4819, label %4753

; <label>:4819                                    ; preds = %4810
  br label %4820

; <label>:4820                                    ; preds = %4819, %4683
  %4821 = phi float [ 0.000000e+00, %4683 ], [ %4811, %4819 ]
  %4822 = phi float [ 0.000000e+00, %4683 ], [ %4812, %4819 ]
  %4823 = phi float [ 0.000000e+00, %4683 ], [ %4813, %4819 ]
  %4824 = phi float [ 0.000000e+00, %4683 ], [ %4814, %4819 ]
  %4825 = phi float [ 0.000000e+00, %4683 ], [ %4815, %4819 ]
  %4826 = phi float [ 0.000000e+00, %4683 ], [ %4816, %4819 ]
  %4827 = fadd fast float %4824, %4821
  %4828 = fmul fast float %4827, 0x3F847AE140000000
  %4829 = fadd fast float %4825, %4822
  %4830 = fmul fast float %4829, 0x3F847AE140000000
  %4831 = fadd fast float %4826, %4823
  %4832 = fmul fast float %4831, 0x3F847AE140000000
  br label %4833

; <label>:4833                                    ; preds = %4820, %4617, %4562, %4559, %4530, %4492
  %4834 = phi float [ %4544, %4530 ], [ -1.310720e+05, %4492 ], [ %4736, %4820 ], [ -1.310720e+05, %4562 ], [ -1.310720e+05, %4617 ], [ -1.310720e+05, %4559 ]
  %4835 = phi float [ %4554, %4530 ], [ 0.000000e+00, %4492 ], [ %4828, %4820 ], [ 0.000000e+00, %4562 ], [ 0.000000e+00, %4617 ], [ 0.000000e+00, %4559 ]
  %4836 = phi float [ %4556, %4530 ], [ 0.000000e+00, %4492 ], [ %4830, %4820 ], [ 0.000000e+00, %4562 ], [ 0.000000e+00, %4617 ], [ 0.000000e+00, %4559 ]
  %4837 = phi float [ %4558, %4530 ], [ 0.000000e+00, %4492 ], [ %4832, %4820 ], [ 0.000000e+00, %4562 ], [ 0.000000e+00, %4617 ], [ 0.000000e+00, %4559 ]
  %4838 = phi i1 [ true, %4530 ], [ false, %4492 ], [ true, %4820 ], [ false, %4562 ], [ false, %4617 ], [ false, %4559 ]
  %4839 = and i32 %207, 3
  %4840 = icmp eq i32 %4839, 1
  %4841 = select i1 %4840, float 1.000000e+00, float 0.000000e+00
  %4842 = fsub fast float %4834, %171
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = select i1 %4838, float %4843, float 1.000000e+00
  %4845 = fmul fast float %4844, %4841
  %4846 = icmp eq i32 %4839, 3
  %4847 = select i1 %4846, float 1.000000e+00, float %4845
  %4848 = call float @dx.op.binary.f32(i32 35, float %4434, float %4847)  ; FMax(a,b)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fcmp fast une float %4849, 0.000000e+00
  %4851 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 25, float %4851)  ; Rsqrt(value)
  br i1 %4850, label %4860, label %4853

; <label>:4853                                    ; preds = %4833
  %4854 = fmul fast float %4852, %169
  %4855 = fmul fast float %4852, %170
  %4856 = fmul fast float %4852, %171
  %4857 = fsub fast float -0.000000e+00, %4854
  %4858 = fsub fast float -0.000000e+00, %4855
  %4859 = fsub fast float -0.000000e+00, %4856
  br label %5028

; <label>:4860                                    ; preds = %4833
  %4861 = fmul fast float %169, %4852
  %4862 = fsub fast float -0.000000e+00, %4861
  %4863 = fmul fast float %170, %4852
  %4864 = fsub fast float -0.000000e+00, %4863
  %4865 = fmul fast float %171, %4852
  %4866 = fsub fast float -0.000000e+00, %4865
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4864, float %4866, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = fmul fast float %4849, 2.500000e+00
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fmul fast float %4849, 0x4013FFFFE0000000
  %4871 = fadd fast float %4870, 0xBFFFFFFFE0000000
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4849, 0x4004000020000000
  %4874 = fadd fast float %4873, 0xBFF8000040000000
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4877 = fmul fast float %4438, 1.000000e+01
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, 2.000000e+00
  %4880 = fsub fast float 3.000000e+00, %4879
  %4881 = fmul fast float %4878, %4878
  %4882 = fmul fast float %4881, %4880
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = fsub fast float 0x3FE3333340000000, %4459
  %4885 = fmul fast float %4884, 0x400AAAAAA0000000
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4883, %4886
  %4888 = fmul fast float %4471, 0x3FEA2B8620000000
  %4889 = fmul fast float %4472, 0x3FEA2B8620000000
  %4890 = fmul fast float %4473, 0x3FEA2B8620000000
  %4891 = fadd fast float %4888, 0x3FC81DFBA0000000
  %4892 = fmul fast float %4891, %4471
  %4893 = fadd fast float %4892, 0x3F910E6020000000
  %4894 = fadd fast float %4889, 0x3FC81DFBA0000000
  %4895 = fmul fast float %4894, %4472
  %4896 = fadd fast float %4895, 0x3F910E6020000000
  %4897 = fadd fast float %4890, 0x3FC81DFBA0000000
  %4898 = fmul fast float %4897, %4473
  %4899 = fadd fast float %4898, 0x3F910E6020000000
  %4900 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = fsub fast float %4900, %4471
  %4904 = fsub fast float %4901, %4472
  %4905 = fsub fast float %4902, %4473
  %4906 = fmul fast float %4903, %4876
  %4907 = fmul fast float %4906, %4887
  %4908 = fmul fast float %4904, %4876
  %4909 = fmul fast float %4908, %4887
  %4910 = fmul fast float %4905, %4876
  %4911 = fmul fast float %4910, %4887
  %4912 = fadd fast float %4907, %4471
  %4913 = fadd fast float %4909, %4472
  %4914 = fadd fast float %4911, %4473
  %4915 = fmul fast float %4431, %4431
  %4916 = fmul fast float %4915, %4915
  %4917 = fadd fast float %4872, 1.000000e+00
  %4918 = fsub fast float %4917, %4887
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fsub fast float 1.000000e+00, %4916
  %4923 = call float @dx.op.binary.f32(i32 36, float %4919, float %4922)  ; FMin(a,b)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4923, float %4924)  ; FMax(a,b)
  %4926 = fadd fast float %4921, 0xBFE4CCCCC0000000
  %4927 = fmul fast float %4926, 0x4006DB6DA0000000
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, 2.000000e+00
  %4930 = fsub fast float 3.000000e+00, %4929
  %4931 = bitcast float %4456 to i32
  %4932 = ashr i32 %4931, 1
  %4933 = add nsw i32 %4932, 532487669
  %4934 = bitcast i32 %4933 to float
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = bitcast float %4935 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4938, 2.000000e+00
  %4940 = bitcast float %4457 to i32
  %4941 = ashr i32 %4940, 1
  %4942 = add nsw i32 %4941, 532487669
  %4943 = bitcast i32 %4942 to float
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, 2.000000e+00
  %4949 = bitcast float %4458 to i32
  %4950 = ashr i32 %4949, 1
  %4951 = add nsw i32 %4950, 532487669
  %4952 = bitcast i32 %4951 to float
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, 2.000000e+00
  %4958 = fsub fast float 0x4002A9FBE0000000, %4939
  %4959 = fadd fast float %4939, 0x3FD54FDF00000000
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, %4958
  %4964 = fmul fast float %4963, %4963
  %4965 = fsub fast float 0x4002A9FBE0000000, %4948
  %4966 = fadd fast float %4948, 0x3FD54FDF00000000
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, %4965
  %4971 = fmul fast float %4970, %4970
  %4972 = fsub fast float 0x4002A9FBE0000000, %4957
  %4973 = fadd fast float %4957, 0x3FD54FDF00000000
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, %4972
  %4978 = fmul fast float %4977, %4977
  %4979 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4964)  ; FMax(a,b)
  %4980 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4971)  ; FMax(a,b)
  %4981 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4978)  ; FMax(a,b)
  %4982 = fsub fast float 1.000000e+00, %4867
  %4983 = fadd fast float %4982, %4883
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fsub fast float 1.000000e+00, %4847
  %4986 = fmul fast float %4925, %4985
  %4987 = fmul fast float %4928, %4928
  %4988 = fmul fast float %4987, %4986
  %4989 = fmul fast float %4988, %4930
  %4990 = fmul fast float %4985, 0xBFE99999A0000000
  %4991 = fmul fast float %4990, %4876
  %4992 = fmul fast float %4991, %4887
  %4993 = fadd fast float %4992, 1.000000e+00
  %4994 = fadd fast float %4459, -1.000000e+00
  %4995 = fmul fast float %4993, %4994
  %4996 = fadd fast float %4995, 1.000000e+00
  %4997 = fsub fast float %4979, %4456
  %4998 = fsub fast float %4980, %4457
  %4999 = fsub fast float %4981, %4458
  %5000 = fmul fast float %4989, %4997
  %5001 = fmul fast float %4989, %4998
  %5002 = fmul fast float %4989, %4999
  %5003 = fadd fast float %5000, %4456
  %5004 = fadd fast float %5001, %4457
  %5005 = fadd fast float %5002, %4458
  %5006 = fsub fast float %113, %4419
  %5007 = fsub fast float %114, %4420
  %5008 = fsub fast float %115, %4421
  %5009 = fmul fast float %4989, %5006
  %5010 = fmul fast float %4989, %5007
  %5011 = fmul fast float %4989, %5008
  %5012 = fadd fast float %5009, %4419
  %5013 = fadd fast float %5010, %4420
  %5014 = fadd fast float %5011, %4421
  %5015 = fmul fast float %4989, %4984
  %5016 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = fmul fast float %5015, %5017
  %5019 = fadd fast float %5018, %5016
  %5020 = fsub fast float 1.000000e+00, %4431
  %5021 = fmul fast float %4989, %5020
  %5022 = fadd fast float %5021, %4431
  %5023 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = call float @dx.op.unary.f32(i32 25, float %5023)  ; Rsqrt(value)
  %5025 = fmul fast float %5012, %5024
  %5026 = fmul fast float %5013, %5024
  %5027 = fmul fast float %5014, %5024
  br label %5028

; <label>:5028                                    ; preds = %4860, %4853
  %5029 = phi float [ %4859, %4853 ], [ %4866, %4860 ]
  %5030 = phi float [ %4858, %4853 ], [ %4864, %4860 ]
  %5031 = phi float [ %4857, %4853 ], [ %4862, %4860 ]
  %5032 = phi float [ %4856, %4853 ], [ %4865, %4860 ]
  %5033 = phi float [ %4855, %4853 ], [ %4863, %4860 ]
  %5034 = phi float [ %4854, %4853 ], [ %4861, %4860 ]
  %5035 = phi float [ %4471, %4853 ], [ %4912, %4860 ]
  %5036 = phi float [ %4472, %4853 ], [ %4913, %4860 ]
  %5037 = phi float [ %4473, %4853 ], [ %4914, %4860 ]
  %5038 = phi float [ %4456, %4853 ], [ %5003, %4860 ]
  %5039 = phi float [ %4457, %4853 ], [ %5004, %4860 ]
  %5040 = phi float [ %4458, %4853 ], [ %5005, %4860 ]
  %5041 = phi float [ %4419, %4853 ], [ %5025, %4860 ]
  %5042 = phi float [ %4420, %4853 ], [ %5026, %4860 ]
  %5043 = phi float [ %4421, %4853 ], [ %5027, %4860 ]
  %5044 = phi float [ %4459, %4853 ], [ %5019, %4860 ]
  %5045 = phi float [ %4431, %4853 ], [ %5022, %4860 ]
  %5046 = fsub fast float -0.000000e+00, %171
  %5047 = select i1 %231, float 0.000000e+00, float %5040
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %5031, float %5030, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5033, float %5032, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fmul fast float %5050, 2.000000e+00
  %5052 = fmul fast float %5051, %5041
  %5053 = fmul fast float %5051, %5042
  %5054 = fmul fast float %5051, %5043
  %5055 = fsub fast float %5034, %5052
  %5056 = fsub fast float %5033, %5053
  %5057 = fsub fast float %5032, %5054
  %5058 = call float @dx.op.binary.f32(i32 36, float %5045, float 1.000000e+00)  ; FMin(a,b)
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = bitcast float %5059 to i32
  %5061 = ashr i32 %5060, 1
  %5062 = add nsw i32 %5061, 532487669
  %5063 = bitcast i32 %5062 to float
  %5064 = fsub fast float 1.000000e+00, %5044
  %5065 = call float @dx.op.binary.f32(i32 35, float %5064, float 0x3F847AE140000000)  ; FMax(a,b)
  %5066 = fmul fast float %5065, %5065
  %5067 = fmul fast float %5066, %5066
  %5068 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5063, float %5067, float %5068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = fsub fast float 1.000000e+00, %5045
  %5072 = bitcast float %5071 to i32
  %5073 = sub nsw i32 2129859010, %5072
  %5074 = bitcast i32 %5073 to float
  %5075 = fsub fast float 1.000000e+00, %74
  %5076 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = call float @dx.op.binary.f32(i32 35, float %5076, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5078 = fdiv fast float %5075, %5077
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, 5.000000e-01
  %5082 = fadd fast float %5081, 5.000000e-01
  %5083 = fmul fast float %5082, %74
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, %5078
  %5087 = fadd fast float %5083, %5086
  %5088 = fsub fast float 5.000000e-01, %5081
  %5089 = fmul fast float %5088, %5035
  %5090 = fmul fast float %5088, %5036
  %5091 = fmul fast float %5088, %5037
  %5092 = fadd fast float %5087, %5089
  %5093 = fadd fast float %5087, %5090
  %5094 = fadd fast float %5087, %5091
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fmul fast float %5096, 5.000000e-01
  %5098 = fadd fast float %5097, 5.000000e-01
  %5099 = fmul fast float %5098, %74
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = fmul fast float %5101, %5078
  %5103 = fadd fast float %5099, %5102
  %5104 = fsub fast float 5.000000e-01, %5097
  %5105 = fmul fast float %5104, %5035
  %5106 = fmul fast float %5104, %5036
  %5107 = fmul fast float %5104, %5037
  %5108 = fadd fast float %5103, %5105
  %5109 = fadd fast float %5103, %5106
  %5110 = fadd fast float %5103, %5107
  %5111 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = call float @dx.op.binary.f32(i32 36, float %5035, float %5113)  ; FMin(a,b)
  %5115 = fmul fast float %5114, %5059
  %5116 = fsub fast float 1.000000e+00, %5115
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = call float @dx.op.binary.f32(i32 36, float %5036, float %5113)  ; FMin(a,b)
  %5121 = fmul fast float %5120, %5059
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = bitcast float %5122 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = call float @dx.op.binary.f32(i32 36, float %5037, float %5113)  ; FMin(a,b)
  %5127 = fmul fast float %5126, %5059
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5058, %75
  %5133 = fmul fast float %5132, %5092
  %5134 = fmul fast float %5133, %5119
  %5135 = fmul fast float %5058, %76
  %5136 = fmul fast float %5135, %5093
  %5137 = fmul fast float %5136, %5125
  %5138 = fmul fast float %5058, %77
  %5139 = fmul fast float %5138, %5094
  %5140 = fmul fast float %5139, %5131
  %5141 = call float @dx.op.binary.f32(i32 36, float %5038, float %5113)  ; FMin(a,b)
  %5142 = fmul fast float %5141, %5059
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = call float @dx.op.binary.f32(i32 36, float %5039, float %5113)  ; FMin(a,b)
  %5148 = fmul fast float %5147, %5059
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = bitcast float %5149 to i32
  %5151 = sub nsw i32 2129859010, %5150
  %5152 = bitcast i32 %5151 to float
  %5153 = call float @dx.op.binary.f32(i32 36, float %5047, float %5113)  ; FMin(a,b)
  %5154 = fmul fast float %5153, %5059
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = bitcast float %5155 to i32
  %5157 = sub nsw i32 2129859010, %5156
  %5158 = bitcast i32 %5157 to float
  %5159 = fmul fast float %5132, %5108
  %5160 = fmul fast float %5159, %5146
  %5161 = fmul fast float %5135, %5109
  %5162 = fmul fast float %5161, %5152
  %5163 = fmul fast float %5138, %5110
  %5164 = fmul fast float %5163, %5158
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5137, float %5140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = select i1 %231, float 0.000000e+00, float %5134
  %5167 = select i1 %231, float %5165, float %5137
  %5168 = select i1 %231, float 0.000000e+00, float %5140
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5162, float %5164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = select i1 %231, float 0.000000e+00, float %5160
  %5171 = select i1 %231, float %5169, float %5162
  %5172 = select i1 %231, float 0.000000e+00, float %5164
  %5173 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5174 = fmul fast float %5173, %5166
  %5175 = fmul fast float %5173, %5167
  %5176 = fmul fast float %5168, %5173
  %5177 = fmul fast float %5049, 9.843750e-01
  %5178 = fmul fast float %5044, 9.843750e-01
  %5179 = fadd fast float %5177, 7.812500e-03
  %5180 = fadd fast float %5178, 7.812500e-03
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5179, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 2
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 3
  %5184 = fmul fast float %5182, %5038
  %5185 = fmul fast float %5182, %5039
  %5186 = fmul fast float %5182, %5047
  %5187 = fadd fast float %5184, %5183
  %5188 = fadd fast float %5185, %5183
  %5189 = fadd fast float %5186, %5183
  %5190 = fcmp fast ogt float %4432, 0.000000e+00
  br i1 %5190, label %5191, label %5217

; <label>:5191                                    ; preds = %5028
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4432, float %5049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.ResRet.f32 %5192, 2
  %5196 = fadd fast float %5193, -5.000000e-01
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fadd fast float %5195, -5.000000e-01
  %5199 = fsub fast float 1.000000e+00, %5038
  %5200 = fsub fast float 1.000000e+00, %5039
  %5201 = fsub fast float 1.000000e+00, %5047
  %5202 = fmul fast float %5038, 4.000000e+00
  %5203 = fmul fast float %5202, %5199
  %5204 = fmul fast float %5203, %5196
  %5205 = fmul fast float %5039, 4.000000e+00
  %5206 = fmul fast float %5205, %5200
  %5207 = fmul fast float %5206, %5197
  %5208 = fmul fast float %5047, 4.000000e+00
  %5209 = fmul fast float %5208, %5201
  %5210 = fmul fast float %5209, %5198
  %5211 = fadd fast float %5204, %5187
  %5212 = fadd fast float %5207, %5188
  %5213 = fadd fast float %5210, %5189
  %5214 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5215 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  br label %5217

; <label>:5217                                    ; preds = %5191, %5028
  %5218 = phi float [ %5214, %5191 ], [ %5187, %5028 ]
  %5219 = phi float [ %5215, %5191 ], [ %5188, %5028 ]
  %5220 = phi float [ %5216, %5191 ], [ %5189, %5028 ]
  %5221 = call float @dx.op.binary.f32(i32 35, float %5219, float %5220)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5218, float %5221)  ; FMax(a,b)
  %5223 = fsub fast float 1.000000e+00, %5222
  %5224 = fmul fast float %5222, %5044
  %5225 = fadd fast float %5224, %5044
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5229 = fmul fast float %5225, %5227
  %5230 = fadd fast float %5229, %5228
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fsub fast float 1.000000e+00, %5070
  %5233 = fadd fast float %5232, %5231
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fcmp fast olt float %5234, 1.000000e+00
  br i1 %5235, label %5236, label %5712

; <label>:5236                                    ; preds = %5217
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 3
  %5240 = fmul fast float %5238, %106
  %5241 = fmul fast float %5239, %107
  %5242 = fptoui float %5240 to i32
  %5243 = fptoui float %5241 to i32
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5247 = extractvalue %dx.types.CBufRet.f32 %5244, 3
  %5248 = fadd fast float %94, -4.000000e+00
  %5249 = call float @dx.op.binary.f32(i32 35, float %5248, float 0.000000e+00)  ; FMax(a,b)
  %5250 = fadd fast float %5249, %5245
  %5251 = fmul fast float %5250, %5246
  %5252 = call float @dx.op.unary.f32(i32 23, float %5251)  ; Log(value)
  %5253 = fmul fast float %5252, %5247
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5256 = fmul fast float %5253, %5255
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.i32 %5258, 1
  %5260 = add i32 %5259, -1
  %5261 = uitofp i32 %5259 to float
  %5262 = fmul fast float %5261, %5257
  %5263 = fptoui float %5262 to i32
  %5264 = call i32 @dx.op.binary.i32(i32 40, i32 %5263, i32 %5260)  ; UMin(a,b)
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 2
  %5267 = extractvalue %dx.types.CBufRet.i32 %5265, 3
  %5268 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5243, i32 %5266, i32 %5242)  ; UMad(a,b,c)
  %5269 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5264, i32 %5267, i32 %5268)  ; UMad(a,b,c)
  %5270 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %5271 = fptoui float %5270 to i32
  %5272 = lshr i32 %5271, 5
  %5273 = call i32 @dx.op.binary.i32(i32 40, i32 %5272, i32 8191)  ; UMin(a,b)
  %5274 = fsub fast float %4834, %171
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fcmp fast ogt float %5275, 0.000000e+00
  %5277 = fcmp fast ogt float %5057, 0.000000e+00
  %5278 = and i1 %5277, %5276
  br i1 %5278, label %5279, label %5308

; <label>:5279                                    ; preds = %5236
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = call float @dx.op.binary.f32(i32 35, float %5280, float -1.000000e+00)  ; FMax(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5281, float 1.000000e+00)  ; FMin(a,b)
  %5283 = fmul fast float %5282, %5282
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = fmul fast float %5284, 0x3FFC6E2300000000
  %5286 = fsub fast float 1.000000e+00, %5285
  %5287 = fcmp fast ogt float %5286, 0.000000e+00
  %5288 = call float @dx.op.unary.f32(i32 24, float %5286)  ; Sqrt(value)
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = call float @dx.op.unary.f32(i32 23, float %5289)  ; Log(value)
  %5291 = fmul fast float %5290, 5.000000e+00
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = fmul fast float %5292, 0x3FEF591A60000000
  %5294 = fadd fast float %5293, 0x3F94DCB540000000
  %5295 = select i1 %5287, float %5294, float 1.000000e+00
  %5296 = fcmp fast oge float %5295, 1.000000e+00
  %5297 = fmul fast float %5280, 2.000000e+00
  %5298 = fadd fast float %5297, %5057
  %5299 = select i1 %5296, float %5298, float %5057
  %5300 = fsub fast float %5299, %5057
  %5301 = fmul fast float %5300, %5275
  %5302 = fadd fast float %5301, %5057
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5302, float %5055, float %5056, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 25, float %5303)  ; Rsqrt(value)
  %5305 = fmul fast float %5304, %5055
  %5306 = fmul fast float %5304, %5056
  %5307 = fmul fast float %5302, %5304
  br label %5308

; <label>:5308                                    ; preds = %5279, %5236
  %5309 = phi float [ %5305, %5279 ], [ %5055, %5236 ]
  %5310 = phi float [ %5306, %5279 ], [ %5056, %5236 ]
  %5311 = phi float [ %5307, %5279 ], [ %5057, %5236 ]
  %5312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.i32 %5312, 2
  %5314 = add nsw i32 %5313, -1
  %5315 = call i32 @dx.op.binary.i32(i32 37, i32 %5314, i32 0)  ; IMax(a,b)
  %5316 = shl i32 %5273, 2
  %5317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.i32 %5317, 0
  %5319 = lshr i32 %5318, 16
  %5320 = and i32 %5318, 65535
  %5321 = lshr i32 %5318, 21
  %5322 = lshr i32 %5320, 5
  %5323 = call i32 @dx.op.binary.i32(i32 40, i32 %5322, i32 %5315)  ; UMin(a,b)
  %5324 = icmp ugt i32 %5321, %5323
  br i1 %5324, label %5688, label %5325

; <label>:5325                                    ; preds = %5308
  br label %5326

; <label>:5326                                    ; preds = %5680, %5325
  %5327 = phi float [ %5681, %5680 ], [ 0.000000e+00, %5325 ]
  %5328 = phi float [ %5682, %5680 ], [ 0.000000e+00, %5325 ]
  %5329 = phi float [ %5683, %5680 ], [ 0.000000e+00, %5325 ]
  %5330 = phi float [ %5684, %5680 ], [ 1.000000e+00, %5325 ]
  %5331 = phi i32 [ %5685, %5680 ], [ %5321, %5325 ]
  %5332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.i32 %5332, 2
  %5334 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5269, i32 %5333, i32 %5331)  ; UMad(a,b,c)
  %5335 = shl i32 %5334, 2
  %5336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5337 = extractvalue %dx.types.ResRet.i32 %5336, 0
  %5338 = shl i32 %5331, 5
  %5339 = sub nsw i32 %5319, %5338
  %5340 = call i32 @dx.op.binary.i32(i32 37, i32 %5339, i32 0)  ; IMax(a,b)
  %5341 = call i32 @dx.op.binary.i32(i32 38, i32 %5340, i32 31)  ; IMin(a,b)
  %5342 = sub nsw i32 1, %5319
  %5343 = add nsw i32 %5342, %5320
  %5344 = call i32 @dx.op.binary.i32(i32 37, i32 %5343, i32 0)  ; IMax(a,b)
  %5345 = call i32 @dx.op.binary.i32(i32 38, i32 %5344, i32 32)  ; IMin(a,b)
  %5346 = and i32 %5345, 31
  %5347 = shl i32 -1, %5346
  %5348 = xor i32 %5347, -1
  %5349 = and i32 %5341, 31
  %5350 = shl i32 %5348, %5349
  %5351 = icmp eq i32 %5345, 32
  %5352 = select i1 %5351, i32 -1, i32 %5350
  %5353 = and i32 %5352, %5337
  %5354 = icmp eq i32 %5353, 0
  br i1 %5354, label %5680, label %5355

; <label>:5355                                    ; preds = %5326
  br label %5356

; <label>:5356                                    ; preds = %5463, %5355
  %5357 = phi float [ %5464, %5463 ], [ %5327, %5355 ]
  %5358 = phi float [ %5465, %5463 ], [ %5328, %5355 ]
  %5359 = phi float [ %5466, %5463 ], [ %5329, %5355 ]
  %5360 = phi float [ %5467, %5463 ], [ %5330, %5355 ]
  %5361 = phi i32 [ %5366, %5463 ], [ %5353, %5355 ]
  %5362 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5361)  ; FirstbitLo(value)
  %5363 = add i32 %5362, %5338
  %5364 = and i32 %5362, 31
  %5365 = shl i32 1, %5364
  %5366 = xor i32 %5365, %5361
  %5367 = mul i32 %5363, 72
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.ResRet.f32 %5368, 1
  %5371 = extractvalue %dx.types.ResRet.f32 %5368, 2
  %5372 = add i32 %5367, 12
  %5373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5374 = extractvalue %dx.types.ResRet.i32 %5373, 0
  %5375 = add i32 %5367, 16
  %5376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.ResRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.ResRet.f32 %5376, 2
  %5380 = add i32 %5367, 28
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = add i32 %5367, 32
  %5384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.ResRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.ResRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.ResRet.f32 %5384, 3
  %5389 = add i32 %5367, 48
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.ResRet.f32 %5390, 1
  %5393 = add i32 %5367, 56
  %5394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5397 = add i32 %5367, 64
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = mul i32 %5363, 60
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.ResRet.f32 %5402, 2
  %5406 = add i32 %5401, 12
  %5407 = add i32 %5401, 48
  %5408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5409 = extractvalue %dx.types.ResRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.ResRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.ResRet.f32 %5408, 2
  %5412 = and i32 %5374, 32767
  %5413 = bitcast float %5369 to i32
  %5414 = icmp eq i32 %5413, -1
  %5415 = bitcast float %5370 to i32
  %5416 = and i32 %5374, 32768
  %5417 = icmp ne i32 %5416, 0
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = fsub fast float %5403, %5419
  %5423 = fsub fast float %5404, %5420
  %5424 = fsub fast float %5405, %5421
  %5425 = fsub fast float %169, %5422
  %5426 = fsub fast float %170, %5423
  %5427 = fsub fast float %171, %5424
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.ResRet.f32 %5428, 2
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = add i32 %5401, 24
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = add i32 %5401, 36
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5446 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5447 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5448 = fsub fast float %5409, %5445
  %5449 = fsub fast float %5410, %5446
  %5450 = fsub fast float %5411, %5447
  %5451 = fmul fast float %5448, %5377
  %5452 = fmul fast float %5449, %5378
  %5453 = fmul fast float %5450, %5379
  %5454 = call float @dx.op.binary.f32(i32 36, float %5452, float %5453)  ; FMin(a,b)
  %5455 = call float @dx.op.binary.f32(i32 36, float %5451, float %5454)  ; FMin(a,b)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = call float @dx.op.binary.f32(i32 36, float %5360, float %5456)  ; FMin(a,b)
  %5458 = uitofp i1 %5417 to float
  %5459 = fadd fast float %5275, 1.000000e+00
  %5460 = fsub fast float %5459, %5458
  %5461 = fmul fast float %5457, %5460
  %5462 = fcmp fast ogt float %5461, 0.000000e+00
  br i1 %5462, label %5469, label %5463

; <label>:5463                                    ; preds = %5611, %5356
  %5464 = phi float [ %5675, %5611 ], [ %5357, %5356 ]
  %5465 = phi float [ %5676, %5611 ], [ %5358, %5356 ]
  %5466 = phi float [ %5677, %5611 ], [ %5359, %5356 ]
  %5467 = phi float [ %5678, %5611 ], [ %5360, %5356 ]
  %5468 = icmp eq i32 %5361, %5365
  br i1 %5468, label %5679, label %5356

; <label>:5469                                    ; preds = %5356
  br i1 %5414, label %5527, label %5470

; <label>:5470                                    ; preds = %5469
  %5471 = fsub fast float -0.000000e+00, %5429
  %5472 = fsub fast float -0.000000e+00, %5430
  %5473 = fsub fast float -0.000000e+00, %5431
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fsub fast float -0.000000e+00, %5474
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fadd fast float %5476, %5392
  %5478 = fadd fast float %5391, %5476
  %5479 = fsub fast float -0.000000e+00, %5478
  %5480 = fcmp ogt float %5474, -0.000000e+00
  %5481 = select i1 %5480, float %5479, float %5477
  %5482 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5483 = fdiv fast float 1.000000e+00, %5482
  %5484 = fmul fast float %5481, %5483
  %5485 = call float @dx.op.binary.f32(i32 35, float %5484, float 0.000000e+00)  ; FMax(a,b)
  %5486 = fsub fast float -0.000000e+00, %5435
  %5487 = fsub fast float -0.000000e+00, %5436
  %5488 = fsub fast float -0.000000e+00, %5437
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fsub fast float -0.000000e+00, %5489
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fadd fast float %5491, %5396
  %5493 = fadd fast float %5395, %5491
  %5494 = fsub fast float -0.000000e+00, %5493
  %5495 = fcmp ogt float %5489, -0.000000e+00
  %5496 = select i1 %5495, float %5494, float %5492
  %5497 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5498 = fdiv fast float 1.000000e+00, %5497
  %5499 = fmul fast float %5496, %5498
  %5500 = call float @dx.op.binary.f32(i32 35, float %5499, float 0.000000e+00)  ; FMax(a,b)
  %5501 = fsub fast float -0.000000e+00, %5441
  %5502 = fsub fast float -0.000000e+00, %5442
  %5503 = fsub fast float -0.000000e+00, %5443
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fadd fast float %5506, %5400
  %5508 = fadd fast float %5399, %5506
  %5509 = fsub fast float -0.000000e+00, %5508
  %5510 = fcmp ogt float %5504, -0.000000e+00
  %5511 = select i1 %5510, float %5509, float %5507
  %5512 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5513 = fdiv fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5511, %5513
  %5515 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5516 = call float @dx.op.binary.f32(i32 36, float %5500, float %5515)  ; FMin(a,b)
  %5517 = call float @dx.op.binary.f32(i32 36, float %5485, float %5516)  ; FMin(a,b)
  %5518 = fmul fast float %5517, %5309
  %5519 = fmul fast float %5517, %5310
  %5520 = fmul fast float %5517, %5311
  %5521 = fadd fast float %5518, %169
  %5522 = fadd fast float %5519, %170
  %5523 = fadd fast float %5520, %171
  %5524 = fsub fast float %5521, %5369
  %5525 = fsub fast float %5522, %5370
  %5526 = fsub fast float %5523, %5371
  br label %5534

; <label>:5527                                    ; preds = %5469
  %5528 = fmul fast float %5309, 8.096000e+03
  %5529 = fmul fast float %5310, 8.096000e+03
  %5530 = fmul fast float %5311, 8.096000e+03
  %5531 = fadd fast float %5528, %169
  %5532 = fadd fast float %5529, %170
  %5533 = fadd fast float %5530, %171
  br label %5534

; <label>:5534                                    ; preds = %5527, %5470
  %5535 = phi float [ %5309, %5527 ], [ %5524, %5470 ]
  %5536 = phi float [ %5310, %5527 ], [ %5525, %5470 ]
  %5537 = phi float [ %5311, %5527 ], [ %5526, %5470 ]
  %5538 = phi float [ %5531, %5527 ], [ %5521, %5470 ]
  %5539 = phi float [ %5532, %5527 ], [ %5522, %5470 ]
  %5540 = phi float [ %5533, %5527 ], [ %5523, %5470 ]
  %5541 = fcmp fast olt float %5388, 1.000000e+00
  br i1 %5541, label %5542, label %5573, !dx.controlflow.hints !101

; <label>:5542                                    ; preds = %5534
  %5543 = fmul fast float %5537, %5386
  %5544 = fmul fast float %5536, %5387
  %5545 = fsub fast float %5543, %5544
  %5546 = fmul fast float %5535, %5387
  %5547 = fmul fast float %5537, %5385
  %5548 = fsub fast float %5546, %5547
  %5549 = fmul fast float %5536, %5385
  %5550 = fmul fast float %5535, %5386
  %5551 = fsub fast float %5549, %5550
  %5552 = fmul fast float %5545, 2.000000e+00
  %5553 = fmul fast float %5548, 2.000000e+00
  %5554 = fmul fast float %5551, 2.000000e+00
  %5555 = fmul fast float %5552, %5388
  %5556 = fmul fast float %5553, %5388
  %5557 = fmul fast float %5554, %5388
  %5558 = fmul fast float %5554, %5386
  %5559 = fmul fast float %5553, %5387
  %5560 = fmul fast float %5552, %5387
  %5561 = fmul fast float %5554, %5385
  %5562 = fmul fast float %5553, %5385
  %5563 = fmul fast float %5552, %5386
  %5564 = fadd fast float %5558, %5535
  %5565 = fadd fast float %5564, %5555
  %5566 = fsub fast float %5565, %5559
  %5567 = fsub fast float %5536, %5561
  %5568 = fadd fast float %5567, %5556
  %5569 = fadd fast float %5568, %5560
  %5570 = fadd fast float %5557, %5537
  %5571 = fsub fast float %5570, %5563
  %5572 = fadd fast float %5571, %5562
  br label %5573

; <label>:5573                                    ; preds = %5542, %5534
  %5574 = phi float [ %5566, %5542 ], [ %5535, %5534 ]
  %5575 = phi float [ %5569, %5542 ], [ %5536, %5534 ]
  %5576 = phi float [ %5572, %5542 ], [ %5537, %5534 ]
  br i1 %5414, label %5608, label %5577

; <label>:5577                                    ; preds = %5573
  %5578 = fmul fast float %5044, 0x400187C840000000
  %5579 = fadd fast float %5578, 0xC00EFC2120000000
  %5580 = fmul fast float %5579, %5044
  %5581 = fadd fast float %5580, 0x3FE5D16340000000
  %5582 = fmul fast float %5581, %5044
  %5583 = fadd fast float %5582, 1.000000e+00
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = fsub fast float %5538, %169
  %5586 = fsub fast float %5539, %170
  %5587 = fsub fast float %5540, %171
  %5588 = fsub fast float %5538, %5369
  %5589 = fsub fast float %5539, %5370
  %5590 = fsub fast float %5540, %5371
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5585, float %5586, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5588, float %5589, float %5590)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = fadd fast float %5592, 0x3EE4F8B580000000
  %5594 = fdiv fast float %5591, %5593
  %5595 = bitcast float %5594 to i32
  %5596 = ashr i32 %5595, 1
  %5597 = add nsw i32 %5596, 532487669
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5598, %5584
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fmul fast float %5600, 0x4009981AE0000000
  %5602 = fsub fast float 0x40111BBD80000000, %5601
  %5603 = fmul fast float %5602, %5600
  %5604 = fadd fast float %5603, 0xC0009F6020000000
  %5605 = fmul fast float %5604, %5600
  %5606 = fadd fast float %5605, 1.000000e+00
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  br label %5611

; <label>:5608                                    ; preds = %5573
  %5609 = icmp ne i32 %5415, -1
  %5610 = zext i1 %5609 to i32
  br label %5611

; <label>:5611                                    ; preds = %5608, %5577
  %5612 = phi float [ %5044, %5608 ], [ %5607, %5577 ]
  %5613 = phi i32 [ %5610, %5608 ], [ 0, %5577 ]
  %5614 = fmul float %5612, 5.000000e+00
  %5615 = fsub float 5.000000e+00, %5614
  %5616 = icmp ne i32 %5613, 0
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5619 = fadd fast float %5618, %5615
  %5620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5619)  ; FMax(a,b)
  %5621 = call float @dx.op.unary.f32(i32 6, float %5574)  ; FAbs(value)
  %5622 = call float @dx.op.unary.f32(i32 6, float %5575)  ; FAbs(value)
  %5623 = fadd fast float %5622, %5621
  %5624 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5625 = fadd fast float %5623, %5624
  %5626 = fcmp fast oeq float %5625, 0.000000e+00
  %5627 = fdiv fast float 1.000000e+00, %5625
  %5628 = select i1 %5626, float 1.000000e+00, float %5627
  %5629 = fmul fast float %5628, %5574
  %5630 = fmul fast float %5628, %5575
  %5631 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5632 = call float @dx.op.unary.f32(i32 6, float %5629)  ; FAbs(value)
  %5633 = fsub fast float 1.000000e+00, %5631
  %5634 = fsub fast float 1.000000e+00, %5632
  %5635 = fcmp fast oge float %5629, 0.000000e+00
  %5636 = fcmp fast oge float %5630, 0.000000e+00
  %5637 = select i1 %5635, float 1.000000e+00, float -1.000000e+00
  %5638 = select i1 %5636, float 1.000000e+00, float -1.000000e+00
  %5639 = fcmp fast ole float %5576, 0.000000e+00
  %5640 = fmul fast float %5637, %5633
  %5641 = fmul fast float %5638, %5634
  %5642 = select i1 %5639, float %5640, float %5629
  %5643 = select i1 %5639, float %5641, float %5630
  %5644 = fmul fast float %5642, 5.000000e-01
  %5645 = fmul fast float %5643, 5.000000e-01
  %5646 = fadd fast float %5644, 5.000000e-01
  %5647 = fadd fast float %5645, 5.000000e-01
  %5648 = uitofp i32 %5412 to float
  %5649 = call float @dx.op.binary.f32(i32 36, float %5620, float 3.000000e+00)  ; FMin(a,b)
  %5650 = fadd fast float %5649, 2.000000e+00
  %5651 = call float @dx.op.unary.f32(i32 21, float %5650)  ; Exp(value)
  %5652 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5653 = fmul fast float %5652, %5651
  %5654 = fmul fast float %5653, 2.000000e+00
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = fmul fast float %5646, %5655
  %5657 = fmul fast float %5647, %5655
  %5658 = fadd fast float %5656, %5653
  %5659 = fadd fast float %5657, %5653
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5658, float %5659, float %5648, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 3
  %5666 = fmul fast float %5665, %5382
  %5667 = call float @dx.op.binary.f32(i32 36, float %5111, float %5666)  ; FMin(a,b)
  %5668 = select i1 %5616, float %5667, float %5666
  %5669 = fmul fast float %5661, %5461
  %5670 = fmul fast float %5669, %5668
  %5671 = fmul fast float %5662, %5461
  %5672 = fmul fast float %5671, %5668
  %5673 = fmul fast float %5663, %5461
  %5674 = fmul fast float %5673, %5668
  %5675 = fadd fast float %5670, %5357
  %5676 = fadd fast float %5672, %5358
  %5677 = fadd fast float %5674, %5359
  %5678 = fsub fast float %5360, %5461
  br label %5463

; <label>:5679                                    ; preds = %5463
  br label %5680

; <label>:5680                                    ; preds = %5679, %5326
  %5681 = phi float [ %5327, %5326 ], [ %5464, %5679 ]
  %5682 = phi float [ %5328, %5326 ], [ %5465, %5679 ]
  %5683 = phi float [ %5329, %5326 ], [ %5466, %5679 ]
  %5684 = phi float [ %5330, %5326 ], [ %5467, %5679 ]
  %5685 = add i32 %5331, 1
  %5686 = icmp ugt i32 %5685, %5323
  br i1 %5686, label %5687, label %5326, !llvm.loop !102

; <label>:5687                                    ; preds = %5680
  br label %5688

; <label>:5688                                    ; preds = %5687, %5308
  %5689 = phi float [ 0.000000e+00, %5308 ], [ %5681, %5687 ]
  %5690 = phi float [ 0.000000e+00, %5308 ], [ %5682, %5687 ]
  %5691 = phi float [ 0.000000e+00, %5308 ], [ %5683, %5687 ]
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = select i1 %231, float 0.000000e+00, float %5689
  %5694 = select i1 %231, float %5692, float %5690
  %5695 = select i1 %231, float 0.000000e+00, float %5691
  %5696 = fcmp fast olt float %5234, 0.000000e+00
  %5697 = call float @dx.op.unary.f32(i32 6, float %5234)  ; FAbs(value)
  %5698 = fmul fast float %5697, %5170
  %5699 = fmul fast float %5697, %5171
  %5700 = fmul fast float %5697, %5172
  %5701 = select i1 %5696, float %5170, float %5698
  %5702 = select i1 %5696, float %5171, float %5699
  %5703 = select i1 %5696, float %5172, float %5700
  %5704 = fsub fast float 1.000000e+00, %5697
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, %5693
  %5707 = fmul fast float %5705, %5694
  %5708 = fmul fast float %5705, %5695
  %5709 = fadd fast float %5701, %5706
  %5710 = fadd fast float %5702, %5707
  %5711 = fadd fast float %5703, %5708
  br label %5712

; <label>:5712                                    ; preds = %5688, %5217
  %5713 = phi float [ %5709, %5688 ], [ %5170, %5217 ]
  %5714 = phi float [ %5710, %5688 ], [ %5171, %5217 ]
  %5715 = phi float [ %5711, %5688 ], [ %5172, %5217 ]
  %5716 = fmul fast float %169, %169
  %5717 = fmul fast float %170, %170
  %5718 = fadd fast float %5717, %5716
  %5719 = fmul fast float %171, %171
  %5720 = fadd fast float %5718, %5719
  %5721 = call float @dx.op.unary.f32(i32 24, float %5720)  ; Sqrt(value)
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5724 = fsub fast float %5721, %5723
  %5725 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5726 = fmul fast float %5724, %5725
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5730 = fmul fast float %5727, %63
  %5731 = fmul fast float %5730, %5728
  %5732 = fmul fast float %5730, %5729
  %5733 = fadd fast float %5732, 1.000000e+00
  %5734 = fmul fast float %5223, %5174
  %5735 = fmul fast float %5734, %5733
  %5736 = fmul fast float %5223, %5175
  %5737 = fmul fast float %5736, %5733
  %5738 = fmul fast float %5223, %5176
  %5739 = fmul fast float %5738, %5733
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = fcmp fast ogt float %5740, 0x3E7FF19E20000000
  %5742 = fdiv fast float 1.000000e+00, %5740
  %5743 = select i1 %5741, float %5742, float 0.000000e+00
  %5744 = fmul fast float %5743, %5035
  %5745 = fmul fast float %5743, %5036
  %5746 = fmul fast float %5743, %5037
  %5747 = fadd fast float %5744, -1.000000e+00
  %5748 = fadd fast float %5745, -1.000000e+00
  %5749 = fadd fast float %5746, -1.000000e+00
  %5750 = fmul fast float %5747, 5.000000e-01
  %5751 = fmul fast float %5748, 5.000000e-01
  %5752 = fmul fast float %5749, 5.000000e-01
  %5753 = fadd fast float %5750, 1.000000e+00
  %5754 = fadd fast float %5751, 1.000000e+00
  %5755 = fadd fast float %5752, 1.000000e+00
  %5756 = fadd fast float %5731, %4433
  %5757 = fmul fast float %5713, %5218
  %5758 = fmul fast float %5714, %5219
  %5759 = fmul fast float %5715, %5220
  %5760 = fsub fast float 1.000000e+00, %5049
  %5761 = bitcast float %5760 to i32
  %5762 = sitofp i32 %5761 to float
  %5763 = fmul fast float %5762, 5.000000e+00
  %5764 = fadd fast float %5763, 0xC1EFBF8940000000
  %5765 = fptosi float %5764 to i32
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5756, %5766
  %5768 = fmul fast float %5734, %5767
  %5769 = fmul fast float %5768, %5753
  %5770 = fmul fast float %5736, %5767
  %5771 = fmul fast float %5770, %5754
  %5772 = fmul fast float %5738, %5767
  %5773 = fmul fast float %5772, %5755
  %5774 = fmul fast float %5735, %4429
  %5775 = fmul fast float %5737, %4429
  %5776 = fmul fast float %5739, %4429
  %5777 = fadd fast float %5757, %4425
  %5778 = fadd fast float %5777, %5769
  %5779 = fmul fast float %5778, %4429
  %5780 = fadd fast float %5758, %4426
  %5781 = fadd fast float %5780, %5771
  %5782 = fmul fast float %5781, %4429
  %5783 = fadd fast float %5759, %4427
  %5784 = fadd fast float %5783, %5773
  %5785 = fmul fast float %5784, %4429
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5788 = fcmp fast oeq float %5787, 0.000000e+00
  br i1 %5788, label %7330, label %5789

; <label>:5789                                    ; preds = %5712
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5792 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.CBufRet.f32 %5793, 1
  %5796 = extractvalue %dx.types.CBufRet.f32 %5793, 2
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = select i1 %231, float %5798, float %5794
  %5802 = select i1 %231, float %5800, float %5795
  %5803 = select i1 %231, float %5799, float %5796
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5806 = fmul fast float %5805, %113
  %5807 = fmul fast float %5805, %114
  %5808 = fmul fast float %5805, %115
  %5809 = fadd fast float %5806, %169
  %5810 = fadd fast float %5807, %170
  %5811 = fadd fast float %5808, %171
  %5812 = fcmp fast olt float %5787, 0.000000e+00
  br i1 %5812, label %6908, label %5813

; <label>:5813                                    ; preds = %5789
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5818 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 1
  %5822 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5823 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5828 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5829 = fmul fast float %5815, %5809
  %5830 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5816, float %5829)  ; FMad(a,b,c)
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5817, float %5830)  ; FMad(a,b,c)
  %5832 = fadd fast float %5831, %5818
  %5833 = fmul fast float %5820, %5809
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5821, float %5833)  ; FMad(a,b,c)
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5822, float %5834)  ; FMad(a,b,c)
  %5836 = fadd fast float %5835, %5823
  %5837 = fmul fast float %5825, %5809
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5826, float %5837)  ; FMad(a,b,c)
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5827, float %5838)  ; FMad(a,b,c)
  %5840 = fadd fast float %5839, %5828
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 3
  %5845 = fmul fast float %5844, %5832
  %5846 = fmul fast float %5844, %5836
  %5847 = fadd fast float %5845, %5842
  %5848 = fadd fast float %5846, %5843
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5853 = fmul fast float %5852, %5832
  %5854 = fmul fast float %5852, %5836
  %5855 = fadd fast float %5853, %5850
  %5856 = fadd fast float %5854, %5851
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5859 = fsub fast float %5858, %5840
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = fmul fast float %5859, %5860
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5867 = fadd fast float %5866, %5864
  %5868 = fcmp fast ogt float %5867, 0.000000e+00
  br i1 %5868, label %5869, label %5893

; <label>:5869                                    ; preds = %5813
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5873 = fsub fast float %5855, %5871
  %5874 = fsub fast float %5856, %5872
  %5875 = fcmp fast olt float %5873, 0.000000e+00
  %5876 = fcmp fast olt float %5874, 0.000000e+00
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.CBufRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.CBufRet.f32 %5877, 2
  %5881 = extractvalue %dx.types.CBufRet.f32 %5877, 3
  %5882 = select i1 %5875, float %5878, float %5880
  %5883 = select i1 %5876, float %5879, float %5881
  %5884 = fmul fast float %5882, %5873
  %5885 = fmul fast float %5883, %5874
  %5886 = call float @dx.op.unary.f32(i32 6, float %5884)  ; FAbs(value)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5889 = call float @dx.op.binary.f32(i32 35, float %5886, float %5887)  ; FMax(a,b)
  %5890 = fsub fast float %5888, %5889
  %5891 = call float @dx.op.unary.f32(i32 7, float %5890)  ; Saturate(value)
  %5892 = fmul fast float %5891, %5863
  br label %5893

; <label>:5893                                    ; preds = %5869, %5813
  %5894 = phi float [ %5892, %5869 ], [ 0.000000e+00, %5813 ]
  %5895 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5896 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5897 = fadd fast float %5896, %5895
  %5898 = fcmp fast ogt float %5897, 0.000000e+00
  %5899 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  br i1 %5898, label %5900, label %5923

; <label>:5900                                    ; preds = %5893
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = fsub fast float %5847, %5902
  %5905 = fsub fast float %5848, %5903
  %5906 = fcmp fast olt float %5904, 0.000000e+00
  %5907 = fcmp fast olt float %5905, 0.000000e+00
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5912 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5913 = select i1 %5906, float %5909, float %5911
  %5914 = select i1 %5907, float %5910, float %5912
  %5915 = fmul fast float %5913, %5904
  %5916 = fmul fast float %5914, %5905
  %5917 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5918 = call float @dx.op.unary.f32(i32 6, float %5916)  ; FAbs(value)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5917, float %5918)  ; FMax(a,b)
  %5920 = fsub fast float %5899, %5919
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = fmul fast float %5921, %5863
  br label %5923

; <label>:5923                                    ; preds = %5900, %5893
  %5924 = phi float [ %5922, %5900 ], [ 0.000000e+00, %5893 ]
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = fsub fast float %5832, %5929
  %5932 = fsub fast float %5836, %5930
  %5933 = fcmp fast olt float %5931, 0.000000e+00
  %5934 = fcmp fast olt float %5932, 0.000000e+00
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = select i1 %5933, float %5936, float %5938
  %5941 = select i1 %5934, float %5937, float %5939
  %5942 = fmul fast float %5940, %5931
  %5943 = fmul fast float %5941, %5932
  %5944 = call float @dx.op.unary.f32(i32 6, float %5942)  ; FAbs(value)
  %5945 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5946 = call float @dx.op.binary.f32(i32 35, float %5944, float %5945)  ; FMax(a,b)
  %5947 = fsub fast float %5899, %5946
  %5948 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5949 = call float @dx.op.binary.f32(i32 36, float %5948, float %5927)  ; FMin(a,b)
  %5950 = fmul fast float %5949, %5863
  %5951 = fsub fast float %5924, %5950
  %5952 = fsub fast float %5894, %5924
  %5953 = fsub fast float %5952, %5950
  %5954 = call float @dx.op.binary.f32(i32 35, float %5924, float %5894)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5950, float %5954)  ; FMax(a,b)
  %5956 = fcmp fast olt float %5955, 1.000000e+00
  br i1 %5956, label %5957, label %6355, !dx.controlflow.hints !104

; <label>:5957                                    ; preds = %5923
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = fcmp fast une float %5959, 0.000000e+00
  br i1 %5960, label %5961, label %6355, !dx.controlflow.hints !105

; <label>:5961                                    ; preds = %5957
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %5976 = extractvalue %dx.types.CBufRet.f32 %5972, 3
  %5977 = fmul fast float %5963, %5809
  %5978 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5964, float %5977)  ; FMad(a,b,c)
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5965, float %5978)  ; FMad(a,b,c)
  %5980 = fadd fast float %5979, %5966
  %5981 = fmul fast float %5968, %5809
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5969, float %5981)  ; FMad(a,b,c)
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5970, float %5982)  ; FMad(a,b,c)
  %5984 = fadd fast float %5983, %5971
  %5985 = fmul fast float %5973, %5809
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %5974, float %5985)  ; FMad(a,b,c)
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5975, float %5986)  ; FMad(a,b,c)
  %5988 = fadd fast float %5987, %5976
  %5989 = fcmp fast oge float %5980, 1.000000e+00
  %5990 = fcmp fast oge float %5984, 1.000000e+00
  %5991 = or i1 %5989, %5990
  %5992 = fcmp fast olt float %5980, 0.000000e+00
  %5993 = fcmp fast olt float %5984, 0.000000e+00
  %5994 = or i1 %5992, %5993
  %5995 = or i1 %5991, %5994
  br i1 %5995, label %6355, label %5996, !dx.controlflow.hints !106

; <label>:5996                                    ; preds = %5961
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %6001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.i32 %6001, 2
  %6003 = uitofp i32 %6002 to float
  %6004 = extractvalue %dx.types.CBufRet.i32 %6001, 3
  %6005 = uitofp i32 %6004 to float
  %6006 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6007 = fmul fast float %6006, 2.000000e+00
  %6008 = fsub fast float %5980, %5998
  %6009 = fsub fast float %5984, %5999
  %6010 = fmul fast float %6007, %6008
  %6011 = fmul fast float %6007, %6009
  %6012 = fdiv fast float 1.000000e+00, %5792
  %6013 = fmul fast float %6011, %6012
  %6014 = call float @dx.op.unary.f32(i32 6, float %6013)  ; FAbs(value)
  %6015 = fmul fast float %6000, %5811
  %6016 = fmul fast float %6015, %6007
  %6017 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6018 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6019 = call float @dx.op.binary.f32(i32 35, float %6017, float %6014)  ; FMax(a,b)
  %6020 = call float @dx.op.binary.f32(i32 35, float %6018, float %6019)  ; FMax(a,b)
  %6021 = fmul fast float %6020, 2.000000e+00
  %6022 = call float @dx.op.unary.f32(i32 23, float %6021)  ; Log(value)
  %6023 = call float @dx.op.binary.f32(i32 35, float %6022, float %6003)  ; FMax(a,b)
  %6024 = call float @dx.op.unary.f32(i32 22, float %6023)  ; Frc(value)
  %6025 = fadd fast float %6024, 0xBFEA666660000000
  %6026 = fmul fast float %6025, 8.000000e+00
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = call float @dx.op.unary.f32(i32 27, float %6023)  ; Round_ni(value)
  %6029 = fadd fast float %6028, %6027
  %6030 = call float @dx.op.binary.f32(i32 36, float %6029, float %6005)  ; FMin(a,b)
  %6031 = call float @dx.op.unary.f32(i32 27, float %6030)  ; Round_ni(value)
  %6032 = fsub fast float -0.000000e+00, %6031
  %6033 = call float @dx.op.unary.f32(i32 21, float %6032)  ; Exp(value)
  %6034 = fmul fast float %6033, %6007
  %6035 = fmul fast float %6034, %5980
  %6036 = fmul fast float %6034, %5984
  %6037 = fmul fast float %6035, 2.500000e-01
  %6038 = fmul fast float %6036, 2.500000e-01
  %6039 = fadd fast float %6037, 5.000000e-01
  %6040 = fadd fast float %6038, 5.000000e-01
  %6041 = fsub fast float %6005, %6003
  %6042 = fptoui float %6041 to i32
  %6043 = add i32 %6042, 320
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6043)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = fcmp fast une float %6030, %6005
  %6048 = fsub fast float %5980, %6045
  %6049 = fsub fast float %5984, %6046
  %6050 = call float @dx.op.unary.f32(i32 6, float %6048)  ; FAbs(value)
  %6051 = call float @dx.op.unary.f32(i32 6, float %6049)  ; FAbs(value)
  %6052 = fmul fast float %6050, %6034
  %6053 = fmul fast float %6051, %6034
  %6054 = fcmp fast olt float %6052, 1.000000e+00
  %6055 = fcmp fast olt float %6053, 1.000000e+00
  %6056 = and i1 %6054, %6055
  %6057 = or i1 %6047, %6056
  br i1 %6057, label %6058, label %6355, !dx.controlflow.hints !107

; <label>:6058                                    ; preds = %5996
  %6059 = fmul fast float %6036, 5.000000e-01
  %6060 = fmul fast float %6035, 5.000000e-01
  %6061 = fadd fast float %6059, 5.000000e-01
  %6062 = fadd fast float %6060, 5.000000e-01
  %6063 = sitofp i32 %6002 to float
  %6064 = fsub fast float %6030, %6063
  %6065 = call float @dx.op.unary.f32(i32 27, float %6064)  ; Round_ni(value)
  %6066 = call float @dx.op.unary.f32(i32 22, float %6030)  ; Frc(value)
  %6067 = call float @dx.op.unary.f32(i32 22, float %6062)  ; Frc(value)
  %6068 = call float @dx.op.unary.f32(i32 22, float %6061)  ; Frc(value)
  %6069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6067, float %6068, float %6065, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6070 = extractvalue %dx.types.ResRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.ResRet.f32 %6069, 1
  %6072 = extractvalue %dx.types.ResRet.f32 %6069, 2
  %6073 = extractvalue %dx.types.ResRet.f32 %6069, 3
  %6074 = fcmp fast ogt float %6066, 0.000000e+00
  br i1 %6074, label %6075, label %6096, !dx.controlflow.hints !108

; <label>:6075                                    ; preds = %6058
  %6076 = fadd fast float %6065, 1.000000e+00
  %6077 = call float @dx.op.unary.f32(i32 22, float %6039)  ; Frc(value)
  %6078 = call float @dx.op.unary.f32(i32 22, float %6040)  ; Frc(value)
  %6079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6077, float %6078, float %6076, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.ResRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.ResRet.f32 %6079, 2
  %6083 = extractvalue %dx.types.ResRet.f32 %6079, 3
  %6084 = fsub fast float %6080, %6070
  %6085 = fsub fast float %6081, %6071
  %6086 = fsub fast float %6082, %6072
  %6087 = fsub fast float %6083, %6073
  %6088 = fmul fast float %6084, %6066
  %6089 = fmul fast float %6085, %6066
  %6090 = fmul fast float %6086, %6066
  %6091 = fmul fast float %6087, %6066
  %6092 = fadd fast float %6088, %6070
  %6093 = fadd fast float %6089, %6071
  %6094 = fadd fast float %6090, %6072
  %6095 = fadd fast float %6091, %6073
  br label %6096

; <label>:6096                                    ; preds = %6075, %6058
  %6097 = phi float [ %6092, %6075 ], [ %6070, %6058 ]
  %6098 = phi float [ %6093, %6075 ], [ %6071, %6058 ]
  %6099 = phi float [ %6094, %6075 ], [ %6072, %6058 ]
  %6100 = phi float [ %6095, %6075 ], [ %6073, %6058 ]
  %6101 = fadd fast float %6097, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fmul fast float %6101, 0xBFD5555560000000
  %6104 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6102, float %6103)  ; FMad(a,b,c)
  %6105 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6098, float 0.000000e+00)  ; FMad(a,b,c)
  %6106 = fadd fast float %6105, %6100
  %6107 = fmul fast float %6101, -7.500000e-01
  %6108 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6102, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6098, float 0.000000e+00)  ; FMad(a,b,c)
  %6110 = fadd fast float %6109, %6100
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6118 = fsub fast float %6114, %6104
  %6119 = fsub fast float %6115, %6106
  %6120 = fsub fast float %6116, %6108
  %6121 = fsub fast float %6117, %6110
  %6122 = fmul fast float %6118, %6112
  %6123 = fmul fast float %6119, %6112
  %6124 = fmul fast float %6120, %6112
  %6125 = fmul fast float %6121, %6112
  %6126 = fadd fast float %6122, %6104
  %6127 = fadd fast float %6123, %6106
  %6128 = fadd fast float %6124, %6108
  %6129 = fadd fast float %6125, %6110
  %6130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.i32 %6130, 0
  %6132 = and i32 %6131, 536870911
  %6133 = uitofp i32 %6132 to float
  %6134 = fmul fast float %6133, %5980
  %6135 = fmul fast float %6133, %5984
  %6136 = fptoui float %6134 to i32
  %6137 = fptoui float %6135 to i32
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = and i32 %6139, 31
  %6141 = lshr i32 %6136, %6140
  %6142 = lshr i32 %6137, %6140
  %6143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.i32 %6143, 0
  %6145 = and i32 %6144, 31
  %6146 = shl i32 1, %6145
  %6147 = call i32 @dx.op.binary.i32(i32 40, i32 %6146, i32 4)  ; UMin(a,b)
  %6148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6149 = extractvalue %dx.types.ResRet.i32 %6148, 0
  %6150 = extractvalue %dx.types.ResRet.i32 %6148, 1
  %6151 = icmp eq i32 %6147, 0
  br i1 %6151, label %6193, label %6152

; <label>:6152                                    ; preds = %6096
  br label %6153

; <label>:6153                                    ; preds = %6181, %6152
  %6154 = phi i32 [ %6184, %6181 ], [ 0, %6152 ]
  %6155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.i32 %6155, 0
  %6157 = lshr i32 %6156, 16
  %6158 = and i32 %6157, 31
  %6159 = shl i32 %6142, %6158
  %6160 = add i32 %6159, %6141
  %6161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.i32 %6161, 0
  %6163 = and i32 %6162, 31
  %6164 = shl i32 %6160, %6163
  %6165 = add i32 %6164, %6154
  %6166 = shl i32 %6165, 2
  %6167 = add i32 %6166, 32
  %6168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6167, i32 undef)  ; BufferLoad(srv,index,wot)
  %6169 = extractvalue %dx.types.ResRet.i32 %6168, 0
  %6170 = icmp slt i32 %6169, 0
  %6171 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6154
  %6172 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6154
  %6173 = bitcast float* %6171 to i32*
  %6174 = bitcast float* %6172 to i32*
  br i1 %6170, label %6175, label %6181

; <label>:6175                                    ; preds = %6153
  %6176 = and i32 %6169, 1073741823
  %6177 = add nuw nsw i32 %6176, 20
  %6178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6177, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.i32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.i32 %6178, 1
  br label %6181

; <label>:6181                                    ; preds = %6175, %6153
  %6182 = phi i32 [ %6179, %6175 ], [ %6149, %6153 ]
  %6183 = phi i32 [ %6180, %6175 ], [ %6150, %6153 ]
  store i32 %6182, i32* %6173, align 4
  store i32 %6183, i32* %6174, align 4
  %6184 = add nuw i32 %6154, 1
  %6185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.i32 %6185, 2
  %6187 = icmp eq i32 %6186, 0
  %6188 = icmp ugt i32 %6169, -1073741825
  %6189 = and i1 %6188, %6187
  %6190 = icmp ult i32 %6184, %6147
  %6191 = and i1 %6189, %6190
  br i1 %6191, label %6153, label %6192

; <label>:6192                                    ; preds = %6181
  br label %6193

; <label>:6193                                    ; preds = %6192, %6096
  %6194 = phi i32 [ 0, %6096 ], [ %6184, %6192 ]
  %6195 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %6196 = fptoui float %6195 to i32
  %6197 = icmp eq i32 %6196, 0
  br i1 %6197, label %6249, label %6198

; <label>:6198                                    ; preds = %6193
  br label %6199

; <label>:6199                                    ; preds = %6244, %6198
  %6200 = phi i32 [ %6245, %6244 ], [ %6194, %6198 ]
  %6201 = phi i32 [ %6246, %6244 ], [ 0, %6198 ]
  %6202 = lshr i32 %6201, 2
  %6203 = and i32 %6201, 3
  %6204 = add nuw nsw i32 %6202, 83
  %6205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6204)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.i32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.i32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.i32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.i32 %6205, 3
  %6210 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6206, i32* %6210, align 4
  %6211 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6207, i32* %6211, align 4
  %6212 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6208, i32* %6212, align 4
  %6213 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6209, i32* %6213, align 4
  %6214 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6203
  %6215 = load i32, i32* %6214, align 4, !tbaa !109, !noalias !113
  %6216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6217 = extractvalue %dx.types.ResRet.i32 %6216, 0
  %6218 = lshr i32 %6217, 16
  %6219 = and i32 %6218, 31
  %6220 = shl i32 %6142, %6219
  %6221 = add i32 %6220, %6141
  %6222 = shl i32 %6221, 2
  %6223 = add i32 %6222, %6215
  %6224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6223, i32 undef)  ; BufferLoad(srv,index,wot)
  %6225 = extractvalue %dx.types.ResRet.i32 %6224, 0
  %6226 = icmp eq i32 %6225, 0
  br i1 %6226, label %6244, label %6227

; <label>:6227                                    ; preds = %6199
  %6228 = icmp slt i32 %6225, 0
  %6229 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6200
  %6230 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6200
  %6231 = bitcast float* %6229 to i32*
  %6232 = bitcast float* %6230 to i32*
  br i1 %6228, label %6233, label %6240

; <label>:6233                                    ; preds = %6227
  %6234 = and i32 %6225, 1073741823
  %6235 = add i32 %6215, 20
  %6236 = add i32 %6235, %6234
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.i32 %6237, 1
  br label %6240

; <label>:6240                                    ; preds = %6233, %6227
  %6241 = phi i32 [ %6238, %6233 ], [ %6149, %6227 ]
  %6242 = phi i32 [ %6239, %6233 ], [ %6150, %6227 ]
  store i32 %6241, i32* %6231, align 4
  store i32 %6242, i32* %6232, align 4
  %6243 = add i32 %6200, 1
  br label %6244

; <label>:6244                                    ; preds = %6240, %6199
  %6245 = phi i32 [ %6200, %6199 ], [ %6243, %6240 ]
  %6246 = add nuw i32 %6201, 1
  %6247 = icmp eq i32 %6246, %6196
  br i1 %6247, label %6248, label %6199

; <label>:6248                                    ; preds = %6244
  br label %6249

; <label>:6249                                    ; preds = %6248, %6193
  %6250 = phi i32 [ %6194, %6193 ], [ %6245, %6248 ]
  %6251 = icmp eq i32 %6250, 1
  %6252 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  %6253 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  br i1 %6251, label %6254, label %6257

; <label>:6254                                    ; preds = %6249
  %6255 = load float, float* %6252, align 4
  %6256 = load float, float* %6253, align 4
  br label %6284

; <label>:6257                                    ; preds = %6249
  %6258 = load float, float* %6252, align 4
  %6259 = load float, float* %6253, align 4
  %6260 = fdiv fast float 1.000000e+00, %6259
  %6261 = fsub fast float %6258, %6260
  %6262 = icmp ugt i32 %6250, 1
  br i1 %6262, label %6263, label %6279

; <label>:6263                                    ; preds = %6257
  br label %6264

; <label>:6264                                    ; preds = %6264, %6263
  %6265 = phi float [ %6274, %6264 ], [ %6261, %6263 ]
  %6266 = phi float [ %6275, %6264 ], [ %6258, %6263 ]
  %6267 = phi i32 [ %6276, %6264 ], [ 1, %6263 ]
  %6268 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6267
  %6269 = load float, float* %6268, align 4
  %6270 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6267
  %6271 = load float, float* %6270, align 4
  %6272 = fdiv fast float 1.000000e+00, %6271
  %6273 = fsub fast float %6269, %6272
  %6274 = call float @dx.op.binary.f32(i32 36, float %6265, float %6273)  ; FMin(a,b)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6266, float %6269)  ; FMax(a,b)
  %6276 = add nuw i32 %6267, 1
  %6277 = icmp eq i32 %6276, %6250
  br i1 %6277, label %6278, label %6264

; <label>:6278                                    ; preds = %6264
  br label %6279

; <label>:6279                                    ; preds = %6278, %6257
  %6280 = phi float [ %6261, %6257 ], [ %6274, %6278 ]
  %6281 = phi float [ %6258, %6257 ], [ %6275, %6278 ]
  %6282 = fsub fast float %6281, %6280
  %6283 = fdiv fast float 1.000000e+00, %6282
  br label %6284

; <label>:6284                                    ; preds = %6279, %6254
  %6285 = phi float [ %6255, %6254 ], [ %6281, %6279 ]
  %6286 = phi float [ %6256, %6254 ], [ %6283, %6279 ]
  %6287 = fadd fast float %5988, %6285
  %6288 = fmul fast float %6287, %6286
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6290 = fmul fast float %6289, 2.000000e+00
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = fmul fast float %6126, %6126
  %6293 = fsub fast float %6127, %6292
  %6294 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6293)  ; FMax(a,b)
  %6295 = fdiv fast float 1.000000e+00, %6294
  %6296 = fmul fast float %6127, %6126
  %6297 = fsub fast float %6128, %6296
  %6298 = fsub fast float %6291, %6126
  %6299 = fmul fast float %6291, %6291
  %6300 = fsub fast float %6299, %6127
  %6301 = fmul fast float %6295, %6297
  %6302 = fmul fast float %6301, %6298
  %6303 = fsub fast float %6300, %6302
  %6304 = fmul fast float %6127, %6127
  %6305 = fsub fast float %6129, %6304
  %6306 = fmul fast float %6297, %6297
  %6307 = fmul fast float %6306, %6295
  %6308 = fsub fast float %6305, %6307
  %6309 = fdiv fast float %6303, %6308
  %6310 = fmul fast float %6309, %6297
  %6311 = fsub fast float %6298, %6310
  %6312 = fmul fast float %6311, %6295
  %6313 = fmul fast float %6312, %6126
  %6314 = fsub fast float 1.000000e+00, %6313
  %6315 = fmul fast float %6309, %6127
  %6316 = fsub fast float %6314, %6315
  %6317 = fmul fast float %6312, %6312
  %6318 = fmul fast float %6309, 4.000000e+00
  %6319 = fmul fast float %6318, %6316
  %6320 = fsub fast float %6317, %6319
  %6321 = call float @dx.op.unary.f32(i32 24, float %6320)  ; Sqrt(value)
  %6322 = fcmp fast oge float %6312, 0.000000e+00
  %6323 = fsub fast float -0.000000e+00, %6321
  %6324 = select i1 %6322, float %6323, float %6321
  %6325 = fsub fast float %6324, %6312
  %6326 = fdiv fast float %6325, %6309
  %6327 = fdiv fast float %6316, %6325
  %6328 = fmul fast float %6326, 5.000000e-01
  %6329 = fmul fast float %6327, 2.000000e+00
  %6330 = select i1 %6322, float %6328, float %6329
  %6331 = select i1 %6322, float %6329, float %6328
  %6332 = call float @dx.op.binary.f32(i32 35, float %6330, float %6331)  ; FMax(a,b)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6330, float %6331)  ; FMin(a,b)
  %6334 = fcmp fast ogt float %6291, %6332
  %6335 = fsub fast float %6291, %6333
  %6336 = fsub fast float %6291, %6332
  %6337 = fsub fast float %6332, %6333
  %6338 = select i1 %6334, float %6336, float %6337
  %6339 = fmul float %6335, %6338
  %6340 = select i1 %6334, float %6333, float %6291
  %6341 = fcmp fast ogt float %6291, %6333
  %6342 = fmul fast float %6340, %6332
  %6343 = fadd fast float %6340, %6332
  %6344 = fmul fast float %6343, %6126
  %6345 = fadd fast float %6342, %6127
  %6346 = fsub fast float %6345, %6344
  %6347 = fdiv fast float %6346, %6339
  %6348 = select i1 %6341, float %6347, float 0.000000e+00
  %6349 = fsub fast float 1.000000e+00, %6348
  %6350 = select i1 %6334, float %6349, float %6348
  %6351 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6353 = fmul fast float %6352, %6351
  %6354 = fsub fast float 1.000000e+00, %6353
  br label %6355

; <label>:6355                                    ; preds = %6284, %5996, %5961, %5957, %5923
  %6356 = phi float [ 1.000000e+00, %5923 ], [ %6354, %6284 ], [ 1.000000e+00, %5961 ], [ 1.000000e+00, %5996 ], [ 1.000000e+00, %5957 ]
  %6357 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %6357, label %6358, label %6520, !dx.controlflow.hints !122

; <label>:6358                                    ; preds = %6355
  %6359 = fadd fast float %5866, %5840
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6365 = call float @dx.op.binary.f32(i32 35, float %6359, float 0.000000e+00)  ; FMax(a,b)
  %6366 = fadd fast float %6365, 0x3F10000000000000
  %6367 = fcmp fast oeq float %6364, 0.000000e+00
  br i1 %6367, label %6368, label %6435

; <label>:6368                                    ; preds = %6358
  %6369 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6371 = fmul fast float %6370, %5855
  %6372 = fmul fast float %6369, %5856
  %6373 = fadd fast float %6371, 5.000000e-01
  %6374 = call float @dx.op.unary.f32(i32 27, float %6373)  ; Round_ni(value)
  %6375 = fadd fast float %6372, 5.000000e-01
  %6376 = call float @dx.op.unary.f32(i32 27, float %6375)  ; Round_ni(value)
  %6377 = fsub fast float %6373, %6374
  %6378 = fsub fast float %6375, %6376
  %6379 = fadd fast float %6374, -5.000000e-01
  %6380 = fadd fast float %6376, -5.000000e-01
  %6381 = fmul fast float %6377, 2.000000e+00
  %6382 = fsub fast float 3.000000e+00, %6381
  %6383 = fadd fast float %6381, 1.000000e+00
  %6384 = fsub fast float 2.000000e+00, %6377
  %6385 = bitcast float %6382 to i32
  %6386 = sub nsw i32 2129859010, %6385
  %6387 = bitcast i32 %6386 to float
  %6388 = fmul fast float %6387, %6384
  %6389 = fadd fast float %6388, -1.000000e+00
  %6390 = bitcast float %6383 to i32
  %6391 = sub nsw i32 2129859010, %6390
  %6392 = bitcast i32 %6391 to float
  %6393 = fmul fast float %6392, %6377
  %6394 = fadd fast float %6393, 1.000000e+00
  %6395 = fmul fast float %6378, 2.000000e+00
  %6396 = fsub fast float 3.000000e+00, %6395
  %6397 = fadd fast float %6395, 1.000000e+00
  %6398 = fsub fast float 2.000000e+00, %6378
  %6399 = bitcast float %6396 to i32
  %6400 = sub nsw i32 2129859010, %6399
  %6401 = bitcast i32 %6400 to float
  %6402 = fmul fast float %6401, %6398
  %6403 = fadd fast float %6402, -1.000000e+00
  %6404 = bitcast float %6397 to i32
  %6405 = sub nsw i32 2129859010, %6404
  %6406 = bitcast i32 %6405 to float
  %6407 = fmul fast float %6406, %6378
  %6408 = fadd fast float %6407, 1.000000e+00
  %6409 = fadd fast float %6389, %6379
  %6410 = fmul fast float %6409, %6361
  %6411 = fadd fast float %6403, %6380
  %6412 = fmul fast float %6411, %6362
  %6413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6410, float %6412, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = fmul fast float %6414, %6382
  %6416 = fadd fast float %6394, %6379
  %6417 = fmul fast float %6416, %6361
  %6418 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6417, float %6412, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  %6420 = fmul fast float %6419, %6383
  %6421 = fadd fast float %6408, %6380
  %6422 = fmul fast float %6421, %6362
  %6423 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6410, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6424 = extractvalue %dx.types.ResRet.f32 %6423, 0
  %6425 = fmul fast float %6424, %6382
  %6426 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6417, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6427 = extractvalue %dx.types.ResRet.f32 %6426, 0
  %6428 = fmul fast float %6427, %6383
  %6429 = fadd fast float %6428, %6425
  %6430 = fmul fast float %6429, %6397
  %6431 = fadd fast float %6420, %6415
  %6432 = fmul fast float %6431, %6396
  %6433 = fadd fast float %6432, %6430
  %6434 = fmul fast float %6433, 6.250000e-02
  br label %6520

; <label>:6435                                    ; preds = %6358
  %6436 = fmul fast float %242, 0x401921FB60000000
  %6437 = call float @dx.op.unary.f32(i32 13, float %6436)  ; Sin(value)
  %6438 = call float @dx.op.unary.f32(i32 12, float %6436)  ; Cos(value)
  %6439 = fsub fast float -0.000000e+00, %6437
  br label %6440

; <label>:6440                                    ; preds = %6489, %6435
  %6441 = phi float [ 0.000000e+00, %6435 ], [ %6484, %6489 ]
  %6442 = phi float [ 0.000000e+00, %6435 ], [ %6486, %6489 ]
  %6443 = phi i32 [ 0, %6435 ], [ %6490, %6489 ]
  %6444 = mul i32 %6443, 2
  %6445 = add i32 0, %6444
  %6446 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6445
  %6447 = load float, float* %6446, align 4
  %6448 = mul i32 %6443, 2
  %6449 = add i32 1, %6448
  %6450 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6449
  %6451 = load float, float* %6450, align 4
  %6452 = fmul fast float %6447, %6438
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %6451, float %6439, float %6452)  ; FMad(a,b,c)
  %6454 = fmul fast float %6447, %6437
  %6455 = call float @dx.op.tertiary.f32(i32 46, float %6451, float %6438, float %6454)  ; FMad(a,b,c)
  %6456 = fmul fast float %6453, %6364
  %6457 = fmul fast float %6455, %6364
  %6458 = fadd fast float %6456, %5855
  %6459 = fadd fast float %6457, %5856
  %6460 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6458, float %6459, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.ResRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.ResRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.ResRet.f32 %6460, 3
  %6465 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %6461, float* %6465, align 4
  %6466 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %6462, float* %6466, align 4
  %6467 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %6463, float* %6467, align 4
  %6468 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %6464, float* %6468, align 4
  %6469 = fsub fast float %6461, %6366
  %6470 = fcmp fast olt float %6469, 0.000000e+00
  %6471 = select i1 %6470, float 0.000000e+00, float 1.000000e+00
  %6472 = fadd fast float %6471, %6441
  %6473 = fmul fast float %6471, %6469
  %6474 = fadd fast float %6473, %6442
  br label %6475

; <label>:6475                                    ; preds = %6475, %6440
  %6476 = phi i32 [ 1, %6440 ], [ %6487, %6475 ]
  %6477 = phi float [ %6474, %6440 ], [ %6486, %6475 ]
  %6478 = phi float [ %6472, %6440 ], [ %6484, %6475 ]
  %6479 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %6476
  %6480 = load float, float* %6479, align 4, !tbaa !123, !noalias !113
  %6481 = fsub fast float %6480, %6366
  %6482 = fcmp fast olt float %6481, 0.000000e+00
  %6483 = select i1 %6482, float 0.000000e+00, float 1.000000e+00
  %6484 = fadd fast float %6483, %6478
  %6485 = fmul fast float %6483, %6481
  %6486 = fadd fast float %6485, %6477
  %6487 = add nuw nsw i32 %6476, 1
  %6488 = icmp eq i32 %6487, 4
  br i1 %6488, label %6489, label %6475, !llvm.loop !125

; <label>:6489                                    ; preds = %6475
  %6490 = add nuw nsw i32 %6443, 1
  %6491 = icmp eq i32 %6490, 8
  br i1 %6491, label %6492, label %6440, !llvm.loop !126

; <label>:6492                                    ; preds = %6489
  %6493 = fdiv fast float 1.000000e+00, %6484
  %6494 = fmul fast float %6493, %6486
  %6495 = fdiv fast float 1.000000e+00, %6366
  %6496 = fmul fast float %6494, %6495
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = call float @dx.op.binary.f32(i32 35, float %6497, float 0.000000e+00)  ; FMax(a,b)
  %6499 = fmul fast float %6484, 3.125000e-02
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = fmul fast float %6500, 2.000000e+00
  %6502 = fadd fast float %6501, -1.000000e+00
  %6503 = fcmp fast ogt float %6502, 0.000000e+00
  %6504 = fcmp fast olt float %6502, 0.000000e+00
  %6505 = zext i1 %6503 to i32
  %6506 = zext i1 %6504 to i32
  %6507 = sub nsw i32 %6505, %6506
  %6508 = sitofp i32 %6507 to float
  %6509 = fmul fast float %6508, %6502
  %6510 = fsub fast float 1.000000e+00, %6509
  %6511 = fmul fast float %6510, %6510
  %6512 = fmul fast float %6511, %6510
  %6513 = fsub fast float %6510, %6512
  %6514 = fmul fast float %6513, %6498
  %6515 = fsub fast float 1.000000e+00, %6512
  %6516 = fsub fast float %6515, %6514
  %6517 = fmul fast float %6508, 5.000000e-01
  %6518 = fmul fast float %6517, %6516
  %6519 = fsub fast float 5.000000e-01, %6518
  br label %6520

; <label>:6520                                    ; preds = %6492, %6368, %6355
  %6521 = phi float [ 1.000000e+00, %6355 ], [ %6434, %6368 ], [ %6519, %6492 ]
  %6522 = fcmp fast ogt float %5951, 0.000000e+00
  br i1 %6522, label %6523, label %6687, !dx.controlflow.hints !127

; <label>:6523                                    ; preds = %6520
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6526 = fadd fast float %6525, %5840
  %6527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.f32 %6527, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6527, 3
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6532 = call float @dx.op.binary.f32(i32 35, float %6526, float 0.000000e+00)  ; FMax(a,b)
  %6533 = fadd fast float %6532, 0x3F10000000000000
  %6534 = fcmp fast oeq float %6531, 0.000000e+00
  br i1 %6534, label %6535, label %6602

; <label>:6535                                    ; preds = %6523
  %6536 = extractvalue %dx.types.CBufRet.f32 %6527, 1
  %6537 = extractvalue %dx.types.CBufRet.f32 %6527, 0
  %6538 = fmul fast float %6537, %5847
  %6539 = fmul fast float %6536, %5848
  %6540 = fadd fast float %6538, 5.000000e-01
  %6541 = call float @dx.op.unary.f32(i32 27, float %6540)  ; Round_ni(value)
  %6542 = fadd fast float %6539, 5.000000e-01
  %6543 = call float @dx.op.unary.f32(i32 27, float %6542)  ; Round_ni(value)
  %6544 = fsub fast float %6540, %6541
  %6545 = fsub fast float %6542, %6543
  %6546 = fadd fast float %6541, -5.000000e-01
  %6547 = fadd fast float %6543, -5.000000e-01
  %6548 = fmul fast float %6544, 2.000000e+00
  %6549 = fsub fast float 3.000000e+00, %6548
  %6550 = fadd fast float %6548, 1.000000e+00
  %6551 = fsub fast float 2.000000e+00, %6544
  %6552 = bitcast float %6549 to i32
  %6553 = sub nsw i32 2129859010, %6552
  %6554 = bitcast i32 %6553 to float
  %6555 = fmul fast float %6554, %6551
  %6556 = fadd fast float %6555, -1.000000e+00
  %6557 = bitcast float %6550 to i32
  %6558 = sub nsw i32 2129859010, %6557
  %6559 = bitcast i32 %6558 to float
  %6560 = fmul fast float %6559, %6544
  %6561 = fadd fast float %6560, 1.000000e+00
  %6562 = fmul fast float %6545, 2.000000e+00
  %6563 = fsub fast float 3.000000e+00, %6562
  %6564 = fadd fast float %6562, 1.000000e+00
  %6565 = fsub fast float 2.000000e+00, %6545
  %6566 = bitcast float %6563 to i32
  %6567 = sub nsw i32 2129859010, %6566
  %6568 = bitcast i32 %6567 to float
  %6569 = fmul fast float %6568, %6565
  %6570 = fadd fast float %6569, -1.000000e+00
  %6571 = bitcast float %6564 to i32
  %6572 = sub nsw i32 2129859010, %6571
  %6573 = bitcast i32 %6572 to float
  %6574 = fmul fast float %6573, %6545
  %6575 = fadd fast float %6574, 1.000000e+00
  %6576 = fadd fast float %6556, %6546
  %6577 = fmul fast float %6576, %6528
  %6578 = fadd fast float %6570, %6547
  %6579 = fmul fast float %6578, %6529
  %6580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6577, float %6579, float undef, float undef, i32 0, i32 0, i32 undef, float %6533)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6581 = extractvalue %dx.types.ResRet.f32 %6580, 0
  %6582 = fmul fast float %6581, %6549
  %6583 = fadd fast float %6561, %6546
  %6584 = fmul fast float %6583, %6528
  %6585 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6584, float %6579, float undef, float undef, i32 0, i32 0, i32 undef, float %6533)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 0
  %6587 = fmul fast float %6586, %6550
  %6588 = fadd fast float %6575, %6547
  %6589 = fmul fast float %6588, %6529
  %6590 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6577, float %6589, float undef, float undef, i32 0, i32 0, i32 undef, float %6533)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6591 = extractvalue %dx.types.ResRet.f32 %6590, 0
  %6592 = fmul fast float %6591, %6549
  %6593 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6584, float %6589, float undef, float undef, i32 0, i32 0, i32 undef, float %6533)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = fmul fast float %6594, %6550
  %6596 = fadd fast float %6595, %6592
  %6597 = fmul fast float %6596, %6564
  %6598 = fadd fast float %6587, %6582
  %6599 = fmul fast float %6598, %6563
  %6600 = fadd fast float %6599, %6597
  %6601 = fmul fast float %6600, 6.250000e-02
  br label %6687

; <label>:6602                                    ; preds = %6523
  %6603 = fmul fast float %242, 0x401921FB60000000
  %6604 = call float @dx.op.unary.f32(i32 13, float %6603)  ; Sin(value)
  %6605 = call float @dx.op.unary.f32(i32 12, float %6603)  ; Cos(value)
  %6606 = fsub fast float -0.000000e+00, %6604
  br label %6607

; <label>:6607                                    ; preds = %6656, %6602
  %6608 = phi float [ 0.000000e+00, %6602 ], [ %6651, %6656 ]
  %6609 = phi float [ 0.000000e+00, %6602 ], [ %6653, %6656 ]
  %6610 = phi i32 [ 0, %6602 ], [ %6657, %6656 ]
  %6611 = mul i32 %6610, 2
  %6612 = add i32 0, %6611
  %6613 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6612
  %6614 = load float, float* %6613, align 4
  %6615 = mul i32 %6610, 2
  %6616 = add i32 1, %6615
  %6617 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6616
  %6618 = load float, float* %6617, align 4
  %6619 = fmul fast float %6614, %6605
  %6620 = call float @dx.op.tertiary.f32(i32 46, float %6618, float %6606, float %6619)  ; FMad(a,b,c)
  %6621 = fmul fast float %6614, %6604
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %6618, float %6605, float %6621)  ; FMad(a,b,c)
  %6623 = fmul fast float %6620, %6531
  %6624 = fmul fast float %6622, %6531
  %6625 = fadd fast float %6623, %5847
  %6626 = fadd fast float %6624, %5848
  %6627 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6625, float %6626, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.ResRet.f32 %6627, 1
  %6630 = extractvalue %dx.types.ResRet.f32 %6627, 2
  %6631 = extractvalue %dx.types.ResRet.f32 %6627, 3
  %6632 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %6628, float* %6632, align 4
  %6633 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %6629, float* %6633, align 4
  %6634 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %6630, float* %6634, align 4
  %6635 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %6631, float* %6635, align 4
  %6636 = fsub fast float %6628, %6533
  %6637 = fcmp fast olt float %6636, 0.000000e+00
  %6638 = select i1 %6637, float 0.000000e+00, float 1.000000e+00
  %6639 = fadd fast float %6638, %6608
  %6640 = fmul fast float %6638, %6636
  %6641 = fadd fast float %6640, %6609
  br label %6642

; <label>:6642                                    ; preds = %6642, %6607
  %6643 = phi i32 [ 1, %6607 ], [ %6654, %6642 ]
  %6644 = phi float [ %6641, %6607 ], [ %6653, %6642 ]
  %6645 = phi float [ %6639, %6607 ], [ %6651, %6642 ]
  %6646 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %6643
  %6647 = load float, float* %6646, align 4, !tbaa !123, !noalias !113
  %6648 = fsub fast float %6647, %6533
  %6649 = fcmp fast olt float %6648, 0.000000e+00
  %6650 = select i1 %6649, float 0.000000e+00, float 1.000000e+00
  %6651 = fadd fast float %6650, %6645
  %6652 = fmul fast float %6650, %6648
  %6653 = fadd fast float %6652, %6644
  %6654 = add nuw nsw i32 %6643, 1
  %6655 = icmp eq i32 %6654, 4
  br i1 %6655, label %6656, label %6642, !llvm.loop !125

; <label>:6656                                    ; preds = %6642
  %6657 = add nuw nsw i32 %6610, 1
  %6658 = icmp eq i32 %6657, 8
  br i1 %6658, label %6659, label %6607, !llvm.loop !126

; <label>:6659                                    ; preds = %6656
  %6660 = fdiv fast float 1.000000e+00, %6651
  %6661 = fmul fast float %6660, %6653
  %6662 = fdiv fast float 1.000000e+00, %6533
  %6663 = fmul fast float %6661, %6662
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = call float @dx.op.binary.f32(i32 35, float %6664, float 0.000000e+00)  ; FMax(a,b)
  %6666 = fmul fast float %6651, 3.125000e-02
  %6667 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6668 = fmul fast float %6667, 2.000000e+00
  %6669 = fadd fast float %6668, -1.000000e+00
  %6670 = fcmp fast ogt float %6669, 0.000000e+00
  %6671 = fcmp fast olt float %6669, 0.000000e+00
  %6672 = zext i1 %6670 to i32
  %6673 = zext i1 %6671 to i32
  %6674 = sub nsw i32 %6672, %6673
  %6675 = sitofp i32 %6674 to float
  %6676 = fmul fast float %6675, %6669
  %6677 = fsub fast float 1.000000e+00, %6676
  %6678 = fmul fast float %6677, %6677
  %6679 = fmul fast float %6678, %6677
  %6680 = fsub fast float %6677, %6679
  %6681 = fmul fast float %6680, %6665
  %6682 = fsub fast float 1.000000e+00, %6679
  %6683 = fsub fast float %6682, %6681
  %6684 = fmul fast float %6675, 5.000000e-01
  %6685 = fmul fast float %6684, %6683
  %6686 = fsub fast float 5.000000e-01, %6685
  br label %6687

; <label>:6687                                    ; preds = %6659, %6535, %6520
  %6688 = phi float [ 1.000000e+00, %6520 ], [ %6601, %6535 ], [ %6686, %6659 ]
  %6689 = fcmp fast ogt float %5950, 0.000000e+00
  br i1 %6689, label %6690, label %6854, !dx.controlflow.hints !128

; <label>:6690                                    ; preds = %6687
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = fadd fast float %6692, %5840
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 3
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 0
  %6699 = call float @dx.op.binary.f32(i32 35, float %6693, float 0.000000e+00)  ; FMax(a,b)
  %6700 = fadd fast float %6699, 0x3F10000000000000
  %6701 = fcmp fast oeq float %6698, 0.000000e+00
  br i1 %6701, label %6702, label %6769

; <label>:6702                                    ; preds = %6690
  %6703 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6704 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6705 = fmul fast float %6704, %5832
  %6706 = fmul fast float %6703, %5836
  %6707 = fadd fast float %6705, 5.000000e-01
  %6708 = call float @dx.op.unary.f32(i32 27, float %6707)  ; Round_ni(value)
  %6709 = fadd fast float %6706, 5.000000e-01
  %6710 = call float @dx.op.unary.f32(i32 27, float %6709)  ; Round_ni(value)
  %6711 = fsub fast float %6707, %6708
  %6712 = fsub fast float %6709, %6710
  %6713 = fadd fast float %6708, -5.000000e-01
  %6714 = fadd fast float %6710, -5.000000e-01
  %6715 = fmul fast float %6711, 2.000000e+00
  %6716 = fsub fast float 3.000000e+00, %6715
  %6717 = fadd fast float %6715, 1.000000e+00
  %6718 = fsub fast float 2.000000e+00, %6711
  %6719 = bitcast float %6716 to i32
  %6720 = sub nsw i32 2129859010, %6719
  %6721 = bitcast i32 %6720 to float
  %6722 = fmul fast float %6721, %6718
  %6723 = fadd fast float %6722, -1.000000e+00
  %6724 = bitcast float %6717 to i32
  %6725 = sub nsw i32 2129859010, %6724
  %6726 = bitcast i32 %6725 to float
  %6727 = fmul fast float %6726, %6711
  %6728 = fadd fast float %6727, 1.000000e+00
  %6729 = fmul fast float %6712, 2.000000e+00
  %6730 = fsub fast float 3.000000e+00, %6729
  %6731 = fadd fast float %6729, 1.000000e+00
  %6732 = fsub fast float 2.000000e+00, %6712
  %6733 = bitcast float %6730 to i32
  %6734 = sub nsw i32 2129859010, %6733
  %6735 = bitcast i32 %6734 to float
  %6736 = fmul fast float %6735, %6732
  %6737 = fadd fast float %6736, -1.000000e+00
  %6738 = bitcast float %6731 to i32
  %6739 = sub nsw i32 2129859010, %6738
  %6740 = bitcast i32 %6739 to float
  %6741 = fmul fast float %6740, %6712
  %6742 = fadd fast float %6741, 1.000000e+00
  %6743 = fadd fast float %6723, %6713
  %6744 = fmul fast float %6743, %6695
  %6745 = fadd fast float %6737, %6714
  %6746 = fmul fast float %6745, %6696
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6744, float %6746, float undef, float undef, i32 0, i32 0, i32 undef, float %6700)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 0
  %6749 = fmul fast float %6748, %6716
  %6750 = fadd fast float %6728, %6713
  %6751 = fmul fast float %6750, %6695
  %6752 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6751, float %6746, float undef, float undef, i32 0, i32 0, i32 undef, float %6700)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 0
  %6754 = fmul fast float %6753, %6717
  %6755 = fadd fast float %6742, %6714
  %6756 = fmul fast float %6755, %6696
  %6757 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6744, float %6756, float undef, float undef, i32 0, i32 0, i32 undef, float %6700)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 0
  %6759 = fmul fast float %6758, %6716
  %6760 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6751, float %6756, float undef, float undef, i32 0, i32 0, i32 undef, float %6700)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6761 = extractvalue %dx.types.ResRet.f32 %6760, 0
  %6762 = fmul fast float %6761, %6717
  %6763 = fadd fast float %6762, %6759
  %6764 = fmul fast float %6763, %6731
  %6765 = fadd fast float %6754, %6749
  %6766 = fmul fast float %6765, %6730
  %6767 = fadd fast float %6766, %6764
  %6768 = fmul fast float %6767, 6.250000e-02
  br label %6854

; <label>:6769                                    ; preds = %6690
  %6770 = fmul fast float %242, 0x401921FB60000000
  %6771 = call float @dx.op.unary.f32(i32 13, float %6770)  ; Sin(value)
  %6772 = call float @dx.op.unary.f32(i32 12, float %6770)  ; Cos(value)
  %6773 = fsub fast float -0.000000e+00, %6771
  br label %6774

; <label>:6774                                    ; preds = %6823, %6769
  %6775 = phi float [ 0.000000e+00, %6769 ], [ %6818, %6823 ]
  %6776 = phi float [ 0.000000e+00, %6769 ], [ %6820, %6823 ]
  %6777 = phi i32 [ 0, %6769 ], [ %6824, %6823 ]
  %6778 = mul i32 %6777, 2
  %6779 = add i32 0, %6778
  %6780 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6779
  %6781 = load float, float* %6780, align 4
  %6782 = mul i32 %6777, 2
  %6783 = add i32 1, %6782
  %6784 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6783
  %6785 = load float, float* %6784, align 4
  %6786 = fmul fast float %6781, %6772
  %6787 = call float @dx.op.tertiary.f32(i32 46, float %6785, float %6773, float %6786)  ; FMad(a,b,c)
  %6788 = fmul fast float %6781, %6771
  %6789 = call float @dx.op.tertiary.f32(i32 46, float %6785, float %6772, float %6788)  ; FMad(a,b,c)
  %6790 = fmul fast float %6787, %6698
  %6791 = fmul fast float %6789, %6698
  %6792 = fadd fast float %6790, %5832
  %6793 = fadd fast float %6791, %5836
  %6794 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6792, float %6793, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6795 = extractvalue %dx.types.ResRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.ResRet.f32 %6794, 1
  %6797 = extractvalue %dx.types.ResRet.f32 %6794, 2
  %6798 = extractvalue %dx.types.ResRet.f32 %6794, 3
  %6799 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6795, float* %6799, align 4
  %6800 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6796, float* %6800, align 4
  %6801 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6797, float* %6801, align 4
  %6802 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6798, float* %6802, align 4
  %6803 = fsub fast float %6795, %6700
  %6804 = fcmp fast olt float %6803, 0.000000e+00
  %6805 = select i1 %6804, float 0.000000e+00, float 1.000000e+00
  %6806 = fadd fast float %6805, %6775
  %6807 = fmul fast float %6805, %6803
  %6808 = fadd fast float %6807, %6776
  br label %6809

; <label>:6809                                    ; preds = %6809, %6774
  %6810 = phi i32 [ 1, %6774 ], [ %6821, %6809 ]
  %6811 = phi float [ %6808, %6774 ], [ %6820, %6809 ]
  %6812 = phi float [ %6806, %6774 ], [ %6818, %6809 ]
  %6813 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6810
  %6814 = load float, float* %6813, align 4, !tbaa !123, !noalias !113
  %6815 = fsub fast float %6814, %6700
  %6816 = fcmp fast olt float %6815, 0.000000e+00
  %6817 = select i1 %6816, float 0.000000e+00, float 1.000000e+00
  %6818 = fadd fast float %6817, %6812
  %6819 = fmul fast float %6817, %6815
  %6820 = fadd fast float %6819, %6811
  %6821 = add nuw nsw i32 %6810, 1
  %6822 = icmp eq i32 %6821, 4
  br i1 %6822, label %6823, label %6809, !llvm.loop !125

; <label>:6823                                    ; preds = %6809
  %6824 = add nuw nsw i32 %6777, 1
  %6825 = icmp eq i32 %6824, 8
  br i1 %6825, label %6826, label %6774, !llvm.loop !126

; <label>:6826                                    ; preds = %6823
  %6827 = fdiv fast float 1.000000e+00, %6818
  %6828 = fmul fast float %6827, %6820
  %6829 = fdiv fast float 1.000000e+00, %6700
  %6830 = fmul fast float %6828, %6829
  %6831 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6832 = call float @dx.op.binary.f32(i32 35, float %6831, float 0.000000e+00)  ; FMax(a,b)
  %6833 = fmul fast float %6818, 3.125000e-02
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6835 = fmul fast float %6834, 2.000000e+00
  %6836 = fadd fast float %6835, -1.000000e+00
  %6837 = fcmp fast ogt float %6836, 0.000000e+00
  %6838 = fcmp fast olt float %6836, 0.000000e+00
  %6839 = zext i1 %6837 to i32
  %6840 = zext i1 %6838 to i32
  %6841 = sub nsw i32 %6839, %6840
  %6842 = sitofp i32 %6841 to float
  %6843 = fmul fast float %6842, %6836
  %6844 = fsub fast float 1.000000e+00, %6843
  %6845 = fmul fast float %6844, %6844
  %6846 = fmul fast float %6845, %6844
  %6847 = fsub fast float %6844, %6846
  %6848 = fmul fast float %6847, %6832
  %6849 = fsub fast float 1.000000e+00, %6846
  %6850 = fsub fast float %6849, %6848
  %6851 = fmul fast float %6842, 5.000000e-01
  %6852 = fmul fast float %6851, %6850
  %6853 = fsub fast float 5.000000e-01, %6852
  br label %6854

; <label>:6854                                    ; preds = %6826, %6702, %6687
  %6855 = phi float [ 1.000000e+00, %6687 ], [ %6768, %6702 ], [ %6853, %6826 ]
  %6856 = fsub fast float %6521, %6356
  %6857 = fmul fast float %6856, %5894
  %6858 = fadd fast float %6857, %6356
  %6859 = fsub fast float %6688, %6858
  %6860 = fmul fast float %6859, %5924
  %6861 = fadd fast float %6860, %6858
  %6862 = fsub fast float %6855, %6861
  %6863 = fmul fast float %6862, %5950
  %6864 = fadd fast float %6863, %6861
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6867 = fcmp fast ogt float %6866, 0.000000e+00
  br i1 %6867, label %6868, label %6908, !dx.controlflow.hints !129

; <label>:6868                                    ; preds = %6854
  %6869 = fcmp fast ugt float %6866, 0.000000e+00
  br i1 %6869, label %6870, label %6905

; <label>:6870                                    ; preds = %6868
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.CBufRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.CBufRet.f32 %6871, 3
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6880 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6881 = extractvalue %dx.types.CBufRet.f32 %6865, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6865, 1
  %6883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.CBufRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.CBufRet.f32 %6883, 2
  %6887 = fadd fast float %6884, %5809
  %6888 = fadd fast float %6885, %5810
  %6889 = fadd fast float %6886, %5811
  %6890 = fmul fast float %6887, %6872
  %6891 = call float @dx.op.tertiary.f32(i32 46, float %6873, float %6888, float %6890)  ; FMad(a,b,c)
  %6892 = call float @dx.op.tertiary.f32(i32 46, float %6874, float %6889, float %6891)  ; FMad(a,b,c)
  %6893 = fadd fast float %6892, %6875
  %6894 = fmul fast float %6887, %6877
  %6895 = call float @dx.op.tertiary.f32(i32 46, float %6878, float %6888, float %6894)  ; FMad(a,b,c)
  %6896 = call float @dx.op.tertiary.f32(i32 46, float %6879, float %6889, float %6895)  ; FMad(a,b,c)
  %6897 = fadd fast float %6896, %6880
  %6898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6893, float %6897, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = fmul fast float %6899, %6882
  %6901 = fadd fast float %6900, %6881
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = fmul fast float %6902, %6866
  %6904 = fsub fast float 1.000000e+00, %6903
  br label %6905

; <label>:6905                                    ; preds = %6870, %6868
  %6906 = phi float [ %6904, %6870 ], [ 1.000000e+00, %6868 ]
  %6907 = fmul fast float %6906, %6864
  br label %6908

; <label>:6908                                    ; preds = %6905, %6854, %5789
  %6909 = phi float [ 1.000000e+00, %5789 ], [ %6907, %6905 ], [ %6864, %6854 ]
  %6910 = call float @dx.op.binary.f32(i32 36, float %6909, float %6909)  ; FMin(a,b)
  %6911 = call float @dx.op.binary.f32(i32 36, float %6909, float %6910)  ; FMin(a,b)
  %6912 = fcmp fast ogt float %6911, 0.000000e+00
  br i1 %6912, label %6913, label %7078, !dx.controlflow.hints !130

; <label>:6913                                    ; preds = %6908
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6917 = extractvalue %dx.types.CBufRet.f32 %6914, 2
  %6918 = extractvalue %dx.types.CBufRet.f32 %6914, 3
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.CBufRet.f32 %6919, 3
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.CBufRet.f32 %6924, 3
  %6929 = fmul fast float %6915, %5809
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %6916, float %6929)  ; FMad(a,b,c)
  %6931 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %6917, float %6930)  ; FMad(a,b,c)
  %6932 = fadd fast float %6931, %6918
  %6933 = fmul fast float %6920, %5809
  %6934 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %6921, float %6933)  ; FMad(a,b,c)
  %6935 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %6922, float %6934)  ; FMad(a,b,c)
  %6936 = fadd fast float %6935, %6923
  %6937 = fmul fast float %6925, %5809
  %6938 = call float @dx.op.tertiary.f32(i32 46, float %5810, float %6926, float %6937)  ; FMad(a,b,c)
  %6939 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %6927, float %6938)  ; FMad(a,b,c)
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 3
  %6944 = fmul fast float %6943, %6932
  %6945 = fmul fast float %6943, %6936
  %6946 = fadd fast float %6944, %6941
  %6947 = fadd fast float %6945, %6942
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.CBufRet.f32 %6948, 1
  %6951 = fsub fast float %6946, %6949
  %6952 = fsub fast float %6947, %6950
  %6953 = fcmp fast olt float %6951, 0.000000e+00
  %6954 = fcmp fast olt float %6952, 0.000000e+00
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = select i1 %6953, float %6956, float %6958
  %6961 = select i1 %6954, float %6957, float %6959
  %6962 = fmul fast float %6960, %6951
  %6963 = fmul fast float %6961, %6952
  %6964 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6965 = call float @dx.op.unary.f32(i32 6, float %6963)  ; FAbs(value)
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = call float @dx.op.binary.f32(i32 35, float %6964, float %6965)  ; FMax(a,b)
  %6969 = fsub fast float %6967, %6968
  %6970 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6971 = fcmp fast ogt float %6970, 0.000000e+00
  br i1 %6971, label %6972, label %7013, !dx.controlflow.hints !131

; <label>:6972                                    ; preds = %6913
  %6973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6946, float %6947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6974 = extractvalue %dx.types.ResRet.f32 %6973, 1
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  br i1 %6975, label %6976, label %7008

; <label>:6976                                    ; preds = %6972
  %6977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6946, float %6947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.ResRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.ResRet.f32 %6977, 2
  %6981 = extractvalue %dx.types.ResRet.f32 %6977, 3
  %6982 = fsub fast float 1.000000e+00, %6928
  %6983 = fsub fast float %6982, %6939
  %6984 = fmul fast float %6983, 0x400921FB60000000
  %6985 = fadd fast float %6984, 0x3FF921FB60000000
  %6986 = call float @dx.op.unary.f32(i32 13, float %6985)  ; Sin(value)
  %6987 = fadd fast float %6986, -1.000000e+00
  %6988 = fmul fast float %6987, 0x3FD45F3060000000
  %6989 = fmul fast float %6983, 0x401921FB60000000
  %6990 = fadd fast float %6989, 0x400921FB60000000
  %6991 = call float @dx.op.unary.f32(i32 13, float %6990)  ; Sin(value)
  %6992 = fadd fast float %6991, 0x3E7777A5C0000000
  %6993 = fmul fast float %6992, 0x3FC45F3060000000
  %6994 = fmul fast float %6983, 0x4022D97C80000000
  %6995 = fadd fast float %6994, 0x4012D97C80000000
  %6996 = call float @dx.op.unary.f32(i32 13, float %6995)  ; Sin(value)
  %6997 = fadd fast float %6996, 1.000000e+00
  %6998 = fmul fast float %6997, 0x3FBB2995E0000000
  %6999 = fmul fast float %6983, 0x402921FB60000000
  %7000 = fadd fast float %6999, 0x401921FB60000000
  %7001 = call float @dx.op.unary.f32(i32 13, float %7000)  ; Sin(value)
  %7002 = fadd fast float %7001, 0xBE8777A5C0000000
  %7003 = fmul fast float %7002, 0x3FB45F3060000000
  %7004 = call float @dx.op.dot4.f32(i32 56, float %6978, float %6979, float %6980, float %6981, float %6988, float %6993, float %6998, float %7003)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7005 = fmul fast float %7004, 0xBFF7154760000000
  %7006 = call float @dx.op.unary.f32(i32 21, float %7005)  ; Exp(value)
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  br label %7008

; <label>:7008                                    ; preds = %6976, %6972
  %7009 = phi float [ %7007, %6976 ], [ 1.000000e+00, %6972 ]
  %7010 = fadd fast float %7009, -1.000000e+00
  %7011 = fmul fast float %7010, %6970
  %7012 = fadd fast float %7011, 1.000000e+00
  br label %7013

; <label>:7013                                    ; preds = %7008, %6913
  %7014 = phi float [ %7012, %7008 ], [ 1.000000e+00, %6913 ]
  %7015 = fmul fast float %7014, %6909
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = fadd fast float %7017, %169
  %7021 = fadd fast float %7018, %170
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 0
  %7026 = extractvalue %dx.types.CBufRet.f32 %7024, 1
  %7027 = extractvalue %dx.types.CBufRet.f32 %7024, 2
  %7028 = fsub fast float -0.000000e+00, %7020
  %7029 = fsub fast float -0.000000e+00, %7021
  %7030 = fsub fast float %5046, %7019
  %7031 = fadd fast float %7030, %7023
  %7032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7028, float %7029, float %7031)  ; Dot3(ax,ay,az,bx,by,bz)
  %7033 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7025, float %7026, float %7027)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = fdiv fast float 1.000000e+00, %7033
  %7035 = fmul fast float %7034, %7032
  %7036 = fmul fast float %7025, %7035
  %7037 = fmul fast float %7026, %7035
  %7038 = fadd fast float %7036, %7020
  %7039 = fadd fast float %7037, %7021
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = fsub fast float %7038, %7041
  %7044 = fsub fast float %7039, %7042
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7048 = fmul fast float %7043, %7046
  %7049 = fmul fast float %7044, %7047
  %7050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.i32 %7050, 3
  %7052 = icmp eq i32 %7051, 0
  br i1 %7052, label %7058, label %7053

; <label>:7053                                    ; preds = %7013
  %7054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7048, float %7049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  br label %7063

; <label>:7058                                    ; preds = %7013
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7048, float %7049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  br label %7063

; <label>:7063                                    ; preds = %7058, %7053
  %7064 = phi float [ %7055, %7053 ], [ %7060, %7058 ]
  %7065 = phi float [ %7056, %7053 ], [ %7061, %7058 ]
  %7066 = phi float [ %7057, %7053 ], [ %7062, %7058 ]
  %7067 = extractvalue %dx.types.CBufRet.f32 %7022, 2
  %7068 = fmul fast float %7067, %7064
  %7069 = extractvalue %dx.types.CBufRet.f32 %7022, 0
  %7070 = fsub fast float %7035, %7069
  %7071 = fsub fast float %7070, %7068
  %7072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7071)  ; FMax(a,b)
  %7073 = fmul fast float %7072, %7065
  %7074 = call float @dx.op.binary.f32(i32 36, float %7066, float %7073)  ; FMin(a,b)
  %7075 = fmul fast float %7074, 0xBFF7154760000000
  %7076 = call float @dx.op.unary.f32(i32 21, float %7075)  ; Exp(value)
  %7077 = fmul fast float %7015, %7076
  br label %7078

; <label>:7078                                    ; preds = %7063, %6908
  %7079 = phi float [ %7077, %7063 ], [ %6909, %6908 ]
  %7080 = call float @dx.op.binary.f32(i32 36, float %7079, float %7079)  ; FMin(a,b)
  %7081 = call float @dx.op.binary.f32(i32 36, float %7079, float %7080)  ; FMin(a,b)
  %7082 = fcmp fast ogt float %7081, 0.000000e+00
  br i1 %7082, label %7083, label %7330, !dx.controlflow.hints !132

; <label>:7083                                    ; preds = %7078
  %7084 = fmul fast float %7079, %5801
  %7085 = fmul fast float %7079, %5802
  %7086 = fmul fast float %7079, %5803
  %7087 = fsub fast float %171, %4834
  %7088 = fcmp fast ogt float %7087, 0.000000e+00
  %7089 = fmul fast float %5790, 5.120000e+02
  %7090 = fmul fast float %5791, 5.120000e+02
  %7091 = fmul fast float %5792, 5.120000e+02
  %7092 = fadd fast float %7091, %171
  %7093 = fsub fast float %4834, %7092
  %7094 = fmul fast float %7093, 2.000000e+00
  %7095 = fadd fast float %7094, %7092
  %7096 = select i1 %7088, float %7095, float %7092
  %7097 = fsub fast float %7096, %171
  %7098 = call float @dx.op.dot3.f32(i32 55, float %7089, float %7090, float %7097, float %7089, float %7090, float %7097)  ; Dot3(ax,ay,az,bx,by,bz)
  %7099 = call float @dx.op.unary.f32(i32 25, float %7098)  ; Rsqrt(value)
  %7100 = fmul fast float %7099, %7089
  %7101 = fmul fast float %7099, %7090
  %7102 = fmul fast float %7099, %7097
  %7103 = fsub fast float %4834, %171
  %7104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7103)  ; Dot3(ax,ay,az,bx,by,bz)
  %7105 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7100, float %7101, float %7102)  ; Dot3(ax,ay,az,bx,by,bz)
  %7106 = fdiv fast float 1.000000e+00, %7105
  %7107 = fmul fast float %7106, %7104
  %7108 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7087, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7109 = fcmp fast ogt float %7108, 0.000000e+00
  %7110 = fcmp fast olt float %7108, 0.000000e+00
  %7111 = zext i1 %7109 to i32
  %7112 = zext i1 %7110 to i32
  %7113 = sub nsw i32 %7111, %7112
  %7114 = sitofp i32 %7113 to float
  %7115 = fsub fast float %7096, %4834
  %7116 = call float @dx.op.dot3.f32(i32 55, float %7089, float %7090, float %7115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7117 = fcmp fast ogt float %7116, 0.000000e+00
  %7118 = fcmp fast olt float %7116, 0.000000e+00
  %7119 = zext i1 %7117 to i32
  %7120 = zext i1 %7118 to i32
  %7121 = sub nsw i32 %7119, %7120
  %7122 = sitofp i32 %7121 to float
  %7123 = fcmp fast une float %7114, %7122
  br i1 %7123, label %7124, label %7134

; <label>:7124                                    ; preds = %7083
  %7125 = fmul fast float %7107, %7102
  %7126 = fmul fast float %7107, %7101
  %7127 = fmul fast float %7107, %7100
  %7128 = fmul fast float %7127, %7127
  %7129 = fmul fast float %7126, %7126
  %7130 = fadd fast float %7128, %7129
  %7131 = fmul fast float %7125, %7125
  %7132 = fadd fast float %7130, %7131
  %7133 = call float @dx.op.unary.f32(i32 24, float %7132)  ; Sqrt(value)
  br label %7144

; <label>:7134                                    ; preds = %7083
  %7135 = icmp slt i32 %7113, 0
  br i1 %7135, label %7136, label %7144

; <label>:7136                                    ; preds = %7134
  %7137 = fsub fast float %171, %7096
  %7138 = fmul fast float %7089, %7089
  %7139 = fmul fast float %7090, %7090
  %7140 = fadd fast float %7138, %7139
  %7141 = fmul fast float %7137, %7137
  %7142 = fadd fast float %7140, %7141
  %7143 = call float @dx.op.unary.f32(i32 24, float %7142)  ; Sqrt(value)
  br label %7144

; <label>:7144                                    ; preds = %7136, %7134, %7124
  %7145 = phi float [ %7133, %7124 ], [ %7143, %7136 ], [ 0.000000e+00, %7134 ]
  %7146 = fsub fast float -0.000000e+00, %7145
  %7147 = select i1 %7088, float -0.000000e+00, float %7146
  %7148 = fmul fast float %4835, 0x3FF7154760000000
  %7149 = fmul fast float %7148, %7147
  %7150 = fmul fast float %4836, 0x3FF7154760000000
  %7151 = fmul fast float %7150, %7147
  %7152 = fmul fast float %4837, 0x3FF7154760000000
  %7153 = fmul fast float %7152, %7147
  %7154 = call float @dx.op.unary.f32(i32 21, float %7149)  ; Exp(value)
  %7155 = call float @dx.op.unary.f32(i32 21, float %7151)  ; Exp(value)
  %7156 = call float @dx.op.unary.f32(i32 21, float %7153)  ; Exp(value)
  %7157 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7158 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7159 = call float @dx.op.unary.f32(i32 7, float %7156)  ; Saturate(value)
  %7160 = fmul fast float %7084, %7157
  %7161 = fmul fast float %7085, %7158
  %7162 = fmul fast float %7086, %7159
  %7163 = fsub fast float %5790, %5034
  %7164 = fsub fast float %5791, %5033
  %7165 = fsub fast float %5792, %5032
  %7166 = call float @dx.op.dot3.f32(i32 55, float %7163, float %7164, float %7165, float %7163, float %7164, float %7165)  ; Dot3(ax,ay,az,bx,by,bz)
  %7167 = call float @dx.op.unary.f32(i32 25, float %7166)  ; Rsqrt(value)
  %7168 = fmul fast float %7167, %7163
  %7169 = fmul fast float %7167, %7164
  %7170 = fmul fast float %7167, %7165
  %7171 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5791, float %5792, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7172 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5030, float %5029, float %7168, float %7169, float %7170)  ; Dot3(ax,ay,az,bx,by,bz)
  %7173 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7174 = fmul fast float %7173, %7173
  %7175 = fmul fast float %7174, %5074
  %7176 = call float @dx.op.unary.f32(i32 7, float %7175)  ; Saturate(value)
  %7177 = fmul fast float %7176, %7173
  %7178 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %7168, float %7169, float %7170)  ; Dot3(ax,ay,az,bx,by,bz)
  %7179 = fmul fast float %7178, %7178
  %7180 = call float @dx.op.unary.f32(i32 6, float %7171)  ; FAbs(value)
  %7181 = fsub fast float 1.000000e+00, %5067
  %7182 = fmul fast float %5049, %5049
  %7183 = fmul fast float %7182, %7181
  %7184 = fadd fast float %7183, %5067
  %7185 = bitcast float %7184 to i32
  %7186 = ashr i32 %7185, 1
  %7187 = add nsw i32 %7186, 532487669
  %7188 = bitcast i32 %7187 to float
  %7189 = fadd fast float %7188, %5049
  %7190 = fmul fast float %5067, %7179
  %7191 = fsub fast float 1.000000e+00, %7179
  %7192 = fadd fast float %7191, %7190
  %7193 = fmul fast float %7180, %7180
  %7194 = fmul fast float %7193, %7181
  %7195 = fadd fast float %7194, %5067
  %7196 = bitcast float %7195 to i32
  %7197 = ashr i32 %7196, 1
  %7198 = add nsw i32 %7197, 532487669
  %7199 = bitcast i32 %7198 to float
  %7200 = fadd fast float %7199, %7180
  %7201 = fmul fast float %7192, %7192
  %7202 = fmul fast float %7201, %7189
  %7203 = fmul fast float %7202, %7200
  %7204 = fdiv fast float 0x3FF0A00000000000, %7203
  %7205 = fmul fast float %7204, %5067
  %7206 = call float @dx.op.unary.f32(i32 6, float %7172)  ; FAbs(value)
  %7207 = fsub fast float 1.000000e+00, %7206
  %7208 = bitcast float %7207 to i32
  %7209 = sitofp i32 %7208 to float
  %7210 = fmul fast float %7209, 5.000000e+00
  %7211 = fadd fast float %7210, 0xC1EFBF8940000000
  %7212 = fptosi float %7211 to i32
  %7213 = bitcast i32 %7212 to float
  %7214 = fsub fast float 1.000000e+00, %5038
  %7215 = fsub fast float 1.000000e+00, %5039
  %7216 = fsub fast float 1.000000e+00, %5047
  %7217 = fmul fast float %7213, %7214
  %7218 = fmul fast float %7213, %7215
  %7219 = fmul fast float %7213, %7216
  %7220 = fadd fast float %7217, %5038
  %7221 = fadd fast float %7218, %5039
  %7222 = fadd fast float %7219, %5047
  br i1 %5190, label %7223, label %7246

; <label>:7223                                    ; preds = %7144
  %7224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4432, float %7206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = fadd fast float %7225, -5.000000e-01
  %7229 = fadd fast float %7226, -5.000000e-01
  %7230 = fadd fast float %7227, -5.000000e-01
  %7231 = fmul fast float %5038, 4.000000e+00
  %7232 = fmul fast float %7231, %7214
  %7233 = fmul fast float %7232, %7228
  %7234 = fmul fast float %5039, 4.000000e+00
  %7235 = fmul fast float %7234, %7215
  %7236 = fmul fast float %7235, %7229
  %7237 = fmul fast float %5047, 4.000000e+00
  %7238 = fmul fast float %7237, %7216
  %7239 = fmul fast float %7238, %7230
  %7240 = fadd fast float %7233, %7220
  %7241 = fadd fast float %7236, %7221
  %7242 = fadd fast float %7239, %7222
  %7243 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7244 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7245 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  br label %7246

; <label>:7246                                    ; preds = %7223, %7144
  %7247 = phi float [ %7243, %7223 ], [ %7220, %7144 ]
  %7248 = phi float [ %7244, %7223 ], [ %7221, %7144 ]
  %7249 = phi float [ %7245, %7223 ], [ %7222, %7144 ]
  %7250 = fmul fast float %7171, 9.843750e-01
  %7251 = fadd fast float %7250, 7.812500e-03
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7251, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 3
  %7255 = fmul fast float %7253, %5038
  %7256 = fmul fast float %7253, %5039
  %7257 = fmul fast float %7253, %5047
  %7258 = fadd fast float %7255, %7254
  %7259 = fadd fast float %7256, %7254
  %7260 = fadd fast float %7257, %7254
  br i1 %5190, label %7261, label %7284

; <label>:7261                                    ; preds = %7246
  %7262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4432, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7263 = extractvalue %dx.types.ResRet.f32 %7262, 0
  %7264 = extractvalue %dx.types.ResRet.f32 %7262, 1
  %7265 = extractvalue %dx.types.ResRet.f32 %7262, 2
  %7266 = fadd fast float %7263, -5.000000e-01
  %7267 = fadd fast float %7264, -5.000000e-01
  %7268 = fadd fast float %7265, -5.000000e-01
  %7269 = fmul fast float %5038, 4.000000e+00
  %7270 = fmul fast float %7269, %7214
  %7271 = fmul fast float %7270, %7266
  %7272 = fmul fast float %5039, 4.000000e+00
  %7273 = fmul fast float %7272, %7215
  %7274 = fmul fast float %7273, %7267
  %7275 = fmul fast float %5047, 4.000000e+00
  %7276 = fmul fast float %7275, %7216
  %7277 = fmul fast float %7276, %7268
  %7278 = fadd fast float %7271, %7258
  %7279 = fadd fast float %7274, %7259
  %7280 = fadd fast float %7277, %7260
  %7281 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7283 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  br label %7284

; <label>:7284                                    ; preds = %7261, %7246
  %7285 = phi float [ %7281, %7261 ], [ %7258, %7246 ]
  %7286 = phi float [ %7282, %7261 ], [ %7259, %7246 ]
  %7287 = phi float [ %7283, %7261 ], [ %7260, %7246 ]
  %7288 = call float @dx.op.binary.f32(i32 35, float %7286, float %7287)  ; FMax(a,b)
  %7289 = call float @dx.op.binary.f32(i32 35, float %7285, float %7288)  ; FMax(a,b)
  %7290 = fsub fast float 1.000000e+00, %7289
  %7291 = fmul fast float %7247, %7205
  %7292 = fmul fast float %7248, %7205
  %7293 = fmul fast float %7249, %7205
  %7294 = fsub fast float 1.000000e+00, %7172
  %7295 = bitcast float %7294 to i32
  %7296 = sitofp i32 %7295 to float
  %7297 = fmul fast float %7296, 5.000000e+00
  %7298 = fadd fast float %7297, 0xC1EFBF8940000000
  %7299 = fptosi float %7298 to i32
  %7300 = bitcast i32 %7299 to float
  %7301 = fmul fast float %7300, %4433
  %7302 = fmul fast float %7290, %7301
  %7303 = fmul fast float %7302, %5753
  %7304 = fmul fast float %7302, %5754
  %7305 = fmul fast float %7302, %5755
  %7306 = fadd fast float %7303, %7291
  %7307 = fadd fast float %7304, %7292
  %7308 = fadd fast float %7305, %7293
  %7309 = fmul fast float %7177, %7160
  %7310 = fmul fast float %7309, %7290
  %7311 = fmul fast float %7177, %7161
  %7312 = fmul fast float %7311, %7290
  %7313 = fmul fast float %7177, %7162
  %7314 = fmul fast float %7313, %7290
  %7315 = fmul fast float %7309, %7306
  %7316 = fmul fast float %7311, %7307
  %7317 = fmul fast float %7313, %7308
  %7318 = fadd fast float %7310, %5735
  %7319 = fmul fast float %7318, %4429
  %7320 = fadd fast float %7312, %5737
  %7321 = fmul fast float %7320, %4429
  %7322 = fadd fast float %7314, %5739
  %7323 = fmul fast float %7322, %4429
  %7324 = fadd fast float %7315, %5778
  %7325 = fmul fast float %7324, %4429
  %7326 = fadd fast float %7316, %5781
  %7327 = fmul fast float %7326, %4429
  %7328 = fadd fast float %7317, %5784
  %7329 = fmul fast float %7328, %4429
  br label %7330

; <label>:7330                                    ; preds = %7284, %7078, %5712
  %7331 = phi float [ %5779, %5712 ], [ %5779, %7078 ], [ %7325, %7284 ]
  %7332 = phi float [ %5782, %5712 ], [ %5782, %7078 ], [ %7327, %7284 ]
  %7333 = phi float [ %5785, %5712 ], [ %5785, %7078 ], [ %7329, %7284 ]
  %7334 = phi float [ %5774, %5712 ], [ %5774, %7078 ], [ %7319, %7284 ]
  %7335 = phi float [ %5775, %5712 ], [ %5775, %7078 ], [ %7321, %7284 ]
  %7336 = phi float [ %5776, %5712 ], [ %5776, %7078 ], [ %7323, %7284 ]
  %7337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.i32 %7337, 0
  %7339 = icmp eq i32 %7338, 0
  br i1 %7339, label %8002, label %7340

; <label>:7340                                    ; preds = %7330
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7344 = fmul fast float %7342, %106
  %7345 = fmul fast float %7343, %107
  %7346 = fptoui float %7344 to i32
  %7347 = fptoui float %7345 to i32
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 0
  %7350 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %7351 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7352 = fadd fast float %94, -4.000000e+00
  %7353 = call float @dx.op.binary.f32(i32 35, float %7352, float 0.000000e+00)  ; FMax(a,b)
  %7354 = fadd fast float %7353, %7349
  %7355 = fmul fast float %7354, %7350
  %7356 = call float @dx.op.unary.f32(i32 23, float %7355)  ; Log(value)
  %7357 = fmul fast float %7356, %7351
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7360 = fmul fast float %7357, %7359
  %7361 = call float @dx.op.unary.f32(i32 7, float %7360)  ; Saturate(value)
  %7362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.i32 %7362, 1
  %7364 = add i32 %7363, -1
  %7365 = uitofp i32 %7363 to float
  %7366 = fmul fast float %7365, %7361
  %7367 = fptoui float %7366 to i32
  %7368 = call i32 @dx.op.binary.i32(i32 40, i32 %7367, i32 %7364)  ; UMin(a,b)
  %7369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.i32 %7369, 2
  %7371 = extractvalue %dx.types.CBufRet.i32 %7369, 3
  %7372 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7347, i32 %7370, i32 %7346)  ; UMad(a,b,c)
  %7373 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7368, i32 %7371, i32 %7372)  ; UMad(a,b,c)
  %7374 = add nsw i32 %7338, -1
  %7375 = call i32 @dx.op.binary.i32(i32 37, i32 %7374, i32 0)  ; IMax(a,b)
  %7376 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %7377 = fptoui float %7376 to i32
  %7378 = lshr i32 %7377, 5
  %7379 = call i32 @dx.op.binary.i32(i32 40, i32 %7378, i32 8191)  ; UMin(a,b)
  %7380 = shl i32 %7379, 2
  %7381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7380, i32 undef)  ; BufferLoad(srv,index,wot)
  %7382 = extractvalue %dx.types.ResRet.i32 %7381, 0
  %7383 = lshr i32 %7382, 16
  %7384 = and i32 %7382, 65535
  %7385 = lshr i32 %7382, 21
  %7386 = lshr i32 %7384, 5
  %7387 = call i32 @dx.op.binary.i32(i32 40, i32 %7386, i32 %7375)  ; UMin(a,b)
  %7388 = icmp ugt i32 %7385, %7387
  br i1 %7388, label %8002, label %7389

; <label>:7389                                    ; preds = %7340
  br label %7390

; <label>:7390                                    ; preds = %7992, %7389
  %7391 = phi i32 [ %7999, %7992 ], [ %7385, %7389 ]
  %7392 = phi float [ %7993, %7992 ], [ %7331, %7389 ]
  %7393 = phi float [ %7994, %7992 ], [ %7332, %7389 ]
  %7394 = phi float [ %7995, %7992 ], [ %7333, %7389 ]
  %7395 = phi float [ %7996, %7992 ], [ %7334, %7389 ]
  %7396 = phi float [ %7997, %7992 ], [ %7335, %7389 ]
  %7397 = phi float [ %7998, %7992 ], [ %7336, %7389 ]
  %7398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.i32 %7398, 0
  %7400 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7373, i32 %7399, i32 %7391)  ; UMad(a,b,c)
  %7401 = shl i32 %7400, 2
  %7402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7401, i32 undef)  ; BufferLoad(srv,index,wot)
  %7403 = extractvalue %dx.types.ResRet.i32 %7402, 0
  %7404 = shl i32 %7391, 5
  %7405 = sub nsw i32 %7383, %7404
  %7406 = call i32 @dx.op.binary.i32(i32 37, i32 %7405, i32 0)  ; IMax(a,b)
  %7407 = call i32 @dx.op.binary.i32(i32 38, i32 %7406, i32 31)  ; IMin(a,b)
  %7408 = sub nsw i32 1, %7383
  %7409 = add nsw i32 %7408, %7384
  %7410 = call i32 @dx.op.binary.i32(i32 37, i32 %7409, i32 0)  ; IMax(a,b)
  %7411 = call i32 @dx.op.binary.i32(i32 38, i32 %7410, i32 32)  ; IMin(a,b)
  %7412 = and i32 %7411, 31
  %7413 = shl i32 -1, %7412
  %7414 = xor i32 %7413, -1
  %7415 = and i32 %7407, 31
  %7416 = shl i32 %7414, %7415
  %7417 = icmp eq i32 %7411, 32
  %7418 = select i1 %7417, i32 -1, i32 %7416
  %7419 = and i32 %7418, %7403
  %7420 = icmp eq i32 %7419, 0
  br i1 %7420, label %7992, label %7421

; <label>:7421                                    ; preds = %7390
  br label %7422

; <label>:7422                                    ; preds = %7556, %7421
  %7423 = phi i32 [ %7434, %7556 ], [ %7419, %7421 ]
  %7424 = phi float [ %7557, %7556 ], [ %7392, %7421 ]
  %7425 = phi float [ %7558, %7556 ], [ %7393, %7421 ]
  %7426 = phi float [ %7559, %7556 ], [ %7394, %7421 ]
  %7427 = phi float [ %7560, %7556 ], [ %7395, %7421 ]
  %7428 = phi float [ %7561, %7556 ], [ %7396, %7421 ]
  %7429 = phi float [ %7562, %7556 ], [ %7397, %7421 ]
  %7430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7423)  ; FirstbitLo(value)
  %7431 = add i32 %7430, %7404
  %7432 = and i32 %7430, 31
  %7433 = shl i32 1, %7432
  %7434 = xor i32 %7433, %7423
  %7435 = mul i32 %7431, 112
  %7436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7435, i32 undef)  ; BufferLoad(srv,index,wot)
  %7437 = extractvalue %dx.types.ResRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.ResRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.ResRet.f32 %7436, 2
  %7440 = or i32 %7435, 12
  %7441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7440, i32 undef)  ; BufferLoad(srv,index,wot)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 0
  %7443 = add i32 %7435, 16
  %7444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = add i32 %7435, 28
  %7449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7448, i32 undef)  ; BufferLoad(srv,index,wot)
  %7450 = extractvalue %dx.types.ResRet.i32 %7449, 0
  %7451 = add i32 %7435, 44
  %7452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7451, i32 undef)  ; BufferLoad(srv,index,wot)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = add i32 %7435, 48
  %7455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7454, i32 undef)  ; BufferLoad(srv,index,wot)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.ResRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.ResRet.f32 %7455, 2
  %7459 = extractvalue %dx.types.ResRet.f32 %7455, 3
  %7460 = add i32 %7435, 64
  %7461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7460, i32 undef)  ; BufferLoad(srv,index,wot)
  %7462 = extractvalue %dx.types.ResRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.ResRet.f32 %7461, 1
  %7464 = extractvalue %dx.types.ResRet.f32 %7461, 2
  %7465 = extractvalue %dx.types.ResRet.f32 %7461, 3
  %7466 = add i32 %7435, 80
  %7467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7466, i32 undef)  ; BufferLoad(srv,index,wot)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 2
  %7470 = add i32 %7435, 92
  %7471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.i32 %7471, 0
  %7473 = call float @dx.op.dot3.f32(i32 55, float %7437, float %7438, float %7439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = select i1 %231, float %7468, float %7437
  %7475 = select i1 %231, float %7473, float %7438
  %7476 = select i1 %231, float %7469, float %7439
  %7477 = and i32 %7472, 65535
  %7478 = uitofp i32 %7477 to float
  %7479 = lshr i32 %7472, 16
  %7480 = uitofp i32 %7479 to float
  %7481 = and i32 %7450, 65535
  %7482 = and i32 %7450, 50331648
  %7483 = icmp eq i32 %7482, 33554432
  %7484 = fsub fast float %7456, %169
  %7485 = fsub fast float %7457, %170
  %7486 = fsub fast float %7458, %171
  %7487 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float %7484, float %7485, float %7486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7488 = call float @dx.op.unary.f32(i32 24, float %7487)  ; Sqrt(value)
  %7489 = fdiv fast float 1.000000e+00, %7488
  %7490 = fmul fast float %7489, %7484
  %7491 = fmul fast float %7489, %7485
  %7492 = fmul fast float %7489, %7486
  %7493 = fadd fast float %7488, %7442
  %7494 = fdiv fast float 1.000000e+00, %7493
  %7495 = fmul float %7453, %7494
  %7496 = fmul float %7495, %7495
  %7497 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  br i1 %7483, label %7498, label %7519

; <label>:7498                                    ; preds = %7422
  %7499 = fmul fast float %7464, %7445
  %7500 = fmul fast float %7464, %7446
  %7501 = fmul fast float %7464, %7447
  %7502 = fadd fast float %7484, %7499
  %7503 = fadd fast float %7485, %7500
  %7504 = fadd fast float %7486, %7501
  %7505 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %7502, float %7503, float %7504)  ; Dot3(ax,ay,az,bx,by,bz)
  %7506 = call float @dx.op.unary.f32(i32 25, float %7505)  ; Rsqrt(value)
  %7507 = fmul fast float %7506, %7502
  %7508 = fmul fast float %7506, %7503
  %7509 = fmul fast float %7506, %7504
  %7510 = fsub fast float %169, %7456
  %7511 = fsub fast float %170, %7457
  %7512 = fsub fast float %171, %7458
  %7513 = fsub fast float -0.000000e+00, %7510
  %7514 = fsub fast float -0.000000e+00, %7511
  %7515 = fsub fast float -0.000000e+00, %7512
  %7516 = call float @dx.op.dot3.f32(i32 55, float %7513, float %7514, float %7515, float %7445, float %7446, float %7447)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = fcmp fast ogt float %7516, 0.000000e+00
  %7518 = uitofp i1 %7517 to float
  br label %7519

; <label>:7519                                    ; preds = %7498, %7422
  %7520 = phi float [ %7518, %7498 ], [ 1.000000e+00, %7422 ]
  %7521 = phi float [ %7507, %7498 ], [ %7490, %7422 ]
  %7522 = phi float [ %7508, %7498 ], [ %7491, %7422 ]
  %7523 = phi float [ %7509, %7498 ], [ %7492, %7422 ]
  %7524 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7447, float %7521, float %7522, float %7523)  ; Dot3(ax,ay,az,bx,by,bz)
  %7525 = fmul fast float %7524, %7524
  %7526 = call float @dx.op.unary.f32(i32 7, float %7525)  ; Saturate(value)
  %7527 = fsub fast float 1.000000e+00, %7526
  %7528 = fmul fast float %7527, 5.000000e-01
  %7529 = fcmp fast ogt float %7524, 0.000000e+00
  %7530 = fsub fast float 1.000000e+00, %7528
  %7531 = select i1 %7529, float %7528, float %7530
  %7532 = fmul fast float %7531, %7480
  %7533 = fadd fast float %7532, %7478
  %7534 = fmul fast float %7533, 0x3EF0001000000000
  %7535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7534, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = fmul fast float %7524, %7462
  %7538 = fadd fast float %7537, %7463
  %7539 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  %7540 = select i1 %7483, float 1.000000e+00, float %7539
  %7541 = select i1 %7483, float %7539, float 1.000000e+00
  %7542 = fmul fast float %7488, %7459
  %7543 = fsub fast float 1.000000e+00, %7542
  %7544 = fmul fast float %7543, %7465
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = fmul fast float %7545, %7541
  %7547 = fmul fast float %7546, 2.000000e+00
  %7548 = fsub fast float 3.000000e+00, %7547
  %7549 = fmul fast float %7536, %7520
  %7550 = fmul fast float %7546, %7546
  %7551 = fmul fast float %7550, %7549
  %7552 = fmul fast float %7551, %7548
  %7553 = call float @dx.op.binary.f32(i32 36, float %7552, float %7552)  ; FMin(a,b)
  %7554 = call float @dx.op.binary.f32(i32 36, float %7552, float %7553)  ; FMin(a,b)
  %7555 = fcmp fast ogt float %7554, 0.000000e+00
  br i1 %7555, label %7564, label %7556, !dx.controlflow.hints !133

; <label>:7556                                    ; preds = %7948, %7710, %7519
  %7557 = phi float [ %7424, %7710 ], [ %7424, %7519 ], [ %7988, %7948 ]
  %7558 = phi float [ %7425, %7710 ], [ %7425, %7519 ], [ %7989, %7948 ]
  %7559 = phi float [ %7426, %7710 ], [ %7426, %7519 ], [ %7990, %7948 ]
  %7560 = phi float [ %7427, %7710 ], [ %7427, %7519 ], [ %7982, %7948 ]
  %7561 = phi float [ %7428, %7710 ], [ %7428, %7519 ], [ %7983, %7948 ]
  %7562 = phi float [ %7429, %7710 ], [ %7429, %7519 ], [ %7984, %7948 ]
  %7563 = icmp eq i32 %7423, %7433
  br i1 %7563, label %7991, label %7422

; <label>:7564                                    ; preds = %7519
  %7565 = icmp eq i32 %7481, 255
  br i1 %7565, label %7710, label %7566, !dx.controlflow.hints !134

; <label>:7566                                    ; preds = %7564
  %7567 = mul nuw nsw i32 %7481, 176
  %7568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7567, i32 undef)  ; BufferLoad(srv,index,wot)
  %7569 = extractvalue %dx.types.ResRet.f32 %7568, 0
  %7570 = extractvalue %dx.types.ResRet.f32 %7568, 1
  %7571 = extractvalue %dx.types.ResRet.f32 %7568, 2
  %7572 = extractvalue %dx.types.ResRet.f32 %7568, 3
  %7573 = add nuw nsw i32 %7567, 16
  %7574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7573, i32 undef)  ; BufferLoad(srv,index,wot)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = extractvalue %dx.types.ResRet.f32 %7574, 1
  %7577 = add nuw nsw i32 %7567, 32
  %7578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7577, i32 undef)  ; BufferLoad(srv,index,wot)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.ResRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.ResRet.f32 %7578, 2
  %7582 = add nuw nsw i32 %7567, 48
  %7583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7582, i32 undef)  ; BufferLoad(srv,index,wot)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.ResRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.ResRet.f32 %7583, 2
  %7587 = extractvalue %dx.types.ResRet.f32 %7583, 3
  %7588 = add nuw nsw i32 %7567, 64
  %7589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7588, i32 undef)  ; BufferLoad(srv,index,wot)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.ResRet.f32 %7589, 1
  %7592 = extractvalue %dx.types.ResRet.f32 %7589, 2
  %7593 = extractvalue %dx.types.ResRet.f32 %7589, 3
  %7594 = add nuw nsw i32 %7567, 80
  %7595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7594, i32 undef)  ; BufferLoad(srv,index,wot)
  %7596 = extractvalue %dx.types.ResRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.ResRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.ResRet.f32 %7595, 2
  %7599 = extractvalue %dx.types.ResRet.f32 %7595, 3
  %7600 = add nuw nsw i32 %7567, 96
  %7601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7600, i32 undef)  ; BufferLoad(srv,index,wot)
  %7602 = extractvalue %dx.types.ResRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.ResRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.ResRet.f32 %7601, 2
  %7605 = extractvalue %dx.types.ResRet.f32 %7601, 3
  %7606 = bitcast float %7576 to i32
  %7607 = fmul fast float %7581, %113
  %7608 = fmul fast float %7581, %114
  %7609 = fmul fast float %7581, %115
  %7610 = fadd fast float %7607, %169
  %7611 = fadd fast float %7608, %170
  %7612 = fadd fast float %7609, %171
  %7613 = fmul fast float %7610, %7584
  %7614 = call float @dx.op.tertiary.f32(i32 46, float %7611, float %7590, float %7613)  ; FMad(a,b,c)
  %7615 = call float @dx.op.tertiary.f32(i32 46, float %7612, float %7596, float %7614)  ; FMad(a,b,c)
  %7616 = fadd fast float %7615, %7602
  %7617 = fmul fast float %7610, %7585
  %7618 = call float @dx.op.tertiary.f32(i32 46, float %7611, float %7591, float %7617)  ; FMad(a,b,c)
  %7619 = call float @dx.op.tertiary.f32(i32 46, float %7612, float %7597, float %7618)  ; FMad(a,b,c)
  %7620 = fadd fast float %7619, %7603
  %7621 = fmul fast float %7610, %7586
  %7622 = call float @dx.op.tertiary.f32(i32 46, float %7611, float %7592, float %7621)  ; FMad(a,b,c)
  %7623 = call float @dx.op.tertiary.f32(i32 46, float %7612, float %7598, float %7622)  ; FMad(a,b,c)
  %7624 = fadd fast float %7623, %7604
  %7625 = fmul fast float %7610, %7587
  %7626 = call float @dx.op.tertiary.f32(i32 46, float %7611, float %7593, float %7625)  ; FMad(a,b,c)
  %7627 = call float @dx.op.tertiary.f32(i32 46, float %7612, float %7599, float %7626)  ; FMad(a,b,c)
  %7628 = fadd fast float %7627, %7605
  %7629 = fdiv fast float %7616, %7628
  %7630 = fdiv fast float %7620, %7628
  %7631 = fdiv fast float %7624, %7628
  %7632 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7631)  ; FMax(a,b)
  %7633 = fmul fast float %242, 0x401921FB60000000
  %7634 = call float @dx.op.unary.f32(i32 13, float %7633)  ; Sin(value)
  %7635 = call float @dx.op.unary.f32(i32 12, float %7633)  ; Cos(value)
  %7636 = fmul fast float %7635, %7580
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7634, float %7580, float 0.000000e+00)  ; FMad(a,b,c)
  %7638 = fmul fast float %7580, %7634
  %7639 = fsub fast float -0.000000e+00, %7638
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %7635, float %7580, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7641

; <label>:7641                                    ; preds = %7641, %7566
  %7642 = phi float [ 0.000000e+00, %7566 ], [ %7674, %7641 ]
  %7643 = phi float [ 0.000000e+00, %7566 ], [ %7676, %7641 ]
  %7644 = phi i32 [ 0, %7566 ], [ %7677, %7641 ]
  %7645 = mul i32 %7644, 2
  %7646 = add i32 0, %7645
  %7647 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7646
  %7648 = load float, float* %7647, align 4
  %7649 = mul i32 %7644, 2
  %7650 = add i32 1, %7649
  %7651 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7650
  %7652 = load float, float* %7651, align 4
  %7653 = fmul fast float %7636, %7648
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %7652, float %7639, float %7653)  ; FMad(a,b,c)
  %7655 = fmul fast float %7648, %7637
  %7656 = call float @dx.op.tertiary.f32(i32 46, float %7652, float %7640, float %7655)  ; FMad(a,b,c)
  %7657 = fadd fast float %7654, %7629
  %7658 = fadd fast float %7656, %7630
  %7659 = fmul fast float %7657, %7575
  %7660 = fmul fast float %7658, %7575
  %7661 = call float @dx.op.binary.f32(i32 35, float %7659, float %7571)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 35, float %7660, float %7571)  ; FMax(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7661, float %7572)  ; FMin(a,b)
  %7664 = call float @dx.op.binary.f32(i32 36, float %7662, float %7572)  ; FMin(a,b)
  %7665 = fadd fast float %7663, %7569
  %7666 = fadd fast float %7664, %7570
  %7667 = uitofp i32 %7606 to float
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7665, float %7666, float %7667, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = fsub fast float %7669, %7632
  %7671 = fsub fast float %7670, %7579
  %7672 = fcmp fast ogt float %7671, 0.000000e+00
  %7673 = select i1 %7672, float 1.000000e+00, float 0.000000e+00
  %7674 = fadd fast float %7673, %7642
  %7675 = select i1 %7672, float %7671, float 0.000000e+00
  %7676 = fadd fast float %7675, %7643
  %7677 = add nuw nsw i32 %7644, 1
  %7678 = icmp eq i32 %7677, 8
  br i1 %7678, label %7679, label %7641

; <label>:7679                                    ; preds = %7641
  %7680 = fdiv fast float 1.000000e+00, %7674
  %7681 = fmul fast float %7680, %7676
  %7682 = fdiv fast float 1.000000e+00, %7632
  %7683 = fmul fast float %7681, %7682
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = call float @dx.op.binary.f32(i32 35, float %7684, float 0.000000e+00)  ; FMax(a,b)
  %7686 = fmul fast float %7674, 1.250000e-01
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = fmul fast float %7687, 2.000000e+00
  %7689 = fadd fast float %7688, -1.000000e+00
  %7690 = fcmp fast ogt float %7689, 0.000000e+00
  %7691 = fcmp fast olt float %7689, 0.000000e+00
  %7692 = zext i1 %7690 to i32
  %7693 = zext i1 %7691 to i32
  %7694 = sub nsw i32 %7692, %7693
  %7695 = sitofp i32 %7694 to float
  %7696 = fmul fast float %7695, %7689
  %7697 = fsub fast float 1.000000e+00, %7696
  %7698 = fmul fast float %7697, %7697
  %7699 = fmul fast float %7698, %7697
  %7700 = fsub fast float %7697, %7699
  %7701 = fmul fast float %7700, %7685
  %7702 = fsub fast float 1.000000e+00, %7699
  %7703 = fsub fast float %7702, %7701
  %7704 = fmul fast float %7695, 5.000000e-01
  %7705 = fmul fast float %7704, %7703
  %7706 = fsub fast float -5.000000e-01, %7705
  %7707 = fmul fast float %7706, %7540
  %7708 = fadd fast float %7707, 1.000000e+00
  %7709 = fmul fast float %7708, %7552
  br label %7710

; <label>:7710                                    ; preds = %7679, %7564
  %7711 = phi float [ %7709, %7679 ], [ %7552, %7564 ]
  %7712 = call float @dx.op.binary.f32(i32 36, float %7711, float %7711)  ; FMin(a,b)
  %7713 = call float @dx.op.binary.f32(i32 36, float %7711, float %7712)  ; FMin(a,b)
  %7714 = fcmp fast ogt float %7713, 0.000000e+00
  br i1 %7714, label %7715, label %7556, !dx.controlflow.hints !135

; <label>:7715                                    ; preds = %7710
  %7716 = fmul fast float %7711, %7474
  %7717 = fmul fast float %7711, %7475
  %7718 = fmul fast float %7711, %7476
  %7719 = fsub fast float %7458, %4834
  %7720 = fcmp fast ogt float %7719, 0.000000e+00
  %7721 = fsub fast float %171, %4834
  %7722 = fcmp fast ogt float %7721, 0.000000e+00
  %7723 = xor i1 %7722, %7720
  %7724 = fsub fast float %4834, %7458
  %7725 = fmul fast float %7724, 2.000000e+00
  %7726 = fadd fast float %7725, %7458
  %7727 = select i1 %7723, float %7458, float %7726
  %7728 = fsub fast float %7727, %171
  %7729 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7728, float %7484, float %7485, float %7728)  ; Dot3(ax,ay,az,bx,by,bz)
  %7730 = call float @dx.op.unary.f32(i32 25, float %7729)  ; Rsqrt(value)
  %7731 = fmul fast float %7730, %7484
  %7732 = fmul fast float %7730, %7485
  %7733 = fmul fast float %7730, %7728
  %7734 = fsub fast float %4834, %171
  %7735 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7734)  ; Dot3(ax,ay,az,bx,by,bz)
  %7736 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7731, float %7732, float %7733)  ; Dot3(ax,ay,az,bx,by,bz)
  %7737 = fdiv fast float 1.000000e+00, %7736
  %7738 = fmul fast float %7737, %7735
  %7739 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7721, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = fcmp fast ogt float %7739, 0.000000e+00
  %7741 = fcmp fast olt float %7739, 0.000000e+00
  %7742 = zext i1 %7740 to i32
  %7743 = zext i1 %7741 to i32
  %7744 = sub nsw i32 %7742, %7743
  %7745 = sitofp i32 %7744 to float
  %7746 = fsub fast float %7727, %4834
  %7747 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7746, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7748 = fcmp fast ogt float %7747, 0.000000e+00
  %7749 = fcmp fast olt float %7747, 0.000000e+00
  %7750 = zext i1 %7748 to i32
  %7751 = zext i1 %7749 to i32
  %7752 = sub nsw i32 %7750, %7751
  %7753 = sitofp i32 %7752 to float
  %7754 = fcmp fast une float %7745, %7753
  br i1 %7754, label %7755, label %7765

; <label>:7755                                    ; preds = %7715
  %7756 = fmul fast float %7738, %7733
  %7757 = fmul fast float %7738, %7732
  %7758 = fmul fast float %7738, %7731
  %7759 = fmul fast float %7758, %7758
  %7760 = fmul fast float %7757, %7757
  %7761 = fadd fast float %7759, %7760
  %7762 = fmul fast float %7756, %7756
  %7763 = fadd fast float %7761, %7762
  %7764 = call float @dx.op.unary.f32(i32 24, float %7763)  ; Sqrt(value)
  br label %7777

; <label>:7765                                    ; preds = %7715
  %7766 = icmp slt i32 %7744, 0
  br i1 %7766, label %7767, label %7777

; <label>:7767                                    ; preds = %7765
  %7768 = fsub fast float %169, %7456
  %7769 = fsub fast float %170, %7457
  %7770 = fsub fast float %171, %7727
  %7771 = fmul fast float %7768, %7768
  %7772 = fmul fast float %7769, %7769
  %7773 = fadd fast float %7771, %7772
  %7774 = fmul fast float %7770, %7770
  %7775 = fadd fast float %7773, %7774
  %7776 = call float @dx.op.unary.f32(i32 24, float %7775)  ; Sqrt(value)
  br label %7777

; <label>:7777                                    ; preds = %7767, %7765, %7755
  %7778 = phi float [ %7764, %7755 ], [ %7776, %7767 ], [ 0.000000e+00, %7765 ]
  %7779 = and i1 %7722, %7720
  %7780 = fsub fast float -0.000000e+00, %7778
  %7781 = select i1 %7779, float -0.000000e+00, float %7780
  %7782 = fmul fast float %4835, 0x3FF7154760000000
  %7783 = fmul fast float %7782, %7781
  %7784 = fmul fast float %4836, 0x3FF7154760000000
  %7785 = fmul fast float %7784, %7781
  %7786 = fmul fast float %4837, 0x3FF7154760000000
  %7787 = fmul fast float %7786, %7781
  %7788 = call float @dx.op.unary.f32(i32 21, float %7783)  ; Exp(value)
  %7789 = call float @dx.op.unary.f32(i32 21, float %7785)  ; Exp(value)
  %7790 = call float @dx.op.unary.f32(i32 21, float %7787)  ; Exp(value)
  %7791 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  %7792 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7793 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7794 = fmul fast float %7716, %7791
  %7795 = fmul fast float %7717, %7792
  %7796 = fmul fast float %7718, %7793
  %7797 = fsub fast float %7490, %5034
  %7798 = fsub fast float %7491, %5033
  %7799 = fsub fast float %7492, %5032
  %7800 = call float @dx.op.dot3.f32(i32 55, float %7797, float %7798, float %7799, float %7797, float %7798, float %7799)  ; Dot3(ax,ay,az,bx,by,bz)
  %7801 = call float @dx.op.unary.f32(i32 25, float %7800)  ; Rsqrt(value)
  %7802 = fmul fast float %7801, %7797
  %7803 = fmul fast float %7801, %7798
  %7804 = fmul fast float %7801, %7799
  %7805 = call float @dx.op.dot3.f32(i32 55, float %7490, float %7491, float %7492, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7806 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5030, float %5029, float %7802, float %7803, float %7804)  ; Dot3(ax,ay,az,bx,by,bz)
  %7807 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  %7808 = fmul fast float %7807, %7497
  %7809 = fmul fast float %7807, %7807
  %7810 = fmul fast float %7809, %5074
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = fmul fast float %7808, %7811
  %7813 = bitcast float %7487 to i32
  %7814 = ashr i32 %7813, 1
  %7815 = sub nsw i32 1597463007, %7814
  %7816 = bitcast i32 %7815 to float
  %7817 = fmul fast float %7816, %7484
  %7818 = fmul fast float %7816, %7485
  %7819 = fmul fast float %7816, %7486
  %7820 = fsub fast float %7817, %5034
  %7821 = fsub fast float %7818, %5033
  %7822 = fsub fast float %7819, %5032
  %7823 = call float @dx.op.dot3.f32(i32 55, float %7820, float %7821, float %7822, float %7820, float %7821, float %7822)  ; Dot3(ax,ay,az,bx,by,bz)
  %7824 = call float @dx.op.unary.f32(i32 25, float %7823)  ; Rsqrt(value)
  %7825 = fmul fast float %7820, %7824
  %7826 = fmul fast float %7821, %7824
  %7827 = fmul fast float %7822, %7824
  %7828 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %7825, float %7826, float %7827)  ; Dot3(ax,ay,az,bx,by,bz)
  %7829 = fmul fast float %7828, %7828
  %7830 = call float @dx.op.unary.f32(i32 6, float %7805)  ; FAbs(value)
  %7831 = fsub fast float 1.000000e+00, %5067
  %7832 = fmul fast float %5049, %5049
  %7833 = fmul fast float %7832, %7831
  %7834 = fadd fast float %7833, %5067
  %7835 = bitcast float %7834 to i32
  %7836 = ashr i32 %7835, 1
  %7837 = add nsw i32 %7836, 532487669
  %7838 = bitcast i32 %7837 to float
  %7839 = fadd fast float %7838, %5049
  %7840 = fmul fast float %5067, %7829
  %7841 = fsub fast float 1.000000e+00, %7829
  %7842 = fadd fast float %7841, %7840
  %7843 = fmul fast float %7830, %7830
  %7844 = fmul fast float %7843, %7831
  %7845 = fadd fast float %7844, %5067
  %7846 = bitcast float %7845 to i32
  %7847 = ashr i32 %7846, 1
  %7848 = add nsw i32 %7847, 532487669
  %7849 = bitcast i32 %7848 to float
  %7850 = fadd fast float %7849, %7830
  %7851 = fmul fast float %7842, %7842
  %7852 = fmul fast float %7851, %7839
  %7853 = fmul fast float %7852, %7850
  %7854 = fdiv fast float 1.000000e+00, %7853
  %7855 = bitcast float %5067 to i32
  %7856 = sitofp i32 %7855 to float
  %7857 = fmul fast float %7856, 0x3FE7F73180000000
  %7858 = fadd fast float %7857, 0x41AFE27C40000000
  %7859 = fptosi float %7858 to i32
  %7860 = bitcast i32 %7859 to float
  %7861 = fmul fast float %7453, 0x3FD80E9D60000000
  %7862 = fmul fast float %7861, %7816
  %7863 = fadd fast float %7860, %7862
  %7864 = bitcast float %7863 to i32
  %7865 = sub nsw i32 2129859010, %7864
  %7866 = bitcast i32 %7865 to float
  %7867 = fmul fast float %5067, %7854
  %7868 = fmul fast float %7867, %7860
  %7869 = fmul fast float %7868, %7866
  %7870 = call float @dx.op.unary.f32(i32 6, float %7806)  ; FAbs(value)
  %7871 = fsub fast float 1.000000e+00, %7870
  %7872 = bitcast float %7871 to i32
  %7873 = sitofp i32 %7872 to float
  %7874 = fmul fast float %7873, 5.000000e+00
  %7875 = fadd fast float %7874, 0xC1EFBF8940000000
  %7876 = fptosi float %7875 to i32
  %7877 = bitcast i32 %7876 to float
  %7878 = fsub fast float 1.000000e+00, %5038
  %7879 = fsub fast float 1.000000e+00, %5039
  %7880 = fsub fast float 1.000000e+00, %5047
  %7881 = fmul fast float %7877, %7878
  %7882 = fmul fast float %7877, %7879
  %7883 = fmul fast float %7877, %7880
  %7884 = fadd fast float %7881, %5038
  %7885 = fadd fast float %7882, %5039
  %7886 = fadd fast float %7883, %5047
  br i1 %5190, label %7887, label %7910

; <label>:7887                                    ; preds = %7777
  %7888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4432, float %7870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7889 = extractvalue %dx.types.ResRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.ResRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.ResRet.f32 %7888, 2
  %7892 = fadd fast float %7889, -5.000000e-01
  %7893 = fadd fast float %7890, -5.000000e-01
  %7894 = fadd fast float %7891, -5.000000e-01
  %7895 = fmul fast float %5038, 4.000000e+00
  %7896 = fmul fast float %7895, %7878
  %7897 = fmul fast float %7896, %7892
  %7898 = fmul fast float %5039, 4.000000e+00
  %7899 = fmul fast float %7898, %7879
  %7900 = fmul fast float %7899, %7893
  %7901 = fmul fast float %5047, 4.000000e+00
  %7902 = fmul fast float %7901, %7880
  %7903 = fmul fast float %7902, %7894
  %7904 = fadd fast float %7897, %7884
  %7905 = fadd fast float %7900, %7885
  %7906 = fadd fast float %7903, %7886
  %7907 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7908 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  br label %7910

; <label>:7910                                    ; preds = %7887, %7777
  %7911 = phi float [ %7907, %7887 ], [ %7884, %7777 ]
  %7912 = phi float [ %7908, %7887 ], [ %7885, %7777 ]
  %7913 = phi float [ %7909, %7887 ], [ %7886, %7777 ]
  %7914 = fmul fast float %7805, 9.843750e-01
  %7915 = fadd fast float %7914, 7.812500e-03
  %7916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7915, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 2
  %7918 = extractvalue %dx.types.ResRet.f32 %7916, 3
  %7919 = fmul fast float %7917, %5038
  %7920 = fmul fast float %7917, %5039
  %7921 = fmul fast float %7917, %5047
  %7922 = fadd fast float %7919, %7918
  %7923 = fadd fast float %7920, %7918
  %7924 = fadd fast float %7921, %7918
  br i1 %5190, label %7925, label %7948

; <label>:7925                                    ; preds = %7910
  %7926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4432, float %7805, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7927 = extractvalue %dx.types.ResRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.ResRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.ResRet.f32 %7926, 2
  %7930 = fadd fast float %7927, -5.000000e-01
  %7931 = fadd fast float %7928, -5.000000e-01
  %7932 = fadd fast float %7929, -5.000000e-01
  %7933 = fmul fast float %5038, 4.000000e+00
  %7934 = fmul fast float %7933, %7878
  %7935 = fmul fast float %7934, %7930
  %7936 = fmul fast float %5039, 4.000000e+00
  %7937 = fmul fast float %7936, %7879
  %7938 = fmul fast float %7937, %7931
  %7939 = fmul fast float %5047, 4.000000e+00
  %7940 = fmul fast float %7939, %7880
  %7941 = fmul fast float %7940, %7932
  %7942 = fadd fast float %7935, %7922
  %7943 = fadd fast float %7938, %7923
  %7944 = fadd fast float %7941, %7924
  %7945 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7946 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7947 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  br label %7948

; <label>:7948                                    ; preds = %7925, %7910
  %7949 = phi float [ %7945, %7925 ], [ %7922, %7910 ]
  %7950 = phi float [ %7946, %7925 ], [ %7923, %7910 ]
  %7951 = phi float [ %7947, %7925 ], [ %7924, %7910 ]
  %7952 = call float @dx.op.binary.f32(i32 35, float %7950, float %7951)  ; FMax(a,b)
  %7953 = call float @dx.op.binary.f32(i32 35, float %7949, float %7952)  ; FMax(a,b)
  %7954 = fsub fast float 1.000000e+00, %7953
  %7955 = fmul fast float %7911, %7869
  %7956 = fmul fast float %7912, %7869
  %7957 = fmul fast float %7913, %7869
  %7958 = fsub fast float 1.000000e+00, %7806
  %7959 = bitcast float %7958 to i32
  %7960 = sitofp i32 %7959 to float
  %7961 = fmul fast float %7960, 5.000000e+00
  %7962 = fadd fast float %7961, 0xC1EFBF8940000000
  %7963 = fptosi float %7962 to i32
  %7964 = bitcast i32 %7963 to float
  %7965 = fmul fast float %7964, %4433
  %7966 = fmul fast float %7954, %7965
  %7967 = fmul fast float %7966, %5753
  %7968 = fmul fast float %7966, %5754
  %7969 = fmul fast float %7966, %5755
  %7970 = fadd fast float %7967, %7955
  %7971 = fadd fast float %7968, %7956
  %7972 = fadd fast float %7969, %7957
  %7973 = fmul fast float %7794, %4429
  %7974 = fmul fast float %7973, %7812
  %7975 = fmul fast float %7974, %7954
  %7976 = fmul fast float %7795, %4429
  %7977 = fmul fast float %7976, %7812
  %7978 = fmul fast float %7977, %7954
  %7979 = fmul fast float %7796, %4429
  %7980 = fmul fast float %7979, %7812
  %7981 = fmul fast float %7980, %7954
  %7982 = fadd fast float %7975, %7427
  %7983 = fadd fast float %7978, %7428
  %7984 = fadd fast float %7981, %7429
  %7985 = fmul fast float %7974, %7970
  %7986 = fmul fast float %7977, %7971
  %7987 = fmul fast float %7980, %7972
  %7988 = fadd fast float %7985, %7424
  %7989 = fadd fast float %7986, %7425
  %7990 = fadd fast float %7987, %7426
  br label %7556

; <label>:7991                                    ; preds = %7556
  br label %7992

; <label>:7992                                    ; preds = %7991, %7390
  %7993 = phi float [ %7392, %7390 ], [ %7557, %7991 ]
  %7994 = phi float [ %7393, %7390 ], [ %7558, %7991 ]
  %7995 = phi float [ %7394, %7390 ], [ %7559, %7991 ]
  %7996 = phi float [ %7395, %7390 ], [ %7560, %7991 ]
  %7997 = phi float [ %7396, %7390 ], [ %7561, %7991 ]
  %7998 = phi float [ %7397, %7390 ], [ %7562, %7991 ]
  %7999 = add i32 %7391, 1
  %8000 = icmp ugt i32 %7999, %7387
  br i1 %8000, label %8001, label %7390

; <label>:8001                                    ; preds = %7992
  br label %8002

; <label>:8002                                    ; preds = %8001, %7340, %7330
  %8003 = phi float [ %7331, %7330 ], [ %7331, %7340 ], [ %7993, %8001 ]
  %8004 = phi float [ %7332, %7330 ], [ %7332, %7340 ], [ %7994, %8001 ]
  %8005 = phi float [ %7333, %7330 ], [ %7333, %7340 ], [ %7995, %8001 ]
  %8006 = phi float [ %7334, %7330 ], [ %7334, %7340 ], [ %7996, %8001 ]
  %8007 = phi float [ %7335, %7330 ], [ %7335, %7340 ], [ %7997, %8001 ]
  %8008 = phi float [ %7336, %7330 ], [ %7336, %7340 ], [ %7998, %8001 ]
  %8009 = fmul fast float %4429, %4429
  %8010 = fsub fast float 1.000000e+00, %8009
  %8011 = call float @dx.op.dot3.f32(i32 55, float %8010, float %8010, float %8010, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = fsub fast float 1.000000e+00, %8011
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 0
  %8015 = fmul fast float %8014, %5760
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8018 = fsub fast float 1.000000e+00, %4437
  %8019 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8020 = fadd fast float %8008, %4435
  %8021 = fmul fast float %8020, %4437
  %8022 = fmul fast float %8019, %8017
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 3
  %8025 = fmul fast float %8006, %5035
  %8026 = fmul fast float %8007, %5036
  %8027 = fmul fast float %8008, %5037
  %8028 = fcmp fast ogt float %94, %191
  %8029 = and i1 %8028, %4840
  %8030 = or i1 %4846, %8029
  %8031 = icmp eq i32 %4839, 2
  %8032 = fcmp fast ole float %94, %191
  %8033 = and i1 %8032, %8031
  %8034 = or i1 %8033, %8030
  br i1 %8029, label %8035, label %8292

; <label>:8035                                    ; preds = %8002
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 2
  %8038 = extractvalue %dx.types.CBufRet.f32 %8036, 3
  %8039 = fmul fast float %8037, %106
  %8040 = fmul fast float %8038, %107
  %8041 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  %8043 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8041, float %8042, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.ResRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.ResRet.f32 %8043, 2
  %8047 = extractvalue %dx.types.ResRet.f32 %8043, 3
  %8048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8041, float %8042, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8049 = extractvalue %dx.types.ResRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.ResRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.ResRet.f32 %8048, 2
  %8052 = extractvalue %dx.types.ResRet.f32 %8048, 3
  %8053 = call float @dx.op.binary.f32(i32 35, float %8045, float %8046)  ; FMax(a,b)
  %8054 = call float @dx.op.binary.f32(i32 35, float %8044, float %8053)  ; FMax(a,b)
  %8055 = call float @dx.op.binary.f32(i32 35, float %8054, float %8047)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 36, float %8050, float %8051)  ; FMin(a,b)
  %8057 = call float @dx.op.binary.f32(i32 36, float %8049, float %8056)  ; FMin(a,b)
  %8058 = call float @dx.op.binary.f32(i32 36, float %8057, float %8052)  ; FMin(a,b)
  %8059 = fmul fast float %8055, 2.550000e+02
  %8060 = fadd fast float %8059, 0x3F70101020000000
  %8061 = fptoui float %8060 to i32
  %8062 = fmul fast float %8058, 2.550000e+02
  %8063 = fadd fast float %8062, 0x3F70101020000000
  %8064 = fptoui float %8063 to i32
  %8065 = icmp ult i32 %8061, %8064
  br i1 %8065, label %8066, label %8234

; <label>:8066                                    ; preds = %8035
  %8067 = fcmp fast ogt float %93, 9.843750e-01
  %8068 = fadd fast float %94, -4.000000e+00
  %8069 = select i1 %8067, float -4.000000e+00, float %8068
  %8070 = call float @dx.op.binary.f32(i32 35, float %8069, float 0.000000e+00)  ; FMax(a,b)
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = fadd fast float %8072, %8070
  %8074 = extractvalue %dx.types.CBufRet.f32 %8071, 2
  %8075 = fmul fast float %8073, %8074
  %8076 = call float @dx.op.unary.f32(i32 23, float %8075)  ; Log(value)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8071, 3
  %8078 = fmul fast float %8077, %8076
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8081 = fmul fast float %8078, %8080
  %8082 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8083 = uitofp i32 %8061 to float
  %8084 = uitofp i32 %8064 to float
  %8085 = fadd fast float %8083, 5.000000e-01
  %8086 = fadd fast float %8084, 5.000000e-01
  %8087 = fmul fast float %8080, %8085
  %8088 = fmul fast float %8080, %8086
  %8089 = fadd fast float %8087, 0x3F0FFB4800000000
  %8090 = fadd fast float %8088, 0xBF0FFB4800000000
  %8091 = call float @dx.op.binary.f32(i32 35, float %8082, float %8089)  ; FMax(a,b)
  %8092 = call float @dx.op.binary.f32(i32 36, float %8091, float %8090)  ; FMin(a,b)
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8095 = extractvalue %dx.types.CBufRet.f32 %8093, 2
  %8096 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8097 = fmul fast float %8094, %8092
  %8098 = fadd fast float %8096, %8097
  %8099 = fadd fast float %8096, %8095
  %8100 = fsub fast float %8094, %8095
  %8101 = fadd fast float %8100, %8096
  %8102 = call float @dx.op.binary.f32(i32 35, float %8098, float %8099)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 36, float %8102, float %8101)  ; FMin(a,b)
  %8104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8041, float %8042, float %8103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8105 = extractvalue %dx.types.ResRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.ResRet.f32 %8104, 1
  %8107 = extractvalue %dx.types.ResRet.f32 %8104, 2
  %8108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.i32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.i32 %8108, 1
  %8111 = uitofp i32 %8109 to float
  %8112 = uitofp i32 %8110 to float
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = fmul fast float %8111, %8041
  %8117 = fmul fast float %8112, %8042
  %8118 = fadd fast float %8116, -5.000000e-01
  %8119 = fadd fast float %8117, -5.000000e-01
  %8120 = call float @dx.op.unary.f32(i32 22, float %8118)  ; Frc(value)
  %8121 = call float @dx.op.unary.f32(i32 22, float %8119)  ; Frc(value)
  %8122 = fmul fast float %8120, %8120
  %8123 = fmul fast float %8122, %8120
  %8124 = fsub fast float 3.000000e+00, %8120
  %8125 = fmul fast float %8122, %8124
  %8126 = fmul fast float %8120, 3.000000e+00
  %8127 = fmul fast float %8123, 3.000000e+00
  %8128 = fmul fast float %8122, 6.000000e+00
  %8129 = fsub fast float %8127, %8128
  %8130 = fadd fast float %8129, 4.000000e+00
  %8131 = fmul fast float %8130, 0x3FC5555560000000
  %8132 = fmul fast float %8123, -3.000000e+00
  %8133 = fadd fast float %8122, %8120
  %8134 = fmul fast float %8133, 3.000000e+00
  %8135 = fadd fast float %8132, 1.000000e+00
  %8136 = fadd fast float %8135, %8134
  %8137 = fmul fast float %8123, 0x3FC5555560000000
  %8138 = fmul fast float %8121, %8121
  %8139 = fmul fast float %8138, %8121
  %8140 = fsub fast float 3.000000e+00, %8121
  %8141 = fmul fast float %8138, %8140
  %8142 = fmul fast float %8121, 3.000000e+00
  %8143 = fmul fast float %8139, 3.000000e+00
  %8144 = fmul fast float %8138, 6.000000e+00
  %8145 = fsub fast float %8143, %8144
  %8146 = fadd fast float %8145, 4.000000e+00
  %8147 = fmul fast float %8146, 0x3FC5555560000000
  %8148 = fmul fast float %8139, -3.000000e+00
  %8149 = fadd fast float %8138, %8121
  %8150 = fmul fast float %8149, 3.000000e+00
  %8151 = fadd fast float %8148, 1.000000e+00
  %8152 = fadd fast float %8151, %8150
  %8153 = fmul fast float %8139, 0x3FC5555560000000
  %8154 = fadd fast float %8120, 1.000000e+00
  %8155 = fsub fast float 1.000000e+00, %8126
  %8156 = fadd fast float %8155, %8125
  %8157 = fadd fast float %8156, %8130
  %8158 = fmul fast float %8157, 0x3FC5555560000000
  %8159 = fdiv fast float %8131, %8158
  %8160 = fsub fast float %8154, %8159
  %8161 = fsub fast float 1.000000e+00, %8120
  %8162 = fadd fast float %8136, %8123
  %8163 = fmul fast float %8162, 0x3FC5555560000000
  %8164 = fdiv fast float %8137, %8163
  %8165 = fadd fast float %8161, %8164
  %8166 = fadd fast float %8121, 1.000000e+00
  %8167 = fsub fast float 1.000000e+00, %8142
  %8168 = fadd fast float %8167, %8141
  %8169 = fadd fast float %8168, %8146
  %8170 = fmul fast float %8169, 0x3FC5555560000000
  %8171 = fdiv fast float %8147, %8170
  %8172 = fsub fast float %8166, %8171
  %8173 = fsub fast float 1.000000e+00, %8121
  %8174 = fadd fast float %8152, %8139
  %8175 = fmul fast float %8174, 0x3FC5555560000000
  %8176 = fdiv fast float %8153, %8175
  %8177 = fadd fast float %8176, %8173
  %8178 = fmul fast float %8160, %8114
  %8179 = fsub fast float %8041, %8178
  %8180 = fmul fast float %8165, %8114
  %8181 = fadd fast float %8180, %8041
  %8182 = fmul fast float %8177, %8115
  %8183 = fadd fast float %8182, %8042
  %8184 = fmul fast float %8172, %8115
  %8185 = fsub fast float %8042, %8184
  %8186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8179, float %8185, float %8103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8181, float %8185, float %8103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.ResRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.ResRet.f32 %8190, 2
  %8194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8179, float %8183, float %8103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8195 = extractvalue %dx.types.ResRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.ResRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.ResRet.f32 %8194, 2
  %8198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8181, float %8183, float %8103, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8199 = extractvalue %dx.types.ResRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.ResRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.ResRet.f32 %8198, 2
  %8202 = fsub fast float %8195, %8187
  %8203 = fsub fast float %8196, %8188
  %8204 = fsub fast float %8197, %8189
  %8205 = fmul fast float %8202, %8175
  %8206 = fmul fast float %8203, %8175
  %8207 = fmul fast float %8204, %8175
  %8208 = fadd fast float %8205, %8187
  %8209 = fadd fast float %8206, %8188
  %8210 = fadd fast float %8207, %8189
  %8211 = fsub fast float %8199, %8191
  %8212 = fsub fast float %8200, %8192
  %8213 = fsub fast float %8201, %8193
  %8214 = fmul fast float %8211, %8175
  %8215 = fmul fast float %8212, %8175
  %8216 = fmul fast float %8213, %8175
  %8217 = fsub fast float %8191, %8208
  %8218 = fadd fast float %8217, %8214
  %8219 = fsub fast float %8192, %8209
  %8220 = fadd fast float %8219, %8215
  %8221 = fsub fast float %8193, %8210
  %8222 = fadd fast float %8221, %8216
  %8223 = fmul fast float %8218, %8163
  %8224 = fmul fast float %8220, %8163
  %8225 = fmul fast float %8222, %8163
  %8226 = fadd fast float %8223, %8208
  %8227 = fadd fast float %8224, %8209
  %8228 = fadd fast float %8225, %8210
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 1
  %8231 = fmul fast float %8226, %8230
  %8232 = fmul fast float %8227, %8230
  %8233 = fmul fast float %8228, %8230
  br label %8234

; <label>:8234                                    ; preds = %8066, %8035
  %8235 = phi float [ %8105, %8066 ], [ 1.000000e+00, %8035 ]
  %8236 = phi float [ %8106, %8066 ], [ 1.000000e+00, %8035 ]
  %8237 = phi float [ %8107, %8066 ], [ 1.000000e+00, %8035 ]
  %8238 = phi float [ %8231, %8066 ], [ 0.000000e+00, %8035 ]
  %8239 = phi float [ %8232, %8066 ], [ 0.000000e+00, %8035 ]
  %8240 = phi float [ %8233, %8066 ], [ 0.000000e+00, %8035 ]
  %8241 = fmul fast float %8238, %8012
  %8242 = fmul fast float %8239, %8012
  %8243 = fmul fast float %8240, %8012
  %8244 = call float @dx.op.dot3.f32(i32 55, float %8235, float %8236, float %8237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8245 = call float @dx.op.dot3.f32(i32 55, float %8241, float %8242, float %8243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8246 = select i1 %231, float %8244, float %8235
  %8247 = select i1 %231, float %8244, float %8236
  %8248 = select i1 %231, float 1.000000e+00, float %8237
  %8249 = select i1 %231, float %8245, float %8241
  %8250 = select i1 %231, float 0.000000e+00, float %8242
  %8251 = select i1 %231, float 0.000000e+00, float %8243
  %8252 = fmul fast float %8246, %8025
  %8253 = fmul fast float %8247, %8026
  %8254 = fmul fast float %8248, %8027
  %8255 = fadd fast float %8252, %8249
  %8256 = fadd fast float %8253, %8250
  %8257 = fadd fast float %8251, %8254
  %8258 = fmul fast float %8246, %8003
  %8259 = fmul fast float %8247, %8004
  %8260 = fmul fast float %8248, %8005
  %8261 = fmul fast float %139, %8037
  %8262 = fmul fast float %141, %8038
  %8263 = fsub fast float 1.000000e+00, %8261
  %8264 = fsub fast float 1.000000e+00, %8262
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = fmul fast float %8263, %8266
  %8270 = fmul fast float %8263, %8267
  %8271 = fmul fast float %8263, %8268
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8276 = fmul fast float %8264, %8273
  %8277 = fmul fast float %8264, %8274
  %8278 = fmul fast float %8264, %8275
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = fadd fast float %8276, %8280
  %8284 = fadd fast float %8283, %8269
  %8285 = fadd fast float %8277, %8281
  %8286 = fadd fast float %8285, %8270
  %8287 = fadd fast float %8278, %8282
  %8288 = fadd fast float %8287, %8271
  %8289 = fmul fast float %8284, %191
  %8290 = fmul fast float %8286, %191
  %8291 = fmul fast float %8288, %191
  br label %8292

; <label>:8292                                    ; preds = %8234, %8002
  %8293 = phi float [ %8289, %8234 ], [ %169, %8002 ]
  %8294 = phi float [ %8290, %8234 ], [ %170, %8002 ]
  %8295 = phi float [ %8291, %8234 ], [ %171, %8002 ]
  %8296 = phi float [ %191, %8234 ], [ %94, %8002 ]
  %8297 = phi float [ %8255, %8234 ], [ %8025, %8002 ]
  %8298 = phi float [ %8256, %8234 ], [ %8026, %8002 ]
  %8299 = phi float [ %8257, %8234 ], [ %8027, %8002 ]
  %8300 = phi float [ %8258, %8234 ], [ %8003, %8002 ]
  %8301 = phi float [ %8259, %8234 ], [ %8004, %8002 ]
  %8302 = phi float [ %8260, %8234 ], [ %8005, %8002 ]
  %8303 = phi float [ %8235, %8234 ], [ 1.000000e+00, %8002 ]
  br i1 %8034, label %9458, label %8304

; <label>:8304                                    ; preds = %8292
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.CBufRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8309 = extractvalue %dx.types.CBufRet.f32 %8305, 3
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8314 = extractvalue %dx.types.CBufRet.f32 %8310, 3
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.CBufRet.f32 %8315, 1
  %8318 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8319 = extractvalue %dx.types.CBufRet.f32 %8315, 3
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8320, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8320, 3
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 3
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8327, 1
  %8331 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8332 = fcmp fast olt float %8331, -5.000000e-01
  %8333 = call float @dx.op.dot3.f32(i32 55, float %8293, float %8294, float %8295, float %8293, float %8294, float %8295)  ; Dot3(ax,ay,az,bx,by,bz)
  %8334 = call float @dx.op.unary.f32(i32 25, float %8333)  ; Rsqrt(value)
  %8335 = fmul fast float %8334, %8333
  %8336 = fmul fast float %8334, %8293
  %8337 = fmul fast float %8334, %8294
  %8338 = fmul fast float %8334, %8295
  %8339 = fadd fast float %8335, %8309
  %8340 = call float @dx.op.dot3.f32(i32 55, float %8336, float %8337, float %8338, float %8306, float %8307, float %8308)  ; Dot3(ax,ay,az,bx,by,bz)
  %8341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.i32 %8341, 1
  %8343 = and i32 %8342, 1
  %8344 = icmp ne i32 %8343, 0
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 2
  %8347 = fcmp fast ogt float %8346, 0.000000e+00
  %8348 = and i1 %8344, %8347
  br i1 %8348, label %8349, label %8755, !dx.controlflow.hints !136

; <label>:8349                                    ; preds = %8304
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8356 = fsub fast float %8353, %8355
  %8357 = and i32 %8342, 2
  %8358 = extractvalue %dx.types.CBufRet.i32 %8341, 0
  %8359 = call i32 @dx.op.binary.i32(i32 40, i32 %8358, i32 3)  ; UMin(a,b)
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8364 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8365 = fsub fast float %8361, %8363
  %8366 = fsub fast float %8362, %8364
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = fcmp fast ogt float %8368, 0.000000e+00
  %8370 = fsub fast float -0.000000e+00, %8365
  %8371 = fsub fast float -0.000000e+00, %8366
  %8372 = call float @dx.op.dot2.f32(i32 54, float %8336, float %8337, float %8336, float %8337)  ; Dot2(ax,ay,bx,by)
  %8373 = call float @dx.op.dot2.f32(i32 54, float %8336, float %8337, float %8370, float %8371)  ; Dot2(ax,ay,bx,by)
  %8374 = fmul fast float %8373, 2.000000e+00
  %8375 = call float @dx.op.dot2.f32(i32 54, float %8370, float %8371, float %8370, float %8371)  ; Dot2(ax,ay,bx,by)
  %8376 = fmul fast float %8368, %8368
  %8377 = fsub fast float %8375, %8376
  %8378 = fmul fast float %8374, %8374
  %8379 = fmul fast float %8372, 4.000000e+00
  %8380 = fmul fast float %8379, %8377
  %8381 = fsub fast float %8378, %8380
  %8382 = fcmp fast ogt float %8381, 0.000000e+00
  br i1 %8382, label %8383, label %8398

; <label>:8383                                    ; preds = %8349
  %8384 = fcmp fast ogt float %8374, 0.000000e+00
  %8385 = call float @dx.op.unary.f32(i32 24, float %8381)  ; Sqrt(value)
  %8386 = fsub fast float -0.000000e+00, %8385
  %8387 = select i1 %8384, float %8385, float %8386
  %8388 = fadd fast float %8387, %8374
  %8389 = fmul float %8388, -5.000000e-01
  %8390 = fdiv fast float %8389, %8372
  %8391 = call float @dx.op.binary.f32(i32 35, float %8390, float 0.000000e+00)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 36, float %8335, float %8391)  ; FMin(a,b)
  %8393 = fdiv fast float %8377, %8389
  %8394 = call float @dx.op.binary.f32(i32 35, float %8393, float 0.000000e+00)  ; FMax(a,b)
  %8395 = call float @dx.op.binary.f32(i32 36, float %8335, float %8394)  ; FMin(a,b)
  %8396 = call float @dx.op.binary.f32(i32 36, float %8392, float %8395)  ; FMin(a,b)
  %8397 = call float @dx.op.binary.f32(i32 35, float %8392, float %8395)  ; FMax(a,b)
  br label %8398

; <label>:8398                                    ; preds = %8383, %8349
  %8399 = phi float [ %8397, %8383 ], [ -1.000000e+00, %8349 ]
  %8400 = phi float [ %8396, %8383 ], [ -1.000000e+00, %8349 ]
  %8401 = phi i1 [ true, %8383 ], [ false, %8349 ]
  %8402 = and i1 %8369, %8401
  br i1 %8402, label %8403, label %8405

; <label>:8403                                    ; preds = %8398
  %8404 = fcmp fast oeq float %8400, %8399
  br i1 %8404, label %8708, label %8406

; <label>:8405                                    ; preds = %8398
  br i1 %8369, label %8708, label %8406

; <label>:8406                                    ; preds = %8405, %8403
  %8407 = phi float [ %8335, %8405 ], [ %8399, %8403 ]
  %8408 = phi float [ 0.000000e+00, %8405 ], [ %8400, %8403 ]
  %8409 = icmp ne i32 %8357, 0
  %8410 = fmul fast float %8407, %8338
  %8411 = fadd fast float %8410, %8351
  %8412 = fmul fast float %8411, %8407
  %8413 = select i1 %8409, float 0.000000e+00, float %8412
  %8414 = fcmp fast oeq float %8338, 0.000000e+00
  %8415 = fdiv fast float %8356, %8338
  %8416 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8415)  ; FMax(a,b)
  %8417 = select i1 %8414, float %8407, float %8416
  %8418 = call float @dx.op.binary.f32(i32 36, float %8407, float %8417)  ; FMin(a,b)
  %8419 = fcmp fast ogt float %8338, 0.000000e+00
  %8420 = fcmp fast olt float %8356, 0.000000e+00
  br i1 %8419, label %8421, label %8478

; <label>:8421                                    ; preds = %8406
  %8422 = icmp eq i32 %8357, 0
  br i1 %8420, label %8423, label %8467

; <label>:8423                                    ; preds = %8421
  %8424 = select i1 %8422, float %8407, float 0.000000e+00
  %8425 = fsub fast float -0.000000e+00, %8424
  %8426 = call float @dx.op.unary.f32(i32 6, float %8425)  ; FAbs(value)
  %8427 = fmul fast float %8424, %8338
  %8428 = fadd fast float %8427, %8351
  %8429 = fmul fast float %8426, %8428
  %8430 = fsub fast float %8413, %8429
  %8431 = fsub fast float %8407, %8426
  %8432 = select i1 %8422, float %8431, float 0.000000e+00
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8435 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8436 = extractvalue %dx.types.CBufRet.f32 %8433, 2
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = extractvalue %dx.types.CBufRet.f32 %8437, 3
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 3
  %8444 = call float @dx.op.binary.f32(i32 36, float %8430, float %8443)  ; FMin(a,b)
  %8445 = fmul fast float %8441, %8432
  %8446 = call float @dx.op.unary.f32(i32 7, float %8445)  ; Saturate(value)
  %8447 = fsub fast float %8438, %8434
  %8448 = fsub fast float %8439, %8435
  %8449 = fsub fast float %8440, %8436
  %8450 = fmul fast float %8446, %8447
  %8451 = fmul fast float %8446, %8448
  %8452 = fmul fast float %8446, %8449
  %8453 = fadd fast float %8450, %8434
  %8454 = fadd fast float %8451, %8435
  %8455 = fadd fast float %8452, %8436
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = fadd fast float %8458, %8457
  %8460 = call float @dx.op.unary.f32(i32 7, float %8459)  ; Saturate(value)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8462 = extractvalue %dx.types.CBufRet.f32 %8456, 3
  %8463 = fadd fast float %8462, %8461
  %8464 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  %8465 = fmul fast float %8460, %8444
  %8466 = fmul fast float %8465, %8464
  br label %8708

; <label>:8467                                    ; preds = %8421
  br i1 %8422, label %8468, label %8489

; <label>:8468                                    ; preds = %8467
  %8469 = call float @dx.op.binary.f32(i32 36, float %8418, float %8408)  ; FMin(a,b)
  %8470 = fsub fast float %8418, %8469
  %8471 = fsub fast float %8470, %8407
  %8472 = call float @dx.op.unary.f32(i32 6, float %8471)  ; FAbs(value)
  %8473 = fadd fast float %8470, %8407
  %8474 = fmul fast float %8473, %8338
  %8475 = fadd fast float %8474, %8351
  %8476 = fmul fast float %8475, %8472
  %8477 = fsub fast float %8413, %8476
  br label %8489

; <label>:8478                                    ; preds = %8406
  br i1 %8420, label %8479, label %8489

; <label>:8479                                    ; preds = %8478
  %8480 = call float @dx.op.binary.f32(i32 35, float %8408, float %8418)  ; FMax(a,b)
  %8481 = icmp eq i32 %8357, 0
  %8482 = select i1 %8481, float %8418, float 0.000000e+00
  %8483 = fsub fast float -0.000000e+00, %8482
  %8484 = call float @dx.op.unary.f32(i32 6, float %8483)  ; FAbs(value)
  %8485 = fmul fast float %8482, %8338
  %8486 = fadd fast float %8485, %8351
  %8487 = fmul fast float %8484, %8486
  %8488 = fsub fast float %8413, %8487
  br label %8489

; <label>:8489                                    ; preds = %8479, %8478, %8468, %8467
  %8490 = phi float [ %8408, %8467 ], [ %8408, %8468 ], [ %8480, %8479 ], [ %8408, %8478 ]
  %8491 = phi float [ 0.000000e+00, %8467 ], [ %8472, %8468 ], [ %8484, %8479 ], [ 0.000000e+00, %8478 ]
  %8492 = phi float [ %8413, %8467 ], [ %8477, %8468 ], [ %8488, %8479 ], [ %8413, %8478 ]
  %8493 = phi float [ %8418, %8467 ], [ %8418, %8468 ], [ %8407, %8479 ], [ %8407, %8478 ]
  %8494 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8494, align 4, !tbaa !123, !noalias !137
  %8495 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8495, align 4, !tbaa !123, !noalias !137
  %8496 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8496, align 4, !tbaa !123, !noalias !137
  %8497 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8497, align 4, !tbaa !123, !noalias !137
  %8498 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8498, align 4, !tbaa !123, !noalias !137
  %8499 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8499, align 4, !tbaa !123, !noalias !137
  %8500 = icmp sgt i32 %8359, 0
  br i1 %8500, label %8501, label %8562

; <label>:8501                                    ; preds = %8489
  br label %8502

; <label>:8502                                    ; preds = %8551, %8501
  %8503 = phi i32 [ %8552, %8551 ], [ 0, %8501 ]
  %8504 = phi i32 [ %8553, %8551 ], [ 0, %8501 ]
  %8505 = add nuw i32 %8504, 171
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8505)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.CBufRet.f32 %8506, 1
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8512 = fsub fast float %8507, %8510
  %8513 = fsub fast float %8508, %8511
  %8514 = extractvalue %dx.types.CBufRet.f32 %8506, 2
  %8515 = fsub fast float -0.000000e+00, %8512
  %8516 = fsub fast float -0.000000e+00, %8513
  %8517 = call float @dx.op.dot2.f32(i32 54, float %8336, float %8337, float %8515, float %8516)  ; Dot2(ax,ay,bx,by)
  %8518 = fmul fast float %8517, 2.000000e+00
  %8519 = call float @dx.op.dot2.f32(i32 54, float %8515, float %8516, float %8515, float %8516)  ; Dot2(ax,ay,bx,by)
  %8520 = fmul fast float %8514, %8514
  %8521 = fsub fast float %8519, %8520
  %8522 = fmul fast float %8518, %8518
  %8523 = fmul fast float %8379, %8521
  %8524 = fsub fast float %8522, %8523
  %8525 = fcmp fast ogt float %8524, 0.000000e+00
  br i1 %8525, label %8526, label %8541

; <label>:8526                                    ; preds = %8502
  %8527 = fcmp fast ogt float %8518, 0.000000e+00
  %8528 = call float @dx.op.unary.f32(i32 24, float %8524)  ; Sqrt(value)
  %8529 = fsub fast float -0.000000e+00, %8528
  %8530 = select i1 %8527, float %8528, float %8529
  %8531 = fadd fast float %8530, %8518
  %8532 = fmul float %8531, -5.000000e-01
  %8533 = fdiv fast float %8532, %8372
  %8534 = call float @dx.op.binary.f32(i32 35, float %8533, float 0.000000e+00)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 36, float %8407, float %8534)  ; FMin(a,b)
  %8536 = fdiv fast float %8521, %8532
  %8537 = call float @dx.op.binary.f32(i32 35, float %8536, float 0.000000e+00)  ; FMax(a,b)
  %8538 = call float @dx.op.binary.f32(i32 36, float %8407, float %8537)  ; FMin(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8535, float %8538)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 35, float %8535, float %8538)  ; FMax(a,b)
  br label %8541

; <label>:8541                                    ; preds = %8526, %8502
  %8542 = phi float [ %8540, %8526 ], [ -1.000000e+00, %8502 ]
  %8543 = phi float [ %8539, %8526 ], [ -1.000000e+00, %8502 ]
  %8544 = phi i1 [ true, %8526 ], [ false, %8502 ]
  br i1 %8544, label %8545, label %8551

; <label>:8545                                    ; preds = %8541
  %8546 = call float @dx.op.binary.f32(i32 35, float %8490, float %8543)  ; FMax(a,b)
  %8547 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8504
  store float %8546, float* %8547, align 4, !tbaa !123, !noalias !137
  %8548 = call float @dx.op.binary.f32(i32 35, float %8490, float %8542)  ; FMax(a,b)
  %8549 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8504
  store float %8548, float* %8549, align 4, !tbaa !123, !noalias !137
  %8550 = add nsw i32 %8503, 1
  br label %8551

; <label>:8551                                    ; preds = %8545, %8541
  %8552 = phi i32 [ %8550, %8545 ], [ %8503, %8541 ]
  %8553 = add nuw nsw i32 %8504, 1
  %8554 = icmp eq i32 %8553, %8359
  br i1 %8554, label %8555, label %8502

; <label>:8555                                    ; preds = %8551
  %8556 = load float, float* %8496, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %8557 = load float, float* %8495, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  %8558 = load float, float* %8494, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  %8559 = load float, float* %8499, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %8560 = load float, float* %8498, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  %8561 = load float, float* %8497, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  br label %8562

; <label>:8562                                    ; preds = %8555, %8489
  %8563 = phi float [ -1.000000e+00, %8489 ], [ %8561, %8555 ]
  %8564 = phi float [ -1.000000e+00, %8489 ], [ %8560, %8555 ]
  %8565 = phi float [ -1.000000e+00, %8489 ], [ %8559, %8555 ]
  %8566 = phi float [ -1.000000e+00, %8489 ], [ %8558, %8555 ]
  %8567 = phi float [ -1.000000e+00, %8489 ], [ %8557, %8555 ]
  %8568 = phi float [ -1.000000e+00, %8489 ], [ %8556, %8555 ]
  %8569 = phi i32 [ 0, %8489 ], [ %8552, %8555 ]
  %8570 = call float @dx.op.binary.f32(i32 36, float %8567, float %8568)  ; FMin(a,b)
  %8571 = call float @dx.op.binary.f32(i32 36, float %8566, float %8570)  ; FMin(a,b)
  %8572 = call float @dx.op.binary.f32(i32 35, float %8566, float %8567)  ; FMax(a,b)
  %8573 = call float @dx.op.binary.f32(i32 36, float %8572, float %8568)  ; FMin(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8566, float %8567)  ; FMin(a,b)
  %8575 = call float @dx.op.binary.f32(i32 35, float %8574, float %8573)  ; FMax(a,b)
  %8576 = call float @dx.op.binary.f32(i32 35, float %8567, float %8568)  ; FMax(a,b)
  %8577 = call float @dx.op.binary.f32(i32 35, float %8566, float %8576)  ; FMax(a,b)
  store float %8571, float* %8494, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  store float %8575, float* %8495, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8577, float* %8496, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %8578 = call float @dx.op.binary.f32(i32 36, float %8564, float %8565)  ; FMin(a,b)
  %8579 = call float @dx.op.binary.f32(i32 36, float %8563, float %8578)  ; FMin(a,b)
  %8580 = call float @dx.op.binary.f32(i32 35, float %8563, float %8564)  ; FMax(a,b)
  %8581 = call float @dx.op.binary.f32(i32 36, float %8580, float %8565)  ; FMin(a,b)
  %8582 = call float @dx.op.binary.f32(i32 36, float %8563, float %8564)  ; FMin(a,b)
  %8583 = call float @dx.op.binary.f32(i32 35, float %8582, float %8581)  ; FMax(a,b)
  %8584 = call float @dx.op.binary.f32(i32 35, float %8564, float %8565)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 35, float %8563, float %8584)  ; FMax(a,b)
  store float %8579, float* %8497, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  store float %8583, float* %8498, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  store float %8585, float* %8499, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %8586 = sub nsw i32 3, %8569
  %8587 = icmp sgt i32 %8586, 2
  br i1 %8587, label %8588, label %8626

; <label>:8588                                    ; preds = %8562
  %8589 = icmp eq i32 %8357, 0
  %8590 = fsub fast float %8407, %8491
  %8591 = select i1 %8589, float %8590, float %8491
  %8592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.CBufRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8592, 2
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 0
  %8598 = extractvalue %dx.types.CBufRet.f32 %8596, 1
  %8599 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8600 = extractvalue %dx.types.CBufRet.f32 %8596, 3
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8603 = call float @dx.op.binary.f32(i32 36, float %8492, float %8602)  ; FMin(a,b)
  %8604 = fmul fast float %8600, %8591
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8606 = fsub fast float %8597, %8593
  %8607 = fsub fast float %8598, %8594
  %8608 = fsub fast float %8599, %8595
  %8609 = fmul fast float %8605, %8606
  %8610 = fmul fast float %8605, %8607
  %8611 = fmul fast float %8605, %8608
  %8612 = fadd fast float %8609, %8593
  %8613 = fadd fast float %8610, %8594
  %8614 = fadd fast float %8611, %8595
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 0
  %8617 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8618 = fadd fast float %8617, %8616
  %8619 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8615, 2
  %8621 = extractvalue %dx.types.CBufRet.f32 %8615, 3
  %8622 = fadd fast float %8621, %8620
  %8623 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8624 = fmul fast float %8619, %8603
  %8625 = fmul fast float %8624, %8623
  br label %8708

; <label>:8626                                    ; preds = %8562
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8586
  %8628 = load float, float* %8627, align 4, !tbaa !123, !noalias !137
  %8629 = fcmp fast olt float %8628, %8493
  %8630 = icmp sgt i32 %8569, 0
  %8631 = and i1 %8630, %8629
  br i1 %8631, label %8632, label %8669

; <label>:8632                                    ; preds = %8626
  br label %8633

; <label>:8633                                    ; preds = %8662, %8632
  %8634 = phi float [ %8663, %8662 ], [ %8491, %8632 ]
  %8635 = phi float [ %8664, %8662 ], [ %8492, %8632 ]
  %8636 = phi float [ %8644, %8662 ], [ %8628, %8632 ]
  %8637 = phi i32 [ %8641, %8662 ], [ %8586, %8632 ]
  %8638 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8637
  %8639 = load float, float* %8638, align 4, !tbaa !123, !noalias !137
  %8640 = icmp slt i32 %8637, 2
  %8641 = add nsw i32 %8637, 1
  %8642 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8641
  %8643 = load float, float* %8642, align 4, !tbaa !123, !noalias !137
  %8644 = select i1 %8640, float %8643, float %8407
  %8645 = call float @dx.op.binary.f32(i32 36, float %8644, float %8639)  ; FMin(a,b)
  %8646 = call float @dx.op.binary.f32(i32 36, float %8493, float %8645)  ; FMin(a,b)
  %8647 = icmp eq i32 %8357, 0
  %8648 = fadd fast float %8646, %8636
  %8649 = fmul fast float %8648, %8338
  %8650 = fadd fast float %8649, %8351
  br i1 %8647, label %8656, label %8651

; <label>:8651                                    ; preds = %8633
  %8652 = fsub fast float %8646, %8636
  %8653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8652)  ; FMax(a,b)
  %8654 = fmul fast float %8653, %8650
  %8655 = fadd fast float %8654, %8635
  br label %8662

; <label>:8656                                    ; preds = %8633
  %8657 = fsub fast float %8636, %8646
  %8658 = call float @dx.op.unary.f32(i32 6, float %8657)  ; FAbs(value)
  %8659 = fadd fast float %8658, %8634
  %8660 = fmul fast float %8658, %8650
  %8661 = fsub fast float %8635, %8660
  br label %8662

; <label>:8662                                    ; preds = %8656, %8651
  %8663 = phi float [ %8653, %8651 ], [ %8659, %8656 ]
  %8664 = phi float [ %8655, %8651 ], [ %8661, %8656 ]
  %8665 = fcmp fast olt float %8644, %8493
  %8666 = icmp slt i32 %8641, 3
  %8667 = and i1 %8666, %8665
  br i1 %8667, label %8633, label %8668

; <label>:8668                                    ; preds = %8662
  br label %8669

; <label>:8669                                    ; preds = %8668, %8626
  %8670 = phi float [ %8491, %8626 ], [ %8663, %8668 ]
  %8671 = phi float [ %8492, %8626 ], [ %8664, %8668 ]
  %8672 = fsub fast float %8407, %8670
  %8673 = select i1 %8409, float %8670, float %8672
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.CBufRet.f32 %8674, 1
  %8677 = extractvalue %dx.types.CBufRet.f32 %8674, 2
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8682 = extractvalue %dx.types.CBufRet.f32 %8678, 3
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 3
  %8685 = call float @dx.op.binary.f32(i32 36, float %8671, float %8684)  ; FMin(a,b)
  %8686 = fmul fast float %8682, %8673
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = fsub fast float %8679, %8675
  %8689 = fsub fast float %8680, %8676
  %8690 = fsub fast float %8681, %8677
  %8691 = fmul fast float %8687, %8688
  %8692 = fmul fast float %8687, %8689
  %8693 = fmul fast float %8687, %8690
  %8694 = fadd fast float %8691, %8675
  %8695 = fadd fast float %8692, %8676
  %8696 = fadd fast float %8693, %8677
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 0
  %8699 = extractvalue %dx.types.CBufRet.f32 %8697, 1
  %8700 = fadd fast float %8699, %8698
  %8701 = call float @dx.op.unary.f32(i32 7, float %8700)  ; Saturate(value)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8703 = extractvalue %dx.types.CBufRet.f32 %8697, 3
  %8704 = fadd fast float %8703, %8702
  %8705 = call float @dx.op.unary.f32(i32 7, float %8704)  ; Saturate(value)
  %8706 = fmul fast float %8701, %8685
  %8707 = fmul fast float %8706, %8705
  br label %8708

; <label>:8708                                    ; preds = %8669, %8588, %8423, %8405, %8403
  %8709 = phi float [ %8432, %8423 ], [ %8591, %8588 ], [ %8673, %8669 ], [ 0.000000e+00, %8403 ], [ 0.000000e+00, %8405 ]
  %8710 = phi float [ %8466, %8423 ], [ %8625, %8588 ], [ %8707, %8669 ], [ 0.000000e+00, %8403 ], [ 0.000000e+00, %8405 ]
  %8711 = phi float [ %8453, %8423 ], [ %8612, %8588 ], [ %8694, %8669 ], [ 0.000000e+00, %8403 ], [ 0.000000e+00, %8405 ]
  %8712 = phi float [ %8454, %8423 ], [ %8613, %8588 ], [ %8695, %8669 ], [ 0.000000e+00, %8403 ], [ 0.000000e+00, %8405 ]
  %8713 = phi float [ %8455, %8423 ], [ %8614, %8588 ], [ %8696, %8669 ], [ 0.000000e+00, %8403 ], [ 0.000000e+00, %8405 ]
  %8714 = fmul fast float %8346, %8710
  %8715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.f32 %8715, 2
  %8717 = fsub fast float %8353, %8716
  %8718 = fcmp fast olt float %8714, -2.000000e+01
  %8719 = call float @dx.op.unary.f32(i32 21, float %8714)  ; Exp(value)
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 2
  %8722 = extractvalue %dx.types.CBufRet.f32 %8720, 3
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8725 = fmul fast float %8722, %8717
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float 1.000000e+00, %8726
  %8728 = fmul fast float %8338, 5.000000e-01
  %8729 = fadd fast float %8728, 5.000000e-01
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = fsub fast float 1.000000e+00, %8730
  %8732 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8727)  ; FMax(a,b)
  %8733 = fdiv fast float %8731, %8732
  %8734 = fsub fast float %8717, %8295
  %8735 = call float @dx.op.unary.f32(i32 6, float %8734)  ; FAbs(value)
  %8736 = fmul fast float %8735, %8721
  %8737 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  %8738 = fsub fast float 1.000000e+00, %8736
  %8739 = fmul fast float %8738, %8737
  %8740 = fadd fast float %8739, %8736
  %8741 = fmul fast float %8724, %8717
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = fsub fast float 1.000000e+00, %8740
  %8744 = fmul fast float %8743, %8742
  %8745 = fadd fast float %8744, %8740
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fadd fast float %8719, -1.000000e+00
  %8748 = select i1 %8718, float -1.000000e+00, float %8747
  %8749 = fmul fast float %8746, %8748
  %8750 = fadd fast float %8749, 1.000000e+00
  %8751 = fsub fast float -0.000000e+00, %8749
  %8752 = fmul fast float %8711, %8751
  %8753 = fmul fast float %8712, %8751
  %8754 = fmul fast float %8713, %8751
  br label %8755

; <label>:8755                                    ; preds = %8708, %8304
  %8756 = phi float [ %8709, %8708 ], [ 0.000000e+00, %8304 ]
  %8757 = phi float [ %8750, %8708 ], [ 1.000000e+00, %8304 ]
  %8758 = phi float [ %8752, %8708 ], [ 0.000000e+00, %8304 ]
  %8759 = phi float [ %8753, %8708 ], [ 0.000000e+00, %8304 ]
  %8760 = phi float [ %8754, %8708 ], [ 0.000000e+00, %8304 ]
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 1
  %8763 = fsub fast float 1.000000e+00, %8757
  %8764 = fmul fast float %8763, %8339
  %8765 = fmul fast float %8764, %8762
  %8766 = fsub fast float %8339, %8765
  br i1 %8332, label %8767, label %8796, !dx.controlflow.hints !173

; <label>:8767                                    ; preds = %8755
  %8768 = fmul fast float %8340, %8329
  %8769 = fadd fast float %8768, %8330
  %8770 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8771 = fmul fast float %8311, %8766
  %8772 = fsub fast float -0.000000e+00, %8771
  %8773 = fmul fast float %8312, %8766
  %8774 = fsub fast float -0.000000e+00, %8773
  %8775 = call float @dx.op.unary.f32(i32 21, float %8772)  ; Exp(value)
  %8776 = call float @dx.op.unary.f32(i32 21, float %8774)  ; Exp(value)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8319, float %8775)  ; FMax(a,b)
  %8778 = call float @dx.op.binary.f32(i32 35, float %8319, float %8776)  ; FMax(a,b)
  %8779 = fsub fast float %8778, %8777
  %8780 = fmul fast float %8779, %8770
  %8781 = fadd fast float %8780, %8777
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fsub fast float %8316, %8321
  %8784 = fsub fast float %8317, %8322
  %8785 = fsub fast float %8318, %8323
  %8786 = fmul fast float %8770, %8783
  %8787 = fmul fast float %8770, %8784
  %8788 = fmul fast float %8770, %8785
  %8789 = fadd fast float %8786, %8321
  %8790 = fadd fast float %8787, %8322
  %8791 = fadd fast float %8788, %8323
  %8792 = fsub fast float 1.000000e+00, %8782
  %8793 = fmul fast float %8792, %8789
  %8794 = fmul fast float %8792, %8790
  %8795 = fmul fast float %8792, %8791
  br label %8855

; <label>:8796                                    ; preds = %8755
  %8797 = fmul fast float %8766, %8328
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fsub fast float 2.000000e+00, %8798
  %8800 = fmul fast float %8798, 9.921875e-01
  %8801 = fmul fast float %8800, %8799
  %8802 = fadd fast float %8801, 3.906250e-03
  %8803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8802, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8804 = extractvalue %dx.types.ResRet.f32 %8803, 0
  %8805 = fsub fast float %8798, %8804
  %8806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8805)  ; FMax(a,b)
  %8807 = fmul fast float %8314, %8295
  %8808 = call float @dx.op.unary.f32(i32 6, float %8807)  ; FAbs(value)
  %8809 = fcmp fast ogt float %8808, 0x3EB0C6F7A0000000
  br i1 %8809, label %8810, label %8816, !dx.controlflow.hints !174

; <label>:8810                                    ; preds = %8796
  %8811 = fmul fast float %8807, 0xBFF7154760000000
  %8812 = call float @dx.op.unary.f32(i32 21, float %8811)  ; Exp(value)
  %8813 = fsub fast float 1.000000e+00, %8812
  %8814 = fdiv fast float %8813, %8807
  %8815 = fmul fast float %8814, %8324
  br label %8816

; <label>:8816                                    ; preds = %8810, %8796
  %8817 = phi float [ %8815, %8810 ], [ %8324, %8796 ]
  %8818 = fadd fast float %8817, %8326
  %8819 = fmul fast float %8818, %8806
  %8820 = fmul fast float %8311, %8819
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fmul fast float %8312, %8819
  %8823 = fsub fast float -0.000000e+00, %8822
  %8824 = fmul fast float %8313, %8819
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = call float @dx.op.unary.f32(i32 21, float %8821)  ; Exp(value)
  %8827 = call float @dx.op.unary.f32(i32 21, float %8823)  ; Exp(value)
  %8828 = call float @dx.op.unary.f32(i32 21, float %8825)  ; Exp(value)
  %8829 = fmul fast float %8340, %8340
  %8830 = fadd fast float %8829, 1.000000e+00
  %8831 = fmul fast float %8830, 0x3FAE8EC8A0000000
  %8832 = fmul fast float %8831, %8321
  %8833 = fmul fast float %8831, %8322
  %8834 = fmul fast float %8831, %8323
  %8835 = fmul fast float %8340, %8319
  %8836 = fsub fast float 1.000000e+00, %8835
  %8837 = fmul fast float %8319, %8319
  %8838 = fsub fast float 1.000000e+00, %8837
  %8839 = fmul fast float %8838, 0x3FB45F3060000000
  %8840 = fmul fast float %8836, %8836
  %8841 = fdiv fast float 1.000000e+00, %8840
  %8842 = fmul fast float %8839, %8841
  %8843 = fmul fast float %8842, %8316
  %8844 = fmul fast float %8842, %8317
  %8845 = fmul fast float %8842, %8318
  %8846 = fadd fast float %8843, %8832
  %8847 = fadd fast float %8844, %8833
  %8848 = fadd fast float %8845, %8834
  %8849 = fsub fast float 1.000000e+00, %8826
  %8850 = fsub fast float 1.000000e+00, %8827
  %8851 = fsub fast float 1.000000e+00, %8828
  %8852 = fmul fast float %8846, %8849
  %8853 = fmul fast float %8847, %8850
  %8854 = fmul fast float %8848, %8851
  br label %8855

; <label>:8855                                    ; preds = %8816, %8767
  %8856 = phi float [ %8793, %8767 ], [ %8852, %8816 ]
  %8857 = phi float [ %8794, %8767 ], [ %8853, %8816 ]
  %8858 = phi float [ %8795, %8767 ], [ %8854, %8816 ]
  %8859 = phi float [ %8782, %8767 ], [ %8826, %8816 ]
  %8860 = phi float [ %8782, %8767 ], [ %8827, %8816 ]
  %8861 = phi float [ %8782, %8767 ], [ %8828, %8816 ]
  br i1 %8348, label %8862, label %9060, !dx.controlflow.hints !175

; <label>:8862                                    ; preds = %8855
  %8863 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8864 = fmul fast float %8863, %8763
  %8865 = fsub fast float %8758, %8856
  %8866 = fsub fast float %8759, %8857
  %8867 = fsub fast float %8760, %8858
  %8868 = fmul fast float %8864, %8865
  %8869 = fmul fast float %8864, %8866
  %8870 = fmul fast float %8864, %8867
  %8871 = fadd fast float %8868, %8856
  %8872 = fadd fast float %8869, %8857
  %8873 = fadd fast float %8870, %8858
  %8874 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8859)  ; FMax(a,b)
  %8875 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8860)  ; FMax(a,b)
  %8876 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8861)  ; FMax(a,b)
  %8877 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8757)  ; FMax(a,b)
  %8878 = call float @dx.op.binary.f32(i32 35, float %8756, float %8766)  ; FMax(a,b)
  %8879 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8878)  ; FMax(a,b)
  %8880 = fdiv fast float %8756, %8879
  %8881 = call float @dx.op.unary.f32(i32 7, float %8880)  ; Saturate(value)
  %8882 = fdiv fast float %8766, %8879
  %8883 = call float @dx.op.unary.f32(i32 7, float %8882)  ; Saturate(value)
  %8884 = fcmp fast une float %8877, 1.000000e+00
  br i1 %8884, label %8885, label %8898, !dx.controlflow.hints !176

; <label>:8885                                    ; preds = %8862
  %8886 = call float @dx.op.unary.f32(i32 23, float %8877)  ; Log(value)
  %8887 = fmul fast float %8886, 0x3FE62E4300000000
  %8888 = fmul fast float %8758, %8887
  %8889 = fsub fast float -0.000000e+00, %8888
  %8890 = fmul fast float %8759, %8887
  %8891 = fsub fast float -0.000000e+00, %8890
  %8892 = fmul fast float %8760, %8887
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = fsub fast float 1.000000e+00, %8877
  %8895 = fdiv fast float %8889, %8894
  %8896 = fdiv fast float %8891, %8894
  %8897 = fdiv fast float %8893, %8894
  br label %8898

; <label>:8898                                    ; preds = %8885, %8862
  %8899 = phi float [ %8895, %8885 ], [ %8758, %8862 ]
  %8900 = phi float [ %8896, %8885 ], [ %8759, %8862 ]
  %8901 = phi float [ %8897, %8885 ], [ %8760, %8862 ]
  %8902 = phi float [ %8887, %8885 ], [ 0.000000e+00, %8862 ]
  %8903 = fcmp fast une float %8874, 1.000000e+00
  br i1 %8903, label %8904, label %8911, !dx.controlflow.hints !177

; <label>:8904                                    ; preds = %8898
  %8905 = call float @dx.op.unary.f32(i32 23, float %8874)  ; Log(value)
  %8906 = fmul fast float %8905, 0x3FE62E4300000000
  %8907 = fmul fast float %8871, %8906
  %8908 = fsub fast float -0.000000e+00, %8907
  %8909 = fsub fast float 1.000000e+00, %8874
  %8910 = fdiv fast float %8908, %8909
  br label %8911

; <label>:8911                                    ; preds = %8904, %8898
  %8912 = phi float [ %8910, %8904 ], [ %8871, %8898 ]
  %8913 = phi float [ %8906, %8904 ], [ 0.000000e+00, %8898 ]
  %8914 = fcmp fast une float %8875, 1.000000e+00
  br i1 %8914, label %8915, label %8922, !dx.controlflow.hints !177

; <label>:8915                                    ; preds = %8911
  %8916 = call float @dx.op.unary.f32(i32 23, float %8875)  ; Log(value)
  %8917 = fmul fast float %8916, 0x3FE62E4300000000
  %8918 = fmul fast float %8872, %8917
  %8919 = fsub fast float -0.000000e+00, %8918
  %8920 = fsub fast float 1.000000e+00, %8875
  %8921 = fdiv fast float %8919, %8920
  br label %8922

; <label>:8922                                    ; preds = %8915, %8911
  %8923 = phi float [ %8921, %8915 ], [ %8872, %8911 ]
  %8924 = phi float [ %8917, %8915 ], [ 0.000000e+00, %8911 ]
  %8925 = fcmp fast une float %8876, 1.000000e+00
  br i1 %8925, label %8926, label %8933, !dx.controlflow.hints !177

; <label>:8926                                    ; preds = %8922
  %8927 = call float @dx.op.unary.f32(i32 23, float %8876)  ; Log(value)
  %8928 = fmul fast float %8927, 0x3FE62E4300000000
  %8929 = fmul fast float %8873, %8928
  %8930 = fsub fast float -0.000000e+00, %8929
  %8931 = fsub fast float 1.000000e+00, %8876
  %8932 = fdiv fast float %8930, %8931
  br label %8933

; <label>:8933                                    ; preds = %8926, %8922
  %8934 = phi float [ %8932, %8926 ], [ %8873, %8922 ]
  %8935 = phi float [ %8928, %8926 ], [ 0.000000e+00, %8922 ]
  %8936 = fmul fast float %8899, %8883
  %8937 = fmul fast float %8900, %8883
  %8938 = fmul fast float %8901, %8883
  %8939 = fmul fast float %8902, %8883
  %8940 = fmul fast float %8912, %8881
  %8941 = fmul fast float %8923, %8881
  %8942 = fmul fast float %8934, %8881
  %8943 = fmul fast float %8913, %8881
  %8944 = fmul fast float %8924, %8881
  %8945 = fmul fast float %8935, %8881
  %8946 = fadd fast float %8940, %8936
  %8947 = fadd fast float %8941, %8937
  %8948 = fadd fast float %8942, %8938
  %8949 = fadd fast float %8943, %8939
  %8950 = fadd fast float %8944, %8939
  %8951 = fadd fast float %8945, %8939
  %8952 = fcmp fast une float %8949, 0.000000e+00
  br i1 %8952, label %8953, label %8960, !dx.controlflow.hints !178

; <label>:8953                                    ; preds = %8933
  %8954 = fmul fast float %8949, 0x3FF7154760000000
  %8955 = call float @dx.op.unary.f32(i32 21, float %8954)  ; Exp(value)
  %8956 = fsub fast float 1.000000e+00, %8955
  %8957 = fmul fast float %8946, %8956
  %8958 = fsub fast float -0.000000e+00, %8957
  %8959 = fdiv fast float %8958, %8949
  br label %8960

; <label>:8960                                    ; preds = %8953, %8933
  %8961 = phi float [ %8955, %8953 ], [ 1.000000e+00, %8933 ]
  %8962 = phi float [ %8959, %8953 ], [ %8946, %8933 ]
  %8963 = fcmp fast une float %8950, 0.000000e+00
  br i1 %8963, label %8964, label %8971, !dx.controlflow.hints !178

; <label>:8964                                    ; preds = %8960
  %8965 = fmul fast float %8950, 0x3FF7154760000000
  %8966 = call float @dx.op.unary.f32(i32 21, float %8965)  ; Exp(value)
  %8967 = fsub fast float 1.000000e+00, %8966
  %8968 = fmul fast float %8947, %8967
  %8969 = fsub fast float -0.000000e+00, %8968
  %8970 = fdiv fast float %8969, %8950
  br label %8971

; <label>:8971                                    ; preds = %8964, %8960
  %8972 = phi float [ %8966, %8964 ], [ 1.000000e+00, %8960 ]
  %8973 = phi float [ %8970, %8964 ], [ %8947, %8960 ]
  %8974 = fcmp fast une float %8951, 0.000000e+00
  br i1 %8974, label %8975, label %8982, !dx.controlflow.hints !178

; <label>:8975                                    ; preds = %8971
  %8976 = fmul fast float %8951, 0x3FF7154760000000
  %8977 = call float @dx.op.unary.f32(i32 21, float %8976)  ; Exp(value)
  %8978 = fsub fast float 1.000000e+00, %8977
  %8979 = fmul fast float %8948, %8978
  %8980 = fsub fast float -0.000000e+00, %8979
  %8981 = fdiv fast float %8980, %8951
  br label %8982

; <label>:8982                                    ; preds = %8975, %8971
  %8983 = phi float [ %8977, %8975 ], [ 1.000000e+00, %8971 ]
  %8984 = phi float [ %8981, %8975 ], [ %8948, %8971 ]
  %8985 = fcmp fast ogt float %8881, %8883
  br i1 %8985, label %8986, label %9006

; <label>:8986                                    ; preds = %8982
  %8987 = fsub fast float 1.000000e+00, %8883
  %8988 = fmul fast float %8899, %8987
  %8989 = fmul fast float %8900, %8987
  %8990 = fmul fast float %8901, %8987
  %8991 = fmul fast float %8902, %8987
  %8992 = fcmp fast une float %8991, 0.000000e+00
  br i1 %8992, label %8993, label %9044, !dx.controlflow.hints !179

; <label>:8993                                    ; preds = %8986
  %8994 = fmul fast float %8991, 0x3FF7154760000000
  %8995 = call float @dx.op.unary.f32(i32 21, float %8994)  ; Exp(value)
  %8996 = fsub fast float 1.000000e+00, %8995
  %8997 = fmul fast float %8988, %8996
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = fmul fast float %8989, %8996
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fmul fast float %8990, %8996
  %9002 = fsub fast float -0.000000e+00, %9001
  %9003 = fdiv fast float %8998, %8991
  %9004 = fdiv fast float %9000, %8991
  %9005 = fdiv fast float %9002, %8991
  br label %9044

; <label>:9006                                    ; preds = %8982
  %9007 = fsub fast float 1.000000e+00, %8881
  %9008 = fmul fast float %8912, %9007
  %9009 = fmul fast float %8923, %9007
  %9010 = fmul fast float %8934, %9007
  %9011 = fmul fast float %8913, %9007
  %9012 = fmul fast float %8924, %9007
  %9013 = fmul fast float %8935, %9007
  %9014 = fcmp fast une float %9011, 0.000000e+00
  br i1 %9014, label %9015, label %9022, !dx.controlflow.hints !178

; <label>:9015                                    ; preds = %9006
  %9016 = fmul fast float %9011, 0x3FF7154760000000
  %9017 = call float @dx.op.unary.f32(i32 21, float %9016)  ; Exp(value)
  %9018 = fsub fast float 1.000000e+00, %9017
  %9019 = fmul fast float %9008, %9018
  %9020 = fsub fast float -0.000000e+00, %9019
  %9021 = fdiv fast float %9020, %9011
  br label %9022

; <label>:9022                                    ; preds = %9015, %9006
  %9023 = phi float [ %9021, %9015 ], [ %9008, %9006 ]
  %9024 = phi float [ %9017, %9015 ], [ 1.000000e+00, %9006 ]
  %9025 = fcmp fast une float %9012, 0.000000e+00
  br i1 %9025, label %9026, label %9033, !dx.controlflow.hints !178

; <label>:9026                                    ; preds = %9022
  %9027 = fmul fast float %9012, 0x3FF7154760000000
  %9028 = call float @dx.op.unary.f32(i32 21, float %9027)  ; Exp(value)
  %9029 = fsub fast float 1.000000e+00, %9028
  %9030 = fmul fast float %9009, %9029
  %9031 = fsub fast float -0.000000e+00, %9030
  %9032 = fdiv fast float %9031, %9012
  br label %9033

; <label>:9033                                    ; preds = %9026, %9022
  %9034 = phi float [ %9032, %9026 ], [ %9009, %9022 ]
  %9035 = phi float [ %9028, %9026 ], [ 1.000000e+00, %9022 ]
  %9036 = fcmp fast une float %9013, 0.000000e+00
  br i1 %9036, label %9037, label %9044, !dx.controlflow.hints !178

; <label>:9037                                    ; preds = %9033
  %9038 = fmul fast float %9013, 0x3FF7154760000000
  %9039 = call float @dx.op.unary.f32(i32 21, float %9038)  ; Exp(value)
  %9040 = fsub fast float 1.000000e+00, %9039
  %9041 = fmul fast float %9010, %9040
  %9042 = fsub fast float -0.000000e+00, %9041
  %9043 = fdiv fast float %9042, %9013
  br label %9044

; <label>:9044                                    ; preds = %9037, %9033, %8993, %8986
  %9045 = phi float [ %9043, %9037 ], [ %9005, %8993 ], [ %8990, %8986 ], [ %9010, %9033 ]
  %9046 = phi float [ %9034, %9037 ], [ %9004, %8993 ], [ %8989, %8986 ], [ %9034, %9033 ]
  %9047 = phi float [ %9023, %9037 ], [ %9003, %8993 ], [ %8988, %8986 ], [ %9023, %9033 ]
  %9048 = phi float [ %9039, %9037 ], [ %8995, %8993 ], [ 1.000000e+00, %8986 ], [ 1.000000e+00, %9033 ]
  %9049 = phi float [ %9035, %9037 ], [ %8995, %8993 ], [ 1.000000e+00, %8986 ], [ %9035, %9033 ]
  %9050 = phi float [ %9024, %9037 ], [ %8995, %8993 ], [ 1.000000e+00, %8986 ], [ %9024, %9033 ]
  %9051 = fmul fast float %9050, %8962
  %9052 = fmul fast float %9049, %8973
  %9053 = fmul fast float %9048, %8984
  %9054 = fadd fast float %9051, %9047
  %9055 = fadd fast float %9052, %9046
  %9056 = fadd fast float %9053, %9045
  %9057 = fmul fast float %9050, %8961
  %9058 = fmul fast float %9049, %8972
  %9059 = fmul fast float %9048, %8983
  br label %9060

; <label>:9060                                    ; preds = %9044, %8855
  %9061 = phi float [ %9059, %9044 ], [ %8861, %8855 ]
  %9062 = phi float [ %9058, %9044 ], [ %8860, %8855 ]
  %9063 = phi float [ %9057, %9044 ], [ %8859, %8855 ]
  %9064 = phi float [ %9056, %9044 ], [ %8858, %8855 ]
  %9065 = phi float [ %9055, %9044 ], [ %8857, %8855 ]
  %9066 = phi float [ %9054, %9044 ], [ %8856, %8855 ]
  %9067 = fmul fast float %9066, %8012
  %9068 = fmul fast float %9065, %8012
  %9069 = fmul fast float %9064, %8012
  %9070 = fmul fast float %9063, %8303
  %9071 = call float @dx.op.dot3.f32(i32 55, float %9063, float %9062, float %9061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9072 = call float @dx.op.dot3.f32(i32 55, float %9067, float %9068, float %9069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9073 = select i1 %231, float %9071, float %9063
  %9074 = select i1 %231, float %9071, float %9062
  %9075 = select i1 %231, float 1.000000e+00, float %9061
  %9076 = select i1 %231, float %9072, float %9067
  %9077 = select i1 %231, float 0.000000e+00, float %9068
  %9078 = select i1 %231, float 0.000000e+00, float %9069
  %9079 = fmul fast float %9073, %8297
  %9080 = fmul fast float %9074, %8298
  %9081 = fmul fast float %9075, %8299
  %9082 = fadd fast float %9079, %9076
  %9083 = fadd fast float %9080, %9077
  %9084 = fadd fast float %9078, %9081
  %9085 = fmul fast float %9073, %8300
  %9086 = fmul fast float %9074, %8301
  %9087 = fmul fast float %9075, %8302
  %9088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.i32 %9088, 0
  %9090 = icmp eq i32 %9089, 0
  br i1 %9090, label %9458, label %9091, !dx.controlflow.hints !180

; <label>:9091                                    ; preds = %9060
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 2
  %9094 = extractvalue %dx.types.CBufRet.f32 %9092, 3
  %9095 = fmul fast float %9093, %106
  %9096 = fmul fast float %9094, %107
  %9097 = fmul fast float %9095, 2.000000e+00
  %9098 = fmul fast float %9096, 2.000000e+00
  %9099 = fsub fast float 1.000000e+00, %9097
  %9100 = fsub fast float 1.000000e+00, %9098
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.CBufRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9105 = fmul fast float %9099, %9102
  %9106 = fmul fast float %9099, %9103
  %9107 = fmul fast float %9099, %9104
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 0
  %9110 = extractvalue %dx.types.CBufRet.f32 %9108, 1
  %9111 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9112 = fmul fast float %9100, %9109
  %9113 = fmul fast float %9100, %9110
  %9114 = fmul fast float %9100, %9111
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9118 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9119 = fadd fast float %9112, %9116
  %9120 = fadd fast float %9119, %9105
  %9121 = fadd fast float %9113, %9117
  %9122 = fadd fast float %9121, %9106
  %9123 = fadd fast float %9114, %9118
  %9124 = fadd fast float %9123, %9107
  %9125 = fmul fast float %9120, %8296
  %9126 = fmul fast float %9122, %8296
  %9127 = fmul fast float %9124, %8296
  %9128 = fmul fast float %9125, %9125
  %9129 = fmul fast float %9126, %9126
  %9130 = fadd fast float %9128, %9129
  %9131 = fmul fast float %9127, %9127
  %9132 = fadd fast float %9130, %9131
  %9133 = call float @dx.op.unary.f32(i32 24, float %9132)  ; Sqrt(value)
  %9134 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %9135 = fsub fast float %9133, %9134
  %9136 = extractvalue %dx.types.CBufRet.f32 %8023, 2
  %9137 = fmul fast float %9135, %9136
  %9138 = call float @dx.op.unary.f32(i32 7, float %9137)  ; Saturate(value)
  %9139 = fadd fast float %9138, -5.000000e-01
  %9140 = fmul fast float %9139, 2.000000e+00
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 2
  %9143 = call float @dx.op.binary.f32(i32 36, float %9142, float %9140)  ; FMin(a,b)
  %9144 = fsub fast float -0.000000e+00, %9142
  %9145 = fcmp fast ogt float %9143, %9144
  br i1 %9145, label %9146, label %9458, !dx.controlflow.hints !181

; <label>:9146                                    ; preds = %9091
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 3
  %9149 = fcmp fast ogt float %9148, 0.000000e+00
  br i1 %9149, label %9150, label %9225, !dx.controlflow.hints !182

; <label>:9150                                    ; preds = %9146
  %9151 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9152 = extractvalue %dx.types.Dimensions %9151, 0
  %9153 = sitofp i32 %9152 to float
  %9154 = extractvalue %dx.types.Dimensions %9151, 1
  %9155 = sitofp i32 %9154 to float
  %9156 = fmul fast float %9095, %9153
  %9157 = fmul fast float %9096, %9155
  %9158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9159 = extractvalue %dx.types.CBufRet.f32 %9158, 1
  %9160 = fsub fast float -0.000000e+00, %9159
  %9161 = fptoui float %9160 to i32
  %9162 = fptoui float %9156 to i32
  %9163 = fptoui float %9157 to i32
  %9164 = and i32 %9161, 31
  %9165 = lshr i32 %9162, %9164
  %9166 = lshr i32 %9163, %9164
  %9167 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9161, i32 %9165, i32 %9166, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9168 = extractvalue %dx.types.ResRet.f32 %9167, 0
  %9169 = fcmp fast olt float %9168, -1.000000e+00
  %9170 = fcmp fast ogt float %9168, -1.000000e+00
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 1
  %9173 = select i1 %9170, float %9172, float 1.000000e+00
  %9174 = fadd fast float %9168, 1.000000e+00
  %9175 = fmul fast float %9173, %9174
  %9176 = call float @dx.op.unary.f32(i32 6, float %9175)  ; FAbs(value)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9171, 3
  %9178 = fcmp fast oge float %9176, %9177
  %9179 = select i1 %9178, float 0x4197782600000000, float %9176
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 0
  %9182 = extractvalue %dx.types.CBufRet.f32 %9180, 1
  %9183 = extractvalue %dx.types.CBufRet.f32 %9180, 2
  %9184 = select i1 %9169, float %9181, float %9102
  %9185 = select i1 %9169, float %9182, float %9103
  %9186 = select i1 %9169, float %9183, float %9104
  %9187 = fmul fast float %9184, %9099
  %9188 = fmul fast float %9185, %9099
  %9189 = fmul fast float %9186, %9099
  %9190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.f32 %9190, 0
  %9192 = extractvalue %dx.types.CBufRet.f32 %9190, 1
  %9193 = extractvalue %dx.types.CBufRet.f32 %9190, 2
  %9194 = select i1 %9169, float %9191, float %9109
  %9195 = select i1 %9169, float %9192, float %9110
  %9196 = select i1 %9169, float %9193, float %9111
  %9197 = fmul fast float %9194, %9100
  %9198 = fmul fast float %9195, %9100
  %9199 = fmul fast float %9196, %9100
  %9200 = fadd fast float %9197, %9187
  %9201 = fadd fast float %9198, %9188
  %9202 = fadd fast float %9199, %9189
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.CBufRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.CBufRet.f32 %9203, 2
  %9207 = select i1 %9169, float %9204, float %9116
  %9208 = select i1 %9169, float %9205, float %9117
  %9209 = select i1 %9169, float %9206, float %9118
  %9210 = fadd fast float %9200, %9207
  %9211 = fadd fast float %9201, %9208
  %9212 = fadd fast float %9202, %9209
  %9213 = fmul fast float %9210, %9179
  %9214 = fmul fast float %9211, %9179
  %9215 = fmul fast float %9212, %9179
  %9216 = fmul fast float %9213, %9213
  %9217 = fmul fast float %9214, %9214
  %9218 = fadd fast float %9216, %9217
  %9219 = fmul fast float %9215, %9215
  %9220 = fadd fast float %9218, %9219
  %9221 = call float @dx.op.unary.f32(i32 24, float %9220)  ; Sqrt(value)
  %9222 = fsub fast float %9221, %9134
  %9223 = fmul fast float %9222, %9136
  %9224 = call float @dx.op.unary.f32(i32 7, float %9223)  ; Saturate(value)
  br label %9225

; <label>:9225                                    ; preds = %9150, %9146
  %9226 = phi float [ %9224, %9150 ], [ 1.000000e+00, %9146 ]
  %9227 = fmul fast float %9143, 5.000000e-01
  %9228 = fadd fast float %9227, 5.000000e-01
  %9229 = call float @dx.op.unary.f32(i32 22, float %9228)  ; Frc(value)
  %9230 = call float @dx.op.unary.f32(i32 27, float %9229)  ; Round_ni(value)
  %9231 = call float @dx.op.unary.f32(i32 22, float %9229)  ; Frc(value)
  %9232 = fmul fast float %9231, 2.000000e+00
  %9233 = fadd fast float %9232, -1.000000e+00
  %9234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9095, float %9096, float %9230, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9235 = extractvalue %dx.types.ResRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.ResRet.f32 %9234, 1
  %9237 = extractvalue %dx.types.ResRet.f32 %9234, 2
  %9238 = extractvalue %dx.types.ResRet.f32 %9234, 3
  %9239 = fadd fast float %9235, -5.000000e-01
  %9240 = fadd fast float %9237, -5.000000e-01
  %9241 = fmul fast float %9239, 0xBFD5555560000000
  %9242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9240, float %9241)  ; FMad(a,b,c)
  %9243 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9236, float 0.000000e+00)  ; FMad(a,b,c)
  %9244 = fadd fast float %9243, %9238
  %9245 = fmul fast float %9239, -7.500000e-01
  %9246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9240, float %9245)  ; FMad(a,b,c)
  %9247 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9236, float 0.000000e+00)  ; FMad(a,b,c)
  %9248 = fadd fast float %9247, %9238
  %9249 = call float @dx.op.binary.f32(i32 35, float %9242, float -1.000000e+00)  ; FMax(a,b)
  %9250 = call float @dx.op.binary.f32(i32 35, float %9244, float -1.000000e+00)  ; FMax(a,b)
  %9251 = call float @dx.op.binary.f32(i32 35, float %9246, float -1.000000e+00)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 35, float %9248, float -1.000000e+00)  ; FMax(a,b)
  %9253 = call float @dx.op.binary.f32(i32 36, float %9249, float 1.000000e+00)  ; FMin(a,b)
  %9254 = call float @dx.op.binary.f32(i32 36, float %9250, float 1.000000e+00)  ; FMin(a,b)
  %9255 = call float @dx.op.binary.f32(i32 36, float %9251, float 1.000000e+00)  ; FMin(a,b)
  %9256 = call float @dx.op.binary.f32(i32 36, float %9252, float 1.000000e+00)  ; FMin(a,b)
  %9257 = fcmp fast olt float %9253, 0x3FEFFF8020000000
  br i1 %9257, label %9258, label %9373, !dx.controlflow.hints !183

; <label>:9258                                    ; preds = %9225
  %9259 = extractvalue %dx.types.CBufRet.f32 %9141, 3
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 0
  %9262 = extractvalue %dx.types.CBufRet.f32 %9260, 1
  %9263 = extractvalue %dx.types.CBufRet.f32 %9260, 2
  %9264 = extractvalue %dx.types.CBufRet.f32 %9260, 3
  %9265 = fsub fast float %9261, %9253
  %9266 = fsub fast float %9262, %9254
  %9267 = fsub fast float %9263, %9255
  %9268 = fsub fast float %9264, %9256
  %9269 = fmul fast float %9265, %9259
  %9270 = fmul fast float %9266, %9259
  %9271 = fmul fast float %9267, %9259
  %9272 = fmul fast float %9268, %9259
  %9273 = fadd fast float %9269, %9253
  %9274 = fadd fast float %9270, %9254
  %9275 = fsub fast float -0.000000e+00, %9274
  %9276 = fadd fast float %9271, %9255
  %9277 = fadd fast float %9272, %9256
  %9278 = fmul fast float %9273, %9273
  %9279 = fsub fast float %9274, %9278
  %9280 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9279)  ; FMax(a,b)
  %9281 = fdiv fast float 1.000000e+00, %9280
  %9282 = fmul fast float %9274, %9273
  %9283 = fsub fast float %9276, %9282
  %9284 = fsub fast float %9233, %9273
  %9285 = fmul fast float %9233, %9233
  %9286 = fsub fast float %9285, %9274
  %9287 = fmul fast float %9284, %9281
  %9288 = fmul fast float %9287, %9283
  %9289 = fsub fast float %9286, %9288
  %9290 = fmul fast float %9274, %9274
  %9291 = fsub fast float %9277, %9290
  %9292 = fmul fast float %9283, %9283
  %9293 = fmul fast float %9292, %9281
  %9294 = fsub fast float %9291, %9293
  %9295 = fdiv fast float %9289, %9294
  %9296 = fmul fast float %9283, %9295
  %9297 = fsub fast float %9284, %9296
  %9298 = fmul fast float %9297, %9281
  %9299 = fmul fast float %9298, %9273
  %9300 = fsub fast float 1.000000e+00, %9299
  %9301 = fmul fast float %9274, %9295
  %9302 = fsub fast float %9300, %9301
  %9303 = fmul fast float %9298, %9298
  %9304 = fmul fast float %9295, 4.000000e+00
  %9305 = fmul fast float %9304, %9302
  %9306 = fsub fast float %9303, %9305
  %9307 = call float @dx.op.unary.f32(i32 24, float %9306)  ; Sqrt(value)
  %9308 = fcmp fast oge float %9298, 0.000000e+00
  %9309 = fsub fast float -0.000000e+00, %9307
  %9310 = select i1 %9308, float %9309, float %9307
  %9311 = fsub fast float %9310, %9298
  %9312 = fdiv fast float %9311, %9295
  %9313 = fdiv fast float %9302, %9311
  %9314 = fmul fast float %9312, 5.000000e-01
  %9315 = fmul fast float %9313, 2.000000e+00
  %9316 = select i1 %9308, float %9314, float %9315
  %9317 = select i1 %9308, float %9315, float %9314
  %9318 = call float @dx.op.binary.f32(i32 35, float %9316, float %9317)  ; FMax(a,b)
  %9319 = call float @dx.op.binary.f32(i32 36, float %9316, float %9317)  ; FMin(a,b)
  %9320 = fcmp fast ogt float %9233, %9319
  br i1 %9320, label %9321, label %9331

; <label>:9321                                    ; preds = %9258
  %9322 = fsub fast float %9233, %9319
  %9323 = fsub fast float %9318, %9319
  %9324 = fmul fast float %9322, %9323
  %9325 = fmul fast float %9318, %9233
  %9326 = fadd fast float %9318, %9233
  %9327 = fmul fast float %9326, %9273
  %9328 = fadd fast float %9325, %9274
  %9329 = fsub fast float %9328, %9327
  %9330 = fdiv fast float %9329, %9324
  br label %9331

; <label>:9331                                    ; preds = %9321, %9258
  %9332 = phi float [ %9330, %9321 ], [ 0.000000e+00, %9258 ]
  %9333 = fcmp fast ogt float %9233, %9318
  %9334 = fsub fast float %9233, %9318
  br i1 %9333, label %9335, label %9345

; <label>:9335                                    ; preds = %9331
  %9336 = fsub fast float %9318, %9319
  %9337 = fmul fast float %9336, %9334
  %9338 = fmul fast float %9319, %9233
  %9339 = fadd fast float %9319, %9233
  %9340 = fmul fast float %9339, %9273
  %9341 = fsub fast float %9275, %9338
  %9342 = fadd fast float %9341, %9340
  %9343 = fdiv fast float %9342, %9337
  %9344 = fadd fast float %9343, %9332
  br label %9345

; <label>:9345                                    ; preds = %9335, %9331
  %9346 = phi float [ %9344, %9335 ], [ %9332, %9331 ]
  %9347 = fsub fast float %9233, %9319
  %9348 = fmul fast float %9347, %9334
  %9349 = fmul fast float %9319, %9318
  %9350 = fadd fast float %9319, %9318
  %9351 = fmul fast float %9350, %9273
  %9352 = fadd fast float %9349, %9274
  %9353 = fsub fast float %9352, %9351
  %9354 = fdiv fast float %9353, %9348
  %9355 = call float @dx.op.unary.f32(i32 7, float %9346)  ; Saturate(value)
  %9356 = fcmp fast oeq float %8024, 0.000000e+00
  %9357 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9358 = fcmp fast oeq float %9357, 0.000000e+00
  %9359 = or i1 %9356, %9358
  %9360 = fmul fast float %9357, 2.000000e+00
  %9361 = fadd fast float %9142, %9143
  %9362 = fdiv fast float %9361, %9360
  %9363 = call float @dx.op.unary.f32(i32 7, float %9362)  ; Saturate(value)
  %9364 = fmul fast float %9363, 2.000000e+00
  %9365 = fsub fast float 3.000000e+00, %9364
  %9366 = fmul fast float %9363, %9363
  %9367 = fmul fast float %9366, %9365
  %9368 = select i1 %9359, float 1.000000e+00, float %9367
  %9369 = fmul fast float %9354, %8024
  %9370 = fadd fast float %9355, %9369
  %9371 = call float @dx.op.unary.f32(i32 7, float %9370)  ; Saturate(value)
  %9372 = fmul fast float %9368, %9371
  br label %9373

; <label>:9373                                    ; preds = %9345, %9225
  %9374 = phi float [ %9372, %9345 ], [ 0.000000e+00, %9225 ]
  %9375 = fsub fast float 1.000000e+00, %9374
  %9376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9095, float %9096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9377 = extractvalue %dx.types.ResRet.f32 %9376, 0
  %9378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.i32 %9378, 2
  %9380 = icmp eq i32 %9379, 0
  br i1 %9380, label %9386, label %9381

; <label>:9381                                    ; preds = %9373
  %9382 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9383 = fadd fast float %9377, -1.000000e+00
  %9384 = fmul fast float %9382, %9383
  %9385 = fadd fast float %9384, 1.000000e+00
  br label %9386

; <label>:9386                                    ; preds = %9381, %9373
  %9387 = phi float [ %9385, %9381 ], [ %9375, %9373 ]
  br i1 %9149, label %9388, label %9406

; <label>:9388                                    ; preds = %9386
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9391 = fsub fast float %9226, %9390
  %9392 = call float @dx.op.unary.f32(i32 7, float %9391)  ; Saturate(value)
  %9393 = fsub fast float %9226, %9148
  %9394 = call float @dx.op.unary.f32(i32 7, float %9393)  ; Saturate(value)
  %9395 = fsub fast float %9392, %9394
  %9396 = fsub fast float %9228, %9394
  %9397 = fdiv fast float %9396, %9395
  %9398 = call float @dx.op.unary.f32(i32 7, float %9397)  ; Saturate(value)
  %9399 = fmul fast float %9398, 2.000000e+00
  %9400 = fsub fast float 3.000000e+00, %9399
  %9401 = fsub fast float %9377, %9387
  %9402 = fmul fast float %9398, %9398
  %9403 = fmul fast float %9402, %9401
  %9404 = fmul fast float %9403, %9400
  %9405 = fadd fast float %9404, %9387
  br label %9406

; <label>:9406                                    ; preds = %9388, %9386
  %9407 = phi float [ %9405, %9388 ], [ %9387, %9386 ]
  %9408 = call float @dx.op.binary.f32(i32 35, float %9377, float %9407)  ; FMax(a,b)
  %9409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9410 = extractvalue %dx.types.CBufRet.i32 %9409, 2
  %9411 = and i32 %9410, 1
  %9412 = icmp eq i32 %9411, 0
  %9413 = fcmp fast une float %9408, 1.000000e+00
  %9414 = and i1 %9413, %9412
  br i1 %9414, label %9415, label %9434

; <label>:9415                                    ; preds = %9406
  %9416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9095, float %9096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9417 = extractvalue %dx.types.ResRet.f32 %9416, 0
  %9418 = extractvalue %dx.types.ResRet.f32 %9416, 1
  %9419 = extractvalue %dx.types.ResRet.f32 %9416, 2
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 1
  %9422 = fmul fast float %9421, %9417
  %9423 = fmul fast float %9421, %9418
  %9424 = fmul fast float %9421, %9419
  %9425 = fcmp fast ogt float %9377, 0x3FEFFF2E40000000
  %9426 = fsub fast float 1.000000e+00, %9408
  %9427 = fsub fast float 1.000000e+00, %9377
  %9428 = fdiv fast float %9426, %9427
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = select i1 %9425, float 0.000000e+00, float %9429
  %9431 = fmul fast float %9422, %9430
  %9432 = fmul fast float %9423, %9430
  %9433 = fmul fast float %9424, %9430
  br label %9434

; <label>:9434                                    ; preds = %9415, %9406
  %9435 = phi float [ 0.000000e+00, %9406 ], [ %9431, %9415 ]
  %9436 = phi float [ 0.000000e+00, %9406 ], [ %9432, %9415 ]
  %9437 = phi float [ 0.000000e+00, %9406 ], [ %9433, %9415 ]
  %9438 = fmul fast float %9435, %8012
  %9439 = fmul fast float %9436, %8012
  %9440 = fmul fast float %9437, %8012
  %9441 = fmul fast float %9408, %9070
  %9442 = call float @dx.op.dot3.f32(i32 55, float %9408, float %9408, float %9408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9443 = call float @dx.op.dot3.f32(i32 55, float %9438, float %9439, float %9440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9444 = select i1 %231, float %9442, float %9408
  %9445 = select i1 %231, float 1.000000e+00, float %9408
  %9446 = select i1 %231, float %9443, float %9438
  %9447 = select i1 %231, float 0.000000e+00, float %9439
  %9448 = select i1 %231, float 0.000000e+00, float %9440
  %9449 = fmul fast float %9444, %9082
  %9450 = fmul fast float %9444, %9083
  %9451 = fmul fast float %9445, %9084
  %9452 = fadd fast float %9449, %9446
  %9453 = fadd fast float %9450, %9447
  %9454 = fadd fast float %9448, %9451
  %9455 = fmul fast float %9444, %9085
  %9456 = fmul fast float %9444, %9086
  %9457 = fmul fast float %9445, %9087
  br label %9458

; <label>:9458                                    ; preds = %9434, %9091, %9060, %8292
  %9459 = phi float [ %8297, %8292 ], [ %9082, %9060 ], [ %9452, %9434 ], [ %9082, %9091 ]
  %9460 = phi float [ %8298, %8292 ], [ %9083, %9060 ], [ %9453, %9434 ], [ %9083, %9091 ]
  %9461 = phi float [ %8299, %8292 ], [ %9084, %9060 ], [ %9454, %9434 ], [ %9084, %9091 ]
  %9462 = phi float [ %8300, %8292 ], [ %9085, %9060 ], [ %9455, %9434 ], [ %9085, %9091 ]
  %9463 = phi float [ %8301, %8292 ], [ %9086, %9060 ], [ %9456, %9434 ], [ %9086, %9091 ]
  %9464 = phi float [ %8302, %8292 ], [ %9087, %9060 ], [ %9457, %9434 ], [ %9087, %9091 ]
  %9465 = phi float [ %8303, %8292 ], [ %9070, %9060 ], [ %9441, %9434 ], [ %9070, %9091 ]
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %9468 = extractvalue %dx.types.CBufRet.f32 %9466, 3
  %9469 = fmul fast float %9467, %106
  %9470 = fmul fast float %9468, %107
  %9471 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9472 = call float @dx.op.unary.f32(i32 7, float %9470)  ; Saturate(value)
  %9473 = select i1 %8034, i32 2, i32 0
  %9474 = or i32 %9473, 1
  %9475 = uitofp i32 %9474 to float
  %9476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9471, float %9472, float %9475, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9477 = extractvalue %dx.types.ResRet.f32 %9476, 0
  %9478 = extractvalue %dx.types.ResRet.f32 %9476, 1
  %9479 = extractvalue %dx.types.ResRet.f32 %9476, 2
  %9480 = extractvalue %dx.types.ResRet.f32 %9476, 3
  %9481 = add nuw nsw i32 %9473, 2
  %9482 = uitofp i32 %9481 to float
  %9483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9471, float %9472, float %9482, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9484 = extractvalue %dx.types.ResRet.f32 %9483, 0
  %9485 = extractvalue %dx.types.ResRet.f32 %9483, 1
  %9486 = extractvalue %dx.types.ResRet.f32 %9483, 2
  %9487 = extractvalue %dx.types.ResRet.f32 %9483, 3
  %9488 = call float @dx.op.binary.f32(i32 35, float %9478, float %9479)  ; FMax(a,b)
  %9489 = call float @dx.op.binary.f32(i32 35, float %9477, float %9488)  ; FMax(a,b)
  %9490 = call float @dx.op.binary.f32(i32 35, float %9489, float %9480)  ; FMax(a,b)
  %9491 = call float @dx.op.binary.f32(i32 36, float %9485, float %9486)  ; FMin(a,b)
  %9492 = call float @dx.op.binary.f32(i32 36, float %9484, float %9491)  ; FMin(a,b)
  %9493 = call float @dx.op.binary.f32(i32 36, float %9492, float %9487)  ; FMin(a,b)
  %9494 = fmul fast float %9490, 2.550000e+02
  %9495 = fadd fast float %9494, 0x3F70101020000000
  %9496 = fptoui float %9495 to i32
  %9497 = fmul fast float %9493, 2.550000e+02
  %9498 = fadd fast float %9497, 0x3F70101020000000
  %9499 = fptoui float %9498 to i32
  %9500 = icmp ult i32 %9496, %9499
  br i1 %9500, label %9501, label %9670

; <label>:9501                                    ; preds = %9458
  %9502 = fcmp fast ogt float %93, 9.843750e-01
  %9503 = fadd fast float %8296, -4.000000e+00
  %9504 = select i1 %9502, float -4.000000e+00, float %9503
  %9505 = call float @dx.op.binary.f32(i32 35, float %9504, float 0.000000e+00)  ; FMax(a,b)
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 0
  %9508 = fadd fast float %9507, %9505
  %9509 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9510 = fmul fast float %9508, %9509
  %9511 = call float @dx.op.unary.f32(i32 23, float %9510)  ; Log(value)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9513 = fmul fast float %9512, %9511
  %9514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9515 = extractvalue %dx.types.CBufRet.f32 %9514, 2
  %9516 = fmul fast float %9513, %9515
  %9517 = call float @dx.op.unary.f32(i32 7, float %9516)  ; Saturate(value)
  %9518 = uitofp i32 %9496 to float
  %9519 = uitofp i32 %9499 to float
  %9520 = fadd fast float %9518, 5.000000e-01
  %9521 = fadd fast float %9519, 5.000000e-01
  %9522 = fmul fast float %9515, %9520
  %9523 = fmul fast float %9515, %9521
  %9524 = fadd fast float %9522, 0x3F0FFB4800000000
  %9525 = fadd fast float %9523, 0xBF0FFB4800000000
  %9526 = call float @dx.op.binary.f32(i32 35, float %9517, float %9524)  ; FMax(a,b)
  %9527 = call float @dx.op.binary.f32(i32 36, float %9526, float %9525)  ; FMin(a,b)
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9532 = select i1 %8034, float %9531, float 0.000000e+00
  %9533 = fmul fast float %9529, %9527
  %9534 = fadd fast float %9532, %9533
  %9535 = fadd fast float %9532, %9530
  %9536 = fsub fast float %9529, %9530
  %9537 = fadd fast float %9536, %9532
  %9538 = call float @dx.op.binary.f32(i32 35, float %9534, float %9535)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 36, float %9538, float %9537)  ; FMin(a,b)
  %9540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9471, float %9472, float %9539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9541 = extractvalue %dx.types.ResRet.f32 %9540, 0
  %9542 = extractvalue %dx.types.ResRet.f32 %9540, 1
  %9543 = extractvalue %dx.types.ResRet.f32 %9540, 2
  %9544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.i32 %9544, 0
  %9546 = extractvalue %dx.types.CBufRet.i32 %9544, 1
  %9547 = uitofp i32 %9545 to float
  %9548 = uitofp i32 %9546 to float
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 0
  %9551 = extractvalue %dx.types.CBufRet.f32 %9549, 1
  %9552 = fmul fast float %9547, %9471
  %9553 = fmul fast float %9548, %9472
  %9554 = fadd fast float %9552, -5.000000e-01
  %9555 = fadd fast float %9553, -5.000000e-01
  %9556 = call float @dx.op.unary.f32(i32 22, float %9554)  ; Frc(value)
  %9557 = call float @dx.op.unary.f32(i32 22, float %9555)  ; Frc(value)
  %9558 = fmul fast float %9556, %9556
  %9559 = fmul fast float %9558, %9556
  %9560 = fsub fast float 3.000000e+00, %9556
  %9561 = fmul fast float %9558, %9560
  %9562 = fmul fast float %9556, 3.000000e+00
  %9563 = fmul fast float %9559, 3.000000e+00
  %9564 = fmul fast float %9558, 6.000000e+00
  %9565 = fsub fast float %9563, %9564
  %9566 = fadd fast float %9565, 4.000000e+00
  %9567 = fmul fast float %9566, 0x3FC5555560000000
  %9568 = fmul fast float %9559, -3.000000e+00
  %9569 = fadd fast float %9558, %9556
  %9570 = fmul fast float %9569, 3.000000e+00
  %9571 = fadd fast float %9568, 1.000000e+00
  %9572 = fadd fast float %9571, %9570
  %9573 = fmul fast float %9559, 0x3FC5555560000000
  %9574 = fmul fast float %9557, %9557
  %9575 = fmul fast float %9574, %9557
  %9576 = fsub fast float 3.000000e+00, %9557
  %9577 = fmul fast float %9574, %9576
  %9578 = fmul fast float %9557, 3.000000e+00
  %9579 = fmul fast float %9575, 3.000000e+00
  %9580 = fmul fast float %9574, 6.000000e+00
  %9581 = fsub fast float %9579, %9580
  %9582 = fadd fast float %9581, 4.000000e+00
  %9583 = fmul fast float %9582, 0x3FC5555560000000
  %9584 = fmul fast float %9575, -3.000000e+00
  %9585 = fadd fast float %9574, %9557
  %9586 = fmul fast float %9585, 3.000000e+00
  %9587 = fadd fast float %9584, 1.000000e+00
  %9588 = fadd fast float %9587, %9586
  %9589 = fmul fast float %9575, 0x3FC5555560000000
  %9590 = fadd fast float %9556, 1.000000e+00
  %9591 = fsub fast float 1.000000e+00, %9562
  %9592 = fadd fast float %9591, %9561
  %9593 = fadd fast float %9592, %9566
  %9594 = fmul fast float %9593, 0x3FC5555560000000
  %9595 = fdiv fast float %9567, %9594
  %9596 = fsub fast float %9590, %9595
  %9597 = fsub fast float 1.000000e+00, %9556
  %9598 = fadd fast float %9572, %9559
  %9599 = fmul fast float %9598, 0x3FC5555560000000
  %9600 = fdiv fast float %9573, %9599
  %9601 = fadd fast float %9597, %9600
  %9602 = fadd fast float %9557, 1.000000e+00
  %9603 = fsub fast float 1.000000e+00, %9578
  %9604 = fadd fast float %9603, %9577
  %9605 = fadd fast float %9604, %9582
  %9606 = fmul fast float %9605, 0x3FC5555560000000
  %9607 = fdiv fast float %9583, %9606
  %9608 = fsub fast float %9602, %9607
  %9609 = fsub fast float 1.000000e+00, %9557
  %9610 = fadd fast float %9588, %9575
  %9611 = fmul fast float %9610, 0x3FC5555560000000
  %9612 = fdiv fast float %9589, %9611
  %9613 = fadd fast float %9612, %9609
  %9614 = fmul fast float %9596, %9550
  %9615 = fsub fast float %9471, %9614
  %9616 = fmul fast float %9601, %9550
  %9617 = fadd fast float %9616, %9471
  %9618 = fmul fast float %9613, %9551
  %9619 = fadd fast float %9618, %9472
  %9620 = fmul fast float %9608, %9551
  %9621 = fsub fast float %9472, %9620
  %9622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9615, float %9621, float %9539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9623 = extractvalue %dx.types.ResRet.f32 %9622, 0
  %9624 = extractvalue %dx.types.ResRet.f32 %9622, 1
  %9625 = extractvalue %dx.types.ResRet.f32 %9622, 2
  %9626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9617, float %9621, float %9539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9627 = extractvalue %dx.types.ResRet.f32 %9626, 0
  %9628 = extractvalue %dx.types.ResRet.f32 %9626, 1
  %9629 = extractvalue %dx.types.ResRet.f32 %9626, 2
  %9630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9615, float %9619, float %9539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9631 = extractvalue %dx.types.ResRet.f32 %9630, 0
  %9632 = extractvalue %dx.types.ResRet.f32 %9630, 1
  %9633 = extractvalue %dx.types.ResRet.f32 %9630, 2
  %9634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9617, float %9619, float %9539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9635 = extractvalue %dx.types.ResRet.f32 %9634, 0
  %9636 = extractvalue %dx.types.ResRet.f32 %9634, 1
  %9637 = extractvalue %dx.types.ResRet.f32 %9634, 2
  %9638 = fsub fast float %9631, %9623
  %9639 = fsub fast float %9632, %9624
  %9640 = fsub fast float %9633, %9625
  %9641 = fmul fast float %9638, %9611
  %9642 = fmul fast float %9639, %9611
  %9643 = fmul fast float %9640, %9611
  %9644 = fadd fast float %9641, %9623
  %9645 = fadd fast float %9642, %9624
  %9646 = fadd fast float %9643, %9625
  %9647 = fsub fast float %9635, %9627
  %9648 = fsub fast float %9636, %9628
  %9649 = fsub fast float %9637, %9629
  %9650 = fmul fast float %9647, %9611
  %9651 = fmul fast float %9648, %9611
  %9652 = fmul fast float %9649, %9611
  %9653 = fsub fast float %9627, %9644
  %9654 = fadd fast float %9653, %9650
  %9655 = fsub fast float %9628, %9645
  %9656 = fadd fast float %9655, %9651
  %9657 = fsub fast float %9629, %9646
  %9658 = fadd fast float %9657, %9652
  %9659 = fmul fast float %9654, %9599
  %9660 = fmul fast float %9656, %9599
  %9661 = fmul fast float %9658, %9599
  %9662 = fadd fast float %9659, %9644
  %9663 = fadd fast float %9660, %9645
  %9664 = fadd fast float %9661, %9646
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 1
  %9667 = fmul fast float %9662, %9666
  %9668 = fmul fast float %9663, %9666
  %9669 = fmul fast float %9664, %9666
  br label %9670

; <label>:9670                                    ; preds = %9501, %9458
  %9671 = phi float [ %9541, %9501 ], [ 1.000000e+00, %9458 ]
  %9672 = phi float [ %9542, %9501 ], [ 1.000000e+00, %9458 ]
  %9673 = phi float [ %9543, %9501 ], [ 1.000000e+00, %9458 ]
  %9674 = phi float [ %9667, %9501 ], [ 0.000000e+00, %9458 ]
  %9675 = phi float [ %9668, %9501 ], [ 0.000000e+00, %9458 ]
  %9676 = phi float [ %9669, %9501 ], [ 0.000000e+00, %9458 ]
  %9677 = fmul fast float %9674, %8012
  %9678 = fmul fast float %9675, %8012
  %9679 = fmul fast float %9676, %8012
  %9680 = fmul fast float %9671, %9465
  %9681 = call float @dx.op.dot3.f32(i32 55, float %9671, float %9672, float %9673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9682 = call float @dx.op.dot3.f32(i32 55, float %9677, float %9678, float %9679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9683 = select i1 %231, float %9681, float %9671
  %9684 = select i1 %231, float %9681, float %9672
  %9685 = select i1 %231, float 1.000000e+00, float %9673
  %9686 = select i1 %231, float %9682, float %9677
  %9687 = select i1 %231, float 0.000000e+00, float %9678
  %9688 = select i1 %231, float 0.000000e+00, float %9679
  %9689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9690 = extractvalue %dx.types.CBufRet.i32 %9689, 3
  %9691 = and i32 %9690, 3
  %9692 = icmp ne i32 %9691, 0
  %9693 = and i32 %9690, 4
  %9694 = icmp ne i32 %9693, 0
  %9695 = and i1 %9692, %9694
  %9696 = and i1 %231, %9695
  br i1 %9696, label %9697, label %9703

; <label>:9697                                    ; preds = %9670
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 1
  %9700 = fadd fast float %9680, -1.000000e+00
  %9701 = fmul fast float %9699, %9700
  %9702 = fadd fast float %9701, 1.000000e+00
  br label %9703

; <label>:9703                                    ; preds = %9697, %9670
  %9704 = phi float [ %9702, %9697 ], [ %9680, %9670 ]
  %9705 = fadd fast float %9462, %9459
  %9706 = fmul fast float %9683, %9705
  %9707 = fadd fast float %9706, %9686
  %9708 = fadd fast float %9463, %9460
  %9709 = fmul fast float %9684, %9708
  %9710 = fadd fast float %9709, %9687
  %9711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9712 = extractvalue %dx.types.CBufRet.f32 %9711, 0
  br i1 %231, label %9713, label %9737

; <label>:9713                                    ; preds = %9703
  %9714 = fadd fast float %9707, %9710
  %9715 = fmul fast float %9712, %9714
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 3
  %9718 = extractvalue %dx.types.CBufRet.f32 %8016, 1
  %9719 = fsub fast float %8021, %8015
  %9720 = fadd fast float %9719, %8022
  %9721 = fsub fast float %9720, %9718
  %9722 = extractvalue %dx.types.CBufRet.f32 %8016, 2
  %9723 = fmul fast float %9721, %9722
  %9724 = call float @dx.op.unary.f32(i32 7, float %9723)  ; Saturate(value)
  %9725 = fsub fast float %9724, %9717
  %9726 = fmul fast float %9725, %9704
  %9727 = fadd fast float %9726, %9717
  %9728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9729 = extractvalue %dx.types.CBufRet.f32 %9728, 0
  %9730 = fsub fast float %9727, %9729
  %9731 = fmul fast float %9730, 1.000000e+01
  %9732 = call float @dx.op.unary.f32(i32 7, float %9731)  ; Saturate(value)
  %9733 = fsub fast float %4436, %8012
  %9734 = fmul fast float %9732, %9733
  %9735 = fadd fast float %9734, %8012
  %9736 = fmul fast float %9735, %9727
  br label %9761

; <label>:9737                                    ; preds = %9703
  %9738 = fadd fast float %9464, %9461
  %9739 = fmul fast float %9685, %9738
  %9740 = fadd fast float %9739, %9688
  %9741 = fmul fast float %9712, %9707
  %9742 = fmul fast float %9712, %9710
  %9743 = fmul fast float %9712, %9740
  %9744 = call float @dx.op.binary.f32(i32 35, float %9742, float %9743)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 35, float %9741, float %9744)  ; FMax(a,b)
  %9746 = call float @dx.op.binary.f32(i32 35, float %9745, float %8012)  ; FMax(a,b)
  %9747 = fcmp fast ugt float %9746, 0x3F10000000000000
  br i1 %9747, label %9749, label %9748

; <label>:9748                                    ; preds = %9737
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9749

; <label>:9749                                    ; preds = %9748, %9737
  %9750 = add i32 %60, 356
  %9751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9750, i32 undef)  ; BufferLoad(srv,index,wot)
  %9752 = extractvalue %dx.types.ResRet.i32 %9751, 0
  %9753 = and i32 %9752, 32
  %9754 = icmp eq i32 %9753, 0
  br i1 %9754, label %9761, label %9755

; <label>:9755                                    ; preds = %9749
  %9756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9757 = extractvalue %dx.types.CBufRet.f32 %9756, 0
  %9758 = fmul fast float %9757, 0x3FE99999A0000000
  %9759 = fadd fast float %9757, %9741
  %9760 = fadd fast float %9758, %9743
  br label %9761

; <label>:9761                                    ; preds = %9755, %9749, %9713
  %9762 = phi float [ %9715, %9713 ], [ %9759, %9755 ], [ %9741, %9749 ]
  %9763 = phi float [ %9736, %9713 ], [ %9742, %9755 ], [ %9742, %9749 ]
  %9764 = phi float [ %9735, %9713 ], [ %9760, %9755 ], [ %9743, %9749 ]
  %9765 = phi float [ %9735, %9713 ], [ %8012, %9755 ], [ %8012, %9749 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9766 = call float @dx.op.binary.f32(i32 36, float %9762, float 3.225500e+04)  ; FMin(a,b)
  %9767 = call float @dx.op.binary.f32(i32 36, float %9763, float 3.225500e+04)  ; FMin(a,b)
  %9768 = call float @dx.op.binary.f32(i32 36, float %9764, float 3.225500e+04)  ; FMin(a,b)
  %9769 = call float @dx.op.binary.f32(i32 36, float %9765, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9766)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9767)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9768)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9769)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !100}
!76 = !{!77, !98, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97}
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
!89 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !79, i8 2, i32 1, i8 1, i32 3, i8 3, !90}
!90 = !{i32 3, i32 1}
!91 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 7, i8 0, !83}
!92 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 8, i8 0, !80}
!93 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !94}
!94 = !{i32 3, i32 8}
!95 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 10, i8 0, !96}
!96 = !{i32 3, i32 13}
!97 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !118, !120}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !111, i64 0}
!125 = distinct !{!125, !103}
!126 = distinct !{!126, !103}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = !{!138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!138 = distinct !{!138, !139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!139 = distinct !{!139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!140 = distinct !{!140, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!141 = distinct !{!141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!142 = distinct !{!142, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!152 = distinct !{!152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!161 = !{!157}
!162 = !{!158, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!171 = !{!167}
!172 = !{!168, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}

