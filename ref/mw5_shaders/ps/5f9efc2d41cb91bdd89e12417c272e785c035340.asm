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
;
; shader hash: 0b4b4d24c6ffd1a50fdbc4a66b15f6f6
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
; Number of inputs: 44, outputs: 4
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
  %160 = fmul fast float %102, 5.000000e-01
  %161 = fmul fast float %103, 5.000000e-01
  %162 = fptosi float %160 to i32
  %163 = fptosi float %161 to i32
  %164 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %162, i32 %163, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = lshr i32 %165, 18
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F4C00EBA0000000
  %169 = call float @dx.op.unary.f32(i32 21, float %168)  ; Exp(value)
  %170 = fadd fast float %169, -1.000000e+00
  %171 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %172 = extractvalue %dx.types.Dimensions %171, 0
  %173 = sitofp i32 %172 to float
  %174 = extractvalue %dx.types.Dimensions %171, 1
  %175 = sitofp i32 %174 to float
  %176 = fcmp fast oge float %160, %173
  %177 = fcmp fast oge float %161, %175
  %178 = or i1 %176, %177
  %179 = select i1 %178, float 0x4197782600000000, float %170
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %183 = fmul fast float %181, %102
  %184 = fmul fast float %182, %103
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 114688
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %188, float %183, float 0.000000e+00
  %190 = select i1 %188, float %184, float 0.000000e+00
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %51, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fmul fast float %192, 2.550000e+02
  %194 = fptoui float %193 to i32
  %195 = select i1 %188, i32 %194, i32 0
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %215

; <label>:204                                     ; preds = %0
  %205 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %206 = fmul fast float %205, %103
  %207 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %208 = fmul fast float %207, %102
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %208, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast olt float %211, %213
  br label %218

; <label>:215                                     ; preds = %0
  %216 = icmp eq i32 %201, 0
  %217 = and i1 %200, %216
  br label %218

; <label>:218                                     ; preds = %215, %204
  %219 = phi i1 [ %214, %204 ], [ %217, %215 ]
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %221, 0x3FE3C6EF40000000
  %223 = frem fast float %102, 2.560000e+02
  %224 = frem fast float %103, 2.560000e+02
  %225 = fptoui float %223 to i32
  %226 = fptoui float %224 to i32
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = extractvalue %dx.types.ResRet.f32 %227, 1
  %230 = fadd fast float %228, %222
  %231 = fadd fast float %229, %222
  %232 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %233 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %234 = add i32 %56, 156
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = shl i32 %236, 4
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %236, 7
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %236, 22
  %244 = shl nuw nsw i32 %243, 5
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %56, 216
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %248, 8
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %248, 16
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = add i32 %56, 36
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %56, 288
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %271, 0x3F50624DE0000000
  %275 = fmul fast float %273, 0x3F50624DE0000000
  %276 = add i32 %56, 172
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = shl i32 %278, 4
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %278, 7
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %56, 232
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %290, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %290, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = add i32 %56, 52
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %56, 304
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %56, 188
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %56, 248
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %332, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %332, 16
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = add i32 %56, 68
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %56, 320
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %56, 204
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %362, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = add i32 %56, 264
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %374, 8
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %374, 16
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = add i32 %56, 84
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %56, 336
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %56, 348
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 32
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %404, 64
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %404, 128
  %410 = icmp eq i32 %409, 0
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

; <label>:415                                     ; preds = %218
  %416 = add i32 %56, 488
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = add i32 %418, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %420, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = fmul fast float %425, %86
  %427 = fmul fast float %422, %87
  %428 = fmul fast float %423, %88
  %429 = fmul fast float %424, %89
  br label %430

; <label>:430                                     ; preds = %415, %218
  %431 = phi float [ %89, %218 ], [ %429, %415 ]
  %432 = phi float [ %88, %218 ], [ %428, %415 ]
  %433 = phi float [ %87, %218 ], [ %427, %415 ]
  %434 = phi float [ %86, %218 ], [ %426, %415 ]
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %458, label %439

; <label>:439                                     ; preds = %430
  %440 = add i32 %56, 44
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %433, float 1.000000e+00
  %446 = add i32 %56, 60
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %432, float 1.000000e+00
  %452 = add i32 %56, 76
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %431, float 1.000000e+00
  br label %458

; <label>:458                                     ; preds = %439, %430
  %459 = phi float [ %431, %430 ], [ %457, %439 ]
  %460 = phi float [ %432, %430 ], [ %451, %439 ]
  %461 = phi float [ %433, %430 ], [ %445, %439 ]
  %462 = lshr i32 %436, 20
  %463 = and i32 %462, 3
  %464 = add nuw nsw i32 %463, 1
  %465 = add i32 %56, 24
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %56, 28
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = or i32 %470, %467
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %1233, label %473

; <label>:473                                     ; preds = %458
  %474 = and i32 %467, 262144
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %59, float 1.000000e+00
  %477 = select i1 %475, float %60, float 0.000000e+00
  %478 = select i1 %475, float %61, float 0.000000e+00
  %479 = select i1 %475, float %62, float 1.000000e+00
  %480 = select i1 %475, float %63, float %84
  %481 = select i1 %475, float %64, float %85
  %482 = add i32 %56, 284
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %486, 0x3F50624DE0000000
  %488 = add i32 %56, 88
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = and i32 %491, 255
  %493 = lshr i32 %490, 24
  %494 = add i32 %56, 292
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %56, 32
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 22
  %505 = shl nuw nsw i32 %504, 5
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = shl i32 %503, 4
  %508 = and i32 %507, 32752
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %503, 7
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %515 = fmul fast float %514, 1.000000e+03
  %516 = fmul fast float %274, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fadd fast float %517, %264
  %519 = fmul fast float %275, %515
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = fadd fast float %520, %266
  %522 = fmul fast float %487, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fmul fast float %523, 0x401921FB60000000
  %525 = fadd fast float %524, %506
  %526 = call float @dx.op.unary.f32(i32 13, float %525)  ; Sin(value)
  %527 = call float @dx.op.unary.f32(i32 12, float %525)  ; Cos(value)
  %528 = fsub fast float -0.000000e+00, %526
  %529 = fadd fast float %480, -5.000000e-01
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fmul fast float %498, %529
  %532 = fmul fast float %500, %530
  %533 = fadd fast float %531, 5.000000e-01
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fmul fast float %509, %533
  %536 = fmul fast float %512, %534
  %537 = fmul fast float %527, %535
  %538 = call float @dx.op.tertiary.f32(i32 46, float %528, float %536, float %537)  ; FMad(a,b,c)
  %539 = fmul fast float %526, %535
  %540 = call float @dx.op.tertiary.f32(i32 46, float %527, float %536, float %539)  ; FMad(a,b,c)
  %541 = fadd fast float %518, %538
  %542 = fadd fast float %521, %540
  %543 = icmp ugt i32 %492, 1
  %544 = icmp ugt i32 %490, 33554431
  %545 = or i1 %544, %543
  br i1 %545, label %546, label %571

; <label>:546                                     ; preds = %473
  %547 = add i32 %56, 228
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = fmul fast float %514, %551
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = mul nuw nsw i32 %492, %493
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %553, %555
  %557 = call float @dx.op.unary.f32(i32 27, float %556)  ; Round_ni(value)
  %558 = fptoui float %557 to i32
  %559 = urem i32 %558, %492
  %560 = udiv i32 %558, %493
  %561 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = uitofp i32 %559 to float
  %564 = uitofp i32 %560 to float
  %565 = fadd fast float %561, %563
  %566 = fadd fast float %562, %564
  %567 = uitofp i32 %492 to float
  %568 = uitofp i32 %493 to float
  %569 = fdiv fast float %565, %567
  %570 = fdiv fast float %566, %568
  br label %571

; <label>:571                                     ; preds = %546, %473
  %572 = phi float [ %569, %546 ], [ %541, %473 ]
  %573 = phi float [ %570, %546 ], [ %542, %473 ]
  %574 = and i32 %467, 16777216
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %685, label %576

; <label>:576                                     ; preds = %571
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = fadd fast float %578, %157
  %582 = fadd fast float %579, %158
  %583 = fadd fast float %580, %159
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = icmp eq i32 %57, 65535
  br i1 %587, label %682, label %588

; <label>:588                                     ; preds = %576
  %589 = lshr i32 %57, 1
  %590 = shl i32 %589, 2
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %57, 1
  %594 = icmp ne i32 %593, 0
  %595 = lshr i32 %592, 16
  %596 = and i32 %592, 65535
  %597 = select i1 %594, i32 %595, i32 %596
  %598 = icmp eq i32 %597, 65535
  br i1 %598, label %678, label %599

; <label>:599                                     ; preds = %588
  %600 = mul nuw nsw i32 %597, 40
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %600, 12
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %600, 24
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %600, 36
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = fsub fast float %581, %602
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fmul fast float %617, %618
  %622 = fmul fast float %617, %619
  %623 = fmul fast float %617, %620
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fmul fast float %627, %607
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = shl i32 %57, 2
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %637, %dx.types.Handle %51, float %638, float %639, float %640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fadd fast float %645, 5.000000e-01
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = fsub fast float %621, %624
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fadd fast float %624, 1.250000e-01
  %661 = fadd fast float %660, %657
  %662 = fadd fast float %661, %651
  %663 = fadd fast float %625, 1.250000e-01
  %664 = fadd fast float %663, %658
  %665 = fadd fast float %664, %652
  %666 = fadd fast float %626, 1.250000e-01
  %667 = fadd fast float %666, %659
  %668 = fadd fast float %667, %653
  %669 = fmul fast float %662, %612
  %670 = fmul fast float %665, %613
  %671 = fmul fast float %668, %614
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %675, %dx.types.Handle %49, float %669, float %670, float %671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  br label %678

; <label>:678                                     ; preds = %599, %588
  %679 = phi float [ %677, %599 ], [ -1.000000e+00, %588 ]
  %680 = fadd fast float %679, %586
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %678, %576
  %683 = phi float [ %681, %678 ], [ %586, %576 ]
  %684 = fmul fast float %683, %434
  br label %685

; <label>:685                                     ; preds = %682, %571
  %686 = phi float [ %684, %682 ], [ %434, %571 ]
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 256
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %737, label %691

; <label>:691                                     ; preds = %685
  %692 = add i32 %56, 424
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = add i32 %56, 100
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = shl i32 %701, 4
  %703 = and i32 %702, 32752
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %701, 7
  %706 = and i32 %705, 32752
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = fsub fast float 1.000000e+00, %686
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %710 = bitcast float %686 to i32
  %711 = sitofp i32 %710 to float
  %712 = fadd fast float %711, 0xC1CFBF8940000000
  %713 = fmul fast float %707, %712
  %714 = fadd fast float %713, 0x41CFBF8940000000
  %715 = fptosi float %714 to i32
  %716 = bitcast i32 %715 to float
  %717 = bitcast float %709 to i32
  %718 = sitofp i32 %717 to float
  %719 = fadd fast float %718, 0xC1CFBF8940000000
  %720 = fmul fast float %719, %707
  %721 = fadd fast float %720, 0x41CFBF8940000000
  %722 = fptosi float %721 to i32
  %723 = bitcast i32 %722 to float
  %724 = fmul fast float %716, %704
  %725 = fmul fast float %723, %704
  %726 = fsub fast float %709, %724
  %727 = fadd fast float %725, %709
  %728 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = fsub fast float %698, %728
  %731 = fsub fast float %729, %728
  %732 = bitcast float %731 to i32
  %733 = sub nsw i32 2129859010, %732
  %734 = bitcast i32 %733 to float
  %735 = fmul fast float %734, %730
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  br label %737

; <label>:737                                     ; preds = %691, %685
  %738 = phi float [ %736, %691 ], [ %686, %685 ]
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 128
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %759, label %743

; <label>:743                                     ; preds = %737
  %744 = add i32 %56, 408
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 524288
  %754 = icmp ne i32 %753, 0
  %755 = fcmp fast ogt float %750, 0x3FE0101020000000
  %756 = select i1 %755, float 1.000000e+00, float 0.000000e+00
  %757 = select i1 %754, float %756, float %750
  %758 = fmul fast float %757, %738
  br label %759

; <label>:759                                     ; preds = %743, %737
  %760 = phi float [ %758, %743 ], [ %738, %737 ]
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %963, label %765

; <label>:765                                     ; preds = %759
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %56, 360
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  %778 = and i32 %767, 255
  %779 = uitofp i32 %778 to float
  %780 = lshr i32 %767, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %777, %779
  %784 = fadd fast float %783, %782
  %785 = fmul fast float %784, 0x3F70101000000000
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 512
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %798, label %790

; <label>:790                                     ; preds = %765
  %791 = add i32 %56, 440
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  br label %798

; <label>:798                                     ; preds = %790, %765
  %799 = phi float [ %797, %790 ], [ 1.000000e+00, %765 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 33554432
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %910, label %804

; <label>:804                                     ; preds = %798
  %805 = add i32 %56, 224
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 65535
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = lshr i32 %807, 16
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = add i32 %56, 228
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = lshr i32 %818, 24
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = and i32 %818, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %818, 8
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %818, 16
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = add i32 %56, 220
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 24
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = and i32 %835, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %835, 8
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = lshr i32 %835, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = bitcast float %774 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %774, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %774
  %859 = fmul fast float %858, %857
  %860 = bitcast float %775 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %775, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %775
  %869 = fmul fast float %868, %867
  %870 = bitcast float %776 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %776, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %776
  %879 = fmul fast float %878, %877
  %880 = fsub fast float %859, %841
  %881 = fsub fast float %869, %845
  %882 = fsub fast float %879, %849
  %883 = fmul fast float %880, %809
  %884 = fmul fast float %881, %811
  %885 = fmul fast float %882, %816
  %886 = fadd fast float %883, %824
  %887 = fadd fast float %884, %828
  %888 = fadd fast float %885, %832
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = fmul fast float %889, %889
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fsub fast float %892, %774
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fmul fast float %895, %799
  %899 = fmul fast float %896, %799
  %900 = fmul fast float %897, %799
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %821, %785
  %905 = fsub fast float %904, %838
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fsub fast float %906, %785
  %908 = fmul fast float %907, %799
  %909 = fadd fast float %908, %785
  br label %963

; <label>:910                                     ; preds = %798
  %911 = and i32 %801, 134217728
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %947, label %913

; <label>:913                                     ; preds = %910
  %914 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fmul fast float %917, %799
  %921 = fmul fast float %918, %799
  %922 = fmul fast float %919, %799
  %923 = fadd fast float %920, 5.000000e-01
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = fmul fast float %923, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %926
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %926
  %934 = fmul fast float %924, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %927
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %927
  %939 = fmul fast float %925, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %928
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %928
  %944 = fmul fast float %933, %933
  %945 = fmul fast float %938, %938
  %946 = fmul fast float %943, %943
  br label %963

; <label>:947                                     ; preds = %910
  %948 = fmul fast float %251, %251
  %949 = fmul fast float %255, %255
  %950 = fmul fast float %259, %259
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fmul fast float %799, %951
  %955 = fmul fast float %799, %952
  %956 = fmul fast float %799, %953
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fmul fast float %957, %774
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  br label %963

; <label>:963                                     ; preds = %947, %913, %804, %759
  %964 = phi float [ %909, %804 ], [ %785, %913 ], [ %785, %947 ], [ 0x3FA23C0BE0000000, %759 ]
  %965 = phi float [ %901, %804 ], [ %944, %913 ], [ %960, %947 ], [ 1.000000e+00, %759 ]
  %966 = phi float [ %902, %804 ], [ %945, %913 ], [ %961, %947 ], [ 1.000000e+00, %759 ]
  %967 = phi float [ %903, %804 ], [ %946, %913 ], [ %962, %947 ], [ 1.000000e+00, %759 ]
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %970 = and i32 %969, 1
  %971 = icmp ne i32 %970, 0
  %972 = add i32 %56, 356
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 32
  %976 = icmp ne i32 %975, 0
  %977 = and i1 %971, %976
  %978 = select i1 %977, float 1.000000e+00, float %965
  %979 = select i1 %977, float 0x3FD3333340000000, float %966
  %980 = select i1 %977, float 0x3FD3333340000000, float %967
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 32
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1057, label %985

; <label>:985                                     ; preds = %963
  %986 = add i32 %56, 92
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %56, 376
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = and i32 %988, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %988, 8
  %1002 = and i32 %1001, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = lshr i32 %988, 16
  %1005 = and i32 %1004, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = fmul fast float %1006, 0x3F70101000000000
  %1008 = fmul fast float %995, %1000
  %1009 = fadd fast float %1008, %1003
  %1010 = fmul fast float %1009, 0x3F70101000000000
  %1011 = fadd fast float %996, -5.000000e-01
  %1012 = fadd fast float %998, -5.000000e-01
  %1013 = fmul fast float %1011, %1007
  %1014 = fmul fast float %1012, %1007
  %1015 = fadd fast float %1013, 5.000000e-01
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fmul fast float %1016, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fadd fast float %1018, %1020
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = fsub fast float %1018, %1020
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1024, float %1028, float %1022, float %1024, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1022, %1030
  %1032 = fmul fast float %1024, %1030
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 67108864
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1053, label %1037

; <label>:1037                                    ; preds = %985
  %1038 = add i32 %56, 280
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 65535
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = lshr i32 %1040, 16
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = fsub fast float %1010, %1048
  %1050 = fmul fast float %1049, %1042
  %1051 = fadd fast float %1050, %1046
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %1037, %985
  %1054 = phi float [ %1052, %1037 ], [ %1010, %985 ]
  %1055 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  br label %1057

; <label>:1057                                    ; preds = %1053, %963
  %1058 = phi float [ %1054, %1053 ], [ 0x3FD6666660000000, %963 ]
  %1059 = phi float [ %1055, %1053 ], [ 0.000000e+00, %963 ]
  %1060 = phi float [ %1056, %1053 ], [ 0.000000e+00, %963 ]
  %1061 = phi float [ %997, %1053 ], [ 1.000000e+00, %963 ]
  %1062 = add i32 %56, 160
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 22
  %1066 = shl nuw nsw i32 %1065, 5
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 64
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1105, label %1072

; <label>:1072                                    ; preds = %1057
  %1073 = add i32 %56, 392
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 131072
  %1081 = icmp eq i32 %1080, 0
  %1082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, %239
  %1087 = fmul fast float %1084, %242
  %1088 = fmul fast float %1085, %245
  br i1 %1081, label %1095, label %1089

; <label>:1089                                    ; preds = %1072
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = fmul fast float %1091, %1086
  %1093 = fmul fast float %1091, %1087
  %1094 = fmul fast float %1091, %1088
  br label %1095

; <label>:1095                                    ; preds = %1089, %1072
  %1096 = phi float [ %1092, %1089 ], [ %1086, %1072 ]
  %1097 = phi float [ %1093, %1089 ], [ %1087, %1072 ]
  %1098 = phi float [ %1094, %1089 ], [ %1088, %1072 ]
  %1099 = fmul fast float %1096, %1067
  %1100 = select i1 %219, float %1099, float %1096
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1097, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %219, float 0.000000e+00, float %1096
  %1103 = select i1 %219, float %1101, float %1097
  %1104 = select i1 %219, float 0.000000e+00, float %1098
  br label %1105

; <label>:1105                                    ; preds = %1095, %1057
  %1106 = phi float [ %1102, %1095 ], [ 0.000000e+00, %1057 ]
  %1107 = phi float [ %1103, %1095 ], [ 0.000000e+00, %1057 ]
  %1108 = phi float [ %1104, %1095 ], [ 0.000000e+00, %1057 ]
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 1024
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1143, label %1113

; <label>:1113                                    ; preds = %1105
  %1114 = add i32 %56, 152
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1116, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1116, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = fmul fast float %1119, %1119
  %1129 = fmul fast float %1123, %1123
  %1130 = fmul fast float %1127, %1127
  %1131 = add i32 %56, 456
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fmul fast float %1128, %1137
  %1141 = fmul fast float %1129, %1138
  %1142 = fmul fast float %1130, %1139
  br label %1143

; <label>:1143                                    ; preds = %1113, %1105
  %1144 = phi float [ %1140, %1113 ], [ 0.000000e+00, %1105 ]
  %1145 = phi float [ %1141, %1113 ], [ 0.000000e+00, %1105 ]
  %1146 = phi float [ %1142, %1113 ], [ 0.000000e+00, %1105 ]
  %1147 = fcmp fast ogt float %1144, 0.000000e+00
  %1148 = fcmp fast ogt float %1145, 0.000000e+00
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1151 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 7
  %1156 = and i32 %1155, 32752
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1150, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1157
  %1160 = fmul fast float %1151, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1157
  %1162 = fmul fast float %1152, 0xBFE62E4300000000
  %1163 = fmul fast float %1162, %1157
  %1164 = select i1 %1147, float %1159, float 1.270000e+02
  %1165 = select i1 %1148, float %1161, float 1.270000e+02
  %1166 = select i1 %1149, float %1163, float 1.270000e+02
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 10240
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1215, label %1171

; <label>:1171                                    ; preds = %1143
  %1172 = add i32 %56, 472
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %99, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 3
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 1048576
  %1183 = icmp ne i32 %1182, 0
  %1184 = and i32 %1181, 8192
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1201, label %1186

; <label>:1186                                    ; preds = %1171
  %1187 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1188 = select i1 %1183, float %1187, float %1178
  %1189 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1190 = select i1 %1183, float %1189, float %1178
  %1191 = add i32 %56, 96
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 16
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F80101020000000
  %1198 = fmul fast float %1197, %1190
  %1199 = fmul fast float %1197, %1178
  %1200 = fmul fast float %1197, %1188
  br label %1201

; <label>:1201                                    ; preds = %1186, %1171
  %1202 = phi float [ %1198, %1186 ], [ 0.000000e+00, %1171 ]
  %1203 = phi float [ %1199, %1186 ], [ 0.000000e+00, %1171 ]
  %1204 = phi float [ %1200, %1186 ], [ 0.000000e+00, %1171 ]
  %1205 = and i32 %1181, 2048
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1215, label %1207

; <label>:1207                                    ; preds = %1201
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = shl i32 %1209, 4
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = fmul fast float %1212, %1179
  %1214 = call float @dx.op.binary.f32(i32 35, float %1213, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1215

; <label>:1215                                    ; preds = %1207, %1201, %1143
  %1216 = phi float [ %1202, %1207 ], [ %1202, %1201 ], [ 0.000000e+00, %1143 ]
  %1217 = phi float [ %1203, %1207 ], [ %1203, %1201 ], [ 0.000000e+00, %1143 ]
  %1218 = phi float [ %1204, %1207 ], [ %1204, %1201 ], [ 0.000000e+00, %1143 ]
  %1219 = phi float [ %1214, %1207 ], [ 0x3F70101020000000, %1201 ], [ 0x3F70101020000000, %1143 ]
  %1220 = add i32 %56, 96
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1222, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = call float @dx.op.dot3.f32(i32 55, float %978, float %979, float %980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fmul fast float %1227, %1228
  %1230 = fadd fast float %1229, %1224
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1215, %458
  %1234 = phi float [ 0.000000e+00, %458 ], [ %1059, %1215 ]
  %1235 = phi float [ 0.000000e+00, %458 ], [ %1060, %1215 ]
  %1236 = phi float [ 0.000000e+00, %458 ], [ %978, %1215 ]
  %1237 = phi float [ 0.000000e+00, %458 ], [ %979, %1215 ]
  %1238 = phi float [ 0.000000e+00, %458 ], [ %980, %1215 ]
  %1239 = phi float [ 0.000000e+00, %458 ], [ %1216, %1215 ]
  %1240 = phi float [ 0.000000e+00, %458 ], [ %1217, %1215 ]
  %1241 = phi float [ 0.000000e+00, %458 ], [ %1218, %1215 ]
  %1242 = phi float [ 0.000000e+00, %458 ], [ %1106, %1215 ]
  %1243 = phi float [ 0.000000e+00, %458 ], [ %1107, %1215 ]
  %1244 = phi float [ 0.000000e+00, %458 ], [ %1108, %1215 ]
  %1245 = phi float [ 0.000000e+00, %458 ], [ %1164, %1215 ]
  %1246 = phi float [ 0.000000e+00, %458 ], [ %1165, %1215 ]
  %1247 = phi float [ 0.000000e+00, %458 ], [ %1166, %1215 ]
  %1248 = phi float [ 0.000000e+00, %458 ], [ %964, %1215 ]
  %1249 = phi float [ 0.000000e+00, %458 ], [ %760, %1215 ]
  %1250 = phi float [ 0.000000e+00, %458 ], [ %1058, %1215 ]
  %1251 = phi float [ 0.000000e+00, %458 ], [ %1061, %1215 ]
  %1252 = phi float [ 0.000000e+00, %458 ], [ %1219, %1215 ]
  %1253 = phi float [ 0.000000e+00, %458 ], [ %1232, %1215 ]
  br i1 %406, label %2291, label %1254

; <label>:1254                                    ; preds = %1233
  %1255 = icmp ult i32 %464, 2
  %1256 = add i32 %56, 40
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = add i32 %56, 44
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = or i32 %1261, %1258
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %2291, label %1264

; <label>:1264                                    ; preds = %1254
  %1265 = and i32 %1258, 262144
  %1266 = icmp ne i32 %1265, 0
  %1267 = select i1 %1266, float %59, float 1.000000e+00
  %1268 = select i1 %1266, float %60, float 0.000000e+00
  %1269 = select i1 %1266, float %61, float 0.000000e+00
  %1270 = select i1 %1266, float %62, float 1.000000e+00
  %1271 = select i1 %1266, float %63, float %84
  %1272 = select i1 %1266, float %64, float %85
  %1273 = add i32 %56, 300
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1277, 0x3F50624DE0000000
  %1279 = add i32 %56, 104
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 16
  %1283 = and i32 %1282, 255
  %1284 = lshr i32 %1281, 24
  %1285 = add i32 %56, 308
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = lshr i32 %1287, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = add i32 %56, 48
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 22
  %1296 = shl nuw nsw i32 %1295, 5
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = shl i32 %1294, 4
  %1299 = and i32 %1298, 32752
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1294, 7
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = fmul fast float %1305, 1.000000e+03
  %1307 = fmul fast float %316, %1306
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = fadd fast float %1308, %306
  %1310 = fmul fast float %317, %1306
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = fadd fast float %1311, %308
  %1313 = fmul fast float %1278, %1306
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fmul fast float %1314, 0x401921FB60000000
  %1316 = fadd fast float %1315, %1297
  %1317 = call float @dx.op.unary.f32(i32 13, float %1316)  ; Sin(value)
  %1318 = call float @dx.op.unary.f32(i32 12, float %1316)  ; Cos(value)
  %1319 = fsub fast float -0.000000e+00, %1317
  %1320 = fadd fast float %1271, -5.000000e-01
  %1321 = fadd fast float %1272, -5.000000e-01
  %1322 = fmul fast float %1289, %1320
  %1323 = fmul fast float %1291, %1321
  %1324 = fadd fast float %1322, 5.000000e-01
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fmul fast float %1300, %1324
  %1327 = fmul fast float %1303, %1325
  %1328 = fmul fast float %1318, %1326
  %1329 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1327, float %1328)  ; FMad(a,b,c)
  %1330 = fmul fast float %1317, %1326
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1327, float %1330)  ; FMad(a,b,c)
  %1332 = fadd fast float %1309, %1329
  %1333 = fadd fast float %1312, %1331
  %1334 = icmp ugt i32 %1283, 1
  %1335 = icmp ugt i32 %1281, 33554431
  %1336 = or i1 %1335, %1334
  br i1 %1336, label %1337, label %1362

; <label>:1337                                    ; preds = %1264
  %1338 = add i32 %56, 244
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = lshr i32 %1340, 16
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = fmul fast float %1305, %1342
  %1344 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1345 = mul nuw nsw i32 %1283, %1284
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1344, %1346
  %1348 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1349 = fptoui float %1348 to i32
  %1350 = urem i32 %1349, %1283
  %1351 = udiv i32 %1349, %1284
  %1352 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1353 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1354 = uitofp i32 %1350 to float
  %1355 = uitofp i32 %1351 to float
  %1356 = fadd fast float %1352, %1354
  %1357 = fadd fast float %1353, %1355
  %1358 = uitofp i32 %1283 to float
  %1359 = uitofp i32 %1284 to float
  %1360 = fdiv fast float %1356, %1358
  %1361 = fdiv fast float %1357, %1359
  br label %1362

; <label>:1362                                    ; preds = %1337, %1264
  %1363 = phi float [ %1360, %1337 ], [ %1332, %1264 ]
  %1364 = phi float [ %1361, %1337 ], [ %1333, %1264 ]
  %1365 = and i32 %1258, 16777216
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1476, label %1367

; <label>:1367                                    ; preds = %1362
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1372 = fadd fast float %1369, %157
  %1373 = fadd fast float %1370, %158
  %1374 = fadd fast float %1371, %159
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = icmp eq i32 %57, 65535
  br i1 %1378, label %1473, label %1379

; <label>:1379                                    ; preds = %1367
  %1380 = lshr i32 %57, 1
  %1381 = shl i32 %1380, 2
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %57, 1
  %1385 = icmp ne i32 %1384, 0
  %1386 = lshr i32 %1383, 16
  %1387 = and i32 %1383, 65535
  %1388 = select i1 %1385, i32 %1386, i32 %1387
  %1389 = icmp eq i32 %1388, 65535
  br i1 %1389, label %1469, label %1390

; <label>:1390                                    ; preds = %1379
  %1391 = mul nuw nsw i32 %1388, 40
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1391, 12
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1391, 24
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = add nuw nsw i32 %1391, 36
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = fsub fast float %1372, %1393
  %1410 = fsub fast float %1373, %1394
  %1411 = fsub fast float %1374, %1395
  %1412 = fmul fast float %1408, %1409
  %1413 = fmul fast float %1408, %1410
  %1414 = fmul fast float %1408, %1411
  %1415 = call float @dx.op.unary.f32(i32 27, float %1412)  ; Round_ni(value)
  %1416 = call float @dx.op.unary.f32(i32 27, float %1413)  ; Round_ni(value)
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = fadd fast float %1415, 5.000000e-01
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fmul fast float %1418, %1398
  %1422 = fmul fast float %1419, %1399
  %1423 = fmul fast float %1420, %1400
  %1424 = shl i32 %57, 2
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1430 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1428, %dx.types.Handle %51, float %1429, float %1430, float %1431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = fmul fast float %1433, 1.023000e+03
  %1437 = fmul fast float %1434, 1.023000e+03
  %1438 = fmul fast float %1435, 1.023000e+03
  %1439 = fadd fast float %1436, 5.000000e-01
  %1440 = fadd fast float %1437, 5.000000e-01
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = fsub fast float %1412, %1415
  %1446 = fsub fast float %1413, %1416
  %1447 = fsub fast float %1414, %1417
  %1448 = fmul fast float %1445, 7.500000e-01
  %1449 = fmul fast float %1446, 7.500000e-01
  %1450 = fmul fast float %1447, 7.500000e-01
  %1451 = fadd fast float %1415, 1.250000e-01
  %1452 = fadd fast float %1451, %1448
  %1453 = fadd fast float %1452, %1442
  %1454 = fadd fast float %1416, 1.250000e-01
  %1455 = fadd fast float %1454, %1449
  %1456 = fadd fast float %1455, %1443
  %1457 = fadd fast float %1417, 1.250000e-01
  %1458 = fadd fast float %1457, %1450
  %1459 = fadd fast float %1458, %1444
  %1460 = fmul fast float %1453, %1403
  %1461 = fmul fast float %1456, %1404
  %1462 = fmul fast float %1459, %1405
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1466, %dx.types.Handle %49, float %1460, float %1461, float %1462, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  br label %1469

; <label>:1469                                    ; preds = %1390, %1379
  %1470 = phi float [ %1468, %1390 ], [ -1.000000e+00, %1379 ]
  %1471 = fadd fast float %1470, %1377
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  br label %1473

; <label>:1473                                    ; preds = %1469, %1367
  %1474 = phi float [ %1472, %1469 ], [ %1377, %1367 ]
  %1475 = fmul fast float %1474, %461
  br label %1476

; <label>:1476                                    ; preds = %1473, %1362
  %1477 = phi float [ %1475, %1473 ], [ %461, %1362 ]
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 256
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1528, label %1482

; <label>:1482                                    ; preds = %1476
  %1483 = add i32 %56, 428
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %1485, 0
  %1487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1487, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = add i32 %56, 116
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = shl i32 %1492, 4
  %1494 = and i32 %1493, 32752
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %1492, 7
  %1497 = and i32 %1496, 32752
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = fsub fast float 1.000000e+00, %1477
  %1500 = call float @dx.op.binary.f32(i32 35, float %1499, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1501 = bitcast float %1477 to i32
  %1502 = sitofp i32 %1501 to float
  %1503 = fadd fast float %1502, 0xC1CFBF8940000000
  %1504 = fmul fast float %1498, %1503
  %1505 = fadd fast float %1504, 0x41CFBF8940000000
  %1506 = fptosi float %1505 to i32
  %1507 = bitcast i32 %1506 to float
  %1508 = bitcast float %1500 to i32
  %1509 = sitofp i32 %1508 to float
  %1510 = fadd fast float %1509, 0xC1CFBF8940000000
  %1511 = fmul fast float %1510, %1498
  %1512 = fadd fast float %1511, 0x41CFBF8940000000
  %1513 = fptosi float %1512 to i32
  %1514 = bitcast i32 %1513 to float
  %1515 = fmul fast float %1507, %1495
  %1516 = fmul fast float %1514, %1495
  %1517 = fsub fast float %1500, %1515
  %1518 = fadd fast float %1516, %1500
  %1519 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = fsub fast float %1489, %1519
  %1522 = fsub fast float %1520, %1519
  %1523 = bitcast float %1522 to i32
  %1524 = sub nsw i32 2129859010, %1523
  %1525 = bitcast i32 %1524 to float
  %1526 = fmul fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1482, %1476
  %1529 = phi float [ %1527, %1482 ], [ %1477, %1476 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 128
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

; <label>:1534                                    ; preds = %1528
  %1535 = add i32 %56, 412
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1539, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 524288
  %1545 = icmp ne i32 %1544, 0
  %1546 = fcmp fast ogt float %1541, 0x3FE0101020000000
  %1547 = select i1 %1546, float 1.000000e+00, float 0.000000e+00
  %1548 = select i1 %1545, float %1547, float %1541
  %1549 = fmul fast float %1548, %1529
  br label %1550

; <label>:1550                                    ; preds = %1534, %1528
  %1551 = phi float [ %1549, %1534 ], [ %1529, %1528 ]
  %1552 = fcmp fast ult float %1551, 0x3F70101020000000
  br i1 %1552, label %2291, label %1553

; <label>:1553                                    ; preds = %1550
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 16
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1756, label %1558

; <label>:1558                                    ; preds = %1553
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %56, 364
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = and i32 %1560, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = lshr i32 %1560, 8
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1570, %1572
  %1577 = fadd fast float %1576, %1575
  %1578 = fmul fast float %1577, 0x3F70101000000000
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 512
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1591, label %1583

; <label>:1583                                    ; preds = %1558
  %1584 = add i32 %56, 444
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  br label %1591

; <label>:1591                                    ; preds = %1583, %1558
  %1592 = phi float [ %1590, %1583 ], [ 1.000000e+00, %1558 ]
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 33554432
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1703, label %1597

; <label>:1597                                    ; preds = %1591
  %1598 = add i32 %56, 240
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 65535
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = lshr i32 %1600, 16
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = add i32 %56, 244
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 65535
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = lshr i32 %1611, 24
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = and i32 %1611, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1611, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1611, 16
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = add i32 %56, 236
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = lshr i32 %1628, 24
  %1630 = uitofp i32 %1629 to float
  %1631 = fmul fast float %1630, 0x3F70101020000000
  %1632 = and i32 %1628, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = lshr i32 %1628, 8
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = lshr i32 %1628, 16
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = bitcast float %1567 to i32
  %1644 = ashr i32 %1643, 1
  %1645 = sub nsw i32 1597463174, %1644
  %1646 = bitcast i32 %1645 to float
  %1647 = fmul fast float %1567, 5.000000e-01
  %1648 = fmul fast float %1646, %1646
  %1649 = fmul fast float %1648, %1647
  %1650 = fsub fast float 1.500000e+00, %1649
  %1651 = fmul fast float %1646, %1567
  %1652 = fmul fast float %1651, %1650
  %1653 = bitcast float %1568 to i32
  %1654 = ashr i32 %1653, 1
  %1655 = sub nsw i32 1597463174, %1654
  %1656 = bitcast i32 %1655 to float
  %1657 = fmul fast float %1568, 5.000000e-01
  %1658 = fmul fast float %1656, %1656
  %1659 = fmul fast float %1658, %1657
  %1660 = fsub fast float 1.500000e+00, %1659
  %1661 = fmul fast float %1656, %1568
  %1662 = fmul fast float %1661, %1660
  %1663 = bitcast float %1569 to i32
  %1664 = ashr i32 %1663, 1
  %1665 = sub nsw i32 1597463174, %1664
  %1666 = bitcast i32 %1665 to float
  %1667 = fmul fast float %1569, 5.000000e-01
  %1668 = fmul fast float %1666, %1666
  %1669 = fmul fast float %1668, %1667
  %1670 = fsub fast float 1.500000e+00, %1669
  %1671 = fmul fast float %1666, %1569
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float %1652, %1634
  %1674 = fsub fast float %1662, %1638
  %1675 = fsub fast float %1672, %1642
  %1676 = fmul fast float %1673, %1602
  %1677 = fmul fast float %1674, %1604
  %1678 = fmul fast float %1675, %1609
  %1679 = fadd fast float %1676, %1617
  %1680 = fadd fast float %1677, %1621
  %1681 = fadd fast float %1678, %1625
  %1682 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = fmul fast float %1682, %1682
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fsub fast float %1685, %1567
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fmul fast float %1688, %1592
  %1692 = fmul fast float %1689, %1592
  %1693 = fmul fast float %1690, %1592
  %1694 = fadd fast float %1691, %1567
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1614, %1578
  %1698 = fsub fast float %1697, %1631
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float %1699, %1578
  %1701 = fmul fast float %1700, %1592
  %1702 = fadd fast float %1701, %1578
  br label %1756

; <label>:1703                                    ; preds = %1591
  %1704 = and i32 %1594, 134217728
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1740, label %1706

; <label>:1706                                    ; preds = %1703
  %1707 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fmul fast float %1710, %1592
  %1714 = fmul fast float %1711, %1592
  %1715 = fmul fast float %1712, %1592
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = fmul fast float %1716, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1719
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1719
  %1727 = fmul fast float %1717, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1720
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1720
  %1732 = fmul fast float %1718, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1721
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1721
  %1737 = fmul fast float %1726, %1726
  %1738 = fmul fast float %1731, %1731
  %1739 = fmul fast float %1736, %1736
  br label %1756

; <label>:1740                                    ; preds = %1703
  %1741 = fmul fast float %293, %293
  %1742 = fmul fast float %297, %297
  %1743 = fmul fast float %301, %301
  %1744 = fadd fast float %1741, -1.000000e+00
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fmul fast float %1592, %1744
  %1748 = fmul fast float %1592, %1745
  %1749 = fmul fast float %1592, %1746
  %1750 = fadd fast float %1747, 1.000000e+00
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fmul fast float %1750, %1567
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  br label %1756

; <label>:1756                                    ; preds = %1740, %1706, %1597, %1553
  %1757 = phi float [ %1702, %1597 ], [ %1578, %1706 ], [ %1578, %1740 ], [ 0x3FA23C0BE0000000, %1553 ]
  %1758 = phi float [ %1694, %1597 ], [ %1737, %1706 ], [ %1753, %1740 ], [ 1.000000e+00, %1553 ]
  %1759 = phi float [ %1695, %1597 ], [ %1738, %1706 ], [ %1754, %1740 ], [ 1.000000e+00, %1553 ]
  %1760 = phi float [ %1696, %1597 ], [ %1739, %1706 ], [ %1755, %1740 ], [ 1.000000e+00, %1553 ]
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 1
  %1763 = and i32 %1762, 1
  %1764 = icmp ne i32 %1763, 0
  %1765 = add i32 %56, 356
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 32
  %1769 = icmp ne i32 %1768, 0
  %1770 = and i1 %1764, %1769
  %1771 = select i1 %1770, float 1.000000e+00, float %1758
  %1772 = select i1 %1770, float 0x3FD3333340000000, float %1759
  %1773 = select i1 %1770, float 0x3FD3333340000000, float %1760
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 32
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1850, label %1778

; <label>:1778                                    ; preds = %1756
  %1779 = add i32 %56, 108
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %56, 380
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %1784, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1786, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1792 = and i32 %1781, 255
  %1793 = uitofp i32 %1792 to float
  %1794 = lshr i32 %1781, 8
  %1795 = and i32 %1794, 255
  %1796 = uitofp i32 %1795 to float
  %1797 = lshr i32 %1781, 16
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = fmul fast float %1799, 0x3F70101000000000
  %1801 = fmul fast float %1788, %1793
  %1802 = fadd fast float %1801, %1796
  %1803 = fmul fast float %1802, 0x3F70101000000000
  %1804 = fadd fast float %1789, -5.000000e-01
  %1805 = fadd fast float %1791, -5.000000e-01
  %1806 = fmul fast float %1804, %1800
  %1807 = fmul fast float %1805, %1800
  %1808 = fadd fast float %1806, 5.000000e-01
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fmul fast float %1808, 2.000000e+00
  %1811 = fadd fast float %1810, -1.000000e+00
  %1812 = fmul fast float %1809, 2.000000e+00
  %1813 = fadd fast float %1812, -1.000000e+00
  %1814 = fadd fast float %1811, %1813
  %1815 = fmul fast float %1814, 5.000000e-01
  %1816 = fsub fast float %1811, %1813
  %1817 = fmul fast float %1816, 5.000000e-01
  %1818 = call float @dx.op.unary.f32(i32 6, float %1815)  ; FAbs(value)
  %1819 = fsub fast float 1.000000e+00, %1818
  %1820 = call float @dx.op.unary.f32(i32 6, float %1817)  ; FAbs(value)
  %1821 = fsub fast float %1819, %1820
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1815, float %1817, float %1821, float %1815, float %1817, float %1821)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = call float @dx.op.unary.f32(i32 25, float %1822)  ; Rsqrt(value)
  %1824 = fmul fast float %1815, %1823
  %1825 = fmul fast float %1817, %1823
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 67108864
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1846, label %1830

; <label>:1830                                    ; preds = %1778
  %1831 = add i32 %56, 296
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 65535
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = lshr i32 %1833, 16
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = fsub fast float %1803, %1841
  %1843 = fmul fast float %1842, %1835
  %1844 = fadd fast float %1843, %1839
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  br label %1846

; <label>:1846                                    ; preds = %1830, %1778
  %1847 = phi float [ %1845, %1830 ], [ %1803, %1778 ]
  %1848 = call float @dx.op.dot2.f32(i32 54, float %1824, float %1825, float %1267, float %1268)  ; Dot2(ax,ay,bx,by)
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1824, float %1825, float %1269, float %1270)  ; Dot2(ax,ay,bx,by)
  br label %1850

; <label>:1850                                    ; preds = %1846, %1756
  %1851 = phi float [ %1847, %1846 ], [ 0x3FD6666660000000, %1756 ]
  %1852 = phi float [ %1848, %1846 ], [ 0.000000e+00, %1756 ]
  %1853 = phi float [ %1849, %1846 ], [ 0.000000e+00, %1756 ]
  %1854 = phi float [ %1790, %1846 ], [ 1.000000e+00, %1756 ]
  %1855 = add i32 %56, 176
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 22
  %1859 = shl nuw nsw i32 %1858, 5
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 64
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1898, label %1865

; <label>:1865                                    ; preds = %1850
  %1866 = add i32 %56, 396
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 131072
  %1874 = icmp eq i32 %1873, 0
  %1875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %98, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = fmul fast float %1876, %281
  %1880 = fmul fast float %1877, %284
  %1881 = fmul fast float %1878, %287
  br i1 %1874, label %1888, label %1882

; <label>:1882                                    ; preds = %1865
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = fmul fast float %1884, %1879
  %1886 = fmul fast float %1884, %1880
  %1887 = fmul fast float %1884, %1881
  br label %1888

; <label>:1888                                    ; preds = %1882, %1865
  %1889 = phi float [ %1885, %1882 ], [ %1879, %1865 ]
  %1890 = phi float [ %1886, %1882 ], [ %1880, %1865 ]
  %1891 = phi float [ %1887, %1882 ], [ %1881, %1865 ]
  %1892 = fmul fast float %1889, %1860
  %1893 = select i1 %219, float %1892, float %1889
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1893, float %1890, float %1891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = select i1 %219, float 0.000000e+00, float %1889
  %1896 = select i1 %219, float %1894, float %1890
  %1897 = select i1 %219, float 0.000000e+00, float %1891
  br label %1898

; <label>:1898                                    ; preds = %1888, %1850
  %1899 = phi float [ %1895, %1888 ], [ 0.000000e+00, %1850 ]
  %1900 = phi float [ %1896, %1888 ], [ 0.000000e+00, %1850 ]
  %1901 = phi float [ %1897, %1888 ], [ 0.000000e+00, %1850 ]
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 1024
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1936, label %1906

; <label>:1906                                    ; preds = %1898
  %1907 = add i32 %56, 168
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1909, 8
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = lshr i32 %1909, 16
  %1918 = and i32 %1917, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = fmul fast float %1912, %1912
  %1922 = fmul fast float %1916, %1916
  %1923 = fmul fast float %1920, %1920
  %1924 = add i32 %56, 460
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = add i32 %1926, 0
  %1928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1928, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = fmul fast float %1921, %1930
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  br label %1936

; <label>:1936                                    ; preds = %1906, %1898
  %1937 = phi float [ %1933, %1906 ], [ 0.000000e+00, %1898 ]
  %1938 = phi float [ %1934, %1906 ], [ 0.000000e+00, %1898 ]
  %1939 = phi float [ %1935, %1906 ], [ 0.000000e+00, %1898 ]
  %1940 = fcmp fast ogt float %1937, 0.000000e+00
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = call float @dx.op.unary.f32(i32 23, float %1937)  ; Log(value)
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = lshr i32 %1947, 7
  %1949 = and i32 %1948, 32752
  %1950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1949)  ; LegacyF16ToF32(value)
  %1951 = fmul fast float %1943, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1950
  %1953 = fmul fast float %1944, 0xBFE62E4300000000
  %1954 = fmul fast float %1953, %1950
  %1955 = fmul fast float %1945, 0xBFE62E4300000000
  %1956 = fmul fast float %1955, %1950
  %1957 = select i1 %1940, float %1952, float 1.270000e+02
  %1958 = select i1 %1941, float %1954, float 1.270000e+02
  %1959 = select i1 %1942, float %1956, float 1.270000e+02
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 10240
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2008, label %1964

; <label>:1964                                    ; preds = %1936
  %1965 = add i32 %56, 476
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %99, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 3
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 1048576
  %1976 = icmp ne i32 %1975, 0
  %1977 = and i32 %1974, 8192
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %1994, label %1979

; <label>:1979                                    ; preds = %1964
  %1980 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1981 = select i1 %1976, float %1980, float %1971
  %1982 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1983 = select i1 %1976, float %1982, float %1971
  %1984 = add i32 %56, 112
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = lshr i32 %1986, 16
  %1988 = and i32 %1987, 255
  %1989 = uitofp i32 %1988 to float
  %1990 = fmul fast float %1989, 0x3F80101020000000
  %1991 = fmul fast float %1990, %1983
  %1992 = fmul fast float %1990, %1971
  %1993 = fmul fast float %1990, %1981
  br label %1994

; <label>:1994                                    ; preds = %1979, %1964
  %1995 = phi float [ %1991, %1979 ], [ 0.000000e+00, %1964 ]
  %1996 = phi float [ %1992, %1979 ], [ 0.000000e+00, %1964 ]
  %1997 = phi float [ %1993, %1979 ], [ 0.000000e+00, %1964 ]
  %1998 = and i32 %1974, 2048
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2008, label %2000

; <label>:2000                                    ; preds = %1994
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = shl i32 %2002, 4
  %2004 = and i32 %2003, 32752
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = fmul fast float %2005, %1972
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2008

; <label>:2008                                    ; preds = %2000, %1994, %1936
  %2009 = phi float [ %1995, %2000 ], [ %1995, %1994 ], [ 0.000000e+00, %1936 ]
  %2010 = phi float [ %1996, %2000 ], [ %1996, %1994 ], [ 0.000000e+00, %1936 ]
  %2011 = phi float [ %1997, %2000 ], [ %1997, %1994 ], [ 0.000000e+00, %1936 ]
  %2012 = phi float [ %2007, %2000 ], [ 0x3F70101020000000, %1994 ], [ 0x3F70101020000000, %1936 ]
  %2013 = add i32 %56, 112
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 255
  %2017 = uitofp i32 %2016 to float
  %2018 = lshr i32 %2015, 8
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = fmul fast float %2020, %2021
  %2023 = fadd fast float %2022, %2017
  %2024 = fmul fast float %2023, 0x3F70101020000000
  %2025 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  br i1 %1255, label %2026, label %2061

; <label>:2026                                    ; preds = %2008
  %2027 = fmul fast float %2012, 2.000000e+00
  %2028 = fcmp fast olt float %1957, 1.270000e+02
  %2029 = fcmp fast olt float %1958, 1.270000e+02
  %2030 = fcmp fast olt float %1959, 1.270000e+02
  %2031 = fmul fast float %1957, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2027
  %2033 = fmul fast float %1958, 0xBFF7154760000000
  %2034 = fmul fast float %2033, %2027
  %2035 = fmul fast float %1959, 0xBFF7154760000000
  %2036 = fmul fast float %2035, %2027
  %2037 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2038 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2039 = call float @dx.op.unary.f32(i32 21, float %2036)  ; Exp(value)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = fadd fast float %2040, -1.000000e+00
  %2044 = select i1 %2028, float %2043, float -1.000000e+00
  %2045 = fadd fast float %2041, -1.000000e+00
  %2046 = select i1 %2029, float %2045, float -1.000000e+00
  %2047 = fadd fast float %2042, -1.000000e+00
  %2048 = select i1 %2030, float %2047, float -1.000000e+00
  %2049 = fmul fast float %2044, %1551
  %2050 = fmul fast float %2046, %1551
  %2051 = fmul fast float %2048, %1551
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fmul fast float %2052, %1236
  %2056 = fmul fast float %2053, %1237
  %2057 = fmul fast float %2054, %1238
  %2058 = fmul fast float %2052, %1242
  %2059 = fmul fast float %2053, %1243
  %2060 = fmul fast float %2054, %1244
  br label %2061

; <label>:2061                                    ; preds = %2026, %2008
  %2062 = phi float [ %2055, %2026 ], [ %1236, %2008 ]
  %2063 = phi float [ %2056, %2026 ], [ %1237, %2008 ]
  %2064 = phi float [ %2057, %2026 ], [ %1238, %2008 ]
  %2065 = phi float [ %2058, %2026 ], [ %1242, %2008 ]
  %2066 = phi float [ %2059, %2026 ], [ %1243, %2008 ]
  %2067 = phi float [ %2060, %2026 ], [ %1244, %2008 ]
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 3
  %2071 = icmp eq i32 %2070, 3
  br i1 %2071, label %2150, label %2072

; <label>:2072                                    ; preds = %2061
  %2073 = and i32 %2069, 16
  %2074 = icmp ne i32 %2073, 0
  %2075 = select i1 %2074, float %1551, float 0.000000e+00
  %2076 = icmp eq i32 %2070, 0
  br i1 %2076, label %2077, label %2105

; <label>:2077                                    ; preds = %2072
  %2078 = and i32 %2069, 64
  %2079 = icmp ne i32 %2078, 0
  %2080 = select i1 %2079, float %1551, float 0.000000e+00
  %2081 = fsub fast float %1771, %2062
  %2082 = fsub fast float %1772, %2063
  %2083 = fsub fast float %1773, %2064
  %2084 = fmul fast float %2075, %2081
  %2085 = fmul fast float %2075, %2082
  %2086 = fmul fast float %2075, %2083
  %2087 = fadd fast float %2084, %2062
  %2088 = fadd fast float %2085, %2063
  %2089 = fadd fast float %2086, %2064
  %2090 = fsub fast float %1757, %1248
  %2091 = fmul fast float %2075, %2090
  %2092 = fadd fast float %2091, %1248
  %2093 = fsub fast float %1899, %2065
  %2094 = fsub fast float %1900, %2066
  %2095 = fsub fast float %1901, %2067
  %2096 = fmul fast float %2080, %2093
  %2097 = fmul fast float %2080, %2094
  %2098 = fmul fast float %2080, %2095
  %2099 = fadd fast float %2096, %2065
  %2100 = fadd fast float %2097, %2066
  %2101 = fadd fast float %2098, %2067
  %2102 = fsub fast float %2025, %1253
  %2103 = fmul fast float %2075, %2102
  %2104 = fadd fast float %2103, %1253
  br label %2150

; <label>:2105                                    ; preds = %2072
  %2106 = icmp eq i32 %2070, 1
  br i1 %2106, label %2107, label %2120

; <label>:2107                                    ; preds = %2105
  %2108 = fadd fast float %1771, -1.000000e+00
  %2109 = fadd fast float %1772, -1.000000e+00
  %2110 = fadd fast float %1773, -1.000000e+00
  %2111 = fmul fast float %2075, %2108
  %2112 = fmul fast float %2075, %2109
  %2113 = fmul fast float %2075, %2110
  %2114 = fadd fast float %2111, 1.000000e+00
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fmul fast float %2114, %2062
  %2118 = fmul fast float %2115, %2063
  %2119 = fmul fast float %2116, %2064
  br label %2150

; <label>:2120                                    ; preds = %2105
  %2121 = icmp eq i32 %2070, 2
  br i1 %2121, label %2122, label %2150

; <label>:2122                                    ; preds = %2120
  %2123 = call float @dx.op.unary.f32(i32 24, float %1771)  ; Sqrt(value)
  %2124 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2125 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2126 = fadd fast float %2123, -5.000000e-01
  %2127 = fadd fast float %2124, -5.000000e-01
  %2128 = fadd fast float %2125, -5.000000e-01
  %2129 = fmul fast float %2126, %2075
  %2130 = fmul fast float %2127, %2075
  %2131 = fmul fast float %2128, %2075
  %2132 = fadd fast float %2129, 5.000000e-01
  %2133 = fadd fast float %2130, 5.000000e-01
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fmul fast float %2132, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2062
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2062
  %2140 = fmul fast float %2133, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2063
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2063
  %2145 = fmul fast float %2134, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2064
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2064
  br label %2150

; <label>:2150                                    ; preds = %2122, %2120, %2107, %2077, %2061
  %2151 = phi float [ %2062, %2061 ], [ %2139, %2122 ], [ %2062, %2120 ], [ %2117, %2107 ], [ %2087, %2077 ]
  %2152 = phi float [ %2063, %2061 ], [ %2144, %2122 ], [ %2063, %2120 ], [ %2118, %2107 ], [ %2088, %2077 ]
  %2153 = phi float [ %2064, %2061 ], [ %2149, %2122 ], [ %2064, %2120 ], [ %2119, %2107 ], [ %2089, %2077 ]
  %2154 = phi float [ %2065, %2061 ], [ %2065, %2122 ], [ %2065, %2120 ], [ %2065, %2107 ], [ %2099, %2077 ]
  %2155 = phi float [ %2066, %2061 ], [ %2066, %2122 ], [ %2066, %2120 ], [ %2066, %2107 ], [ %2100, %2077 ]
  %2156 = phi float [ %2067, %2061 ], [ %2067, %2122 ], [ %2067, %2120 ], [ %2067, %2107 ], [ %2101, %2077 ]
  %2157 = phi float [ %1248, %2061 ], [ %1248, %2122 ], [ %1248, %2120 ], [ %1248, %2107 ], [ %2092, %2077 ]
  %2158 = phi float [ %1253, %2061 ], [ %1253, %2122 ], [ %1253, %2120 ], [ %1253, %2107 ], [ %2104, %2077 ]
  %2159 = and i32 %2069, 12
  %2160 = icmp eq i32 %2159, 12
  br i1 %2160, label %2291, label %2161

; <label>:2161                                    ; preds = %2150
  %2162 = and i32 %2069, 2097184
  %2163 = icmp eq i32 %2162, 2097184
  %2164 = select i1 %2163, float %1551, float 0.000000e+00
  %2165 = and i32 %2069, 4194336
  %2166 = icmp eq i32 %2165, 4194336
  %2167 = select i1 %2166, float %1551, float 0.000000e+00
  %2168 = and i32 %2069, 8388640
  %2169 = icmp eq i32 %2168, 8388640
  %2170 = select i1 %2169, float %1551, float 0.000000e+00
  %2171 = and i32 %2069, 1024
  %2172 = icmp ne i32 %2171, 0
  %2173 = select i1 %2172, float %1551, float 0.000000e+00
  %2174 = and i32 %2069, 2048
  %2175 = icmp ne i32 %2174, 0
  %2176 = select i1 %2175, float %1551, float 0.000000e+00
  %2177 = and i32 %2069, 8192
  %2178 = icmp ne i32 %2177, 0
  %2179 = select i1 %2178, float %1551, float 0.000000e+00
  %2180 = icmp eq i32 %2159, 0
  br i1 %2180, label %2181, label %2215

; <label>:2181                                    ; preds = %2161
  %2182 = fsub fast float %1852, %1234
  %2183 = fsub fast float %1853, %1235
  %2184 = fmul fast float %2164, %2182
  %2185 = fmul fast float %2164, %2183
  %2186 = fadd fast float %2184, %1234
  %2187 = fadd fast float %2185, %1235
  %2188 = fsub fast float %1854, %1251
  %2189 = fmul fast float %2167, %2188
  %2190 = fadd fast float %2189, %1251
  %2191 = fsub fast float %1851, %1250
  %2192 = fmul fast float %2170, %2191
  %2193 = fadd fast float %2192, %1250
  %2194 = fsub fast float %1957, %1245
  %2195 = fsub fast float %1958, %1246
  %2196 = fsub fast float %1959, %1247
  %2197 = fmul fast float %2173, %2194
  %2198 = fmul fast float %2173, %2195
  %2199 = fmul fast float %2173, %2196
  %2200 = fadd fast float %2197, %1245
  %2201 = fadd fast float %2198, %1246
  %2202 = fadd fast float %2199, %1247
  %2203 = fsub fast float %2012, %1252
  %2204 = fmul fast float %2176, %2203
  %2205 = fadd fast float %2204, %1252
  %2206 = fsub fast float %2009, %1239
  %2207 = fsub fast float %2010, %1240
  %2208 = fsub fast float %2011, %1241
  %2209 = fmul fast float %2179, %2206
  %2210 = fmul fast float %2179, %2207
  %2211 = fmul fast float %2179, %2208
  %2212 = fadd fast float %2209, %1239
  %2213 = fadd fast float %2210, %1240
  %2214 = fadd fast float %2211, %1241
  br label %2291

; <label>:2215                                    ; preds = %2161
  %2216 = icmp eq i32 %2159, 4
  br i1 %2216, label %2217, label %2263

; <label>:2217                                    ; preds = %2215
  %2218 = fmul fast float %2164, %1852
  %2219 = fmul fast float %2164, %1853
  %2220 = fadd fast float %2218, %1234
  %2221 = fadd fast float %2219, %1235
  %2222 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2223 = fsub fast float %2222, %1251
  %2224 = fmul fast float %2223, %2167
  %2225 = fadd fast float %2224, %1251
  %2226 = fadd fast float %1851, %1250
  %2227 = fmul fast float %2226, 0x3FF337FAE0000000
  %2228 = fmul fast float %1250, %1250
  %2229 = fmul fast float %1851, %1851
  %2230 = fadd fast float %2229, %2228
  %2231 = fmul fast float %2230, 0x3FE5152B00000000
  %2232 = fmul fast float %1250, 0xBFCC1F85E0000000
  %2233 = fmul fast float %2232, %1851
  %2234 = fadd fast float %2233, 0xBFE1363700000000
  %2235 = fadd fast float %2234, %2227
  %2236 = fsub fast float %2235, %2231
  %2237 = fmul fast float %2226, 0x3FBA6F0D00000000
  %2238 = fmul fast float %2230, 0x3FD0432880000000
  %2239 = fmul fast float %1250, 0xBFEF110800000000
  %2240 = fmul fast float %2239, %1851
  %2241 = fadd fast float %2240, 1.000000e+00
  %2242 = fsub fast float %2241, %2237
  %2243 = fadd fast float %2242, %2238
  %2244 = fdiv fast float %2236, %2243
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = fsub fast float %2245, %1250
  %2247 = fmul fast float %2246, %2170
  %2248 = fadd fast float %2247, %1250
  %2249 = fmul fast float %2173, %1957
  %2250 = fmul fast float %2173, %1958
  %2251 = fmul fast float %2173, %1959
  %2252 = fadd fast float %2249, %1245
  %2253 = fadd fast float %2250, %1246
  %2254 = fadd fast float %2251, %1247
  %2255 = fmul fast float %2176, %2012
  %2256 = fadd fast float %2255, %1252
  %2257 = fmul fast float %2179, %2009
  %2258 = fmul fast float %2179, %2010
  %2259 = fmul fast float %2179, %2011
  %2260 = fadd fast float %2257, %1239
  %2261 = fadd fast float %2258, %1240
  %2262 = fadd fast float %2259, %1241
  br label %2291

; <label>:2263                                    ; preds = %2215
  %2264 = icmp eq i32 %2159, 8
  br i1 %2264, label %2265, label %2291

; <label>:2265                                    ; preds = %2263
  %2266 = fmul fast float %2164, %1852
  %2267 = fmul fast float %2164, %1853
  %2268 = fadd fast float %2266, %1234
  %2269 = fadd fast float %2267, %1235
  %2270 = call float @dx.op.binary.f32(i32 36, float %1251, float %1854)  ; FMin(a,b)
  %2271 = fsub fast float %2270, %1251
  %2272 = fmul fast float %2271, %2167
  %2273 = fadd fast float %2272, %1251
  %2274 = fsub fast float %1851, %1250
  %2275 = fmul fast float %2170, %2274
  %2276 = fadd fast float %2275, %1250
  %2277 = fmul fast float %2173, %1957
  %2278 = fmul fast float %2173, %1958
  %2279 = fmul fast float %2173, %1959
  %2280 = fadd fast float %2277, %1245
  %2281 = fadd fast float %2278, %1246
  %2282 = fadd fast float %2279, %1247
  %2283 = fmul fast float %2176, %2012
  %2284 = fadd fast float %2283, %1252
  %2285 = fmul fast float %2179, %2009
  %2286 = fmul fast float %2179, %2010
  %2287 = fmul fast float %2179, %2011
  %2288 = fadd fast float %2285, %1239
  %2289 = fadd fast float %2286, %1240
  %2290 = fadd fast float %2287, %1241
  br label %2291

; <label>:2291                                    ; preds = %2265, %2263, %2217, %2181, %2150, %1550, %1254, %1233
  %2292 = phi float [ %1234, %2150 ], [ %1234, %1550 ], [ %1234, %1233 ], [ %2268, %2265 ], [ %1234, %2263 ], [ %2220, %2217 ], [ %2186, %2181 ], [ %1234, %1254 ]
  %2293 = phi float [ %1235, %2150 ], [ %1235, %1550 ], [ %1235, %1233 ], [ %2269, %2265 ], [ %1235, %2263 ], [ %2221, %2217 ], [ %2187, %2181 ], [ %1235, %1254 ]
  %2294 = phi float [ %2151, %2150 ], [ %1236, %1550 ], [ %1236, %1233 ], [ %2151, %2265 ], [ %2151, %2263 ], [ %2151, %2217 ], [ %2151, %2181 ], [ %1236, %1254 ]
  %2295 = phi float [ %2152, %2150 ], [ %1237, %1550 ], [ %1237, %1233 ], [ %2152, %2265 ], [ %2152, %2263 ], [ %2152, %2217 ], [ %2152, %2181 ], [ %1237, %1254 ]
  %2296 = phi float [ %2153, %2150 ], [ %1238, %1550 ], [ %1238, %1233 ], [ %2153, %2265 ], [ %2153, %2263 ], [ %2153, %2217 ], [ %2153, %2181 ], [ %1238, %1254 ]
  %2297 = phi float [ %1239, %2150 ], [ %1239, %1550 ], [ %1239, %1233 ], [ %2288, %2265 ], [ %1239, %2263 ], [ %2260, %2217 ], [ %2212, %2181 ], [ %1239, %1254 ]
  %2298 = phi float [ %1240, %2150 ], [ %1240, %1550 ], [ %1240, %1233 ], [ %2289, %2265 ], [ %1240, %2263 ], [ %2261, %2217 ], [ %2213, %2181 ], [ %1240, %1254 ]
  %2299 = phi float [ %1241, %2150 ], [ %1241, %1550 ], [ %1241, %1233 ], [ %2290, %2265 ], [ %1241, %2263 ], [ %2262, %2217 ], [ %2214, %2181 ], [ %1241, %1254 ]
  %2300 = phi float [ %2154, %2150 ], [ %1242, %1550 ], [ %1242, %1233 ], [ %2154, %2265 ], [ %2154, %2263 ], [ %2154, %2217 ], [ %2154, %2181 ], [ %1242, %1254 ]
  %2301 = phi float [ %2155, %2150 ], [ %1243, %1550 ], [ %1243, %1233 ], [ %2155, %2265 ], [ %2155, %2263 ], [ %2155, %2217 ], [ %2155, %2181 ], [ %1243, %1254 ]
  %2302 = phi float [ %2156, %2150 ], [ %1244, %1550 ], [ %1244, %1233 ], [ %2156, %2265 ], [ %2156, %2263 ], [ %2156, %2217 ], [ %2156, %2181 ], [ %1244, %1254 ]
  %2303 = phi float [ %1245, %2150 ], [ %1245, %1550 ], [ %1245, %1233 ], [ %2280, %2265 ], [ %1245, %2263 ], [ %2252, %2217 ], [ %2200, %2181 ], [ %1245, %1254 ]
  %2304 = phi float [ %1246, %2150 ], [ %1246, %1550 ], [ %1246, %1233 ], [ %2281, %2265 ], [ %1246, %2263 ], [ %2253, %2217 ], [ %2201, %2181 ], [ %1246, %1254 ]
  %2305 = phi float [ %1247, %2150 ], [ %1247, %1550 ], [ %1247, %1233 ], [ %2282, %2265 ], [ %1247, %2263 ], [ %2254, %2217 ], [ %2202, %2181 ], [ %1247, %1254 ]
  %2306 = phi float [ %2157, %2150 ], [ %1248, %1550 ], [ %1248, %1233 ], [ %2157, %2265 ], [ %2157, %2263 ], [ %2157, %2217 ], [ %2157, %2181 ], [ %1248, %1254 ]
  %2307 = phi float [ %1250, %2150 ], [ %1250, %1550 ], [ %1250, %1233 ], [ %2276, %2265 ], [ %1250, %2263 ], [ %2248, %2217 ], [ %2193, %2181 ], [ %1250, %1254 ]
  %2308 = phi float [ %1251, %2150 ], [ %1251, %1550 ], [ %1251, %1233 ], [ %2273, %2265 ], [ %1251, %2263 ], [ %2225, %2217 ], [ %2190, %2181 ], [ %1251, %1254 ]
  %2309 = phi float [ %1252, %2150 ], [ %1252, %1550 ], [ %1252, %1233 ], [ %2284, %2265 ], [ %1252, %2263 ], [ %2256, %2217 ], [ %2205, %2181 ], [ %1252, %1254 ]
  %2310 = phi float [ %2158, %2150 ], [ %1253, %1550 ], [ %1253, %1233 ], [ %2158, %2265 ], [ %2158, %2263 ], [ %2158, %2217 ], [ %2158, %2181 ], [ %1253, %1254 ]
  br i1 %408, label %3348, label %2311

; <label>:2311                                    ; preds = %2291
  %2312 = icmp ult i32 %464, 3
  %2313 = add i32 %56, 56
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %56, 60
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = or i32 %2318, %2315
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %3348, label %2321

; <label>:2321                                    ; preds = %2311
  %2322 = and i32 %2315, 262144
  %2323 = icmp ne i32 %2322, 0
  %2324 = select i1 %2323, float %59, float 1.000000e+00
  %2325 = select i1 %2323, float %60, float 0.000000e+00
  %2326 = select i1 %2323, float %61, float 0.000000e+00
  %2327 = select i1 %2323, float %62, float 1.000000e+00
  %2328 = select i1 %2323, float %63, float %84
  %2329 = select i1 %2323, float %64, float %85
  %2330 = add i32 %56, 316
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = fmul fast float %2334, 0x3F50624DE0000000
  %2336 = add i32 %56, 120
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 16
  %2340 = and i32 %2339, 255
  %2341 = lshr i32 %2338, 24
  %2342 = add i32 %56, 324
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = lshr i32 %2344, 16
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = add i32 %56, 64
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = lshr i32 %2351, 22
  %2353 = shl nuw nsw i32 %2352, 5
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = shl i32 %2351, 4
  %2356 = and i32 %2355, 32752
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = lshr i32 %2351, 7
  %2359 = and i32 %2358, 32752
  %2360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2359)  ; LegacyF16ToF32(value)
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2363 = fmul fast float %2362, 1.000000e+03
  %2364 = fmul fast float %358, %2363
  %2365 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2366 = fadd fast float %2365, %348
  %2367 = fmul fast float %359, %2363
  %2368 = call float @dx.op.unary.f32(i32 22, float %2367)  ; Frc(value)
  %2369 = fadd fast float %2368, %350
  %2370 = fmul fast float %2335, %2363
  %2371 = call float @dx.op.unary.f32(i32 22, float %2370)  ; Frc(value)
  %2372 = fmul fast float %2371, 0x401921FB60000000
  %2373 = fadd fast float %2372, %2354
  %2374 = call float @dx.op.unary.f32(i32 13, float %2373)  ; Sin(value)
  %2375 = call float @dx.op.unary.f32(i32 12, float %2373)  ; Cos(value)
  %2376 = fsub fast float -0.000000e+00, %2374
  %2377 = fadd fast float %2328, -5.000000e-01
  %2378 = fadd fast float %2329, -5.000000e-01
  %2379 = fmul fast float %2346, %2377
  %2380 = fmul fast float %2348, %2378
  %2381 = fadd fast float %2379, 5.000000e-01
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fmul fast float %2357, %2381
  %2384 = fmul fast float %2360, %2382
  %2385 = fmul fast float %2375, %2383
  %2386 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2384, float %2385)  ; FMad(a,b,c)
  %2387 = fmul fast float %2374, %2383
  %2388 = call float @dx.op.tertiary.f32(i32 46, float %2375, float %2384, float %2387)  ; FMad(a,b,c)
  %2389 = fadd fast float %2366, %2386
  %2390 = fadd fast float %2369, %2388
  %2391 = icmp ugt i32 %2340, 1
  %2392 = icmp ugt i32 %2338, 33554431
  %2393 = or i1 %2392, %2391
  br i1 %2393, label %2394, label %2419

; <label>:2394                                    ; preds = %2321
  %2395 = add i32 %56, 260
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = lshr i32 %2397, 16
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = fmul fast float %2362, %2399
  %2401 = call float @dx.op.unary.f32(i32 22, float %2400)  ; Frc(value)
  %2402 = mul nuw nsw i32 %2340, %2341
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2401, %2403
  %2405 = call float @dx.op.unary.f32(i32 27, float %2404)  ; Round_ni(value)
  %2406 = fptoui float %2405 to i32
  %2407 = urem i32 %2406, %2340
  %2408 = udiv i32 %2406, %2341
  %2409 = call float @dx.op.unary.f32(i32 22, float %2389)  ; Frc(value)
  %2410 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2411 = uitofp i32 %2407 to float
  %2412 = uitofp i32 %2408 to float
  %2413 = fadd fast float %2409, %2411
  %2414 = fadd fast float %2410, %2412
  %2415 = uitofp i32 %2340 to float
  %2416 = uitofp i32 %2341 to float
  %2417 = fdiv fast float %2413, %2415
  %2418 = fdiv fast float %2414, %2416
  br label %2419

; <label>:2419                                    ; preds = %2394, %2321
  %2420 = phi float [ %2417, %2394 ], [ %2389, %2321 ]
  %2421 = phi float [ %2418, %2394 ], [ %2390, %2321 ]
  %2422 = and i32 %2315, 16777216
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2533, label %2424

; <label>:2424                                    ; preds = %2419
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2429 = fadd fast float %2426, %157
  %2430 = fadd fast float %2427, %158
  %2431 = fadd fast float %2428, %159
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = icmp eq i32 %57, 65535
  br i1 %2435, label %2530, label %2436

; <label>:2436                                    ; preds = %2424
  %2437 = lshr i32 %57, 1
  %2438 = shl i32 %2437, 2
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %57, 1
  %2442 = icmp ne i32 %2441, 0
  %2443 = lshr i32 %2440, 16
  %2444 = and i32 %2440, 65535
  %2445 = select i1 %2442, i32 %2443, i32 %2444
  %2446 = icmp eq i32 %2445, 65535
  br i1 %2446, label %2526, label %2447

; <label>:2447                                    ; preds = %2436
  %2448 = mul nuw nsw i32 %2445, 40
  %2449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = add nuw nsw i32 %2448, 12
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2448, 24
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = add nuw nsw i32 %2448, 36
  %2464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = fsub fast float %2429, %2450
  %2467 = fsub fast float %2430, %2451
  %2468 = fsub fast float %2431, %2452
  %2469 = fmul fast float %2465, %2466
  %2470 = fmul fast float %2465, %2467
  %2471 = fmul fast float %2465, %2468
  %2472 = call float @dx.op.unary.f32(i32 27, float %2469)  ; Round_ni(value)
  %2473 = call float @dx.op.unary.f32(i32 27, float %2470)  ; Round_ni(value)
  %2474 = call float @dx.op.unary.f32(i32 27, float %2471)  ; Round_ni(value)
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fmul fast float %2475, %2455
  %2479 = fmul fast float %2476, %2456
  %2480 = fmul fast float %2477, %2457
  %2481 = shl i32 %57, 2
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2487 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2485, %dx.types.Handle %51, float %2486, float %2487, float %2488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = fmul fast float %2490, 1.023000e+03
  %2494 = fmul fast float %2491, 1.023000e+03
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = call float @dx.op.unary.f32(i32 27, float %2496)  ; Round_ni(value)
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = fsub fast float %2469, %2472
  %2503 = fsub fast float %2470, %2473
  %2504 = fsub fast float %2471, %2474
  %2505 = fmul fast float %2502, 7.500000e-01
  %2506 = fmul fast float %2503, 7.500000e-01
  %2507 = fmul fast float %2504, 7.500000e-01
  %2508 = fadd fast float %2472, 1.250000e-01
  %2509 = fadd fast float %2508, %2505
  %2510 = fadd fast float %2509, %2499
  %2511 = fadd fast float %2473, 1.250000e-01
  %2512 = fadd fast float %2511, %2506
  %2513 = fadd fast float %2512, %2500
  %2514 = fadd fast float %2474, 1.250000e-01
  %2515 = fadd fast float %2514, %2507
  %2516 = fadd fast float %2515, %2501
  %2517 = fmul fast float %2510, %2460
  %2518 = fmul fast float %2513, %2461
  %2519 = fmul fast float %2516, %2462
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2523, %dx.types.Handle %49, float %2517, float %2518, float %2519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  br label %2526

; <label>:2526                                    ; preds = %2447, %2436
  %2527 = phi float [ %2525, %2447 ], [ -1.000000e+00, %2436 ]
  %2528 = fadd fast float %2527, %2434
  %2529 = call float @dx.op.unary.f32(i32 7, float %2528)  ; Saturate(value)
  br label %2530

; <label>:2530                                    ; preds = %2526, %2424
  %2531 = phi float [ %2529, %2526 ], [ %2434, %2424 ]
  %2532 = fmul fast float %2531, %460
  br label %2533

; <label>:2533                                    ; preds = %2530, %2419
  %2534 = phi float [ %2532, %2530 ], [ %460, %2419 ]
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 256
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2585, label %2539

; <label>:2539                                    ; preds = %2533
  %2540 = add i32 %56, 432
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = add i32 %2542, 0
  %2544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2544, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2547 = add i32 %56, 132
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = shl i32 %2549, 4
  %2551 = and i32 %2550, 32752
  %2552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2551)  ; LegacyF16ToF32(value)
  %2553 = lshr i32 %2549, 7
  %2554 = and i32 %2553, 32752
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = fsub fast float 1.000000e+00, %2534
  %2557 = call float @dx.op.binary.f32(i32 35, float %2556, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2558 = bitcast float %2534 to i32
  %2559 = sitofp i32 %2558 to float
  %2560 = fadd fast float %2559, 0xC1CFBF8940000000
  %2561 = fmul fast float %2555, %2560
  %2562 = fadd fast float %2561, 0x41CFBF8940000000
  %2563 = fptosi float %2562 to i32
  %2564 = bitcast i32 %2563 to float
  %2565 = bitcast float %2557 to i32
  %2566 = sitofp i32 %2565 to float
  %2567 = fadd fast float %2566, 0xC1CFBF8940000000
  %2568 = fmul fast float %2567, %2555
  %2569 = fadd fast float %2568, 0x41CFBF8940000000
  %2570 = fptosi float %2569 to i32
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2564, %2552
  %2573 = fmul fast float %2571, %2552
  %2574 = fsub fast float %2557, %2572
  %2575 = fadd fast float %2573, %2557
  %2576 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2577 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2578 = fsub fast float %2546, %2576
  %2579 = fsub fast float %2577, %2576
  %2580 = bitcast float %2579 to i32
  %2581 = sub nsw i32 2129859010, %2580
  %2582 = bitcast i32 %2581 to float
  %2583 = fmul fast float %2582, %2578
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  br label %2585

; <label>:2585                                    ; preds = %2539, %2533
  %2586 = phi float [ %2584, %2539 ], [ %2534, %2533 ]
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 128
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %2607, label %2591

; <label>:2591                                    ; preds = %2585
  %2592 = add i32 %56, 416
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %2594, 0
  %2596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2596, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 524288
  %2602 = icmp ne i32 %2601, 0
  %2603 = fcmp fast ogt float %2598, 0x3FE0101020000000
  %2604 = select i1 %2603, float 1.000000e+00, float 0.000000e+00
  %2605 = select i1 %2602, float %2604, float %2598
  %2606 = fmul fast float %2605, %2586
  br label %2607

; <label>:2607                                    ; preds = %2591, %2585
  %2608 = phi float [ %2606, %2591 ], [ %2586, %2585 ]
  %2609 = fcmp fast ult float %2608, 0x3F70101020000000
  br i1 %2609, label %3348, label %2610

; <label>:2610                                    ; preds = %2607
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 16
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2813, label %2615

; <label>:2615                                    ; preds = %2610
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %56, 368
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = extractvalue %dx.types.ResRet.f32 %2623, 3
  %2628 = and i32 %2617, 255
  %2629 = uitofp i32 %2628 to float
  %2630 = lshr i32 %2617, 8
  %2631 = and i32 %2630, 255
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2627, %2629
  %2634 = fadd fast float %2633, %2632
  %2635 = fmul fast float %2634, 0x3F70101000000000
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 512
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2648, label %2640

; <label>:2640                                    ; preds = %2615
  %2641 = add i32 %56, 448
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  br label %2648

; <label>:2648                                    ; preds = %2640, %2615
  %2649 = phi float [ %2647, %2640 ], [ 1.000000e+00, %2615 ]
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 33554432
  %2653 = icmp eq i32 %2652, 0
  br i1 %2653, label %2760, label %2654

; <label>:2654                                    ; preds = %2648
  %2655 = add i32 %56, 256
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, 65535
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = lshr i32 %2657, 16
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = add i32 %56, 260
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 65535
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = lshr i32 %2668, 24
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = and i32 %2668, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2668, 8
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2668, 16
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = add i32 %56, 252
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 24
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = and i32 %2685, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2685, 8
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = lshr i32 %2685, 16
  %2697 = and i32 %2696, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = fmul fast float %2698, 0x3F70101020000000
  %2700 = bitcast float %2624 to i32
  %2701 = ashr i32 %2700, 1
  %2702 = sub nsw i32 1597463174, %2701
  %2703 = bitcast i32 %2702 to float
  %2704 = fmul fast float %2624, 5.000000e-01
  %2705 = fmul fast float %2703, %2703
  %2706 = fmul fast float %2705, %2704
  %2707 = fsub fast float 1.500000e+00, %2706
  %2708 = fmul fast float %2703, %2624
  %2709 = fmul fast float %2708, %2707
  %2710 = bitcast float %2625 to i32
  %2711 = ashr i32 %2710, 1
  %2712 = sub nsw i32 1597463174, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2625, 5.000000e-01
  %2715 = fmul fast float %2713, %2713
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float 1.500000e+00, %2716
  %2718 = fmul fast float %2713, %2625
  %2719 = fmul fast float %2718, %2717
  %2720 = bitcast float %2626 to i32
  %2721 = ashr i32 %2720, 1
  %2722 = sub nsw i32 1597463174, %2721
  %2723 = bitcast i32 %2722 to float
  %2724 = fmul fast float %2626, 5.000000e-01
  %2725 = fmul fast float %2723, %2723
  %2726 = fmul fast float %2725, %2724
  %2727 = fsub fast float 1.500000e+00, %2726
  %2728 = fmul fast float %2723, %2626
  %2729 = fmul fast float %2728, %2727
  %2730 = fsub fast float %2709, %2691
  %2731 = fsub fast float %2719, %2695
  %2732 = fsub fast float %2729, %2699
  %2733 = fmul fast float %2730, %2659
  %2734 = fmul fast float %2731, %2661
  %2735 = fmul fast float %2732, %2666
  %2736 = fadd fast float %2733, %2674
  %2737 = fadd fast float %2734, %2678
  %2738 = fadd fast float %2735, %2682
  %2739 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2740 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2741 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2742 = fmul fast float %2739, %2739
  %2743 = fmul fast float %2740, %2740
  %2744 = fmul fast float %2741, %2741
  %2745 = fsub fast float %2742, %2624
  %2746 = fsub fast float %2743, %2625
  %2747 = fsub fast float %2744, %2626
  %2748 = fmul fast float %2745, %2649
  %2749 = fmul fast float %2746, %2649
  %2750 = fmul fast float %2747, %2649
  %2751 = fadd fast float %2748, %2624
  %2752 = fadd fast float %2749, %2625
  %2753 = fadd fast float %2750, %2626
  %2754 = fadd fast float %2671, %2635
  %2755 = fsub fast float %2754, %2688
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fsub fast float %2756, %2635
  %2758 = fmul fast float %2757, %2649
  %2759 = fadd fast float %2758, %2635
  br label %2813

; <label>:2760                                    ; preds = %2648
  %2761 = and i32 %2651, 134217728
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %2797, label %2763

; <label>:2763                                    ; preds = %2760
  %2764 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fmul fast float %2767, %2649
  %2771 = fmul fast float %2768, %2649
  %2772 = fmul fast float %2769, %2649
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = call float @dx.op.unary.f32(i32 24, float %2624)  ; Sqrt(value)
  %2777 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2778 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2779 = fmul fast float %2773, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2776
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2776
  %2784 = fmul fast float %2774, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2777
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2777
  %2789 = fmul fast float %2775, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2778
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2778
  %2794 = fmul fast float %2783, %2783
  %2795 = fmul fast float %2788, %2788
  %2796 = fmul fast float %2793, %2793
  br label %2813

; <label>:2797                                    ; preds = %2760
  %2798 = fmul fast float %335, %335
  %2799 = fmul fast float %339, %339
  %2800 = fmul fast float %343, %343
  %2801 = fadd fast float %2798, -1.000000e+00
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fmul fast float %2649, %2801
  %2805 = fmul fast float %2649, %2802
  %2806 = fmul fast float %2649, %2803
  %2807 = fadd fast float %2804, 1.000000e+00
  %2808 = fadd fast float %2805, 1.000000e+00
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fmul fast float %2807, %2624
  %2811 = fmul fast float %2808, %2625
  %2812 = fmul fast float %2809, %2626
  br label %2813

; <label>:2813                                    ; preds = %2797, %2763, %2654, %2610
  %2814 = phi float [ %2759, %2654 ], [ %2635, %2763 ], [ %2635, %2797 ], [ 0x3FA23C0BE0000000, %2610 ]
  %2815 = phi float [ %2751, %2654 ], [ %2794, %2763 ], [ %2810, %2797 ], [ 1.000000e+00, %2610 ]
  %2816 = phi float [ %2752, %2654 ], [ %2795, %2763 ], [ %2811, %2797 ], [ 1.000000e+00, %2610 ]
  %2817 = phi float [ %2753, %2654 ], [ %2796, %2763 ], [ %2812, %2797 ], [ 1.000000e+00, %2610 ]
  %2818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.i32 %2818, 1
  %2820 = and i32 %2819, 1
  %2821 = icmp ne i32 %2820, 0
  %2822 = add i32 %56, 356
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 32
  %2826 = icmp ne i32 %2825, 0
  %2827 = and i1 %2821, %2826
  %2828 = select i1 %2827, float 1.000000e+00, float %2815
  %2829 = select i1 %2827, float 0x3FD3333340000000, float %2816
  %2830 = select i1 %2827, float 0x3FD3333340000000, float %2817
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 32
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %2907, label %2835

; <label>:2835                                    ; preds = %2813
  %2836 = add i32 %56, 124
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = add i32 %56, 384
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %2841, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2843, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.f32 %2844, 1
  %2847 = extractvalue %dx.types.ResRet.f32 %2844, 2
  %2848 = extractvalue %dx.types.ResRet.f32 %2844, 3
  %2849 = and i32 %2838, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = lshr i32 %2838, 8
  %2852 = and i32 %2851, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2838, 16
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F70101000000000
  %2858 = fmul fast float %2845, %2850
  %2859 = fadd fast float %2858, %2853
  %2860 = fmul fast float %2859, 0x3F70101000000000
  %2861 = fadd fast float %2846, -5.000000e-01
  %2862 = fadd fast float %2848, -5.000000e-01
  %2863 = fmul fast float %2861, %2857
  %2864 = fmul fast float %2862, %2857
  %2865 = fadd fast float %2863, 5.000000e-01
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = fmul fast float %2865, 2.000000e+00
  %2868 = fadd fast float %2867, -1.000000e+00
  %2869 = fmul fast float %2866, 2.000000e+00
  %2870 = fadd fast float %2869, -1.000000e+00
  %2871 = fadd fast float %2868, %2870
  %2872 = fmul fast float %2871, 5.000000e-01
  %2873 = fsub fast float %2868, %2870
  %2874 = fmul fast float %2873, 5.000000e-01
  %2875 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2876 = fsub fast float 1.000000e+00, %2875
  %2877 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2878 = fsub fast float %2876, %2877
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2874, float %2878, float %2872, float %2874, float %2878)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = call float @dx.op.unary.f32(i32 25, float %2879)  ; Rsqrt(value)
  %2881 = fmul fast float %2872, %2880
  %2882 = fmul fast float %2874, %2880
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 67108864
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2903, label %2887

; <label>:2887                                    ; preds = %2835
  %2888 = add i32 %56, 312
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 65535
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 65535
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = lshr i32 %2890, 16
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = fsub fast float %2860, %2898
  %2900 = fmul fast float %2899, %2892
  %2901 = fadd fast float %2900, %2896
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  br label %2903

; <label>:2903                                    ; preds = %2887, %2835
  %2904 = phi float [ %2902, %2887 ], [ %2860, %2835 ]
  %2905 = call float @dx.op.dot2.f32(i32 54, float %2881, float %2882, float %2324, float %2325)  ; Dot2(ax,ay,bx,by)
  %2906 = call float @dx.op.dot2.f32(i32 54, float %2881, float %2882, float %2326, float %2327)  ; Dot2(ax,ay,bx,by)
  br label %2907

; <label>:2907                                    ; preds = %2903, %2813
  %2908 = phi float [ %2904, %2903 ], [ 0x3FD6666660000000, %2813 ]
  %2909 = phi float [ %2905, %2903 ], [ 0.000000e+00, %2813 ]
  %2910 = phi float [ %2906, %2903 ], [ 0.000000e+00, %2813 ]
  %2911 = phi float [ %2847, %2903 ], [ 1.000000e+00, %2813 ]
  %2912 = add i32 %56, 192
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 22
  %2916 = shl nuw nsw i32 %2915, 5
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 64
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %2955, label %2922

; <label>:2922                                    ; preds = %2907
  %2923 = add i32 %56, 400
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 131072
  %2931 = icmp eq i32 %2930, 0
  %2932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %98, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = fmul fast float %2933, %323
  %2937 = fmul fast float %2934, %326
  %2938 = fmul fast float %2935, %329
  br i1 %2931, label %2945, label %2939

; <label>:2939                                    ; preds = %2922
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = fmul fast float %2941, %2936
  %2943 = fmul fast float %2941, %2937
  %2944 = fmul fast float %2941, %2938
  br label %2945

; <label>:2945                                    ; preds = %2939, %2922
  %2946 = phi float [ %2942, %2939 ], [ %2936, %2922 ]
  %2947 = phi float [ %2943, %2939 ], [ %2937, %2922 ]
  %2948 = phi float [ %2944, %2939 ], [ %2938, %2922 ]
  %2949 = fmul fast float %2946, %2917
  %2950 = select i1 %219, float %2949, float %2946
  %2951 = call float @dx.op.dot3.f32(i32 55, float %2950, float %2947, float %2948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2952 = select i1 %219, float 0.000000e+00, float %2946
  %2953 = select i1 %219, float %2951, float %2947
  %2954 = select i1 %219, float 0.000000e+00, float %2948
  br label %2955

; <label>:2955                                    ; preds = %2945, %2907
  %2956 = phi float [ %2952, %2945 ], [ 0.000000e+00, %2907 ]
  %2957 = phi float [ %2953, %2945 ], [ 0.000000e+00, %2907 ]
  %2958 = phi float [ %2954, %2945 ], [ 0.000000e+00, %2907 ]
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 1024
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2993, label %2963

; <label>:2963                                    ; preds = %2955
  %2964 = add i32 %56, 184
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2966, 8
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2966, 16
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = fmul fast float %2969, %2969
  %2979 = fmul fast float %2973, %2973
  %2980 = fmul fast float %2977, %2977
  %2981 = add i32 %56, 464
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2985, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = fmul fast float %2978, %2987
  %2991 = fmul fast float %2979, %2988
  %2992 = fmul fast float %2980, %2989
  br label %2993

; <label>:2993                                    ; preds = %2963, %2955
  %2994 = phi float [ %2990, %2963 ], [ 0.000000e+00, %2955 ]
  %2995 = phi float [ %2991, %2963 ], [ 0.000000e+00, %2955 ]
  %2996 = phi float [ %2992, %2963 ], [ 0.000000e+00, %2955 ]
  %2997 = fcmp fast ogt float %2994, 0.000000e+00
  %2998 = fcmp fast ogt float %2995, 0.000000e+00
  %2999 = fcmp fast ogt float %2996, 0.000000e+00
  %3000 = call float @dx.op.unary.f32(i32 23, float %2994)  ; Log(value)
  %3001 = call float @dx.op.unary.f32(i32 23, float %2995)  ; Log(value)
  %3002 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = lshr i32 %3004, 7
  %3006 = and i32 %3005, 32752
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = fmul fast float %3000, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3007
  %3010 = fmul fast float %3001, 0xBFE62E4300000000
  %3011 = fmul fast float %3010, %3007
  %3012 = fmul fast float %3002, 0xBFE62E4300000000
  %3013 = fmul fast float %3012, %3007
  %3014 = select i1 %2997, float %3009, float 1.270000e+02
  %3015 = select i1 %2998, float %3011, float 1.270000e+02
  %3016 = select i1 %2999, float %3013, float 1.270000e+02
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 10240
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3065, label %3021

; <label>:3021                                    ; preds = %2993
  %3022 = add i32 %56, 480
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %99, float %2420, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 3
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 1048576
  %3033 = icmp ne i32 %3032, 0
  %3034 = and i32 %3031, 8192
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3051, label %3036

; <label>:3036                                    ; preds = %3021
  %3037 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3038 = select i1 %3033, float %3037, float %3028
  %3039 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3040 = select i1 %3033, float %3039, float %3028
  %3041 = add i32 %56, 128
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = lshr i32 %3043, 16
  %3045 = and i32 %3044, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = fmul fast float %3046, 0x3F80101020000000
  %3048 = fmul fast float %3047, %3040
  %3049 = fmul fast float %3047, %3028
  %3050 = fmul fast float %3047, %3038
  br label %3051

; <label>:3051                                    ; preds = %3036, %3021
  %3052 = phi float [ %3048, %3036 ], [ 0.000000e+00, %3021 ]
  %3053 = phi float [ %3049, %3036 ], [ 0.000000e+00, %3021 ]
  %3054 = phi float [ %3050, %3036 ], [ 0.000000e+00, %3021 ]
  %3055 = and i32 %3031, 2048
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3065, label %3057

; <label>:3057                                    ; preds = %3051
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = shl i32 %3059, 4
  %3061 = and i32 %3060, 32752
  %3062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3061)  ; LegacyF16ToF32(value)
  %3063 = fmul fast float %3062, %3029
  %3064 = call float @dx.op.binary.f32(i32 35, float %3063, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3065

; <label>:3065                                    ; preds = %3057, %3051, %2993
  %3066 = phi float [ %3052, %3057 ], [ %3052, %3051 ], [ 0.000000e+00, %2993 ]
  %3067 = phi float [ %3053, %3057 ], [ %3053, %3051 ], [ 0.000000e+00, %2993 ]
  %3068 = phi float [ %3054, %3057 ], [ %3054, %3051 ], [ 0.000000e+00, %2993 ]
  %3069 = phi float [ %3064, %3057 ], [ 0x3F70101020000000, %3051 ], [ 0x3F70101020000000, %2993 ]
  %3070 = add i32 %56, 128
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3072, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fmul fast float %3077, %3078
  %3080 = fadd fast float %3079, %3074
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  br i1 %2312, label %3083, label %3118

; <label>:3083                                    ; preds = %3065
  %3084 = fmul fast float %3069, 2.000000e+00
  %3085 = fcmp fast olt float %3014, 1.270000e+02
  %3086 = fcmp fast olt float %3015, 1.270000e+02
  %3087 = fcmp fast olt float %3016, 1.270000e+02
  %3088 = fmul fast float %3014, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3084
  %3090 = fmul fast float %3015, 0xBFF7154760000000
  %3091 = fmul fast float %3090, %3084
  %3092 = fmul fast float %3016, 0xBFF7154760000000
  %3093 = fmul fast float %3092, %3084
  %3094 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3095 = call float @dx.op.unary.f32(i32 21, float %3091)  ; Exp(value)
  %3096 = call float @dx.op.unary.f32(i32 21, float %3093)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3099 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = select i1 %3085, float %3100, float -1.000000e+00
  %3102 = fadd fast float %3098, -1.000000e+00
  %3103 = select i1 %3086, float %3102, float -1.000000e+00
  %3104 = fadd fast float %3099, -1.000000e+00
  %3105 = select i1 %3087, float %3104, float -1.000000e+00
  %3106 = fmul fast float %3101, %2608
  %3107 = fmul fast float %3103, %2608
  %3108 = fmul fast float %3105, %2608
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fmul fast float %3109, %2294
  %3113 = fmul fast float %3110, %2295
  %3114 = fmul fast float %3111, %2296
  %3115 = fmul fast float %3109, %2300
  %3116 = fmul fast float %3110, %2301
  %3117 = fmul fast float %3111, %2302
  br label %3118

; <label>:3118                                    ; preds = %3083, %3065
  %3119 = phi float [ %3112, %3083 ], [ %2294, %3065 ]
  %3120 = phi float [ %3113, %3083 ], [ %2295, %3065 ]
  %3121 = phi float [ %3114, %3083 ], [ %2296, %3065 ]
  %3122 = phi float [ %3115, %3083 ], [ %2300, %3065 ]
  %3123 = phi float [ %3116, %3083 ], [ %2301, %3065 ]
  %3124 = phi float [ %3117, %3083 ], [ %2302, %3065 ]
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 3
  %3128 = icmp eq i32 %3127, 3
  br i1 %3128, label %3207, label %3129

; <label>:3129                                    ; preds = %3118
  %3130 = and i32 %3126, 16
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2608, float 0.000000e+00
  %3133 = icmp eq i32 %3127, 0
  br i1 %3133, label %3134, label %3162

; <label>:3134                                    ; preds = %3129
  %3135 = and i32 %3126, 64
  %3136 = icmp ne i32 %3135, 0
  %3137 = select i1 %3136, float %2608, float 0.000000e+00
  %3138 = fsub fast float %2828, %3119
  %3139 = fsub fast float %2829, %3120
  %3140 = fsub fast float %2830, %3121
  %3141 = fmul fast float %3132, %3138
  %3142 = fmul fast float %3132, %3139
  %3143 = fmul fast float %3132, %3140
  %3144 = fadd fast float %3141, %3119
  %3145 = fadd fast float %3142, %3120
  %3146 = fadd fast float %3143, %3121
  %3147 = fsub fast float %2814, %2306
  %3148 = fmul fast float %3132, %3147
  %3149 = fadd fast float %3148, %2306
  %3150 = fsub fast float %2956, %3122
  %3151 = fsub fast float %2957, %3123
  %3152 = fsub fast float %2958, %3124
  %3153 = fmul fast float %3137, %3150
  %3154 = fmul fast float %3137, %3151
  %3155 = fmul fast float %3137, %3152
  %3156 = fadd fast float %3153, %3122
  %3157 = fadd fast float %3154, %3123
  %3158 = fadd fast float %3155, %3124
  %3159 = fsub fast float %3082, %2310
  %3160 = fmul fast float %3132, %3159
  %3161 = fadd fast float %3160, %2310
  br label %3207

; <label>:3162                                    ; preds = %3129
  %3163 = icmp eq i32 %3127, 1
  br i1 %3163, label %3164, label %3177

; <label>:3164                                    ; preds = %3162
  %3165 = fadd fast float %2828, -1.000000e+00
  %3166 = fadd fast float %2829, -1.000000e+00
  %3167 = fadd fast float %2830, -1.000000e+00
  %3168 = fmul fast float %3132, %3165
  %3169 = fmul fast float %3132, %3166
  %3170 = fmul fast float %3132, %3167
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fmul fast float %3171, %3119
  %3175 = fmul fast float %3172, %3120
  %3176 = fmul fast float %3173, %3121
  br label %3207

; <label>:3177                                    ; preds = %3162
  %3178 = icmp eq i32 %3127, 2
  br i1 %3178, label %3179, label %3207

; <label>:3179                                    ; preds = %3177
  %3180 = call float @dx.op.unary.f32(i32 24, float %2828)  ; Sqrt(value)
  %3181 = call float @dx.op.unary.f32(i32 24, float %2829)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fmul fast float %3183, %3132
  %3187 = fmul fast float %3184, %3132
  %3188 = fmul fast float %3185, %3132
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fmul fast float %3189, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3119
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3119
  %3197 = fmul fast float %3190, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3120
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3120
  %3202 = fmul fast float %3191, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3121
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3121
  br label %3207

; <label>:3207                                    ; preds = %3179, %3177, %3164, %3134, %3118
  %3208 = phi float [ %3119, %3118 ], [ %3196, %3179 ], [ %3119, %3177 ], [ %3174, %3164 ], [ %3144, %3134 ]
  %3209 = phi float [ %3120, %3118 ], [ %3201, %3179 ], [ %3120, %3177 ], [ %3175, %3164 ], [ %3145, %3134 ]
  %3210 = phi float [ %3121, %3118 ], [ %3206, %3179 ], [ %3121, %3177 ], [ %3176, %3164 ], [ %3146, %3134 ]
  %3211 = phi float [ %3122, %3118 ], [ %3122, %3179 ], [ %3122, %3177 ], [ %3122, %3164 ], [ %3156, %3134 ]
  %3212 = phi float [ %3123, %3118 ], [ %3123, %3179 ], [ %3123, %3177 ], [ %3123, %3164 ], [ %3157, %3134 ]
  %3213 = phi float [ %3124, %3118 ], [ %3124, %3179 ], [ %3124, %3177 ], [ %3124, %3164 ], [ %3158, %3134 ]
  %3214 = phi float [ %2306, %3118 ], [ %2306, %3179 ], [ %2306, %3177 ], [ %2306, %3164 ], [ %3149, %3134 ]
  %3215 = phi float [ %2310, %3118 ], [ %2310, %3179 ], [ %2310, %3177 ], [ %2310, %3164 ], [ %3161, %3134 ]
  %3216 = and i32 %3126, 12
  %3217 = icmp eq i32 %3216, 12
  br i1 %3217, label %3348, label %3218

; <label>:3218                                    ; preds = %3207
  %3219 = and i32 %3126, 2097184
  %3220 = icmp eq i32 %3219, 2097184
  %3221 = select i1 %3220, float %2608, float 0.000000e+00
  %3222 = and i32 %3126, 4194336
  %3223 = icmp eq i32 %3222, 4194336
  %3224 = select i1 %3223, float %2608, float 0.000000e+00
  %3225 = and i32 %3126, 8388640
  %3226 = icmp eq i32 %3225, 8388640
  %3227 = select i1 %3226, float %2608, float 0.000000e+00
  %3228 = and i32 %3126, 1024
  %3229 = icmp ne i32 %3228, 0
  %3230 = select i1 %3229, float %2608, float 0.000000e+00
  %3231 = and i32 %3126, 2048
  %3232 = icmp ne i32 %3231, 0
  %3233 = select i1 %3232, float %2608, float 0.000000e+00
  %3234 = and i32 %3126, 8192
  %3235 = icmp ne i32 %3234, 0
  %3236 = select i1 %3235, float %2608, float 0.000000e+00
  %3237 = icmp eq i32 %3216, 0
  br i1 %3237, label %3238, label %3272

; <label>:3238                                    ; preds = %3218
  %3239 = fsub fast float %2909, %2292
  %3240 = fsub fast float %2910, %2293
  %3241 = fmul fast float %3221, %3239
  %3242 = fmul fast float %3221, %3240
  %3243 = fadd fast float %3241, %2292
  %3244 = fadd fast float %3242, %2293
  %3245 = fsub fast float %2911, %2308
  %3246 = fmul fast float %3224, %3245
  %3247 = fadd fast float %3246, %2308
  %3248 = fsub fast float %2908, %2307
  %3249 = fmul fast float %3227, %3248
  %3250 = fadd fast float %3249, %2307
  %3251 = fsub fast float %3014, %2303
  %3252 = fsub fast float %3015, %2304
  %3253 = fsub fast float %3016, %2305
  %3254 = fmul fast float %3230, %3251
  %3255 = fmul fast float %3230, %3252
  %3256 = fmul fast float %3230, %3253
  %3257 = fadd fast float %3254, %2303
  %3258 = fadd fast float %3255, %2304
  %3259 = fadd fast float %3256, %2305
  %3260 = fsub fast float %3069, %2309
  %3261 = fmul fast float %3233, %3260
  %3262 = fadd fast float %3261, %2309
  %3263 = fsub fast float %3066, %2297
  %3264 = fsub fast float %3067, %2298
  %3265 = fsub fast float %3068, %2299
  %3266 = fmul fast float %3236, %3263
  %3267 = fmul fast float %3236, %3264
  %3268 = fmul fast float %3236, %3265
  %3269 = fadd fast float %3266, %2297
  %3270 = fadd fast float %3267, %2298
  %3271 = fadd fast float %3268, %2299
  br label %3348

; <label>:3272                                    ; preds = %3218
  %3273 = icmp eq i32 %3216, 4
  br i1 %3273, label %3274, label %3320

; <label>:3274                                    ; preds = %3272
  %3275 = fmul fast float %3221, %2909
  %3276 = fmul fast float %3221, %2910
  %3277 = fadd fast float %3275, %2292
  %3278 = fadd fast float %3276, %2293
  %3279 = call float @dx.op.binary.f32(i32 36, float %2308, float %2911)  ; FMin(a,b)
  %3280 = fsub fast float %3279, %2308
  %3281 = fmul fast float %3280, %3224
  %3282 = fadd fast float %3281, %2308
  %3283 = fadd fast float %2908, %2307
  %3284 = fmul fast float %3283, 0x3FF337FAE0000000
  %3285 = fmul fast float %2307, %2307
  %3286 = fmul fast float %2908, %2908
  %3287 = fadd fast float %3286, %3285
  %3288 = fmul fast float %3287, 0x3FE5152B00000000
  %3289 = fmul fast float %2307, 0xBFCC1F85E0000000
  %3290 = fmul fast float %3289, %2908
  %3291 = fadd fast float %3290, 0xBFE1363700000000
  %3292 = fadd fast float %3291, %3284
  %3293 = fsub fast float %3292, %3288
  %3294 = fmul fast float %3283, 0x3FBA6F0D00000000
  %3295 = fmul fast float %3287, 0x3FD0432880000000
  %3296 = fmul fast float %2307, 0xBFEF110800000000
  %3297 = fmul fast float %3296, %2908
  %3298 = fadd fast float %3297, 1.000000e+00
  %3299 = fsub fast float %3298, %3294
  %3300 = fadd fast float %3299, %3295
  %3301 = fdiv fast float %3293, %3300
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fsub fast float %3302, %2307
  %3304 = fmul fast float %3303, %3227
  %3305 = fadd fast float %3304, %2307
  %3306 = fmul fast float %3230, %3014
  %3307 = fmul fast float %3230, %3015
  %3308 = fmul fast float %3230, %3016
  %3309 = fadd fast float %3306, %2303
  %3310 = fadd fast float %3307, %2304
  %3311 = fadd fast float %3308, %2305
  %3312 = fmul fast float %3233, %3069
  %3313 = fadd fast float %3312, %2309
  %3314 = fmul fast float %3236, %3066
  %3315 = fmul fast float %3236, %3067
  %3316 = fmul fast float %3236, %3068
  %3317 = fadd fast float %3314, %2297
  %3318 = fadd fast float %3315, %2298
  %3319 = fadd fast float %3316, %2299
  br label %3348

; <label>:3320                                    ; preds = %3272
  %3321 = icmp eq i32 %3216, 8
  br i1 %3321, label %3322, label %3348

; <label>:3322                                    ; preds = %3320
  %3323 = fmul fast float %3221, %2909
  %3324 = fmul fast float %3221, %2910
  %3325 = fadd fast float %3323, %2292
  %3326 = fadd fast float %3324, %2293
  %3327 = call float @dx.op.binary.f32(i32 36, float %2308, float %2911)  ; FMin(a,b)
  %3328 = fsub fast float %3327, %2308
  %3329 = fmul fast float %3328, %3224
  %3330 = fadd fast float %3329, %2308
  %3331 = fsub fast float %2908, %2307
  %3332 = fmul fast float %3227, %3331
  %3333 = fadd fast float %3332, %2307
  %3334 = fmul fast float %3230, %3014
  %3335 = fmul fast float %3230, %3015
  %3336 = fmul fast float %3230, %3016
  %3337 = fadd fast float %3334, %2303
  %3338 = fadd fast float %3335, %2304
  %3339 = fadd fast float %3336, %2305
  %3340 = fmul fast float %3233, %3069
  %3341 = fadd fast float %3340, %2309
  %3342 = fmul fast float %3236, %3066
  %3343 = fmul fast float %3236, %3067
  %3344 = fmul fast float %3236, %3068
  %3345 = fadd fast float %3342, %2297
  %3346 = fadd fast float %3343, %2298
  %3347 = fadd fast float %3344, %2299
  br label %3348

; <label>:3348                                    ; preds = %3322, %3320, %3274, %3238, %3207, %2607, %2311, %2291
  %3349 = phi float [ %2292, %3207 ], [ %2292, %2607 ], [ %2292, %2291 ], [ %3325, %3322 ], [ %2292, %3320 ], [ %3277, %3274 ], [ %3243, %3238 ], [ %2292, %2311 ]
  %3350 = phi float [ %2293, %3207 ], [ %2293, %2607 ], [ %2293, %2291 ], [ %3326, %3322 ], [ %2293, %3320 ], [ %3278, %3274 ], [ %3244, %3238 ], [ %2293, %2311 ]
  %3351 = phi float [ %3208, %3207 ], [ %2294, %2607 ], [ %2294, %2291 ], [ %3208, %3322 ], [ %3208, %3320 ], [ %3208, %3274 ], [ %3208, %3238 ], [ %2294, %2311 ]
  %3352 = phi float [ %3209, %3207 ], [ %2295, %2607 ], [ %2295, %2291 ], [ %3209, %3322 ], [ %3209, %3320 ], [ %3209, %3274 ], [ %3209, %3238 ], [ %2295, %2311 ]
  %3353 = phi float [ %3210, %3207 ], [ %2296, %2607 ], [ %2296, %2291 ], [ %3210, %3322 ], [ %3210, %3320 ], [ %3210, %3274 ], [ %3210, %3238 ], [ %2296, %2311 ]
  %3354 = phi float [ %2297, %3207 ], [ %2297, %2607 ], [ %2297, %2291 ], [ %3345, %3322 ], [ %2297, %3320 ], [ %3317, %3274 ], [ %3269, %3238 ], [ %2297, %2311 ]
  %3355 = phi float [ %2298, %3207 ], [ %2298, %2607 ], [ %2298, %2291 ], [ %3346, %3322 ], [ %2298, %3320 ], [ %3318, %3274 ], [ %3270, %3238 ], [ %2298, %2311 ]
  %3356 = phi float [ %2299, %3207 ], [ %2299, %2607 ], [ %2299, %2291 ], [ %3347, %3322 ], [ %2299, %3320 ], [ %3319, %3274 ], [ %3271, %3238 ], [ %2299, %2311 ]
  %3357 = phi float [ %3211, %3207 ], [ %2300, %2607 ], [ %2300, %2291 ], [ %3211, %3322 ], [ %3211, %3320 ], [ %3211, %3274 ], [ %3211, %3238 ], [ %2300, %2311 ]
  %3358 = phi float [ %3212, %3207 ], [ %2301, %2607 ], [ %2301, %2291 ], [ %3212, %3322 ], [ %3212, %3320 ], [ %3212, %3274 ], [ %3212, %3238 ], [ %2301, %2311 ]
  %3359 = phi float [ %3213, %3207 ], [ %2302, %2607 ], [ %2302, %2291 ], [ %3213, %3322 ], [ %3213, %3320 ], [ %3213, %3274 ], [ %3213, %3238 ], [ %2302, %2311 ]
  %3360 = phi float [ %2303, %3207 ], [ %2303, %2607 ], [ %2303, %2291 ], [ %3337, %3322 ], [ %2303, %3320 ], [ %3309, %3274 ], [ %3257, %3238 ], [ %2303, %2311 ]
  %3361 = phi float [ %2304, %3207 ], [ %2304, %2607 ], [ %2304, %2291 ], [ %3338, %3322 ], [ %2304, %3320 ], [ %3310, %3274 ], [ %3258, %3238 ], [ %2304, %2311 ]
  %3362 = phi float [ %2305, %3207 ], [ %2305, %2607 ], [ %2305, %2291 ], [ %3339, %3322 ], [ %2305, %3320 ], [ %3311, %3274 ], [ %3259, %3238 ], [ %2305, %2311 ]
  %3363 = phi float [ %3214, %3207 ], [ %2306, %2607 ], [ %2306, %2291 ], [ %3214, %3322 ], [ %3214, %3320 ], [ %3214, %3274 ], [ %3214, %3238 ], [ %2306, %2311 ]
  %3364 = phi float [ %2307, %3207 ], [ %2307, %2607 ], [ %2307, %2291 ], [ %3333, %3322 ], [ %2307, %3320 ], [ %3305, %3274 ], [ %3250, %3238 ], [ %2307, %2311 ]
  %3365 = phi float [ %2308, %3207 ], [ %2308, %2607 ], [ %2308, %2291 ], [ %3330, %3322 ], [ %2308, %3320 ], [ %3282, %3274 ], [ %3247, %3238 ], [ %2308, %2311 ]
  %3366 = phi float [ %2309, %3207 ], [ %2309, %2607 ], [ %2309, %2291 ], [ %3341, %3322 ], [ %2309, %3320 ], [ %3313, %3274 ], [ %3262, %3238 ], [ %2309, %2311 ]
  %3367 = phi float [ %3215, %3207 ], [ %2310, %2607 ], [ %2310, %2291 ], [ %3215, %3322 ], [ %3215, %3320 ], [ %3215, %3274 ], [ %3215, %3238 ], [ %2310, %2311 ]
  br i1 %410, label %4405, label %3368

; <label>:3368                                    ; preds = %3348
  %3369 = icmp ult i32 %464, 4
  %3370 = add i32 %56, 72
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %56, 76
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = or i32 %3375, %3372
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %4405, label %3378

; <label>:3378                                    ; preds = %3368
  %3379 = and i32 %3372, 262144
  %3380 = icmp ne i32 %3379, 0
  %3381 = select i1 %3380, float %59, float 1.000000e+00
  %3382 = select i1 %3380, float %60, float 0.000000e+00
  %3383 = select i1 %3380, float %61, float 0.000000e+00
  %3384 = select i1 %3380, float %62, float 1.000000e+00
  %3385 = select i1 %3380, float %63, float %84
  %3386 = select i1 %3380, float %64, float %85
  %3387 = add i32 %56, 332
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 16
  %3391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3390)  ; LegacyF16ToF32(value)
  %3392 = fmul fast float %3391, 0x3F50624DE0000000
  %3393 = add i32 %56, 136
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 16
  %3397 = and i32 %3396, 255
  %3398 = lshr i32 %3395, 24
  %3399 = add i32 %56, 340
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 65535
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = lshr i32 %3401, 16
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = add i32 %56, 80
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = lshr i32 %3408, 22
  %3410 = shl nuw nsw i32 %3409, 5
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = shl i32 %3408, 4
  %3413 = and i32 %3412, 32752
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = lshr i32 %3408, 7
  %3416 = and i32 %3415, 32752
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3420 = fmul fast float %3419, 1.000000e+03
  %3421 = fmul fast float %400, %3420
  %3422 = call float @dx.op.unary.f32(i32 22, float %3421)  ; Frc(value)
  %3423 = fadd fast float %3422, %390
  %3424 = fmul fast float %401, %3420
  %3425 = call float @dx.op.unary.f32(i32 22, float %3424)  ; Frc(value)
  %3426 = fadd fast float %3425, %392
  %3427 = fmul fast float %3392, %3420
  %3428 = call float @dx.op.unary.f32(i32 22, float %3427)  ; Frc(value)
  %3429 = fmul fast float %3428, 0x401921FB60000000
  %3430 = fadd fast float %3429, %3411
  %3431 = call float @dx.op.unary.f32(i32 13, float %3430)  ; Sin(value)
  %3432 = call float @dx.op.unary.f32(i32 12, float %3430)  ; Cos(value)
  %3433 = fsub fast float -0.000000e+00, %3431
  %3434 = fadd fast float %3385, -5.000000e-01
  %3435 = fadd fast float %3386, -5.000000e-01
  %3436 = fmul fast float %3403, %3434
  %3437 = fmul fast float %3405, %3435
  %3438 = fadd fast float %3436, 5.000000e-01
  %3439 = fadd fast float %3437, 5.000000e-01
  %3440 = fmul fast float %3414, %3438
  %3441 = fmul fast float %3417, %3439
  %3442 = fmul fast float %3432, %3440
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3441, float %3442)  ; FMad(a,b,c)
  %3444 = fmul fast float %3431, %3440
  %3445 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3441, float %3444)  ; FMad(a,b,c)
  %3446 = fadd fast float %3423, %3443
  %3447 = fadd fast float %3426, %3445
  %3448 = icmp ugt i32 %3397, 1
  %3449 = icmp ugt i32 %3395, 33554431
  %3450 = or i1 %3449, %3448
  br i1 %3450, label %3451, label %3476

; <label>:3451                                    ; preds = %3378
  %3452 = add i32 %56, 276
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = lshr i32 %3454, 16
  %3456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3455)  ; LegacyF16ToF32(value)
  %3457 = fmul fast float %3419, %3456
  %3458 = call float @dx.op.unary.f32(i32 22, float %3457)  ; Frc(value)
  %3459 = mul nuw nsw i32 %3397, %3398
  %3460 = uitofp i32 %3459 to float
  %3461 = fmul fast float %3458, %3460
  %3462 = call float @dx.op.unary.f32(i32 27, float %3461)  ; Round_ni(value)
  %3463 = fptoui float %3462 to i32
  %3464 = urem i32 %3463, %3397
  %3465 = udiv i32 %3463, %3398
  %3466 = call float @dx.op.unary.f32(i32 22, float %3446)  ; Frc(value)
  %3467 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3468 = uitofp i32 %3464 to float
  %3469 = uitofp i32 %3465 to float
  %3470 = fadd fast float %3466, %3468
  %3471 = fadd fast float %3467, %3469
  %3472 = uitofp i32 %3397 to float
  %3473 = uitofp i32 %3398 to float
  %3474 = fdiv fast float %3470, %3472
  %3475 = fdiv fast float %3471, %3473
  br label %3476

; <label>:3476                                    ; preds = %3451, %3378
  %3477 = phi float [ %3474, %3451 ], [ %3446, %3378 ]
  %3478 = phi float [ %3475, %3451 ], [ %3447, %3378 ]
  %3479 = and i32 %3372, 16777216
  %3480 = icmp eq i32 %3479, 0
  br i1 %3480, label %3590, label %3481

; <label>:3481                                    ; preds = %3476
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3486 = fadd fast float %3483, %157
  %3487 = fadd fast float %3484, %158
  %3488 = fadd fast float %3485, %159
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = icmp eq i32 %57, 65535
  br i1 %3492, label %3587, label %3493

; <label>:3493                                    ; preds = %3481
  %3494 = lshr i32 %57, 1
  %3495 = shl i32 %3494, 2
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %57, 1
  %3499 = icmp ne i32 %3498, 0
  %3500 = lshr i32 %3497, 16
  %3501 = and i32 %3497, 65535
  %3502 = select i1 %3499, i32 %3500, i32 %3501
  %3503 = icmp eq i32 %3502, 65535
  br i1 %3503, label %3583, label %3504

; <label>:3504                                    ; preds = %3493
  %3505 = mul nuw nsw i32 %3502, 40
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = add nuw nsw i32 %3505, 12
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3505, 24
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = add nuw nsw i32 %3505, 36
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = fsub fast float %3486, %3507
  %3524 = fsub fast float %3487, %3508
  %3525 = fsub fast float %3488, %3509
  %3526 = fmul fast float %3522, %3523
  %3527 = fmul fast float %3522, %3524
  %3528 = fmul fast float %3522, %3525
  %3529 = call float @dx.op.unary.f32(i32 27, float %3526)  ; Round_ni(value)
  %3530 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3532 = fadd fast float %3529, 5.000000e-01
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = fmul fast float %3532, %3512
  %3536 = fmul fast float %3533, %3513
  %3537 = fmul fast float %3534, %3514
  %3538 = shl i32 %57, 2
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = add i32 %3540, 0
  %3542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3543 = call float @dx.op.unary.f32(i32 22, float %3535)  ; Frc(value)
  %3544 = call float @dx.op.unary.f32(i32 22, float %3536)  ; Frc(value)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3542, %dx.types.Handle %51, float %3543, float %3544, float %3545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = fmul fast float %3547, 1.023000e+03
  %3551 = fmul fast float %3548, 1.023000e+03
  %3552 = fmul fast float %3549, 1.023000e+03
  %3553 = fadd fast float %3550, 5.000000e-01
  %3554 = fadd fast float %3551, 5.000000e-01
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = fsub fast float %3526, %3529
  %3560 = fsub fast float %3527, %3530
  %3561 = fsub fast float %3528, %3531
  %3562 = fmul fast float %3559, 7.500000e-01
  %3563 = fmul fast float %3560, 7.500000e-01
  %3564 = fmul fast float %3561, 7.500000e-01
  %3565 = fadd fast float %3529, 1.250000e-01
  %3566 = fadd fast float %3565, %3562
  %3567 = fadd fast float %3566, %3556
  %3568 = fadd fast float %3530, 1.250000e-01
  %3569 = fadd fast float %3568, %3563
  %3570 = fadd fast float %3569, %3557
  %3571 = fadd fast float %3531, 1.250000e-01
  %3572 = fadd fast float %3571, %3564
  %3573 = fadd fast float %3572, %3558
  %3574 = fmul fast float %3567, %3517
  %3575 = fmul fast float %3570, %3518
  %3576 = fmul fast float %3573, %3519
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = add i32 %3578, 0
  %3580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3580, %dx.types.Handle %49, float %3574, float %3575, float %3576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  br label %3583

; <label>:3583                                    ; preds = %3504, %3493
  %3584 = phi float [ %3582, %3504 ], [ -1.000000e+00, %3493 ]
  %3585 = fadd fast float %3584, %3491
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  br label %3587

; <label>:3587                                    ; preds = %3583, %3481
  %3588 = phi float [ %3586, %3583 ], [ %3491, %3481 ]
  %3589 = fmul fast float %3588, %459
  br label %3590

; <label>:3590                                    ; preds = %3587, %3476
  %3591 = phi float [ %3589, %3587 ], [ %459, %3476 ]
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 256
  %3595 = icmp eq i32 %3594, 0
  br i1 %3595, label %3642, label %3596

; <label>:3596                                    ; preds = %3590
  %3597 = add i32 %56, 436
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = add i32 %3599, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3601, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = add i32 %56, 148
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = shl i32 %3606, 4
  %3608 = and i32 %3607, 32752
  %3609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3608)  ; LegacyF16ToF32(value)
  %3610 = lshr i32 %3606, 7
  %3611 = and i32 %3610, 32752
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = fsub fast float 1.000000e+00, %3591
  %3614 = call float @dx.op.binary.f32(i32 35, float %3613, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3615 = bitcast float %3591 to i32
  %3616 = sitofp i32 %3615 to float
  %3617 = fadd fast float %3616, 0xC1CFBF8940000000
  %3618 = fmul fast float %3612, %3617
  %3619 = fadd fast float %3618, 0x41CFBF8940000000
  %3620 = fptosi float %3619 to i32
  %3621 = bitcast i32 %3620 to float
  %3622 = bitcast float %3614 to i32
  %3623 = sitofp i32 %3622 to float
  %3624 = fadd fast float %3623, 0xC1CFBF8940000000
  %3625 = fmul fast float %3624, %3612
  %3626 = fadd fast float %3625, 0x41CFBF8940000000
  %3627 = fptosi float %3626 to i32
  %3628 = bitcast i32 %3627 to float
  %3629 = fmul fast float %3621, %3609
  %3630 = fmul fast float %3628, %3609
  %3631 = fsub fast float %3614, %3629
  %3632 = fadd fast float %3630, %3614
  %3633 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3634 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3635 = fsub fast float %3603, %3633
  %3636 = fsub fast float %3634, %3633
  %3637 = bitcast float %3636 to i32
  %3638 = sub nsw i32 2129859010, %3637
  %3639 = bitcast i32 %3638 to float
  %3640 = fmul fast float %3639, %3635
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  br label %3642

; <label>:3642                                    ; preds = %3596, %3590
  %3643 = phi float [ %3641, %3596 ], [ %3591, %3590 ]
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = and i32 %3645, 128
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3664, label %3648

; <label>:3648                                    ; preds = %3642
  %3649 = add i32 %56, 420
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = add i32 %3651, 0
  %3653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3653, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 524288
  %3659 = icmp ne i32 %3658, 0
  %3660 = fcmp fast ogt float %3655, 0x3FE0101020000000
  %3661 = select i1 %3660, float 1.000000e+00, float 0.000000e+00
  %3662 = select i1 %3659, float %3661, float %3655
  %3663 = fmul fast float %3662, %3643
  br label %3664

; <label>:3664                                    ; preds = %3648, %3642
  %3665 = phi float [ %3663, %3648 ], [ %3643, %3642 ]
  %3666 = fcmp fast ult float %3665, 0x3F70101020000000
  br i1 %3666, label %4405, label %3667

; <label>:3667                                    ; preds = %3664
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = and i32 %3669, 16
  %3671 = icmp eq i32 %3670, 0
  br i1 %3671, label %3870, label %3672

; <label>:3672                                    ; preds = %3667
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = add i32 %56, 372
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = add i32 %3677, 0
  %3679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3679, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = and i32 %3674, 255
  %3686 = uitofp i32 %3685 to float
  %3687 = lshr i32 %3674, 8
  %3688 = and i32 %3687, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = fmul fast float %3684, %3686
  %3691 = fadd fast float %3690, %3689
  %3692 = fmul fast float %3691, 0x3F70101000000000
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 512
  %3696 = icmp eq i32 %3695, 0
  br i1 %3696, label %3705, label %3697

; <label>:3697                                    ; preds = %3672
  %3698 = add i32 %56, 452
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = add i32 %3700, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3702, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  br label %3705

; <label>:3705                                    ; preds = %3697, %3672
  %3706 = phi float [ %3704, %3697 ], [ 1.000000e+00, %3672 ]
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 33554432
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3817, label %3711

; <label>:3711                                    ; preds = %3705
  %3712 = add i32 %56, 272
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = and i32 %3714, 65535
  %3716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3715)  ; LegacyF16ToF32(value)
  %3717 = lshr i32 %3714, 16
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = add i32 %56, 276
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = and i32 %3721, 65535
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = lshr i32 %3725, 24
  %3727 = uitofp i32 %3726 to float
  %3728 = fmul fast float %3727, 0x3F70101020000000
  %3729 = and i32 %3725, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = lshr i32 %3725, 8
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = lshr i32 %3725, 16
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = add i32 %56, 268
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = lshr i32 %3742, 24
  %3744 = uitofp i32 %3743 to float
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = and i32 %3742, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = lshr i32 %3742, 8
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = lshr i32 %3742, 16
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = bitcast float %3681 to i32
  %3758 = ashr i32 %3757, 1
  %3759 = sub nsw i32 1597463174, %3758
  %3760 = bitcast i32 %3759 to float
  %3761 = fmul fast float %3681, 5.000000e-01
  %3762 = fmul fast float %3760, %3760
  %3763 = fmul fast float %3762, %3761
  %3764 = fsub fast float 1.500000e+00, %3763
  %3765 = fmul fast float %3760, %3681
  %3766 = fmul fast float %3765, %3764
  %3767 = bitcast float %3682 to i32
  %3768 = ashr i32 %3767, 1
  %3769 = sub nsw i32 1597463174, %3768
  %3770 = bitcast i32 %3769 to float
  %3771 = fmul fast float %3682, 5.000000e-01
  %3772 = fmul fast float %3770, %3770
  %3773 = fmul fast float %3772, %3771
  %3774 = fsub fast float 1.500000e+00, %3773
  %3775 = fmul fast float %3770, %3682
  %3776 = fmul fast float %3775, %3774
  %3777 = bitcast float %3683 to i32
  %3778 = ashr i32 %3777, 1
  %3779 = sub nsw i32 1597463174, %3778
  %3780 = bitcast i32 %3779 to float
  %3781 = fmul fast float %3683, 5.000000e-01
  %3782 = fmul fast float %3780, %3780
  %3783 = fmul fast float %3782, %3781
  %3784 = fsub fast float 1.500000e+00, %3783
  %3785 = fmul fast float %3780, %3683
  %3786 = fmul fast float %3785, %3784
  %3787 = fsub fast float %3766, %3748
  %3788 = fsub fast float %3776, %3752
  %3789 = fsub fast float %3786, %3756
  %3790 = fmul fast float %3787, %3716
  %3791 = fmul fast float %3788, %3718
  %3792 = fmul fast float %3789, %3723
  %3793 = fadd fast float %3790, %3731
  %3794 = fadd fast float %3791, %3735
  %3795 = fadd fast float %3792, %3739
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = fmul fast float %3796, %3796
  %3800 = fmul fast float %3797, %3797
  %3801 = fmul fast float %3798, %3798
  %3802 = fsub fast float %3799, %3681
  %3803 = fsub fast float %3800, %3682
  %3804 = fsub fast float %3801, %3683
  %3805 = fmul fast float %3802, %3706
  %3806 = fmul fast float %3803, %3706
  %3807 = fmul fast float %3804, %3706
  %3808 = fadd fast float %3805, %3681
  %3809 = fadd fast float %3806, %3682
  %3810 = fadd fast float %3807, %3683
  %3811 = fadd fast float %3728, %3692
  %3812 = fsub fast float %3811, %3745
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fsub fast float %3813, %3692
  %3815 = fmul fast float %3814, %3706
  %3816 = fadd fast float %3815, %3692
  br label %3870

; <label>:3817                                    ; preds = %3705
  %3818 = and i32 %3708, 134217728
  %3819 = icmp eq i32 %3818, 0
  br i1 %3819, label %3854, label %3820

; <label>:3820                                    ; preds = %3817
  %3821 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3822 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3824 = fadd fast float %3821, -5.000000e-01
  %3825 = fadd fast float %3822, -5.000000e-01
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fmul fast float %3824, %3706
  %3828 = fmul fast float %3825, %3706
  %3829 = fmul fast float %3826, %3706
  %3830 = fadd fast float %3827, 5.000000e-01
  %3831 = fadd fast float %3828, 5.000000e-01
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 24, float %3681)  ; Sqrt(value)
  %3834 = call float @dx.op.unary.f32(i32 24, float %3682)  ; Sqrt(value)
  %3835 = call float @dx.op.unary.f32(i32 24, float %3683)  ; Sqrt(value)
  %3836 = fmul fast float %3830, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3833
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3833
  %3841 = fmul fast float %3831, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3834
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3834
  %3846 = fmul fast float %3832, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3835
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3835
  %3851 = fmul fast float %3840, %3840
  %3852 = fmul fast float %3845, %3845
  %3853 = fmul fast float %3850, %3850
  br label %3870

; <label>:3854                                    ; preds = %3817
  %3855 = fmul fast float %377, %377
  %3856 = fmul fast float %381, %381
  %3857 = fmul fast float %385, %385
  %3858 = fadd fast float %3855, -1.000000e+00
  %3859 = fadd fast float %3856, -1.000000e+00
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fmul fast float %3706, %3858
  %3862 = fmul fast float %3706, %3859
  %3863 = fmul fast float %3706, %3860
  %3864 = fadd fast float %3861, 1.000000e+00
  %3865 = fadd fast float %3862, 1.000000e+00
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fmul fast float %3864, %3681
  %3868 = fmul fast float %3865, %3682
  %3869 = fmul fast float %3866, %3683
  br label %3870

; <label>:3870                                    ; preds = %3854, %3820, %3711, %3667
  %3871 = phi float [ %3816, %3711 ], [ %3692, %3820 ], [ %3692, %3854 ], [ 0x3FA23C0BE0000000, %3667 ]
  %3872 = phi float [ %3808, %3711 ], [ %3851, %3820 ], [ %3867, %3854 ], [ 1.000000e+00, %3667 ]
  %3873 = phi float [ %3809, %3711 ], [ %3852, %3820 ], [ %3868, %3854 ], [ 1.000000e+00, %3667 ]
  %3874 = phi float [ %3810, %3711 ], [ %3853, %3820 ], [ %3869, %3854 ], [ 1.000000e+00, %3667 ]
  %3875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.i32 %3875, 1
  %3877 = and i32 %3876, 1
  %3878 = icmp ne i32 %3877, 0
  %3879 = add i32 %56, 356
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = and i32 %3881, 32
  %3883 = icmp ne i32 %3882, 0
  %3884 = and i1 %3878, %3883
  %3885 = select i1 %3884, float 1.000000e+00, float %3872
  %3886 = select i1 %3884, float 0x3FD3333340000000, float %3873
  %3887 = select i1 %3884, float 0x3FD3333340000000, float %3874
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, 32
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3964, label %3892

; <label>:3892                                    ; preds = %3870
  %3893 = add i32 %56, 140
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = add i32 %56, 388
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = add i32 %3898, 0
  %3900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3900, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = and i32 %3895, 255
  %3907 = uitofp i32 %3906 to float
  %3908 = lshr i32 %3895, 8
  %3909 = and i32 %3908, 255
  %3910 = uitofp i32 %3909 to float
  %3911 = lshr i32 %3895, 16
  %3912 = and i32 %3911, 255
  %3913 = uitofp i32 %3912 to float
  %3914 = fmul fast float %3913, 0x3F70101000000000
  %3915 = fmul fast float %3902, %3907
  %3916 = fadd fast float %3915, %3910
  %3917 = fmul fast float %3916, 0x3F70101000000000
  %3918 = fadd fast float %3903, -5.000000e-01
  %3919 = fadd fast float %3905, -5.000000e-01
  %3920 = fmul fast float %3918, %3914
  %3921 = fmul fast float %3919, %3914
  %3922 = fadd fast float %3920, 5.000000e-01
  %3923 = fadd fast float %3921, 5.000000e-01
  %3924 = fmul fast float %3922, 2.000000e+00
  %3925 = fadd fast float %3924, -1.000000e+00
  %3926 = fmul fast float %3923, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = fadd fast float %3925, %3927
  %3929 = fmul fast float %3928, 5.000000e-01
  %3930 = fsub fast float %3925, %3927
  %3931 = fmul fast float %3930, 5.000000e-01
  %3932 = call float @dx.op.unary.f32(i32 6, float %3929)  ; FAbs(value)
  %3933 = fsub fast float 1.000000e+00, %3932
  %3934 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3935 = fsub fast float %3933, %3934
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3929, float %3931, float %3935, float %3929, float %3931, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call float @dx.op.unary.f32(i32 25, float %3936)  ; Rsqrt(value)
  %3938 = fmul fast float %3929, %3937
  %3939 = fmul fast float %3931, %3937
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = and i32 %3941, 67108864
  %3943 = icmp eq i32 %3942, 0
  br i1 %3943, label %3960, label %3944

; <label>:3944                                    ; preds = %3892
  %3945 = add i32 %56, 328
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 65535
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = lshr i32 %3947, 16
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = fsub fast float %3917, %3955
  %3957 = fmul fast float %3956, %3949
  %3958 = fadd fast float %3957, %3953
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  br label %3960

; <label>:3960                                    ; preds = %3944, %3892
  %3961 = phi float [ %3959, %3944 ], [ %3917, %3892 ]
  %3962 = call float @dx.op.dot2.f32(i32 54, float %3938, float %3939, float %3381, float %3382)  ; Dot2(ax,ay,bx,by)
  %3963 = call float @dx.op.dot2.f32(i32 54, float %3938, float %3939, float %3383, float %3384)  ; Dot2(ax,ay,bx,by)
  br label %3964

; <label>:3964                                    ; preds = %3960, %3870
  %3965 = phi float [ %3961, %3960 ], [ 0x3FD6666660000000, %3870 ]
  %3966 = phi float [ %3962, %3960 ], [ 0.000000e+00, %3870 ]
  %3967 = phi float [ %3963, %3960 ], [ 0.000000e+00, %3870 ]
  %3968 = phi float [ %3904, %3960 ], [ 1.000000e+00, %3870 ]
  %3969 = add i32 %56, 208
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = lshr i32 %3971, 22
  %3973 = shl nuw nsw i32 %3972, 5
  %3974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3973)  ; LegacyF16ToF32(value)
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = and i32 %3976, 64
  %3978 = icmp eq i32 %3977, 0
  br i1 %3978, label %4012, label %3979

; <label>:3979                                    ; preds = %3964
  %3980 = add i32 %56, 404
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = add i32 %3982, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, 131072
  %3988 = icmp eq i32 %3987, 0
  %3989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3984, %dx.types.Handle %98, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = fmul fast float %3990, %365
  %3994 = fmul fast float %3991, %368
  %3995 = fmul fast float %3992, %371
  br i1 %3988, label %4002, label %3996

; <label>:3996                                    ; preds = %3979
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = fmul fast float %3998, %3993
  %4000 = fmul fast float %3998, %3994
  %4001 = fmul fast float %3998, %3995
  br label %4002

; <label>:4002                                    ; preds = %3996, %3979
  %4003 = phi float [ %3999, %3996 ], [ %3993, %3979 ]
  %4004 = phi float [ %4000, %3996 ], [ %3994, %3979 ]
  %4005 = phi float [ %4001, %3996 ], [ %3995, %3979 ]
  %4006 = fmul fast float %4003, %3974
  %4007 = select i1 %219, float %4006, float %4003
  %4008 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4004, float %4005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = select i1 %219, float 0.000000e+00, float %4003
  %4010 = select i1 %219, float %4008, float %4004
  %4011 = select i1 %219, float 0.000000e+00, float %4005
  br label %4012

; <label>:4012                                    ; preds = %4002, %3964
  %4013 = phi float [ %4009, %4002 ], [ 0.000000e+00, %3964 ]
  %4014 = phi float [ %4010, %4002 ], [ 0.000000e+00, %3964 ]
  %4015 = phi float [ %4011, %4002 ], [ 0.000000e+00, %3964 ]
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 1024
  %4019 = icmp eq i32 %4018, 0
  br i1 %4019, label %4050, label %4020

; <label>:4020                                    ; preds = %4012
  %4021 = add i32 %56, 200
  %4022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.i32 %4022, 0
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = lshr i32 %4023, 8
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = lshr i32 %4023, 16
  %4032 = and i32 %4031, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = fmul fast float %4033, 0x3F70101020000000
  %4035 = fmul fast float %4026, %4026
  %4036 = fmul fast float %4030, %4030
  %4037 = fmul fast float %4034, %4034
  %4038 = add i32 %56, 468
  %4039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.i32 %4039, 0
  %4041 = add i32 %4040, 0
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4042, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = fmul fast float %4035, %4044
  %4048 = fmul fast float %4036, %4045
  %4049 = fmul fast float %4037, %4046
  br label %4050

; <label>:4050                                    ; preds = %4020, %4012
  %4051 = phi float [ %4047, %4020 ], [ 0.000000e+00, %4012 ]
  %4052 = phi float [ %4048, %4020 ], [ 0.000000e+00, %4012 ]
  %4053 = phi float [ %4049, %4020 ], [ 0.000000e+00, %4012 ]
  %4054 = fcmp fast ogt float %4051, 0.000000e+00
  %4055 = fcmp fast ogt float %4052, 0.000000e+00
  %4056 = fcmp fast ogt float %4053, 0.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 23, float %4051)  ; Log(value)
  %4058 = call float @dx.op.unary.f32(i32 23, float %4052)  ; Log(value)
  %4059 = call float @dx.op.unary.f32(i32 23, float %4053)  ; Log(value)
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = lshr i32 %4061, 7
  %4063 = and i32 %4062, 32752
  %4064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4063)  ; LegacyF16ToF32(value)
  %4065 = fmul fast float %4057, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4064
  %4067 = fmul fast float %4058, 0xBFE62E4300000000
  %4068 = fmul fast float %4067, %4064
  %4069 = fmul fast float %4059, 0xBFE62E4300000000
  %4070 = fmul fast float %4069, %4064
  %4071 = select i1 %4054, float %4066, float 1.270000e+02
  %4072 = select i1 %4055, float %4068, float 1.270000e+02
  %4073 = select i1 %4056, float %4070, float 1.270000e+02
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = and i32 %4075, 10240
  %4077 = icmp eq i32 %4076, 0
  br i1 %4077, label %4122, label %4078

; <label>:4078                                    ; preds = %4050
  %4079 = add i32 %56, 484
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = add i32 %4081, 0
  %4083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4083, %dx.types.Handle %99, float %3477, float %3478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 3
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = and i32 %4088, 1048576
  %4090 = icmp ne i32 %4089, 0
  %4091 = and i32 %4088, 8192
  %4092 = icmp eq i32 %4091, 0
  br i1 %4092, label %4108, label %4093

; <label>:4093                                    ; preds = %4078
  %4094 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4095 = select i1 %4090, float %4094, float %4085
  %4096 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4097 = select i1 %4090, float %4096, float %4085
  %4098 = add i32 %56, 144
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = lshr i32 %4100, 16
  %4102 = and i32 %4101, 255
  %4103 = uitofp i32 %4102 to float
  %4104 = fmul fast float %4103, 0x3F80101020000000
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %4104, %4085
  %4107 = fmul fast float %4104, %4095
  br label %4108

; <label>:4108                                    ; preds = %4093, %4078
  %4109 = phi float [ %4105, %4093 ], [ 0.000000e+00, %4078 ]
  %4110 = phi float [ %4106, %4093 ], [ 0.000000e+00, %4078 ]
  %4111 = phi float [ %4107, %4093 ], [ 0.000000e+00, %4078 ]
  %4112 = and i32 %4088, 2048
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4122, label %4114

; <label>:4114                                    ; preds = %4108
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = shl i32 %4116, 4
  %4118 = and i32 %4117, 32752
  %4119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4118)  ; LegacyF16ToF32(value)
  %4120 = fmul fast float %4119, %4086
  %4121 = call float @dx.op.binary.f32(i32 35, float %4120, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4122

; <label>:4122                                    ; preds = %4114, %4108, %4050
  %4123 = phi float [ %4109, %4114 ], [ %4109, %4108 ], [ 0.000000e+00, %4050 ]
  %4124 = phi float [ %4110, %4114 ], [ %4110, %4108 ], [ 0.000000e+00, %4050 ]
  %4125 = phi float [ %4111, %4114 ], [ %4111, %4108 ], [ 0.000000e+00, %4050 ]
  %4126 = phi float [ %4121, %4114 ], [ 0x3F70101020000000, %4108 ], [ 0x3F70101020000000, %4050 ]
  %4127 = add i32 %56, 144
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = lshr i32 %4129, 8
  %4133 = and i32 %4132, 255
  %4134 = uitofp i32 %4133 to float
  %4135 = call float @dx.op.dot3.f32(i32 55, float %3885, float %3886, float %3887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = fmul fast float %4134, %4135
  %4137 = fadd fast float %4136, %4131
  %4138 = fmul fast float %4137, 0x3F70101020000000
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  br i1 %3369, label %4140, label %4175

; <label>:4140                                    ; preds = %4122
  %4141 = fmul fast float %4126, 2.000000e+00
  %4142 = fcmp fast olt float %4071, 1.270000e+02
  %4143 = fcmp fast olt float %4072, 1.270000e+02
  %4144 = fcmp fast olt float %4073, 1.270000e+02
  %4145 = fmul fast float %4071, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4141
  %4147 = fmul fast float %4072, 0xBFF7154760000000
  %4148 = fmul fast float %4147, %4141
  %4149 = fmul fast float %4073, 0xBFF7154760000000
  %4150 = fmul fast float %4149, %4141
  %4151 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4152 = call float @dx.op.unary.f32(i32 21, float %4148)  ; Exp(value)
  %4153 = call float @dx.op.unary.f32(i32 21, float %4150)  ; Exp(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = fadd fast float %4154, -1.000000e+00
  %4158 = select i1 %4142, float %4157, float -1.000000e+00
  %4159 = fadd fast float %4155, -1.000000e+00
  %4160 = select i1 %4143, float %4159, float -1.000000e+00
  %4161 = fadd fast float %4156, -1.000000e+00
  %4162 = select i1 %4144, float %4161, float -1.000000e+00
  %4163 = fmul fast float %4158, %3665
  %4164 = fmul fast float %4160, %3665
  %4165 = fmul fast float %4162, %3665
  %4166 = fadd fast float %4163, 1.000000e+00
  %4167 = fadd fast float %4164, 1.000000e+00
  %4168 = fadd fast float %4165, 1.000000e+00
  %4169 = fmul fast float %4166, %3351
  %4170 = fmul fast float %4167, %3352
  %4171 = fmul fast float %4168, %3353
  %4172 = fmul fast float %4166, %3357
  %4173 = fmul fast float %4167, %3358
  %4174 = fmul fast float %4168, %3359
  br label %4175

; <label>:4175                                    ; preds = %4140, %4122
  %4176 = phi float [ %4169, %4140 ], [ %3351, %4122 ]
  %4177 = phi float [ %4170, %4140 ], [ %3352, %4122 ]
  %4178 = phi float [ %4171, %4140 ], [ %3353, %4122 ]
  %4179 = phi float [ %4172, %4140 ], [ %3357, %4122 ]
  %4180 = phi float [ %4173, %4140 ], [ %3358, %4122 ]
  %4181 = phi float [ %4174, %4140 ], [ %3359, %4122 ]
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = and i32 %4183, 3
  %4185 = icmp eq i32 %4184, 3
  br i1 %4185, label %4264, label %4186

; <label>:4186                                    ; preds = %4175
  %4187 = and i32 %4183, 16
  %4188 = icmp ne i32 %4187, 0
  %4189 = select i1 %4188, float %3665, float 0.000000e+00
  %4190 = icmp eq i32 %4184, 0
  br i1 %4190, label %4191, label %4219

; <label>:4191                                    ; preds = %4186
  %4192 = and i32 %4183, 64
  %4193 = icmp ne i32 %4192, 0
  %4194 = select i1 %4193, float %3665, float 0.000000e+00
  %4195 = fsub fast float %3885, %4176
  %4196 = fsub fast float %3886, %4177
  %4197 = fsub fast float %3887, %4178
  %4198 = fmul fast float %4189, %4195
  %4199 = fmul fast float %4189, %4196
  %4200 = fmul fast float %4189, %4197
  %4201 = fadd fast float %4198, %4176
  %4202 = fadd fast float %4199, %4177
  %4203 = fadd fast float %4200, %4178
  %4204 = fsub fast float %3871, %3363
  %4205 = fmul fast float %4189, %4204
  %4206 = fadd fast float %4205, %3363
  %4207 = fsub fast float %4013, %4179
  %4208 = fsub fast float %4014, %4180
  %4209 = fsub fast float %4015, %4181
  %4210 = fmul fast float %4194, %4207
  %4211 = fmul fast float %4194, %4208
  %4212 = fmul fast float %4194, %4209
  %4213 = fadd fast float %4210, %4179
  %4214 = fadd fast float %4211, %4180
  %4215 = fadd fast float %4212, %4181
  %4216 = fsub fast float %4139, %3367
  %4217 = fmul fast float %4189, %4216
  %4218 = fadd fast float %4217, %3367
  br label %4264

; <label>:4219                                    ; preds = %4186
  %4220 = icmp eq i32 %4184, 1
  br i1 %4220, label %4221, label %4234

; <label>:4221                                    ; preds = %4219
  %4222 = fadd fast float %3885, -1.000000e+00
  %4223 = fadd fast float %3886, -1.000000e+00
  %4224 = fadd fast float %3887, -1.000000e+00
  %4225 = fmul fast float %4189, %4222
  %4226 = fmul fast float %4189, %4223
  %4227 = fmul fast float %4189, %4224
  %4228 = fadd fast float %4225, 1.000000e+00
  %4229 = fadd fast float %4226, 1.000000e+00
  %4230 = fadd fast float %4227, 1.000000e+00
  %4231 = fmul fast float %4228, %4176
  %4232 = fmul fast float %4229, %4177
  %4233 = fmul fast float %4230, %4178
  br label %4264

; <label>:4234                                    ; preds = %4219
  %4235 = icmp eq i32 %4184, 2
  br i1 %4235, label %4236, label %4264

; <label>:4236                                    ; preds = %4234
  %4237 = call float @dx.op.unary.f32(i32 24, float %3885)  ; Sqrt(value)
  %4238 = call float @dx.op.unary.f32(i32 24, float %3886)  ; Sqrt(value)
  %4239 = call float @dx.op.unary.f32(i32 24, float %3887)  ; Sqrt(value)
  %4240 = fadd fast float %4237, -5.000000e-01
  %4241 = fadd fast float %4238, -5.000000e-01
  %4242 = fadd fast float %4239, -5.000000e-01
  %4243 = fmul fast float %4240, %4189
  %4244 = fmul fast float %4241, %4189
  %4245 = fmul fast float %4242, %4189
  %4246 = fadd fast float %4243, 5.000000e-01
  %4247 = fadd fast float %4244, 5.000000e-01
  %4248 = fadd fast float %4245, 5.000000e-01
  %4249 = fmul fast float %4246, 2.000000e+00
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4176
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4176
  %4254 = fmul fast float %4247, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4177
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4177
  %4259 = fmul fast float %4248, 2.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %4260, %4178
  %4262 = fadd fast float %4261, %4259
  %4263 = fmul fast float %4262, %4178
  br label %4264

; <label>:4264                                    ; preds = %4236, %4234, %4221, %4191, %4175
  %4265 = phi float [ %4176, %4175 ], [ %4253, %4236 ], [ %4176, %4234 ], [ %4231, %4221 ], [ %4201, %4191 ]
  %4266 = phi float [ %4177, %4175 ], [ %4258, %4236 ], [ %4177, %4234 ], [ %4232, %4221 ], [ %4202, %4191 ]
  %4267 = phi float [ %4178, %4175 ], [ %4263, %4236 ], [ %4178, %4234 ], [ %4233, %4221 ], [ %4203, %4191 ]
  %4268 = phi float [ %4179, %4175 ], [ %4179, %4236 ], [ %4179, %4234 ], [ %4179, %4221 ], [ %4213, %4191 ]
  %4269 = phi float [ %4180, %4175 ], [ %4180, %4236 ], [ %4180, %4234 ], [ %4180, %4221 ], [ %4214, %4191 ]
  %4270 = phi float [ %4181, %4175 ], [ %4181, %4236 ], [ %4181, %4234 ], [ %4181, %4221 ], [ %4215, %4191 ]
  %4271 = phi float [ %3363, %4175 ], [ %3363, %4236 ], [ %3363, %4234 ], [ %3363, %4221 ], [ %4206, %4191 ]
  %4272 = phi float [ %3367, %4175 ], [ %3367, %4236 ], [ %3367, %4234 ], [ %3367, %4221 ], [ %4218, %4191 ]
  %4273 = and i32 %4183, 12
  %4274 = icmp eq i32 %4273, 12
  br i1 %4274, label %4405, label %4275

; <label>:4275                                    ; preds = %4264
  %4276 = and i32 %4183, 2097184
  %4277 = icmp eq i32 %4276, 2097184
  %4278 = select i1 %4277, float %3665, float 0.000000e+00
  %4279 = and i32 %4183, 4194336
  %4280 = icmp eq i32 %4279, 4194336
  %4281 = select i1 %4280, float %3665, float 0.000000e+00
  %4282 = and i32 %4183, 8388640
  %4283 = icmp eq i32 %4282, 8388640
  %4284 = select i1 %4283, float %3665, float 0.000000e+00
  %4285 = and i32 %4183, 1024
  %4286 = icmp ne i32 %4285, 0
  %4287 = select i1 %4286, float %3665, float 0.000000e+00
  %4288 = and i32 %4183, 2048
  %4289 = icmp ne i32 %4288, 0
  %4290 = select i1 %4289, float %3665, float 0.000000e+00
  %4291 = and i32 %4183, 8192
  %4292 = icmp ne i32 %4291, 0
  %4293 = select i1 %4292, float %3665, float 0.000000e+00
  %4294 = icmp eq i32 %4273, 0
  br i1 %4294, label %4295, label %4329

; <label>:4295                                    ; preds = %4275
  %4296 = fsub fast float %3966, %3349
  %4297 = fsub fast float %3967, %3350
  %4298 = fmul fast float %4278, %4296
  %4299 = fmul fast float %4278, %4297
  %4300 = fadd fast float %4298, %3349
  %4301 = fadd fast float %4299, %3350
  %4302 = fsub fast float %3968, %3365
  %4303 = fmul fast float %4281, %4302
  %4304 = fadd fast float %4303, %3365
  %4305 = fsub fast float %3965, %3364
  %4306 = fmul fast float %4284, %4305
  %4307 = fadd fast float %4306, %3364
  %4308 = fsub fast float %4071, %3360
  %4309 = fsub fast float %4072, %3361
  %4310 = fsub fast float %4073, %3362
  %4311 = fmul fast float %4287, %4308
  %4312 = fmul fast float %4287, %4309
  %4313 = fmul fast float %4287, %4310
  %4314 = fadd fast float %4311, %3360
  %4315 = fadd fast float %4312, %3361
  %4316 = fadd fast float %4313, %3362
  %4317 = fsub fast float %4126, %3366
  %4318 = fmul fast float %4290, %4317
  %4319 = fadd fast float %4318, %3366
  %4320 = fsub fast float %4123, %3354
  %4321 = fsub fast float %4124, %3355
  %4322 = fsub fast float %4125, %3356
  %4323 = fmul fast float %4293, %4320
  %4324 = fmul fast float %4293, %4321
  %4325 = fmul fast float %4293, %4322
  %4326 = fadd fast float %4323, %3354
  %4327 = fadd fast float %4324, %3355
  %4328 = fadd fast float %4325, %3356
  br label %4405

; <label>:4329                                    ; preds = %4275
  %4330 = icmp eq i32 %4273, 4
  br i1 %4330, label %4331, label %4377

; <label>:4331                                    ; preds = %4329
  %4332 = fmul fast float %4278, %3966
  %4333 = fmul fast float %4278, %3967
  %4334 = fadd fast float %4332, %3349
  %4335 = fadd fast float %4333, %3350
  %4336 = call float @dx.op.binary.f32(i32 36, float %3365, float %3968)  ; FMin(a,b)
  %4337 = fsub fast float %4336, %3365
  %4338 = fmul fast float %4337, %4281
  %4339 = fadd fast float %4338, %3365
  %4340 = fadd fast float %3965, %3364
  %4341 = fmul fast float %4340, 0x3FF337FAE0000000
  %4342 = fmul fast float %3364, %3364
  %4343 = fmul fast float %3965, %3965
  %4344 = fadd fast float %4343, %4342
  %4345 = fmul fast float %4344, 0x3FE5152B00000000
  %4346 = fmul fast float %3364, 0xBFCC1F85E0000000
  %4347 = fmul fast float %4346, %3965
  %4348 = fadd fast float %4347, 0xBFE1363700000000
  %4349 = fadd fast float %4348, %4341
  %4350 = fsub fast float %4349, %4345
  %4351 = fmul fast float %4340, 0x3FBA6F0D00000000
  %4352 = fmul fast float %4344, 0x3FD0432880000000
  %4353 = fmul fast float %3364, 0xBFEF110800000000
  %4354 = fmul fast float %4353, %3965
  %4355 = fadd fast float %4354, 1.000000e+00
  %4356 = fsub fast float %4355, %4351
  %4357 = fadd fast float %4356, %4352
  %4358 = fdiv fast float %4350, %4357
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fsub fast float %4359, %3364
  %4361 = fmul fast float %4360, %4284
  %4362 = fadd fast float %4361, %3364
  %4363 = fmul fast float %4287, %4071
  %4364 = fmul fast float %4287, %4072
  %4365 = fmul fast float %4287, %4073
  %4366 = fadd fast float %4363, %3360
  %4367 = fadd fast float %4364, %3361
  %4368 = fadd fast float %4365, %3362
  %4369 = fmul fast float %4290, %4126
  %4370 = fadd fast float %4369, %3366
  %4371 = fmul fast float %4293, %4123
  %4372 = fmul fast float %4293, %4124
  %4373 = fmul fast float %4293, %4125
  %4374 = fadd fast float %4371, %3354
  %4375 = fadd fast float %4372, %3355
  %4376 = fadd fast float %4373, %3356
  br label %4405

; <label>:4377                                    ; preds = %4329
  %4378 = icmp eq i32 %4273, 8
  br i1 %4378, label %4379, label %4405

; <label>:4379                                    ; preds = %4377
  %4380 = fmul fast float %4278, %3966
  %4381 = fmul fast float %4278, %3967
  %4382 = fadd fast float %4380, %3349
  %4383 = fadd fast float %4381, %3350
  %4384 = call float @dx.op.binary.f32(i32 36, float %3365, float %3968)  ; FMin(a,b)
  %4385 = fsub fast float %4384, %3365
  %4386 = fmul fast float %4385, %4281
  %4387 = fadd fast float %4386, %3365
  %4388 = fsub fast float %3965, %3364
  %4389 = fmul fast float %4284, %4388
  %4390 = fadd fast float %4389, %3364
  %4391 = fmul fast float %4287, %4071
  %4392 = fmul fast float %4287, %4072
  %4393 = fmul fast float %4287, %4073
  %4394 = fadd fast float %4391, %3360
  %4395 = fadd fast float %4392, %3361
  %4396 = fadd fast float %4393, %3362
  %4397 = fmul fast float %4290, %4126
  %4398 = fadd fast float %4397, %3366
  %4399 = fmul fast float %4293, %4123
  %4400 = fmul fast float %4293, %4124
  %4401 = fmul fast float %4293, %4125
  %4402 = fadd fast float %4399, %3354
  %4403 = fadd fast float %4400, %3355
  %4404 = fadd fast float %4401, %3356
  br label %4405

; <label>:4405                                    ; preds = %4379, %4377, %4331, %4295, %4264, %3664, %3368, %3348
  %4406 = phi float [ %3349, %4264 ], [ %3349, %3664 ], [ %3349, %3348 ], [ %3349, %3368 ], [ %4300, %4295 ], [ %4334, %4331 ], [ %3349, %4377 ], [ %4382, %4379 ]
  %4407 = phi float [ %3350, %4264 ], [ %3350, %3664 ], [ %3350, %3348 ], [ %3350, %3368 ], [ %4301, %4295 ], [ %4335, %4331 ], [ %3350, %4377 ], [ %4383, %4379 ]
  %4408 = phi float [ %4265, %4264 ], [ %3351, %3664 ], [ %3351, %3348 ], [ %3351, %3368 ], [ %4265, %4295 ], [ %4265, %4331 ], [ %4265, %4377 ], [ %4265, %4379 ]
  %4409 = phi float [ %4266, %4264 ], [ %3352, %3664 ], [ %3352, %3348 ], [ %3352, %3368 ], [ %4266, %4295 ], [ %4266, %4331 ], [ %4266, %4377 ], [ %4266, %4379 ]
  %4410 = phi float [ %4267, %4264 ], [ %3353, %3664 ], [ %3353, %3348 ], [ %3353, %3368 ], [ %4267, %4295 ], [ %4267, %4331 ], [ %4267, %4377 ], [ %4267, %4379 ]
  %4411 = phi float [ %3354, %4264 ], [ %3354, %3664 ], [ %3354, %3348 ], [ %3354, %3368 ], [ %4326, %4295 ], [ %4374, %4331 ], [ %3354, %4377 ], [ %4402, %4379 ]
  %4412 = phi float [ %3355, %4264 ], [ %3355, %3664 ], [ %3355, %3348 ], [ %3355, %3368 ], [ %4327, %4295 ], [ %4375, %4331 ], [ %3355, %4377 ], [ %4403, %4379 ]
  %4413 = phi float [ %3356, %4264 ], [ %3356, %3664 ], [ %3356, %3348 ], [ %3356, %3368 ], [ %4328, %4295 ], [ %4376, %4331 ], [ %3356, %4377 ], [ %4404, %4379 ]
  %4414 = phi float [ %4268, %4264 ], [ %3357, %3664 ], [ %3357, %3348 ], [ %3357, %3368 ], [ %4268, %4295 ], [ %4268, %4331 ], [ %4268, %4377 ], [ %4268, %4379 ]
  %4415 = phi float [ %4269, %4264 ], [ %3358, %3664 ], [ %3358, %3348 ], [ %3358, %3368 ], [ %4269, %4295 ], [ %4269, %4331 ], [ %4269, %4377 ], [ %4269, %4379 ]
  %4416 = phi float [ %4270, %4264 ], [ %3359, %3664 ], [ %3359, %3348 ], [ %3359, %3368 ], [ %4270, %4295 ], [ %4270, %4331 ], [ %4270, %4377 ], [ %4270, %4379 ]
  %4417 = phi float [ %3360, %4264 ], [ %3360, %3664 ], [ %3360, %3348 ], [ %3360, %3368 ], [ %4314, %4295 ], [ %4366, %4331 ], [ %3360, %4377 ], [ %4394, %4379 ]
  %4418 = phi float [ %3361, %4264 ], [ %3361, %3664 ], [ %3361, %3348 ], [ %3361, %3368 ], [ %4315, %4295 ], [ %4367, %4331 ], [ %3361, %4377 ], [ %4395, %4379 ]
  %4419 = phi float [ %3362, %4264 ], [ %3362, %3664 ], [ %3362, %3348 ], [ %3362, %3368 ], [ %4316, %4295 ], [ %4368, %4331 ], [ %3362, %4377 ], [ %4396, %4379 ]
  %4420 = phi float [ %4271, %4264 ], [ %3363, %3664 ], [ %3363, %3348 ], [ %3363, %3368 ], [ %4271, %4295 ], [ %4271, %4331 ], [ %4271, %4377 ], [ %4271, %4379 ]
  %4421 = phi float [ %3364, %4264 ], [ %3364, %3664 ], [ %3364, %3348 ], [ %3364, %3368 ], [ %4307, %4295 ], [ %4362, %4331 ], [ %3364, %4377 ], [ %4390, %4379 ]
  %4422 = phi float [ %3365, %4264 ], [ %3365, %3664 ], [ %3365, %3348 ], [ %3365, %3368 ], [ %4304, %4295 ], [ %4339, %4331 ], [ %3365, %4377 ], [ %4387, %4379 ]
  %4423 = phi float [ %3366, %4264 ], [ %3366, %3664 ], [ %3366, %3348 ], [ %3366, %3368 ], [ %4319, %4295 ], [ %4370, %4331 ], [ %3366, %4377 ], [ %4398, %4379 ]
  %4424 = phi float [ %4272, %4264 ], [ %3367, %3664 ], [ %3367, %3348 ], [ %3367, %3368 ], [ %4272, %4295 ], [ %4272, %4331 ], [ %4272, %4377 ], [ %4272, %4379 ]
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = call float @dx.op.dot2.f32(i32 54, float %4406, float %4407, float %4406, float %4407)  ; Dot2(ax,ay,bx,by)
  %4428 = fmul fast float %4427, 0x3FE3333340000000
  %4429 = fsub fast float 1.000000e+00, %4428
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4406, float %4407, float %4429, float %4406, float %4407, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = call float @dx.op.unary.f32(i32 25, float %4430)  ; Rsqrt(value)
  %4432 = fmul fast float %4431, %4406
  %4433 = fmul fast float %4431, %4407
  %4434 = fmul fast float %4429, %4431
  %4435 = fmul fast float %4434, %109
  %4436 = fmul fast float %4434, %110
  %4437 = fmul fast float %4434, %111
  %4438 = fmul fast float %4432, %77
  %4439 = fmul fast float %4432, %78
  %4440 = fmul fast float %4432, %79
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fmul fast float %121, %4433
  %4445 = fmul fast float %122, %4433
  %4446 = fmul fast float %123, %4433
  %4447 = fadd fast float %4441, %4444
  %4448 = fadd fast float %4442, %4445
  %4449 = fadd fast float %4443, %4446
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4449, float %4447, float %4448, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4447, %4451
  %4453 = fmul fast float %4448, %4451
  %4454 = fmul fast float %4449, %4451
  %4455 = and i32 %58, 1
  %4456 = icmp eq i32 %4455, 0
  br i1 %4456, label %4457, label %5049

; <label>:4457                                    ; preds = %4405
  %4458 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4459 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4464 = fadd fast float %4458, %157
  %4465 = fadd fast float %4459, %158
  %4466 = fadd fast float %4460, %159
  %4467 = fadd fast float %4461, %157
  %4468 = fadd fast float %4462, %158
  %4469 = fadd fast float %4463, %159
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4477 = fmul fast float %4471, %102
  %4478 = fmul fast float %4477, %4475
  %4479 = fmul fast float %4472, %103
  %4480 = fmul fast float %4479, %4476
  %4481 = fptoui float %4478 to i32
  %4482 = fptoui float %4480 to i32
  %4483 = fadd fast float %4471, -1.000000e+00
  %4484 = fadd fast float %4472, -1.000000e+00
  %4485 = fptoui float %4483 to i32
  %4486 = fptoui float %4484 to i32
  %4487 = call i32 @dx.op.binary.i32(i32 40, i32 %4481, i32 %4485)  ; UMin(a,b)
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4486)  ; UMin(a,b)
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4492 = fmul fast float %4490, %93
  %4493 = fsub fast float %4492, %4491
  %4494 = fadd fast float %4473, -1.000000e+00
  %4495 = call float @dx.op.binary.f32(i32 36, float %4493, float %4494)  ; FMin(a,b)
  %4496 = fptoui float %4495 to i32
  %4497 = fptoui float %4471 to i32
  %4498 = fptoui float %4472 to i32
  %4499 = mul i32 %4496, %4498
  %4500 = add i32 %4499, %4488
  %4501 = mul i32 %4500, %4497
  %4502 = add i32 %4501, %4487
  %4503 = shl i32 %4502, 2
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = and i32 %4505, 1023
  %4507 = lshr i32 %4505, 10
  %4508 = icmp eq i32 %4506, 0
  br i1 %4508, label %5012, label %4509

; <label>:4509                                    ; preds = %4457
  %4510 = and i32 %4505, 1023
  br label %4511

; <label>:4511                                    ; preds = %4643, %4509
  %4512 = phi i32 [ %4593, %4643 ], [ 0, %4509 ]
  %4513 = phi float [ %4644, %4643 ], [ 0.000000e+00, %4509 ]
  %4514 = phi float [ %4645, %4643 ], [ %4426, %4509 ]
  %4515 = phi float [ %4646, %4643 ], [ %4424, %4509 ]
  %4516 = phi float [ %4647, %4643 ], [ %4417, %4509 ]
  %4517 = phi float [ %4648, %4643 ], [ %4418, %4509 ]
  %4518 = phi float [ %4649, %4643 ], [ %4419, %4509 ]
  %4519 = phi float [ %4650, %4643 ], [ 0.000000e+00, %4509 ]
  %4520 = phi float [ %4651, %4643 ], [ 0.000000e+00, %4509 ]
  %4521 = phi float [ %4652, %4643 ], [ %4411, %4509 ]
  %4522 = phi float [ %4653, %4643 ], [ %4412, %4509 ]
  %4523 = phi float [ %4654, %4643 ], [ %4413, %4509 ]
  %4524 = phi float [ %4655, %4643 ], [ %4414, %4509 ]
  %4525 = phi float [ %4656, %4643 ], [ %4415, %4509 ]
  %4526 = phi float [ %4657, %4643 ], [ %4416, %4509 ]
  %4527 = phi float [ %4658, %4643 ], [ %4452, %4509 ]
  %4528 = phi float [ %4659, %4643 ], [ %4453, %4509 ]
  %4529 = phi float [ %4660, %4643 ], [ %4454, %4509 ]
  %4530 = phi float [ %4661, %4643 ], [ %4422, %4509 ]
  %4531 = phi float [ %4662, %4643 ], [ %4421, %4509 ]
  %4532 = phi float [ %4663, %4643 ], [ 0.000000e+00, %4509 ]
  %4533 = phi float [ %4664, %4643 ], [ %4420, %4509 ]
  %4534 = phi float [ %4665, %4643 ], [ %4408, %4509 ]
  %4535 = phi float [ %4666, %4643 ], [ %4409, %4509 ]
  %4536 = phi float [ %4667, %4643 ], [ %4410, %4509 ]
  %4537 = add nuw nsw i32 %4512, %4507
  %4538 = shl i32 %4537, 2
  %4539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.i32 %4539, 0
  %4541 = shl i32 %4540, 8
  %4542 = or i32 %4541, 48
  %4543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = or i32 %4541, 64
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.i32 %4549, 1
  %4552 = or i32 %4541, 80
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4556 = or i32 %4541, 96
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4562 = or i32 %4541, 112
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4565 = or i32 %4541, 128
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = or i32 %4541, 144
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4541, 160
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4541, 192
  %4584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.i32 %4584, 0
  %4586 = or i32 %4541, 208
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = or i32 %4541, 248
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4593 = add nuw nsw i32 %4512, 1
  %4594 = bitcast float %4547 to i32
  %4595 = and i32 %4594, 512
  %4596 = icmp eq i32 %4595, 0
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4603 = or i32 %4541, 16
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4604, 3
  %4609 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4610 = or i32 %4541, 32
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = call float @dx.op.dot4.f32(i32 56, float %4612, float %4613, float %4614, float %4615, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4617 = call float @dx.op.unary.f32(i32 27, float %4602)  ; Round_ni(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4609)  ; Round_ni(value)
  %4620 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 27, float %4621)  ; Round_ni(value)
  %4623 = fadd fast float %4620, %4618
  %4624 = fadd fast float %4623, %4622
  %4625 = fcmp fast oeq float %4624, 0.000000e+00
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %4467, float %4468, float %4469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %4467, float %4468, float %4469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = fsub fast float %4626, %4602
  %4631 = fsub fast float %4628, %4602
  %4632 = fsub fast float %4627, %4609
  %4633 = fsub fast float %4629, %4609
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fadd fast float %4636, %4634
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4640 = fcmp fast ogt float %4638, %4639
  %4641 = and i1 %4625, %4640
  %4642 = and i1 %4596, %4641
  br i1 %4642, label %4669, label %4643

; <label>:4643                                    ; preds = %4998, %4750, %4669, %4511
  %4644 = phi float [ %4513, %4669 ], [ %4753, %4750 ], [ %4753, %4998 ], [ %4513, %4511 ]
  %4645 = phi float [ %4514, %4669 ], [ %4514, %4750 ], [ %4974, %4998 ], [ %4514, %4511 ]
  %4646 = phi float [ %4515, %4669 ], [ %4515, %4750 ], [ %4972, %4998 ], [ %4515, %4511 ]
  %4647 = phi float [ %4516, %4669 ], [ %4516, %4750 ], [ %4950, %4998 ], [ %4516, %4511 ]
  %4648 = phi float [ %4517, %4669 ], [ %4517, %4750 ], [ %4951, %4998 ], [ %4517, %4511 ]
  %4649 = phi float [ %4518, %4669 ], [ %4518, %4750 ], [ %4952, %4998 ], [ %4518, %4511 ]
  %4650 = phi float [ %4519, %4669 ], [ %4519, %4750 ], [ %4877, %4998 ], [ %4519, %4511 ]
  %4651 = phi float [ %4520, %4669 ], [ %4520, %4750 ], [ %4875, %4998 ], [ %4520, %4511 ]
  %4652 = phi float [ %4521, %4669 ], [ %4521, %4750 ], [ %4920, %4998 ], [ %4521, %4511 ]
  %4653 = phi float [ %4522, %4669 ], [ %4522, %4750 ], [ %4921, %4998 ], [ %4522, %4511 ]
  %4654 = phi float [ %4523, %4669 ], [ %4523, %4750 ], [ %4922, %4998 ], [ %4523, %4511 ]
  %4655 = phi float [ %4524, %4669 ], [ %4524, %4750 ], [ %5008, %4998 ], [ %4524, %4511 ]
  %4656 = phi float [ %4525, %4669 ], [ %4525, %4750 ], [ %5009, %4998 ], [ %4525, %4511 ]
  %4657 = phi float [ %4526, %4669 ], [ %4526, %4750 ], [ %5010, %4998 ], [ %4526, %4511 ]
  %4658 = phi float [ %4527, %4669 ], [ %4527, %4750 ], [ %4856, %4998 ], [ %4527, %4511 ]
  %4659 = phi float [ %4528, %4669 ], [ %4528, %4750 ], [ %4857, %4998 ], [ %4528, %4511 ]
  %4660 = phi float [ %4529, %4669 ], [ %4529, %4750 ], [ %4858, %4998 ], [ %4529, %4511 ]
  %4661 = phi float [ %4530, %4669 ], [ %4530, %4750 ], [ %4930, %4998 ], [ %4530, %4511 ]
  %4662 = phi float [ %4531, %4669 ], [ %4531, %4750 ], [ %4927, %4998 ], [ %4531, %4511 ]
  %4663 = phi float [ %4532, %4669 ], [ %4532, %4750 ], [ %4924, %4998 ], [ %4532, %4511 ]
  %4664 = phi float [ %4533, %4669 ], [ %4533, %4750 ], [ %4873, %4998 ], [ %4533, %4511 ]
  %4665 = phi float [ %4534, %4669 ], [ %4534, %4750 ], [ %4868, %4998 ], [ %4534, %4511 ]
  %4666 = phi float [ %4535, %4669 ], [ %4535, %4750 ], [ %4869, %4998 ], [ %4535, %4511 ]
  %4667 = phi float [ %4536, %4669 ], [ %4536, %4750 ], [ %4870, %4998 ], [ %4536, %4511 ]
  %4668 = icmp eq i32 %4593, %4510
  br i1 %4668, label %5011, label %4511

; <label>:4669                                    ; preds = %4511
  %4670 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4671 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4675 = extractvalue %dx.types.ResRet.i32 %4549, 3
  %4676 = extractvalue %dx.types.ResRet.i32 %4549, 2
  %4677 = add i32 %4675, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4678, %dx.types.Handle %4679, float %4602, float %4609, float undef, float undef, i32 0, i32 0, i32 undef, float %4630, float %4632, float undef, float %4631, float %4633, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = fmul fast float %4681, %4674
  %4683 = fadd fast float %4682, %4673
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4602, %4558
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4609, float %4685)  ; FMad(a,b,c)
  %4687 = fadd fast float %4686, %4672
  %4688 = fmul fast float %4602, %4560
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4609, float %4688)  ; FMad(a,b,c)
  %4690 = fadd fast float %4689, %4671
  %4691 = fmul fast float %4630, %4558
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4632, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4630, %4560
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4632, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4631, %4558
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4633, float %4695)  ; FMad(a,b,c)
  %4697 = fmul fast float %4631, %4560
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4633, float %4697)  ; FMad(a,b,c)
  %4699 = add i32 %4676, 0
  %4700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4700, %dx.types.Handle %4679, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = and i32 %4594, 1024
  %4704 = icmp ne i32 %4703, 0
  %4705 = fcmp fast ogt float %4702, 0x3FE0101020000000
  %4706 = uitofp i1 %4705 to float
  %4707 = select i1 %4704, float %4706, float %4702
  %4708 = and i32 %4594, 8192
  %4709 = icmp ne i32 %4708, 0
  %4710 = select i1 %4709, float %4670, float 1.000000e+00
  %4711 = fmul fast float %4602, 2.000000e+00
  %4712 = fadd fast float %4711, -1.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4714 = fmul fast float %4713, %4591
  %4715 = fsub fast float %4714, %4591
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4609, 2.000000e+00
  %4718 = fadd fast float %4717, -1.000000e+00
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = fmul fast float %4719, %4592
  %4721 = fsub fast float %4720, %4592
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4621, %4554
  %4724 = fsub fast float %4723, %4554
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fmul fast float %4684, %4710
  %4727 = fmul fast float %4726, %4681
  %4728 = fmul fast float %4727, %4716
  %4729 = fmul fast float %4728, %4707
  %4730 = fmul fast float %4729, %4722
  %4731 = fmul fast float %4730, %4725
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4735 = fsub fast float %4638, %4734
  %4736 = fmul fast float %4735, %4733
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4731, %4555
  %4739 = fadd fast float %4731, %4555
  %4740 = fmul fast float %4739, %4564
  %4741 = fsub fast float %4740, %4564
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = and i32 %4594, 128
  %4744 = icmp ne i32 %4743, 0
  %4745 = select i1 %4744, float %4742, float %4738
  %4746 = fmul fast float %4745, %4737
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = fcmp fast ugt float %4746, %4748
  br i1 %4749, label %4750, label %4643

; <label>:4750                                    ; preds = %4669
  %4751 = select i1 %4709, float %4746, float 0.000000e+00
  %4752 = fadd fast float %4751, %4513
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  br i1 %4709, label %4643, label %4754

; <label>:4754                                    ; preds = %4750
  %4755 = and i32 %4594, 4
  %4756 = and i32 %4594, 8
  %4757 = add i32 %4550, 0
  %4758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4757, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4758, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4761 = extractvalue %dx.types.ResRet.f32 %4760, 0
  %4762 = extractvalue %dx.types.ResRet.f32 %4760, 1
  %4763 = extractvalue %dx.types.ResRet.f32 %4760, 2
  %4764 = extractvalue %dx.types.ResRet.f32 %4760, 3
  %4765 = bitcast float %4576 to i32
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4765, 8
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = fmul fast float %4764, %4767
  %4772 = fadd fast float %4771, %4770
  %4773 = fmul fast float %4772, 0x3F70101000000000
  %4774 = add i32 %4551, 0
  %4775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4775, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = extractvalue %dx.types.ResRet.f32 %4776, 3
  %4781 = bitcast float %4570 to i32
  %4782 = and i32 %4781, 255
  %4783 = uitofp i32 %4782 to float
  %4784 = lshr i32 %4781, 8
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = lshr i32 %4781, 16
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = fmul fast float %4789, 0x3F70101000000000
  %4791 = fmul fast float %4777, %4783
  %4792 = fadd fast float %4791, %4786
  %4793 = fmul fast float %4792, 0x3F70101000000000
  %4794 = fadd fast float %4778, -5.000000e-01
  %4795 = fadd fast float %4780, -5.000000e-01
  %4796 = fmul fast float %4794, %4790
  %4797 = fmul fast float %4795, %4790
  %4798 = fadd fast float %4796, 5.000000e-01
  %4799 = fadd fast float %4797, 5.000000e-01
  %4800 = fmul fast float %4761, %4579
  %4801 = fmul fast float %4762, %4580
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4798, 2.000000e+00
  %4804 = fadd fast float %4803, -1.000000e+00
  %4805 = fmul fast float %4799, 2.000000e+00
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = fadd fast float %4804, %4806
  %4808 = fmul fast float %4807, 5.000000e-01
  %4809 = fsub fast float %4804, %4806
  %4810 = fmul fast float %4809, 5.000000e-01
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = call float @dx.op.unary.f32(i32 6, float %4810)  ; FAbs(value)
  %4814 = fsub fast float %4812, %4813
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4810, float %4814, float %4808, float %4810, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = call float @dx.op.unary.f32(i32 25, float %4815)  ; Rsqrt(value)
  %4817 = fmul fast float %4808, %4816
  %4818 = fmul fast float %4810, %4816
  %4819 = fmul fast float %4816, %4814
  %4820 = fmul fast float %4819, %4544
  %4821 = fmul fast float %4819, %4545
  %4822 = fmul fast float %4819, %4546
  %4823 = fmul fast float %4817, %4567
  %4824 = fmul fast float %4817, %4568
  %4825 = fmul fast float %4817, %4569
  %4826 = fadd fast float %4823, %4820
  %4827 = fadd fast float %4824, %4821
  %4828 = fadd fast float %4825, %4822
  %4829 = fmul fast float %4818, %4573
  %4830 = fmul fast float %4818, %4574
  %4831 = fmul fast float %4818, %4575
  %4832 = fadd fast float %4826, %4829
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %4834, float %4832, float %4833, float %4834)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 25, float %4835)  ; Rsqrt(value)
  %4837 = fmul fast float %4832, %4836
  %4838 = fmul fast float %4833, %4836
  %4839 = fmul fast float %4834, %4836
  %4840 = icmp ne i32 %4756, 0
  %4841 = select i1 %4840, float 1.000000e+00, float 0.000000e+00
  %4842 = fmul fast float %4746, %4841
  %4843 = and i32 %4594, 1
  %4844 = icmp eq i32 %4843, 0
  br i1 %4844, label %4845, label %4849

; <label>:4845                                    ; preds = %4754
  %4846 = fsub fast float %4837, %4527
  %4847 = fsub fast float %4838, %4528
  %4848 = fsub fast float %4839, %4529
  br label %4849

; <label>:4849                                    ; preds = %4845, %4754
  %4850 = phi float [ %4846, %4845 ], [ %4837, %4754 ]
  %4851 = phi float [ %4847, %4845 ], [ %4838, %4754 ]
  %4852 = phi float [ %4848, %4845 ], [ %4839, %4754 ]
  %4853 = fmul float %4852, %4842
  %4854 = fmul float %4851, %4842
  %4855 = fmul float %4850, %4842
  %4856 = fadd fast float %4855, %4527
  %4857 = fadd fast float %4854, %4528
  %4858 = fadd fast float %4853, %4529
  %4859 = icmp ne i32 %4755, 0
  %4860 = select i1 %4859, float 1.000000e+00, float 0.000000e+00
  %4861 = fmul fast float %4746, %4860
  %4862 = fsub fast float %4800, %4534
  %4863 = fsub fast float %4801, %4535
  %4864 = fsub fast float %4802, %4536
  %4865 = fmul fast float %4862, %4861
  %4866 = fmul fast float %4863, %4861
  %4867 = fmul fast float %4864, %4861
  %4868 = fadd fast float %4865, %4534
  %4869 = fadd fast float %4866, %4535
  %4870 = fadd fast float %4867, %4536
  %4871 = fsub fast float %4773, %4533
  %4872 = fmul fast float %4871, %4861
  %4873 = fadd fast float %4872, %4533
  %4874 = fmul fast float %4861, %4520
  %4875 = fsub fast float %4520, %4874
  %4876 = fmul fast float %4861, %4519
  %4877 = fsub fast float %4519, %4876
  %4878 = bitcast float %4588 to i32
  %4879 = lshr i32 %4878, 16
  %4880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4879)  ; LegacyF16ToF32(value)
  %4881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4882 = extractvalue %dx.types.ResRet.i32 %4881, 0
  %4883 = and i32 %4882, 1
  %4884 = icmp eq i32 %4883, 0
  br i1 %4884, label %4885, label %4910

; <label>:4885                                    ; preds = %4849
  %4886 = fadd fast float %4773, 0xBFB99999A0000000
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4887, 0x3FF1C71C80000000
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, %4800
  %4892 = fmul fast float %4890, %4801
  %4893 = fmul fast float %4890, %4802
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4895, float %4896)  ; FMax(a,b)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4894, float %4897)  ; FMax(a,b)
  %4899 = fcmp fast ogt float %4898, 0.000000e+00
  %4900 = bitcast float %4898 to i32
  %4901 = sub nsw i32 2129859010, %4900
  %4902 = bitcast i32 %4901 to float
  %4903 = select i1 %4899, float %4902, float 0.000000e+00
  %4904 = fmul fast float %4894, %4880
  %4905 = fmul fast float %4895, %4880
  %4906 = fmul fast float %4896, %4880
  %4907 = fmul fast float %4904, %4903
  %4908 = fmul fast float %4905, %4903
  %4909 = fmul fast float %4906, %4903
  br label %4910

; <label>:4910                                    ; preds = %4885, %4849
  %4911 = phi float [ %4880, %4849 ], [ %4907, %4885 ]
  %4912 = phi float [ %4880, %4849 ], [ %4908, %4885 ]
  %4913 = phi float [ %4880, %4849 ], [ %4909, %4885 ]
  %4914 = fsub fast float %4911, %4521
  %4915 = fsub fast float %4912, %4522
  %4916 = fsub fast float %4913, %4523
  %4917 = fmul fast float %4914, %4861
  %4918 = fmul fast float %4915, %4861
  %4919 = fmul fast float %4916, %4861
  %4920 = fadd fast float %4917, %4521
  %4921 = fadd fast float %4918, %4522
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4746, %4532
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fsub fast float %4793, %4531
  %4926 = fmul fast float %4925, %4842
  %4927 = fadd fast float %4926, %4531
  %4928 = fsub fast float %4779, %4530
  %4929 = fmul fast float %4928, %4842
  %4930 = fadd fast float %4929, %4530
  br i1 %4844, label %4939, label %4931

; <label>:4931                                    ; preds = %4910
  %4932 = and i32 %4594, 32768
  %4933 = icmp eq i32 %4932, 0
  br i1 %4933, label %4949, label %4934

; <label>:4934                                    ; preds = %4931
  %4935 = fmul fast float %4842, 1.270000e+02
  %4936 = fadd fast float %4935, %4516
  %4937 = fadd fast float %4935, %4517
  %4938 = fadd fast float %4935, %4518
  br label %4949

; <label>:4939                                    ; preds = %4910
  %4940 = fsub fast float 1.270000e+02, %4516
  %4941 = fsub fast float 1.270000e+02, %4517
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fmul fast float %4842, %4940
  %4944 = fmul fast float %4842, %4941
  %4945 = fmul fast float %4842, %4942
  %4946 = fadd fast float %4943, %4516
  %4947 = fadd fast float %4944, %4517
  %4948 = fadd fast float %4945, %4518
  br label %4949

; <label>:4949                                    ; preds = %4939, %4934, %4931
  %4950 = phi float [ %4936, %4934 ], [ %4516, %4931 ], [ %4946, %4939 ]
  %4951 = phi float [ %4937, %4934 ], [ %4517, %4931 ], [ %4947, %4939 ]
  %4952 = phi float [ %4938, %4934 ], [ %4518, %4931 ], [ %4948, %4939 ]
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4801, float %4802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.CBufRet.f32 %4954, 1
  %4957 = fmul fast float %4956, %4953
  %4958 = fadd fast float %4957, %4955
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = bitcast float %4582 to i32
  %4961 = and i32 %4960, 65535
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = lshr i32 %4960, 16
  %4964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4963)  ; LegacyF16ToF32(value)
  %4965 = fcmp fast oge float %4962, 0.000000e+00
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = select i1 %4965, float %4962, float %4967
  %4969 = fadd fast float %4968, %4964
  %4970 = fsub fast float %4959, %4515
  %4971 = fmul fast float %4970, %4746
  %4972 = fadd fast float %4971, %4515
  %4973 = fmul fast float %4969, %4746
  %4974 = call float @dx.op.binary.f32(i32 35, float %4514, float %4973)  ; FMax(a,b)
  %4975 = and i32 %4594, 16
  %4976 = icmp eq i32 %4975, 0
  br i1 %4976, label %4998, label %4977

; <label>:4977                                    ; preds = %4949
  %4978 = add i32 %4585, 0
  %4979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4978, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4979, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = and i32 %4878, 65535
  %4985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4984)  ; LegacyF16ToF32(value)
  %4986 = fmul fast float %4981, %4579
  %4987 = fmul fast float %4982, %4580
  %4988 = fmul fast float %4983, %4581
  %4989 = and i32 %4594, 16384
  %4990 = icmp ne i32 %4989, 0
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = select i1 %4990, float %4992, float 1.000000e+00
  %4994 = fmul fast float %4993, %4985
  %4995 = fmul fast float %4986, %4994
  %4996 = fmul fast float %4987, %4994
  %4997 = fmul fast float %4988, %4994
  br label %4998

; <label>:4998                                    ; preds = %4977, %4949
  %4999 = phi float [ %4995, %4977 ], [ 0.000000e+00, %4949 ]
  %5000 = phi float [ %4996, %4977 ], [ 0.000000e+00, %4949 ]
  %5001 = phi float [ %4997, %4977 ], [ 0.000000e+00, %4949 ]
  %5002 = fsub fast float %4999, %4524
  %5003 = fsub fast float %5000, %4525
  %5004 = fsub fast float %5001, %4526
  %5005 = fmul fast float %5002, %4746
  %5006 = fmul fast float %5003, %4746
  %5007 = fmul fast float %5004, %4746
  %5008 = fadd fast float %5005, %4524
  %5009 = fadd fast float %5006, %4525
  %5010 = fadd fast float %5007, %4526
  br label %4643

; <label>:5011                                    ; preds = %4643
  br label %5012

; <label>:5012                                    ; preds = %5011, %4457
  %5013 = phi float [ 0.000000e+00, %4457 ], [ %4644, %5011 ]
  %5014 = phi float [ %4426, %4457 ], [ %4645, %5011 ]
  %5015 = phi float [ %4424, %4457 ], [ %4646, %5011 ]
  %5016 = phi float [ %4417, %4457 ], [ %4647, %5011 ]
  %5017 = phi float [ %4418, %4457 ], [ %4648, %5011 ]
  %5018 = phi float [ %4419, %4457 ], [ %4649, %5011 ]
  %5019 = phi float [ 0.000000e+00, %4457 ], [ %4650, %5011 ]
  %5020 = phi float [ 0.000000e+00, %4457 ], [ %4651, %5011 ]
  %5021 = phi float [ %4411, %4457 ], [ %4652, %5011 ]
  %5022 = phi float [ %4412, %4457 ], [ %4653, %5011 ]
  %5023 = phi float [ %4413, %4457 ], [ %4654, %5011 ]
  %5024 = phi float [ %4414, %4457 ], [ %4655, %5011 ]
  %5025 = phi float [ %4415, %4457 ], [ %4656, %5011 ]
  %5026 = phi float [ %4416, %4457 ], [ %4657, %5011 ]
  %5027 = phi float [ %4452, %4457 ], [ %4658, %5011 ]
  %5028 = phi float [ %4453, %4457 ], [ %4659, %5011 ]
  %5029 = phi float [ %4454, %4457 ], [ %4660, %5011 ]
  %5030 = phi float [ %4422, %4457 ], [ %4661, %5011 ]
  %5031 = phi float [ %4421, %4457 ], [ %4662, %5011 ]
  %5032 = phi float [ 0.000000e+00, %4457 ], [ %4663, %5011 ]
  %5033 = phi float [ %4420, %4457 ], [ %4664, %5011 ]
  %5034 = phi float [ %4408, %4457 ], [ %4665, %5011 ]
  %5035 = phi float [ %4409, %4457 ], [ %4666, %5011 ]
  %5036 = phi float [ %4410, %4457 ], [ %4667, %5011 ]
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5038, %5027
  %5040 = fmul fast float %5038, %5028
  %5041 = fmul fast float %5038, %5029
  %5042 = fadd fast float %5032, %1249
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 25, float %5044)  ; Rsqrt(value)
  %5046 = fmul fast float %5045, %5039
  %5047 = fmul fast float %5045, %5040
  %5048 = fmul fast float %5045, %5041
  br label %5049

; <label>:5049                                    ; preds = %5012, %4405
  %5050 = phi float [ %5046, %5012 ], [ %4452, %4405 ]
  %5051 = phi float [ %5047, %5012 ], [ %4453, %4405 ]
  %5052 = phi float [ %5048, %5012 ], [ %4454, %4405 ]
  %5053 = phi float [ %5034, %5012 ], [ %4408, %4405 ]
  %5054 = phi float [ %5035, %5012 ], [ %4409, %4405 ]
  %5055 = phi float [ %5036, %5012 ], [ %4410, %4405 ]
  %5056 = phi float [ %5024, %5012 ], [ %4414, %4405 ]
  %5057 = phi float [ %5025, %5012 ], [ %4415, %4405 ]
  %5058 = phi float [ %5026, %5012 ], [ %4416, %4405 ]
  %5059 = phi float [ %5021, %5012 ], [ %4411, %4405 ]
  %5060 = phi float [ %5022, %5012 ], [ %4412, %4405 ]
  %5061 = phi float [ %5023, %5012 ], [ %4413, %4405 ]
  %5062 = phi float [ %5016, %5012 ], [ %4417, %4405 ]
  %5063 = phi float [ %5017, %5012 ], [ %4418, %4405 ]
  %5064 = phi float [ %5018, %5012 ], [ %4419, %4405 ]
  %5065 = phi float [ %5033, %5012 ], [ %4420, %4405 ]
  %5066 = phi float [ %5043, %5012 ], [ %1249, %4405 ]
  %5067 = phi float [ %5031, %5012 ], [ %4421, %4405 ]
  %5068 = phi float [ %5030, %5012 ], [ %4422, %4405 ]
  %5069 = phi float [ %5020, %5012 ], [ 0.000000e+00, %4405 ]
  %5070 = phi float [ %5019, %5012 ], [ 0.000000e+00, %4405 ]
  %5071 = phi float [ %5013, %5012 ], [ 0.000000e+00, %4405 ]
  %5072 = phi float [ %5014, %5012 ], [ %4426, %4405 ]
  %5073 = phi float [ %5015, %5012 ], [ %4424, %4405 ]
  %5074 = fadd fast float %5065, 0xBFB99999A0000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, 0x3FF1C71C80000000
  %5077 = call float @dx.op.binary.f32(i32 36, float %5065, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5078 = fsub fast float 1.000000e+00, %5076
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, %5053
  %5081 = fmul fast float %5079, %5054
  %5082 = fmul fast float %5079, %5055
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = fmul fast float %5076, %5053
  %5087 = fmul fast float %5076, %5054
  %5088 = fmul fast float %5076, %5055
  %5089 = fadd fast float %5086, %5077
  %5090 = fadd fast float %5087, %5077
  %5091 = fadd fast float %5088, %5077
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5097 = extractvalue %dx.types.ResRet.i32 %5096, 0
  %5098 = and i32 %5097, 1
  %5099 = icmp eq i32 %5098, 0
  br i1 %5099, label %5114, label %5100

; <label>:5100                                    ; preds = %5049
  %5101 = call float @dx.op.binary.f32(i32 35, float %5084, float %5085)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5083, float %5101)  ; FMax(a,b)
  %5103 = fcmp fast ogt float %5102, 0.000000e+00
  %5104 = bitcast float %5102 to i32
  %5105 = sub nsw i32 2129859010, %5104
  %5106 = bitcast i32 %5105 to float
  %5107 = select i1 %5103, float %5106, float 0.000000e+00
  %5108 = fmul fast float %5083, %5059
  %5109 = fmul fast float %5084, %5060
  %5110 = fmul fast float %5085, %5061
  %5111 = fmul fast float %5108, %5107
  %5112 = fmul fast float %5109, %5107
  %5113 = fmul fast float %5110, %5107
  br label %5114

; <label>:5114                                    ; preds = %5100, %5049
  %5115 = phi float [ %5111, %5100 ], [ %5059, %5049 ]
  %5116 = phi float [ %5112, %5100 ], [ %5060, %5049 ]
  %5117 = phi float [ %5113, %5100 ], [ %5061, %5049 ]
  %5118 = call float @dx.op.binary.f32(i32 36, float %5062, float 1.270000e+02)  ; FMin(a,b)
  %5119 = call float @dx.op.binary.f32(i32 36, float %5063, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5064, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 3
  %5123 = and i32 %5122, 8
  %5124 = icmp ne i32 %5123, 0
  %5125 = call float @dx.op.binary.f32(i32 35, float %5083, float %5053)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5053)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5053)  ; FMax(a,b)
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = select i1 %219, float %5053, float %5083
  %5130 = select i1 %219, float %5128, float %5084
  %5131 = select i1 %219, float 1.000000e+00, float %5085
  %5132 = select i1 %5124, float %5125, float %5129
  %5133 = select i1 %5124, float %5126, float %5130
  %5134 = select i1 %5124, float %5127, float %5131
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = select i1 %219, float %5135, float %5115
  %5137 = select i1 %219, float %5135, float %5116
  %5138 = select i1 %219, float %5135, float %5117
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5143 = fadd fast float %5140, %157
  %5144 = fadd fast float %5141, %158
  %5145 = fadd fast float %5142, %159
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = fsub fast float %5143, %5147
  %5150 = fsub fast float %5144, %5148
  %5151 = fmul fast float %5149, %5149
  %5152 = fmul fast float %5150, %5150
  %5153 = fadd fast float %5151, %5152
  %5154 = call float @dx.op.unary.f32(i32 24, float %5153)  ; Sqrt(value)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5156 = fcmp fast olt float %5154, %5155
  br i1 %5156, label %5157, label %5224

; <label>:5157                                    ; preds = %5114
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5168 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5170 = fadd fast float %5167, %5143
  %5171 = fadd fast float %5168, %5144
  %5172 = fadd fast float %5169, %5145
  %5173 = fmul fast float %5170, %5159
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5161, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = fmul fast float %5170, %5164
  %5177 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5165, float %5176)  ; FMad(a,b,c)
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = fsub fast float %5175, %5167
  %5180 = fsub fast float %5178, %5168
  %5181 = fsub fast float %5179, %5147
  %5182 = fadd fast float %5181, %5155
  %5183 = fsub fast float %5180, %5148
  %5184 = fadd fast float %5183, %5155
  %5185 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5186 = fmul fast float %5182, %5185
  %5187 = fmul fast float %5184, %5185
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float 1.000000e+00, %5188
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = fcmp fast ugt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5498

; <label>:5195                                    ; preds = %5157
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5198 = fmul fast float %5197, %5193
  %5199 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5200 = fadd fast float %5199, %5198
  %5201 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5202 = fadd fast float %5200, %5169
  %5203 = fmul fast float %5175, %5163
  %5204 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5166, float %5203)  ; FMad(a,b,c)
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5202, float %5201, float %5204)  ; FMad(a,b,c)
  %5206 = fsub fast float %5205, %5169
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5209 = fsub fast float %5206, %5208
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = fadd fast float %5215, %5211
  %5219 = fmul fast float %5218, 0x3F847AE140000000
  %5220 = fadd fast float %5216, %5212
  %5221 = fmul fast float %5220, 0x3F847AE140000000
  %5222 = fadd fast float %5217, %5213
  %5223 = fmul fast float %5222, 0x3F847AE140000000
  br label %5498

; <label>:5224                                    ; preds = %5114
  %5225 = and i32 %195, 1
  %5226 = icmp eq i32 %5225, 0
  br i1 %5226, label %5498, label %5227

; <label>:5227                                    ; preds = %5224
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5235 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5232, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5238 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5232, 3
  %5240 = fadd fast float %5237, %5143
  %5241 = fadd fast float %5238, %5144
  %5242 = fadd fast float %5239, %5145
  %5243 = fmul fast float %5240, %5229
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5231, float %5243)  ; FMad(a,b,c)
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5233, float %5244)  ; FMad(a,b,c)
  %5246 = fmul fast float %5240, %5234
  %5247 = call float @dx.op.tertiary.f32(i32 46, float %5241, float %5235, float %5246)  ; FMad(a,b,c)
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = fsub fast float %5245, %5237
  %5250 = fsub fast float %5248, %5238
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.i32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.i32 %5258, 1
  %5261 = udiv i32 %5260, %5259
  %5262 = fsub fast float %5249, %5252
  %5263 = fsub fast float %5250, %5253
  %5264 = call float @dx.op.binary.f32(i32 35, float %5262, float 0.000000e+00)  ; FMax(a,b)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 36, float %5264, float %5254)  ; FMin(a,b)
  %5267 = call float @dx.op.binary.f32(i32 36, float %5265, float %5255)  ; FMin(a,b)
  %5268 = add i32 %5259, -1
  %5269 = add i32 %5261, -1
  %5270 = fmul fast float %5266, %5257
  %5271 = fmul fast float %5267, %5257
  %5272 = fptoui float %5270 to i32
  %5273 = fptoui float %5271 to i32
  %5274 = call i32 @dx.op.binary.i32(i32 40, i32 %5272, i32 %5268)  ; UMin(a,b)
  %5275 = call i32 @dx.op.binary.i32(i32 40, i32 %5273, i32 %5269)  ; UMin(a,b)
  %5276 = mul i32 %5275, %5259
  %5277 = add i32 %5276, %5274
  %5278 = shl i32 %5277, 2
  %5279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.i32 %5279, 0
  %5281 = icmp eq i32 %5280, -1
  br i1 %5281, label %5498, label %5282

; <label>:5282                                    ; preds = %5227
  %5283 = mul i32 %5280, 148
  %5284 = add i32 %5283, 4
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = add i32 %5283, 8
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = add i32 %5283, 36
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = add i32 %5283, 60
  %5294 = add i32 %5283, 92
  %5295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.i32 %5295, 0
  %5297 = add i32 %5283, 116
  %5298 = fsub fast float %5249, %5286
  %5299 = fsub fast float %5250, %5289
  %5300 = fmul fast float %5257, %5298
  %5301 = fmul fast float %5257, %5299
  %5302 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5307 = call float @dx.op.unary.f32(i32 83, float %5302)  ; DerivCoarseX(value)
  %5308 = call float @dx.op.unary.f32(i32 83, float %5304)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 84, float %5302)  ; DerivCoarseY(value)
  %5310 = call float @dx.op.unary.f32(i32 84, float %5304)  ; DerivCoarseY(value)
  %5311 = fmul fast float %5307, %5306
  %5312 = fmul fast float %5308, %5306
  %5313 = fmul fast float %5309, %5306
  %5314 = fmul fast float %5310, %5306
  %5315 = call float @dx.op.dot2.f32(i32 54, float %5313, float %5314, float %5313, float %5314)  ; Dot2(ax,ay,bx,by)
  %5316 = call float @dx.op.dot2.f32(i32 54, float %5311, float %5312, float %5311, float %5312)  ; Dot2(ax,ay,bx,by)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5316, float %5315)  ; FMax(a,b)
  %5318 = call float @dx.op.unary.f32(i32 23, float %5317)  ; Log(value)
  %5319 = fmul fast float %5318, 5.000000e-01
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 1
  %5322 = fadd fast float %5321, %5319
  %5323 = call float @dx.op.binary.f32(i32 35, float %5322, float 0.000000e+00)  ; FMax(a,b)
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5326 = fadd fast float %5325, %5323
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5329 = fadd fast float %5326, %5328
  %5330 = add i32 %5296, 0
  %5331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5330, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5332 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5331, i32 0)  ; GetDimensions(handle,mipLevel)
  %5333 = extractvalue %dx.types.Dimensions %5332, 0
  %5334 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5333)  ; FirstbitLo(value)
  %5335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.i32 %5335, 1
  %5337 = sub nsw i32 %5336, %5334
  %5338 = sitofp i32 %5337 to float
  %5339 = fsub fast float %5329, %5338
  %5340 = call float @dx.op.binary.f32(i32 35, float %5339, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5331, %dx.types.Handle %48, float %5302, float %5304, float %5292, float undef, i32 0, i32 0, i32 undef, float %5340)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = fcmp ule float %5342, 0x3FE0101020000000
  %5344 = extractvalue %dx.types.CBufRet.i32 %5335, 0
  %5345 = and i32 %5344, 128
  %5346 = icmp ne i32 %5345, 0
  %5347 = and i1 %5343, %5346
  br i1 %5347, label %5498, label %5348

; <label>:5348                                    ; preds = %5282
  %5349 = add i32 %5283, 20
  %5350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = add i32 %5283, 24
  %5353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = add i32 %5283, 40
  %5356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = add i32 %5283, 96
  %5359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 2
  %5363 = fmul fast float %5362, %5302
  %5364 = fmul fast float %5362, %5304
  %5365 = extractvalue %dx.types.CBufRet.f32 %5361, 3
  %5366 = fadd fast float %5363, %5365
  %5367 = fadd fast float %5364, %5365
  %5368 = add i32 %5360, 0
  %5369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5369, i32 0)  ; GetDimensions(handle,mipLevel)
  %5371 = extractvalue %dx.types.Dimensions %5370, 0
  %5372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5371)  ; FirstbitLo(value)
  %5373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.i32 %5373, 1
  %5375 = sub nsw i32 %5374, %5372
  %5376 = sitofp i32 %5375 to float
  %5377 = fsub fast float %5326, %5376
  %5378 = call float @dx.op.binary.f32(i32 35, float %5377, float 0.000000e+00)  ; FMax(a,b)
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5369, %dx.types.Handle %48, float %5366, float %5367, float %5357, float undef, i32 0, i32 0, i32 undef, float %5378)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = fmul fast float %5380, %5351
  %5382 = fadd fast float %5381, %5354
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5391 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5392 = fadd fast float %5388, %5249
  %5393 = fadd fast float %5390, %5250
  %5394 = fadd fast float %5382, %5391
  %5395 = fmul fast float %5392, %5384
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5385, float %5395)  ; FMad(a,b,c)
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5386, float %5396)  ; FMad(a,b,c)
  %5398 = fsub fast float %5397, %5391
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5401 = fsub fast float %5398, %5400
  %5402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.i32 %5402, 0
  %5404 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 %5403)  ; UMin(a,b)
  %5405 = mul i32 %5404, 36
  %5406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.i32 %5406, 0
  %5408 = add i32 %5405, 4
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = fmul fast float %5410, %5302
  %5412 = fmul fast float %5410, %5304
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5414 = fadd fast float %5411, %5413
  %5415 = fadd fast float %5412, %5413
  %5416 = icmp eq i32 %5407, 0
  br i1 %5416, label %5485, label %5417

; <label>:5417                                    ; preds = %5348
  br label %5418

; <label>:5418                                    ; preds = %5475, %5417
  %5419 = phi float [ %5476, %5475 ], [ 0.000000e+00, %5417 ]
  %5420 = phi float [ %5477, %5475 ], [ 0.000000e+00, %5417 ]
  %5421 = phi float [ %5478, %5475 ], [ 0.000000e+00, %5417 ]
  %5422 = phi float [ %5479, %5475 ], [ 0.000000e+00, %5417 ]
  %5423 = phi float [ %5480, %5475 ], [ 0.000000e+00, %5417 ]
  %5424 = phi float [ %5481, %5475 ], [ 0.000000e+00, %5417 ]
  %5425 = phi i32 [ %5482, %5475 ], [ 0, %5417 ]
  %5426 = shl i32 %5425, 2
  %5427 = add i32 %5293, %5426
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = add i32 %5297, %5426
  %5431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = add i32 %5432, 0
  %5434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5433, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5435 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5434, i32 0)  ; GetDimensions(handle,mipLevel)
  %5436 = extractvalue %dx.types.Dimensions %5435, 0
  %5437 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5436)  ; FirstbitLo(value)
  %5438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.i32 %5438, 1
  %5440 = sub nsw i32 %5439, %5437
  %5441 = sitofp i32 %5440 to float
  %5442 = fsub fast float %5326, %5441
  %5443 = call float @dx.op.binary.f32(i32 35, float %5442, float 0.000000e+00)  ; FMax(a,b)
  %5444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5434, %dx.types.Handle %48, float %5414, float %5415, float %5429, float undef, i32 0, i32 0, i32 undef, float %5443)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = fcmp fast ogt float %5445, 0.000000e+00
  br i1 %5446, label %5447, label %5475

; <label>:5447                                    ; preds = %5418
  %5448 = add i32 %5408, %5426
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = and i32 %5450, 32767
  %5452 = mul nuw nsw i32 %5451, 928
  %5453 = add nuw nsw i32 %5452, 48
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = add nuw nsw i32 %5452, 60
  %5459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fmul fast float %5455, %5445
  %5464 = fmul fast float %5456, %5445
  %5465 = fmul fast float %5457, %5445
  %5466 = fadd fast float %5463, %5419
  %5467 = fadd fast float %5464, %5420
  %5468 = fadd fast float %5465, %5421
  %5469 = fmul fast float %5460, %5445
  %5470 = fmul fast float %5461, %5445
  %5471 = fmul fast float %5462, %5445
  %5472 = fadd fast float %5469, %5422
  %5473 = fadd fast float %5470, %5423
  %5474 = fadd fast float %5471, %5424
  br label %5475

; <label>:5475                                    ; preds = %5447, %5418
  %5476 = phi float [ %5466, %5447 ], [ %5419, %5418 ]
  %5477 = phi float [ %5467, %5447 ], [ %5420, %5418 ]
  %5478 = phi float [ %5468, %5447 ], [ %5421, %5418 ]
  %5479 = phi float [ %5472, %5447 ], [ %5422, %5418 ]
  %5480 = phi float [ %5473, %5447 ], [ %5423, %5418 ]
  %5481 = phi float [ %5474, %5447 ], [ %5424, %5418 ]
  %5482 = add nuw i32 %5425, 1
  %5483 = icmp eq i32 %5482, %5407
  br i1 %5483, label %5484, label %5418

; <label>:5484                                    ; preds = %5475
  br label %5485

; <label>:5485                                    ; preds = %5484, %5348
  %5486 = phi float [ 0.000000e+00, %5348 ], [ %5476, %5484 ]
  %5487 = phi float [ 0.000000e+00, %5348 ], [ %5477, %5484 ]
  %5488 = phi float [ 0.000000e+00, %5348 ], [ %5478, %5484 ]
  %5489 = phi float [ 0.000000e+00, %5348 ], [ %5479, %5484 ]
  %5490 = phi float [ 0.000000e+00, %5348 ], [ %5480, %5484 ]
  %5491 = phi float [ 0.000000e+00, %5348 ], [ %5481, %5484 ]
  %5492 = fadd fast float %5489, %5486
  %5493 = fmul fast float %5492, 0x3F847AE140000000
  %5494 = fadd fast float %5490, %5487
  %5495 = fmul fast float %5494, 0x3F847AE140000000
  %5496 = fadd fast float %5491, %5488
  %5497 = fmul fast float %5496, 0x3F847AE140000000
  br label %5498

; <label>:5498                                    ; preds = %5485, %5282, %5227, %5224, %5195, %5157
  %5499 = phi float [ %5209, %5195 ], [ -1.310720e+05, %5157 ], [ %5401, %5485 ], [ -1.310720e+05, %5227 ], [ -1.310720e+05, %5282 ], [ -1.310720e+05, %5224 ]
  %5500 = phi float [ %5219, %5195 ], [ 0.000000e+00, %5157 ], [ %5493, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5501 = phi float [ %5221, %5195 ], [ 0.000000e+00, %5157 ], [ %5495, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5502 = phi float [ %5223, %5195 ], [ 0.000000e+00, %5157 ], [ %5497, %5485 ], [ 0.000000e+00, %5227 ], [ 0.000000e+00, %5282 ], [ 0.000000e+00, %5224 ]
  %5503 = phi i1 [ true, %5195 ], [ false, %5157 ], [ true, %5485 ], [ false, %5227 ], [ false, %5282 ], [ false, %5224 ]
  %5504 = and i32 %195, 3
  %5505 = icmp eq i32 %5504, 1
  %5506 = select i1 %5505, float 1.000000e+00, float 0.000000e+00
  %5507 = fsub fast float %5499, %159
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = select i1 %5503, float %5508, float 1.000000e+00
  %5510 = fmul fast float %5509, %5506
  %5511 = icmp eq i32 %5504, 3
  %5512 = select i1 %5511, float 1.000000e+00, float %5510
  %5513 = call float @dx.op.binary.f32(i32 35, float %5071, float %5512)  ; FMax(a,b)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fcmp fast une float %5514, 0.000000e+00
  %5516 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 25, float %5516)  ; Rsqrt(value)
  br i1 %5515, label %5525, label %5518

; <label>:5518                                    ; preds = %5498
  %5519 = fmul fast float %5517, %157
  %5520 = fmul fast float %5517, %158
  %5521 = fmul fast float %5517, %159
  %5522 = fsub fast float -0.000000e+00, %5519
  %5523 = fsub fast float -0.000000e+00, %5520
  %5524 = fsub fast float -0.000000e+00, %5521
  br label %5693

; <label>:5525                                    ; preds = %5498
  %5526 = fmul fast float %157, %5517
  %5527 = fsub fast float -0.000000e+00, %5526
  %5528 = fmul fast float %158, %5517
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = fmul fast float %159, %5517
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5529, float %5531, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fmul fast float %5514, 2.500000e+00
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = fmul fast float %5514, 0x4013FFFFE0000000
  %5536 = fadd fast float %5535, 0xBFFFFFFFE0000000
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = fmul fast float %5514, 0x4004000020000000
  %5539 = fadd fast float %5538, 0xBFF8000040000000
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5542 = fmul fast float %5074, 1.000000e+01
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = fsub fast float 3.000000e+00, %5544
  %5546 = fmul fast float %5543, %5543
  %5547 = fmul fast float %5546, %5545
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = fsub fast float 0x3FE3333340000000, %5095
  %5550 = fmul fast float %5549, 0x400AAAAAA0000000
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fmul fast float %5548, %5551
  %5553 = fmul fast float %5132, 0x3FEA2B8620000000
  %5554 = fmul fast float %5133, 0x3FEA2B8620000000
  %5555 = fmul fast float %5134, 0x3FEA2B8620000000
  %5556 = fadd fast float %5553, 0x3FC81DFBA0000000
  %5557 = fmul fast float %5556, %5132
  %5558 = fadd fast float %5557, 0x3F910E6020000000
  %5559 = fadd fast float %5554, 0x3FC81DFBA0000000
  %5560 = fmul fast float %5559, %5133
  %5561 = fadd fast float %5560, 0x3F910E6020000000
  %5562 = fadd fast float %5555, 0x3FC81DFBA0000000
  %5563 = fmul fast float %5562, %5134
  %5564 = fadd fast float %5563, 0x3F910E6020000000
  %5565 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5566 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5567 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5568 = fsub fast float %5565, %5132
  %5569 = fsub fast float %5566, %5133
  %5570 = fsub fast float %5567, %5134
  %5571 = fmul fast float %5568, %5541
  %5572 = fmul fast float %5571, %5552
  %5573 = fmul fast float %5569, %5541
  %5574 = fmul fast float %5573, %5552
  %5575 = fmul fast float %5570, %5541
  %5576 = fmul fast float %5575, %5552
  %5577 = fadd fast float %5572, %5132
  %5578 = fadd fast float %5574, %5133
  %5579 = fadd fast float %5576, %5134
  %5580 = fmul fast float %5068, %5068
  %5581 = fmul fast float %5580, %5580
  %5582 = fadd fast float %5537, 1.000000e+00
  %5583 = fsub fast float %5582, %5552
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fsub fast float 1.000000e+00, %5581
  %5588 = call float @dx.op.binary.f32(i32 36, float %5584, float %5587)  ; FMin(a,b)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5590 = call float @dx.op.binary.f32(i32 35, float %5588, float %5589)  ; FMax(a,b)
  %5591 = fadd fast float %5586, 0xBFE4CCCCC0000000
  %5592 = fmul fast float %5591, 0x4006DB6DA0000000
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5593, 2.000000e+00
  %5595 = fsub fast float 3.000000e+00, %5594
  %5596 = bitcast float %5092 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = add nsw i32 %5597, 532487669
  %5599 = bitcast i32 %5598 to float
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = bitcast float %5600 to i32
  %5602 = sub nsw i32 2129859010, %5601
  %5603 = bitcast i32 %5602 to float
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = bitcast float %5093 to i32
  %5606 = ashr i32 %5605, 1
  %5607 = add nsw i32 %5606, 532487669
  %5608 = bitcast i32 %5607 to float
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = bitcast float %5609 to i32
  %5611 = sub nsw i32 2129859010, %5610
  %5612 = bitcast i32 %5611 to float
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = bitcast float %5094 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = add nsw i32 %5615, 532487669
  %5617 = bitcast i32 %5616 to float
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = bitcast float %5618 to i32
  %5620 = sub nsw i32 2129859010, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = fsub fast float 0x4002A9FBE0000000, %5604
  %5624 = fadd fast float %5604, 0x3FD54FDF00000000
  %5625 = bitcast float %5624 to i32
  %5626 = sub nsw i32 2129859010, %5625
  %5627 = bitcast i32 %5626 to float
  %5628 = fmul fast float %5627, %5623
  %5629 = fmul fast float %5628, %5628
  %5630 = fsub fast float 0x4002A9FBE0000000, %5613
  %5631 = fadd fast float %5613, 0x3FD54FDF00000000
  %5632 = bitcast float %5631 to i32
  %5633 = sub nsw i32 2129859010, %5632
  %5634 = bitcast i32 %5633 to float
  %5635 = fmul fast float %5634, %5630
  %5636 = fmul fast float %5635, %5635
  %5637 = fsub fast float 0x4002A9FBE0000000, %5622
  %5638 = fadd fast float %5622, 0x3FD54FDF00000000
  %5639 = bitcast float %5638 to i32
  %5640 = sub nsw i32 2129859010, %5639
  %5641 = bitcast i32 %5640 to float
  %5642 = fmul fast float %5641, %5637
  %5643 = fmul fast float %5642, %5642
  %5644 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5629)  ; FMax(a,b)
  %5645 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5636)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5643)  ; FMax(a,b)
  %5647 = fsub fast float 1.000000e+00, %5532
  %5648 = fadd fast float %5647, %5548
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fsub fast float 1.000000e+00, %5512
  %5651 = fmul fast float %5590, %5650
  %5652 = fmul fast float %5593, %5593
  %5653 = fmul fast float %5652, %5651
  %5654 = fmul fast float %5653, %5595
  %5655 = fmul fast float %5650, 0xBFE99999A0000000
  %5656 = fmul fast float %5655, %5541
  %5657 = fmul fast float %5656, %5552
  %5658 = fadd fast float %5657, 1.000000e+00
  %5659 = fadd fast float %5095, -1.000000e+00
  %5660 = fmul fast float %5658, %5659
  %5661 = fadd fast float %5660, 1.000000e+00
  %5662 = fsub fast float %5644, %5092
  %5663 = fsub fast float %5645, %5093
  %5664 = fsub fast float %5646, %5094
  %5665 = fmul fast float %5654, %5662
  %5666 = fmul fast float %5654, %5663
  %5667 = fmul fast float %5654, %5664
  %5668 = fadd fast float %5665, %5092
  %5669 = fadd fast float %5666, %5093
  %5670 = fadd fast float %5667, %5094
  %5671 = fsub fast float %109, %5050
  %5672 = fsub fast float %110, %5051
  %5673 = fsub fast float %111, %5052
  %5674 = fmul fast float %5654, %5671
  %5675 = fmul fast float %5654, %5672
  %5676 = fmul fast float %5654, %5673
  %5677 = fadd fast float %5674, %5050
  %5678 = fadd fast float %5675, %5051
  %5679 = fadd fast float %5676, %5052
  %5680 = fmul fast float %5654, %5649
  %5681 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = fmul fast float %5680, %5682
  %5684 = fadd fast float %5683, %5681
  %5685 = fsub fast float 1.000000e+00, %5068
  %5686 = fmul fast float %5654, %5685
  %5687 = fadd fast float %5686, %5068
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %5677, float %5678, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 25, float %5688)  ; Rsqrt(value)
  %5690 = fmul fast float %5677, %5689
  %5691 = fmul fast float %5678, %5689
  %5692 = fmul fast float %5679, %5689
  br label %5693

; <label>:5693                                    ; preds = %5525, %5518
  %5694 = phi float [ %5524, %5518 ], [ %5531, %5525 ]
  %5695 = phi float [ %5523, %5518 ], [ %5529, %5525 ]
  %5696 = phi float [ %5522, %5518 ], [ %5527, %5525 ]
  %5697 = phi float [ %5521, %5518 ], [ %5530, %5525 ]
  %5698 = phi float [ %5520, %5518 ], [ %5528, %5525 ]
  %5699 = phi float [ %5519, %5518 ], [ %5526, %5525 ]
  %5700 = phi float [ %5132, %5518 ], [ %5577, %5525 ]
  %5701 = phi float [ %5133, %5518 ], [ %5578, %5525 ]
  %5702 = phi float [ %5134, %5518 ], [ %5579, %5525 ]
  %5703 = phi float [ %5092, %5518 ], [ %5668, %5525 ]
  %5704 = phi float [ %5093, %5518 ], [ %5669, %5525 ]
  %5705 = phi float [ %5094, %5518 ], [ %5670, %5525 ]
  %5706 = phi float [ %5050, %5518 ], [ %5690, %5525 ]
  %5707 = phi float [ %5051, %5518 ], [ %5691, %5525 ]
  %5708 = phi float [ %5052, %5518 ], [ %5692, %5525 ]
  %5709 = phi float [ %5095, %5518 ], [ %5684, %5525 ]
  %5710 = phi float [ %5068, %5518 ], [ %5687, %5525 ]
  %5711 = fsub fast float -0.000000e+00, %159
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 2
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5715 = fmul fast float %127, %5713
  %5716 = fmul fast float %129, %5714
  %5717 = fsub fast float 1.000000e+00, %5715
  %5718 = fsub fast float 1.000000e+00, %5716
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.CBufRet.f32 %5719, 2
  %5723 = fmul fast float %5717, %5720
  %5724 = fmul fast float %5717, %5721
  %5725 = fmul fast float %5717, %5722
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5730 = fmul fast float %5718, %5727
  %5731 = fmul fast float %5718, %5728
  %5732 = fmul fast float %5718, %5729
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5737 = fadd fast float %5730, %5734
  %5738 = fadd fast float %5737, %5723
  %5739 = fadd fast float %5731, %5735
  %5740 = fadd fast float %5739, %5724
  %5741 = fadd fast float %5732, %5736
  %5742 = fadd fast float %5741, %5725
  %5743 = fmul fast float %5738, %93
  %5744 = fmul fast float %5740, %93
  %5745 = fmul fast float %5742, %93
  %5746 = select i1 %219, float 0.000000e+00, float %5705
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %5696, float %5695, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5698, float %5697, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fmul fast float %5749, 2.000000e+00
  %5751 = fmul fast float %5750, %5706
  %5752 = fmul fast float %5750, %5707
  %5753 = fmul fast float %5750, %5708
  %5754 = fsub fast float %5699, %5751
  %5755 = fsub fast float %5698, %5752
  %5756 = fsub fast float %5697, %5753
  %5757 = call float @dx.op.binary.f32(i32 36, float %5710, float 1.000000e+00)  ; FMin(a,b)
  %5758 = fsub fast float 1.000000e+00, %5710
  %5759 = bitcast float %5758 to i32
  %5760 = sub nsw i32 2129859010, %5759
  %5761 = bitcast i32 %5760 to float
  %5762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5763 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fcmp fast oeq float %5763, 0.000000e+00
  %5765 = fcmp fast oeq float %5762, 0.000000e+00
  %5766 = or i1 %5765, %5764
  br i1 %5766, label %5796, label %5767

; <label>:5767                                    ; preds = %5693
  %5768 = fsub fast float -0.000000e+00, %76
  %5769 = fsub fast float -0.000000e+00, %74
  %5770 = call float @dx.op.unary.f32(i32 24, float %5763)  ; Sqrt(value)
  %5771 = fdiv fast float %5770, %5762
  %5772 = fcmp fast ogt float %5771, 0x3FFB6F8900000000
  %5773 = select i1 %5772, float 0x3FFB6F8900000000, float %5771
  %5774 = fmul fast float %5773, 0x3FE8A23460000000
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5773, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5777 = fmul fast float %5775, %5762
  %5778 = fmul fast float %5776, 0x3FF279A740000000
  %5779 = fadd fast float %5778, -1.000000e+00
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %75, float %5768, float %5769, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 25, float %5780)  ; Rsqrt(value)
  %5782 = fmul fast float %5781, %5768
  %5783 = fmul fast float %5781, %5769
  %5784 = fmul fast float %5781, %75
  %5785 = fmul fast float %5779, %5779
  %5786 = fsub fast float 1.000000e+00, %5785
  %5787 = fmul fast float %5776, 0x40005F8BE0000000
  %5788 = fsub fast float 0x400C5BF8A0000000, %5787
  %5789 = fdiv fast float %5777, %5788
  %5790 = fmul fast float %5789, 0x3FEE31C3C0000000
  %5791 = fmul fast float %5790, %5786
  %5792 = fmul fast float %5776, 0x3FDACB7480000000
  %5793 = fadd fast float %5792, 0xBFD7347680000000
  %5794 = fmul fast float %5793, %5789
  %5795 = fmul fast float %5794, %5786
  br label %5796

; <label>:5796                                    ; preds = %5767, %5693
  %5797 = phi float [ %5782, %5767 ], [ 0.000000e+00, %5693 ]
  %5798 = phi float [ %5783, %5767 ], [ 0.000000e+00, %5693 ]
  %5799 = phi float [ %5784, %5767 ], [ 0.000000e+00, %5693 ]
  %5800 = phi float [ %5791, %5767 ], [ 0.000000e+00, %5693 ]
  %5801 = phi float [ %5795, %5767 ], [ 0.000000e+00, %5693 ]
  %5802 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, %5802
  %5804 = fmul fast float %5803, 0x3FEE471020000000
  %5805 = fadd fast float %5804, 0xBFD42F6020000000
  %5806 = fmul fast float %5762, 0x3FD20DD760000000
  %5807 = fmul fast float %5805, %5801
  %5808 = fmul fast float %5800, 0x3FDF454380000000
  %5809 = fmul fast float %5808, %5802
  %5810 = fadd fast float %5809, %5806
  %5811 = fadd fast float %5810, %5807
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fmul fast float %5812, 0x3FDF454380000000
  %5814 = fmul fast float %5812, %5812
  %5815 = fmul fast float %5814, 0x3FEE471020000000
  %5816 = fadd fast float %5815, 0xBFD42F6020000000
  %5817 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5800, float %5801, float 0x3FD20DD760000000, float %5813, float %5816)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5819 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = fcmp fast oeq float %5819, 0.000000e+00
  %5821 = fcmp fast oeq float %5818, 0.000000e+00
  %5822 = or i1 %5821, %5820
  br i1 %5822, label %5852, label %5823

; <label>:5823                                    ; preds = %5796
  %5824 = fsub fast float -0.000000e+00, %72
  %5825 = fsub fast float -0.000000e+00, %70
  %5826 = call float @dx.op.unary.f32(i32 24, float %5819)  ; Sqrt(value)
  %5827 = fdiv fast float %5826, %5818
  %5828 = fcmp fast ogt float %5827, 0x3FFB6F8900000000
  %5829 = select i1 %5828, float 0x3FFB6F8900000000, float %5827
  %5830 = fmul fast float %5829, 0x3FE8A23460000000
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5829, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5833 = fmul fast float %5831, %5818
  %5834 = fmul fast float %5832, 0x3FF279A740000000
  %5835 = fadd fast float %5834, -1.000000e+00
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %71, float %5824, float %5825, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = call float @dx.op.unary.f32(i32 25, float %5836)  ; Rsqrt(value)
  %5838 = fmul fast float %5837, %5824
  %5839 = fmul fast float %5837, %5825
  %5840 = fmul fast float %5837, %71
  %5841 = fmul fast float %5835, %5835
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = fmul fast float %5832, 0x40005F8BE0000000
  %5844 = fsub fast float 0x400C5BF8A0000000, %5843
  %5845 = fdiv fast float %5833, %5844
  %5846 = fmul fast float %5845, 0x3FEE31C3C0000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fmul fast float %5832, 0x3FDACB7480000000
  %5849 = fadd fast float %5848, 0xBFD7347680000000
  %5850 = fmul fast float %5849, %5845
  %5851 = fmul fast float %5850, %5842
  br label %5852

; <label>:5852                                    ; preds = %5823, %5796
  %5853 = phi float [ %5838, %5823 ], [ 0.000000e+00, %5796 ]
  %5854 = phi float [ %5839, %5823 ], [ 0.000000e+00, %5796 ]
  %5855 = phi float [ %5840, %5823 ], [ 0.000000e+00, %5796 ]
  %5856 = phi float [ %5847, %5823 ], [ 0.000000e+00, %5796 ]
  %5857 = phi float [ %5851, %5823 ], [ 0.000000e+00, %5796 ]
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fmul fast float %5858, %5858
  %5860 = fmul fast float %5859, 0x3FEE471020000000
  %5861 = fadd fast float %5860, 0xBFD42F6020000000
  %5862 = fmul fast float %5818, 0x3FD20DD760000000
  %5863 = fmul fast float %5861, %5857
  %5864 = fmul fast float %5856, 0x3FDF454380000000
  %5865 = fmul fast float %5864, %5858
  %5866 = fadd fast float %5865, %5862
  %5867 = fadd fast float %5866, %5863
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fmul fast float %5868, 0x3FDF454380000000
  %5870 = fmul fast float %5868, %5868
  %5871 = fmul fast float %5870, 0x3FEE471020000000
  %5872 = fadd fast float %5871, 0xBFD42F6020000000
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5856, float %5857, float 0x3FD20DD760000000, float %5869, float %5872)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5875 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = fcmp fast oeq float %5875, 0.000000e+00
  %5877 = fcmp fast oeq float %5874, 0.000000e+00
  %5878 = or i1 %5877, %5876
  br i1 %5878, label %5908, label %5879

; <label>:5879                                    ; preds = %5852
  %5880 = fsub fast float -0.000000e+00, %68
  %5881 = fsub fast float -0.000000e+00, %66
  %5882 = call float @dx.op.unary.f32(i32 24, float %5875)  ; Sqrt(value)
  %5883 = fdiv fast float %5882, %5874
  %5884 = fcmp fast ogt float %5883, 0x3FFB6F8900000000
  %5885 = select i1 %5884, float 0x3FFB6F8900000000, float %5883
  %5886 = fmul fast float %5885, 0x3FE8A23460000000
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = call float @dx.op.binary.f32(i32 35, float %5885, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5889 = fmul fast float %5887, %5874
  %5890 = fmul fast float %5888, 0x3FF279A740000000
  %5891 = fadd fast float %5890, -1.000000e+00
  %5892 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %67, float %5880, float %5881, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = call float @dx.op.unary.f32(i32 25, float %5892)  ; Rsqrt(value)
  %5894 = fmul fast float %5893, %5880
  %5895 = fmul fast float %5893, %5881
  %5896 = fmul fast float %5893, %67
  %5897 = fmul fast float %5891, %5891
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = fmul fast float %5888, 0x40005F8BE0000000
  %5900 = fsub fast float 0x400C5BF8A0000000, %5899
  %5901 = fdiv fast float %5889, %5900
  %5902 = fmul fast float %5901, 0x3FEE31C3C0000000
  %5903 = fmul fast float %5902, %5898
  %5904 = fmul fast float %5888, 0x3FDACB7480000000
  %5905 = fadd fast float %5904, 0xBFD7347680000000
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %5906, %5898
  br label %5908

; <label>:5908                                    ; preds = %5879, %5852
  %5909 = phi float [ %5894, %5879 ], [ 0.000000e+00, %5852 ]
  %5910 = phi float [ %5895, %5879 ], [ 0.000000e+00, %5852 ]
  %5911 = phi float [ %5896, %5879 ], [ 0.000000e+00, %5852 ]
  %5912 = phi float [ %5903, %5879 ], [ 0.000000e+00, %5852 ]
  %5913 = phi float [ %5907, %5879 ], [ 0.000000e+00, %5852 ]
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fmul fast float %5914, %5914
  %5916 = fmul fast float %5915, 0x3FEE471020000000
  %5917 = fadd fast float %5916, 0xBFD42F6020000000
  %5918 = fmul fast float %5874, 0x3FD20DD760000000
  %5919 = fmul fast float %5917, %5913
  %5920 = fmul fast float %5912, 0x3FDF454380000000
  %5921 = fmul fast float %5920, %5914
  %5922 = fadd fast float %5921, %5918
  %5923 = fadd fast float %5922, %5919
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = fmul fast float %5924, 0x3FDF454380000000
  %5926 = fmul fast float %5924, %5924
  %5927 = fmul fast float %5926, 0x3FEE471020000000
  %5928 = fadd fast float %5927, 0xBFD42F6020000000
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5912, float %5913, float 0x3FD20DD760000000, float %5925, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5811, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %5867, float 0.000000e+00)  ; FMax(a,b)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5923, float 0.000000e+00)  ; FMax(a,b)
  %5933 = call float @dx.op.binary.f32(i32 35, float %5817, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5873, float 0.000000e+00)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = call float @dx.op.binary.f32(i32 36, float %5700, float %5937)  ; FMin(a,b)
  %5939 = fsub fast float 1.000000e+00, %5757
  %5940 = fmul fast float %5938, %5939
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = bitcast float %5941 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = call float @dx.op.binary.f32(i32 36, float %5701, float %5937)  ; FMin(a,b)
  %5946 = fmul fast float %5945, %5939
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = call float @dx.op.binary.f32(i32 36, float %5702, float %5937)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5939
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = fmul fast float %5930, %5757
  %5958 = fmul fast float %5957, %5944
  %5959 = fmul fast float %5931, %5757
  %5960 = fmul fast float %5959, %5950
  %5961 = fmul fast float %5932, %5757
  %5962 = fmul fast float %5961, %5956
  %5963 = call float @dx.op.binary.f32(i32 36, float %5703, float %5937)  ; FMin(a,b)
  %5964 = fmul fast float %5963, %5939
  %5965 = fsub fast float 1.000000e+00, %5964
  %5966 = bitcast float %5965 to i32
  %5967 = sub nsw i32 2129859010, %5966
  %5968 = bitcast i32 %5967 to float
  %5969 = call float @dx.op.binary.f32(i32 36, float %5704, float %5937)  ; FMin(a,b)
  %5970 = fmul fast float %5969, %5939
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = bitcast float %5971 to i32
  %5973 = sub nsw i32 2129859010, %5972
  %5974 = bitcast i32 %5973 to float
  %5975 = call float @dx.op.binary.f32(i32 36, float %5746, float %5937)  ; FMin(a,b)
  %5976 = fmul fast float %5975, %5939
  %5977 = fsub fast float 1.000000e+00, %5976
  %5978 = bitcast float %5977 to i32
  %5979 = sub nsw i32 2129859010, %5978
  %5980 = bitcast i32 %5979 to float
  %5981 = fmul fast float %5933, %5757
  %5982 = fmul fast float %5981, %5968
  %5983 = fmul fast float %5934, %5757
  %5984 = fmul fast float %5983, %5974
  %5985 = fmul fast float %5935, %5757
  %5986 = fmul fast float %5985, %5980
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5958, float %5960, float %5962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = select i1 %219, float 0.000000e+00, float %5958
  %5989 = select i1 %219, float %5987, float %5960
  %5990 = select i1 %219, float 0.000000e+00, float %5962
  %5991 = call float @dx.op.dot3.f32(i32 55, float %5982, float %5984, float %5986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = select i1 %219, float 0.000000e+00, float %5982
  %5993 = select i1 %219, float %5991, float %5984
  %5994 = select i1 %219, float 0.000000e+00, float %5986
  %5995 = fmul fast float %4423, %4423
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5748, 9.843750e-01
  %5998 = fmul fast float %5709, 9.843750e-01
  %5999 = fadd fast float %5997, 7.812500e-03
  %6000 = fadd fast float %5998, 7.812500e-03
  %6001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %5999, float %6000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.ResRet.f32 %6001, 3
  %6006 = fsub fast float 1.000000e+00, %5996
  %6007 = fsub fast float %6004, %6002
  %6008 = fsub fast float %6005, %6003
  %6009 = fmul fast float %6007, %6006
  %6010 = fmul fast float %6008, %6006
  %6011 = fadd fast float %6009, %6002
  %6012 = fadd fast float %6010, %6003
  %6013 = fmul fast float %6011, %5703
  %6014 = fmul fast float %6011, %5704
  %6015 = fmul fast float %6011, %5746
  %6016 = fadd fast float %6013, %6012
  %6017 = fadd fast float %6014, %6012
  %6018 = fadd fast float %6015, %6012
  %6019 = fcmp fast ogt float %5069, 0.000000e+00
  br i1 %6019, label %6020, label %6046

; <label>:6020                                    ; preds = %5908
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %5748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fadd fast float %6024, -5.000000e-01
  %6028 = fsub fast float 1.000000e+00, %5703
  %6029 = fsub fast float 1.000000e+00, %5704
  %6030 = fsub fast float 1.000000e+00, %5746
  %6031 = fmul fast float %5703, 4.000000e+00
  %6032 = fmul fast float %6031, %6028
  %6033 = fmul fast float %6032, %6025
  %6034 = fmul fast float %5704, 4.000000e+00
  %6035 = fmul fast float %6034, %6029
  %6036 = fmul fast float %6035, %6026
  %6037 = fmul fast float %5746, 4.000000e+00
  %6038 = fmul fast float %6037, %6030
  %6039 = fmul fast float %6038, %6027
  %6040 = fadd fast float %6033, %6016
  %6041 = fadd fast float %6036, %6017
  %6042 = fadd fast float %6039, %6018
  %6043 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  br label %6046

; <label>:6046                                    ; preds = %6020, %5908
  %6047 = phi float [ %6043, %6020 ], [ %6016, %5908 ]
  %6048 = phi float [ %6044, %6020 ], [ %6017, %5908 ]
  %6049 = phi float [ %6045, %6020 ], [ %6018, %5908 ]
  %6050 = call float @dx.op.binary.f32(i32 35, float %6048, float %6049)  ; FMax(a,b)
  %6051 = call float @dx.op.binary.f32(i32 35, float %6047, float %6050)  ; FMax(a,b)
  %6052 = fsub fast float 1.000000e+00, %6051
  %6053 = fmul fast float %6052, %5988
  %6054 = fmul fast float %6052, %5989
  %6055 = fmul fast float %6052, %5990
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5701, float %5702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = fcmp fast ogt float %6056, 0x3E7FF19E20000000
  %6058 = fdiv fast float 1.000000e+00, %6056
  %6059 = select i1 %6057, float %6058, float 0.000000e+00
  %6060 = fmul fast float %6059, %5700
  %6061 = fmul fast float %6059, %5701
  %6062 = fmul fast float %6059, %5702
  %6063 = fadd fast float %6060, -1.000000e+00
  %6064 = fadd fast float %6061, -1.000000e+00
  %6065 = fadd fast float %6062, -1.000000e+00
  %6066 = fmul fast float %6063, 5.000000e-01
  %6067 = fmul fast float %6064, 5.000000e-01
  %6068 = fmul fast float %6065, 5.000000e-01
  %6069 = fadd fast float %6066, 1.000000e+00
  %6070 = fadd fast float %6067, 1.000000e+00
  %6071 = fadd fast float %6068, 1.000000e+00
  %6072 = call float @dx.op.binary.f32(i32 35, float %5748, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6073 = fdiv fast float %4423, %6072
  %6074 = fcmp fast olt float %5118, 1.270000e+02
  %6075 = fcmp fast olt float %5119, 1.270000e+02
  %6076 = fcmp fast olt float %5120, 1.270000e+02
  %6077 = fmul fast float %5118, 0xBFF7154760000000
  %6078 = fmul fast float %6077, %6073
  %6079 = fmul fast float %5119, 0xBFF7154760000000
  %6080 = fmul fast float %6079, %6073
  %6081 = fmul fast float %5120, 0xBFF7154760000000
  %6082 = fmul fast float %6081, %6073
  %6083 = call float @dx.op.unary.f32(i32 21, float %6078)  ; Exp(value)
  %6084 = call float @dx.op.unary.f32(i32 21, float %6080)  ; Exp(value)
  %6085 = call float @dx.op.unary.f32(i32 21, float %6082)  ; Exp(value)
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6088 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6089 = select i1 %6074, float %6086, float 0.000000e+00
  %6090 = select i1 %6075, float %6087, float 0.000000e+00
  %6091 = select i1 %6076, float %6088, float 0.000000e+00
  %6092 = fmul fast float %6089, %6052
  %6093 = fmul fast float %6090, %6052
  %6094 = fmul fast float %6091, %6052
  %6095 = fadd fast float %6092, -1.000000e+00
  %6096 = fadd fast float %6093, -1.000000e+00
  %6097 = fadd fast float %6094, -1.000000e+00
  %6098 = fmul fast float %6095, %5066
  %6099 = fmul fast float %6096, %5066
  %6100 = fmul fast float %6097, %5066
  %6101 = fadd fast float %6098, 1.000000e+00
  %6102 = fadd fast float %6099, 1.000000e+00
  %6103 = fadd fast float %6100, 1.000000e+00
  %6104 = fmul fast float %5704, 0x401CF23780000000
  %6105 = fadd fast float %6104, 0x3FF32641C0000000
  %6106 = fdiv fast float 1.000000e+00, %6105
  %6107 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5695, float %5694, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = fmul fast float %6106, %6106
  %6109 = fmul fast float %6107, %6107
  %6110 = fsub fast float 1.000000e+00, %6109
  %6111 = fmul fast float %6108, %6110
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = fcmp fast oge float %6112, 0.000000e+00
  %6114 = fmul fast float %6106, %5696
  %6115 = fmul fast float %6106, %5695
  %6116 = fmul fast float %6106, %5694
  %6117 = call float @dx.op.unary.f32(i32 24, float %6112)  ; Sqrt(value)
  %6118 = fmul fast float %6107, %6106
  %6119 = fadd fast float %6118, %6117
  %6120 = fmul fast float %6119, %5706
  %6121 = fmul fast float %6119, %5707
  %6122 = fmul fast float %6119, %5708
  %6123 = fsub fast float %6114, %6120
  %6124 = fsub fast float %6115, %6121
  %6125 = fsub fast float %6116, %6122
  %6126 = select i1 %6113, float %6123, float 0.000000e+00
  %6127 = select i1 %6113, float %6124, float 0.000000e+00
  %6128 = select i1 %6113, float %6125, float 0.000000e+00
  %6129 = fmul fast float %6126, %4423
  %6130 = fmul fast float %6127, %4423
  %6131 = fmul fast float %6128, %4423
  %6132 = fadd fast float %6129, %5743
  %6133 = fadd fast float %6130, %5744
  %6134 = fadd fast float %6131, %5745
  %6135 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = fsub fast float 1.000000e+00, %5709
  %6137 = fmul fast float %6136, %5066
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %5704, 0x4012D0A400000000
  %6142 = fadd fast float %6141, 0x3FDB6377A0000000
  %6143 = fmul fast float %6140, %6142
  %6144 = fadd fast float %6143, %6135
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6047, %5992
  %6147 = fmul fast float %6048, %5993
  %6148 = fmul fast float %6049, %5994
  %6149 = fsub fast float 1.000000e+00, %5748
  %6150 = bitcast float %6149 to i32
  %6151 = sitofp i32 %6150 to float
  %6152 = fmul fast float %6151, 5.000000e+00
  %6153 = fadd fast float %6152, 0xC1EFBF8940000000
  %6154 = fptosi float %6153 to i32
  %6155 = bitcast i32 %6154 to float
  %6156 = fmul fast float %6155, %5070
  %6157 = fmul fast float %5988, %6156
  %6158 = fmul fast float %6157, %6052
  %6159 = fmul fast float %6158, %6069
  %6160 = fmul fast float %5989, %6156
  %6161 = fmul fast float %6160, %6052
  %6162 = fmul fast float %6161, %6070
  %6163 = fmul fast float %5990, %6156
  %6164 = fmul fast float %6163, %6052
  %6165 = fmul fast float %6164, %6071
  %6166 = fmul fast float %6053, %5066
  %6167 = fmul fast float %6054, %5066
  %6168 = fmul fast float %6055, %5066
  %6169 = fsub fast float 1.000000e+00, %6145
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6172 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6173 = extractvalue %dx.types.CBufRet.f32 %6170, 2
  %6174 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = extractvalue %dx.types.CBufRet.f32 %6175, 3
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6184 = extractvalue %dx.types.CBufRet.f32 %6180, 3
  %6185 = fmul fast float %6132, %6171
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6133, float %6172, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6134, float %6173, float %6186)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6174
  %6189 = fmul fast float %6132, %6176
  %6190 = call float @dx.op.tertiary.f32(i32 46, float %6133, float %6177, float %6189)  ; FMad(a,b,c)
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6134, float %6178, float %6190)  ; FMad(a,b,c)
  %6192 = fadd fast float %6191, %6179
  %6193 = fmul fast float %6132, %6181
  %6194 = call float @dx.op.tertiary.f32(i32 46, float %6133, float %6182, float %6193)  ; FMad(a,b,c)
  %6195 = call float @dx.op.tertiary.f32(i32 46, float %6134, float %6183, float %6194)  ; FMad(a,b,c)
  %6196 = fadd fast float %6195, %6184
  %6197 = fdiv fast float %6188, %6196
  %6198 = fdiv fast float %6192, %6196
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6202 = fmul fast float %6200, %6197
  %6203 = fmul fast float %6201, %6198
  %6204 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6206 = fadd fast float %6202, %6204
  %6207 = fadd fast float %6203, %6205
  %6208 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6209 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = fmul fast float %6211, %6208
  %6214 = fmul fast float %6212, %6209
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6218 = fsub fast float %6216, %6217
  %6219 = fmul fast float %6218, %6169
  %6220 = fadd fast float %6219, %6217
  %6221 = fmul fast float %232, 2.000000e+00
  %6222 = fmul fast float %233, 2.000000e+00
  %6223 = fadd fast float %6221, -1.000000e+00
  %6224 = fadd fast float %6222, -1.000000e+00
  %6225 = fmul fast float %6220, %6223
  %6226 = fmul fast float %6220, %6224
  %6227 = fadd fast float %6225, %6213
  %6228 = fadd fast float %6226, %6214
  %6229 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6230 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6231 = fmul fast float %6227, %6229
  %6232 = fmul fast float %6228, %6230
  %6233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6231, float %6232, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = fcmp fast ogt float %6234, -1.000000e+00
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6238 = select i1 %6235, float %6237, float 1.000000e+00
  %6239 = fadd fast float %6234, 1.000000e+00
  %6240 = fmul fast float %6238, %6239
  %6241 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6242 = fsub fast float %6241, %6196
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6245 = fmul fast float %6244, %6241
  %6246 = fdiv fast float 1.600000e+02, %6245
  %6247 = fmul fast float %6145, %6145
  %6248 = fmul fast float %6247, 0xBFB5B17960000000
  %6249 = fmul fast float %6248, %6242
  %6250 = fmul fast float %6249, %6246
  %6251 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6252 = fmul fast float %6251, 0x3FF04B2960000000
  %6253 = fsub fast float 0x3FF04B2960000000, %6252
  %6254 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  %6255 = fmul fast float %6254, 4.000000e+00
  %6256 = fadd fast float %232, -5.000000e-01
  %6257 = fadd fast float %233, -5.000000e-01
  %6258 = fmul fast float %6254, 0x3FBEB851E0000000
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = fmul fast float %6259, %6256
  %6261 = fmul fast float %6259, %6257
  %6262 = fadd fast float %6260, %6206
  %6263 = fadd fast float %6261, %6207
  %6264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.i32 %6264, 0
  %6266 = icmp eq i32 %6265, 0
  br i1 %6266, label %6272, label %6267, !dx.controlflow.hints !94

; <label>:6267                                    ; preds = %6046
  %6268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6262, float %6263, float undef, float undef, i32 0, i32 0, i32 undef, float %6255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  br label %6277

; <label>:6272                                    ; preds = %6046
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6262, float %6263, float undef, float undef, i32 0, i32 0, i32 undef, float %6255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  br label %6277

; <label>:6277                                    ; preds = %6272, %6267
  %6278 = phi float [ %6269, %6267 ], [ %6274, %6272 ]
  %6279 = phi float [ %6270, %6267 ], [ %6275, %6272 ]
  %6280 = phi float [ %6271, %6267 ], [ %6276, %6272 ]
  %6281 = select i1 %219, float 0.000000e+00, float %6279
  %6282 = select i1 %219, float 0.000000e+00, float %6280
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6285 = fmul fast float %6278, %6101
  %6286 = fmul fast float %6285, %6284
  %6287 = fmul fast float %6281, %6102
  %6288 = fmul fast float %6287, %6284
  %6289 = fmul fast float %6282, %6103
  %6290 = fmul fast float %6289, %6284
  %6291 = fadd fast float %6146, %5056
  %6292 = fadd fast float %6291, %6159
  %6293 = fadd fast float %6292, %6286
  %6294 = fmul fast float %6293, %5066
  %6295 = fadd fast float %6147, %5057
  %6296 = fadd fast float %6295, %6162
  %6297 = fadd fast float %6296, %6288
  %6298 = fmul fast float %6297, %5066
  %6299 = fadd fast float %6148, %5058
  %6300 = fadd fast float %6299, %6165
  %6301 = fadd fast float %6300, %6290
  %6302 = fmul fast float %6301, %5066
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 3
  %6305 = fcmp fast oeq float %6304, 0.000000e+00
  br i1 %6305, label %7510, label %6306

; <label>:6306                                    ; preds = %6277
  %6307 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6308 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6309 = extractvalue %dx.types.CBufRet.f32 %6303, 2
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6311, float %6312, float %6313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = select i1 %219, float %6315, float %6311
  %6319 = select i1 %219, float %6317, float %6312
  %6320 = select i1 %219, float %6316, float %6313
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6323 = fmul fast float %6322, %109
  %6324 = fmul fast float %6322, %110
  %6325 = fmul fast float %6322, %111
  %6326 = fadd fast float %6323, %157
  %6327 = fadd fast float %6324, %158
  %6328 = fadd fast float %6325, %159
  %6329 = fcmp fast olt float %6304, 0.000000e+00
  br i1 %6329, label %6954, label %6330

; <label>:6330                                    ; preds = %6306
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6340 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6345 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6346 = fmul fast float %6332, %6326
  %6347 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6333, float %6346)  ; FMad(a,b,c)
  %6348 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6334, float %6347)  ; FMad(a,b,c)
  %6349 = fadd fast float %6348, %6335
  %6350 = fmul fast float %6337, %6326
  %6351 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6338, float %6350)  ; FMad(a,b,c)
  %6352 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6339, float %6351)  ; FMad(a,b,c)
  %6353 = fadd fast float %6352, %6340
  %6354 = fmul fast float %6342, %6326
  %6355 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6343, float %6354)  ; FMad(a,b,c)
  %6356 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6344, float %6355)  ; FMad(a,b,c)
  %6357 = fadd fast float %6356, %6345
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6362 = fmul fast float %6361, %6349
  %6363 = fmul fast float %6361, %6353
  %6364 = fadd fast float %6362, %6359
  %6365 = fadd fast float %6363, %6360
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6370 = fmul fast float %6369, %6349
  %6371 = fmul fast float %6369, %6353
  %6372 = fadd fast float %6370, %6367
  %6373 = fadd fast float %6371, %6368
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6376 = fsub fast float %6375, %6357
  %6377 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6378 = fmul fast float %6376, %6377
  %6379 = fsub fast float 1.000000e+00, %6378
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6384 = fadd fast float %6383, %6381
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  br i1 %6385, label %6386, label %6410

; <label>:6386                                    ; preds = %6330
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = fsub fast float %6372, %6388
  %6391 = fsub fast float %6373, %6389
  %6392 = fcmp fast olt float %6390, 0.000000e+00
  %6393 = fcmp fast olt float %6391, 0.000000e+00
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = select i1 %6392, float %6395, float %6397
  %6400 = select i1 %6393, float %6396, float %6398
  %6401 = fmul fast float %6399, %6390
  %6402 = fmul fast float %6400, %6391
  %6403 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6404 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6406 = call float @dx.op.binary.f32(i32 35, float %6403, float %6404)  ; FMax(a,b)
  %6407 = fsub fast float %6405, %6406
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = fmul fast float %6408, %6380
  br label %6410

; <label>:6410                                    ; preds = %6386, %6330
  %6411 = phi float [ %6409, %6386 ], [ 0.000000e+00, %6330 ]
  %6412 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6414 = fadd fast float %6413, %6412
  %6415 = fcmp fast ogt float %6414, 0.000000e+00
  %6416 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  br i1 %6415, label %6417, label %6440

; <label>:6417                                    ; preds = %6410
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = fsub fast float %6364, %6419
  %6422 = fsub fast float %6365, %6420
  %6423 = fcmp fast olt float %6421, 0.000000e+00
  %6424 = fcmp fast olt float %6422, 0.000000e+00
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6430 = select i1 %6423, float %6426, float %6428
  %6431 = select i1 %6424, float %6427, float %6429
  %6432 = fmul fast float %6430, %6421
  %6433 = fmul fast float %6431, %6422
  %6434 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6435 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6436 = call float @dx.op.binary.f32(i32 35, float %6434, float %6435)  ; FMax(a,b)
  %6437 = fsub fast float %6416, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, %6380
  br label %6440

; <label>:6440                                    ; preds = %6417, %6410
  %6441 = phi float [ %6439, %6417 ], [ 0.000000e+00, %6410 ]
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6448 = fsub fast float %6349, %6446
  %6449 = fsub fast float %6353, %6447
  %6450 = fcmp fast olt float %6448, 0.000000e+00
  %6451 = fcmp fast olt float %6449, 0.000000e+00
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6457 = select i1 %6450, float %6453, float %6455
  %6458 = select i1 %6451, float %6454, float %6456
  %6459 = fmul fast float %6457, %6448
  %6460 = fmul fast float %6458, %6449
  %6461 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6462 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6463 = call float @dx.op.binary.f32(i32 35, float %6461, float %6462)  ; FMax(a,b)
  %6464 = fsub fast float %6416, %6463
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = call float @dx.op.binary.f32(i32 36, float %6465, float %6444)  ; FMin(a,b)
  %6467 = fmul fast float %6466, %6380
  %6468 = fsub fast float %6441, %6467
  %6469 = fsub fast float %6411, %6441
  %6470 = fsub fast float %6469, %6467
  %6471 = call float @dx.op.binary.f32(i32 35, float %6441, float %6411)  ; FMax(a,b)
  %6472 = call float @dx.op.binary.f32(i32 35, float %6467, float %6471)  ; FMax(a,b)
  %6473 = fcmp fast olt float %6472, 1.000000e+00
  br i1 %6473, label %6474, label %6872, !dx.controlflow.hints !95

; <label>:6474                                    ; preds = %6440
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = fcmp fast une float %6476, 0.000000e+00
  br i1 %6477, label %6478, label %6872, !dx.controlflow.hints !96

; <label>:6478                                    ; preds = %6474
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = fmul fast float %6480, %6326
  %6495 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6481, float %6494)  ; FMad(a,b,c)
  %6496 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6482, float %6495)  ; FMad(a,b,c)
  %6497 = fadd fast float %6496, %6483
  %6498 = fmul fast float %6485, %6326
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6486, float %6498)  ; FMad(a,b,c)
  %6500 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6487, float %6499)  ; FMad(a,b,c)
  %6501 = fadd fast float %6500, %6488
  %6502 = fmul fast float %6490, %6326
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6491, float %6502)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6492, float %6503)  ; FMad(a,b,c)
  %6505 = fadd fast float %6504, %6493
  %6506 = fcmp fast oge float %6497, 1.000000e+00
  %6507 = fcmp fast oge float %6501, 1.000000e+00
  %6508 = or i1 %6506, %6507
  %6509 = fcmp fast olt float %6497, 0.000000e+00
  %6510 = fcmp fast olt float %6501, 0.000000e+00
  %6511 = or i1 %6509, %6510
  %6512 = or i1 %6508, %6511
  br i1 %6512, label %6872, label %6513, !dx.controlflow.hints !97

; <label>:6513                                    ; preds = %6478
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.i32 %6518, 2
  %6520 = uitofp i32 %6519 to float
  %6521 = extractvalue %dx.types.CBufRet.i32 %6518, 3
  %6522 = uitofp i32 %6521 to float
  %6523 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6524 = fmul fast float %6523, 2.000000e+00
  %6525 = fsub fast float %6497, %6515
  %6526 = fsub fast float %6501, %6516
  %6527 = fmul fast float %6524, %6525
  %6528 = fmul fast float %6524, %6526
  %6529 = fdiv fast float 1.000000e+00, %6309
  %6530 = fmul fast float %6528, %6529
  %6531 = call float @dx.op.unary.f32(i32 6, float %6530)  ; FAbs(value)
  %6532 = fmul fast float %6517, %6328
  %6533 = fmul fast float %6532, %6524
  %6534 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6535 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6536 = call float @dx.op.binary.f32(i32 35, float %6534, float %6531)  ; FMax(a,b)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6535, float %6536)  ; FMax(a,b)
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = call float @dx.op.unary.f32(i32 23, float %6538)  ; Log(value)
  %6540 = call float @dx.op.binary.f32(i32 35, float %6539, float %6520)  ; FMax(a,b)
  %6541 = call float @dx.op.unary.f32(i32 22, float %6540)  ; Frc(value)
  %6542 = fadd fast float %6541, 0xBFEA666660000000
  %6543 = fmul fast float %6542, 8.000000e+00
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = call float @dx.op.unary.f32(i32 27, float %6540)  ; Round_ni(value)
  %6546 = fadd fast float %6545, %6544
  %6547 = call float @dx.op.binary.f32(i32 36, float %6546, float %6522)  ; FMin(a,b)
  %6548 = call float @dx.op.unary.f32(i32 27, float %6547)  ; Round_ni(value)
  %6549 = fsub fast float -0.000000e+00, %6548
  %6550 = call float @dx.op.unary.f32(i32 21, float %6549)  ; Exp(value)
  %6551 = fmul fast float %6550, %6524
  %6552 = fmul fast float %6551, %6497
  %6553 = fmul fast float %6551, %6501
  %6554 = fmul fast float %6552, 2.500000e-01
  %6555 = fmul fast float %6553, 2.500000e-01
  %6556 = fadd fast float %6554, 5.000000e-01
  %6557 = fadd fast float %6555, 5.000000e-01
  %6558 = fsub fast float %6522, %6520
  %6559 = fptoui float %6558 to i32
  %6560 = add i32 %6559, 320
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6560)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = fcmp fast une float %6547, %6522
  %6565 = fsub fast float %6497, %6562
  %6566 = fsub fast float %6501, %6563
  %6567 = call float @dx.op.unary.f32(i32 6, float %6565)  ; FAbs(value)
  %6568 = call float @dx.op.unary.f32(i32 6, float %6566)  ; FAbs(value)
  %6569 = fmul fast float %6567, %6551
  %6570 = fmul fast float %6568, %6551
  %6571 = fcmp fast olt float %6569, 1.000000e+00
  %6572 = fcmp fast olt float %6570, 1.000000e+00
  %6573 = and i1 %6571, %6572
  %6574 = or i1 %6564, %6573
  br i1 %6574, label %6575, label %6872, !dx.controlflow.hints !98

; <label>:6575                                    ; preds = %6513
  %6576 = fmul fast float %6553, 5.000000e-01
  %6577 = fmul fast float %6552, 5.000000e-01
  %6578 = fadd fast float %6576, 5.000000e-01
  %6579 = fadd fast float %6577, 5.000000e-01
  %6580 = sitofp i32 %6519 to float
  %6581 = fsub fast float %6547, %6580
  %6582 = call float @dx.op.unary.f32(i32 27, float %6581)  ; Round_ni(value)
  %6583 = call float @dx.op.unary.f32(i32 22, float %6547)  ; Frc(value)
  %6584 = call float @dx.op.unary.f32(i32 22, float %6579)  ; Frc(value)
  %6585 = call float @dx.op.unary.f32(i32 22, float %6578)  ; Frc(value)
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6584, float %6585, float %6582, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.ResRet.f32 %6586, 3
  %6591 = fcmp fast ogt float %6583, 0.000000e+00
  br i1 %6591, label %6592, label %6613, !dx.controlflow.hints !99

; <label>:6592                                    ; preds = %6575
  %6593 = fadd fast float %6582, 1.000000e+00
  %6594 = call float @dx.op.unary.f32(i32 22, float %6556)  ; Frc(value)
  %6595 = call float @dx.op.unary.f32(i32 22, float %6557)  ; Frc(value)
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6594, float %6595, float %6593, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.f32 %6596, 1
  %6599 = extractvalue %dx.types.ResRet.f32 %6596, 2
  %6600 = extractvalue %dx.types.ResRet.f32 %6596, 3
  %6601 = fsub fast float %6597, %6587
  %6602 = fsub fast float %6598, %6588
  %6603 = fsub fast float %6599, %6589
  %6604 = fsub fast float %6600, %6590
  %6605 = fmul fast float %6601, %6583
  %6606 = fmul fast float %6602, %6583
  %6607 = fmul fast float %6603, %6583
  %6608 = fmul fast float %6604, %6583
  %6609 = fadd fast float %6605, %6587
  %6610 = fadd fast float %6606, %6588
  %6611 = fadd fast float %6607, %6589
  %6612 = fadd fast float %6608, %6590
  br label %6613

; <label>:6613                                    ; preds = %6592, %6575
  %6614 = phi float [ %6609, %6592 ], [ %6587, %6575 ]
  %6615 = phi float [ %6610, %6592 ], [ %6588, %6575 ]
  %6616 = phi float [ %6611, %6592 ], [ %6589, %6575 ]
  %6617 = phi float [ %6612, %6592 ], [ %6590, %6575 ]
  %6618 = fadd fast float %6614, -5.000000e-01
  %6619 = fadd fast float %6616, -5.000000e-01
  %6620 = fmul fast float %6618, 0xBFD5555560000000
  %6621 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6619, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6615, float 0.000000e+00)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6617
  %6624 = fmul fast float %6618, -7.500000e-01
  %6625 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6619, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6615, float 0.000000e+00)  ; FMad(a,b,c)
  %6627 = fadd fast float %6626, %6617
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6635 = fsub fast float %6631, %6621
  %6636 = fsub fast float %6632, %6623
  %6637 = fsub fast float %6633, %6625
  %6638 = fsub fast float %6634, %6627
  %6639 = fmul fast float %6635, %6629
  %6640 = fmul fast float %6636, %6629
  %6641 = fmul fast float %6637, %6629
  %6642 = fmul fast float %6638, %6629
  %6643 = fadd fast float %6639, %6621
  %6644 = fadd fast float %6640, %6623
  %6645 = fadd fast float %6641, %6625
  %6646 = fadd fast float %6642, %6627
  %6647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.i32 %6647, 0
  %6649 = and i32 %6648, 536870911
  %6650 = uitofp i32 %6649 to float
  %6651 = fmul fast float %6650, %6497
  %6652 = fmul fast float %6650, %6501
  %6653 = fptoui float %6651 to i32
  %6654 = fptoui float %6652 to i32
  %6655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.i32 %6655, 0
  %6657 = and i32 %6656, 31
  %6658 = lshr i32 %6653, %6657
  %6659 = lshr i32 %6654, %6657
  %6660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6661 = extractvalue %dx.types.ResRet.i32 %6660, 0
  %6662 = and i32 %6661, 31
  %6663 = shl i32 1, %6662
  %6664 = call i32 @dx.op.binary.i32(i32 40, i32 %6663, i32 4)  ; UMin(a,b)
  %6665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.i32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.i32 %6665, 1
  %6668 = icmp eq i32 %6664, 0
  br i1 %6668, label %6710, label %6669

; <label>:6669                                    ; preds = %6613
  br label %6670

; <label>:6670                                    ; preds = %6698, %6669
  %6671 = phi i32 [ %6701, %6698 ], [ 0, %6669 ]
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = lshr i32 %6673, 16
  %6675 = and i32 %6674, 31
  %6676 = shl i32 %6659, %6675
  %6677 = add i32 %6676, %6658
  %6678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6679 = extractvalue %dx.types.ResRet.i32 %6678, 0
  %6680 = and i32 %6679, 31
  %6681 = shl i32 %6677, %6680
  %6682 = add i32 %6681, %6671
  %6683 = shl i32 %6682, 2
  %6684 = add i32 %6683, 32
  %6685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6684, i32 undef)  ; BufferLoad(srv,index,wot)
  %6686 = extractvalue %dx.types.ResRet.i32 %6685, 0
  %6687 = icmp slt i32 %6686, 0
  %6688 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6671
  %6689 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6671
  %6690 = bitcast float* %6688 to i32*
  %6691 = bitcast float* %6689 to i32*
  br i1 %6687, label %6692, label %6698

; <label>:6692                                    ; preds = %6670
  %6693 = and i32 %6686, 1073741823
  %6694 = add nuw nsw i32 %6693, 20
  %6695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6694, i32 undef)  ; BufferLoad(srv,index,wot)
  %6696 = extractvalue %dx.types.ResRet.i32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.i32 %6695, 1
  br label %6698

; <label>:6698                                    ; preds = %6692, %6670
  %6699 = phi i32 [ %6696, %6692 ], [ %6666, %6670 ]
  %6700 = phi i32 [ %6697, %6692 ], [ %6667, %6670 ]
  store i32 %6699, i32* %6690, align 4
  store i32 %6700, i32* %6691, align 4
  %6701 = add nuw i32 %6671, 1
  %6702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.i32 %6702, 2
  %6704 = icmp eq i32 %6703, 0
  %6705 = icmp ugt i32 %6686, -1073741825
  %6706 = and i1 %6705, %6704
  %6707 = icmp ult i32 %6701, %6664
  %6708 = and i1 %6706, %6707
  br i1 %6708, label %6670, label %6709

; <label>:6709                                    ; preds = %6698
  br label %6710

; <label>:6710                                    ; preds = %6709, %6613
  %6711 = phi i32 [ 0, %6613 ], [ %6701, %6709 ]
  %6712 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6713 = fptoui float %6712 to i32
  %6714 = icmp eq i32 %6713, 0
  br i1 %6714, label %6766, label %6715

; <label>:6715                                    ; preds = %6710
  br label %6716

; <label>:6716                                    ; preds = %6761, %6715
  %6717 = phi i32 [ %6762, %6761 ], [ %6711, %6715 ]
  %6718 = phi i32 [ %6763, %6761 ], [ 0, %6715 ]
  %6719 = lshr i32 %6718, 2
  %6720 = and i32 %6718, 3
  %6721 = add nuw nsw i32 %6719, 83
  %6722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6721)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.i32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.i32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.i32 %6722, 2
  %6726 = extractvalue %dx.types.CBufRet.i32 %6722, 3
  %6727 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6723, i32* %6727, align 4
  %6728 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6724, i32* %6728, align 4
  %6729 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6725, i32* %6729, align 4
  %6730 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6726, i32* %6730, align 4
  %6731 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6720
  %6732 = load i32, i32* %6731, align 4, !tbaa !100, !noalias !104
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = lshr i32 %6734, 16
  %6736 = and i32 %6735, 31
  %6737 = shl i32 %6659, %6736
  %6738 = add i32 %6737, %6658
  %6739 = shl i32 %6738, 2
  %6740 = add i32 %6739, %6732
  %6741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6740, i32 undef)  ; BufferLoad(srv,index,wot)
  %6742 = extractvalue %dx.types.ResRet.i32 %6741, 0
  %6743 = icmp eq i32 %6742, 0
  br i1 %6743, label %6761, label %6744

; <label>:6744                                    ; preds = %6716
  %6745 = icmp slt i32 %6742, 0
  %6746 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6717
  %6747 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6717
  %6748 = bitcast float* %6746 to i32*
  %6749 = bitcast float* %6747 to i32*
  br i1 %6745, label %6750, label %6757

; <label>:6750                                    ; preds = %6744
  %6751 = and i32 %6742, 1073741823
  %6752 = add i32 %6732, 20
  %6753 = add i32 %6752, %6751
  %6754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6753, i32 undef)  ; BufferLoad(srv,index,wot)
  %6755 = extractvalue %dx.types.ResRet.i32 %6754, 0
  %6756 = extractvalue %dx.types.ResRet.i32 %6754, 1
  br label %6757

; <label>:6757                                    ; preds = %6750, %6744
  %6758 = phi i32 [ %6755, %6750 ], [ %6666, %6744 ]
  %6759 = phi i32 [ %6756, %6750 ], [ %6667, %6744 ]
  store i32 %6758, i32* %6748, align 4
  store i32 %6759, i32* %6749, align 4
  %6760 = add i32 %6717, 1
  br label %6761

; <label>:6761                                    ; preds = %6757, %6716
  %6762 = phi i32 [ %6717, %6716 ], [ %6760, %6757 ]
  %6763 = add nuw i32 %6718, 1
  %6764 = icmp eq i32 %6763, %6713
  br i1 %6764, label %6765, label %6716

; <label>:6765                                    ; preds = %6761
  br label %6766

; <label>:6766                                    ; preds = %6765, %6710
  %6767 = phi i32 [ %6711, %6710 ], [ %6762, %6765 ]
  %6768 = icmp eq i32 %6767, 1
  %6769 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6770 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6768, label %6771, label %6774

; <label>:6771                                    ; preds = %6766
  %6772 = load float, float* %6769, align 4
  %6773 = load float, float* %6770, align 4
  br label %6801

; <label>:6774                                    ; preds = %6766
  %6775 = load float, float* %6769, align 4
  %6776 = load float, float* %6770, align 4
  %6777 = fdiv fast float 1.000000e+00, %6776
  %6778 = fsub fast float %6775, %6777
  %6779 = icmp ugt i32 %6767, 1
  br i1 %6779, label %6780, label %6796

; <label>:6780                                    ; preds = %6774
  br label %6781

; <label>:6781                                    ; preds = %6781, %6780
  %6782 = phi float [ %6791, %6781 ], [ %6778, %6780 ]
  %6783 = phi float [ %6792, %6781 ], [ %6775, %6780 ]
  %6784 = phi i32 [ %6793, %6781 ], [ 1, %6780 ]
  %6785 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6784
  %6786 = load float, float* %6785, align 4
  %6787 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6784
  %6788 = load float, float* %6787, align 4
  %6789 = fdiv fast float 1.000000e+00, %6788
  %6790 = fsub fast float %6786, %6789
  %6791 = call float @dx.op.binary.f32(i32 36, float %6782, float %6790)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 35, float %6783, float %6786)  ; FMax(a,b)
  %6793 = add nuw i32 %6784, 1
  %6794 = icmp eq i32 %6793, %6767
  br i1 %6794, label %6795, label %6781

; <label>:6795                                    ; preds = %6781
  br label %6796

; <label>:6796                                    ; preds = %6795, %6774
  %6797 = phi float [ %6778, %6774 ], [ %6791, %6795 ]
  %6798 = phi float [ %6775, %6774 ], [ %6792, %6795 ]
  %6799 = fsub fast float %6798, %6797
  %6800 = fdiv fast float 1.000000e+00, %6799
  br label %6801

; <label>:6801                                    ; preds = %6796, %6771
  %6802 = phi float [ %6772, %6771 ], [ %6798, %6796 ]
  %6803 = phi float [ %6773, %6771 ], [ %6800, %6796 ]
  %6804 = fadd fast float %6505, %6802
  %6805 = fmul fast float %6804, %6803
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = fmul fast float %6806, 2.000000e+00
  %6808 = fsub fast float 1.000000e+00, %6807
  %6809 = fmul fast float %6643, %6643
  %6810 = fsub fast float %6644, %6809
  %6811 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6810)  ; FMax(a,b)
  %6812 = fdiv fast float 1.000000e+00, %6811
  %6813 = fmul fast float %6644, %6643
  %6814 = fsub fast float %6645, %6813
  %6815 = fsub fast float %6808, %6643
  %6816 = fmul fast float %6808, %6808
  %6817 = fsub fast float %6816, %6644
  %6818 = fmul fast float %6812, %6814
  %6819 = fmul fast float %6818, %6815
  %6820 = fsub fast float %6817, %6819
  %6821 = fmul fast float %6644, %6644
  %6822 = fsub fast float %6646, %6821
  %6823 = fmul fast float %6814, %6814
  %6824 = fmul fast float %6823, %6812
  %6825 = fsub fast float %6822, %6824
  %6826 = fdiv fast float %6820, %6825
  %6827 = fmul fast float %6826, %6814
  %6828 = fsub fast float %6815, %6827
  %6829 = fmul fast float %6828, %6812
  %6830 = fmul fast float %6829, %6643
  %6831 = fsub fast float 1.000000e+00, %6830
  %6832 = fmul fast float %6826, %6644
  %6833 = fsub fast float %6831, %6832
  %6834 = fmul fast float %6829, %6829
  %6835 = fmul fast float %6826, 4.000000e+00
  %6836 = fmul fast float %6835, %6833
  %6837 = fsub fast float %6834, %6836
  %6838 = call float @dx.op.unary.f32(i32 24, float %6837)  ; Sqrt(value)
  %6839 = fcmp fast oge float %6829, 0.000000e+00
  %6840 = fsub fast float -0.000000e+00, %6838
  %6841 = select i1 %6839, float %6840, float %6838
  %6842 = fsub fast float %6841, %6829
  %6843 = fdiv fast float %6842, %6826
  %6844 = fdiv fast float %6833, %6842
  %6845 = fmul fast float %6843, 5.000000e-01
  %6846 = fmul fast float %6844, 2.000000e+00
  %6847 = select i1 %6839, float %6845, float %6846
  %6848 = select i1 %6839, float %6846, float %6845
  %6849 = call float @dx.op.binary.f32(i32 35, float %6847, float %6848)  ; FMax(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6847, float %6848)  ; FMin(a,b)
  %6851 = fcmp fast ogt float %6808, %6849
  %6852 = fsub fast float %6808, %6850
  %6853 = fsub fast float %6808, %6849
  %6854 = fsub fast float %6849, %6850
  %6855 = select i1 %6851, float %6853, float %6854
  %6856 = fmul float %6852, %6855
  %6857 = select i1 %6851, float %6850, float %6808
  %6858 = fcmp fast ogt float %6808, %6850
  %6859 = fmul fast float %6857, %6849
  %6860 = fadd fast float %6857, %6849
  %6861 = fmul fast float %6860, %6643
  %6862 = fadd fast float %6859, %6644
  %6863 = fsub fast float %6862, %6861
  %6864 = fdiv fast float %6863, %6856
  %6865 = select i1 %6858, float %6864, float 0.000000e+00
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = select i1 %6851, float %6866, float %6865
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6870 = fmul fast float %6869, %6868
  %6871 = fsub fast float 1.000000e+00, %6870
  br label %6872

; <label>:6872                                    ; preds = %6801, %6513, %6478, %6474, %6440
  %6873 = phi float [ 1.000000e+00, %6440 ], [ %6871, %6801 ], [ 1.000000e+00, %6478 ], [ 1.000000e+00, %6513 ], [ 1.000000e+00, %6474 ]
  %6874 = fcmp fast ogt float %6470, 0.000000e+00
  br i1 %6874, label %6875, label %6881, !dx.controlflow.hints !113

; <label>:6875                                    ; preds = %6872
  %6876 = fadd fast float %6383, %6357
  %6877 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6878 = fadd fast float %6877, 0x3F10000000000000
  %6879 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6372, float %6373, float undef, float undef, i32 0, i32 0, i32 undef, float %6878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6880 = extractvalue %dx.types.ResRet.f32 %6879, 0
  br label %6881

; <label>:6881                                    ; preds = %6875, %6872
  %6882 = phi float [ %6880, %6875 ], [ 1.000000e+00, %6872 ]
  %6883 = fcmp fast ogt float %6468, 0.000000e+00
  br i1 %6883, label %6884, label %6890, !dx.controlflow.hints !114

; <label>:6884                                    ; preds = %6881
  %6885 = fadd fast float %6413, %6357
  %6886 = call float @dx.op.binary.f32(i32 35, float %6885, float 0.000000e+00)  ; FMax(a,b)
  %6887 = fadd fast float %6886, 0x3F10000000000000
  %6888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6364, float %6365, float undef, float undef, i32 0, i32 0, i32 undef, float %6887)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6889 = extractvalue %dx.types.ResRet.f32 %6888, 0
  br label %6890

; <label>:6890                                    ; preds = %6884, %6881
  %6891 = phi float [ %6889, %6884 ], [ 1.000000e+00, %6881 ]
  %6892 = fcmp fast ogt float %6467, 0.000000e+00
  br i1 %6892, label %6893, label %6900, !dx.controlflow.hints !115

; <label>:6893                                    ; preds = %6890
  %6894 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6895 = fadd fast float %6894, %6357
  %6896 = call float @dx.op.binary.f32(i32 35, float %6895, float 0.000000e+00)  ; FMax(a,b)
  %6897 = fadd fast float %6896, 0x3F10000000000000
  %6898 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6349, float %6353, float undef, float undef, i32 0, i32 0, i32 undef, float %6897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  br label %6900

; <label>:6900                                    ; preds = %6893, %6890
  %6901 = phi float [ %6899, %6893 ], [ 1.000000e+00, %6890 ]
  %6902 = fsub fast float %6882, %6873
  %6903 = fmul fast float %6902, %6411
  %6904 = fadd fast float %6903, %6873
  %6905 = fsub fast float %6891, %6904
  %6906 = fmul fast float %6905, %6441
  %6907 = fadd fast float %6906, %6904
  %6908 = fsub fast float %6901, %6907
  %6909 = fmul fast float %6908, %6467
  %6910 = fadd fast float %6909, %6907
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 2
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  br i1 %6913, label %6914, label %6954, !dx.controlflow.hints !116

; <label>:6914                                    ; preds = %6900
  %6915 = fcmp fast ugt float %6912, 0.000000e+00
  br i1 %6915, label %6916, label %6951

; <label>:6916                                    ; preds = %6914
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6924 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6925 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6926 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6927 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6928 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 0
  %6931 = extractvalue %dx.types.CBufRet.f32 %6929, 1
  %6932 = extractvalue %dx.types.CBufRet.f32 %6929, 2
  %6933 = fadd fast float %6930, %6326
  %6934 = fadd fast float %6931, %6327
  %6935 = fadd fast float %6932, %6328
  %6936 = fmul fast float %6933, %6918
  %6937 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6934, float %6936)  ; FMad(a,b,c)
  %6938 = call float @dx.op.tertiary.f32(i32 46, float %6920, float %6935, float %6937)  ; FMad(a,b,c)
  %6939 = fadd fast float %6938, %6921
  %6940 = fmul fast float %6933, %6923
  %6941 = call float @dx.op.tertiary.f32(i32 46, float %6924, float %6934, float %6940)  ; FMad(a,b,c)
  %6942 = call float @dx.op.tertiary.f32(i32 46, float %6925, float %6935, float %6941)  ; FMad(a,b,c)
  %6943 = fadd fast float %6942, %6926
  %6944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6939, float %6943, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = fmul fast float %6945, %6928
  %6947 = fadd fast float %6946, %6927
  %6948 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6949 = fmul fast float %6948, %6912
  %6950 = fsub fast float 1.000000e+00, %6949
  br label %6951

; <label>:6951                                    ; preds = %6916, %6914
  %6952 = phi float [ %6950, %6916 ], [ 1.000000e+00, %6914 ]
  %6953 = fmul fast float %6952, %6910
  br label %6954

; <label>:6954                                    ; preds = %6951, %6900, %6306
  %6955 = phi float [ 1.000000e+00, %6306 ], [ %6953, %6951 ], [ %6910, %6900 ]
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6955)  ; FMin(a,b)
  %6957 = call float @dx.op.binary.f32(i32 36, float %6955, float %6956)  ; FMin(a,b)
  %6958 = fcmp fast ogt float %6957, 0.000000e+00
  br i1 %6958, label %6959, label %7119, !dx.controlflow.hints !117

; <label>:6959                                    ; preds = %6954
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6965, 3
  %6970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6970, 0
  %6972 = extractvalue %dx.types.CBufRet.f32 %6970, 1
  %6973 = extractvalue %dx.types.CBufRet.f32 %6970, 2
  %6974 = extractvalue %dx.types.CBufRet.f32 %6970, 3
  %6975 = fmul fast float %6961, %6326
  %6976 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6962, float %6975)  ; FMad(a,b,c)
  %6977 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6963, float %6976)  ; FMad(a,b,c)
  %6978 = fadd fast float %6977, %6964
  %6979 = fmul fast float %6966, %6326
  %6980 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6967, float %6979)  ; FMad(a,b,c)
  %6981 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6968, float %6980)  ; FMad(a,b,c)
  %6982 = fadd fast float %6981, %6969
  %6983 = fmul fast float %6971, %6326
  %6984 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6972, float %6983)  ; FMad(a,b,c)
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6973, float %6984)  ; FMad(a,b,c)
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 1
  %6989 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6990 = fmul fast float %6989, %6978
  %6991 = fmul fast float %6989, %6982
  %6992 = fadd fast float %6990, %6987
  %6993 = fadd fast float %6991, %6988
  %6994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6994, 0
  %6996 = extractvalue %dx.types.CBufRet.f32 %6994, 1
  %6997 = fsub fast float %6992, %6995
  %6998 = fsub fast float %6993, %6996
  %6999 = fcmp fast olt float %6997, 0.000000e+00
  %7000 = fcmp fast olt float %6998, 0.000000e+00
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7005 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7006 = select i1 %6999, float %7002, float %7004
  %7007 = select i1 %7000, float %7003, float %7005
  %7008 = fmul fast float %7006, %6997
  %7009 = fmul fast float %7007, %6998
  %7010 = call float @dx.op.unary.f32(i32 6, float %7008)  ; FAbs(value)
  %7011 = call float @dx.op.unary.f32(i32 6, float %7009)  ; FAbs(value)
  %7012 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %7013 = call float @dx.op.binary.f32(i32 35, float %7010, float %7011)  ; FMax(a,b)
  %7014 = fsub fast float %7012, %7013
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = fcmp fast ogt float %7015, 0.000000e+00
  br i1 %7016, label %7017, label %7058, !dx.controlflow.hints !118

; <label>:7017                                    ; preds = %6959
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6992, float %6993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7020 = fcmp fast ogt float %7019, 0.000000e+00
  br i1 %7020, label %7021, label %7053

; <label>:7021                                    ; preds = %7017
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6992, float %6993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = extractvalue %dx.types.ResRet.f32 %7022, 3
  %7027 = fsub fast float 1.000000e+00, %6974
  %7028 = fsub fast float %7027, %6985
  %7029 = fmul fast float %7028, 0x400921FB60000000
  %7030 = fadd fast float %7029, 0x3FF921FB60000000
  %7031 = call float @dx.op.unary.f32(i32 13, float %7030)  ; Sin(value)
  %7032 = fadd fast float %7031, -1.000000e+00
  %7033 = fmul fast float %7032, 0x3FD45F3060000000
  %7034 = fmul fast float %7028, 0x401921FB60000000
  %7035 = fadd fast float %7034, 0x400921FB60000000
  %7036 = call float @dx.op.unary.f32(i32 13, float %7035)  ; Sin(value)
  %7037 = fadd fast float %7036, 0x3E7777A5C0000000
  %7038 = fmul fast float %7037, 0x3FC45F3060000000
  %7039 = fmul fast float %7028, 0x4022D97C80000000
  %7040 = fadd fast float %7039, 0x4012D97C80000000
  %7041 = call float @dx.op.unary.f32(i32 13, float %7040)  ; Sin(value)
  %7042 = fadd fast float %7041, 1.000000e+00
  %7043 = fmul fast float %7042, 0x3FBB2995E0000000
  %7044 = fmul fast float %7028, 0x402921FB60000000
  %7045 = fadd fast float %7044, 0x401921FB60000000
  %7046 = call float @dx.op.unary.f32(i32 13, float %7045)  ; Sin(value)
  %7047 = fadd fast float %7046, 0xBE8777A5C0000000
  %7048 = fmul fast float %7047, 0x3FB45F3060000000
  %7049 = call float @dx.op.dot4.f32(i32 56, float %7023, float %7024, float %7025, float %7026, float %7033, float %7038, float %7043, float %7048)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7050 = fmul fast float %7049, 0xBFF7154760000000
  %7051 = call float @dx.op.unary.f32(i32 21, float %7050)  ; Exp(value)
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  br label %7053

; <label>:7053                                    ; preds = %7021, %7017
  %7054 = phi float [ %7052, %7021 ], [ 1.000000e+00, %7017 ]
  %7055 = fadd fast float %7054, -1.000000e+00
  %7056 = fmul fast float %7055, %7015
  %7057 = fadd fast float %7056, 1.000000e+00
  br label %7058

; <label>:7058                                    ; preds = %7053, %6959
  %7059 = phi float [ %7057, %7053 ], [ 1.000000e+00, %6959 ]
  %7060 = fmul fast float %7059, %6955
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7064 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7065 = fadd fast float %7062, %157
  %7066 = fadd fast float %7063, %158
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7069 = fsub fast float -0.000000e+00, %7065
  %7070 = fsub fast float -0.000000e+00, %7066
  %7071 = fsub fast float %5711, %7064
  %7072 = fadd fast float %7071, %7068
  %7073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7069, float %7070, float %7072)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6307, float %6308, float %6309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7075 = fdiv fast float 1.000000e+00, %7074
  %7076 = fmul fast float %7075, %7073
  %7077 = fmul fast float %6307, %7076
  %7078 = fmul fast float %6308, %7076
  %7079 = fadd fast float %7077, %7065
  %7080 = fadd fast float %7078, %7066
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7084 = fsub fast float %7079, %7082
  %7085 = fsub fast float %7080, %7083
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 2
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 3
  %7089 = fmul fast float %7084, %7087
  %7090 = fmul fast float %7085, %7088
  %7091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.i32 %7091, 3
  %7093 = icmp eq i32 %7092, 0
  br i1 %7093, label %7099, label %7094

; <label>:7094                                    ; preds = %7058
  %7095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7089, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7096 = extractvalue %dx.types.ResRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.ResRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.ResRet.f32 %7095, 2
  br label %7104

; <label>:7099                                    ; preds = %7058
  %7100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7089, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.ResRet.f32 %7100, 2
  br label %7104

; <label>:7104                                    ; preds = %7099, %7094
  %7105 = phi float [ %7096, %7094 ], [ %7101, %7099 ]
  %7106 = phi float [ %7097, %7094 ], [ %7102, %7099 ]
  %7107 = phi float [ %7098, %7094 ], [ %7103, %7099 ]
  %7108 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7109 = fmul fast float %7108, %7105
  %7110 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7111 = fsub fast float %7076, %7110
  %7112 = fsub fast float %7111, %7109
  %7113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7112)  ; FMax(a,b)
  %7114 = fmul fast float %7113, %7106
  %7115 = call float @dx.op.binary.f32(i32 36, float %7107, float %7114)  ; FMin(a,b)
  %7116 = fmul fast float %7115, 0xBFF7154760000000
  %7117 = call float @dx.op.unary.f32(i32 21, float %7116)  ; Exp(value)
  %7118 = fmul fast float %7060, %7117
  br label %7119

; <label>:7119                                    ; preds = %7104, %6954
  %7120 = phi float [ %7118, %7104 ], [ %6955, %6954 ]
  %7121 = call float @dx.op.binary.f32(i32 36, float %7120, float %7120)  ; FMin(a,b)
  %7122 = call float @dx.op.binary.f32(i32 36, float %7120, float %7121)  ; FMin(a,b)
  %7123 = fcmp fast ogt float %7122, 0.000000e+00
  br i1 %7123, label %7124, label %7510, !dx.controlflow.hints !119

; <label>:7124                                    ; preds = %7119
  %7125 = fmul fast float %7120, %6318
  %7126 = fmul fast float %7120, %6319
  %7127 = fmul fast float %7120, %6320
  %7128 = fsub fast float %159, %5499
  %7129 = fcmp fast ogt float %7128, 0.000000e+00
  %7130 = fmul fast float %6307, 5.120000e+02
  %7131 = fmul fast float %6308, 5.120000e+02
  %7132 = fmul fast float %6309, 5.120000e+02
  %7133 = fadd fast float %7132, %159
  %7134 = fsub fast float %5499, %7133
  %7135 = fmul fast float %7134, 2.000000e+00
  %7136 = fadd fast float %7135, %7133
  %7137 = select i1 %7129, float %7136, float %7133
  %7138 = fsub fast float %7137, %159
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7138, float %7130, float %7131, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = call float @dx.op.unary.f32(i32 25, float %7139)  ; Rsqrt(value)
  %7141 = fmul fast float %7140, %7130
  %7142 = fmul fast float %7140, %7131
  %7143 = fmul fast float %7140, %7138
  %7144 = fsub fast float %5499, %159
  %7145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7141, float %7142, float %7143)  ; Dot3(ax,ay,az,bx,by,bz)
  %7147 = fdiv fast float 1.000000e+00, %7146
  %7148 = fmul fast float %7147, %7145
  %7149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  %7151 = fcmp fast olt float %7149, 0.000000e+00
  %7152 = zext i1 %7150 to i32
  %7153 = zext i1 %7151 to i32
  %7154 = sub nsw i32 %7152, %7153
  %7155 = sitofp i32 %7154 to float
  %7156 = fsub fast float %7137, %5499
  %7157 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7156, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = fcmp fast ogt float %7157, 0.000000e+00
  %7159 = fcmp fast olt float %7157, 0.000000e+00
  %7160 = zext i1 %7158 to i32
  %7161 = zext i1 %7159 to i32
  %7162 = sub nsw i32 %7160, %7161
  %7163 = sitofp i32 %7162 to float
  %7164 = fcmp fast une float %7155, %7163
  br i1 %7164, label %7165, label %7175

; <label>:7165                                    ; preds = %7124
  %7166 = fmul fast float %7148, %7143
  %7167 = fmul fast float %7148, %7142
  %7168 = fmul fast float %7148, %7141
  %7169 = fmul fast float %7168, %7168
  %7170 = fmul fast float %7167, %7167
  %7171 = fadd fast float %7169, %7170
  %7172 = fmul fast float %7166, %7166
  %7173 = fadd fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  br label %7185

; <label>:7175                                    ; preds = %7124
  %7176 = icmp slt i32 %7154, 0
  br i1 %7176, label %7177, label %7185

; <label>:7177                                    ; preds = %7175
  %7178 = fsub fast float %159, %7137
  %7179 = fmul fast float %7130, %7130
  %7180 = fmul fast float %7131, %7131
  %7181 = fadd fast float %7179, %7180
  %7182 = fmul fast float %7178, %7178
  %7183 = fadd fast float %7181, %7182
  %7184 = call float @dx.op.unary.f32(i32 24, float %7183)  ; Sqrt(value)
  br label %7185

; <label>:7185                                    ; preds = %7177, %7175, %7165
  %7186 = phi float [ %7174, %7165 ], [ %7184, %7177 ], [ 0.000000e+00, %7175 ]
  %7187 = fsub fast float -0.000000e+00, %7186
  %7188 = select i1 %7129, float -0.000000e+00, float %7187
  %7189 = fmul fast float %5500, 0x3FF7154760000000
  %7190 = fmul fast float %7189, %7188
  %7191 = fmul fast float %5501, 0x3FF7154760000000
  %7192 = fmul fast float %7191, %7188
  %7193 = fmul fast float %5502, 0x3FF7154760000000
  %7194 = fmul fast float %7193, %7188
  %7195 = call float @dx.op.unary.f32(i32 21, float %7190)  ; Exp(value)
  %7196 = call float @dx.op.unary.f32(i32 21, float %7192)  ; Exp(value)
  %7197 = call float @dx.op.unary.f32(i32 21, float %7194)  ; Exp(value)
  %7198 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7199 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7200 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7201 = fmul fast float %7125, %7198
  %7202 = fmul fast float %7126, %7199
  %7203 = fmul fast float %7127, %7200
  %7204 = fsub fast float %6307, %5699
  %7205 = fsub fast float %6308, %5698
  %7206 = fsub fast float %6309, %5697
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7204, float %7205, float %7206, float %7204, float %7205, float %7206)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = call float @dx.op.unary.f32(i32 25, float %7207)  ; Rsqrt(value)
  %7209 = fmul fast float %7208, %7204
  %7210 = fmul fast float %7208, %7205
  %7211 = fmul fast float %7208, %7206
  %7212 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7213 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5695, float %5694, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = call float @dx.op.unary.f32(i32 7, float %7212)  ; Saturate(value)
  %7215 = fmul fast float %7214, %7214
  %7216 = fmul fast float %7215, %5761
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = fmul fast float %7217, %7214
  %7219 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7220 = fmul fast float %7219, %7219
  %7221 = call float @dx.op.unary.f32(i32 6, float %7212)  ; FAbs(value)
  %7222 = call float @dx.op.binary.f32(i32 35, float %6136, float 0x3F847AE140000000)  ; FMax(a,b)
  %7223 = fmul fast float %7222, %7222
  %7224 = fmul fast float %7223, %7223
  %7225 = fsub fast float 1.000000e+00, %7224
  %7226 = fmul fast float %5748, %5748
  %7227 = fmul fast float %7226, %7225
  %7228 = fadd fast float %7227, %7224
  %7229 = bitcast float %7228 to i32
  %7230 = ashr i32 %7229, 1
  %7231 = add nsw i32 %7230, 532487669
  %7232 = bitcast i32 %7231 to float
  %7233 = fadd fast float %7232, %5748
  %7234 = fmul fast float %7224, %7220
  %7235 = fsub fast float 1.000000e+00, %7220
  %7236 = fadd fast float %7235, %7234
  %7237 = fmul fast float %7221, %7221
  %7238 = fmul fast float %7237, %7225
  %7239 = fadd fast float %7238, %7224
  %7240 = bitcast float %7239 to i32
  %7241 = ashr i32 %7240, 1
  %7242 = add nsw i32 %7241, 532487669
  %7243 = bitcast i32 %7242 to float
  %7244 = fadd fast float %7243, %7221
  %7245 = fmul fast float %7236, %7236
  %7246 = fmul fast float %7245, %7233
  %7247 = fmul fast float %7246, %7244
  %7248 = fdiv fast float 0x3FF0A00000000000, %7247
  %7249 = fmul fast float %7248, %7224
  %7250 = fmul fast float %5996, 0x3FF9999980000000
  %7251 = fsub fast float 5.000000e+00, %7250
  %7252 = call float @dx.op.unary.f32(i32 6, float %7213)  ; FAbs(value)
  %7253 = fsub fast float 1.000000e+00, %7252
  %7254 = fmul fast float %5996, 0x41D9660740000000
  %7255 = fadd fast float %7254, 0xC1EFBF8940000000
  %7256 = bitcast float %7253 to i32
  %7257 = sitofp i32 %7256 to float
  %7258 = fmul fast float %7257, %7251
  %7259 = fadd fast float %7255, %7258
  %7260 = fptosi float %7259 to i32
  %7261 = bitcast i32 %7260 to float
  %7262 = fsub fast float 1.000000e+00, %5703
  %7263 = fsub fast float 1.000000e+00, %5704
  %7264 = fsub fast float 1.000000e+00, %5746
  %7265 = fmul fast float %7261, %7262
  %7266 = fmul fast float %7261, %7263
  %7267 = fmul fast float %7261, %7264
  %7268 = fadd fast float %7265, %5703
  %7269 = fadd fast float %7266, %5704
  %7270 = fadd fast float %7267, %5746
  br i1 %6019, label %7271, label %7294

; <label>:7271                                    ; preds = %7185
  %7272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.ResRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.ResRet.f32 %7272, 2
  %7276 = fadd fast float %7273, -5.000000e-01
  %7277 = fadd fast float %7274, -5.000000e-01
  %7278 = fadd fast float %7275, -5.000000e-01
  %7279 = fmul fast float %5703, 4.000000e+00
  %7280 = fmul fast float %7279, %7262
  %7281 = fmul fast float %7280, %7276
  %7282 = fmul fast float %5704, 4.000000e+00
  %7283 = fmul fast float %7282, %7263
  %7284 = fmul fast float %7283, %7277
  %7285 = fmul fast float %5746, 4.000000e+00
  %7286 = fmul fast float %7285, %7264
  %7287 = fmul fast float %7286, %7278
  %7288 = fadd fast float %7281, %7268
  %7289 = fadd fast float %7284, %7269
  %7290 = fadd fast float %7287, %7270
  %7291 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7292 = call float @dx.op.unary.f32(i32 7, float %7289)  ; Saturate(value)
  %7293 = call float @dx.op.unary.f32(i32 7, float %7290)  ; Saturate(value)
  br label %7294

; <label>:7294                                    ; preds = %7271, %7185
  %7295 = phi float [ %7291, %7271 ], [ %7268, %7185 ]
  %7296 = phi float [ %7292, %7271 ], [ %7269, %7185 ]
  %7297 = phi float [ %7293, %7271 ], [ %7270, %7185 ]
  %7298 = fmul fast float %7212, 9.843750e-01
  %7299 = fadd fast float %7298, 7.812500e-03
  %7300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7299, float %6000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.ResRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.ResRet.f32 %7300, 2
  %7304 = extractvalue %dx.types.ResRet.f32 %7300, 3
  %7305 = fsub fast float %7303, %7301
  %7306 = fsub fast float %7304, %7302
  %7307 = fmul fast float %7305, %6006
  %7308 = fmul fast float %7306, %6006
  %7309 = fadd fast float %7307, %7301
  %7310 = fadd fast float %7308, %7302
  %7311 = fmul fast float %7309, %5703
  %7312 = fmul fast float %7309, %5704
  %7313 = fmul fast float %7309, %5746
  %7314 = fadd fast float %7311, %7310
  %7315 = fadd fast float %7312, %7310
  %7316 = fadd fast float %7313, %7310
  br i1 %6019, label %7317, label %7340

; <label>:7317                                    ; preds = %7294
  %7318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %7212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7319 = extractvalue %dx.types.ResRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.ResRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.ResRet.f32 %7318, 2
  %7322 = fadd fast float %7319, -5.000000e-01
  %7323 = fadd fast float %7320, -5.000000e-01
  %7324 = fadd fast float %7321, -5.000000e-01
  %7325 = fmul fast float %5703, 4.000000e+00
  %7326 = fmul fast float %7325, %7262
  %7327 = fmul fast float %7326, %7322
  %7328 = fmul fast float %5704, 4.000000e+00
  %7329 = fmul fast float %7328, %7263
  %7330 = fmul fast float %7329, %7323
  %7331 = fmul fast float %5746, 4.000000e+00
  %7332 = fmul fast float %7331, %7264
  %7333 = fmul fast float %7332, %7324
  %7334 = fadd fast float %7327, %7314
  %7335 = fadd fast float %7330, %7315
  %7336 = fadd fast float %7333, %7316
  %7337 = call float @dx.op.unary.f32(i32 7, float %7334)  ; Saturate(value)
  %7338 = call float @dx.op.unary.f32(i32 7, float %7335)  ; Saturate(value)
  %7339 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  br label %7340

; <label>:7340                                    ; preds = %7317, %7294
  %7341 = phi float [ %7337, %7317 ], [ %7314, %7294 ]
  %7342 = phi float [ %7338, %7317 ], [ %7315, %7294 ]
  %7343 = phi float [ %7339, %7317 ], [ %7316, %7294 ]
  %7344 = call float @dx.op.binary.f32(i32 35, float %7342, float %7343)  ; FMax(a,b)
  %7345 = call float @dx.op.binary.f32(i32 35, float %7341, float %7344)  ; FMax(a,b)
  %7346 = fsub fast float 1.000000e+00, %7345
  %7347 = call float @dx.op.binary.f32(i32 35, float %7221, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7348 = fdiv fast float %4423, %7347
  %7349 = fmul fast float %6077, %7348
  %7350 = fmul fast float %6079, %7348
  %7351 = fmul fast float %6081, %7348
  %7352 = call float @dx.op.unary.f32(i32 21, float %7349)  ; Exp(value)
  %7353 = call float @dx.op.unary.f32(i32 21, float %7350)  ; Exp(value)
  %7354 = call float @dx.op.unary.f32(i32 21, float %7351)  ; Exp(value)
  %7355 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7356 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7357 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7358 = select i1 %6074, float %7355, float 0.000000e+00
  %7359 = select i1 %6075, float %7356, float 0.000000e+00
  %7360 = select i1 %6076, float %7357, float 0.000000e+00
  %7361 = fsub fast float -0.000000e+00, %5706
  %7362 = fsub fast float -0.000000e+00, %5707
  %7363 = fsub fast float -0.000000e+00, %5708
  %7364 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %7361, float %7362, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fmul fast float %7365, 9.843750e-01
  %7367 = fadd fast float %7366, 7.812500e-03
  %7368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7367, float %6000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7369 = extractvalue %dx.types.ResRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.ResRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.ResRet.f32 %7368, 2
  %7372 = extractvalue %dx.types.ResRet.f32 %7368, 3
  %7373 = fsub fast float %7371, %7369
  %7374 = fsub fast float %7372, %7370
  %7375 = fmul fast float %7373, %6006
  %7376 = fmul fast float %7374, %6006
  %7377 = fadd fast float %7375, %7369
  %7378 = fadd fast float %7376, %7370
  %7379 = fmul fast float %7377, %5703
  %7380 = fmul fast float %7377, %5704
  %7381 = fmul fast float %7377, %5746
  %7382 = fadd fast float %7379, %7378
  %7383 = fadd fast float %7380, %7378
  %7384 = fadd fast float %7381, %7378
  br i1 %6019, label %7385, label %7408

; <label>:7385                                    ; preds = %7340
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %7365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.ResRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.ResRet.f32 %7386, 2
  %7390 = fadd fast float %7387, -5.000000e-01
  %7391 = fadd fast float %7388, -5.000000e-01
  %7392 = fadd fast float %7389, -5.000000e-01
  %7393 = fmul fast float %5703, 4.000000e+00
  %7394 = fmul fast float %7393, %7262
  %7395 = fmul fast float %7394, %7390
  %7396 = fmul fast float %5704, 4.000000e+00
  %7397 = fmul fast float %7396, %7263
  %7398 = fmul fast float %7397, %7391
  %7399 = fmul fast float %5746, 4.000000e+00
  %7400 = fmul fast float %7399, %7264
  %7401 = fmul fast float %7400, %7392
  %7402 = fadd fast float %7395, %7382
  %7403 = fadd fast float %7398, %7383
  %7404 = fadd fast float %7401, %7384
  %7405 = call float @dx.op.unary.f32(i32 7, float %7402)  ; Saturate(value)
  %7406 = call float @dx.op.unary.f32(i32 7, float %7403)  ; Saturate(value)
  %7407 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  br label %7408

; <label>:7408                                    ; preds = %7385, %7340
  %7409 = phi float [ %7405, %7385 ], [ %7382, %7340 ]
  %7410 = phi float [ %7406, %7385 ], [ %7383, %7340 ]
  %7411 = phi float [ %7407, %7385 ], [ %7384, %7340 ]
  %7412 = call float @dx.op.binary.f32(i32 35, float %7410, float %7411)  ; FMax(a,b)
  %7413 = call float @dx.op.binary.f32(i32 35, float %7409, float %7412)  ; FMax(a,b)
  %7414 = fsub fast float 1.000000e+00, %7413
  %7415 = fmul fast float %6136, %6142
  %7416 = fadd fast float %6135, %7415
  %7417 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  %7418 = fsub fast float %6307, %5754
  %7419 = fsub fast float %6308, %5755
  %7420 = fsub fast float %6309, %5756
  %7421 = call float @dx.op.dot3.f32(i32 55, float %7418, float %7419, float %7420, float %7418, float %7419, float %7420)  ; Dot3(ax,ay,az,bx,by,bz)
  %7422 = call float @dx.op.unary.f32(i32 25, float %7421)  ; Rsqrt(value)
  %7423 = fmul fast float %7422, %7418
  %7424 = fmul fast float %7422, %7419
  %7425 = fmul fast float %7422, %7420
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7361, float %7362, float %7363, float %7423, float %7424, float %7425)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = fmul fast float %7426, %7426
  %7428 = call float @dx.op.unary.f32(i32 6, float %7365)  ; FAbs(value)
  %7429 = call float @dx.op.binary.f32(i32 35, float %7417, float 0x3F847AE140000000)  ; FMax(a,b)
  %7430 = fmul fast float %7429, %7429
  %7431 = fmul fast float %7430, %7430
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %7226, %7432
  %7434 = fadd fast float %7433, %7431
  %7435 = bitcast float %7434 to i32
  %7436 = ashr i32 %7435, 1
  %7437 = add nsw i32 %7436, 532487669
  %7438 = bitcast i32 %7437 to float
  %7439 = fadd fast float %7438, %5748
  %7440 = fmul fast float %7431, %7427
  %7441 = fsub fast float 1.000000e+00, %7427
  %7442 = fadd fast float %7441, %7440
  %7443 = fmul fast float %7428, %7428
  %7444 = fmul fast float %7443, %7432
  %7445 = fadd fast float %7444, %7431
  %7446 = bitcast float %7445 to i32
  %7447 = ashr i32 %7446, 1
  %7448 = add nsw i32 %7447, 532487669
  %7449 = bitcast i32 %7448 to float
  %7450 = fadd fast float %7449, %7428
  %7451 = fmul fast float %7442, %7442
  %7452 = fmul fast float %7451, %7439
  %7453 = fmul fast float %7452, %7450
  %7454 = fdiv fast float 0x3FF0A00000000000, %7453
  %7455 = fmul fast float %7454, %7431
  %7456 = fmul fast float %7365, %7358
  %7457 = fmul fast float %7365, %7359
  %7458 = fmul fast float %7365, %7360
  %7459 = fmul fast float %7456, %7414
  %7460 = fmul fast float %7459, %7455
  %7461 = fmul fast float %7457, %7414
  %7462 = fmul fast float %7461, %7455
  %7463 = fmul fast float %7458, %7414
  %7464 = fmul fast float %7463, %7455
  %7465 = fmul fast float %7295, %7249
  %7466 = fmul fast float %7296, %7249
  %7467 = fmul fast float %7297, %7249
  %7468 = fsub fast float 1.000000e+00, %7213
  %7469 = bitcast float %7468 to i32
  %7470 = sitofp i32 %7469 to float
  %7471 = fmul fast float %7470, 5.000000e+00
  %7472 = fadd fast float %7471, 0xC1EFBF8940000000
  %7473 = fptosi float %7472 to i32
  %7474 = bitcast i32 %7473 to float
  %7475 = fmul fast float %7474, %5070
  %7476 = fmul fast float %7346, %7475
  %7477 = fmul fast float %7476, %6069
  %7478 = fmul fast float %7476, %6070
  %7479 = fmul fast float %7476, %6071
  %7480 = fadd fast float %7477, %7465
  %7481 = fadd fast float %7478, %7466
  %7482 = fadd fast float %7479, %7467
  %7483 = fmul fast float %7480, %7218
  %7484 = fmul fast float %7481, %7218
  %7485 = fmul fast float %7482, %7218
  %7486 = fmul fast float %7218, %7201
  %7487 = fmul fast float %7486, %7346
  %7488 = fmul fast float %7218, %7202
  %7489 = fmul fast float %7488, %7346
  %7490 = fmul fast float %7218, %7203
  %7491 = fmul fast float %7490, %7346
  %7492 = fadd fast float %7483, %7460
  %7493 = fadd fast float %7484, %7462
  %7494 = fadd fast float %7485, %7464
  %7495 = fmul fast float %7492, %7201
  %7496 = fmul fast float %7493, %7202
  %7497 = fmul fast float %7494, %7203
  %7498 = fadd fast float %7487, %6053
  %7499 = fmul fast float %7498, %5066
  %7500 = fadd fast float %7489, %6054
  %7501 = fmul fast float %7500, %5066
  %7502 = fadd fast float %7491, %6055
  %7503 = fmul fast float %7502, %5066
  %7504 = fadd fast float %7495, %6293
  %7505 = fmul fast float %7504, %5066
  %7506 = fadd fast float %7496, %6297
  %7507 = fmul fast float %7506, %5066
  %7508 = fadd fast float %7497, %6301
  %7509 = fmul fast float %7508, %5066
  br label %7510

; <label>:7510                                    ; preds = %7408, %7119, %6277
  %7511 = phi float [ %6294, %6277 ], [ %6294, %7119 ], [ %7505, %7408 ]
  %7512 = phi float [ %6298, %6277 ], [ %6298, %7119 ], [ %7507, %7408 ]
  %7513 = phi float [ %6302, %6277 ], [ %6302, %7119 ], [ %7509, %7408 ]
  %7514 = phi float [ %6166, %6277 ], [ %6166, %7119 ], [ %7499, %7408 ]
  %7515 = phi float [ %6167, %6277 ], [ %6167, %7119 ], [ %7501, %7408 ]
  %7516 = phi float [ %6168, %6277 ], [ %6168, %7119 ], [ %7503, %7408 ]
  %7517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.i32 %7517, 0
  %7519 = icmp eq i32 %7518, 0
  br i1 %7519, label %8294, label %7520

; <label>:7520                                    ; preds = %7510
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7524 = fmul fast float %7522, %102
  %7525 = fmul fast float %7523, %103
  %7526 = fptoui float %7524 to i32
  %7527 = fptoui float %7525 to i32
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 0
  %7530 = extractvalue %dx.types.CBufRet.f32 %7528, 2
  %7531 = extractvalue %dx.types.CBufRet.f32 %7528, 3
  %7532 = fadd fast float %93, -4.000000e+00
  %7533 = call float @dx.op.binary.f32(i32 35, float %7532, float 0.000000e+00)  ; FMax(a,b)
  %7534 = fadd fast float %7533, %7529
  %7535 = fmul fast float %7534, %7530
  %7536 = call float @dx.op.unary.f32(i32 23, float %7535)  ; Log(value)
  %7537 = fmul fast float %7536, %7531
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 2
  %7540 = fmul fast float %7537, %7539
  %7541 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.i32 %7542, 1
  %7544 = add i32 %7543, -1
  %7545 = uitofp i32 %7543 to float
  %7546 = fmul fast float %7545, %7541
  %7547 = fptoui float %7546 to i32
  %7548 = call i32 @dx.op.binary.i32(i32 40, i32 %7547, i32 %7544)  ; UMin(a,b)
  %7549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7550 = extractvalue %dx.types.CBufRet.i32 %7549, 2
  %7551 = extractvalue %dx.types.CBufRet.i32 %7549, 3
  %7552 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7527, i32 %7550, i32 %7526)  ; UMad(a,b,c)
  %7553 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7548, i32 %7551, i32 %7552)  ; UMad(a,b,c)
  %7554 = add nsw i32 %7518, -1
  %7555 = call i32 @dx.op.binary.i32(i32 37, i32 %7554, i32 0)  ; IMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7557 = fptoui float %7556 to i32
  %7558 = lshr i32 %7557, 5
  %7559 = call i32 @dx.op.binary.i32(i32 40, i32 %7558, i32 8191)  ; UMin(a,b)
  %7560 = shl i32 %7559, 2
  %7561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.i32 %7561, 0
  %7563 = lshr i32 %7562, 16
  %7564 = and i32 %7562, 65535
  %7565 = lshr i32 %7562, 21
  %7566 = lshr i32 %7564, 5
  %7567 = call i32 @dx.op.binary.i32(i32 40, i32 %7566, i32 %7555)  ; UMin(a,b)
  %7568 = icmp ugt i32 %7565, %7567
  br i1 %7568, label %8294, label %7569

; <label>:7569                                    ; preds = %7520
  br label %7570

; <label>:7570                                    ; preds = %8284, %7569
  %7571 = phi i32 [ %8291, %8284 ], [ %7565, %7569 ]
  %7572 = phi float [ %8285, %8284 ], [ %7511, %7569 ]
  %7573 = phi float [ %8286, %8284 ], [ %7512, %7569 ]
  %7574 = phi float [ %8287, %8284 ], [ %7513, %7569 ]
  %7575 = phi float [ %8288, %8284 ], [ %7514, %7569 ]
  %7576 = phi float [ %8289, %8284 ], [ %7515, %7569 ]
  %7577 = phi float [ %8290, %8284 ], [ %7516, %7569 ]
  %7578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.i32 %7578, 0
  %7580 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7553, i32 %7579, i32 %7571)  ; UMad(a,b,c)
  %7581 = shl i32 %7580, 2
  %7582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7581, i32 undef)  ; BufferLoad(srv,index,wot)
  %7583 = extractvalue %dx.types.ResRet.i32 %7582, 0
  %7584 = shl i32 %7571, 5
  %7585 = sub nsw i32 %7563, %7584
  %7586 = call i32 @dx.op.binary.i32(i32 37, i32 %7585, i32 0)  ; IMax(a,b)
  %7587 = call i32 @dx.op.binary.i32(i32 38, i32 %7586, i32 31)  ; IMin(a,b)
  %7588 = sub nsw i32 1, %7563
  %7589 = add nsw i32 %7588, %7564
  %7590 = call i32 @dx.op.binary.i32(i32 37, i32 %7589, i32 0)  ; IMax(a,b)
  %7591 = call i32 @dx.op.binary.i32(i32 38, i32 %7590, i32 32)  ; IMin(a,b)
  %7592 = and i32 %7591, 31
  %7593 = shl i32 -1, %7592
  %7594 = xor i32 %7593, -1
  %7595 = and i32 %7587, 31
  %7596 = shl i32 %7594, %7595
  %7597 = icmp eq i32 %7591, 32
  %7598 = select i1 %7597, i32 -1, i32 %7596
  %7599 = and i32 %7598, %7583
  %7600 = icmp eq i32 %7599, 0
  br i1 %7600, label %8284, label %7601

; <label>:7601                                    ; preds = %7570
  br label %7602

; <label>:7602                                    ; preds = %7737, %7601
  %7603 = phi i32 [ %7614, %7737 ], [ %7599, %7601 ]
  %7604 = phi float [ %7738, %7737 ], [ %7572, %7601 ]
  %7605 = phi float [ %7739, %7737 ], [ %7573, %7601 ]
  %7606 = phi float [ %7740, %7737 ], [ %7574, %7601 ]
  %7607 = phi float [ %7741, %7737 ], [ %7575, %7601 ]
  %7608 = phi float [ %7742, %7737 ], [ %7576, %7601 ]
  %7609 = phi float [ %7743, %7737 ], [ %7577, %7601 ]
  %7610 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7603)  ; FirstbitLo(value)
  %7611 = add i32 %7610, %7584
  %7612 = and i32 %7610, 31
  %7613 = shl i32 1, %7612
  %7614 = xor i32 %7613, %7603
  %7615 = mul i32 %7611, 112
  %7616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7615, i32 undef)  ; BufferLoad(srv,index,wot)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.ResRet.f32 %7616, 2
  %7620 = or i32 %7615, 12
  %7621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7620, i32 undef)  ; BufferLoad(srv,index,wot)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = add i32 %7615, 16
  %7624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7623, i32 undef)  ; BufferLoad(srv,index,wot)
  %7625 = extractvalue %dx.types.ResRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.ResRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.ResRet.f32 %7624, 2
  %7628 = add i32 %7615, 28
  %7629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.i32 %7629, 0
  %7631 = add i32 %7615, 44
  %7632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7631, i32 undef)  ; BufferLoad(srv,index,wot)
  %7633 = extractvalue %dx.types.ResRet.f32 %7632, 0
  %7634 = add i32 %7615, 48
  %7635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7634, i32 undef)  ; BufferLoad(srv,index,wot)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 0
  %7637 = extractvalue %dx.types.ResRet.f32 %7635, 1
  %7638 = extractvalue %dx.types.ResRet.f32 %7635, 2
  %7639 = extractvalue %dx.types.ResRet.f32 %7635, 3
  %7640 = add i32 %7615, 64
  %7641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7640, i32 undef)  ; BufferLoad(srv,index,wot)
  %7642 = extractvalue %dx.types.ResRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.ResRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.ResRet.f32 %7641, 2
  %7645 = extractvalue %dx.types.ResRet.f32 %7641, 3
  %7646 = add i32 %7615, 80
  %7647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7646, i32 undef)  ; BufferLoad(srv,index,wot)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7647, 2
  %7650 = add i32 %7615, 92
  %7651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7650, i32 undef)  ; BufferLoad(srv,index,wot)
  %7652 = extractvalue %dx.types.ResRet.i32 %7651, 0
  %7653 = call float @dx.op.dot3.f32(i32 55, float %7617, float %7618, float %7619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7654 = select i1 %219, float %7648, float %7617
  %7655 = select i1 %219, float %7653, float %7618
  %7656 = select i1 %219, float %7649, float %7619
  %7657 = and i32 %7652, 65535
  %7658 = uitofp i32 %7657 to float
  %7659 = lshr i32 %7652, 16
  %7660 = uitofp i32 %7659 to float
  %7661 = and i32 %7630, 65535
  %7662 = and i32 %7630, 50331648
  %7663 = icmp slt i32 %7630, 0
  %7664 = icmp eq i32 %7662, 33554432
  %7665 = fsub fast float %7636, %157
  %7666 = fsub fast float %7637, %158
  %7667 = fsub fast float %7638, %159
  %7668 = call float @dx.op.dot3.f32(i32 55, float %7665, float %7666, float %7667, float %7665, float %7666, float %7667)  ; Dot3(ax,ay,az,bx,by,bz)
  %7669 = call float @dx.op.unary.f32(i32 24, float %7668)  ; Sqrt(value)
  %7670 = fdiv fast float 1.000000e+00, %7669
  %7671 = fmul fast float %7670, %7665
  %7672 = fmul fast float %7670, %7666
  %7673 = fmul fast float %7670, %7667
  %7674 = fadd fast float %7669, %7622
  %7675 = fdiv fast float 1.000000e+00, %7674
  %7676 = fmul float %7633, %7675
  %7677 = fmul float %7676, %7676
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  br i1 %7664, label %7679, label %7700

; <label>:7679                                    ; preds = %7602
  %7680 = fmul fast float %7644, %7625
  %7681 = fmul fast float %7644, %7626
  %7682 = fmul fast float %7644, %7627
  %7683 = fadd fast float %7665, %7680
  %7684 = fadd fast float %7666, %7681
  %7685 = fadd fast float %7667, %7682
  %7686 = call float @dx.op.dot3.f32(i32 55, float %7683, float %7684, float %7685, float %7683, float %7684, float %7685)  ; Dot3(ax,ay,az,bx,by,bz)
  %7687 = call float @dx.op.unary.f32(i32 25, float %7686)  ; Rsqrt(value)
  %7688 = fmul fast float %7687, %7683
  %7689 = fmul fast float %7687, %7684
  %7690 = fmul fast float %7687, %7685
  %7691 = fsub fast float %157, %7636
  %7692 = fsub fast float %158, %7637
  %7693 = fsub fast float %159, %7638
  %7694 = fsub fast float -0.000000e+00, %7691
  %7695 = fsub fast float -0.000000e+00, %7692
  %7696 = fsub fast float -0.000000e+00, %7693
  %7697 = call float @dx.op.dot3.f32(i32 55, float %7694, float %7695, float %7696, float %7625, float %7626, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7698 = fcmp fast ogt float %7697, 0.000000e+00
  %7699 = uitofp i1 %7698 to float
  br label %7700

; <label>:7700                                    ; preds = %7679, %7602
  %7701 = phi float [ %7699, %7679 ], [ 1.000000e+00, %7602 ]
  %7702 = phi float [ %7688, %7679 ], [ %7671, %7602 ]
  %7703 = phi float [ %7689, %7679 ], [ %7672, %7602 ]
  %7704 = phi float [ %7690, %7679 ], [ %7673, %7602 ]
  %7705 = call float @dx.op.dot3.f32(i32 55, float %7625, float %7626, float %7627, float %7702, float %7703, float %7704)  ; Dot3(ax,ay,az,bx,by,bz)
  %7706 = fmul fast float %7705, %7705
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fsub fast float 1.000000e+00, %7707
  %7709 = fmul fast float %7708, 5.000000e-01
  %7710 = fcmp fast ogt float %7705, 0.000000e+00
  %7711 = fsub fast float 1.000000e+00, %7709
  %7712 = select i1 %7710, float %7709, float %7711
  %7713 = fmul fast float %7712, %7660
  %7714 = fadd fast float %7713, %7658
  %7715 = fmul fast float %7714, 0x3EF0001000000000
  %7716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7715, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = fmul fast float %7705, %7642
  %7719 = fadd fast float %7718, %7643
  %7720 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  %7721 = select i1 %7664, float 1.000000e+00, float %7720
  %7722 = select i1 %7664, float %7720, float 1.000000e+00
  %7723 = fmul fast float %7669, %7639
  %7724 = fsub fast float 1.000000e+00, %7723
  %7725 = fmul fast float %7724, %7645
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = fmul fast float %7726, %7722
  %7728 = fmul fast float %7727, 2.000000e+00
  %7729 = fsub fast float 3.000000e+00, %7728
  %7730 = fmul fast float %7717, %7701
  %7731 = fmul fast float %7727, %7727
  %7732 = fmul fast float %7731, %7730
  %7733 = fmul fast float %7732, %7729
  %7734 = call float @dx.op.binary.f32(i32 36, float %7733, float %7733)  ; FMin(a,b)
  %7735 = call float @dx.op.binary.f32(i32 36, float %7733, float %7734)  ; FMin(a,b)
  %7736 = fcmp fast ogt float %7735, 0.000000e+00
  br i1 %7736, label %7745, label %7737, !dx.controlflow.hints !120

; <label>:7737                                    ; preds = %8237, %7845, %7700
  %7738 = phi float [ %7604, %7845 ], [ %7604, %7700 ], [ %8280, %8237 ]
  %7739 = phi float [ %7605, %7845 ], [ %7605, %7700 ], [ %8281, %8237 ]
  %7740 = phi float [ %7606, %7845 ], [ %7606, %7700 ], [ %8282, %8237 ]
  %7741 = phi float [ %7607, %7845 ], [ %7607, %7700 ], [ %8274, %8237 ]
  %7742 = phi float [ %7608, %7845 ], [ %7608, %7700 ], [ %8275, %8237 ]
  %7743 = phi float [ %7609, %7845 ], [ %7609, %7700 ], [ %8276, %8237 ]
  %7744 = icmp eq i32 %7603, %7613
  br i1 %7744, label %8283, label %7602

; <label>:7745                                    ; preds = %7700
  %7746 = icmp eq i32 %7661, 255
  br i1 %7746, label %7845, label %7747, !dx.controlflow.hints !121

; <label>:7747                                    ; preds = %7745
  %7748 = mul nuw nsw i32 %7661, 176
  %7749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7748, i32 undef)  ; BufferLoad(srv,index,wot)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.ResRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.ResRet.f32 %7749, 2
  %7753 = extractvalue %dx.types.ResRet.f32 %7749, 3
  %7754 = add nuw nsw i32 %7748, 16
  %7755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7754, i32 undef)  ; BufferLoad(srv,index,wot)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.ResRet.f32 %7755, 1
  %7758 = add nuw nsw i32 %7748, 32
  %7759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7758, i32 undef)  ; BufferLoad(srv,index,wot)
  %7760 = extractvalue %dx.types.ResRet.f32 %7759, 0
  %7761 = extractvalue %dx.types.ResRet.f32 %7759, 1
  %7762 = extractvalue %dx.types.ResRet.f32 %7759, 2
  %7763 = add nuw nsw i32 %7748, 48
  %7764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7763, i32 undef)  ; BufferLoad(srv,index,wot)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = extractvalue %dx.types.ResRet.f32 %7764, 1
  %7767 = extractvalue %dx.types.ResRet.f32 %7764, 2
  %7768 = extractvalue %dx.types.ResRet.f32 %7764, 3
  %7769 = add nuw nsw i32 %7748, 64
  %7770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7769, i32 undef)  ; BufferLoad(srv,index,wot)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.ResRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.ResRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.ResRet.f32 %7770, 3
  %7775 = add nuw nsw i32 %7748, 80
  %7776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7775, i32 undef)  ; BufferLoad(srv,index,wot)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.ResRet.f32 %7776, 3
  %7781 = add nuw nsw i32 %7748, 96
  %7782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7781, i32 undef)  ; BufferLoad(srv,index,wot)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.ResRet.f32 %7782, 3
  %7787 = bitcast float %7757 to i32
  %7788 = fmul fast float %7762, %109
  %7789 = fmul fast float %7762, %110
  %7790 = fmul fast float %7762, %111
  %7791 = fadd fast float %7788, %157
  %7792 = fadd fast float %7789, %158
  %7793 = fadd fast float %7790, %159
  %7794 = fmul fast float %7791, %7765
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7771, float %7794)  ; FMad(a,b,c)
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7777, float %7795)  ; FMad(a,b,c)
  %7797 = fadd fast float %7796, %7783
  %7798 = fmul fast float %7791, %7766
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7772, float %7798)  ; FMad(a,b,c)
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7778, float %7799)  ; FMad(a,b,c)
  %7801 = fadd fast float %7800, %7784
  %7802 = fmul fast float %7791, %7767
  %7803 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7773, float %7802)  ; FMad(a,b,c)
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7779, float %7803)  ; FMad(a,b,c)
  %7805 = fadd fast float %7804, %7785
  %7806 = fmul fast float %7791, %7768
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7774, float %7806)  ; FMad(a,b,c)
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %7793, float %7780, float %7807)  ; FMad(a,b,c)
  %7809 = fadd fast float %7808, %7786
  %7810 = fdiv fast float %7797, %7809
  %7811 = fdiv fast float %7801, %7809
  %7812 = fdiv fast float %7805, %7809
  %7813 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7812)  ; FMax(a,b)
  %7814 = fmul fast float %232, 0x401921FB60000000
  %7815 = call float @dx.op.unary.f32(i32 13, float %7814)  ; Sin(value)
  %7816 = call float @dx.op.unary.f32(i32 12, float %7814)  ; Cos(value)
  %7817 = fsub fast float -0.000000e+00, %7815
  %7818 = fmul fast float %7752, 5.000000e-01
  %7819 = call float @dx.op.dot2.f32(i32 54, float %232, float %232, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7820 = call float @dx.op.unary.f32(i32 22, float %7819)  ; Frc(value)
  %7821 = fmul fast float %7820, 0x404A7DD040000000
  %7822 = call float @dx.op.unary.f32(i32 22, float %7821)  ; Frc(value)
  %7823 = fmul fast float %7822, %7761
  %7824 = fadd fast float %7823, %7818
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7824, float %7817, float 0.000000e+00)  ; FMad(a,b,c)
  %7826 = call float @dx.op.tertiary.f32(i32 46, float %7824, float %7816, float 0.000000e+00)  ; FMad(a,b,c)
  %7827 = fadd fast float %7825, %7810
  %7828 = fadd fast float %7826, %7811
  %7829 = fmul fast float %7827, %7756
  %7830 = fmul fast float %7828, %7756
  %7831 = call float @dx.op.binary.f32(i32 35, float %7829, float %7752)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float %7830, float %7752)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 36, float %7831, float %7753)  ; FMin(a,b)
  %7834 = call float @dx.op.binary.f32(i32 36, float %7832, float %7753)  ; FMin(a,b)
  %7835 = fadd fast float %7833, %7750
  %7836 = fadd fast float %7834, %7751
  %7837 = uitofp i32 %7787 to float
  %7838 = fadd fast float %7813, %7760
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7835, float %7836, float %7837, float undef, i32 0, i32 0, i32 undef, float %7838)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = fadd fast float %7840, -1.000000e+00
  %7842 = fmul fast float %7841, %7721
  %7843 = fadd fast float %7842, 1.000000e+00
  %7844 = fmul fast float %7843, %7733
  br label %7845

; <label>:7845                                    ; preds = %7747, %7745
  %7846 = phi float [ %7844, %7747 ], [ %7733, %7745 ]
  %7847 = call float @dx.op.binary.f32(i32 36, float %7846, float %7846)  ; FMin(a,b)
  %7848 = call float @dx.op.binary.f32(i32 36, float %7846, float %7847)  ; FMin(a,b)
  %7849 = fcmp fast ogt float %7848, 0.000000e+00
  br i1 %7849, label %7850, label %7737, !dx.controlflow.hints !122

; <label>:7850                                    ; preds = %7845
  %7851 = fmul fast float %7846, %7654
  %7852 = fmul fast float %7846, %7655
  %7853 = fmul fast float %7846, %7656
  %7854 = fsub fast float %7638, %5499
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  %7856 = fsub fast float %159, %5499
  %7857 = fcmp fast ogt float %7856, 0.000000e+00
  %7858 = xor i1 %7857, %7855
  %7859 = fsub fast float %5499, %7638
  %7860 = fmul fast float %7859, 2.000000e+00
  %7861 = fadd fast float %7860, %7638
  %7862 = select i1 %7858, float %7638, float %7861
  %7863 = fsub fast float %7862, %159
  %7864 = call float @dx.op.dot3.f32(i32 55, float %7665, float %7666, float %7863, float %7665, float %7666, float %7863)  ; Dot3(ax,ay,az,bx,by,bz)
  %7865 = call float @dx.op.unary.f32(i32 25, float %7864)  ; Rsqrt(value)
  %7866 = fmul fast float %7865, %7665
  %7867 = fmul fast float %7865, %7666
  %7868 = fmul fast float %7865, %7863
  %7869 = fsub fast float %5499, %159
  %7870 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7871 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7866, float %7867, float %7868)  ; Dot3(ax,ay,az,bx,by,bz)
  %7872 = fdiv fast float 1.000000e+00, %7871
  %7873 = fmul fast float %7872, %7870
  %7874 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7856, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7875 = fcmp fast ogt float %7874, 0.000000e+00
  %7876 = fcmp fast olt float %7874, 0.000000e+00
  %7877 = zext i1 %7875 to i32
  %7878 = zext i1 %7876 to i32
  %7879 = sub nsw i32 %7877, %7878
  %7880 = sitofp i32 %7879 to float
  %7881 = fsub fast float %7862, %5499
  %7882 = call float @dx.op.dot3.f32(i32 55, float %7665, float %7666, float %7881, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  %7884 = fcmp fast olt float %7882, 0.000000e+00
  %7885 = zext i1 %7883 to i32
  %7886 = zext i1 %7884 to i32
  %7887 = sub nsw i32 %7885, %7886
  %7888 = sitofp i32 %7887 to float
  %7889 = fcmp fast une float %7880, %7888
  br i1 %7889, label %7890, label %7900

; <label>:7890                                    ; preds = %7850
  %7891 = fmul fast float %7873, %7868
  %7892 = fmul fast float %7873, %7867
  %7893 = fmul fast float %7873, %7866
  %7894 = fmul fast float %7893, %7893
  %7895 = fmul fast float %7892, %7892
  %7896 = fadd fast float %7894, %7895
  %7897 = fmul fast float %7891, %7891
  %7898 = fadd fast float %7896, %7897
  %7899 = call float @dx.op.unary.f32(i32 24, float %7898)  ; Sqrt(value)
  br label %7912

; <label>:7900                                    ; preds = %7850
  %7901 = icmp slt i32 %7879, 0
  br i1 %7901, label %7902, label %7912

; <label>:7902                                    ; preds = %7900
  %7903 = fsub fast float %157, %7636
  %7904 = fsub fast float %158, %7637
  %7905 = fsub fast float %159, %7862
  %7906 = fmul fast float %7903, %7903
  %7907 = fmul fast float %7904, %7904
  %7908 = fadd fast float %7906, %7907
  %7909 = fmul fast float %7905, %7905
  %7910 = fadd fast float %7908, %7909
  %7911 = call float @dx.op.unary.f32(i32 24, float %7910)  ; Sqrt(value)
  br label %7912

; <label>:7912                                    ; preds = %7902, %7900, %7890
  %7913 = phi float [ %7899, %7890 ], [ %7911, %7902 ], [ 0.000000e+00, %7900 ]
  %7914 = and i1 %7857, %7855
  %7915 = fsub fast float -0.000000e+00, %7913
  %7916 = select i1 %7914, float -0.000000e+00, float %7915
  %7917 = fmul fast float %5500, 0x3FF7154760000000
  %7918 = fmul fast float %7917, %7916
  %7919 = fmul fast float %5501, 0x3FF7154760000000
  %7920 = fmul fast float %7919, %7916
  %7921 = fmul fast float %5502, 0x3FF7154760000000
  %7922 = fmul fast float %7921, %7916
  %7923 = call float @dx.op.unary.f32(i32 21, float %7918)  ; Exp(value)
  %7924 = call float @dx.op.unary.f32(i32 21, float %7920)  ; Exp(value)
  %7925 = call float @dx.op.unary.f32(i32 21, float %7922)  ; Exp(value)
  %7926 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7927 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7928 = call float @dx.op.unary.f32(i32 7, float %7925)  ; Saturate(value)
  %7929 = fmul fast float %7851, %7926
  %7930 = fmul fast float %7852, %7927
  %7931 = fmul fast float %7853, %7928
  %7932 = fsub fast float %7671, %5699
  %7933 = fsub fast float %7672, %5698
  %7934 = fsub fast float %7673, %5697
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7932, float %7933, float %7934, float %7932, float %7933, float %7934)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.unary.f32(i32 25, float %7935)  ; Rsqrt(value)
  %7937 = fmul fast float %7936, %7932
  %7938 = fmul fast float %7936, %7933
  %7939 = fmul fast float %7936, %7934
  %7940 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %7941 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5695, float %5694, float %7937, float %7938, float %7939)  ; Dot3(ax,ay,az,bx,by,bz)
  %7942 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7943 = fmul fast float %7942, %7678
  %7944 = fmul fast float %7942, %7942
  %7945 = fmul fast float %7944, %5761
  %7946 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7947 = fmul fast float %7943, %7946
  %7948 = bitcast float %7668 to i32
  %7949 = ashr i32 %7948, 1
  %7950 = sub nsw i32 1597463007, %7949
  %7951 = bitcast i32 %7950 to float
  %7952 = fmul fast float %7951, %7665
  %7953 = fmul fast float %7951, %7666
  %7954 = fmul fast float %7951, %7667
  %7955 = fsub fast float %7952, %5699
  %7956 = fsub fast float %7953, %5698
  %7957 = fsub fast float %7954, %5697
  %7958 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7957, float %7955, float %7956, float %7957)  ; Dot3(ax,ay,az,bx,by,bz)
  %7959 = call float @dx.op.unary.f32(i32 25, float %7958)  ; Rsqrt(value)
  %7960 = fmul fast float %7955, %7959
  %7961 = fmul fast float %7956, %7959
  %7962 = fmul fast float %7957, %7959
  %7963 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %7960, float %7961, float %7962)  ; Dot3(ax,ay,az,bx,by,bz)
  %7964 = fmul fast float %7963, %7963
  %7965 = call float @dx.op.unary.f32(i32 6, float %7940)  ; FAbs(value)
  %7966 = call float @dx.op.binary.f32(i32 35, float %6136, float 0x3F847AE140000000)  ; FMax(a,b)
  %7967 = fmul fast float %7966, %7966
  %7968 = fmul fast float %7967, %7967
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %5748, %5748
  %7971 = fmul fast float %7970, %7969
  %7972 = fadd fast float %7971, %7968
  %7973 = bitcast float %7972 to i32
  %7974 = ashr i32 %7973, 1
  %7975 = add nsw i32 %7974, 532487669
  %7976 = bitcast i32 %7975 to float
  %7977 = fadd fast float %7976, %5748
  %7978 = fmul fast float %7968, %7964
  %7979 = fsub fast float 1.000000e+00, %7964
  %7980 = fadd fast float %7979, %7978
  %7981 = fmul fast float %7965, %7965
  %7982 = fmul fast float %7981, %7969
  %7983 = fadd fast float %7982, %7968
  %7984 = bitcast float %7983 to i32
  %7985 = ashr i32 %7984, 1
  %7986 = add nsw i32 %7985, 532487669
  %7987 = bitcast i32 %7986 to float
  %7988 = fadd fast float %7987, %7965
  %7989 = fmul fast float %7980, %7980
  %7990 = fmul fast float %7989, %7977
  %7991 = fmul fast float %7990, %7988
  %7992 = fdiv fast float 1.000000e+00, %7991
  %7993 = bitcast float %7968 to i32
  %7994 = sitofp i32 %7993 to float
  %7995 = fmul fast float %7994, 0x3FE7F73180000000
  %7996 = fadd fast float %7995, 0x41AFE27C40000000
  %7997 = fptosi float %7996 to i32
  %7998 = bitcast i32 %7997 to float
  %7999 = fmul fast float %7633, 0x3FD80E9D60000000
  %8000 = fmul fast float %7999, %7951
  %8001 = fadd fast float %7998, %8000
  %8002 = bitcast float %8001 to i32
  %8003 = sub nsw i32 2129859010, %8002
  %8004 = bitcast i32 %8003 to float
  %8005 = fmul fast float %7968, %7992
  %8006 = fmul fast float %8005, %7998
  %8007 = fmul fast float %8006, %8004
  %8008 = fmul fast float %5996, 0x3FF9999980000000
  %8009 = fsub fast float 5.000000e+00, %8008
  %8010 = call float @dx.op.unary.f32(i32 6, float %7941)  ; FAbs(value)
  %8011 = fsub fast float 1.000000e+00, %8010
  %8012 = fmul fast float %5996, 0x41D9660740000000
  %8013 = fadd fast float %8012, 0xC1EFBF8940000000
  %8014 = bitcast float %8011 to i32
  %8015 = sitofp i32 %8014 to float
  %8016 = fmul fast float %8015, %8009
  %8017 = fadd fast float %8013, %8016
  %8018 = fptosi float %8017 to i32
  %8019 = bitcast i32 %8018 to float
  %8020 = fsub fast float 1.000000e+00, %5703
  %8021 = fsub fast float 1.000000e+00, %5704
  %8022 = fsub fast float 1.000000e+00, %5746
  %8023 = fmul fast float %8019, %8020
  %8024 = fmul fast float %8019, %8021
  %8025 = fmul fast float %8019, %8022
  %8026 = fadd fast float %8023, %5703
  %8027 = fadd fast float %8024, %5704
  %8028 = fadd fast float %8025, %5746
  br i1 %6019, label %8029, label %8052

; <label>:8029                                    ; preds = %7912
  %8030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8031 = extractvalue %dx.types.ResRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.ResRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.ResRet.f32 %8030, 2
  %8034 = fadd fast float %8031, -5.000000e-01
  %8035 = fadd fast float %8032, -5.000000e-01
  %8036 = fadd fast float %8033, -5.000000e-01
  %8037 = fmul fast float %5703, 4.000000e+00
  %8038 = fmul fast float %8037, %8020
  %8039 = fmul fast float %8038, %8034
  %8040 = fmul fast float %5704, 4.000000e+00
  %8041 = fmul fast float %8040, %8021
  %8042 = fmul fast float %8041, %8035
  %8043 = fmul fast float %5746, 4.000000e+00
  %8044 = fmul fast float %8043, %8022
  %8045 = fmul fast float %8044, %8036
  %8046 = fadd fast float %8039, %8026
  %8047 = fadd fast float %8042, %8027
  %8048 = fadd fast float %8045, %8028
  %8049 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8050 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8051 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  br label %8052

; <label>:8052                                    ; preds = %8029, %7912
  %8053 = phi float [ %8049, %8029 ], [ %8026, %7912 ]
  %8054 = phi float [ %8050, %8029 ], [ %8027, %7912 ]
  %8055 = phi float [ %8051, %8029 ], [ %8028, %7912 ]
  %8056 = fmul fast float %7940, 9.843750e-01
  %8057 = fadd fast float %8056, 7.812500e-03
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8057, float %6000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.ResRet.f32 %8058, 3
  %8063 = fsub fast float %8061, %8059
  %8064 = fsub fast float %8062, %8060
  %8065 = fmul fast float %8063, %6006
  %8066 = fmul fast float %8064, %6006
  %8067 = fadd fast float %8065, %8059
  %8068 = fadd fast float %8066, %8060
  %8069 = fmul fast float %8067, %5703
  %8070 = fmul fast float %8067, %5704
  %8071 = fmul fast float %8067, %5746
  %8072 = fadd fast float %8069, %8068
  %8073 = fadd fast float %8070, %8068
  %8074 = fadd fast float %8071, %8068
  br i1 %6019, label %8075, label %8098

; <label>:8075                                    ; preds = %8052
  %8076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %7940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = fadd fast float %8077, -5.000000e-01
  %8081 = fadd fast float %8078, -5.000000e-01
  %8082 = fadd fast float %8079, -5.000000e-01
  %8083 = fmul fast float %5703, 4.000000e+00
  %8084 = fmul fast float %8083, %8020
  %8085 = fmul fast float %8084, %8080
  %8086 = fmul fast float %5704, 4.000000e+00
  %8087 = fmul fast float %8086, %8021
  %8088 = fmul fast float %8087, %8081
  %8089 = fmul fast float %5746, 4.000000e+00
  %8090 = fmul fast float %8089, %8022
  %8091 = fmul fast float %8090, %8082
  %8092 = fadd fast float %8085, %8072
  %8093 = fadd fast float %8088, %8073
  %8094 = fadd fast float %8091, %8074
  %8095 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8096 = call float @dx.op.unary.f32(i32 7, float %8093)  ; Saturate(value)
  %8097 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  br label %8098

; <label>:8098                                    ; preds = %8075, %8052
  %8099 = phi float [ %8095, %8075 ], [ %8072, %8052 ]
  %8100 = phi float [ %8096, %8075 ], [ %8073, %8052 ]
  %8101 = phi float [ %8097, %8075 ], [ %8074, %8052 ]
  %8102 = call float @dx.op.binary.f32(i32 35, float %8100, float %8101)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 35, float %8099, float %8102)  ; FMax(a,b)
  %8104 = fsub fast float 1.000000e+00, %8103
  %8105 = call float @dx.op.binary.f32(i32 35, float %7965, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8106 = fdiv fast float %4423, %8105
  %8107 = fmul fast float %6077, %8106
  %8108 = fmul fast float %6079, %8106
  %8109 = fmul fast float %6081, %8106
  %8110 = call float @dx.op.unary.f32(i32 21, float %8107)  ; Exp(value)
  %8111 = call float @dx.op.unary.f32(i32 21, float %8108)  ; Exp(value)
  %8112 = call float @dx.op.unary.f32(i32 21, float %8109)  ; Exp(value)
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8116 = select i1 %6074, float %8113, float 0.000000e+00
  %8117 = select i1 %6075, float %8114, float 0.000000e+00
  %8118 = select i1 %6076, float %8115, float 0.000000e+00
  %8119 = fsub fast float -0.000000e+00, %5706
  %8120 = fsub fast float -0.000000e+00, %5707
  %8121 = fsub fast float -0.000000e+00, %5708
  %8122 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %8119, float %8120, float %8121)  ; Dot3(ax,ay,az,bx,by,bz)
  %8123 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8124 = fmul fast float %8123, %7678
  %8125 = fmul fast float %8123, 9.843750e-01
  %8126 = fadd fast float %8125, 7.812500e-03
  %8127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8126, float %6000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8128 = extractvalue %dx.types.ResRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.ResRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.ResRet.f32 %8127, 2
  %8131 = extractvalue %dx.types.ResRet.f32 %8127, 3
  %8132 = fsub fast float %8130, %8128
  %8133 = fsub fast float %8131, %8129
  %8134 = fmul fast float %8132, %6006
  %8135 = fmul fast float %8133, %6006
  %8136 = fadd fast float %8134, %8128
  %8137 = fadd fast float %8135, %8129
  %8138 = fmul fast float %8136, %5703
  %8139 = fmul fast float %8136, %5704
  %8140 = fmul fast float %8136, %5746
  %8141 = fadd fast float %8138, %8137
  %8142 = fadd fast float %8139, %8137
  %8143 = fadd fast float %8140, %8137
  br i1 %6019, label %8144, label %8167

; <label>:8144                                    ; preds = %8098
  %8145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5069, float %8123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8146 = extractvalue %dx.types.ResRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.ResRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.ResRet.f32 %8145, 2
  %8149 = fadd fast float %8146, -5.000000e-01
  %8150 = fadd fast float %8147, -5.000000e-01
  %8151 = fadd fast float %8148, -5.000000e-01
  %8152 = fmul fast float %5703, 4.000000e+00
  %8153 = fmul fast float %8152, %8020
  %8154 = fmul fast float %8153, %8149
  %8155 = fmul fast float %5704, 4.000000e+00
  %8156 = fmul fast float %8155, %8021
  %8157 = fmul fast float %8156, %8150
  %8158 = fmul fast float %5746, 4.000000e+00
  %8159 = fmul fast float %8158, %8022
  %8160 = fmul fast float %8159, %8151
  %8161 = fadd fast float %8154, %8141
  %8162 = fadd fast float %8157, %8142
  %8163 = fadd fast float %8160, %8143
  %8164 = call float @dx.op.unary.f32(i32 7, float %8161)  ; Saturate(value)
  %8165 = call float @dx.op.unary.f32(i32 7, float %8162)  ; Saturate(value)
  %8166 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  br label %8167

; <label>:8167                                    ; preds = %8144, %8098
  %8168 = phi float [ %8164, %8144 ], [ %8141, %8098 ]
  %8169 = phi float [ %8165, %8144 ], [ %8142, %8098 ]
  %8170 = phi float [ %8166, %8144 ], [ %8143, %8098 ]
  %8171 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8172 = call float @dx.op.binary.f32(i32 35, float %8168, float %8171)  ; FMax(a,b)
  %8173 = fsub fast float 1.000000e+00, %8172
  %8174 = fmul fast float %6136, %6142
  %8175 = fadd fast float %6135, %8174
  %8176 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8177 = fsub fast float %7952, %5754
  %8178 = fsub fast float %7953, %5755
  %8179 = fsub fast float %7954, %5756
  %8180 = call float @dx.op.dot3.f32(i32 55, float %8177, float %8178, float %8179, float %8177, float %8178, float %8179)  ; Dot3(ax,ay,az,bx,by,bz)
  %8181 = call float @dx.op.unary.f32(i32 25, float %8180)  ; Rsqrt(value)
  %8182 = fmul fast float %8177, %8181
  %8183 = fmul fast float %8178, %8181
  %8184 = fmul fast float %8179, %8181
  %8185 = call float @dx.op.dot3.f32(i32 55, float %8119, float %8120, float %8121, float %8182, float %8183, float %8184)  ; Dot3(ax,ay,az,bx,by,bz)
  %8186 = fmul fast float %8185, %8185
  %8187 = call float @dx.op.unary.f32(i32 6, float %8123)  ; FAbs(value)
  %8188 = call float @dx.op.binary.f32(i32 35, float %8176, float 0x3F847AE140000000)  ; FMax(a,b)
  %8189 = fmul fast float %8188, %8188
  %8190 = fmul fast float %8189, %8189
  %8191 = fsub fast float 1.000000e+00, %8190
  %8192 = fmul fast float %7970, %8191
  %8193 = fadd fast float %8192, %8190
  %8194 = bitcast float %8193 to i32
  %8195 = ashr i32 %8194, 1
  %8196 = add nsw i32 %8195, 532487669
  %8197 = bitcast i32 %8196 to float
  %8198 = fadd fast float %8197, %5748
  %8199 = fmul fast float %8190, %8186
  %8200 = fsub fast float 1.000000e+00, %8186
  %8201 = fadd fast float %8200, %8199
  %8202 = fmul fast float %8187, %8187
  %8203 = fmul fast float %8202, %8191
  %8204 = fadd fast float %8203, %8190
  %8205 = bitcast float %8204 to i32
  %8206 = ashr i32 %8205, 1
  %8207 = add nsw i32 %8206, 532487669
  %8208 = bitcast i32 %8207 to float
  %8209 = fadd fast float %8208, %8187
  %8210 = fmul fast float %8201, %8201
  %8211 = fmul fast float %8210, %8198
  %8212 = fmul fast float %8211, %8209
  %8213 = fdiv fast float 1.000000e+00, %8212
  %8214 = bitcast float %8190 to i32
  %8215 = sitofp i32 %8214 to float
  %8216 = fmul fast float %8215, 0x3FE7F73180000000
  %8217 = fadd fast float %8216, 0x41AFE27C40000000
  %8218 = fptosi float %8217 to i32
  %8219 = bitcast i32 %8218 to float
  %8220 = fadd fast float %8219, %8000
  %8221 = bitcast float %8220 to i32
  %8222 = sub nsw i32 2129859010, %8221
  %8223 = bitcast i32 %8222 to float
  %8224 = fmul fast float %8190, %8213
  %8225 = fmul fast float %8224, %8219
  %8226 = fmul fast float %8225, %8223
  br i1 %7663, label %8227, label %8237

; <label>:8227                                    ; preds = %8167
  %8228 = fmul fast float %8124, %8116
  %8229 = fmul fast float %8124, %8117
  %8230 = fmul fast float %8124, %8118
  %8231 = fmul fast float %8228, %8173
  %8232 = fmul fast float %8231, %8226
  %8233 = fmul fast float %8229, %8173
  %8234 = fmul fast float %8233, %8226
  %8235 = fmul fast float %8230, %8173
  %8236 = fmul fast float %8235, %8226
  br label %8237

; <label>:8237                                    ; preds = %8227, %8167
  %8238 = phi float [ %8232, %8227 ], [ 0.000000e+00, %8167 ]
  %8239 = phi float [ %8234, %8227 ], [ 0.000000e+00, %8167 ]
  %8240 = phi float [ %8236, %8227 ], [ 0.000000e+00, %8167 ]
  %8241 = fmul fast float %8053, %8007
  %8242 = fmul fast float %8054, %8007
  %8243 = fmul fast float %8055, %8007
  %8244 = fsub fast float 1.000000e+00, %7941
  %8245 = bitcast float %8244 to i32
  %8246 = sitofp i32 %8245 to float
  %8247 = fmul fast float %8246, 5.000000e+00
  %8248 = fadd fast float %8247, 0xC1EFBF8940000000
  %8249 = fptosi float %8248 to i32
  %8250 = bitcast i32 %8249 to float
  %8251 = fmul fast float %8250, %5070
  %8252 = fmul fast float %8104, %8251
  %8253 = fmul fast float %8252, %6069
  %8254 = fmul fast float %8252, %6070
  %8255 = fmul fast float %8252, %6071
  %8256 = fadd fast float %8253, %8241
  %8257 = fadd fast float %8254, %8242
  %8258 = fadd fast float %8255, %8243
  %8259 = fmul fast float %8256, %7947
  %8260 = fmul fast float %8257, %7947
  %8261 = fmul fast float %8258, %7947
  %8262 = fadd fast float %8259, %8238
  %8263 = fadd fast float %8260, %8239
  %8264 = fadd fast float %8261, %8240
  %8265 = fmul fast float %7929, %5066
  %8266 = fmul fast float %8265, %7947
  %8267 = fmul fast float %8266, %8104
  %8268 = fmul fast float %7930, %5066
  %8269 = fmul fast float %8268, %7947
  %8270 = fmul fast float %8269, %8104
  %8271 = fmul fast float %7931, %5066
  %8272 = fmul fast float %8271, %7947
  %8273 = fmul fast float %8272, %8104
  %8274 = fadd fast float %8267, %7607
  %8275 = fadd fast float %8270, %7608
  %8276 = fadd fast float %8273, %7609
  %8277 = fmul fast float %8265, %8262
  %8278 = fmul fast float %8268, %8263
  %8279 = fmul fast float %8271, %8264
  %8280 = fadd fast float %8277, %7604
  %8281 = fadd fast float %8278, %7605
  %8282 = fadd fast float %8279, %7606
  br label %7737

; <label>:8283                                    ; preds = %7737
  br label %8284

; <label>:8284                                    ; preds = %8283, %7570
  %8285 = phi float [ %7572, %7570 ], [ %7738, %8283 ]
  %8286 = phi float [ %7573, %7570 ], [ %7739, %8283 ]
  %8287 = phi float [ %7574, %7570 ], [ %7740, %8283 ]
  %8288 = phi float [ %7575, %7570 ], [ %7741, %8283 ]
  %8289 = phi float [ %7576, %7570 ], [ %7742, %8283 ]
  %8290 = phi float [ %7577, %7570 ], [ %7743, %8283 ]
  %8291 = add i32 %7571, 1
  %8292 = icmp ugt i32 %8291, %7567
  br i1 %8292, label %8293, label %7570

; <label>:8293                                    ; preds = %8284
  br label %8294

; <label>:8294                                    ; preds = %8293, %7520, %7510
  %8295 = phi float [ %7511, %7510 ], [ %7511, %7520 ], [ %8285, %8293 ]
  %8296 = phi float [ %7512, %7510 ], [ %7512, %7520 ], [ %8286, %8293 ]
  %8297 = phi float [ %7513, %7510 ], [ %7513, %7520 ], [ %8287, %8293 ]
  %8298 = phi float [ %7514, %7510 ], [ %7514, %7520 ], [ %8288, %8293 ]
  %8299 = phi float [ %7515, %7510 ], [ %7515, %7520 ], [ %8289, %8293 ]
  %8300 = phi float [ %7516, %7510 ], [ %7516, %7520 ], [ %8290, %8293 ]
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = fmul fast float %8302, %6149
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 3
  %8306 = fsub fast float 1.000000e+00, %5073
  %8307 = call float @dx.op.unary.f32(i32 7, float %8306)  ; Saturate(value)
  %8308 = fadd fast float %8300, %5072
  %8309 = fmul fast float %8308, %5073
  %8310 = fmul fast float %8307, %8305
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 3
  %8313 = fmul fast float %8298, %5700
  %8314 = fmul fast float %8299, %5701
  %8315 = fmul fast float %8300, %5702
  %8316 = fcmp fast ogt float %93, %179
  %8317 = and i1 %8316, %5505
  %8318 = or i1 %5511, %8317
  %8319 = icmp eq i32 %5504, 2
  %8320 = fcmp fast ole float %93, %179
  %8321 = and i1 %8320, %8319
  %8322 = or i1 %8321, %8318
  br i1 %8317, label %8323, label %8572

; <label>:8323                                    ; preds = %8294
  %8324 = fmul fast float %6229, %102
  %8325 = fmul fast float %6230, %103
  %8326 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  %8327 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8328 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8326, float %8327, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.ResRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.ResRet.f32 %8328, 2
  %8332 = extractvalue %dx.types.ResRet.f32 %8328, 3
  %8333 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8326, float %8327, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = extractvalue %dx.types.ResRet.f32 %8333, 3
  %8338 = call float @dx.op.binary.f32(i32 35, float %8330, float %8331)  ; FMax(a,b)
  %8339 = call float @dx.op.binary.f32(i32 35, float %8329, float %8338)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 35, float %8339, float %8332)  ; FMax(a,b)
  %8341 = call float @dx.op.binary.f32(i32 36, float %8335, float %8336)  ; FMin(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8334, float %8341)  ; FMin(a,b)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8342, float %8337)  ; FMin(a,b)
  %8344 = fmul fast float %8340, 2.550000e+02
  %8345 = fadd fast float %8344, 0x3F70101020000000
  %8346 = fptoui float %8345 to i32
  %8347 = fmul fast float %8343, 2.550000e+02
  %8348 = fadd fast float %8347, 0x3F70101020000000
  %8349 = fptoui float %8348 to i32
  %8350 = icmp ult i32 %8346, %8349
  br i1 %8350, label %8351, label %8517

; <label>:8351                                    ; preds = %8323
  %8352 = fcmp fast ogt float %92, 9.843750e-01
  %8353 = fadd fast float %93, -4.000000e+00
  %8354 = select i1 %8352, float -4.000000e+00, float %8353
  %8355 = call float @dx.op.binary.f32(i32 35, float %8354, float 0.000000e+00)  ; FMax(a,b)
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = fadd fast float %8357, %8355
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = fmul fast float %8358, %8359
  %8361 = call float @dx.op.unary.f32(i32 23, float %8360)  ; Log(value)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8356, 3
  %8363 = fmul fast float %8362, %8361
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8366 = fmul fast float %8363, %8365
  %8367 = call float @dx.op.unary.f32(i32 7, float %8366)  ; Saturate(value)
  %8368 = uitofp i32 %8346 to float
  %8369 = uitofp i32 %8349 to float
  %8370 = fadd fast float %8368, 5.000000e-01
  %8371 = fadd fast float %8369, 5.000000e-01
  %8372 = fmul fast float %8365, %8370
  %8373 = fmul fast float %8365, %8371
  %8374 = fadd fast float %8372, 0x3F0FFB4800000000
  %8375 = fadd fast float %8373, 0xBF0FFB4800000000
  %8376 = call float @dx.op.binary.f32(i32 35, float %8367, float %8374)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 36, float %8376, float %8375)  ; FMin(a,b)
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 1
  %8380 = extractvalue %dx.types.CBufRet.f32 %8378, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8378, 0
  %8382 = fmul fast float %8379, %8377
  %8383 = fadd fast float %8381, %8382
  %8384 = fadd fast float %8381, %8380
  %8385 = fsub fast float %8379, %8380
  %8386 = fadd fast float %8385, %8381
  %8387 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8387, float %8386)  ; FMin(a,b)
  %8389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8326, float %8327, float %8388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.ResRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.ResRet.f32 %8389, 2
  %8393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.i32 %8393, 0
  %8395 = extractvalue %dx.types.CBufRet.i32 %8393, 1
  %8396 = uitofp i32 %8394 to float
  %8397 = uitofp i32 %8395 to float
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 0
  %8400 = extractvalue %dx.types.CBufRet.f32 %8398, 1
  %8401 = fmul fast float %8396, %8326
  %8402 = fmul fast float %8397, %8327
  %8403 = fadd fast float %8401, -5.000000e-01
  %8404 = fadd fast float %8402, -5.000000e-01
  %8405 = call float @dx.op.unary.f32(i32 22, float %8403)  ; Frc(value)
  %8406 = call float @dx.op.unary.f32(i32 22, float %8404)  ; Frc(value)
  %8407 = fmul fast float %8405, %8405
  %8408 = fmul fast float %8407, %8405
  %8409 = fsub fast float 3.000000e+00, %8405
  %8410 = fmul fast float %8407, %8409
  %8411 = fmul fast float %8405, 3.000000e+00
  %8412 = fmul fast float %8408, 3.000000e+00
  %8413 = fmul fast float %8407, 6.000000e+00
  %8414 = fsub fast float %8412, %8413
  %8415 = fadd fast float %8414, 4.000000e+00
  %8416 = fmul fast float %8415, 0x3FC5555560000000
  %8417 = fmul fast float %8408, -3.000000e+00
  %8418 = fadd fast float %8407, %8405
  %8419 = fmul fast float %8418, 3.000000e+00
  %8420 = fadd fast float %8417, 1.000000e+00
  %8421 = fadd fast float %8420, %8419
  %8422 = fmul fast float %8408, 0x3FC5555560000000
  %8423 = fmul fast float %8406, %8406
  %8424 = fmul fast float %8423, %8406
  %8425 = fsub fast float 3.000000e+00, %8406
  %8426 = fmul fast float %8423, %8425
  %8427 = fmul fast float %8406, 3.000000e+00
  %8428 = fmul fast float %8424, 3.000000e+00
  %8429 = fmul fast float %8423, 6.000000e+00
  %8430 = fsub fast float %8428, %8429
  %8431 = fadd fast float %8430, 4.000000e+00
  %8432 = fmul fast float %8431, 0x3FC5555560000000
  %8433 = fmul fast float %8424, -3.000000e+00
  %8434 = fadd fast float %8423, %8406
  %8435 = fmul fast float %8434, 3.000000e+00
  %8436 = fadd fast float %8433, 1.000000e+00
  %8437 = fadd fast float %8436, %8435
  %8438 = fmul fast float %8424, 0x3FC5555560000000
  %8439 = fadd fast float %8405, 1.000000e+00
  %8440 = fsub fast float 1.000000e+00, %8411
  %8441 = fadd fast float %8440, %8410
  %8442 = fadd fast float %8441, %8415
  %8443 = fmul fast float %8442, 0x3FC5555560000000
  %8444 = fdiv fast float %8416, %8443
  %8445 = fsub fast float %8439, %8444
  %8446 = fsub fast float 1.000000e+00, %8405
  %8447 = fadd fast float %8421, %8408
  %8448 = fmul fast float %8447, 0x3FC5555560000000
  %8449 = fdiv fast float %8422, %8448
  %8450 = fadd fast float %8446, %8449
  %8451 = fadd fast float %8406, 1.000000e+00
  %8452 = fsub fast float 1.000000e+00, %8427
  %8453 = fadd fast float %8452, %8426
  %8454 = fadd fast float %8453, %8431
  %8455 = fmul fast float %8454, 0x3FC5555560000000
  %8456 = fdiv fast float %8432, %8455
  %8457 = fsub fast float %8451, %8456
  %8458 = fsub fast float 1.000000e+00, %8406
  %8459 = fadd fast float %8437, %8424
  %8460 = fmul fast float %8459, 0x3FC5555560000000
  %8461 = fdiv fast float %8438, %8460
  %8462 = fadd fast float %8461, %8458
  %8463 = fmul fast float %8445, %8399
  %8464 = fsub fast float %8326, %8463
  %8465 = fmul fast float %8450, %8399
  %8466 = fadd fast float %8465, %8326
  %8467 = fmul fast float %8462, %8400
  %8468 = fadd fast float %8467, %8327
  %8469 = fmul fast float %8457, %8400
  %8470 = fsub fast float %8327, %8469
  %8471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8464, float %8470, float %8388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8472 = extractvalue %dx.types.ResRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.ResRet.f32 %8471, 1
  %8474 = extractvalue %dx.types.ResRet.f32 %8471, 2
  %8475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8466, float %8470, float %8388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8476 = extractvalue %dx.types.ResRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.ResRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.ResRet.f32 %8475, 2
  %8479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8464, float %8468, float %8388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8480 = extractvalue %dx.types.ResRet.f32 %8479, 0
  %8481 = extractvalue %dx.types.ResRet.f32 %8479, 1
  %8482 = extractvalue %dx.types.ResRet.f32 %8479, 2
  %8483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8466, float %8468, float %8388, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = fsub fast float %8480, %8472
  %8488 = fsub fast float %8481, %8473
  %8489 = fsub fast float %8482, %8474
  %8490 = fmul fast float %8487, %8460
  %8491 = fmul fast float %8488, %8460
  %8492 = fmul fast float %8489, %8460
  %8493 = fadd fast float %8490, %8472
  %8494 = fadd fast float %8491, %8473
  %8495 = fadd fast float %8492, %8474
  %8496 = fsub fast float %8484, %8476
  %8497 = fsub fast float %8485, %8477
  %8498 = fsub fast float %8486, %8478
  %8499 = fmul fast float %8496, %8460
  %8500 = fmul fast float %8497, %8460
  %8501 = fmul fast float %8498, %8460
  %8502 = fsub fast float %8476, %8493
  %8503 = fadd fast float %8502, %8499
  %8504 = fsub fast float %8477, %8494
  %8505 = fadd fast float %8504, %8500
  %8506 = fsub fast float %8478, %8495
  %8507 = fadd fast float %8506, %8501
  %8508 = fmul fast float %8503, %8448
  %8509 = fmul fast float %8505, %8448
  %8510 = fmul fast float %8507, %8448
  %8511 = fadd fast float %8508, %8493
  %8512 = fadd fast float %8509, %8494
  %8513 = fadd fast float %8510, %8495
  %8514 = fmul fast float %8511, %6284
  %8515 = fmul fast float %8512, %6284
  %8516 = fmul fast float %8513, %6284
  br label %8517

; <label>:8517                                    ; preds = %8351, %8323
  %8518 = phi float [ %8390, %8351 ], [ 1.000000e+00, %8323 ]
  %8519 = phi float [ %8391, %8351 ], [ 1.000000e+00, %8323 ]
  %8520 = phi float [ %8392, %8351 ], [ 1.000000e+00, %8323 ]
  %8521 = phi float [ %8514, %8351 ], [ 0.000000e+00, %8323 ]
  %8522 = phi float [ %8515, %8351 ], [ 0.000000e+00, %8323 ]
  %8523 = phi float [ %8516, %8351 ], [ 0.000000e+00, %8323 ]
  %8524 = call float @dx.op.dot3.f32(i32 55, float %8518, float %8519, float %8520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8525 = call float @dx.op.dot3.f32(i32 55, float %8521, float %8522, float %8523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8526 = select i1 %219, float %8524, float %8518
  %8527 = select i1 %219, float %8524, float %8519
  %8528 = select i1 %219, float 1.000000e+00, float %8520
  %8529 = select i1 %219, float %8525, float %8521
  %8530 = select i1 %219, float 0.000000e+00, float %8522
  %8531 = select i1 %219, float 0.000000e+00, float %8523
  %8532 = fmul fast float %8526, %8313
  %8533 = fmul fast float %8527, %8314
  %8534 = fmul fast float %8528, %8315
  %8535 = fadd fast float %8532, %8529
  %8536 = fadd fast float %8533, %8530
  %8537 = fadd fast float %8531, %8534
  %8538 = fmul fast float %8526, %8295
  %8539 = fmul fast float %8527, %8296
  %8540 = fmul fast float %8528, %8297
  %8541 = fmul fast float %127, %6229
  %8542 = fmul fast float %129, %6230
  %8543 = fsub fast float 1.000000e+00, %8541
  %8544 = fsub fast float 1.000000e+00, %8542
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = extractvalue %dx.types.CBufRet.f32 %8545, 2
  %8549 = fmul fast float %8543, %8546
  %8550 = fmul fast float %8543, %8547
  %8551 = fmul fast float %8543, %8548
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = fmul fast float %8544, %8553
  %8557 = fmul fast float %8544, %8554
  %8558 = fmul fast float %8544, %8555
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 0
  %8561 = extractvalue %dx.types.CBufRet.f32 %8559, 1
  %8562 = extractvalue %dx.types.CBufRet.f32 %8559, 2
  %8563 = fadd fast float %8556, %8560
  %8564 = fadd fast float %8563, %8549
  %8565 = fadd fast float %8557, %8561
  %8566 = fadd fast float %8565, %8550
  %8567 = fadd fast float %8558, %8562
  %8568 = fadd fast float %8567, %8551
  %8569 = fmul fast float %8564, %179
  %8570 = fmul fast float %8566, %179
  %8571 = fmul fast float %8568, %179
  br label %8572

; <label>:8572                                    ; preds = %8517, %8294
  %8573 = phi float [ %8569, %8517 ], [ %157, %8294 ]
  %8574 = phi float [ %8570, %8517 ], [ %158, %8294 ]
  %8575 = phi float [ %8571, %8517 ], [ %159, %8294 ]
  %8576 = phi float [ %179, %8517 ], [ %93, %8294 ]
  %8577 = phi float [ %8535, %8517 ], [ %8313, %8294 ]
  %8578 = phi float [ %8536, %8517 ], [ %8314, %8294 ]
  %8579 = phi float [ %8537, %8517 ], [ %8315, %8294 ]
  %8580 = phi float [ %8538, %8517 ], [ %8295, %8294 ]
  %8581 = phi float [ %8539, %8517 ], [ %8296, %8294 ]
  %8582 = phi float [ %8540, %8517 ], [ %8297, %8294 ]
  %8583 = phi float [ %8518, %8517 ], [ 1.000000e+00, %8294 ]
  br i1 %8322, label %9725, label %8584

; <label>:8584                                    ; preds = %8572
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = extractvalue %dx.types.CBufRet.f32 %8585, 3
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.f32 %8590, 1
  %8593 = extractvalue %dx.types.CBufRet.f32 %8590, 2
  %8594 = extractvalue %dx.types.CBufRet.f32 %8590, 3
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.CBufRet.f32 %8595, 1
  %8598 = extractvalue %dx.types.CBufRet.f32 %8595, 2
  %8599 = extractvalue %dx.types.CBufRet.f32 %8595, 3
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.CBufRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.CBufRet.f32 %8600, 2
  %8604 = extractvalue %dx.types.CBufRet.f32 %8600, 3
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 3
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 3
  %8609 = extractvalue %dx.types.CBufRet.f32 %8607, 0
  %8610 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8611 = extractvalue %dx.types.CBufRet.f32 %8607, 2
  %8612 = fcmp fast olt float %8611, -5.000000e-01
  %8613 = call float @dx.op.dot3.f32(i32 55, float %8573, float %8574, float %8575, float %8573, float %8574, float %8575)  ; Dot3(ax,ay,az,bx,by,bz)
  %8614 = call float @dx.op.unary.f32(i32 25, float %8613)  ; Rsqrt(value)
  %8615 = fmul fast float %8614, %8613
  %8616 = fmul fast float %8614, %8573
  %8617 = fmul fast float %8614, %8574
  %8618 = fmul fast float %8614, %8575
  %8619 = fadd fast float %8615, %8589
  %8620 = call float @dx.op.dot3.f32(i32 55, float %8616, float %8617, float %8618, float %8586, float %8587, float %8588)  ; Dot3(ax,ay,az,bx,by,bz)
  %8621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.i32 %8621, 1
  %8623 = and i32 %8622, 1
  %8624 = icmp ne i32 %8623, 0
  %8625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8625, 2
  %8627 = fcmp fast ogt float %8626, 0.000000e+00
  %8628 = and i1 %8624, %8627
  br i1 %8628, label %8629, label %9035, !dx.controlflow.hints !123

; <label>:8629                                    ; preds = %8584
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 3
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8636 = fsub fast float %8633, %8635
  %8637 = and i32 %8622, 2
  %8638 = extractvalue %dx.types.CBufRet.i32 %8621, 0
  %8639 = call i32 @dx.op.binary.i32(i32 40, i32 %8638, i32 3)  ; UMin(a,b)
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.CBufRet.f32 %8634, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8634, 1
  %8645 = fsub fast float %8641, %8643
  %8646 = fsub fast float %8642, %8644
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = fcmp fast ogt float %8648, 0.000000e+00
  %8650 = fsub fast float -0.000000e+00, %8645
  %8651 = fsub fast float -0.000000e+00, %8646
  %8652 = call float @dx.op.dot2.f32(i32 54, float %8616, float %8617, float %8616, float %8617)  ; Dot2(ax,ay,bx,by)
  %8653 = call float @dx.op.dot2.f32(i32 54, float %8616, float %8617, float %8650, float %8651)  ; Dot2(ax,ay,bx,by)
  %8654 = fmul fast float %8653, 2.000000e+00
  %8655 = call float @dx.op.dot2.f32(i32 54, float %8650, float %8651, float %8650, float %8651)  ; Dot2(ax,ay,bx,by)
  %8656 = fmul fast float %8648, %8648
  %8657 = fsub fast float %8655, %8656
  %8658 = fmul fast float %8654, %8654
  %8659 = fmul fast float %8652, 4.000000e+00
  %8660 = fmul fast float %8659, %8657
  %8661 = fsub fast float %8658, %8660
  %8662 = fcmp fast ogt float %8661, 0.000000e+00
  br i1 %8662, label %8663, label %8678

; <label>:8663                                    ; preds = %8629
  %8664 = fcmp fast ogt float %8654, 0.000000e+00
  %8665 = call float @dx.op.unary.f32(i32 24, float %8661)  ; Sqrt(value)
  %8666 = fsub fast float -0.000000e+00, %8665
  %8667 = select i1 %8664, float %8665, float %8666
  %8668 = fadd fast float %8667, %8654
  %8669 = fmul float %8668, -5.000000e-01
  %8670 = fdiv fast float %8669, %8652
  %8671 = call float @dx.op.binary.f32(i32 35, float %8670, float 0.000000e+00)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 36, float %8615, float %8671)  ; FMin(a,b)
  %8673 = fdiv fast float %8657, %8669
  %8674 = call float @dx.op.binary.f32(i32 35, float %8673, float 0.000000e+00)  ; FMax(a,b)
  %8675 = call float @dx.op.binary.f32(i32 36, float %8615, float %8674)  ; FMin(a,b)
  %8676 = call float @dx.op.binary.f32(i32 36, float %8672, float %8675)  ; FMin(a,b)
  %8677 = call float @dx.op.binary.f32(i32 35, float %8672, float %8675)  ; FMax(a,b)
  br label %8678

; <label>:8678                                    ; preds = %8663, %8629
  %8679 = phi float [ %8677, %8663 ], [ -1.000000e+00, %8629 ]
  %8680 = phi float [ %8676, %8663 ], [ -1.000000e+00, %8629 ]
  %8681 = phi i1 [ true, %8663 ], [ false, %8629 ]
  %8682 = and i1 %8649, %8681
  br i1 %8682, label %8683, label %8685

; <label>:8683                                    ; preds = %8678
  %8684 = fcmp fast oeq float %8680, %8679
  br i1 %8684, label %8988, label %8686

; <label>:8685                                    ; preds = %8678
  br i1 %8649, label %8988, label %8686

; <label>:8686                                    ; preds = %8685, %8683
  %8687 = phi float [ %8615, %8685 ], [ %8679, %8683 ]
  %8688 = phi float [ 0.000000e+00, %8685 ], [ %8680, %8683 ]
  %8689 = icmp ne i32 %8637, 0
  %8690 = fmul fast float %8687, %8618
  %8691 = fadd fast float %8690, %8631
  %8692 = fmul fast float %8691, %8687
  %8693 = select i1 %8689, float 0.000000e+00, float %8692
  %8694 = fcmp fast oeq float %8618, 0.000000e+00
  %8695 = fdiv fast float %8636, %8618
  %8696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8695)  ; FMax(a,b)
  %8697 = select i1 %8694, float %8687, float %8696
  %8698 = call float @dx.op.binary.f32(i32 36, float %8687, float %8697)  ; FMin(a,b)
  %8699 = fcmp fast ogt float %8618, 0.000000e+00
  %8700 = fcmp fast olt float %8636, 0.000000e+00
  br i1 %8699, label %8701, label %8758

; <label>:8701                                    ; preds = %8686
  %8702 = icmp eq i32 %8637, 0
  br i1 %8700, label %8703, label %8747

; <label>:8703                                    ; preds = %8701
  %8704 = select i1 %8702, float %8687, float 0.000000e+00
  %8705 = fsub fast float -0.000000e+00, %8704
  %8706 = call float @dx.op.unary.f32(i32 6, float %8705)  ; FAbs(value)
  %8707 = fmul fast float %8704, %8618
  %8708 = fadd fast float %8707, %8631
  %8709 = fmul fast float %8706, %8708
  %8710 = fsub fast float %8693, %8709
  %8711 = fsub fast float %8687, %8706
  %8712 = select i1 %8702, float %8711, float 0.000000e+00
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.CBufRet.f32 %8717, 2
  %8721 = extractvalue %dx.types.CBufRet.f32 %8717, 3
  %8722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8723 = extractvalue %dx.types.CBufRet.f32 %8722, 3
  %8724 = call float @dx.op.binary.f32(i32 36, float %8710, float %8723)  ; FMin(a,b)
  %8725 = fmul fast float %8721, %8712
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float %8718, %8714
  %8728 = fsub fast float %8719, %8715
  %8729 = fsub fast float %8720, %8716
  %8730 = fmul fast float %8726, %8727
  %8731 = fmul fast float %8726, %8728
  %8732 = fmul fast float %8726, %8729
  %8733 = fadd fast float %8730, %8714
  %8734 = fadd fast float %8731, %8715
  %8735 = fadd fast float %8732, %8716
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.CBufRet.f32 %8736, 1
  %8739 = fadd fast float %8738, %8737
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8736, 2
  %8742 = extractvalue %dx.types.CBufRet.f32 %8736, 3
  %8743 = fadd fast float %8742, %8741
  %8744 = call float @dx.op.unary.f32(i32 7, float %8743)  ; Saturate(value)
  %8745 = fmul fast float %8740, %8724
  %8746 = fmul fast float %8745, %8744
  br label %8988

; <label>:8747                                    ; preds = %8701
  br i1 %8702, label %8748, label %8769

; <label>:8748                                    ; preds = %8747
  %8749 = call float @dx.op.binary.f32(i32 36, float %8698, float %8688)  ; FMin(a,b)
  %8750 = fsub fast float %8698, %8749
  %8751 = fsub fast float %8750, %8687
  %8752 = call float @dx.op.unary.f32(i32 6, float %8751)  ; FAbs(value)
  %8753 = fadd fast float %8750, %8687
  %8754 = fmul fast float %8753, %8618
  %8755 = fadd fast float %8754, %8631
  %8756 = fmul fast float %8755, %8752
  %8757 = fsub fast float %8693, %8756
  br label %8769

; <label>:8758                                    ; preds = %8686
  br i1 %8700, label %8759, label %8769

; <label>:8759                                    ; preds = %8758
  %8760 = call float @dx.op.binary.f32(i32 35, float %8688, float %8698)  ; FMax(a,b)
  %8761 = icmp eq i32 %8637, 0
  %8762 = select i1 %8761, float %8698, float 0.000000e+00
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = call float @dx.op.unary.f32(i32 6, float %8763)  ; FAbs(value)
  %8765 = fmul fast float %8762, %8618
  %8766 = fadd fast float %8765, %8631
  %8767 = fmul fast float %8764, %8766
  %8768 = fsub fast float %8693, %8767
  br label %8769

; <label>:8769                                    ; preds = %8759, %8758, %8748, %8747
  %8770 = phi float [ %8688, %8747 ], [ %8688, %8748 ], [ %8760, %8759 ], [ %8688, %8758 ]
  %8771 = phi float [ 0.000000e+00, %8747 ], [ %8752, %8748 ], [ %8764, %8759 ], [ 0.000000e+00, %8758 ]
  %8772 = phi float [ %8693, %8747 ], [ %8757, %8748 ], [ %8768, %8759 ], [ %8693, %8758 ]
  %8773 = phi float [ %8698, %8747 ], [ %8698, %8748 ], [ %8687, %8759 ], [ %8687, %8758 ]
  %8774 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8774, align 4, !tbaa !124, !noalias !126
  %8775 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8775, align 4, !tbaa !124, !noalias !126
  %8776 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8776, align 4, !tbaa !124, !noalias !126
  %8777 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8777, align 4, !tbaa !124, !noalias !126
  %8778 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8778, align 4, !tbaa !124, !noalias !126
  %8779 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8779, align 4, !tbaa !124, !noalias !126
  %8780 = icmp sgt i32 %8639, 0
  br i1 %8780, label %8781, label %8842

; <label>:8781                                    ; preds = %8769
  br label %8782

; <label>:8782                                    ; preds = %8831, %8781
  %8783 = phi i32 [ %8832, %8831 ], [ 0, %8781 ]
  %8784 = phi i32 [ %8833, %8831 ], [ 0, %8781 ]
  %8785 = add nuw i32 %8784, 171
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8785)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 0
  %8788 = extractvalue %dx.types.CBufRet.f32 %8786, 1
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.CBufRet.f32 %8789, 1
  %8792 = fsub fast float %8787, %8790
  %8793 = fsub fast float %8788, %8791
  %8794 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %8795 = fsub fast float -0.000000e+00, %8792
  %8796 = fsub fast float -0.000000e+00, %8793
  %8797 = call float @dx.op.dot2.f32(i32 54, float %8616, float %8617, float %8795, float %8796)  ; Dot2(ax,ay,bx,by)
  %8798 = fmul fast float %8797, 2.000000e+00
  %8799 = call float @dx.op.dot2.f32(i32 54, float %8795, float %8796, float %8795, float %8796)  ; Dot2(ax,ay,bx,by)
  %8800 = fmul fast float %8794, %8794
  %8801 = fsub fast float %8799, %8800
  %8802 = fmul fast float %8798, %8798
  %8803 = fmul fast float %8659, %8801
  %8804 = fsub fast float %8802, %8803
  %8805 = fcmp fast ogt float %8804, 0.000000e+00
  br i1 %8805, label %8806, label %8821

; <label>:8806                                    ; preds = %8782
  %8807 = fcmp fast ogt float %8798, 0.000000e+00
  %8808 = call float @dx.op.unary.f32(i32 24, float %8804)  ; Sqrt(value)
  %8809 = fsub fast float -0.000000e+00, %8808
  %8810 = select i1 %8807, float %8808, float %8809
  %8811 = fadd fast float %8810, %8798
  %8812 = fmul float %8811, -5.000000e-01
  %8813 = fdiv fast float %8812, %8652
  %8814 = call float @dx.op.binary.f32(i32 35, float %8813, float 0.000000e+00)  ; FMax(a,b)
  %8815 = call float @dx.op.binary.f32(i32 36, float %8687, float %8814)  ; FMin(a,b)
  %8816 = fdiv fast float %8801, %8812
  %8817 = call float @dx.op.binary.f32(i32 35, float %8816, float 0.000000e+00)  ; FMax(a,b)
  %8818 = call float @dx.op.binary.f32(i32 36, float %8687, float %8817)  ; FMin(a,b)
  %8819 = call float @dx.op.binary.f32(i32 36, float %8815, float %8818)  ; FMin(a,b)
  %8820 = call float @dx.op.binary.f32(i32 35, float %8815, float %8818)  ; FMax(a,b)
  br label %8821

; <label>:8821                                    ; preds = %8806, %8782
  %8822 = phi float [ %8820, %8806 ], [ -1.000000e+00, %8782 ]
  %8823 = phi float [ %8819, %8806 ], [ -1.000000e+00, %8782 ]
  %8824 = phi i1 [ true, %8806 ], [ false, %8782 ]
  br i1 %8824, label %8825, label %8831

; <label>:8825                                    ; preds = %8821
  %8826 = call float @dx.op.binary.f32(i32 35, float %8770, float %8823)  ; FMax(a,b)
  %8827 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8784
  store float %8826, float* %8827, align 4, !tbaa !124, !noalias !126
  %8828 = call float @dx.op.binary.f32(i32 35, float %8770, float %8822)  ; FMax(a,b)
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8784
  store float %8828, float* %8829, align 4, !tbaa !124, !noalias !126
  %8830 = add nsw i32 %8783, 1
  br label %8831

; <label>:8831                                    ; preds = %8825, %8821
  %8832 = phi i32 [ %8830, %8825 ], [ %8783, %8821 ]
  %8833 = add nuw nsw i32 %8784, 1
  %8834 = icmp eq i32 %8833, %8639
  br i1 %8834, label %8835, label %8782

; <label>:8835                                    ; preds = %8831
  %8836 = load float, float* %8776, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8837 = load float, float* %8775, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %8838 = load float, float* %8774, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %8839 = load float, float* %8779, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8840 = load float, float* %8778, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %8841 = load float, float* %8777, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %8842

; <label>:8842                                    ; preds = %8835, %8769
  %8843 = phi float [ -1.000000e+00, %8769 ], [ %8841, %8835 ]
  %8844 = phi float [ -1.000000e+00, %8769 ], [ %8840, %8835 ]
  %8845 = phi float [ -1.000000e+00, %8769 ], [ %8839, %8835 ]
  %8846 = phi float [ -1.000000e+00, %8769 ], [ %8838, %8835 ]
  %8847 = phi float [ -1.000000e+00, %8769 ], [ %8837, %8835 ]
  %8848 = phi float [ -1.000000e+00, %8769 ], [ %8836, %8835 ]
  %8849 = phi i32 [ 0, %8769 ], [ %8832, %8835 ]
  %8850 = call float @dx.op.binary.f32(i32 36, float %8847, float %8848)  ; FMin(a,b)
  %8851 = call float @dx.op.binary.f32(i32 36, float %8846, float %8850)  ; FMin(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float %8846, float %8847)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 36, float %8852, float %8848)  ; FMin(a,b)
  %8854 = call float @dx.op.binary.f32(i32 36, float %8846, float %8847)  ; FMin(a,b)
  %8855 = call float @dx.op.binary.f32(i32 35, float %8854, float %8853)  ; FMax(a,b)
  %8856 = call float @dx.op.binary.f32(i32 35, float %8847, float %8848)  ; FMax(a,b)
  %8857 = call float @dx.op.binary.f32(i32 35, float %8846, float %8856)  ; FMax(a,b)
  store float %8851, float* %8774, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %8855, float* %8775, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %8857, float* %8776, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %8858 = call float @dx.op.binary.f32(i32 36, float %8844, float %8845)  ; FMin(a,b)
  %8859 = call float @dx.op.binary.f32(i32 36, float %8843, float %8858)  ; FMin(a,b)
  %8860 = call float @dx.op.binary.f32(i32 35, float %8843, float %8844)  ; FMax(a,b)
  %8861 = call float @dx.op.binary.f32(i32 36, float %8860, float %8845)  ; FMin(a,b)
  %8862 = call float @dx.op.binary.f32(i32 36, float %8843, float %8844)  ; FMin(a,b)
  %8863 = call float @dx.op.binary.f32(i32 35, float %8862, float %8861)  ; FMax(a,b)
  %8864 = call float @dx.op.binary.f32(i32 35, float %8844, float %8845)  ; FMax(a,b)
  %8865 = call float @dx.op.binary.f32(i32 35, float %8843, float %8864)  ; FMax(a,b)
  store float %8859, float* %8777, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %8863, float* %8778, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %8865, float* %8779, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %8866 = sub nsw i32 3, %8849
  %8867 = icmp sgt i32 %8866, 2
  br i1 %8867, label %8868, label %8906

; <label>:8868                                    ; preds = %8842
  %8869 = icmp eq i32 %8637, 0
  %8870 = fsub fast float %8687, %8771
  %8871 = select i1 %8869, float %8870, float %8771
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 3
  %8883 = call float @dx.op.binary.f32(i32 36, float %8772, float %8882)  ; FMin(a,b)
  %8884 = fmul fast float %8880, %8871
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = fsub fast float %8877, %8873
  %8887 = fsub fast float %8878, %8874
  %8888 = fsub fast float %8879, %8875
  %8889 = fmul fast float %8885, %8886
  %8890 = fmul fast float %8885, %8887
  %8891 = fmul fast float %8885, %8888
  %8892 = fadd fast float %8889, %8873
  %8893 = fadd fast float %8890, %8874
  %8894 = fadd fast float %8891, %8875
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = fadd fast float %8897, %8896
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8901 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8902 = fadd fast float %8901, %8900
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fmul fast float %8899, %8883
  %8905 = fmul fast float %8904, %8903
  br label %8988

; <label>:8906                                    ; preds = %8842
  %8907 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8866
  %8908 = load float, float* %8907, align 4, !tbaa !124, !noalias !126
  %8909 = fcmp fast olt float %8908, %8773
  %8910 = icmp sgt i32 %8849, 0
  %8911 = and i1 %8910, %8909
  br i1 %8911, label %8912, label %8949

; <label>:8912                                    ; preds = %8906
  br label %8913

; <label>:8913                                    ; preds = %8942, %8912
  %8914 = phi float [ %8943, %8942 ], [ %8771, %8912 ]
  %8915 = phi float [ %8944, %8942 ], [ %8772, %8912 ]
  %8916 = phi float [ %8924, %8942 ], [ %8908, %8912 ]
  %8917 = phi i32 [ %8921, %8942 ], [ %8866, %8912 ]
  %8918 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8917
  %8919 = load float, float* %8918, align 4, !tbaa !124, !noalias !126
  %8920 = icmp slt i32 %8917, 2
  %8921 = add nsw i32 %8917, 1
  %8922 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8921
  %8923 = load float, float* %8922, align 4, !tbaa !124, !noalias !126
  %8924 = select i1 %8920, float %8923, float %8687
  %8925 = call float @dx.op.binary.f32(i32 36, float %8924, float %8919)  ; FMin(a,b)
  %8926 = call float @dx.op.binary.f32(i32 36, float %8773, float %8925)  ; FMin(a,b)
  %8927 = icmp eq i32 %8637, 0
  %8928 = fadd fast float %8926, %8916
  %8929 = fmul fast float %8928, %8618
  %8930 = fadd fast float %8929, %8631
  br i1 %8927, label %8936, label %8931

; <label>:8931                                    ; preds = %8913
  %8932 = fsub fast float %8926, %8916
  %8933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8932)  ; FMax(a,b)
  %8934 = fmul fast float %8933, %8930
  %8935 = fadd fast float %8934, %8915
  br label %8942

; <label>:8936                                    ; preds = %8913
  %8937 = fsub fast float %8916, %8926
  %8938 = call float @dx.op.unary.f32(i32 6, float %8937)  ; FAbs(value)
  %8939 = fadd fast float %8938, %8914
  %8940 = fmul fast float %8938, %8930
  %8941 = fsub fast float %8915, %8940
  br label %8942

; <label>:8942                                    ; preds = %8936, %8931
  %8943 = phi float [ %8933, %8931 ], [ %8939, %8936 ]
  %8944 = phi float [ %8935, %8931 ], [ %8941, %8936 ]
  %8945 = fcmp fast olt float %8924, %8773
  %8946 = icmp slt i32 %8921, 3
  %8947 = and i1 %8946, %8945
  br i1 %8947, label %8913, label %8948

; <label>:8948                                    ; preds = %8942
  br label %8949

; <label>:8949                                    ; preds = %8948, %8906
  %8950 = phi float [ %8771, %8906 ], [ %8943, %8948 ]
  %8951 = phi float [ %8772, %8906 ], [ %8944, %8948 ]
  %8952 = fsub fast float %8687, %8950
  %8953 = select i1 %8689, float %8950, float %8952
  %8954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8954, 0
  %8956 = extractvalue %dx.types.CBufRet.f32 %8954, 1
  %8957 = extractvalue %dx.types.CBufRet.f32 %8954, 2
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8961 = extractvalue %dx.types.CBufRet.f32 %8958, 2
  %8962 = extractvalue %dx.types.CBufRet.f32 %8958, 3
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 3
  %8965 = call float @dx.op.binary.f32(i32 36, float %8951, float %8964)  ; FMin(a,b)
  %8966 = fmul fast float %8962, %8953
  %8967 = call float @dx.op.unary.f32(i32 7, float %8966)  ; Saturate(value)
  %8968 = fsub fast float %8959, %8955
  %8969 = fsub fast float %8960, %8956
  %8970 = fsub fast float %8961, %8957
  %8971 = fmul fast float %8967, %8968
  %8972 = fmul fast float %8967, %8969
  %8973 = fmul fast float %8967, %8970
  %8974 = fadd fast float %8971, %8955
  %8975 = fadd fast float %8972, %8956
  %8976 = fadd fast float %8973, %8957
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.CBufRet.f32 %8977, 1
  %8980 = fadd fast float %8979, %8978
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8977, 2
  %8983 = extractvalue %dx.types.CBufRet.f32 %8977, 3
  %8984 = fadd fast float %8983, %8982
  %8985 = call float @dx.op.unary.f32(i32 7, float %8984)  ; Saturate(value)
  %8986 = fmul fast float %8981, %8965
  %8987 = fmul fast float %8986, %8985
  br label %8988

; <label>:8988                                    ; preds = %8949, %8868, %8703, %8685, %8683
  %8989 = phi float [ %8712, %8703 ], [ %8871, %8868 ], [ %8953, %8949 ], [ 0.000000e+00, %8683 ], [ 0.000000e+00, %8685 ]
  %8990 = phi float [ %8746, %8703 ], [ %8905, %8868 ], [ %8987, %8949 ], [ 0.000000e+00, %8683 ], [ 0.000000e+00, %8685 ]
  %8991 = phi float [ %8733, %8703 ], [ %8892, %8868 ], [ %8974, %8949 ], [ 0.000000e+00, %8683 ], [ 0.000000e+00, %8685 ]
  %8992 = phi float [ %8734, %8703 ], [ %8893, %8868 ], [ %8975, %8949 ], [ 0.000000e+00, %8683 ], [ 0.000000e+00, %8685 ]
  %8993 = phi float [ %8735, %8703 ], [ %8894, %8868 ], [ %8976, %8949 ], [ 0.000000e+00, %8683 ], [ 0.000000e+00, %8685 ]
  %8994 = fmul fast float %8626, %8990
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 2
  %8997 = fsub fast float %8633, %8996
  %8998 = fcmp fast olt float %8994, -2.000000e+01
  %8999 = call float @dx.op.unary.f32(i32 21, float %8994)  ; Exp(value)
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 2
  %9002 = extractvalue %dx.types.CBufRet.f32 %9000, 3
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9005 = fmul fast float %9002, %8997
  %9006 = call float @dx.op.unary.f32(i32 7, float %9005)  ; Saturate(value)
  %9007 = fsub fast float 1.000000e+00, %9006
  %9008 = fmul fast float %8618, 5.000000e-01
  %9009 = fadd fast float %9008, 5.000000e-01
  %9010 = call float @dx.op.unary.f32(i32 7, float %9009)  ; Saturate(value)
  %9011 = fsub fast float 1.000000e+00, %9010
  %9012 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9007)  ; FMax(a,b)
  %9013 = fdiv fast float %9011, %9012
  %9014 = fsub fast float %8997, %8575
  %9015 = call float @dx.op.unary.f32(i32 6, float %9014)  ; FAbs(value)
  %9016 = fmul fast float %9015, %9001
  %9017 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9018 = fsub fast float 1.000000e+00, %9016
  %9019 = fmul fast float %9018, %9017
  %9020 = fadd fast float %9019, %9016
  %9021 = fmul fast float %9004, %8997
  %9022 = call float @dx.op.unary.f32(i32 7, float %9021)  ; Saturate(value)
  %9023 = fsub fast float 1.000000e+00, %9020
  %9024 = fmul fast float %9023, %9022
  %9025 = fadd fast float %9024, %9020
  %9026 = call float @dx.op.unary.f32(i32 7, float %9025)  ; Saturate(value)
  %9027 = fadd fast float %8999, -1.000000e+00
  %9028 = select i1 %8998, float -1.000000e+00, float %9027
  %9029 = fmul fast float %9026, %9028
  %9030 = fadd fast float %9029, 1.000000e+00
  %9031 = fsub fast float -0.000000e+00, %9029
  %9032 = fmul fast float %8991, %9031
  %9033 = fmul fast float %8992, %9031
  %9034 = fmul fast float %8993, %9031
  br label %9035

; <label>:9035                                    ; preds = %8988, %8584
  %9036 = phi float [ %8989, %8988 ], [ 0.000000e+00, %8584 ]
  %9037 = phi float [ %9030, %8988 ], [ 1.000000e+00, %8584 ]
  %9038 = phi float [ %9032, %8988 ], [ 0.000000e+00, %8584 ]
  %9039 = phi float [ %9033, %8988 ], [ 0.000000e+00, %8584 ]
  %9040 = phi float [ %9034, %8988 ], [ 0.000000e+00, %8584 ]
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 1
  %9043 = fsub fast float 1.000000e+00, %9037
  %9044 = fmul fast float %9043, %8619
  %9045 = fmul fast float %9044, %9042
  %9046 = fsub fast float %8619, %9045
  br i1 %8612, label %9047, label %9076, !dx.controlflow.hints !162

; <label>:9047                                    ; preds = %9035
  %9048 = fmul fast float %8620, %8609
  %9049 = fadd fast float %9048, %8610
  %9050 = call float @dx.op.unary.f32(i32 7, float %9049)  ; Saturate(value)
  %9051 = fmul fast float %8591, %9046
  %9052 = fsub fast float -0.000000e+00, %9051
  %9053 = fmul fast float %8592, %9046
  %9054 = fsub fast float -0.000000e+00, %9053
  %9055 = call float @dx.op.unary.f32(i32 21, float %9052)  ; Exp(value)
  %9056 = call float @dx.op.unary.f32(i32 21, float %9054)  ; Exp(value)
  %9057 = call float @dx.op.binary.f32(i32 35, float %8599, float %9055)  ; FMax(a,b)
  %9058 = call float @dx.op.binary.f32(i32 35, float %8599, float %9056)  ; FMax(a,b)
  %9059 = fsub fast float %9058, %9057
  %9060 = fmul fast float %9059, %9050
  %9061 = fadd fast float %9060, %9057
  %9062 = call float @dx.op.unary.f32(i32 7, float %9061)  ; Saturate(value)
  %9063 = fsub fast float %8596, %8601
  %9064 = fsub fast float %8597, %8602
  %9065 = fsub fast float %8598, %8603
  %9066 = fmul fast float %9050, %9063
  %9067 = fmul fast float %9050, %9064
  %9068 = fmul fast float %9050, %9065
  %9069 = fadd fast float %9066, %8601
  %9070 = fadd fast float %9067, %8602
  %9071 = fadd fast float %9068, %8603
  %9072 = fsub fast float 1.000000e+00, %9062
  %9073 = fmul fast float %9072, %9069
  %9074 = fmul fast float %9072, %9070
  %9075 = fmul fast float %9072, %9071
  br label %9135

; <label>:9076                                    ; preds = %9035
  %9077 = fmul fast float %9046, %8608
  %9078 = call float @dx.op.unary.f32(i32 7, float %9077)  ; Saturate(value)
  %9079 = fsub fast float 2.000000e+00, %9078
  %9080 = fmul fast float %9078, 9.921875e-01
  %9081 = fmul fast float %9080, %9079
  %9082 = fadd fast float %9081, 3.906250e-03
  %9083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9082, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9084 = extractvalue %dx.types.ResRet.f32 %9083, 0
  %9085 = fsub fast float %9078, %9084
  %9086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9085)  ; FMax(a,b)
  %9087 = fmul fast float %8594, %8575
  %9088 = call float @dx.op.unary.f32(i32 6, float %9087)  ; FAbs(value)
  %9089 = fcmp fast ogt float %9088, 0x3EB0C6F7A0000000
  br i1 %9089, label %9090, label %9096, !dx.controlflow.hints !163

; <label>:9090                                    ; preds = %9076
  %9091 = fmul fast float %9087, 0xBFF7154760000000
  %9092 = call float @dx.op.unary.f32(i32 21, float %9091)  ; Exp(value)
  %9093 = fsub fast float 1.000000e+00, %9092
  %9094 = fdiv fast float %9093, %9087
  %9095 = fmul fast float %9094, %8604
  br label %9096

; <label>:9096                                    ; preds = %9090, %9076
  %9097 = phi float [ %9095, %9090 ], [ %8604, %9076 ]
  %9098 = fadd fast float %9097, %8606
  %9099 = fmul fast float %9098, %9086
  %9100 = fmul fast float %8591, %9099
  %9101 = fsub fast float -0.000000e+00, %9100
  %9102 = fmul fast float %8592, %9099
  %9103 = fsub fast float -0.000000e+00, %9102
  %9104 = fmul fast float %8593, %9099
  %9105 = fsub fast float -0.000000e+00, %9104
  %9106 = call float @dx.op.unary.f32(i32 21, float %9101)  ; Exp(value)
  %9107 = call float @dx.op.unary.f32(i32 21, float %9103)  ; Exp(value)
  %9108 = call float @dx.op.unary.f32(i32 21, float %9105)  ; Exp(value)
  %9109 = fmul fast float %8620, %8620
  %9110 = fadd fast float %9109, 1.000000e+00
  %9111 = fmul fast float %9110, 0x3FAE8EC8A0000000
  %9112 = fmul fast float %9111, %8601
  %9113 = fmul fast float %9111, %8602
  %9114 = fmul fast float %9111, %8603
  %9115 = fmul fast float %8620, %8599
  %9116 = fsub fast float 1.000000e+00, %9115
  %9117 = fmul fast float %8599, %8599
  %9118 = fsub fast float 1.000000e+00, %9117
  %9119 = fmul fast float %9118, 0x3FB45F3060000000
  %9120 = fmul fast float %9116, %9116
  %9121 = fdiv fast float 1.000000e+00, %9120
  %9122 = fmul fast float %9119, %9121
  %9123 = fmul fast float %9122, %8596
  %9124 = fmul fast float %9122, %8597
  %9125 = fmul fast float %9122, %8598
  %9126 = fadd fast float %9123, %9112
  %9127 = fadd fast float %9124, %9113
  %9128 = fadd fast float %9125, %9114
  %9129 = fsub fast float 1.000000e+00, %9106
  %9130 = fsub fast float 1.000000e+00, %9107
  %9131 = fsub fast float 1.000000e+00, %9108
  %9132 = fmul fast float %9126, %9129
  %9133 = fmul fast float %9127, %9130
  %9134 = fmul fast float %9128, %9131
  br label %9135

; <label>:9135                                    ; preds = %9096, %9047
  %9136 = phi float [ %9073, %9047 ], [ %9132, %9096 ]
  %9137 = phi float [ %9074, %9047 ], [ %9133, %9096 ]
  %9138 = phi float [ %9075, %9047 ], [ %9134, %9096 ]
  %9139 = phi float [ %9062, %9047 ], [ %9106, %9096 ]
  %9140 = phi float [ %9062, %9047 ], [ %9107, %9096 ]
  %9141 = phi float [ %9062, %9047 ], [ %9108, %9096 ]
  br i1 %8628, label %9142, label %9340, !dx.controlflow.hints !164

; <label>:9142                                    ; preds = %9135
  %9143 = extractvalue %dx.types.CBufRet.f32 %9041, 0
  %9144 = fmul fast float %9143, %9043
  %9145 = fsub fast float %9038, %9136
  %9146 = fsub fast float %9039, %9137
  %9147 = fsub fast float %9040, %9138
  %9148 = fmul fast float %9144, %9145
  %9149 = fmul fast float %9144, %9146
  %9150 = fmul fast float %9144, %9147
  %9151 = fadd fast float %9148, %9136
  %9152 = fadd fast float %9149, %9137
  %9153 = fadd fast float %9150, %9138
  %9154 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9139)  ; FMax(a,b)
  %9155 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9140)  ; FMax(a,b)
  %9156 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9141)  ; FMax(a,b)
  %9157 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9037)  ; FMax(a,b)
  %9158 = call float @dx.op.binary.f32(i32 35, float %9036, float %9046)  ; FMax(a,b)
  %9159 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9158)  ; FMax(a,b)
  %9160 = fdiv fast float %9036, %9159
  %9161 = call float @dx.op.unary.f32(i32 7, float %9160)  ; Saturate(value)
  %9162 = fdiv fast float %9046, %9159
  %9163 = call float @dx.op.unary.f32(i32 7, float %9162)  ; Saturate(value)
  %9164 = fcmp fast une float %9157, 1.000000e+00
  br i1 %9164, label %9165, label %9178, !dx.controlflow.hints !165

; <label>:9165                                    ; preds = %9142
  %9166 = call float @dx.op.unary.f32(i32 23, float %9157)  ; Log(value)
  %9167 = fmul fast float %9166, 0x3FE62E4300000000
  %9168 = fmul fast float %9038, %9167
  %9169 = fsub fast float -0.000000e+00, %9168
  %9170 = fmul fast float %9039, %9167
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = fmul fast float %9040, %9167
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fsub fast float 1.000000e+00, %9157
  %9175 = fdiv fast float %9169, %9174
  %9176 = fdiv fast float %9171, %9174
  %9177 = fdiv fast float %9173, %9174
  br label %9178

; <label>:9178                                    ; preds = %9165, %9142
  %9179 = phi float [ %9175, %9165 ], [ %9038, %9142 ]
  %9180 = phi float [ %9176, %9165 ], [ %9039, %9142 ]
  %9181 = phi float [ %9177, %9165 ], [ %9040, %9142 ]
  %9182 = phi float [ %9167, %9165 ], [ 0.000000e+00, %9142 ]
  %9183 = fcmp fast une float %9154, 1.000000e+00
  br i1 %9183, label %9184, label %9191, !dx.controlflow.hints !166

; <label>:9184                                    ; preds = %9178
  %9185 = call float @dx.op.unary.f32(i32 23, float %9154)  ; Log(value)
  %9186 = fmul fast float %9185, 0x3FE62E4300000000
  %9187 = fmul fast float %9151, %9186
  %9188 = fsub fast float -0.000000e+00, %9187
  %9189 = fsub fast float 1.000000e+00, %9154
  %9190 = fdiv fast float %9188, %9189
  br label %9191

; <label>:9191                                    ; preds = %9184, %9178
  %9192 = phi float [ %9190, %9184 ], [ %9151, %9178 ]
  %9193 = phi float [ %9186, %9184 ], [ 0.000000e+00, %9178 ]
  %9194 = fcmp fast une float %9155, 1.000000e+00
  br i1 %9194, label %9195, label %9202, !dx.controlflow.hints !166

; <label>:9195                                    ; preds = %9191
  %9196 = call float @dx.op.unary.f32(i32 23, float %9155)  ; Log(value)
  %9197 = fmul fast float %9196, 0x3FE62E4300000000
  %9198 = fmul fast float %9152, %9197
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fsub fast float 1.000000e+00, %9155
  %9201 = fdiv fast float %9199, %9200
  br label %9202

; <label>:9202                                    ; preds = %9195, %9191
  %9203 = phi float [ %9201, %9195 ], [ %9152, %9191 ]
  %9204 = phi float [ %9197, %9195 ], [ 0.000000e+00, %9191 ]
  %9205 = fcmp fast une float %9156, 1.000000e+00
  br i1 %9205, label %9206, label %9213, !dx.controlflow.hints !166

; <label>:9206                                    ; preds = %9202
  %9207 = call float @dx.op.unary.f32(i32 23, float %9156)  ; Log(value)
  %9208 = fmul fast float %9207, 0x3FE62E4300000000
  %9209 = fmul fast float %9153, %9208
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = fsub fast float 1.000000e+00, %9156
  %9212 = fdiv fast float %9210, %9211
  br label %9213

; <label>:9213                                    ; preds = %9206, %9202
  %9214 = phi float [ %9212, %9206 ], [ %9153, %9202 ]
  %9215 = phi float [ %9208, %9206 ], [ 0.000000e+00, %9202 ]
  %9216 = fmul fast float %9179, %9163
  %9217 = fmul fast float %9180, %9163
  %9218 = fmul fast float %9181, %9163
  %9219 = fmul fast float %9182, %9163
  %9220 = fmul fast float %9192, %9161
  %9221 = fmul fast float %9203, %9161
  %9222 = fmul fast float %9214, %9161
  %9223 = fmul fast float %9193, %9161
  %9224 = fmul fast float %9204, %9161
  %9225 = fmul fast float %9215, %9161
  %9226 = fadd fast float %9220, %9216
  %9227 = fadd fast float %9221, %9217
  %9228 = fadd fast float %9222, %9218
  %9229 = fadd fast float %9223, %9219
  %9230 = fadd fast float %9224, %9219
  %9231 = fadd fast float %9225, %9219
  %9232 = fcmp fast une float %9229, 0.000000e+00
  br i1 %9232, label %9233, label %9240, !dx.controlflow.hints !167

; <label>:9233                                    ; preds = %9213
  %9234 = fmul fast float %9229, 0x3FF7154760000000
  %9235 = call float @dx.op.unary.f32(i32 21, float %9234)  ; Exp(value)
  %9236 = fsub fast float 1.000000e+00, %9235
  %9237 = fmul fast float %9226, %9236
  %9238 = fsub fast float -0.000000e+00, %9237
  %9239 = fdiv fast float %9238, %9229
  br label %9240

; <label>:9240                                    ; preds = %9233, %9213
  %9241 = phi float [ %9235, %9233 ], [ 1.000000e+00, %9213 ]
  %9242 = phi float [ %9239, %9233 ], [ %9226, %9213 ]
  %9243 = fcmp fast une float %9230, 0.000000e+00
  br i1 %9243, label %9244, label %9251, !dx.controlflow.hints !167

; <label>:9244                                    ; preds = %9240
  %9245 = fmul fast float %9230, 0x3FF7154760000000
  %9246 = call float @dx.op.unary.f32(i32 21, float %9245)  ; Exp(value)
  %9247 = fsub fast float 1.000000e+00, %9246
  %9248 = fmul fast float %9227, %9247
  %9249 = fsub fast float -0.000000e+00, %9248
  %9250 = fdiv fast float %9249, %9230
  br label %9251

; <label>:9251                                    ; preds = %9244, %9240
  %9252 = phi float [ %9246, %9244 ], [ 1.000000e+00, %9240 ]
  %9253 = phi float [ %9250, %9244 ], [ %9227, %9240 ]
  %9254 = fcmp fast une float %9231, 0.000000e+00
  br i1 %9254, label %9255, label %9262, !dx.controlflow.hints !167

; <label>:9255                                    ; preds = %9251
  %9256 = fmul fast float %9231, 0x3FF7154760000000
  %9257 = call float @dx.op.unary.f32(i32 21, float %9256)  ; Exp(value)
  %9258 = fsub fast float 1.000000e+00, %9257
  %9259 = fmul fast float %9228, %9258
  %9260 = fsub fast float -0.000000e+00, %9259
  %9261 = fdiv fast float %9260, %9231
  br label %9262

; <label>:9262                                    ; preds = %9255, %9251
  %9263 = phi float [ %9257, %9255 ], [ 1.000000e+00, %9251 ]
  %9264 = phi float [ %9261, %9255 ], [ %9228, %9251 ]
  %9265 = fcmp fast ogt float %9161, %9163
  br i1 %9265, label %9266, label %9286

; <label>:9266                                    ; preds = %9262
  %9267 = fsub fast float 1.000000e+00, %9163
  %9268 = fmul fast float %9179, %9267
  %9269 = fmul fast float %9180, %9267
  %9270 = fmul fast float %9181, %9267
  %9271 = fmul fast float %9182, %9267
  %9272 = fcmp fast une float %9271, 0.000000e+00
  br i1 %9272, label %9273, label %9324, !dx.controlflow.hints !168

; <label>:9273                                    ; preds = %9266
  %9274 = fmul fast float %9271, 0x3FF7154760000000
  %9275 = call float @dx.op.unary.f32(i32 21, float %9274)  ; Exp(value)
  %9276 = fsub fast float 1.000000e+00, %9275
  %9277 = fmul fast float %9268, %9276
  %9278 = fsub fast float -0.000000e+00, %9277
  %9279 = fmul fast float %9269, %9276
  %9280 = fsub fast float -0.000000e+00, %9279
  %9281 = fmul fast float %9270, %9276
  %9282 = fsub fast float -0.000000e+00, %9281
  %9283 = fdiv fast float %9278, %9271
  %9284 = fdiv fast float %9280, %9271
  %9285 = fdiv fast float %9282, %9271
  br label %9324

; <label>:9286                                    ; preds = %9262
  %9287 = fsub fast float 1.000000e+00, %9161
  %9288 = fmul fast float %9192, %9287
  %9289 = fmul fast float %9203, %9287
  %9290 = fmul fast float %9214, %9287
  %9291 = fmul fast float %9193, %9287
  %9292 = fmul fast float %9204, %9287
  %9293 = fmul fast float %9215, %9287
  %9294 = fcmp fast une float %9291, 0.000000e+00
  br i1 %9294, label %9295, label %9302, !dx.controlflow.hints !167

; <label>:9295                                    ; preds = %9286
  %9296 = fmul fast float %9291, 0x3FF7154760000000
  %9297 = call float @dx.op.unary.f32(i32 21, float %9296)  ; Exp(value)
  %9298 = fsub fast float 1.000000e+00, %9297
  %9299 = fmul fast float %9288, %9298
  %9300 = fsub fast float -0.000000e+00, %9299
  %9301 = fdiv fast float %9300, %9291
  br label %9302

; <label>:9302                                    ; preds = %9295, %9286
  %9303 = phi float [ %9301, %9295 ], [ %9288, %9286 ]
  %9304 = phi float [ %9297, %9295 ], [ 1.000000e+00, %9286 ]
  %9305 = fcmp fast une float %9292, 0.000000e+00
  br i1 %9305, label %9306, label %9313, !dx.controlflow.hints !167

; <label>:9306                                    ; preds = %9302
  %9307 = fmul fast float %9292, 0x3FF7154760000000
  %9308 = call float @dx.op.unary.f32(i32 21, float %9307)  ; Exp(value)
  %9309 = fsub fast float 1.000000e+00, %9308
  %9310 = fmul fast float %9289, %9309
  %9311 = fsub fast float -0.000000e+00, %9310
  %9312 = fdiv fast float %9311, %9292
  br label %9313

; <label>:9313                                    ; preds = %9306, %9302
  %9314 = phi float [ %9312, %9306 ], [ %9289, %9302 ]
  %9315 = phi float [ %9308, %9306 ], [ 1.000000e+00, %9302 ]
  %9316 = fcmp fast une float %9293, 0.000000e+00
  br i1 %9316, label %9317, label %9324, !dx.controlflow.hints !167

; <label>:9317                                    ; preds = %9313
  %9318 = fmul fast float %9293, 0x3FF7154760000000
  %9319 = call float @dx.op.unary.f32(i32 21, float %9318)  ; Exp(value)
  %9320 = fsub fast float 1.000000e+00, %9319
  %9321 = fmul fast float %9290, %9320
  %9322 = fsub fast float -0.000000e+00, %9321
  %9323 = fdiv fast float %9322, %9293
  br label %9324

; <label>:9324                                    ; preds = %9317, %9313, %9273, %9266
  %9325 = phi float [ %9323, %9317 ], [ %9285, %9273 ], [ %9270, %9266 ], [ %9290, %9313 ]
  %9326 = phi float [ %9314, %9317 ], [ %9284, %9273 ], [ %9269, %9266 ], [ %9314, %9313 ]
  %9327 = phi float [ %9303, %9317 ], [ %9283, %9273 ], [ %9268, %9266 ], [ %9303, %9313 ]
  %9328 = phi float [ %9319, %9317 ], [ %9275, %9273 ], [ 1.000000e+00, %9266 ], [ 1.000000e+00, %9313 ]
  %9329 = phi float [ %9315, %9317 ], [ %9275, %9273 ], [ 1.000000e+00, %9266 ], [ %9315, %9313 ]
  %9330 = phi float [ %9304, %9317 ], [ %9275, %9273 ], [ 1.000000e+00, %9266 ], [ %9304, %9313 ]
  %9331 = fmul fast float %9330, %9242
  %9332 = fmul fast float %9329, %9253
  %9333 = fmul fast float %9328, %9264
  %9334 = fadd fast float %9331, %9327
  %9335 = fadd fast float %9332, %9326
  %9336 = fadd fast float %9333, %9325
  %9337 = fmul fast float %9330, %9241
  %9338 = fmul fast float %9329, %9252
  %9339 = fmul fast float %9328, %9263
  br label %9340

; <label>:9340                                    ; preds = %9324, %9135
  %9341 = phi float [ %9339, %9324 ], [ %9141, %9135 ]
  %9342 = phi float [ %9338, %9324 ], [ %9140, %9135 ]
  %9343 = phi float [ %9337, %9324 ], [ %9139, %9135 ]
  %9344 = phi float [ %9336, %9324 ], [ %9138, %9135 ]
  %9345 = phi float [ %9335, %9324 ], [ %9137, %9135 ]
  %9346 = phi float [ %9334, %9324 ], [ %9136, %9135 ]
  %9347 = fmul fast float %9343, %8583
  %9348 = call float @dx.op.dot3.f32(i32 55, float %9343, float %9342, float %9341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9349 = call float @dx.op.dot3.f32(i32 55, float %9346, float %9345, float %9344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9350 = select i1 %219, float %9348, float %9343
  %9351 = select i1 %219, float %9348, float %9342
  %9352 = select i1 %219, float 1.000000e+00, float %9341
  %9353 = select i1 %219, float %9349, float %9346
  %9354 = select i1 %219, float 0.000000e+00, float %9345
  %9355 = select i1 %219, float 0.000000e+00, float %9344
  %9356 = fmul fast float %9350, %8577
  %9357 = fmul fast float %9351, %8578
  %9358 = fmul fast float %9352, %8579
  %9359 = fadd fast float %9356, %9353
  %9360 = fadd fast float %9357, %9354
  %9361 = fadd fast float %9355, %9358
  %9362 = fmul fast float %9350, %8580
  %9363 = fmul fast float %9351, %8581
  %9364 = fmul fast float %9352, %8582
  %9365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.i32 %9365, 0
  %9367 = icmp eq i32 %9366, 0
  br i1 %9367, label %9725, label %9368, !dx.controlflow.hints !169

; <label>:9368                                    ; preds = %9340
  %9369 = fmul fast float %6229, %102
  %9370 = fmul fast float %6230, %103
  %9371 = fmul fast float %9369, 2.000000e+00
  %9372 = fmul fast float %9370, 2.000000e+00
  %9373 = fsub fast float 1.000000e+00, %9371
  %9374 = fsub fast float 1.000000e+00, %9372
  %9375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.f32 %9375, 0
  %9377 = extractvalue %dx.types.CBufRet.f32 %9375, 1
  %9378 = extractvalue %dx.types.CBufRet.f32 %9375, 2
  %9379 = fmul fast float %9373, %9376
  %9380 = fmul fast float %9373, %9377
  %9381 = fmul fast float %9373, %9378
  %9382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.f32 %9382, 0
  %9384 = extractvalue %dx.types.CBufRet.f32 %9382, 1
  %9385 = extractvalue %dx.types.CBufRet.f32 %9382, 2
  %9386 = fmul fast float %9374, %9383
  %9387 = fmul fast float %9374, %9384
  %9388 = fmul fast float %9374, %9385
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 0
  %9391 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9392 = extractvalue %dx.types.CBufRet.f32 %9389, 2
  %9393 = fadd fast float %9386, %9390
  %9394 = fadd fast float %9393, %9379
  %9395 = fadd fast float %9387, %9391
  %9396 = fadd fast float %9395, %9380
  %9397 = fadd fast float %9388, %9392
  %9398 = fadd fast float %9397, %9381
  %9399 = fmul fast float %9394, %8576
  %9400 = fmul fast float %9396, %8576
  %9401 = fmul fast float %9398, %8576
  %9402 = fmul fast float %9399, %9399
  %9403 = fmul fast float %9400, %9400
  %9404 = fadd fast float %9402, %9403
  %9405 = fmul fast float %9401, %9401
  %9406 = fadd fast float %9404, %9405
  %9407 = call float @dx.op.unary.f32(i32 24, float %9406)  ; Sqrt(value)
  %9408 = extractvalue %dx.types.CBufRet.f32 %8311, 0
  %9409 = fsub fast float %9407, %9408
  %9410 = extractvalue %dx.types.CBufRet.f32 %8311, 2
  %9411 = fmul fast float %9409, %9410
  %9412 = call float @dx.op.unary.f32(i32 7, float %9411)  ; Saturate(value)
  %9413 = fadd fast float %9412, -5.000000e-01
  %9414 = fmul fast float %9413, 2.000000e+00
  %9415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9416 = extractvalue %dx.types.CBufRet.f32 %9415, 2
  %9417 = call float @dx.op.binary.f32(i32 36, float %9416, float %9414)  ; FMin(a,b)
  %9418 = fsub fast float -0.000000e+00, %9416
  %9419 = fcmp fast ogt float %9417, %9418
  br i1 %9419, label %9420, label %9725, !dx.controlflow.hints !170

; <label>:9420                                    ; preds = %9368
  %9421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.f32 %9421, 3
  %9423 = fcmp fast ogt float %9422, 0.000000e+00
  br i1 %9423, label %9424, label %9497, !dx.controlflow.hints !171

; <label>:9424                                    ; preds = %9420
  %9425 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9426 = extractvalue %dx.types.Dimensions %9425, 0
  %9427 = sitofp i32 %9426 to float
  %9428 = extractvalue %dx.types.Dimensions %9425, 1
  %9429 = sitofp i32 %9428 to float
  %9430 = fmul fast float %9369, %9427
  %9431 = fmul fast float %9370, %9429
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 1
  %9434 = fsub fast float -0.000000e+00, %9433
  %9435 = fptoui float %9434 to i32
  %9436 = fptoui float %9430 to i32
  %9437 = fptoui float %9431 to i32
  %9438 = and i32 %9435, 31
  %9439 = lshr i32 %9436, %9438
  %9440 = lshr i32 %9437, %9438
  %9441 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9435, i32 %9439, i32 %9440, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9442 = extractvalue %dx.types.ResRet.f32 %9441, 0
  %9443 = fcmp fast olt float %9442, -1.000000e+00
  %9444 = fcmp fast ogt float %9442, -1.000000e+00
  %9445 = select i1 %9444, float %6237, float 1.000000e+00
  %9446 = fadd fast float %9442, 1.000000e+00
  %9447 = fmul fast float %9445, %9446
  %9448 = call float @dx.op.unary.f32(i32 6, float %9447)  ; FAbs(value)
  %9449 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %9450 = fcmp fast oge float %9448, %9449
  %9451 = select i1 %9450, float 0x4197782600000000, float %9448
  %9452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.f32 %9452, 0
  %9454 = extractvalue %dx.types.CBufRet.f32 %9452, 1
  %9455 = extractvalue %dx.types.CBufRet.f32 %9452, 2
  %9456 = select i1 %9443, float %9453, float %9376
  %9457 = select i1 %9443, float %9454, float %9377
  %9458 = select i1 %9443, float %9455, float %9378
  %9459 = fmul fast float %9456, %9373
  %9460 = fmul fast float %9457, %9373
  %9461 = fmul fast float %9458, %9373
  %9462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9463 = extractvalue %dx.types.CBufRet.f32 %9462, 0
  %9464 = extractvalue %dx.types.CBufRet.f32 %9462, 1
  %9465 = extractvalue %dx.types.CBufRet.f32 %9462, 2
  %9466 = select i1 %9443, float %9463, float %9383
  %9467 = select i1 %9443, float %9464, float %9384
  %9468 = select i1 %9443, float %9465, float %9385
  %9469 = fmul fast float %9466, %9374
  %9470 = fmul fast float %9467, %9374
  %9471 = fmul fast float %9468, %9374
  %9472 = fadd fast float %9469, %9459
  %9473 = fadd fast float %9470, %9460
  %9474 = fadd fast float %9471, %9461
  %9475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9476 = extractvalue %dx.types.CBufRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.CBufRet.f32 %9475, 1
  %9478 = extractvalue %dx.types.CBufRet.f32 %9475, 2
  %9479 = select i1 %9443, float %9476, float %9390
  %9480 = select i1 %9443, float %9477, float %9391
  %9481 = select i1 %9443, float %9478, float %9392
  %9482 = fadd fast float %9472, %9479
  %9483 = fadd fast float %9473, %9480
  %9484 = fadd fast float %9474, %9481
  %9485 = fmul fast float %9482, %9451
  %9486 = fmul fast float %9483, %9451
  %9487 = fmul fast float %9484, %9451
  %9488 = fmul fast float %9485, %9485
  %9489 = fmul fast float %9486, %9486
  %9490 = fadd fast float %9488, %9489
  %9491 = fmul fast float %9487, %9487
  %9492 = fadd fast float %9490, %9491
  %9493 = call float @dx.op.unary.f32(i32 24, float %9492)  ; Sqrt(value)
  %9494 = fsub fast float %9493, %9408
  %9495 = fmul fast float %9494, %9410
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  br label %9497

; <label>:9497                                    ; preds = %9424, %9420
  %9498 = phi float [ %9496, %9424 ], [ 1.000000e+00, %9420 ]
  %9499 = fmul fast float %9417, 5.000000e-01
  %9500 = fadd fast float %9499, 5.000000e-01
  %9501 = call float @dx.op.unary.f32(i32 22, float %9500)  ; Frc(value)
  %9502 = call float @dx.op.unary.f32(i32 27, float %9501)  ; Round_ni(value)
  %9503 = call float @dx.op.unary.f32(i32 22, float %9501)  ; Frc(value)
  %9504 = fmul fast float %9503, 2.000000e+00
  %9505 = fadd fast float %9504, -1.000000e+00
  %9506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9369, float %9370, float %9502, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9507 = extractvalue %dx.types.ResRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.ResRet.f32 %9506, 1
  %9509 = extractvalue %dx.types.ResRet.f32 %9506, 2
  %9510 = extractvalue %dx.types.ResRet.f32 %9506, 3
  %9511 = fadd fast float %9507, -5.000000e-01
  %9512 = fadd fast float %9509, -5.000000e-01
  %9513 = fmul fast float %9511, 0xBFD5555560000000
  %9514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9512, float %9513)  ; FMad(a,b,c)
  %9515 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9508, float 0.000000e+00)  ; FMad(a,b,c)
  %9516 = fadd fast float %9515, %9510
  %9517 = fmul fast float %9511, -7.500000e-01
  %9518 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9512, float %9517)  ; FMad(a,b,c)
  %9519 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9508, float 0.000000e+00)  ; FMad(a,b,c)
  %9520 = fadd fast float %9519, %9510
  %9521 = call float @dx.op.binary.f32(i32 35, float %9514, float -1.000000e+00)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float %9516, float -1.000000e+00)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float %9518, float -1.000000e+00)  ; FMax(a,b)
  %9524 = call float @dx.op.binary.f32(i32 35, float %9520, float -1.000000e+00)  ; FMax(a,b)
  %9525 = call float @dx.op.binary.f32(i32 36, float %9521, float 1.000000e+00)  ; FMin(a,b)
  %9526 = call float @dx.op.binary.f32(i32 36, float %9522, float 1.000000e+00)  ; FMin(a,b)
  %9527 = call float @dx.op.binary.f32(i32 36, float %9523, float 1.000000e+00)  ; FMin(a,b)
  %9528 = call float @dx.op.binary.f32(i32 36, float %9524, float 1.000000e+00)  ; FMin(a,b)
  %9529 = fcmp fast olt float %9525, 0x3FEFFF8020000000
  br i1 %9529, label %9530, label %9645, !dx.controlflow.hints !172

; <label>:9530                                    ; preds = %9497
  %9531 = extractvalue %dx.types.CBufRet.f32 %9415, 3
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 0
  %9534 = extractvalue %dx.types.CBufRet.f32 %9532, 1
  %9535 = extractvalue %dx.types.CBufRet.f32 %9532, 2
  %9536 = extractvalue %dx.types.CBufRet.f32 %9532, 3
  %9537 = fsub fast float %9533, %9525
  %9538 = fsub fast float %9534, %9526
  %9539 = fsub fast float %9535, %9527
  %9540 = fsub fast float %9536, %9528
  %9541 = fmul fast float %9537, %9531
  %9542 = fmul fast float %9538, %9531
  %9543 = fmul fast float %9539, %9531
  %9544 = fmul fast float %9540, %9531
  %9545 = fadd fast float %9541, %9525
  %9546 = fadd fast float %9542, %9526
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = fadd fast float %9543, %9527
  %9549 = fadd fast float %9544, %9528
  %9550 = fmul fast float %9545, %9545
  %9551 = fsub fast float %9546, %9550
  %9552 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9551)  ; FMax(a,b)
  %9553 = fdiv fast float 1.000000e+00, %9552
  %9554 = fmul fast float %9546, %9545
  %9555 = fsub fast float %9548, %9554
  %9556 = fsub fast float %9505, %9545
  %9557 = fmul fast float %9505, %9505
  %9558 = fsub fast float %9557, %9546
  %9559 = fmul fast float %9556, %9553
  %9560 = fmul fast float %9559, %9555
  %9561 = fsub fast float %9558, %9560
  %9562 = fmul fast float %9546, %9546
  %9563 = fsub fast float %9549, %9562
  %9564 = fmul fast float %9555, %9555
  %9565 = fmul fast float %9564, %9553
  %9566 = fsub fast float %9563, %9565
  %9567 = fdiv fast float %9561, %9566
  %9568 = fmul fast float %9555, %9567
  %9569 = fsub fast float %9556, %9568
  %9570 = fmul fast float %9569, %9553
  %9571 = fmul fast float %9570, %9545
  %9572 = fsub fast float 1.000000e+00, %9571
  %9573 = fmul fast float %9546, %9567
  %9574 = fsub fast float %9572, %9573
  %9575 = fmul fast float %9570, %9570
  %9576 = fmul fast float %9567, 4.000000e+00
  %9577 = fmul fast float %9576, %9574
  %9578 = fsub fast float %9575, %9577
  %9579 = call float @dx.op.unary.f32(i32 24, float %9578)  ; Sqrt(value)
  %9580 = fcmp fast oge float %9570, 0.000000e+00
  %9581 = fsub fast float -0.000000e+00, %9579
  %9582 = select i1 %9580, float %9581, float %9579
  %9583 = fsub fast float %9582, %9570
  %9584 = fdiv fast float %9583, %9567
  %9585 = fdiv fast float %9574, %9583
  %9586 = fmul fast float %9584, 5.000000e-01
  %9587 = fmul fast float %9585, 2.000000e+00
  %9588 = select i1 %9580, float %9586, float %9587
  %9589 = select i1 %9580, float %9587, float %9586
  %9590 = call float @dx.op.binary.f32(i32 35, float %9588, float %9589)  ; FMax(a,b)
  %9591 = call float @dx.op.binary.f32(i32 36, float %9588, float %9589)  ; FMin(a,b)
  %9592 = fcmp fast ogt float %9505, %9591
  br i1 %9592, label %9593, label %9603

; <label>:9593                                    ; preds = %9530
  %9594 = fsub fast float %9505, %9591
  %9595 = fsub fast float %9590, %9591
  %9596 = fmul fast float %9594, %9595
  %9597 = fmul fast float %9590, %9505
  %9598 = fadd fast float %9590, %9505
  %9599 = fmul fast float %9598, %9545
  %9600 = fadd fast float %9597, %9546
  %9601 = fsub fast float %9600, %9599
  %9602 = fdiv fast float %9601, %9596
  br label %9603

; <label>:9603                                    ; preds = %9593, %9530
  %9604 = phi float [ %9602, %9593 ], [ 0.000000e+00, %9530 ]
  %9605 = fcmp fast ogt float %9505, %9590
  %9606 = fsub fast float %9505, %9590
  br i1 %9605, label %9607, label %9617

; <label>:9607                                    ; preds = %9603
  %9608 = fsub fast float %9590, %9591
  %9609 = fmul fast float %9608, %9606
  %9610 = fmul fast float %9591, %9505
  %9611 = fadd fast float %9591, %9505
  %9612 = fmul fast float %9611, %9545
  %9613 = fsub fast float %9547, %9610
  %9614 = fadd fast float %9613, %9612
  %9615 = fdiv fast float %9614, %9609
  %9616 = fadd fast float %9615, %9604
  br label %9617

; <label>:9617                                    ; preds = %9607, %9603
  %9618 = phi float [ %9616, %9607 ], [ %9604, %9603 ]
  %9619 = fsub fast float %9505, %9591
  %9620 = fmul fast float %9619, %9606
  %9621 = fmul fast float %9591, %9590
  %9622 = fadd fast float %9591, %9590
  %9623 = fmul fast float %9622, %9545
  %9624 = fadd fast float %9621, %9546
  %9625 = fsub fast float %9624, %9623
  %9626 = fdiv fast float %9625, %9620
  %9627 = call float @dx.op.unary.f32(i32 7, float %9618)  ; Saturate(value)
  %9628 = fcmp fast oeq float %8312, 0.000000e+00
  %9629 = extractvalue %dx.types.CBufRet.f32 %9415, 0
  %9630 = fcmp fast oeq float %9629, 0.000000e+00
  %9631 = or i1 %9628, %9630
  %9632 = fmul fast float %9629, 2.000000e+00
  %9633 = fadd fast float %9416, %9417
  %9634 = fdiv fast float %9633, %9632
  %9635 = call float @dx.op.unary.f32(i32 7, float %9634)  ; Saturate(value)
  %9636 = fmul fast float %9635, 2.000000e+00
  %9637 = fsub fast float 3.000000e+00, %9636
  %9638 = fmul fast float %9635, %9635
  %9639 = fmul fast float %9638, %9637
  %9640 = select i1 %9631, float 1.000000e+00, float %9639
  %9641 = fmul fast float %9626, %8312
  %9642 = fadd fast float %9627, %9641
  %9643 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9644 = fmul fast float %9640, %9643
  br label %9645

; <label>:9645                                    ; preds = %9617, %9497
  %9646 = phi float [ %9644, %9617 ], [ 0.000000e+00, %9497 ]
  %9647 = fsub fast float 1.000000e+00, %9646
  %9648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9369, float %9370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9649 = extractvalue %dx.types.ResRet.f32 %9648, 0
  %9650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.i32 %9650, 2
  %9652 = icmp eq i32 %9651, 0
  br i1 %9652, label %9658, label %9653

; <label>:9653                                    ; preds = %9645
  %9654 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9655 = fadd fast float %9649, -1.000000e+00
  %9656 = fmul fast float %9654, %9655
  %9657 = fadd fast float %9656, 1.000000e+00
  br label %9658

; <label>:9658                                    ; preds = %9653, %9645
  %9659 = phi float [ %9657, %9653 ], [ %9647, %9645 ]
  br i1 %9423, label %9660, label %9678

; <label>:9660                                    ; preds = %9658
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 1
  %9663 = fsub fast float %9498, %9662
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9665 = fsub fast float %9498, %9422
  %9666 = call float @dx.op.unary.f32(i32 7, float %9665)  ; Saturate(value)
  %9667 = fsub fast float %9664, %9666
  %9668 = fsub fast float %9500, %9666
  %9669 = fdiv fast float %9668, %9667
  %9670 = call float @dx.op.unary.f32(i32 7, float %9669)  ; Saturate(value)
  %9671 = fmul fast float %9670, 2.000000e+00
  %9672 = fsub fast float 3.000000e+00, %9671
  %9673 = fsub fast float %9649, %9659
  %9674 = fmul fast float %9670, %9670
  %9675 = fmul fast float %9674, %9673
  %9676 = fmul fast float %9675, %9672
  %9677 = fadd fast float %9676, %9659
  br label %9678

; <label>:9678                                    ; preds = %9660, %9658
  %9679 = phi float [ %9677, %9660 ], [ %9659, %9658 ]
  %9680 = call float @dx.op.binary.f32(i32 35, float %9649, float %9679)  ; FMax(a,b)
  %9681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.i32 %9681, 2
  %9683 = and i32 %9682, 1
  %9684 = icmp eq i32 %9683, 0
  %9685 = fcmp fast une float %9680, 1.000000e+00
  %9686 = and i1 %9685, %9684
  br i1 %9686, label %9687, label %9704

; <label>:9687                                    ; preds = %9678
  %9688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9369, float %9370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9689 = extractvalue %dx.types.ResRet.f32 %9688, 0
  %9690 = extractvalue %dx.types.ResRet.f32 %9688, 1
  %9691 = extractvalue %dx.types.ResRet.f32 %9688, 2
  %9692 = fmul fast float %6284, %9689
  %9693 = fmul fast float %6284, %9690
  %9694 = fmul fast float %6284, %9691
  %9695 = fcmp fast ogt float %9649, 0x3FEFFF2E40000000
  %9696 = fsub fast float 1.000000e+00, %9680
  %9697 = fsub fast float 1.000000e+00, %9649
  %9698 = fdiv fast float %9696, %9697
  %9699 = call float @dx.op.unary.f32(i32 7, float %9698)  ; Saturate(value)
  %9700 = select i1 %9695, float 0.000000e+00, float %9699
  %9701 = fmul fast float %9692, %9700
  %9702 = fmul fast float %9693, %9700
  %9703 = fmul fast float %9694, %9700
  br label %9704

; <label>:9704                                    ; preds = %9687, %9678
  %9705 = phi float [ 0.000000e+00, %9678 ], [ %9701, %9687 ]
  %9706 = phi float [ 0.000000e+00, %9678 ], [ %9702, %9687 ]
  %9707 = phi float [ 0.000000e+00, %9678 ], [ %9703, %9687 ]
  %9708 = fmul fast float %9680, %9347
  %9709 = call float @dx.op.dot3.f32(i32 55, float %9680, float %9680, float %9680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9710 = call float @dx.op.dot3.f32(i32 55, float %9705, float %9706, float %9707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9711 = select i1 %219, float %9709, float %9680
  %9712 = select i1 %219, float 1.000000e+00, float %9680
  %9713 = select i1 %219, float %9710, float %9705
  %9714 = select i1 %219, float 0.000000e+00, float %9706
  %9715 = select i1 %219, float 0.000000e+00, float %9707
  %9716 = fmul fast float %9711, %9359
  %9717 = fmul fast float %9711, %9360
  %9718 = fmul fast float %9712, %9361
  %9719 = fadd fast float %9716, %9713
  %9720 = fadd fast float %9717, %9714
  %9721 = fadd fast float %9715, %9718
  %9722 = fmul fast float %9711, %9362
  %9723 = fmul fast float %9711, %9363
  %9724 = fmul fast float %9712, %9364
  br label %9725

; <label>:9725                                    ; preds = %9704, %9368, %9340, %8572
  %9726 = phi float [ %8577, %8572 ], [ %9359, %9340 ], [ %9719, %9704 ], [ %9359, %9368 ]
  %9727 = phi float [ %8578, %8572 ], [ %9360, %9340 ], [ %9720, %9704 ], [ %9360, %9368 ]
  %9728 = phi float [ %8579, %8572 ], [ %9361, %9340 ], [ %9721, %9704 ], [ %9361, %9368 ]
  %9729 = phi float [ %8580, %8572 ], [ %9362, %9340 ], [ %9722, %9704 ], [ %9362, %9368 ]
  %9730 = phi float [ %8581, %8572 ], [ %9363, %9340 ], [ %9723, %9704 ], [ %9363, %9368 ]
  %9731 = phi float [ %8582, %8572 ], [ %9364, %9340 ], [ %9724, %9704 ], [ %9364, %9368 ]
  %9732 = phi float [ %8583, %8572 ], [ %9347, %9340 ], [ %9708, %9704 ], [ %9347, %9368 ]
  %9733 = fmul fast float %6229, %102
  %9734 = fmul fast float %6230, %103
  %9735 = call float @dx.op.unary.f32(i32 7, float %9733)  ; Saturate(value)
  %9736 = call float @dx.op.unary.f32(i32 7, float %9734)  ; Saturate(value)
  %9737 = select i1 %8322, i32 2, i32 0
  %9738 = or i32 %9737, 1
  %9739 = uitofp i32 %9738 to float
  %9740 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9735, float %9736, float %9739, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9741 = extractvalue %dx.types.ResRet.f32 %9740, 0
  %9742 = extractvalue %dx.types.ResRet.f32 %9740, 1
  %9743 = extractvalue %dx.types.ResRet.f32 %9740, 2
  %9744 = extractvalue %dx.types.ResRet.f32 %9740, 3
  %9745 = add nuw nsw i32 %9737, 2
  %9746 = uitofp i32 %9745 to float
  %9747 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9735, float %9736, float %9746, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9748 = extractvalue %dx.types.ResRet.f32 %9747, 0
  %9749 = extractvalue %dx.types.ResRet.f32 %9747, 1
  %9750 = extractvalue %dx.types.ResRet.f32 %9747, 2
  %9751 = extractvalue %dx.types.ResRet.f32 %9747, 3
  %9752 = call float @dx.op.binary.f32(i32 35, float %9742, float %9743)  ; FMax(a,b)
  %9753 = call float @dx.op.binary.f32(i32 35, float %9741, float %9752)  ; FMax(a,b)
  %9754 = call float @dx.op.binary.f32(i32 35, float %9753, float %9744)  ; FMax(a,b)
  %9755 = call float @dx.op.binary.f32(i32 36, float %9749, float %9750)  ; FMin(a,b)
  %9756 = call float @dx.op.binary.f32(i32 36, float %9748, float %9755)  ; FMin(a,b)
  %9757 = call float @dx.op.binary.f32(i32 36, float %9756, float %9751)  ; FMin(a,b)
  %9758 = fmul fast float %9754, 2.550000e+02
  %9759 = fadd fast float %9758, 0x3F70101020000000
  %9760 = fptoui float %9759 to i32
  %9761 = fmul fast float %9757, 2.550000e+02
  %9762 = fadd fast float %9761, 0x3F70101020000000
  %9763 = fptoui float %9762 to i32
  %9764 = icmp ult i32 %9760, %9763
  br i1 %9764, label %9765, label %9932

; <label>:9765                                    ; preds = %9725
  %9766 = fcmp fast ogt float %92, 9.843750e-01
  %9767 = fadd fast float %8576, -4.000000e+00
  %9768 = select i1 %9766, float -4.000000e+00, float %9767
  %9769 = call float @dx.op.binary.f32(i32 35, float %9768, float 0.000000e+00)  ; FMax(a,b)
  %9770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9771 = extractvalue %dx.types.CBufRet.f32 %9770, 0
  %9772 = fadd fast float %9771, %9769
  %9773 = extractvalue %dx.types.CBufRet.f32 %9770, 2
  %9774 = fmul fast float %9772, %9773
  %9775 = call float @dx.op.unary.f32(i32 23, float %9774)  ; Log(value)
  %9776 = extractvalue %dx.types.CBufRet.f32 %9770, 3
  %9777 = fmul fast float %9776, %9775
  %9778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9779 = extractvalue %dx.types.CBufRet.f32 %9778, 2
  %9780 = fmul fast float %9777, %9779
  %9781 = call float @dx.op.unary.f32(i32 7, float %9780)  ; Saturate(value)
  %9782 = uitofp i32 %9760 to float
  %9783 = uitofp i32 %9763 to float
  %9784 = fadd fast float %9782, 5.000000e-01
  %9785 = fadd fast float %9783, 5.000000e-01
  %9786 = fmul fast float %9779, %9784
  %9787 = fmul fast float %9779, %9785
  %9788 = fadd fast float %9786, 0x3F0FFB4800000000
  %9789 = fadd fast float %9787, 0xBF0FFB4800000000
  %9790 = call float @dx.op.binary.f32(i32 35, float %9781, float %9788)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 36, float %9790, float %9789)  ; FMin(a,b)
  %9792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9792, 1
  %9794 = extractvalue %dx.types.CBufRet.f32 %9792, 2
  %9795 = extractvalue %dx.types.CBufRet.f32 %9792, 0
  %9796 = select i1 %8322, float %9795, float 0.000000e+00
  %9797 = fmul fast float %9793, %9791
  %9798 = fadd fast float %9796, %9797
  %9799 = fadd fast float %9796, %9794
  %9800 = fsub fast float %9793, %9794
  %9801 = fadd fast float %9800, %9796
  %9802 = call float @dx.op.binary.f32(i32 35, float %9798, float %9799)  ; FMax(a,b)
  %9803 = call float @dx.op.binary.f32(i32 36, float %9802, float %9801)  ; FMin(a,b)
  %9804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9735, float %9736, float %9803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9805 = extractvalue %dx.types.ResRet.f32 %9804, 0
  %9806 = extractvalue %dx.types.ResRet.f32 %9804, 1
  %9807 = extractvalue %dx.types.ResRet.f32 %9804, 2
  %9808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9809 = extractvalue %dx.types.CBufRet.i32 %9808, 0
  %9810 = extractvalue %dx.types.CBufRet.i32 %9808, 1
  %9811 = uitofp i32 %9809 to float
  %9812 = uitofp i32 %9810 to float
  %9813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9814 = extractvalue %dx.types.CBufRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.CBufRet.f32 %9813, 1
  %9816 = fmul fast float %9811, %9735
  %9817 = fmul fast float %9812, %9736
  %9818 = fadd fast float %9816, -5.000000e-01
  %9819 = fadd fast float %9817, -5.000000e-01
  %9820 = call float @dx.op.unary.f32(i32 22, float %9818)  ; Frc(value)
  %9821 = call float @dx.op.unary.f32(i32 22, float %9819)  ; Frc(value)
  %9822 = fmul fast float %9820, %9820
  %9823 = fmul fast float %9822, %9820
  %9824 = fsub fast float 3.000000e+00, %9820
  %9825 = fmul fast float %9822, %9824
  %9826 = fmul fast float %9820, 3.000000e+00
  %9827 = fmul fast float %9823, 3.000000e+00
  %9828 = fmul fast float %9822, 6.000000e+00
  %9829 = fsub fast float %9827, %9828
  %9830 = fadd fast float %9829, 4.000000e+00
  %9831 = fmul fast float %9830, 0x3FC5555560000000
  %9832 = fmul fast float %9823, -3.000000e+00
  %9833 = fadd fast float %9822, %9820
  %9834 = fmul fast float %9833, 3.000000e+00
  %9835 = fadd fast float %9832, 1.000000e+00
  %9836 = fadd fast float %9835, %9834
  %9837 = fmul fast float %9823, 0x3FC5555560000000
  %9838 = fmul fast float %9821, %9821
  %9839 = fmul fast float %9838, %9821
  %9840 = fsub fast float 3.000000e+00, %9821
  %9841 = fmul fast float %9838, %9840
  %9842 = fmul fast float %9821, 3.000000e+00
  %9843 = fmul fast float %9839, 3.000000e+00
  %9844 = fmul fast float %9838, 6.000000e+00
  %9845 = fsub fast float %9843, %9844
  %9846 = fadd fast float %9845, 4.000000e+00
  %9847 = fmul fast float %9846, 0x3FC5555560000000
  %9848 = fmul fast float %9839, -3.000000e+00
  %9849 = fadd fast float %9838, %9821
  %9850 = fmul fast float %9849, 3.000000e+00
  %9851 = fadd fast float %9848, 1.000000e+00
  %9852 = fadd fast float %9851, %9850
  %9853 = fmul fast float %9839, 0x3FC5555560000000
  %9854 = fadd fast float %9820, 1.000000e+00
  %9855 = fsub fast float 1.000000e+00, %9826
  %9856 = fadd fast float %9855, %9825
  %9857 = fadd fast float %9856, %9830
  %9858 = fmul fast float %9857, 0x3FC5555560000000
  %9859 = fdiv fast float %9831, %9858
  %9860 = fsub fast float %9854, %9859
  %9861 = fsub fast float 1.000000e+00, %9820
  %9862 = fadd fast float %9836, %9823
  %9863 = fmul fast float %9862, 0x3FC5555560000000
  %9864 = fdiv fast float %9837, %9863
  %9865 = fadd fast float %9861, %9864
  %9866 = fadd fast float %9821, 1.000000e+00
  %9867 = fsub fast float 1.000000e+00, %9842
  %9868 = fadd fast float %9867, %9841
  %9869 = fadd fast float %9868, %9846
  %9870 = fmul fast float %9869, 0x3FC5555560000000
  %9871 = fdiv fast float %9847, %9870
  %9872 = fsub fast float %9866, %9871
  %9873 = fsub fast float 1.000000e+00, %9821
  %9874 = fadd fast float %9852, %9839
  %9875 = fmul fast float %9874, 0x3FC5555560000000
  %9876 = fdiv fast float %9853, %9875
  %9877 = fadd fast float %9876, %9873
  %9878 = fmul fast float %9860, %9814
  %9879 = fsub fast float %9735, %9878
  %9880 = fmul fast float %9865, %9814
  %9881 = fadd fast float %9880, %9735
  %9882 = fmul fast float %9877, %9815
  %9883 = fadd fast float %9882, %9736
  %9884 = fmul fast float %9872, %9815
  %9885 = fsub fast float %9736, %9884
  %9886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9879, float %9885, float %9803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9887 = extractvalue %dx.types.ResRet.f32 %9886, 0
  %9888 = extractvalue %dx.types.ResRet.f32 %9886, 1
  %9889 = extractvalue %dx.types.ResRet.f32 %9886, 2
  %9890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9881, float %9885, float %9803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9891 = extractvalue %dx.types.ResRet.f32 %9890, 0
  %9892 = extractvalue %dx.types.ResRet.f32 %9890, 1
  %9893 = extractvalue %dx.types.ResRet.f32 %9890, 2
  %9894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9879, float %9883, float %9803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9895 = extractvalue %dx.types.ResRet.f32 %9894, 0
  %9896 = extractvalue %dx.types.ResRet.f32 %9894, 1
  %9897 = extractvalue %dx.types.ResRet.f32 %9894, 2
  %9898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9881, float %9883, float %9803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9899 = extractvalue %dx.types.ResRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.ResRet.f32 %9898, 1
  %9901 = extractvalue %dx.types.ResRet.f32 %9898, 2
  %9902 = fsub fast float %9895, %9887
  %9903 = fsub fast float %9896, %9888
  %9904 = fsub fast float %9897, %9889
  %9905 = fmul fast float %9902, %9875
  %9906 = fmul fast float %9903, %9875
  %9907 = fmul fast float %9904, %9875
  %9908 = fadd fast float %9905, %9887
  %9909 = fadd fast float %9906, %9888
  %9910 = fadd fast float %9907, %9889
  %9911 = fsub fast float %9899, %9891
  %9912 = fsub fast float %9900, %9892
  %9913 = fsub fast float %9901, %9893
  %9914 = fmul fast float %9911, %9875
  %9915 = fmul fast float %9912, %9875
  %9916 = fmul fast float %9913, %9875
  %9917 = fsub fast float %9891, %9908
  %9918 = fadd fast float %9917, %9914
  %9919 = fsub fast float %9892, %9909
  %9920 = fadd fast float %9919, %9915
  %9921 = fsub fast float %9893, %9910
  %9922 = fadd fast float %9921, %9916
  %9923 = fmul fast float %9918, %9863
  %9924 = fmul fast float %9920, %9863
  %9925 = fmul fast float %9922, %9863
  %9926 = fadd fast float %9923, %9908
  %9927 = fadd fast float %9924, %9909
  %9928 = fadd fast float %9925, %9910
  %9929 = fmul fast float %9926, %6284
  %9930 = fmul fast float %9927, %6284
  %9931 = fmul fast float %9928, %6284
  br label %9932

; <label>:9932                                    ; preds = %9765, %9725
  %9933 = phi float [ %9805, %9765 ], [ 1.000000e+00, %9725 ]
  %9934 = phi float [ %9806, %9765 ], [ 1.000000e+00, %9725 ]
  %9935 = phi float [ %9807, %9765 ], [ 1.000000e+00, %9725 ]
  %9936 = phi float [ %9929, %9765 ], [ 0.000000e+00, %9725 ]
  %9937 = phi float [ %9930, %9765 ], [ 0.000000e+00, %9725 ]
  %9938 = phi float [ %9931, %9765 ], [ 0.000000e+00, %9725 ]
  %9939 = fmul fast float %9933, %9732
  %9940 = call float @dx.op.dot3.f32(i32 55, float %9933, float %9934, float %9935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9941 = call float @dx.op.dot3.f32(i32 55, float %9936, float %9937, float %9938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9942 = select i1 %219, float %9940, float %9933
  %9943 = select i1 %219, float %9940, float %9934
  %9944 = select i1 %219, float 1.000000e+00, float %9935
  %9945 = select i1 %219, float %9941, float %9936
  %9946 = select i1 %219, float 0.000000e+00, float %9937
  %9947 = select i1 %219, float 0.000000e+00, float %9938
  %9948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.i32 %9948, 3
  %9950 = and i32 %9949, 3
  %9951 = icmp ne i32 %9950, 0
  %9952 = and i32 %9949, 4
  %9953 = icmp ne i32 %9952, 0
  %9954 = and i1 %9951, %9953
  %9955 = and i1 %219, %9954
  br i1 %9955, label %9956, label %9962

; <label>:9956                                    ; preds = %9932
  %9957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9958 = extractvalue %dx.types.CBufRet.f32 %9957, 1
  %9959 = fadd fast float %9939, -1.000000e+00
  %9960 = fmul fast float %9958, %9959
  %9961 = fadd fast float %9960, 1.000000e+00
  br label %9962

; <label>:9962                                    ; preds = %9956, %9932
  %9963 = phi float [ %9961, %9956 ], [ %9939, %9932 ]
  %9964 = fadd fast float %9729, %9726
  %9965 = fmul fast float %9942, %9964
  %9966 = fadd fast float %9965, %9945
  %9967 = fadd fast float %9730, %9727
  %9968 = fmul fast float %9943, %9967
  %9969 = fadd fast float %9968, %9946
  %9970 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  br i1 %219, label %9971, label %9986

; <label>:9971                                    ; preds = %9962
  %9972 = fadd fast float %9966, %9969
  %9973 = fmul fast float %9970, %9972
  %9974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9975 = extractvalue %dx.types.CBufRet.f32 %9974, 3
  %9976 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %9977 = fsub fast float %8309, %8303
  %9978 = fadd fast float %9977, %8310
  %9979 = fsub fast float %9978, %9976
  %9980 = extractvalue %dx.types.CBufRet.f32 %8304, 2
  %9981 = fmul fast float %9979, %9980
  %9982 = call float @dx.op.unary.f32(i32 7, float %9981)  ; Saturate(value)
  %9983 = fsub fast float %9982, %9975
  %9984 = fmul fast float %9983, %9963
  %9985 = fadd fast float %9984, %9975
  br label %10010

; <label>:9986                                    ; preds = %9962
  %9987 = fadd fast float %9731, %9728
  %9988 = fmul fast float %9944, %9987
  %9989 = fadd fast float %9988, %9947
  %9990 = fmul fast float %9970, %9966
  %9991 = fmul fast float %9970, %9969
  %9992 = fmul fast float %9970, %9989
  %9993 = call float @dx.op.binary.f32(i32 35, float %9991, float %9992)  ; FMax(a,b)
  %9994 = call float @dx.op.binary.f32(i32 35, float %9990, float %9993)  ; FMax(a,b)
  %9995 = call float @dx.op.binary.f32(i32 35, float %9994, float 1.000000e+00)  ; FMax(a,b)
  %9996 = fcmp fast ugt float %9995, 0x3F10000000000000
  br i1 %9996, label %9998, label %9997

; <label>:9997                                    ; preds = %9986
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9998

; <label>:9998                                    ; preds = %9997, %9986
  %9999 = add i32 %56, 356
  %10000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9999, i32 undef)  ; BufferLoad(srv,index,wot)
  %10001 = extractvalue %dx.types.ResRet.i32 %10000, 0
  %10002 = and i32 %10001, 32
  %10003 = icmp eq i32 %10002, 0
  br i1 %10003, label %10010, label %10004

; <label>:10004                                   ; preds = %9998
  %10005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10006 = extractvalue %dx.types.CBufRet.f32 %10005, 0
  %10007 = fmul fast float %10006, 0x3FE99999A0000000
  %10008 = fadd fast float %10006, %9990
  %10009 = fadd fast float %10007, %9992
  br label %10010

; <label>:10010                                   ; preds = %10004, %9998, %9971
  %10011 = phi float [ %9973, %9971 ], [ %10008, %10004 ], [ %9990, %9998 ]
  %10012 = phi float [ %9985, %9971 ], [ %9991, %10004 ], [ %9991, %9998 ]
  %10013 = phi float [ 1.000000e+00, %9971 ], [ %10009, %10004 ], [ %9992, %9998 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10014 = call float @dx.op.binary.f32(i32 36, float %10011, float 3.225500e+04)  ; FMin(a,b)
  %10015 = call float @dx.op.binary.f32(i32 36, float %10012, float 3.225500e+04)  ; FMin(a,b)
  %10016 = call float @dx.op.binary.f32(i32 36, float %10013, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10014)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10015)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!70 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !93}
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
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !102, i64 0}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

