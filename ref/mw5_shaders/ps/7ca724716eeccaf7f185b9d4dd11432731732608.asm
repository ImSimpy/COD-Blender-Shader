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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
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
; shader hash: 3ef8c3d33f002f10477f38a84192331e
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
;                                   sampler      NA          NA      S7             s6     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t49,space1     1
;                                   texture    byte         r/o      T8     t50,space1     1
;                                   texture    byte         r/o      T9     t51,space1     1
;                                   texture    byte         r/o     T10     t52,space1     1
;                                   texture    byte         r/o     T11     t16,space1     1
;                                   texture    byte         r/o     T12     t17,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     u32          2d     T25     t56,space2     1
;                                   texture     f32          2d     T26     t34,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %90
  %103 = fmul fast float %101, %91
  %104 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %81
  %110 = fmul fast float %108, %82
  %111 = fmul fast float %108, %83
  %112 = fmul fast float %82, %79
  %113 = fmul fast float %83, %78
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %83, %77
  %116 = fmul fast float %81, %79
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %81, %78
  %119 = fmul fast float %82, %77
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %114, %80
  %122 = fmul fast float %117, %80
  %123 = fmul fast float %120, %80
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %102, 2.000000e+00
  %128 = fmul fast float %127, %125
  %129 = fmul fast float %103, 2.000000e+00
  %130 = fmul fast float %129, %126
  %131 = fsub fast float 1.000000e+00, %128
  %132 = fsub fast float 1.000000e+00, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %131, %134
  %138 = fmul fast float %131, %135
  %139 = fmul fast float %131, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fmul fast float %132, %141
  %145 = fmul fast float %132, %142
  %146 = fmul fast float %132, %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %151, %137
  %153 = fadd fast float %145, %149
  %154 = fadd fast float %153, %138
  %155 = fadd fast float %146, %150
  %156 = fadd fast float %155, %139
  %157 = fmul fast float %152, %93
  %158 = fmul fast float %154, %93
  %159 = fmul fast float %156, %93
  %160 = add i32 %56, 360
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = extractvalue %dx.types.ResRet.i32 %161, 2
  %165 = extractvalue %dx.types.ResRet.i32 %161, 3
  %166 = bitcast i32 %162 to float
  %167 = bitcast i32 %163 to float
  %168 = bitcast i32 %164 to float
  %169 = bitcast i32 %165 to float
  %170 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call float @dx.op.unary.f32(i32 25, float %170)  ; Rsqrt(value)
  %172 = fmul fast float %171, %109
  %173 = fmul fast float %171, %110
  %174 = fmul fast float %171, %111
  %175 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %176, %157
  %178 = fmul fast float %176, %158
  %179 = fmul fast float %176, %159
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %172, float %173, float %174)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fmul fast float %180, %180
  %182 = fmul fast float %181, %168
  %183 = fadd fast float %182, %169
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = fmul fast float %186, %175
  %188 = fsub fast float %166, %187
  %189 = fmul fast float %188, %167
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fmul fast float %190, %184
  %192 = fmul fast float %102, 5.000000e-01
  %193 = fmul fast float %103, 5.000000e-01
  %194 = fptosi float %192 to i32
  %195 = fptosi float %193 to i32
  %196 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %194, i32 %195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = lshr i32 %197, 18
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F4C00EBA0000000
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fadd fast float %201, -1.000000e+00
  %203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %204 = extractvalue %dx.types.Dimensions %203, 0
  %205 = sitofp i32 %204 to float
  %206 = extractvalue %dx.types.Dimensions %203, 1
  %207 = sitofp i32 %206 to float
  %208 = fcmp fast oge float %192, %205
  %209 = fcmp fast oge float %193, %207
  %210 = or i1 %208, %209
  %211 = select i1 %210, float 0x4197782600000000, float %202
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %215 = fmul fast float %213, %102
  %216 = fmul fast float %214, %103
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 114688
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %220, float %215, float 0.000000e+00
  %222 = select i1 %220, float %216, float 0.000000e+00
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %51, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fmul fast float %224, 2.550000e+02
  %226 = fptoui float %225 to i32
  %227 = select i1 %220, i32 %226, i32 0
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 3
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  %233 = and i32 %230, 4
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %232, %234
  br i1 %235, label %236, label %247

; <label>:236                                     ; preds = %0
  %237 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %238 = fmul fast float %237, %103
  %239 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %240 = fmul fast float %239, %102
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %240, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fsub fast float 1.000000e+00, %242
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = fcmp fast olt float %243, %245
  br label %250

; <label>:247                                     ; preds = %0
  %248 = icmp eq i32 %233, 0
  %249 = and i1 %232, %248
  br label %250

; <label>:250                                     ; preds = %247, %236
  %251 = phi i1 [ %246, %236 ], [ %249, %247 ]
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fmul fast float %253, 0x3FE3C6EF40000000
  %255 = frem fast float %102, 2.560000e+02
  %256 = frem fast float %103, 2.560000e+02
  %257 = fptoui float %255 to i32
  %258 = fptoui float %256 to i32
  %259 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = fadd fast float %260, %254
  %263 = fadd fast float %261, %254
  %264 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %265 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %266 = add i32 %56, 156
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = shl i32 %268, 4
  %270 = and i32 %269, 32752
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %268, 7
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %268, 22
  %276 = shl nuw nsw i32 %275, 5
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %56, 216
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %280, 8
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %280, 16
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = add i32 %56, 36
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %56, 288
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = fmul fast float %303, 0x3F50624DE0000000
  %307 = fmul fast float %305, 0x3F50624DE0000000
  %308 = add i32 %56, 172
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %56, 232
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %322, 8
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %322, 16
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = add i32 %56, 52
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %56, 304
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = fmul fast float %345, 0x3F50624DE0000000
  %349 = fmul fast float %347, 0x3F50624DE0000000
  %350 = add i32 %56, 188
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = shl i32 %352, 4
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %352, 7
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %352, 22
  %360 = shl nuw nsw i32 %359, 5
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %56, 248
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %364, 8
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %364, 16
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = add i32 %56, 68
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %56, 320
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = fmul fast float %387, 0x3F50624DE0000000
  %391 = fmul fast float %389, 0x3F50624DE0000000
  %392 = add i32 %56, 204
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %56, 264
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %406, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %406, 16
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = add i32 %56, 84
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %56, 336
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = fmul fast float %429, 0x3F50624DE0000000
  %433 = fmul fast float %431, 0x3F50624DE0000000
  %434 = add i32 %56, 348
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 32
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %436, 64
  %440 = icmp eq i32 %439, 0
  %441 = and i32 %436, 128
  %442 = icmp eq i32 %441, 0
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 2
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %462, label %447

; <label>:447                                     ; preds = %250
  %448 = add i32 %56, 536
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %450, 0
  %452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %452, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = fmul fast float %457, %86
  %459 = fmul fast float %454, %87
  %460 = fmul fast float %455, %88
  %461 = fmul fast float %456, %89
  br label %462

; <label>:462                                     ; preds = %447, %250
  %463 = phi float [ %89, %250 ], [ %461, %447 ]
  %464 = phi float [ %88, %250 ], [ %460, %447 ]
  %465 = phi float [ %87, %250 ], [ %459, %447 ]
  %466 = phi float [ %86, %250 ], [ %458, %447 ]
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %490, label %471

; <label>:471                                     ; preds = %462
  %472 = add i32 %56, 44
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 1
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %465, float 1.000000e+00
  %478 = add i32 %56, 60
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %464, float 1.000000e+00
  %484 = add i32 %56, 76
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %463, float 1.000000e+00
  br label %490

; <label>:490                                     ; preds = %471, %462
  %491 = phi float [ %463, %462 ], [ %489, %471 ]
  %492 = phi float [ %464, %462 ], [ %483, %471 ]
  %493 = phi float [ %465, %462 ], [ %477, %471 ]
  %494 = lshr i32 %468, 20
  %495 = and i32 %494, 3
  %496 = add nuw nsw i32 %495, 1
  %497 = add i32 %56, 24
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %56, 28
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = or i32 %502, %499
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %1279, label %505

; <label>:505                                     ; preds = %490
  %506 = and i32 %499, 262144
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %59, float 1.000000e+00
  %509 = select i1 %507, float %60, float 0.000000e+00
  %510 = select i1 %507, float %61, float 0.000000e+00
  %511 = select i1 %507, float %62, float 1.000000e+00
  %512 = select i1 %507, float %63, float %84
  %513 = select i1 %507, float %64, float %85
  %514 = add i32 %56, 284
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = lshr i32 %516, 16
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = fmul fast float %518, 0x3F50624DE0000000
  %520 = add i32 %56, 88
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = and i32 %523, 255
  %525 = lshr i32 %522, 24
  %526 = add i32 %56, 292
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %528, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = add i32 %56, 32
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 22
  %537 = shl nuw nsw i32 %536, 5
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = shl i32 %535, 4
  %540 = and i32 %539, 32752
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %535, 7
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = fmul fast float %546, 1.000000e+03
  %548 = fmul fast float %306, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = fadd fast float %549, %296
  %551 = fmul fast float %307, %547
  %552 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %553 = fadd fast float %552, %298
  %554 = fmul fast float %519, %547
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fmul fast float %555, 0x401921FB60000000
  %557 = fadd fast float %556, %538
  %558 = call float @dx.op.unary.f32(i32 13, float %557)  ; Sin(value)
  %559 = call float @dx.op.unary.f32(i32 12, float %557)  ; Cos(value)
  %560 = fsub fast float -0.000000e+00, %558
  %561 = fadd fast float %512, -5.000000e-01
  %562 = fadd fast float %513, -5.000000e-01
  %563 = fmul fast float %530, %561
  %564 = fmul fast float %532, %562
  %565 = fadd fast float %563, 5.000000e-01
  %566 = fadd fast float %564, 5.000000e-01
  %567 = fmul fast float %541, %565
  %568 = fmul fast float %544, %566
  %569 = fmul fast float %559, %567
  %570 = call float @dx.op.tertiary.f32(i32 46, float %560, float %568, float %569)  ; FMad(a,b,c)
  %571 = fmul fast float %558, %567
  %572 = call float @dx.op.tertiary.f32(i32 46, float %559, float %568, float %571)  ; FMad(a,b,c)
  %573 = fadd fast float %550, %570
  %574 = fadd fast float %553, %572
  %575 = icmp ugt i32 %524, 1
  %576 = icmp ugt i32 %522, 33554431
  %577 = or i1 %576, %575
  br i1 %577, label %578, label %603

; <label>:578                                     ; preds = %505
  %579 = add i32 %56, 228
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = fmul fast float %546, %583
  %585 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %586 = mul nuw nsw i32 %524, %525
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %585, %587
  %589 = call float @dx.op.unary.f32(i32 27, float %588)  ; Round_ni(value)
  %590 = fptoui float %589 to i32
  %591 = urem i32 %590, %524
  %592 = udiv i32 %590, %525
  %593 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %594 = call float @dx.op.unary.f32(i32 22, float %574)  ; Frc(value)
  %595 = uitofp i32 %591 to float
  %596 = uitofp i32 %592 to float
  %597 = fadd fast float %593, %595
  %598 = fadd fast float %594, %596
  %599 = uitofp i32 %524 to float
  %600 = uitofp i32 %525 to float
  %601 = fdiv fast float %597, %599
  %602 = fdiv fast float %598, %600
  br label %603

; <label>:603                                     ; preds = %578, %505
  %604 = phi float [ %601, %578 ], [ %573, %505 ]
  %605 = phi float [ %602, %578 ], [ %574, %505 ]
  %606 = and i32 %499, 16777216
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %717, label %608

; <label>:608                                     ; preds = %603
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = fadd fast float %610, %157
  %614 = fadd fast float %611, %158
  %615 = fadd fast float %612, %159
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = icmp eq i32 %57, 65535
  br i1 %619, label %714, label %620

; <label>:620                                     ; preds = %608
  %621 = lshr i32 %57, 1
  %622 = shl i32 %621, 2
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %57, 1
  %626 = icmp ne i32 %625, 0
  %627 = lshr i32 %624, 16
  %628 = and i32 %624, 65535
  %629 = select i1 %626, i32 %627, i32 %628
  %630 = icmp eq i32 %629, 65535
  br i1 %630, label %710, label %631

; <label>:631                                     ; preds = %620
  %632 = mul nuw nsw i32 %629, 40
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = add nuw nsw i32 %632, 12
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add nuw nsw i32 %632, 24
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = add nuw nsw i32 %632, 36
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = fsub fast float %613, %634
  %651 = fsub fast float %614, %635
  %652 = fsub fast float %615, %636
  %653 = fmul fast float %649, %650
  %654 = fmul fast float %649, %651
  %655 = fmul fast float %649, %652
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = fmul fast float %659, %639
  %663 = fmul fast float %660, %640
  %664 = fmul fast float %661, %641
  %665 = shl i32 %57, 2
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %671 = call float @dx.op.unary.f32(i32 22, float %663)  ; Frc(value)
  %672 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %669, %dx.types.Handle %51, float %670, float %671, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = fmul fast float %674, 1.023000e+03
  %678 = fmul fast float %675, 1.023000e+03
  %679 = fmul fast float %676, 1.023000e+03
  %680 = fadd fast float %677, 5.000000e-01
  %681 = fadd fast float %678, 5.000000e-01
  %682 = fadd fast float %679, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 27, float %680)  ; Round_ni(value)
  %684 = call float @dx.op.unary.f32(i32 27, float %681)  ; Round_ni(value)
  %685 = call float @dx.op.unary.f32(i32 27, float %682)  ; Round_ni(value)
  %686 = fsub fast float %653, %656
  %687 = fsub fast float %654, %657
  %688 = fsub fast float %655, %658
  %689 = fmul fast float %686, 7.500000e-01
  %690 = fmul fast float %687, 7.500000e-01
  %691 = fmul fast float %688, 7.500000e-01
  %692 = fadd fast float %656, 1.250000e-01
  %693 = fadd fast float %692, %689
  %694 = fadd fast float %693, %683
  %695 = fadd fast float %657, 1.250000e-01
  %696 = fadd fast float %695, %690
  %697 = fadd fast float %696, %684
  %698 = fadd fast float %658, 1.250000e-01
  %699 = fadd fast float %698, %691
  %700 = fadd fast float %699, %685
  %701 = fmul fast float %694, %644
  %702 = fmul fast float %697, %645
  %703 = fmul fast float %700, %646
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %707, %dx.types.Handle %49, float %701, float %702, float %703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  br label %710

; <label>:710                                     ; preds = %631, %620
  %711 = phi float [ %709, %631 ], [ -1.000000e+00, %620 ]
  %712 = fadd fast float %711, %618
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  br label %714

; <label>:714                                     ; preds = %710, %608
  %715 = phi float [ %713, %710 ], [ %618, %608 ]
  %716 = fmul fast float %715, %466
  br label %717

; <label>:717                                     ; preds = %714, %603
  %718 = phi float [ %716, %714 ], [ %466, %603 ]
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 256
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %769, label %723

; <label>:723                                     ; preds = %717
  %724 = add i32 %56, 472
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %726, 0
  %728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %728, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = add i32 %56, 100
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = shl i32 %733, 4
  %735 = and i32 %734, 32752
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %733, 7
  %738 = and i32 %737, 32752
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = fsub fast float 1.000000e+00, %718
  %741 = call float @dx.op.binary.f32(i32 35, float %740, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %742 = bitcast float %718 to i32
  %743 = sitofp i32 %742 to float
  %744 = fadd fast float %743, 0xC1CFBF8940000000
  %745 = fmul fast float %739, %744
  %746 = fadd fast float %745, 0x41CFBF8940000000
  %747 = fptosi float %746 to i32
  %748 = bitcast i32 %747 to float
  %749 = bitcast float %741 to i32
  %750 = sitofp i32 %749 to float
  %751 = fadd fast float %750, 0xC1CFBF8940000000
  %752 = fmul fast float %751, %739
  %753 = fadd fast float %752, 0x41CFBF8940000000
  %754 = fptosi float %753 to i32
  %755 = bitcast i32 %754 to float
  %756 = fmul fast float %748, %736
  %757 = fmul fast float %755, %736
  %758 = fsub fast float %741, %756
  %759 = fadd fast float %757, %741
  %760 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %761 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %762 = fsub fast float %730, %760
  %763 = fsub fast float %761, %760
  %764 = bitcast float %763 to i32
  %765 = sub nsw i32 2129859010, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %766, %762
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  br label %769

; <label>:769                                     ; preds = %723, %717
  %770 = phi float [ %768, %723 ], [ %718, %717 ]
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 128
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %791, label %775

; <label>:775                                     ; preds = %769
  %776 = add i32 %56, 456
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %778, 0
  %780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %780, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 524288
  %786 = icmp ne i32 %785, 0
  %787 = fcmp fast ogt float %782, 0x3FE0101020000000
  %788 = select i1 %787, float 1.000000e+00, float 0.000000e+00
  %789 = select i1 %786, float %788, float %782
  %790 = fmul fast float %789, %770
  br label %791

; <label>:791                                     ; preds = %775, %769
  %792 = phi float [ %790, %775 ], [ %770, %769 ]
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 16
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %995, label %797

; <label>:797                                     ; preds = %791
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = add i32 %56, 408
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = and i32 %799, 255
  %811 = uitofp i32 %810 to float
  %812 = lshr i32 %799, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %809, %811
  %816 = fadd fast float %815, %814
  %817 = fmul fast float %816, 0x3F70101000000000
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 512
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %830, label %822

; <label>:822                                     ; preds = %797
  %823 = add i32 %56, 488
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %825, 0
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  br label %830

; <label>:830                                     ; preds = %822, %797
  %831 = phi float [ %829, %822 ], [ 1.000000e+00, %797 ]
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 33554432
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %942, label %836

; <label>:836                                     ; preds = %830
  %837 = add i32 %56, 224
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = lshr i32 %839, 16
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = add i32 %56, 228
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 24
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F70101020000000
  %854 = and i32 %850, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = lshr i32 %850, 8
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = lshr i32 %850, 16
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = add i32 %56, 220
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = lshr i32 %867, 24
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = and i32 %867, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101020000000
  %874 = lshr i32 %867, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = lshr i32 %867, 16
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = bitcast float %806 to i32
  %883 = ashr i32 %882, 1
  %884 = sub nsw i32 1597463174, %883
  %885 = bitcast i32 %884 to float
  %886 = fmul fast float %806, 5.000000e-01
  %887 = fmul fast float %885, %885
  %888 = fmul fast float %887, %886
  %889 = fsub fast float 1.500000e+00, %888
  %890 = fmul fast float %885, %806
  %891 = fmul fast float %890, %889
  %892 = bitcast float %807 to i32
  %893 = ashr i32 %892, 1
  %894 = sub nsw i32 1597463174, %893
  %895 = bitcast i32 %894 to float
  %896 = fmul fast float %807, 5.000000e-01
  %897 = fmul fast float %895, %895
  %898 = fmul fast float %897, %896
  %899 = fsub fast float 1.500000e+00, %898
  %900 = fmul fast float %895, %807
  %901 = fmul fast float %900, %899
  %902 = bitcast float %808 to i32
  %903 = ashr i32 %902, 1
  %904 = sub nsw i32 1597463174, %903
  %905 = bitcast i32 %904 to float
  %906 = fmul fast float %808, 5.000000e-01
  %907 = fmul fast float %905, %905
  %908 = fmul fast float %907, %906
  %909 = fsub fast float 1.500000e+00, %908
  %910 = fmul fast float %905, %808
  %911 = fmul fast float %910, %909
  %912 = fsub fast float %891, %873
  %913 = fsub fast float %901, %877
  %914 = fsub fast float %911, %881
  %915 = fmul fast float %912, %841
  %916 = fmul fast float %913, %843
  %917 = fmul fast float %914, %848
  %918 = fadd fast float %915, %856
  %919 = fadd fast float %916, %860
  %920 = fadd fast float %917, %864
  %921 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %922 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %923 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %924 = fmul fast float %921, %921
  %925 = fmul fast float %922, %922
  %926 = fmul fast float %923, %923
  %927 = fsub fast float %924, %806
  %928 = fsub fast float %925, %807
  %929 = fsub fast float %926, %808
  %930 = fmul fast float %927, %831
  %931 = fmul fast float %928, %831
  %932 = fmul fast float %929, %831
  %933 = fadd fast float %930, %806
  %934 = fadd fast float %931, %807
  %935 = fadd fast float %932, %808
  %936 = fadd fast float %853, %817
  %937 = fsub fast float %936, %870
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fsub fast float %938, %817
  %940 = fmul fast float %939, %831
  %941 = fadd fast float %940, %817
  br label %995

; <label>:942                                     ; preds = %830
  %943 = and i32 %833, 134217728
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %979, label %945

; <label>:945                                     ; preds = %942
  %946 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %947 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %948 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %949 = fadd fast float %946, -5.000000e-01
  %950 = fadd fast float %947, -5.000000e-01
  %951 = fadd fast float %948, -5.000000e-01
  %952 = fmul fast float %949, %831
  %953 = fmul fast float %950, %831
  %954 = fmul fast float %951, %831
  %955 = fadd fast float %952, 5.000000e-01
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %954, 5.000000e-01
  %958 = call float @dx.op.unary.f32(i32 24, float %806)  ; Sqrt(value)
  %959 = call float @dx.op.unary.f32(i32 24, float %807)  ; Sqrt(value)
  %960 = call float @dx.op.unary.f32(i32 24, float %808)  ; Sqrt(value)
  %961 = fmul fast float %955, 2.000000e+00
  %962 = fsub fast float 1.000000e+00, %961
  %963 = fmul fast float %962, %958
  %964 = fadd fast float %963, %961
  %965 = fmul fast float %964, %958
  %966 = fmul fast float %956, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %959
  %969 = fadd fast float %968, %966
  %970 = fmul fast float %969, %959
  %971 = fmul fast float %957, 2.000000e+00
  %972 = fsub fast float 1.000000e+00, %971
  %973 = fmul fast float %972, %960
  %974 = fadd fast float %973, %971
  %975 = fmul fast float %974, %960
  %976 = fmul fast float %965, %965
  %977 = fmul fast float %970, %970
  %978 = fmul fast float %975, %975
  br label %995

; <label>:979                                     ; preds = %942
  %980 = fmul fast float %283, %283
  %981 = fmul fast float %287, %287
  %982 = fmul fast float %291, %291
  %983 = fadd fast float %980, -1.000000e+00
  %984 = fadd fast float %981, -1.000000e+00
  %985 = fadd fast float %982, -1.000000e+00
  %986 = fmul fast float %831, %983
  %987 = fmul fast float %831, %984
  %988 = fmul fast float %831, %985
  %989 = fadd fast float %986, 1.000000e+00
  %990 = fadd fast float %987, 1.000000e+00
  %991 = fadd fast float %988, 1.000000e+00
  %992 = fmul fast float %989, %806
  %993 = fmul fast float %990, %807
  %994 = fmul fast float %991, %808
  br label %995

; <label>:995                                     ; preds = %979, %945, %836, %791
  %996 = phi float [ %941, %836 ], [ %817, %945 ], [ %817, %979 ], [ 0x3FA23C0BE0000000, %791 ]
  %997 = phi float [ %933, %836 ], [ %976, %945 ], [ %992, %979 ], [ 1.000000e+00, %791 ]
  %998 = phi float [ %934, %836 ], [ %977, %945 ], [ %993, %979 ], [ 1.000000e+00, %791 ]
  %999 = phi float [ %935, %836 ], [ %978, %945 ], [ %994, %979 ], [ 1.000000e+00, %791 ]
  %1000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.i32 %1000, 1
  %1002 = and i32 %1001, 1
  %1003 = icmp ne i32 %1002, 0
  %1004 = add i32 %56, 356
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 32
  %1008 = icmp ne i32 %1007, 0
  %1009 = and i1 %1003, %1008
  %1010 = select i1 %1009, float 1.000000e+00, float %997
  %1011 = select i1 %1009, float 0x3FD3333340000000, float %998
  %1012 = select i1 %1009, float 0x3FD3333340000000, float %999
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 32
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1089, label %1017

; <label>:1017                                    ; preds = %995
  %1018 = add i32 %56, 92
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = add i32 %56, 424
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = add i32 %1023, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1025, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  %1030 = extractvalue %dx.types.ResRet.f32 %1026, 3
  %1031 = and i32 %1020, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = lshr i32 %1020, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = lshr i32 %1020, 16
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F70101000000000
  %1040 = fmul fast float %1027, %1032
  %1041 = fadd fast float %1040, %1035
  %1042 = fmul fast float %1041, 0x3F70101000000000
  %1043 = fadd fast float %1028, -5.000000e-01
  %1044 = fadd fast float %1030, -5.000000e-01
  %1045 = fmul fast float %1043, %1039
  %1046 = fmul fast float %1044, %1039
  %1047 = fadd fast float %1045, 5.000000e-01
  %1048 = fadd fast float %1046, 5.000000e-01
  %1049 = fmul fast float %1047, 2.000000e+00
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = fmul fast float %1048, 2.000000e+00
  %1052 = fadd fast float %1051, -1.000000e+00
  %1053 = fadd fast float %1050, %1052
  %1054 = fmul fast float %1053, 5.000000e-01
  %1055 = fsub fast float %1050, %1052
  %1056 = fmul fast float %1055, 5.000000e-01
  %1057 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = call float @dx.op.unary.f32(i32 6, float %1056)  ; FAbs(value)
  %1060 = fsub fast float %1058, %1059
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1056, float %1060, float %1054, float %1056, float %1060)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 25, float %1061)  ; Rsqrt(value)
  %1063 = fmul fast float %1054, %1062
  %1064 = fmul fast float %1056, %1062
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 67108864
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1085, label %1069

; <label>:1069                                    ; preds = %1017
  %1070 = add i32 %56, 280
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 65535
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 65535
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = lshr i32 %1072, 16
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fsub fast float %1042, %1080
  %1082 = fmul fast float %1081, %1074
  %1083 = fadd fast float %1082, %1078
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  br label %1085

; <label>:1085                                    ; preds = %1069, %1017
  %1086 = phi float [ %1084, %1069 ], [ %1042, %1017 ]
  %1087 = call float @dx.op.dot2.f32(i32 54, float %1063, float %1064, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  %1088 = call float @dx.op.dot2.f32(i32 54, float %1063, float %1064, float %510, float %511)  ; Dot2(ax,ay,bx,by)
  br label %1089

; <label>:1089                                    ; preds = %1085, %995
  %1090 = phi float [ %1086, %1085 ], [ 0x3FD6666660000000, %995 ]
  %1091 = phi float [ %1087, %1085 ], [ 0.000000e+00, %995 ]
  %1092 = phi float [ %1088, %1085 ], [ 0.000000e+00, %995 ]
  %1093 = phi float [ %1029, %1085 ], [ 1.000000e+00, %995 ]
  %1094 = add i32 %56, 160
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = lshr i32 %1096, 22
  %1098 = shl nuw nsw i32 %1097, 5
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 64
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1137, label %1104

; <label>:1104                                    ; preds = %1089
  %1105 = add i32 %56, 440
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 131072
  %1113 = icmp eq i32 %1112, 0
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %98, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, %271
  %1119 = fmul fast float %1116, %274
  %1120 = fmul fast float %1117, %277
  br i1 %1113, label %1127, label %1121

; <label>:1121                                    ; preds = %1104
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %1118
  %1125 = fmul fast float %1123, %1119
  %1126 = fmul fast float %1123, %1120
  br label %1127

; <label>:1127                                    ; preds = %1121, %1104
  %1128 = phi float [ %1124, %1121 ], [ %1118, %1104 ]
  %1129 = phi float [ %1125, %1121 ], [ %1119, %1104 ]
  %1130 = phi float [ %1126, %1121 ], [ %1120, %1104 ]
  %1131 = fmul fast float %1128, %1099
  %1132 = select i1 %251, float %1131, float %1128
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1132, float %1129, float %1130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = select i1 %251, float 0.000000e+00, float %1128
  %1135 = select i1 %251, float %1133, float %1129
  %1136 = select i1 %251, float 0.000000e+00, float %1130
  br label %1137

; <label>:1137                                    ; preds = %1127, %1089
  %1138 = phi float [ %1134, %1127 ], [ 0.000000e+00, %1089 ]
  %1139 = phi float [ %1135, %1127 ], [ 0.000000e+00, %1089 ]
  %1140 = phi float [ %1136, %1127 ], [ 0.000000e+00, %1089 ]
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 1024
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1175, label %1145

; <label>:1145                                    ; preds = %1137
  %1146 = add i32 %56, 152
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F70101020000000
  %1152 = lshr i32 %1148, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1148, 16
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = fmul fast float %1151, %1151
  %1161 = fmul fast float %1155, %1155
  %1162 = fmul fast float %1159, %1159
  %1163 = add i32 %56, 504
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = fmul fast float %1160, %1169
  %1173 = fmul fast float %1161, %1170
  %1174 = fmul fast float %1162, %1171
  br label %1175

; <label>:1175                                    ; preds = %1145, %1137
  %1176 = phi float [ %1172, %1145 ], [ 0.000000e+00, %1137 ]
  %1177 = phi float [ %1173, %1145 ], [ 0.000000e+00, %1137 ]
  %1178 = phi float [ %1174, %1145 ], [ 0.000000e+00, %1137 ]
  %1179 = fcmp fast ogt float %1176, 0.000000e+00
  %1180 = fcmp fast ogt float %1177, 0.000000e+00
  %1181 = fcmp fast ogt float %1178, 0.000000e+00
  %1182 = call float @dx.op.unary.f32(i32 23, float %1176)  ; Log(value)
  %1183 = call float @dx.op.unary.f32(i32 23, float %1177)  ; Log(value)
  %1184 = call float @dx.op.unary.f32(i32 23, float %1178)  ; Log(value)
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 7
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1182, 0xBFE62E4300000000
  %1191 = fmul fast float %1190, %1189
  %1192 = fmul fast float %1183, 0xBFE62E4300000000
  %1193 = fmul fast float %1192, %1189
  %1194 = fmul fast float %1184, 0xBFE62E4300000000
  %1195 = fmul fast float %1194, %1189
  %1196 = select i1 %1179, float %1191, float 1.270000e+02
  %1197 = select i1 %1180, float %1193, float 1.270000e+02
  %1198 = select i1 %1181, float %1195, float 1.270000e+02
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 26624
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1260, label %1203

; <label>:1203                                    ; preds = %1175
  %1204 = add i32 %56, 520
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %99, float %604, float %605, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 1048576
  %1216 = icmp ne i32 %1215, 0
  %1217 = and i32 %1214, 8192
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1233, label %1219

; <label>:1219                                    ; preds = %1203
  %1220 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1221 = select i1 %1216, float %1220, float %1211
  %1222 = select i1 %1216, float %1210, float %1211
  %1223 = add i32 %56, 96
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = lshr i32 %1225, 16
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F80101020000000
  %1230 = fmul fast float %1229, %1222
  %1231 = fmul fast float %1229, %1211
  %1232 = fmul fast float %1229, %1221
  br label %1233

; <label>:1233                                    ; preds = %1219, %1203
  %1234 = phi float [ %1230, %1219 ], [ 0.000000e+00, %1203 ]
  %1235 = phi float [ %1231, %1219 ], [ 0.000000e+00, %1203 ]
  %1236 = phi float [ %1232, %1219 ], [ 0.000000e+00, %1203 ]
  %1237 = and i32 %1214, 2048
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1247, label %1239

; <label>:1239                                    ; preds = %1233
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = shl i32 %1241, 4
  %1243 = and i32 %1242, 32752
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = fmul fast float %1244, %1212
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1247

; <label>:1247                                    ; preds = %1239, %1233
  %1248 = phi float [ %1246, %1239 ], [ 0x3F70101020000000, %1233 ]
  %1249 = and i32 %1214, 16384
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1260, label %1251

; <label>:1251                                    ; preds = %1247
  %1252 = add i32 %56, 96
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = lshr i32 %1254, 24
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1210, 0x3F70101020000000
  %1258 = select i1 %1216, float 0x3F70101020000000, float %1257
  %1259 = fmul fast float %1258, %1256
  br label %1260

; <label>:1260                                    ; preds = %1251, %1247, %1175
  %1261 = phi float [ %1234, %1251 ], [ %1234, %1247 ], [ 0.000000e+00, %1175 ]
  %1262 = phi float [ %1235, %1251 ], [ %1235, %1247 ], [ 0.000000e+00, %1175 ]
  %1263 = phi float [ %1236, %1251 ], [ %1236, %1247 ], [ 0.000000e+00, %1175 ]
  %1264 = phi float [ %1248, %1251 ], [ %1248, %1247 ], [ 0x3F70101020000000, %1175 ]
  %1265 = phi float [ %1259, %1251 ], [ 0.000000e+00, %1247 ], [ 0.000000e+00, %1175 ]
  %1266 = add i32 %56, 96
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = lshr i32 %1268, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1011, float %1012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = fmul fast float %1273, %1274
  %1276 = fadd fast float %1275, %1270
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  br label %1279

; <label>:1279                                    ; preds = %1260, %490
  %1280 = phi float [ 0.000000e+00, %490 ], [ %1091, %1260 ]
  %1281 = phi float [ 0.000000e+00, %490 ], [ %1092, %1260 ]
  %1282 = phi float [ 0.000000e+00, %490 ], [ %1010, %1260 ]
  %1283 = phi float [ 0.000000e+00, %490 ], [ %1011, %1260 ]
  %1284 = phi float [ 0.000000e+00, %490 ], [ %1012, %1260 ]
  %1285 = phi float [ 0.000000e+00, %490 ], [ %1138, %1260 ]
  %1286 = phi float [ 0.000000e+00, %490 ], [ %1139, %1260 ]
  %1287 = phi float [ 0.000000e+00, %490 ], [ %1140, %1260 ]
  %1288 = phi float [ 0.000000e+00, %490 ], [ %1261, %1260 ]
  %1289 = phi float [ 0.000000e+00, %490 ], [ %1262, %1260 ]
  %1290 = phi float [ 0.000000e+00, %490 ], [ %1263, %1260 ]
  %1291 = phi float [ 0.000000e+00, %490 ], [ %1196, %1260 ]
  %1292 = phi float [ 0.000000e+00, %490 ], [ %1197, %1260 ]
  %1293 = phi float [ 0.000000e+00, %490 ], [ %1198, %1260 ]
  %1294 = phi float [ 0.000000e+00, %490 ], [ %996, %1260 ]
  %1295 = phi float [ 0.000000e+00, %490 ], [ %792, %1260 ]
  %1296 = phi float [ 0.000000e+00, %490 ], [ %1090, %1260 ]
  %1297 = phi float [ 0.000000e+00, %490 ], [ %1093, %1260 ]
  %1298 = phi float [ 0.000000e+00, %490 ], [ %1264, %1260 ]
  %1299 = phi float [ 0.000000e+00, %490 ], [ %1265, %1260 ]
  %1300 = phi float [ 0.000000e+00, %490 ], [ %1278, %1260 ]
  br i1 %438, label %2362, label %1301

; <label>:1301                                    ; preds = %1279
  %1302 = icmp ult i32 %496, 2
  %1303 = add i32 %56, 40
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %56, 44
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = or i32 %1308, %1305
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %2362, label %1311

; <label>:1311                                    ; preds = %1301
  %1312 = and i32 %1305, 262144
  %1313 = icmp ne i32 %1312, 0
  %1314 = select i1 %1313, float %59, float 1.000000e+00
  %1315 = select i1 %1313, float %60, float 0.000000e+00
  %1316 = select i1 %1313, float %61, float 0.000000e+00
  %1317 = select i1 %1313, float %62, float 1.000000e+00
  %1318 = select i1 %1313, float %63, float %84
  %1319 = select i1 %1313, float %64, float %85
  %1320 = add i32 %56, 300
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 16
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = fmul fast float %1324, 0x3F50624DE0000000
  %1326 = add i32 %56, 104
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = lshr i32 %1328, 16
  %1330 = and i32 %1329, 255
  %1331 = lshr i32 %1328, 24
  %1332 = add i32 %56, 308
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = lshr i32 %1334, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = add i32 %56, 48
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = lshr i32 %1341, 22
  %1343 = shl nuw nsw i32 %1342, 5
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = shl i32 %1341, 4
  %1346 = and i32 %1345, 32752
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = lshr i32 %1341, 7
  %1349 = and i32 %1348, 32752
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1353 = fmul fast float %1352, 1.000000e+03
  %1354 = fmul fast float %348, %1353
  %1355 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1356 = fadd fast float %1355, %338
  %1357 = fmul fast float %349, %1353
  %1358 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1359 = fadd fast float %1358, %340
  %1360 = fmul fast float %1325, %1353
  %1361 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1362 = fmul fast float %1361, 0x401921FB60000000
  %1363 = fadd fast float %1362, %1344
  %1364 = call float @dx.op.unary.f32(i32 13, float %1363)  ; Sin(value)
  %1365 = call float @dx.op.unary.f32(i32 12, float %1363)  ; Cos(value)
  %1366 = fsub fast float -0.000000e+00, %1364
  %1367 = fadd fast float %1318, -5.000000e-01
  %1368 = fadd fast float %1319, -5.000000e-01
  %1369 = fmul fast float %1336, %1367
  %1370 = fmul fast float %1338, %1368
  %1371 = fadd fast float %1369, 5.000000e-01
  %1372 = fadd fast float %1370, 5.000000e-01
  %1373 = fmul fast float %1347, %1371
  %1374 = fmul fast float %1350, %1372
  %1375 = fmul fast float %1365, %1373
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1374, float %1375)  ; FMad(a,b,c)
  %1377 = fmul fast float %1364, %1373
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1374, float %1377)  ; FMad(a,b,c)
  %1379 = fadd fast float %1356, %1376
  %1380 = fadd fast float %1359, %1378
  %1381 = icmp ugt i32 %1330, 1
  %1382 = icmp ugt i32 %1328, 33554431
  %1383 = or i1 %1382, %1381
  br i1 %1383, label %1384, label %1409

; <label>:1384                                    ; preds = %1311
  %1385 = add i32 %56, 244
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = lshr i32 %1387, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fmul fast float %1352, %1389
  %1391 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1392 = mul nuw nsw i32 %1330, %1331
  %1393 = uitofp i32 %1392 to float
  %1394 = fmul fast float %1391, %1393
  %1395 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1396 = fptoui float %1395 to i32
  %1397 = urem i32 %1396, %1330
  %1398 = udiv i32 %1396, %1331
  %1399 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1400 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1401 = uitofp i32 %1397 to float
  %1402 = uitofp i32 %1398 to float
  %1403 = fadd fast float %1399, %1401
  %1404 = fadd fast float %1400, %1402
  %1405 = uitofp i32 %1330 to float
  %1406 = uitofp i32 %1331 to float
  %1407 = fdiv fast float %1403, %1405
  %1408 = fdiv fast float %1404, %1406
  br label %1409

; <label>:1409                                    ; preds = %1384, %1311
  %1410 = phi float [ %1407, %1384 ], [ %1379, %1311 ]
  %1411 = phi float [ %1408, %1384 ], [ %1380, %1311 ]
  %1412 = and i32 %1305, 16777216
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1523, label %1414

; <label>:1414                                    ; preds = %1409
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1415, 2
  %1419 = fadd fast float %1416, %157
  %1420 = fadd fast float %1417, %158
  %1421 = fadd fast float %1418, %159
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1425 = icmp eq i32 %57, 65535
  br i1 %1425, label %1520, label %1426

; <label>:1426                                    ; preds = %1414
  %1427 = lshr i32 %57, 1
  %1428 = shl i32 %1427, 2
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %57, 1
  %1432 = icmp ne i32 %1431, 0
  %1433 = lshr i32 %1430, 16
  %1434 = and i32 %1430, 65535
  %1435 = select i1 %1432, i32 %1433, i32 %1434
  %1436 = icmp eq i32 %1435, 65535
  br i1 %1436, label %1516, label %1437

; <label>:1437                                    ; preds = %1426
  %1438 = mul nuw nsw i32 %1435, 40
  %1439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = add nuw nsw i32 %1438, 12
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = add nuw nsw i32 %1438, 24
  %1449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = add nuw nsw i32 %1438, 36
  %1454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = fsub fast float %1419, %1440
  %1457 = fsub fast float %1420, %1441
  %1458 = fsub fast float %1421, %1442
  %1459 = fmul fast float %1455, %1456
  %1460 = fmul fast float %1455, %1457
  %1461 = fmul fast float %1455, %1458
  %1462 = call float @dx.op.unary.f32(i32 27, float %1459)  ; Round_ni(value)
  %1463 = call float @dx.op.unary.f32(i32 27, float %1460)  ; Round_ni(value)
  %1464 = call float @dx.op.unary.f32(i32 27, float %1461)  ; Round_ni(value)
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = fmul fast float %1465, %1445
  %1469 = fmul fast float %1466, %1446
  %1470 = fmul fast float %1467, %1447
  %1471 = shl i32 %57, 2
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = add i32 %1473, 0
  %1475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1476 = call float @dx.op.unary.f32(i32 22, float %1468)  ; Frc(value)
  %1477 = call float @dx.op.unary.f32(i32 22, float %1469)  ; Frc(value)
  %1478 = call float @dx.op.unary.f32(i32 22, float %1470)  ; Frc(value)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1475, %dx.types.Handle %51, float %1476, float %1477, float %1478, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1483 = fmul fast float %1480, 1.023000e+03
  %1484 = fmul fast float %1481, 1.023000e+03
  %1485 = fmul fast float %1482, 1.023000e+03
  %1486 = fadd fast float %1483, 5.000000e-01
  %1487 = fadd fast float %1484, 5.000000e-01
  %1488 = fadd fast float %1485, 5.000000e-01
  %1489 = call float @dx.op.unary.f32(i32 27, float %1486)  ; Round_ni(value)
  %1490 = call float @dx.op.unary.f32(i32 27, float %1487)  ; Round_ni(value)
  %1491 = call float @dx.op.unary.f32(i32 27, float %1488)  ; Round_ni(value)
  %1492 = fsub fast float %1459, %1462
  %1493 = fsub fast float %1460, %1463
  %1494 = fsub fast float %1461, %1464
  %1495 = fmul fast float %1492, 7.500000e-01
  %1496 = fmul fast float %1493, 7.500000e-01
  %1497 = fmul fast float %1494, 7.500000e-01
  %1498 = fadd fast float %1462, 1.250000e-01
  %1499 = fadd fast float %1498, %1495
  %1500 = fadd fast float %1499, %1489
  %1501 = fadd fast float %1463, 1.250000e-01
  %1502 = fadd fast float %1501, %1496
  %1503 = fadd fast float %1502, %1490
  %1504 = fadd fast float %1464, 1.250000e-01
  %1505 = fadd fast float %1504, %1497
  %1506 = fadd fast float %1505, %1491
  %1507 = fmul fast float %1500, %1450
  %1508 = fmul fast float %1503, %1451
  %1509 = fmul fast float %1506, %1452
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1513, %dx.types.Handle %49, float %1507, float %1508, float %1509, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  br label %1516

; <label>:1516                                    ; preds = %1437, %1426
  %1517 = phi float [ %1515, %1437 ], [ -1.000000e+00, %1426 ]
  %1518 = fadd fast float %1517, %1424
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  br label %1520

; <label>:1520                                    ; preds = %1516, %1414
  %1521 = phi float [ %1519, %1516 ], [ %1424, %1414 ]
  %1522 = fmul fast float %1521, %493
  br label %1523

; <label>:1523                                    ; preds = %1520, %1409
  %1524 = phi float [ %1522, %1520 ], [ %493, %1409 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 256
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1575, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %56, 476
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %99, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = add i32 %56, 116
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = shl i32 %1539, 4
  %1541 = and i32 %1540, 32752
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = lshr i32 %1539, 7
  %1544 = and i32 %1543, 32752
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = fsub fast float 1.000000e+00, %1524
  %1547 = call float @dx.op.binary.f32(i32 35, float %1546, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1548 = bitcast float %1524 to i32
  %1549 = sitofp i32 %1548 to float
  %1550 = fadd fast float %1549, 0xC1CFBF8940000000
  %1551 = fmul fast float %1545, %1550
  %1552 = fadd fast float %1551, 0x41CFBF8940000000
  %1553 = fptosi float %1552 to i32
  %1554 = bitcast i32 %1553 to float
  %1555 = bitcast float %1547 to i32
  %1556 = sitofp i32 %1555 to float
  %1557 = fadd fast float %1556, 0xC1CFBF8940000000
  %1558 = fmul fast float %1557, %1545
  %1559 = fadd fast float %1558, 0x41CFBF8940000000
  %1560 = fptosi float %1559 to i32
  %1561 = bitcast i32 %1560 to float
  %1562 = fmul fast float %1554, %1542
  %1563 = fmul fast float %1561, %1542
  %1564 = fsub fast float %1547, %1562
  %1565 = fadd fast float %1563, %1547
  %1566 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1568 = fsub fast float %1536, %1566
  %1569 = fsub fast float %1567, %1566
  %1570 = bitcast float %1569 to i32
  %1571 = sub nsw i32 2129859010, %1570
  %1572 = bitcast i32 %1571 to float
  %1573 = fmul fast float %1572, %1568
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  br label %1575

; <label>:1575                                    ; preds = %1529, %1523
  %1576 = phi float [ %1574, %1529 ], [ %1524, %1523 ]
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = and i32 %1578, 128
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1597, label %1581

; <label>:1581                                    ; preds = %1575
  %1582 = add i32 %56, 460
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = add i32 %1584, 0
  %1586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1586, %dx.types.Handle %99, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 524288
  %1592 = icmp ne i32 %1591, 0
  %1593 = fcmp fast ogt float %1588, 0x3FE0101020000000
  %1594 = select i1 %1593, float 1.000000e+00, float 0.000000e+00
  %1595 = select i1 %1592, float %1594, float %1588
  %1596 = fmul fast float %1595, %1576
  br label %1597

; <label>:1597                                    ; preds = %1581, %1575
  %1598 = phi float [ %1596, %1581 ], [ %1576, %1575 ]
  %1599 = fcmp fast ult float %1598, 0x3F70101020000000
  br i1 %1599, label %2362, label %1600

; <label>:1600                                    ; preds = %1597
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 16
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1803, label %1605

; <label>:1605                                    ; preds = %1600
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = add i32 %56, 412
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = add i32 %1610, 0
  %1612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1612, %dx.types.Handle %98, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = extractvalue %dx.types.ResRet.f32 %1613, 3
  %1618 = and i32 %1607, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = lshr i32 %1607, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1617, %1619
  %1624 = fadd fast float %1623, %1622
  %1625 = fmul fast float %1624, 0x3F70101000000000
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 512
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1638, label %1630

; <label>:1630                                    ; preds = %1605
  %1631 = add i32 %56, 492
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = add i32 %1633, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1635, %dx.types.Handle %99, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1637 = extractvalue %dx.types.ResRet.f32 %1636, 0
  br label %1638

; <label>:1638                                    ; preds = %1630, %1605
  %1639 = phi float [ %1637, %1630 ], [ 1.000000e+00, %1605 ]
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 33554432
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1750, label %1644

; <label>:1644                                    ; preds = %1638
  %1645 = add i32 %56, 240
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 65535
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = lshr i32 %1647, 16
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = add i32 %56, 244
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = and i32 %1654, 65535
  %1656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1655)  ; LegacyF16ToF32(value)
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = lshr i32 %1658, 24
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = and i32 %1658, 255
  %1663 = uitofp i32 %1662 to float
  %1664 = fmul fast float %1663, 0x3F70101020000000
  %1665 = lshr i32 %1658, 8
  %1666 = and i32 %1665, 255
  %1667 = uitofp i32 %1666 to float
  %1668 = fmul fast float %1667, 0x3F70101020000000
  %1669 = lshr i32 %1658, 16
  %1670 = and i32 %1669, 255
  %1671 = uitofp i32 %1670 to float
  %1672 = fmul fast float %1671, 0x3F70101020000000
  %1673 = add i32 %56, 236
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = lshr i32 %1675, 24
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101020000000
  %1679 = and i32 %1675, 255
  %1680 = uitofp i32 %1679 to float
  %1681 = fmul fast float %1680, 0x3F70101020000000
  %1682 = lshr i32 %1675, 8
  %1683 = and i32 %1682, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = fmul fast float %1684, 0x3F70101020000000
  %1686 = lshr i32 %1675, 16
  %1687 = and i32 %1686, 255
  %1688 = uitofp i32 %1687 to float
  %1689 = fmul fast float %1688, 0x3F70101020000000
  %1690 = bitcast float %1614 to i32
  %1691 = ashr i32 %1690, 1
  %1692 = sub nsw i32 1597463174, %1691
  %1693 = bitcast i32 %1692 to float
  %1694 = fmul fast float %1614, 5.000000e-01
  %1695 = fmul fast float %1693, %1693
  %1696 = fmul fast float %1695, %1694
  %1697 = fsub fast float 1.500000e+00, %1696
  %1698 = fmul fast float %1693, %1614
  %1699 = fmul fast float %1698, %1697
  %1700 = bitcast float %1615 to i32
  %1701 = ashr i32 %1700, 1
  %1702 = sub nsw i32 1597463174, %1701
  %1703 = bitcast i32 %1702 to float
  %1704 = fmul fast float %1615, 5.000000e-01
  %1705 = fmul fast float %1703, %1703
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float 1.500000e+00, %1706
  %1708 = fmul fast float %1703, %1615
  %1709 = fmul fast float %1708, %1707
  %1710 = bitcast float %1616 to i32
  %1711 = ashr i32 %1710, 1
  %1712 = sub nsw i32 1597463174, %1711
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1616, 5.000000e-01
  %1715 = fmul fast float %1713, %1713
  %1716 = fmul fast float %1715, %1714
  %1717 = fsub fast float 1.500000e+00, %1716
  %1718 = fmul fast float %1713, %1616
  %1719 = fmul fast float %1718, %1717
  %1720 = fsub fast float %1699, %1681
  %1721 = fsub fast float %1709, %1685
  %1722 = fsub fast float %1719, %1689
  %1723 = fmul fast float %1720, %1649
  %1724 = fmul fast float %1721, %1651
  %1725 = fmul fast float %1722, %1656
  %1726 = fadd fast float %1723, %1664
  %1727 = fadd fast float %1724, %1668
  %1728 = fadd fast float %1725, %1672
  %1729 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1730 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1731 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1732 = fmul fast float %1729, %1729
  %1733 = fmul fast float %1730, %1730
  %1734 = fmul fast float %1731, %1731
  %1735 = fsub fast float %1732, %1614
  %1736 = fsub fast float %1733, %1615
  %1737 = fsub fast float %1734, %1616
  %1738 = fmul fast float %1735, %1639
  %1739 = fmul fast float %1736, %1639
  %1740 = fmul fast float %1737, %1639
  %1741 = fadd fast float %1738, %1614
  %1742 = fadd fast float %1739, %1615
  %1743 = fadd fast float %1740, %1616
  %1744 = fadd fast float %1661, %1625
  %1745 = fsub fast float %1744, %1678
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  %1747 = fsub fast float %1746, %1625
  %1748 = fmul fast float %1747, %1639
  %1749 = fadd fast float %1748, %1625
  br label %1803

; <label>:1750                                    ; preds = %1638
  %1751 = and i32 %1641, 134217728
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1787, label %1753

; <label>:1753                                    ; preds = %1750
  %1754 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1755 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1756 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1757 = fadd fast float %1754, -5.000000e-01
  %1758 = fadd fast float %1755, -5.000000e-01
  %1759 = fadd fast float %1756, -5.000000e-01
  %1760 = fmul fast float %1757, %1639
  %1761 = fmul fast float %1758, %1639
  %1762 = fmul fast float %1759, %1639
  %1763 = fadd fast float %1760, 5.000000e-01
  %1764 = fadd fast float %1761, 5.000000e-01
  %1765 = fadd fast float %1762, 5.000000e-01
  %1766 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1767 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %1768 = call float @dx.op.unary.f32(i32 24, float %1616)  ; Sqrt(value)
  %1769 = fmul fast float %1763, 2.000000e+00
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = fmul fast float %1770, %1766
  %1772 = fadd fast float %1771, %1769
  %1773 = fmul fast float %1772, %1766
  %1774 = fmul fast float %1764, 2.000000e+00
  %1775 = fsub fast float 1.000000e+00, %1774
  %1776 = fmul fast float %1775, %1767
  %1777 = fadd fast float %1776, %1774
  %1778 = fmul fast float %1777, %1767
  %1779 = fmul fast float %1765, 2.000000e+00
  %1780 = fsub fast float 1.000000e+00, %1779
  %1781 = fmul fast float %1780, %1768
  %1782 = fadd fast float %1781, %1779
  %1783 = fmul fast float %1782, %1768
  %1784 = fmul fast float %1773, %1773
  %1785 = fmul fast float %1778, %1778
  %1786 = fmul fast float %1783, %1783
  br label %1803

; <label>:1787                                    ; preds = %1750
  %1788 = fmul fast float %325, %325
  %1789 = fmul fast float %329, %329
  %1790 = fmul fast float %333, %333
  %1791 = fadd fast float %1788, -1.000000e+00
  %1792 = fadd fast float %1789, -1.000000e+00
  %1793 = fadd fast float %1790, -1.000000e+00
  %1794 = fmul fast float %1639, %1791
  %1795 = fmul fast float %1639, %1792
  %1796 = fmul fast float %1639, %1793
  %1797 = fadd fast float %1794, 1.000000e+00
  %1798 = fadd fast float %1795, 1.000000e+00
  %1799 = fadd fast float %1796, 1.000000e+00
  %1800 = fmul fast float %1797, %1614
  %1801 = fmul fast float %1798, %1615
  %1802 = fmul fast float %1799, %1616
  br label %1803

; <label>:1803                                    ; preds = %1787, %1753, %1644, %1600
  %1804 = phi float [ %1749, %1644 ], [ %1625, %1753 ], [ %1625, %1787 ], [ 0x3FA23C0BE0000000, %1600 ]
  %1805 = phi float [ %1741, %1644 ], [ %1784, %1753 ], [ %1800, %1787 ], [ 1.000000e+00, %1600 ]
  %1806 = phi float [ %1742, %1644 ], [ %1785, %1753 ], [ %1801, %1787 ], [ 1.000000e+00, %1600 ]
  %1807 = phi float [ %1743, %1644 ], [ %1786, %1753 ], [ %1802, %1787 ], [ 1.000000e+00, %1600 ]
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 1
  %1810 = and i32 %1809, 1
  %1811 = icmp ne i32 %1810, 0
  %1812 = add i32 %56, 356
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 32
  %1816 = icmp ne i32 %1815, 0
  %1817 = and i1 %1811, %1816
  %1818 = select i1 %1817, float 1.000000e+00, float %1805
  %1819 = select i1 %1817, float 0x3FD3333340000000, float %1806
  %1820 = select i1 %1817, float 0x3FD3333340000000, float %1807
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 32
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1897, label %1825

; <label>:1825                                    ; preds = %1803
  %1826 = add i32 %56, 108
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = add i32 %56, 428
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = add i32 %1831, 0
  %1833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1832, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1834 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1833, %dx.types.Handle %98, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.ResRet.f32 %1834, 1
  %1837 = extractvalue %dx.types.ResRet.f32 %1834, 2
  %1838 = extractvalue %dx.types.ResRet.f32 %1834, 3
  %1839 = and i32 %1828, 255
  %1840 = uitofp i32 %1839 to float
  %1841 = lshr i32 %1828, 8
  %1842 = and i32 %1841, 255
  %1843 = uitofp i32 %1842 to float
  %1844 = lshr i32 %1828, 16
  %1845 = and i32 %1844, 255
  %1846 = uitofp i32 %1845 to float
  %1847 = fmul fast float %1846, 0x3F70101000000000
  %1848 = fmul fast float %1835, %1840
  %1849 = fadd fast float %1848, %1843
  %1850 = fmul fast float %1849, 0x3F70101000000000
  %1851 = fadd fast float %1836, -5.000000e-01
  %1852 = fadd fast float %1838, -5.000000e-01
  %1853 = fmul fast float %1851, %1847
  %1854 = fmul fast float %1852, %1847
  %1855 = fadd fast float %1853, 5.000000e-01
  %1856 = fadd fast float %1854, 5.000000e-01
  %1857 = fmul fast float %1855, 2.000000e+00
  %1858 = fadd fast float %1857, -1.000000e+00
  %1859 = fmul fast float %1856, 2.000000e+00
  %1860 = fadd fast float %1859, -1.000000e+00
  %1861 = fadd fast float %1858, %1860
  %1862 = fmul fast float %1861, 5.000000e-01
  %1863 = fsub fast float %1858, %1860
  %1864 = fmul fast float %1863, 5.000000e-01
  %1865 = call float @dx.op.unary.f32(i32 6, float %1862)  ; FAbs(value)
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = call float @dx.op.unary.f32(i32 6, float %1864)  ; FAbs(value)
  %1868 = fsub fast float %1866, %1867
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1864, float %1868, float %1862, float %1864, float %1868)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = call float @dx.op.unary.f32(i32 25, float %1869)  ; Rsqrt(value)
  %1871 = fmul fast float %1862, %1870
  %1872 = fmul fast float %1864, %1870
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 67108864
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1893, label %1877

; <label>:1877                                    ; preds = %1825
  %1878 = add i32 %56, 296
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 65535
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = and i32 %1884, 65535
  %1886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1885)  ; LegacyF16ToF32(value)
  %1887 = lshr i32 %1880, 16
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = fsub fast float %1850, %1888
  %1890 = fmul fast float %1889, %1882
  %1891 = fadd fast float %1890, %1886
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  br label %1893

; <label>:1893                                    ; preds = %1877, %1825
  %1894 = phi float [ %1892, %1877 ], [ %1850, %1825 ]
  %1895 = call float @dx.op.dot2.f32(i32 54, float %1871, float %1872, float %1314, float %1315)  ; Dot2(ax,ay,bx,by)
  %1896 = call float @dx.op.dot2.f32(i32 54, float %1871, float %1872, float %1316, float %1317)  ; Dot2(ax,ay,bx,by)
  br label %1897

; <label>:1897                                    ; preds = %1893, %1803
  %1898 = phi float [ %1894, %1893 ], [ 0x3FD6666660000000, %1803 ]
  %1899 = phi float [ %1895, %1893 ], [ 0.000000e+00, %1803 ]
  %1900 = phi float [ %1896, %1893 ], [ 0.000000e+00, %1803 ]
  %1901 = phi float [ %1837, %1893 ], [ 1.000000e+00, %1803 ]
  %1902 = add i32 %56, 176
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = lshr i32 %1904, 22
  %1906 = shl nuw nsw i32 %1905, 5
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 64
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %1945, label %1912

; <label>:1912                                    ; preds = %1897
  %1913 = add i32 %56, 444
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = add i32 %1915, 0
  %1917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 131072
  %1921 = icmp eq i32 %1920, 0
  %1922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1917, %dx.types.Handle %98, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1923 = extractvalue %dx.types.ResRet.f32 %1922, 0
  %1924 = extractvalue %dx.types.ResRet.f32 %1922, 1
  %1925 = extractvalue %dx.types.ResRet.f32 %1922, 2
  %1926 = fmul fast float %1923, %313
  %1927 = fmul fast float %1924, %316
  %1928 = fmul fast float %1925, %319
  br i1 %1921, label %1935, label %1929

; <label>:1929                                    ; preds = %1912
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = fmul fast float %1931, %1926
  %1933 = fmul fast float %1931, %1927
  %1934 = fmul fast float %1931, %1928
  br label %1935

; <label>:1935                                    ; preds = %1929, %1912
  %1936 = phi float [ %1932, %1929 ], [ %1926, %1912 ]
  %1937 = phi float [ %1933, %1929 ], [ %1927, %1912 ]
  %1938 = phi float [ %1934, %1929 ], [ %1928, %1912 ]
  %1939 = fmul fast float %1936, %1907
  %1940 = select i1 %251, float %1939, float %1936
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1940, float %1937, float %1938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = select i1 %251, float 0.000000e+00, float %1936
  %1943 = select i1 %251, float %1941, float %1937
  %1944 = select i1 %251, float 0.000000e+00, float %1938
  br label %1945

; <label>:1945                                    ; preds = %1935, %1897
  %1946 = phi float [ %1942, %1935 ], [ 0.000000e+00, %1897 ]
  %1947 = phi float [ %1943, %1935 ], [ 0.000000e+00, %1897 ]
  %1948 = phi float [ %1944, %1935 ], [ 0.000000e+00, %1897 ]
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 1024
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1983, label %1953

; <label>:1953                                    ; preds = %1945
  %1954 = add i32 %56, 168
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = fmul fast float %1958, 0x3F70101020000000
  %1960 = lshr i32 %1956, 8
  %1961 = and i32 %1960, 255
  %1962 = uitofp i32 %1961 to float
  %1963 = fmul fast float %1962, 0x3F70101020000000
  %1964 = lshr i32 %1956, 16
  %1965 = and i32 %1964, 255
  %1966 = uitofp i32 %1965 to float
  %1967 = fmul fast float %1966, 0x3F70101020000000
  %1968 = fmul fast float %1959, %1959
  %1969 = fmul fast float %1963, %1963
  %1970 = fmul fast float %1967, %1967
  %1971 = add i32 %56, 508
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %1973, 0
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1975, %dx.types.Handle %99, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.ResRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.ResRet.f32 %1976, 2
  %1980 = fmul fast float %1968, %1977
  %1981 = fmul fast float %1969, %1978
  %1982 = fmul fast float %1970, %1979
  br label %1983

; <label>:1983                                    ; preds = %1953, %1945
  %1984 = phi float [ %1980, %1953 ], [ 0.000000e+00, %1945 ]
  %1985 = phi float [ %1981, %1953 ], [ 0.000000e+00, %1945 ]
  %1986 = phi float [ %1982, %1953 ], [ 0.000000e+00, %1945 ]
  %1987 = fcmp fast ogt float %1984, 0.000000e+00
  %1988 = fcmp fast ogt float %1985, 0.000000e+00
  %1989 = fcmp fast ogt float %1986, 0.000000e+00
  %1990 = call float @dx.op.unary.f32(i32 23, float %1984)  ; Log(value)
  %1991 = call float @dx.op.unary.f32(i32 23, float %1985)  ; Log(value)
  %1992 = call float @dx.op.unary.f32(i32 23, float %1986)  ; Log(value)
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 7
  %1996 = and i32 %1995, 32752
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = fmul fast float %1990, 0xBFE62E4300000000
  %1999 = fmul fast float %1998, %1997
  %2000 = fmul fast float %1991, 0xBFE62E4300000000
  %2001 = fmul fast float %2000, %1997
  %2002 = fmul fast float %1992, 0xBFE62E4300000000
  %2003 = fmul fast float %2002, %1997
  %2004 = select i1 %1987, float %1999, float 1.270000e+02
  %2005 = select i1 %1988, float %2001, float 1.270000e+02
  %2006 = select i1 %1989, float %2003, float 1.270000e+02
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 26624
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2068, label %2011

; <label>:2011                                    ; preds = %1983
  %2012 = add i32 %56, 524
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %99, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 3
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 1048576
  %2024 = icmp ne i32 %2023, 0
  %2025 = and i32 %2022, 8192
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2041, label %2027

; <label>:2027                                    ; preds = %2011
  %2028 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2029 = select i1 %2024, float %2028, float %2019
  %2030 = select i1 %2024, float %2018, float %2019
  %2031 = add i32 %56, 112
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = lshr i32 %2033, 16
  %2035 = and i32 %2034, 255
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2036, 0x3F80101020000000
  %2038 = fmul fast float %2037, %2030
  %2039 = fmul fast float %2037, %2019
  %2040 = fmul fast float %2037, %2029
  br label %2041

; <label>:2041                                    ; preds = %2027, %2011
  %2042 = phi float [ %2038, %2027 ], [ 0.000000e+00, %2011 ]
  %2043 = phi float [ %2039, %2027 ], [ 0.000000e+00, %2011 ]
  %2044 = phi float [ %2040, %2027 ], [ 0.000000e+00, %2011 ]
  %2045 = and i32 %2022, 2048
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %2055, label %2047

; <label>:2047                                    ; preds = %2041
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = shl i32 %2049, 4
  %2051 = and i32 %2050, 32752
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = fmul fast float %2052, %2020
  %2054 = call float @dx.op.binary.f32(i32 35, float %2053, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2055

; <label>:2055                                    ; preds = %2047, %2041
  %2056 = phi float [ %2054, %2047 ], [ 0x3F70101020000000, %2041 ]
  %2057 = and i32 %2022, 16384
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2068, label %2059

; <label>:2059                                    ; preds = %2055
  %2060 = add i32 %56, 112
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 24
  %2064 = uitofp i32 %2063 to float
  %2065 = fmul fast float %2018, 0x3F70101020000000
  %2066 = select i1 %2024, float 0x3F70101020000000, float %2065
  %2067 = fmul fast float %2066, %2064
  br label %2068

; <label>:2068                                    ; preds = %2059, %2055, %1983
  %2069 = phi float [ %2042, %2059 ], [ %2042, %2055 ], [ 0.000000e+00, %1983 ]
  %2070 = phi float [ %2043, %2059 ], [ %2043, %2055 ], [ 0.000000e+00, %1983 ]
  %2071 = phi float [ %2044, %2059 ], [ %2044, %2055 ], [ 0.000000e+00, %1983 ]
  %2072 = phi float [ %2056, %2059 ], [ %2056, %2055 ], [ 0x3F70101020000000, %1983 ]
  %2073 = phi float [ %2067, %2059 ], [ 0.000000e+00, %2055 ], [ 0.000000e+00, %1983 ]
  %2074 = add i32 %56, 112
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = lshr i32 %2076, 8
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1819, float %1820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2083 = fmul fast float %2081, %2082
  %2084 = fadd fast float %2083, %2078
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  br i1 %1302, label %2087, label %2122

; <label>:2087                                    ; preds = %2068
  %2088 = fmul fast float %2072, 2.000000e+00
  %2089 = fcmp fast olt float %2004, 1.270000e+02
  %2090 = fcmp fast olt float %2005, 1.270000e+02
  %2091 = fcmp fast olt float %2006, 1.270000e+02
  %2092 = fmul fast float %2004, 0xBFF7154760000000
  %2093 = fmul fast float %2092, %2088
  %2094 = fmul fast float %2005, 0xBFF7154760000000
  %2095 = fmul fast float %2094, %2088
  %2096 = fmul fast float %2006, 0xBFF7154760000000
  %2097 = fmul fast float %2096, %2088
  %2098 = call float @dx.op.unary.f32(i32 21, float %2093)  ; Exp(value)
  %2099 = call float @dx.op.unary.f32(i32 21, float %2095)  ; Exp(value)
  %2100 = call float @dx.op.unary.f32(i32 21, float %2097)  ; Exp(value)
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = fadd fast float %2101, -1.000000e+00
  %2105 = select i1 %2089, float %2104, float -1.000000e+00
  %2106 = fadd fast float %2102, -1.000000e+00
  %2107 = select i1 %2090, float %2106, float -1.000000e+00
  %2108 = fadd fast float %2103, -1.000000e+00
  %2109 = select i1 %2091, float %2108, float -1.000000e+00
  %2110 = fmul fast float %2105, %1598
  %2111 = fmul fast float %2107, %1598
  %2112 = fmul fast float %2109, %1598
  %2113 = fadd fast float %2110, 1.000000e+00
  %2114 = fadd fast float %2111, 1.000000e+00
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fmul fast float %2113, %1282
  %2117 = fmul fast float %2114, %1283
  %2118 = fmul fast float %2115, %1284
  %2119 = fmul fast float %2113, %1285
  %2120 = fmul fast float %2114, %1286
  %2121 = fmul fast float %2115, %1287
  br label %2122

; <label>:2122                                    ; preds = %2087, %2068
  %2123 = phi float [ %2116, %2087 ], [ %1282, %2068 ]
  %2124 = phi float [ %2117, %2087 ], [ %1283, %2068 ]
  %2125 = phi float [ %2118, %2087 ], [ %1284, %2068 ]
  %2126 = phi float [ %2119, %2087 ], [ %1285, %2068 ]
  %2127 = phi float [ %2120, %2087 ], [ %1286, %2068 ]
  %2128 = phi float [ %2121, %2087 ], [ %1287, %2068 ]
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 3
  %2132 = icmp eq i32 %2131, 3
  br i1 %2132, label %2211, label %2133

; <label>:2133                                    ; preds = %2122
  %2134 = and i32 %2130, 16
  %2135 = icmp ne i32 %2134, 0
  %2136 = select i1 %2135, float %1598, float 0.000000e+00
  %2137 = icmp eq i32 %2131, 0
  br i1 %2137, label %2138, label %2166

; <label>:2138                                    ; preds = %2133
  %2139 = and i32 %2130, 64
  %2140 = icmp ne i32 %2139, 0
  %2141 = select i1 %2140, float %1598, float 0.000000e+00
  %2142 = fsub fast float %1818, %2123
  %2143 = fsub fast float %1819, %2124
  %2144 = fsub fast float %1820, %2125
  %2145 = fmul fast float %2136, %2142
  %2146 = fmul fast float %2136, %2143
  %2147 = fmul fast float %2136, %2144
  %2148 = fadd fast float %2145, %2123
  %2149 = fadd fast float %2146, %2124
  %2150 = fadd fast float %2147, %2125
  %2151 = fsub fast float %1804, %1294
  %2152 = fmul fast float %2136, %2151
  %2153 = fadd fast float %2152, %1294
  %2154 = fsub fast float %1946, %2126
  %2155 = fsub fast float %1947, %2127
  %2156 = fsub fast float %1948, %2128
  %2157 = fmul fast float %2141, %2154
  %2158 = fmul fast float %2141, %2155
  %2159 = fmul fast float %2141, %2156
  %2160 = fadd fast float %2157, %2126
  %2161 = fadd fast float %2158, %2127
  %2162 = fadd fast float %2159, %2128
  %2163 = fsub fast float %2086, %1300
  %2164 = fmul fast float %2136, %2163
  %2165 = fadd fast float %2164, %1300
  br label %2211

; <label>:2166                                    ; preds = %2133
  %2167 = icmp eq i32 %2131, 1
  br i1 %2167, label %2168, label %2181

; <label>:2168                                    ; preds = %2166
  %2169 = fadd fast float %1818, -1.000000e+00
  %2170 = fadd fast float %1819, -1.000000e+00
  %2171 = fadd fast float %1820, -1.000000e+00
  %2172 = fmul fast float %2136, %2169
  %2173 = fmul fast float %2136, %2170
  %2174 = fmul fast float %2136, %2171
  %2175 = fadd fast float %2172, 1.000000e+00
  %2176 = fadd fast float %2173, 1.000000e+00
  %2177 = fadd fast float %2174, 1.000000e+00
  %2178 = fmul fast float %2175, %2123
  %2179 = fmul fast float %2176, %2124
  %2180 = fmul fast float %2177, %2125
  br label %2211

; <label>:2181                                    ; preds = %2166
  %2182 = icmp eq i32 %2131, 2
  br i1 %2182, label %2183, label %2211

; <label>:2183                                    ; preds = %2181
  %2184 = call float @dx.op.unary.f32(i32 24, float %1818)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %1819)  ; Sqrt(value)
  %2186 = call float @dx.op.unary.f32(i32 24, float %1820)  ; Sqrt(value)
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fadd fast float %2186, -5.000000e-01
  %2190 = fmul fast float %2187, %2136
  %2191 = fmul fast float %2188, %2136
  %2192 = fmul fast float %2189, %2136
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = fadd fast float %2192, 5.000000e-01
  %2196 = fmul fast float %2193, 2.000000e+00
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2123
  %2199 = fadd fast float %2198, %2196
  %2200 = fmul fast float %2199, %2123
  %2201 = fmul fast float %2194, 2.000000e+00
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = fmul fast float %2202, %2124
  %2204 = fadd fast float %2203, %2201
  %2205 = fmul fast float %2204, %2124
  %2206 = fmul fast float %2195, 2.000000e+00
  %2207 = fsub fast float 1.000000e+00, %2206
  %2208 = fmul fast float %2207, %2125
  %2209 = fadd fast float %2208, %2206
  %2210 = fmul fast float %2209, %2125
  br label %2211

; <label>:2211                                    ; preds = %2183, %2181, %2168, %2138, %2122
  %2212 = phi float [ %2123, %2122 ], [ %2200, %2183 ], [ %2123, %2181 ], [ %2178, %2168 ], [ %2148, %2138 ]
  %2213 = phi float [ %2124, %2122 ], [ %2205, %2183 ], [ %2124, %2181 ], [ %2179, %2168 ], [ %2149, %2138 ]
  %2214 = phi float [ %2125, %2122 ], [ %2210, %2183 ], [ %2125, %2181 ], [ %2180, %2168 ], [ %2150, %2138 ]
  %2215 = phi float [ %2126, %2122 ], [ %2126, %2183 ], [ %2126, %2181 ], [ %2126, %2168 ], [ %2160, %2138 ]
  %2216 = phi float [ %2127, %2122 ], [ %2127, %2183 ], [ %2127, %2181 ], [ %2127, %2168 ], [ %2161, %2138 ]
  %2217 = phi float [ %2128, %2122 ], [ %2128, %2183 ], [ %2128, %2181 ], [ %2128, %2168 ], [ %2162, %2138 ]
  %2218 = phi float [ %1294, %2122 ], [ %1294, %2183 ], [ %1294, %2181 ], [ %1294, %2168 ], [ %2153, %2138 ]
  %2219 = phi float [ %1300, %2122 ], [ %1300, %2183 ], [ %1300, %2181 ], [ %1300, %2168 ], [ %2165, %2138 ]
  %2220 = and i32 %2130, 12
  %2221 = icmp eq i32 %2220, 12
  br i1 %2221, label %2362, label %2222

; <label>:2222                                    ; preds = %2211
  %2223 = and i32 %2130, 2097184
  %2224 = icmp eq i32 %2223, 2097184
  %2225 = select i1 %2224, float %1598, float 0.000000e+00
  %2226 = and i32 %2130, 4194336
  %2227 = icmp eq i32 %2226, 4194336
  %2228 = select i1 %2227, float %1598, float 0.000000e+00
  %2229 = and i32 %2130, 8388640
  %2230 = icmp eq i32 %2229, 8388640
  %2231 = select i1 %2230, float %1598, float 0.000000e+00
  %2232 = and i32 %2130, 1024
  %2233 = icmp ne i32 %2232, 0
  %2234 = select i1 %2233, float %1598, float 0.000000e+00
  %2235 = and i32 %2130, 2048
  %2236 = icmp ne i32 %2235, 0
  %2237 = select i1 %2236, float %1598, float 0.000000e+00
  %2238 = and i32 %2130, 8192
  %2239 = icmp ne i32 %2238, 0
  %2240 = select i1 %2239, float %1598, float 0.000000e+00
  %2241 = and i32 %2130, 16384
  %2242 = icmp ne i32 %2241, 0
  %2243 = select i1 %2242, float %1598, float 0.000000e+00
  %2244 = icmp eq i32 %2220, 0
  br i1 %2244, label %2245, label %2282

; <label>:2245                                    ; preds = %2222
  %2246 = fsub fast float %1899, %1280
  %2247 = fsub fast float %1900, %1281
  %2248 = fmul fast float %2225, %2246
  %2249 = fmul fast float %2225, %2247
  %2250 = fadd fast float %2248, %1280
  %2251 = fadd fast float %2249, %1281
  %2252 = fsub fast float %1901, %1297
  %2253 = fmul fast float %2228, %2252
  %2254 = fadd fast float %2253, %1297
  %2255 = fsub fast float %1898, %1296
  %2256 = fmul fast float %2231, %2255
  %2257 = fadd fast float %2256, %1296
  %2258 = fsub fast float %2004, %1291
  %2259 = fsub fast float %2005, %1292
  %2260 = fsub fast float %2006, %1293
  %2261 = fmul fast float %2234, %2258
  %2262 = fmul fast float %2234, %2259
  %2263 = fmul fast float %2234, %2260
  %2264 = fadd fast float %2261, %1291
  %2265 = fadd fast float %2262, %1292
  %2266 = fadd fast float %2263, %1293
  %2267 = fsub fast float %2072, %1298
  %2268 = fmul fast float %2237, %2267
  %2269 = fadd fast float %2268, %1298
  %2270 = fsub fast float %2069, %1288
  %2271 = fsub fast float %2070, %1289
  %2272 = fsub fast float %2071, %1290
  %2273 = fmul fast float %2240, %2270
  %2274 = fmul fast float %2240, %2271
  %2275 = fmul fast float %2240, %2272
  %2276 = fadd fast float %2273, %1288
  %2277 = fadd fast float %2274, %1289
  %2278 = fadd fast float %2275, %1290
  %2279 = fsub fast float %2073, %1299
  %2280 = fmul fast float %2243, %2279
  %2281 = fadd fast float %2280, %1299
  br label %2362

; <label>:2282                                    ; preds = %2222
  %2283 = icmp eq i32 %2220, 4
  br i1 %2283, label %2284, label %2332

; <label>:2284                                    ; preds = %2282
  %2285 = fmul fast float %2225, %1899
  %2286 = fmul fast float %2225, %1900
  %2287 = fadd fast float %2285, %1280
  %2288 = fadd fast float %2286, %1281
  %2289 = call float @dx.op.binary.f32(i32 36, float %1297, float %1901)  ; FMin(a,b)
  %2290 = fsub fast float %2289, %1297
  %2291 = fmul fast float %2290, %2228
  %2292 = fadd fast float %2291, %1297
  %2293 = fadd fast float %1898, %1296
  %2294 = fmul fast float %2293, 0x3FF337FAE0000000
  %2295 = fmul fast float %1296, %1296
  %2296 = fmul fast float %1898, %1898
  %2297 = fadd fast float %2296, %2295
  %2298 = fmul fast float %2297, 0x3FE5152B00000000
  %2299 = fmul fast float %1296, 0xBFCC1F85E0000000
  %2300 = fmul fast float %2299, %1898
  %2301 = fadd fast float %2300, 0xBFE1363700000000
  %2302 = fadd fast float %2301, %2294
  %2303 = fsub fast float %2302, %2298
  %2304 = fmul fast float %2293, 0x3FBA6F0D00000000
  %2305 = fmul fast float %2297, 0x3FD0432880000000
  %2306 = fmul fast float %1296, 0xBFEF110800000000
  %2307 = fmul fast float %2306, %1898
  %2308 = fadd fast float %2307, 1.000000e+00
  %2309 = fsub fast float %2308, %2304
  %2310 = fadd fast float %2309, %2305
  %2311 = fdiv fast float %2303, %2310
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2313 = fsub fast float %2312, %1296
  %2314 = fmul fast float %2313, %2231
  %2315 = fadd fast float %2314, %1296
  %2316 = fmul fast float %2234, %2004
  %2317 = fmul fast float %2234, %2005
  %2318 = fmul fast float %2234, %2006
  %2319 = fadd fast float %2316, %1291
  %2320 = fadd fast float %2317, %1292
  %2321 = fadd fast float %2318, %1293
  %2322 = fmul fast float %2237, %2072
  %2323 = fadd fast float %2322, %1298
  %2324 = fmul fast float %2240, %2069
  %2325 = fmul fast float %2240, %2070
  %2326 = fmul fast float %2240, %2071
  %2327 = fadd fast float %2324, %1288
  %2328 = fadd fast float %2325, %1289
  %2329 = fadd fast float %2326, %1290
  %2330 = fmul fast float %2243, %2073
  %2331 = fadd fast float %2330, %1299
  br label %2362

; <label>:2332                                    ; preds = %2282
  %2333 = icmp eq i32 %2220, 8
  br i1 %2333, label %2334, label %2362

; <label>:2334                                    ; preds = %2332
  %2335 = fmul fast float %2225, %1899
  %2336 = fmul fast float %2225, %1900
  %2337 = fadd fast float %2335, %1280
  %2338 = fadd fast float %2336, %1281
  %2339 = call float @dx.op.binary.f32(i32 36, float %1297, float %1901)  ; FMin(a,b)
  %2340 = fsub fast float %2339, %1297
  %2341 = fmul fast float %2340, %2228
  %2342 = fadd fast float %2341, %1297
  %2343 = fsub fast float %1898, %1296
  %2344 = fmul fast float %2231, %2343
  %2345 = fadd fast float %2344, %1296
  %2346 = fmul fast float %2234, %2004
  %2347 = fmul fast float %2234, %2005
  %2348 = fmul fast float %2234, %2006
  %2349 = fadd fast float %2346, %1291
  %2350 = fadd fast float %2347, %1292
  %2351 = fadd fast float %2348, %1293
  %2352 = fmul fast float %2237, %2072
  %2353 = fadd fast float %2352, %1298
  %2354 = fmul fast float %2240, %2069
  %2355 = fmul fast float %2240, %2070
  %2356 = fmul fast float %2240, %2071
  %2357 = fadd fast float %2354, %1288
  %2358 = fadd fast float %2355, %1289
  %2359 = fadd fast float %2356, %1290
  %2360 = fmul fast float %2243, %2073
  %2361 = fadd fast float %2360, %1299
  br label %2362

; <label>:2362                                    ; preds = %2334, %2332, %2284, %2245, %2211, %1597, %1301, %1279
  %2363 = phi float [ %1280, %2211 ], [ %1280, %1597 ], [ %1280, %1279 ], [ %2337, %2334 ], [ %1280, %2332 ], [ %2287, %2284 ], [ %2250, %2245 ], [ %1280, %1301 ]
  %2364 = phi float [ %1281, %2211 ], [ %1281, %1597 ], [ %1281, %1279 ], [ %2338, %2334 ], [ %1281, %2332 ], [ %2288, %2284 ], [ %2251, %2245 ], [ %1281, %1301 ]
  %2365 = phi float [ %2212, %2211 ], [ %1282, %1597 ], [ %1282, %1279 ], [ %2212, %2334 ], [ %2212, %2332 ], [ %2212, %2284 ], [ %2212, %2245 ], [ %1282, %1301 ]
  %2366 = phi float [ %2213, %2211 ], [ %1283, %1597 ], [ %1283, %1279 ], [ %2213, %2334 ], [ %2213, %2332 ], [ %2213, %2284 ], [ %2213, %2245 ], [ %1283, %1301 ]
  %2367 = phi float [ %2214, %2211 ], [ %1284, %1597 ], [ %1284, %1279 ], [ %2214, %2334 ], [ %2214, %2332 ], [ %2214, %2284 ], [ %2214, %2245 ], [ %1284, %1301 ]
  %2368 = phi float [ %2215, %2211 ], [ %1285, %1597 ], [ %1285, %1279 ], [ %2215, %2334 ], [ %2215, %2332 ], [ %2215, %2284 ], [ %2215, %2245 ], [ %1285, %1301 ]
  %2369 = phi float [ %2216, %2211 ], [ %1286, %1597 ], [ %1286, %1279 ], [ %2216, %2334 ], [ %2216, %2332 ], [ %2216, %2284 ], [ %2216, %2245 ], [ %1286, %1301 ]
  %2370 = phi float [ %2217, %2211 ], [ %1287, %1597 ], [ %1287, %1279 ], [ %2217, %2334 ], [ %2217, %2332 ], [ %2217, %2284 ], [ %2217, %2245 ], [ %1287, %1301 ]
  %2371 = phi float [ %1288, %2211 ], [ %1288, %1597 ], [ %1288, %1279 ], [ %2357, %2334 ], [ %1288, %2332 ], [ %2327, %2284 ], [ %2276, %2245 ], [ %1288, %1301 ]
  %2372 = phi float [ %1289, %2211 ], [ %1289, %1597 ], [ %1289, %1279 ], [ %2358, %2334 ], [ %1289, %2332 ], [ %2328, %2284 ], [ %2277, %2245 ], [ %1289, %1301 ]
  %2373 = phi float [ %1290, %2211 ], [ %1290, %1597 ], [ %1290, %1279 ], [ %2359, %2334 ], [ %1290, %2332 ], [ %2329, %2284 ], [ %2278, %2245 ], [ %1290, %1301 ]
  %2374 = phi float [ %1291, %2211 ], [ %1291, %1597 ], [ %1291, %1279 ], [ %2349, %2334 ], [ %1291, %2332 ], [ %2319, %2284 ], [ %2264, %2245 ], [ %1291, %1301 ]
  %2375 = phi float [ %1292, %2211 ], [ %1292, %1597 ], [ %1292, %1279 ], [ %2350, %2334 ], [ %1292, %2332 ], [ %2320, %2284 ], [ %2265, %2245 ], [ %1292, %1301 ]
  %2376 = phi float [ %1293, %2211 ], [ %1293, %1597 ], [ %1293, %1279 ], [ %2351, %2334 ], [ %1293, %2332 ], [ %2321, %2284 ], [ %2266, %2245 ], [ %1293, %1301 ]
  %2377 = phi float [ %2218, %2211 ], [ %1294, %1597 ], [ %1294, %1279 ], [ %2218, %2334 ], [ %2218, %2332 ], [ %2218, %2284 ], [ %2218, %2245 ], [ %1294, %1301 ]
  %2378 = phi float [ %1296, %2211 ], [ %1296, %1597 ], [ %1296, %1279 ], [ %2345, %2334 ], [ %1296, %2332 ], [ %2315, %2284 ], [ %2257, %2245 ], [ %1296, %1301 ]
  %2379 = phi float [ %1297, %2211 ], [ %1297, %1597 ], [ %1297, %1279 ], [ %2342, %2334 ], [ %1297, %2332 ], [ %2292, %2284 ], [ %2254, %2245 ], [ %1297, %1301 ]
  %2380 = phi float [ %1298, %2211 ], [ %1298, %1597 ], [ %1298, %1279 ], [ %2353, %2334 ], [ %1298, %2332 ], [ %2323, %2284 ], [ %2269, %2245 ], [ %1298, %1301 ]
  %2381 = phi float [ %1299, %2211 ], [ %1299, %1597 ], [ %1299, %1279 ], [ %2361, %2334 ], [ %1299, %2332 ], [ %2331, %2284 ], [ %2281, %2245 ], [ %1299, %1301 ]
  %2382 = phi float [ %2219, %2211 ], [ %1300, %1597 ], [ %1300, %1279 ], [ %2219, %2334 ], [ %2219, %2332 ], [ %2219, %2284 ], [ %2219, %2245 ], [ %1300, %1301 ]
  br i1 %440, label %3444, label %2383

; <label>:2383                                    ; preds = %2362
  %2384 = icmp ult i32 %496, 3
  %2385 = add i32 %56, 56
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = add i32 %56, 60
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = or i32 %2390, %2387
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %3444, label %2393

; <label>:2393                                    ; preds = %2383
  %2394 = and i32 %2387, 262144
  %2395 = icmp ne i32 %2394, 0
  %2396 = select i1 %2395, float %59, float 1.000000e+00
  %2397 = select i1 %2395, float %60, float 0.000000e+00
  %2398 = select i1 %2395, float %61, float 0.000000e+00
  %2399 = select i1 %2395, float %62, float 1.000000e+00
  %2400 = select i1 %2395, float %63, float %84
  %2401 = select i1 %2395, float %64, float %85
  %2402 = add i32 %56, 316
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = lshr i32 %2404, 16
  %2406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2405)  ; LegacyF16ToF32(value)
  %2407 = fmul fast float %2406, 0x3F50624DE0000000
  %2408 = add i32 %56, 120
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = lshr i32 %2410, 16
  %2412 = and i32 %2411, 255
  %2413 = lshr i32 %2410, 24
  %2414 = add i32 %56, 324
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = lshr i32 %2416, 16
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = add i32 %56, 64
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = lshr i32 %2423, 22
  %2425 = shl nuw nsw i32 %2424, 5
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = shl i32 %2423, 4
  %2428 = and i32 %2427, 32752
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2423, 7
  %2431 = and i32 %2430, 32752
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 3
  %2435 = fmul fast float %2434, 1.000000e+03
  %2436 = fmul fast float %390, %2435
  %2437 = call float @dx.op.unary.f32(i32 22, float %2436)  ; Frc(value)
  %2438 = fadd fast float %2437, %380
  %2439 = fmul fast float %391, %2435
  %2440 = call float @dx.op.unary.f32(i32 22, float %2439)  ; Frc(value)
  %2441 = fadd fast float %2440, %382
  %2442 = fmul fast float %2407, %2435
  %2443 = call float @dx.op.unary.f32(i32 22, float %2442)  ; Frc(value)
  %2444 = fmul fast float %2443, 0x401921FB60000000
  %2445 = fadd fast float %2444, %2426
  %2446 = call float @dx.op.unary.f32(i32 13, float %2445)  ; Sin(value)
  %2447 = call float @dx.op.unary.f32(i32 12, float %2445)  ; Cos(value)
  %2448 = fsub fast float -0.000000e+00, %2446
  %2449 = fadd fast float %2400, -5.000000e-01
  %2450 = fadd fast float %2401, -5.000000e-01
  %2451 = fmul fast float %2418, %2449
  %2452 = fmul fast float %2420, %2450
  %2453 = fadd fast float %2451, 5.000000e-01
  %2454 = fadd fast float %2452, 5.000000e-01
  %2455 = fmul fast float %2429, %2453
  %2456 = fmul fast float %2432, %2454
  %2457 = fmul fast float %2447, %2455
  %2458 = call float @dx.op.tertiary.f32(i32 46, float %2448, float %2456, float %2457)  ; FMad(a,b,c)
  %2459 = fmul fast float %2446, %2455
  %2460 = call float @dx.op.tertiary.f32(i32 46, float %2447, float %2456, float %2459)  ; FMad(a,b,c)
  %2461 = fadd fast float %2438, %2458
  %2462 = fadd fast float %2441, %2460
  %2463 = icmp ugt i32 %2412, 1
  %2464 = icmp ugt i32 %2410, 33554431
  %2465 = or i1 %2464, %2463
  br i1 %2465, label %2466, label %2491

; <label>:2466                                    ; preds = %2393
  %2467 = add i32 %56, 260
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = lshr i32 %2469, 16
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = fmul fast float %2434, %2471
  %2473 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2474 = mul nuw nsw i32 %2412, %2413
  %2475 = uitofp i32 %2474 to float
  %2476 = fmul fast float %2473, %2475
  %2477 = call float @dx.op.unary.f32(i32 27, float %2476)  ; Round_ni(value)
  %2478 = fptoui float %2477 to i32
  %2479 = urem i32 %2478, %2412
  %2480 = udiv i32 %2478, %2413
  %2481 = call float @dx.op.unary.f32(i32 22, float %2461)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2462)  ; Frc(value)
  %2483 = uitofp i32 %2479 to float
  %2484 = uitofp i32 %2480 to float
  %2485 = fadd fast float %2481, %2483
  %2486 = fadd fast float %2482, %2484
  %2487 = uitofp i32 %2412 to float
  %2488 = uitofp i32 %2413 to float
  %2489 = fdiv fast float %2485, %2487
  %2490 = fdiv fast float %2486, %2488
  br label %2491

; <label>:2491                                    ; preds = %2466, %2393
  %2492 = phi float [ %2489, %2466 ], [ %2461, %2393 ]
  %2493 = phi float [ %2490, %2466 ], [ %2462, %2393 ]
  %2494 = and i32 %2387, 16777216
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2605, label %2496

; <label>:2496                                    ; preds = %2491
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = extractvalue %dx.types.CBufRet.f32 %2497, 1
  %2500 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2501 = fadd fast float %2498, %157
  %2502 = fadd fast float %2499, %158
  %2503 = fadd fast float %2500, %159
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = icmp eq i32 %57, 65535
  br i1 %2507, label %2602, label %2508

; <label>:2508                                    ; preds = %2496
  %2509 = lshr i32 %57, 1
  %2510 = shl i32 %2509, 2
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %57, 1
  %2514 = icmp ne i32 %2513, 0
  %2515 = lshr i32 %2512, 16
  %2516 = and i32 %2512, 65535
  %2517 = select i1 %2514, i32 %2515, i32 %2516
  %2518 = icmp eq i32 %2517, 65535
  br i1 %2518, label %2598, label %2519

; <label>:2519                                    ; preds = %2508
  %2520 = mul nuw nsw i32 %2517, 40
  %2521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = add nuw nsw i32 %2520, 12
  %2526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2530 = add nuw nsw i32 %2520, 24
  %2531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = add nuw nsw i32 %2520, 36
  %2536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = fsub fast float %2501, %2522
  %2539 = fsub fast float %2502, %2523
  %2540 = fsub fast float %2503, %2524
  %2541 = fmul fast float %2537, %2538
  %2542 = fmul fast float %2537, %2539
  %2543 = fmul fast float %2537, %2540
  %2544 = call float @dx.op.unary.f32(i32 27, float %2541)  ; Round_ni(value)
  %2545 = call float @dx.op.unary.f32(i32 27, float %2542)  ; Round_ni(value)
  %2546 = call float @dx.op.unary.f32(i32 27, float %2543)  ; Round_ni(value)
  %2547 = fadd fast float %2544, 5.000000e-01
  %2548 = fadd fast float %2545, 5.000000e-01
  %2549 = fadd fast float %2546, 5.000000e-01
  %2550 = fmul fast float %2547, %2527
  %2551 = fmul fast float %2548, %2528
  %2552 = fmul fast float %2549, %2529
  %2553 = shl i32 %57, 2
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = add i32 %2555, 0
  %2557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2558 = call float @dx.op.unary.f32(i32 22, float %2550)  ; Frc(value)
  %2559 = call float @dx.op.unary.f32(i32 22, float %2551)  ; Frc(value)
  %2560 = call float @dx.op.unary.f32(i32 22, float %2552)  ; Frc(value)
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2557, %dx.types.Handle %51, float %2558, float %2559, float %2560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = fmul fast float %2562, 1.023000e+03
  %2566 = fmul fast float %2563, 1.023000e+03
  %2567 = fmul fast float %2564, 1.023000e+03
  %2568 = fadd fast float %2565, 5.000000e-01
  %2569 = fadd fast float %2566, 5.000000e-01
  %2570 = fadd fast float %2567, 5.000000e-01
  %2571 = call float @dx.op.unary.f32(i32 27, float %2568)  ; Round_ni(value)
  %2572 = call float @dx.op.unary.f32(i32 27, float %2569)  ; Round_ni(value)
  %2573 = call float @dx.op.unary.f32(i32 27, float %2570)  ; Round_ni(value)
  %2574 = fsub fast float %2541, %2544
  %2575 = fsub fast float %2542, %2545
  %2576 = fsub fast float %2543, %2546
  %2577 = fmul fast float %2574, 7.500000e-01
  %2578 = fmul fast float %2575, 7.500000e-01
  %2579 = fmul fast float %2576, 7.500000e-01
  %2580 = fadd fast float %2544, 1.250000e-01
  %2581 = fadd fast float %2580, %2577
  %2582 = fadd fast float %2581, %2571
  %2583 = fadd fast float %2545, 1.250000e-01
  %2584 = fadd fast float %2583, %2578
  %2585 = fadd fast float %2584, %2572
  %2586 = fadd fast float %2546, 1.250000e-01
  %2587 = fadd fast float %2586, %2579
  %2588 = fadd fast float %2587, %2573
  %2589 = fmul fast float %2582, %2532
  %2590 = fmul fast float %2585, %2533
  %2591 = fmul fast float %2588, %2534
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = add i32 %2593, 0
  %2595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2595, %dx.types.Handle %49, float %2589, float %2590, float %2591, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2597 = extractvalue %dx.types.ResRet.f32 %2596, 0
  br label %2598

; <label>:2598                                    ; preds = %2519, %2508
  %2599 = phi float [ %2597, %2519 ], [ -1.000000e+00, %2508 ]
  %2600 = fadd fast float %2599, %2506
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  br label %2602

; <label>:2602                                    ; preds = %2598, %2496
  %2603 = phi float [ %2601, %2598 ], [ %2506, %2496 ]
  %2604 = fmul fast float %2603, %492
  br label %2605

; <label>:2605                                    ; preds = %2602, %2491
  %2606 = phi float [ %2604, %2602 ], [ %492, %2491 ]
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 256
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2657, label %2611

; <label>:2611                                    ; preds = %2605
  %2612 = add i32 %56, 480
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = add i32 %2614, 0
  %2616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2616, %dx.types.Handle %99, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = add i32 %56, 132
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = shl i32 %2621, 4
  %2623 = and i32 %2622, 32752
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = lshr i32 %2621, 7
  %2626 = and i32 %2625, 32752
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = fsub fast float 1.000000e+00, %2606
  %2629 = call float @dx.op.binary.f32(i32 35, float %2628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2630 = bitcast float %2606 to i32
  %2631 = sitofp i32 %2630 to float
  %2632 = fadd fast float %2631, 0xC1CFBF8940000000
  %2633 = fmul fast float %2627, %2632
  %2634 = fadd fast float %2633, 0x41CFBF8940000000
  %2635 = fptosi float %2634 to i32
  %2636 = bitcast i32 %2635 to float
  %2637 = bitcast float %2629 to i32
  %2638 = sitofp i32 %2637 to float
  %2639 = fadd fast float %2638, 0xC1CFBF8940000000
  %2640 = fmul fast float %2639, %2627
  %2641 = fadd fast float %2640, 0x41CFBF8940000000
  %2642 = fptosi float %2641 to i32
  %2643 = bitcast i32 %2642 to float
  %2644 = fmul fast float %2636, %2624
  %2645 = fmul fast float %2643, %2624
  %2646 = fsub fast float %2629, %2644
  %2647 = fadd fast float %2645, %2629
  %2648 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  %2649 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2650 = fsub fast float %2618, %2648
  %2651 = fsub fast float %2649, %2648
  %2652 = bitcast float %2651 to i32
  %2653 = sub nsw i32 2129859010, %2652
  %2654 = bitcast i32 %2653 to float
  %2655 = fmul fast float %2654, %2650
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  br label %2657

; <label>:2657                                    ; preds = %2611, %2605
  %2658 = phi float [ %2656, %2611 ], [ %2606, %2605 ]
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 128
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2679, label %2663

; <label>:2663                                    ; preds = %2657
  %2664 = add i32 %56, 464
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = add i32 %2666, 0
  %2668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2668, %dx.types.Handle %99, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = and i32 %2672, 524288
  %2674 = icmp ne i32 %2673, 0
  %2675 = fcmp fast ogt float %2670, 0x3FE0101020000000
  %2676 = select i1 %2675, float 1.000000e+00, float 0.000000e+00
  %2677 = select i1 %2674, float %2676, float %2670
  %2678 = fmul fast float %2677, %2658
  br label %2679

; <label>:2679                                    ; preds = %2663, %2657
  %2680 = phi float [ %2678, %2663 ], [ %2658, %2657 ]
  %2681 = fcmp fast ult float %2680, 0x3F70101020000000
  br i1 %2681, label %3444, label %2682

; <label>:2682                                    ; preds = %2679
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 16
  %2686 = icmp eq i32 %2685, 0
  br i1 %2686, label %2885, label %2687

; <label>:2687                                    ; preds = %2682
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = add i32 %56, 416
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = add i32 %2692, 0
  %2694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2694, %dx.types.Handle %98, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2696 = extractvalue %dx.types.ResRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.ResRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.ResRet.f32 %2695, 2
  %2699 = extractvalue %dx.types.ResRet.f32 %2695, 3
  %2700 = and i32 %2689, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = lshr i32 %2689, 8
  %2703 = and i32 %2702, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2699, %2701
  %2706 = fadd fast float %2705, %2704
  %2707 = fmul fast float %2706, 0x3F70101000000000
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 512
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2720, label %2712

; <label>:2712                                    ; preds = %2687
  %2713 = add i32 %56, 496
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %2715, 0
  %2717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2717, %dx.types.Handle %99, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  br label %2720

; <label>:2720                                    ; preds = %2712, %2687
  %2721 = phi float [ %2719, %2712 ], [ 1.000000e+00, %2687 ]
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 33554432
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2832, label %2726

; <label>:2726                                    ; preds = %2720
  %2727 = add i32 %56, 256
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 65535
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = lshr i32 %2729, 16
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = add i32 %56, 260
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 65535
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = lshr i32 %2740, 24
  %2742 = uitofp i32 %2741 to float
  %2743 = fmul fast float %2742, 0x3F70101020000000
  %2744 = and i32 %2740, 255
  %2745 = uitofp i32 %2744 to float
  %2746 = fmul fast float %2745, 0x3F70101020000000
  %2747 = lshr i32 %2740, 8
  %2748 = and i32 %2747, 255
  %2749 = uitofp i32 %2748 to float
  %2750 = fmul fast float %2749, 0x3F70101020000000
  %2751 = lshr i32 %2740, 16
  %2752 = and i32 %2751, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = fmul fast float %2753, 0x3F70101020000000
  %2755 = add i32 %56, 252
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = lshr i32 %2757, 24
  %2759 = uitofp i32 %2758 to float
  %2760 = fmul fast float %2759, 0x3F70101020000000
  %2761 = and i32 %2757, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = fmul fast float %2762, 0x3F70101020000000
  %2764 = lshr i32 %2757, 8
  %2765 = and i32 %2764, 255
  %2766 = uitofp i32 %2765 to float
  %2767 = fmul fast float %2766, 0x3F70101020000000
  %2768 = lshr i32 %2757, 16
  %2769 = and i32 %2768, 255
  %2770 = uitofp i32 %2769 to float
  %2771 = fmul fast float %2770, 0x3F70101020000000
  %2772 = bitcast float %2696 to i32
  %2773 = ashr i32 %2772, 1
  %2774 = sub nsw i32 1597463174, %2773
  %2775 = bitcast i32 %2774 to float
  %2776 = fmul fast float %2696, 5.000000e-01
  %2777 = fmul fast float %2775, %2775
  %2778 = fmul fast float %2777, %2776
  %2779 = fsub fast float 1.500000e+00, %2778
  %2780 = fmul fast float %2775, %2696
  %2781 = fmul fast float %2780, %2779
  %2782 = bitcast float %2697 to i32
  %2783 = ashr i32 %2782, 1
  %2784 = sub nsw i32 1597463174, %2783
  %2785 = bitcast i32 %2784 to float
  %2786 = fmul fast float %2697, 5.000000e-01
  %2787 = fmul fast float %2785, %2785
  %2788 = fmul fast float %2787, %2786
  %2789 = fsub fast float 1.500000e+00, %2788
  %2790 = fmul fast float %2785, %2697
  %2791 = fmul fast float %2790, %2789
  %2792 = bitcast float %2698 to i32
  %2793 = ashr i32 %2792, 1
  %2794 = sub nsw i32 1597463174, %2793
  %2795 = bitcast i32 %2794 to float
  %2796 = fmul fast float %2698, 5.000000e-01
  %2797 = fmul fast float %2795, %2795
  %2798 = fmul fast float %2797, %2796
  %2799 = fsub fast float 1.500000e+00, %2798
  %2800 = fmul fast float %2795, %2698
  %2801 = fmul fast float %2800, %2799
  %2802 = fsub fast float %2781, %2763
  %2803 = fsub fast float %2791, %2767
  %2804 = fsub fast float %2801, %2771
  %2805 = fmul fast float %2802, %2731
  %2806 = fmul fast float %2803, %2733
  %2807 = fmul fast float %2804, %2738
  %2808 = fadd fast float %2805, %2746
  %2809 = fadd fast float %2806, %2750
  %2810 = fadd fast float %2807, %2754
  %2811 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2812 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2813 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2814 = fmul fast float %2811, %2811
  %2815 = fmul fast float %2812, %2812
  %2816 = fmul fast float %2813, %2813
  %2817 = fsub fast float %2814, %2696
  %2818 = fsub fast float %2815, %2697
  %2819 = fsub fast float %2816, %2698
  %2820 = fmul fast float %2817, %2721
  %2821 = fmul fast float %2818, %2721
  %2822 = fmul fast float %2819, %2721
  %2823 = fadd fast float %2820, %2696
  %2824 = fadd fast float %2821, %2697
  %2825 = fadd fast float %2822, %2698
  %2826 = fadd fast float %2743, %2707
  %2827 = fsub fast float %2826, %2760
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fsub fast float %2828, %2707
  %2830 = fmul fast float %2829, %2721
  %2831 = fadd fast float %2830, %2707
  br label %2885

; <label>:2832                                    ; preds = %2720
  %2833 = and i32 %2723, 134217728
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2869, label %2835

; <label>:2835                                    ; preds = %2832
  %2836 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2837 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2838 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2839 = fadd fast float %2836, -5.000000e-01
  %2840 = fadd fast float %2837, -5.000000e-01
  %2841 = fadd fast float %2838, -5.000000e-01
  %2842 = fmul fast float %2839, %2721
  %2843 = fmul fast float %2840, %2721
  %2844 = fmul fast float %2841, %2721
  %2845 = fadd fast float %2842, 5.000000e-01
  %2846 = fadd fast float %2843, 5.000000e-01
  %2847 = fadd fast float %2844, 5.000000e-01
  %2848 = call float @dx.op.unary.f32(i32 24, float %2696)  ; Sqrt(value)
  %2849 = call float @dx.op.unary.f32(i32 24, float %2697)  ; Sqrt(value)
  %2850 = call float @dx.op.unary.f32(i32 24, float %2698)  ; Sqrt(value)
  %2851 = fmul fast float %2845, 2.000000e+00
  %2852 = fsub fast float 1.000000e+00, %2851
  %2853 = fmul fast float %2852, %2848
  %2854 = fadd fast float %2853, %2851
  %2855 = fmul fast float %2854, %2848
  %2856 = fmul fast float %2846, 2.000000e+00
  %2857 = fsub fast float 1.000000e+00, %2856
  %2858 = fmul fast float %2857, %2849
  %2859 = fadd fast float %2858, %2856
  %2860 = fmul fast float %2859, %2849
  %2861 = fmul fast float %2847, 2.000000e+00
  %2862 = fsub fast float 1.000000e+00, %2861
  %2863 = fmul fast float %2862, %2850
  %2864 = fadd fast float %2863, %2861
  %2865 = fmul fast float %2864, %2850
  %2866 = fmul fast float %2855, %2855
  %2867 = fmul fast float %2860, %2860
  %2868 = fmul fast float %2865, %2865
  br label %2885

; <label>:2869                                    ; preds = %2832
  %2870 = fmul fast float %367, %367
  %2871 = fmul fast float %371, %371
  %2872 = fmul fast float %375, %375
  %2873 = fadd fast float %2870, -1.000000e+00
  %2874 = fadd fast float %2871, -1.000000e+00
  %2875 = fadd fast float %2872, -1.000000e+00
  %2876 = fmul fast float %2721, %2873
  %2877 = fmul fast float %2721, %2874
  %2878 = fmul fast float %2721, %2875
  %2879 = fadd fast float %2876, 1.000000e+00
  %2880 = fadd fast float %2877, 1.000000e+00
  %2881 = fadd fast float %2878, 1.000000e+00
  %2882 = fmul fast float %2879, %2696
  %2883 = fmul fast float %2880, %2697
  %2884 = fmul fast float %2881, %2698
  br label %2885

; <label>:2885                                    ; preds = %2869, %2835, %2726, %2682
  %2886 = phi float [ %2831, %2726 ], [ %2707, %2835 ], [ %2707, %2869 ], [ 0x3FA23C0BE0000000, %2682 ]
  %2887 = phi float [ %2823, %2726 ], [ %2866, %2835 ], [ %2882, %2869 ], [ 1.000000e+00, %2682 ]
  %2888 = phi float [ %2824, %2726 ], [ %2867, %2835 ], [ %2883, %2869 ], [ 1.000000e+00, %2682 ]
  %2889 = phi float [ %2825, %2726 ], [ %2868, %2835 ], [ %2884, %2869 ], [ 1.000000e+00, %2682 ]
  %2890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.i32 %2890, 1
  %2892 = and i32 %2891, 1
  %2893 = icmp ne i32 %2892, 0
  %2894 = add i32 %56, 356
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 32
  %2898 = icmp ne i32 %2897, 0
  %2899 = and i1 %2893, %2898
  %2900 = select i1 %2899, float 1.000000e+00, float %2887
  %2901 = select i1 %2899, float 0x3FD3333340000000, float %2888
  %2902 = select i1 %2899, float 0x3FD3333340000000, float %2889
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 32
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %2979, label %2907

; <label>:2907                                    ; preds = %2885
  %2908 = add i32 %56, 124
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %56, 432
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = add i32 %2913, 0
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2915, %dx.types.Handle %98, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.ResRet.f32 %2916, 3
  %2921 = and i32 %2910, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = lshr i32 %2910, 8
  %2924 = and i32 %2923, 255
  %2925 = uitofp i32 %2924 to float
  %2926 = lshr i32 %2910, 16
  %2927 = and i32 %2926, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = fmul fast float %2928, 0x3F70101000000000
  %2930 = fmul fast float %2917, %2922
  %2931 = fadd fast float %2930, %2925
  %2932 = fmul fast float %2931, 0x3F70101000000000
  %2933 = fadd fast float %2918, -5.000000e-01
  %2934 = fadd fast float %2920, -5.000000e-01
  %2935 = fmul fast float %2933, %2929
  %2936 = fmul fast float %2934, %2929
  %2937 = fadd fast float %2935, 5.000000e-01
  %2938 = fadd fast float %2936, 5.000000e-01
  %2939 = fmul fast float %2937, 2.000000e+00
  %2940 = fadd fast float %2939, -1.000000e+00
  %2941 = fmul fast float %2938, 2.000000e+00
  %2942 = fadd fast float %2941, -1.000000e+00
  %2943 = fadd fast float %2940, %2942
  %2944 = fmul fast float %2943, 5.000000e-01
  %2945 = fsub fast float %2940, %2942
  %2946 = fmul fast float %2945, 5.000000e-01
  %2947 = call float @dx.op.unary.f32(i32 6, float %2944)  ; FAbs(value)
  %2948 = fsub fast float 1.000000e+00, %2947
  %2949 = call float @dx.op.unary.f32(i32 6, float %2946)  ; FAbs(value)
  %2950 = fsub fast float %2948, %2949
  %2951 = call float @dx.op.dot3.f32(i32 55, float %2944, float %2946, float %2950, float %2944, float %2946, float %2950)  ; Dot3(ax,ay,az,bx,by,bz)
  %2952 = call float @dx.op.unary.f32(i32 25, float %2951)  ; Rsqrt(value)
  %2953 = fmul fast float %2944, %2952
  %2954 = fmul fast float %2946, %2952
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 67108864
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2975, label %2959

; <label>:2959                                    ; preds = %2907
  %2960 = add i32 %56, 312
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 65535
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 65535
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = lshr i32 %2962, 16
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = fsub fast float %2932, %2970
  %2972 = fmul fast float %2971, %2964
  %2973 = fadd fast float %2972, %2968
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  br label %2975

; <label>:2975                                    ; preds = %2959, %2907
  %2976 = phi float [ %2974, %2959 ], [ %2932, %2907 ]
  %2977 = call float @dx.op.dot2.f32(i32 54, float %2953, float %2954, float %2396, float %2397)  ; Dot2(ax,ay,bx,by)
  %2978 = call float @dx.op.dot2.f32(i32 54, float %2953, float %2954, float %2398, float %2399)  ; Dot2(ax,ay,bx,by)
  br label %2979

; <label>:2979                                    ; preds = %2975, %2885
  %2980 = phi float [ %2976, %2975 ], [ 0x3FD6666660000000, %2885 ]
  %2981 = phi float [ %2977, %2975 ], [ 0.000000e+00, %2885 ]
  %2982 = phi float [ %2978, %2975 ], [ 0.000000e+00, %2885 ]
  %2983 = phi float [ %2919, %2975 ], [ 1.000000e+00, %2885 ]
  %2984 = add i32 %56, 192
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 22
  %2988 = shl nuw nsw i32 %2987, 5
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 64
  %2993 = icmp eq i32 %2992, 0
  br i1 %2993, label %3027, label %2994

; <label>:2994                                    ; preds = %2979
  %2995 = add i32 %56, 448
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = add i32 %2997, 0
  %2999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 131072
  %3003 = icmp eq i32 %3002, 0
  %3004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2999, %dx.types.Handle %98, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = fmul fast float %3005, %355
  %3009 = fmul fast float %3006, %358
  %3010 = fmul fast float %3007, %361
  br i1 %3003, label %3017, label %3011

; <label>:3011                                    ; preds = %2994
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = fmul fast float %3013, %3008
  %3015 = fmul fast float %3013, %3009
  %3016 = fmul fast float %3013, %3010
  br label %3017

; <label>:3017                                    ; preds = %3011, %2994
  %3018 = phi float [ %3014, %3011 ], [ %3008, %2994 ]
  %3019 = phi float [ %3015, %3011 ], [ %3009, %2994 ]
  %3020 = phi float [ %3016, %3011 ], [ %3010, %2994 ]
  %3021 = fmul fast float %3018, %2989
  %3022 = select i1 %251, float %3021, float %3018
  %3023 = call float @dx.op.dot3.f32(i32 55, float %3022, float %3019, float %3020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = select i1 %251, float 0.000000e+00, float %3018
  %3025 = select i1 %251, float %3023, float %3019
  %3026 = select i1 %251, float 0.000000e+00, float %3020
  br label %3027

; <label>:3027                                    ; preds = %3017, %2979
  %3028 = phi float [ %3024, %3017 ], [ 0.000000e+00, %2979 ]
  %3029 = phi float [ %3025, %3017 ], [ 0.000000e+00, %2979 ]
  %3030 = phi float [ %3026, %3017 ], [ 0.000000e+00, %2979 ]
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, 1024
  %3034 = icmp eq i32 %3033, 0
  br i1 %3034, label %3065, label %3035

; <label>:3035                                    ; preds = %3027
  %3036 = add i32 %56, 184
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = fmul fast float %3040, 0x3F70101020000000
  %3042 = lshr i32 %3038, 8
  %3043 = and i32 %3042, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = fmul fast float %3044, 0x3F70101020000000
  %3046 = lshr i32 %3038, 16
  %3047 = and i32 %3046, 255
  %3048 = uitofp i32 %3047 to float
  %3049 = fmul fast float %3048, 0x3F70101020000000
  %3050 = fmul fast float %3041, %3041
  %3051 = fmul fast float %3045, %3045
  %3052 = fmul fast float %3049, %3049
  %3053 = add i32 %56, 512
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3057, %dx.types.Handle %99, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.ResRet.f32 %3058, 1
  %3061 = extractvalue %dx.types.ResRet.f32 %3058, 2
  %3062 = fmul fast float %3050, %3059
  %3063 = fmul fast float %3051, %3060
  %3064 = fmul fast float %3052, %3061
  br label %3065

; <label>:3065                                    ; preds = %3035, %3027
  %3066 = phi float [ %3062, %3035 ], [ 0.000000e+00, %3027 ]
  %3067 = phi float [ %3063, %3035 ], [ 0.000000e+00, %3027 ]
  %3068 = phi float [ %3064, %3035 ], [ 0.000000e+00, %3027 ]
  %3069 = fcmp fast ogt float %3066, 0.000000e+00
  %3070 = fcmp fast ogt float %3067, 0.000000e+00
  %3071 = fcmp fast ogt float %3068, 0.000000e+00
  %3072 = call float @dx.op.unary.f32(i32 23, float %3066)  ; Log(value)
  %3073 = call float @dx.op.unary.f32(i32 23, float %3067)  ; Log(value)
  %3074 = call float @dx.op.unary.f32(i32 23, float %3068)  ; Log(value)
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = lshr i32 %3076, 7
  %3078 = and i32 %3077, 32752
  %3079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3078)  ; LegacyF16ToF32(value)
  %3080 = fmul fast float %3072, 0xBFE62E4300000000
  %3081 = fmul fast float %3080, %3079
  %3082 = fmul fast float %3073, 0xBFE62E4300000000
  %3083 = fmul fast float %3082, %3079
  %3084 = fmul fast float %3074, 0xBFE62E4300000000
  %3085 = fmul fast float %3084, %3079
  %3086 = select i1 %3069, float %3081, float 1.270000e+02
  %3087 = select i1 %3070, float %3083, float 1.270000e+02
  %3088 = select i1 %3071, float %3085, float 1.270000e+02
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 26624
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3150, label %3093

; <label>:3093                                    ; preds = %3065
  %3094 = add i32 %56, 528
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3098, %dx.types.Handle %99, float %2492, float %2493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = extractvalue %dx.types.ResRet.f32 %3099, 1
  %3102 = extractvalue %dx.types.ResRet.f32 %3099, 3
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 1048576
  %3106 = icmp ne i32 %3105, 0
  %3107 = and i32 %3104, 8192
  %3108 = icmp eq i32 %3107, 0
  br i1 %3108, label %3123, label %3109

; <label>:3109                                    ; preds = %3093
  %3110 = extractvalue %dx.types.ResRet.f32 %3099, 2
  %3111 = select i1 %3106, float %3110, float %3101
  %3112 = select i1 %3106, float %3100, float %3101
  %3113 = add i32 %56, 128
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = lshr i32 %3115, 16
  %3117 = and i32 %3116, 255
  %3118 = uitofp i32 %3117 to float
  %3119 = fmul fast float %3118, 0x3F80101020000000
  %3120 = fmul fast float %3119, %3112
  %3121 = fmul fast float %3119, %3101
  %3122 = fmul fast float %3119, %3111
  br label %3123

; <label>:3123                                    ; preds = %3109, %3093
  %3124 = phi float [ %3120, %3109 ], [ 0.000000e+00, %3093 ]
  %3125 = phi float [ %3121, %3109 ], [ 0.000000e+00, %3093 ]
  %3126 = phi float [ %3122, %3109 ], [ 0.000000e+00, %3093 ]
  %3127 = and i32 %3104, 2048
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3137, label %3129

; <label>:3129                                    ; preds = %3123
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = shl i32 %3131, 4
  %3133 = and i32 %3132, 32752
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = fmul fast float %3134, %3102
  %3136 = call float @dx.op.binary.f32(i32 35, float %3135, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3137

; <label>:3137                                    ; preds = %3129, %3123
  %3138 = phi float [ %3136, %3129 ], [ 0x3F70101020000000, %3123 ]
  %3139 = and i32 %3104, 16384
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3150, label %3141

; <label>:3141                                    ; preds = %3137
  %3142 = add i32 %56, 128
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = lshr i32 %3144, 24
  %3146 = uitofp i32 %3145 to float
  %3147 = fmul fast float %3100, 0x3F70101020000000
  %3148 = select i1 %3106, float 0x3F70101020000000, float %3147
  %3149 = fmul fast float %3148, %3146
  br label %3150

; <label>:3150                                    ; preds = %3141, %3137, %3065
  %3151 = phi float [ %3124, %3141 ], [ %3124, %3137 ], [ 0.000000e+00, %3065 ]
  %3152 = phi float [ %3125, %3141 ], [ %3125, %3137 ], [ 0.000000e+00, %3065 ]
  %3153 = phi float [ %3126, %3141 ], [ %3126, %3137 ], [ 0.000000e+00, %3065 ]
  %3154 = phi float [ %3138, %3141 ], [ %3138, %3137 ], [ 0x3F70101020000000, %3065 ]
  %3155 = phi float [ %3149, %3141 ], [ 0.000000e+00, %3137 ], [ 0.000000e+00, %3065 ]
  %3156 = add i32 %56, 128
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3158, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2901, float %2902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = fmul fast float %3163, %3164
  %3166 = fadd fast float %3165, %3160
  %3167 = fmul fast float %3166, 0x3F70101020000000
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  br i1 %2384, label %3169, label %3204

; <label>:3169                                    ; preds = %3150
  %3170 = fmul fast float %3154, 2.000000e+00
  %3171 = fcmp fast olt float %3086, 1.270000e+02
  %3172 = fcmp fast olt float %3087, 1.270000e+02
  %3173 = fcmp fast olt float %3088, 1.270000e+02
  %3174 = fmul fast float %3086, 0xBFF7154760000000
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %3087, 0xBFF7154760000000
  %3177 = fmul fast float %3176, %3170
  %3178 = fmul fast float %3088, 0xBFF7154760000000
  %3179 = fmul fast float %3178, %3170
  %3180 = call float @dx.op.unary.f32(i32 21, float %3175)  ; Exp(value)
  %3181 = call float @dx.op.unary.f32(i32 21, float %3177)  ; Exp(value)
  %3182 = call float @dx.op.unary.f32(i32 21, float %3179)  ; Exp(value)
  %3183 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3184 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3185 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3186 = fadd fast float %3183, -1.000000e+00
  %3187 = select i1 %3171, float %3186, float -1.000000e+00
  %3188 = fadd fast float %3184, -1.000000e+00
  %3189 = select i1 %3172, float %3188, float -1.000000e+00
  %3190 = fadd fast float %3185, -1.000000e+00
  %3191 = select i1 %3173, float %3190, float -1.000000e+00
  %3192 = fmul fast float %3187, %2680
  %3193 = fmul fast float %3189, %2680
  %3194 = fmul fast float %3191, %2680
  %3195 = fadd fast float %3192, 1.000000e+00
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fmul fast float %3195, %2365
  %3199 = fmul fast float %3196, %2366
  %3200 = fmul fast float %3197, %2367
  %3201 = fmul fast float %3195, %2368
  %3202 = fmul fast float %3196, %2369
  %3203 = fmul fast float %3197, %2370
  br label %3204

; <label>:3204                                    ; preds = %3169, %3150
  %3205 = phi float [ %3198, %3169 ], [ %2365, %3150 ]
  %3206 = phi float [ %3199, %3169 ], [ %2366, %3150 ]
  %3207 = phi float [ %3200, %3169 ], [ %2367, %3150 ]
  %3208 = phi float [ %3201, %3169 ], [ %2368, %3150 ]
  %3209 = phi float [ %3202, %3169 ], [ %2369, %3150 ]
  %3210 = phi float [ %3203, %3169 ], [ %2370, %3150 ]
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 3
  %3214 = icmp eq i32 %3213, 3
  br i1 %3214, label %3293, label %3215

; <label>:3215                                    ; preds = %3204
  %3216 = and i32 %3212, 16
  %3217 = icmp ne i32 %3216, 0
  %3218 = select i1 %3217, float %2680, float 0.000000e+00
  %3219 = icmp eq i32 %3213, 0
  br i1 %3219, label %3220, label %3248

; <label>:3220                                    ; preds = %3215
  %3221 = and i32 %3212, 64
  %3222 = icmp ne i32 %3221, 0
  %3223 = select i1 %3222, float %2680, float 0.000000e+00
  %3224 = fsub fast float %2900, %3205
  %3225 = fsub fast float %2901, %3206
  %3226 = fsub fast float %2902, %3207
  %3227 = fmul fast float %3218, %3224
  %3228 = fmul fast float %3218, %3225
  %3229 = fmul fast float %3218, %3226
  %3230 = fadd fast float %3227, %3205
  %3231 = fadd fast float %3228, %3206
  %3232 = fadd fast float %3229, %3207
  %3233 = fsub fast float %2886, %2377
  %3234 = fmul fast float %3218, %3233
  %3235 = fadd fast float %3234, %2377
  %3236 = fsub fast float %3028, %3208
  %3237 = fsub fast float %3029, %3209
  %3238 = fsub fast float %3030, %3210
  %3239 = fmul fast float %3223, %3236
  %3240 = fmul fast float %3223, %3237
  %3241 = fmul fast float %3223, %3238
  %3242 = fadd fast float %3239, %3208
  %3243 = fadd fast float %3240, %3209
  %3244 = fadd fast float %3241, %3210
  %3245 = fsub fast float %3168, %2382
  %3246 = fmul fast float %3218, %3245
  %3247 = fadd fast float %3246, %2382
  br label %3293

; <label>:3248                                    ; preds = %3215
  %3249 = icmp eq i32 %3213, 1
  br i1 %3249, label %3250, label %3263

; <label>:3250                                    ; preds = %3248
  %3251 = fadd fast float %2900, -1.000000e+00
  %3252 = fadd fast float %2901, -1.000000e+00
  %3253 = fadd fast float %2902, -1.000000e+00
  %3254 = fmul fast float %3218, %3251
  %3255 = fmul fast float %3218, %3252
  %3256 = fmul fast float %3218, %3253
  %3257 = fadd fast float %3254, 1.000000e+00
  %3258 = fadd fast float %3255, 1.000000e+00
  %3259 = fadd fast float %3256, 1.000000e+00
  %3260 = fmul fast float %3257, %3205
  %3261 = fmul fast float %3258, %3206
  %3262 = fmul fast float %3259, %3207
  br label %3293

; <label>:3263                                    ; preds = %3248
  %3264 = icmp eq i32 %3213, 2
  br i1 %3264, label %3265, label %3293

; <label>:3265                                    ; preds = %3263
  %3266 = call float @dx.op.unary.f32(i32 24, float %2900)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %2901)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %2902)  ; Sqrt(value)
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fmul fast float %3269, %3218
  %3273 = fmul fast float %3270, %3218
  %3274 = fmul fast float %3271, %3218
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = fmul fast float %3275, 2.000000e+00
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3279, %3205
  %3281 = fadd fast float %3280, %3278
  %3282 = fmul fast float %3281, %3205
  %3283 = fmul fast float %3276, 2.000000e+00
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = fmul fast float %3284, %3206
  %3286 = fadd fast float %3285, %3283
  %3287 = fmul fast float %3286, %3206
  %3288 = fmul fast float %3277, 2.000000e+00
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3289, %3207
  %3291 = fadd fast float %3290, %3288
  %3292 = fmul fast float %3291, %3207
  br label %3293

; <label>:3293                                    ; preds = %3265, %3263, %3250, %3220, %3204
  %3294 = phi float [ %3205, %3204 ], [ %3282, %3265 ], [ %3205, %3263 ], [ %3260, %3250 ], [ %3230, %3220 ]
  %3295 = phi float [ %3206, %3204 ], [ %3287, %3265 ], [ %3206, %3263 ], [ %3261, %3250 ], [ %3231, %3220 ]
  %3296 = phi float [ %3207, %3204 ], [ %3292, %3265 ], [ %3207, %3263 ], [ %3262, %3250 ], [ %3232, %3220 ]
  %3297 = phi float [ %3208, %3204 ], [ %3208, %3265 ], [ %3208, %3263 ], [ %3208, %3250 ], [ %3242, %3220 ]
  %3298 = phi float [ %3209, %3204 ], [ %3209, %3265 ], [ %3209, %3263 ], [ %3209, %3250 ], [ %3243, %3220 ]
  %3299 = phi float [ %3210, %3204 ], [ %3210, %3265 ], [ %3210, %3263 ], [ %3210, %3250 ], [ %3244, %3220 ]
  %3300 = phi float [ %2377, %3204 ], [ %2377, %3265 ], [ %2377, %3263 ], [ %2377, %3250 ], [ %3235, %3220 ]
  %3301 = phi float [ %2382, %3204 ], [ %2382, %3265 ], [ %2382, %3263 ], [ %2382, %3250 ], [ %3247, %3220 ]
  %3302 = and i32 %3212, 12
  %3303 = icmp eq i32 %3302, 12
  br i1 %3303, label %3444, label %3304

; <label>:3304                                    ; preds = %3293
  %3305 = and i32 %3212, 2097184
  %3306 = icmp eq i32 %3305, 2097184
  %3307 = select i1 %3306, float %2680, float 0.000000e+00
  %3308 = and i32 %3212, 4194336
  %3309 = icmp eq i32 %3308, 4194336
  %3310 = select i1 %3309, float %2680, float 0.000000e+00
  %3311 = and i32 %3212, 8388640
  %3312 = icmp eq i32 %3311, 8388640
  %3313 = select i1 %3312, float %2680, float 0.000000e+00
  %3314 = and i32 %3212, 1024
  %3315 = icmp ne i32 %3314, 0
  %3316 = select i1 %3315, float %2680, float 0.000000e+00
  %3317 = and i32 %3212, 2048
  %3318 = icmp ne i32 %3317, 0
  %3319 = select i1 %3318, float %2680, float 0.000000e+00
  %3320 = and i32 %3212, 8192
  %3321 = icmp ne i32 %3320, 0
  %3322 = select i1 %3321, float %2680, float 0.000000e+00
  %3323 = and i32 %3212, 16384
  %3324 = icmp ne i32 %3323, 0
  %3325 = select i1 %3324, float %2680, float 0.000000e+00
  %3326 = icmp eq i32 %3302, 0
  br i1 %3326, label %3327, label %3364

; <label>:3327                                    ; preds = %3304
  %3328 = fsub fast float %2981, %2363
  %3329 = fsub fast float %2982, %2364
  %3330 = fmul fast float %3307, %3328
  %3331 = fmul fast float %3307, %3329
  %3332 = fadd fast float %3330, %2363
  %3333 = fadd fast float %3331, %2364
  %3334 = fsub fast float %2983, %2379
  %3335 = fmul fast float %3310, %3334
  %3336 = fadd fast float %3335, %2379
  %3337 = fsub fast float %2980, %2378
  %3338 = fmul fast float %3313, %3337
  %3339 = fadd fast float %3338, %2378
  %3340 = fsub fast float %3086, %2374
  %3341 = fsub fast float %3087, %2375
  %3342 = fsub fast float %3088, %2376
  %3343 = fmul fast float %3316, %3340
  %3344 = fmul fast float %3316, %3341
  %3345 = fmul fast float %3316, %3342
  %3346 = fadd fast float %3343, %2374
  %3347 = fadd fast float %3344, %2375
  %3348 = fadd fast float %3345, %2376
  %3349 = fsub fast float %3154, %2380
  %3350 = fmul fast float %3319, %3349
  %3351 = fadd fast float %3350, %2380
  %3352 = fsub fast float %3151, %2371
  %3353 = fsub fast float %3152, %2372
  %3354 = fsub fast float %3153, %2373
  %3355 = fmul fast float %3322, %3352
  %3356 = fmul fast float %3322, %3353
  %3357 = fmul fast float %3322, %3354
  %3358 = fadd fast float %3355, %2371
  %3359 = fadd fast float %3356, %2372
  %3360 = fadd fast float %3357, %2373
  %3361 = fsub fast float %3155, %2381
  %3362 = fmul fast float %3325, %3361
  %3363 = fadd fast float %3362, %2381
  br label %3444

; <label>:3364                                    ; preds = %3304
  %3365 = icmp eq i32 %3302, 4
  br i1 %3365, label %3366, label %3414

; <label>:3366                                    ; preds = %3364
  %3367 = fmul fast float %3307, %2981
  %3368 = fmul fast float %3307, %2982
  %3369 = fadd fast float %3367, %2363
  %3370 = fadd fast float %3368, %2364
  %3371 = call float @dx.op.binary.f32(i32 36, float %2379, float %2983)  ; FMin(a,b)
  %3372 = fsub fast float %3371, %2379
  %3373 = fmul fast float %3372, %3310
  %3374 = fadd fast float %3373, %2379
  %3375 = fadd fast float %2980, %2378
  %3376 = fmul fast float %3375, 0x3FF337FAE0000000
  %3377 = fmul fast float %2378, %2378
  %3378 = fmul fast float %2980, %2980
  %3379 = fadd fast float %3378, %3377
  %3380 = fmul fast float %3379, 0x3FE5152B00000000
  %3381 = fmul fast float %2378, 0xBFCC1F85E0000000
  %3382 = fmul fast float %3381, %2980
  %3383 = fadd fast float %3382, 0xBFE1363700000000
  %3384 = fadd fast float %3383, %3376
  %3385 = fsub fast float %3384, %3380
  %3386 = fmul fast float %3375, 0x3FBA6F0D00000000
  %3387 = fmul fast float %3379, 0x3FD0432880000000
  %3388 = fmul fast float %2378, 0xBFEF110800000000
  %3389 = fmul fast float %3388, %2980
  %3390 = fadd fast float %3389, 1.000000e+00
  %3391 = fsub fast float %3390, %3386
  %3392 = fadd fast float %3391, %3387
  %3393 = fdiv fast float %3385, %3392
  %3394 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3395 = fsub fast float %3394, %2378
  %3396 = fmul fast float %3395, %3313
  %3397 = fadd fast float %3396, %2378
  %3398 = fmul fast float %3316, %3086
  %3399 = fmul fast float %3316, %3087
  %3400 = fmul fast float %3316, %3088
  %3401 = fadd fast float %3398, %2374
  %3402 = fadd fast float %3399, %2375
  %3403 = fadd fast float %3400, %2376
  %3404 = fmul fast float %3319, %3154
  %3405 = fadd fast float %3404, %2380
  %3406 = fmul fast float %3322, %3151
  %3407 = fmul fast float %3322, %3152
  %3408 = fmul fast float %3322, %3153
  %3409 = fadd fast float %3406, %2371
  %3410 = fadd fast float %3407, %2372
  %3411 = fadd fast float %3408, %2373
  %3412 = fmul fast float %3325, %3155
  %3413 = fadd fast float %3412, %2381
  br label %3444

; <label>:3414                                    ; preds = %3364
  %3415 = icmp eq i32 %3302, 8
  br i1 %3415, label %3416, label %3444

; <label>:3416                                    ; preds = %3414
  %3417 = fmul fast float %3307, %2981
  %3418 = fmul fast float %3307, %2982
  %3419 = fadd fast float %3417, %2363
  %3420 = fadd fast float %3418, %2364
  %3421 = call float @dx.op.binary.f32(i32 36, float %2379, float %2983)  ; FMin(a,b)
  %3422 = fsub fast float %3421, %2379
  %3423 = fmul fast float %3422, %3310
  %3424 = fadd fast float %3423, %2379
  %3425 = fsub fast float %2980, %2378
  %3426 = fmul fast float %3313, %3425
  %3427 = fadd fast float %3426, %2378
  %3428 = fmul fast float %3316, %3086
  %3429 = fmul fast float %3316, %3087
  %3430 = fmul fast float %3316, %3088
  %3431 = fadd fast float %3428, %2374
  %3432 = fadd fast float %3429, %2375
  %3433 = fadd fast float %3430, %2376
  %3434 = fmul fast float %3319, %3154
  %3435 = fadd fast float %3434, %2380
  %3436 = fmul fast float %3322, %3151
  %3437 = fmul fast float %3322, %3152
  %3438 = fmul fast float %3322, %3153
  %3439 = fadd fast float %3436, %2371
  %3440 = fadd fast float %3437, %2372
  %3441 = fadd fast float %3438, %2373
  %3442 = fmul fast float %3325, %3155
  %3443 = fadd fast float %3442, %2381
  br label %3444

; <label>:3444                                    ; preds = %3416, %3414, %3366, %3327, %3293, %2679, %2383, %2362
  %3445 = phi float [ %2363, %3293 ], [ %2363, %2679 ], [ %2363, %2362 ], [ %3419, %3416 ], [ %2363, %3414 ], [ %3369, %3366 ], [ %3332, %3327 ], [ %2363, %2383 ]
  %3446 = phi float [ %2364, %3293 ], [ %2364, %2679 ], [ %2364, %2362 ], [ %3420, %3416 ], [ %2364, %3414 ], [ %3370, %3366 ], [ %3333, %3327 ], [ %2364, %2383 ]
  %3447 = phi float [ %3294, %3293 ], [ %2365, %2679 ], [ %2365, %2362 ], [ %3294, %3416 ], [ %3294, %3414 ], [ %3294, %3366 ], [ %3294, %3327 ], [ %2365, %2383 ]
  %3448 = phi float [ %3295, %3293 ], [ %2366, %2679 ], [ %2366, %2362 ], [ %3295, %3416 ], [ %3295, %3414 ], [ %3295, %3366 ], [ %3295, %3327 ], [ %2366, %2383 ]
  %3449 = phi float [ %3296, %3293 ], [ %2367, %2679 ], [ %2367, %2362 ], [ %3296, %3416 ], [ %3296, %3414 ], [ %3296, %3366 ], [ %3296, %3327 ], [ %2367, %2383 ]
  %3450 = phi float [ %3297, %3293 ], [ %2368, %2679 ], [ %2368, %2362 ], [ %3297, %3416 ], [ %3297, %3414 ], [ %3297, %3366 ], [ %3297, %3327 ], [ %2368, %2383 ]
  %3451 = phi float [ %3298, %3293 ], [ %2369, %2679 ], [ %2369, %2362 ], [ %3298, %3416 ], [ %3298, %3414 ], [ %3298, %3366 ], [ %3298, %3327 ], [ %2369, %2383 ]
  %3452 = phi float [ %3299, %3293 ], [ %2370, %2679 ], [ %2370, %2362 ], [ %3299, %3416 ], [ %3299, %3414 ], [ %3299, %3366 ], [ %3299, %3327 ], [ %2370, %2383 ]
  %3453 = phi float [ %2371, %3293 ], [ %2371, %2679 ], [ %2371, %2362 ], [ %3439, %3416 ], [ %2371, %3414 ], [ %3409, %3366 ], [ %3358, %3327 ], [ %2371, %2383 ]
  %3454 = phi float [ %2372, %3293 ], [ %2372, %2679 ], [ %2372, %2362 ], [ %3440, %3416 ], [ %2372, %3414 ], [ %3410, %3366 ], [ %3359, %3327 ], [ %2372, %2383 ]
  %3455 = phi float [ %2373, %3293 ], [ %2373, %2679 ], [ %2373, %2362 ], [ %3441, %3416 ], [ %2373, %3414 ], [ %3411, %3366 ], [ %3360, %3327 ], [ %2373, %2383 ]
  %3456 = phi float [ %2374, %3293 ], [ %2374, %2679 ], [ %2374, %2362 ], [ %3431, %3416 ], [ %2374, %3414 ], [ %3401, %3366 ], [ %3346, %3327 ], [ %2374, %2383 ]
  %3457 = phi float [ %2375, %3293 ], [ %2375, %2679 ], [ %2375, %2362 ], [ %3432, %3416 ], [ %2375, %3414 ], [ %3402, %3366 ], [ %3347, %3327 ], [ %2375, %2383 ]
  %3458 = phi float [ %2376, %3293 ], [ %2376, %2679 ], [ %2376, %2362 ], [ %3433, %3416 ], [ %2376, %3414 ], [ %3403, %3366 ], [ %3348, %3327 ], [ %2376, %2383 ]
  %3459 = phi float [ %3300, %3293 ], [ %2377, %2679 ], [ %2377, %2362 ], [ %3300, %3416 ], [ %3300, %3414 ], [ %3300, %3366 ], [ %3300, %3327 ], [ %2377, %2383 ]
  %3460 = phi float [ %2378, %3293 ], [ %2378, %2679 ], [ %2378, %2362 ], [ %3427, %3416 ], [ %2378, %3414 ], [ %3397, %3366 ], [ %3339, %3327 ], [ %2378, %2383 ]
  %3461 = phi float [ %2379, %3293 ], [ %2379, %2679 ], [ %2379, %2362 ], [ %3424, %3416 ], [ %2379, %3414 ], [ %3374, %3366 ], [ %3336, %3327 ], [ %2379, %2383 ]
  %3462 = phi float [ %2380, %3293 ], [ %2380, %2679 ], [ %2380, %2362 ], [ %3435, %3416 ], [ %2380, %3414 ], [ %3405, %3366 ], [ %3351, %3327 ], [ %2380, %2383 ]
  %3463 = phi float [ %2381, %3293 ], [ %2381, %2679 ], [ %2381, %2362 ], [ %3443, %3416 ], [ %2381, %3414 ], [ %3413, %3366 ], [ %3363, %3327 ], [ %2381, %2383 ]
  %3464 = phi float [ %3301, %3293 ], [ %2382, %2679 ], [ %2382, %2362 ], [ %3301, %3416 ], [ %3301, %3414 ], [ %3301, %3366 ], [ %3301, %3327 ], [ %2382, %2383 ]
  br i1 %442, label %4526, label %3465

; <label>:3465                                    ; preds = %3444
  %3466 = icmp ult i32 %496, 4
  %3467 = add i32 %56, 72
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %56, 76
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = or i32 %3472, %3469
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %4526, label %3475

; <label>:3475                                    ; preds = %3465
  %3476 = and i32 %3469, 262144
  %3477 = icmp ne i32 %3476, 0
  %3478 = select i1 %3477, float %59, float 1.000000e+00
  %3479 = select i1 %3477, float %60, float 0.000000e+00
  %3480 = select i1 %3477, float %61, float 0.000000e+00
  %3481 = select i1 %3477, float %62, float 1.000000e+00
  %3482 = select i1 %3477, float %63, float %84
  %3483 = select i1 %3477, float %64, float %85
  %3484 = add i32 %56, 332
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = lshr i32 %3486, 16
  %3488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3487)  ; LegacyF16ToF32(value)
  %3489 = fmul fast float %3488, 0x3F50624DE0000000
  %3490 = add i32 %56, 136
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = lshr i32 %3492, 16
  %3494 = and i32 %3493, 255
  %3495 = lshr i32 %3492, 24
  %3496 = add i32 %56, 340
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %3498, 65535
  %3500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3499)  ; LegacyF16ToF32(value)
  %3501 = lshr i32 %3498, 16
  %3502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3501)  ; LegacyF16ToF32(value)
  %3503 = add i32 %56, 80
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = lshr i32 %3505, 22
  %3507 = shl nuw nsw i32 %3506, 5
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = shl i32 %3505, 4
  %3510 = and i32 %3509, 32752
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = lshr i32 %3505, 7
  %3513 = and i32 %3512, 32752
  %3514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3513)  ; LegacyF16ToF32(value)
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 3
  %3517 = fmul fast float %3516, 1.000000e+03
  %3518 = fmul fast float %432, %3517
  %3519 = call float @dx.op.unary.f32(i32 22, float %3518)  ; Frc(value)
  %3520 = fadd fast float %3519, %422
  %3521 = fmul fast float %433, %3517
  %3522 = call float @dx.op.unary.f32(i32 22, float %3521)  ; Frc(value)
  %3523 = fadd fast float %3522, %424
  %3524 = fmul fast float %3489, %3517
  %3525 = call float @dx.op.unary.f32(i32 22, float %3524)  ; Frc(value)
  %3526 = fmul fast float %3525, 0x401921FB60000000
  %3527 = fadd fast float %3526, %3508
  %3528 = call float @dx.op.unary.f32(i32 13, float %3527)  ; Sin(value)
  %3529 = call float @dx.op.unary.f32(i32 12, float %3527)  ; Cos(value)
  %3530 = fsub fast float -0.000000e+00, %3528
  %3531 = fadd fast float %3482, -5.000000e-01
  %3532 = fadd fast float %3483, -5.000000e-01
  %3533 = fmul fast float %3500, %3531
  %3534 = fmul fast float %3502, %3532
  %3535 = fadd fast float %3533, 5.000000e-01
  %3536 = fadd fast float %3534, 5.000000e-01
  %3537 = fmul fast float %3511, %3535
  %3538 = fmul fast float %3514, %3536
  %3539 = fmul fast float %3529, %3537
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3538, float %3539)  ; FMad(a,b,c)
  %3541 = fmul fast float %3528, %3537
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3529, float %3538, float %3541)  ; FMad(a,b,c)
  %3543 = fadd fast float %3520, %3540
  %3544 = fadd fast float %3523, %3542
  %3545 = icmp ugt i32 %3494, 1
  %3546 = icmp ugt i32 %3492, 33554431
  %3547 = or i1 %3546, %3545
  br i1 %3547, label %3548, label %3573

; <label>:3548                                    ; preds = %3475
  %3549 = add i32 %56, 276
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = lshr i32 %3551, 16
  %3553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3552)  ; LegacyF16ToF32(value)
  %3554 = fmul fast float %3516, %3553
  %3555 = call float @dx.op.unary.f32(i32 22, float %3554)  ; Frc(value)
  %3556 = mul nuw nsw i32 %3494, %3495
  %3557 = uitofp i32 %3556 to float
  %3558 = fmul fast float %3555, %3557
  %3559 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3560 = fptoui float %3559 to i32
  %3561 = urem i32 %3560, %3494
  %3562 = udiv i32 %3560, %3495
  %3563 = call float @dx.op.unary.f32(i32 22, float %3543)  ; Frc(value)
  %3564 = call float @dx.op.unary.f32(i32 22, float %3544)  ; Frc(value)
  %3565 = uitofp i32 %3561 to float
  %3566 = uitofp i32 %3562 to float
  %3567 = fadd fast float %3563, %3565
  %3568 = fadd fast float %3564, %3566
  %3569 = uitofp i32 %3494 to float
  %3570 = uitofp i32 %3495 to float
  %3571 = fdiv fast float %3567, %3569
  %3572 = fdiv fast float %3568, %3570
  br label %3573

; <label>:3573                                    ; preds = %3548, %3475
  %3574 = phi float [ %3571, %3548 ], [ %3543, %3475 ]
  %3575 = phi float [ %3572, %3548 ], [ %3544, %3475 ]
  %3576 = and i32 %3469, 16777216
  %3577 = icmp eq i32 %3576, 0
  br i1 %3577, label %3687, label %3578

; <label>:3578                                    ; preds = %3573
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.CBufRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3583 = fadd fast float %3580, %157
  %3584 = fadd fast float %3581, %158
  %3585 = fadd fast float %3582, %159
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 0
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = icmp eq i32 %57, 65535
  br i1 %3589, label %3684, label %3590

; <label>:3590                                    ; preds = %3578
  %3591 = lshr i32 %57, 1
  %3592 = shl i32 %3591, 2
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %57, 1
  %3596 = icmp ne i32 %3595, 0
  %3597 = lshr i32 %3594, 16
  %3598 = and i32 %3594, 65535
  %3599 = select i1 %3596, i32 %3597, i32 %3598
  %3600 = icmp eq i32 %3599, 65535
  br i1 %3600, label %3680, label %3601

; <label>:3601                                    ; preds = %3590
  %3602 = mul nuw nsw i32 %3599, 40
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = add nuw nsw i32 %3602, 12
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = add nuw nsw i32 %3602, 24
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = add nuw nsw i32 %3602, 36
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = fsub fast float %3583, %3604
  %3621 = fsub fast float %3584, %3605
  %3622 = fsub fast float %3585, %3606
  %3623 = fmul fast float %3619, %3620
  %3624 = fmul fast float %3619, %3621
  %3625 = fmul fast float %3619, %3622
  %3626 = call float @dx.op.unary.f32(i32 27, float %3623)  ; Round_ni(value)
  %3627 = call float @dx.op.unary.f32(i32 27, float %3624)  ; Round_ni(value)
  %3628 = call float @dx.op.unary.f32(i32 27, float %3625)  ; Round_ni(value)
  %3629 = fadd fast float %3626, 5.000000e-01
  %3630 = fadd fast float %3627, 5.000000e-01
  %3631 = fadd fast float %3628, 5.000000e-01
  %3632 = fmul fast float %3629, %3609
  %3633 = fmul fast float %3630, %3610
  %3634 = fmul fast float %3631, %3611
  %3635 = shl i32 %57, 2
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = add i32 %3637, 0
  %3639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3640 = call float @dx.op.unary.f32(i32 22, float %3632)  ; Frc(value)
  %3641 = call float @dx.op.unary.f32(i32 22, float %3633)  ; Frc(value)
  %3642 = call float @dx.op.unary.f32(i32 22, float %3634)  ; Frc(value)
  %3643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3639, %dx.types.Handle %51, float %3640, float %3641, float %3642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = fmul fast float %3644, 1.023000e+03
  %3648 = fmul fast float %3645, 1.023000e+03
  %3649 = fmul fast float %3646, 1.023000e+03
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fadd fast float %3649, 5.000000e-01
  %3653 = call float @dx.op.unary.f32(i32 27, float %3650)  ; Round_ni(value)
  %3654 = call float @dx.op.unary.f32(i32 27, float %3651)  ; Round_ni(value)
  %3655 = call float @dx.op.unary.f32(i32 27, float %3652)  ; Round_ni(value)
  %3656 = fsub fast float %3623, %3626
  %3657 = fsub fast float %3624, %3627
  %3658 = fsub fast float %3625, %3628
  %3659 = fmul fast float %3656, 7.500000e-01
  %3660 = fmul fast float %3657, 7.500000e-01
  %3661 = fmul fast float %3658, 7.500000e-01
  %3662 = fadd fast float %3626, 1.250000e-01
  %3663 = fadd fast float %3662, %3659
  %3664 = fadd fast float %3663, %3653
  %3665 = fadd fast float %3627, 1.250000e-01
  %3666 = fadd fast float %3665, %3660
  %3667 = fadd fast float %3666, %3654
  %3668 = fadd fast float %3628, 1.250000e-01
  %3669 = fadd fast float %3668, %3661
  %3670 = fadd fast float %3669, %3655
  %3671 = fmul fast float %3664, %3614
  %3672 = fmul fast float %3667, %3615
  %3673 = fmul fast float %3670, %3616
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = add i32 %3675, 0
  %3677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3677, %dx.types.Handle %49, float %3671, float %3672, float %3673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  br label %3680

; <label>:3680                                    ; preds = %3601, %3590
  %3681 = phi float [ %3679, %3601 ], [ -1.000000e+00, %3590 ]
  %3682 = fadd fast float %3681, %3588
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  br label %3684

; <label>:3684                                    ; preds = %3680, %3578
  %3685 = phi float [ %3683, %3680 ], [ %3588, %3578 ]
  %3686 = fmul fast float %3685, %491
  br label %3687

; <label>:3687                                    ; preds = %3684, %3573
  %3688 = phi float [ %3686, %3684 ], [ %491, %3573 ]
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 256
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3739, label %3693

; <label>:3693                                    ; preds = %3687
  %3694 = add i32 %56, 484
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3696, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3698, %dx.types.Handle %99, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = add i32 %56, 148
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = shl i32 %3703, 4
  %3705 = and i32 %3704, 32752
  %3706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3705)  ; LegacyF16ToF32(value)
  %3707 = lshr i32 %3703, 7
  %3708 = and i32 %3707, 32752
  %3709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3708)  ; LegacyF16ToF32(value)
  %3710 = fsub fast float 1.000000e+00, %3688
  %3711 = call float @dx.op.binary.f32(i32 35, float %3710, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3712 = bitcast float %3688 to i32
  %3713 = sitofp i32 %3712 to float
  %3714 = fadd fast float %3713, 0xC1CFBF8940000000
  %3715 = fmul fast float %3709, %3714
  %3716 = fadd fast float %3715, 0x41CFBF8940000000
  %3717 = fptosi float %3716 to i32
  %3718 = bitcast i32 %3717 to float
  %3719 = bitcast float %3711 to i32
  %3720 = sitofp i32 %3719 to float
  %3721 = fadd fast float %3720, 0xC1CFBF8940000000
  %3722 = fmul fast float %3721, %3709
  %3723 = fadd fast float %3722, 0x41CFBF8940000000
  %3724 = fptosi float %3723 to i32
  %3725 = bitcast i32 %3724 to float
  %3726 = fmul fast float %3718, %3706
  %3727 = fmul fast float %3725, %3706
  %3728 = fsub fast float %3711, %3726
  %3729 = fadd fast float %3727, %3711
  %3730 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3732 = fsub fast float %3700, %3730
  %3733 = fsub fast float %3731, %3730
  %3734 = bitcast float %3733 to i32
  %3735 = sub nsw i32 2129859010, %3734
  %3736 = bitcast i32 %3735 to float
  %3737 = fmul fast float %3736, %3732
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  br label %3739

; <label>:3739                                    ; preds = %3693, %3687
  %3740 = phi float [ %3738, %3693 ], [ %3688, %3687 ]
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 128
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3761, label %3745

; <label>:3745                                    ; preds = %3739
  %3746 = add i32 %56, 468
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = add i32 %3748, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3750, %dx.types.Handle %99, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = and i32 %3754, 524288
  %3756 = icmp ne i32 %3755, 0
  %3757 = fcmp fast ogt float %3752, 0x3FE0101020000000
  %3758 = select i1 %3757, float 1.000000e+00, float 0.000000e+00
  %3759 = select i1 %3756, float %3758, float %3752
  %3760 = fmul fast float %3759, %3740
  br label %3761

; <label>:3761                                    ; preds = %3745, %3739
  %3762 = phi float [ %3760, %3745 ], [ %3740, %3739 ]
  %3763 = fcmp fast ult float %3762, 0x3F70101020000000
  br i1 %3763, label %4526, label %3764

; <label>:3764                                    ; preds = %3761
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 16
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %3967, label %3769

; <label>:3769                                    ; preds = %3764
  %3770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.i32 %3770, 0
  %3772 = add i32 %56, 420
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = add i32 %3774, 0
  %3776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3776, %dx.types.Handle %98, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.ResRet.f32 %3777, 1
  %3780 = extractvalue %dx.types.ResRet.f32 %3777, 2
  %3781 = extractvalue %dx.types.ResRet.f32 %3777, 3
  %3782 = and i32 %3771, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = lshr i32 %3771, 8
  %3785 = and i32 %3784, 255
  %3786 = uitofp i32 %3785 to float
  %3787 = fmul fast float %3781, %3783
  %3788 = fadd fast float %3787, %3786
  %3789 = fmul fast float %3788, 0x3F70101000000000
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = and i32 %3791, 512
  %3793 = icmp eq i32 %3792, 0
  br i1 %3793, label %3802, label %3794

; <label>:3794                                    ; preds = %3769
  %3795 = add i32 %56, 500
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = add i32 %3797, 0
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3799, %dx.types.Handle %99, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  br label %3802

; <label>:3802                                    ; preds = %3794, %3769
  %3803 = phi float [ %3801, %3794 ], [ 1.000000e+00, %3769 ]
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = and i32 %3805, 33554432
  %3807 = icmp eq i32 %3806, 0
  br i1 %3807, label %3914, label %3808

; <label>:3808                                    ; preds = %3802
  %3809 = add i32 %56, 272
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = and i32 %3811, 65535
  %3813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3812)  ; LegacyF16ToF32(value)
  %3814 = lshr i32 %3811, 16
  %3815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3814)  ; LegacyF16ToF32(value)
  %3816 = add i32 %56, 276
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = and i32 %3818, 65535
  %3820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3819)  ; LegacyF16ToF32(value)
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = lshr i32 %3822, 24
  %3824 = uitofp i32 %3823 to float
  %3825 = fmul fast float %3824, 0x3F70101020000000
  %3826 = and i32 %3822, 255
  %3827 = uitofp i32 %3826 to float
  %3828 = fmul fast float %3827, 0x3F70101020000000
  %3829 = lshr i32 %3822, 8
  %3830 = and i32 %3829, 255
  %3831 = uitofp i32 %3830 to float
  %3832 = fmul fast float %3831, 0x3F70101020000000
  %3833 = lshr i32 %3822, 16
  %3834 = and i32 %3833, 255
  %3835 = uitofp i32 %3834 to float
  %3836 = fmul fast float %3835, 0x3F70101020000000
  %3837 = add i32 %56, 268
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = lshr i32 %3839, 24
  %3841 = uitofp i32 %3840 to float
  %3842 = fmul fast float %3841, 0x3F70101020000000
  %3843 = and i32 %3839, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3844, 0x3F70101020000000
  %3846 = lshr i32 %3839, 8
  %3847 = and i32 %3846, 255
  %3848 = uitofp i32 %3847 to float
  %3849 = fmul fast float %3848, 0x3F70101020000000
  %3850 = lshr i32 %3839, 16
  %3851 = and i32 %3850, 255
  %3852 = uitofp i32 %3851 to float
  %3853 = fmul fast float %3852, 0x3F70101020000000
  %3854 = bitcast float %3778 to i32
  %3855 = ashr i32 %3854, 1
  %3856 = sub nsw i32 1597463174, %3855
  %3857 = bitcast i32 %3856 to float
  %3858 = fmul fast float %3778, 5.000000e-01
  %3859 = fmul fast float %3857, %3857
  %3860 = fmul fast float %3859, %3858
  %3861 = fsub fast float 1.500000e+00, %3860
  %3862 = fmul fast float %3857, %3778
  %3863 = fmul fast float %3862, %3861
  %3864 = bitcast float %3779 to i32
  %3865 = ashr i32 %3864, 1
  %3866 = sub nsw i32 1597463174, %3865
  %3867 = bitcast i32 %3866 to float
  %3868 = fmul fast float %3779, 5.000000e-01
  %3869 = fmul fast float %3867, %3867
  %3870 = fmul fast float %3869, %3868
  %3871 = fsub fast float 1.500000e+00, %3870
  %3872 = fmul fast float %3867, %3779
  %3873 = fmul fast float %3872, %3871
  %3874 = bitcast float %3780 to i32
  %3875 = ashr i32 %3874, 1
  %3876 = sub nsw i32 1597463174, %3875
  %3877 = bitcast i32 %3876 to float
  %3878 = fmul fast float %3780, 5.000000e-01
  %3879 = fmul fast float %3877, %3877
  %3880 = fmul fast float %3879, %3878
  %3881 = fsub fast float 1.500000e+00, %3880
  %3882 = fmul fast float %3877, %3780
  %3883 = fmul fast float %3882, %3881
  %3884 = fsub fast float %3863, %3845
  %3885 = fsub fast float %3873, %3849
  %3886 = fsub fast float %3883, %3853
  %3887 = fmul fast float %3884, %3813
  %3888 = fmul fast float %3885, %3815
  %3889 = fmul fast float %3886, %3820
  %3890 = fadd fast float %3887, %3828
  %3891 = fadd fast float %3888, %3832
  %3892 = fadd fast float %3889, %3836
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3896 = fmul fast float %3893, %3893
  %3897 = fmul fast float %3894, %3894
  %3898 = fmul fast float %3895, %3895
  %3899 = fsub fast float %3896, %3778
  %3900 = fsub fast float %3897, %3779
  %3901 = fsub fast float %3898, %3780
  %3902 = fmul fast float %3899, %3803
  %3903 = fmul fast float %3900, %3803
  %3904 = fmul fast float %3901, %3803
  %3905 = fadd fast float %3902, %3778
  %3906 = fadd fast float %3903, %3779
  %3907 = fadd fast float %3904, %3780
  %3908 = fadd fast float %3825, %3789
  %3909 = fsub fast float %3908, %3842
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fsub fast float %3910, %3789
  %3912 = fmul fast float %3911, %3803
  %3913 = fadd fast float %3912, %3789
  br label %3967

; <label>:3914                                    ; preds = %3802
  %3915 = and i32 %3805, 134217728
  %3916 = icmp eq i32 %3915, 0
  br i1 %3916, label %3951, label %3917

; <label>:3917                                    ; preds = %3914
  %3918 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %3919 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3920 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3921 = fadd fast float %3918, -5.000000e-01
  %3922 = fadd fast float %3919, -5.000000e-01
  %3923 = fadd fast float %3920, -5.000000e-01
  %3924 = fmul fast float %3921, %3803
  %3925 = fmul fast float %3922, %3803
  %3926 = fmul fast float %3923, %3803
  %3927 = fadd fast float %3924, 5.000000e-01
  %3928 = fadd fast float %3925, 5.000000e-01
  %3929 = fadd fast float %3926, 5.000000e-01
  %3930 = call float @dx.op.unary.f32(i32 24, float %3778)  ; Sqrt(value)
  %3931 = call float @dx.op.unary.f32(i32 24, float %3779)  ; Sqrt(value)
  %3932 = call float @dx.op.unary.f32(i32 24, float %3780)  ; Sqrt(value)
  %3933 = fmul fast float %3927, 2.000000e+00
  %3934 = fsub fast float 1.000000e+00, %3933
  %3935 = fmul fast float %3934, %3930
  %3936 = fadd fast float %3935, %3933
  %3937 = fmul fast float %3936, %3930
  %3938 = fmul fast float %3928, 2.000000e+00
  %3939 = fsub fast float 1.000000e+00, %3938
  %3940 = fmul fast float %3939, %3931
  %3941 = fadd fast float %3940, %3938
  %3942 = fmul fast float %3941, %3931
  %3943 = fmul fast float %3929, 2.000000e+00
  %3944 = fsub fast float 1.000000e+00, %3943
  %3945 = fmul fast float %3944, %3932
  %3946 = fadd fast float %3945, %3943
  %3947 = fmul fast float %3946, %3932
  %3948 = fmul fast float %3937, %3937
  %3949 = fmul fast float %3942, %3942
  %3950 = fmul fast float %3947, %3947
  br label %3967

; <label>:3951                                    ; preds = %3914
  %3952 = fmul fast float %409, %409
  %3953 = fmul fast float %413, %413
  %3954 = fmul fast float %417, %417
  %3955 = fadd fast float %3952, -1.000000e+00
  %3956 = fadd fast float %3953, -1.000000e+00
  %3957 = fadd fast float %3954, -1.000000e+00
  %3958 = fmul fast float %3803, %3955
  %3959 = fmul fast float %3803, %3956
  %3960 = fmul fast float %3803, %3957
  %3961 = fadd fast float %3958, 1.000000e+00
  %3962 = fadd fast float %3959, 1.000000e+00
  %3963 = fadd fast float %3960, 1.000000e+00
  %3964 = fmul fast float %3961, %3778
  %3965 = fmul fast float %3962, %3779
  %3966 = fmul fast float %3963, %3780
  br label %3967

; <label>:3967                                    ; preds = %3951, %3917, %3808, %3764
  %3968 = phi float [ %3913, %3808 ], [ %3789, %3917 ], [ %3789, %3951 ], [ 0x3FA23C0BE0000000, %3764 ]
  %3969 = phi float [ %3905, %3808 ], [ %3948, %3917 ], [ %3964, %3951 ], [ 1.000000e+00, %3764 ]
  %3970 = phi float [ %3906, %3808 ], [ %3949, %3917 ], [ %3965, %3951 ], [ 1.000000e+00, %3764 ]
  %3971 = phi float [ %3907, %3808 ], [ %3950, %3917 ], [ %3966, %3951 ], [ 1.000000e+00, %3764 ]
  %3972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.i32 %3972, 1
  %3974 = and i32 %3973, 1
  %3975 = icmp ne i32 %3974, 0
  %3976 = add i32 %56, 356
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = and i32 %3978, 32
  %3980 = icmp ne i32 %3979, 0
  %3981 = and i1 %3975, %3980
  %3982 = select i1 %3981, float 1.000000e+00, float %3969
  %3983 = select i1 %3981, float 0x3FD3333340000000, float %3970
  %3984 = select i1 %3981, float 0x3FD3333340000000, float %3971
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, 32
  %3988 = icmp eq i32 %3987, 0
  br i1 %3988, label %4061, label %3989

; <label>:3989                                    ; preds = %3967
  %3990 = add i32 %56, 140
  %3991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.i32 %3991, 0
  %3993 = add i32 %56, 436
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = add i32 %3995, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3997, %dx.types.Handle %98, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = and i32 %3992, 255
  %4004 = uitofp i32 %4003 to float
  %4005 = lshr i32 %3992, 8
  %4006 = and i32 %4005, 255
  %4007 = uitofp i32 %4006 to float
  %4008 = lshr i32 %3992, 16
  %4009 = and i32 %4008, 255
  %4010 = uitofp i32 %4009 to float
  %4011 = fmul fast float %4010, 0x3F70101000000000
  %4012 = fmul fast float %3999, %4004
  %4013 = fadd fast float %4012, %4007
  %4014 = fmul fast float %4013, 0x3F70101000000000
  %4015 = fadd fast float %4000, -5.000000e-01
  %4016 = fadd fast float %4002, -5.000000e-01
  %4017 = fmul fast float %4015, %4011
  %4018 = fmul fast float %4016, %4011
  %4019 = fadd fast float %4017, 5.000000e-01
  %4020 = fadd fast float %4018, 5.000000e-01
  %4021 = fmul fast float %4019, 2.000000e+00
  %4022 = fadd fast float %4021, -1.000000e+00
  %4023 = fmul fast float %4020, 2.000000e+00
  %4024 = fadd fast float %4023, -1.000000e+00
  %4025 = fadd fast float %4022, %4024
  %4026 = fmul fast float %4025, 5.000000e-01
  %4027 = fsub fast float %4022, %4024
  %4028 = fmul fast float %4027, 5.000000e-01
  %4029 = call float @dx.op.unary.f32(i32 6, float %4026)  ; FAbs(value)
  %4030 = fsub fast float 1.000000e+00, %4029
  %4031 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4032 = fsub fast float %4030, %4031
  %4033 = call float @dx.op.dot3.f32(i32 55, float %4026, float %4028, float %4032, float %4026, float %4028, float %4032)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = call float @dx.op.unary.f32(i32 25, float %4033)  ; Rsqrt(value)
  %4035 = fmul fast float %4026, %4034
  %4036 = fmul fast float %4028, %4034
  %4037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.i32 %4037, 0
  %4039 = and i32 %4038, 67108864
  %4040 = icmp eq i32 %4039, 0
  br i1 %4040, label %4057, label %4041

; <label>:4041                                    ; preds = %3989
  %4042 = add i32 %56, 328
  %4043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.i32 %4043, 0
  %4045 = and i32 %4044, 65535
  %4046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4045)  ; LegacyF16ToF32(value)
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = and i32 %4048, 65535
  %4050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4049)  ; LegacyF16ToF32(value)
  %4051 = lshr i32 %4044, 16
  %4052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4051)  ; LegacyF16ToF32(value)
  %4053 = fsub fast float %4014, %4052
  %4054 = fmul fast float %4053, %4046
  %4055 = fadd fast float %4054, %4050
  %4056 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  br label %4057

; <label>:4057                                    ; preds = %4041, %3989
  %4058 = phi float [ %4056, %4041 ], [ %4014, %3989 ]
  %4059 = call float @dx.op.dot2.f32(i32 54, float %4035, float %4036, float %3478, float %3479)  ; Dot2(ax,ay,bx,by)
  %4060 = call float @dx.op.dot2.f32(i32 54, float %4035, float %4036, float %3480, float %3481)  ; Dot2(ax,ay,bx,by)
  br label %4061

; <label>:4061                                    ; preds = %4057, %3967
  %4062 = phi float [ %4058, %4057 ], [ 0x3FD6666660000000, %3967 ]
  %4063 = phi float [ %4059, %4057 ], [ 0.000000e+00, %3967 ]
  %4064 = phi float [ %4060, %4057 ], [ 0.000000e+00, %3967 ]
  %4065 = phi float [ %4001, %4057 ], [ 1.000000e+00, %3967 ]
  %4066 = add i32 %56, 208
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = lshr i32 %4068, 22
  %4070 = shl nuw nsw i32 %4069, 5
  %4071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4070)  ; LegacyF16ToF32(value)
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = and i32 %4073, 64
  %4075 = icmp eq i32 %4074, 0
  br i1 %4075, label %4109, label %4076

; <label>:4076                                    ; preds = %4061
  %4077 = add i32 %56, 452
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = add i32 %4079, 0
  %4081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 131072
  %4085 = icmp eq i32 %4084, 0
  %4086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4081, %dx.types.Handle %98, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.ResRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.ResRet.f32 %4086, 2
  %4090 = fmul fast float %4087, %397
  %4091 = fmul fast float %4088, %400
  %4092 = fmul fast float %4089, %403
  br i1 %4085, label %4099, label %4093

; <label>:4093                                    ; preds = %4076
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = fmul fast float %4095, %4090
  %4097 = fmul fast float %4095, %4091
  %4098 = fmul fast float %4095, %4092
  br label %4099

; <label>:4099                                    ; preds = %4093, %4076
  %4100 = phi float [ %4096, %4093 ], [ %4090, %4076 ]
  %4101 = phi float [ %4097, %4093 ], [ %4091, %4076 ]
  %4102 = phi float [ %4098, %4093 ], [ %4092, %4076 ]
  %4103 = fmul fast float %4100, %4071
  %4104 = select i1 %251, float %4103, float %4100
  %4105 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4101, float %4102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = select i1 %251, float 0.000000e+00, float %4100
  %4107 = select i1 %251, float %4105, float %4101
  %4108 = select i1 %251, float 0.000000e+00, float %4102
  br label %4109

; <label>:4109                                    ; preds = %4099, %4061
  %4110 = phi float [ %4106, %4099 ], [ 0.000000e+00, %4061 ]
  %4111 = phi float [ %4107, %4099 ], [ 0.000000e+00, %4061 ]
  %4112 = phi float [ %4108, %4099 ], [ 0.000000e+00, %4061 ]
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = and i32 %4114, 1024
  %4116 = icmp eq i32 %4115, 0
  br i1 %4116, label %4147, label %4117

; <label>:4117                                    ; preds = %4109
  %4118 = add i32 %56, 200
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fmul fast float %4122, 0x3F70101020000000
  %4124 = lshr i32 %4120, 8
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = fmul fast float %4126, 0x3F70101020000000
  %4128 = lshr i32 %4120, 16
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = fmul fast float %4130, 0x3F70101020000000
  %4132 = fmul fast float %4123, %4123
  %4133 = fmul fast float %4127, %4127
  %4134 = fmul fast float %4131, %4131
  %4135 = add i32 %56, 516
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = add i32 %4137, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4139, %dx.types.Handle %99, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = fmul fast float %4132, %4141
  %4145 = fmul fast float %4133, %4142
  %4146 = fmul fast float %4134, %4143
  br label %4147

; <label>:4147                                    ; preds = %4117, %4109
  %4148 = phi float [ %4144, %4117 ], [ 0.000000e+00, %4109 ]
  %4149 = phi float [ %4145, %4117 ], [ 0.000000e+00, %4109 ]
  %4150 = phi float [ %4146, %4117 ], [ 0.000000e+00, %4109 ]
  %4151 = fcmp fast ogt float %4148, 0.000000e+00
  %4152 = fcmp fast ogt float %4149, 0.000000e+00
  %4153 = fcmp fast ogt float %4150, 0.000000e+00
  %4154 = call float @dx.op.unary.f32(i32 23, float %4148)  ; Log(value)
  %4155 = call float @dx.op.unary.f32(i32 23, float %4149)  ; Log(value)
  %4156 = call float @dx.op.unary.f32(i32 23, float %4150)  ; Log(value)
  %4157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.i32 %4157, 0
  %4159 = lshr i32 %4158, 7
  %4160 = and i32 %4159, 32752
  %4161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4160)  ; LegacyF16ToF32(value)
  %4162 = fmul fast float %4154, 0xBFE62E4300000000
  %4163 = fmul fast float %4162, %4161
  %4164 = fmul fast float %4155, 0xBFE62E4300000000
  %4165 = fmul fast float %4164, %4161
  %4166 = fmul fast float %4156, 0xBFE62E4300000000
  %4167 = fmul fast float %4166, %4161
  %4168 = select i1 %4151, float %4163, float 1.270000e+02
  %4169 = select i1 %4152, float %4165, float 1.270000e+02
  %4170 = select i1 %4153, float %4167, float 1.270000e+02
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = and i32 %4172, 26624
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4232, label %4175

; <label>:4175                                    ; preds = %4147
  %4176 = add i32 %56, 532
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = add i32 %4178, 0
  %4180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4180, %dx.types.Handle %99, float %3574, float %3575, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.i32 %4185, 0
  %4187 = and i32 %4186, 1048576
  %4188 = icmp ne i32 %4187, 0
  %4189 = and i32 %4186, 8192
  %4190 = icmp eq i32 %4189, 0
  br i1 %4190, label %4205, label %4191

; <label>:4191                                    ; preds = %4175
  %4192 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4193 = select i1 %4188, float %4192, float %4183
  %4194 = select i1 %4188, float %4182, float %4183
  %4195 = add i32 %56, 144
  %4196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.i32 %4196, 0
  %4198 = lshr i32 %4197, 16
  %4199 = and i32 %4198, 255
  %4200 = uitofp i32 %4199 to float
  %4201 = fmul fast float %4200, 0x3F80101020000000
  %4202 = fmul fast float %4201, %4194
  %4203 = fmul fast float %4201, %4183
  %4204 = fmul fast float %4201, %4193
  br label %4205

; <label>:4205                                    ; preds = %4191, %4175
  %4206 = phi float [ %4202, %4191 ], [ 0.000000e+00, %4175 ]
  %4207 = phi float [ %4203, %4191 ], [ 0.000000e+00, %4175 ]
  %4208 = phi float [ %4204, %4191 ], [ 0.000000e+00, %4175 ]
  %4209 = and i32 %4186, 2048
  %4210 = icmp eq i32 %4209, 0
  br i1 %4210, label %4219, label %4211

; <label>:4211                                    ; preds = %4205
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = shl i32 %4213, 4
  %4215 = and i32 %4214, 32752
  %4216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4215)  ; LegacyF16ToF32(value)
  %4217 = fmul fast float %4216, %4184
  %4218 = call float @dx.op.binary.f32(i32 35, float %4217, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4219

; <label>:4219                                    ; preds = %4211, %4205
  %4220 = phi float [ %4218, %4211 ], [ 0x3F70101020000000, %4205 ]
  %4221 = and i32 %4186, 16384
  %4222 = icmp eq i32 %4221, 0
  br i1 %4222, label %4232, label %4223

; <label>:4223                                    ; preds = %4219
  %4224 = add i32 %56, 144
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = lshr i32 %4226, 24
  %4228 = uitofp i32 %4227 to float
  %4229 = fmul fast float %4182, 0x3F70101020000000
  %4230 = select i1 %4188, float 0x3F70101020000000, float %4229
  %4231 = fmul fast float %4230, %4228
  br label %4232

; <label>:4232                                    ; preds = %4223, %4219, %4147
  %4233 = phi float [ %4206, %4223 ], [ %4206, %4219 ], [ 0.000000e+00, %4147 ]
  %4234 = phi float [ %4207, %4223 ], [ %4207, %4219 ], [ 0.000000e+00, %4147 ]
  %4235 = phi float [ %4208, %4223 ], [ %4208, %4219 ], [ 0.000000e+00, %4147 ]
  %4236 = phi float [ %4220, %4223 ], [ %4220, %4219 ], [ 0x3F70101020000000, %4147 ]
  %4237 = phi float [ %4231, %4223 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4147 ]
  %4238 = add i32 %56, 144
  %4239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.i32 %4239, 0
  %4241 = and i32 %4240, 255
  %4242 = uitofp i32 %4241 to float
  %4243 = lshr i32 %4240, 8
  %4244 = and i32 %4243, 255
  %4245 = uitofp i32 %4244 to float
  %4246 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4247 = fmul fast float %4245, %4246
  %4248 = fadd fast float %4247, %4242
  %4249 = fmul fast float %4248, 0x3F70101020000000
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  br i1 %3466, label %4251, label %4286

; <label>:4251                                    ; preds = %4232
  %4252 = fmul fast float %4236, 2.000000e+00
  %4253 = fcmp fast olt float %4168, 1.270000e+02
  %4254 = fcmp fast olt float %4169, 1.270000e+02
  %4255 = fcmp fast olt float %4170, 1.270000e+02
  %4256 = fmul fast float %4168, 0xBFF7154760000000
  %4257 = fmul fast float %4256, %4252
  %4258 = fmul fast float %4169, 0xBFF7154760000000
  %4259 = fmul fast float %4258, %4252
  %4260 = fmul fast float %4170, 0xBFF7154760000000
  %4261 = fmul fast float %4260, %4252
  %4262 = call float @dx.op.unary.f32(i32 21, float %4257)  ; Exp(value)
  %4263 = call float @dx.op.unary.f32(i32 21, float %4259)  ; Exp(value)
  %4264 = call float @dx.op.unary.f32(i32 21, float %4261)  ; Exp(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = fadd fast float %4265, -1.000000e+00
  %4269 = select i1 %4253, float %4268, float -1.000000e+00
  %4270 = fadd fast float %4266, -1.000000e+00
  %4271 = select i1 %4254, float %4270, float -1.000000e+00
  %4272 = fadd fast float %4267, -1.000000e+00
  %4273 = select i1 %4255, float %4272, float -1.000000e+00
  %4274 = fmul fast float %4269, %3762
  %4275 = fmul fast float %4271, %3762
  %4276 = fmul fast float %4273, %3762
  %4277 = fadd fast float %4274, 1.000000e+00
  %4278 = fadd fast float %4275, 1.000000e+00
  %4279 = fadd fast float %4276, 1.000000e+00
  %4280 = fmul fast float %4277, %3447
  %4281 = fmul fast float %4278, %3448
  %4282 = fmul fast float %4279, %3449
  %4283 = fmul fast float %4277, %3450
  %4284 = fmul fast float %4278, %3451
  %4285 = fmul fast float %4279, %3452
  br label %4286

; <label>:4286                                    ; preds = %4251, %4232
  %4287 = phi float [ %4280, %4251 ], [ %3447, %4232 ]
  %4288 = phi float [ %4281, %4251 ], [ %3448, %4232 ]
  %4289 = phi float [ %4282, %4251 ], [ %3449, %4232 ]
  %4290 = phi float [ %4283, %4251 ], [ %3450, %4232 ]
  %4291 = phi float [ %4284, %4251 ], [ %3451, %4232 ]
  %4292 = phi float [ %4285, %4251 ], [ %3452, %4232 ]
  %4293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.i32 %4293, 0
  %4295 = and i32 %4294, 3
  %4296 = icmp eq i32 %4295, 3
  br i1 %4296, label %4375, label %4297

; <label>:4297                                    ; preds = %4286
  %4298 = and i32 %4294, 16
  %4299 = icmp ne i32 %4298, 0
  %4300 = select i1 %4299, float %3762, float 0.000000e+00
  %4301 = icmp eq i32 %4295, 0
  br i1 %4301, label %4302, label %4330

; <label>:4302                                    ; preds = %4297
  %4303 = and i32 %4294, 64
  %4304 = icmp ne i32 %4303, 0
  %4305 = select i1 %4304, float %3762, float 0.000000e+00
  %4306 = fsub fast float %3982, %4287
  %4307 = fsub fast float %3983, %4288
  %4308 = fsub fast float %3984, %4289
  %4309 = fmul fast float %4300, %4306
  %4310 = fmul fast float %4300, %4307
  %4311 = fmul fast float %4300, %4308
  %4312 = fadd fast float %4309, %4287
  %4313 = fadd fast float %4310, %4288
  %4314 = fadd fast float %4311, %4289
  %4315 = fsub fast float %3968, %3459
  %4316 = fmul fast float %4300, %4315
  %4317 = fadd fast float %4316, %3459
  %4318 = fsub fast float %4110, %4290
  %4319 = fsub fast float %4111, %4291
  %4320 = fsub fast float %4112, %4292
  %4321 = fmul fast float %4305, %4318
  %4322 = fmul fast float %4305, %4319
  %4323 = fmul fast float %4305, %4320
  %4324 = fadd fast float %4321, %4290
  %4325 = fadd fast float %4322, %4291
  %4326 = fadd fast float %4323, %4292
  %4327 = fsub fast float %4250, %3464
  %4328 = fmul fast float %4300, %4327
  %4329 = fadd fast float %4328, %3464
  br label %4375

; <label>:4330                                    ; preds = %4297
  %4331 = icmp eq i32 %4295, 1
  br i1 %4331, label %4332, label %4345

; <label>:4332                                    ; preds = %4330
  %4333 = fadd fast float %3982, -1.000000e+00
  %4334 = fadd fast float %3983, -1.000000e+00
  %4335 = fadd fast float %3984, -1.000000e+00
  %4336 = fmul fast float %4300, %4333
  %4337 = fmul fast float %4300, %4334
  %4338 = fmul fast float %4300, %4335
  %4339 = fadd fast float %4336, 1.000000e+00
  %4340 = fadd fast float %4337, 1.000000e+00
  %4341 = fadd fast float %4338, 1.000000e+00
  %4342 = fmul fast float %4339, %4287
  %4343 = fmul fast float %4340, %4288
  %4344 = fmul fast float %4341, %4289
  br label %4375

; <label>:4345                                    ; preds = %4330
  %4346 = icmp eq i32 %4295, 2
  br i1 %4346, label %4347, label %4375

; <label>:4347                                    ; preds = %4345
  %4348 = call float @dx.op.unary.f32(i32 24, float %3982)  ; Sqrt(value)
  %4349 = call float @dx.op.unary.f32(i32 24, float %3983)  ; Sqrt(value)
  %4350 = call float @dx.op.unary.f32(i32 24, float %3984)  ; Sqrt(value)
  %4351 = fadd fast float %4348, -5.000000e-01
  %4352 = fadd fast float %4349, -5.000000e-01
  %4353 = fadd fast float %4350, -5.000000e-01
  %4354 = fmul fast float %4351, %4300
  %4355 = fmul fast float %4352, %4300
  %4356 = fmul fast float %4353, %4300
  %4357 = fadd fast float %4354, 5.000000e-01
  %4358 = fadd fast float %4355, 5.000000e-01
  %4359 = fadd fast float %4356, 5.000000e-01
  %4360 = fmul fast float %4357, 2.000000e+00
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = fmul fast float %4361, %4287
  %4363 = fadd fast float %4362, %4360
  %4364 = fmul fast float %4363, %4287
  %4365 = fmul fast float %4358, 2.000000e+00
  %4366 = fsub fast float 1.000000e+00, %4365
  %4367 = fmul fast float %4366, %4288
  %4368 = fadd fast float %4367, %4365
  %4369 = fmul fast float %4368, %4288
  %4370 = fmul fast float %4359, 2.000000e+00
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = fmul fast float %4371, %4289
  %4373 = fadd fast float %4372, %4370
  %4374 = fmul fast float %4373, %4289
  br label %4375

; <label>:4375                                    ; preds = %4347, %4345, %4332, %4302, %4286
  %4376 = phi float [ %4287, %4286 ], [ %4364, %4347 ], [ %4287, %4345 ], [ %4342, %4332 ], [ %4312, %4302 ]
  %4377 = phi float [ %4288, %4286 ], [ %4369, %4347 ], [ %4288, %4345 ], [ %4343, %4332 ], [ %4313, %4302 ]
  %4378 = phi float [ %4289, %4286 ], [ %4374, %4347 ], [ %4289, %4345 ], [ %4344, %4332 ], [ %4314, %4302 ]
  %4379 = phi float [ %4290, %4286 ], [ %4290, %4347 ], [ %4290, %4345 ], [ %4290, %4332 ], [ %4324, %4302 ]
  %4380 = phi float [ %4291, %4286 ], [ %4291, %4347 ], [ %4291, %4345 ], [ %4291, %4332 ], [ %4325, %4302 ]
  %4381 = phi float [ %4292, %4286 ], [ %4292, %4347 ], [ %4292, %4345 ], [ %4292, %4332 ], [ %4326, %4302 ]
  %4382 = phi float [ %3459, %4286 ], [ %3459, %4347 ], [ %3459, %4345 ], [ %3459, %4332 ], [ %4317, %4302 ]
  %4383 = phi float [ %3464, %4286 ], [ %3464, %4347 ], [ %3464, %4345 ], [ %3464, %4332 ], [ %4329, %4302 ]
  %4384 = and i32 %4294, 12
  %4385 = icmp eq i32 %4384, 12
  br i1 %4385, label %4526, label %4386

; <label>:4386                                    ; preds = %4375
  %4387 = and i32 %4294, 2097184
  %4388 = icmp eq i32 %4387, 2097184
  %4389 = select i1 %4388, float %3762, float 0.000000e+00
  %4390 = and i32 %4294, 4194336
  %4391 = icmp eq i32 %4390, 4194336
  %4392 = select i1 %4391, float %3762, float 0.000000e+00
  %4393 = and i32 %4294, 8388640
  %4394 = icmp eq i32 %4393, 8388640
  %4395 = select i1 %4394, float %3762, float 0.000000e+00
  %4396 = and i32 %4294, 1024
  %4397 = icmp ne i32 %4396, 0
  %4398 = select i1 %4397, float %3762, float 0.000000e+00
  %4399 = and i32 %4294, 2048
  %4400 = icmp ne i32 %4399, 0
  %4401 = select i1 %4400, float %3762, float 0.000000e+00
  %4402 = and i32 %4294, 8192
  %4403 = icmp ne i32 %4402, 0
  %4404 = select i1 %4403, float %3762, float 0.000000e+00
  %4405 = and i32 %4294, 16384
  %4406 = icmp ne i32 %4405, 0
  %4407 = select i1 %4406, float %3762, float 0.000000e+00
  %4408 = icmp eq i32 %4384, 0
  br i1 %4408, label %4409, label %4446

; <label>:4409                                    ; preds = %4386
  %4410 = fsub fast float %4063, %3445
  %4411 = fsub fast float %4064, %3446
  %4412 = fmul fast float %4389, %4410
  %4413 = fmul fast float %4389, %4411
  %4414 = fadd fast float %4412, %3445
  %4415 = fadd fast float %4413, %3446
  %4416 = fsub fast float %4065, %3461
  %4417 = fmul fast float %4392, %4416
  %4418 = fadd fast float %4417, %3461
  %4419 = fsub fast float %4062, %3460
  %4420 = fmul fast float %4395, %4419
  %4421 = fadd fast float %4420, %3460
  %4422 = fsub fast float %4168, %3456
  %4423 = fsub fast float %4169, %3457
  %4424 = fsub fast float %4170, %3458
  %4425 = fmul fast float %4398, %4422
  %4426 = fmul fast float %4398, %4423
  %4427 = fmul fast float %4398, %4424
  %4428 = fadd fast float %4425, %3456
  %4429 = fadd fast float %4426, %3457
  %4430 = fadd fast float %4427, %3458
  %4431 = fsub fast float %4236, %3462
  %4432 = fmul fast float %4401, %4431
  %4433 = fadd fast float %4432, %3462
  %4434 = fsub fast float %4233, %3453
  %4435 = fsub fast float %4234, %3454
  %4436 = fsub fast float %4235, %3455
  %4437 = fmul fast float %4404, %4434
  %4438 = fmul fast float %4404, %4435
  %4439 = fmul fast float %4404, %4436
  %4440 = fadd fast float %4437, %3453
  %4441 = fadd fast float %4438, %3454
  %4442 = fadd fast float %4439, %3455
  %4443 = fsub fast float %4237, %3463
  %4444 = fmul fast float %4407, %4443
  %4445 = fadd fast float %4444, %3463
  br label %4526

; <label>:4446                                    ; preds = %4386
  %4447 = icmp eq i32 %4384, 4
  br i1 %4447, label %4448, label %4496

; <label>:4448                                    ; preds = %4446
  %4449 = fmul fast float %4389, %4063
  %4450 = fmul fast float %4389, %4064
  %4451 = fadd fast float %4449, %3445
  %4452 = fadd fast float %4450, %3446
  %4453 = call float @dx.op.binary.f32(i32 36, float %3461, float %4065)  ; FMin(a,b)
  %4454 = fsub fast float %4453, %3461
  %4455 = fmul fast float %4454, %4392
  %4456 = fadd fast float %4455, %3461
  %4457 = fadd fast float %4062, %3460
  %4458 = fmul fast float %4457, 0x3FF337FAE0000000
  %4459 = fmul fast float %3460, %3460
  %4460 = fmul fast float %4062, %4062
  %4461 = fadd fast float %4460, %4459
  %4462 = fmul fast float %4461, 0x3FE5152B00000000
  %4463 = fmul fast float %3460, 0xBFCC1F85E0000000
  %4464 = fmul fast float %4463, %4062
  %4465 = fadd fast float %4464, 0xBFE1363700000000
  %4466 = fadd fast float %4465, %4458
  %4467 = fsub fast float %4466, %4462
  %4468 = fmul fast float %4457, 0x3FBA6F0D00000000
  %4469 = fmul fast float %4461, 0x3FD0432880000000
  %4470 = fmul fast float %3460, 0xBFEF110800000000
  %4471 = fmul fast float %4470, %4062
  %4472 = fadd fast float %4471, 1.000000e+00
  %4473 = fsub fast float %4472, %4468
  %4474 = fadd fast float %4473, %4469
  %4475 = fdiv fast float %4467, %4474
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fsub fast float %4476, %3460
  %4478 = fmul fast float %4477, %4395
  %4479 = fadd fast float %4478, %3460
  %4480 = fmul fast float %4398, %4168
  %4481 = fmul fast float %4398, %4169
  %4482 = fmul fast float %4398, %4170
  %4483 = fadd fast float %4480, %3456
  %4484 = fadd fast float %4481, %3457
  %4485 = fadd fast float %4482, %3458
  %4486 = fmul fast float %4401, %4236
  %4487 = fadd fast float %4486, %3462
  %4488 = fmul fast float %4404, %4233
  %4489 = fmul fast float %4404, %4234
  %4490 = fmul fast float %4404, %4235
  %4491 = fadd fast float %4488, %3453
  %4492 = fadd fast float %4489, %3454
  %4493 = fadd fast float %4490, %3455
  %4494 = fmul fast float %4407, %4237
  %4495 = fadd fast float %4494, %3463
  br label %4526

; <label>:4496                                    ; preds = %4446
  %4497 = icmp eq i32 %4384, 8
  br i1 %4497, label %4498, label %4526

; <label>:4498                                    ; preds = %4496
  %4499 = fmul fast float %4389, %4063
  %4500 = fmul fast float %4389, %4064
  %4501 = fadd fast float %4499, %3445
  %4502 = fadd fast float %4500, %3446
  %4503 = call float @dx.op.binary.f32(i32 36, float %3461, float %4065)  ; FMin(a,b)
  %4504 = fsub fast float %4503, %3461
  %4505 = fmul fast float %4504, %4392
  %4506 = fadd fast float %4505, %3461
  %4507 = fsub fast float %4062, %3460
  %4508 = fmul fast float %4395, %4507
  %4509 = fadd fast float %4508, %3460
  %4510 = fmul fast float %4398, %4168
  %4511 = fmul fast float %4398, %4169
  %4512 = fmul fast float %4398, %4170
  %4513 = fadd fast float %4510, %3456
  %4514 = fadd fast float %4511, %3457
  %4515 = fadd fast float %4512, %3458
  %4516 = fmul fast float %4401, %4236
  %4517 = fadd fast float %4516, %3462
  %4518 = fmul fast float %4404, %4233
  %4519 = fmul fast float %4404, %4234
  %4520 = fmul fast float %4404, %4235
  %4521 = fadd fast float %4518, %3453
  %4522 = fadd fast float %4519, %3454
  %4523 = fadd fast float %4520, %3455
  %4524 = fmul fast float %4407, %4237
  %4525 = fadd fast float %4524, %3463
  br label %4526

; <label>:4526                                    ; preds = %4498, %4496, %4448, %4409, %4375, %3761, %3465, %3444
  %4527 = phi float [ %3445, %4375 ], [ %3445, %3761 ], [ %3445, %3444 ], [ %3445, %3465 ], [ %4414, %4409 ], [ %4451, %4448 ], [ %3445, %4496 ], [ %4501, %4498 ]
  %4528 = phi float [ %3446, %4375 ], [ %3446, %3761 ], [ %3446, %3444 ], [ %3446, %3465 ], [ %4415, %4409 ], [ %4452, %4448 ], [ %3446, %4496 ], [ %4502, %4498 ]
  %4529 = phi float [ %4376, %4375 ], [ %3447, %3761 ], [ %3447, %3444 ], [ %3447, %3465 ], [ %4376, %4409 ], [ %4376, %4448 ], [ %4376, %4496 ], [ %4376, %4498 ]
  %4530 = phi float [ %4377, %4375 ], [ %3448, %3761 ], [ %3448, %3444 ], [ %3448, %3465 ], [ %4377, %4409 ], [ %4377, %4448 ], [ %4377, %4496 ], [ %4377, %4498 ]
  %4531 = phi float [ %4378, %4375 ], [ %3449, %3761 ], [ %3449, %3444 ], [ %3449, %3465 ], [ %4378, %4409 ], [ %4378, %4448 ], [ %4378, %4496 ], [ %4378, %4498 ]
  %4532 = phi float [ %4379, %4375 ], [ %3450, %3761 ], [ %3450, %3444 ], [ %3450, %3465 ], [ %4379, %4409 ], [ %4379, %4448 ], [ %4379, %4496 ], [ %4379, %4498 ]
  %4533 = phi float [ %4380, %4375 ], [ %3451, %3761 ], [ %3451, %3444 ], [ %3451, %3465 ], [ %4380, %4409 ], [ %4380, %4448 ], [ %4380, %4496 ], [ %4380, %4498 ]
  %4534 = phi float [ %4381, %4375 ], [ %3452, %3761 ], [ %3452, %3444 ], [ %3452, %3465 ], [ %4381, %4409 ], [ %4381, %4448 ], [ %4381, %4496 ], [ %4381, %4498 ]
  %4535 = phi float [ %3453, %4375 ], [ %3453, %3761 ], [ %3453, %3444 ], [ %3453, %3465 ], [ %4440, %4409 ], [ %4491, %4448 ], [ %3453, %4496 ], [ %4521, %4498 ]
  %4536 = phi float [ %3454, %4375 ], [ %3454, %3761 ], [ %3454, %3444 ], [ %3454, %3465 ], [ %4441, %4409 ], [ %4492, %4448 ], [ %3454, %4496 ], [ %4522, %4498 ]
  %4537 = phi float [ %3455, %4375 ], [ %3455, %3761 ], [ %3455, %3444 ], [ %3455, %3465 ], [ %4442, %4409 ], [ %4493, %4448 ], [ %3455, %4496 ], [ %4523, %4498 ]
  %4538 = phi float [ %3456, %4375 ], [ %3456, %3761 ], [ %3456, %3444 ], [ %3456, %3465 ], [ %4428, %4409 ], [ %4483, %4448 ], [ %3456, %4496 ], [ %4513, %4498 ]
  %4539 = phi float [ %3457, %4375 ], [ %3457, %3761 ], [ %3457, %3444 ], [ %3457, %3465 ], [ %4429, %4409 ], [ %4484, %4448 ], [ %3457, %4496 ], [ %4514, %4498 ]
  %4540 = phi float [ %3458, %4375 ], [ %3458, %3761 ], [ %3458, %3444 ], [ %3458, %3465 ], [ %4430, %4409 ], [ %4485, %4448 ], [ %3458, %4496 ], [ %4515, %4498 ]
  %4541 = phi float [ %4382, %4375 ], [ %3459, %3761 ], [ %3459, %3444 ], [ %3459, %3465 ], [ %4382, %4409 ], [ %4382, %4448 ], [ %4382, %4496 ], [ %4382, %4498 ]
  %4542 = phi float [ %3460, %4375 ], [ %3460, %3761 ], [ %3460, %3444 ], [ %3460, %3465 ], [ %4421, %4409 ], [ %4479, %4448 ], [ %3460, %4496 ], [ %4509, %4498 ]
  %4543 = phi float [ %3461, %4375 ], [ %3461, %3761 ], [ %3461, %3444 ], [ %3461, %3465 ], [ %4418, %4409 ], [ %4456, %4448 ], [ %3461, %4496 ], [ %4506, %4498 ]
  %4544 = phi float [ %3462, %4375 ], [ %3462, %3761 ], [ %3462, %3444 ], [ %3462, %3465 ], [ %4433, %4409 ], [ %4487, %4448 ], [ %3462, %4496 ], [ %4517, %4498 ]
  %4545 = phi float [ %3463, %4375 ], [ %3463, %3761 ], [ %3463, %3444 ], [ %3463, %3465 ], [ %4445, %4409 ], [ %4495, %4448 ], [ %3463, %4496 ], [ %4525, %4498 ]
  %4546 = phi float [ %4383, %4375 ], [ %3464, %3761 ], [ %3464, %3444 ], [ %3464, %3465 ], [ %4383, %4409 ], [ %4383, %4448 ], [ %4383, %4496 ], [ %4383, %4498 ]
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = call float @dx.op.dot2.f32(i32 54, float %4527, float %4528, float %4527, float %4528)  ; Dot2(ax,ay,bx,by)
  %4550 = fmul fast float %4549, 0x3FE3333340000000
  %4551 = fsub fast float 1.000000e+00, %4550
  %4552 = call float @dx.op.dot3.f32(i32 55, float %4527, float %4528, float %4551, float %4527, float %4528, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = call float @dx.op.unary.f32(i32 25, float %4552)  ; Rsqrt(value)
  %4554 = fmul fast float %4553, %4527
  %4555 = fmul fast float %4553, %4528
  %4556 = fmul fast float %4551, %4553
  %4557 = fmul fast float %4556, %109
  %4558 = fmul fast float %4556, %110
  %4559 = fmul fast float %4556, %111
  %4560 = fmul fast float %4554, %77
  %4561 = fmul fast float %4554, %78
  %4562 = fmul fast float %4554, %79
  %4563 = fadd fast float %4557, %4560
  %4564 = fadd fast float %4558, %4561
  %4565 = fadd fast float %4559, %4562
  %4566 = fmul fast float %121, %4555
  %4567 = fmul fast float %122, %4555
  %4568 = fmul fast float %123, %4555
  %4569 = fadd fast float %4563, %4566
  %4570 = fadd fast float %4564, %4567
  %4571 = fadd fast float %4565, %4568
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4570, float %4571, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4569, %4573
  %4575 = fmul fast float %4570, %4573
  %4576 = fmul fast float %4571, %4573
  %4577 = and i32 %58, 1
  %4578 = icmp eq i32 %4577, 0
  br i1 %4578, label %4579, label %5171

; <label>:4579                                    ; preds = %4526
  %4580 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4581 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4582 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4583 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4584 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4585 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4586 = fadd fast float %4580, %157
  %4587 = fadd fast float %4581, %158
  %4588 = fadd fast float %4582, %159
  %4589 = fadd fast float %4583, %157
  %4590 = fadd fast float %4584, %158
  %4591 = fadd fast float %4585, %159
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.CBufRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4592, 2
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4598 = extractvalue %dx.types.CBufRet.f32 %4596, 3
  %4599 = fmul fast float %4593, %102
  %4600 = fmul fast float %4599, %4597
  %4601 = fmul fast float %4594, %103
  %4602 = fmul fast float %4601, %4598
  %4603 = fptoui float %4600 to i32
  %4604 = fptoui float %4602 to i32
  %4605 = fadd fast float %4593, -1.000000e+00
  %4606 = fadd fast float %4594, -1.000000e+00
  %4607 = fptoui float %4605 to i32
  %4608 = fptoui float %4606 to i32
  %4609 = call i32 @dx.op.binary.i32(i32 40, i32 %4603, i32 %4607)  ; UMin(a,b)
  %4610 = call i32 @dx.op.binary.i32(i32 40, i32 %4604, i32 %4608)  ; UMin(a,b)
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 2
  %4613 = extractvalue %dx.types.CBufRet.f32 %4611, 3
  %4614 = fmul fast float %4612, %93
  %4615 = fsub fast float %4614, %4613
  %4616 = fadd fast float %4595, -1.000000e+00
  %4617 = call float @dx.op.binary.f32(i32 36, float %4615, float %4616)  ; FMin(a,b)
  %4618 = fptoui float %4617 to i32
  %4619 = fptoui float %4593 to i32
  %4620 = fptoui float %4594 to i32
  %4621 = mul i32 %4618, %4620
  %4622 = add i32 %4621, %4610
  %4623 = mul i32 %4622, %4619
  %4624 = add i32 %4623, %4609
  %4625 = shl i32 %4624, 2
  %4626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 0
  %4628 = and i32 %4627, 1023
  %4629 = lshr i32 %4627, 10
  %4630 = icmp eq i32 %4628, 0
  br i1 %4630, label %5134, label %4631

; <label>:4631                                    ; preds = %4579
  %4632 = and i32 %4627, 1023
  br label %4633

; <label>:4633                                    ; preds = %4765, %4631
  %4634 = phi i32 [ %4715, %4765 ], [ 0, %4631 ]
  %4635 = phi float [ %4766, %4765 ], [ 0.000000e+00, %4631 ]
  %4636 = phi float [ %4767, %4765 ], [ %4548, %4631 ]
  %4637 = phi float [ %4768, %4765 ], [ %4546, %4631 ]
  %4638 = phi float [ %4769, %4765 ], [ %4538, %4631 ]
  %4639 = phi float [ %4770, %4765 ], [ %4539, %4631 ]
  %4640 = phi float [ %4771, %4765 ], [ %4540, %4631 ]
  %4641 = phi float [ %4772, %4765 ], [ %4545, %4631 ]
  %4642 = phi float [ %4773, %4765 ], [ 0.000000e+00, %4631 ]
  %4643 = phi float [ %4774, %4765 ], [ %4535, %4631 ]
  %4644 = phi float [ %4775, %4765 ], [ %4536, %4631 ]
  %4645 = phi float [ %4776, %4765 ], [ %4537, %4631 ]
  %4646 = phi float [ %4777, %4765 ], [ %4532, %4631 ]
  %4647 = phi float [ %4778, %4765 ], [ %4533, %4631 ]
  %4648 = phi float [ %4779, %4765 ], [ %4534, %4631 ]
  %4649 = phi float [ %4780, %4765 ], [ %4574, %4631 ]
  %4650 = phi float [ %4781, %4765 ], [ %4575, %4631 ]
  %4651 = phi float [ %4782, %4765 ], [ %4576, %4631 ]
  %4652 = phi float [ %4783, %4765 ], [ %4543, %4631 ]
  %4653 = phi float [ %4784, %4765 ], [ %4542, %4631 ]
  %4654 = phi float [ %4785, %4765 ], [ 0.000000e+00, %4631 ]
  %4655 = phi float [ %4786, %4765 ], [ %4541, %4631 ]
  %4656 = phi float [ %4787, %4765 ], [ %4529, %4631 ]
  %4657 = phi float [ %4788, %4765 ], [ %4530, %4631 ]
  %4658 = phi float [ %4789, %4765 ], [ %4531, %4631 ]
  %4659 = add nuw nsw i32 %4634, %4629
  %4660 = shl i32 %4659, 2
  %4661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4660, i32 undef)  ; BufferLoad(srv,index,wot)
  %4662 = extractvalue %dx.types.ResRet.i32 %4661, 0
  %4663 = shl i32 %4662, 8
  %4664 = or i32 %4663, 48
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.ResRet.f32 %4665, 3
  %4670 = or i32 %4663, 64
  %4671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4670, i32 undef)  ; BufferLoad(srv,index,wot)
  %4672 = extractvalue %dx.types.ResRet.i32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.i32 %4671, 1
  %4674 = or i32 %4663, 80
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4678 = or i32 %4663, 96
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = extractvalue %dx.types.ResRet.f32 %4679, 3
  %4684 = or i32 %4663, 112
  %4685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 2
  %4687 = or i32 %4663, 128
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = extractvalue %dx.types.ResRet.f32 %4688, 3
  %4693 = or i32 %4663, 144
  %4694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = extractvalue %dx.types.ResRet.f32 %4694, 3
  %4699 = or i32 %4663, 160
  %4700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4699, i32 undef)  ; BufferLoad(srv,index,wot)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = extractvalue %dx.types.ResRet.f32 %4700, 1
  %4703 = extractvalue %dx.types.ResRet.f32 %4700, 2
  %4704 = extractvalue %dx.types.ResRet.f32 %4700, 3
  %4705 = or i32 %4663, 192
  %4706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4707 = extractvalue %dx.types.ResRet.i32 %4706, 0
  %4708 = or i32 %4663, 208
  %4709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = or i32 %4663, 248
  %4712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = add nuw nsw i32 %4634, 1
  %4716 = bitcast float %4669 to i32
  %4717 = and i32 %4716, 512
  %4718 = icmp eq i32 %4717, 0
  %4719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = extractvalue %dx.types.ResRet.f32 %4719, 3
  %4724 = call float @dx.op.dot4.f32(i32 56, float %4720, float %4721, float %4722, float %4723, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4725 = or i32 %4663, 16
  %4726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.f32 %4726, 0
  %4728 = extractvalue %dx.types.ResRet.f32 %4726, 1
  %4729 = extractvalue %dx.types.ResRet.f32 %4726, 2
  %4730 = extractvalue %dx.types.ResRet.f32 %4726, 3
  %4731 = call float @dx.op.dot4.f32(i32 56, float %4727, float %4728, float %4729, float %4730, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4732 = or i32 %4663, 32
  %4733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.ResRet.f32 %4733, 3
  %4738 = call float @dx.op.dot4.f32(i32 56, float %4734, float %4735, float %4736, float %4737, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4739 = call float @dx.op.unary.f32(i32 27, float %4724)  ; Round_ni(value)
  %4740 = call float @dx.op.unary.f32(i32 6, float %4739)  ; FAbs(value)
  %4741 = call float @dx.op.unary.f32(i32 27, float %4731)  ; Round_ni(value)
  %4742 = call float @dx.op.unary.f32(i32 6, float %4741)  ; FAbs(value)
  %4743 = call float @dx.op.unary.f32(i32 6, float %4738)  ; FAbs(value)
  %4744 = call float @dx.op.unary.f32(i32 27, float %4743)  ; Round_ni(value)
  %4745 = fadd fast float %4742, %4740
  %4746 = fadd fast float %4745, %4744
  %4747 = fcmp fast oeq float %4746, 0.000000e+00
  %4748 = call float @dx.op.dot4.f32(i32 56, float %4720, float %4721, float %4722, float %4723, float %4586, float %4587, float %4588, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4749 = call float @dx.op.dot4.f32(i32 56, float %4727, float %4728, float %4729, float %4730, float %4586, float %4587, float %4588, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4750 = call float @dx.op.dot4.f32(i32 56, float %4720, float %4721, float %4722, float %4723, float %4589, float %4590, float %4591, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4751 = call float @dx.op.dot4.f32(i32 56, float %4727, float %4728, float %4729, float %4730, float %4589, float %4590, float %4591, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4752 = fsub fast float %4748, %4724
  %4753 = fsub fast float %4750, %4724
  %4754 = fsub fast float %4749, %4731
  %4755 = fsub fast float %4751, %4731
  %4756 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4759 = fadd fast float %4758, %4756
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4762 = fcmp fast ogt float %4760, %4761
  %4763 = and i1 %4747, %4762
  %4764 = and i1 %4718, %4763
  br i1 %4764, label %4791, label %4765

; <label>:4765                                    ; preds = %5120, %4872, %4791, %4633
  %4766 = phi float [ %4635, %4791 ], [ %4875, %4872 ], [ %4875, %5120 ], [ %4635, %4633 ]
  %4767 = phi float [ %4636, %4791 ], [ %4636, %4872 ], [ %5096, %5120 ], [ %4636, %4633 ]
  %4768 = phi float [ %4637, %4791 ], [ %4637, %4872 ], [ %5094, %5120 ], [ %4637, %4633 ]
  %4769 = phi float [ %4638, %4791 ], [ %4638, %4872 ], [ %5072, %5120 ], [ %4638, %4633 ]
  %4770 = phi float [ %4639, %4791 ], [ %4639, %4872 ], [ %5073, %5120 ], [ %4639, %4633 ]
  %4771 = phi float [ %4640, %4791 ], [ %4640, %4872 ], [ %5074, %5120 ], [ %4640, %4633 ]
  %4772 = phi float [ %4641, %4791 ], [ %4641, %4872 ], [ %4999, %5120 ], [ %4641, %4633 ]
  %4773 = phi float [ %4642, %4791 ], [ %4642, %4872 ], [ %4997, %5120 ], [ %4642, %4633 ]
  %4774 = phi float [ %4643, %4791 ], [ %4643, %4872 ], [ %5042, %5120 ], [ %4643, %4633 ]
  %4775 = phi float [ %4644, %4791 ], [ %4644, %4872 ], [ %5043, %5120 ], [ %4644, %4633 ]
  %4776 = phi float [ %4645, %4791 ], [ %4645, %4872 ], [ %5044, %5120 ], [ %4645, %4633 ]
  %4777 = phi float [ %4646, %4791 ], [ %4646, %4872 ], [ %5130, %5120 ], [ %4646, %4633 ]
  %4778 = phi float [ %4647, %4791 ], [ %4647, %4872 ], [ %5131, %5120 ], [ %4647, %4633 ]
  %4779 = phi float [ %4648, %4791 ], [ %4648, %4872 ], [ %5132, %5120 ], [ %4648, %4633 ]
  %4780 = phi float [ %4649, %4791 ], [ %4649, %4872 ], [ %4978, %5120 ], [ %4649, %4633 ]
  %4781 = phi float [ %4650, %4791 ], [ %4650, %4872 ], [ %4979, %5120 ], [ %4650, %4633 ]
  %4782 = phi float [ %4651, %4791 ], [ %4651, %4872 ], [ %4980, %5120 ], [ %4651, %4633 ]
  %4783 = phi float [ %4652, %4791 ], [ %4652, %4872 ], [ %5052, %5120 ], [ %4652, %4633 ]
  %4784 = phi float [ %4653, %4791 ], [ %4653, %4872 ], [ %5049, %5120 ], [ %4653, %4633 ]
  %4785 = phi float [ %4654, %4791 ], [ %4654, %4872 ], [ %5046, %5120 ], [ %4654, %4633 ]
  %4786 = phi float [ %4655, %4791 ], [ %4655, %4872 ], [ %4995, %5120 ], [ %4655, %4633 ]
  %4787 = phi float [ %4656, %4791 ], [ %4656, %4872 ], [ %4990, %5120 ], [ %4656, %4633 ]
  %4788 = phi float [ %4657, %4791 ], [ %4657, %4872 ], [ %4991, %5120 ], [ %4657, %4633 ]
  %4789 = phi float [ %4658, %4791 ], [ %4658, %4872 ], [ %4992, %5120 ], [ %4658, %4633 ]
  %4790 = icmp eq i32 %4715, %4632
  br i1 %4790, label %5133, label %4633

; <label>:4791                                    ; preds = %4633
  %4792 = extractvalue %dx.types.ResRet.f32 %4685, 3
  %4793 = extractvalue %dx.types.ResRet.f32 %4685, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4795 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4796 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4797 = extractvalue %dx.types.ResRet.i32 %4671, 3
  %4798 = extractvalue %dx.types.ResRet.i32 %4671, 2
  %4799 = add i32 %4797, 0
  %4800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4800, %dx.types.Handle %4801, float %4724, float %4731, float undef, float undef, i32 0, i32 0, i32 undef, float %4752, float %4754, float undef, float %4753, float %4755, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = fmul fast float %4803, %4796
  %4805 = fadd fast float %4804, %4795
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4724, %4680
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4681, float %4731, float %4807)  ; FMad(a,b,c)
  %4809 = fadd fast float %4808, %4794
  %4810 = fmul fast float %4724, %4682
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4731, float %4810)  ; FMad(a,b,c)
  %4812 = fadd fast float %4811, %4793
  %4813 = fmul fast float %4752, %4680
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4681, float %4754, float %4813)  ; FMad(a,b,c)
  %4815 = fmul fast float %4752, %4682
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4754, float %4815)  ; FMad(a,b,c)
  %4817 = fmul fast float %4753, %4680
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4681, float %4755, float %4817)  ; FMad(a,b,c)
  %4819 = fmul fast float %4753, %4682
  %4820 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4755, float %4819)  ; FMad(a,b,c)
  %4821 = add i32 %4798, 0
  %4822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4821, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4822, %dx.types.Handle %4801, float %4809, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4816, float undef, float %4818, float %4820, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = and i32 %4716, 1024
  %4826 = icmp ne i32 %4825, 0
  %4827 = fcmp fast ogt float %4824, 0x3FE0101020000000
  %4828 = uitofp i1 %4827 to float
  %4829 = select i1 %4826, float %4828, float %4824
  %4830 = and i32 %4716, 8192
  %4831 = icmp ne i32 %4830, 0
  %4832 = select i1 %4831, float %4792, float 1.000000e+00
  %4833 = fmul fast float %4724, 2.000000e+00
  %4834 = fadd fast float %4833, -1.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 6, float %4834)  ; FAbs(value)
  %4836 = fmul fast float %4835, %4713
  %4837 = fsub fast float %4836, %4713
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4731, 2.000000e+00
  %4840 = fadd fast float %4839, -1.000000e+00
  %4841 = call float @dx.op.unary.f32(i32 6, float %4840)  ; FAbs(value)
  %4842 = fmul fast float %4841, %4714
  %4843 = fsub fast float %4842, %4714
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fmul fast float %4743, %4676
  %4846 = fsub fast float %4845, %4676
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fmul fast float %4806, %4832
  %4849 = fmul fast float %4848, %4803
  %4850 = fmul fast float %4849, %4838
  %4851 = fmul fast float %4850, %4829
  %4852 = fmul fast float %4851, %4844
  %4853 = fmul fast float %4852, %4847
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4857 = fsub fast float %4760, %4856
  %4858 = fmul fast float %4857, %4855
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4853, %4677
  %4861 = fadd fast float %4853, %4677
  %4862 = fmul fast float %4861, %4686
  %4863 = fsub fast float %4862, %4686
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = and i32 %4716, 128
  %4866 = icmp ne i32 %4865, 0
  %4867 = select i1 %4866, float %4864, float %4860
  %4868 = fmul fast float %4867, %4859
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = fcmp fast ugt float %4868, %4870
  br i1 %4871, label %4872, label %4765

; <label>:4872                                    ; preds = %4791
  %4873 = select i1 %4831, float %4868, float 0.000000e+00
  %4874 = fadd fast float %4873, %4635
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  br i1 %4831, label %4765, label %4876

; <label>:4876                                    ; preds = %4872
  %4877 = and i32 %4716, 4
  %4878 = and i32 %4716, 8
  %4879 = add i32 %4672, 0
  %4880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4879, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4882 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4880, %dx.types.Handle %4881, float %4809, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4816, float undef, float %4818, float %4820, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = extractvalue %dx.types.ResRet.f32 %4882, 3
  %4887 = bitcast float %4698 to i32
  %4888 = and i32 %4887, 255
  %4889 = uitofp i32 %4888 to float
  %4890 = lshr i32 %4887, 8
  %4891 = and i32 %4890, 255
  %4892 = uitofp i32 %4891 to float
  %4893 = fmul fast float %4886, %4889
  %4894 = fadd fast float %4893, %4892
  %4895 = fmul fast float %4894, 0x3F70101000000000
  %4896 = add i32 %4673, 0
  %4897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4896, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4898 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4897, %dx.types.Handle %4881, float %4809, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4816, float undef, float %4818, float %4820, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.ResRet.f32 %4898, 2
  %4902 = extractvalue %dx.types.ResRet.f32 %4898, 3
  %4903 = bitcast float %4692 to i32
  %4904 = and i32 %4903, 255
  %4905 = uitofp i32 %4904 to float
  %4906 = lshr i32 %4903, 8
  %4907 = and i32 %4906, 255
  %4908 = uitofp i32 %4907 to float
  %4909 = lshr i32 %4903, 16
  %4910 = and i32 %4909, 255
  %4911 = uitofp i32 %4910 to float
  %4912 = fmul fast float %4911, 0x3F70101000000000
  %4913 = fmul fast float %4899, %4905
  %4914 = fadd fast float %4913, %4908
  %4915 = fmul fast float %4914, 0x3F70101000000000
  %4916 = fadd fast float %4900, -5.000000e-01
  %4917 = fadd fast float %4902, -5.000000e-01
  %4918 = fmul fast float %4916, %4912
  %4919 = fmul fast float %4917, %4912
  %4920 = fadd fast float %4918, 5.000000e-01
  %4921 = fadd fast float %4919, 5.000000e-01
  %4922 = fmul fast float %4883, %4701
  %4923 = fmul fast float %4884, %4702
  %4924 = fmul fast float %4885, %4703
  %4925 = fmul fast float %4920, 2.000000e+00
  %4926 = fadd fast float %4925, -1.000000e+00
  %4927 = fmul fast float %4921, 2.000000e+00
  %4928 = fadd fast float %4927, -1.000000e+00
  %4929 = fadd fast float %4926, %4928
  %4930 = fmul fast float %4929, 5.000000e-01
  %4931 = fsub fast float %4926, %4928
  %4932 = fmul fast float %4931, 5.000000e-01
  %4933 = call float @dx.op.unary.f32(i32 6, float %4930)  ; FAbs(value)
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = call float @dx.op.unary.f32(i32 6, float %4932)  ; FAbs(value)
  %4936 = fsub fast float %4934, %4935
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4932, float %4936, float %4930, float %4932, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 25, float %4937)  ; Rsqrt(value)
  %4939 = fmul fast float %4930, %4938
  %4940 = fmul fast float %4932, %4938
  %4941 = fmul fast float %4938, %4936
  %4942 = fmul fast float %4941, %4666
  %4943 = fmul fast float %4941, %4667
  %4944 = fmul fast float %4941, %4668
  %4945 = fmul fast float %4939, %4689
  %4946 = fmul fast float %4939, %4690
  %4947 = fmul fast float %4939, %4691
  %4948 = fadd fast float %4945, %4942
  %4949 = fadd fast float %4946, %4943
  %4950 = fadd fast float %4947, %4944
  %4951 = fmul fast float %4940, %4695
  %4952 = fmul fast float %4940, %4696
  %4953 = fmul fast float %4940, %4697
  %4954 = fadd fast float %4948, %4951
  %4955 = fadd fast float %4949, %4952
  %4956 = fadd fast float %4950, %4953
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float %4954, float %4955, float %4956)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call float @dx.op.unary.f32(i32 25, float %4957)  ; Rsqrt(value)
  %4959 = fmul fast float %4954, %4958
  %4960 = fmul fast float %4955, %4958
  %4961 = fmul fast float %4956, %4958
  %4962 = icmp ne i32 %4878, 0
  %4963 = select i1 %4962, float 1.000000e+00, float 0.000000e+00
  %4964 = fmul fast float %4868, %4963
  %4965 = and i32 %4716, 1
  %4966 = icmp eq i32 %4965, 0
  br i1 %4966, label %4967, label %4971

; <label>:4967                                    ; preds = %4876
  %4968 = fsub fast float %4959, %4649
  %4969 = fsub fast float %4960, %4650
  %4970 = fsub fast float %4961, %4651
  br label %4971

; <label>:4971                                    ; preds = %4967, %4876
  %4972 = phi float [ %4968, %4967 ], [ %4959, %4876 ]
  %4973 = phi float [ %4969, %4967 ], [ %4960, %4876 ]
  %4974 = phi float [ %4970, %4967 ], [ %4961, %4876 ]
  %4975 = fmul float %4974, %4964
  %4976 = fmul float %4973, %4964
  %4977 = fmul float %4972, %4964
  %4978 = fadd fast float %4977, %4649
  %4979 = fadd fast float %4976, %4650
  %4980 = fadd fast float %4975, %4651
  %4981 = icmp ne i32 %4877, 0
  %4982 = select i1 %4981, float 1.000000e+00, float 0.000000e+00
  %4983 = fmul fast float %4868, %4982
  %4984 = fsub fast float %4922, %4656
  %4985 = fsub fast float %4923, %4657
  %4986 = fsub fast float %4924, %4658
  %4987 = fmul fast float %4984, %4983
  %4988 = fmul fast float %4985, %4983
  %4989 = fmul fast float %4986, %4983
  %4990 = fadd fast float %4987, %4656
  %4991 = fadd fast float %4988, %4657
  %4992 = fadd fast float %4989, %4658
  %4993 = fsub fast float %4895, %4655
  %4994 = fmul fast float %4993, %4983
  %4995 = fadd fast float %4994, %4655
  %4996 = fmul fast float %4983, %4642
  %4997 = fsub fast float %4642, %4996
  %4998 = fmul fast float %4983, %4641
  %4999 = fsub fast float %4641, %4998
  %5000 = bitcast float %4710 to i32
  %5001 = lshr i32 %5000, 16
  %5002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5001)  ; LegacyF16ToF32(value)
  %5003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5004 = extractvalue %dx.types.ResRet.i32 %5003, 0
  %5005 = and i32 %5004, 1
  %5006 = icmp eq i32 %5005, 0
  br i1 %5006, label %5007, label %5032

; <label>:5007                                    ; preds = %4971
  %5008 = fadd fast float %4895, 0xBFB99999A0000000
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = fmul fast float %5009, 0x3FF1C71C80000000
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, %4922
  %5014 = fmul fast float %5012, %4923
  %5015 = fmul fast float %5012, %4924
  %5016 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5017, float %5018)  ; FMax(a,b)
  %5020 = call float @dx.op.binary.f32(i32 35, float %5016, float %5019)  ; FMax(a,b)
  %5021 = fcmp fast ogt float %5020, 0.000000e+00
  %5022 = bitcast float %5020 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = select i1 %5021, float %5024, float 0.000000e+00
  %5026 = fmul fast float %5016, %5002
  %5027 = fmul fast float %5017, %5002
  %5028 = fmul fast float %5018, %5002
  %5029 = fmul fast float %5026, %5025
  %5030 = fmul fast float %5027, %5025
  %5031 = fmul fast float %5028, %5025
  br label %5032

; <label>:5032                                    ; preds = %5007, %4971
  %5033 = phi float [ %5002, %4971 ], [ %5029, %5007 ]
  %5034 = phi float [ %5002, %4971 ], [ %5030, %5007 ]
  %5035 = phi float [ %5002, %4971 ], [ %5031, %5007 ]
  %5036 = fsub fast float %5033, %4643
  %5037 = fsub fast float %5034, %4644
  %5038 = fsub fast float %5035, %4645
  %5039 = fmul fast float %5036, %4983
  %5040 = fmul fast float %5037, %4983
  %5041 = fmul fast float %5038, %4983
  %5042 = fadd fast float %5039, %4643
  %5043 = fadd fast float %5040, %4644
  %5044 = fadd fast float %5041, %4645
  %5045 = fadd fast float %4868, %4654
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fsub fast float %4915, %4653
  %5048 = fmul fast float %5047, %4964
  %5049 = fadd fast float %5048, %4653
  %5050 = fsub fast float %4901, %4652
  %5051 = fmul fast float %5050, %4964
  %5052 = fadd fast float %5051, %4652
  br i1 %4966, label %5061, label %5053

; <label>:5053                                    ; preds = %5032
  %5054 = and i32 %4716, 32768
  %5055 = icmp eq i32 %5054, 0
  br i1 %5055, label %5071, label %5056

; <label>:5056                                    ; preds = %5053
  %5057 = fmul fast float %4964, 1.270000e+02
  %5058 = fadd fast float %5057, %4638
  %5059 = fadd fast float %5057, %4639
  %5060 = fadd fast float %5057, %4640
  br label %5071

; <label>:5061                                    ; preds = %5032
  %5062 = fsub fast float 1.270000e+02, %4638
  %5063 = fsub fast float 1.270000e+02, %4639
  %5064 = fsub fast float 1.270000e+02, %4640
  %5065 = fmul fast float %4964, %5062
  %5066 = fmul fast float %4964, %5063
  %5067 = fmul fast float %4964, %5064
  %5068 = fadd fast float %5065, %4638
  %5069 = fadd fast float %5066, %4639
  %5070 = fadd fast float %5067, %4640
  br label %5071

; <label>:5071                                    ; preds = %5061, %5056, %5053
  %5072 = phi float [ %5058, %5056 ], [ %4638, %5053 ], [ %5068, %5061 ]
  %5073 = phi float [ %5059, %5056 ], [ %4639, %5053 ], [ %5069, %5061 ]
  %5074 = phi float [ %5060, %5056 ], [ %4640, %5053 ], [ %5070, %5061 ]
  %5075 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5078 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5079 = fmul fast float %5078, %5075
  %5080 = fadd fast float %5079, %5077
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = bitcast float %4704 to i32
  %5083 = and i32 %5082, 65535
  %5084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5083)  ; LegacyF16ToF32(value)
  %5085 = lshr i32 %5082, 16
  %5086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5085)  ; LegacyF16ToF32(value)
  %5087 = fcmp fast oge float %5084, 0.000000e+00
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = select i1 %5087, float %5084, float %5089
  %5091 = fadd fast float %5090, %5086
  %5092 = fsub fast float %5081, %4637
  %5093 = fmul fast float %5092, %4868
  %5094 = fadd fast float %5093, %4637
  %5095 = fmul fast float %5091, %4868
  %5096 = call float @dx.op.binary.f32(i32 35, float %4636, float %5095)  ; FMax(a,b)
  %5097 = and i32 %4716, 16
  %5098 = icmp eq i32 %5097, 0
  br i1 %5098, label %5120, label %5099

; <label>:5099                                    ; preds = %5071
  %5100 = add i32 %4707, 0
  %5101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5100, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5102 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5101, %dx.types.Handle %4881, float %4809, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float %4814, float %4816, float undef, float %4818, float %4820, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 1
  %5105 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5106 = and i32 %5000, 65535
  %5107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5106)  ; LegacyF16ToF32(value)
  %5108 = fmul fast float %5103, %4701
  %5109 = fmul fast float %5104, %4702
  %5110 = fmul fast float %5105, %4703
  %5111 = and i32 %4716, 16384
  %5112 = icmp ne i32 %5111, 0
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = select i1 %5112, float %5114, float 1.000000e+00
  %5116 = fmul fast float %5115, %5107
  %5117 = fmul fast float %5108, %5116
  %5118 = fmul fast float %5109, %5116
  %5119 = fmul fast float %5110, %5116
  br label %5120

; <label>:5120                                    ; preds = %5099, %5071
  %5121 = phi float [ %5117, %5099 ], [ 0.000000e+00, %5071 ]
  %5122 = phi float [ %5118, %5099 ], [ 0.000000e+00, %5071 ]
  %5123 = phi float [ %5119, %5099 ], [ 0.000000e+00, %5071 ]
  %5124 = fsub fast float %5121, %4646
  %5125 = fsub fast float %5122, %4647
  %5126 = fsub fast float %5123, %4648
  %5127 = fmul fast float %5124, %4868
  %5128 = fmul fast float %5125, %4868
  %5129 = fmul fast float %5126, %4868
  %5130 = fadd fast float %5127, %4646
  %5131 = fadd fast float %5128, %4647
  %5132 = fadd fast float %5129, %4648
  br label %4765

; <label>:5133                                    ; preds = %4765
  br label %5134

; <label>:5134                                    ; preds = %5133, %4579
  %5135 = phi float [ 0.000000e+00, %4579 ], [ %4766, %5133 ]
  %5136 = phi float [ %4548, %4579 ], [ %4767, %5133 ]
  %5137 = phi float [ %4546, %4579 ], [ %4768, %5133 ]
  %5138 = phi float [ %4538, %4579 ], [ %4769, %5133 ]
  %5139 = phi float [ %4539, %4579 ], [ %4770, %5133 ]
  %5140 = phi float [ %4540, %4579 ], [ %4771, %5133 ]
  %5141 = phi float [ %4545, %4579 ], [ %4772, %5133 ]
  %5142 = phi float [ 0.000000e+00, %4579 ], [ %4773, %5133 ]
  %5143 = phi float [ %4535, %4579 ], [ %4774, %5133 ]
  %5144 = phi float [ %4536, %4579 ], [ %4775, %5133 ]
  %5145 = phi float [ %4537, %4579 ], [ %4776, %5133 ]
  %5146 = phi float [ %4532, %4579 ], [ %4777, %5133 ]
  %5147 = phi float [ %4533, %4579 ], [ %4778, %5133 ]
  %5148 = phi float [ %4534, %4579 ], [ %4779, %5133 ]
  %5149 = phi float [ %4574, %4579 ], [ %4780, %5133 ]
  %5150 = phi float [ %4575, %4579 ], [ %4781, %5133 ]
  %5151 = phi float [ %4576, %4579 ], [ %4782, %5133 ]
  %5152 = phi float [ %4543, %4579 ], [ %4783, %5133 ]
  %5153 = phi float [ %4542, %4579 ], [ %4784, %5133 ]
  %5154 = phi float [ 0.000000e+00, %4579 ], [ %4785, %5133 ]
  %5155 = phi float [ %4541, %4579 ], [ %4786, %5133 ]
  %5156 = phi float [ %4529, %4579 ], [ %4787, %5133 ]
  %5157 = phi float [ %4530, %4579 ], [ %4788, %5133 ]
  %5158 = phi float [ %4531, %4579 ], [ %4789, %5133 ]
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float %5149, float %5150, float %5151)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.unary.f32(i32 25, float %5159)  ; Rsqrt(value)
  %5161 = fmul fast float %5160, %5149
  %5162 = fmul fast float %5160, %5150
  %5163 = fmul fast float %5160, %5151
  %5164 = fadd fast float %5154, %1295
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5163, float %5161, float %5162, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.unary.f32(i32 25, float %5166)  ; Rsqrt(value)
  %5168 = fmul fast float %5167, %5161
  %5169 = fmul fast float %5167, %5162
  %5170 = fmul fast float %5167, %5163
  br label %5171

; <label>:5171                                    ; preds = %5134, %4526
  %5172 = phi float [ %5168, %5134 ], [ %4574, %4526 ]
  %5173 = phi float [ %5169, %5134 ], [ %4575, %4526 ]
  %5174 = phi float [ %5170, %5134 ], [ %4576, %4526 ]
  %5175 = phi float [ %5156, %5134 ], [ %4529, %4526 ]
  %5176 = phi float [ %5157, %5134 ], [ %4530, %4526 ]
  %5177 = phi float [ %5158, %5134 ], [ %4531, %4526 ]
  %5178 = phi float [ %5146, %5134 ], [ %4532, %4526 ]
  %5179 = phi float [ %5147, %5134 ], [ %4533, %4526 ]
  %5180 = phi float [ %5148, %5134 ], [ %4534, %4526 ]
  %5181 = phi float [ %5143, %5134 ], [ %4535, %4526 ]
  %5182 = phi float [ %5144, %5134 ], [ %4536, %4526 ]
  %5183 = phi float [ %5145, %5134 ], [ %4537, %4526 ]
  %5184 = phi float [ %5138, %5134 ], [ %4538, %4526 ]
  %5185 = phi float [ %5139, %5134 ], [ %4539, %4526 ]
  %5186 = phi float [ %5140, %5134 ], [ %4540, %4526 ]
  %5187 = phi float [ %5155, %5134 ], [ %4541, %4526 ]
  %5188 = phi float [ %5165, %5134 ], [ %1295, %4526 ]
  %5189 = phi float [ %5153, %5134 ], [ %4542, %4526 ]
  %5190 = phi float [ %5152, %5134 ], [ %4543, %4526 ]
  %5191 = phi float [ %5142, %5134 ], [ 0.000000e+00, %4526 ]
  %5192 = phi float [ %5141, %5134 ], [ %4545, %4526 ]
  %5193 = phi float [ %5135, %5134 ], [ 0.000000e+00, %4526 ]
  %5194 = phi float [ %5136, %5134 ], [ %4548, %4526 ]
  %5195 = phi float [ %5137, %5134 ], [ %4546, %4526 ]
  %5196 = add i32 %56, 392
  %5197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.i32 %5197, 0
  %5199 = extractvalue %dx.types.ResRet.i32 %5197, 1
  %5200 = extractvalue %dx.types.ResRet.i32 %5197, 2
  %5201 = extractvalue %dx.types.ResRet.i32 %5197, 3
  %5202 = bitcast i32 %5198 to float
  %5203 = bitcast i32 %5199 to float
  %5204 = bitcast i32 %5200 to float
  %5205 = bitcast i32 %5201 to float
  %5206 = fsub fast float %5175, %5202
  %5207 = fsub fast float %5176, %5203
  %5208 = fsub fast float %5177, %5204
  %5209 = fmul fast float %5206, %191
  %5210 = fmul fast float %5207, %191
  %5211 = fmul fast float %5208, %191
  %5212 = fadd fast float %5209, %5202
  %5213 = fadd fast float %5210, %5203
  %5214 = fadd fast float %5211, %5204
  %5215 = fsub fast float %5188, %5205
  %5216 = fmul fast float %5215, %191
  %5217 = fadd fast float %5216, %5205
  %5218 = fadd fast float %5187, 0xBFB99999A0000000
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5219, 0x3FF1C71C80000000
  %5221 = call float @dx.op.binary.f32(i32 36, float %5187, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5222 = fsub fast float 1.000000e+00, %5220
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fmul fast float %5212, %5223
  %5225 = fmul fast float %5213, %5223
  %5226 = fmul fast float %5214, %5223
  %5227 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5229 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5230 = fmul fast float %5212, %5220
  %5231 = fmul fast float %5213, %5220
  %5232 = fmul fast float %5214, %5220
  %5233 = fadd fast float %5230, %5221
  %5234 = fadd fast float %5231, %5221
  %5235 = fadd fast float %5232, %5221
  %5236 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5239 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.i32 %5240, 0
  %5242 = and i32 %5241, 1
  %5243 = icmp eq i32 %5242, 0
  br i1 %5243, label %5258, label %5244

; <label>:5244                                    ; preds = %5171
  %5245 = call float @dx.op.binary.f32(i32 35, float %5228, float %5229)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5227, float %5245)  ; FMax(a,b)
  %5247 = fcmp fast ogt float %5246, 0.000000e+00
  %5248 = bitcast float %5246 to i32
  %5249 = sub nsw i32 2129859010, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = select i1 %5247, float %5250, float 0.000000e+00
  %5252 = fmul fast float %5227, %5181
  %5253 = fmul fast float %5228, %5182
  %5254 = fmul fast float %5229, %5183
  %5255 = fmul fast float %5252, %5251
  %5256 = fmul fast float %5253, %5251
  %5257 = fmul fast float %5254, %5251
  br label %5258

; <label>:5258                                    ; preds = %5244, %5171
  %5259 = phi float [ %5255, %5244 ], [ %5181, %5171 ]
  %5260 = phi float [ %5256, %5244 ], [ %5182, %5171 ]
  %5261 = phi float [ %5257, %5244 ], [ %5183, %5171 ]
  %5262 = call float @dx.op.binary.f32(i32 36, float %5184, float 1.270000e+02)  ; FMin(a,b)
  %5263 = call float @dx.op.binary.f32(i32 36, float %5185, float 1.270000e+02)  ; FMin(a,b)
  %5264 = call float @dx.op.binary.f32(i32 36, float %5186, float 1.270000e+02)  ; FMin(a,b)
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 3
  %5267 = and i32 %5266, 8
  %5268 = icmp ne i32 %5267, 0
  %5269 = call float @dx.op.binary.f32(i32 35, float %5227, float %5212)  ; FMax(a,b)
  %5270 = call float @dx.op.binary.f32(i32 35, float %5228, float %5212)  ; FMax(a,b)
  %5271 = call float @dx.op.binary.f32(i32 35, float %5229, float %5212)  ; FMax(a,b)
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5228, float %5229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = select i1 %251, float %5212, float %5227
  %5274 = select i1 %251, float %5272, float %5228
  %5275 = select i1 %251, float 1.000000e+00, float %5229
  %5276 = select i1 %5268, float %5269, float %5273
  %5277 = select i1 %5268, float %5270, float %5274
  %5278 = select i1 %5268, float %5271, float %5275
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %251, float %5279, float %5259
  %5281 = select i1 %251, float %5279, float %5260
  %5282 = select i1 %251, float %5279, float %5261
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5287 = fadd fast float %5284, %157
  %5288 = fadd fast float %5285, %158
  %5289 = fadd fast float %5286, %159
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5290, 1
  %5293 = fsub fast float %5287, %5291
  %5294 = fsub fast float %5288, %5292
  %5295 = fmul fast float %5293, %5293
  %5296 = fmul fast float %5294, %5294
  %5297 = fadd fast float %5295, %5296
  %5298 = call float @dx.op.unary.f32(i32 24, float %5297)  ; Sqrt(value)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5290, 2
  %5300 = fcmp fast olt float %5298, %5299
  br i1 %5300, label %5301, label %5368

; <label>:5301                                    ; preds = %5258
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5302, 3
  %5312 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5313 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5314 = fadd fast float %5311, %5287
  %5315 = fadd fast float %5312, %5288
  %5316 = fadd fast float %5313, %5289
  %5317 = fmul fast float %5314, %5303
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5305, float %5317)  ; FMad(a,b,c)
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5307, float %5318)  ; FMad(a,b,c)
  %5320 = fmul fast float %5314, %5308
  %5321 = call float @dx.op.tertiary.f32(i32 46, float %5315, float %5309, float %5320)  ; FMad(a,b,c)
  %5322 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5310, float %5321)  ; FMad(a,b,c)
  %5323 = fsub fast float %5319, %5311
  %5324 = fsub fast float %5322, %5312
  %5325 = fsub fast float %5323, %5291
  %5326 = fadd fast float %5325, %5299
  %5327 = fsub fast float %5324, %5292
  %5328 = fadd fast float %5327, %5299
  %5329 = extractvalue %dx.types.CBufRet.f32 %5290, 3
  %5330 = fmul fast float %5326, %5329
  %5331 = fmul fast float %5328, %5329
  %5332 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5334 = fsub fast float 1.000000e+00, %5332
  %5335 = fsub fast float 1.000000e+00, %5333
  %5336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = fcmp fast ugt float %5337, 0.000000e+00
  br i1 %5338, label %5339, label %5642

; <label>:5339                                    ; preds = %5301
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5342 = fmul fast float %5341, %5337
  %5343 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5344 = fadd fast float %5343, %5342
  %5345 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5346 = fadd fast float %5344, %5313
  %5347 = fmul fast float %5319, %5307
  %5348 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5310, float %5347)  ; FMad(a,b,c)
  %5349 = call float @dx.op.tertiary.f32(i32 46, float %5346, float %5345, float %5348)  ; FMad(a,b,c)
  %5350 = fsub fast float %5349, %5313
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5353 = fsub fast float %5350, %5352
  %5354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.ResRet.f32 %5354, 1
  %5357 = extractvalue %dx.types.ResRet.f32 %5354, 2
  %5358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5334, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = extractvalue %dx.types.ResRet.f32 %5358, 1
  %5361 = extractvalue %dx.types.ResRet.f32 %5358, 2
  %5362 = fadd fast float %5359, %5355
  %5363 = fmul fast float %5362, 0x3F847AE140000000
  %5364 = fadd fast float %5360, %5356
  %5365 = fmul fast float %5364, 0x3F847AE140000000
  %5366 = fadd fast float %5361, %5357
  %5367 = fmul fast float %5366, 0x3F847AE140000000
  br label %5642

; <label>:5368                                    ; preds = %5258
  %5369 = and i32 %227, 1
  %5370 = icmp eq i32 %5369, 0
  br i1 %5370, label %5642, label %5371

; <label>:5371                                    ; preds = %5368
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5379 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5372, 3
  %5382 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5383 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5384 = fadd fast float %5381, %5287
  %5385 = fadd fast float %5382, %5288
  %5386 = fadd fast float %5383, %5289
  %5387 = fmul fast float %5384, %5373
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %5385, float %5375, float %5387)  ; FMad(a,b,c)
  %5389 = call float @dx.op.tertiary.f32(i32 46, float %5386, float %5377, float %5388)  ; FMad(a,b,c)
  %5390 = fmul fast float %5384, %5378
  %5391 = call float @dx.op.tertiary.f32(i32 46, float %5385, float %5379, float %5390)  ; FMad(a,b,c)
  %5392 = call float @dx.op.tertiary.f32(i32 46, float %5386, float %5380, float %5391)  ; FMad(a,b,c)
  %5393 = fsub fast float %5389, %5381
  %5394 = fsub fast float %5392, %5382
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.i32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.i32 %5402, 1
  %5405 = udiv i32 %5404, %5403
  %5406 = fsub fast float %5393, %5396
  %5407 = fsub fast float %5394, %5397
  %5408 = call float @dx.op.binary.f32(i32 35, float %5406, float 0.000000e+00)  ; FMax(a,b)
  %5409 = call float @dx.op.binary.f32(i32 35, float %5407, float 0.000000e+00)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5408, float %5398)  ; FMin(a,b)
  %5411 = call float @dx.op.binary.f32(i32 36, float %5409, float %5399)  ; FMin(a,b)
  %5412 = add i32 %5403, -1
  %5413 = add i32 %5405, -1
  %5414 = fmul fast float %5410, %5401
  %5415 = fmul fast float %5411, %5401
  %5416 = fptoui float %5414 to i32
  %5417 = fptoui float %5415 to i32
  %5418 = call i32 @dx.op.binary.i32(i32 40, i32 %5416, i32 %5412)  ; UMin(a,b)
  %5419 = call i32 @dx.op.binary.i32(i32 40, i32 %5417, i32 %5413)  ; UMin(a,b)
  %5420 = mul i32 %5419, %5403
  %5421 = add i32 %5420, %5418
  %5422 = shl i32 %5421, 2
  %5423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.i32 %5423, 0
  %5425 = icmp eq i32 %5424, -1
  br i1 %5425, label %5642, label %5426

; <label>:5426                                    ; preds = %5371
  %5427 = mul i32 %5424, 148
  %5428 = add i32 %5427, 4
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = add i32 %5427, 8
  %5432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = add i32 %5427, 36
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = add i32 %5427, 60
  %5438 = add i32 %5427, 92
  %5439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.i32 %5439, 0
  %5441 = add i32 %5427, 116
  %5442 = fsub fast float %5393, %5430
  %5443 = fsub fast float %5394, %5433
  %5444 = fmul fast float %5401, %5442
  %5445 = fmul fast float %5401, %5443
  %5446 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5451 = call float @dx.op.unary.f32(i32 83, float %5446)  ; DerivCoarseX(value)
  %5452 = call float @dx.op.unary.f32(i32 83, float %5448)  ; DerivCoarseX(value)
  %5453 = call float @dx.op.unary.f32(i32 84, float %5446)  ; DerivCoarseY(value)
  %5454 = call float @dx.op.unary.f32(i32 84, float %5448)  ; DerivCoarseY(value)
  %5455 = fmul fast float %5451, %5450
  %5456 = fmul fast float %5452, %5450
  %5457 = fmul fast float %5453, %5450
  %5458 = fmul fast float %5454, %5450
  %5459 = call float @dx.op.dot2.f32(i32 54, float %5457, float %5458, float %5457, float %5458)  ; Dot2(ax,ay,bx,by)
  %5460 = call float @dx.op.dot2.f32(i32 54, float %5455, float %5456, float %5455, float %5456)  ; Dot2(ax,ay,bx,by)
  %5461 = call float @dx.op.binary.f32(i32 35, float %5460, float %5459)  ; FMax(a,b)
  %5462 = call float @dx.op.unary.f32(i32 23, float %5461)  ; Log(value)
  %5463 = fmul fast float %5462, 5.000000e-01
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5466 = fadd fast float %5465, %5463
  %5467 = call float @dx.op.binary.f32(i32 35, float %5466, float 0.000000e+00)  ; FMax(a,b)
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 3
  %5470 = fadd fast float %5469, %5467
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 3
  %5473 = fadd fast float %5470, %5472
  %5474 = add i32 %5440, 0
  %5475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5476 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5475, i32 0)  ; GetDimensions(handle,mipLevel)
  %5477 = extractvalue %dx.types.Dimensions %5476, 0
  %5478 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5477)  ; FirstbitLo(value)
  %5479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.i32 %5479, 1
  %5481 = sub nsw i32 %5480, %5478
  %5482 = sitofp i32 %5481 to float
  %5483 = fsub fast float %5473, %5482
  %5484 = call float @dx.op.binary.f32(i32 35, float %5483, float 0.000000e+00)  ; FMax(a,b)
  %5485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5475, %dx.types.Handle %48, float %5446, float %5448, float %5436, float undef, i32 0, i32 0, i32 undef, float %5484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5486 = extractvalue %dx.types.ResRet.f32 %5485, 0
  %5487 = fcmp ule float %5486, 0x3FE0101020000000
  %5488 = extractvalue %dx.types.CBufRet.i32 %5479, 0
  %5489 = and i32 %5488, 128
  %5490 = icmp ne i32 %5489, 0
  %5491 = and i1 %5487, %5490
  br i1 %5491, label %5642, label %5492

; <label>:5492                                    ; preds = %5426
  %5493 = add i32 %5427, 20
  %5494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = add i32 %5427, 24
  %5497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5496, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 0
  %5499 = add i32 %5427, 40
  %5500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5499, i32 undef)  ; BufferLoad(srv,index,wot)
  %5501 = extractvalue %dx.types.ResRet.f32 %5500, 0
  %5502 = add i32 %5427, 96
  %5503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5502, i32 undef)  ; BufferLoad(srv,index,wot)
  %5504 = extractvalue %dx.types.ResRet.i32 %5503, 0
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 2
  %5507 = fmul fast float %5506, %5446
  %5508 = fmul fast float %5506, %5448
  %5509 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5510 = fadd fast float %5507, %5509
  %5511 = fadd fast float %5508, %5509
  %5512 = add i32 %5504, 0
  %5513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5512, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5514 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5513, i32 0)  ; GetDimensions(handle,mipLevel)
  %5515 = extractvalue %dx.types.Dimensions %5514, 0
  %5516 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5515)  ; FirstbitLo(value)
  %5517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.i32 %5517, 1
  %5519 = sub nsw i32 %5518, %5516
  %5520 = sitofp i32 %5519 to float
  %5521 = fsub fast float %5470, %5520
  %5522 = call float @dx.op.binary.f32(i32 35, float %5521, float 0.000000e+00)  ; FMax(a,b)
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5513, %dx.types.Handle %48, float %5510, float %5511, float %5501, float undef, i32 0, i32 0, i32 undef, float %5522)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = fmul fast float %5524, %5495
  %5526 = fadd fast float %5525, %5498
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5530 = extractvalue %dx.types.CBufRet.f32 %5527, 2
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = extractvalue %dx.types.CBufRet.f32 %5527, 3
  %5536 = fadd fast float %5532, %5393
  %5537 = fadd fast float %5534, %5394
  %5538 = fadd fast float %5526, %5535
  %5539 = fmul fast float %5536, %5528
  %5540 = call float @dx.op.tertiary.f32(i32 46, float %5537, float %5529, float %5539)  ; FMad(a,b,c)
  %5541 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5530, float %5540)  ; FMad(a,b,c)
  %5542 = fsub fast float %5541, %5535
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5545 = fsub fast float %5542, %5544
  %5546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.i32 %5546, 0
  %5548 = call i32 @dx.op.binary.i32(i32 40, i32 %5424, i32 %5547)  ; UMin(a,b)
  %5549 = mul i32 %5548, 36
  %5550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5549, i32 undef)  ; BufferLoad(srv,index,wot)
  %5551 = extractvalue %dx.types.ResRet.i32 %5550, 0
  %5552 = add i32 %5549, 4
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5555 = fmul fast float %5554, %5446
  %5556 = fmul fast float %5554, %5448
  %5557 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5558 = fadd fast float %5555, %5557
  %5559 = fadd fast float %5556, %5557
  %5560 = icmp eq i32 %5551, 0
  br i1 %5560, label %5629, label %5561

; <label>:5561                                    ; preds = %5492
  br label %5562

; <label>:5562                                    ; preds = %5619, %5561
  %5563 = phi float [ %5620, %5619 ], [ 0.000000e+00, %5561 ]
  %5564 = phi float [ %5621, %5619 ], [ 0.000000e+00, %5561 ]
  %5565 = phi float [ %5622, %5619 ], [ 0.000000e+00, %5561 ]
  %5566 = phi float [ %5623, %5619 ], [ 0.000000e+00, %5561 ]
  %5567 = phi float [ %5624, %5619 ], [ 0.000000e+00, %5561 ]
  %5568 = phi float [ %5625, %5619 ], [ 0.000000e+00, %5561 ]
  %5569 = phi i32 [ %5626, %5619 ], [ 0, %5561 ]
  %5570 = shl i32 %5569, 2
  %5571 = add i32 %5437, %5570
  %5572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5571, i32 undef)  ; BufferLoad(srv,index,wot)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = add i32 %5441, %5570
  %5575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5574, i32 undef)  ; BufferLoad(srv,index,wot)
  %5576 = extractvalue %dx.types.ResRet.i32 %5575, 0
  %5577 = add i32 %5576, 0
  %5578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5577, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5579 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5578, i32 0)  ; GetDimensions(handle,mipLevel)
  %5580 = extractvalue %dx.types.Dimensions %5579, 0
  %5581 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5580)  ; FirstbitLo(value)
  %5582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5583 = extractvalue %dx.types.CBufRet.i32 %5582, 1
  %5584 = sub nsw i32 %5583, %5581
  %5585 = sitofp i32 %5584 to float
  %5586 = fsub fast float %5470, %5585
  %5587 = call float @dx.op.binary.f32(i32 35, float %5586, float 0.000000e+00)  ; FMax(a,b)
  %5588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5578, %dx.types.Handle %48, float %5558, float %5559, float %5573, float undef, i32 0, i32 0, i32 undef, float %5587)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = fcmp fast ogt float %5589, 0.000000e+00
  br i1 %5590, label %5591, label %5619

; <label>:5591                                    ; preds = %5562
  %5592 = add i32 %5552, %5570
  %5593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.i32 %5593, 0
  %5595 = and i32 %5594, 32767
  %5596 = mul nuw nsw i32 %5595, 928
  %5597 = add nuw nsw i32 %5596, 48
  %5598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5597, i32 undef)  ; BufferLoad(srv,index,wot)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = add nuw nsw i32 %5596, 60
  %5603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5602, i32 undef)  ; BufferLoad(srv,index,wot)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.ResRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.ResRet.f32 %5603, 2
  %5607 = fmul fast float %5599, %5589
  %5608 = fmul fast float %5600, %5589
  %5609 = fmul fast float %5601, %5589
  %5610 = fadd fast float %5607, %5563
  %5611 = fadd fast float %5608, %5564
  %5612 = fadd fast float %5609, %5565
  %5613 = fmul fast float %5604, %5589
  %5614 = fmul fast float %5605, %5589
  %5615 = fmul fast float %5606, %5589
  %5616 = fadd fast float %5613, %5566
  %5617 = fadd fast float %5614, %5567
  %5618 = fadd fast float %5615, %5568
  br label %5619

; <label>:5619                                    ; preds = %5591, %5562
  %5620 = phi float [ %5610, %5591 ], [ %5563, %5562 ]
  %5621 = phi float [ %5611, %5591 ], [ %5564, %5562 ]
  %5622 = phi float [ %5612, %5591 ], [ %5565, %5562 ]
  %5623 = phi float [ %5616, %5591 ], [ %5566, %5562 ]
  %5624 = phi float [ %5617, %5591 ], [ %5567, %5562 ]
  %5625 = phi float [ %5618, %5591 ], [ %5568, %5562 ]
  %5626 = add nuw i32 %5569, 1
  %5627 = icmp eq i32 %5626, %5551
  br i1 %5627, label %5628, label %5562

; <label>:5628                                    ; preds = %5619
  br label %5629

; <label>:5629                                    ; preds = %5628, %5492
  %5630 = phi float [ 0.000000e+00, %5492 ], [ %5620, %5628 ]
  %5631 = phi float [ 0.000000e+00, %5492 ], [ %5621, %5628 ]
  %5632 = phi float [ 0.000000e+00, %5492 ], [ %5622, %5628 ]
  %5633 = phi float [ 0.000000e+00, %5492 ], [ %5623, %5628 ]
  %5634 = phi float [ 0.000000e+00, %5492 ], [ %5624, %5628 ]
  %5635 = phi float [ 0.000000e+00, %5492 ], [ %5625, %5628 ]
  %5636 = fadd fast float %5633, %5630
  %5637 = fmul fast float %5636, 0x3F847AE140000000
  %5638 = fadd fast float %5634, %5631
  %5639 = fmul fast float %5638, 0x3F847AE140000000
  %5640 = fadd fast float %5635, %5632
  %5641 = fmul fast float %5640, 0x3F847AE140000000
  br label %5642

; <label>:5642                                    ; preds = %5629, %5426, %5371, %5368, %5339, %5301
  %5643 = phi float [ %5353, %5339 ], [ -1.310720e+05, %5301 ], [ %5545, %5629 ], [ -1.310720e+05, %5371 ], [ -1.310720e+05, %5426 ], [ -1.310720e+05, %5368 ]
  %5644 = phi float [ %5363, %5339 ], [ 0.000000e+00, %5301 ], [ %5637, %5629 ], [ 0.000000e+00, %5371 ], [ 0.000000e+00, %5426 ], [ 0.000000e+00, %5368 ]
  %5645 = phi float [ %5365, %5339 ], [ 0.000000e+00, %5301 ], [ %5639, %5629 ], [ 0.000000e+00, %5371 ], [ 0.000000e+00, %5426 ], [ 0.000000e+00, %5368 ]
  %5646 = phi float [ %5367, %5339 ], [ 0.000000e+00, %5301 ], [ %5641, %5629 ], [ 0.000000e+00, %5371 ], [ 0.000000e+00, %5426 ], [ 0.000000e+00, %5368 ]
  %5647 = phi i1 [ true, %5339 ], [ false, %5301 ], [ true, %5629 ], [ false, %5371 ], [ false, %5426 ], [ false, %5368 ]
  %5648 = and i32 %227, 3
  %5649 = icmp eq i32 %5648, 1
  %5650 = select i1 %5649, float 1.000000e+00, float 0.000000e+00
  %5651 = fsub fast float %5643, %159
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = select i1 %5647, float %5652, float 1.000000e+00
  %5654 = fmul fast float %5653, %5650
  %5655 = icmp eq i32 %5648, 3
  %5656 = select i1 %5655, float 1.000000e+00, float %5654
  %5657 = call float @dx.op.binary.f32(i32 35, float %5193, float %5656)  ; FMax(a,b)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fcmp fast une float %5658, 0.000000e+00
  %5660 = fsub fast float -0.000000e+00, %177
  %5661 = fsub fast float -0.000000e+00, %178
  %5662 = fsub fast float -0.000000e+00, %179
  br i1 %5659, label %5663, label %5825

; <label>:5663                                    ; preds = %5642
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = fmul fast float %5658, 2.500000e+00
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5658, 0x4013FFFFE0000000
  %5668 = fadd fast float %5667, 0xBFFFFFFFE0000000
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = fmul fast float %5658, 0x4004000020000000
  %5671 = fadd fast float %5670, 0xBFF8000040000000
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5674 = fmul fast float %5218, 1.000000e+01
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = fmul fast float %5675, 2.000000e+00
  %5677 = fsub fast float 3.000000e+00, %5676
  %5678 = fmul fast float %5675, %5675
  %5679 = fmul fast float %5678, %5677
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fsub fast float 0x3FE3333340000000, %5239
  %5682 = fmul fast float %5681, 0x400AAAAAA0000000
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %5680, %5683
  %5685 = fmul fast float %5276, 0x3FEA2B8620000000
  %5686 = fmul fast float %5277, 0x3FEA2B8620000000
  %5687 = fmul fast float %5278, 0x3FEA2B8620000000
  %5688 = fadd fast float %5685, 0x3FC81DFBA0000000
  %5689 = fmul fast float %5688, %5276
  %5690 = fadd fast float %5689, 0x3F910E6020000000
  %5691 = fadd fast float %5686, 0x3FC81DFBA0000000
  %5692 = fmul fast float %5691, %5277
  %5693 = fadd fast float %5692, 0x3F910E6020000000
  %5694 = fadd fast float %5687, 0x3FC81DFBA0000000
  %5695 = fmul fast float %5694, %5278
  %5696 = fadd fast float %5695, 0x3F910E6020000000
  %5697 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5700 = fsub fast float %5697, %5276
  %5701 = fsub fast float %5698, %5277
  %5702 = fsub fast float %5699, %5278
  %5703 = fmul fast float %5700, %5673
  %5704 = fmul fast float %5703, %5684
  %5705 = fmul fast float %5701, %5673
  %5706 = fmul fast float %5705, %5684
  %5707 = fmul fast float %5702, %5673
  %5708 = fmul fast float %5707, %5684
  %5709 = fadd fast float %5704, %5276
  %5710 = fadd fast float %5706, %5277
  %5711 = fadd fast float %5708, %5278
  %5712 = fmul fast float %5190, %5190
  %5713 = fmul fast float %5712, %5712
  %5714 = fadd fast float %5669, 1.000000e+00
  %5715 = fsub fast float %5714, %5684
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fsub fast float 1.000000e+00, %5713
  %5720 = call float @dx.op.binary.f32(i32 36, float %5716, float %5719)  ; FMin(a,b)
  %5721 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5722 = call float @dx.op.binary.f32(i32 35, float %5720, float %5721)  ; FMax(a,b)
  %5723 = fadd fast float %5718, 0xBFE4CCCCC0000000
  %5724 = fmul fast float %5723, 0x4006DB6DA0000000
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = fmul fast float %5725, 2.000000e+00
  %5727 = fsub fast float 3.000000e+00, %5726
  %5728 = bitcast float %5236 to i32
  %5729 = ashr i32 %5728, 1
  %5730 = add nsw i32 %5729, 532487669
  %5731 = bitcast i32 %5730 to float
  %5732 = fsub fast float 1.000000e+00, %5731
  %5733 = bitcast float %5732 to i32
  %5734 = sub nsw i32 2129859010, %5733
  %5735 = bitcast i32 %5734 to float
  %5736 = fmul fast float %5735, 2.000000e+00
  %5737 = bitcast float %5237 to i32
  %5738 = ashr i32 %5737, 1
  %5739 = add nsw i32 %5738, 532487669
  %5740 = bitcast i32 %5739 to float
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = bitcast float %5741 to i32
  %5743 = sub nsw i32 2129859010, %5742
  %5744 = bitcast i32 %5743 to float
  %5745 = fmul fast float %5744, 2.000000e+00
  %5746 = bitcast float %5238 to i32
  %5747 = ashr i32 %5746, 1
  %5748 = add nsw i32 %5747, 532487669
  %5749 = bitcast i32 %5748 to float
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = bitcast float %5750 to i32
  %5752 = sub nsw i32 2129859010, %5751
  %5753 = bitcast i32 %5752 to float
  %5754 = fmul fast float %5753, 2.000000e+00
  %5755 = fsub fast float 0x4002A9FBE0000000, %5736
  %5756 = fadd fast float %5736, 0x3FD54FDF00000000
  %5757 = bitcast float %5756 to i32
  %5758 = sub nsw i32 2129859010, %5757
  %5759 = bitcast i32 %5758 to float
  %5760 = fmul fast float %5759, %5755
  %5761 = fmul fast float %5760, %5760
  %5762 = fsub fast float 0x4002A9FBE0000000, %5745
  %5763 = fadd fast float %5745, 0x3FD54FDF00000000
  %5764 = bitcast float %5763 to i32
  %5765 = sub nsw i32 2129859010, %5764
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5766, %5762
  %5768 = fmul fast float %5767, %5767
  %5769 = fsub fast float 0x4002A9FBE0000000, %5754
  %5770 = fadd fast float %5754, 0x3FD54FDF00000000
  %5771 = bitcast float %5770 to i32
  %5772 = sub nsw i32 2129859010, %5771
  %5773 = bitcast i32 %5772 to float
  %5774 = fmul fast float %5773, %5769
  %5775 = fmul fast float %5774, %5774
  %5776 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5761)  ; FMax(a,b)
  %5777 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5768)  ; FMax(a,b)
  %5778 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5775)  ; FMax(a,b)
  %5779 = fsub fast float 1.000000e+00, %5664
  %5780 = fadd fast float %5779, %5680
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = fsub fast float 1.000000e+00, %5656
  %5783 = fmul fast float %5722, %5782
  %5784 = fmul fast float %5725, %5725
  %5785 = fmul fast float %5784, %5783
  %5786 = fmul fast float %5785, %5727
  %5787 = fmul fast float %5782, 0xBFE99999A0000000
  %5788 = fmul fast float %5787, %5673
  %5789 = fmul fast float %5788, %5684
  %5790 = fadd fast float %5789, 1.000000e+00
  %5791 = fadd fast float %5239, -1.000000e+00
  %5792 = fmul fast float %5790, %5791
  %5793 = fadd fast float %5792, 1.000000e+00
  %5794 = fsub fast float %5776, %5236
  %5795 = fsub fast float %5777, %5237
  %5796 = fsub fast float %5778, %5238
  %5797 = fmul fast float %5786, %5794
  %5798 = fmul fast float %5786, %5795
  %5799 = fmul fast float %5786, %5796
  %5800 = fadd fast float %5797, %5236
  %5801 = fadd fast float %5798, %5237
  %5802 = fadd fast float %5799, %5238
  %5803 = fsub fast float %109, %5172
  %5804 = fsub fast float %110, %5173
  %5805 = fsub fast float %111, %5174
  %5806 = fmul fast float %5786, %5803
  %5807 = fmul fast float %5786, %5804
  %5808 = fmul fast float %5786, %5805
  %5809 = fadd fast float %5806, %5172
  %5810 = fadd fast float %5807, %5173
  %5811 = fadd fast float %5808, %5174
  %5812 = fmul fast float %5786, %5781
  %5813 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5814 = fsub fast float 1.000000e+00, %5813
  %5815 = fmul fast float %5812, %5814
  %5816 = fadd fast float %5815, %5813
  %5817 = fsub fast float 1.000000e+00, %5190
  %5818 = fmul fast float %5786, %5817
  %5819 = fadd fast float %5818, %5190
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5810, float %5811, float %5809, float %5810, float %5811)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.unary.f32(i32 25, float %5820)  ; Rsqrt(value)
  %5822 = fmul fast float %5809, %5821
  %5823 = fmul fast float %5810, %5821
  %5824 = fmul fast float %5811, %5821
  br label %5825

; <label>:5825                                    ; preds = %5663, %5642
  %5826 = phi float [ %5709, %5663 ], [ %5276, %5642 ]
  %5827 = phi float [ %5710, %5663 ], [ %5277, %5642 ]
  %5828 = phi float [ %5711, %5663 ], [ %5278, %5642 ]
  %5829 = phi float [ %5800, %5663 ], [ %5236, %5642 ]
  %5830 = phi float [ %5801, %5663 ], [ %5237, %5642 ]
  %5831 = phi float [ %5802, %5663 ], [ %5238, %5642 ]
  %5832 = phi float [ %5822, %5663 ], [ %5172, %5642 ]
  %5833 = phi float [ %5823, %5663 ], [ %5173, %5642 ]
  %5834 = phi float [ %5824, %5663 ], [ %5174, %5642 ]
  %5835 = phi float [ %5816, %5663 ], [ %5239, %5642 ]
  %5836 = phi float [ %5819, %5663 ], [ %5190, %5642 ]
  %5837 = fsub fast float -0.000000e+00, %159
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5841 = fmul fast float %127, %5839
  %5842 = fmul fast float %129, %5840
  %5843 = fsub fast float 1.000000e+00, %5841
  %5844 = fsub fast float 1.000000e+00, %5842
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = fmul fast float %5843, %5846
  %5850 = fmul fast float %5843, %5847
  %5851 = fmul fast float %5843, %5848
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = fmul fast float %5844, %5853
  %5857 = fmul fast float %5844, %5854
  %5858 = fmul fast float %5844, %5855
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = fadd fast float %5856, %5860
  %5864 = fadd fast float %5863, %5849
  %5865 = fadd fast float %5857, %5861
  %5866 = fadd fast float %5865, %5850
  %5867 = fadd fast float %5858, %5862
  %5868 = fadd fast float %5867, %5851
  %5869 = fmul fast float %5864, %93
  %5870 = fmul fast float %5866, %93
  %5871 = fmul fast float %5868, %93
  %5872 = select i1 %251, float 0.000000e+00, float %5831
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5660, float %5661, float %5662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5875 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = fmul fast float %5875, 2.000000e+00
  %5877 = fmul fast float %5876, %5832
  %5878 = fmul fast float %5876, %5833
  %5879 = fmul fast float %5876, %5834
  %5880 = fsub fast float %177, %5877
  %5881 = fsub fast float %178, %5878
  %5882 = fsub fast float %179, %5879
  %5883 = call float @dx.op.binary.f32(i32 36, float %5836, float 1.000000e+00)  ; FMin(a,b)
  %5884 = fsub fast float 1.000000e+00, %5836
  %5885 = bitcast float %5884 to i32
  %5886 = sub nsw i32 2129859010, %5885
  %5887 = bitcast i32 %5886 to float
  %5888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5889 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = fcmp fast oeq float %5889, 0.000000e+00
  %5891 = fcmp fast oeq float %5888, 0.000000e+00
  %5892 = or i1 %5891, %5890
  br i1 %5892, label %5922, label %5893

; <label>:5893                                    ; preds = %5825
  %5894 = fsub fast float -0.000000e+00, %76
  %5895 = fsub fast float -0.000000e+00, %74
  %5896 = call float @dx.op.unary.f32(i32 24, float %5889)  ; Sqrt(value)
  %5897 = fdiv fast float %5896, %5888
  %5898 = fcmp fast ogt float %5897, 0x3FFB6F8900000000
  %5899 = select i1 %5898, float 0x3FFB6F8900000000, float %5897
  %5900 = fmul fast float %5899, 0x3FE8A23460000000
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5899, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5903 = fmul fast float %5901, %5888
  %5904 = fmul fast float %5902, 0x3FF279A740000000
  %5905 = fadd fast float %5904, -1.000000e+00
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %75, float %5894, float %5895, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = call float @dx.op.unary.f32(i32 25, float %5906)  ; Rsqrt(value)
  %5908 = fmul fast float %5907, %5894
  %5909 = fmul fast float %5907, %5895
  %5910 = fmul fast float %5907, %75
  %5911 = fmul fast float %5905, %5905
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = fmul fast float %5902, 0x40005F8BE0000000
  %5914 = fsub fast float 0x400C5BF8A0000000, %5913
  %5915 = fdiv fast float %5903, %5914
  %5916 = fmul fast float %5915, 0x3FEE31C3C0000000
  %5917 = fmul fast float %5916, %5912
  %5918 = fmul fast float %5902, 0x3FDACB7480000000
  %5919 = fadd fast float %5918, 0xBFD7347680000000
  %5920 = fmul fast float %5919, %5915
  %5921 = fmul fast float %5920, %5912
  br label %5922

; <label>:5922                                    ; preds = %5893, %5825
  %5923 = phi float [ %5908, %5893 ], [ 0.000000e+00, %5825 ]
  %5924 = phi float [ %5909, %5893 ], [ 0.000000e+00, %5825 ]
  %5925 = phi float [ %5910, %5893 ], [ 0.000000e+00, %5825 ]
  %5926 = phi float [ %5917, %5893 ], [ 0.000000e+00, %5825 ]
  %5927 = phi float [ %5921, %5893 ], [ 0.000000e+00, %5825 ]
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5923, float %5924, float %5925, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = fmul fast float %5928, %5928
  %5930 = fmul fast float %5929, 0x3FEE471020000000
  %5931 = fadd fast float %5930, 0xBFD42F6020000000
  %5932 = fmul fast float %5888, 0x3FD20DD760000000
  %5933 = fmul fast float %5931, %5927
  %5934 = fmul fast float %5926, 0x3FDF454380000000
  %5935 = fmul fast float %5934, %5928
  %5936 = fadd fast float %5935, %5932
  %5937 = fadd fast float %5936, %5933
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5923, float %5924, float %5925, float %5880, float %5881, float %5882)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = fmul fast float %5938, 0x3FDF454380000000
  %5940 = fmul fast float %5938, %5938
  %5941 = fmul fast float %5940, 0x3FEE471020000000
  %5942 = fadd fast float %5941, 0xBFD42F6020000000
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5888, float %5926, float %5927, float 0x3FD20DD760000000, float %5939, float %5942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5945 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fcmp fast oeq float %5945, 0.000000e+00
  %5947 = fcmp fast oeq float %5944, 0.000000e+00
  %5948 = or i1 %5947, %5946
  br i1 %5948, label %5978, label %5949

; <label>:5949                                    ; preds = %5922
  %5950 = fsub fast float -0.000000e+00, %72
  %5951 = fsub fast float -0.000000e+00, %70
  %5952 = call float @dx.op.unary.f32(i32 24, float %5945)  ; Sqrt(value)
  %5953 = fdiv fast float %5952, %5944
  %5954 = fcmp fast ogt float %5953, 0x3FFB6F8900000000
  %5955 = select i1 %5954, float 0x3FFB6F8900000000, float %5953
  %5956 = fmul fast float %5955, 0x3FE8A23460000000
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5955, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5959 = fmul fast float %5957, %5944
  %5960 = fmul fast float %5958, 0x3FF279A740000000
  %5961 = fadd fast float %5960, -1.000000e+00
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %71, float %5950, float %5951, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.unary.f32(i32 25, float %5962)  ; Rsqrt(value)
  %5964 = fmul fast float %5963, %5950
  %5965 = fmul fast float %5963, %5951
  %5966 = fmul fast float %5963, %71
  %5967 = fmul fast float %5961, %5961
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = fmul fast float %5958, 0x40005F8BE0000000
  %5970 = fsub fast float 0x400C5BF8A0000000, %5969
  %5971 = fdiv fast float %5959, %5970
  %5972 = fmul fast float %5971, 0x3FEE31C3C0000000
  %5973 = fmul fast float %5972, %5968
  %5974 = fmul fast float %5958, 0x3FDACB7480000000
  %5975 = fadd fast float %5974, 0xBFD7347680000000
  %5976 = fmul fast float %5975, %5971
  %5977 = fmul fast float %5976, %5968
  br label %5978

; <label>:5978                                    ; preds = %5949, %5922
  %5979 = phi float [ %5964, %5949 ], [ 0.000000e+00, %5922 ]
  %5980 = phi float [ %5965, %5949 ], [ 0.000000e+00, %5922 ]
  %5981 = phi float [ %5966, %5949 ], [ 0.000000e+00, %5922 ]
  %5982 = phi float [ %5973, %5949 ], [ 0.000000e+00, %5922 ]
  %5983 = phi float [ %5977, %5949 ], [ 0.000000e+00, %5922 ]
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %5981, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = fmul fast float %5984, %5984
  %5986 = fmul fast float %5985, 0x3FEE471020000000
  %5987 = fadd fast float %5986, 0xBFD42F6020000000
  %5988 = fmul fast float %5944, 0x3FD20DD760000000
  %5989 = fmul fast float %5987, %5983
  %5990 = fmul fast float %5982, 0x3FDF454380000000
  %5991 = fmul fast float %5990, %5984
  %5992 = fadd fast float %5991, %5988
  %5993 = fadd fast float %5992, %5989
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %5981, float %5880, float %5881, float %5882)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fmul fast float %5994, 0x3FDF454380000000
  %5996 = fmul fast float %5994, %5994
  %5997 = fmul fast float %5996, 0x3FEE471020000000
  %5998 = fadd fast float %5997, 0xBFD42F6020000000
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5982, float %5983, float 0x3FD20DD760000000, float %5995, float %5998)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %6001 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = fcmp fast oeq float %6001, 0.000000e+00
  %6003 = fcmp fast oeq float %6000, 0.000000e+00
  %6004 = or i1 %6003, %6002
  br i1 %6004, label %6034, label %6005

; <label>:6005                                    ; preds = %5978
  %6006 = fsub fast float -0.000000e+00, %68
  %6007 = fsub fast float -0.000000e+00, %66
  %6008 = call float @dx.op.unary.f32(i32 24, float %6001)  ; Sqrt(value)
  %6009 = fdiv fast float %6008, %6000
  %6010 = fcmp fast ogt float %6009, 0x3FFB6F8900000000
  %6011 = select i1 %6010, float 0x3FFB6F8900000000, float %6009
  %6012 = fmul fast float %6011, 0x3FE8A23460000000
  %6013 = call float @dx.op.unary.f32(i32 7, float %6012)  ; Saturate(value)
  %6014 = call float @dx.op.binary.f32(i32 35, float %6011, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6015 = fmul fast float %6013, %6000
  %6016 = fmul fast float %6014, 0x3FF279A740000000
  %6017 = fadd fast float %6016, -1.000000e+00
  %6018 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6007, float %67, float %6006, float %6007, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %6019 = call float @dx.op.unary.f32(i32 25, float %6018)  ; Rsqrt(value)
  %6020 = fmul fast float %6019, %6006
  %6021 = fmul fast float %6019, %6007
  %6022 = fmul fast float %6019, %67
  %6023 = fmul fast float %6017, %6017
  %6024 = fsub fast float 1.000000e+00, %6023
  %6025 = fmul fast float %6014, 0x40005F8BE0000000
  %6026 = fsub fast float 0x400C5BF8A0000000, %6025
  %6027 = fdiv fast float %6015, %6026
  %6028 = fmul fast float %6027, 0x3FEE31C3C0000000
  %6029 = fmul fast float %6028, %6024
  %6030 = fmul fast float %6014, 0x3FDACB7480000000
  %6031 = fadd fast float %6030, 0xBFD7347680000000
  %6032 = fmul fast float %6031, %6027
  %6033 = fmul fast float %6032, %6024
  br label %6034

; <label>:6034                                    ; preds = %6005, %5978
  %6035 = phi float [ %6020, %6005 ], [ 0.000000e+00, %5978 ]
  %6036 = phi float [ %6021, %6005 ], [ 0.000000e+00, %5978 ]
  %6037 = phi float [ %6022, %6005 ], [ 0.000000e+00, %5978 ]
  %6038 = phi float [ %6029, %6005 ], [ 0.000000e+00, %5978 ]
  %6039 = phi float [ %6033, %6005 ], [ 0.000000e+00, %5978 ]
  %6040 = call float @dx.op.dot3.f32(i32 55, float %6035, float %6036, float %6037, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = fmul fast float %6040, %6040
  %6042 = fmul fast float %6041, 0x3FEE471020000000
  %6043 = fadd fast float %6042, 0xBFD42F6020000000
  %6044 = fmul fast float %6000, 0x3FD20DD760000000
  %6045 = fmul fast float %6043, %6039
  %6046 = fmul fast float %6038, 0x3FDF454380000000
  %6047 = fmul fast float %6046, %6040
  %6048 = fadd fast float %6047, %6044
  %6049 = fadd fast float %6048, %6045
  %6050 = call float @dx.op.dot3.f32(i32 55, float %6035, float %6036, float %6037, float %5880, float %5881, float %5882)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = fmul fast float %6050, 0x3FDF454380000000
  %6052 = fmul fast float %6050, %6050
  %6053 = fmul fast float %6052, 0x3FEE471020000000
  %6054 = fadd fast float %6053, 0xBFD42F6020000000
  %6055 = call float @dx.op.dot3.f32(i32 55, float %6000, float %6038, float %6039, float 0x3FD20DD760000000, float %6051, float %6054)  ; Dot3(ax,ay,az,bx,by,bz)
  %6056 = call float @dx.op.binary.f32(i32 35, float %5937, float 0.000000e+00)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 35, float %5993, float 0.000000e+00)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6049, float 0.000000e+00)  ; FMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %5943, float 0.000000e+00)  ; FMax(a,b)
  %6060 = call float @dx.op.binary.f32(i32 35, float %5999, float 0.000000e+00)  ; FMax(a,b)
  %6061 = call float @dx.op.binary.f32(i32 35, float %6055, float 0.000000e+00)  ; FMax(a,b)
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 0
  %6064 = call float @dx.op.binary.f32(i32 36, float %5826, float %6063)  ; FMin(a,b)
  %6065 = fsub fast float 1.000000e+00, %5883
  %6066 = fmul fast float %6064, %6065
  %6067 = fsub fast float 1.000000e+00, %6066
  %6068 = bitcast float %6067 to i32
  %6069 = sub nsw i32 2129859010, %6068
  %6070 = bitcast i32 %6069 to float
  %6071 = call float @dx.op.binary.f32(i32 36, float %5827, float %6063)  ; FMin(a,b)
  %6072 = fmul fast float %6071, %6065
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = bitcast float %6073 to i32
  %6075 = sub nsw i32 2129859010, %6074
  %6076 = bitcast i32 %6075 to float
  %6077 = call float @dx.op.binary.f32(i32 36, float %5828, float %6063)  ; FMin(a,b)
  %6078 = fmul fast float %6077, %6065
  %6079 = fsub fast float 1.000000e+00, %6078
  %6080 = bitcast float %6079 to i32
  %6081 = sub nsw i32 2129859010, %6080
  %6082 = bitcast i32 %6081 to float
  %6083 = fmul fast float %6056, %5883
  %6084 = fmul fast float %6083, %6070
  %6085 = fmul fast float %6057, %5883
  %6086 = fmul fast float %6085, %6076
  %6087 = fmul fast float %6058, %5883
  %6088 = fmul fast float %6087, %6082
  %6089 = call float @dx.op.binary.f32(i32 36, float %5829, float %6063)  ; FMin(a,b)
  %6090 = fmul fast float %6089, %6065
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = bitcast float %6091 to i32
  %6093 = sub nsw i32 2129859010, %6092
  %6094 = bitcast i32 %6093 to float
  %6095 = call float @dx.op.binary.f32(i32 36, float %5830, float %6063)  ; FMin(a,b)
  %6096 = fmul fast float %6095, %6065
  %6097 = fsub fast float 1.000000e+00, %6096
  %6098 = bitcast float %6097 to i32
  %6099 = sub nsw i32 2129859010, %6098
  %6100 = bitcast i32 %6099 to float
  %6101 = call float @dx.op.binary.f32(i32 36, float %5872, float %6063)  ; FMin(a,b)
  %6102 = fmul fast float %6101, %6065
  %6103 = fsub fast float 1.000000e+00, %6102
  %6104 = bitcast float %6103 to i32
  %6105 = sub nsw i32 2129859010, %6104
  %6106 = bitcast i32 %6105 to float
  %6107 = fmul fast float %6059, %5883
  %6108 = fmul fast float %6107, %6094
  %6109 = fmul fast float %6060, %5883
  %6110 = fmul fast float %6109, %6100
  %6111 = fmul fast float %6061, %5883
  %6112 = fmul fast float %6111, %6106
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6086, float %6088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = select i1 %251, float 0.000000e+00, float %6084
  %6115 = select i1 %251, float %6113, float %6086
  %6116 = select i1 %251, float 0.000000e+00, float %6088
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6108, float %6110, float %6112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = select i1 %251, float 0.000000e+00, float %6108
  %6119 = select i1 %251, float %6117, float %6110
  %6120 = select i1 %251, float 0.000000e+00, float %6112
  %6121 = fmul fast float %4544, %4544
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = fmul fast float %5874, 9.843750e-01
  %6124 = fmul fast float %5835, 9.843750e-01
  %6125 = fadd fast float %6123, 7.812500e-03
  %6126 = fadd fast float %6124, 7.812500e-03
  %6127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %6125, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.ResRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.ResRet.f32 %6127, 2
  %6131 = extractvalue %dx.types.ResRet.f32 %6127, 3
  %6132 = fsub fast float 1.000000e+00, %6122
  %6133 = fsub fast float %6130, %6128
  %6134 = fsub fast float %6131, %6129
  %6135 = fmul fast float %6133, %6132
  %6136 = fmul fast float %6134, %6132
  %6137 = fadd fast float %6135, %6128
  %6138 = fadd fast float %6136, %6129
  %6139 = fmul fast float %6137, %5829
  %6140 = fmul fast float %6137, %5830
  %6141 = fmul fast float %6137, %5872
  %6142 = fadd fast float %6139, %6138
  %6143 = fadd fast float %6140, %6138
  %6144 = fadd fast float %6141, %6138
  %6145 = fcmp fast ogt float %5191, 0.000000e+00
  br i1 %6145, label %6146, label %6172

; <label>:6146                                    ; preds = %6034
  %6147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %5874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = fadd fast float %6148, -5.000000e-01
  %6152 = fadd fast float %6149, -5.000000e-01
  %6153 = fadd fast float %6150, -5.000000e-01
  %6154 = fsub fast float 1.000000e+00, %5829
  %6155 = fsub fast float 1.000000e+00, %5830
  %6156 = fsub fast float 1.000000e+00, %5872
  %6157 = fmul fast float %5829, 4.000000e+00
  %6158 = fmul fast float %6157, %6154
  %6159 = fmul fast float %6158, %6151
  %6160 = fmul fast float %5830, 4.000000e+00
  %6161 = fmul fast float %6160, %6155
  %6162 = fmul fast float %6161, %6152
  %6163 = fmul fast float %5872, 4.000000e+00
  %6164 = fmul fast float %6163, %6156
  %6165 = fmul fast float %6164, %6153
  %6166 = fadd fast float %6159, %6142
  %6167 = fadd fast float %6162, %6143
  %6168 = fadd fast float %6165, %6144
  %6169 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6170 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6171 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  br label %6172

; <label>:6172                                    ; preds = %6146, %6034
  %6173 = phi float [ %6169, %6146 ], [ %6142, %6034 ]
  %6174 = phi float [ %6170, %6146 ], [ %6143, %6034 ]
  %6175 = phi float [ %6171, %6146 ], [ %6144, %6034 ]
  %6176 = call float @dx.op.binary.f32(i32 35, float %6174, float %6175)  ; FMax(a,b)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6173, float %6176)  ; FMax(a,b)
  %6178 = fsub fast float 1.000000e+00, %6177
  %6179 = fmul fast float %6178, %6114
  %6180 = fmul fast float %6178, %6115
  %6181 = fmul fast float %6178, %6116
  %6182 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fcmp fast ogt float %6182, 0x3E7FF19E20000000
  %6184 = fdiv fast float 1.000000e+00, %6182
  %6185 = select i1 %6183, float %6184, float 0.000000e+00
  %6186 = fmul fast float %6185, %5826
  %6187 = fmul fast float %6185, %5827
  %6188 = fmul fast float %6185, %5828
  %6189 = fadd fast float %6186, -1.000000e+00
  %6190 = fadd fast float %6187, -1.000000e+00
  %6191 = fadd fast float %6188, -1.000000e+00
  %6192 = fmul fast float %6189, 5.000000e-01
  %6193 = fmul fast float %6190, 5.000000e-01
  %6194 = fmul fast float %6191, 5.000000e-01
  %6195 = fadd fast float %6192, 1.000000e+00
  %6196 = fadd fast float %6193, 1.000000e+00
  %6197 = fadd fast float %6194, 1.000000e+00
  %6198 = call float @dx.op.binary.f32(i32 35, float %5874, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6199 = fdiv fast float %4544, %6198
  %6200 = fcmp fast olt float %5262, 1.270000e+02
  %6201 = fcmp fast olt float %5263, 1.270000e+02
  %6202 = fcmp fast olt float %5264, 1.270000e+02
  %6203 = fmul fast float %5262, 0xBFF7154760000000
  %6204 = fmul fast float %6203, %6199
  %6205 = fmul fast float %5263, 0xBFF7154760000000
  %6206 = fmul fast float %6205, %6199
  %6207 = fmul fast float %5264, 0xBFF7154760000000
  %6208 = fmul fast float %6207, %6199
  %6209 = call float @dx.op.unary.f32(i32 21, float %6204)  ; Exp(value)
  %6210 = call float @dx.op.unary.f32(i32 21, float %6206)  ; Exp(value)
  %6211 = call float @dx.op.unary.f32(i32 21, float %6208)  ; Exp(value)
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6214 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6215 = select i1 %6200, float %6212, float 0.000000e+00
  %6216 = select i1 %6201, float %6213, float 0.000000e+00
  %6217 = select i1 %6202, float %6214, float 0.000000e+00
  %6218 = fmul fast float %6215, %6178
  %6219 = fmul fast float %6216, %6178
  %6220 = fmul fast float %6217, %6178
  %6221 = fadd fast float %6218, -1.000000e+00
  %6222 = fadd fast float %6219, -1.000000e+00
  %6223 = fadd fast float %6220, -1.000000e+00
  %6224 = fmul fast float %6221, %5217
  %6225 = fmul fast float %6222, %5217
  %6226 = fmul fast float %6223, %5217
  %6227 = fadd fast float %6224, 1.000000e+00
  %6228 = fadd fast float %6225, 1.000000e+00
  %6229 = fadd fast float %6226, 1.000000e+00
  %6230 = fmul fast float %5830, 0x401CF23780000000
  %6231 = fadd fast float %6230, 0x3FF32641C0000000
  %6232 = fdiv fast float 1.000000e+00, %6231
  %6233 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = fmul fast float %6232, %6232
  %6235 = fmul fast float %6233, %6233
  %6236 = fsub fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6234, %6236
  %6238 = fsub fast float 1.000000e+00, %6237
  %6239 = fcmp fast oge float %6238, 0.000000e+00
  %6240 = fmul fast float %6232, %5660
  %6241 = fmul fast float %6232, %5661
  %6242 = fmul fast float %6232, %5662
  %6243 = call float @dx.op.unary.f32(i32 24, float %6238)  ; Sqrt(value)
  %6244 = fmul fast float %6233, %6232
  %6245 = fadd fast float %6244, %6243
  %6246 = fmul fast float %6245, %5832
  %6247 = fmul fast float %6245, %5833
  %6248 = fmul fast float %6245, %5834
  %6249 = fsub fast float %6240, %6246
  %6250 = fsub fast float %6241, %6247
  %6251 = fsub fast float %6242, %6248
  %6252 = select i1 %6239, float %6249, float 0.000000e+00
  %6253 = select i1 %6239, float %6250, float 0.000000e+00
  %6254 = select i1 %6239, float %6251, float 0.000000e+00
  %6255 = fmul fast float %6252, %4544
  %6256 = fmul fast float %6253, %4544
  %6257 = fmul fast float %6254, %4544
  %6258 = fadd fast float %6255, %5869
  %6259 = fadd fast float %6256, %5870
  %6260 = fadd fast float %6257, %5871
  %6261 = call float @dx.op.dot3.f32(i32 55, float %5280, float %5281, float %5282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = fsub fast float 1.000000e+00, %5835
  %6263 = fmul fast float %6262, %5217
  %6264 = fsub fast float 1.000000e+00, %6263
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6266 = fsub fast float 1.000000e+00, %6265
  %6267 = fmul fast float %5830, 0x4012D0A400000000
  %6268 = fadd fast float %6267, 0x3FDB6377A0000000
  %6269 = fmul fast float %6266, %6268
  %6270 = fadd fast float %6269, %6261
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6173, %6118
  %6273 = fmul fast float %6174, %6119
  %6274 = fmul fast float %6175, %6120
  %6275 = fsub fast float 1.000000e+00, %5874
  %6276 = bitcast float %6275 to i32
  %6277 = sitofp i32 %6276 to float
  %6278 = fmul fast float %6277, 5.000000e+00
  %6279 = fadd fast float %6278, 0xC1EFBF8940000000
  %6280 = fptosi float %6279 to i32
  %6281 = bitcast i32 %6280 to float
  %6282 = fmul fast float %6281, %5192
  %6283 = fmul fast float %6114, %6282
  %6284 = fmul fast float %6283, %6178
  %6285 = fmul fast float %6284, %6195
  %6286 = fmul fast float %6115, %6282
  %6287 = fmul fast float %6286, %6178
  %6288 = fmul fast float %6287, %6196
  %6289 = fmul fast float %6116, %6282
  %6290 = fmul fast float %6289, %6178
  %6291 = fmul fast float %6290, %6197
  %6292 = fmul fast float %6179, %5217
  %6293 = fmul fast float %6180, %5217
  %6294 = fmul fast float %6181, %5217
  %6295 = fsub fast float 1.000000e+00, %6271
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6299 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6300 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6305 = extractvalue %dx.types.CBufRet.f32 %6301, 3
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.CBufRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.CBufRet.f32 %6306, 2
  %6310 = extractvalue %dx.types.CBufRet.f32 %6306, 3
  %6311 = fmul fast float %6258, %6297
  %6312 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6298, float %6311)  ; FMad(a,b,c)
  %6313 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6299, float %6312)  ; FMad(a,b,c)
  %6314 = fadd fast float %6313, %6300
  %6315 = fmul fast float %6258, %6302
  %6316 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6303, float %6315)  ; FMad(a,b,c)
  %6317 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6304, float %6316)  ; FMad(a,b,c)
  %6318 = fadd fast float %6317, %6305
  %6319 = fmul fast float %6258, %6307
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6308, float %6319)  ; FMad(a,b,c)
  %6321 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6309, float %6320)  ; FMad(a,b,c)
  %6322 = fadd fast float %6321, %6310
  %6323 = fdiv fast float %6314, %6322
  %6324 = fdiv fast float %6318, %6322
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = fmul fast float %6326, %6323
  %6329 = fmul fast float %6327, %6324
  %6330 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6331 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6332 = fadd fast float %6328, %6330
  %6333 = fadd fast float %6329, %6331
  %6334 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6335 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = fmul fast float %6337, %6334
  %6340 = fmul fast float %6338, %6335
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6344 = fsub fast float %6342, %6343
  %6345 = fmul fast float %6344, %6295
  %6346 = fadd fast float %6345, %6343
  %6347 = fmul fast float %264, 2.000000e+00
  %6348 = fmul fast float %265, 2.000000e+00
  %6349 = fadd fast float %6347, -1.000000e+00
  %6350 = fadd fast float %6348, -1.000000e+00
  %6351 = fmul fast float %6346, %6349
  %6352 = fmul fast float %6346, %6350
  %6353 = fadd fast float %6351, %6339
  %6354 = fadd fast float %6352, %6340
  %6355 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6356 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6357 = fmul fast float %6353, %6355
  %6358 = fmul fast float %6354, %6356
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6357, float %6358, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  %6361 = fcmp fast ogt float %6360, -1.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6364 = select i1 %6361, float %6363, float 1.000000e+00
  %6365 = fadd fast float %6360, 1.000000e+00
  %6366 = fmul fast float %6364, %6365
  %6367 = call float @dx.op.unary.f32(i32 6, float %6366)  ; FAbs(value)
  %6368 = fsub fast float %6367, %6322
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6371 = fmul fast float %6370, %6367
  %6372 = fdiv fast float 1.600000e+02, %6371
  %6373 = fmul fast float %6271, %6271
  %6374 = fmul fast float %6373, 0xBFB5B17960000000
  %6375 = fmul fast float %6374, %6368
  %6376 = fmul fast float %6375, %6372
  %6377 = call float @dx.op.unary.f32(i32 21, float %6376)  ; Exp(value)
  %6378 = fmul fast float %6377, 0x3FF04B2960000000
  %6379 = fsub fast float 0x3FF04B2960000000, %6378
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = fmul fast float %6380, 4.000000e+00
  %6382 = fadd fast float %264, -5.000000e-01
  %6383 = fadd fast float %265, -5.000000e-01
  %6384 = fmul fast float %6380, 0x3FBEB851E0000000
  %6385 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6386 = fmul fast float %6385, %6382
  %6387 = fmul fast float %6385, %6383
  %6388 = fadd fast float %6386, %6332
  %6389 = fadd fast float %6387, %6333
  %6390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.i32 %6390, 0
  %6392 = icmp eq i32 %6391, 0
  br i1 %6392, label %6398, label %6393, !dx.controlflow.hints !96

; <label>:6393                                    ; preds = %6172
  %6394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6388, float %6389, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6395 = extractvalue %dx.types.ResRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.ResRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.ResRet.f32 %6394, 2
  br label %6403

; <label>:6398                                    ; preds = %6172
  %6399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6388, float %6389, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6400 = extractvalue %dx.types.ResRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.ResRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.ResRet.f32 %6399, 2
  br label %6403

; <label>:6403                                    ; preds = %6398, %6393
  %6404 = phi float [ %6395, %6393 ], [ %6400, %6398 ]
  %6405 = phi float [ %6396, %6393 ], [ %6401, %6398 ]
  %6406 = phi float [ %6397, %6393 ], [ %6402, %6398 ]
  %6407 = select i1 %251, float 0.000000e+00, float %6405
  %6408 = select i1 %251, float 0.000000e+00, float %6406
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6411 = fmul fast float %6404, %6227
  %6412 = fmul fast float %6411, %6410
  %6413 = fmul fast float %6407, %6228
  %6414 = fmul fast float %6413, %6410
  %6415 = fmul fast float %6408, %6229
  %6416 = fmul fast float %6415, %6410
  %6417 = fadd fast float %6272, %5178
  %6418 = fadd fast float %6417, %6285
  %6419 = fadd fast float %6418, %6412
  %6420 = fmul fast float %6419, %5217
  %6421 = fadd fast float %6273, %5179
  %6422 = fadd fast float %6421, %6288
  %6423 = fadd fast float %6422, %6414
  %6424 = fmul fast float %6423, %5217
  %6425 = fadd fast float %6274, %5180
  %6426 = fadd fast float %6425, %6291
  %6427 = fadd fast float %6426, %6416
  %6428 = fmul fast float %6427, %5217
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6431 = fcmp fast oeq float %6430, 0.000000e+00
  br i1 %6431, label %7636, label %6432

; <label>:6432                                    ; preds = %6403
  %6433 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = call float @dx.op.dot3.f32(i32 55, float %6437, float %6438, float %6439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6444 = select i1 %251, float %6441, float %6437
  %6445 = select i1 %251, float %6443, float %6438
  %6446 = select i1 %251, float %6442, float %6439
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6449 = fmul fast float %6448, %109
  %6450 = fmul fast float %6448, %110
  %6451 = fmul fast float %6448, %111
  %6452 = fadd fast float %6449, %157
  %6453 = fadd fast float %6450, %158
  %6454 = fadd fast float %6451, %159
  %6455 = fcmp fast olt float %6430, 0.000000e+00
  br i1 %6455, label %7080, label %6456

; <label>:6456                                    ; preds = %6432
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.CBufRet.f32 %6457, 2
  %6461 = extractvalue %dx.types.CBufRet.f32 %6457, 3
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6462, 2
  %6466 = extractvalue %dx.types.CBufRet.f32 %6462, 3
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6472 = fmul fast float %6458, %6452
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6459, float %6472)  ; FMad(a,b,c)
  %6474 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6460, float %6473)  ; FMad(a,b,c)
  %6475 = fadd fast float %6474, %6461
  %6476 = fmul fast float %6463, %6452
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6464, float %6476)  ; FMad(a,b,c)
  %6478 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6465, float %6477)  ; FMad(a,b,c)
  %6479 = fadd fast float %6478, %6466
  %6480 = fmul fast float %6468, %6452
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6469, float %6480)  ; FMad(a,b,c)
  %6482 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6470, float %6481)  ; FMad(a,b,c)
  %6483 = fadd fast float %6482, %6471
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6488 = fmul fast float %6487, %6475
  %6489 = fmul fast float %6487, %6479
  %6490 = fadd fast float %6488, %6485
  %6491 = fadd fast float %6489, %6486
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6496 = fmul fast float %6495, %6475
  %6497 = fmul fast float %6495, %6479
  %6498 = fadd fast float %6496, %6493
  %6499 = fadd fast float %6497, %6494
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6502 = fsub fast float %6501, %6483
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = fmul fast float %6502, %6503
  %6505 = fsub fast float 1.000000e+00, %6504
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6510 = fadd fast float %6509, %6507
  %6511 = fcmp fast ogt float %6510, 0.000000e+00
  br i1 %6511, label %6512, label %6536

; <label>:6512                                    ; preds = %6456
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6516 = fsub fast float %6498, %6514
  %6517 = fsub fast float %6499, %6515
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = fcmp fast olt float %6517, 0.000000e+00
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = select i1 %6518, float %6521, float %6523
  %6526 = select i1 %6519, float %6522, float %6524
  %6527 = fmul fast float %6525, %6516
  %6528 = fmul fast float %6526, %6517
  %6529 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6530 = call float @dx.op.unary.f32(i32 6, float %6528)  ; FAbs(value)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6532 = call float @dx.op.binary.f32(i32 35, float %6529, float %6530)  ; FMax(a,b)
  %6533 = fsub fast float %6531, %6532
  %6534 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6535 = fmul fast float %6534, %6506
  br label %6536

; <label>:6536                                    ; preds = %6512, %6456
  %6537 = phi float [ %6535, %6512 ], [ 0.000000e+00, %6456 ]
  %6538 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6508, 1
  %6540 = fadd fast float %6539, %6538
  %6541 = fcmp fast ogt float %6540, 0.000000e+00
  %6542 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  br i1 %6541, label %6543, label %6566

; <label>:6543                                    ; preds = %6536
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.CBufRet.f32 %6544, 1
  %6547 = fsub fast float %6490, %6545
  %6548 = fsub fast float %6491, %6546
  %6549 = fcmp fast olt float %6547, 0.000000e+00
  %6550 = fcmp fast olt float %6548, 0.000000e+00
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6556 = select i1 %6549, float %6552, float %6554
  %6557 = select i1 %6550, float %6553, float %6555
  %6558 = fmul fast float %6556, %6547
  %6559 = fmul fast float %6557, %6548
  %6560 = call float @dx.op.unary.f32(i32 6, float %6558)  ; FAbs(value)
  %6561 = call float @dx.op.unary.f32(i32 6, float %6559)  ; FAbs(value)
  %6562 = call float @dx.op.binary.f32(i32 35, float %6560, float %6561)  ; FMax(a,b)
  %6563 = fsub fast float %6542, %6562
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = fmul fast float %6564, %6506
  br label %6566

; <label>:6566                                    ; preds = %6543, %6536
  %6567 = phi float [ %6565, %6543 ], [ 0.000000e+00, %6536 ]
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = fsub fast float %6475, %6572
  %6575 = fsub fast float %6479, %6573
  %6576 = fcmp fast olt float %6574, 0.000000e+00
  %6577 = fcmp fast olt float %6575, 0.000000e+00
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.CBufRet.f32 %6578, 1
  %6581 = extractvalue %dx.types.CBufRet.f32 %6578, 2
  %6582 = extractvalue %dx.types.CBufRet.f32 %6578, 3
  %6583 = select i1 %6576, float %6579, float %6581
  %6584 = select i1 %6577, float %6580, float %6582
  %6585 = fmul fast float %6583, %6574
  %6586 = fmul fast float %6584, %6575
  %6587 = call float @dx.op.unary.f32(i32 6, float %6585)  ; FAbs(value)
  %6588 = call float @dx.op.unary.f32(i32 6, float %6586)  ; FAbs(value)
  %6589 = call float @dx.op.binary.f32(i32 35, float %6587, float %6588)  ; FMax(a,b)
  %6590 = fsub fast float %6542, %6589
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = call float @dx.op.binary.f32(i32 36, float %6591, float %6570)  ; FMin(a,b)
  %6593 = fmul fast float %6592, %6506
  %6594 = fsub fast float %6567, %6593
  %6595 = fsub fast float %6537, %6567
  %6596 = fsub fast float %6595, %6593
  %6597 = call float @dx.op.binary.f32(i32 35, float %6567, float %6537)  ; FMax(a,b)
  %6598 = call float @dx.op.binary.f32(i32 35, float %6593, float %6597)  ; FMax(a,b)
  %6599 = fcmp fast olt float %6598, 1.000000e+00
  br i1 %6599, label %6600, label %6998, !dx.controlflow.hints !97

; <label>:6600                                    ; preds = %6566
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 0
  %6603 = fcmp fast une float %6602, 0.000000e+00
  br i1 %6603, label %6604, label %6998, !dx.controlflow.hints !98

; <label>:6604                                    ; preds = %6600
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.CBufRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.CBufRet.f32 %6610, 2
  %6614 = extractvalue %dx.types.CBufRet.f32 %6610, 3
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.f32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6619 = extractvalue %dx.types.CBufRet.f32 %6615, 3
  %6620 = fmul fast float %6606, %6452
  %6621 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6607, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6608, float %6621)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6609
  %6624 = fmul fast float %6611, %6452
  %6625 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6612, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6613, float %6625)  ; FMad(a,b,c)
  %6627 = fadd fast float %6626, %6614
  %6628 = fmul fast float %6616, %6452
  %6629 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %6617, float %6628)  ; FMad(a,b,c)
  %6630 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6618, float %6629)  ; FMad(a,b,c)
  %6631 = fadd fast float %6630, %6619
  %6632 = fcmp fast oge float %6623, 1.000000e+00
  %6633 = fcmp fast oge float %6627, 1.000000e+00
  %6634 = or i1 %6632, %6633
  %6635 = fcmp fast olt float %6623, 0.000000e+00
  %6636 = fcmp fast olt float %6627, 0.000000e+00
  %6637 = or i1 %6635, %6636
  %6638 = or i1 %6634, %6637
  br i1 %6638, label %6998, label %6639, !dx.controlflow.hints !99

; <label>:6639                                    ; preds = %6604
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.i32 %6644, 2
  %6646 = uitofp i32 %6645 to float
  %6647 = extractvalue %dx.types.CBufRet.i32 %6644, 3
  %6648 = uitofp i32 %6647 to float
  %6649 = extractvalue %dx.types.CBufRet.f32 %6640, 3
  %6650 = fmul fast float %6649, 2.000000e+00
  %6651 = fsub fast float %6623, %6641
  %6652 = fsub fast float %6627, %6642
  %6653 = fmul fast float %6650, %6651
  %6654 = fmul fast float %6650, %6652
  %6655 = fdiv fast float 1.000000e+00, %6435
  %6656 = fmul fast float %6654, %6655
  %6657 = call float @dx.op.unary.f32(i32 6, float %6656)  ; FAbs(value)
  %6658 = fmul fast float %6643, %6454
  %6659 = fmul fast float %6658, %6650
  %6660 = call float @dx.op.unary.f32(i32 6, float %6659)  ; FAbs(value)
  %6661 = call float @dx.op.unary.f32(i32 6, float %6653)  ; FAbs(value)
  %6662 = call float @dx.op.binary.f32(i32 35, float %6660, float %6657)  ; FMax(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6661, float %6662)  ; FMax(a,b)
  %6664 = fmul fast float %6663, 2.000000e+00
  %6665 = call float @dx.op.unary.f32(i32 23, float %6664)  ; Log(value)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6665, float %6646)  ; FMax(a,b)
  %6667 = call float @dx.op.unary.f32(i32 22, float %6666)  ; Frc(value)
  %6668 = fadd fast float %6667, 0xBFEA666660000000
  %6669 = fmul fast float %6668, 8.000000e+00
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = call float @dx.op.unary.f32(i32 27, float %6666)  ; Round_ni(value)
  %6672 = fadd fast float %6671, %6670
  %6673 = call float @dx.op.binary.f32(i32 36, float %6672, float %6648)  ; FMin(a,b)
  %6674 = call float @dx.op.unary.f32(i32 27, float %6673)  ; Round_ni(value)
  %6675 = fsub fast float -0.000000e+00, %6674
  %6676 = call float @dx.op.unary.f32(i32 21, float %6675)  ; Exp(value)
  %6677 = fmul fast float %6676, %6650
  %6678 = fmul fast float %6677, %6623
  %6679 = fmul fast float %6677, %6627
  %6680 = fmul fast float %6678, 2.500000e-01
  %6681 = fmul fast float %6679, 2.500000e-01
  %6682 = fadd fast float %6680, 5.000000e-01
  %6683 = fadd fast float %6681, 5.000000e-01
  %6684 = fsub fast float %6648, %6646
  %6685 = fptoui float %6684 to i32
  %6686 = add i32 %6685, 320
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6686)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = extractvalue %dx.types.CBufRet.f32 %6687, 1
  %6690 = fcmp fast une float %6673, %6648
  %6691 = fsub fast float %6623, %6688
  %6692 = fsub fast float %6627, %6689
  %6693 = call float @dx.op.unary.f32(i32 6, float %6691)  ; FAbs(value)
  %6694 = call float @dx.op.unary.f32(i32 6, float %6692)  ; FAbs(value)
  %6695 = fmul fast float %6693, %6677
  %6696 = fmul fast float %6694, %6677
  %6697 = fcmp fast olt float %6695, 1.000000e+00
  %6698 = fcmp fast olt float %6696, 1.000000e+00
  %6699 = and i1 %6697, %6698
  %6700 = or i1 %6690, %6699
  br i1 %6700, label %6701, label %6998, !dx.controlflow.hints !100

; <label>:6701                                    ; preds = %6639
  %6702 = fmul fast float %6679, 5.000000e-01
  %6703 = fmul fast float %6678, 5.000000e-01
  %6704 = fadd fast float %6702, 5.000000e-01
  %6705 = fadd fast float %6703, 5.000000e-01
  %6706 = sitofp i32 %6645 to float
  %6707 = fsub fast float %6673, %6706
  %6708 = call float @dx.op.unary.f32(i32 27, float %6707)  ; Round_ni(value)
  %6709 = call float @dx.op.unary.f32(i32 22, float %6673)  ; Frc(value)
  %6710 = call float @dx.op.unary.f32(i32 22, float %6705)  ; Frc(value)
  %6711 = call float @dx.op.unary.f32(i32 22, float %6704)  ; Frc(value)
  %6712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6710, float %6711, float %6708, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = extractvalue %dx.types.ResRet.f32 %6712, 1
  %6715 = extractvalue %dx.types.ResRet.f32 %6712, 2
  %6716 = extractvalue %dx.types.ResRet.f32 %6712, 3
  %6717 = fcmp fast ogt float %6709, 0.000000e+00
  br i1 %6717, label %6718, label %6739, !dx.controlflow.hints !101

; <label>:6718                                    ; preds = %6701
  %6719 = fadd fast float %6708, 1.000000e+00
  %6720 = call float @dx.op.unary.f32(i32 22, float %6682)  ; Frc(value)
  %6721 = call float @dx.op.unary.f32(i32 22, float %6683)  ; Frc(value)
  %6722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6720, float %6721, float %6719, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6723 = extractvalue %dx.types.ResRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.ResRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.ResRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.ResRet.f32 %6722, 3
  %6727 = fsub fast float %6723, %6713
  %6728 = fsub fast float %6724, %6714
  %6729 = fsub fast float %6725, %6715
  %6730 = fsub fast float %6726, %6716
  %6731 = fmul fast float %6727, %6709
  %6732 = fmul fast float %6728, %6709
  %6733 = fmul fast float %6729, %6709
  %6734 = fmul fast float %6730, %6709
  %6735 = fadd fast float %6731, %6713
  %6736 = fadd fast float %6732, %6714
  %6737 = fadd fast float %6733, %6715
  %6738 = fadd fast float %6734, %6716
  br label %6739

; <label>:6739                                    ; preds = %6718, %6701
  %6740 = phi float [ %6735, %6718 ], [ %6713, %6701 ]
  %6741 = phi float [ %6736, %6718 ], [ %6714, %6701 ]
  %6742 = phi float [ %6737, %6718 ], [ %6715, %6701 ]
  %6743 = phi float [ %6738, %6718 ], [ %6716, %6701 ]
  %6744 = fadd fast float %6740, -5.000000e-01
  %6745 = fadd fast float %6742, -5.000000e-01
  %6746 = fmul fast float %6744, 0xBFD5555560000000
  %6747 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6745, float %6746)  ; FMad(a,b,c)
  %6748 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6741, float 0.000000e+00)  ; FMad(a,b,c)
  %6749 = fadd fast float %6748, %6743
  %6750 = fmul fast float %6744, -7.500000e-01
  %6751 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6745, float %6750)  ; FMad(a,b,c)
  %6752 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6741, float 0.000000e+00)  ; FMad(a,b,c)
  %6753 = fadd fast float %6752, %6743
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6759 = extractvalue %dx.types.CBufRet.f32 %6756, 2
  %6760 = extractvalue %dx.types.CBufRet.f32 %6756, 3
  %6761 = fsub fast float %6757, %6747
  %6762 = fsub fast float %6758, %6749
  %6763 = fsub fast float %6759, %6751
  %6764 = fsub fast float %6760, %6753
  %6765 = fmul fast float %6761, %6755
  %6766 = fmul fast float %6762, %6755
  %6767 = fmul fast float %6763, %6755
  %6768 = fmul fast float %6764, %6755
  %6769 = fadd fast float %6765, %6747
  %6770 = fadd fast float %6766, %6749
  %6771 = fadd fast float %6767, %6751
  %6772 = fadd fast float %6768, %6753
  %6773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.i32 %6773, 0
  %6775 = and i32 %6774, 536870911
  %6776 = uitofp i32 %6775 to float
  %6777 = fmul fast float %6776, %6623
  %6778 = fmul fast float %6776, %6627
  %6779 = fptoui float %6777 to i32
  %6780 = fptoui float %6778 to i32
  %6781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.i32 %6781, 0
  %6783 = and i32 %6782, 31
  %6784 = lshr i32 %6779, %6783
  %6785 = lshr i32 %6780, %6783
  %6786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.i32 %6786, 0
  %6788 = and i32 %6787, 31
  %6789 = shl i32 1, %6788
  %6790 = call i32 @dx.op.binary.i32(i32 40, i32 %6789, i32 4)  ; UMin(a,b)
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.i32 %6791, 1
  %6794 = icmp eq i32 %6790, 0
  br i1 %6794, label %6836, label %6795

; <label>:6795                                    ; preds = %6739
  br label %6796

; <label>:6796                                    ; preds = %6824, %6795
  %6797 = phi i32 [ %6827, %6824 ], [ 0, %6795 ]
  %6798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6799 = extractvalue %dx.types.ResRet.i32 %6798, 0
  %6800 = lshr i32 %6799, 16
  %6801 = and i32 %6800, 31
  %6802 = shl i32 %6785, %6801
  %6803 = add i32 %6802, %6784
  %6804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6805 = extractvalue %dx.types.ResRet.i32 %6804, 0
  %6806 = and i32 %6805, 31
  %6807 = shl i32 %6803, %6806
  %6808 = add i32 %6807, %6797
  %6809 = shl i32 %6808, 2
  %6810 = add i32 %6809, 32
  %6811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6810, i32 undef)  ; BufferLoad(srv,index,wot)
  %6812 = extractvalue %dx.types.ResRet.i32 %6811, 0
  %6813 = icmp slt i32 %6812, 0
  %6814 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6797
  %6815 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6797
  %6816 = bitcast float* %6814 to i32*
  %6817 = bitcast float* %6815 to i32*
  br i1 %6813, label %6818, label %6824

; <label>:6818                                    ; preds = %6796
  %6819 = and i32 %6812, 1073741823
  %6820 = add nuw nsw i32 %6819, 20
  %6821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6820, i32 undef)  ; BufferLoad(srv,index,wot)
  %6822 = extractvalue %dx.types.ResRet.i32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.i32 %6821, 1
  br label %6824

; <label>:6824                                    ; preds = %6818, %6796
  %6825 = phi i32 [ %6822, %6818 ], [ %6792, %6796 ]
  %6826 = phi i32 [ %6823, %6818 ], [ %6793, %6796 ]
  store i32 %6825, i32* %6816, align 4
  store i32 %6826, i32* %6817, align 4
  %6827 = add nuw i32 %6797, 1
  %6828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.i32 %6828, 2
  %6830 = icmp eq i32 %6829, 0
  %6831 = icmp ugt i32 %6812, -1073741825
  %6832 = and i1 %6831, %6830
  %6833 = icmp ult i32 %6827, %6790
  %6834 = and i1 %6832, %6833
  br i1 %6834, label %6796, label %6835

; <label>:6835                                    ; preds = %6824
  br label %6836

; <label>:6836                                    ; preds = %6835, %6739
  %6837 = phi i32 [ 0, %6739 ], [ %6827, %6835 ]
  %6838 = extractvalue %dx.types.CBufRet.f32 %6601, 2
  %6839 = fptoui float %6838 to i32
  %6840 = icmp eq i32 %6839, 0
  br i1 %6840, label %6892, label %6841

; <label>:6841                                    ; preds = %6836
  br label %6842

; <label>:6842                                    ; preds = %6887, %6841
  %6843 = phi i32 [ %6888, %6887 ], [ %6837, %6841 ]
  %6844 = phi i32 [ %6889, %6887 ], [ 0, %6841 ]
  %6845 = lshr i32 %6844, 2
  %6846 = and i32 %6844, 3
  %6847 = add nuw nsw i32 %6845, 83
  %6848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6847)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.i32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.i32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.i32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.i32 %6848, 3
  %6853 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6849, i32* %6853, align 4
  %6854 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6850, i32* %6854, align 4
  %6855 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6851, i32* %6855, align 4
  %6856 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6852, i32* %6856, align 4
  %6857 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6846
  %6858 = load i32, i32* %6857, align 4, !tbaa !102, !noalias !106
  %6859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6860 = extractvalue %dx.types.ResRet.i32 %6859, 0
  %6861 = lshr i32 %6860, 16
  %6862 = and i32 %6861, 31
  %6863 = shl i32 %6785, %6862
  %6864 = add i32 %6863, %6784
  %6865 = shl i32 %6864, 2
  %6866 = add i32 %6865, %6858
  %6867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6866, i32 undef)  ; BufferLoad(srv,index,wot)
  %6868 = extractvalue %dx.types.ResRet.i32 %6867, 0
  %6869 = icmp eq i32 %6868, 0
  br i1 %6869, label %6887, label %6870

; <label>:6870                                    ; preds = %6842
  %6871 = icmp slt i32 %6868, 0
  %6872 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6843
  %6873 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6843
  %6874 = bitcast float* %6872 to i32*
  %6875 = bitcast float* %6873 to i32*
  br i1 %6871, label %6876, label %6883

; <label>:6876                                    ; preds = %6870
  %6877 = and i32 %6868, 1073741823
  %6878 = add i32 %6858, 20
  %6879 = add i32 %6878, %6877
  %6880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6879, i32 undef)  ; BufferLoad(srv,index,wot)
  %6881 = extractvalue %dx.types.ResRet.i32 %6880, 0
  %6882 = extractvalue %dx.types.ResRet.i32 %6880, 1
  br label %6883

; <label>:6883                                    ; preds = %6876, %6870
  %6884 = phi i32 [ %6881, %6876 ], [ %6792, %6870 ]
  %6885 = phi i32 [ %6882, %6876 ], [ %6793, %6870 ]
  store i32 %6884, i32* %6874, align 4
  store i32 %6885, i32* %6875, align 4
  %6886 = add i32 %6843, 1
  br label %6887

; <label>:6887                                    ; preds = %6883, %6842
  %6888 = phi i32 [ %6843, %6842 ], [ %6886, %6883 ]
  %6889 = add nuw i32 %6844, 1
  %6890 = icmp eq i32 %6889, %6839
  br i1 %6890, label %6891, label %6842

; <label>:6891                                    ; preds = %6887
  br label %6892

; <label>:6892                                    ; preds = %6891, %6836
  %6893 = phi i32 [ %6837, %6836 ], [ %6888, %6891 ]
  %6894 = icmp eq i32 %6893, 1
  %6895 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6896 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6894, label %6897, label %6900

; <label>:6897                                    ; preds = %6892
  %6898 = load float, float* %6895, align 4
  %6899 = load float, float* %6896, align 4
  br label %6927

; <label>:6900                                    ; preds = %6892
  %6901 = load float, float* %6895, align 4
  %6902 = load float, float* %6896, align 4
  %6903 = fdiv fast float 1.000000e+00, %6902
  %6904 = fsub fast float %6901, %6903
  %6905 = icmp ugt i32 %6893, 1
  br i1 %6905, label %6906, label %6922

; <label>:6906                                    ; preds = %6900
  br label %6907

; <label>:6907                                    ; preds = %6907, %6906
  %6908 = phi float [ %6917, %6907 ], [ %6904, %6906 ]
  %6909 = phi float [ %6918, %6907 ], [ %6901, %6906 ]
  %6910 = phi i32 [ %6919, %6907 ], [ 1, %6906 ]
  %6911 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6910
  %6912 = load float, float* %6911, align 4
  %6913 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6910
  %6914 = load float, float* %6913, align 4
  %6915 = fdiv fast float 1.000000e+00, %6914
  %6916 = fsub fast float %6912, %6915
  %6917 = call float @dx.op.binary.f32(i32 36, float %6908, float %6916)  ; FMin(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %6909, float %6912)  ; FMax(a,b)
  %6919 = add nuw i32 %6910, 1
  %6920 = icmp eq i32 %6919, %6893
  br i1 %6920, label %6921, label %6907

; <label>:6921                                    ; preds = %6907
  br label %6922

; <label>:6922                                    ; preds = %6921, %6900
  %6923 = phi float [ %6904, %6900 ], [ %6917, %6921 ]
  %6924 = phi float [ %6901, %6900 ], [ %6918, %6921 ]
  %6925 = fsub fast float %6924, %6923
  %6926 = fdiv fast float 1.000000e+00, %6925
  br label %6927

; <label>:6927                                    ; preds = %6922, %6897
  %6928 = phi float [ %6898, %6897 ], [ %6924, %6922 ]
  %6929 = phi float [ %6899, %6897 ], [ %6926, %6922 ]
  %6930 = fadd fast float %6631, %6928
  %6931 = fmul fast float %6930, %6929
  %6932 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6933 = fmul fast float %6932, 2.000000e+00
  %6934 = fsub fast float 1.000000e+00, %6933
  %6935 = fmul fast float %6769, %6769
  %6936 = fsub fast float %6770, %6935
  %6937 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6936)  ; FMax(a,b)
  %6938 = fdiv fast float 1.000000e+00, %6937
  %6939 = fmul fast float %6770, %6769
  %6940 = fsub fast float %6771, %6939
  %6941 = fsub fast float %6934, %6769
  %6942 = fmul fast float %6934, %6934
  %6943 = fsub fast float %6942, %6770
  %6944 = fmul fast float %6938, %6940
  %6945 = fmul fast float %6944, %6941
  %6946 = fsub fast float %6943, %6945
  %6947 = fmul fast float %6770, %6770
  %6948 = fsub fast float %6772, %6947
  %6949 = fmul fast float %6940, %6940
  %6950 = fmul fast float %6949, %6938
  %6951 = fsub fast float %6948, %6950
  %6952 = fdiv fast float %6946, %6951
  %6953 = fmul fast float %6952, %6940
  %6954 = fsub fast float %6941, %6953
  %6955 = fmul fast float %6954, %6938
  %6956 = fmul fast float %6955, %6769
  %6957 = fsub fast float 1.000000e+00, %6956
  %6958 = fmul fast float %6952, %6770
  %6959 = fsub fast float %6957, %6958
  %6960 = fmul fast float %6955, %6955
  %6961 = fmul fast float %6952, 4.000000e+00
  %6962 = fmul fast float %6961, %6959
  %6963 = fsub fast float %6960, %6962
  %6964 = call float @dx.op.unary.f32(i32 24, float %6963)  ; Sqrt(value)
  %6965 = fcmp fast oge float %6955, 0.000000e+00
  %6966 = fsub fast float -0.000000e+00, %6964
  %6967 = select i1 %6965, float %6966, float %6964
  %6968 = fsub fast float %6967, %6955
  %6969 = fdiv fast float %6968, %6952
  %6970 = fdiv fast float %6959, %6968
  %6971 = fmul fast float %6969, 5.000000e-01
  %6972 = fmul fast float %6970, 2.000000e+00
  %6973 = select i1 %6965, float %6971, float %6972
  %6974 = select i1 %6965, float %6972, float %6971
  %6975 = call float @dx.op.binary.f32(i32 35, float %6973, float %6974)  ; FMax(a,b)
  %6976 = call float @dx.op.binary.f32(i32 36, float %6973, float %6974)  ; FMin(a,b)
  %6977 = fcmp fast ogt float %6934, %6975
  %6978 = fsub fast float %6934, %6976
  %6979 = fsub fast float %6934, %6975
  %6980 = fsub fast float %6975, %6976
  %6981 = select i1 %6977, float %6979, float %6980
  %6982 = fmul float %6978, %6981
  %6983 = select i1 %6977, float %6976, float %6934
  %6984 = fcmp fast ogt float %6934, %6976
  %6985 = fmul fast float %6983, %6975
  %6986 = fadd fast float %6983, %6975
  %6987 = fmul fast float %6986, %6769
  %6988 = fadd fast float %6985, %6770
  %6989 = fsub fast float %6988, %6987
  %6990 = fdiv fast float %6989, %6982
  %6991 = select i1 %6984, float %6990, float 0.000000e+00
  %6992 = fsub fast float 1.000000e+00, %6991
  %6993 = select i1 %6977, float %6992, float %6991
  %6994 = call float @dx.op.unary.f32(i32 7, float %6993)  ; Saturate(value)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6996 = fmul fast float %6995, %6994
  %6997 = fsub fast float 1.000000e+00, %6996
  br label %6998

; <label>:6998                                    ; preds = %6927, %6639, %6604, %6600, %6566
  %6999 = phi float [ 1.000000e+00, %6566 ], [ %6997, %6927 ], [ 1.000000e+00, %6604 ], [ 1.000000e+00, %6639 ], [ 1.000000e+00, %6600 ]
  %7000 = fcmp fast ogt float %6596, 0.000000e+00
  br i1 %7000, label %7001, label %7007, !dx.controlflow.hints !115

; <label>:7001                                    ; preds = %6998
  %7002 = fadd fast float %6509, %6483
  %7003 = call float @dx.op.binary.f32(i32 35, float %7002, float 0.000000e+00)  ; FMax(a,b)
  %7004 = fadd fast float %7003, 0x3F10000000000000
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6498, float %6499, float undef, float undef, i32 0, i32 0, i32 undef, float %7004)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  br label %7007

; <label>:7007                                    ; preds = %7001, %6998
  %7008 = phi float [ %7006, %7001 ], [ 1.000000e+00, %6998 ]
  %7009 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %7009, label %7010, label %7016, !dx.controlflow.hints !116

; <label>:7010                                    ; preds = %7007
  %7011 = fadd fast float %6539, %6483
  %7012 = call float @dx.op.binary.f32(i32 35, float %7011, float 0.000000e+00)  ; FMax(a,b)
  %7013 = fadd fast float %7012, 0x3F10000000000000
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6490, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  br label %7016

; <label>:7016                                    ; preds = %7010, %7007
  %7017 = phi float [ %7015, %7010 ], [ 1.000000e+00, %7007 ]
  %7018 = fcmp fast ogt float %6593, 0.000000e+00
  br i1 %7018, label %7019, label %7026, !dx.controlflow.hints !117

; <label>:7019                                    ; preds = %7016
  %7020 = extractvalue %dx.types.CBufRet.f32 %6508, 0
  %7021 = fadd fast float %7020, %6483
  %7022 = call float @dx.op.binary.f32(i32 35, float %7021, float 0.000000e+00)  ; FMax(a,b)
  %7023 = fadd fast float %7022, 0x3F10000000000000
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6475, float %6479, float undef, float undef, i32 0, i32 0, i32 undef, float %7023)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  br label %7026

; <label>:7026                                    ; preds = %7019, %7016
  %7027 = phi float [ %7025, %7019 ], [ 1.000000e+00, %7016 ]
  %7028 = fsub fast float %7008, %6999
  %7029 = fmul fast float %7028, %6537
  %7030 = fadd fast float %7029, %6999
  %7031 = fsub fast float %7017, %7030
  %7032 = fmul fast float %7031, %6567
  %7033 = fadd fast float %7032, %7030
  %7034 = fsub fast float %7027, %7033
  %7035 = fmul fast float %7034, %6593
  %7036 = fadd fast float %7035, %7033
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7039 = fcmp fast ogt float %7038, 0.000000e+00
  br i1 %7039, label %7040, label %7080, !dx.controlflow.hints !118

; <label>:7040                                    ; preds = %7026
  %7041 = fcmp fast ugt float %7038, 0.000000e+00
  br i1 %7041, label %7042, label %7077

; <label>:7042                                    ; preds = %7040
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.CBufRet.f32 %7043, 2
  %7047 = extractvalue %dx.types.CBufRet.f32 %7043, 3
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.CBufRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.CBufRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.CBufRet.f32 %7048, 3
  %7053 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.CBufRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.CBufRet.f32 %7055, 2
  %7059 = fadd fast float %7056, %6452
  %7060 = fadd fast float %7057, %6453
  %7061 = fadd fast float %7058, %6454
  %7062 = fmul fast float %7059, %7044
  %7063 = call float @dx.op.tertiary.f32(i32 46, float %7045, float %7060, float %7062)  ; FMad(a,b,c)
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %7046, float %7061, float %7063)  ; FMad(a,b,c)
  %7065 = fadd fast float %7064, %7047
  %7066 = fmul fast float %7059, %7049
  %7067 = call float @dx.op.tertiary.f32(i32 46, float %7050, float %7060, float %7066)  ; FMad(a,b,c)
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %7051, float %7061, float %7067)  ; FMad(a,b,c)
  %7069 = fadd fast float %7068, %7052
  %7070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %7065, float %7069, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = fmul fast float %7071, %7054
  %7073 = fadd fast float %7072, %7053
  %7074 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7075 = fmul fast float %7074, %7038
  %7076 = fsub fast float 1.000000e+00, %7075
  br label %7077

; <label>:7077                                    ; preds = %7042, %7040
  %7078 = phi float [ %7076, %7042 ], [ 1.000000e+00, %7040 ]
  %7079 = fmul fast float %7078, %7036
  br label %7080

; <label>:7080                                    ; preds = %7077, %7026, %6432
  %7081 = phi float [ 1.000000e+00, %6432 ], [ %7079, %7077 ], [ %7036, %7026 ]
  %7082 = call float @dx.op.binary.f32(i32 36, float %7081, float %7081)  ; FMin(a,b)
  %7083 = call float @dx.op.binary.f32(i32 36, float %7081, float %7082)  ; FMin(a,b)
  %7084 = fcmp fast ogt float %7083, 0.000000e+00
  br i1 %7084, label %7085, label %7245, !dx.controlflow.hints !119

; <label>:7085                                    ; preds = %7080
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.CBufRet.f32 %7086, 2
  %7090 = extractvalue %dx.types.CBufRet.f32 %7086, 3
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7095 = extractvalue %dx.types.CBufRet.f32 %7091, 3
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %7100 = extractvalue %dx.types.CBufRet.f32 %7096, 3
  %7101 = fmul fast float %7087, %6452
  %7102 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %7088, float %7101)  ; FMad(a,b,c)
  %7103 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %7089, float %7102)  ; FMad(a,b,c)
  %7104 = fadd fast float %7103, %7090
  %7105 = fmul fast float %7092, %6452
  %7106 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %7093, float %7105)  ; FMad(a,b,c)
  %7107 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %7094, float %7106)  ; FMad(a,b,c)
  %7108 = fadd fast float %7107, %7095
  %7109 = fmul fast float %7097, %6452
  %7110 = call float @dx.op.tertiary.f32(i32 46, float %6453, float %7098, float %7109)  ; FMad(a,b,c)
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %7099, float %7110)  ; FMad(a,b,c)
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7116 = fmul fast float %7115, %7104
  %7117 = fmul fast float %7115, %7108
  %7118 = fadd fast float %7116, %7113
  %7119 = fadd fast float %7117, %7114
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = fsub fast float %7118, %7121
  %7124 = fsub fast float %7119, %7122
  %7125 = fcmp fast olt float %7123, 0.000000e+00
  %7126 = fcmp fast olt float %7124, 0.000000e+00
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7130 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7131 = extractvalue %dx.types.CBufRet.f32 %7127, 3
  %7132 = select i1 %7125, float %7128, float %7130
  %7133 = select i1 %7126, float %7129, float %7131
  %7134 = fmul fast float %7132, %7123
  %7135 = fmul fast float %7133, %7124
  %7136 = call float @dx.op.unary.f32(i32 6, float %7134)  ; FAbs(value)
  %7137 = call float @dx.op.unary.f32(i32 6, float %7135)  ; FAbs(value)
  %7138 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %7139 = call float @dx.op.binary.f32(i32 35, float %7136, float %7137)  ; FMax(a,b)
  %7140 = fsub fast float %7138, %7139
  %7141 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  %7142 = fcmp fast ogt float %7141, 0.000000e+00
  br i1 %7142, label %7143, label %7184, !dx.controlflow.hints !120

; <label>:7143                                    ; preds = %7085
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %7118, float %7119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7146 = fcmp fast ogt float %7145, 0.000000e+00
  br i1 %7146, label %7147, label %7179

; <label>:7147                                    ; preds = %7143
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %7118, float %7119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7152 = extractvalue %dx.types.ResRet.f32 %7148, 3
  %7153 = fsub fast float 1.000000e+00, %7100
  %7154 = fsub fast float %7153, %7111
  %7155 = fmul fast float %7154, 0x400921FB60000000
  %7156 = fadd fast float %7155, 0x3FF921FB60000000
  %7157 = call float @dx.op.unary.f32(i32 13, float %7156)  ; Sin(value)
  %7158 = fadd fast float %7157, -1.000000e+00
  %7159 = fmul fast float %7158, 0x3FD45F3060000000
  %7160 = fmul fast float %7154, 0x401921FB60000000
  %7161 = fadd fast float %7160, 0x400921FB60000000
  %7162 = call float @dx.op.unary.f32(i32 13, float %7161)  ; Sin(value)
  %7163 = fadd fast float %7162, 0x3E7777A5C0000000
  %7164 = fmul fast float %7163, 0x3FC45F3060000000
  %7165 = fmul fast float %7154, 0x4022D97C80000000
  %7166 = fadd fast float %7165, 0x4012D97C80000000
  %7167 = call float @dx.op.unary.f32(i32 13, float %7166)  ; Sin(value)
  %7168 = fadd fast float %7167, 1.000000e+00
  %7169 = fmul fast float %7168, 0x3FBB2995E0000000
  %7170 = fmul fast float %7154, 0x402921FB60000000
  %7171 = fadd fast float %7170, 0x401921FB60000000
  %7172 = call float @dx.op.unary.f32(i32 13, float %7171)  ; Sin(value)
  %7173 = fadd fast float %7172, 0xBE8777A5C0000000
  %7174 = fmul fast float %7173, 0x3FB45F3060000000
  %7175 = call float @dx.op.dot4.f32(i32 56, float %7149, float %7150, float %7151, float %7152, float %7159, float %7164, float %7169, float %7174)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7176 = fmul fast float %7175, 0xBFF7154760000000
  %7177 = call float @dx.op.unary.f32(i32 21, float %7176)  ; Exp(value)
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  br label %7179

; <label>:7179                                    ; preds = %7147, %7143
  %7180 = phi float [ %7178, %7147 ], [ 1.000000e+00, %7143 ]
  %7181 = fadd fast float %7180, -1.000000e+00
  %7182 = fmul fast float %7181, %7141
  %7183 = fadd fast float %7182, 1.000000e+00
  br label %7184

; <label>:7184                                    ; preds = %7179, %7085
  %7185 = phi float [ %7183, %7179 ], [ 1.000000e+00, %7085 ]
  %7186 = fmul fast float %7185, %7081
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7190 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %7191 = fadd fast float %7188, %157
  %7192 = fadd fast float %7189, %158
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7195 = fsub fast float -0.000000e+00, %7191
  %7196 = fsub fast float -0.000000e+00, %7192
  %7197 = fsub fast float %5837, %7190
  %7198 = fadd fast float %7197, %7194
  %7199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7195, float %7196, float %7198)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6433, float %6434, float %6435)  ; Dot3(ax,ay,az,bx,by,bz)
  %7201 = fdiv fast float 1.000000e+00, %7200
  %7202 = fmul fast float %7201, %7199
  %7203 = fmul fast float %6433, %7202
  %7204 = fmul fast float %6434, %7202
  %7205 = fadd fast float %7203, %7191
  %7206 = fadd fast float %7204, %7192
  %7207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7208 = extractvalue %dx.types.CBufRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.CBufRet.f32 %7207, 1
  %7210 = fsub fast float %7205, %7208
  %7211 = fsub fast float %7206, %7209
  %7212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.f32 %7212, 2
  %7214 = extractvalue %dx.types.CBufRet.f32 %7212, 3
  %7215 = fmul fast float %7210, %7213
  %7216 = fmul fast float %7211, %7214
  %7217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.i32 %7217, 3
  %7219 = icmp eq i32 %7218, 0
  br i1 %7219, label %7225, label %7220

; <label>:7220                                    ; preds = %7184
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7215, float %7216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.ResRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.ResRet.f32 %7221, 2
  br label %7230

; <label>:7225                                    ; preds = %7184
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7215, float %7216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.ResRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.ResRet.f32 %7226, 2
  br label %7230

; <label>:7230                                    ; preds = %7225, %7220
  %7231 = phi float [ %7222, %7220 ], [ %7227, %7225 ]
  %7232 = phi float [ %7223, %7220 ], [ %7228, %7225 ]
  %7233 = phi float [ %7224, %7220 ], [ %7229, %7225 ]
  %7234 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7235 = fmul fast float %7234, %7231
  %7236 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7237 = fsub fast float %7202, %7236
  %7238 = fsub fast float %7237, %7235
  %7239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7238)  ; FMax(a,b)
  %7240 = fmul fast float %7239, %7232
  %7241 = call float @dx.op.binary.f32(i32 36, float %7233, float %7240)  ; FMin(a,b)
  %7242 = fmul fast float %7241, 0xBFF7154760000000
  %7243 = call float @dx.op.unary.f32(i32 21, float %7242)  ; Exp(value)
  %7244 = fmul fast float %7186, %7243
  br label %7245

; <label>:7245                                    ; preds = %7230, %7080
  %7246 = phi float [ %7244, %7230 ], [ %7081, %7080 ]
  %7247 = call float @dx.op.binary.f32(i32 36, float %7246, float %7246)  ; FMin(a,b)
  %7248 = call float @dx.op.binary.f32(i32 36, float %7246, float %7247)  ; FMin(a,b)
  %7249 = fcmp fast ogt float %7248, 0.000000e+00
  br i1 %7249, label %7250, label %7636, !dx.controlflow.hints !121

; <label>:7250                                    ; preds = %7245
  %7251 = fmul fast float %7246, %6444
  %7252 = fmul fast float %7246, %6445
  %7253 = fmul fast float %7246, %6446
  %7254 = fsub fast float %159, %5643
  %7255 = fcmp fast ogt float %7254, 0.000000e+00
  %7256 = fmul fast float %6433, 5.120000e+02
  %7257 = fmul fast float %6434, 5.120000e+02
  %7258 = fmul fast float %6435, 5.120000e+02
  %7259 = fadd fast float %7258, %159
  %7260 = fsub fast float %5643, %7259
  %7261 = fmul fast float %7260, 2.000000e+00
  %7262 = fadd fast float %7261, %7259
  %7263 = select i1 %7255, float %7262, float %7259
  %7264 = fsub fast float %7263, %159
  %7265 = call float @dx.op.dot3.f32(i32 55, float %7256, float %7257, float %7264, float %7256, float %7257, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7266 = call float @dx.op.unary.f32(i32 25, float %7265)  ; Rsqrt(value)
  %7267 = fmul fast float %7266, %7256
  %7268 = fmul fast float %7266, %7257
  %7269 = fmul fast float %7266, %7264
  %7270 = fsub fast float %5643, %159
  %7271 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7270)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7267, float %7268, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7273 = fdiv fast float 1.000000e+00, %7272
  %7274 = fmul fast float %7273, %7271
  %7275 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7254, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7276 = fcmp fast ogt float %7275, 0.000000e+00
  %7277 = fcmp fast olt float %7275, 0.000000e+00
  %7278 = zext i1 %7276 to i32
  %7279 = zext i1 %7277 to i32
  %7280 = sub nsw i32 %7278, %7279
  %7281 = sitofp i32 %7280 to float
  %7282 = fsub fast float %7263, %5643
  %7283 = call float @dx.op.dot3.f32(i32 55, float %7256, float %7257, float %7282, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = fcmp fast ogt float %7283, 0.000000e+00
  %7285 = fcmp fast olt float %7283, 0.000000e+00
  %7286 = zext i1 %7284 to i32
  %7287 = zext i1 %7285 to i32
  %7288 = sub nsw i32 %7286, %7287
  %7289 = sitofp i32 %7288 to float
  %7290 = fcmp fast une float %7281, %7289
  br i1 %7290, label %7291, label %7301

; <label>:7291                                    ; preds = %7250
  %7292 = fmul fast float %7274, %7269
  %7293 = fmul fast float %7274, %7268
  %7294 = fmul fast float %7274, %7267
  %7295 = fmul fast float %7294, %7294
  %7296 = fmul fast float %7293, %7293
  %7297 = fadd fast float %7295, %7296
  %7298 = fmul fast float %7292, %7292
  %7299 = fadd fast float %7297, %7298
  %7300 = call float @dx.op.unary.f32(i32 24, float %7299)  ; Sqrt(value)
  br label %7311

; <label>:7301                                    ; preds = %7250
  %7302 = icmp slt i32 %7280, 0
  br i1 %7302, label %7303, label %7311

; <label>:7303                                    ; preds = %7301
  %7304 = fsub fast float %159, %7263
  %7305 = fmul fast float %7256, %7256
  %7306 = fmul fast float %7257, %7257
  %7307 = fadd fast float %7305, %7306
  %7308 = fmul fast float %7304, %7304
  %7309 = fadd fast float %7307, %7308
  %7310 = call float @dx.op.unary.f32(i32 24, float %7309)  ; Sqrt(value)
  br label %7311

; <label>:7311                                    ; preds = %7303, %7301, %7291
  %7312 = phi float [ %7300, %7291 ], [ %7310, %7303 ], [ 0.000000e+00, %7301 ]
  %7313 = fsub fast float -0.000000e+00, %7312
  %7314 = select i1 %7255, float -0.000000e+00, float %7313
  %7315 = fmul fast float %5644, 0x3FF7154760000000
  %7316 = fmul fast float %7315, %7314
  %7317 = fmul fast float %5645, 0x3FF7154760000000
  %7318 = fmul fast float %7317, %7314
  %7319 = fmul fast float %5646, 0x3FF7154760000000
  %7320 = fmul fast float %7319, %7314
  %7321 = call float @dx.op.unary.f32(i32 21, float %7316)  ; Exp(value)
  %7322 = call float @dx.op.unary.f32(i32 21, float %7318)  ; Exp(value)
  %7323 = call float @dx.op.unary.f32(i32 21, float %7320)  ; Exp(value)
  %7324 = call float @dx.op.unary.f32(i32 7, float %7321)  ; Saturate(value)
  %7325 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7326 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7327 = fmul fast float %7251, %7324
  %7328 = fmul fast float %7252, %7325
  %7329 = fmul fast float %7253, %7326
  %7330 = fsub fast float %6433, %177
  %7331 = fsub fast float %6434, %178
  %7332 = fsub fast float %6435, %179
  %7333 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7332, float %7330, float %7331, float %7332)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = call float @dx.op.unary.f32(i32 25, float %7333)  ; Rsqrt(value)
  %7335 = fmul fast float %7334, %7330
  %7336 = fmul fast float %7334, %7331
  %7337 = fmul fast float %7334, %7332
  %7338 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6434, float %6435, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %7339 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %7335, float %7336, float %7337)  ; Dot3(ax,ay,az,bx,by,bz)
  %7340 = call float @dx.op.unary.f32(i32 7, float %7338)  ; Saturate(value)
  %7341 = fmul fast float %7340, %7340
  %7342 = fmul fast float %7341, %5887
  %7343 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7344 = fmul fast float %7343, %7340
  %7345 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %7335, float %7336, float %7337)  ; Dot3(ax,ay,az,bx,by,bz)
  %7346 = fmul fast float %7345, %7345
  %7347 = call float @dx.op.unary.f32(i32 6, float %7338)  ; FAbs(value)
  %7348 = call float @dx.op.binary.f32(i32 35, float %6262, float 0x3F847AE140000000)  ; FMax(a,b)
  %7349 = fmul fast float %7348, %7348
  %7350 = fmul fast float %7349, %7349
  %7351 = fsub fast float 1.000000e+00, %7350
  %7352 = fmul fast float %5874, %5874
  %7353 = fmul fast float %7352, %7351
  %7354 = fadd fast float %7353, %7350
  %7355 = bitcast float %7354 to i32
  %7356 = ashr i32 %7355, 1
  %7357 = add nsw i32 %7356, 532487669
  %7358 = bitcast i32 %7357 to float
  %7359 = fadd fast float %7358, %5874
  %7360 = fmul fast float %7350, %7346
  %7361 = fsub fast float 1.000000e+00, %7346
  %7362 = fadd fast float %7361, %7360
  %7363 = fmul fast float %7347, %7347
  %7364 = fmul fast float %7363, %7351
  %7365 = fadd fast float %7364, %7350
  %7366 = bitcast float %7365 to i32
  %7367 = ashr i32 %7366, 1
  %7368 = add nsw i32 %7367, 532487669
  %7369 = bitcast i32 %7368 to float
  %7370 = fadd fast float %7369, %7347
  %7371 = fmul fast float %7362, %7362
  %7372 = fmul fast float %7371, %7359
  %7373 = fmul fast float %7372, %7370
  %7374 = fdiv fast float 0x3FF0A00000000000, %7373
  %7375 = fmul fast float %7374, %7350
  %7376 = fmul fast float %6122, 0x3FF9999980000000
  %7377 = fsub fast float 5.000000e+00, %7376
  %7378 = call float @dx.op.unary.f32(i32 6, float %7339)  ; FAbs(value)
  %7379 = fsub fast float 1.000000e+00, %7378
  %7380 = fmul fast float %6122, 0x41D9660740000000
  %7381 = fadd fast float %7380, 0xC1EFBF8940000000
  %7382 = bitcast float %7379 to i32
  %7383 = sitofp i32 %7382 to float
  %7384 = fmul fast float %7383, %7377
  %7385 = fadd fast float %7381, %7384
  %7386 = fptosi float %7385 to i32
  %7387 = bitcast i32 %7386 to float
  %7388 = fsub fast float 1.000000e+00, %5829
  %7389 = fsub fast float 1.000000e+00, %5830
  %7390 = fsub fast float 1.000000e+00, %5872
  %7391 = fmul fast float %7387, %7388
  %7392 = fmul fast float %7387, %7389
  %7393 = fmul fast float %7387, %7390
  %7394 = fadd fast float %7391, %5829
  %7395 = fadd fast float %7392, %5830
  %7396 = fadd fast float %7393, %5872
  br i1 %6145, label %7397, label %7420

; <label>:7397                                    ; preds = %7311
  %7398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %7378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = fadd fast float %7399, -5.000000e-01
  %7403 = fadd fast float %7400, -5.000000e-01
  %7404 = fadd fast float %7401, -5.000000e-01
  %7405 = fmul fast float %5829, 4.000000e+00
  %7406 = fmul fast float %7405, %7388
  %7407 = fmul fast float %7406, %7402
  %7408 = fmul fast float %5830, 4.000000e+00
  %7409 = fmul fast float %7408, %7389
  %7410 = fmul fast float %7409, %7403
  %7411 = fmul fast float %5872, 4.000000e+00
  %7412 = fmul fast float %7411, %7390
  %7413 = fmul fast float %7412, %7404
  %7414 = fadd fast float %7407, %7394
  %7415 = fadd fast float %7410, %7395
  %7416 = fadd fast float %7413, %7396
  %7417 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7419 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  br label %7420

; <label>:7420                                    ; preds = %7397, %7311
  %7421 = phi float [ %7417, %7397 ], [ %7394, %7311 ]
  %7422 = phi float [ %7418, %7397 ], [ %7395, %7311 ]
  %7423 = phi float [ %7419, %7397 ], [ %7396, %7311 ]
  %7424 = fmul fast float %7338, 9.843750e-01
  %7425 = fadd fast float %7424, 7.812500e-03
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7425, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.ResRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.ResRet.f32 %7426, 2
  %7430 = extractvalue %dx.types.ResRet.f32 %7426, 3
  %7431 = fsub fast float %7429, %7427
  %7432 = fsub fast float %7430, %7428
  %7433 = fmul fast float %7431, %6132
  %7434 = fmul fast float %7432, %6132
  %7435 = fadd fast float %7433, %7427
  %7436 = fadd fast float %7434, %7428
  %7437 = fmul fast float %7435, %5829
  %7438 = fmul fast float %7435, %5830
  %7439 = fmul fast float %7435, %5872
  %7440 = fadd fast float %7437, %7436
  %7441 = fadd fast float %7438, %7436
  %7442 = fadd fast float %7439, %7436
  br i1 %6145, label %7443, label %7466

; <label>:7443                                    ; preds = %7420
  %7444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %7338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = fadd fast float %7445, -5.000000e-01
  %7449 = fadd fast float %7446, -5.000000e-01
  %7450 = fadd fast float %7447, -5.000000e-01
  %7451 = fmul fast float %5829, 4.000000e+00
  %7452 = fmul fast float %7451, %7388
  %7453 = fmul fast float %7452, %7448
  %7454 = fmul fast float %5830, 4.000000e+00
  %7455 = fmul fast float %7454, %7389
  %7456 = fmul fast float %7455, %7449
  %7457 = fmul fast float %5872, 4.000000e+00
  %7458 = fmul fast float %7457, %7390
  %7459 = fmul fast float %7458, %7450
  %7460 = fadd fast float %7453, %7440
  %7461 = fadd fast float %7456, %7441
  %7462 = fadd fast float %7459, %7442
  %7463 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7464 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7465 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  br label %7466

; <label>:7466                                    ; preds = %7443, %7420
  %7467 = phi float [ %7463, %7443 ], [ %7440, %7420 ]
  %7468 = phi float [ %7464, %7443 ], [ %7441, %7420 ]
  %7469 = phi float [ %7465, %7443 ], [ %7442, %7420 ]
  %7470 = call float @dx.op.binary.f32(i32 35, float %7468, float %7469)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7467, float %7470)  ; FMax(a,b)
  %7472 = fsub fast float 1.000000e+00, %7471
  %7473 = call float @dx.op.binary.f32(i32 35, float %7347, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7474 = fdiv fast float %4544, %7473
  %7475 = fmul fast float %6203, %7474
  %7476 = fmul fast float %6205, %7474
  %7477 = fmul fast float %6207, %7474
  %7478 = call float @dx.op.unary.f32(i32 21, float %7475)  ; Exp(value)
  %7479 = call float @dx.op.unary.f32(i32 21, float %7476)  ; Exp(value)
  %7480 = call float @dx.op.unary.f32(i32 21, float %7477)  ; Exp(value)
  %7481 = call float @dx.op.unary.f32(i32 7, float %7478)  ; Saturate(value)
  %7482 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7483 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7484 = select i1 %6200, float %7481, float 0.000000e+00
  %7485 = select i1 %6201, float %7482, float 0.000000e+00
  %7486 = select i1 %6202, float %7483, float 0.000000e+00
  %7487 = fsub fast float -0.000000e+00, %5832
  %7488 = fsub fast float -0.000000e+00, %5833
  %7489 = fsub fast float -0.000000e+00, %5834
  %7490 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6434, float %6435, float %7487, float %7488, float %7489)  ; Dot3(ax,ay,az,bx,by,bz)
  %7491 = call float @dx.op.unary.f32(i32 7, float %7490)  ; Saturate(value)
  %7492 = fmul fast float %7491, 9.843750e-01
  %7493 = fadd fast float %7492, 7.812500e-03
  %7494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7493, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7495 = extractvalue %dx.types.ResRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.ResRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.ResRet.f32 %7494, 2
  %7498 = extractvalue %dx.types.ResRet.f32 %7494, 3
  %7499 = fsub fast float %7497, %7495
  %7500 = fsub fast float %7498, %7496
  %7501 = fmul fast float %7499, %6132
  %7502 = fmul fast float %7500, %6132
  %7503 = fadd fast float %7501, %7495
  %7504 = fadd fast float %7502, %7496
  %7505 = fmul fast float %7503, %5829
  %7506 = fmul fast float %7503, %5830
  %7507 = fmul fast float %7503, %5872
  %7508 = fadd fast float %7505, %7504
  %7509 = fadd fast float %7506, %7504
  %7510 = fadd fast float %7507, %7504
  br i1 %6145, label %7511, label %7534

; <label>:7511                                    ; preds = %7466
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %7491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = fadd fast float %7513, -5.000000e-01
  %7517 = fadd fast float %7514, -5.000000e-01
  %7518 = fadd fast float %7515, -5.000000e-01
  %7519 = fmul fast float %5829, 4.000000e+00
  %7520 = fmul fast float %7519, %7388
  %7521 = fmul fast float %7520, %7516
  %7522 = fmul fast float %5830, 4.000000e+00
  %7523 = fmul fast float %7522, %7389
  %7524 = fmul fast float %7523, %7517
  %7525 = fmul fast float %5872, 4.000000e+00
  %7526 = fmul fast float %7525, %7390
  %7527 = fmul fast float %7526, %7518
  %7528 = fadd fast float %7521, %7508
  %7529 = fadd fast float %7524, %7509
  %7530 = fadd fast float %7527, %7510
  %7531 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7532 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7533 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  br label %7534

; <label>:7534                                    ; preds = %7511, %7466
  %7535 = phi float [ %7531, %7511 ], [ %7508, %7466 ]
  %7536 = phi float [ %7532, %7511 ], [ %7509, %7466 ]
  %7537 = phi float [ %7533, %7511 ], [ %7510, %7466 ]
  %7538 = call float @dx.op.binary.f32(i32 35, float %7536, float %7537)  ; FMax(a,b)
  %7539 = call float @dx.op.binary.f32(i32 35, float %7535, float %7538)  ; FMax(a,b)
  %7540 = fsub fast float 1.000000e+00, %7539
  %7541 = fmul fast float %6262, %6268
  %7542 = fadd fast float %6261, %7541
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fsub fast float %6433, %5880
  %7545 = fsub fast float %6434, %5881
  %7546 = fsub fast float %6435, %5882
  %7547 = call float @dx.op.dot3.f32(i32 55, float %7544, float %7545, float %7546, float %7544, float %7545, float %7546)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = call float @dx.op.unary.f32(i32 25, float %7547)  ; Rsqrt(value)
  %7549 = fmul fast float %7548, %7544
  %7550 = fmul fast float %7548, %7545
  %7551 = fmul fast float %7548, %7546
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7487, float %7488, float %7489, float %7549, float %7550, float %7551)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = fmul fast float %7552, %7552
  %7554 = call float @dx.op.unary.f32(i32 6, float %7491)  ; FAbs(value)
  %7555 = call float @dx.op.binary.f32(i32 35, float %7543, float 0x3F847AE140000000)  ; FMax(a,b)
  %7556 = fmul fast float %7555, %7555
  %7557 = fmul fast float %7556, %7556
  %7558 = fsub fast float 1.000000e+00, %7557
  %7559 = fmul fast float %7352, %7558
  %7560 = fadd fast float %7559, %7557
  %7561 = bitcast float %7560 to i32
  %7562 = ashr i32 %7561, 1
  %7563 = add nsw i32 %7562, 532487669
  %7564 = bitcast i32 %7563 to float
  %7565 = fadd fast float %7564, %5874
  %7566 = fmul fast float %7557, %7553
  %7567 = fsub fast float 1.000000e+00, %7553
  %7568 = fadd fast float %7567, %7566
  %7569 = fmul fast float %7554, %7554
  %7570 = fmul fast float %7569, %7558
  %7571 = fadd fast float %7570, %7557
  %7572 = bitcast float %7571 to i32
  %7573 = ashr i32 %7572, 1
  %7574 = add nsw i32 %7573, 532487669
  %7575 = bitcast i32 %7574 to float
  %7576 = fadd fast float %7575, %7554
  %7577 = fmul fast float %7568, %7568
  %7578 = fmul fast float %7577, %7565
  %7579 = fmul fast float %7578, %7576
  %7580 = fdiv fast float 0x3FF0A00000000000, %7579
  %7581 = fmul fast float %7580, %7557
  %7582 = fmul fast float %7491, %7484
  %7583 = fmul fast float %7491, %7485
  %7584 = fmul fast float %7491, %7486
  %7585 = fmul fast float %7582, %7540
  %7586 = fmul fast float %7585, %7581
  %7587 = fmul fast float %7583, %7540
  %7588 = fmul fast float %7587, %7581
  %7589 = fmul fast float %7584, %7540
  %7590 = fmul fast float %7589, %7581
  %7591 = fmul fast float %7421, %7375
  %7592 = fmul fast float %7422, %7375
  %7593 = fmul fast float %7423, %7375
  %7594 = fsub fast float 1.000000e+00, %7339
  %7595 = bitcast float %7594 to i32
  %7596 = sitofp i32 %7595 to float
  %7597 = fmul fast float %7596, 5.000000e+00
  %7598 = fadd fast float %7597, 0xC1EFBF8940000000
  %7599 = fptosi float %7598 to i32
  %7600 = bitcast i32 %7599 to float
  %7601 = fmul fast float %7600, %5192
  %7602 = fmul fast float %7472, %7601
  %7603 = fmul fast float %7602, %6195
  %7604 = fmul fast float %7602, %6196
  %7605 = fmul fast float %7602, %6197
  %7606 = fadd fast float %7603, %7591
  %7607 = fadd fast float %7604, %7592
  %7608 = fadd fast float %7605, %7593
  %7609 = fmul fast float %7606, %7344
  %7610 = fmul fast float %7607, %7344
  %7611 = fmul fast float %7608, %7344
  %7612 = fmul fast float %7344, %7327
  %7613 = fmul fast float %7612, %7472
  %7614 = fmul fast float %7344, %7328
  %7615 = fmul fast float %7614, %7472
  %7616 = fmul fast float %7344, %7329
  %7617 = fmul fast float %7616, %7472
  %7618 = fadd fast float %7609, %7586
  %7619 = fadd fast float %7610, %7588
  %7620 = fadd fast float %7611, %7590
  %7621 = fmul fast float %7618, %7327
  %7622 = fmul fast float %7619, %7328
  %7623 = fmul fast float %7620, %7329
  %7624 = fadd fast float %7613, %6179
  %7625 = fmul fast float %7624, %5217
  %7626 = fadd fast float %7615, %6180
  %7627 = fmul fast float %7626, %5217
  %7628 = fadd fast float %7617, %6181
  %7629 = fmul fast float %7628, %5217
  %7630 = fadd fast float %7621, %6419
  %7631 = fmul fast float %7630, %5217
  %7632 = fadd fast float %7622, %6423
  %7633 = fmul fast float %7632, %5217
  %7634 = fadd fast float %7623, %6427
  %7635 = fmul fast float %7634, %5217
  br label %7636

; <label>:7636                                    ; preds = %7534, %7245, %6403
  %7637 = phi float [ %6420, %6403 ], [ %6420, %7245 ], [ %7631, %7534 ]
  %7638 = phi float [ %6424, %6403 ], [ %6424, %7245 ], [ %7633, %7534 ]
  %7639 = phi float [ %6428, %6403 ], [ %6428, %7245 ], [ %7635, %7534 ]
  %7640 = phi float [ %6292, %6403 ], [ %6292, %7245 ], [ %7625, %7534 ]
  %7641 = phi float [ %6293, %6403 ], [ %6293, %7245 ], [ %7627, %7534 ]
  %7642 = phi float [ %6294, %6403 ], [ %6294, %7245 ], [ %7629, %7534 ]
  %7643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.i32 %7643, 0
  %7645 = icmp eq i32 %7644, 0
  br i1 %7645, label %8420, label %7646

; <label>:7646                                    ; preds = %7636
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 3
  %7650 = fmul fast float %7648, %102
  %7651 = fmul fast float %7649, %103
  %7652 = fptoui float %7650 to i32
  %7653 = fptoui float %7651 to i32
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.CBufRet.f32 %7654, 2
  %7657 = extractvalue %dx.types.CBufRet.f32 %7654, 3
  %7658 = fadd fast float %93, -4.000000e+00
  %7659 = call float @dx.op.binary.f32(i32 35, float %7658, float 0.000000e+00)  ; FMax(a,b)
  %7660 = fadd fast float %7659, %7655
  %7661 = fmul fast float %7660, %7656
  %7662 = call float @dx.op.unary.f32(i32 23, float %7661)  ; Log(value)
  %7663 = fmul fast float %7662, %7657
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 2
  %7666 = fmul fast float %7663, %7665
  %7667 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.i32 %7668, 1
  %7670 = add i32 %7669, -1
  %7671 = uitofp i32 %7669 to float
  %7672 = fmul fast float %7671, %7667
  %7673 = fptoui float %7672 to i32
  %7674 = call i32 @dx.op.binary.i32(i32 40, i32 %7673, i32 %7670)  ; UMin(a,b)
  %7675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.i32 %7675, 2
  %7677 = extractvalue %dx.types.CBufRet.i32 %7675, 3
  %7678 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7653, i32 %7676, i32 %7652)  ; UMad(a,b,c)
  %7679 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7674, i32 %7677, i32 %7678)  ; UMad(a,b,c)
  %7680 = add nsw i32 %7644, -1
  %7681 = call i32 @dx.op.binary.i32(i32 37, i32 %7680, i32 0)  ; IMax(a,b)
  %7682 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7683 = fptoui float %7682 to i32
  %7684 = lshr i32 %7683, 5
  %7685 = call i32 @dx.op.binary.i32(i32 40, i32 %7684, i32 8191)  ; UMin(a,b)
  %7686 = shl i32 %7685, 2
  %7687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7686, i32 undef)  ; BufferLoad(srv,index,wot)
  %7688 = extractvalue %dx.types.ResRet.i32 %7687, 0
  %7689 = lshr i32 %7688, 16
  %7690 = and i32 %7688, 65535
  %7691 = lshr i32 %7688, 21
  %7692 = lshr i32 %7690, 5
  %7693 = call i32 @dx.op.binary.i32(i32 40, i32 %7692, i32 %7681)  ; UMin(a,b)
  %7694 = icmp ugt i32 %7691, %7693
  br i1 %7694, label %8420, label %7695

; <label>:7695                                    ; preds = %7646
  br label %7696

; <label>:7696                                    ; preds = %8410, %7695
  %7697 = phi i32 [ %8417, %8410 ], [ %7691, %7695 ]
  %7698 = phi float [ %8411, %8410 ], [ %7637, %7695 ]
  %7699 = phi float [ %8412, %8410 ], [ %7638, %7695 ]
  %7700 = phi float [ %8413, %8410 ], [ %7639, %7695 ]
  %7701 = phi float [ %8414, %8410 ], [ %7640, %7695 ]
  %7702 = phi float [ %8415, %8410 ], [ %7641, %7695 ]
  %7703 = phi float [ %8416, %8410 ], [ %7642, %7695 ]
  %7704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.i32 %7704, 0
  %7706 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7679, i32 %7705, i32 %7697)  ; UMad(a,b,c)
  %7707 = shl i32 %7706, 2
  %7708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7707, i32 undef)  ; BufferLoad(srv,index,wot)
  %7709 = extractvalue %dx.types.ResRet.i32 %7708, 0
  %7710 = shl i32 %7697, 5
  %7711 = sub nsw i32 %7689, %7710
  %7712 = call i32 @dx.op.binary.i32(i32 37, i32 %7711, i32 0)  ; IMax(a,b)
  %7713 = call i32 @dx.op.binary.i32(i32 38, i32 %7712, i32 31)  ; IMin(a,b)
  %7714 = sub nsw i32 1, %7689
  %7715 = add nsw i32 %7714, %7690
  %7716 = call i32 @dx.op.binary.i32(i32 37, i32 %7715, i32 0)  ; IMax(a,b)
  %7717 = call i32 @dx.op.binary.i32(i32 38, i32 %7716, i32 32)  ; IMin(a,b)
  %7718 = and i32 %7717, 31
  %7719 = shl i32 -1, %7718
  %7720 = xor i32 %7719, -1
  %7721 = and i32 %7713, 31
  %7722 = shl i32 %7720, %7721
  %7723 = icmp eq i32 %7717, 32
  %7724 = select i1 %7723, i32 -1, i32 %7722
  %7725 = and i32 %7724, %7709
  %7726 = icmp eq i32 %7725, 0
  br i1 %7726, label %8410, label %7727

; <label>:7727                                    ; preds = %7696
  br label %7728

; <label>:7728                                    ; preds = %7863, %7727
  %7729 = phi i32 [ %7740, %7863 ], [ %7725, %7727 ]
  %7730 = phi float [ %7864, %7863 ], [ %7698, %7727 ]
  %7731 = phi float [ %7865, %7863 ], [ %7699, %7727 ]
  %7732 = phi float [ %7866, %7863 ], [ %7700, %7727 ]
  %7733 = phi float [ %7867, %7863 ], [ %7701, %7727 ]
  %7734 = phi float [ %7868, %7863 ], [ %7702, %7727 ]
  %7735 = phi float [ %7869, %7863 ], [ %7703, %7727 ]
  %7736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7729)  ; FirstbitLo(value)
  %7737 = add i32 %7736, %7710
  %7738 = and i32 %7736, 31
  %7739 = shl i32 1, %7738
  %7740 = xor i32 %7739, %7729
  %7741 = mul i32 %7737, 112
  %7742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7741, i32 undef)  ; BufferLoad(srv,index,wot)
  %7743 = extractvalue %dx.types.ResRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.ResRet.f32 %7742, 1
  %7745 = extractvalue %dx.types.ResRet.f32 %7742, 2
  %7746 = or i32 %7741, 12
  %7747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7746, i32 undef)  ; BufferLoad(srv,index,wot)
  %7748 = extractvalue %dx.types.ResRet.f32 %7747, 0
  %7749 = add i32 %7741, 16
  %7750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7749, i32 undef)  ; BufferLoad(srv,index,wot)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 0
  %7752 = extractvalue %dx.types.ResRet.f32 %7750, 1
  %7753 = extractvalue %dx.types.ResRet.f32 %7750, 2
  %7754 = add i32 %7741, 28
  %7755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7754, i32 undef)  ; BufferLoad(srv,index,wot)
  %7756 = extractvalue %dx.types.ResRet.i32 %7755, 0
  %7757 = add i32 %7741, 44
  %7758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7757, i32 undef)  ; BufferLoad(srv,index,wot)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = add i32 %7741, 48
  %7761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7760, i32 undef)  ; BufferLoad(srv,index,wot)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.ResRet.f32 %7761, 2
  %7765 = extractvalue %dx.types.ResRet.f32 %7761, 3
  %7766 = add i32 %7741, 64
  %7767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7766, i32 undef)  ; BufferLoad(srv,index,wot)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.ResRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.ResRet.f32 %7767, 2
  %7771 = extractvalue %dx.types.ResRet.f32 %7767, 3
  %7772 = add i32 %7741, 80
  %7773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7772, i32 undef)  ; BufferLoad(srv,index,wot)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7776 = add i32 %7741, 92
  %7777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7776, i32 undef)  ; BufferLoad(srv,index,wot)
  %7778 = extractvalue %dx.types.ResRet.i32 %7777, 0
  %7779 = call float @dx.op.dot3.f32(i32 55, float %7743, float %7744, float %7745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7780 = select i1 %251, float %7774, float %7743
  %7781 = select i1 %251, float %7779, float %7744
  %7782 = select i1 %251, float %7775, float %7745
  %7783 = and i32 %7778, 65535
  %7784 = uitofp i32 %7783 to float
  %7785 = lshr i32 %7778, 16
  %7786 = uitofp i32 %7785 to float
  %7787 = and i32 %7756, 65535
  %7788 = and i32 %7756, 50331648
  %7789 = icmp slt i32 %7756, 0
  %7790 = icmp eq i32 %7788, 33554432
  %7791 = fsub fast float %7762, %157
  %7792 = fsub fast float %7763, %158
  %7793 = fsub fast float %7764, %159
  %7794 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %7793, float %7791, float %7792, float %7793)  ; Dot3(ax,ay,az,bx,by,bz)
  %7795 = call float @dx.op.unary.f32(i32 24, float %7794)  ; Sqrt(value)
  %7796 = fdiv fast float 1.000000e+00, %7795
  %7797 = fmul fast float %7796, %7791
  %7798 = fmul fast float %7796, %7792
  %7799 = fmul fast float %7796, %7793
  %7800 = fadd fast float %7795, %7748
  %7801 = fdiv fast float 1.000000e+00, %7800
  %7802 = fmul float %7759, %7801
  %7803 = fmul float %7802, %7802
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  br i1 %7790, label %7805, label %7826

; <label>:7805                                    ; preds = %7728
  %7806 = fmul fast float %7770, %7751
  %7807 = fmul fast float %7770, %7752
  %7808 = fmul fast float %7770, %7753
  %7809 = fadd fast float %7791, %7806
  %7810 = fadd fast float %7792, %7807
  %7811 = fadd fast float %7793, %7808
  %7812 = call float @dx.op.dot3.f32(i32 55, float %7809, float %7810, float %7811, float %7809, float %7810, float %7811)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = call float @dx.op.unary.f32(i32 25, float %7812)  ; Rsqrt(value)
  %7814 = fmul fast float %7813, %7809
  %7815 = fmul fast float %7813, %7810
  %7816 = fmul fast float %7813, %7811
  %7817 = fsub fast float %157, %7762
  %7818 = fsub fast float %158, %7763
  %7819 = fsub fast float %159, %7764
  %7820 = fsub fast float -0.000000e+00, %7817
  %7821 = fsub fast float -0.000000e+00, %7818
  %7822 = fsub fast float -0.000000e+00, %7819
  %7823 = call float @dx.op.dot3.f32(i32 55, float %7820, float %7821, float %7822, float %7751, float %7752, float %7753)  ; Dot3(ax,ay,az,bx,by,bz)
  %7824 = fcmp fast ogt float %7823, 0.000000e+00
  %7825 = uitofp i1 %7824 to float
  br label %7826

; <label>:7826                                    ; preds = %7805, %7728
  %7827 = phi float [ %7825, %7805 ], [ 1.000000e+00, %7728 ]
  %7828 = phi float [ %7814, %7805 ], [ %7797, %7728 ]
  %7829 = phi float [ %7815, %7805 ], [ %7798, %7728 ]
  %7830 = phi float [ %7816, %7805 ], [ %7799, %7728 ]
  %7831 = call float @dx.op.dot3.f32(i32 55, float %7751, float %7752, float %7753, float %7828, float %7829, float %7830)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = fmul fast float %7831, %7831
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = fsub fast float 1.000000e+00, %7833
  %7835 = fmul fast float %7834, 5.000000e-01
  %7836 = fcmp fast ogt float %7831, 0.000000e+00
  %7837 = fsub fast float 1.000000e+00, %7835
  %7838 = select i1 %7836, float %7835, float %7837
  %7839 = fmul fast float %7838, %7786
  %7840 = fadd fast float %7839, %7784
  %7841 = fmul fast float %7840, 0x3EF0001000000000
  %7842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7841, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7843 = extractvalue %dx.types.ResRet.f32 %7842, 0
  %7844 = fmul fast float %7831, %7768
  %7845 = fadd fast float %7844, %7769
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = select i1 %7790, float 1.000000e+00, float %7846
  %7848 = select i1 %7790, float %7846, float 1.000000e+00
  %7849 = fmul fast float %7795, %7765
  %7850 = fsub fast float 1.000000e+00, %7849
  %7851 = fmul fast float %7850, %7771
  %7852 = call float @dx.op.unary.f32(i32 7, float %7851)  ; Saturate(value)
  %7853 = fmul fast float %7852, %7848
  %7854 = fmul fast float %7853, 2.000000e+00
  %7855 = fsub fast float 3.000000e+00, %7854
  %7856 = fmul fast float %7843, %7827
  %7857 = fmul fast float %7853, %7853
  %7858 = fmul fast float %7857, %7856
  %7859 = fmul fast float %7858, %7855
  %7860 = call float @dx.op.binary.f32(i32 36, float %7859, float %7859)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7859, float %7860)  ; FMin(a,b)
  %7862 = fcmp fast ogt float %7861, 0.000000e+00
  br i1 %7862, label %7871, label %7863, !dx.controlflow.hints !122

; <label>:7863                                    ; preds = %8363, %7971, %7826
  %7864 = phi float [ %7730, %7971 ], [ %7730, %7826 ], [ %8406, %8363 ]
  %7865 = phi float [ %7731, %7971 ], [ %7731, %7826 ], [ %8407, %8363 ]
  %7866 = phi float [ %7732, %7971 ], [ %7732, %7826 ], [ %8408, %8363 ]
  %7867 = phi float [ %7733, %7971 ], [ %7733, %7826 ], [ %8400, %8363 ]
  %7868 = phi float [ %7734, %7971 ], [ %7734, %7826 ], [ %8401, %8363 ]
  %7869 = phi float [ %7735, %7971 ], [ %7735, %7826 ], [ %8402, %8363 ]
  %7870 = icmp eq i32 %7729, %7739
  br i1 %7870, label %8409, label %7728

; <label>:7871                                    ; preds = %7826
  %7872 = icmp eq i32 %7787, 255
  br i1 %7872, label %7971, label %7873, !dx.controlflow.hints !123

; <label>:7873                                    ; preds = %7871
  %7874 = mul nuw nsw i32 %7787, 176
  %7875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7874, i32 undef)  ; BufferLoad(srv,index,wot)
  %7876 = extractvalue %dx.types.ResRet.f32 %7875, 0
  %7877 = extractvalue %dx.types.ResRet.f32 %7875, 1
  %7878 = extractvalue %dx.types.ResRet.f32 %7875, 2
  %7879 = extractvalue %dx.types.ResRet.f32 %7875, 3
  %7880 = add nuw nsw i32 %7874, 16
  %7881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7880, i32 undef)  ; BufferLoad(srv,index,wot)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.ResRet.f32 %7881, 1
  %7884 = add nuw nsw i32 %7874, 32
  %7885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7884, i32 undef)  ; BufferLoad(srv,index,wot)
  %7886 = extractvalue %dx.types.ResRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.ResRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.ResRet.f32 %7885, 2
  %7889 = add nuw nsw i32 %7874, 48
  %7890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7889, i32 undef)  ; BufferLoad(srv,index,wot)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.ResRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7890, 2
  %7894 = extractvalue %dx.types.ResRet.f32 %7890, 3
  %7895 = add nuw nsw i32 %7874, 64
  %7896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7895, i32 undef)  ; BufferLoad(srv,index,wot)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.ResRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.ResRet.f32 %7896, 2
  %7900 = extractvalue %dx.types.ResRet.f32 %7896, 3
  %7901 = add nuw nsw i32 %7874, 80
  %7902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7901, i32 undef)  ; BufferLoad(srv,index,wot)
  %7903 = extractvalue %dx.types.ResRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.ResRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.ResRet.f32 %7902, 2
  %7906 = extractvalue %dx.types.ResRet.f32 %7902, 3
  %7907 = add nuw nsw i32 %7874, 96
  %7908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7907, i32 undef)  ; BufferLoad(srv,index,wot)
  %7909 = extractvalue %dx.types.ResRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.ResRet.f32 %7908, 1
  %7911 = extractvalue %dx.types.ResRet.f32 %7908, 2
  %7912 = extractvalue %dx.types.ResRet.f32 %7908, 3
  %7913 = bitcast float %7883 to i32
  %7914 = fmul fast float %7888, %109
  %7915 = fmul fast float %7888, %110
  %7916 = fmul fast float %7888, %111
  %7917 = fadd fast float %7914, %157
  %7918 = fadd fast float %7915, %158
  %7919 = fadd fast float %7916, %159
  %7920 = fmul fast float %7917, %7891
  %7921 = call float @dx.op.tertiary.f32(i32 46, float %7918, float %7897, float %7920)  ; FMad(a,b,c)
  %7922 = call float @dx.op.tertiary.f32(i32 46, float %7919, float %7903, float %7921)  ; FMad(a,b,c)
  %7923 = fadd fast float %7922, %7909
  %7924 = fmul fast float %7917, %7892
  %7925 = call float @dx.op.tertiary.f32(i32 46, float %7918, float %7898, float %7924)  ; FMad(a,b,c)
  %7926 = call float @dx.op.tertiary.f32(i32 46, float %7919, float %7904, float %7925)  ; FMad(a,b,c)
  %7927 = fadd fast float %7926, %7910
  %7928 = fmul fast float %7917, %7893
  %7929 = call float @dx.op.tertiary.f32(i32 46, float %7918, float %7899, float %7928)  ; FMad(a,b,c)
  %7930 = call float @dx.op.tertiary.f32(i32 46, float %7919, float %7905, float %7929)  ; FMad(a,b,c)
  %7931 = fadd fast float %7930, %7911
  %7932 = fmul fast float %7917, %7894
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %7918, float %7900, float %7932)  ; FMad(a,b,c)
  %7934 = call float @dx.op.tertiary.f32(i32 46, float %7919, float %7906, float %7933)  ; FMad(a,b,c)
  %7935 = fadd fast float %7934, %7912
  %7936 = fdiv fast float %7923, %7935
  %7937 = fdiv fast float %7927, %7935
  %7938 = fdiv fast float %7931, %7935
  %7939 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7938)  ; FMax(a,b)
  %7940 = fmul fast float %264, 0x401921FB60000000
  %7941 = call float @dx.op.unary.f32(i32 13, float %7940)  ; Sin(value)
  %7942 = call float @dx.op.unary.f32(i32 12, float %7940)  ; Cos(value)
  %7943 = fsub fast float -0.000000e+00, %7941
  %7944 = fmul fast float %7878, 5.000000e-01
  %7945 = call float @dx.op.dot2.f32(i32 54, float %264, float %264, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7946 = call float @dx.op.unary.f32(i32 22, float %7945)  ; Frc(value)
  %7947 = fmul fast float %7946, 0x404A7DD040000000
  %7948 = call float @dx.op.unary.f32(i32 22, float %7947)  ; Frc(value)
  %7949 = fmul fast float %7948, %7887
  %7950 = fadd fast float %7949, %7944
  %7951 = call float @dx.op.tertiary.f32(i32 46, float %7950, float %7943, float 0.000000e+00)  ; FMad(a,b,c)
  %7952 = call float @dx.op.tertiary.f32(i32 46, float %7950, float %7942, float 0.000000e+00)  ; FMad(a,b,c)
  %7953 = fadd fast float %7951, %7936
  %7954 = fadd fast float %7952, %7937
  %7955 = fmul fast float %7953, %7882
  %7956 = fmul fast float %7954, %7882
  %7957 = call float @dx.op.binary.f32(i32 35, float %7955, float %7878)  ; FMax(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7956, float %7878)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 36, float %7957, float %7879)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 36, float %7958, float %7879)  ; FMin(a,b)
  %7961 = fadd fast float %7959, %7876
  %7962 = fadd fast float %7960, %7877
  %7963 = uitofp i32 %7913 to float
  %7964 = fadd fast float %7939, %7886
  %7965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7961, float %7962, float %7963, float undef, i32 0, i32 0, i32 undef, float %7964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7966 = extractvalue %dx.types.ResRet.f32 %7965, 0
  %7967 = fadd fast float %7966, -1.000000e+00
  %7968 = fmul fast float %7967, %7847
  %7969 = fadd fast float %7968, 1.000000e+00
  %7970 = fmul fast float %7969, %7859
  br label %7971

; <label>:7971                                    ; preds = %7873, %7871
  %7972 = phi float [ %7970, %7873 ], [ %7859, %7871 ]
  %7973 = call float @dx.op.binary.f32(i32 36, float %7972, float %7972)  ; FMin(a,b)
  %7974 = call float @dx.op.binary.f32(i32 36, float %7972, float %7973)  ; FMin(a,b)
  %7975 = fcmp fast ogt float %7974, 0.000000e+00
  br i1 %7975, label %7976, label %7863, !dx.controlflow.hints !124

; <label>:7976                                    ; preds = %7971
  %7977 = fmul fast float %7972, %7780
  %7978 = fmul fast float %7972, %7781
  %7979 = fmul fast float %7972, %7782
  %7980 = fsub fast float %7764, %5643
  %7981 = fcmp fast ogt float %7980, 0.000000e+00
  %7982 = fsub fast float %159, %5643
  %7983 = fcmp fast ogt float %7982, 0.000000e+00
  %7984 = xor i1 %7983, %7981
  %7985 = fsub fast float %5643, %7764
  %7986 = fmul fast float %7985, 2.000000e+00
  %7987 = fadd fast float %7986, %7764
  %7988 = select i1 %7984, float %7764, float %7987
  %7989 = fsub fast float %7988, %159
  %7990 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %7989, float %7791, float %7792, float %7989)  ; Dot3(ax,ay,az,bx,by,bz)
  %7991 = call float @dx.op.unary.f32(i32 25, float %7990)  ; Rsqrt(value)
  %7992 = fmul fast float %7991, %7791
  %7993 = fmul fast float %7991, %7792
  %7994 = fmul fast float %7991, %7989
  %7995 = fsub fast float %5643, %159
  %7996 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7995)  ; Dot3(ax,ay,az,bx,by,bz)
  %7997 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7992, float %7993, float %7994)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = fdiv fast float 1.000000e+00, %7997
  %7999 = fmul fast float %7998, %7996
  %8000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7982, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = fcmp fast ogt float %8000, 0.000000e+00
  %8002 = fcmp fast olt float %8000, 0.000000e+00
  %8003 = zext i1 %8001 to i32
  %8004 = zext i1 %8002 to i32
  %8005 = sub nsw i32 %8003, %8004
  %8006 = sitofp i32 %8005 to float
  %8007 = fsub fast float %7988, %5643
  %8008 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %8007, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8009 = fcmp fast ogt float %8008, 0.000000e+00
  %8010 = fcmp fast olt float %8008, 0.000000e+00
  %8011 = zext i1 %8009 to i32
  %8012 = zext i1 %8010 to i32
  %8013 = sub nsw i32 %8011, %8012
  %8014 = sitofp i32 %8013 to float
  %8015 = fcmp fast une float %8006, %8014
  br i1 %8015, label %8016, label %8026

; <label>:8016                                    ; preds = %7976
  %8017 = fmul fast float %7999, %7994
  %8018 = fmul fast float %7999, %7993
  %8019 = fmul fast float %7999, %7992
  %8020 = fmul fast float %8019, %8019
  %8021 = fmul fast float %8018, %8018
  %8022 = fadd fast float %8020, %8021
  %8023 = fmul fast float %8017, %8017
  %8024 = fadd fast float %8022, %8023
  %8025 = call float @dx.op.unary.f32(i32 24, float %8024)  ; Sqrt(value)
  br label %8038

; <label>:8026                                    ; preds = %7976
  %8027 = icmp slt i32 %8005, 0
  br i1 %8027, label %8028, label %8038

; <label>:8028                                    ; preds = %8026
  %8029 = fsub fast float %157, %7762
  %8030 = fsub fast float %158, %7763
  %8031 = fsub fast float %159, %7988
  %8032 = fmul fast float %8029, %8029
  %8033 = fmul fast float %8030, %8030
  %8034 = fadd fast float %8032, %8033
  %8035 = fmul fast float %8031, %8031
  %8036 = fadd fast float %8034, %8035
  %8037 = call float @dx.op.unary.f32(i32 24, float %8036)  ; Sqrt(value)
  br label %8038

; <label>:8038                                    ; preds = %8028, %8026, %8016
  %8039 = phi float [ %8025, %8016 ], [ %8037, %8028 ], [ 0.000000e+00, %8026 ]
  %8040 = and i1 %7983, %7981
  %8041 = fsub fast float -0.000000e+00, %8039
  %8042 = select i1 %8040, float -0.000000e+00, float %8041
  %8043 = fmul fast float %5644, 0x3FF7154760000000
  %8044 = fmul fast float %8043, %8042
  %8045 = fmul fast float %5645, 0x3FF7154760000000
  %8046 = fmul fast float %8045, %8042
  %8047 = fmul fast float %5646, 0x3FF7154760000000
  %8048 = fmul fast float %8047, %8042
  %8049 = call float @dx.op.unary.f32(i32 21, float %8044)  ; Exp(value)
  %8050 = call float @dx.op.unary.f32(i32 21, float %8046)  ; Exp(value)
  %8051 = call float @dx.op.unary.f32(i32 21, float %8048)  ; Exp(value)
  %8052 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  %8053 = call float @dx.op.unary.f32(i32 7, float %8050)  ; Saturate(value)
  %8054 = call float @dx.op.unary.f32(i32 7, float %8051)  ; Saturate(value)
  %8055 = fmul fast float %7977, %8052
  %8056 = fmul fast float %7978, %8053
  %8057 = fmul fast float %7979, %8054
  %8058 = fsub fast float %7797, %177
  %8059 = fsub fast float %7798, %178
  %8060 = fsub fast float %7799, %179
  %8061 = call float @dx.op.dot3.f32(i32 55, float %8058, float %8059, float %8060, float %8058, float %8059, float %8060)  ; Dot3(ax,ay,az,bx,by,bz)
  %8062 = call float @dx.op.unary.f32(i32 25, float %8061)  ; Rsqrt(value)
  %8063 = fmul fast float %8062, %8058
  %8064 = fmul fast float %8062, %8059
  %8065 = fmul fast float %8062, %8060
  %8066 = call float @dx.op.dot3.f32(i32 55, float %7797, float %7798, float %7799, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %8067 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %8063, float %8064, float %8065)  ; Dot3(ax,ay,az,bx,by,bz)
  %8068 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8069 = fmul fast float %8068, %7804
  %8070 = fmul fast float %8068, %8068
  %8071 = fmul fast float %8070, %5887
  %8072 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8073 = fmul fast float %8069, %8072
  %8074 = bitcast float %7794 to i32
  %8075 = ashr i32 %8074, 1
  %8076 = sub nsw i32 1597463007, %8075
  %8077 = bitcast i32 %8076 to float
  %8078 = fmul fast float %8077, %7791
  %8079 = fmul fast float %8077, %7792
  %8080 = fmul fast float %8077, %7793
  %8081 = fsub fast float %8078, %177
  %8082 = fsub fast float %8079, %178
  %8083 = fsub fast float %8080, %179
  %8084 = call float @dx.op.dot3.f32(i32 55, float %8081, float %8082, float %8083, float %8081, float %8082, float %8083)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = call float @dx.op.unary.f32(i32 25, float %8084)  ; Rsqrt(value)
  %8086 = fmul fast float %8081, %8085
  %8087 = fmul fast float %8082, %8085
  %8088 = fmul fast float %8083, %8085
  %8089 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %8086, float %8087, float %8088)  ; Dot3(ax,ay,az,bx,by,bz)
  %8090 = fmul fast float %8089, %8089
  %8091 = call float @dx.op.unary.f32(i32 6, float %8066)  ; FAbs(value)
  %8092 = call float @dx.op.binary.f32(i32 35, float %6262, float 0x3F847AE140000000)  ; FMax(a,b)
  %8093 = fmul fast float %8092, %8092
  %8094 = fmul fast float %8093, %8093
  %8095 = fsub fast float 1.000000e+00, %8094
  %8096 = fmul fast float %5874, %5874
  %8097 = fmul fast float %8096, %8095
  %8098 = fadd fast float %8097, %8094
  %8099 = bitcast float %8098 to i32
  %8100 = ashr i32 %8099, 1
  %8101 = add nsw i32 %8100, 532487669
  %8102 = bitcast i32 %8101 to float
  %8103 = fadd fast float %8102, %5874
  %8104 = fmul fast float %8094, %8090
  %8105 = fsub fast float 1.000000e+00, %8090
  %8106 = fadd fast float %8105, %8104
  %8107 = fmul fast float %8091, %8091
  %8108 = fmul fast float %8107, %8095
  %8109 = fadd fast float %8108, %8094
  %8110 = bitcast float %8109 to i32
  %8111 = ashr i32 %8110, 1
  %8112 = add nsw i32 %8111, 532487669
  %8113 = bitcast i32 %8112 to float
  %8114 = fadd fast float %8113, %8091
  %8115 = fmul fast float %8106, %8106
  %8116 = fmul fast float %8115, %8103
  %8117 = fmul fast float %8116, %8114
  %8118 = fdiv fast float 1.000000e+00, %8117
  %8119 = bitcast float %8094 to i32
  %8120 = sitofp i32 %8119 to float
  %8121 = fmul fast float %8120, 0x3FE7F73180000000
  %8122 = fadd fast float %8121, 0x41AFE27C40000000
  %8123 = fptosi float %8122 to i32
  %8124 = bitcast i32 %8123 to float
  %8125 = fmul fast float %7759, 0x3FD80E9D60000000
  %8126 = fmul fast float %8125, %8077
  %8127 = fadd fast float %8124, %8126
  %8128 = bitcast float %8127 to i32
  %8129 = sub nsw i32 2129859010, %8128
  %8130 = bitcast i32 %8129 to float
  %8131 = fmul fast float %8094, %8118
  %8132 = fmul fast float %8131, %8124
  %8133 = fmul fast float %8132, %8130
  %8134 = fmul fast float %6122, 0x3FF9999980000000
  %8135 = fsub fast float 5.000000e+00, %8134
  %8136 = call float @dx.op.unary.f32(i32 6, float %8067)  ; FAbs(value)
  %8137 = fsub fast float 1.000000e+00, %8136
  %8138 = fmul fast float %6122, 0x41D9660740000000
  %8139 = fadd fast float %8138, 0xC1EFBF8940000000
  %8140 = bitcast float %8137 to i32
  %8141 = sitofp i32 %8140 to float
  %8142 = fmul fast float %8141, %8135
  %8143 = fadd fast float %8139, %8142
  %8144 = fptosi float %8143 to i32
  %8145 = bitcast i32 %8144 to float
  %8146 = fsub fast float 1.000000e+00, %5829
  %8147 = fsub fast float 1.000000e+00, %5830
  %8148 = fsub fast float 1.000000e+00, %5872
  %8149 = fmul fast float %8145, %8146
  %8150 = fmul fast float %8145, %8147
  %8151 = fmul fast float %8145, %8148
  %8152 = fadd fast float %8149, %5829
  %8153 = fadd fast float %8150, %5830
  %8154 = fadd fast float %8151, %5872
  br i1 %6145, label %8155, label %8178

; <label>:8155                                    ; preds = %8038
  %8156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %8136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8157 = extractvalue %dx.types.ResRet.f32 %8156, 0
  %8158 = extractvalue %dx.types.ResRet.f32 %8156, 1
  %8159 = extractvalue %dx.types.ResRet.f32 %8156, 2
  %8160 = fadd fast float %8157, -5.000000e-01
  %8161 = fadd fast float %8158, -5.000000e-01
  %8162 = fadd fast float %8159, -5.000000e-01
  %8163 = fmul fast float %5829, 4.000000e+00
  %8164 = fmul fast float %8163, %8146
  %8165 = fmul fast float %8164, %8160
  %8166 = fmul fast float %5830, 4.000000e+00
  %8167 = fmul fast float %8166, %8147
  %8168 = fmul fast float %8167, %8161
  %8169 = fmul fast float %5872, 4.000000e+00
  %8170 = fmul fast float %8169, %8148
  %8171 = fmul fast float %8170, %8162
  %8172 = fadd fast float %8165, %8152
  %8173 = fadd fast float %8168, %8153
  %8174 = fadd fast float %8171, %8154
  %8175 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  br label %8178

; <label>:8178                                    ; preds = %8155, %8038
  %8179 = phi float [ %8175, %8155 ], [ %8152, %8038 ]
  %8180 = phi float [ %8176, %8155 ], [ %8153, %8038 ]
  %8181 = phi float [ %8177, %8155 ], [ %8154, %8038 ]
  %8182 = fmul fast float %8066, 9.843750e-01
  %8183 = fadd fast float %8182, 7.812500e-03
  %8184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8183, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8185 = extractvalue %dx.types.ResRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.ResRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.ResRet.f32 %8184, 2
  %8188 = extractvalue %dx.types.ResRet.f32 %8184, 3
  %8189 = fsub fast float %8187, %8185
  %8190 = fsub fast float %8188, %8186
  %8191 = fmul fast float %8189, %6132
  %8192 = fmul fast float %8190, %6132
  %8193 = fadd fast float %8191, %8185
  %8194 = fadd fast float %8192, %8186
  %8195 = fmul fast float %8193, %5829
  %8196 = fmul fast float %8193, %5830
  %8197 = fmul fast float %8193, %5872
  %8198 = fadd fast float %8195, %8194
  %8199 = fadd fast float %8196, %8194
  %8200 = fadd fast float %8197, %8194
  br i1 %6145, label %8201, label %8224

; <label>:8201                                    ; preds = %8178
  %8202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %8066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8203 = extractvalue %dx.types.ResRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.ResRet.f32 %8202, 1
  %8205 = extractvalue %dx.types.ResRet.f32 %8202, 2
  %8206 = fadd fast float %8203, -5.000000e-01
  %8207 = fadd fast float %8204, -5.000000e-01
  %8208 = fadd fast float %8205, -5.000000e-01
  %8209 = fmul fast float %5829, 4.000000e+00
  %8210 = fmul fast float %8209, %8146
  %8211 = fmul fast float %8210, %8206
  %8212 = fmul fast float %5830, 4.000000e+00
  %8213 = fmul fast float %8212, %8147
  %8214 = fmul fast float %8213, %8207
  %8215 = fmul fast float %5872, 4.000000e+00
  %8216 = fmul fast float %8215, %8148
  %8217 = fmul fast float %8216, %8208
  %8218 = fadd fast float %8211, %8198
  %8219 = fadd fast float %8214, %8199
  %8220 = fadd fast float %8217, %8200
  %8221 = call float @dx.op.unary.f32(i32 7, float %8218)  ; Saturate(value)
  %8222 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8223 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  br label %8224

; <label>:8224                                    ; preds = %8201, %8178
  %8225 = phi float [ %8221, %8201 ], [ %8198, %8178 ]
  %8226 = phi float [ %8222, %8201 ], [ %8199, %8178 ]
  %8227 = phi float [ %8223, %8201 ], [ %8200, %8178 ]
  %8228 = call float @dx.op.binary.f32(i32 35, float %8226, float %8227)  ; FMax(a,b)
  %8229 = call float @dx.op.binary.f32(i32 35, float %8225, float %8228)  ; FMax(a,b)
  %8230 = fsub fast float 1.000000e+00, %8229
  %8231 = call float @dx.op.binary.f32(i32 35, float %8091, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8232 = fdiv fast float %4544, %8231
  %8233 = fmul fast float %6203, %8232
  %8234 = fmul fast float %6205, %8232
  %8235 = fmul fast float %6207, %8232
  %8236 = call float @dx.op.unary.f32(i32 21, float %8233)  ; Exp(value)
  %8237 = call float @dx.op.unary.f32(i32 21, float %8234)  ; Exp(value)
  %8238 = call float @dx.op.unary.f32(i32 21, float %8235)  ; Exp(value)
  %8239 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8240 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8241 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8242 = select i1 %6200, float %8239, float 0.000000e+00
  %8243 = select i1 %6201, float %8240, float 0.000000e+00
  %8244 = select i1 %6202, float %8241, float 0.000000e+00
  %8245 = fsub fast float -0.000000e+00, %5832
  %8246 = fsub fast float -0.000000e+00, %5833
  %8247 = fsub fast float -0.000000e+00, %5834
  %8248 = call float @dx.op.dot3.f32(i32 55, float %7797, float %7798, float %7799, float %8245, float %8246, float %8247)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %8249, %7804
  %8251 = fmul fast float %8249, 9.843750e-01
  %8252 = fadd fast float %8251, 7.812500e-03
  %8253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8252, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8254 = extractvalue %dx.types.ResRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.ResRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.ResRet.f32 %8253, 2
  %8257 = extractvalue %dx.types.ResRet.f32 %8253, 3
  %8258 = fsub fast float %8256, %8254
  %8259 = fsub fast float %8257, %8255
  %8260 = fmul fast float %8258, %6132
  %8261 = fmul fast float %8259, %6132
  %8262 = fadd fast float %8260, %8254
  %8263 = fadd fast float %8261, %8255
  %8264 = fmul fast float %8262, %5829
  %8265 = fmul fast float %8262, %5830
  %8266 = fmul fast float %8262, %5872
  %8267 = fadd fast float %8264, %8263
  %8268 = fadd fast float %8265, %8263
  %8269 = fadd fast float %8266, %8263
  br i1 %6145, label %8270, label %8293

; <label>:8270                                    ; preds = %8224
  %8271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5191, float %8249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8272 = extractvalue %dx.types.ResRet.f32 %8271, 0
  %8273 = extractvalue %dx.types.ResRet.f32 %8271, 1
  %8274 = extractvalue %dx.types.ResRet.f32 %8271, 2
  %8275 = fadd fast float %8272, -5.000000e-01
  %8276 = fadd fast float %8273, -5.000000e-01
  %8277 = fadd fast float %8274, -5.000000e-01
  %8278 = fmul fast float %5829, 4.000000e+00
  %8279 = fmul fast float %8278, %8146
  %8280 = fmul fast float %8279, %8275
  %8281 = fmul fast float %5830, 4.000000e+00
  %8282 = fmul fast float %8281, %8147
  %8283 = fmul fast float %8282, %8276
  %8284 = fmul fast float %5872, 4.000000e+00
  %8285 = fmul fast float %8284, %8148
  %8286 = fmul fast float %8285, %8277
  %8287 = fadd fast float %8280, %8267
  %8288 = fadd fast float %8283, %8268
  %8289 = fadd fast float %8286, %8269
  %8290 = call float @dx.op.unary.f32(i32 7, float %8287)  ; Saturate(value)
  %8291 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8292 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  br label %8293

; <label>:8293                                    ; preds = %8270, %8224
  %8294 = phi float [ %8290, %8270 ], [ %8267, %8224 ]
  %8295 = phi float [ %8291, %8270 ], [ %8268, %8224 ]
  %8296 = phi float [ %8292, %8270 ], [ %8269, %8224 ]
  %8297 = call float @dx.op.binary.f32(i32 35, float %8295, float %8296)  ; FMax(a,b)
  %8298 = call float @dx.op.binary.f32(i32 35, float %8294, float %8297)  ; FMax(a,b)
  %8299 = fsub fast float 1.000000e+00, %8298
  %8300 = fmul fast float %6262, %6268
  %8301 = fadd fast float %6261, %8300
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = fsub fast float %8078, %5880
  %8304 = fsub fast float %8079, %5881
  %8305 = fsub fast float %8080, %5882
  %8306 = call float @dx.op.dot3.f32(i32 55, float %8303, float %8304, float %8305, float %8303, float %8304, float %8305)  ; Dot3(ax,ay,az,bx,by,bz)
  %8307 = call float @dx.op.unary.f32(i32 25, float %8306)  ; Rsqrt(value)
  %8308 = fmul fast float %8303, %8307
  %8309 = fmul fast float %8304, %8307
  %8310 = fmul fast float %8305, %8307
  %8311 = call float @dx.op.dot3.f32(i32 55, float %8245, float %8246, float %8247, float %8308, float %8309, float %8310)  ; Dot3(ax,ay,az,bx,by,bz)
  %8312 = fmul fast float %8311, %8311
  %8313 = call float @dx.op.unary.f32(i32 6, float %8249)  ; FAbs(value)
  %8314 = call float @dx.op.binary.f32(i32 35, float %8302, float 0x3F847AE140000000)  ; FMax(a,b)
  %8315 = fmul fast float %8314, %8314
  %8316 = fmul fast float %8315, %8315
  %8317 = fsub fast float 1.000000e+00, %8316
  %8318 = fmul fast float %8096, %8317
  %8319 = fadd fast float %8318, %8316
  %8320 = bitcast float %8319 to i32
  %8321 = ashr i32 %8320, 1
  %8322 = add nsw i32 %8321, 532487669
  %8323 = bitcast i32 %8322 to float
  %8324 = fadd fast float %8323, %5874
  %8325 = fmul fast float %8316, %8312
  %8326 = fsub fast float 1.000000e+00, %8312
  %8327 = fadd fast float %8326, %8325
  %8328 = fmul fast float %8313, %8313
  %8329 = fmul fast float %8328, %8317
  %8330 = fadd fast float %8329, %8316
  %8331 = bitcast float %8330 to i32
  %8332 = ashr i32 %8331, 1
  %8333 = add nsw i32 %8332, 532487669
  %8334 = bitcast i32 %8333 to float
  %8335 = fadd fast float %8334, %8313
  %8336 = fmul fast float %8327, %8327
  %8337 = fmul fast float %8336, %8324
  %8338 = fmul fast float %8337, %8335
  %8339 = fdiv fast float 1.000000e+00, %8338
  %8340 = bitcast float %8316 to i32
  %8341 = sitofp i32 %8340 to float
  %8342 = fmul fast float %8341, 0x3FE7F73180000000
  %8343 = fadd fast float %8342, 0x41AFE27C40000000
  %8344 = fptosi float %8343 to i32
  %8345 = bitcast i32 %8344 to float
  %8346 = fadd fast float %8345, %8126
  %8347 = bitcast float %8346 to i32
  %8348 = sub nsw i32 2129859010, %8347
  %8349 = bitcast i32 %8348 to float
  %8350 = fmul fast float %8316, %8339
  %8351 = fmul fast float %8350, %8345
  %8352 = fmul fast float %8351, %8349
  br i1 %7789, label %8353, label %8363

; <label>:8353                                    ; preds = %8293
  %8354 = fmul fast float %8250, %8242
  %8355 = fmul fast float %8250, %8243
  %8356 = fmul fast float %8250, %8244
  %8357 = fmul fast float %8354, %8299
  %8358 = fmul fast float %8357, %8352
  %8359 = fmul fast float %8355, %8299
  %8360 = fmul fast float %8359, %8352
  %8361 = fmul fast float %8356, %8299
  %8362 = fmul fast float %8361, %8352
  br label %8363

; <label>:8363                                    ; preds = %8353, %8293
  %8364 = phi float [ %8358, %8353 ], [ 0.000000e+00, %8293 ]
  %8365 = phi float [ %8360, %8353 ], [ 0.000000e+00, %8293 ]
  %8366 = phi float [ %8362, %8353 ], [ 0.000000e+00, %8293 ]
  %8367 = fmul fast float %8179, %8133
  %8368 = fmul fast float %8180, %8133
  %8369 = fmul fast float %8181, %8133
  %8370 = fsub fast float 1.000000e+00, %8067
  %8371 = bitcast float %8370 to i32
  %8372 = sitofp i32 %8371 to float
  %8373 = fmul fast float %8372, 5.000000e+00
  %8374 = fadd fast float %8373, 0xC1EFBF8940000000
  %8375 = fptosi float %8374 to i32
  %8376 = bitcast i32 %8375 to float
  %8377 = fmul fast float %8376, %5192
  %8378 = fmul fast float %8230, %8377
  %8379 = fmul fast float %8378, %6195
  %8380 = fmul fast float %8378, %6196
  %8381 = fmul fast float %8378, %6197
  %8382 = fadd fast float %8379, %8367
  %8383 = fadd fast float %8380, %8368
  %8384 = fadd fast float %8381, %8369
  %8385 = fmul fast float %8382, %8073
  %8386 = fmul fast float %8383, %8073
  %8387 = fmul fast float %8384, %8073
  %8388 = fadd fast float %8385, %8364
  %8389 = fadd fast float %8386, %8365
  %8390 = fadd fast float %8387, %8366
  %8391 = fmul fast float %8055, %5217
  %8392 = fmul fast float %8391, %8073
  %8393 = fmul fast float %8392, %8230
  %8394 = fmul fast float %8056, %5217
  %8395 = fmul fast float %8394, %8073
  %8396 = fmul fast float %8395, %8230
  %8397 = fmul fast float %8057, %5217
  %8398 = fmul fast float %8397, %8073
  %8399 = fmul fast float %8398, %8230
  %8400 = fadd fast float %8393, %7733
  %8401 = fadd fast float %8396, %7734
  %8402 = fadd fast float %8399, %7735
  %8403 = fmul fast float %8391, %8388
  %8404 = fmul fast float %8394, %8389
  %8405 = fmul fast float %8397, %8390
  %8406 = fadd fast float %8403, %7730
  %8407 = fadd fast float %8404, %7731
  %8408 = fadd fast float %8405, %7732
  br label %7863

; <label>:8409                                    ; preds = %7863
  br label %8410

; <label>:8410                                    ; preds = %8409, %7696
  %8411 = phi float [ %7698, %7696 ], [ %7864, %8409 ]
  %8412 = phi float [ %7699, %7696 ], [ %7865, %8409 ]
  %8413 = phi float [ %7700, %7696 ], [ %7866, %8409 ]
  %8414 = phi float [ %7701, %7696 ], [ %7867, %8409 ]
  %8415 = phi float [ %7702, %7696 ], [ %7868, %8409 ]
  %8416 = phi float [ %7703, %7696 ], [ %7869, %8409 ]
  %8417 = add i32 %7697, 1
  %8418 = icmp ugt i32 %8417, %7693
  br i1 %8418, label %8419, label %7696

; <label>:8419                                    ; preds = %8410
  br label %8420

; <label>:8420                                    ; preds = %8419, %7646, %7636
  %8421 = phi float [ %7637, %7636 ], [ %7637, %7646 ], [ %8411, %8419 ]
  %8422 = phi float [ %7638, %7636 ], [ %7638, %7646 ], [ %8412, %8419 ]
  %8423 = phi float [ %7639, %7636 ], [ %7639, %7646 ], [ %8413, %8419 ]
  %8424 = phi float [ %7640, %7636 ], [ %7640, %7646 ], [ %8414, %8419 ]
  %8425 = phi float [ %7641, %7636 ], [ %7641, %7646 ], [ %8415, %8419 ]
  %8426 = phi float [ %7642, %7636 ], [ %7642, %7646 ], [ %8416, %8419 ]
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8429 = fmul fast float %8428, %6275
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 3
  %8432 = fsub fast float 1.000000e+00, %5195
  %8433 = call float @dx.op.unary.f32(i32 7, float %8432)  ; Saturate(value)
  %8434 = fadd fast float %8426, %5194
  %8435 = fmul fast float %8434, %5195
  %8436 = fmul fast float %8433, %8431
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 3
  %8439 = fmul fast float %8424, %5826
  %8440 = fmul fast float %8425, %5827
  %8441 = fmul fast float %8426, %5828
  %8442 = fcmp fast ogt float %93, %211
  %8443 = and i1 %8442, %5649
  %8444 = or i1 %5655, %8443
  %8445 = icmp eq i32 %5648, 2
  %8446 = fcmp fast ole float %93, %211
  %8447 = and i1 %8446, %8445
  %8448 = or i1 %8447, %8444
  br i1 %8443, label %8449, label %8698

; <label>:8449                                    ; preds = %8420
  %8450 = fmul fast float %6355, %102
  %8451 = fmul fast float %6356, %103
  %8452 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8453 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8454 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8452, float %8453, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.ResRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.ResRet.f32 %8454, 2
  %8458 = extractvalue %dx.types.ResRet.f32 %8454, 3
  %8459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8452, float %8453, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8460 = extractvalue %dx.types.ResRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.ResRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.ResRet.f32 %8459, 2
  %8463 = extractvalue %dx.types.ResRet.f32 %8459, 3
  %8464 = call float @dx.op.binary.f32(i32 35, float %8456, float %8457)  ; FMax(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %8455, float %8464)  ; FMax(a,b)
  %8466 = call float @dx.op.binary.f32(i32 35, float %8465, float %8458)  ; FMax(a,b)
  %8467 = call float @dx.op.binary.f32(i32 36, float %8461, float %8462)  ; FMin(a,b)
  %8468 = call float @dx.op.binary.f32(i32 36, float %8460, float %8467)  ; FMin(a,b)
  %8469 = call float @dx.op.binary.f32(i32 36, float %8468, float %8463)  ; FMin(a,b)
  %8470 = fmul fast float %8466, 2.550000e+02
  %8471 = fadd fast float %8470, 0x3F70101020000000
  %8472 = fptoui float %8471 to i32
  %8473 = fmul fast float %8469, 2.550000e+02
  %8474 = fadd fast float %8473, 0x3F70101020000000
  %8475 = fptoui float %8474 to i32
  %8476 = icmp ult i32 %8472, %8475
  br i1 %8476, label %8477, label %8643

; <label>:8477                                    ; preds = %8449
  %8478 = fcmp fast ogt float %92, 9.843750e-01
  %8479 = fadd fast float %93, -4.000000e+00
  %8480 = select i1 %8478, float -4.000000e+00, float %8479
  %8481 = call float @dx.op.binary.f32(i32 35, float %8480, float 0.000000e+00)  ; FMax(a,b)
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = fadd fast float %8483, %8481
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8486 = fmul fast float %8484, %8485
  %8487 = call float @dx.op.unary.f32(i32 23, float %8486)  ; Log(value)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8489 = fmul fast float %8488, %8487
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8492 = fmul fast float %8489, %8491
  %8493 = call float @dx.op.unary.f32(i32 7, float %8492)  ; Saturate(value)
  %8494 = uitofp i32 %8472 to float
  %8495 = uitofp i32 %8475 to float
  %8496 = fadd fast float %8494, 5.000000e-01
  %8497 = fadd fast float %8495, 5.000000e-01
  %8498 = fmul fast float %8491, %8496
  %8499 = fmul fast float %8491, %8497
  %8500 = fadd fast float %8498, 0x3F0FFB4800000000
  %8501 = fadd fast float %8499, 0xBF0FFB4800000000
  %8502 = call float @dx.op.binary.f32(i32 35, float %8493, float %8500)  ; FMax(a,b)
  %8503 = call float @dx.op.binary.f32(i32 36, float %8502, float %8501)  ; FMin(a,b)
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8508 = fmul fast float %8505, %8503
  %8509 = fadd fast float %8507, %8508
  %8510 = fadd fast float %8507, %8506
  %8511 = fsub fast float %8505, %8506
  %8512 = fadd fast float %8511, %8507
  %8513 = call float @dx.op.binary.f32(i32 35, float %8509, float %8510)  ; FMax(a,b)
  %8514 = call float @dx.op.binary.f32(i32 36, float %8513, float %8512)  ; FMin(a,b)
  %8515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8452, float %8453, float %8514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8516 = extractvalue %dx.types.ResRet.f32 %8515, 0
  %8517 = extractvalue %dx.types.ResRet.f32 %8515, 1
  %8518 = extractvalue %dx.types.ResRet.f32 %8515, 2
  %8519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.i32 %8519, 0
  %8521 = extractvalue %dx.types.CBufRet.i32 %8519, 1
  %8522 = uitofp i32 %8520 to float
  %8523 = uitofp i32 %8521 to float
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8527 = fmul fast float %8522, %8452
  %8528 = fmul fast float %8523, %8453
  %8529 = fadd fast float %8527, -5.000000e-01
  %8530 = fadd fast float %8528, -5.000000e-01
  %8531 = call float @dx.op.unary.f32(i32 22, float %8529)  ; Frc(value)
  %8532 = call float @dx.op.unary.f32(i32 22, float %8530)  ; Frc(value)
  %8533 = fmul fast float %8531, %8531
  %8534 = fmul fast float %8533, %8531
  %8535 = fsub fast float 3.000000e+00, %8531
  %8536 = fmul fast float %8533, %8535
  %8537 = fmul fast float %8531, 3.000000e+00
  %8538 = fmul fast float %8534, 3.000000e+00
  %8539 = fmul fast float %8533, 6.000000e+00
  %8540 = fsub fast float %8538, %8539
  %8541 = fadd fast float %8540, 4.000000e+00
  %8542 = fmul fast float %8541, 0x3FC5555560000000
  %8543 = fmul fast float %8534, -3.000000e+00
  %8544 = fadd fast float %8533, %8531
  %8545 = fmul fast float %8544, 3.000000e+00
  %8546 = fadd fast float %8543, 1.000000e+00
  %8547 = fadd fast float %8546, %8545
  %8548 = fmul fast float %8534, 0x3FC5555560000000
  %8549 = fmul fast float %8532, %8532
  %8550 = fmul fast float %8549, %8532
  %8551 = fsub fast float 3.000000e+00, %8532
  %8552 = fmul fast float %8549, %8551
  %8553 = fmul fast float %8532, 3.000000e+00
  %8554 = fmul fast float %8550, 3.000000e+00
  %8555 = fmul fast float %8549, 6.000000e+00
  %8556 = fsub fast float %8554, %8555
  %8557 = fadd fast float %8556, 4.000000e+00
  %8558 = fmul fast float %8557, 0x3FC5555560000000
  %8559 = fmul fast float %8550, -3.000000e+00
  %8560 = fadd fast float %8549, %8532
  %8561 = fmul fast float %8560, 3.000000e+00
  %8562 = fadd fast float %8559, 1.000000e+00
  %8563 = fadd fast float %8562, %8561
  %8564 = fmul fast float %8550, 0x3FC5555560000000
  %8565 = fadd fast float %8531, 1.000000e+00
  %8566 = fsub fast float 1.000000e+00, %8537
  %8567 = fadd fast float %8566, %8536
  %8568 = fadd fast float %8567, %8541
  %8569 = fmul fast float %8568, 0x3FC5555560000000
  %8570 = fdiv fast float %8542, %8569
  %8571 = fsub fast float %8565, %8570
  %8572 = fsub fast float 1.000000e+00, %8531
  %8573 = fadd fast float %8547, %8534
  %8574 = fmul fast float %8573, 0x3FC5555560000000
  %8575 = fdiv fast float %8548, %8574
  %8576 = fadd fast float %8572, %8575
  %8577 = fadd fast float %8532, 1.000000e+00
  %8578 = fsub fast float 1.000000e+00, %8553
  %8579 = fadd fast float %8578, %8552
  %8580 = fadd fast float %8579, %8557
  %8581 = fmul fast float %8580, 0x3FC5555560000000
  %8582 = fdiv fast float %8558, %8581
  %8583 = fsub fast float %8577, %8582
  %8584 = fsub fast float 1.000000e+00, %8532
  %8585 = fadd fast float %8563, %8550
  %8586 = fmul fast float %8585, 0x3FC5555560000000
  %8587 = fdiv fast float %8564, %8586
  %8588 = fadd fast float %8587, %8584
  %8589 = fmul fast float %8571, %8525
  %8590 = fsub fast float %8452, %8589
  %8591 = fmul fast float %8576, %8525
  %8592 = fadd fast float %8591, %8452
  %8593 = fmul fast float %8588, %8526
  %8594 = fadd fast float %8593, %8453
  %8595 = fmul fast float %8583, %8526
  %8596 = fsub fast float %8453, %8595
  %8597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8590, float %8596, float %8514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8592, float %8596, float %8514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8602 = extractvalue %dx.types.ResRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.ResRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.ResRet.f32 %8601, 2
  %8605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8590, float %8594, float %8514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8606 = extractvalue %dx.types.ResRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.ResRet.f32 %8605, 1
  %8608 = extractvalue %dx.types.ResRet.f32 %8605, 2
  %8609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8592, float %8594, float %8514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8610 = extractvalue %dx.types.ResRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.ResRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.ResRet.f32 %8609, 2
  %8613 = fsub fast float %8606, %8598
  %8614 = fsub fast float %8607, %8599
  %8615 = fsub fast float %8608, %8600
  %8616 = fmul fast float %8613, %8586
  %8617 = fmul fast float %8614, %8586
  %8618 = fmul fast float %8615, %8586
  %8619 = fadd fast float %8616, %8598
  %8620 = fadd fast float %8617, %8599
  %8621 = fadd fast float %8618, %8600
  %8622 = fsub fast float %8610, %8602
  %8623 = fsub fast float %8611, %8603
  %8624 = fsub fast float %8612, %8604
  %8625 = fmul fast float %8622, %8586
  %8626 = fmul fast float %8623, %8586
  %8627 = fmul fast float %8624, %8586
  %8628 = fsub fast float %8602, %8619
  %8629 = fadd fast float %8628, %8625
  %8630 = fsub fast float %8603, %8620
  %8631 = fadd fast float %8630, %8626
  %8632 = fsub fast float %8604, %8621
  %8633 = fadd fast float %8632, %8627
  %8634 = fmul fast float %8629, %8574
  %8635 = fmul fast float %8631, %8574
  %8636 = fmul fast float %8633, %8574
  %8637 = fadd fast float %8634, %8619
  %8638 = fadd fast float %8635, %8620
  %8639 = fadd fast float %8636, %8621
  %8640 = fmul fast float %8637, %6410
  %8641 = fmul fast float %8638, %6410
  %8642 = fmul fast float %8639, %6410
  br label %8643

; <label>:8643                                    ; preds = %8477, %8449
  %8644 = phi float [ %8516, %8477 ], [ 1.000000e+00, %8449 ]
  %8645 = phi float [ %8517, %8477 ], [ 1.000000e+00, %8449 ]
  %8646 = phi float [ %8518, %8477 ], [ 1.000000e+00, %8449 ]
  %8647 = phi float [ %8640, %8477 ], [ 0.000000e+00, %8449 ]
  %8648 = phi float [ %8641, %8477 ], [ 0.000000e+00, %8449 ]
  %8649 = phi float [ %8642, %8477 ], [ 0.000000e+00, %8449 ]
  %8650 = call float @dx.op.dot3.f32(i32 55, float %8644, float %8645, float %8646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8651 = call float @dx.op.dot3.f32(i32 55, float %8647, float %8648, float %8649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8652 = select i1 %251, float %8650, float %8644
  %8653 = select i1 %251, float %8650, float %8645
  %8654 = select i1 %251, float 1.000000e+00, float %8646
  %8655 = select i1 %251, float %8651, float %8647
  %8656 = select i1 %251, float 0.000000e+00, float %8648
  %8657 = select i1 %251, float 0.000000e+00, float %8649
  %8658 = fmul fast float %8652, %8439
  %8659 = fmul fast float %8653, %8440
  %8660 = fmul fast float %8654, %8441
  %8661 = fadd fast float %8658, %8655
  %8662 = fadd fast float %8659, %8656
  %8663 = fadd fast float %8657, %8660
  %8664 = fmul fast float %8652, %8421
  %8665 = fmul fast float %8653, %8422
  %8666 = fmul fast float %8654, %8423
  %8667 = fmul fast float %127, %6355
  %8668 = fmul fast float %129, %6356
  %8669 = fsub fast float 1.000000e+00, %8667
  %8670 = fsub fast float 1.000000e+00, %8668
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 0
  %8673 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8674 = extractvalue %dx.types.CBufRet.f32 %8671, 2
  %8675 = fmul fast float %8669, %8672
  %8676 = fmul fast float %8669, %8673
  %8677 = fmul fast float %8669, %8674
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8682 = fmul fast float %8670, %8679
  %8683 = fmul fast float %8670, %8680
  %8684 = fmul fast float %8670, %8681
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 0
  %8687 = extractvalue %dx.types.CBufRet.f32 %8685, 1
  %8688 = extractvalue %dx.types.CBufRet.f32 %8685, 2
  %8689 = fadd fast float %8682, %8686
  %8690 = fadd fast float %8689, %8675
  %8691 = fadd fast float %8683, %8687
  %8692 = fadd fast float %8691, %8676
  %8693 = fadd fast float %8684, %8688
  %8694 = fadd fast float %8693, %8677
  %8695 = fmul fast float %8690, %211
  %8696 = fmul fast float %8692, %211
  %8697 = fmul fast float %8694, %211
  br label %8698

; <label>:8698                                    ; preds = %8643, %8420
  %8699 = phi float [ %8695, %8643 ], [ %157, %8420 ]
  %8700 = phi float [ %8696, %8643 ], [ %158, %8420 ]
  %8701 = phi float [ %8697, %8643 ], [ %159, %8420 ]
  %8702 = phi float [ %211, %8643 ], [ %93, %8420 ]
  %8703 = phi float [ %8661, %8643 ], [ %8439, %8420 ]
  %8704 = phi float [ %8662, %8643 ], [ %8440, %8420 ]
  %8705 = phi float [ %8663, %8643 ], [ %8441, %8420 ]
  %8706 = phi float [ %8664, %8643 ], [ %8421, %8420 ]
  %8707 = phi float [ %8665, %8643 ], [ %8422, %8420 ]
  %8708 = phi float [ %8666, %8643 ], [ %8423, %8420 ]
  %8709 = phi float [ %8644, %8643 ], [ 1.000000e+00, %8420 ]
  br i1 %8448, label %9851, label %8710

; <label>:8710                                    ; preds = %8698
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8713 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8714 = extractvalue %dx.types.CBufRet.f32 %8711, 2
  %8715 = extractvalue %dx.types.CBufRet.f32 %8711, 3
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.CBufRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8720 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 0
  %8723 = extractvalue %dx.types.CBufRet.f32 %8721, 1
  %8724 = extractvalue %dx.types.CBufRet.f32 %8721, 2
  %8725 = extractvalue %dx.types.CBufRet.f32 %8721, 3
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8730 = extractvalue %dx.types.CBufRet.f32 %8726, 3
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 3
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 3
  %8735 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  %8736 = extractvalue %dx.types.CBufRet.f32 %8733, 1
  %8737 = extractvalue %dx.types.CBufRet.f32 %8733, 2
  %8738 = fcmp fast olt float %8737, -5.000000e-01
  %8739 = call float @dx.op.dot3.f32(i32 55, float %8699, float %8700, float %8701, float %8699, float %8700, float %8701)  ; Dot3(ax,ay,az,bx,by,bz)
  %8740 = call float @dx.op.unary.f32(i32 25, float %8739)  ; Rsqrt(value)
  %8741 = fmul fast float %8740, %8739
  %8742 = fmul fast float %8740, %8699
  %8743 = fmul fast float %8740, %8700
  %8744 = fmul fast float %8740, %8701
  %8745 = fadd fast float %8741, %8715
  %8746 = call float @dx.op.dot3.f32(i32 55, float %8742, float %8743, float %8744, float %8712, float %8713, float %8714)  ; Dot3(ax,ay,az,bx,by,bz)
  %8747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.i32 %8747, 1
  %8749 = and i32 %8748, 1
  %8750 = icmp ne i32 %8749, 0
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 2
  %8753 = fcmp fast ogt float %8752, 0.000000e+00
  %8754 = and i1 %8750, %8753
  br i1 %8754, label %8755, label %9161, !dx.controlflow.hints !125

; <label>:8755                                    ; preds = %8710
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 3
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 2
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 2
  %8762 = fsub fast float %8759, %8761
  %8763 = and i32 %8748, 2
  %8764 = extractvalue %dx.types.CBufRet.i32 %8747, 0
  %8765 = call i32 @dx.op.binary.i32(i32 40, i32 %8764, i32 3)  ; UMin(a,b)
  %8766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8767 = extractvalue %dx.types.CBufRet.f32 %8766, 0
  %8768 = extractvalue %dx.types.CBufRet.f32 %8766, 1
  %8769 = extractvalue %dx.types.CBufRet.f32 %8760, 0
  %8770 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8771 = fsub fast float %8767, %8769
  %8772 = fsub fast float %8768, %8770
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 0
  %8775 = fcmp fast ogt float %8774, 0.000000e+00
  %8776 = fsub fast float -0.000000e+00, %8771
  %8777 = fsub fast float -0.000000e+00, %8772
  %8778 = call float @dx.op.dot2.f32(i32 54, float %8742, float %8743, float %8742, float %8743)  ; Dot2(ax,ay,bx,by)
  %8779 = call float @dx.op.dot2.f32(i32 54, float %8742, float %8743, float %8776, float %8777)  ; Dot2(ax,ay,bx,by)
  %8780 = fmul fast float %8779, 2.000000e+00
  %8781 = call float @dx.op.dot2.f32(i32 54, float %8776, float %8777, float %8776, float %8777)  ; Dot2(ax,ay,bx,by)
  %8782 = fmul fast float %8774, %8774
  %8783 = fsub fast float %8781, %8782
  %8784 = fmul fast float %8780, %8780
  %8785 = fmul fast float %8778, 4.000000e+00
  %8786 = fmul fast float %8785, %8783
  %8787 = fsub fast float %8784, %8786
  %8788 = fcmp fast ogt float %8787, 0.000000e+00
  br i1 %8788, label %8789, label %8804

; <label>:8789                                    ; preds = %8755
  %8790 = fcmp fast ogt float %8780, 0.000000e+00
  %8791 = call float @dx.op.unary.f32(i32 24, float %8787)  ; Sqrt(value)
  %8792 = fsub fast float -0.000000e+00, %8791
  %8793 = select i1 %8790, float %8791, float %8792
  %8794 = fadd fast float %8793, %8780
  %8795 = fmul float %8794, -5.000000e-01
  %8796 = fdiv fast float %8795, %8778
  %8797 = call float @dx.op.binary.f32(i32 35, float %8796, float 0.000000e+00)  ; FMax(a,b)
  %8798 = call float @dx.op.binary.f32(i32 36, float %8741, float %8797)  ; FMin(a,b)
  %8799 = fdiv fast float %8783, %8795
  %8800 = call float @dx.op.binary.f32(i32 35, float %8799, float 0.000000e+00)  ; FMax(a,b)
  %8801 = call float @dx.op.binary.f32(i32 36, float %8741, float %8800)  ; FMin(a,b)
  %8802 = call float @dx.op.binary.f32(i32 36, float %8798, float %8801)  ; FMin(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float %8798, float %8801)  ; FMax(a,b)
  br label %8804

; <label>:8804                                    ; preds = %8789, %8755
  %8805 = phi float [ %8803, %8789 ], [ -1.000000e+00, %8755 ]
  %8806 = phi float [ %8802, %8789 ], [ -1.000000e+00, %8755 ]
  %8807 = phi i1 [ true, %8789 ], [ false, %8755 ]
  %8808 = and i1 %8775, %8807
  br i1 %8808, label %8809, label %8811

; <label>:8809                                    ; preds = %8804
  %8810 = fcmp fast oeq float %8806, %8805
  br i1 %8810, label %9114, label %8812

; <label>:8811                                    ; preds = %8804
  br i1 %8775, label %9114, label %8812

; <label>:8812                                    ; preds = %8811, %8809
  %8813 = phi float [ %8741, %8811 ], [ %8805, %8809 ]
  %8814 = phi float [ 0.000000e+00, %8811 ], [ %8806, %8809 ]
  %8815 = icmp ne i32 %8763, 0
  %8816 = fmul fast float %8813, %8744
  %8817 = fadd fast float %8816, %8757
  %8818 = fmul fast float %8817, %8813
  %8819 = select i1 %8815, float 0.000000e+00, float %8818
  %8820 = fcmp fast oeq float %8744, 0.000000e+00
  %8821 = fdiv fast float %8762, %8744
  %8822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8821)  ; FMax(a,b)
  %8823 = select i1 %8820, float %8813, float %8822
  %8824 = call float @dx.op.binary.f32(i32 36, float %8813, float %8823)  ; FMin(a,b)
  %8825 = fcmp fast ogt float %8744, 0.000000e+00
  %8826 = fcmp fast olt float %8762, 0.000000e+00
  br i1 %8825, label %8827, label %8884

; <label>:8827                                    ; preds = %8812
  %8828 = icmp eq i32 %8763, 0
  br i1 %8826, label %8829, label %8873

; <label>:8829                                    ; preds = %8827
  %8830 = select i1 %8828, float %8813, float 0.000000e+00
  %8831 = fsub fast float -0.000000e+00, %8830
  %8832 = call float @dx.op.unary.f32(i32 6, float %8831)  ; FAbs(value)
  %8833 = fmul fast float %8830, %8744
  %8834 = fadd fast float %8833, %8757
  %8835 = fmul fast float %8832, %8834
  %8836 = fsub fast float %8819, %8835
  %8837 = fsub fast float %8813, %8832
  %8838 = select i1 %8828, float %8837, float 0.000000e+00
  %8839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8839, 0
  %8841 = extractvalue %dx.types.CBufRet.f32 %8839, 1
  %8842 = extractvalue %dx.types.CBufRet.f32 %8839, 2
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 0
  %8845 = extractvalue %dx.types.CBufRet.f32 %8843, 1
  %8846 = extractvalue %dx.types.CBufRet.f32 %8843, 2
  %8847 = extractvalue %dx.types.CBufRet.f32 %8843, 3
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 3
  %8850 = call float @dx.op.binary.f32(i32 36, float %8836, float %8849)  ; FMin(a,b)
  %8851 = fmul fast float %8847, %8838
  %8852 = call float @dx.op.unary.f32(i32 7, float %8851)  ; Saturate(value)
  %8853 = fsub fast float %8844, %8840
  %8854 = fsub fast float %8845, %8841
  %8855 = fsub fast float %8846, %8842
  %8856 = fmul fast float %8852, %8853
  %8857 = fmul fast float %8852, %8854
  %8858 = fmul fast float %8852, %8855
  %8859 = fadd fast float %8856, %8840
  %8860 = fadd fast float %8857, %8841
  %8861 = fadd fast float %8858, %8842
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = fadd fast float %8864, %8863
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8868 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8869 = fadd fast float %8868, %8867
  %8870 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8871 = fmul fast float %8866, %8850
  %8872 = fmul fast float %8871, %8870
  br label %9114

; <label>:8873                                    ; preds = %8827
  br i1 %8828, label %8874, label %8895

; <label>:8874                                    ; preds = %8873
  %8875 = call float @dx.op.binary.f32(i32 36, float %8824, float %8814)  ; FMin(a,b)
  %8876 = fsub fast float %8824, %8875
  %8877 = fsub fast float %8876, %8813
  %8878 = call float @dx.op.unary.f32(i32 6, float %8877)  ; FAbs(value)
  %8879 = fadd fast float %8876, %8813
  %8880 = fmul fast float %8879, %8744
  %8881 = fadd fast float %8880, %8757
  %8882 = fmul fast float %8881, %8878
  %8883 = fsub fast float %8819, %8882
  br label %8895

; <label>:8884                                    ; preds = %8812
  br i1 %8826, label %8885, label %8895

; <label>:8885                                    ; preds = %8884
  %8886 = call float @dx.op.binary.f32(i32 35, float %8814, float %8824)  ; FMax(a,b)
  %8887 = icmp eq i32 %8763, 0
  %8888 = select i1 %8887, float %8824, float 0.000000e+00
  %8889 = fsub fast float -0.000000e+00, %8888
  %8890 = call float @dx.op.unary.f32(i32 6, float %8889)  ; FAbs(value)
  %8891 = fmul fast float %8888, %8744
  %8892 = fadd fast float %8891, %8757
  %8893 = fmul fast float %8890, %8892
  %8894 = fsub fast float %8819, %8893
  br label %8895

; <label>:8895                                    ; preds = %8885, %8884, %8874, %8873
  %8896 = phi float [ %8814, %8873 ], [ %8814, %8874 ], [ %8886, %8885 ], [ %8814, %8884 ]
  %8897 = phi float [ 0.000000e+00, %8873 ], [ %8878, %8874 ], [ %8890, %8885 ], [ 0.000000e+00, %8884 ]
  %8898 = phi float [ %8819, %8873 ], [ %8883, %8874 ], [ %8894, %8885 ], [ %8819, %8884 ]
  %8899 = phi float [ %8824, %8873 ], [ %8824, %8874 ], [ %8813, %8885 ], [ %8813, %8884 ]
  %8900 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8900, align 4, !tbaa !126, !noalias !128
  %8901 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8901, align 4, !tbaa !126, !noalias !128
  %8902 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8902, align 4, !tbaa !126, !noalias !128
  %8903 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8903, align 4, !tbaa !126, !noalias !128
  %8904 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8904, align 4, !tbaa !126, !noalias !128
  %8905 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8905, align 4, !tbaa !126, !noalias !128
  %8906 = icmp sgt i32 %8765, 0
  br i1 %8906, label %8907, label %8968

; <label>:8907                                    ; preds = %8895
  br label %8908

; <label>:8908                                    ; preds = %8957, %8907
  %8909 = phi i32 [ %8958, %8957 ], [ 0, %8907 ]
  %8910 = phi i32 [ %8959, %8957 ], [ 0, %8907 ]
  %8911 = add nuw i32 %8910, 171
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8911)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.CBufRet.f32 %8912, 1
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = fsub fast float %8913, %8916
  %8919 = fsub fast float %8914, %8917
  %8920 = extractvalue %dx.types.CBufRet.f32 %8912, 2
  %8921 = fsub fast float -0.000000e+00, %8918
  %8922 = fsub fast float -0.000000e+00, %8919
  %8923 = call float @dx.op.dot2.f32(i32 54, float %8742, float %8743, float %8921, float %8922)  ; Dot2(ax,ay,bx,by)
  %8924 = fmul fast float %8923, 2.000000e+00
  %8925 = call float @dx.op.dot2.f32(i32 54, float %8921, float %8922, float %8921, float %8922)  ; Dot2(ax,ay,bx,by)
  %8926 = fmul fast float %8920, %8920
  %8927 = fsub fast float %8925, %8926
  %8928 = fmul fast float %8924, %8924
  %8929 = fmul fast float %8785, %8927
  %8930 = fsub fast float %8928, %8929
  %8931 = fcmp fast ogt float %8930, 0.000000e+00
  br i1 %8931, label %8932, label %8947

; <label>:8932                                    ; preds = %8908
  %8933 = fcmp fast ogt float %8924, 0.000000e+00
  %8934 = call float @dx.op.unary.f32(i32 24, float %8930)  ; Sqrt(value)
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = select i1 %8933, float %8934, float %8935
  %8937 = fadd fast float %8936, %8924
  %8938 = fmul float %8937, -5.000000e-01
  %8939 = fdiv fast float %8938, %8778
  %8940 = call float @dx.op.binary.f32(i32 35, float %8939, float 0.000000e+00)  ; FMax(a,b)
  %8941 = call float @dx.op.binary.f32(i32 36, float %8813, float %8940)  ; FMin(a,b)
  %8942 = fdiv fast float %8927, %8938
  %8943 = call float @dx.op.binary.f32(i32 35, float %8942, float 0.000000e+00)  ; FMax(a,b)
  %8944 = call float @dx.op.binary.f32(i32 36, float %8813, float %8943)  ; FMin(a,b)
  %8945 = call float @dx.op.binary.f32(i32 36, float %8941, float %8944)  ; FMin(a,b)
  %8946 = call float @dx.op.binary.f32(i32 35, float %8941, float %8944)  ; FMax(a,b)
  br label %8947

; <label>:8947                                    ; preds = %8932, %8908
  %8948 = phi float [ %8946, %8932 ], [ -1.000000e+00, %8908 ]
  %8949 = phi float [ %8945, %8932 ], [ -1.000000e+00, %8908 ]
  %8950 = phi i1 [ true, %8932 ], [ false, %8908 ]
  br i1 %8950, label %8951, label %8957

; <label>:8951                                    ; preds = %8947
  %8952 = call float @dx.op.binary.f32(i32 35, float %8896, float %8949)  ; FMax(a,b)
  %8953 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8910
  store float %8952, float* %8953, align 4, !tbaa !126, !noalias !128
  %8954 = call float @dx.op.binary.f32(i32 35, float %8896, float %8948)  ; FMax(a,b)
  %8955 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8910
  store float %8954, float* %8955, align 4, !tbaa !126, !noalias !128
  %8956 = add nsw i32 %8909, 1
  br label %8957

; <label>:8957                                    ; preds = %8951, %8947
  %8958 = phi i32 [ %8956, %8951 ], [ %8909, %8947 ]
  %8959 = add nuw nsw i32 %8910, 1
  %8960 = icmp eq i32 %8959, %8765
  br i1 %8960, label %8961, label %8908

; <label>:8961                                    ; preds = %8957
  %8962 = load float, float* %8902, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8963 = load float, float* %8901, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8964 = load float, float* %8900, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8965 = load float, float* %8905, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8966 = load float, float* %8904, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8967 = load float, float* %8903, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8968

; <label>:8968                                    ; preds = %8961, %8895
  %8969 = phi float [ -1.000000e+00, %8895 ], [ %8967, %8961 ]
  %8970 = phi float [ -1.000000e+00, %8895 ], [ %8966, %8961 ]
  %8971 = phi float [ -1.000000e+00, %8895 ], [ %8965, %8961 ]
  %8972 = phi float [ -1.000000e+00, %8895 ], [ %8964, %8961 ]
  %8973 = phi float [ -1.000000e+00, %8895 ], [ %8963, %8961 ]
  %8974 = phi float [ -1.000000e+00, %8895 ], [ %8962, %8961 ]
  %8975 = phi i32 [ 0, %8895 ], [ %8958, %8961 ]
  %8976 = call float @dx.op.binary.f32(i32 36, float %8973, float %8974)  ; FMin(a,b)
  %8977 = call float @dx.op.binary.f32(i32 36, float %8972, float %8976)  ; FMin(a,b)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8972, float %8973)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 36, float %8978, float %8974)  ; FMin(a,b)
  %8980 = call float @dx.op.binary.f32(i32 36, float %8972, float %8973)  ; FMin(a,b)
  %8981 = call float @dx.op.binary.f32(i32 35, float %8980, float %8979)  ; FMax(a,b)
  %8982 = call float @dx.op.binary.f32(i32 35, float %8973, float %8974)  ; FMax(a,b)
  %8983 = call float @dx.op.binary.f32(i32 35, float %8972, float %8982)  ; FMax(a,b)
  store float %8977, float* %8900, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8981, float* %8901, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8983, float* %8902, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8984 = call float @dx.op.binary.f32(i32 36, float %8970, float %8971)  ; FMin(a,b)
  %8985 = call float @dx.op.binary.f32(i32 36, float %8969, float %8984)  ; FMin(a,b)
  %8986 = call float @dx.op.binary.f32(i32 35, float %8969, float %8970)  ; FMax(a,b)
  %8987 = call float @dx.op.binary.f32(i32 36, float %8986, float %8971)  ; FMin(a,b)
  %8988 = call float @dx.op.binary.f32(i32 36, float %8969, float %8970)  ; FMin(a,b)
  %8989 = call float @dx.op.binary.f32(i32 35, float %8988, float %8987)  ; FMax(a,b)
  %8990 = call float @dx.op.binary.f32(i32 35, float %8970, float %8971)  ; FMax(a,b)
  %8991 = call float @dx.op.binary.f32(i32 35, float %8969, float %8990)  ; FMax(a,b)
  store float %8985, float* %8903, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8989, float* %8904, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8991, float* %8905, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8992 = sub nsw i32 3, %8975
  %8993 = icmp sgt i32 %8992, 2
  br i1 %8993, label %8994, label %9032

; <label>:8994                                    ; preds = %8968
  %8995 = icmp eq i32 %8763, 0
  %8996 = fsub fast float %8813, %8897
  %8997 = select i1 %8995, float %8996, float %8897
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  %9000 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9001 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9003 = extractvalue %dx.types.CBufRet.f32 %9002, 0
  %9004 = extractvalue %dx.types.CBufRet.f32 %9002, 1
  %9005 = extractvalue %dx.types.CBufRet.f32 %9002, 2
  %9006 = extractvalue %dx.types.CBufRet.f32 %9002, 3
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 3
  %9009 = call float @dx.op.binary.f32(i32 36, float %8898, float %9008)  ; FMin(a,b)
  %9010 = fmul fast float %9006, %8997
  %9011 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  %9012 = fsub fast float %9003, %8999
  %9013 = fsub fast float %9004, %9000
  %9014 = fsub fast float %9005, %9001
  %9015 = fmul fast float %9011, %9012
  %9016 = fmul fast float %9011, %9013
  %9017 = fmul fast float %9011, %9014
  %9018 = fadd fast float %9015, %8999
  %9019 = fadd fast float %9016, %9000
  %9020 = fadd fast float %9017, %9001
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = fadd fast float %9023, %9022
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9021, 2
  %9027 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9028 = fadd fast float %9027, %9026
  %9029 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  %9030 = fmul fast float %9025, %9009
  %9031 = fmul fast float %9030, %9029
  br label %9114

; <label>:9032                                    ; preds = %8968
  %9033 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8992
  %9034 = load float, float* %9033, align 4, !tbaa !126, !noalias !128
  %9035 = fcmp fast olt float %9034, %8899
  %9036 = icmp sgt i32 %8975, 0
  %9037 = and i1 %9036, %9035
  br i1 %9037, label %9038, label %9075

; <label>:9038                                    ; preds = %9032
  br label %9039

; <label>:9039                                    ; preds = %9068, %9038
  %9040 = phi float [ %9069, %9068 ], [ %8897, %9038 ]
  %9041 = phi float [ %9070, %9068 ], [ %8898, %9038 ]
  %9042 = phi float [ %9050, %9068 ], [ %9034, %9038 ]
  %9043 = phi i32 [ %9047, %9068 ], [ %8992, %9038 ]
  %9044 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %9043
  %9045 = load float, float* %9044, align 4, !tbaa !126, !noalias !128
  %9046 = icmp slt i32 %9043, 2
  %9047 = add nsw i32 %9043, 1
  %9048 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %9047
  %9049 = load float, float* %9048, align 4, !tbaa !126, !noalias !128
  %9050 = select i1 %9046, float %9049, float %8813
  %9051 = call float @dx.op.binary.f32(i32 36, float %9050, float %9045)  ; FMin(a,b)
  %9052 = call float @dx.op.binary.f32(i32 36, float %8899, float %9051)  ; FMin(a,b)
  %9053 = icmp eq i32 %8763, 0
  %9054 = fadd fast float %9052, %9042
  %9055 = fmul fast float %9054, %8744
  %9056 = fadd fast float %9055, %8757
  br i1 %9053, label %9062, label %9057

; <label>:9057                                    ; preds = %9039
  %9058 = fsub fast float %9052, %9042
  %9059 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9058)  ; FMax(a,b)
  %9060 = fmul fast float %9059, %9056
  %9061 = fadd fast float %9060, %9041
  br label %9068

; <label>:9062                                    ; preds = %9039
  %9063 = fsub fast float %9042, %9052
  %9064 = call float @dx.op.unary.f32(i32 6, float %9063)  ; FAbs(value)
  %9065 = fadd fast float %9064, %9040
  %9066 = fmul fast float %9064, %9056
  %9067 = fsub fast float %9041, %9066
  br label %9068

; <label>:9068                                    ; preds = %9062, %9057
  %9069 = phi float [ %9059, %9057 ], [ %9065, %9062 ]
  %9070 = phi float [ %9061, %9057 ], [ %9067, %9062 ]
  %9071 = fcmp fast olt float %9050, %8899
  %9072 = icmp slt i32 %9047, 3
  %9073 = and i1 %9072, %9071
  br i1 %9073, label %9039, label %9074

; <label>:9074                                    ; preds = %9068
  br label %9075

; <label>:9075                                    ; preds = %9074, %9032
  %9076 = phi float [ %8897, %9032 ], [ %9069, %9074 ]
  %9077 = phi float [ %8898, %9032 ], [ %9070, %9074 ]
  %9078 = fsub fast float %8813, %9076
  %9079 = select i1 %8815, float %9076, float %9078
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = extractvalue %dx.types.CBufRet.f32 %9080, 1
  %9083 = extractvalue %dx.types.CBufRet.f32 %9080, 2
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = extractvalue %dx.types.CBufRet.f32 %9084, 3
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 3
  %9091 = call float @dx.op.binary.f32(i32 36, float %9077, float %9090)  ; FMin(a,b)
  %9092 = fmul fast float %9088, %9079
  %9093 = call float @dx.op.unary.f32(i32 7, float %9092)  ; Saturate(value)
  %9094 = fsub fast float %9085, %9081
  %9095 = fsub fast float %9086, %9082
  %9096 = fsub fast float %9087, %9083
  %9097 = fmul fast float %9093, %9094
  %9098 = fmul fast float %9093, %9095
  %9099 = fmul fast float %9093, %9096
  %9100 = fadd fast float %9097, %9081
  %9101 = fadd fast float %9098, %9082
  %9102 = fadd fast float %9099, %9083
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 0
  %9105 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9106 = fadd fast float %9105, %9104
  %9107 = call float @dx.op.unary.f32(i32 7, float %9106)  ; Saturate(value)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9103, 2
  %9109 = extractvalue %dx.types.CBufRet.f32 %9103, 3
  %9110 = fadd fast float %9109, %9108
  %9111 = call float @dx.op.unary.f32(i32 7, float %9110)  ; Saturate(value)
  %9112 = fmul fast float %9107, %9091
  %9113 = fmul fast float %9112, %9111
  br label %9114

; <label>:9114                                    ; preds = %9075, %8994, %8829, %8811, %8809
  %9115 = phi float [ %8838, %8829 ], [ %8997, %8994 ], [ %9079, %9075 ], [ 0.000000e+00, %8809 ], [ 0.000000e+00, %8811 ]
  %9116 = phi float [ %8872, %8829 ], [ %9031, %8994 ], [ %9113, %9075 ], [ 0.000000e+00, %8809 ], [ 0.000000e+00, %8811 ]
  %9117 = phi float [ %8859, %8829 ], [ %9018, %8994 ], [ %9100, %9075 ], [ 0.000000e+00, %8809 ], [ 0.000000e+00, %8811 ]
  %9118 = phi float [ %8860, %8829 ], [ %9019, %8994 ], [ %9101, %9075 ], [ 0.000000e+00, %8809 ], [ 0.000000e+00, %8811 ]
  %9119 = phi float [ %8861, %8829 ], [ %9020, %8994 ], [ %9102, %9075 ], [ 0.000000e+00, %8809 ], [ 0.000000e+00, %8811 ]
  %9120 = fmul fast float %8752, %9116
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 2
  %9123 = fsub fast float %8759, %9122
  %9124 = fcmp fast olt float %9120, -2.000000e+01
  %9125 = call float @dx.op.unary.f32(i32 21, float %9120)  ; Exp(value)
  %9126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9126, 2
  %9128 = extractvalue %dx.types.CBufRet.f32 %9126, 3
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9131 = fmul fast float %9128, %9123
  %9132 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %8744, 5.000000e-01
  %9135 = fadd fast float %9134, 5.000000e-01
  %9136 = call float @dx.op.unary.f32(i32 7, float %9135)  ; Saturate(value)
  %9137 = fsub fast float 1.000000e+00, %9136
  %9138 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9133)  ; FMax(a,b)
  %9139 = fdiv fast float %9137, %9138
  %9140 = fsub fast float %9123, %8701
  %9141 = call float @dx.op.unary.f32(i32 6, float %9140)  ; FAbs(value)
  %9142 = fmul fast float %9141, %9127
  %9143 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9144 = fsub fast float 1.000000e+00, %9142
  %9145 = fmul fast float %9144, %9143
  %9146 = fadd fast float %9145, %9142
  %9147 = fmul fast float %9130, %9123
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = fsub fast float 1.000000e+00, %9146
  %9150 = fmul fast float %9149, %9148
  %9151 = fadd fast float %9150, %9146
  %9152 = call float @dx.op.unary.f32(i32 7, float %9151)  ; Saturate(value)
  %9153 = fadd fast float %9125, -1.000000e+00
  %9154 = select i1 %9124, float -1.000000e+00, float %9153
  %9155 = fmul fast float %9152, %9154
  %9156 = fadd fast float %9155, 1.000000e+00
  %9157 = fsub fast float -0.000000e+00, %9155
  %9158 = fmul fast float %9117, %9157
  %9159 = fmul fast float %9118, %9157
  %9160 = fmul fast float %9119, %9157
  br label %9161

; <label>:9161                                    ; preds = %9114, %8710
  %9162 = phi float [ %9115, %9114 ], [ 0.000000e+00, %8710 ]
  %9163 = phi float [ %9156, %9114 ], [ 1.000000e+00, %8710 ]
  %9164 = phi float [ %9158, %9114 ], [ 0.000000e+00, %8710 ]
  %9165 = phi float [ %9159, %9114 ], [ 0.000000e+00, %8710 ]
  %9166 = phi float [ %9160, %9114 ], [ 0.000000e+00, %8710 ]
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 1
  %9169 = fsub fast float 1.000000e+00, %9163
  %9170 = fmul fast float %9169, %8745
  %9171 = fmul fast float %9170, %9168
  %9172 = fsub fast float %8745, %9171
  br i1 %8738, label %9173, label %9202, !dx.controlflow.hints !164

; <label>:9173                                    ; preds = %9161
  %9174 = fmul fast float %8746, %8735
  %9175 = fadd fast float %9174, %8736
  %9176 = call float @dx.op.unary.f32(i32 7, float %9175)  ; Saturate(value)
  %9177 = fmul fast float %8717, %9172
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fmul fast float %8718, %9172
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = call float @dx.op.unary.f32(i32 21, float %9178)  ; Exp(value)
  %9182 = call float @dx.op.unary.f32(i32 21, float %9180)  ; Exp(value)
  %9183 = call float @dx.op.binary.f32(i32 35, float %8725, float %9181)  ; FMax(a,b)
  %9184 = call float @dx.op.binary.f32(i32 35, float %8725, float %9182)  ; FMax(a,b)
  %9185 = fsub fast float %9184, %9183
  %9186 = fmul fast float %9185, %9176
  %9187 = fadd fast float %9186, %9183
  %9188 = call float @dx.op.unary.f32(i32 7, float %9187)  ; Saturate(value)
  %9189 = fsub fast float %8722, %8727
  %9190 = fsub fast float %8723, %8728
  %9191 = fsub fast float %8724, %8729
  %9192 = fmul fast float %9176, %9189
  %9193 = fmul fast float %9176, %9190
  %9194 = fmul fast float %9176, %9191
  %9195 = fadd fast float %9192, %8727
  %9196 = fadd fast float %9193, %8728
  %9197 = fadd fast float %9194, %8729
  %9198 = fsub fast float 1.000000e+00, %9188
  %9199 = fmul fast float %9198, %9195
  %9200 = fmul fast float %9198, %9196
  %9201 = fmul fast float %9198, %9197
  br label %9261

; <label>:9202                                    ; preds = %9161
  %9203 = fmul fast float %9172, %8734
  %9204 = call float @dx.op.unary.f32(i32 7, float %9203)  ; Saturate(value)
  %9205 = fsub fast float 2.000000e+00, %9204
  %9206 = fmul fast float %9204, 9.921875e-01
  %9207 = fmul fast float %9206, %9205
  %9208 = fadd fast float %9207, 3.906250e-03
  %9209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9208, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = fsub fast float %9204, %9210
  %9212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9211)  ; FMax(a,b)
  %9213 = fmul fast float %8720, %8701
  %9214 = call float @dx.op.unary.f32(i32 6, float %9213)  ; FAbs(value)
  %9215 = fcmp fast ogt float %9214, 0x3EB0C6F7A0000000
  br i1 %9215, label %9216, label %9222, !dx.controlflow.hints !165

; <label>:9216                                    ; preds = %9202
  %9217 = fmul fast float %9213, 0xBFF7154760000000
  %9218 = call float @dx.op.unary.f32(i32 21, float %9217)  ; Exp(value)
  %9219 = fsub fast float 1.000000e+00, %9218
  %9220 = fdiv fast float %9219, %9213
  %9221 = fmul fast float %9220, %8730
  br label %9222

; <label>:9222                                    ; preds = %9216, %9202
  %9223 = phi float [ %9221, %9216 ], [ %8730, %9202 ]
  %9224 = fadd fast float %9223, %8732
  %9225 = fmul fast float %9224, %9212
  %9226 = fmul fast float %8717, %9225
  %9227 = fsub fast float -0.000000e+00, %9226
  %9228 = fmul fast float %8718, %9225
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fmul fast float %8719, %9225
  %9231 = fsub fast float -0.000000e+00, %9230
  %9232 = call float @dx.op.unary.f32(i32 21, float %9227)  ; Exp(value)
  %9233 = call float @dx.op.unary.f32(i32 21, float %9229)  ; Exp(value)
  %9234 = call float @dx.op.unary.f32(i32 21, float %9231)  ; Exp(value)
  %9235 = fmul fast float %8746, %8746
  %9236 = fadd fast float %9235, 1.000000e+00
  %9237 = fmul fast float %9236, 0x3FAE8EC8A0000000
  %9238 = fmul fast float %9237, %8727
  %9239 = fmul fast float %9237, %8728
  %9240 = fmul fast float %9237, %8729
  %9241 = fmul fast float %8746, %8725
  %9242 = fsub fast float 1.000000e+00, %9241
  %9243 = fmul fast float %8725, %8725
  %9244 = fsub fast float 1.000000e+00, %9243
  %9245 = fmul fast float %9244, 0x3FB45F3060000000
  %9246 = fmul fast float %9242, %9242
  %9247 = fdiv fast float 1.000000e+00, %9246
  %9248 = fmul fast float %9245, %9247
  %9249 = fmul fast float %9248, %8722
  %9250 = fmul fast float %9248, %8723
  %9251 = fmul fast float %9248, %8724
  %9252 = fadd fast float %9249, %9238
  %9253 = fadd fast float %9250, %9239
  %9254 = fadd fast float %9251, %9240
  %9255 = fsub fast float 1.000000e+00, %9232
  %9256 = fsub fast float 1.000000e+00, %9233
  %9257 = fsub fast float 1.000000e+00, %9234
  %9258 = fmul fast float %9252, %9255
  %9259 = fmul fast float %9253, %9256
  %9260 = fmul fast float %9254, %9257
  br label %9261

; <label>:9261                                    ; preds = %9222, %9173
  %9262 = phi float [ %9199, %9173 ], [ %9258, %9222 ]
  %9263 = phi float [ %9200, %9173 ], [ %9259, %9222 ]
  %9264 = phi float [ %9201, %9173 ], [ %9260, %9222 ]
  %9265 = phi float [ %9188, %9173 ], [ %9232, %9222 ]
  %9266 = phi float [ %9188, %9173 ], [ %9233, %9222 ]
  %9267 = phi float [ %9188, %9173 ], [ %9234, %9222 ]
  br i1 %8754, label %9268, label %9466, !dx.controlflow.hints !166

; <label>:9268                                    ; preds = %9261
  %9269 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9270 = fmul fast float %9269, %9169
  %9271 = fsub fast float %9164, %9262
  %9272 = fsub fast float %9165, %9263
  %9273 = fsub fast float %9166, %9264
  %9274 = fmul fast float %9270, %9271
  %9275 = fmul fast float %9270, %9272
  %9276 = fmul fast float %9270, %9273
  %9277 = fadd fast float %9274, %9262
  %9278 = fadd fast float %9275, %9263
  %9279 = fadd fast float %9276, %9264
  %9280 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9265)  ; FMax(a,b)
  %9281 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9266)  ; FMax(a,b)
  %9282 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9267)  ; FMax(a,b)
  %9283 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9163)  ; FMax(a,b)
  %9284 = call float @dx.op.binary.f32(i32 35, float %9162, float %9172)  ; FMax(a,b)
  %9285 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9284)  ; FMax(a,b)
  %9286 = fdiv fast float %9162, %9285
  %9287 = call float @dx.op.unary.f32(i32 7, float %9286)  ; Saturate(value)
  %9288 = fdiv fast float %9172, %9285
  %9289 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9290 = fcmp fast une float %9283, 1.000000e+00
  br i1 %9290, label %9291, label %9304, !dx.controlflow.hints !167

; <label>:9291                                    ; preds = %9268
  %9292 = call float @dx.op.unary.f32(i32 23, float %9283)  ; Log(value)
  %9293 = fmul fast float %9292, 0x3FE62E4300000000
  %9294 = fmul fast float %9164, %9293
  %9295 = fsub fast float -0.000000e+00, %9294
  %9296 = fmul fast float %9165, %9293
  %9297 = fsub fast float -0.000000e+00, %9296
  %9298 = fmul fast float %9166, %9293
  %9299 = fsub fast float -0.000000e+00, %9298
  %9300 = fsub fast float 1.000000e+00, %9283
  %9301 = fdiv fast float %9295, %9300
  %9302 = fdiv fast float %9297, %9300
  %9303 = fdiv fast float %9299, %9300
  br label %9304

; <label>:9304                                    ; preds = %9291, %9268
  %9305 = phi float [ %9301, %9291 ], [ %9164, %9268 ]
  %9306 = phi float [ %9302, %9291 ], [ %9165, %9268 ]
  %9307 = phi float [ %9303, %9291 ], [ %9166, %9268 ]
  %9308 = phi float [ %9293, %9291 ], [ 0.000000e+00, %9268 ]
  %9309 = fcmp fast une float %9280, 1.000000e+00
  br i1 %9309, label %9310, label %9317, !dx.controlflow.hints !168

; <label>:9310                                    ; preds = %9304
  %9311 = call float @dx.op.unary.f32(i32 23, float %9280)  ; Log(value)
  %9312 = fmul fast float %9311, 0x3FE62E4300000000
  %9313 = fmul fast float %9277, %9312
  %9314 = fsub fast float -0.000000e+00, %9313
  %9315 = fsub fast float 1.000000e+00, %9280
  %9316 = fdiv fast float %9314, %9315
  br label %9317

; <label>:9317                                    ; preds = %9310, %9304
  %9318 = phi float [ %9316, %9310 ], [ %9277, %9304 ]
  %9319 = phi float [ %9312, %9310 ], [ 0.000000e+00, %9304 ]
  %9320 = fcmp fast une float %9281, 1.000000e+00
  br i1 %9320, label %9321, label %9328, !dx.controlflow.hints !168

; <label>:9321                                    ; preds = %9317
  %9322 = call float @dx.op.unary.f32(i32 23, float %9281)  ; Log(value)
  %9323 = fmul fast float %9322, 0x3FE62E4300000000
  %9324 = fmul fast float %9278, %9323
  %9325 = fsub fast float -0.000000e+00, %9324
  %9326 = fsub fast float 1.000000e+00, %9281
  %9327 = fdiv fast float %9325, %9326
  br label %9328

; <label>:9328                                    ; preds = %9321, %9317
  %9329 = phi float [ %9327, %9321 ], [ %9278, %9317 ]
  %9330 = phi float [ %9323, %9321 ], [ 0.000000e+00, %9317 ]
  %9331 = fcmp fast une float %9282, 1.000000e+00
  br i1 %9331, label %9332, label %9339, !dx.controlflow.hints !168

; <label>:9332                                    ; preds = %9328
  %9333 = call float @dx.op.unary.f32(i32 23, float %9282)  ; Log(value)
  %9334 = fmul fast float %9333, 0x3FE62E4300000000
  %9335 = fmul fast float %9279, %9334
  %9336 = fsub fast float -0.000000e+00, %9335
  %9337 = fsub fast float 1.000000e+00, %9282
  %9338 = fdiv fast float %9336, %9337
  br label %9339

; <label>:9339                                    ; preds = %9332, %9328
  %9340 = phi float [ %9338, %9332 ], [ %9279, %9328 ]
  %9341 = phi float [ %9334, %9332 ], [ 0.000000e+00, %9328 ]
  %9342 = fmul fast float %9305, %9289
  %9343 = fmul fast float %9306, %9289
  %9344 = fmul fast float %9307, %9289
  %9345 = fmul fast float %9308, %9289
  %9346 = fmul fast float %9318, %9287
  %9347 = fmul fast float %9329, %9287
  %9348 = fmul fast float %9340, %9287
  %9349 = fmul fast float %9319, %9287
  %9350 = fmul fast float %9330, %9287
  %9351 = fmul fast float %9341, %9287
  %9352 = fadd fast float %9346, %9342
  %9353 = fadd fast float %9347, %9343
  %9354 = fadd fast float %9348, %9344
  %9355 = fadd fast float %9349, %9345
  %9356 = fadd fast float %9350, %9345
  %9357 = fadd fast float %9351, %9345
  %9358 = fcmp fast une float %9355, 0.000000e+00
  br i1 %9358, label %9359, label %9366, !dx.controlflow.hints !169

; <label>:9359                                    ; preds = %9339
  %9360 = fmul fast float %9355, 0x3FF7154760000000
  %9361 = call float @dx.op.unary.f32(i32 21, float %9360)  ; Exp(value)
  %9362 = fsub fast float 1.000000e+00, %9361
  %9363 = fmul fast float %9352, %9362
  %9364 = fsub fast float -0.000000e+00, %9363
  %9365 = fdiv fast float %9364, %9355
  br label %9366

; <label>:9366                                    ; preds = %9359, %9339
  %9367 = phi float [ %9361, %9359 ], [ 1.000000e+00, %9339 ]
  %9368 = phi float [ %9365, %9359 ], [ %9352, %9339 ]
  %9369 = fcmp fast une float %9356, 0.000000e+00
  br i1 %9369, label %9370, label %9377, !dx.controlflow.hints !169

; <label>:9370                                    ; preds = %9366
  %9371 = fmul fast float %9356, 0x3FF7154760000000
  %9372 = call float @dx.op.unary.f32(i32 21, float %9371)  ; Exp(value)
  %9373 = fsub fast float 1.000000e+00, %9372
  %9374 = fmul fast float %9353, %9373
  %9375 = fsub fast float -0.000000e+00, %9374
  %9376 = fdiv fast float %9375, %9356
  br label %9377

; <label>:9377                                    ; preds = %9370, %9366
  %9378 = phi float [ %9372, %9370 ], [ 1.000000e+00, %9366 ]
  %9379 = phi float [ %9376, %9370 ], [ %9353, %9366 ]
  %9380 = fcmp fast une float %9357, 0.000000e+00
  br i1 %9380, label %9381, label %9388, !dx.controlflow.hints !169

; <label>:9381                                    ; preds = %9377
  %9382 = fmul fast float %9357, 0x3FF7154760000000
  %9383 = call float @dx.op.unary.f32(i32 21, float %9382)  ; Exp(value)
  %9384 = fsub fast float 1.000000e+00, %9383
  %9385 = fmul fast float %9354, %9384
  %9386 = fsub fast float -0.000000e+00, %9385
  %9387 = fdiv fast float %9386, %9357
  br label %9388

; <label>:9388                                    ; preds = %9381, %9377
  %9389 = phi float [ %9383, %9381 ], [ 1.000000e+00, %9377 ]
  %9390 = phi float [ %9387, %9381 ], [ %9354, %9377 ]
  %9391 = fcmp fast ogt float %9287, %9289
  br i1 %9391, label %9392, label %9412

; <label>:9392                                    ; preds = %9388
  %9393 = fsub fast float 1.000000e+00, %9289
  %9394 = fmul fast float %9305, %9393
  %9395 = fmul fast float %9306, %9393
  %9396 = fmul fast float %9307, %9393
  %9397 = fmul fast float %9308, %9393
  %9398 = fcmp fast une float %9397, 0.000000e+00
  br i1 %9398, label %9399, label %9450, !dx.controlflow.hints !170

; <label>:9399                                    ; preds = %9392
  %9400 = fmul fast float %9397, 0x3FF7154760000000
  %9401 = call float @dx.op.unary.f32(i32 21, float %9400)  ; Exp(value)
  %9402 = fsub fast float 1.000000e+00, %9401
  %9403 = fmul fast float %9394, %9402
  %9404 = fsub fast float -0.000000e+00, %9403
  %9405 = fmul fast float %9395, %9402
  %9406 = fsub fast float -0.000000e+00, %9405
  %9407 = fmul fast float %9396, %9402
  %9408 = fsub fast float -0.000000e+00, %9407
  %9409 = fdiv fast float %9404, %9397
  %9410 = fdiv fast float %9406, %9397
  %9411 = fdiv fast float %9408, %9397
  br label %9450

; <label>:9412                                    ; preds = %9388
  %9413 = fsub fast float 1.000000e+00, %9287
  %9414 = fmul fast float %9318, %9413
  %9415 = fmul fast float %9329, %9413
  %9416 = fmul fast float %9340, %9413
  %9417 = fmul fast float %9319, %9413
  %9418 = fmul fast float %9330, %9413
  %9419 = fmul fast float %9341, %9413
  %9420 = fcmp fast une float %9417, 0.000000e+00
  br i1 %9420, label %9421, label %9428, !dx.controlflow.hints !169

; <label>:9421                                    ; preds = %9412
  %9422 = fmul fast float %9417, 0x3FF7154760000000
  %9423 = call float @dx.op.unary.f32(i32 21, float %9422)  ; Exp(value)
  %9424 = fsub fast float 1.000000e+00, %9423
  %9425 = fmul fast float %9414, %9424
  %9426 = fsub fast float -0.000000e+00, %9425
  %9427 = fdiv fast float %9426, %9417
  br label %9428

; <label>:9428                                    ; preds = %9421, %9412
  %9429 = phi float [ %9427, %9421 ], [ %9414, %9412 ]
  %9430 = phi float [ %9423, %9421 ], [ 1.000000e+00, %9412 ]
  %9431 = fcmp fast une float %9418, 0.000000e+00
  br i1 %9431, label %9432, label %9439, !dx.controlflow.hints !169

; <label>:9432                                    ; preds = %9428
  %9433 = fmul fast float %9418, 0x3FF7154760000000
  %9434 = call float @dx.op.unary.f32(i32 21, float %9433)  ; Exp(value)
  %9435 = fsub fast float 1.000000e+00, %9434
  %9436 = fmul fast float %9415, %9435
  %9437 = fsub fast float -0.000000e+00, %9436
  %9438 = fdiv fast float %9437, %9418
  br label %9439

; <label>:9439                                    ; preds = %9432, %9428
  %9440 = phi float [ %9438, %9432 ], [ %9415, %9428 ]
  %9441 = phi float [ %9434, %9432 ], [ 1.000000e+00, %9428 ]
  %9442 = fcmp fast une float %9419, 0.000000e+00
  br i1 %9442, label %9443, label %9450, !dx.controlflow.hints !169

; <label>:9443                                    ; preds = %9439
  %9444 = fmul fast float %9419, 0x3FF7154760000000
  %9445 = call float @dx.op.unary.f32(i32 21, float %9444)  ; Exp(value)
  %9446 = fsub fast float 1.000000e+00, %9445
  %9447 = fmul fast float %9416, %9446
  %9448 = fsub fast float -0.000000e+00, %9447
  %9449 = fdiv fast float %9448, %9419
  br label %9450

; <label>:9450                                    ; preds = %9443, %9439, %9399, %9392
  %9451 = phi float [ %9449, %9443 ], [ %9411, %9399 ], [ %9396, %9392 ], [ %9416, %9439 ]
  %9452 = phi float [ %9440, %9443 ], [ %9410, %9399 ], [ %9395, %9392 ], [ %9440, %9439 ]
  %9453 = phi float [ %9429, %9443 ], [ %9409, %9399 ], [ %9394, %9392 ], [ %9429, %9439 ]
  %9454 = phi float [ %9445, %9443 ], [ %9401, %9399 ], [ 1.000000e+00, %9392 ], [ 1.000000e+00, %9439 ]
  %9455 = phi float [ %9441, %9443 ], [ %9401, %9399 ], [ 1.000000e+00, %9392 ], [ %9441, %9439 ]
  %9456 = phi float [ %9430, %9443 ], [ %9401, %9399 ], [ 1.000000e+00, %9392 ], [ %9430, %9439 ]
  %9457 = fmul fast float %9456, %9368
  %9458 = fmul fast float %9455, %9379
  %9459 = fmul fast float %9454, %9390
  %9460 = fadd fast float %9457, %9453
  %9461 = fadd fast float %9458, %9452
  %9462 = fadd fast float %9459, %9451
  %9463 = fmul fast float %9456, %9367
  %9464 = fmul fast float %9455, %9378
  %9465 = fmul fast float %9454, %9389
  br label %9466

; <label>:9466                                    ; preds = %9450, %9261
  %9467 = phi float [ %9465, %9450 ], [ %9267, %9261 ]
  %9468 = phi float [ %9464, %9450 ], [ %9266, %9261 ]
  %9469 = phi float [ %9463, %9450 ], [ %9265, %9261 ]
  %9470 = phi float [ %9462, %9450 ], [ %9264, %9261 ]
  %9471 = phi float [ %9461, %9450 ], [ %9263, %9261 ]
  %9472 = phi float [ %9460, %9450 ], [ %9262, %9261 ]
  %9473 = fmul fast float %9469, %8709
  %9474 = call float @dx.op.dot3.f32(i32 55, float %9469, float %9468, float %9467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9475 = call float @dx.op.dot3.f32(i32 55, float %9472, float %9471, float %9470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9476 = select i1 %251, float %9474, float %9469
  %9477 = select i1 %251, float %9474, float %9468
  %9478 = select i1 %251, float 1.000000e+00, float %9467
  %9479 = select i1 %251, float %9475, float %9472
  %9480 = select i1 %251, float 0.000000e+00, float %9471
  %9481 = select i1 %251, float 0.000000e+00, float %9470
  %9482 = fmul fast float %9476, %8703
  %9483 = fmul fast float %9477, %8704
  %9484 = fmul fast float %9478, %8705
  %9485 = fadd fast float %9482, %9479
  %9486 = fadd fast float %9483, %9480
  %9487 = fadd fast float %9481, %9484
  %9488 = fmul fast float %9476, %8706
  %9489 = fmul fast float %9477, %8707
  %9490 = fmul fast float %9478, %8708
  %9491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9492 = extractvalue %dx.types.CBufRet.i32 %9491, 0
  %9493 = icmp eq i32 %9492, 0
  br i1 %9493, label %9851, label %9494, !dx.controlflow.hints !171

; <label>:9494                                    ; preds = %9466
  %9495 = fmul fast float %6355, %102
  %9496 = fmul fast float %6356, %103
  %9497 = fmul fast float %9495, 2.000000e+00
  %9498 = fmul fast float %9496, 2.000000e+00
  %9499 = fsub fast float 1.000000e+00, %9497
  %9500 = fsub fast float 1.000000e+00, %9498
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 0
  %9503 = extractvalue %dx.types.CBufRet.f32 %9501, 1
  %9504 = extractvalue %dx.types.CBufRet.f32 %9501, 2
  %9505 = fmul fast float %9499, %9502
  %9506 = fmul fast float %9499, %9503
  %9507 = fmul fast float %9499, %9504
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 0
  %9510 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9511 = extractvalue %dx.types.CBufRet.f32 %9508, 2
  %9512 = fmul fast float %9500, %9509
  %9513 = fmul fast float %9500, %9510
  %9514 = fmul fast float %9500, %9511
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9519 = fadd fast float %9512, %9516
  %9520 = fadd fast float %9519, %9505
  %9521 = fadd fast float %9513, %9517
  %9522 = fadd fast float %9521, %9506
  %9523 = fadd fast float %9514, %9518
  %9524 = fadd fast float %9523, %9507
  %9525 = fmul fast float %9520, %8702
  %9526 = fmul fast float %9522, %8702
  %9527 = fmul fast float %9524, %8702
  %9528 = fmul fast float %9525, %9525
  %9529 = fmul fast float %9526, %9526
  %9530 = fadd fast float %9528, %9529
  %9531 = fmul fast float %9527, %9527
  %9532 = fadd fast float %9530, %9531
  %9533 = call float @dx.op.unary.f32(i32 24, float %9532)  ; Sqrt(value)
  %9534 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %9535 = fsub fast float %9533, %9534
  %9536 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %9537 = fmul fast float %9535, %9536
  %9538 = call float @dx.op.unary.f32(i32 7, float %9537)  ; Saturate(value)
  %9539 = fadd fast float %9538, -5.000000e-01
  %9540 = fmul fast float %9539, 2.000000e+00
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9543 = call float @dx.op.binary.f32(i32 36, float %9542, float %9540)  ; FMin(a,b)
  %9544 = fsub fast float -0.000000e+00, %9542
  %9545 = fcmp fast ogt float %9543, %9544
  br i1 %9545, label %9546, label %9851, !dx.controlflow.hints !172

; <label>:9546                                    ; preds = %9494
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 3
  %9549 = fcmp fast ogt float %9548, 0.000000e+00
  br i1 %9549, label %9550, label %9623, !dx.controlflow.hints !173

; <label>:9550                                    ; preds = %9546
  %9551 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9552 = extractvalue %dx.types.Dimensions %9551, 0
  %9553 = sitofp i32 %9552 to float
  %9554 = extractvalue %dx.types.Dimensions %9551, 1
  %9555 = sitofp i32 %9554 to float
  %9556 = fmul fast float %9495, %9553
  %9557 = fmul fast float %9496, %9555
  %9558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9559 = extractvalue %dx.types.CBufRet.f32 %9558, 1
  %9560 = fsub fast float -0.000000e+00, %9559
  %9561 = fptoui float %9560 to i32
  %9562 = fptoui float %9556 to i32
  %9563 = fptoui float %9557 to i32
  %9564 = and i32 %9561, 31
  %9565 = lshr i32 %9562, %9564
  %9566 = lshr i32 %9563, %9564
  %9567 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9561, i32 %9565, i32 %9566, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9568 = extractvalue %dx.types.ResRet.f32 %9567, 0
  %9569 = fcmp fast olt float %9568, -1.000000e+00
  %9570 = fcmp fast ogt float %9568, -1.000000e+00
  %9571 = select i1 %9570, float %6363, float 1.000000e+00
  %9572 = fadd fast float %9568, 1.000000e+00
  %9573 = fmul fast float %9571, %9572
  %9574 = call float @dx.op.unary.f32(i32 6, float %9573)  ; FAbs(value)
  %9575 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %9576 = fcmp fast oge float %9574, %9575
  %9577 = select i1 %9576, float 0x4197782600000000, float %9574
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9581 = extractvalue %dx.types.CBufRet.f32 %9578, 2
  %9582 = select i1 %9569, float %9579, float %9502
  %9583 = select i1 %9569, float %9580, float %9503
  %9584 = select i1 %9569, float %9581, float %9504
  %9585 = fmul fast float %9582, %9499
  %9586 = fmul fast float %9583, %9499
  %9587 = fmul fast float %9584, %9499
  %9588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9589 = extractvalue %dx.types.CBufRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.CBufRet.f32 %9588, 1
  %9591 = extractvalue %dx.types.CBufRet.f32 %9588, 2
  %9592 = select i1 %9569, float %9589, float %9509
  %9593 = select i1 %9569, float %9590, float %9510
  %9594 = select i1 %9569, float %9591, float %9511
  %9595 = fmul fast float %9592, %9500
  %9596 = fmul fast float %9593, %9500
  %9597 = fmul fast float %9594, %9500
  %9598 = fadd fast float %9595, %9585
  %9599 = fadd fast float %9596, %9586
  %9600 = fadd fast float %9597, %9587
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 0
  %9603 = extractvalue %dx.types.CBufRet.f32 %9601, 1
  %9604 = extractvalue %dx.types.CBufRet.f32 %9601, 2
  %9605 = select i1 %9569, float %9602, float %9516
  %9606 = select i1 %9569, float %9603, float %9517
  %9607 = select i1 %9569, float %9604, float %9518
  %9608 = fadd fast float %9598, %9605
  %9609 = fadd fast float %9599, %9606
  %9610 = fadd fast float %9600, %9607
  %9611 = fmul fast float %9608, %9577
  %9612 = fmul fast float %9609, %9577
  %9613 = fmul fast float %9610, %9577
  %9614 = fmul fast float %9611, %9611
  %9615 = fmul fast float %9612, %9612
  %9616 = fadd fast float %9614, %9615
  %9617 = fmul fast float %9613, %9613
  %9618 = fadd fast float %9616, %9617
  %9619 = call float @dx.op.unary.f32(i32 24, float %9618)  ; Sqrt(value)
  %9620 = fsub fast float %9619, %9534
  %9621 = fmul fast float %9620, %9536
  %9622 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  br label %9623

; <label>:9623                                    ; preds = %9550, %9546
  %9624 = phi float [ %9622, %9550 ], [ 1.000000e+00, %9546 ]
  %9625 = fmul fast float %9543, 5.000000e-01
  %9626 = fadd fast float %9625, 5.000000e-01
  %9627 = call float @dx.op.unary.f32(i32 22, float %9626)  ; Frc(value)
  %9628 = call float @dx.op.unary.f32(i32 27, float %9627)  ; Round_ni(value)
  %9629 = call float @dx.op.unary.f32(i32 22, float %9627)  ; Frc(value)
  %9630 = fmul fast float %9629, 2.000000e+00
  %9631 = fadd fast float %9630, -1.000000e+00
  %9632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9495, float %9496, float %9628, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9633 = extractvalue %dx.types.ResRet.f32 %9632, 0
  %9634 = extractvalue %dx.types.ResRet.f32 %9632, 1
  %9635 = extractvalue %dx.types.ResRet.f32 %9632, 2
  %9636 = extractvalue %dx.types.ResRet.f32 %9632, 3
  %9637 = fadd fast float %9633, -5.000000e-01
  %9638 = fadd fast float %9635, -5.000000e-01
  %9639 = fmul fast float %9637, 0xBFD5555560000000
  %9640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9638, float %9639)  ; FMad(a,b,c)
  %9641 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9634, float 0.000000e+00)  ; FMad(a,b,c)
  %9642 = fadd fast float %9641, %9636
  %9643 = fmul fast float %9637, -7.500000e-01
  %9644 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9638, float %9643)  ; FMad(a,b,c)
  %9645 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9634, float 0.000000e+00)  ; FMad(a,b,c)
  %9646 = fadd fast float %9645, %9636
  %9647 = call float @dx.op.binary.f32(i32 35, float %9640, float -1.000000e+00)  ; FMax(a,b)
  %9648 = call float @dx.op.binary.f32(i32 35, float %9642, float -1.000000e+00)  ; FMax(a,b)
  %9649 = call float @dx.op.binary.f32(i32 35, float %9644, float -1.000000e+00)  ; FMax(a,b)
  %9650 = call float @dx.op.binary.f32(i32 35, float %9646, float -1.000000e+00)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 36, float %9647, float 1.000000e+00)  ; FMin(a,b)
  %9652 = call float @dx.op.binary.f32(i32 36, float %9648, float 1.000000e+00)  ; FMin(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9649, float 1.000000e+00)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9650, float 1.000000e+00)  ; FMin(a,b)
  %9655 = fcmp fast olt float %9651, 0x3FEFFF8020000000
  br i1 %9655, label %9656, label %9771, !dx.controlflow.hints !174

; <label>:9656                                    ; preds = %9623
  %9657 = extractvalue %dx.types.CBufRet.f32 %9541, 3
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 0
  %9660 = extractvalue %dx.types.CBufRet.f32 %9658, 1
  %9661 = extractvalue %dx.types.CBufRet.f32 %9658, 2
  %9662 = extractvalue %dx.types.CBufRet.f32 %9658, 3
  %9663 = fsub fast float %9659, %9651
  %9664 = fsub fast float %9660, %9652
  %9665 = fsub fast float %9661, %9653
  %9666 = fsub fast float %9662, %9654
  %9667 = fmul fast float %9663, %9657
  %9668 = fmul fast float %9664, %9657
  %9669 = fmul fast float %9665, %9657
  %9670 = fmul fast float %9666, %9657
  %9671 = fadd fast float %9667, %9651
  %9672 = fadd fast float %9668, %9652
  %9673 = fsub fast float -0.000000e+00, %9672
  %9674 = fadd fast float %9669, %9653
  %9675 = fadd fast float %9670, %9654
  %9676 = fmul fast float %9671, %9671
  %9677 = fsub fast float %9672, %9676
  %9678 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9677)  ; FMax(a,b)
  %9679 = fdiv fast float 1.000000e+00, %9678
  %9680 = fmul fast float %9672, %9671
  %9681 = fsub fast float %9674, %9680
  %9682 = fsub fast float %9631, %9671
  %9683 = fmul fast float %9631, %9631
  %9684 = fsub fast float %9683, %9672
  %9685 = fmul fast float %9682, %9679
  %9686 = fmul fast float %9685, %9681
  %9687 = fsub fast float %9684, %9686
  %9688 = fmul fast float %9672, %9672
  %9689 = fsub fast float %9675, %9688
  %9690 = fmul fast float %9681, %9681
  %9691 = fmul fast float %9690, %9679
  %9692 = fsub fast float %9689, %9691
  %9693 = fdiv fast float %9687, %9692
  %9694 = fmul fast float %9681, %9693
  %9695 = fsub fast float %9682, %9694
  %9696 = fmul fast float %9695, %9679
  %9697 = fmul fast float %9696, %9671
  %9698 = fsub fast float 1.000000e+00, %9697
  %9699 = fmul fast float %9672, %9693
  %9700 = fsub fast float %9698, %9699
  %9701 = fmul fast float %9696, %9696
  %9702 = fmul fast float %9693, 4.000000e+00
  %9703 = fmul fast float %9702, %9700
  %9704 = fsub fast float %9701, %9703
  %9705 = call float @dx.op.unary.f32(i32 24, float %9704)  ; Sqrt(value)
  %9706 = fcmp fast oge float %9696, 0.000000e+00
  %9707 = fsub fast float -0.000000e+00, %9705
  %9708 = select i1 %9706, float %9707, float %9705
  %9709 = fsub fast float %9708, %9696
  %9710 = fdiv fast float %9709, %9693
  %9711 = fdiv fast float %9700, %9709
  %9712 = fmul fast float %9710, 5.000000e-01
  %9713 = fmul fast float %9711, 2.000000e+00
  %9714 = select i1 %9706, float %9712, float %9713
  %9715 = select i1 %9706, float %9713, float %9712
  %9716 = call float @dx.op.binary.f32(i32 35, float %9714, float %9715)  ; FMax(a,b)
  %9717 = call float @dx.op.binary.f32(i32 36, float %9714, float %9715)  ; FMin(a,b)
  %9718 = fcmp fast ogt float %9631, %9717
  br i1 %9718, label %9719, label %9729

; <label>:9719                                    ; preds = %9656
  %9720 = fsub fast float %9631, %9717
  %9721 = fsub fast float %9716, %9717
  %9722 = fmul fast float %9720, %9721
  %9723 = fmul fast float %9716, %9631
  %9724 = fadd fast float %9716, %9631
  %9725 = fmul fast float %9724, %9671
  %9726 = fadd fast float %9723, %9672
  %9727 = fsub fast float %9726, %9725
  %9728 = fdiv fast float %9727, %9722
  br label %9729

; <label>:9729                                    ; preds = %9719, %9656
  %9730 = phi float [ %9728, %9719 ], [ 0.000000e+00, %9656 ]
  %9731 = fcmp fast ogt float %9631, %9716
  %9732 = fsub fast float %9631, %9716
  br i1 %9731, label %9733, label %9743

; <label>:9733                                    ; preds = %9729
  %9734 = fsub fast float %9716, %9717
  %9735 = fmul fast float %9734, %9732
  %9736 = fmul fast float %9717, %9631
  %9737 = fadd fast float %9717, %9631
  %9738 = fmul fast float %9737, %9671
  %9739 = fsub fast float %9673, %9736
  %9740 = fadd fast float %9739, %9738
  %9741 = fdiv fast float %9740, %9735
  %9742 = fadd fast float %9741, %9730
  br label %9743

; <label>:9743                                    ; preds = %9733, %9729
  %9744 = phi float [ %9742, %9733 ], [ %9730, %9729 ]
  %9745 = fsub fast float %9631, %9717
  %9746 = fmul fast float %9745, %9732
  %9747 = fmul fast float %9717, %9716
  %9748 = fadd fast float %9717, %9716
  %9749 = fmul fast float %9748, %9671
  %9750 = fadd fast float %9747, %9672
  %9751 = fsub fast float %9750, %9749
  %9752 = fdiv fast float %9751, %9746
  %9753 = call float @dx.op.unary.f32(i32 7, float %9744)  ; Saturate(value)
  %9754 = fcmp fast oeq float %8438, 0.000000e+00
  %9755 = extractvalue %dx.types.CBufRet.f32 %9541, 0
  %9756 = fcmp fast oeq float %9755, 0.000000e+00
  %9757 = or i1 %9754, %9756
  %9758 = fmul fast float %9755, 2.000000e+00
  %9759 = fadd fast float %9542, %9543
  %9760 = fdiv fast float %9759, %9758
  %9761 = call float @dx.op.unary.f32(i32 7, float %9760)  ; Saturate(value)
  %9762 = fmul fast float %9761, 2.000000e+00
  %9763 = fsub fast float 3.000000e+00, %9762
  %9764 = fmul fast float %9761, %9761
  %9765 = fmul fast float %9764, %9763
  %9766 = select i1 %9757, float 1.000000e+00, float %9765
  %9767 = fmul fast float %9752, %8438
  %9768 = fadd fast float %9753, %9767
  %9769 = call float @dx.op.unary.f32(i32 7, float %9768)  ; Saturate(value)
  %9770 = fmul fast float %9766, %9769
  br label %9771

; <label>:9771                                    ; preds = %9743, %9623
  %9772 = phi float [ %9770, %9743 ], [ 0.000000e+00, %9623 ]
  %9773 = fsub fast float 1.000000e+00, %9772
  %9774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9495, float %9496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9775 = extractvalue %dx.types.ResRet.f32 %9774, 0
  %9776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.i32 %9776, 2
  %9778 = icmp eq i32 %9777, 0
  br i1 %9778, label %9784, label %9779

; <label>:9779                                    ; preds = %9771
  %9780 = call float @dx.op.unary.f32(i32 7, float %9772)  ; Saturate(value)
  %9781 = fadd fast float %9775, -1.000000e+00
  %9782 = fmul fast float %9780, %9781
  %9783 = fadd fast float %9782, 1.000000e+00
  br label %9784

; <label>:9784                                    ; preds = %9779, %9771
  %9785 = phi float [ %9783, %9779 ], [ %9773, %9771 ]
  br i1 %9549, label %9786, label %9804

; <label>:9786                                    ; preds = %9784
  %9787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9788 = extractvalue %dx.types.CBufRet.f32 %9787, 1
  %9789 = fsub fast float %9624, %9788
  %9790 = call float @dx.op.unary.f32(i32 7, float %9789)  ; Saturate(value)
  %9791 = fsub fast float %9624, %9548
  %9792 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9793 = fsub fast float %9790, %9792
  %9794 = fsub fast float %9626, %9792
  %9795 = fdiv fast float %9794, %9793
  %9796 = call float @dx.op.unary.f32(i32 7, float %9795)  ; Saturate(value)
  %9797 = fmul fast float %9796, 2.000000e+00
  %9798 = fsub fast float 3.000000e+00, %9797
  %9799 = fsub fast float %9775, %9785
  %9800 = fmul fast float %9796, %9796
  %9801 = fmul fast float %9800, %9799
  %9802 = fmul fast float %9801, %9798
  %9803 = fadd fast float %9802, %9785
  br label %9804

; <label>:9804                                    ; preds = %9786, %9784
  %9805 = phi float [ %9803, %9786 ], [ %9785, %9784 ]
  %9806 = call float @dx.op.binary.f32(i32 35, float %9775, float %9805)  ; FMax(a,b)
  %9807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9808 = extractvalue %dx.types.CBufRet.i32 %9807, 2
  %9809 = and i32 %9808, 1
  %9810 = icmp eq i32 %9809, 0
  %9811 = fcmp fast une float %9806, 1.000000e+00
  %9812 = and i1 %9811, %9810
  br i1 %9812, label %9813, label %9830

; <label>:9813                                    ; preds = %9804
  %9814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9495, float %9496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9815 = extractvalue %dx.types.ResRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.ResRet.f32 %9814, 1
  %9817 = extractvalue %dx.types.ResRet.f32 %9814, 2
  %9818 = fmul fast float %6410, %9815
  %9819 = fmul fast float %6410, %9816
  %9820 = fmul fast float %6410, %9817
  %9821 = fcmp fast ogt float %9775, 0x3FEFFF2E40000000
  %9822 = fsub fast float 1.000000e+00, %9806
  %9823 = fsub fast float 1.000000e+00, %9775
  %9824 = fdiv fast float %9822, %9823
  %9825 = call float @dx.op.unary.f32(i32 7, float %9824)  ; Saturate(value)
  %9826 = select i1 %9821, float 0.000000e+00, float %9825
  %9827 = fmul fast float %9818, %9826
  %9828 = fmul fast float %9819, %9826
  %9829 = fmul fast float %9820, %9826
  br label %9830

; <label>:9830                                    ; preds = %9813, %9804
  %9831 = phi float [ 0.000000e+00, %9804 ], [ %9827, %9813 ]
  %9832 = phi float [ 0.000000e+00, %9804 ], [ %9828, %9813 ]
  %9833 = phi float [ 0.000000e+00, %9804 ], [ %9829, %9813 ]
  %9834 = fmul fast float %9806, %9473
  %9835 = call float @dx.op.dot3.f32(i32 55, float %9806, float %9806, float %9806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9836 = call float @dx.op.dot3.f32(i32 55, float %9831, float %9832, float %9833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9837 = select i1 %251, float %9835, float %9806
  %9838 = select i1 %251, float 1.000000e+00, float %9806
  %9839 = select i1 %251, float %9836, float %9831
  %9840 = select i1 %251, float 0.000000e+00, float %9832
  %9841 = select i1 %251, float 0.000000e+00, float %9833
  %9842 = fmul fast float %9837, %9485
  %9843 = fmul fast float %9837, %9486
  %9844 = fmul fast float %9838, %9487
  %9845 = fadd fast float %9842, %9839
  %9846 = fadd fast float %9843, %9840
  %9847 = fadd fast float %9841, %9844
  %9848 = fmul fast float %9837, %9488
  %9849 = fmul fast float %9837, %9489
  %9850 = fmul fast float %9838, %9490
  br label %9851

; <label>:9851                                    ; preds = %9830, %9494, %9466, %8698
  %9852 = phi float [ %8703, %8698 ], [ %9485, %9466 ], [ %9845, %9830 ], [ %9485, %9494 ]
  %9853 = phi float [ %8704, %8698 ], [ %9486, %9466 ], [ %9846, %9830 ], [ %9486, %9494 ]
  %9854 = phi float [ %8705, %8698 ], [ %9487, %9466 ], [ %9847, %9830 ], [ %9487, %9494 ]
  %9855 = phi float [ %8706, %8698 ], [ %9488, %9466 ], [ %9848, %9830 ], [ %9488, %9494 ]
  %9856 = phi float [ %8707, %8698 ], [ %9489, %9466 ], [ %9849, %9830 ], [ %9489, %9494 ]
  %9857 = phi float [ %8708, %8698 ], [ %9490, %9466 ], [ %9850, %9830 ], [ %9490, %9494 ]
  %9858 = phi float [ %8709, %8698 ], [ %9473, %9466 ], [ %9834, %9830 ], [ %9473, %9494 ]
  %9859 = fmul fast float %6355, %102
  %9860 = fmul fast float %6356, %103
  %9861 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9862 = call float @dx.op.unary.f32(i32 7, float %9860)  ; Saturate(value)
  %9863 = select i1 %8448, i32 2, i32 0
  %9864 = or i32 %9863, 1
  %9865 = uitofp i32 %9864 to float
  %9866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9861, float %9862, float %9865, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9867 = extractvalue %dx.types.ResRet.f32 %9866, 0
  %9868 = extractvalue %dx.types.ResRet.f32 %9866, 1
  %9869 = extractvalue %dx.types.ResRet.f32 %9866, 2
  %9870 = extractvalue %dx.types.ResRet.f32 %9866, 3
  %9871 = add nuw nsw i32 %9863, 2
  %9872 = uitofp i32 %9871 to float
  %9873 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9861, float %9862, float %9872, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9874 = extractvalue %dx.types.ResRet.f32 %9873, 0
  %9875 = extractvalue %dx.types.ResRet.f32 %9873, 1
  %9876 = extractvalue %dx.types.ResRet.f32 %9873, 2
  %9877 = extractvalue %dx.types.ResRet.f32 %9873, 3
  %9878 = call float @dx.op.binary.f32(i32 35, float %9868, float %9869)  ; FMax(a,b)
  %9879 = call float @dx.op.binary.f32(i32 35, float %9867, float %9878)  ; FMax(a,b)
  %9880 = call float @dx.op.binary.f32(i32 35, float %9879, float %9870)  ; FMax(a,b)
  %9881 = call float @dx.op.binary.f32(i32 36, float %9875, float %9876)  ; FMin(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9874, float %9881)  ; FMin(a,b)
  %9883 = call float @dx.op.binary.f32(i32 36, float %9882, float %9877)  ; FMin(a,b)
  %9884 = fmul fast float %9880, 2.550000e+02
  %9885 = fadd fast float %9884, 0x3F70101020000000
  %9886 = fptoui float %9885 to i32
  %9887 = fmul fast float %9883, 2.550000e+02
  %9888 = fadd fast float %9887, 0x3F70101020000000
  %9889 = fptoui float %9888 to i32
  %9890 = icmp ult i32 %9886, %9889
  br i1 %9890, label %9891, label %10058

; <label>:9891                                    ; preds = %9851
  %9892 = fcmp fast ogt float %92, 9.843750e-01
  %9893 = fadd fast float %8702, -4.000000e+00
  %9894 = select i1 %9892, float -4.000000e+00, float %9893
  %9895 = call float @dx.op.binary.f32(i32 35, float %9894, float 0.000000e+00)  ; FMax(a,b)
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = fadd fast float %9897, %9895
  %9899 = extractvalue %dx.types.CBufRet.f32 %9896, 2
  %9900 = fmul fast float %9898, %9899
  %9901 = call float @dx.op.unary.f32(i32 23, float %9900)  ; Log(value)
  %9902 = extractvalue %dx.types.CBufRet.f32 %9896, 3
  %9903 = fmul fast float %9902, %9901
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 2
  %9906 = fmul fast float %9903, %9905
  %9907 = call float @dx.op.unary.f32(i32 7, float %9906)  ; Saturate(value)
  %9908 = uitofp i32 %9886 to float
  %9909 = uitofp i32 %9889 to float
  %9910 = fadd fast float %9908, 5.000000e-01
  %9911 = fadd fast float %9909, 5.000000e-01
  %9912 = fmul fast float %9905, %9910
  %9913 = fmul fast float %9905, %9911
  %9914 = fadd fast float %9912, 0x3F0FFB4800000000
  %9915 = fadd fast float %9913, 0xBF0FFB4800000000
  %9916 = call float @dx.op.binary.f32(i32 35, float %9907, float %9914)  ; FMax(a,b)
  %9917 = call float @dx.op.binary.f32(i32 36, float %9916, float %9915)  ; FMin(a,b)
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 1
  %9920 = extractvalue %dx.types.CBufRet.f32 %9918, 2
  %9921 = extractvalue %dx.types.CBufRet.f32 %9918, 0
  %9922 = select i1 %8448, float %9921, float 0.000000e+00
  %9923 = fmul fast float %9919, %9917
  %9924 = fadd fast float %9922, %9923
  %9925 = fadd fast float %9922, %9920
  %9926 = fsub fast float %9919, %9920
  %9927 = fadd fast float %9926, %9922
  %9928 = call float @dx.op.binary.f32(i32 35, float %9924, float %9925)  ; FMax(a,b)
  %9929 = call float @dx.op.binary.f32(i32 36, float %9928, float %9927)  ; FMin(a,b)
  %9930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9861, float %9862, float %9929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9931 = extractvalue %dx.types.ResRet.f32 %9930, 0
  %9932 = extractvalue %dx.types.ResRet.f32 %9930, 1
  %9933 = extractvalue %dx.types.ResRet.f32 %9930, 2
  %9934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9935 = extractvalue %dx.types.CBufRet.i32 %9934, 0
  %9936 = extractvalue %dx.types.CBufRet.i32 %9934, 1
  %9937 = uitofp i32 %9935 to float
  %9938 = uitofp i32 %9936 to float
  %9939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9939, 0
  %9941 = extractvalue %dx.types.CBufRet.f32 %9939, 1
  %9942 = fmul fast float %9937, %9861
  %9943 = fmul fast float %9938, %9862
  %9944 = fadd fast float %9942, -5.000000e-01
  %9945 = fadd fast float %9943, -5.000000e-01
  %9946 = call float @dx.op.unary.f32(i32 22, float %9944)  ; Frc(value)
  %9947 = call float @dx.op.unary.f32(i32 22, float %9945)  ; Frc(value)
  %9948 = fmul fast float %9946, %9946
  %9949 = fmul fast float %9948, %9946
  %9950 = fsub fast float 3.000000e+00, %9946
  %9951 = fmul fast float %9948, %9950
  %9952 = fmul fast float %9946, 3.000000e+00
  %9953 = fmul fast float %9949, 3.000000e+00
  %9954 = fmul fast float %9948, 6.000000e+00
  %9955 = fsub fast float %9953, %9954
  %9956 = fadd fast float %9955, 4.000000e+00
  %9957 = fmul fast float %9956, 0x3FC5555560000000
  %9958 = fmul fast float %9949, -3.000000e+00
  %9959 = fadd fast float %9948, %9946
  %9960 = fmul fast float %9959, 3.000000e+00
  %9961 = fadd fast float %9958, 1.000000e+00
  %9962 = fadd fast float %9961, %9960
  %9963 = fmul fast float %9949, 0x3FC5555560000000
  %9964 = fmul fast float %9947, %9947
  %9965 = fmul fast float %9964, %9947
  %9966 = fsub fast float 3.000000e+00, %9947
  %9967 = fmul fast float %9964, %9966
  %9968 = fmul fast float %9947, 3.000000e+00
  %9969 = fmul fast float %9965, 3.000000e+00
  %9970 = fmul fast float %9964, 6.000000e+00
  %9971 = fsub fast float %9969, %9970
  %9972 = fadd fast float %9971, 4.000000e+00
  %9973 = fmul fast float %9972, 0x3FC5555560000000
  %9974 = fmul fast float %9965, -3.000000e+00
  %9975 = fadd fast float %9964, %9947
  %9976 = fmul fast float %9975, 3.000000e+00
  %9977 = fadd fast float %9974, 1.000000e+00
  %9978 = fadd fast float %9977, %9976
  %9979 = fmul fast float %9965, 0x3FC5555560000000
  %9980 = fadd fast float %9946, 1.000000e+00
  %9981 = fsub fast float 1.000000e+00, %9952
  %9982 = fadd fast float %9981, %9951
  %9983 = fadd fast float %9982, %9956
  %9984 = fmul fast float %9983, 0x3FC5555560000000
  %9985 = fdiv fast float %9957, %9984
  %9986 = fsub fast float %9980, %9985
  %9987 = fsub fast float 1.000000e+00, %9946
  %9988 = fadd fast float %9962, %9949
  %9989 = fmul fast float %9988, 0x3FC5555560000000
  %9990 = fdiv fast float %9963, %9989
  %9991 = fadd fast float %9987, %9990
  %9992 = fadd fast float %9947, 1.000000e+00
  %9993 = fsub fast float 1.000000e+00, %9968
  %9994 = fadd fast float %9993, %9967
  %9995 = fadd fast float %9994, %9972
  %9996 = fmul fast float %9995, 0x3FC5555560000000
  %9997 = fdiv fast float %9973, %9996
  %9998 = fsub fast float %9992, %9997
  %9999 = fsub fast float 1.000000e+00, %9947
  %10000 = fadd fast float %9978, %9965
  %10001 = fmul fast float %10000, 0x3FC5555560000000
  %10002 = fdiv fast float %9979, %10001
  %10003 = fadd fast float %10002, %9999
  %10004 = fmul fast float %9986, %9940
  %10005 = fsub fast float %9861, %10004
  %10006 = fmul fast float %9991, %9940
  %10007 = fadd fast float %10006, %9861
  %10008 = fmul fast float %10003, %9941
  %10009 = fadd fast float %10008, %9862
  %10010 = fmul fast float %9998, %9941
  %10011 = fsub fast float %9862, %10010
  %10012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %10005, float %10011, float %9929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10013 = extractvalue %dx.types.ResRet.f32 %10012, 0
  %10014 = extractvalue %dx.types.ResRet.f32 %10012, 1
  %10015 = extractvalue %dx.types.ResRet.f32 %10012, 2
  %10016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %10007, float %10011, float %9929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10017 = extractvalue %dx.types.ResRet.f32 %10016, 0
  %10018 = extractvalue %dx.types.ResRet.f32 %10016, 1
  %10019 = extractvalue %dx.types.ResRet.f32 %10016, 2
  %10020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %10005, float %10009, float %9929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10021 = extractvalue %dx.types.ResRet.f32 %10020, 0
  %10022 = extractvalue %dx.types.ResRet.f32 %10020, 1
  %10023 = extractvalue %dx.types.ResRet.f32 %10020, 2
  %10024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %10007, float %10009, float %9929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10025 = extractvalue %dx.types.ResRet.f32 %10024, 0
  %10026 = extractvalue %dx.types.ResRet.f32 %10024, 1
  %10027 = extractvalue %dx.types.ResRet.f32 %10024, 2
  %10028 = fsub fast float %10021, %10013
  %10029 = fsub fast float %10022, %10014
  %10030 = fsub fast float %10023, %10015
  %10031 = fmul fast float %10028, %10001
  %10032 = fmul fast float %10029, %10001
  %10033 = fmul fast float %10030, %10001
  %10034 = fadd fast float %10031, %10013
  %10035 = fadd fast float %10032, %10014
  %10036 = fadd fast float %10033, %10015
  %10037 = fsub fast float %10025, %10017
  %10038 = fsub fast float %10026, %10018
  %10039 = fsub fast float %10027, %10019
  %10040 = fmul fast float %10037, %10001
  %10041 = fmul fast float %10038, %10001
  %10042 = fmul fast float %10039, %10001
  %10043 = fsub fast float %10017, %10034
  %10044 = fadd fast float %10043, %10040
  %10045 = fsub fast float %10018, %10035
  %10046 = fadd fast float %10045, %10041
  %10047 = fsub fast float %10019, %10036
  %10048 = fadd fast float %10047, %10042
  %10049 = fmul fast float %10044, %9989
  %10050 = fmul fast float %10046, %9989
  %10051 = fmul fast float %10048, %9989
  %10052 = fadd fast float %10049, %10034
  %10053 = fadd fast float %10050, %10035
  %10054 = fadd fast float %10051, %10036
  %10055 = fmul fast float %10052, %6410
  %10056 = fmul fast float %10053, %6410
  %10057 = fmul fast float %10054, %6410
  br label %10058

; <label>:10058                                   ; preds = %9891, %9851
  %10059 = phi float [ %9931, %9891 ], [ 1.000000e+00, %9851 ]
  %10060 = phi float [ %9932, %9891 ], [ 1.000000e+00, %9851 ]
  %10061 = phi float [ %9933, %9891 ], [ 1.000000e+00, %9851 ]
  %10062 = phi float [ %10055, %9891 ], [ 0.000000e+00, %9851 ]
  %10063 = phi float [ %10056, %9891 ], [ 0.000000e+00, %9851 ]
  %10064 = phi float [ %10057, %9891 ], [ 0.000000e+00, %9851 ]
  %10065 = fmul fast float %10059, %9858
  %10066 = call float @dx.op.dot3.f32(i32 55, float %10059, float %10060, float %10061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10067 = call float @dx.op.dot3.f32(i32 55, float %10062, float %10063, float %10064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10068 = select i1 %251, float %10066, float %10059
  %10069 = select i1 %251, float %10066, float %10060
  %10070 = select i1 %251, float 1.000000e+00, float %10061
  %10071 = select i1 %251, float %10067, float %10062
  %10072 = select i1 %251, float 0.000000e+00, float %10063
  %10073 = select i1 %251, float 0.000000e+00, float %10064
  %10074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10075 = extractvalue %dx.types.CBufRet.i32 %10074, 3
  %10076 = and i32 %10075, 3
  %10077 = icmp ne i32 %10076, 0
  %10078 = and i32 %10075, 4
  %10079 = icmp ne i32 %10078, 0
  %10080 = and i1 %10077, %10079
  %10081 = and i1 %251, %10080
  br i1 %10081, label %10082, label %10088

; <label>:10082                                   ; preds = %10058
  %10083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10084 = extractvalue %dx.types.CBufRet.f32 %10083, 1
  %10085 = fadd fast float %10065, -1.000000e+00
  %10086 = fmul fast float %10084, %10085
  %10087 = fadd fast float %10086, 1.000000e+00
  br label %10088

; <label>:10088                                   ; preds = %10082, %10058
  %10089 = phi float [ %10087, %10082 ], [ %10065, %10058 ]
  %10090 = fadd fast float %9855, %9852
  %10091 = fmul fast float %10068, %10090
  %10092 = fadd fast float %10091, %10071
  %10093 = fadd fast float %9856, %9853
  %10094 = fmul fast float %10069, %10093
  %10095 = fadd fast float %10094, %10072
  %10096 = extractvalue %dx.types.CBufRet.f32 %6409, 0
  br i1 %251, label %10097, label %10112

; <label>:10097                                   ; preds = %10088
  %10098 = fadd fast float %10092, %10095
  %10099 = fmul fast float %10096, %10098
  %10100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10101 = extractvalue %dx.types.CBufRet.f32 %10100, 3
  %10102 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %10103 = fsub fast float %8435, %8429
  %10104 = fadd fast float %10103, %8436
  %10105 = fsub fast float %10104, %10102
  %10106 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %10107 = fmul fast float %10105, %10106
  %10108 = call float @dx.op.unary.f32(i32 7, float %10107)  ; Saturate(value)
  %10109 = fsub fast float %10108, %10101
  %10110 = fmul fast float %10109, %10089
  %10111 = fadd fast float %10110, %10101
  br label %10136

; <label>:10112                                   ; preds = %10088
  %10113 = fadd fast float %9857, %9854
  %10114 = fmul fast float %10070, %10113
  %10115 = fadd fast float %10114, %10073
  %10116 = fmul fast float %10096, %10092
  %10117 = fmul fast float %10096, %10095
  %10118 = fmul fast float %10096, %10115
  %10119 = call float @dx.op.binary.f32(i32 35, float %10117, float %10118)  ; FMax(a,b)
  %10120 = call float @dx.op.binary.f32(i32 35, float %10116, float %10119)  ; FMax(a,b)
  %10121 = call float @dx.op.binary.f32(i32 35, float %10120, float 1.000000e+00)  ; FMax(a,b)
  %10122 = fcmp fast ugt float %10121, 0x3F10000000000000
  br i1 %10122, label %10124, label %10123

; <label>:10123                                   ; preds = %10112
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10124

; <label>:10124                                   ; preds = %10123, %10112
  %10125 = add i32 %56, 356
  %10126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %10125, i32 undef)  ; BufferLoad(srv,index,wot)
  %10127 = extractvalue %dx.types.ResRet.i32 %10126, 0
  %10128 = and i32 %10127, 32
  %10129 = icmp eq i32 %10128, 0
  br i1 %10129, label %10136, label %10130

; <label>:10130                                   ; preds = %10124
  %10131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10132 = extractvalue %dx.types.CBufRet.f32 %10131, 0
  %10133 = fmul fast float %10132, 0x3FE99999A0000000
  %10134 = fadd fast float %10132, %10116
  %10135 = fadd fast float %10133, %10118
  br label %10136

; <label>:10136                                   ; preds = %10130, %10124, %10097
  %10137 = phi float [ %10099, %10097 ], [ %10134, %10130 ], [ %10116, %10124 ]
  %10138 = phi float [ %10111, %10097 ], [ %10117, %10130 ], [ %10117, %10124 ]
  %10139 = phi float [ 1.000000e+00, %10097 ], [ %10135, %10130 ], [ %10118, %10124 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10140 = call float @dx.op.binary.f32(i32 36, float %10137, float 3.225500e+04)  ; FMin(a,b)
  %10141 = call float @dx.op.binary.f32(i32 36, float %10138, float 3.225500e+04)  ; FMin(a,b)
  %10142 = call float @dx.op.binary.f32(i32 36, float %10139, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10140)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10141)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10142)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !33}
!33 = !{i32 0, i32 5}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!70 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !95}
!72 = !{!73, !91, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !90}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !76}
!86 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 8, i8 0, !79}
!87 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 9, i8 0, !76}
!88 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 10, i8 0, !89}
!89 = !{i32 3, i32 13}
!90 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92, !93}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!93 = !{i32 1, !"SV_Target", i8 9, i8 16, !94, i8 0, i32 1, i8 4, i32 1, i8 0, !76}
!94 = !{i32 1}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !104, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

