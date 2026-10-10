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
;
; shader hash: 2945d57f4e50275d5447337ca39547e6
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
; Number of inputs: 48, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %97 = alloca [3 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fmul fast float %102, %91
  %104 = fmul fast float %102, %92
  %105 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = bitcast float %105 to i32
  %107 = ashr i32 %106, 1
  %108 = sub nsw i32 1597250115, %107
  %109 = bitcast i32 %108 to float
  %110 = fmul fast float %109, %82
  %111 = fmul fast float %109, %83
  %112 = fmul fast float %109, %84
  %113 = fmul fast float %83, %80
  %114 = fmul fast float %84, %79
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %84, %78
  %117 = fmul fast float %82, %80
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %82, %79
  %120 = fmul fast float %83, %78
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %115, %81
  %123 = fmul fast float %118, %81
  %124 = fmul fast float %121, %81
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %103, 2.000000e+00
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %104, 2.000000e+00
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 1.000000e+00, %129
  %133 = fsub fast float 1.000000e+00, %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %132, %135
  %139 = fmul fast float %132, %136
  %140 = fmul fast float %132, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %133, %142
  %146 = fmul fast float %133, %143
  %147 = fmul fast float %133, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %152, %138
  %154 = fadd fast float %146, %150
  %155 = fadd fast float %154, %139
  %156 = fadd fast float %147, %151
  %157 = fadd fast float %156, %140
  %158 = fmul fast float %153, %94
  %159 = fmul fast float %155, %94
  %160 = fmul fast float %157, %94
  %161 = fmul fast float %103, 5.000000e-01
  %162 = fmul fast float %104, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %103
  %185 = fmul fast float %183, %104
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %51, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp ne i32 %202, 0
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %216

; <label>:205                                     ; preds = %0
  %206 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %207 = fmul fast float %206, %104
  %208 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %209 = fmul fast float %208, %103
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %209, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast olt float %212, %214
  br label %219

; <label>:216                                     ; preds = %0
  %217 = icmp eq i32 %202, 0
  %218 = and i1 %201, %217
  br label %219

; <label>:219                                     ; preds = %216, %205
  %220 = phi i1 [ %215, %205 ], [ %218, %216 ]
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fmul fast float %222, 0x3FE3C6EF40000000
  %224 = frem fast float %103, 2.560000e+02
  %225 = frem fast float %104, 2.560000e+02
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = fadd fast float %229, %223
  %232 = fadd fast float %230, %223
  %233 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %234 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %235 = add i32 %56, 156
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %56, 216
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %56, 36
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %56, 288
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %56, 172
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %56, 232
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %56, 52
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %56, 304
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %56, 188
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %56, 248
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %56, 68
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %56, 320
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %56, 204
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %56, 264
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %56, 84
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %56, 336
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %56, 348
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 32
  %407 = icmp eq i32 %406, 0
  %408 = and i32 %405, 64
  %409 = icmp eq i32 %408, 0
  %410 = and i32 %405, 128
  %411 = icmp eq i32 %410, 0
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %431, label %416

; <label>:416                                     ; preds = %219
  %417 = add i32 %56, 520
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %419, 0
  %421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %421, %dx.types.Handle %100, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = extractvalue %dx.types.ResRet.f32 %422, 3
  %427 = fmul fast float %426, %87
  %428 = fmul fast float %423, %88
  %429 = fmul fast float %424, %89
  %430 = fmul fast float %425, %90
  br label %431

; <label>:431                                     ; preds = %416, %219
  %432 = phi float [ %90, %219 ], [ %430, %416 ]
  %433 = phi float [ %89, %219 ], [ %429, %416 ]
  %434 = phi float [ %88, %219 ], [ %428, %416 ]
  %435 = phi float [ %87, %219 ], [ %427, %416 ]
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %459, label %440

; <label>:440                                     ; preds = %431
  %441 = add i32 %56, 44
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %434, float 1.000000e+00
  %447 = add i32 %56, 60
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %433, float 1.000000e+00
  %453 = add i32 %56, 76
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 1
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %457, float %432, float 1.000000e+00
  br label %459

; <label>:459                                     ; preds = %440, %431
  %460 = phi float [ %432, %431 ], [ %458, %440 ]
  %461 = phi float [ %433, %431 ], [ %452, %440 ]
  %462 = phi float [ %434, %431 ], [ %446, %440 ]
  %463 = lshr i32 %437, 20
  %464 = and i32 %463, 3
  %465 = add nuw nsw i32 %464, 1
  %466 = add i32 %56, 24
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %56, 28
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = or i32 %471, %468
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %1234, label %474

; <label>:474                                     ; preds = %459
  %475 = and i32 %468, 262144
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %60, float 1.000000e+00
  %478 = select i1 %476, float %61, float 0.000000e+00
  %479 = select i1 %476, float %62, float 0.000000e+00
  %480 = select i1 %476, float %63, float 1.000000e+00
  %481 = select i1 %476, float %64, float %85
  %482 = select i1 %476, float %65, float %86
  %483 = add i32 %56, 284
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = fmul fast float %487, 0x3F50624DE0000000
  %489 = add i32 %56, 88
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  %494 = lshr i32 %491, 24
  %495 = add i32 %56, 292
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %497, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = add i32 %56, 32
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = lshr i32 %504, 22
  %506 = shl nuw nsw i32 %505, 5
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = shl i32 %504, 4
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %504, 7
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %516 = fmul fast float %515, 1.000000e+03
  %517 = fmul fast float %275, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %265
  %520 = fmul fast float %276, %516
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fadd fast float %521, %267
  %523 = fmul fast float %488, %516
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = fmul fast float %524, 0x401921FB60000000
  %526 = fadd fast float %525, %507
  %527 = call float @dx.op.unary.f32(i32 13, float %526)  ; Sin(value)
  %528 = call float @dx.op.unary.f32(i32 12, float %526)  ; Cos(value)
  %529 = fsub fast float -0.000000e+00, %527
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fadd fast float %482, -5.000000e-01
  %532 = fmul fast float %499, %530
  %533 = fmul fast float %501, %531
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fmul fast float %510, %534
  %537 = fmul fast float %513, %535
  %538 = fmul fast float %528, %536
  %539 = call float @dx.op.tertiary.f32(i32 46, float %529, float %537, float %538)  ; FMad(a,b,c)
  %540 = fmul fast float %527, %536
  %541 = call float @dx.op.tertiary.f32(i32 46, float %528, float %537, float %540)  ; FMad(a,b,c)
  %542 = fadd fast float %519, %539
  %543 = fadd fast float %522, %541
  %544 = icmp ugt i32 %493, 1
  %545 = icmp ugt i32 %491, 33554431
  %546 = or i1 %545, %544
  br i1 %546, label %547, label %572

; <label>:547                                     ; preds = %474
  %548 = add i32 %56, 228
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fmul fast float %515, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = mul nuw nsw i32 %493, %494
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %554, %556
  %558 = call float @dx.op.unary.f32(i32 27, float %557)  ; Round_ni(value)
  %559 = fptoui float %558 to i32
  %560 = urem i32 %559, %493
  %561 = udiv i32 %559, %494
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %564 = uitofp i32 %560 to float
  %565 = uitofp i32 %561 to float
  %566 = fadd fast float %562, %564
  %567 = fadd fast float %563, %565
  %568 = uitofp i32 %493 to float
  %569 = uitofp i32 %494 to float
  %570 = fdiv fast float %566, %568
  %571 = fdiv fast float %567, %569
  br label %572

; <label>:572                                     ; preds = %547, %474
  %573 = phi float [ %570, %547 ], [ %542, %474 ]
  %574 = phi float [ %571, %547 ], [ %543, %474 ]
  %575 = and i32 %468, 16777216
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %686, label %577

; <label>:577                                     ; preds = %572
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = fadd fast float %579, %158
  %583 = fadd fast float %580, %159
  %584 = fadd fast float %581, %160
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = icmp eq i32 %57, 65535
  br i1 %588, label %683, label %589

; <label>:589                                     ; preds = %577
  %590 = lshr i32 %57, 1
  %591 = shl i32 %590, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %57, 1
  %595 = icmp ne i32 %594, 0
  %596 = lshr i32 %593, 16
  %597 = and i32 %593, 65535
  %598 = select i1 %595, i32 %596, i32 %597
  %599 = icmp eq i32 %598, 65535
  br i1 %599, label %679, label %600

; <label>:600                                     ; preds = %589
  %601 = mul nuw nsw i32 %598, 40
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %601, 12
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %601, 24
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %601, 36
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fsub fast float %584, %605
  %622 = fmul fast float %618, %619
  %623 = fmul fast float %618, %620
  %624 = fmul fast float %618, %621
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = fmul fast float %630, %610
  %634 = shl i32 %57, 2
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %638, %dx.types.Handle %51, float %639, float %640, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fsub fast float %624, %627
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fadd fast float %625, 1.250000e-01
  %662 = fadd fast float %661, %658
  %663 = fadd fast float %662, %652
  %664 = fadd fast float %626, 1.250000e-01
  %665 = fadd fast float %664, %659
  %666 = fadd fast float %665, %653
  %667 = fadd fast float %627, 1.250000e-01
  %668 = fadd fast float %667, %660
  %669 = fadd fast float %668, %654
  %670 = fmul fast float %663, %613
  %671 = fmul fast float %666, %614
  %672 = fmul fast float %669, %615
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %676, %dx.types.Handle %49, float %670, float %671, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  br label %679

; <label>:679                                     ; preds = %600, %589
  %680 = phi float [ %678, %600 ], [ -1.000000e+00, %589 ]
  %681 = fadd fast float %680, %587
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  br label %683

; <label>:683                                     ; preds = %679, %577
  %684 = phi float [ %682, %679 ], [ %587, %577 ]
  %685 = fmul fast float %684, %435
  br label %686

; <label>:686                                     ; preds = %683, %572
  %687 = phi float [ %685, %683 ], [ %435, %572 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 256
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %738, label %692

; <label>:692                                     ; preds = %686
  %693 = add i32 %56, 456
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %100, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = add i32 %56, 100
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = shl i32 %702, 4
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = lshr i32 %702, 7
  %707 = and i32 %706, 32752
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = fsub fast float 1.000000e+00, %687
  %710 = call float @dx.op.binary.f32(i32 35, float %709, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %711 = bitcast float %687 to i32
  %712 = sitofp i32 %711 to float
  %713 = fadd fast float %712, 0xC1CFBF8940000000
  %714 = fmul fast float %708, %713
  %715 = fadd fast float %714, 0x41CFBF8940000000
  %716 = fptosi float %715 to i32
  %717 = bitcast i32 %716 to float
  %718 = bitcast float %710 to i32
  %719 = sitofp i32 %718 to float
  %720 = fadd fast float %719, 0xC1CFBF8940000000
  %721 = fmul fast float %720, %708
  %722 = fadd fast float %721, 0x41CFBF8940000000
  %723 = fptosi float %722 to i32
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %717, %705
  %726 = fmul fast float %724, %705
  %727 = fsub fast float %710, %725
  %728 = fadd fast float %726, %710
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = fsub fast float %699, %729
  %732 = fsub fast float %730, %729
  %733 = bitcast float %732 to i32
  %734 = sub nsw i32 2129859010, %733
  %735 = bitcast i32 %734 to float
  %736 = fmul fast float %735, %731
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %692, %686
  %739 = phi float [ %737, %692 ], [ %687, %686 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 128
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %760, label %744

; <label>:744                                     ; preds = %738
  %745 = add i32 %56, 440
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = add i32 %747, 0
  %749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %749, %dx.types.Handle %100, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 524288
  %755 = icmp ne i32 %754, 0
  %756 = fcmp fast ogt float %751, 0x3FE0101020000000
  %757 = select i1 %756, float 1.000000e+00, float 0.000000e+00
  %758 = select i1 %755, float %757, float %751
  %759 = fmul fast float %758, %739
  br label %760

; <label>:760                                     ; preds = %744, %738
  %761 = phi float [ %759, %744 ], [ %739, %738 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 16
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %964, label %766

; <label>:766                                     ; preds = %760
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %56, 392
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %771, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %773, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = and i32 %768, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %768, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %778, %780
  %785 = fadd fast float %784, %783
  %786 = fmul fast float %785, 0x3F70101000000000
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 512
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %799, label %791

; <label>:791                                     ; preds = %766
  %792 = add i32 %56, 472
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %794, 0
  %796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %796, %dx.types.Handle %100, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  br label %799

; <label>:799                                     ; preds = %791, %766
  %800 = phi float [ %798, %791 ], [ 1.000000e+00, %766 ]
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 33554432
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %911, label %805

; <label>:805                                     ; preds = %799
  %806 = add i32 %56, 224
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %808, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = add i32 %56, 228
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 24
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = and i32 %819, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = lshr i32 %819, 8
  %827 = and i32 %826, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = lshr i32 %819, 16
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = add i32 %56, 220
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 24
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = and i32 %836, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = lshr i32 %836, 8
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = lshr i32 %836, 16
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = bitcast float %775 to i32
  %852 = ashr i32 %851, 1
  %853 = sub nsw i32 1597463174, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %775, 5.000000e-01
  %856 = fmul fast float %854, %854
  %857 = fmul fast float %856, %855
  %858 = fsub fast float 1.500000e+00, %857
  %859 = fmul fast float %854, %775
  %860 = fmul fast float %859, %858
  %861 = bitcast float %776 to i32
  %862 = ashr i32 %861, 1
  %863 = sub nsw i32 1597463174, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %776, 5.000000e-01
  %866 = fmul fast float %864, %864
  %867 = fmul fast float %866, %865
  %868 = fsub fast float 1.500000e+00, %867
  %869 = fmul fast float %864, %776
  %870 = fmul fast float %869, %868
  %871 = bitcast float %777 to i32
  %872 = ashr i32 %871, 1
  %873 = sub nsw i32 1597463174, %872
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %777, 5.000000e-01
  %876 = fmul fast float %874, %874
  %877 = fmul fast float %876, %875
  %878 = fsub fast float 1.500000e+00, %877
  %879 = fmul fast float %874, %777
  %880 = fmul fast float %879, %878
  %881 = fsub fast float %860, %842
  %882 = fsub fast float %870, %846
  %883 = fsub fast float %880, %850
  %884 = fmul fast float %881, %810
  %885 = fmul fast float %882, %812
  %886 = fmul fast float %883, %817
  %887 = fadd fast float %884, %825
  %888 = fadd fast float %885, %829
  %889 = fadd fast float %886, %833
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fmul fast float %892, %892
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fsub fast float %895, %777
  %899 = fmul fast float %896, %800
  %900 = fmul fast float %897, %800
  %901 = fmul fast float %898, %800
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %822, %786
  %906 = fsub fast float %905, %839
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = fsub fast float %907, %786
  %909 = fmul fast float %908, %800
  %910 = fadd fast float %909, %786
  br label %964

; <label>:911                                     ; preds = %799
  %912 = and i32 %802, 134217728
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %948, label %914

; <label>:914                                     ; preds = %911
  %915 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fmul fast float %918, %800
  %922 = fmul fast float %919, %800
  %923 = fmul fast float %920, %800
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = fmul fast float %924, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %927
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %927
  %935 = fmul fast float %925, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %928
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %928
  %940 = fmul fast float %926, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %929
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %929
  %945 = fmul fast float %934, %934
  %946 = fmul fast float %939, %939
  %947 = fmul fast float %944, %944
  br label %964

; <label>:948                                     ; preds = %911
  %949 = fmul fast float %252, %252
  %950 = fmul fast float %256, %256
  %951 = fmul fast float %260, %260
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fmul fast float %800, %952
  %956 = fmul fast float %800, %953
  %957 = fmul fast float %800, %954
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  %963 = fmul fast float %960, %777
  br label %964

; <label>:964                                     ; preds = %948, %914, %805, %760
  %965 = phi float [ %910, %805 ], [ %786, %914 ], [ %786, %948 ], [ 0x3FA23C0BE0000000, %760 ]
  %966 = phi float [ %902, %805 ], [ %945, %914 ], [ %961, %948 ], [ 1.000000e+00, %760 ]
  %967 = phi float [ %903, %805 ], [ %946, %914 ], [ %962, %948 ], [ 1.000000e+00, %760 ]
  %968 = phi float [ %904, %805 ], [ %947, %914 ], [ %963, %948 ], [ 1.000000e+00, %760 ]
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 1
  %971 = and i32 %970, 1
  %972 = icmp ne i32 %971, 0
  %973 = add i32 %56, 356
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 32
  %977 = icmp ne i32 %976, 0
  %978 = and i1 %972, %977
  %979 = select i1 %978, float 1.000000e+00, float %966
  %980 = select i1 %978, float 0x3FD3333340000000, float %967
  %981 = select i1 %978, float 0x3FD3333340000000, float %968
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1058, label %986

; <label>:986                                     ; preds = %964
  %987 = add i32 %56, 92
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %56, 408
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = add i32 %992, 0
  %994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %994, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = and i32 %989, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %989, 8
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = lshr i32 %989, 16
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fmul fast float %996, %1001
  %1010 = fadd fast float %1009, %1004
  %1011 = fmul fast float %1010, 0x3F70101000000000
  %1012 = fadd fast float %997, -5.000000e-01
  %1013 = fadd fast float %999, -5.000000e-01
  %1014 = fmul fast float %1012, %1008
  %1015 = fmul fast float %1013, %1008
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fadd fast float %1015, 5.000000e-01
  %1018 = fmul fast float %1016, 2.000000e+00
  %1019 = fadd fast float %1018, -1.000000e+00
  %1020 = fmul fast float %1017, 2.000000e+00
  %1021 = fadd fast float %1020, -1.000000e+00
  %1022 = fadd fast float %1019, %1021
  %1023 = fmul fast float %1022, 5.000000e-01
  %1024 = fsub fast float %1019, %1021
  %1025 = fmul fast float %1024, 5.000000e-01
  %1026 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1029 = fsub fast float %1027, %1028
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1025, float %1029, float %1023, float %1025, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 25, float %1030)  ; Rsqrt(value)
  %1032 = fmul fast float %1023, %1031
  %1033 = fmul fast float %1025, %1031
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 67108864
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1054, label %1038

; <label>:1038                                    ; preds = %986
  %1039 = add i32 %56, 280
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1041, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fsub fast float %1011, %1049
  %1051 = fmul fast float %1050, %1043
  %1052 = fadd fast float %1051, %1047
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  br label %1054

; <label>:1054                                    ; preds = %1038, %986
  %1055 = phi float [ %1053, %1038 ], [ %1011, %986 ]
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %1057 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %479, float %480)  ; Dot2(ax,ay,bx,by)
  br label %1058

; <label>:1058                                    ; preds = %1054, %964
  %1059 = phi float [ %1055, %1054 ], [ 0x3FD6666660000000, %964 ]
  %1060 = phi float [ %1056, %1054 ], [ 0.000000e+00, %964 ]
  %1061 = phi float [ %1057, %1054 ], [ 0.000000e+00, %964 ]
  %1062 = phi float [ %998, %1054 ], [ 1.000000e+00, %964 ]
  %1063 = add i32 %56, 160
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = lshr i32 %1065, 22
  %1067 = shl nuw nsw i32 %1066, 5
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 64
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1106, label %1073

; <label>:1073                                    ; preds = %1058
  %1074 = add i32 %56, 424
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 131072
  %1082 = icmp eq i32 %1081, 0
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1078, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = fmul fast float %1084, %240
  %1088 = fmul fast float %1085, %243
  %1089 = fmul fast float %1086, %246
  br i1 %1082, label %1096, label %1090

; <label>:1090                                    ; preds = %1073
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = fmul fast float %1092, %1087
  %1094 = fmul fast float %1092, %1088
  %1095 = fmul fast float %1092, %1089
  br label %1096

; <label>:1096                                    ; preds = %1090, %1073
  %1097 = phi float [ %1093, %1090 ], [ %1087, %1073 ]
  %1098 = phi float [ %1094, %1090 ], [ %1088, %1073 ]
  %1099 = phi float [ %1095, %1090 ], [ %1089, %1073 ]
  %1100 = fmul fast float %1097, %1068
  %1101 = select i1 %220, float %1100, float %1097
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = select i1 %220, float 0.000000e+00, float %1097
  %1104 = select i1 %220, float %1102, float %1098
  %1105 = select i1 %220, float 0.000000e+00, float %1099
  br label %1106

; <label>:1106                                    ; preds = %1096, %1058
  %1107 = phi float [ %1103, %1096 ], [ 0.000000e+00, %1058 ]
  %1108 = phi float [ %1104, %1096 ], [ 0.000000e+00, %1058 ]
  %1109 = phi float [ %1105, %1096 ], [ 0.000000e+00, %1058 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 1024
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1144, label %1114

; <label>:1114                                    ; preds = %1106
  %1115 = add i32 %56, 152
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = lshr i32 %1117, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1117, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = fmul fast float %1120, %1120
  %1130 = fmul fast float %1124, %1124
  %1131 = fmul fast float %1128, %1128
  %1132 = add i32 %56, 488
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %1134, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %100, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = fmul fast float %1129, %1138
  %1142 = fmul fast float %1130, %1139
  %1143 = fmul fast float %1131, %1140
  br label %1144

; <label>:1144                                    ; preds = %1114, %1106
  %1145 = phi float [ %1141, %1114 ], [ 0.000000e+00, %1106 ]
  %1146 = phi float [ %1142, %1114 ], [ 0.000000e+00, %1106 ]
  %1147 = phi float [ %1143, %1114 ], [ 0.000000e+00, %1106 ]
  %1148 = fcmp fast ogt float %1145, 0.000000e+00
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = fcmp fast ogt float %1147, 0.000000e+00
  %1151 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fmul fast float %1151, 0xBFE62E4300000000
  %1160 = fmul fast float %1159, %1158
  %1161 = fmul fast float %1152, 0xBFE62E4300000000
  %1162 = fmul fast float %1161, %1158
  %1163 = fmul fast float %1153, 0xBFE62E4300000000
  %1164 = fmul fast float %1163, %1158
  %1165 = select i1 %1148, float %1160, float 1.270000e+02
  %1166 = select i1 %1149, float %1162, float 1.270000e+02
  %1167 = select i1 %1150, float %1164, float 1.270000e+02
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 10240
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1216, label %1172

; <label>:1172                                    ; preds = %1144
  %1173 = add i32 %56, 504
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %100, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 1048576
  %1184 = icmp ne i32 %1183, 0
  %1185 = and i32 %1182, 8192
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1202, label %1187

; <label>:1187                                    ; preds = %1172
  %1188 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1189 = select i1 %1184, float %1188, float %1179
  %1190 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1191 = select i1 %1184, float %1190, float %1179
  %1192 = add i32 %56, 96
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80101020000000
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1198, %1179
  %1201 = fmul fast float %1198, %1189
  br label %1202

; <label>:1202                                    ; preds = %1187, %1172
  %1203 = phi float [ %1199, %1187 ], [ 0.000000e+00, %1172 ]
  %1204 = phi float [ %1200, %1187 ], [ 0.000000e+00, %1172 ]
  %1205 = phi float [ %1201, %1187 ], [ 0.000000e+00, %1172 ]
  %1206 = and i32 %1182, 2048
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1216, label %1208

; <label>:1208                                    ; preds = %1202
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1210, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = fmul fast float %1213, %1180
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1208, %1202, %1144
  %1217 = phi float [ %1203, %1208 ], [ %1203, %1202 ], [ 0.000000e+00, %1144 ]
  %1218 = phi float [ %1204, %1208 ], [ %1204, %1202 ], [ 0.000000e+00, %1144 ]
  %1219 = phi float [ %1205, %1208 ], [ %1205, %1202 ], [ 0.000000e+00, %1144 ]
  %1220 = phi float [ %1215, %1208 ], [ 0x3F70101020000000, %1202 ], [ 0x3F70101020000000, %1144 ]
  %1221 = add i32 %56, 96
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = fmul fast float %1228, %1229
  %1231 = fadd fast float %1230, %1225
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  br label %1234

; <label>:1234                                    ; preds = %1216, %459
  %1235 = phi float [ 0.000000e+00, %459 ], [ %1060, %1216 ]
  %1236 = phi float [ 0.000000e+00, %459 ], [ %1061, %1216 ]
  %1237 = phi float [ 0.000000e+00, %459 ], [ %979, %1216 ]
  %1238 = phi float [ 0.000000e+00, %459 ], [ %980, %1216 ]
  %1239 = phi float [ 0.000000e+00, %459 ], [ %981, %1216 ]
  %1240 = phi float [ 0.000000e+00, %459 ], [ %1107, %1216 ]
  %1241 = phi float [ 0.000000e+00, %459 ], [ %1108, %1216 ]
  %1242 = phi float [ 0.000000e+00, %459 ], [ %1109, %1216 ]
  %1243 = phi float [ 0.000000e+00, %459 ], [ %1217, %1216 ]
  %1244 = phi float [ 0.000000e+00, %459 ], [ %1218, %1216 ]
  %1245 = phi float [ 0.000000e+00, %459 ], [ %1219, %1216 ]
  %1246 = phi float [ 0.000000e+00, %459 ], [ %1165, %1216 ]
  %1247 = phi float [ 0.000000e+00, %459 ], [ %1166, %1216 ]
  %1248 = phi float [ 0.000000e+00, %459 ], [ %1167, %1216 ]
  %1249 = phi float [ 0.000000e+00, %459 ], [ %965, %1216 ]
  %1250 = phi float [ 0.000000e+00, %459 ], [ %761, %1216 ]
  %1251 = phi float [ 0.000000e+00, %459 ], [ %1059, %1216 ]
  %1252 = phi float [ 0.000000e+00, %459 ], [ %1062, %1216 ]
  %1253 = phi float [ 0.000000e+00, %459 ], [ %1220, %1216 ]
  %1254 = phi float [ 0.000000e+00, %459 ], [ %1233, %1216 ]
  br i1 %407, label %2292, label %1255

; <label>:1255                                    ; preds = %1234
  %1256 = icmp ult i32 %465, 2
  %1257 = add i32 %56, 40
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %56, 44
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = or i32 %1262, %1259
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %2292, label %1265

; <label>:1265                                    ; preds = %1255
  %1266 = and i32 %1259, 262144
  %1267 = icmp ne i32 %1266, 0
  %1268 = select i1 %1267, float %60, float 1.000000e+00
  %1269 = select i1 %1267, float %61, float 0.000000e+00
  %1270 = select i1 %1267, float %62, float 0.000000e+00
  %1271 = select i1 %1267, float %63, float 1.000000e+00
  %1272 = select i1 %1267, float %64, float %85
  %1273 = select i1 %1267, float %65, float %86
  %1274 = add i32 %56, 300
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = fmul fast float %1278, 0x3F50624DE0000000
  %1280 = add i32 %56, 104
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 16
  %1284 = and i32 %1283, 255
  %1285 = lshr i32 %1282, 24
  %1286 = add i32 %56, 308
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1288, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = add i32 %56, 48
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 22
  %1297 = shl nuw nsw i32 %1296, 5
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = shl i32 %1295, 4
  %1300 = and i32 %1299, 32752
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1295, 7
  %1303 = and i32 %1302, 32752
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1307 = fmul fast float %1306, 1.000000e+03
  %1308 = fmul fast float %317, %1307
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fadd fast float %1309, %307
  %1311 = fmul fast float %318, %1307
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = fadd fast float %1312, %309
  %1314 = fmul fast float %1279, %1307
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = fmul fast float %1315, 0x401921FB60000000
  %1317 = fadd fast float %1316, %1298
  %1318 = call float @dx.op.unary.f32(i32 13, float %1317)  ; Sin(value)
  %1319 = call float @dx.op.unary.f32(i32 12, float %1317)  ; Cos(value)
  %1320 = fsub fast float -0.000000e+00, %1318
  %1321 = fadd fast float %1272, -5.000000e-01
  %1322 = fadd fast float %1273, -5.000000e-01
  %1323 = fmul fast float %1290, %1321
  %1324 = fmul fast float %1292, %1322
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fadd fast float %1324, 5.000000e-01
  %1327 = fmul fast float %1301, %1325
  %1328 = fmul fast float %1304, %1326
  %1329 = fmul fast float %1319, %1327
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1328, float %1329)  ; FMad(a,b,c)
  %1331 = fmul fast float %1318, %1327
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1328, float %1331)  ; FMad(a,b,c)
  %1333 = fadd fast float %1310, %1330
  %1334 = fadd fast float %1313, %1332
  %1335 = icmp ugt i32 %1284, 1
  %1336 = icmp ugt i32 %1282, 33554431
  %1337 = or i1 %1336, %1335
  br i1 %1337, label %1338, label %1363

; <label>:1338                                    ; preds = %1265
  %1339 = add i32 %56, 244
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = lshr i32 %1341, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = fmul fast float %1306, %1343
  %1345 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1346 = mul nuw nsw i32 %1284, %1285
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1345, %1347
  %1349 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1350 = fptoui float %1349 to i32
  %1351 = urem i32 %1350, %1284
  %1352 = udiv i32 %1350, %1285
  %1353 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1354 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1355 = uitofp i32 %1351 to float
  %1356 = uitofp i32 %1352 to float
  %1357 = fadd fast float %1353, %1355
  %1358 = fadd fast float %1354, %1356
  %1359 = uitofp i32 %1284 to float
  %1360 = uitofp i32 %1285 to float
  %1361 = fdiv fast float %1357, %1359
  %1362 = fdiv fast float %1358, %1360
  br label %1363

; <label>:1363                                    ; preds = %1338, %1265
  %1364 = phi float [ %1361, %1338 ], [ %1333, %1265 ]
  %1365 = phi float [ %1362, %1338 ], [ %1334, %1265 ]
  %1366 = and i32 %1259, 16777216
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1477, label %1368

; <label>:1368                                    ; preds = %1363
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = fadd fast float %1370, %158
  %1374 = fadd fast float %1371, %159
  %1375 = fadd fast float %1372, %160
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = icmp eq i32 %57, 65535
  br i1 %1379, label %1474, label %1380

; <label>:1380                                    ; preds = %1368
  %1381 = lshr i32 %57, 1
  %1382 = shl i32 %1381, 2
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %57, 1
  %1386 = icmp ne i32 %1385, 0
  %1387 = lshr i32 %1384, 16
  %1388 = and i32 %1384, 65535
  %1389 = select i1 %1386, i32 %1387, i32 %1388
  %1390 = icmp eq i32 %1389, 65535
  br i1 %1390, label %1470, label %1391

; <label>:1391                                    ; preds = %1380
  %1392 = mul nuw nsw i32 %1389, 40
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1392, 12
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = add nuw nsw i32 %1392, 24
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = add nuw nsw i32 %1392, 36
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = fsub fast float %1373, %1394
  %1411 = fsub fast float %1374, %1395
  %1412 = fsub fast float %1375, %1396
  %1413 = fmul fast float %1409, %1410
  %1414 = fmul fast float %1409, %1411
  %1415 = fmul fast float %1409, %1412
  %1416 = call float @dx.op.unary.f32(i32 27, float %1413)  ; Round_ni(value)
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fmul fast float %1419, %1399
  %1423 = fmul fast float %1420, %1400
  %1424 = fmul fast float %1421, %1401
  %1425 = shl i32 %57, 2
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1429, %dx.types.Handle %51, float %1430, float %1431, float %1432, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = fmul fast float %1434, 1.023000e+03
  %1438 = fmul fast float %1435, 1.023000e+03
  %1439 = fmul fast float %1436, 1.023000e+03
  %1440 = fadd fast float %1437, 5.000000e-01
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = fadd fast float %1439, 5.000000e-01
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = fsub fast float %1413, %1416
  %1447 = fsub fast float %1414, %1417
  %1448 = fsub fast float %1415, %1418
  %1449 = fmul fast float %1446, 7.500000e-01
  %1450 = fmul fast float %1447, 7.500000e-01
  %1451 = fmul fast float %1448, 7.500000e-01
  %1452 = fadd fast float %1416, 1.250000e-01
  %1453 = fadd fast float %1452, %1449
  %1454 = fadd fast float %1453, %1443
  %1455 = fadd fast float %1417, 1.250000e-01
  %1456 = fadd fast float %1455, %1450
  %1457 = fadd fast float %1456, %1444
  %1458 = fadd fast float %1418, 1.250000e-01
  %1459 = fadd fast float %1458, %1451
  %1460 = fadd fast float %1459, %1445
  %1461 = fmul fast float %1454, %1404
  %1462 = fmul fast float %1457, %1405
  %1463 = fmul fast float %1460, %1406
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %1465, 0
  %1467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1467, %dx.types.Handle %49, float %1461, float %1462, float %1463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  br label %1470

; <label>:1470                                    ; preds = %1391, %1380
  %1471 = phi float [ %1469, %1391 ], [ -1.000000e+00, %1380 ]
  %1472 = fadd fast float %1471, %1378
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1470, %1368
  %1475 = phi float [ %1473, %1470 ], [ %1378, %1368 ]
  %1476 = fmul fast float %1475, %462
  br label %1477

; <label>:1477                                    ; preds = %1474, %1363
  %1478 = phi float [ %1476, %1474 ], [ %462, %1363 ]
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 256
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1529, label %1483

; <label>:1483                                    ; preds = %1477
  %1484 = add i32 %56, 460
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %100, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = add i32 %56, 116
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = shl i32 %1493, 4
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1493, 7
  %1498 = and i32 %1497, 32752
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float 1.000000e+00, %1478
  %1501 = call float @dx.op.binary.f32(i32 35, float %1500, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1502 = bitcast float %1478 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1499, %1504
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = bitcast float %1501 to i32
  %1510 = sitofp i32 %1509 to float
  %1511 = fadd fast float %1510, 0xC1CFBF8940000000
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, 0x41CFBF8940000000
  %1514 = fptosi float %1513 to i32
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1508, %1496
  %1517 = fmul fast float %1515, %1496
  %1518 = fsub fast float %1501, %1516
  %1519 = fadd fast float %1517, %1501
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = fsub fast float %1490, %1520
  %1523 = fsub fast float %1521, %1520
  %1524 = bitcast float %1523 to i32
  %1525 = sub nsw i32 2129859010, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1483, %1477
  %1530 = phi float [ %1528, %1483 ], [ %1478, %1477 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 128
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1551, label %1535

; <label>:1535                                    ; preds = %1529
  %1536 = add i32 %56, 444
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %100, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 524288
  %1546 = icmp ne i32 %1545, 0
  %1547 = fcmp fast ogt float %1542, 0x3FE0101020000000
  %1548 = select i1 %1547, float 1.000000e+00, float 0.000000e+00
  %1549 = select i1 %1546, float %1548, float %1542
  %1550 = fmul fast float %1549, %1530
  br label %1551

; <label>:1551                                    ; preds = %1535, %1529
  %1552 = phi float [ %1550, %1535 ], [ %1530, %1529 ]
  %1553 = fcmp fast ult float %1552, 0x3F70101020000000
  br i1 %1553, label %2292, label %1554

; <label>:1554                                    ; preds = %1551
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 16
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1757, label %1559

; <label>:1559                                    ; preds = %1554
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %56, 396
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.ResRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.ResRet.f32 %1567, 3
  %1572 = and i32 %1561, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1561, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1571, %1573
  %1578 = fadd fast float %1577, %1576
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 512
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1592, label %1584

; <label>:1584                                    ; preds = %1559
  %1585 = add i32 %56, 476
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %100, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  br label %1592

; <label>:1592                                    ; preds = %1584, %1559
  %1593 = phi float [ %1591, %1584 ], [ 1.000000e+00, %1559 ]
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 33554432
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1704, label %1598

; <label>:1598                                    ; preds = %1592
  %1599 = add i32 %56, 240
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = lshr i32 %1601, 16
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = add i32 %56, 244
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = lshr i32 %1612, 24
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = and i32 %1612, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = lshr i32 %1612, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = lshr i32 %1612, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = add i32 %56, 236
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = lshr i32 %1629, 24
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = and i32 %1629, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = lshr i32 %1629, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = lshr i32 %1629, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = bitcast float %1568 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1568, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1568
  %1653 = fmul fast float %1652, %1651
  %1654 = bitcast float %1569 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1569, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1569
  %1663 = fmul fast float %1662, %1661
  %1664 = bitcast float %1570 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = sub nsw i32 1597463174, %1665
  %1667 = bitcast i32 %1666 to float
  %1668 = fmul fast float %1570, 5.000000e-01
  %1669 = fmul fast float %1667, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float 1.500000e+00, %1670
  %1672 = fmul fast float %1667, %1570
  %1673 = fmul fast float %1672, %1671
  %1674 = fsub fast float %1653, %1635
  %1675 = fsub fast float %1663, %1639
  %1676 = fsub fast float %1673, %1643
  %1677 = fmul fast float %1674, %1603
  %1678 = fmul fast float %1675, %1605
  %1679 = fmul fast float %1676, %1610
  %1680 = fadd fast float %1677, %1618
  %1681 = fadd fast float %1678, %1622
  %1682 = fadd fast float %1679, %1626
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fsub fast float %1688, %1570
  %1692 = fmul fast float %1689, %1593
  %1693 = fmul fast float %1690, %1593
  %1694 = fmul fast float %1691, %1593
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1615, %1579
  %1699 = fsub fast float %1698, %1632
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fsub fast float %1700, %1579
  %1702 = fmul fast float %1701, %1593
  %1703 = fadd fast float %1702, %1579
  br label %1757

; <label>:1704                                    ; preds = %1592
  %1705 = and i32 %1595, 134217728
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1741, label %1707

; <label>:1707                                    ; preds = %1704
  %1708 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fmul fast float %1711, %1593
  %1715 = fmul fast float %1712, %1593
  %1716 = fmul fast float %1713, %1593
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = fmul fast float %1717, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1720
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1720
  %1728 = fmul fast float %1718, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1721
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1721
  %1733 = fmul fast float %1719, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1722
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1722
  %1738 = fmul fast float %1727, %1727
  %1739 = fmul fast float %1732, %1732
  %1740 = fmul fast float %1737, %1737
  br label %1757

; <label>:1741                                    ; preds = %1704
  %1742 = fmul fast float %294, %294
  %1743 = fmul fast float %298, %298
  %1744 = fmul fast float %302, %302
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fmul fast float %1593, %1745
  %1749 = fmul fast float %1593, %1746
  %1750 = fmul fast float %1593, %1747
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  %1756 = fmul fast float %1753, %1570
  br label %1757

; <label>:1757                                    ; preds = %1741, %1707, %1598, %1554
  %1758 = phi float [ %1703, %1598 ], [ %1579, %1707 ], [ %1579, %1741 ], [ 0x3FA23C0BE0000000, %1554 ]
  %1759 = phi float [ %1695, %1598 ], [ %1738, %1707 ], [ %1754, %1741 ], [ 1.000000e+00, %1554 ]
  %1760 = phi float [ %1696, %1598 ], [ %1739, %1707 ], [ %1755, %1741 ], [ 1.000000e+00, %1554 ]
  %1761 = phi float [ %1697, %1598 ], [ %1740, %1707 ], [ %1756, %1741 ], [ 1.000000e+00, %1554 ]
  %1762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.i32 %1762, 1
  %1764 = and i32 %1763, 1
  %1765 = icmp ne i32 %1764, 0
  %1766 = add i32 %56, 356
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 32
  %1770 = icmp ne i32 %1769, 0
  %1771 = and i1 %1765, %1770
  %1772 = select i1 %1771, float 1.000000e+00, float %1759
  %1773 = select i1 %1771, float 0x3FD3333340000000, float %1760
  %1774 = select i1 %1771, float 0x3FD3333340000000, float %1761
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1851, label %1779

; <label>:1779                                    ; preds = %1757
  %1780 = add i32 %56, 108
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %56, 412
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %1785, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1787, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = and i32 %1782, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1782, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1782, 16
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 0x3F70101000000000
  %1802 = fmul fast float %1789, %1794
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101000000000
  %1805 = fadd fast float %1790, -5.000000e-01
  %1806 = fadd fast float %1792, -5.000000e-01
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1806, %1801
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1809, 2.000000e+00
  %1812 = fadd fast float %1811, -1.000000e+00
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = fadd fast float %1812, %1814
  %1816 = fmul fast float %1815, 5.000000e-01
  %1817 = fsub fast float %1812, %1814
  %1818 = fmul fast float %1817, 5.000000e-01
  %1819 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1822 = fsub fast float %1820, %1821
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1818, float %1822, float %1816, float %1818, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1816, %1824
  %1826 = fmul fast float %1818, %1824
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 67108864
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1847, label %1831

; <label>:1831                                    ; preds = %1779
  %1832 = add i32 %56, 296
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 65535
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1834, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = fsub fast float %1804, %1842
  %1844 = fmul fast float %1843, %1836
  %1845 = fadd fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1831, %1779
  %1848 = phi float [ %1846, %1831 ], [ %1804, %1779 ]
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1268, float %1269)  ; Dot2(ax,ay,bx,by)
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1270, float %1271)  ; Dot2(ax,ay,bx,by)
  br label %1851

; <label>:1851                                    ; preds = %1847, %1757
  %1852 = phi float [ %1848, %1847 ], [ 0x3FD6666660000000, %1757 ]
  %1853 = phi float [ %1849, %1847 ], [ 0.000000e+00, %1757 ]
  %1854 = phi float [ %1850, %1847 ], [ 0.000000e+00, %1757 ]
  %1855 = phi float [ %1791, %1847 ], [ 1.000000e+00, %1757 ]
  %1856 = add i32 %56, 176
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 22
  %1860 = shl nuw nsw i32 %1859, 5
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 64
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1899, label %1866

; <label>:1866                                    ; preds = %1851
  %1867 = add i32 %56, 428
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 131072
  %1875 = icmp eq i32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %1877, %282
  %1881 = fmul fast float %1878, %285
  %1882 = fmul fast float %1879, %288
  br i1 %1875, label %1889, label %1883

; <label>:1883                                    ; preds = %1866
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = fmul fast float %1885, %1880
  %1887 = fmul fast float %1885, %1881
  %1888 = fmul fast float %1885, %1882
  br label %1889

; <label>:1889                                    ; preds = %1883, %1866
  %1890 = phi float [ %1886, %1883 ], [ %1880, %1866 ]
  %1891 = phi float [ %1887, %1883 ], [ %1881, %1866 ]
  %1892 = phi float [ %1888, %1883 ], [ %1882, %1866 ]
  %1893 = fmul fast float %1890, %1861
  %1894 = select i1 %220, float %1893, float %1890
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1894, float %1891, float %1892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = select i1 %220, float 0.000000e+00, float %1890
  %1897 = select i1 %220, float %1895, float %1891
  %1898 = select i1 %220, float 0.000000e+00, float %1892
  br label %1899

; <label>:1899                                    ; preds = %1889, %1851
  %1900 = phi float [ %1896, %1889 ], [ 0.000000e+00, %1851 ]
  %1901 = phi float [ %1897, %1889 ], [ 0.000000e+00, %1851 ]
  %1902 = phi float [ %1898, %1889 ], [ 0.000000e+00, %1851 ]
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 1024
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1937, label %1907

; <label>:1907                                    ; preds = %1899
  %1908 = add i32 %56, 168
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1910, 8
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1910, 16
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = fmul fast float %1913, %1913
  %1923 = fmul fast float %1917, %1917
  %1924 = fmul fast float %1921, %1921
  %1925 = add i32 %56, 492
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1929, %dx.types.Handle %100, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  %1936 = fmul fast float %1924, %1933
  br label %1937

; <label>:1937                                    ; preds = %1907, %1899
  %1938 = phi float [ %1934, %1907 ], [ 0.000000e+00, %1899 ]
  %1939 = phi float [ %1935, %1907 ], [ 0.000000e+00, %1899 ]
  %1940 = phi float [ %1936, %1907 ], [ 0.000000e+00, %1899 ]
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 7
  %1950 = and i32 %1949, 32752
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = fmul fast float %1944, 0xBFE62E4300000000
  %1953 = fmul fast float %1952, %1951
  %1954 = fmul fast float %1945, 0xBFE62E4300000000
  %1955 = fmul fast float %1954, %1951
  %1956 = fmul fast float %1946, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1951
  %1958 = select i1 %1941, float %1953, float 1.270000e+02
  %1959 = select i1 %1942, float %1955, float 1.270000e+02
  %1960 = select i1 %1943, float %1957, float 1.270000e+02
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 10240
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2009, label %1965

; <label>:1965                                    ; preds = %1937
  %1966 = add i32 %56, 508
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %100, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 3
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 1048576
  %1977 = icmp ne i32 %1976, 0
  %1978 = and i32 %1975, 8192
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1995, label %1980

; <label>:1980                                    ; preds = %1965
  %1981 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1982 = select i1 %1977, float %1981, float %1972
  %1983 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1984 = select i1 %1977, float %1983, float %1972
  %1985 = add i32 %56, 112
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = lshr i32 %1987, 16
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = fmul fast float %1990, 0x3F80101020000000
  %1992 = fmul fast float %1991, %1984
  %1993 = fmul fast float %1991, %1972
  %1994 = fmul fast float %1991, %1982
  br label %1995

; <label>:1995                                    ; preds = %1980, %1965
  %1996 = phi float [ %1992, %1980 ], [ 0.000000e+00, %1965 ]
  %1997 = phi float [ %1993, %1980 ], [ 0.000000e+00, %1965 ]
  %1998 = phi float [ %1994, %1980 ], [ 0.000000e+00, %1965 ]
  %1999 = and i32 %1975, 2048
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2009, label %2001

; <label>:2001                                    ; preds = %1995
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = shl i32 %2003, 4
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fmul fast float %2006, %1973
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2009

; <label>:2009                                    ; preds = %2001, %1995, %1937
  %2010 = phi float [ %1996, %2001 ], [ %1996, %1995 ], [ 0.000000e+00, %1937 ]
  %2011 = phi float [ %1997, %2001 ], [ %1997, %1995 ], [ 0.000000e+00, %1937 ]
  %2012 = phi float [ %1998, %2001 ], [ %1998, %1995 ], [ 0.000000e+00, %1937 ]
  %2013 = phi float [ %2008, %2001 ], [ 0x3F70101020000000, %1995 ], [ 0x3F70101020000000, %1937 ]
  %2014 = add i32 %56, 112
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = lshr i32 %2016, 8
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2023 = fmul fast float %2021, %2022
  %2024 = fadd fast float %2023, %2018
  %2025 = fmul fast float %2024, 0x3F70101020000000
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  br i1 %1256, label %2027, label %2062

; <label>:2027                                    ; preds = %2009
  %2028 = fmul fast float %2013, 2.000000e+00
  %2029 = fcmp fast olt float %1958, 1.270000e+02
  %2030 = fcmp fast olt float %1959, 1.270000e+02
  %2031 = fcmp fast olt float %1960, 1.270000e+02
  %2032 = fmul fast float %1958, 0xBFF7154760000000
  %2033 = fmul fast float %2032, %2028
  %2034 = fmul fast float %1959, 0xBFF7154760000000
  %2035 = fmul fast float %2034, %2028
  %2036 = fmul fast float %1960, 0xBFF7154760000000
  %2037 = fmul fast float %2036, %2028
  %2038 = call float @dx.op.unary.f32(i32 21, float %2033)  ; Exp(value)
  %2039 = call float @dx.op.unary.f32(i32 21, float %2035)  ; Exp(value)
  %2040 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2044 = fadd fast float %2041, -1.000000e+00
  %2045 = select i1 %2029, float %2044, float -1.000000e+00
  %2046 = fadd fast float %2042, -1.000000e+00
  %2047 = select i1 %2030, float %2046, float -1.000000e+00
  %2048 = fadd fast float %2043, -1.000000e+00
  %2049 = select i1 %2031, float %2048, float -1.000000e+00
  %2050 = fmul fast float %2045, %1552
  %2051 = fmul fast float %2047, %1552
  %2052 = fmul fast float %2049, %1552
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fmul fast float %2053, %1237
  %2057 = fmul fast float %2054, %1238
  %2058 = fmul fast float %2055, %1239
  %2059 = fmul fast float %2053, %1240
  %2060 = fmul fast float %2054, %1241
  %2061 = fmul fast float %2055, %1242
  br label %2062

; <label>:2062                                    ; preds = %2027, %2009
  %2063 = phi float [ %2056, %2027 ], [ %1237, %2009 ]
  %2064 = phi float [ %2057, %2027 ], [ %1238, %2009 ]
  %2065 = phi float [ %2058, %2027 ], [ %1239, %2009 ]
  %2066 = phi float [ %2059, %2027 ], [ %1240, %2009 ]
  %2067 = phi float [ %2060, %2027 ], [ %1241, %2009 ]
  %2068 = phi float [ %2061, %2027 ], [ %1242, %2009 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 3
  %2072 = icmp eq i32 %2071, 3
  br i1 %2072, label %2151, label %2073

; <label>:2073                                    ; preds = %2062
  %2074 = and i32 %2070, 16
  %2075 = icmp ne i32 %2074, 0
  %2076 = select i1 %2075, float %1552, float 0.000000e+00
  %2077 = icmp eq i32 %2071, 0
  br i1 %2077, label %2078, label %2106

; <label>:2078                                    ; preds = %2073
  %2079 = and i32 %2070, 64
  %2080 = icmp ne i32 %2079, 0
  %2081 = select i1 %2080, float %1552, float 0.000000e+00
  %2082 = fsub fast float %1772, %2063
  %2083 = fsub fast float %1773, %2064
  %2084 = fsub fast float %1774, %2065
  %2085 = fmul fast float %2076, %2082
  %2086 = fmul fast float %2076, %2083
  %2087 = fmul fast float %2076, %2084
  %2088 = fadd fast float %2085, %2063
  %2089 = fadd fast float %2086, %2064
  %2090 = fadd fast float %2087, %2065
  %2091 = fsub fast float %1758, %1249
  %2092 = fmul fast float %2076, %2091
  %2093 = fadd fast float %2092, %1249
  %2094 = fsub fast float %1900, %2066
  %2095 = fsub fast float %1901, %2067
  %2096 = fsub fast float %1902, %2068
  %2097 = fmul fast float %2081, %2094
  %2098 = fmul fast float %2081, %2095
  %2099 = fmul fast float %2081, %2096
  %2100 = fadd fast float %2097, %2066
  %2101 = fadd fast float %2098, %2067
  %2102 = fadd fast float %2099, %2068
  %2103 = fsub fast float %2026, %1254
  %2104 = fmul fast float %2076, %2103
  %2105 = fadd fast float %2104, %1254
  br label %2151

; <label>:2106                                    ; preds = %2073
  %2107 = icmp eq i32 %2071, 1
  br i1 %2107, label %2108, label %2121

; <label>:2108                                    ; preds = %2106
  %2109 = fadd fast float %1772, -1.000000e+00
  %2110 = fadd fast float %1773, -1.000000e+00
  %2111 = fadd fast float %1774, -1.000000e+00
  %2112 = fmul fast float %2076, %2109
  %2113 = fmul fast float %2076, %2110
  %2114 = fmul fast float %2076, %2111
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fmul fast float %2115, %2063
  %2119 = fmul fast float %2116, %2064
  %2120 = fmul fast float %2117, %2065
  br label %2151

; <label>:2121                                    ; preds = %2106
  %2122 = icmp eq i32 %2071, 2
  br i1 %2122, label %2123, label %2151

; <label>:2123                                    ; preds = %2121
  %2124 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2125 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2126 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2127 = fadd fast float %2124, -5.000000e-01
  %2128 = fadd fast float %2125, -5.000000e-01
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fmul fast float %2127, %2076
  %2131 = fmul fast float %2128, %2076
  %2132 = fmul fast float %2129, %2076
  %2133 = fadd fast float %2130, 5.000000e-01
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fmul fast float %2133, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2063
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2063
  %2141 = fmul fast float %2134, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2064
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2064
  %2146 = fmul fast float %2135, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2065
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2065
  br label %2151

; <label>:2151                                    ; preds = %2123, %2121, %2108, %2078, %2062
  %2152 = phi float [ %2063, %2062 ], [ %2140, %2123 ], [ %2063, %2121 ], [ %2118, %2108 ], [ %2088, %2078 ]
  %2153 = phi float [ %2064, %2062 ], [ %2145, %2123 ], [ %2064, %2121 ], [ %2119, %2108 ], [ %2089, %2078 ]
  %2154 = phi float [ %2065, %2062 ], [ %2150, %2123 ], [ %2065, %2121 ], [ %2120, %2108 ], [ %2090, %2078 ]
  %2155 = phi float [ %2066, %2062 ], [ %2066, %2123 ], [ %2066, %2121 ], [ %2066, %2108 ], [ %2100, %2078 ]
  %2156 = phi float [ %2067, %2062 ], [ %2067, %2123 ], [ %2067, %2121 ], [ %2067, %2108 ], [ %2101, %2078 ]
  %2157 = phi float [ %2068, %2062 ], [ %2068, %2123 ], [ %2068, %2121 ], [ %2068, %2108 ], [ %2102, %2078 ]
  %2158 = phi float [ %1249, %2062 ], [ %1249, %2123 ], [ %1249, %2121 ], [ %1249, %2108 ], [ %2093, %2078 ]
  %2159 = phi float [ %1254, %2062 ], [ %1254, %2123 ], [ %1254, %2121 ], [ %1254, %2108 ], [ %2105, %2078 ]
  %2160 = and i32 %2070, 12
  %2161 = icmp eq i32 %2160, 12
  br i1 %2161, label %2292, label %2162

; <label>:2162                                    ; preds = %2151
  %2163 = and i32 %2070, 2097184
  %2164 = icmp eq i32 %2163, 2097184
  %2165 = select i1 %2164, float %1552, float 0.000000e+00
  %2166 = and i32 %2070, 4194336
  %2167 = icmp eq i32 %2166, 4194336
  %2168 = select i1 %2167, float %1552, float 0.000000e+00
  %2169 = and i32 %2070, 8388640
  %2170 = icmp eq i32 %2169, 8388640
  %2171 = select i1 %2170, float %1552, float 0.000000e+00
  %2172 = and i32 %2070, 1024
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1552, float 0.000000e+00
  %2175 = and i32 %2070, 2048
  %2176 = icmp ne i32 %2175, 0
  %2177 = select i1 %2176, float %1552, float 0.000000e+00
  %2178 = and i32 %2070, 8192
  %2179 = icmp ne i32 %2178, 0
  %2180 = select i1 %2179, float %1552, float 0.000000e+00
  %2181 = icmp eq i32 %2160, 0
  br i1 %2181, label %2182, label %2216

; <label>:2182                                    ; preds = %2162
  %2183 = fsub fast float %1853, %1235
  %2184 = fsub fast float %1854, %1236
  %2185 = fmul fast float %2165, %2183
  %2186 = fmul fast float %2165, %2184
  %2187 = fadd fast float %2185, %1235
  %2188 = fadd fast float %2186, %1236
  %2189 = fsub fast float %1855, %1252
  %2190 = fmul fast float %2168, %2189
  %2191 = fadd fast float %2190, %1252
  %2192 = fsub fast float %1852, %1251
  %2193 = fmul fast float %2171, %2192
  %2194 = fadd fast float %2193, %1251
  %2195 = fsub fast float %1958, %1246
  %2196 = fsub fast float %1959, %1247
  %2197 = fsub fast float %1960, %1248
  %2198 = fmul fast float %2174, %2195
  %2199 = fmul fast float %2174, %2196
  %2200 = fmul fast float %2174, %2197
  %2201 = fadd fast float %2198, %1246
  %2202 = fadd fast float %2199, %1247
  %2203 = fadd fast float %2200, %1248
  %2204 = fsub fast float %2013, %1253
  %2205 = fmul fast float %2177, %2204
  %2206 = fadd fast float %2205, %1253
  %2207 = fsub fast float %2010, %1243
  %2208 = fsub fast float %2011, %1244
  %2209 = fsub fast float %2012, %1245
  %2210 = fmul fast float %2180, %2207
  %2211 = fmul fast float %2180, %2208
  %2212 = fmul fast float %2180, %2209
  %2213 = fadd fast float %2210, %1243
  %2214 = fadd fast float %2211, %1244
  %2215 = fadd fast float %2212, %1245
  br label %2292

; <label>:2216                                    ; preds = %2162
  %2217 = icmp eq i32 %2160, 4
  br i1 %2217, label %2218, label %2264

; <label>:2218                                    ; preds = %2216
  %2219 = fmul fast float %2165, %1853
  %2220 = fmul fast float %2165, %1854
  %2221 = fadd fast float %2219, %1235
  %2222 = fadd fast float %2220, %1236
  %2223 = call float @dx.op.binary.f32(i32 36, float %1252, float %1855)  ; FMin(a,b)
  %2224 = fsub fast float %2223, %1252
  %2225 = fmul fast float %2224, %2168
  %2226 = fadd fast float %2225, %1252
  %2227 = fadd fast float %1852, %1251
  %2228 = fmul fast float %2227, 0x3FF337FAE0000000
  %2229 = fmul fast float %1251, %1251
  %2230 = fmul fast float %1852, %1852
  %2231 = fadd fast float %2230, %2229
  %2232 = fmul fast float %2231, 0x3FE5152B00000000
  %2233 = fmul fast float %1251, 0xBFCC1F85E0000000
  %2234 = fmul fast float %2233, %1852
  %2235 = fadd fast float %2234, 0xBFE1363700000000
  %2236 = fadd fast float %2235, %2228
  %2237 = fsub fast float %2236, %2232
  %2238 = fmul fast float %2227, 0x3FBA6F0D00000000
  %2239 = fmul fast float %2231, 0x3FD0432880000000
  %2240 = fmul fast float %1251, 0xBFEF110800000000
  %2241 = fmul fast float %2240, %1852
  %2242 = fadd fast float %2241, 1.000000e+00
  %2243 = fsub fast float %2242, %2238
  %2244 = fadd fast float %2243, %2239
  %2245 = fdiv fast float %2237, %2244
  %2246 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2247 = fsub fast float %2246, %1251
  %2248 = fmul fast float %2247, %2171
  %2249 = fadd fast float %2248, %1251
  %2250 = fmul fast float %2174, %1958
  %2251 = fmul fast float %2174, %1959
  %2252 = fmul fast float %2174, %1960
  %2253 = fadd fast float %2250, %1246
  %2254 = fadd fast float %2251, %1247
  %2255 = fadd fast float %2252, %1248
  %2256 = fmul fast float %2177, %2013
  %2257 = fadd fast float %2256, %1253
  %2258 = fmul fast float %2180, %2010
  %2259 = fmul fast float %2180, %2011
  %2260 = fmul fast float %2180, %2012
  %2261 = fadd fast float %2258, %1243
  %2262 = fadd fast float %2259, %1244
  %2263 = fadd fast float %2260, %1245
  br label %2292

; <label>:2264                                    ; preds = %2216
  %2265 = icmp eq i32 %2160, 8
  br i1 %2265, label %2266, label %2292

; <label>:2266                                    ; preds = %2264
  %2267 = fmul fast float %2165, %1853
  %2268 = fmul fast float %2165, %1854
  %2269 = fadd fast float %2267, %1235
  %2270 = fadd fast float %2268, %1236
  %2271 = call float @dx.op.binary.f32(i32 36, float %1252, float %1855)  ; FMin(a,b)
  %2272 = fsub fast float %2271, %1252
  %2273 = fmul fast float %2272, %2168
  %2274 = fadd fast float %2273, %1252
  %2275 = fsub fast float %1852, %1251
  %2276 = fmul fast float %2171, %2275
  %2277 = fadd fast float %2276, %1251
  %2278 = fmul fast float %2174, %1958
  %2279 = fmul fast float %2174, %1959
  %2280 = fmul fast float %2174, %1960
  %2281 = fadd fast float %2278, %1246
  %2282 = fadd fast float %2279, %1247
  %2283 = fadd fast float %2280, %1248
  %2284 = fmul fast float %2177, %2013
  %2285 = fadd fast float %2284, %1253
  %2286 = fmul fast float %2180, %2010
  %2287 = fmul fast float %2180, %2011
  %2288 = fmul fast float %2180, %2012
  %2289 = fadd fast float %2286, %1243
  %2290 = fadd fast float %2287, %1244
  %2291 = fadd fast float %2288, %1245
  br label %2292

; <label>:2292                                    ; preds = %2266, %2264, %2218, %2182, %2151, %1551, %1255, %1234
  %2293 = phi float [ %1235, %2151 ], [ %1235, %1551 ], [ %1235, %1234 ], [ %2269, %2266 ], [ %1235, %2264 ], [ %2221, %2218 ], [ %2187, %2182 ], [ %1235, %1255 ]
  %2294 = phi float [ %1236, %2151 ], [ %1236, %1551 ], [ %1236, %1234 ], [ %2270, %2266 ], [ %1236, %2264 ], [ %2222, %2218 ], [ %2188, %2182 ], [ %1236, %1255 ]
  %2295 = phi float [ %2152, %2151 ], [ %1237, %1551 ], [ %1237, %1234 ], [ %2152, %2266 ], [ %2152, %2264 ], [ %2152, %2218 ], [ %2152, %2182 ], [ %1237, %1255 ]
  %2296 = phi float [ %2153, %2151 ], [ %1238, %1551 ], [ %1238, %1234 ], [ %2153, %2266 ], [ %2153, %2264 ], [ %2153, %2218 ], [ %2153, %2182 ], [ %1238, %1255 ]
  %2297 = phi float [ %2154, %2151 ], [ %1239, %1551 ], [ %1239, %1234 ], [ %2154, %2266 ], [ %2154, %2264 ], [ %2154, %2218 ], [ %2154, %2182 ], [ %1239, %1255 ]
  %2298 = phi float [ %2155, %2151 ], [ %1240, %1551 ], [ %1240, %1234 ], [ %2155, %2266 ], [ %2155, %2264 ], [ %2155, %2218 ], [ %2155, %2182 ], [ %1240, %1255 ]
  %2299 = phi float [ %2156, %2151 ], [ %1241, %1551 ], [ %1241, %1234 ], [ %2156, %2266 ], [ %2156, %2264 ], [ %2156, %2218 ], [ %2156, %2182 ], [ %1241, %1255 ]
  %2300 = phi float [ %2157, %2151 ], [ %1242, %1551 ], [ %1242, %1234 ], [ %2157, %2266 ], [ %2157, %2264 ], [ %2157, %2218 ], [ %2157, %2182 ], [ %1242, %1255 ]
  %2301 = phi float [ %1243, %2151 ], [ %1243, %1551 ], [ %1243, %1234 ], [ %2289, %2266 ], [ %1243, %2264 ], [ %2261, %2218 ], [ %2213, %2182 ], [ %1243, %1255 ]
  %2302 = phi float [ %1244, %2151 ], [ %1244, %1551 ], [ %1244, %1234 ], [ %2290, %2266 ], [ %1244, %2264 ], [ %2262, %2218 ], [ %2214, %2182 ], [ %1244, %1255 ]
  %2303 = phi float [ %1245, %2151 ], [ %1245, %1551 ], [ %1245, %1234 ], [ %2291, %2266 ], [ %1245, %2264 ], [ %2263, %2218 ], [ %2215, %2182 ], [ %1245, %1255 ]
  %2304 = phi float [ %1246, %2151 ], [ %1246, %1551 ], [ %1246, %1234 ], [ %2281, %2266 ], [ %1246, %2264 ], [ %2253, %2218 ], [ %2201, %2182 ], [ %1246, %1255 ]
  %2305 = phi float [ %1247, %2151 ], [ %1247, %1551 ], [ %1247, %1234 ], [ %2282, %2266 ], [ %1247, %2264 ], [ %2254, %2218 ], [ %2202, %2182 ], [ %1247, %1255 ]
  %2306 = phi float [ %1248, %2151 ], [ %1248, %1551 ], [ %1248, %1234 ], [ %2283, %2266 ], [ %1248, %2264 ], [ %2255, %2218 ], [ %2203, %2182 ], [ %1248, %1255 ]
  %2307 = phi float [ %2158, %2151 ], [ %1249, %1551 ], [ %1249, %1234 ], [ %2158, %2266 ], [ %2158, %2264 ], [ %2158, %2218 ], [ %2158, %2182 ], [ %1249, %1255 ]
  %2308 = phi float [ %1251, %2151 ], [ %1251, %1551 ], [ %1251, %1234 ], [ %2277, %2266 ], [ %1251, %2264 ], [ %2249, %2218 ], [ %2194, %2182 ], [ %1251, %1255 ]
  %2309 = phi float [ %1252, %2151 ], [ %1252, %1551 ], [ %1252, %1234 ], [ %2274, %2266 ], [ %1252, %2264 ], [ %2226, %2218 ], [ %2191, %2182 ], [ %1252, %1255 ]
  %2310 = phi float [ %1253, %2151 ], [ %1253, %1551 ], [ %1253, %1234 ], [ %2285, %2266 ], [ %1253, %2264 ], [ %2257, %2218 ], [ %2206, %2182 ], [ %1253, %1255 ]
  %2311 = phi float [ %2159, %2151 ], [ %1254, %1551 ], [ %1254, %1234 ], [ %2159, %2266 ], [ %2159, %2264 ], [ %2159, %2218 ], [ %2159, %2182 ], [ %1254, %1255 ]
  br i1 %409, label %3349, label %2312

; <label>:2312                                    ; preds = %2292
  %2313 = icmp ult i32 %465, 3
  %2314 = add i32 %56, 56
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = add i32 %56, 60
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = or i32 %2319, %2316
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %3349, label %2322

; <label>:2322                                    ; preds = %2312
  %2323 = and i32 %2316, 262144
  %2324 = icmp ne i32 %2323, 0
  %2325 = select i1 %2324, float %60, float 1.000000e+00
  %2326 = select i1 %2324, float %61, float 0.000000e+00
  %2327 = select i1 %2324, float %62, float 0.000000e+00
  %2328 = select i1 %2324, float %63, float 1.000000e+00
  %2329 = select i1 %2324, float %64, float %85
  %2330 = select i1 %2324, float %65, float %86
  %2331 = add i32 %56, 316
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = fmul fast float %2335, 0x3F50624DE0000000
  %2337 = add i32 %56, 120
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 16
  %2341 = and i32 %2340, 255
  %2342 = lshr i32 %2339, 24
  %2343 = add i32 %56, 324
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2345, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = add i32 %56, 64
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = lshr i32 %2352, 22
  %2354 = shl nuw nsw i32 %2353, 5
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = shl i32 %2352, 4
  %2357 = and i32 %2356, 32752
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = lshr i32 %2352, 7
  %2360 = and i32 %2359, 32752
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2364 = fmul fast float %2363, 1.000000e+03
  %2365 = fmul fast float %359, %2364
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fadd fast float %2366, %349
  %2368 = fmul fast float %360, %2364
  %2369 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2370 = fadd fast float %2369, %351
  %2371 = fmul fast float %2336, %2364
  %2372 = call float @dx.op.unary.f32(i32 22, float %2371)  ; Frc(value)
  %2373 = fmul fast float %2372, 0x401921FB60000000
  %2374 = fadd fast float %2373, %2355
  %2375 = call float @dx.op.unary.f32(i32 13, float %2374)  ; Sin(value)
  %2376 = call float @dx.op.unary.f32(i32 12, float %2374)  ; Cos(value)
  %2377 = fsub fast float -0.000000e+00, %2375
  %2378 = fadd fast float %2329, -5.000000e-01
  %2379 = fadd fast float %2330, -5.000000e-01
  %2380 = fmul fast float %2347, %2378
  %2381 = fmul fast float %2349, %2379
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = fmul fast float %2358, %2382
  %2385 = fmul fast float %2361, %2383
  %2386 = fmul fast float %2376, %2384
  %2387 = call float @dx.op.tertiary.f32(i32 46, float %2377, float %2385, float %2386)  ; FMad(a,b,c)
  %2388 = fmul fast float %2375, %2384
  %2389 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2385, float %2388)  ; FMad(a,b,c)
  %2390 = fadd fast float %2367, %2387
  %2391 = fadd fast float %2370, %2389
  %2392 = icmp ugt i32 %2341, 1
  %2393 = icmp ugt i32 %2339, 33554431
  %2394 = or i1 %2393, %2392
  br i1 %2394, label %2395, label %2420

; <label>:2395                                    ; preds = %2322
  %2396 = add i32 %56, 260
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = lshr i32 %2398, 16
  %2400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2399)  ; LegacyF16ToF32(value)
  %2401 = fmul fast float %2363, %2400
  %2402 = call float @dx.op.unary.f32(i32 22, float %2401)  ; Frc(value)
  %2403 = mul nuw nsw i32 %2341, %2342
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2402, %2404
  %2406 = call float @dx.op.unary.f32(i32 27, float %2405)  ; Round_ni(value)
  %2407 = fptoui float %2406 to i32
  %2408 = urem i32 %2407, %2341
  %2409 = udiv i32 %2407, %2342
  %2410 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2411 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2412 = uitofp i32 %2408 to float
  %2413 = uitofp i32 %2409 to float
  %2414 = fadd fast float %2410, %2412
  %2415 = fadd fast float %2411, %2413
  %2416 = uitofp i32 %2341 to float
  %2417 = uitofp i32 %2342 to float
  %2418 = fdiv fast float %2414, %2416
  %2419 = fdiv fast float %2415, %2417
  br label %2420

; <label>:2420                                    ; preds = %2395, %2322
  %2421 = phi float [ %2418, %2395 ], [ %2390, %2322 ]
  %2422 = phi float [ %2419, %2395 ], [ %2391, %2322 ]
  %2423 = and i32 %2316, 16777216
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2534, label %2425

; <label>:2425                                    ; preds = %2420
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = fadd fast float %2427, %158
  %2431 = fadd fast float %2428, %159
  %2432 = fadd fast float %2429, %160
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2436 = icmp eq i32 %57, 65535
  br i1 %2436, label %2531, label %2437

; <label>:2437                                    ; preds = %2425
  %2438 = lshr i32 %57, 1
  %2439 = shl i32 %2438, 2
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %57, 1
  %2443 = icmp ne i32 %2442, 0
  %2444 = lshr i32 %2441, 16
  %2445 = and i32 %2441, 65535
  %2446 = select i1 %2443, i32 %2444, i32 %2445
  %2447 = icmp eq i32 %2446, 65535
  br i1 %2447, label %2527, label %2448

; <label>:2448                                    ; preds = %2437
  %2449 = mul nuw nsw i32 %2446, 40
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2449, 12
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = add nuw nsw i32 %2449, 24
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = add nuw nsw i32 %2449, 36
  %2465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = fsub fast float %2430, %2451
  %2468 = fsub fast float %2431, %2452
  %2469 = fsub fast float %2432, %2453
  %2470 = fmul fast float %2466, %2467
  %2471 = fmul fast float %2466, %2468
  %2472 = fmul fast float %2466, %2469
  %2473 = call float @dx.op.unary.f32(i32 27, float %2470)  ; Round_ni(value)
  %2474 = call float @dx.op.unary.f32(i32 27, float %2471)  ; Round_ni(value)
  %2475 = call float @dx.op.unary.f32(i32 27, float %2472)  ; Round_ni(value)
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, %2456
  %2480 = fmul fast float %2477, %2457
  %2481 = fmul fast float %2478, %2458
  %2482 = shl i32 %57, 2
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = add i32 %2484, 0
  %2486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2487 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2489 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2486, %dx.types.Handle %51, float %2487, float %2488, float %2489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = fmul fast float %2491, 1.023000e+03
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fmul fast float %2493, 1.023000e+03
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2503 = fsub fast float %2470, %2473
  %2504 = fsub fast float %2471, %2474
  %2505 = fsub fast float %2472, %2475
  %2506 = fmul fast float %2503, 7.500000e-01
  %2507 = fmul fast float %2504, 7.500000e-01
  %2508 = fmul fast float %2505, 7.500000e-01
  %2509 = fadd fast float %2473, 1.250000e-01
  %2510 = fadd fast float %2509, %2506
  %2511 = fadd fast float %2510, %2500
  %2512 = fadd fast float %2474, 1.250000e-01
  %2513 = fadd fast float %2512, %2507
  %2514 = fadd fast float %2513, %2501
  %2515 = fadd fast float %2475, 1.250000e-01
  %2516 = fadd fast float %2515, %2508
  %2517 = fadd fast float %2516, %2502
  %2518 = fmul fast float %2511, %2461
  %2519 = fmul fast float %2514, %2462
  %2520 = fmul fast float %2517, %2463
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2524, %dx.types.Handle %49, float %2518, float %2519, float %2520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  br label %2527

; <label>:2527                                    ; preds = %2448, %2437
  %2528 = phi float [ %2526, %2448 ], [ -1.000000e+00, %2437 ]
  %2529 = fadd fast float %2528, %2435
  %2530 = call float @dx.op.unary.f32(i32 7, float %2529)  ; Saturate(value)
  br label %2531

; <label>:2531                                    ; preds = %2527, %2425
  %2532 = phi float [ %2530, %2527 ], [ %2435, %2425 ]
  %2533 = fmul fast float %2532, %461
  br label %2534

; <label>:2534                                    ; preds = %2531, %2420
  %2535 = phi float [ %2533, %2531 ], [ %461, %2420 ]
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 256
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %2586, label %2540

; <label>:2540                                    ; preds = %2534
  %2541 = add i32 %56, 464
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %100, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = add i32 %56, 132
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = shl i32 %2550, 4
  %2552 = and i32 %2551, 32752
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = lshr i32 %2550, 7
  %2555 = and i32 %2554, 32752
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = fsub fast float 1.000000e+00, %2535
  %2558 = call float @dx.op.binary.f32(i32 35, float %2557, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2559 = bitcast float %2535 to i32
  %2560 = sitofp i32 %2559 to float
  %2561 = fadd fast float %2560, 0xC1CFBF8940000000
  %2562 = fmul fast float %2556, %2561
  %2563 = fadd fast float %2562, 0x41CFBF8940000000
  %2564 = fptosi float %2563 to i32
  %2565 = bitcast i32 %2564 to float
  %2566 = bitcast float %2558 to i32
  %2567 = sitofp i32 %2566 to float
  %2568 = fadd fast float %2567, 0xC1CFBF8940000000
  %2569 = fmul fast float %2568, %2556
  %2570 = fadd fast float %2569, 0x41CFBF8940000000
  %2571 = fptosi float %2570 to i32
  %2572 = bitcast i32 %2571 to float
  %2573 = fmul fast float %2565, %2553
  %2574 = fmul fast float %2572, %2553
  %2575 = fsub fast float %2558, %2573
  %2576 = fadd fast float %2574, %2558
  %2577 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2579 = fsub fast float %2547, %2577
  %2580 = fsub fast float %2578, %2577
  %2581 = bitcast float %2580 to i32
  %2582 = sub nsw i32 2129859010, %2581
  %2583 = bitcast i32 %2582 to float
  %2584 = fmul fast float %2583, %2579
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  br label %2586

; <label>:2586                                    ; preds = %2540, %2534
  %2587 = phi float [ %2585, %2540 ], [ %2535, %2534 ]
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 128
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2608, label %2592

; <label>:2592                                    ; preds = %2586
  %2593 = add i32 %56, 448
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %2595, 0
  %2597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2597, %dx.types.Handle %100, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2599 = extractvalue %dx.types.ResRet.f32 %2598, 0
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 524288
  %2603 = icmp ne i32 %2602, 0
  %2604 = fcmp fast ogt float %2599, 0x3FE0101020000000
  %2605 = select i1 %2604, float 1.000000e+00, float 0.000000e+00
  %2606 = select i1 %2603, float %2605, float %2599
  %2607 = fmul fast float %2606, %2587
  br label %2608

; <label>:2608                                    ; preds = %2592, %2586
  %2609 = phi float [ %2607, %2592 ], [ %2587, %2586 ]
  %2610 = fcmp fast ult float %2609, 0x3F70101020000000
  br i1 %2610, label %3349, label %2611

; <label>:2611                                    ; preds = %2608
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 16
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2814, label %2616

; <label>:2616                                    ; preds = %2611
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %56, 400
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2623, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.ResRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.ResRet.f32 %2624, 2
  %2628 = extractvalue %dx.types.ResRet.f32 %2624, 3
  %2629 = and i32 %2618, 255
  %2630 = uitofp i32 %2629 to float
  %2631 = lshr i32 %2618, 8
  %2632 = and i32 %2631, 255
  %2633 = uitofp i32 %2632 to float
  %2634 = fmul fast float %2628, %2630
  %2635 = fadd fast float %2634, %2633
  %2636 = fmul fast float %2635, 0x3F70101000000000
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 512
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2649, label %2641

; <label>:2641                                    ; preds = %2616
  %2642 = add i32 %56, 480
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %2644, 0
  %2646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2646, %dx.types.Handle %100, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  br label %2649

; <label>:2649                                    ; preds = %2641, %2616
  %2650 = phi float [ %2648, %2641 ], [ 1.000000e+00, %2616 ]
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 33554432
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %2761, label %2655

; <label>:2655                                    ; preds = %2649
  %2656 = add i32 %56, 256
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2658, 16
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = add i32 %56, 260
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 65535
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = lshr i32 %2669, 24
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = and i32 %2669, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = lshr i32 %2669, 8
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = lshr i32 %2669, 16
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = add i32 %56, 252
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = lshr i32 %2686, 24
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = and i32 %2686, 255
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2691, 0x3F70101020000000
  %2693 = lshr i32 %2686, 8
  %2694 = and i32 %2693, 255
  %2695 = uitofp i32 %2694 to float
  %2696 = fmul fast float %2695, 0x3F70101020000000
  %2697 = lshr i32 %2686, 16
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = bitcast float %2625 to i32
  %2702 = ashr i32 %2701, 1
  %2703 = sub nsw i32 1597463174, %2702
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2625, 5.000000e-01
  %2706 = fmul fast float %2704, %2704
  %2707 = fmul fast float %2706, %2705
  %2708 = fsub fast float 1.500000e+00, %2707
  %2709 = fmul fast float %2704, %2625
  %2710 = fmul fast float %2709, %2708
  %2711 = bitcast float %2626 to i32
  %2712 = ashr i32 %2711, 1
  %2713 = sub nsw i32 1597463174, %2712
  %2714 = bitcast i32 %2713 to float
  %2715 = fmul fast float %2626, 5.000000e-01
  %2716 = fmul fast float %2714, %2714
  %2717 = fmul fast float %2716, %2715
  %2718 = fsub fast float 1.500000e+00, %2717
  %2719 = fmul fast float %2714, %2626
  %2720 = fmul fast float %2719, %2718
  %2721 = bitcast float %2627 to i32
  %2722 = ashr i32 %2721, 1
  %2723 = sub nsw i32 1597463174, %2722
  %2724 = bitcast i32 %2723 to float
  %2725 = fmul fast float %2627, 5.000000e-01
  %2726 = fmul fast float %2724, %2724
  %2727 = fmul fast float %2726, %2725
  %2728 = fsub fast float 1.500000e+00, %2727
  %2729 = fmul fast float %2724, %2627
  %2730 = fmul fast float %2729, %2728
  %2731 = fsub fast float %2710, %2692
  %2732 = fsub fast float %2720, %2696
  %2733 = fsub fast float %2730, %2700
  %2734 = fmul fast float %2731, %2660
  %2735 = fmul fast float %2732, %2662
  %2736 = fmul fast float %2733, %2667
  %2737 = fadd fast float %2734, %2675
  %2738 = fadd fast float %2735, %2679
  %2739 = fadd fast float %2736, %2683
  %2740 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2741 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2742 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2743 = fmul fast float %2740, %2740
  %2744 = fmul fast float %2741, %2741
  %2745 = fmul fast float %2742, %2742
  %2746 = fsub fast float %2743, %2625
  %2747 = fsub fast float %2744, %2626
  %2748 = fsub fast float %2745, %2627
  %2749 = fmul fast float %2746, %2650
  %2750 = fmul fast float %2747, %2650
  %2751 = fmul fast float %2748, %2650
  %2752 = fadd fast float %2749, %2625
  %2753 = fadd fast float %2750, %2626
  %2754 = fadd fast float %2751, %2627
  %2755 = fadd fast float %2672, %2636
  %2756 = fsub fast float %2755, %2689
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fsub fast float %2757, %2636
  %2759 = fmul fast float %2758, %2650
  %2760 = fadd fast float %2759, %2636
  br label %2814

; <label>:2761                                    ; preds = %2649
  %2762 = and i32 %2652, 134217728
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2798, label %2764

; <label>:2764                                    ; preds = %2761
  %2765 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fmul fast float %2768, %2650
  %2772 = fmul fast float %2769, %2650
  %2773 = fmul fast float %2770, %2650
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2778 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2779 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2780 = fmul fast float %2774, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2777
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2777
  %2785 = fmul fast float %2775, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2778
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2778
  %2790 = fmul fast float %2776, 2.000000e+00
  %2791 = fsub fast float 1.000000e+00, %2790
  %2792 = fmul fast float %2791, %2779
  %2793 = fadd fast float %2792, %2790
  %2794 = fmul fast float %2793, %2779
  %2795 = fmul fast float %2784, %2784
  %2796 = fmul fast float %2789, %2789
  %2797 = fmul fast float %2794, %2794
  br label %2814

; <label>:2798                                    ; preds = %2761
  %2799 = fmul fast float %336, %336
  %2800 = fmul fast float %340, %340
  %2801 = fmul fast float %344, %344
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fadd fast float %2801, -1.000000e+00
  %2805 = fmul fast float %2650, %2802
  %2806 = fmul fast float %2650, %2803
  %2807 = fmul fast float %2650, %2804
  %2808 = fadd fast float %2805, 1.000000e+00
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fadd fast float %2807, 1.000000e+00
  %2811 = fmul fast float %2808, %2625
  %2812 = fmul fast float %2809, %2626
  %2813 = fmul fast float %2810, %2627
  br label %2814

; <label>:2814                                    ; preds = %2798, %2764, %2655, %2611
  %2815 = phi float [ %2760, %2655 ], [ %2636, %2764 ], [ %2636, %2798 ], [ 0x3FA23C0BE0000000, %2611 ]
  %2816 = phi float [ %2752, %2655 ], [ %2795, %2764 ], [ %2811, %2798 ], [ 1.000000e+00, %2611 ]
  %2817 = phi float [ %2753, %2655 ], [ %2796, %2764 ], [ %2812, %2798 ], [ 1.000000e+00, %2611 ]
  %2818 = phi float [ %2754, %2655 ], [ %2797, %2764 ], [ %2813, %2798 ], [ 1.000000e+00, %2611 ]
  %2819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.i32 %2819, 1
  %2821 = and i32 %2820, 1
  %2822 = icmp ne i32 %2821, 0
  %2823 = add i32 %56, 356
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = and i32 %2825, 32
  %2827 = icmp ne i32 %2826, 0
  %2828 = and i1 %2822, %2827
  %2829 = select i1 %2828, float 1.000000e+00, float %2816
  %2830 = select i1 %2828, float 0x3FD3333340000000, float %2817
  %2831 = select i1 %2828, float 0x3FD3333340000000, float %2818
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 32
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2908, label %2836

; <label>:2836                                    ; preds = %2814
  %2837 = add i32 %56, 124
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %56, 416
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %2842, 0
  %2844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2844, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = extractvalue %dx.types.ResRet.f32 %2845, 3
  %2850 = and i32 %2839, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = lshr i32 %2839, 8
  %2853 = and i32 %2852, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = lshr i32 %2839, 16
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101000000000
  %2859 = fmul fast float %2846, %2851
  %2860 = fadd fast float %2859, %2854
  %2861 = fmul fast float %2860, 0x3F70101000000000
  %2862 = fadd fast float %2847, -5.000000e-01
  %2863 = fadd fast float %2849, -5.000000e-01
  %2864 = fmul fast float %2862, %2858
  %2865 = fmul fast float %2863, %2858
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = fadd fast float %2865, 5.000000e-01
  %2868 = fmul fast float %2866, 2.000000e+00
  %2869 = fadd fast float %2868, -1.000000e+00
  %2870 = fmul fast float %2867, 2.000000e+00
  %2871 = fadd fast float %2870, -1.000000e+00
  %2872 = fadd fast float %2869, %2871
  %2873 = fmul fast float %2872, 5.000000e-01
  %2874 = fsub fast float %2869, %2871
  %2875 = fmul fast float %2874, 5.000000e-01
  %2876 = call float @dx.op.unary.f32(i32 6, float %2873)  ; FAbs(value)
  %2877 = fsub fast float 1.000000e+00, %2876
  %2878 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2879 = fsub fast float %2877, %2878
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2873, float %2875, float %2879, float %2873, float %2875, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = call float @dx.op.unary.f32(i32 25, float %2880)  ; Rsqrt(value)
  %2882 = fmul fast float %2873, %2881
  %2883 = fmul fast float %2875, %2881
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 67108864
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2904, label %2888

; <label>:2888                                    ; preds = %2836
  %2889 = add i32 %56, 312
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 65535
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2891, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = fsub fast float %2861, %2899
  %2901 = fmul fast float %2900, %2893
  %2902 = fadd fast float %2901, %2897
  %2903 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  br label %2904

; <label>:2904                                    ; preds = %2888, %2836
  %2905 = phi float [ %2903, %2888 ], [ %2861, %2836 ]
  %2906 = call float @dx.op.dot2.f32(i32 54, float %2882, float %2883, float %2325, float %2326)  ; Dot2(ax,ay,bx,by)
  %2907 = call float @dx.op.dot2.f32(i32 54, float %2882, float %2883, float %2327, float %2328)  ; Dot2(ax,ay,bx,by)
  br label %2908

; <label>:2908                                    ; preds = %2904, %2814
  %2909 = phi float [ %2905, %2904 ], [ 0x3FD6666660000000, %2814 ]
  %2910 = phi float [ %2906, %2904 ], [ 0.000000e+00, %2814 ]
  %2911 = phi float [ %2907, %2904 ], [ 0.000000e+00, %2814 ]
  %2912 = phi float [ %2848, %2904 ], [ 1.000000e+00, %2814 ]
  %2913 = add i32 %56, 192
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = lshr i32 %2915, 22
  %2917 = shl nuw nsw i32 %2916, 5
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 64
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2956, label %2923

; <label>:2923                                    ; preds = %2908
  %2924 = add i32 %56, 432
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 131072
  %2932 = icmp eq i32 %2931, 0
  %2933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.ResRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.ResRet.f32 %2933, 2
  %2937 = fmul fast float %2934, %324
  %2938 = fmul fast float %2935, %327
  %2939 = fmul fast float %2936, %330
  br i1 %2932, label %2946, label %2940

; <label>:2940                                    ; preds = %2923
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = fmul fast float %2942, %2937
  %2944 = fmul fast float %2942, %2938
  %2945 = fmul fast float %2942, %2939
  br label %2946

; <label>:2946                                    ; preds = %2940, %2923
  %2947 = phi float [ %2943, %2940 ], [ %2937, %2923 ]
  %2948 = phi float [ %2944, %2940 ], [ %2938, %2923 ]
  %2949 = phi float [ %2945, %2940 ], [ %2939, %2923 ]
  %2950 = fmul fast float %2947, %2918
  %2951 = select i1 %220, float %2950, float %2947
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2951, float %2948, float %2949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = select i1 %220, float 0.000000e+00, float %2947
  %2954 = select i1 %220, float %2952, float %2948
  %2955 = select i1 %220, float 0.000000e+00, float %2949
  br label %2956

; <label>:2956                                    ; preds = %2946, %2908
  %2957 = phi float [ %2953, %2946 ], [ 0.000000e+00, %2908 ]
  %2958 = phi float [ %2954, %2946 ], [ 0.000000e+00, %2908 ]
  %2959 = phi float [ %2955, %2946 ], [ 0.000000e+00, %2908 ]
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 1024
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %2994, label %2964

; <label>:2964                                    ; preds = %2956
  %2965 = add i32 %56, 184
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2967, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2967, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = fmul fast float %2970, %2970
  %2980 = fmul fast float %2974, %2974
  %2981 = fmul fast float %2978, %2978
  %2982 = add i32 %56, 496
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = add i32 %2984, 0
  %2986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2986, %dx.types.Handle %100, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = fmul fast float %2979, %2988
  %2992 = fmul fast float %2980, %2989
  %2993 = fmul fast float %2981, %2990
  br label %2994

; <label>:2994                                    ; preds = %2964, %2956
  %2995 = phi float [ %2991, %2964 ], [ 0.000000e+00, %2956 ]
  %2996 = phi float [ %2992, %2964 ], [ 0.000000e+00, %2956 ]
  %2997 = phi float [ %2993, %2964 ], [ 0.000000e+00, %2956 ]
  %2998 = fcmp fast ogt float %2995, 0.000000e+00
  %2999 = fcmp fast ogt float %2996, 0.000000e+00
  %3000 = fcmp fast ogt float %2997, 0.000000e+00
  %3001 = call float @dx.op.unary.f32(i32 23, float %2995)  ; Log(value)
  %3002 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %3003 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = lshr i32 %3005, 7
  %3007 = and i32 %3006, 32752
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = fmul fast float %3001, 0xBFE62E4300000000
  %3010 = fmul fast float %3009, %3008
  %3011 = fmul fast float %3002, 0xBFE62E4300000000
  %3012 = fmul fast float %3011, %3008
  %3013 = fmul fast float %3003, 0xBFE62E4300000000
  %3014 = fmul fast float %3013, %3008
  %3015 = select i1 %2998, float %3010, float 1.270000e+02
  %3016 = select i1 %2999, float %3012, float 1.270000e+02
  %3017 = select i1 %3000, float %3014, float 1.270000e+02
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 10240
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3066, label %3022

; <label>:3022                                    ; preds = %2994
  %3023 = add i32 %56, 512
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3027, %dx.types.Handle %100, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 3
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, 1048576
  %3034 = icmp ne i32 %3033, 0
  %3035 = and i32 %3032, 8192
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3052, label %3037

; <label>:3037                                    ; preds = %3022
  %3038 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3039 = select i1 %3034, float %3038, float %3029
  %3040 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3041 = select i1 %3034, float %3040, float %3029
  %3042 = add i32 %56, 128
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = lshr i32 %3044, 16
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = fmul fast float %3047, 0x3F80101020000000
  %3049 = fmul fast float %3048, %3041
  %3050 = fmul fast float %3048, %3029
  %3051 = fmul fast float %3048, %3039
  br label %3052

; <label>:3052                                    ; preds = %3037, %3022
  %3053 = phi float [ %3049, %3037 ], [ 0.000000e+00, %3022 ]
  %3054 = phi float [ %3050, %3037 ], [ 0.000000e+00, %3022 ]
  %3055 = phi float [ %3051, %3037 ], [ 0.000000e+00, %3022 ]
  %3056 = and i32 %3032, 2048
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3066, label %3058

; <label>:3058                                    ; preds = %3052
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = shl i32 %3060, 4
  %3062 = and i32 %3061, 32752
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = fmul fast float %3063, %3030
  %3065 = call float @dx.op.binary.f32(i32 35, float %3064, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3066

; <label>:3066                                    ; preds = %3058, %3052, %2994
  %3067 = phi float [ %3053, %3058 ], [ %3053, %3052 ], [ 0.000000e+00, %2994 ]
  %3068 = phi float [ %3054, %3058 ], [ %3054, %3052 ], [ 0.000000e+00, %2994 ]
  %3069 = phi float [ %3055, %3058 ], [ %3055, %3052 ], [ 0.000000e+00, %2994 ]
  %3070 = phi float [ %3065, %3058 ], [ 0x3F70101020000000, %3052 ], [ 0x3F70101020000000, %2994 ]
  %3071 = add i32 %56, 128
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = lshr i32 %3073, 8
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2830, float %2831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = fmul fast float %3078, %3079
  %3081 = fadd fast float %3080, %3075
  %3082 = fmul fast float %3081, 0x3F70101020000000
  %3083 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  br i1 %2313, label %3084, label %3119

; <label>:3084                                    ; preds = %3066
  %3085 = fmul fast float %3070, 2.000000e+00
  %3086 = fcmp fast olt float %3015, 1.270000e+02
  %3087 = fcmp fast olt float %3016, 1.270000e+02
  %3088 = fcmp fast olt float %3017, 1.270000e+02
  %3089 = fmul fast float %3015, 0xBFF7154760000000
  %3090 = fmul fast float %3089, %3085
  %3091 = fmul fast float %3016, 0xBFF7154760000000
  %3092 = fmul fast float %3091, %3085
  %3093 = fmul fast float %3017, 0xBFF7154760000000
  %3094 = fmul fast float %3093, %3085
  %3095 = call float @dx.op.unary.f32(i32 21, float %3090)  ; Exp(value)
  %3096 = call float @dx.op.unary.f32(i32 21, float %3092)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 21, float %3094)  ; Exp(value)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3099 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3101 = fadd fast float %3098, -1.000000e+00
  %3102 = select i1 %3086, float %3101, float -1.000000e+00
  %3103 = fadd fast float %3099, -1.000000e+00
  %3104 = select i1 %3087, float %3103, float -1.000000e+00
  %3105 = fadd fast float %3100, -1.000000e+00
  %3106 = select i1 %3088, float %3105, float -1.000000e+00
  %3107 = fmul fast float %3102, %2609
  %3108 = fmul fast float %3104, %2609
  %3109 = fmul fast float %3106, %2609
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fmul fast float %3110, %2295
  %3114 = fmul fast float %3111, %2296
  %3115 = fmul fast float %3112, %2297
  %3116 = fmul fast float %3110, %2298
  %3117 = fmul fast float %3111, %2299
  %3118 = fmul fast float %3112, %2300
  br label %3119

; <label>:3119                                    ; preds = %3084, %3066
  %3120 = phi float [ %3113, %3084 ], [ %2295, %3066 ]
  %3121 = phi float [ %3114, %3084 ], [ %2296, %3066 ]
  %3122 = phi float [ %3115, %3084 ], [ %2297, %3066 ]
  %3123 = phi float [ %3116, %3084 ], [ %2298, %3066 ]
  %3124 = phi float [ %3117, %3084 ], [ %2299, %3066 ]
  %3125 = phi float [ %3118, %3084 ], [ %2300, %3066 ]
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 3
  %3129 = icmp eq i32 %3128, 3
  br i1 %3129, label %3208, label %3130

; <label>:3130                                    ; preds = %3119
  %3131 = and i32 %3127, 16
  %3132 = icmp ne i32 %3131, 0
  %3133 = select i1 %3132, float %2609, float 0.000000e+00
  %3134 = icmp eq i32 %3128, 0
  br i1 %3134, label %3135, label %3163

; <label>:3135                                    ; preds = %3130
  %3136 = and i32 %3127, 64
  %3137 = icmp ne i32 %3136, 0
  %3138 = select i1 %3137, float %2609, float 0.000000e+00
  %3139 = fsub fast float %2829, %3120
  %3140 = fsub fast float %2830, %3121
  %3141 = fsub fast float %2831, %3122
  %3142 = fmul fast float %3133, %3139
  %3143 = fmul fast float %3133, %3140
  %3144 = fmul fast float %3133, %3141
  %3145 = fadd fast float %3142, %3120
  %3146 = fadd fast float %3143, %3121
  %3147 = fadd fast float %3144, %3122
  %3148 = fsub fast float %2815, %2307
  %3149 = fmul fast float %3133, %3148
  %3150 = fadd fast float %3149, %2307
  %3151 = fsub fast float %2957, %3123
  %3152 = fsub fast float %2958, %3124
  %3153 = fsub fast float %2959, %3125
  %3154 = fmul fast float %3138, %3151
  %3155 = fmul fast float %3138, %3152
  %3156 = fmul fast float %3138, %3153
  %3157 = fadd fast float %3154, %3123
  %3158 = fadd fast float %3155, %3124
  %3159 = fadd fast float %3156, %3125
  %3160 = fsub fast float %3083, %2311
  %3161 = fmul fast float %3133, %3160
  %3162 = fadd fast float %3161, %2311
  br label %3208

; <label>:3163                                    ; preds = %3130
  %3164 = icmp eq i32 %3128, 1
  br i1 %3164, label %3165, label %3178

; <label>:3165                                    ; preds = %3163
  %3166 = fadd fast float %2829, -1.000000e+00
  %3167 = fadd fast float %2830, -1.000000e+00
  %3168 = fadd fast float %2831, -1.000000e+00
  %3169 = fmul fast float %3133, %3166
  %3170 = fmul fast float %3133, %3167
  %3171 = fmul fast float %3133, %3168
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fadd fast float %3171, 1.000000e+00
  %3175 = fmul fast float %3172, %3120
  %3176 = fmul fast float %3173, %3121
  %3177 = fmul fast float %3174, %3122
  br label %3208

; <label>:3178                                    ; preds = %3163
  %3179 = icmp eq i32 %3128, 2
  br i1 %3179, label %3180, label %3208

; <label>:3180                                    ; preds = %3178
  %3181 = call float @dx.op.unary.f32(i32 24, float %2829)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %3183 = call float @dx.op.unary.f32(i32 24, float %2831)  ; Sqrt(value)
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fmul fast float %3184, %3133
  %3188 = fmul fast float %3185, %3133
  %3189 = fmul fast float %3186, %3133
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = fmul fast float %3190, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3120
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3120
  %3198 = fmul fast float %3191, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3121
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3121
  %3203 = fmul fast float %3192, 2.000000e+00
  %3204 = fsub fast float 1.000000e+00, %3203
  %3205 = fmul fast float %3204, %3122
  %3206 = fadd fast float %3205, %3203
  %3207 = fmul fast float %3206, %3122
  br label %3208

; <label>:3208                                    ; preds = %3180, %3178, %3165, %3135, %3119
  %3209 = phi float [ %3120, %3119 ], [ %3197, %3180 ], [ %3120, %3178 ], [ %3175, %3165 ], [ %3145, %3135 ]
  %3210 = phi float [ %3121, %3119 ], [ %3202, %3180 ], [ %3121, %3178 ], [ %3176, %3165 ], [ %3146, %3135 ]
  %3211 = phi float [ %3122, %3119 ], [ %3207, %3180 ], [ %3122, %3178 ], [ %3177, %3165 ], [ %3147, %3135 ]
  %3212 = phi float [ %3123, %3119 ], [ %3123, %3180 ], [ %3123, %3178 ], [ %3123, %3165 ], [ %3157, %3135 ]
  %3213 = phi float [ %3124, %3119 ], [ %3124, %3180 ], [ %3124, %3178 ], [ %3124, %3165 ], [ %3158, %3135 ]
  %3214 = phi float [ %3125, %3119 ], [ %3125, %3180 ], [ %3125, %3178 ], [ %3125, %3165 ], [ %3159, %3135 ]
  %3215 = phi float [ %2307, %3119 ], [ %2307, %3180 ], [ %2307, %3178 ], [ %2307, %3165 ], [ %3150, %3135 ]
  %3216 = phi float [ %2311, %3119 ], [ %2311, %3180 ], [ %2311, %3178 ], [ %2311, %3165 ], [ %3162, %3135 ]
  %3217 = and i32 %3127, 12
  %3218 = icmp eq i32 %3217, 12
  br i1 %3218, label %3349, label %3219

; <label>:3219                                    ; preds = %3208
  %3220 = and i32 %3127, 2097184
  %3221 = icmp eq i32 %3220, 2097184
  %3222 = select i1 %3221, float %2609, float 0.000000e+00
  %3223 = and i32 %3127, 4194336
  %3224 = icmp eq i32 %3223, 4194336
  %3225 = select i1 %3224, float %2609, float 0.000000e+00
  %3226 = and i32 %3127, 8388640
  %3227 = icmp eq i32 %3226, 8388640
  %3228 = select i1 %3227, float %2609, float 0.000000e+00
  %3229 = and i32 %3127, 1024
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2609, float 0.000000e+00
  %3232 = and i32 %3127, 2048
  %3233 = icmp ne i32 %3232, 0
  %3234 = select i1 %3233, float %2609, float 0.000000e+00
  %3235 = and i32 %3127, 8192
  %3236 = icmp ne i32 %3235, 0
  %3237 = select i1 %3236, float %2609, float 0.000000e+00
  %3238 = icmp eq i32 %3217, 0
  br i1 %3238, label %3239, label %3273

; <label>:3239                                    ; preds = %3219
  %3240 = fsub fast float %2910, %2293
  %3241 = fsub fast float %2911, %2294
  %3242 = fmul fast float %3222, %3240
  %3243 = fmul fast float %3222, %3241
  %3244 = fadd fast float %3242, %2293
  %3245 = fadd fast float %3243, %2294
  %3246 = fsub fast float %2912, %2309
  %3247 = fmul fast float %3225, %3246
  %3248 = fadd fast float %3247, %2309
  %3249 = fsub fast float %2909, %2308
  %3250 = fmul fast float %3228, %3249
  %3251 = fadd fast float %3250, %2308
  %3252 = fsub fast float %3015, %2304
  %3253 = fsub fast float %3016, %2305
  %3254 = fsub fast float %3017, %2306
  %3255 = fmul fast float %3231, %3252
  %3256 = fmul fast float %3231, %3253
  %3257 = fmul fast float %3231, %3254
  %3258 = fadd fast float %3255, %2304
  %3259 = fadd fast float %3256, %2305
  %3260 = fadd fast float %3257, %2306
  %3261 = fsub fast float %3070, %2310
  %3262 = fmul fast float %3234, %3261
  %3263 = fadd fast float %3262, %2310
  %3264 = fsub fast float %3067, %2301
  %3265 = fsub fast float %3068, %2302
  %3266 = fsub fast float %3069, %2303
  %3267 = fmul fast float %3237, %3264
  %3268 = fmul fast float %3237, %3265
  %3269 = fmul fast float %3237, %3266
  %3270 = fadd fast float %3267, %2301
  %3271 = fadd fast float %3268, %2302
  %3272 = fadd fast float %3269, %2303
  br label %3349

; <label>:3273                                    ; preds = %3219
  %3274 = icmp eq i32 %3217, 4
  br i1 %3274, label %3275, label %3321

; <label>:3275                                    ; preds = %3273
  %3276 = fmul fast float %3222, %2910
  %3277 = fmul fast float %3222, %2911
  %3278 = fadd fast float %3276, %2293
  %3279 = fadd fast float %3277, %2294
  %3280 = call float @dx.op.binary.f32(i32 36, float %2309, float %2912)  ; FMin(a,b)
  %3281 = fsub fast float %3280, %2309
  %3282 = fmul fast float %3281, %3225
  %3283 = fadd fast float %3282, %2309
  %3284 = fadd fast float %2909, %2308
  %3285 = fmul fast float %3284, 0x3FF337FAE0000000
  %3286 = fmul fast float %2308, %2308
  %3287 = fmul fast float %2909, %2909
  %3288 = fadd fast float %3287, %3286
  %3289 = fmul fast float %3288, 0x3FE5152B00000000
  %3290 = fmul fast float %2308, 0xBFCC1F85E0000000
  %3291 = fmul fast float %3290, %2909
  %3292 = fadd fast float %3291, 0xBFE1363700000000
  %3293 = fadd fast float %3292, %3285
  %3294 = fsub fast float %3293, %3289
  %3295 = fmul fast float %3284, 0x3FBA6F0D00000000
  %3296 = fmul fast float %3288, 0x3FD0432880000000
  %3297 = fmul fast float %2308, 0xBFEF110800000000
  %3298 = fmul fast float %3297, %2909
  %3299 = fadd fast float %3298, 1.000000e+00
  %3300 = fsub fast float %3299, %3295
  %3301 = fadd fast float %3300, %3296
  %3302 = fdiv fast float %3294, %3301
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fsub fast float %3303, %2308
  %3305 = fmul fast float %3304, %3228
  %3306 = fadd fast float %3305, %2308
  %3307 = fmul fast float %3231, %3015
  %3308 = fmul fast float %3231, %3016
  %3309 = fmul fast float %3231, %3017
  %3310 = fadd fast float %3307, %2304
  %3311 = fadd fast float %3308, %2305
  %3312 = fadd fast float %3309, %2306
  %3313 = fmul fast float %3234, %3070
  %3314 = fadd fast float %3313, %2310
  %3315 = fmul fast float %3237, %3067
  %3316 = fmul fast float %3237, %3068
  %3317 = fmul fast float %3237, %3069
  %3318 = fadd fast float %3315, %2301
  %3319 = fadd fast float %3316, %2302
  %3320 = fadd fast float %3317, %2303
  br label %3349

; <label>:3321                                    ; preds = %3273
  %3322 = icmp eq i32 %3217, 8
  br i1 %3322, label %3323, label %3349

; <label>:3323                                    ; preds = %3321
  %3324 = fmul fast float %3222, %2910
  %3325 = fmul fast float %3222, %2911
  %3326 = fadd fast float %3324, %2293
  %3327 = fadd fast float %3325, %2294
  %3328 = call float @dx.op.binary.f32(i32 36, float %2309, float %2912)  ; FMin(a,b)
  %3329 = fsub fast float %3328, %2309
  %3330 = fmul fast float %3329, %3225
  %3331 = fadd fast float %3330, %2309
  %3332 = fsub fast float %2909, %2308
  %3333 = fmul fast float %3228, %3332
  %3334 = fadd fast float %3333, %2308
  %3335 = fmul fast float %3231, %3015
  %3336 = fmul fast float %3231, %3016
  %3337 = fmul fast float %3231, %3017
  %3338 = fadd fast float %3335, %2304
  %3339 = fadd fast float %3336, %2305
  %3340 = fadd fast float %3337, %2306
  %3341 = fmul fast float %3234, %3070
  %3342 = fadd fast float %3341, %2310
  %3343 = fmul fast float %3237, %3067
  %3344 = fmul fast float %3237, %3068
  %3345 = fmul fast float %3237, %3069
  %3346 = fadd fast float %3343, %2301
  %3347 = fadd fast float %3344, %2302
  %3348 = fadd fast float %3345, %2303
  br label %3349

; <label>:3349                                    ; preds = %3323, %3321, %3275, %3239, %3208, %2608, %2312, %2292
  %3350 = phi float [ %2293, %3208 ], [ %2293, %2608 ], [ %2293, %2292 ], [ %3326, %3323 ], [ %2293, %3321 ], [ %3278, %3275 ], [ %3244, %3239 ], [ %2293, %2312 ]
  %3351 = phi float [ %2294, %3208 ], [ %2294, %2608 ], [ %2294, %2292 ], [ %3327, %3323 ], [ %2294, %3321 ], [ %3279, %3275 ], [ %3245, %3239 ], [ %2294, %2312 ]
  %3352 = phi float [ %3209, %3208 ], [ %2295, %2608 ], [ %2295, %2292 ], [ %3209, %3323 ], [ %3209, %3321 ], [ %3209, %3275 ], [ %3209, %3239 ], [ %2295, %2312 ]
  %3353 = phi float [ %3210, %3208 ], [ %2296, %2608 ], [ %2296, %2292 ], [ %3210, %3323 ], [ %3210, %3321 ], [ %3210, %3275 ], [ %3210, %3239 ], [ %2296, %2312 ]
  %3354 = phi float [ %3211, %3208 ], [ %2297, %2608 ], [ %2297, %2292 ], [ %3211, %3323 ], [ %3211, %3321 ], [ %3211, %3275 ], [ %3211, %3239 ], [ %2297, %2312 ]
  %3355 = phi float [ %3212, %3208 ], [ %2298, %2608 ], [ %2298, %2292 ], [ %3212, %3323 ], [ %3212, %3321 ], [ %3212, %3275 ], [ %3212, %3239 ], [ %2298, %2312 ]
  %3356 = phi float [ %3213, %3208 ], [ %2299, %2608 ], [ %2299, %2292 ], [ %3213, %3323 ], [ %3213, %3321 ], [ %3213, %3275 ], [ %3213, %3239 ], [ %2299, %2312 ]
  %3357 = phi float [ %3214, %3208 ], [ %2300, %2608 ], [ %2300, %2292 ], [ %3214, %3323 ], [ %3214, %3321 ], [ %3214, %3275 ], [ %3214, %3239 ], [ %2300, %2312 ]
  %3358 = phi float [ %2301, %3208 ], [ %2301, %2608 ], [ %2301, %2292 ], [ %3346, %3323 ], [ %2301, %3321 ], [ %3318, %3275 ], [ %3270, %3239 ], [ %2301, %2312 ]
  %3359 = phi float [ %2302, %3208 ], [ %2302, %2608 ], [ %2302, %2292 ], [ %3347, %3323 ], [ %2302, %3321 ], [ %3319, %3275 ], [ %3271, %3239 ], [ %2302, %2312 ]
  %3360 = phi float [ %2303, %3208 ], [ %2303, %2608 ], [ %2303, %2292 ], [ %3348, %3323 ], [ %2303, %3321 ], [ %3320, %3275 ], [ %3272, %3239 ], [ %2303, %2312 ]
  %3361 = phi float [ %2304, %3208 ], [ %2304, %2608 ], [ %2304, %2292 ], [ %3338, %3323 ], [ %2304, %3321 ], [ %3310, %3275 ], [ %3258, %3239 ], [ %2304, %2312 ]
  %3362 = phi float [ %2305, %3208 ], [ %2305, %2608 ], [ %2305, %2292 ], [ %3339, %3323 ], [ %2305, %3321 ], [ %3311, %3275 ], [ %3259, %3239 ], [ %2305, %2312 ]
  %3363 = phi float [ %2306, %3208 ], [ %2306, %2608 ], [ %2306, %2292 ], [ %3340, %3323 ], [ %2306, %3321 ], [ %3312, %3275 ], [ %3260, %3239 ], [ %2306, %2312 ]
  %3364 = phi float [ %3215, %3208 ], [ %2307, %2608 ], [ %2307, %2292 ], [ %3215, %3323 ], [ %3215, %3321 ], [ %3215, %3275 ], [ %3215, %3239 ], [ %2307, %2312 ]
  %3365 = phi float [ %2308, %3208 ], [ %2308, %2608 ], [ %2308, %2292 ], [ %3334, %3323 ], [ %2308, %3321 ], [ %3306, %3275 ], [ %3251, %3239 ], [ %2308, %2312 ]
  %3366 = phi float [ %2309, %3208 ], [ %2309, %2608 ], [ %2309, %2292 ], [ %3331, %3323 ], [ %2309, %3321 ], [ %3283, %3275 ], [ %3248, %3239 ], [ %2309, %2312 ]
  %3367 = phi float [ %2310, %3208 ], [ %2310, %2608 ], [ %2310, %2292 ], [ %3342, %3323 ], [ %2310, %3321 ], [ %3314, %3275 ], [ %3263, %3239 ], [ %2310, %2312 ]
  %3368 = phi float [ %3216, %3208 ], [ %2311, %2608 ], [ %2311, %2292 ], [ %3216, %3323 ], [ %3216, %3321 ], [ %3216, %3275 ], [ %3216, %3239 ], [ %2311, %2312 ]
  br i1 %411, label %4406, label %3369

; <label>:3369                                    ; preds = %3349
  %3370 = icmp ult i32 %465, 4
  %3371 = add i32 %56, 72
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = add i32 %56, 76
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = or i32 %3376, %3373
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %4406, label %3379

; <label>:3379                                    ; preds = %3369
  %3380 = and i32 %3373, 262144
  %3381 = icmp ne i32 %3380, 0
  %3382 = select i1 %3381, float %60, float 1.000000e+00
  %3383 = select i1 %3381, float %61, float 0.000000e+00
  %3384 = select i1 %3381, float %62, float 0.000000e+00
  %3385 = select i1 %3381, float %63, float 1.000000e+00
  %3386 = select i1 %3381, float %64, float %85
  %3387 = select i1 %3381, float %65, float %86
  %3388 = add i32 %56, 332
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = lshr i32 %3390, 16
  %3392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3391)  ; LegacyF16ToF32(value)
  %3393 = fmul fast float %3392, 0x3F50624DE0000000
  %3394 = add i32 %56, 136
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = lshr i32 %3396, 16
  %3398 = and i32 %3397, 255
  %3399 = lshr i32 %3396, 24
  %3400 = add i32 %56, 340
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = lshr i32 %3402, 16
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = add i32 %56, 80
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = lshr i32 %3409, 22
  %3411 = shl nuw nsw i32 %3410, 5
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = shl i32 %3409, 4
  %3414 = and i32 %3413, 32752
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = lshr i32 %3409, 7
  %3417 = and i32 %3416, 32752
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 3
  %3421 = fmul fast float %3420, 1.000000e+03
  %3422 = fmul fast float %401, %3421
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fadd fast float %3423, %391
  %3425 = fmul fast float %402, %3421
  %3426 = call float @dx.op.unary.f32(i32 22, float %3425)  ; Frc(value)
  %3427 = fadd fast float %3426, %393
  %3428 = fmul fast float %3393, %3421
  %3429 = call float @dx.op.unary.f32(i32 22, float %3428)  ; Frc(value)
  %3430 = fmul fast float %3429, 0x401921FB60000000
  %3431 = fadd fast float %3430, %3412
  %3432 = call float @dx.op.unary.f32(i32 13, float %3431)  ; Sin(value)
  %3433 = call float @dx.op.unary.f32(i32 12, float %3431)  ; Cos(value)
  %3434 = fsub fast float -0.000000e+00, %3432
  %3435 = fadd fast float %3386, -5.000000e-01
  %3436 = fadd fast float %3387, -5.000000e-01
  %3437 = fmul fast float %3404, %3435
  %3438 = fmul fast float %3406, %3436
  %3439 = fadd fast float %3437, 5.000000e-01
  %3440 = fadd fast float %3438, 5.000000e-01
  %3441 = fmul fast float %3415, %3439
  %3442 = fmul fast float %3418, %3440
  %3443 = fmul fast float %3433, %3441
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3442, float %3443)  ; FMad(a,b,c)
  %3445 = fmul fast float %3432, %3441
  %3446 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3442, float %3445)  ; FMad(a,b,c)
  %3447 = fadd fast float %3424, %3444
  %3448 = fadd fast float %3427, %3446
  %3449 = icmp ugt i32 %3398, 1
  %3450 = icmp ugt i32 %3396, 33554431
  %3451 = or i1 %3450, %3449
  br i1 %3451, label %3452, label %3477

; <label>:3452                                    ; preds = %3379
  %3453 = add i32 %56, 276
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = lshr i32 %3455, 16
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = fmul fast float %3420, %3457
  %3459 = call float @dx.op.unary.f32(i32 22, float %3458)  ; Frc(value)
  %3460 = mul nuw nsw i32 %3398, %3399
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3459, %3461
  %3463 = call float @dx.op.unary.f32(i32 27, float %3462)  ; Round_ni(value)
  %3464 = fptoui float %3463 to i32
  %3465 = urem i32 %3464, %3398
  %3466 = udiv i32 %3464, %3399
  %3467 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3468 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3469 = uitofp i32 %3465 to float
  %3470 = uitofp i32 %3466 to float
  %3471 = fadd fast float %3467, %3469
  %3472 = fadd fast float %3468, %3470
  %3473 = uitofp i32 %3398 to float
  %3474 = uitofp i32 %3399 to float
  %3475 = fdiv fast float %3471, %3473
  %3476 = fdiv fast float %3472, %3474
  br label %3477

; <label>:3477                                    ; preds = %3452, %3379
  %3478 = phi float [ %3475, %3452 ], [ %3447, %3379 ]
  %3479 = phi float [ %3476, %3452 ], [ %3448, %3379 ]
  %3480 = and i32 %3373, 16777216
  %3481 = icmp eq i32 %3480, 0
  br i1 %3481, label %3591, label %3482

; <label>:3482                                    ; preds = %3477
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = fadd fast float %3484, %158
  %3488 = fadd fast float %3485, %159
  %3489 = fadd fast float %3486, %160
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = icmp eq i32 %57, 65535
  br i1 %3493, label %3588, label %3494

; <label>:3494                                    ; preds = %3482
  %3495 = lshr i32 %57, 1
  %3496 = shl i32 %3495, 2
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %57, 1
  %3500 = icmp ne i32 %3499, 0
  %3501 = lshr i32 %3498, 16
  %3502 = and i32 %3498, 65535
  %3503 = select i1 %3500, i32 %3501, i32 %3502
  %3504 = icmp eq i32 %3503, 65535
  br i1 %3504, label %3584, label %3505

; <label>:3505                                    ; preds = %3494
  %3506 = mul nuw nsw i32 %3503, 40
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3506, 12
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = add nuw nsw i32 %3506, 24
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = add nuw nsw i32 %3506, 36
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = fsub fast float %3487, %3508
  %3525 = fsub fast float %3488, %3509
  %3526 = fsub fast float %3489, %3510
  %3527 = fmul fast float %3523, %3524
  %3528 = fmul fast float %3523, %3525
  %3529 = fmul fast float %3523, %3526
  %3530 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = fadd fast float %3532, 5.000000e-01
  %3536 = fmul fast float %3533, %3513
  %3537 = fmul fast float %3534, %3514
  %3538 = fmul fast float %3535, %3515
  %3539 = shl i32 %57, 2
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = add i32 %3541, 0
  %3543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3544 = call float @dx.op.unary.f32(i32 22, float %3536)  ; Frc(value)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3546 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3543, %dx.types.Handle %51, float %3544, float %3545, float %3546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = fmul fast float %3548, 1.023000e+03
  %3552 = fmul fast float %3549, 1.023000e+03
  %3553 = fmul fast float %3550, 1.023000e+03
  %3554 = fadd fast float %3551, 5.000000e-01
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3560 = fsub fast float %3527, %3530
  %3561 = fsub fast float %3528, %3531
  %3562 = fsub fast float %3529, %3532
  %3563 = fmul fast float %3560, 7.500000e-01
  %3564 = fmul fast float %3561, 7.500000e-01
  %3565 = fmul fast float %3562, 7.500000e-01
  %3566 = fadd fast float %3530, 1.250000e-01
  %3567 = fadd fast float %3566, %3563
  %3568 = fadd fast float %3567, %3557
  %3569 = fadd fast float %3531, 1.250000e-01
  %3570 = fadd fast float %3569, %3564
  %3571 = fadd fast float %3570, %3558
  %3572 = fadd fast float %3532, 1.250000e-01
  %3573 = fadd fast float %3572, %3565
  %3574 = fadd fast float %3573, %3559
  %3575 = fmul fast float %3568, %3518
  %3576 = fmul fast float %3571, %3519
  %3577 = fmul fast float %3574, %3520
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = add i32 %3579, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3581, %dx.types.Handle %49, float %3575, float %3576, float %3577, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  br label %3584

; <label>:3584                                    ; preds = %3505, %3494
  %3585 = phi float [ %3583, %3505 ], [ -1.000000e+00, %3494 ]
  %3586 = fadd fast float %3585, %3492
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  br label %3588

; <label>:3588                                    ; preds = %3584, %3482
  %3589 = phi float [ %3587, %3584 ], [ %3492, %3482 ]
  %3590 = fmul fast float %3589, %460
  br label %3591

; <label>:3591                                    ; preds = %3588, %3477
  %3592 = phi float [ %3590, %3588 ], [ %460, %3477 ]
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 256
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3643, label %3597

; <label>:3597                                    ; preds = %3591
  %3598 = add i32 %56, 468
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = add i32 %3600, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3602, %dx.types.Handle %100, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = add i32 %56, 148
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = shl i32 %3607, 4
  %3609 = and i32 %3608, 32752
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = lshr i32 %3607, 7
  %3612 = and i32 %3611, 32752
  %3613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3612)  ; LegacyF16ToF32(value)
  %3614 = fsub fast float 1.000000e+00, %3592
  %3615 = call float @dx.op.binary.f32(i32 35, float %3614, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3616 = bitcast float %3592 to i32
  %3617 = sitofp i32 %3616 to float
  %3618 = fadd fast float %3617, 0xC1CFBF8940000000
  %3619 = fmul fast float %3613, %3618
  %3620 = fadd fast float %3619, 0x41CFBF8940000000
  %3621 = fptosi float %3620 to i32
  %3622 = bitcast i32 %3621 to float
  %3623 = bitcast float %3615 to i32
  %3624 = sitofp i32 %3623 to float
  %3625 = fadd fast float %3624, 0xC1CFBF8940000000
  %3626 = fmul fast float %3625, %3613
  %3627 = fadd fast float %3626, 0x41CFBF8940000000
  %3628 = fptosi float %3627 to i32
  %3629 = bitcast i32 %3628 to float
  %3630 = fmul fast float %3622, %3610
  %3631 = fmul fast float %3629, %3610
  %3632 = fsub fast float %3615, %3630
  %3633 = fadd fast float %3631, %3615
  %3634 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3635 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3636 = fsub fast float %3604, %3634
  %3637 = fsub fast float %3635, %3634
  %3638 = bitcast float %3637 to i32
  %3639 = sub nsw i32 2129859010, %3638
  %3640 = bitcast i32 %3639 to float
  %3641 = fmul fast float %3640, %3636
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  br label %3643

; <label>:3643                                    ; preds = %3597, %3591
  %3644 = phi float [ %3642, %3597 ], [ %3592, %3591 ]
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = and i32 %3646, 128
  %3648 = icmp eq i32 %3647, 0
  br i1 %3648, label %3665, label %3649

; <label>:3649                                    ; preds = %3643
  %3650 = add i32 %56, 452
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = add i32 %3652, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3654, %dx.types.Handle %100, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 524288
  %3660 = icmp ne i32 %3659, 0
  %3661 = fcmp fast ogt float %3656, 0x3FE0101020000000
  %3662 = select i1 %3661, float 1.000000e+00, float 0.000000e+00
  %3663 = select i1 %3660, float %3662, float %3656
  %3664 = fmul fast float %3663, %3644
  br label %3665

; <label>:3665                                    ; preds = %3649, %3643
  %3666 = phi float [ %3664, %3649 ], [ %3644, %3643 ]
  %3667 = fcmp fast ult float %3666, 0x3F70101020000000
  br i1 %3667, label %4406, label %3668

; <label>:3668                                    ; preds = %3665
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 16
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3871, label %3673

; <label>:3673                                    ; preds = %3668
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = add i32 %56, 404
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %3678, 0
  %3680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3680, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = and i32 %3675, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = lshr i32 %3675, 8
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = fmul fast float %3685, %3687
  %3692 = fadd fast float %3691, %3690
  %3693 = fmul fast float %3692, 0x3F70101000000000
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 512
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3706, label %3698

; <label>:3698                                    ; preds = %3673
  %3699 = add i32 %56, 484
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = add i32 %3701, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3703, %dx.types.Handle %100, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  br label %3706

; <label>:3706                                    ; preds = %3698, %3673
  %3707 = phi float [ %3705, %3698 ], [ 1.000000e+00, %3673 ]
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 33554432
  %3711 = icmp eq i32 %3710, 0
  br i1 %3711, label %3818, label %3712

; <label>:3712                                    ; preds = %3706
  %3713 = add i32 %56, 272
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = and i32 %3715, 65535
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = lshr i32 %3715, 16
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = add i32 %56, 276
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 65535
  %3724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3723)  ; LegacyF16ToF32(value)
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = lshr i32 %3726, 24
  %3728 = uitofp i32 %3727 to float
  %3729 = fmul fast float %3728, 0x3F70101020000000
  %3730 = and i32 %3726, 255
  %3731 = uitofp i32 %3730 to float
  %3732 = fmul fast float %3731, 0x3F70101020000000
  %3733 = lshr i32 %3726, 8
  %3734 = and i32 %3733, 255
  %3735 = uitofp i32 %3734 to float
  %3736 = fmul fast float %3735, 0x3F70101020000000
  %3737 = lshr i32 %3726, 16
  %3738 = and i32 %3737, 255
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = add i32 %56, 268
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = lshr i32 %3743, 24
  %3745 = uitofp i32 %3744 to float
  %3746 = fmul fast float %3745, 0x3F70101020000000
  %3747 = and i32 %3743, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101020000000
  %3750 = lshr i32 %3743, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = fmul fast float %3752, 0x3F70101020000000
  %3754 = lshr i32 %3743, 16
  %3755 = and i32 %3754, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F70101020000000
  %3758 = bitcast float %3682 to i32
  %3759 = ashr i32 %3758, 1
  %3760 = sub nsw i32 1597463174, %3759
  %3761 = bitcast i32 %3760 to float
  %3762 = fmul fast float %3682, 5.000000e-01
  %3763 = fmul fast float %3761, %3761
  %3764 = fmul fast float %3763, %3762
  %3765 = fsub fast float 1.500000e+00, %3764
  %3766 = fmul fast float %3761, %3682
  %3767 = fmul fast float %3766, %3765
  %3768 = bitcast float %3683 to i32
  %3769 = ashr i32 %3768, 1
  %3770 = sub nsw i32 1597463174, %3769
  %3771 = bitcast i32 %3770 to float
  %3772 = fmul fast float %3683, 5.000000e-01
  %3773 = fmul fast float %3771, %3771
  %3774 = fmul fast float %3773, %3772
  %3775 = fsub fast float 1.500000e+00, %3774
  %3776 = fmul fast float %3771, %3683
  %3777 = fmul fast float %3776, %3775
  %3778 = bitcast float %3684 to i32
  %3779 = ashr i32 %3778, 1
  %3780 = sub nsw i32 1597463174, %3779
  %3781 = bitcast i32 %3780 to float
  %3782 = fmul fast float %3684, 5.000000e-01
  %3783 = fmul fast float %3781, %3781
  %3784 = fmul fast float %3783, %3782
  %3785 = fsub fast float 1.500000e+00, %3784
  %3786 = fmul fast float %3781, %3684
  %3787 = fmul fast float %3786, %3785
  %3788 = fsub fast float %3767, %3749
  %3789 = fsub fast float %3777, %3753
  %3790 = fsub fast float %3787, %3757
  %3791 = fmul fast float %3788, %3717
  %3792 = fmul fast float %3789, %3719
  %3793 = fmul fast float %3790, %3724
  %3794 = fadd fast float %3791, %3732
  %3795 = fadd fast float %3792, %3736
  %3796 = fadd fast float %3793, %3740
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = fmul fast float %3797, %3797
  %3801 = fmul fast float %3798, %3798
  %3802 = fmul fast float %3799, %3799
  %3803 = fsub fast float %3800, %3682
  %3804 = fsub fast float %3801, %3683
  %3805 = fsub fast float %3802, %3684
  %3806 = fmul fast float %3803, %3707
  %3807 = fmul fast float %3804, %3707
  %3808 = fmul fast float %3805, %3707
  %3809 = fadd fast float %3806, %3682
  %3810 = fadd fast float %3807, %3683
  %3811 = fadd fast float %3808, %3684
  %3812 = fadd fast float %3729, %3693
  %3813 = fsub fast float %3812, %3746
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fsub fast float %3814, %3693
  %3816 = fmul fast float %3815, %3707
  %3817 = fadd fast float %3816, %3693
  br label %3871

; <label>:3818                                    ; preds = %3706
  %3819 = and i32 %3709, 134217728
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3855, label %3821

; <label>:3821                                    ; preds = %3818
  %3822 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3824 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3825 = fadd fast float %3822, -5.000000e-01
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fmul fast float %3825, %3707
  %3829 = fmul fast float %3826, %3707
  %3830 = fmul fast float %3827, %3707
  %3831 = fadd fast float %3828, 5.000000e-01
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = call float @dx.op.unary.f32(i32 24, float %3682)  ; Sqrt(value)
  %3835 = call float @dx.op.unary.f32(i32 24, float %3683)  ; Sqrt(value)
  %3836 = call float @dx.op.unary.f32(i32 24, float %3684)  ; Sqrt(value)
  %3837 = fmul fast float %3831, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3834
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3834
  %3842 = fmul fast float %3832, 2.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, %3835
  %3845 = fadd fast float %3844, %3842
  %3846 = fmul fast float %3845, %3835
  %3847 = fmul fast float %3833, 2.000000e+00
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3848, %3836
  %3850 = fadd fast float %3849, %3847
  %3851 = fmul fast float %3850, %3836
  %3852 = fmul fast float %3841, %3841
  %3853 = fmul fast float %3846, %3846
  %3854 = fmul fast float %3851, %3851
  br label %3871

; <label>:3855                                    ; preds = %3818
  %3856 = fmul fast float %378, %378
  %3857 = fmul fast float %382, %382
  %3858 = fmul fast float %386, %386
  %3859 = fadd fast float %3856, -1.000000e+00
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fmul fast float %3707, %3859
  %3863 = fmul fast float %3707, %3860
  %3864 = fmul fast float %3707, %3861
  %3865 = fadd fast float %3862, 1.000000e+00
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fadd fast float %3864, 1.000000e+00
  %3868 = fmul fast float %3865, %3682
  %3869 = fmul fast float %3866, %3683
  %3870 = fmul fast float %3867, %3684
  br label %3871

; <label>:3871                                    ; preds = %3855, %3821, %3712, %3668
  %3872 = phi float [ %3817, %3712 ], [ %3693, %3821 ], [ %3693, %3855 ], [ 0x3FA23C0BE0000000, %3668 ]
  %3873 = phi float [ %3809, %3712 ], [ %3852, %3821 ], [ %3868, %3855 ], [ 1.000000e+00, %3668 ]
  %3874 = phi float [ %3810, %3712 ], [ %3853, %3821 ], [ %3869, %3855 ], [ 1.000000e+00, %3668 ]
  %3875 = phi float [ %3811, %3712 ], [ %3854, %3821 ], [ %3870, %3855 ], [ 1.000000e+00, %3668 ]
  %3876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.i32 %3876, 1
  %3878 = and i32 %3877, 1
  %3879 = icmp ne i32 %3878, 0
  %3880 = add i32 %56, 356
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = and i32 %3882, 32
  %3884 = icmp ne i32 %3883, 0
  %3885 = and i1 %3879, %3884
  %3886 = select i1 %3885, float 1.000000e+00, float %3873
  %3887 = select i1 %3885, float 0x3FD3333340000000, float %3874
  %3888 = select i1 %3885, float 0x3FD3333340000000, float %3875
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = and i32 %3890, 32
  %3892 = icmp eq i32 %3891, 0
  br i1 %3892, label %3965, label %3893

; <label>:3893                                    ; preds = %3871
  %3894 = add i32 %56, 140
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = add i32 %56, 420
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = add i32 %3899, 0
  %3901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3901, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = and i32 %3896, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = lshr i32 %3896, 8
  %3910 = and i32 %3909, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = lshr i32 %3896, 16
  %3913 = and i32 %3912, 255
  %3914 = uitofp i32 %3913 to float
  %3915 = fmul fast float %3914, 0x3F70101000000000
  %3916 = fmul fast float %3903, %3908
  %3917 = fadd fast float %3916, %3911
  %3918 = fmul fast float %3917, 0x3F70101000000000
  %3919 = fadd fast float %3904, -5.000000e-01
  %3920 = fadd fast float %3906, -5.000000e-01
  %3921 = fmul fast float %3919, %3915
  %3922 = fmul fast float %3920, %3915
  %3923 = fadd fast float %3921, 5.000000e-01
  %3924 = fadd fast float %3922, 5.000000e-01
  %3925 = fmul fast float %3923, 2.000000e+00
  %3926 = fadd fast float %3925, -1.000000e+00
  %3927 = fmul fast float %3924, 2.000000e+00
  %3928 = fadd fast float %3927, -1.000000e+00
  %3929 = fadd fast float %3926, %3928
  %3930 = fmul fast float %3929, 5.000000e-01
  %3931 = fsub fast float %3926, %3928
  %3932 = fmul fast float %3931, 5.000000e-01
  %3933 = call float @dx.op.unary.f32(i32 6, float %3930)  ; FAbs(value)
  %3934 = fsub fast float 1.000000e+00, %3933
  %3935 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3936 = fsub fast float %3934, %3935
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3932, float %3936, float %3930, float %3932, float %3936)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = call float @dx.op.unary.f32(i32 25, float %3937)  ; Rsqrt(value)
  %3939 = fmul fast float %3930, %3938
  %3940 = fmul fast float %3932, %3938
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 67108864
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3961, label %3945

; <label>:3945                                    ; preds = %3893
  %3946 = add i32 %56, 328
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = and i32 %3948, 65535
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = and i32 %3952, 65535
  %3954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3953)  ; LegacyF16ToF32(value)
  %3955 = lshr i32 %3948, 16
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = fsub fast float %3918, %3956
  %3958 = fmul fast float %3957, %3950
  %3959 = fadd fast float %3958, %3954
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  br label %3961

; <label>:3961                                    ; preds = %3945, %3893
  %3962 = phi float [ %3960, %3945 ], [ %3918, %3893 ]
  %3963 = call float @dx.op.dot2.f32(i32 54, float %3939, float %3940, float %3382, float %3383)  ; Dot2(ax,ay,bx,by)
  %3964 = call float @dx.op.dot2.f32(i32 54, float %3939, float %3940, float %3384, float %3385)  ; Dot2(ax,ay,bx,by)
  br label %3965

; <label>:3965                                    ; preds = %3961, %3871
  %3966 = phi float [ %3962, %3961 ], [ 0x3FD6666660000000, %3871 ]
  %3967 = phi float [ %3963, %3961 ], [ 0.000000e+00, %3871 ]
  %3968 = phi float [ %3964, %3961 ], [ 0.000000e+00, %3871 ]
  %3969 = phi float [ %3905, %3961 ], [ 1.000000e+00, %3871 ]
  %3970 = add i32 %56, 208
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = lshr i32 %3972, 22
  %3974 = shl nuw nsw i32 %3973, 5
  %3975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3974)  ; LegacyF16ToF32(value)
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = and i32 %3977, 64
  %3979 = icmp eq i32 %3978, 0
  br i1 %3979, label %4013, label %3980

; <label>:3980                                    ; preds = %3965
  %3981 = add i32 %56, 436
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = add i32 %3983, 0
  %3985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, 131072
  %3989 = icmp eq i32 %3988, 0
  %3990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3985, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = fmul fast float %3991, %366
  %3995 = fmul fast float %3992, %369
  %3996 = fmul fast float %3993, %372
  br i1 %3989, label %4003, label %3997

; <label>:3997                                    ; preds = %3980
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = fmul fast float %3999, %3994
  %4001 = fmul fast float %3999, %3995
  %4002 = fmul fast float %3999, %3996
  br label %4003

; <label>:4003                                    ; preds = %3997, %3980
  %4004 = phi float [ %4000, %3997 ], [ %3994, %3980 ]
  %4005 = phi float [ %4001, %3997 ], [ %3995, %3980 ]
  %4006 = phi float [ %4002, %3997 ], [ %3996, %3980 ]
  %4007 = fmul fast float %4004, %3975
  %4008 = select i1 %220, float %4007, float %4004
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4005, float %4006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = select i1 %220, float 0.000000e+00, float %4004
  %4011 = select i1 %220, float %4009, float %4005
  %4012 = select i1 %220, float 0.000000e+00, float %4006
  br label %4013

; <label>:4013                                    ; preds = %4003, %3965
  %4014 = phi float [ %4010, %4003 ], [ 0.000000e+00, %3965 ]
  %4015 = phi float [ %4011, %4003 ], [ 0.000000e+00, %3965 ]
  %4016 = phi float [ %4012, %4003 ], [ 0.000000e+00, %3965 ]
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 1024
  %4020 = icmp eq i32 %4019, 0
  br i1 %4020, label %4051, label %4021

; <label>:4021                                    ; preds = %4013
  %4022 = add i32 %56, 200
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = fmul fast float %4026, 0x3F70101020000000
  %4028 = lshr i32 %4024, 8
  %4029 = and i32 %4028, 255
  %4030 = uitofp i32 %4029 to float
  %4031 = fmul fast float %4030, 0x3F70101020000000
  %4032 = lshr i32 %4024, 16
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3F70101020000000
  %4036 = fmul fast float %4027, %4027
  %4037 = fmul fast float %4031, %4031
  %4038 = fmul fast float %4035, %4035
  %4039 = add i32 %56, 500
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = add i32 %4041, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4043, %dx.types.Handle %100, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = fmul fast float %4036, %4045
  %4049 = fmul fast float %4037, %4046
  %4050 = fmul fast float %4038, %4047
  br label %4051

; <label>:4051                                    ; preds = %4021, %4013
  %4052 = phi float [ %4048, %4021 ], [ 0.000000e+00, %4013 ]
  %4053 = phi float [ %4049, %4021 ], [ 0.000000e+00, %4013 ]
  %4054 = phi float [ %4050, %4021 ], [ 0.000000e+00, %4013 ]
  %4055 = fcmp fast ogt float %4052, 0.000000e+00
  %4056 = fcmp fast ogt float %4053, 0.000000e+00
  %4057 = fcmp fast ogt float %4054, 0.000000e+00
  %4058 = call float @dx.op.unary.f32(i32 23, float %4052)  ; Log(value)
  %4059 = call float @dx.op.unary.f32(i32 23, float %4053)  ; Log(value)
  %4060 = call float @dx.op.unary.f32(i32 23, float %4054)  ; Log(value)
  %4061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.i32 %4061, 0
  %4063 = lshr i32 %4062, 7
  %4064 = and i32 %4063, 32752
  %4065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4064)  ; LegacyF16ToF32(value)
  %4066 = fmul fast float %4058, 0xBFE62E4300000000
  %4067 = fmul fast float %4066, %4065
  %4068 = fmul fast float %4059, 0xBFE62E4300000000
  %4069 = fmul fast float %4068, %4065
  %4070 = fmul fast float %4060, 0xBFE62E4300000000
  %4071 = fmul fast float %4070, %4065
  %4072 = select i1 %4055, float %4067, float 1.270000e+02
  %4073 = select i1 %4056, float %4069, float 1.270000e+02
  %4074 = select i1 %4057, float %4071, float 1.270000e+02
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = and i32 %4076, 10240
  %4078 = icmp eq i32 %4077, 0
  br i1 %4078, label %4123, label %4079

; <label>:4079                                    ; preds = %4051
  %4080 = add i32 %56, 516
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = add i32 %4082, 0
  %4084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4084, %dx.types.Handle %100, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4085, 3
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, 1048576
  %4091 = icmp ne i32 %4090, 0
  %4092 = and i32 %4089, 8192
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4109, label %4094

; <label>:4094                                    ; preds = %4079
  %4095 = extractvalue %dx.types.ResRet.f32 %4085, 2
  %4096 = select i1 %4091, float %4095, float %4086
  %4097 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4098 = select i1 %4091, float %4097, float %4086
  %4099 = add i32 %56, 144
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = lshr i32 %4101, 16
  %4103 = and i32 %4102, 255
  %4104 = uitofp i32 %4103 to float
  %4105 = fmul fast float %4104, 0x3F80101020000000
  %4106 = fmul fast float %4105, %4098
  %4107 = fmul fast float %4105, %4086
  %4108 = fmul fast float %4105, %4096
  br label %4109

; <label>:4109                                    ; preds = %4094, %4079
  %4110 = phi float [ %4106, %4094 ], [ 0.000000e+00, %4079 ]
  %4111 = phi float [ %4107, %4094 ], [ 0.000000e+00, %4079 ]
  %4112 = phi float [ %4108, %4094 ], [ 0.000000e+00, %4079 ]
  %4113 = and i32 %4089, 2048
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4123, label %4115

; <label>:4115                                    ; preds = %4109
  %4116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.i32 %4116, 0
  %4118 = shl i32 %4117, 4
  %4119 = and i32 %4118, 32752
  %4120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4119)  ; LegacyF16ToF32(value)
  %4121 = fmul fast float %4120, %4087
  %4122 = call float @dx.op.binary.f32(i32 35, float %4121, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4123

; <label>:4123                                    ; preds = %4115, %4109, %4051
  %4124 = phi float [ %4110, %4115 ], [ %4110, %4109 ], [ 0.000000e+00, %4051 ]
  %4125 = phi float [ %4111, %4115 ], [ %4111, %4109 ], [ 0.000000e+00, %4051 ]
  %4126 = phi float [ %4112, %4115 ], [ %4112, %4109 ], [ 0.000000e+00, %4051 ]
  %4127 = phi float [ %4122, %4115 ], [ 0x3F70101020000000, %4109 ], [ 0x3F70101020000000, %4051 ]
  %4128 = add i32 %56, 144
  %4129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.i32 %4129, 0
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4130, 8
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = fmul fast float %4135, %4136
  %4138 = fadd fast float %4137, %4132
  %4139 = fmul fast float %4138, 0x3F70101020000000
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  br i1 %3370, label %4141, label %4176

; <label>:4141                                    ; preds = %4123
  %4142 = fmul fast float %4127, 2.000000e+00
  %4143 = fcmp fast olt float %4072, 1.270000e+02
  %4144 = fcmp fast olt float %4073, 1.270000e+02
  %4145 = fcmp fast olt float %4074, 1.270000e+02
  %4146 = fmul fast float %4072, 0xBFF7154760000000
  %4147 = fmul fast float %4146, %4142
  %4148 = fmul fast float %4073, 0xBFF7154760000000
  %4149 = fmul fast float %4148, %4142
  %4150 = fmul fast float %4074, 0xBFF7154760000000
  %4151 = fmul fast float %4150, %4142
  %4152 = call float @dx.op.unary.f32(i32 21, float %4147)  ; Exp(value)
  %4153 = call float @dx.op.unary.f32(i32 21, float %4149)  ; Exp(value)
  %4154 = call float @dx.op.unary.f32(i32 21, float %4151)  ; Exp(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = fadd fast float %4155, -1.000000e+00
  %4159 = select i1 %4143, float %4158, float -1.000000e+00
  %4160 = fadd fast float %4156, -1.000000e+00
  %4161 = select i1 %4144, float %4160, float -1.000000e+00
  %4162 = fadd fast float %4157, -1.000000e+00
  %4163 = select i1 %4145, float %4162, float -1.000000e+00
  %4164 = fmul fast float %4159, %3666
  %4165 = fmul fast float %4161, %3666
  %4166 = fmul fast float %4163, %3666
  %4167 = fadd fast float %4164, 1.000000e+00
  %4168 = fadd fast float %4165, 1.000000e+00
  %4169 = fadd fast float %4166, 1.000000e+00
  %4170 = fmul fast float %4167, %3352
  %4171 = fmul fast float %4168, %3353
  %4172 = fmul fast float %4169, %3354
  %4173 = fmul fast float %4167, %3355
  %4174 = fmul fast float %4168, %3356
  %4175 = fmul fast float %4169, %3357
  br label %4176

; <label>:4176                                    ; preds = %4141, %4123
  %4177 = phi float [ %4170, %4141 ], [ %3352, %4123 ]
  %4178 = phi float [ %4171, %4141 ], [ %3353, %4123 ]
  %4179 = phi float [ %4172, %4141 ], [ %3354, %4123 ]
  %4180 = phi float [ %4173, %4141 ], [ %3355, %4123 ]
  %4181 = phi float [ %4174, %4141 ], [ %3356, %4123 ]
  %4182 = phi float [ %4175, %4141 ], [ %3357, %4123 ]
  %4183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = and i32 %4184, 3
  %4186 = icmp eq i32 %4185, 3
  br i1 %4186, label %4265, label %4187

; <label>:4187                                    ; preds = %4176
  %4188 = and i32 %4184, 16
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %3666, float 0.000000e+00
  %4191 = icmp eq i32 %4185, 0
  br i1 %4191, label %4192, label %4220

; <label>:4192                                    ; preds = %4187
  %4193 = and i32 %4184, 64
  %4194 = icmp ne i32 %4193, 0
  %4195 = select i1 %4194, float %3666, float 0.000000e+00
  %4196 = fsub fast float %3886, %4177
  %4197 = fsub fast float %3887, %4178
  %4198 = fsub fast float %3888, %4179
  %4199 = fmul fast float %4190, %4196
  %4200 = fmul fast float %4190, %4197
  %4201 = fmul fast float %4190, %4198
  %4202 = fadd fast float %4199, %4177
  %4203 = fadd fast float %4200, %4178
  %4204 = fadd fast float %4201, %4179
  %4205 = fsub fast float %3872, %3364
  %4206 = fmul fast float %4190, %4205
  %4207 = fadd fast float %4206, %3364
  %4208 = fsub fast float %4014, %4180
  %4209 = fsub fast float %4015, %4181
  %4210 = fsub fast float %4016, %4182
  %4211 = fmul fast float %4195, %4208
  %4212 = fmul fast float %4195, %4209
  %4213 = fmul fast float %4195, %4210
  %4214 = fadd fast float %4211, %4180
  %4215 = fadd fast float %4212, %4181
  %4216 = fadd fast float %4213, %4182
  %4217 = fsub fast float %4140, %3368
  %4218 = fmul fast float %4190, %4217
  %4219 = fadd fast float %4218, %3368
  br label %4265

; <label>:4220                                    ; preds = %4187
  %4221 = icmp eq i32 %4185, 1
  br i1 %4221, label %4222, label %4235

; <label>:4222                                    ; preds = %4220
  %4223 = fadd fast float %3886, -1.000000e+00
  %4224 = fadd fast float %3887, -1.000000e+00
  %4225 = fadd fast float %3888, -1.000000e+00
  %4226 = fmul fast float %4190, %4223
  %4227 = fmul fast float %4190, %4224
  %4228 = fmul fast float %4190, %4225
  %4229 = fadd fast float %4226, 1.000000e+00
  %4230 = fadd fast float %4227, 1.000000e+00
  %4231 = fadd fast float %4228, 1.000000e+00
  %4232 = fmul fast float %4229, %4177
  %4233 = fmul fast float %4230, %4178
  %4234 = fmul fast float %4231, %4179
  br label %4265

; <label>:4235                                    ; preds = %4220
  %4236 = icmp eq i32 %4185, 2
  br i1 %4236, label %4237, label %4265

; <label>:4237                                    ; preds = %4235
  %4238 = call float @dx.op.unary.f32(i32 24, float %3886)  ; Sqrt(value)
  %4239 = call float @dx.op.unary.f32(i32 24, float %3887)  ; Sqrt(value)
  %4240 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %4241 = fadd fast float %4238, -5.000000e-01
  %4242 = fadd fast float %4239, -5.000000e-01
  %4243 = fadd fast float %4240, -5.000000e-01
  %4244 = fmul fast float %4241, %4190
  %4245 = fmul fast float %4242, %4190
  %4246 = fmul fast float %4243, %4190
  %4247 = fadd fast float %4244, 5.000000e-01
  %4248 = fadd fast float %4245, 5.000000e-01
  %4249 = fadd fast float %4246, 5.000000e-01
  %4250 = fmul fast float %4247, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4177
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4177
  %4255 = fmul fast float %4248, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4178
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4178
  %4260 = fmul fast float %4249, 2.000000e+00
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = fmul fast float %4261, %4179
  %4263 = fadd fast float %4262, %4260
  %4264 = fmul fast float %4263, %4179
  br label %4265

; <label>:4265                                    ; preds = %4237, %4235, %4222, %4192, %4176
  %4266 = phi float [ %4177, %4176 ], [ %4254, %4237 ], [ %4177, %4235 ], [ %4232, %4222 ], [ %4202, %4192 ]
  %4267 = phi float [ %4178, %4176 ], [ %4259, %4237 ], [ %4178, %4235 ], [ %4233, %4222 ], [ %4203, %4192 ]
  %4268 = phi float [ %4179, %4176 ], [ %4264, %4237 ], [ %4179, %4235 ], [ %4234, %4222 ], [ %4204, %4192 ]
  %4269 = phi float [ %4180, %4176 ], [ %4180, %4237 ], [ %4180, %4235 ], [ %4180, %4222 ], [ %4214, %4192 ]
  %4270 = phi float [ %4181, %4176 ], [ %4181, %4237 ], [ %4181, %4235 ], [ %4181, %4222 ], [ %4215, %4192 ]
  %4271 = phi float [ %4182, %4176 ], [ %4182, %4237 ], [ %4182, %4235 ], [ %4182, %4222 ], [ %4216, %4192 ]
  %4272 = phi float [ %3364, %4176 ], [ %3364, %4237 ], [ %3364, %4235 ], [ %3364, %4222 ], [ %4207, %4192 ]
  %4273 = phi float [ %3368, %4176 ], [ %3368, %4237 ], [ %3368, %4235 ], [ %3368, %4222 ], [ %4219, %4192 ]
  %4274 = and i32 %4184, 12
  %4275 = icmp eq i32 %4274, 12
  br i1 %4275, label %4406, label %4276

; <label>:4276                                    ; preds = %4265
  %4277 = and i32 %4184, 2097184
  %4278 = icmp eq i32 %4277, 2097184
  %4279 = select i1 %4278, float %3666, float 0.000000e+00
  %4280 = and i32 %4184, 4194336
  %4281 = icmp eq i32 %4280, 4194336
  %4282 = select i1 %4281, float %3666, float 0.000000e+00
  %4283 = and i32 %4184, 8388640
  %4284 = icmp eq i32 %4283, 8388640
  %4285 = select i1 %4284, float %3666, float 0.000000e+00
  %4286 = and i32 %4184, 1024
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3666, float 0.000000e+00
  %4289 = and i32 %4184, 2048
  %4290 = icmp ne i32 %4289, 0
  %4291 = select i1 %4290, float %3666, float 0.000000e+00
  %4292 = and i32 %4184, 8192
  %4293 = icmp ne i32 %4292, 0
  %4294 = select i1 %4293, float %3666, float 0.000000e+00
  %4295 = icmp eq i32 %4274, 0
  br i1 %4295, label %4296, label %4330

; <label>:4296                                    ; preds = %4276
  %4297 = fsub fast float %3967, %3350
  %4298 = fsub fast float %3968, %3351
  %4299 = fmul fast float %4279, %4297
  %4300 = fmul fast float %4279, %4298
  %4301 = fadd fast float %4299, %3350
  %4302 = fadd fast float %4300, %3351
  %4303 = fsub fast float %3969, %3366
  %4304 = fmul fast float %4282, %4303
  %4305 = fadd fast float %4304, %3366
  %4306 = fsub fast float %3966, %3365
  %4307 = fmul fast float %4285, %4306
  %4308 = fadd fast float %4307, %3365
  %4309 = fsub fast float %4072, %3361
  %4310 = fsub fast float %4073, %3362
  %4311 = fsub fast float %4074, %3363
  %4312 = fmul fast float %4288, %4309
  %4313 = fmul fast float %4288, %4310
  %4314 = fmul fast float %4288, %4311
  %4315 = fadd fast float %4312, %3361
  %4316 = fadd fast float %4313, %3362
  %4317 = fadd fast float %4314, %3363
  %4318 = fsub fast float %4127, %3367
  %4319 = fmul fast float %4291, %4318
  %4320 = fadd fast float %4319, %3367
  %4321 = fsub fast float %4124, %3358
  %4322 = fsub fast float %4125, %3359
  %4323 = fsub fast float %4126, %3360
  %4324 = fmul fast float %4294, %4321
  %4325 = fmul fast float %4294, %4322
  %4326 = fmul fast float %4294, %4323
  %4327 = fadd fast float %4324, %3358
  %4328 = fadd fast float %4325, %3359
  %4329 = fadd fast float %4326, %3360
  br label %4406

; <label>:4330                                    ; preds = %4276
  %4331 = icmp eq i32 %4274, 4
  br i1 %4331, label %4332, label %4378

; <label>:4332                                    ; preds = %4330
  %4333 = fmul fast float %4279, %3967
  %4334 = fmul fast float %4279, %3968
  %4335 = fadd fast float %4333, %3350
  %4336 = fadd fast float %4334, %3351
  %4337 = call float @dx.op.binary.f32(i32 36, float %3366, float %3969)  ; FMin(a,b)
  %4338 = fsub fast float %4337, %3366
  %4339 = fmul fast float %4338, %4282
  %4340 = fadd fast float %4339, %3366
  %4341 = fadd fast float %3966, %3365
  %4342 = fmul fast float %4341, 0x3FF337FAE0000000
  %4343 = fmul fast float %3365, %3365
  %4344 = fmul fast float %3966, %3966
  %4345 = fadd fast float %4344, %4343
  %4346 = fmul fast float %4345, 0x3FE5152B00000000
  %4347 = fmul fast float %3365, 0xBFCC1F85E0000000
  %4348 = fmul fast float %4347, %3966
  %4349 = fadd fast float %4348, 0xBFE1363700000000
  %4350 = fadd fast float %4349, %4342
  %4351 = fsub fast float %4350, %4346
  %4352 = fmul fast float %4341, 0x3FBA6F0D00000000
  %4353 = fmul fast float %4345, 0x3FD0432880000000
  %4354 = fmul fast float %3365, 0xBFEF110800000000
  %4355 = fmul fast float %4354, %3966
  %4356 = fadd fast float %4355, 1.000000e+00
  %4357 = fsub fast float %4356, %4352
  %4358 = fadd fast float %4357, %4353
  %4359 = fdiv fast float %4351, %4358
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fsub fast float %4360, %3365
  %4362 = fmul fast float %4361, %4285
  %4363 = fadd fast float %4362, %3365
  %4364 = fmul fast float %4288, %4072
  %4365 = fmul fast float %4288, %4073
  %4366 = fmul fast float %4288, %4074
  %4367 = fadd fast float %4364, %3361
  %4368 = fadd fast float %4365, %3362
  %4369 = fadd fast float %4366, %3363
  %4370 = fmul fast float %4291, %4127
  %4371 = fadd fast float %4370, %3367
  %4372 = fmul fast float %4294, %4124
  %4373 = fmul fast float %4294, %4125
  %4374 = fmul fast float %4294, %4126
  %4375 = fadd fast float %4372, %3358
  %4376 = fadd fast float %4373, %3359
  %4377 = fadd fast float %4374, %3360
  br label %4406

; <label>:4378                                    ; preds = %4330
  %4379 = icmp eq i32 %4274, 8
  br i1 %4379, label %4380, label %4406

; <label>:4380                                    ; preds = %4378
  %4381 = fmul fast float %4279, %3967
  %4382 = fmul fast float %4279, %3968
  %4383 = fadd fast float %4381, %3350
  %4384 = fadd fast float %4382, %3351
  %4385 = call float @dx.op.binary.f32(i32 36, float %3366, float %3969)  ; FMin(a,b)
  %4386 = fsub fast float %4385, %3366
  %4387 = fmul fast float %4386, %4282
  %4388 = fadd fast float %4387, %3366
  %4389 = fsub fast float %3966, %3365
  %4390 = fmul fast float %4285, %4389
  %4391 = fadd fast float %4390, %3365
  %4392 = fmul fast float %4288, %4072
  %4393 = fmul fast float %4288, %4073
  %4394 = fmul fast float %4288, %4074
  %4395 = fadd fast float %4392, %3361
  %4396 = fadd fast float %4393, %3362
  %4397 = fadd fast float %4394, %3363
  %4398 = fmul fast float %4291, %4127
  %4399 = fadd fast float %4398, %3367
  %4400 = fmul fast float %4294, %4124
  %4401 = fmul fast float %4294, %4125
  %4402 = fmul fast float %4294, %4126
  %4403 = fadd fast float %4400, %3358
  %4404 = fadd fast float %4401, %3359
  %4405 = fadd fast float %4402, %3360
  br label %4406

; <label>:4406                                    ; preds = %4380, %4378, %4332, %4296, %4265, %3665, %3369, %3349
  %4407 = phi float [ %3350, %4265 ], [ %3350, %3665 ], [ %3350, %3349 ], [ %3350, %3369 ], [ %4301, %4296 ], [ %4335, %4332 ], [ %3350, %4378 ], [ %4383, %4380 ]
  %4408 = phi float [ %3351, %4265 ], [ %3351, %3665 ], [ %3351, %3349 ], [ %3351, %3369 ], [ %4302, %4296 ], [ %4336, %4332 ], [ %3351, %4378 ], [ %4384, %4380 ]
  %4409 = phi float [ %4266, %4265 ], [ %3352, %3665 ], [ %3352, %3349 ], [ %3352, %3369 ], [ %4266, %4296 ], [ %4266, %4332 ], [ %4266, %4378 ], [ %4266, %4380 ]
  %4410 = phi float [ %4267, %4265 ], [ %3353, %3665 ], [ %3353, %3349 ], [ %3353, %3369 ], [ %4267, %4296 ], [ %4267, %4332 ], [ %4267, %4378 ], [ %4267, %4380 ]
  %4411 = phi float [ %4268, %4265 ], [ %3354, %3665 ], [ %3354, %3349 ], [ %3354, %3369 ], [ %4268, %4296 ], [ %4268, %4332 ], [ %4268, %4378 ], [ %4268, %4380 ]
  %4412 = phi float [ %4269, %4265 ], [ %3355, %3665 ], [ %3355, %3349 ], [ %3355, %3369 ], [ %4269, %4296 ], [ %4269, %4332 ], [ %4269, %4378 ], [ %4269, %4380 ]
  %4413 = phi float [ %4270, %4265 ], [ %3356, %3665 ], [ %3356, %3349 ], [ %3356, %3369 ], [ %4270, %4296 ], [ %4270, %4332 ], [ %4270, %4378 ], [ %4270, %4380 ]
  %4414 = phi float [ %4271, %4265 ], [ %3357, %3665 ], [ %3357, %3349 ], [ %3357, %3369 ], [ %4271, %4296 ], [ %4271, %4332 ], [ %4271, %4378 ], [ %4271, %4380 ]
  %4415 = phi float [ %3358, %4265 ], [ %3358, %3665 ], [ %3358, %3349 ], [ %3358, %3369 ], [ %4327, %4296 ], [ %4375, %4332 ], [ %3358, %4378 ], [ %4403, %4380 ]
  %4416 = phi float [ %3359, %4265 ], [ %3359, %3665 ], [ %3359, %3349 ], [ %3359, %3369 ], [ %4328, %4296 ], [ %4376, %4332 ], [ %3359, %4378 ], [ %4404, %4380 ]
  %4417 = phi float [ %3360, %4265 ], [ %3360, %3665 ], [ %3360, %3349 ], [ %3360, %3369 ], [ %4329, %4296 ], [ %4377, %4332 ], [ %3360, %4378 ], [ %4405, %4380 ]
  %4418 = phi float [ %3361, %4265 ], [ %3361, %3665 ], [ %3361, %3349 ], [ %3361, %3369 ], [ %4315, %4296 ], [ %4367, %4332 ], [ %3361, %4378 ], [ %4395, %4380 ]
  %4419 = phi float [ %3362, %4265 ], [ %3362, %3665 ], [ %3362, %3349 ], [ %3362, %3369 ], [ %4316, %4296 ], [ %4368, %4332 ], [ %3362, %4378 ], [ %4396, %4380 ]
  %4420 = phi float [ %3363, %4265 ], [ %3363, %3665 ], [ %3363, %3349 ], [ %3363, %3369 ], [ %4317, %4296 ], [ %4369, %4332 ], [ %3363, %4378 ], [ %4397, %4380 ]
  %4421 = phi float [ %4272, %4265 ], [ %3364, %3665 ], [ %3364, %3349 ], [ %3364, %3369 ], [ %4272, %4296 ], [ %4272, %4332 ], [ %4272, %4378 ], [ %4272, %4380 ]
  %4422 = phi float [ %3365, %4265 ], [ %3365, %3665 ], [ %3365, %3349 ], [ %3365, %3369 ], [ %4308, %4296 ], [ %4363, %4332 ], [ %3365, %4378 ], [ %4391, %4380 ]
  %4423 = phi float [ %3366, %4265 ], [ %3366, %3665 ], [ %3366, %3349 ], [ %3366, %3369 ], [ %4305, %4296 ], [ %4340, %4332 ], [ %3366, %4378 ], [ %4388, %4380 ]
  %4424 = phi float [ %3367, %4265 ], [ %3367, %3665 ], [ %3367, %3349 ], [ %3367, %3369 ], [ %4320, %4296 ], [ %4371, %4332 ], [ %3367, %4378 ], [ %4399, %4380 ]
  %4425 = phi float [ %4273, %4265 ], [ %3368, %3665 ], [ %3368, %3349 ], [ %3368, %3369 ], [ %4273, %4296 ], [ %4273, %4332 ], [ %4273, %4378 ], [ %4273, %4380 ]
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 0
  %4428 = call float @dx.op.dot2.f32(i32 54, float %4407, float %4408, float %4407, float %4408)  ; Dot2(ax,ay,bx,by)
  %4429 = fmul fast float %4428, 0x3FE3333340000000
  %4430 = fsub fast float 1.000000e+00, %4429
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4430, float %4407, float %4408, float %4430)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 25, float %4431)  ; Rsqrt(value)
  %4433 = fmul fast float %4432, %4407
  %4434 = fmul fast float %4432, %4408
  %4435 = fmul fast float %4430, %4432
  %4436 = fmul fast float %4435, %110
  %4437 = fmul fast float %4435, %111
  %4438 = fmul fast float %4435, %112
  %4439 = fmul fast float %4433, %78
  %4440 = fmul fast float %4433, %79
  %4441 = fmul fast float %4433, %80
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fmul fast float %122, %4434
  %4446 = fmul fast float %123, %4434
  %4447 = fmul fast float %124, %4434
  %4448 = fadd fast float %4442, %4445
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = call float @dx.op.unary.f32(i32 25, float %4451)  ; Rsqrt(value)
  %4453 = fmul fast float %4448, %4452
  %4454 = fmul fast float %4449, %4452
  %4455 = fmul fast float %4450, %4452
  %4456 = and i32 %58, 1
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %4458, label %5050

; <label>:4458                                    ; preds = %4406
  %4459 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4464 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %4465 = fadd fast float %4459, %158
  %4466 = fadd fast float %4460, %159
  %4467 = fadd fast float %4461, %160
  %4468 = fadd fast float %4462, %158
  %4469 = fadd fast float %4463, %159
  %4470 = fadd fast float %4464, %160
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4478 = fmul fast float %4472, %103
  %4479 = fmul fast float %4478, %4476
  %4480 = fmul fast float %4473, %104
  %4481 = fmul fast float %4480, %4477
  %4482 = fptoui float %4479 to i32
  %4483 = fptoui float %4481 to i32
  %4484 = fadd fast float %4472, -1.000000e+00
  %4485 = fadd fast float %4473, -1.000000e+00
  %4486 = fptoui float %4484 to i32
  %4487 = fptoui float %4485 to i32
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4486)  ; UMin(a,b)
  %4489 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4487)  ; UMin(a,b)
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4493 = fmul fast float %4491, %94
  %4494 = fsub fast float %4493, %4492
  %4495 = fadd fast float %4474, -1.000000e+00
  %4496 = call float @dx.op.binary.f32(i32 36, float %4494, float %4495)  ; FMin(a,b)
  %4497 = fptoui float %4496 to i32
  %4498 = fptoui float %4472 to i32
  %4499 = fptoui float %4473 to i32
  %4500 = mul i32 %4497, %4499
  %4501 = add i32 %4500, %4489
  %4502 = mul i32 %4501, %4498
  %4503 = add i32 %4502, %4488
  %4504 = shl i32 %4503, 2
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 1023
  %4508 = lshr i32 %4506, 10
  %4509 = icmp eq i32 %4507, 0
  br i1 %4509, label %5013, label %4510

; <label>:4510                                    ; preds = %4458
  %4511 = and i32 %4506, 1023
  br label %4512

; <label>:4512                                    ; preds = %4644, %4510
  %4513 = phi i32 [ %4594, %4644 ], [ 0, %4510 ]
  %4514 = phi float [ %4645, %4644 ], [ 0.000000e+00, %4510 ]
  %4515 = phi float [ %4646, %4644 ], [ %4427, %4510 ]
  %4516 = phi float [ %4647, %4644 ], [ %4425, %4510 ]
  %4517 = phi float [ %4648, %4644 ], [ %4418, %4510 ]
  %4518 = phi float [ %4649, %4644 ], [ %4419, %4510 ]
  %4519 = phi float [ %4650, %4644 ], [ %4420, %4510 ]
  %4520 = phi float [ %4651, %4644 ], [ 0.000000e+00, %4510 ]
  %4521 = phi float [ %4652, %4644 ], [ 0.000000e+00, %4510 ]
  %4522 = phi float [ %4653, %4644 ], [ %4415, %4510 ]
  %4523 = phi float [ %4654, %4644 ], [ %4416, %4510 ]
  %4524 = phi float [ %4655, %4644 ], [ %4417, %4510 ]
  %4525 = phi float [ %4656, %4644 ], [ %4412, %4510 ]
  %4526 = phi float [ %4657, %4644 ], [ %4413, %4510 ]
  %4527 = phi float [ %4658, %4644 ], [ %4414, %4510 ]
  %4528 = phi float [ %4659, %4644 ], [ %4453, %4510 ]
  %4529 = phi float [ %4660, %4644 ], [ %4454, %4510 ]
  %4530 = phi float [ %4661, %4644 ], [ %4455, %4510 ]
  %4531 = phi float [ %4662, %4644 ], [ %4423, %4510 ]
  %4532 = phi float [ %4663, %4644 ], [ %4422, %4510 ]
  %4533 = phi float [ %4664, %4644 ], [ 0.000000e+00, %4510 ]
  %4534 = phi float [ %4665, %4644 ], [ %4421, %4510 ]
  %4535 = phi float [ %4666, %4644 ], [ %4409, %4510 ]
  %4536 = phi float [ %4667, %4644 ], [ %4410, %4510 ]
  %4537 = phi float [ %4668, %4644 ], [ %4411, %4510 ]
  %4538 = add nuw nsw i32 %4513, %4508
  %4539 = shl i32 %4538, 2
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = shl i32 %4541, 8
  %4543 = or i32 %4542, 48
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4549 = or i32 %4542, 64
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.i32 %4550, 1
  %4553 = or i32 %4542, 80
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4557 = or i32 %4542, 96
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4542, 112
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4566 = or i32 %4542, 128
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4542, 144
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = or i32 %4542, 160
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = or i32 %4542, 192
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = or i32 %4542, 208
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = or i32 %4542, 248
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = add nuw nsw i32 %4513, 1
  %4595 = bitcast float %4548 to i32
  %4596 = and i32 %4595, 512
  %4597 = icmp eq i32 %4596, 0
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4604 = or i32 %4542, 16
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = or i32 %4542, 32
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = call float @dx.op.unary.f32(i32 27, float %4603)  ; Round_ni(value)
  %4619 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4620 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4622)  ; Round_ni(value)
  %4624 = fadd fast float %4621, %4619
  %4625 = fadd fast float %4624, %4623
  %4626 = fcmp fast oeq float %4625, 0.000000e+00
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = fsub fast float %4627, %4603
  %4632 = fsub fast float %4629, %4603
  %4633 = fsub fast float %4628, %4610
  %4634 = fsub fast float %4630, %4610
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4638 = fadd fast float %4637, %4635
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4641 = fcmp fast ogt float %4639, %4640
  %4642 = and i1 %4626, %4641
  %4643 = and i1 %4597, %4642
  br i1 %4643, label %4670, label %4644

; <label>:4644                                    ; preds = %4999, %4751, %4670, %4512
  %4645 = phi float [ %4514, %4670 ], [ %4754, %4751 ], [ %4754, %4999 ], [ %4514, %4512 ]
  %4646 = phi float [ %4515, %4670 ], [ %4515, %4751 ], [ %4975, %4999 ], [ %4515, %4512 ]
  %4647 = phi float [ %4516, %4670 ], [ %4516, %4751 ], [ %4973, %4999 ], [ %4516, %4512 ]
  %4648 = phi float [ %4517, %4670 ], [ %4517, %4751 ], [ %4951, %4999 ], [ %4517, %4512 ]
  %4649 = phi float [ %4518, %4670 ], [ %4518, %4751 ], [ %4952, %4999 ], [ %4518, %4512 ]
  %4650 = phi float [ %4519, %4670 ], [ %4519, %4751 ], [ %4953, %4999 ], [ %4519, %4512 ]
  %4651 = phi float [ %4520, %4670 ], [ %4520, %4751 ], [ %4878, %4999 ], [ %4520, %4512 ]
  %4652 = phi float [ %4521, %4670 ], [ %4521, %4751 ], [ %4876, %4999 ], [ %4521, %4512 ]
  %4653 = phi float [ %4522, %4670 ], [ %4522, %4751 ], [ %4921, %4999 ], [ %4522, %4512 ]
  %4654 = phi float [ %4523, %4670 ], [ %4523, %4751 ], [ %4922, %4999 ], [ %4523, %4512 ]
  %4655 = phi float [ %4524, %4670 ], [ %4524, %4751 ], [ %4923, %4999 ], [ %4524, %4512 ]
  %4656 = phi float [ %4525, %4670 ], [ %4525, %4751 ], [ %5009, %4999 ], [ %4525, %4512 ]
  %4657 = phi float [ %4526, %4670 ], [ %4526, %4751 ], [ %5010, %4999 ], [ %4526, %4512 ]
  %4658 = phi float [ %4527, %4670 ], [ %4527, %4751 ], [ %5011, %4999 ], [ %4527, %4512 ]
  %4659 = phi float [ %4528, %4670 ], [ %4528, %4751 ], [ %4857, %4999 ], [ %4528, %4512 ]
  %4660 = phi float [ %4529, %4670 ], [ %4529, %4751 ], [ %4858, %4999 ], [ %4529, %4512 ]
  %4661 = phi float [ %4530, %4670 ], [ %4530, %4751 ], [ %4859, %4999 ], [ %4530, %4512 ]
  %4662 = phi float [ %4531, %4670 ], [ %4531, %4751 ], [ %4931, %4999 ], [ %4531, %4512 ]
  %4663 = phi float [ %4532, %4670 ], [ %4532, %4751 ], [ %4928, %4999 ], [ %4532, %4512 ]
  %4664 = phi float [ %4533, %4670 ], [ %4533, %4751 ], [ %4925, %4999 ], [ %4533, %4512 ]
  %4665 = phi float [ %4534, %4670 ], [ %4534, %4751 ], [ %4874, %4999 ], [ %4534, %4512 ]
  %4666 = phi float [ %4535, %4670 ], [ %4535, %4751 ], [ %4869, %4999 ], [ %4535, %4512 ]
  %4667 = phi float [ %4536, %4670 ], [ %4536, %4751 ], [ %4870, %4999 ], [ %4536, %4512 ]
  %4668 = phi float [ %4537, %4670 ], [ %4537, %4751 ], [ %4871, %4999 ], [ %4537, %4512 ]
  %4669 = icmp eq i32 %4594, %4511
  br i1 %4669, label %5012, label %4512

; <label>:4670                                    ; preds = %4512
  %4671 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4672 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4676 = extractvalue %dx.types.ResRet.i32 %4550, 3
  %4677 = extractvalue %dx.types.ResRet.i32 %4550, 2
  %4678 = add i32 %4676, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4679, %dx.types.Handle %4680, float %4603, float %4610, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4633, float undef, float %4632, float %4634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fmul fast float %4682, %4675
  %4684 = fadd fast float %4683, %4674
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4603, %4559
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4610, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4673
  %4689 = fmul fast float %4603, %4561
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4610, float %4689)  ; FMad(a,b,c)
  %4691 = fadd fast float %4690, %4672
  %4692 = fmul fast float %4631, %4559
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4633, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4631, %4561
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4633, float %4694)  ; FMad(a,b,c)
  %4696 = fmul fast float %4632, %4559
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4634, float %4696)  ; FMad(a,b,c)
  %4698 = fmul fast float %4632, %4561
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4634, float %4698)  ; FMad(a,b,c)
  %4700 = add i32 %4677, 0
  %4701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4700, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4701, %dx.types.Handle %4680, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = and i32 %4595, 1024
  %4705 = icmp ne i32 %4704, 0
  %4706 = fcmp fast ogt float %4703, 0x3FE0101020000000
  %4707 = uitofp i1 %4706 to float
  %4708 = select i1 %4705, float %4707, float %4703
  %4709 = and i32 %4595, 8192
  %4710 = icmp ne i32 %4709, 0
  %4711 = select i1 %4710, float %4671, float 1.000000e+00
  %4712 = fmul fast float %4603, 2.000000e+00
  %4713 = fadd fast float %4712, -1.000000e+00
  %4714 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4715 = fmul fast float %4714, %4592
  %4716 = fsub fast float %4715, %4592
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4610, 2.000000e+00
  %4719 = fadd fast float %4718, -1.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 6, float %4719)  ; FAbs(value)
  %4721 = fmul fast float %4720, %4593
  %4722 = fsub fast float %4721, %4593
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4622, %4555
  %4725 = fsub fast float %4724, %4555
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4685, %4711
  %4728 = fmul fast float %4727, %4682
  %4729 = fmul fast float %4728, %4717
  %4730 = fmul fast float %4729, %4708
  %4731 = fmul fast float %4730, %4723
  %4732 = fmul fast float %4731, %4726
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4736 = fsub fast float %4639, %4735
  %4737 = fmul fast float %4736, %4734
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4732, %4556
  %4740 = fadd fast float %4732, %4556
  %4741 = fmul fast float %4740, %4565
  %4742 = fsub fast float %4741, %4565
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = and i32 %4595, 128
  %4745 = icmp ne i32 %4744, 0
  %4746 = select i1 %4745, float %4743, float %4739
  %4747 = fmul fast float %4746, %4738
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fcmp fast ugt float %4747, %4749
  br i1 %4750, label %4751, label %4644

; <label>:4751                                    ; preds = %4670
  %4752 = select i1 %4710, float %4747, float 0.000000e+00
  %4753 = fadd fast float %4752, %4514
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  br i1 %4710, label %4644, label %4755

; <label>:4755                                    ; preds = %4751
  %4756 = and i32 %4595, 4
  %4757 = and i32 %4595, 8
  %4758 = add i32 %4551, 0
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4758, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4759, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = bitcast float %4577 to i32
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = lshr i32 %4766, 8
  %4770 = and i32 %4769, 255
  %4771 = uitofp i32 %4770 to float
  %4772 = fmul fast float %4765, %4768
  %4773 = fadd fast float %4772, %4771
  %4774 = fmul fast float %4773, 0x3F70101000000000
  %4775 = add i32 %4552, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = extractvalue %dx.types.ResRet.f32 %4777, 3
  %4782 = bitcast float %4571 to i32
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4782, 8
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = lshr i32 %4782, 16
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fmul fast float %4778, %4784
  %4793 = fadd fast float %4792, %4787
  %4794 = fmul fast float %4793, 0x3F70101000000000
  %4795 = fadd fast float %4779, -5.000000e-01
  %4796 = fadd fast float %4781, -5.000000e-01
  %4797 = fmul fast float %4795, %4791
  %4798 = fmul fast float %4796, %4791
  %4799 = fadd fast float %4797, 5.000000e-01
  %4800 = fadd fast float %4798, 5.000000e-01
  %4801 = fmul fast float %4762, %4580
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4764, %4582
  %4804 = fmul fast float %4799, 2.000000e+00
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = fmul fast float %4800, 2.000000e+00
  %4807 = fadd fast float %4806, -1.000000e+00
  %4808 = fadd fast float %4805, %4807
  %4809 = fmul fast float %4808, 5.000000e-01
  %4810 = fsub fast float %4805, %4807
  %4811 = fmul fast float %4810, 5.000000e-01
  %4812 = call float @dx.op.unary.f32(i32 6, float %4809)  ; FAbs(value)
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = call float @dx.op.unary.f32(i32 6, float %4811)  ; FAbs(value)
  %4815 = fsub fast float %4813, %4814
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4811, float %4815, float %4809, float %4811, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4809, %4817
  %4819 = fmul fast float %4811, %4817
  %4820 = fmul fast float %4817, %4815
  %4821 = fmul fast float %4820, %4545
  %4822 = fmul fast float %4820, %4546
  %4823 = fmul fast float %4820, %4547
  %4824 = fmul fast float %4818, %4568
  %4825 = fmul fast float %4818, %4569
  %4826 = fmul fast float %4818, %4570
  %4827 = fadd fast float %4824, %4821
  %4828 = fadd fast float %4825, %4822
  %4829 = fadd fast float %4826, %4823
  %4830 = fmul fast float %4819, %4574
  %4831 = fmul fast float %4819, %4575
  %4832 = fmul fast float %4819, %4576
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = fadd fast float %4829, %4832
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4833, float %4834, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 25, float %4836)  ; Rsqrt(value)
  %4838 = fmul fast float %4833, %4837
  %4839 = fmul fast float %4834, %4837
  %4840 = fmul fast float %4835, %4837
  %4841 = icmp ne i32 %4757, 0
  %4842 = select i1 %4841, float 1.000000e+00, float 0.000000e+00
  %4843 = fmul fast float %4747, %4842
  %4844 = and i32 %4595, 1
  %4845 = icmp eq i32 %4844, 0
  br i1 %4845, label %4846, label %4850

; <label>:4846                                    ; preds = %4755
  %4847 = fsub fast float %4838, %4528
  %4848 = fsub fast float %4839, %4529
  %4849 = fsub fast float %4840, %4530
  br label %4850

; <label>:4850                                    ; preds = %4846, %4755
  %4851 = phi float [ %4847, %4846 ], [ %4838, %4755 ]
  %4852 = phi float [ %4848, %4846 ], [ %4839, %4755 ]
  %4853 = phi float [ %4849, %4846 ], [ %4840, %4755 ]
  %4854 = fmul float %4853, %4843
  %4855 = fmul float %4852, %4843
  %4856 = fmul float %4851, %4843
  %4857 = fadd fast float %4856, %4528
  %4858 = fadd fast float %4855, %4529
  %4859 = fadd fast float %4854, %4530
  %4860 = icmp ne i32 %4756, 0
  %4861 = select i1 %4860, float 1.000000e+00, float 0.000000e+00
  %4862 = fmul fast float %4747, %4861
  %4863 = fsub fast float %4801, %4535
  %4864 = fsub fast float %4802, %4536
  %4865 = fsub fast float %4803, %4537
  %4866 = fmul fast float %4863, %4862
  %4867 = fmul fast float %4864, %4862
  %4868 = fmul fast float %4865, %4862
  %4869 = fadd fast float %4866, %4535
  %4870 = fadd fast float %4867, %4536
  %4871 = fadd fast float %4868, %4537
  %4872 = fsub fast float %4774, %4534
  %4873 = fmul fast float %4872, %4862
  %4874 = fadd fast float %4873, %4534
  %4875 = fmul fast float %4862, %4521
  %4876 = fsub fast float %4521, %4875
  %4877 = fmul fast float %4862, %4520
  %4878 = fsub fast float %4520, %4877
  %4879 = bitcast float %4589 to i32
  %4880 = lshr i32 %4879, 16
  %4881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4880)  ; LegacyF16ToF32(value)
  %4882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4883 = extractvalue %dx.types.ResRet.i32 %4882, 0
  %4884 = and i32 %4883, 1
  %4885 = icmp eq i32 %4884, 0
  br i1 %4885, label %4886, label %4911

; <label>:4886                                    ; preds = %4850
  %4887 = fadd fast float %4774, 0xBFB99999A0000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 0x3FF1C71C80000000
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, %4801
  %4893 = fmul fast float %4891, %4802
  %4894 = fmul fast float %4891, %4803
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float %4897)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4895, float %4898)  ; FMax(a,b)
  %4900 = fcmp fast ogt float %4899, 0.000000e+00
  %4901 = bitcast float %4899 to i32
  %4902 = sub nsw i32 2129859010, %4901
  %4903 = bitcast i32 %4902 to float
  %4904 = select i1 %4900, float %4903, float 0.000000e+00
  %4905 = fmul fast float %4895, %4881
  %4906 = fmul fast float %4896, %4881
  %4907 = fmul fast float %4897, %4881
  %4908 = fmul fast float %4905, %4904
  %4909 = fmul fast float %4906, %4904
  %4910 = fmul fast float %4907, %4904
  br label %4911

; <label>:4911                                    ; preds = %4886, %4850
  %4912 = phi float [ %4881, %4850 ], [ %4908, %4886 ]
  %4913 = phi float [ %4881, %4850 ], [ %4909, %4886 ]
  %4914 = phi float [ %4881, %4850 ], [ %4910, %4886 ]
  %4915 = fsub fast float %4912, %4522
  %4916 = fsub fast float %4913, %4523
  %4917 = fsub fast float %4914, %4524
  %4918 = fmul fast float %4915, %4862
  %4919 = fmul fast float %4916, %4862
  %4920 = fmul fast float %4917, %4862
  %4921 = fadd fast float %4918, %4522
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4920, %4524
  %4924 = fadd fast float %4747, %4533
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fsub fast float %4794, %4532
  %4927 = fmul fast float %4926, %4843
  %4928 = fadd fast float %4927, %4532
  %4929 = fsub fast float %4780, %4531
  %4930 = fmul fast float %4929, %4843
  %4931 = fadd fast float %4930, %4531
  br i1 %4845, label %4940, label %4932

; <label>:4932                                    ; preds = %4911
  %4933 = and i32 %4595, 32768
  %4934 = icmp eq i32 %4933, 0
  br i1 %4934, label %4950, label %4935

; <label>:4935                                    ; preds = %4932
  %4936 = fmul fast float %4843, 1.270000e+02
  %4937 = fadd fast float %4936, %4517
  %4938 = fadd fast float %4936, %4518
  %4939 = fadd fast float %4936, %4519
  br label %4950

; <label>:4940                                    ; preds = %4911
  %4941 = fsub fast float 1.270000e+02, %4517
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fsub fast float 1.270000e+02, %4519
  %4944 = fmul fast float %4843, %4941
  %4945 = fmul fast float %4843, %4942
  %4946 = fmul fast float %4843, %4943
  %4947 = fadd fast float %4944, %4517
  %4948 = fadd fast float %4945, %4518
  %4949 = fadd fast float %4946, %4519
  br label %4950

; <label>:4950                                    ; preds = %4940, %4935, %4932
  %4951 = phi float [ %4937, %4935 ], [ %4517, %4932 ], [ %4947, %4940 ]
  %4952 = phi float [ %4938, %4935 ], [ %4518, %4932 ], [ %4948, %4940 ]
  %4953 = phi float [ %4939, %4935 ], [ %4519, %4932 ], [ %4949, %4940 ]
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4958 = fmul fast float %4957, %4954
  %4959 = fadd fast float %4958, %4956
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = bitcast float %4583 to i32
  %4962 = and i32 %4961, 65535
  %4963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4962)  ; LegacyF16ToF32(value)
  %4964 = lshr i32 %4961, 16
  %4965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4964)  ; LegacyF16ToF32(value)
  %4966 = fcmp fast oge float %4963, 0.000000e+00
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = select i1 %4966, float %4963, float %4968
  %4970 = fadd fast float %4969, %4965
  %4971 = fsub fast float %4960, %4516
  %4972 = fmul fast float %4971, %4747
  %4973 = fadd fast float %4972, %4516
  %4974 = fmul fast float %4970, %4747
  %4975 = call float @dx.op.binary.f32(i32 35, float %4515, float %4974)  ; FMax(a,b)
  %4976 = and i32 %4595, 16
  %4977 = icmp eq i32 %4976, 0
  br i1 %4977, label %4999, label %4978

; <label>:4978                                    ; preds = %4950
  %4979 = add i32 %4586, 0
  %4980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4980, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.ResRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.ResRet.f32 %4981, 2
  %4985 = and i32 %4879, 65535
  %4986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4985)  ; LegacyF16ToF32(value)
  %4987 = fmul fast float %4982, %4580
  %4988 = fmul fast float %4983, %4581
  %4989 = fmul fast float %4984, %4582
  %4990 = and i32 %4595, 16384
  %4991 = icmp ne i32 %4990, 0
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = select i1 %4991, float %4993, float 1.000000e+00
  %4995 = fmul fast float %4994, %4986
  %4996 = fmul fast float %4987, %4995
  %4997 = fmul fast float %4988, %4995
  %4998 = fmul fast float %4989, %4995
  br label %4999

; <label>:4999                                    ; preds = %4978, %4950
  %5000 = phi float [ %4996, %4978 ], [ 0.000000e+00, %4950 ]
  %5001 = phi float [ %4997, %4978 ], [ 0.000000e+00, %4950 ]
  %5002 = phi float [ %4998, %4978 ], [ 0.000000e+00, %4950 ]
  %5003 = fsub fast float %5000, %4525
  %5004 = fsub fast float %5001, %4526
  %5005 = fsub fast float %5002, %4527
  %5006 = fmul fast float %5003, %4747
  %5007 = fmul fast float %5004, %4747
  %5008 = fmul fast float %5005, %4747
  %5009 = fadd fast float %5006, %4525
  %5010 = fadd fast float %5007, %4526
  %5011 = fadd fast float %5008, %4527
  br label %4644

; <label>:5012                                    ; preds = %4644
  br label %5013

; <label>:5013                                    ; preds = %5012, %4458
  %5014 = phi float [ 0.000000e+00, %4458 ], [ %4645, %5012 ]
  %5015 = phi float [ %4427, %4458 ], [ %4646, %5012 ]
  %5016 = phi float [ %4425, %4458 ], [ %4647, %5012 ]
  %5017 = phi float [ %4418, %4458 ], [ %4648, %5012 ]
  %5018 = phi float [ %4419, %4458 ], [ %4649, %5012 ]
  %5019 = phi float [ %4420, %4458 ], [ %4650, %5012 ]
  %5020 = phi float [ 0.000000e+00, %4458 ], [ %4651, %5012 ]
  %5021 = phi float [ 0.000000e+00, %4458 ], [ %4652, %5012 ]
  %5022 = phi float [ %4415, %4458 ], [ %4653, %5012 ]
  %5023 = phi float [ %4416, %4458 ], [ %4654, %5012 ]
  %5024 = phi float [ %4417, %4458 ], [ %4655, %5012 ]
  %5025 = phi float [ %4412, %4458 ], [ %4656, %5012 ]
  %5026 = phi float [ %4413, %4458 ], [ %4657, %5012 ]
  %5027 = phi float [ %4414, %4458 ], [ %4658, %5012 ]
  %5028 = phi float [ %4453, %4458 ], [ %4659, %5012 ]
  %5029 = phi float [ %4454, %4458 ], [ %4660, %5012 ]
  %5030 = phi float [ %4455, %4458 ], [ %4661, %5012 ]
  %5031 = phi float [ %4423, %4458 ], [ %4662, %5012 ]
  %5032 = phi float [ %4422, %4458 ], [ %4663, %5012 ]
  %5033 = phi float [ 0.000000e+00, %4458 ], [ %4664, %5012 ]
  %5034 = phi float [ %4421, %4458 ], [ %4665, %5012 ]
  %5035 = phi float [ %4409, %4458 ], [ %4666, %5012 ]
  %5036 = phi float [ %4410, %4458 ], [ %4667, %5012 ]
  %5037 = phi float [ %4411, %4458 ], [ %4668, %5012 ]
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5039, %5028
  %5041 = fmul fast float %5039, %5029
  %5042 = fmul fast float %5039, %5030
  %5043 = fadd fast float %5033, %1250
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5040
  %5048 = fmul fast float %5046, %5041
  %5049 = fmul fast float %5046, %5042
  br label %5050

; <label>:5050                                    ; preds = %5013, %4406
  %5051 = phi float [ %5047, %5013 ], [ %4453, %4406 ]
  %5052 = phi float [ %5048, %5013 ], [ %4454, %4406 ]
  %5053 = phi float [ %5049, %5013 ], [ %4455, %4406 ]
  %5054 = phi float [ %5025, %5013 ], [ %4412, %4406 ]
  %5055 = phi float [ %5026, %5013 ], [ %4413, %4406 ]
  %5056 = phi float [ %5027, %5013 ], [ %4414, %4406 ]
  %5057 = phi float [ %5035, %5013 ], [ %4409, %4406 ]
  %5058 = phi float [ %5036, %5013 ], [ %4410, %4406 ]
  %5059 = phi float [ %5037, %5013 ], [ %4411, %4406 ]
  %5060 = phi float [ %5022, %5013 ], [ %4415, %4406 ]
  %5061 = phi float [ %5023, %5013 ], [ %4416, %4406 ]
  %5062 = phi float [ %5024, %5013 ], [ %4417, %4406 ]
  %5063 = phi float [ %5017, %5013 ], [ %4418, %4406 ]
  %5064 = phi float [ %5018, %5013 ], [ %4419, %4406 ]
  %5065 = phi float [ %5019, %5013 ], [ %4420, %4406 ]
  %5066 = phi float [ %5034, %5013 ], [ %4421, %4406 ]
  %5067 = phi float [ %5044, %5013 ], [ %1250, %4406 ]
  %5068 = phi float [ %5032, %5013 ], [ %4422, %4406 ]
  %5069 = phi float [ %5031, %5013 ], [ %4423, %4406 ]
  %5070 = phi float [ %5021, %5013 ], [ 0.000000e+00, %4406 ]
  %5071 = phi float [ %5020, %5013 ], [ 0.000000e+00, %4406 ]
  %5072 = phi float [ %5014, %5013 ], [ 0.000000e+00, %4406 ]
  %5073 = phi float [ %5015, %5013 ], [ %4427, %4406 ]
  %5074 = phi float [ %5016, %5013 ], [ %4425, %4406 ]
  %5075 = fadd fast float %5066, 0xBFB99999A0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 0x3FF1C71C80000000
  %5078 = call float @dx.op.binary.f32(i32 36, float %5066, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5057
  %5082 = fmul fast float %5080, %5058
  %5083 = fmul fast float %5080, %5059
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5077, %5057
  %5088 = fmul fast float %5077, %5058
  %5089 = fmul fast float %5077, %5059
  %5090 = fadd fast float %5087, %5078
  %5091 = fadd fast float %5088, %5078
  %5092 = fadd fast float %5089, %5078
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 1
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5115, label %5101

; <label>:5101                                    ; preds = %5050
  %5102 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5084, float %5102)  ; FMax(a,b)
  %5104 = fcmp fast ogt float %5103, 0.000000e+00
  %5105 = bitcast float %5103 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = select i1 %5104, float %5107, float 0.000000e+00
  %5109 = fmul fast float %5084, %5060
  %5110 = fmul fast float %5085, %5061
  %5111 = fmul fast float %5086, %5062
  %5112 = fmul fast float %5109, %5108
  %5113 = fmul fast float %5110, %5108
  %5114 = fmul fast float %5111, %5108
  br label %5115

; <label>:5115                                    ; preds = %5101, %5050
  %5116 = phi float [ %5112, %5101 ], [ %5060, %5050 ]
  %5117 = phi float [ %5113, %5101 ], [ %5061, %5050 ]
  %5118 = phi float [ %5114, %5101 ], [ %5062, %5050 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5063, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5064, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5065, float 1.270000e+02)  ; FMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = and i32 %5123, 8
  %5125 = icmp ne i32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5057)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5057)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5086, float %5057)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %220, float %5057, float %5084
  %5131 = select i1 %220, float %5129, float %5085
  %5132 = select i1 %220, float 1.000000e+00, float %5086
  %5133 = select i1 %5125, float %5126, float %5130
  %5134 = select i1 %5125, float %5127, float %5131
  %5135 = select i1 %5125, float %5128, float %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %220, float %5136, float %5116
  %5138 = select i1 %220, float %5136, float %5117
  %5139 = select i1 %220, float %5136, float %5118
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = fadd fast float %5141, %158
  %5145 = fadd fast float %5142, %159
  %5146 = fadd fast float %5143, %160
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5150 = fsub fast float %5144, %5148
  %5151 = fsub fast float %5145, %5149
  %5152 = fmul fast float %5150, %5150
  %5153 = fmul fast float %5151, %5151
  %5154 = fadd fast float %5152, %5153
  %5155 = call float @dx.op.unary.f32(i32 24, float %5154)  ; Sqrt(value)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5157 = fcmp fast olt float %5155, %5156
  br i1 %5157, label %5158, label %5225

; <label>:5158                                    ; preds = %5115
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5170 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5171 = fadd fast float %5168, %5144
  %5172 = fadd fast float %5169, %5145
  %5173 = fadd fast float %5170, %5146
  %5174 = fmul fast float %5171, %5160
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5162, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = fmul fast float %5171, %5165
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5167, float %5178)  ; FMad(a,b,c)
  %5180 = fsub fast float %5176, %5168
  %5181 = fsub fast float %5179, %5169
  %5182 = fsub fast float %5180, %5148
  %5183 = fadd fast float %5182, %5156
  %5184 = fsub fast float %5181, %5149
  %5185 = fadd fast float %5184, %5156
  %5186 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5187 = fmul fast float %5183, %5186
  %5188 = fmul fast float %5185, %5186
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = fsub fast float 1.000000e+00, %5190
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ugt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5499

; <label>:5196                                    ; preds = %5158
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5199 = fmul fast float %5198, %5194
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5201 = fadd fast float %5200, %5199
  %5202 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5203 = fadd fast float %5201, %5170
  %5204 = fmul fast float %5176, %5164
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5167, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5203, float %5202, float %5205)  ; FMad(a,b,c)
  %5207 = fsub fast float %5206, %5170
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5210 = fsub fast float %5207, %5209
  %5211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %50, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = fadd fast float %5216, %5212
  %5220 = fmul fast float %5219, 0x3F847AE140000000
  %5221 = fadd fast float %5217, %5213
  %5222 = fmul fast float %5221, 0x3F847AE140000000
  %5223 = fadd fast float %5218, %5214
  %5224 = fmul fast float %5223, 0x3F847AE140000000
  br label %5499

; <label>:5225                                    ; preds = %5115
  %5226 = and i32 %196, 1
  %5227 = icmp eq i32 %5226, 0
  br i1 %5227, label %5499, label %5228

; <label>:5228                                    ; preds = %5225
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5240 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5241 = fadd fast float %5238, %5144
  %5242 = fadd fast float %5239, %5145
  %5243 = fadd fast float %5240, %5146
  %5244 = fmul fast float %5241, %5230
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5232, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5234, float %5245)  ; FMad(a,b,c)
  %5247 = fmul fast float %5241, %5235
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5237, float %5248)  ; FMad(a,b,c)
  %5250 = fsub fast float %5246, %5238
  %5251 = fsub fast float %5249, %5239
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.i32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.i32 %5259, 1
  %5262 = udiv i32 %5261, %5260
  %5263 = fsub fast float %5250, %5253
  %5264 = fsub fast float %5251, %5254
  %5265 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 35, float %5264, float 0.000000e+00)  ; FMax(a,b)
  %5267 = call float @dx.op.binary.f32(i32 36, float %5265, float %5255)  ; FMin(a,b)
  %5268 = call float @dx.op.binary.f32(i32 36, float %5266, float %5256)  ; FMin(a,b)
  %5269 = add i32 %5260, -1
  %5270 = add i32 %5262, -1
  %5271 = fmul fast float %5267, %5258
  %5272 = fmul fast float %5268, %5258
  %5273 = fptoui float %5271 to i32
  %5274 = fptoui float %5272 to i32
  %5275 = call i32 @dx.op.binary.i32(i32 40, i32 %5273, i32 %5269)  ; UMin(a,b)
  %5276 = call i32 @dx.op.binary.i32(i32 40, i32 %5274, i32 %5270)  ; UMin(a,b)
  %5277 = mul i32 %5276, %5260
  %5278 = add i32 %5277, %5275
  %5279 = shl i32 %5278, 2
  %5280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.i32 %5280, 0
  %5282 = icmp eq i32 %5281, -1
  br i1 %5282, label %5499, label %5283

; <label>:5283                                    ; preds = %5228
  %5284 = mul i32 %5281, 148
  %5285 = add i32 %5284, 4
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = add i32 %5284, 8
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = add i32 %5284, 36
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = add i32 %5284, 60
  %5295 = add i32 %5284, 92
  %5296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5295, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.i32 %5296, 0
  %5298 = add i32 %5284, 116
  %5299 = fsub fast float %5250, %5287
  %5300 = fsub fast float %5251, %5290
  %5301 = fmul fast float %5258, %5299
  %5302 = fmul fast float %5258, %5300
  %5303 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5308 = call float @dx.op.unary.f32(i32 83, float %5303)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 83, float %5305)  ; DerivCoarseX(value)
  %5310 = call float @dx.op.unary.f32(i32 84, float %5303)  ; DerivCoarseY(value)
  %5311 = call float @dx.op.unary.f32(i32 84, float %5305)  ; DerivCoarseY(value)
  %5312 = fmul fast float %5308, %5307
  %5313 = fmul fast float %5309, %5307
  %5314 = fmul fast float %5310, %5307
  %5315 = fmul fast float %5311, %5307
  %5316 = call float @dx.op.dot2.f32(i32 54, float %5314, float %5315, float %5314, float %5315)  ; Dot2(ax,ay,bx,by)
  %5317 = call float @dx.op.dot2.f32(i32 54, float %5312, float %5313, float %5312, float %5313)  ; Dot2(ax,ay,bx,by)
  %5318 = call float @dx.op.binary.f32(i32 35, float %5317, float %5316)  ; FMax(a,b)
  %5319 = call float @dx.op.unary.f32(i32 23, float %5318)  ; Log(value)
  %5320 = fmul fast float %5319, 5.000000e-01
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5323 = fadd fast float %5322, %5320
  %5324 = call float @dx.op.binary.f32(i32 35, float %5323, float 0.000000e+00)  ; FMax(a,b)
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5327 = fadd fast float %5326, %5324
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5330 = fadd fast float %5327, %5329
  %5331 = add i32 %5297, 0
  %5332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5332, i32 0)  ; GetDimensions(handle,mipLevel)
  %5334 = extractvalue %dx.types.Dimensions %5333, 0
  %5335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5334)  ; FirstbitLo(value)
  %5336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.i32 %5336, 1
  %5338 = sub nsw i32 %5337, %5335
  %5339 = sitofp i32 %5338 to float
  %5340 = fsub fast float %5330, %5339
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5332, %dx.types.Handle %48, float %5303, float %5305, float %5293, float undef, i32 0, i32 0, i32 undef, float %5341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = fcmp ule float %5343, 0x3FE0101020000000
  %5345 = extractvalue %dx.types.CBufRet.i32 %5336, 0
  %5346 = and i32 %5345, 128
  %5347 = icmp ne i32 %5346, 0
  %5348 = and i1 %5344, %5347
  br i1 %5348, label %5499, label %5349

; <label>:5349                                    ; preds = %5283
  %5350 = add i32 %5284, 20
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5284, 24
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = add i32 %5284, 40
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = add i32 %5284, 96
  %5360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.i32 %5360, 0
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 2
  %5364 = fmul fast float %5363, %5303
  %5365 = fmul fast float %5363, %5305
  %5366 = extractvalue %dx.types.CBufRet.f32 %5362, 3
  %5367 = fadd fast float %5364, %5366
  %5368 = fadd fast float %5365, %5366
  %5369 = add i32 %5361, 0
  %5370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5370, i32 0)  ; GetDimensions(handle,mipLevel)
  %5372 = extractvalue %dx.types.Dimensions %5371, 0
  %5373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5372)  ; FirstbitLo(value)
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 1
  %5376 = sub nsw i32 %5375, %5373
  %5377 = sitofp i32 %5376 to float
  %5378 = fsub fast float %5327, %5377
  %5379 = call float @dx.op.binary.f32(i32 35, float %5378, float 0.000000e+00)  ; FMax(a,b)
  %5380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5370, %dx.types.Handle %48, float %5367, float %5368, float %5358, float undef, i32 0, i32 0, i32 undef, float %5379)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = fmul fast float %5381, %5352
  %5383 = fadd fast float %5382, %5355
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5392 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5393 = fadd fast float %5389, %5250
  %5394 = fadd fast float %5391, %5251
  %5395 = fadd fast float %5383, %5392
  %5396 = fmul fast float %5393, %5385
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5386, float %5396)  ; FMad(a,b,c)
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5387, float %5397)  ; FMad(a,b,c)
  %5399 = fsub fast float %5398, %5392
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5402 = fsub fast float %5399, %5401
  %5403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.i32 %5403, 0
  %5405 = call i32 @dx.op.binary.i32(i32 40, i32 %5281, i32 %5404)  ; UMin(a,b)
  %5406 = mul i32 %5405, 36
  %5407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.i32 %5407, 0
  %5409 = add i32 %5406, 4
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = fmul fast float %5411, %5303
  %5413 = fmul fast float %5411, %5305
  %5414 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5415 = fadd fast float %5412, %5414
  %5416 = fadd fast float %5413, %5414
  %5417 = icmp eq i32 %5408, 0
  br i1 %5417, label %5486, label %5418

; <label>:5418                                    ; preds = %5349
  br label %5419

; <label>:5419                                    ; preds = %5476, %5418
  %5420 = phi float [ %5477, %5476 ], [ 0.000000e+00, %5418 ]
  %5421 = phi float [ %5478, %5476 ], [ 0.000000e+00, %5418 ]
  %5422 = phi float [ %5479, %5476 ], [ 0.000000e+00, %5418 ]
  %5423 = phi float [ %5480, %5476 ], [ 0.000000e+00, %5418 ]
  %5424 = phi float [ %5481, %5476 ], [ 0.000000e+00, %5418 ]
  %5425 = phi float [ %5482, %5476 ], [ 0.000000e+00, %5418 ]
  %5426 = phi i32 [ %5483, %5476 ], [ 0, %5418 ]
  %5427 = shl i32 %5426, 2
  %5428 = add i32 %5294, %5427
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = add i32 %5298, %5427
  %5432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.i32 %5432, 0
  %5434 = add i32 %5433, 0
  %5435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5434, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5436 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5435, i32 0)  ; GetDimensions(handle,mipLevel)
  %5437 = extractvalue %dx.types.Dimensions %5436, 0
  %5438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5437)  ; FirstbitLo(value)
  %5439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.i32 %5439, 1
  %5441 = sub nsw i32 %5440, %5438
  %5442 = sitofp i32 %5441 to float
  %5443 = fsub fast float %5327, %5442
  %5444 = call float @dx.op.binary.f32(i32 35, float %5443, float 0.000000e+00)  ; FMax(a,b)
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5435, %dx.types.Handle %48, float %5415, float %5416, float %5430, float undef, i32 0, i32 0, i32 undef, float %5444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = fcmp fast ogt float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5476

; <label>:5448                                    ; preds = %5419
  %5449 = add i32 %5409, %5427
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = and i32 %5451, 32767
  %5453 = mul nuw nsw i32 %5452, 928
  %5454 = add nuw nsw i32 %5453, 48
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = add nuw nsw i32 %5453, 60
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = fmul fast float %5456, %5446
  %5465 = fmul fast float %5457, %5446
  %5466 = fmul fast float %5458, %5446
  %5467 = fadd fast float %5464, %5420
  %5468 = fadd fast float %5465, %5421
  %5469 = fadd fast float %5466, %5422
  %5470 = fmul fast float %5461, %5446
  %5471 = fmul fast float %5462, %5446
  %5472 = fmul fast float %5463, %5446
  %5473 = fadd fast float %5470, %5423
  %5474 = fadd fast float %5471, %5424
  %5475 = fadd fast float %5472, %5425
  br label %5476

; <label>:5476                                    ; preds = %5448, %5419
  %5477 = phi float [ %5467, %5448 ], [ %5420, %5419 ]
  %5478 = phi float [ %5468, %5448 ], [ %5421, %5419 ]
  %5479 = phi float [ %5469, %5448 ], [ %5422, %5419 ]
  %5480 = phi float [ %5473, %5448 ], [ %5423, %5419 ]
  %5481 = phi float [ %5474, %5448 ], [ %5424, %5419 ]
  %5482 = phi float [ %5475, %5448 ], [ %5425, %5419 ]
  %5483 = add nuw i32 %5426, 1
  %5484 = icmp eq i32 %5483, %5408
  br i1 %5484, label %5485, label %5419

; <label>:5485                                    ; preds = %5476
  br label %5486

; <label>:5486                                    ; preds = %5485, %5349
  %5487 = phi float [ 0.000000e+00, %5349 ], [ %5477, %5485 ]
  %5488 = phi float [ 0.000000e+00, %5349 ], [ %5478, %5485 ]
  %5489 = phi float [ 0.000000e+00, %5349 ], [ %5479, %5485 ]
  %5490 = phi float [ 0.000000e+00, %5349 ], [ %5480, %5485 ]
  %5491 = phi float [ 0.000000e+00, %5349 ], [ %5481, %5485 ]
  %5492 = phi float [ 0.000000e+00, %5349 ], [ %5482, %5485 ]
  %5493 = fadd fast float %5490, %5487
  %5494 = fmul fast float %5493, 0x3F847AE140000000
  %5495 = fadd fast float %5491, %5488
  %5496 = fmul fast float %5495, 0x3F847AE140000000
  %5497 = fadd fast float %5492, %5489
  %5498 = fmul fast float %5497, 0x3F847AE140000000
  br label %5499

; <label>:5499                                    ; preds = %5486, %5283, %5228, %5225, %5196, %5158
  %5500 = phi float [ %5210, %5196 ], [ -1.310720e+05, %5158 ], [ %5402, %5486 ], [ -1.310720e+05, %5228 ], [ -1.310720e+05, %5283 ], [ -1.310720e+05, %5225 ]
  %5501 = phi float [ %5220, %5196 ], [ 0.000000e+00, %5158 ], [ %5494, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5502 = phi float [ %5222, %5196 ], [ 0.000000e+00, %5158 ], [ %5496, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5503 = phi float [ %5224, %5196 ], [ 0.000000e+00, %5158 ], [ %5498, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5504 = phi i1 [ true, %5196 ], [ false, %5158 ], [ true, %5486 ], [ false, %5228 ], [ false, %5283 ], [ false, %5225 ]
  %5505 = and i32 %196, 3
  %5506 = icmp eq i32 %5505, 1
  %5507 = select i1 %5506, float 1.000000e+00, float 0.000000e+00
  %5508 = fsub fast float %5500, %160
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = select i1 %5504, float %5509, float 1.000000e+00
  %5511 = fmul fast float %5510, %5507
  %5512 = icmp eq i32 %5505, 3
  %5513 = select i1 %5512, float 1.000000e+00, float %5511
  %5514 = call float @dx.op.binary.f32(i32 35, float %5072, float %5513)  ; FMax(a,b)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fcmp fast une float %5515, 0.000000e+00
  %5517 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 25, float %5517)  ; Rsqrt(value)
  br i1 %5516, label %5526, label %5519

; <label>:5519                                    ; preds = %5499
  %5520 = fmul fast float %5518, %158
  %5521 = fmul fast float %5518, %159
  %5522 = fmul fast float %5518, %160
  %5523 = fsub fast float -0.000000e+00, %5520
  %5524 = fsub fast float -0.000000e+00, %5521
  %5525 = fsub fast float -0.000000e+00, %5522
  br label %5694

; <label>:5526                                    ; preds = %5499
  %5527 = fmul fast float %158, %5518
  %5528 = fsub fast float -0.000000e+00, %5527
  %5529 = fmul fast float %159, %5518
  %5530 = fsub fast float -0.000000e+00, %5529
  %5531 = fmul fast float %160, %5518
  %5532 = fsub fast float -0.000000e+00, %5531
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5530, float %5532, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fmul fast float %5515, 2.500000e+00
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fmul fast float %5515, 0x4013FFFFE0000000
  %5537 = fadd fast float %5536, 0xBFFFFFFFE0000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5515, 0x4004000020000000
  %5540 = fadd fast float %5539, 0xBFF8000040000000
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5543 = fmul fast float %5075, 1.000000e+01
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5544, 2.000000e+00
  %5546 = fsub fast float 3.000000e+00, %5545
  %5547 = fmul fast float %5544, %5544
  %5548 = fmul fast float %5547, %5546
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = fsub fast float 0x3FE3333340000000, %5096
  %5551 = fmul fast float %5550, 0x400AAAAAA0000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5549, %5552
  %5554 = fmul fast float %5133, 0x3FEA2B8620000000
  %5555 = fmul fast float %5134, 0x3FEA2B8620000000
  %5556 = fmul fast float %5135, 0x3FEA2B8620000000
  %5557 = fadd fast float %5554, 0x3FC81DFBA0000000
  %5558 = fmul fast float %5557, %5133
  %5559 = fadd fast float %5558, 0x3F910E6020000000
  %5560 = fadd fast float %5555, 0x3FC81DFBA0000000
  %5561 = fmul fast float %5560, %5134
  %5562 = fadd fast float %5561, 0x3F910E6020000000
  %5563 = fadd fast float %5556, 0x3FC81DFBA0000000
  %5564 = fmul fast float %5563, %5135
  %5565 = fadd fast float %5564, 0x3F910E6020000000
  %5566 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5567 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5568 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5569 = fsub fast float %5566, %5133
  %5570 = fsub fast float %5567, %5134
  %5571 = fsub fast float %5568, %5135
  %5572 = fmul fast float %5569, %5542
  %5573 = fmul fast float %5572, %5553
  %5574 = fmul fast float %5570, %5542
  %5575 = fmul fast float %5574, %5553
  %5576 = fmul fast float %5571, %5542
  %5577 = fmul fast float %5576, %5553
  %5578 = fadd fast float %5573, %5133
  %5579 = fadd fast float %5575, %5134
  %5580 = fadd fast float %5577, %5135
  %5581 = fmul fast float %5069, %5069
  %5582 = fmul fast float %5581, %5581
  %5583 = fadd fast float %5538, 1.000000e+00
  %5584 = fsub fast float %5583, %5553
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fsub fast float 1.000000e+00, %5582
  %5589 = call float @dx.op.binary.f32(i32 36, float %5585, float %5588)  ; FMin(a,b)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5589, float %5590)  ; FMax(a,b)
  %5592 = fadd fast float %5587, 0xBFE4CCCCC0000000
  %5593 = fmul fast float %5592, 0x4006DB6DA0000000
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fmul fast float %5594, 2.000000e+00
  %5596 = fsub fast float 3.000000e+00, %5595
  %5597 = bitcast float %5093 to i32
  %5598 = ashr i32 %5597, 1
  %5599 = add nsw i32 %5598, 532487669
  %5600 = bitcast i32 %5599 to float
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = bitcast float %5601 to i32
  %5603 = sub nsw i32 2129859010, %5602
  %5604 = bitcast i32 %5603 to float
  %5605 = fmul fast float %5604, 2.000000e+00
  %5606 = bitcast float %5094 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = bitcast float %5095 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = fsub fast float 0x4002A9FBE0000000, %5605
  %5625 = fadd fast float %5605, 0x3FD54FDF00000000
  %5626 = bitcast float %5625 to i32
  %5627 = sub nsw i32 2129859010, %5626
  %5628 = bitcast i32 %5627 to float
  %5629 = fmul fast float %5628, %5624
  %5630 = fmul fast float %5629, %5629
  %5631 = fsub fast float 0x4002A9FBE0000000, %5614
  %5632 = fadd fast float %5614, 0x3FD54FDF00000000
  %5633 = bitcast float %5632 to i32
  %5634 = sub nsw i32 2129859010, %5633
  %5635 = bitcast i32 %5634 to float
  %5636 = fmul fast float %5635, %5631
  %5637 = fmul fast float %5636, %5636
  %5638 = fsub fast float 0x4002A9FBE0000000, %5623
  %5639 = fadd fast float %5623, 0x3FD54FDF00000000
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, %5643
  %5645 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5630)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5637)  ; FMax(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5644)  ; FMax(a,b)
  %5648 = fsub fast float 1.000000e+00, %5533
  %5649 = fadd fast float %5648, %5549
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fsub fast float 1.000000e+00, %5513
  %5652 = fmul fast float %5591, %5651
  %5653 = fmul fast float %5594, %5594
  %5654 = fmul fast float %5653, %5652
  %5655 = fmul fast float %5654, %5596
  %5656 = fmul fast float %5651, 0xBFE99999A0000000
  %5657 = fmul fast float %5656, %5542
  %5658 = fmul fast float %5657, %5553
  %5659 = fadd fast float %5658, 1.000000e+00
  %5660 = fadd fast float %5096, -1.000000e+00
  %5661 = fmul fast float %5659, %5660
  %5662 = fadd fast float %5661, 1.000000e+00
  %5663 = fsub fast float %5645, %5093
  %5664 = fsub fast float %5646, %5094
  %5665 = fsub fast float %5647, %5095
  %5666 = fmul fast float %5655, %5663
  %5667 = fmul fast float %5655, %5664
  %5668 = fmul fast float %5655, %5665
  %5669 = fadd fast float %5666, %5093
  %5670 = fadd fast float %5667, %5094
  %5671 = fadd fast float %5668, %5095
  %5672 = fsub fast float %110, %5051
  %5673 = fsub fast float %111, %5052
  %5674 = fsub fast float %112, %5053
  %5675 = fmul fast float %5655, %5672
  %5676 = fmul fast float %5655, %5673
  %5677 = fmul fast float %5655, %5674
  %5678 = fadd fast float %5675, %5051
  %5679 = fadd fast float %5676, %5052
  %5680 = fadd fast float %5677, %5053
  %5681 = fmul fast float %5655, %5650
  %5682 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = fmul fast float %5681, %5683
  %5685 = fadd fast float %5684, %5682
  %5686 = fsub fast float 1.000000e+00, %5069
  %5687 = fmul fast float %5655, %5686
  %5688 = fadd fast float %5687, %5069
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = call float @dx.op.unary.f32(i32 25, float %5689)  ; Rsqrt(value)
  %5691 = fmul fast float %5678, %5690
  %5692 = fmul fast float %5679, %5690
  %5693 = fmul fast float %5680, %5690
  br label %5694

; <label>:5694                                    ; preds = %5526, %5519
  %5695 = phi float [ %5525, %5519 ], [ %5532, %5526 ]
  %5696 = phi float [ %5524, %5519 ], [ %5530, %5526 ]
  %5697 = phi float [ %5523, %5519 ], [ %5528, %5526 ]
  %5698 = phi float [ %5522, %5519 ], [ %5531, %5526 ]
  %5699 = phi float [ %5521, %5519 ], [ %5529, %5526 ]
  %5700 = phi float [ %5520, %5519 ], [ %5527, %5526 ]
  %5701 = phi float [ %5133, %5519 ], [ %5578, %5526 ]
  %5702 = phi float [ %5134, %5519 ], [ %5579, %5526 ]
  %5703 = phi float [ %5135, %5519 ], [ %5580, %5526 ]
  %5704 = phi float [ %5051, %5519 ], [ %5691, %5526 ]
  %5705 = phi float [ %5052, %5519 ], [ %5692, %5526 ]
  %5706 = phi float [ %5053, %5519 ], [ %5693, %5526 ]
  %5707 = phi float [ %5093, %5519 ], [ %5669, %5526 ]
  %5708 = phi float [ %5094, %5519 ], [ %5670, %5526 ]
  %5709 = phi float [ %5095, %5519 ], [ %5671, %5526 ]
  %5710 = phi float [ %5096, %5519 ], [ %5685, %5526 ]
  %5711 = phi float [ %5069, %5519 ], [ %5688, %5526 ]
  %5712 = fsub fast float -0.000000e+00, %160
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 2
  %5715 = extractvalue %dx.types.CBufRet.f32 %5713, 3
  %5716 = fmul fast float %128, %5714
  %5717 = fmul fast float %130, %5715
  %5718 = fsub fast float 1.000000e+00, %5716
  %5719 = fsub fast float 1.000000e+00, %5717
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5723 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5724 = fmul fast float %5718, %5721
  %5725 = fmul fast float %5718, %5722
  %5726 = fmul fast float %5718, %5723
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5730 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5731 = fmul fast float %5719, %5728
  %5732 = fmul fast float %5719, %5729
  %5733 = fmul fast float %5719, %5730
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5738 = fadd fast float %5731, %5735
  %5739 = fadd fast float %5738, %5724
  %5740 = fadd fast float %5732, %5736
  %5741 = fadd fast float %5740, %5725
  %5742 = fadd fast float %5733, %5737
  %5743 = fadd fast float %5742, %5726
  %5744 = fmul fast float %5739, %94
  %5745 = fmul fast float %5741, %94
  %5746 = fmul fast float %5743, %94
  %5747 = select i1 %220, float 0.000000e+00, float %5709
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5697, float %5696, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5699, float %5698, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fmul fast float %5750, 2.000000e+00
  %5752 = fmul fast float %5751, %5704
  %5753 = fmul fast float %5751, %5705
  %5754 = fmul fast float %5751, %5706
  %5755 = fsub fast float %5700, %5752
  %5756 = fsub fast float %5699, %5753
  %5757 = fsub fast float %5698, %5754
  %5758 = call float @dx.op.binary.f32(i32 36, float %5711, float 1.000000e+00)  ; FMin(a,b)
  %5759 = fsub fast float 1.000000e+00, %5711
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = call float @dx.op.dot3.f32(i32 55, float %74, float %70, float %66, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fmul fast float %5763, 0x3FD20DD760000000
  %5765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5766 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fcmp fast oeq float %5766, 0.000000e+00
  %5768 = fcmp fast oeq float %5765, 0.000000e+00
  %5769 = or i1 %5768, %5767
  br i1 %5769, label %5799, label %5770

; <label>:5770                                    ; preds = %5694
  %5771 = fsub fast float -0.000000e+00, %77
  %5772 = fsub fast float -0.000000e+00, %75
  %5773 = call float @dx.op.unary.f32(i32 24, float %5766)  ; Sqrt(value)
  %5774 = fdiv fast float %5773, %5765
  %5775 = fcmp fast ogt float %5774, 0x3FFB6F8900000000
  %5776 = select i1 %5775, float 0x3FFB6F8900000000, float %5774
  %5777 = fmul fast float %5776, 0x3FE8A23460000000
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5776, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5780 = fmul fast float %5778, %5765
  %5781 = fmul fast float %5779, 0x3FF279A740000000
  %5782 = fadd fast float %5781, -1.000000e+00
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5772, float %76, float %5771, float %5772, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = call float @dx.op.unary.f32(i32 25, float %5783)  ; Rsqrt(value)
  %5785 = fmul fast float %5784, %5771
  %5786 = fmul fast float %5784, %5772
  %5787 = fmul fast float %5784, %76
  %5788 = fmul fast float %5782, %5782
  %5789 = fsub fast float 1.000000e+00, %5788
  %5790 = fmul fast float %5779, 0x40005F8BE0000000
  %5791 = fsub fast float 0x400C5BF8A0000000, %5790
  %5792 = fdiv fast float %5780, %5791
  %5793 = fmul fast float %5792, 0x3FEE31C3C0000000
  %5794 = fmul fast float %5793, %5789
  %5795 = fmul fast float %5779, 0x3FDACB7480000000
  %5796 = fadd fast float %5795, 0xBFD7347680000000
  %5797 = fmul fast float %5796, %5792
  %5798 = fmul fast float %5797, %5789
  br label %5799

; <label>:5799                                    ; preds = %5770, %5694
  %5800 = phi float [ %5785, %5770 ], [ 0.000000e+00, %5694 ]
  %5801 = phi float [ %5786, %5770 ], [ 0.000000e+00, %5694 ]
  %5802 = phi float [ %5787, %5770 ], [ 0.000000e+00, %5694 ]
  %5803 = phi float [ %5794, %5770 ], [ 0.000000e+00, %5694 ]
  %5804 = phi float [ %5798, %5770 ], [ 0.000000e+00, %5694 ]
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fmul fast float %5805, %5805
  %5807 = fmul fast float %5806, 0x3FEE471020000000
  %5808 = fadd fast float %5807, 0xBFD42F6020000000
  %5809 = fmul fast float %5765, 0x3FD20DD760000000
  %5810 = fmul fast float %5808, %5804
  %5811 = fmul fast float %5803, 0x3FDF454380000000
  %5812 = fmul fast float %5811, %5805
  %5813 = fadd fast float %5812, %5809
  %5814 = fadd fast float %5813, %5810
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5755, float %5756, float %5757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fmul fast float %5815, 0x3FDF454380000000
  %5817 = fmul fast float %5815, %5815
  %5818 = fmul fast float %5817, 0x3FEE471020000000
  %5819 = fadd fast float %5818, 0xBFD42F6020000000
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5803, float %5804, float 0x3FD20DD760000000, float %5816, float %5819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5822 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fcmp fast oeq float %5822, 0.000000e+00
  %5824 = fcmp fast oeq float %5821, 0.000000e+00
  %5825 = or i1 %5824, %5823
  br i1 %5825, label %5855, label %5826

; <label>:5826                                    ; preds = %5799
  %5827 = fsub fast float -0.000000e+00, %73
  %5828 = fsub fast float -0.000000e+00, %71
  %5829 = call float @dx.op.unary.f32(i32 24, float %5822)  ; Sqrt(value)
  %5830 = fdiv fast float %5829, %5821
  %5831 = fcmp fast ogt float %5830, 0x3FFB6F8900000000
  %5832 = select i1 %5831, float 0x3FFB6F8900000000, float %5830
  %5833 = fmul fast float %5832, 0x3FE8A23460000000
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5832, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5836 = fmul fast float %5834, %5821
  %5837 = fmul fast float %5835, 0x3FF279A740000000
  %5838 = fadd fast float %5837, -1.000000e+00
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %72, float %5827, float %5828, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = call float @dx.op.unary.f32(i32 25, float %5839)  ; Rsqrt(value)
  %5841 = fmul fast float %5840, %5827
  %5842 = fmul fast float %5840, %5828
  %5843 = fmul fast float %5840, %72
  %5844 = fmul fast float %5838, %5838
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5835, 0x40005F8BE0000000
  %5847 = fsub fast float 0x400C5BF8A0000000, %5846
  %5848 = fdiv fast float %5836, %5847
  %5849 = fmul fast float %5848, 0x3FEE31C3C0000000
  %5850 = fmul fast float %5849, %5845
  %5851 = fmul fast float %5835, 0x3FDACB7480000000
  %5852 = fadd fast float %5851, 0xBFD7347680000000
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5853, %5845
  br label %5855

; <label>:5855                                    ; preds = %5826, %5799
  %5856 = phi float [ %5841, %5826 ], [ 0.000000e+00, %5799 ]
  %5857 = phi float [ %5842, %5826 ], [ 0.000000e+00, %5799 ]
  %5858 = phi float [ %5843, %5826 ], [ 0.000000e+00, %5799 ]
  %5859 = phi float [ %5850, %5826 ], [ 0.000000e+00, %5799 ]
  %5860 = phi float [ %5854, %5826 ], [ 0.000000e+00, %5799 ]
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = fmul fast float %5861, %5861
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = fmul fast float %5821, 0x3FD20DD760000000
  %5866 = fmul fast float %5864, %5860
  %5867 = fmul fast float %5859, 0x3FDF454380000000
  %5868 = fmul fast float %5867, %5861
  %5869 = fadd fast float %5868, %5865
  %5870 = fadd fast float %5869, %5866
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5755, float %5756, float %5757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = fmul fast float %5871, 0x3FDF454380000000
  %5873 = fmul fast float %5871, %5871
  %5874 = fmul fast float %5873, 0x3FEE471020000000
  %5875 = fadd fast float %5874, 0xBFD42F6020000000
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5859, float %5860, float 0x3FD20DD760000000, float %5872, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5878 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = fcmp fast oeq float %5878, 0.000000e+00
  %5880 = fcmp fast oeq float %5877, 0.000000e+00
  %5881 = or i1 %5880, %5879
  br i1 %5881, label %5911, label %5882

; <label>:5882                                    ; preds = %5855
  %5883 = fsub fast float -0.000000e+00, %69
  %5884 = fsub fast float -0.000000e+00, %67
  %5885 = call float @dx.op.unary.f32(i32 24, float %5878)  ; Sqrt(value)
  %5886 = fdiv fast float %5885, %5877
  %5887 = fcmp fast ogt float %5886, 0x3FFB6F8900000000
  %5888 = select i1 %5887, float 0x3FFB6F8900000000, float %5886
  %5889 = fmul fast float %5888, 0x3FE8A23460000000
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5892 = fmul fast float %5890, %5877
  %5893 = fmul fast float %5891, 0x3FF279A740000000
  %5894 = fadd fast float %5893, -1.000000e+00
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %68, float %5883, float %5884, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.unary.f32(i32 25, float %5895)  ; Rsqrt(value)
  %5897 = fmul fast float %5896, %5883
  %5898 = fmul fast float %5896, %5884
  %5899 = fmul fast float %5896, %68
  %5900 = fmul fast float %5894, %5894
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5891, 0x40005F8BE0000000
  %5903 = fsub fast float 0x400C5BF8A0000000, %5902
  %5904 = fdiv fast float %5892, %5903
  %5905 = fmul fast float %5904, 0x3FEE31C3C0000000
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %5891, 0x3FDACB7480000000
  %5908 = fadd fast float %5907, 0xBFD7347680000000
  %5909 = fmul fast float %5908, %5904
  %5910 = fmul fast float %5909, %5901
  br label %5911

; <label>:5911                                    ; preds = %5882, %5855
  %5912 = phi float [ %5897, %5882 ], [ 0.000000e+00, %5855 ]
  %5913 = phi float [ %5898, %5882 ], [ 0.000000e+00, %5855 ]
  %5914 = phi float [ %5899, %5882 ], [ 0.000000e+00, %5855 ]
  %5915 = phi float [ %5906, %5882 ], [ 0.000000e+00, %5855 ]
  %5916 = phi float [ %5910, %5882 ], [ 0.000000e+00, %5855 ]
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, %5917
  %5919 = fmul fast float %5918, 0x3FEE471020000000
  %5920 = fadd fast float %5919, 0xBFD42F6020000000
  %5921 = fmul fast float %5877, 0x3FD20DD760000000
  %5922 = fmul fast float %5920, %5916
  %5923 = fmul fast float %5915, 0x3FDF454380000000
  %5924 = fmul fast float %5923, %5917
  %5925 = fadd fast float %5924, %5921
  %5926 = fadd fast float %5925, %5922
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5755, float %5756, float %5757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fmul fast float %5927, 0x3FDF454380000000
  %5929 = fmul fast float %5927, %5927
  %5930 = fmul fast float %5929, 0x3FEE471020000000
  %5931 = fadd fast float %5930, 0xBFD42F6020000000
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5915, float %5916, float 0x3FD20DD760000000, float %5928, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.binary.f32(i32 35, float %5814, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5932, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = call float @dx.op.binary.f32(i32 36, float %5701, float %5940)  ; FMin(a,b)
  %5942 = fsub fast float 1.000000e+00, %5758
  %5943 = fmul fast float %5941, %5942
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = bitcast float %5944 to i32
  %5946 = sub nsw i32 2129859010, %5945
  %5947 = bitcast i32 %5946 to float
  %5948 = call float @dx.op.binary.f32(i32 36, float %5702, float %5940)  ; FMin(a,b)
  %5949 = fmul fast float %5948, %5942
  %5950 = fsub fast float 1.000000e+00, %5949
  %5951 = bitcast float %5950 to i32
  %5952 = sub nsw i32 2129859010, %5951
  %5953 = bitcast i32 %5952 to float
  %5954 = call float @dx.op.binary.f32(i32 36, float %5703, float %5940)  ; FMin(a,b)
  %5955 = fmul fast float %5954, %5942
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = bitcast float %5956 to i32
  %5958 = sub nsw i32 2129859010, %5957
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5933, %5758
  %5961 = fmul fast float %5960, %5947
  %5962 = fmul fast float %5934, %5758
  %5963 = fmul fast float %5962, %5953
  %5964 = fmul fast float %5935, %5758
  %5965 = fmul fast float %5964, %5959
  %5966 = call float @dx.op.binary.f32(i32 36, float %5707, float %5940)  ; FMin(a,b)
  %5967 = fmul fast float %5966, %5942
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = bitcast float %5968 to i32
  %5970 = sub nsw i32 2129859010, %5969
  %5971 = bitcast i32 %5970 to float
  %5972 = call float @dx.op.binary.f32(i32 36, float %5708, float %5940)  ; FMin(a,b)
  %5973 = fmul fast float %5972, %5942
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = bitcast float %5974 to i32
  %5976 = sub nsw i32 2129859010, %5975
  %5977 = bitcast i32 %5976 to float
  %5978 = call float @dx.op.binary.f32(i32 36, float %5747, float %5940)  ; FMin(a,b)
  %5979 = fmul fast float %5978, %5942
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = bitcast float %5980 to i32
  %5982 = sub nsw i32 2129859010, %5981
  %5983 = bitcast i32 %5982 to float
  %5984 = fmul fast float %5936, %5758
  %5985 = fmul fast float %5984, %5971
  %5986 = fmul fast float %5937, %5758
  %5987 = fmul fast float %5986, %5977
  %5988 = fmul fast float %5938, %5758
  %5989 = fmul fast float %5988, %5983
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5963, float %5965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = select i1 %220, float 0.000000e+00, float %5961
  %5992 = select i1 %220, float %5990, float %5963
  %5993 = select i1 %220, float 0.000000e+00, float %5965
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5987, float %5989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = select i1 %220, float 0.000000e+00, float %5985
  %5996 = select i1 %220, float %5994, float %5987
  %5997 = select i1 %220, float 0.000000e+00, float %5989
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6000 = fsub fast float %94, %5999
  %6001 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6002 = fmul fast float %6000, %6001
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fmul fast float %5763, 0x4071A18460000000
  %6005 = fadd fast float %6004, 0x3F0FFB4800000000
  %6006 = call float @dx.op.unary.f32(i32 23, float %6005)  ; Log(value)
  %6007 = fadd fast float %6006, 0x4006B851E0000000
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 3
  %6011 = fsub fast float %6009, %6007
  %6012 = fcmp fast ogt float %6011, 0.000000e+00
  %6013 = fcmp fast olt float %6011, 0.000000e+00
  %6014 = zext i1 %6012 to i32
  %6015 = zext i1 %6013 to i32
  %6016 = sub nsw i32 %6014, %6015
  %6017 = sitofp i32 %6016 to float
  %6018 = call float @dx.op.unary.f32(i32 6, float %6011)  ; FAbs(value)
  %6019 = fsub fast float %6018, %6010
  %6020 = call float @dx.op.binary.f32(i32 35, float %6019, float 0.000000e+00)  ; FMax(a,b)
  %6021 = fmul fast float %6017, %6020
  %6022 = fadd fast float %6006, %6021
  %6023 = call float @dx.op.unary.f32(i32 21, float %6022)  ; Exp(value)
  %6024 = fmul fast float %6023, 0x3F50624DE0000000
  %6025 = fcmp fast oeq float %5764, 0.000000e+00
  %6026 = fdiv fast float 0x400C5BF880000000, %5763
  %6027 = fmul fast float %6024, %6026
  %6028 = select i1 %6025, float 1.000000e+00, float %6027
  %6029 = call float @dx.op.binary.f32(i32 35, float %6028, float 1.000000e+00)  ; FMax(a,b)
  %6030 = fadd fast float %6029, -1.000000e+00
  %6031 = fmul fast float %6030, %6003
  %6032 = fadd fast float %6031, 1.000000e+00
  %6033 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6034 = fmul fast float %6033, %5991
  %6035 = fmul fast float %6033, %5992
  %6036 = fmul fast float %6033, %5993
  %6037 = fmul fast float %4424, %4424
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = fmul fast float %5749, 9.843750e-01
  %6040 = fmul fast float %5710, 9.843750e-01
  %6041 = fadd fast float %6039, 7.812500e-03
  %6042 = fadd fast float %6040, 7.812500e-03
  %6043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %6041, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6044 = extractvalue %dx.types.ResRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.ResRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.ResRet.f32 %6043, 2
  %6047 = extractvalue %dx.types.ResRet.f32 %6043, 3
  %6048 = fsub fast float 1.000000e+00, %6038
  %6049 = fsub fast float %6046, %6044
  %6050 = fsub fast float %6047, %6045
  %6051 = fmul fast float %6049, %6048
  %6052 = fmul fast float %6050, %6048
  %6053 = fadd fast float %6051, %6044
  %6054 = fadd fast float %6052, %6045
  %6055 = fmul fast float %6053, %5707
  %6056 = fmul fast float %6053, %5708
  %6057 = fmul fast float %6053, %5747
  %6058 = fadd fast float %6055, %6054
  %6059 = fadd fast float %6056, %6054
  %6060 = fadd fast float %6057, %6054
  %6061 = fcmp fast ogt float %5070, 0.000000e+00
  br i1 %6061, label %6062, label %6088

; <label>:6062                                    ; preds = %5911
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = fadd fast float %6064, -5.000000e-01
  %6068 = fadd fast float %6065, -5.000000e-01
  %6069 = fadd fast float %6066, -5.000000e-01
  %6070 = fsub fast float 1.000000e+00, %5707
  %6071 = fsub fast float 1.000000e+00, %5708
  %6072 = fsub fast float 1.000000e+00, %5747
  %6073 = fmul fast float %5707, 4.000000e+00
  %6074 = fmul fast float %6073, %6070
  %6075 = fmul fast float %6074, %6067
  %6076 = fmul fast float %5708, 4.000000e+00
  %6077 = fmul fast float %6076, %6071
  %6078 = fmul fast float %6077, %6068
  %6079 = fmul fast float %5747, 4.000000e+00
  %6080 = fmul fast float %6079, %6072
  %6081 = fmul fast float %6080, %6069
  %6082 = fadd fast float %6075, %6058
  %6083 = fadd fast float %6078, %6059
  %6084 = fadd fast float %6081, %6060
  %6085 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  br label %6088

; <label>:6088                                    ; preds = %6062, %5911
  %6089 = phi float [ %6085, %6062 ], [ %6058, %5911 ]
  %6090 = phi float [ %6086, %6062 ], [ %6059, %5911 ]
  %6091 = phi float [ %6087, %6062 ], [ %6060, %5911 ]
  %6092 = call float @dx.op.binary.f32(i32 35, float %6090, float %6091)  ; FMax(a,b)
  %6093 = call float @dx.op.binary.f32(i32 35, float %6089, float %6092)  ; FMax(a,b)
  %6094 = fsub fast float 1.000000e+00, %6093
  %6095 = fmul fast float %158, %158
  %6096 = fmul fast float %159, %159
  %6097 = fadd fast float %6096, %6095
  %6098 = fmul fast float %160, %160
  %6099 = fadd fast float %6097, %6098
  %6100 = call float @dx.op.unary.f32(i32 24, float %6099)  ; Sqrt(value)
  %6101 = fsub fast float %6100, %5999
  %6102 = fmul fast float %6101, %6001
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6106 = fmul fast float %6103, %59
  %6107 = fmul fast float %6106, %6104
  %6108 = fmul fast float %6106, %6105
  %6109 = fadd fast float %6108, 1.000000e+00
  %6110 = fmul fast float %6094, %6034
  %6111 = fmul fast float %6110, %6109
  %6112 = fmul fast float %6094, %6035
  %6113 = fmul fast float %6112, %6109
  %6114 = fmul fast float %6094, %6036
  %6115 = fmul fast float %6114, %6109
  %6116 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = fcmp fast ogt float %6116, 0x3E7FF19E20000000
  %6118 = fdiv fast float 1.000000e+00, %6116
  %6119 = select i1 %6117, float %6118, float 0.000000e+00
  %6120 = fmul fast float %6119, %5701
  %6121 = fmul fast float %6119, %5702
  %6122 = fmul fast float %6119, %5703
  %6123 = fadd fast float %6120, -1.000000e+00
  %6124 = fadd fast float %6121, -1.000000e+00
  %6125 = fadd fast float %6122, -1.000000e+00
  %6126 = fmul fast float %6123, 5.000000e-01
  %6127 = fmul fast float %6124, 5.000000e-01
  %6128 = fmul fast float %6125, 5.000000e-01
  %6129 = fadd fast float %6126, 1.000000e+00
  %6130 = fadd fast float %6127, 1.000000e+00
  %6131 = fadd fast float %6128, 1.000000e+00
  %6132 = fadd fast float %6107, %5071
  %6133 = call float @dx.op.binary.f32(i32 35, float %5749, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6134 = fdiv fast float %4424, %6133
  %6135 = fcmp fast olt float %5119, 1.270000e+02
  %6136 = fcmp fast olt float %5120, 1.270000e+02
  %6137 = fcmp fast olt float %5121, 1.270000e+02
  %6138 = fmul fast float %5119, 0xBFF7154760000000
  %6139 = fmul fast float %6138, %6134
  %6140 = fmul fast float %5120, 0xBFF7154760000000
  %6141 = fmul fast float %6140, %6134
  %6142 = fmul fast float %5121, 0xBFF7154760000000
  %6143 = fmul fast float %6142, %6134
  %6144 = call float @dx.op.unary.f32(i32 21, float %6139)  ; Exp(value)
  %6145 = call float @dx.op.unary.f32(i32 21, float %6141)  ; Exp(value)
  %6146 = call float @dx.op.unary.f32(i32 21, float %6143)  ; Exp(value)
  %6147 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6148 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6149 = call float @dx.op.unary.f32(i32 7, float %6146)  ; Saturate(value)
  %6150 = select i1 %6135, float %6147, float 0.000000e+00
  %6151 = select i1 %6136, float %6148, float 0.000000e+00
  %6152 = select i1 %6137, float %6149, float 0.000000e+00
  %6153 = fmul fast float %6150, %6094
  %6154 = fmul fast float %6151, %6094
  %6155 = fmul fast float %6152, %6094
  %6156 = fadd fast float %6153, -1.000000e+00
  %6157 = fadd fast float %6154, -1.000000e+00
  %6158 = fadd fast float %6155, -1.000000e+00
  %6159 = fmul fast float %6156, %5067
  %6160 = fmul fast float %6157, %5067
  %6161 = fmul fast float %6158, %5067
  %6162 = fadd fast float %6159, 1.000000e+00
  %6163 = fadd fast float %6160, 1.000000e+00
  %6164 = fadd fast float %6161, 1.000000e+00
  %6165 = fmul fast float %5708, 0x401CF23780000000
  %6166 = fadd fast float %6165, 0x3FF32641C0000000
  %6167 = fdiv fast float 1.000000e+00, %6166
  %6168 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = fmul fast float %6167, %6167
  %6170 = fmul fast float %6168, %6168
  %6171 = fsub fast float 1.000000e+00, %6170
  %6172 = fmul fast float %6169, %6171
  %6173 = fsub fast float 1.000000e+00, %6172
  %6174 = fcmp fast oge float %6173, 0.000000e+00
  %6175 = fmul fast float %6167, %5697
  %6176 = fmul fast float %6167, %5696
  %6177 = fmul fast float %6167, %5695
  %6178 = call float @dx.op.unary.f32(i32 24, float %6173)  ; Sqrt(value)
  %6179 = fmul fast float %6168, %6167
  %6180 = fadd fast float %6179, %6178
  %6181 = fmul fast float %6180, %5704
  %6182 = fmul fast float %6180, %5705
  %6183 = fmul fast float %6180, %5706
  %6184 = fsub fast float %6175, %6181
  %6185 = fsub fast float %6176, %6182
  %6186 = fsub fast float %6177, %6183
  %6187 = select i1 %6174, float %6184, float 0.000000e+00
  %6188 = select i1 %6174, float %6185, float 0.000000e+00
  %6189 = select i1 %6174, float %6186, float 0.000000e+00
  %6190 = fmul fast float %6187, %4424
  %6191 = fmul fast float %6188, %4424
  %6192 = fmul fast float %6189, %4424
  %6193 = fadd fast float %6190, %5744
  %6194 = fadd fast float %6191, %5745
  %6195 = fadd fast float %6192, %5746
  %6196 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fsub fast float 1.000000e+00, %5710
  %6198 = fmul fast float %6197, %5067
  %6199 = fsub fast float 1.000000e+00, %6198
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = fsub fast float 1.000000e+00, %6200
  %6202 = fmul fast float %5708, 0x4012D0A400000000
  %6203 = fadd fast float %6202, 0x3FDB6377A0000000
  %6204 = fmul fast float %6201, %6203
  %6205 = fadd fast float %6204, %6196
  %6206 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6207 = fmul fast float %6089, %5995
  %6208 = fmul fast float %6090, %5996
  %6209 = fmul fast float %6091, %5997
  %6210 = fsub fast float 1.000000e+00, %5749
  %6211 = bitcast float %6210 to i32
  %6212 = sitofp i32 %6211 to float
  %6213 = fmul fast float %6212, 5.000000e+00
  %6214 = fadd fast float %6213, 0xC1EFBF8940000000
  %6215 = fptosi float %6214 to i32
  %6216 = bitcast i32 %6215 to float
  %6217 = fmul fast float %6132, %6216
  %6218 = fmul fast float %6110, %6217
  %6219 = fmul fast float %6218, %6129
  %6220 = fmul fast float %6112, %6217
  %6221 = fmul fast float %6220, %6130
  %6222 = fmul fast float %6114, %6217
  %6223 = fmul fast float %6222, %6131
  %6224 = fmul fast float %6111, %5067
  %6225 = fmul fast float %6113, %5067
  %6226 = fmul fast float %6115, %5067
  %6227 = fsub fast float 1.000000e+00, %6206
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6242 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6243 = fmul fast float %6193, %6229
  %6244 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6230, float %6243)  ; FMad(a,b,c)
  %6245 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6231, float %6244)  ; FMad(a,b,c)
  %6246 = fadd fast float %6245, %6232
  %6247 = fmul fast float %6193, %6234
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6235, float %6247)  ; FMad(a,b,c)
  %6249 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6236, float %6248)  ; FMad(a,b,c)
  %6250 = fadd fast float %6249, %6237
  %6251 = fmul fast float %6193, %6239
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6240, float %6251)  ; FMad(a,b,c)
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6241, float %6252)  ; FMad(a,b,c)
  %6254 = fadd fast float %6253, %6242
  %6255 = fdiv fast float %6246, %6254
  %6256 = fdiv fast float %6250, %6254
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = fmul fast float %6258, %6255
  %6261 = fmul fast float %6259, %6256
  %6262 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6263 = extractvalue %dx.types.CBufRet.f32 %6257, 3
  %6264 = fadd fast float %6260, %6262
  %6265 = fadd fast float %6261, %6263
  %6266 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6267 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = fmul fast float %6269, %6266
  %6272 = fmul fast float %6270, %6267
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6276 = fsub fast float %6274, %6275
  %6277 = fmul fast float %6276, %6227
  %6278 = fadd fast float %6277, %6275
  %6279 = fmul fast float %233, 2.000000e+00
  %6280 = fmul fast float %234, 2.000000e+00
  %6281 = fadd fast float %6279, -1.000000e+00
  %6282 = fadd fast float %6280, -1.000000e+00
  %6283 = fmul fast float %6278, %6281
  %6284 = fmul fast float %6278, %6282
  %6285 = fadd fast float %6283, %6271
  %6286 = fadd fast float %6284, %6272
  %6287 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6289 = fmul fast float %6285, %6287
  %6290 = fmul fast float %6286, %6288
  %6291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %6289, float %6290, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = fcmp fast ogt float %6292, -1.000000e+00
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6296 = select i1 %6293, float %6295, float 1.000000e+00
  %6297 = fadd fast float %6292, 1.000000e+00
  %6298 = fmul fast float %6296, %6297
  %6299 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6300 = fsub fast float %6299, %6254
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6303 = fmul fast float %6302, %6299
  %6304 = fdiv fast float 1.600000e+02, %6303
  %6305 = fmul fast float %6206, %6206
  %6306 = fmul fast float %6305, 0xBFB5B17960000000
  %6307 = fmul fast float %6306, %6300
  %6308 = fmul fast float %6307, %6304
  %6309 = call float @dx.op.unary.f32(i32 21, float %6308)  ; Exp(value)
  %6310 = fmul fast float %6309, 0x3FF04B2960000000
  %6311 = fsub fast float 0x3FF04B2960000000, %6310
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fmul fast float %6312, 4.000000e+00
  %6314 = fadd fast float %233, -5.000000e-01
  %6315 = fadd fast float %234, -5.000000e-01
  %6316 = fmul fast float %6312, 0x3FBEB851E0000000
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = fmul fast float %6317, %6314
  %6319 = fmul fast float %6317, %6315
  %6320 = fadd fast float %6318, %6264
  %6321 = fadd fast float %6319, %6265
  %6322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.i32 %6322, 0
  %6324 = icmp eq i32 %6323, 0
  br i1 %6324, label %6330, label %6325, !dx.controlflow.hints !96

; <label>:6325                                    ; preds = %6088
  %6326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %6320, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.ResRet.f32 %6326, 2
  br label %6335

; <label>:6330                                    ; preds = %6088
  %6331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %6320, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.ResRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.ResRet.f32 %6331, 2
  br label %6335

; <label>:6335                                    ; preds = %6330, %6325
  %6336 = phi float [ %6327, %6325 ], [ %6332, %6330 ]
  %6337 = phi float [ %6328, %6325 ], [ %6333, %6330 ]
  %6338 = phi float [ %6329, %6325 ], [ %6334, %6330 ]
  %6339 = select i1 %220, float 0.000000e+00, float %6337
  %6340 = select i1 %220, float 0.000000e+00, float %6338
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6343 = fmul fast float %6336, %6162
  %6344 = fmul fast float %6343, %6342
  %6345 = fmul fast float %6339, %6163
  %6346 = fmul fast float %6345, %6342
  %6347 = fmul fast float %6340, %6164
  %6348 = fmul fast float %6347, %6342
  %6349 = fadd fast float %6207, %5054
  %6350 = fadd fast float %6349, %6219
  %6351 = fadd fast float %6350, %6344
  %6352 = fmul fast float %6351, %5067
  %6353 = fadd fast float %6208, %5055
  %6354 = fadd fast float %6353, %6221
  %6355 = fadd fast float %6354, %6346
  %6356 = fmul fast float %6355, %5067
  %6357 = fadd fast float %6209, %5056
  %6358 = fadd fast float %6357, %6223
  %6359 = fadd fast float %6358, %6348
  %6360 = fmul fast float %6359, %5067
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6363 = fcmp fast oeq float %6362, 0.000000e+00
  br i1 %6363, label %7568, label %6364

; <label>:6364                                    ; preds = %6335
  %6365 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6366 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6367 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6376 = select i1 %220, float %6373, float %6369
  %6377 = select i1 %220, float %6375, float %6370
  %6378 = select i1 %220, float %6374, float %6371
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6381 = fmul fast float %6380, %110
  %6382 = fmul fast float %6380, %111
  %6383 = fmul fast float %6380, %112
  %6384 = fadd fast float %6381, %158
  %6385 = fadd fast float %6382, %159
  %6386 = fadd fast float %6383, %160
  %6387 = fcmp fast olt float %6362, 0.000000e+00
  br i1 %6387, label %7012, label %6388

; <label>:6388                                    ; preds = %6364
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6403 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6404 = fmul fast float %6390, %6384
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6391, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6392, float %6405)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6393
  %6408 = fmul fast float %6395, %6384
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6396, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6397, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6398
  %6412 = fmul fast float %6400, %6384
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6401, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6402, float %6413)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6403
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.CBufRet.f32 %6416, 1
  %6419 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6420 = fmul fast float %6419, %6407
  %6421 = fmul fast float %6419, %6411
  %6422 = fadd fast float %6420, %6417
  %6423 = fadd fast float %6421, %6418
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6428 = fmul fast float %6427, %6407
  %6429 = fmul fast float %6427, %6411
  %6430 = fadd fast float %6428, %6425
  %6431 = fadd fast float %6429, %6426
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6434 = fsub fast float %6433, %6415
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = fmul fast float %6434, %6435
  %6437 = fsub fast float 1.000000e+00, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6442 = fadd fast float %6441, %6439
  %6443 = fcmp fast ogt float %6442, 0.000000e+00
  br i1 %6443, label %6444, label %6468

; <label>:6444                                    ; preds = %6388
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6448 = fsub fast float %6430, %6446
  %6449 = fsub fast float %6431, %6447
  %6450 = fcmp fast olt float %6448, 0.000000e+00
  %6451 = fcmp fast olt float %6449, 0.000000e+00
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6463 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6464 = call float @dx.op.binary.f32(i32 35, float %6461, float %6462)  ; FMax(a,b)
  %6465 = fsub fast float %6463, %6464
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = fmul fast float %6466, %6438
  br label %6468

; <label>:6468                                    ; preds = %6444, %6388
  %6469 = phi float [ %6467, %6444 ], [ 0.000000e+00, %6388 ]
  %6470 = extractvalue %dx.types.CBufRet.f32 %6416, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6472 = fadd fast float %6471, %6470
  %6473 = fcmp fast ogt float %6472, 0.000000e+00
  %6474 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  br i1 %6473, label %6475, label %6498

; <label>:6475                                    ; preds = %6468
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6479 = fsub fast float %6422, %6477
  %6480 = fsub fast float %6423, %6478
  %6481 = fcmp fast olt float %6479, 0.000000e+00
  %6482 = fcmp fast olt float %6480, 0.000000e+00
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6488 = select i1 %6481, float %6484, float %6486
  %6489 = select i1 %6482, float %6485, float %6487
  %6490 = fmul fast float %6488, %6479
  %6491 = fmul fast float %6489, %6480
  %6492 = call float @dx.op.unary.f32(i32 6, float %6490)  ; FAbs(value)
  %6493 = call float @dx.op.unary.f32(i32 6, float %6491)  ; FAbs(value)
  %6494 = call float @dx.op.binary.f32(i32 35, float %6492, float %6493)  ; FMax(a,b)
  %6495 = fsub fast float %6474, %6494
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = fmul fast float %6496, %6438
  br label %6498

; <label>:6498                                    ; preds = %6475, %6468
  %6499 = phi float [ %6497, %6475 ], [ 0.000000e+00, %6468 ]
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 0
  %6505 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6506 = fsub fast float %6407, %6504
  %6507 = fsub fast float %6411, %6505
  %6508 = fcmp fast olt float %6506, 0.000000e+00
  %6509 = fcmp fast olt float %6507, 0.000000e+00
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6515 = select i1 %6508, float %6511, float %6513
  %6516 = select i1 %6509, float %6512, float %6514
  %6517 = fmul fast float %6515, %6506
  %6518 = fmul fast float %6516, %6507
  %6519 = call float @dx.op.unary.f32(i32 6, float %6517)  ; FAbs(value)
  %6520 = call float @dx.op.unary.f32(i32 6, float %6518)  ; FAbs(value)
  %6521 = call float @dx.op.binary.f32(i32 35, float %6519, float %6520)  ; FMax(a,b)
  %6522 = fsub fast float %6474, %6521
  %6523 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6524 = call float @dx.op.binary.f32(i32 36, float %6523, float %6502)  ; FMin(a,b)
  %6525 = fmul fast float %6524, %6438
  %6526 = fsub fast float %6499, %6525
  %6527 = fsub fast float %6469, %6499
  %6528 = fsub fast float %6527, %6525
  %6529 = call float @dx.op.binary.f32(i32 35, float %6499, float %6469)  ; FMax(a,b)
  %6530 = call float @dx.op.binary.f32(i32 35, float %6525, float %6529)  ; FMax(a,b)
  %6531 = fcmp fast olt float %6530, 1.000000e+00
  br i1 %6531, label %6532, label %6930, !dx.controlflow.hints !97

; <label>:6532                                    ; preds = %6498
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = fcmp fast une float %6534, 0.000000e+00
  br i1 %6535, label %6536, label %6930, !dx.controlflow.hints !98

; <label>:6536                                    ; preds = %6532
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6541 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6546 = extractvalue %dx.types.CBufRet.f32 %6542, 3
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6551 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6552 = fmul fast float %6538, %6384
  %6553 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6539, float %6552)  ; FMad(a,b,c)
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6540, float %6553)  ; FMad(a,b,c)
  %6555 = fadd fast float %6554, %6541
  %6556 = fmul fast float %6543, %6384
  %6557 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6544, float %6556)  ; FMad(a,b,c)
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6545, float %6557)  ; FMad(a,b,c)
  %6559 = fadd fast float %6558, %6546
  %6560 = fmul fast float %6548, %6384
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6549, float %6560)  ; FMad(a,b,c)
  %6562 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6550, float %6561)  ; FMad(a,b,c)
  %6563 = fadd fast float %6562, %6551
  %6564 = fcmp fast oge float %6555, 1.000000e+00
  %6565 = fcmp fast oge float %6559, 1.000000e+00
  %6566 = or i1 %6564, %6565
  %6567 = fcmp fast olt float %6555, 0.000000e+00
  %6568 = fcmp fast olt float %6559, 0.000000e+00
  %6569 = or i1 %6567, %6568
  %6570 = or i1 %6566, %6569
  br i1 %6570, label %6930, label %6571, !dx.controlflow.hints !99

; <label>:6571                                    ; preds = %6536
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6575 = extractvalue %dx.types.CBufRet.f32 %6572, 2
  %6576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.i32 %6576, 2
  %6578 = uitofp i32 %6577 to float
  %6579 = extractvalue %dx.types.CBufRet.i32 %6576, 3
  %6580 = uitofp i32 %6579 to float
  %6581 = extractvalue %dx.types.CBufRet.f32 %6572, 3
  %6582 = fmul fast float %6581, 2.000000e+00
  %6583 = fsub fast float %6555, %6573
  %6584 = fsub fast float %6559, %6574
  %6585 = fmul fast float %6582, %6583
  %6586 = fmul fast float %6582, %6584
  %6587 = fdiv fast float 1.000000e+00, %6367
  %6588 = fmul fast float %6586, %6587
  %6589 = call float @dx.op.unary.f32(i32 6, float %6588)  ; FAbs(value)
  %6590 = fmul fast float %6575, %6386
  %6591 = fmul fast float %6590, %6582
  %6592 = call float @dx.op.unary.f32(i32 6, float %6591)  ; FAbs(value)
  %6593 = call float @dx.op.unary.f32(i32 6, float %6585)  ; FAbs(value)
  %6594 = call float @dx.op.binary.f32(i32 35, float %6592, float %6589)  ; FMax(a,b)
  %6595 = call float @dx.op.binary.f32(i32 35, float %6593, float %6594)  ; FMax(a,b)
  %6596 = fmul fast float %6595, 2.000000e+00
  %6597 = call float @dx.op.unary.f32(i32 23, float %6596)  ; Log(value)
  %6598 = call float @dx.op.binary.f32(i32 35, float %6597, float %6578)  ; FMax(a,b)
  %6599 = call float @dx.op.unary.f32(i32 22, float %6598)  ; Frc(value)
  %6600 = fadd fast float %6599, 0xBFEA666660000000
  %6601 = fmul fast float %6600, 8.000000e+00
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = call float @dx.op.unary.f32(i32 27, float %6598)  ; Round_ni(value)
  %6604 = fadd fast float %6603, %6602
  %6605 = call float @dx.op.binary.f32(i32 36, float %6604, float %6580)  ; FMin(a,b)
  %6606 = call float @dx.op.unary.f32(i32 27, float %6605)  ; Round_ni(value)
  %6607 = fsub fast float -0.000000e+00, %6606
  %6608 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6609 = fmul fast float %6608, %6582
  %6610 = fmul fast float %6609, %6555
  %6611 = fmul fast float %6609, %6559
  %6612 = fmul fast float %6610, 2.500000e-01
  %6613 = fmul fast float %6611, 2.500000e-01
  %6614 = fadd fast float %6612, 5.000000e-01
  %6615 = fadd fast float %6613, 5.000000e-01
  %6616 = fsub fast float %6580, %6578
  %6617 = fptoui float %6616 to i32
  %6618 = add i32 %6617, 320
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6618)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6622 = fcmp fast une float %6605, %6580
  %6623 = fsub fast float %6555, %6620
  %6624 = fsub fast float %6559, %6621
  %6625 = call float @dx.op.unary.f32(i32 6, float %6623)  ; FAbs(value)
  %6626 = call float @dx.op.unary.f32(i32 6, float %6624)  ; FAbs(value)
  %6627 = fmul fast float %6625, %6609
  %6628 = fmul fast float %6626, %6609
  %6629 = fcmp fast olt float %6627, 1.000000e+00
  %6630 = fcmp fast olt float %6628, 1.000000e+00
  %6631 = and i1 %6629, %6630
  %6632 = or i1 %6622, %6631
  br i1 %6632, label %6633, label %6930, !dx.controlflow.hints !100

; <label>:6633                                    ; preds = %6571
  %6634 = fmul fast float %6611, 5.000000e-01
  %6635 = fmul fast float %6610, 5.000000e-01
  %6636 = fadd fast float %6634, 5.000000e-01
  %6637 = fadd fast float %6635, 5.000000e-01
  %6638 = sitofp i32 %6577 to float
  %6639 = fsub fast float %6605, %6638
  %6640 = call float @dx.op.unary.f32(i32 27, float %6639)  ; Round_ni(value)
  %6641 = call float @dx.op.unary.f32(i32 22, float %6605)  ; Frc(value)
  %6642 = call float @dx.op.unary.f32(i32 22, float %6637)  ; Frc(value)
  %6643 = call float @dx.op.unary.f32(i32 22, float %6636)  ; Frc(value)
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6642, float %6643, float %6640, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  %6648 = extractvalue %dx.types.ResRet.f32 %6644, 3
  %6649 = fcmp fast ogt float %6641, 0.000000e+00
  br i1 %6649, label %6650, label %6671, !dx.controlflow.hints !101

; <label>:6650                                    ; preds = %6633
  %6651 = fadd fast float %6640, 1.000000e+00
  %6652 = call float @dx.op.unary.f32(i32 22, float %6614)  ; Frc(value)
  %6653 = call float @dx.op.unary.f32(i32 22, float %6615)  ; Frc(value)
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6652, float %6653, float %6651, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.ResRet.f32 %6654, 3
  %6659 = fsub fast float %6655, %6645
  %6660 = fsub fast float %6656, %6646
  %6661 = fsub fast float %6657, %6647
  %6662 = fsub fast float %6658, %6648
  %6663 = fmul fast float %6659, %6641
  %6664 = fmul fast float %6660, %6641
  %6665 = fmul fast float %6661, %6641
  %6666 = fmul fast float %6662, %6641
  %6667 = fadd fast float %6663, %6645
  %6668 = fadd fast float %6664, %6646
  %6669 = fadd fast float %6665, %6647
  %6670 = fadd fast float %6666, %6648
  br label %6671

; <label>:6671                                    ; preds = %6650, %6633
  %6672 = phi float [ %6667, %6650 ], [ %6645, %6633 ]
  %6673 = phi float [ %6668, %6650 ], [ %6646, %6633 ]
  %6674 = phi float [ %6669, %6650 ], [ %6647, %6633 ]
  %6675 = phi float [ %6670, %6650 ], [ %6648, %6633 ]
  %6676 = fadd fast float %6672, -5.000000e-01
  %6677 = fadd fast float %6674, -5.000000e-01
  %6678 = fmul fast float %6676, 0xBFD5555560000000
  %6679 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6677, float %6678)  ; FMad(a,b,c)
  %6680 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6673, float 0.000000e+00)  ; FMad(a,b,c)
  %6681 = fadd fast float %6680, %6675
  %6682 = fmul fast float %6676, -7.500000e-01
  %6683 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6677, float %6682)  ; FMad(a,b,c)
  %6684 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6673, float 0.000000e+00)  ; FMad(a,b,c)
  %6685 = fadd fast float %6684, %6675
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 0
  %6690 = extractvalue %dx.types.CBufRet.f32 %6688, 1
  %6691 = extractvalue %dx.types.CBufRet.f32 %6688, 2
  %6692 = extractvalue %dx.types.CBufRet.f32 %6688, 3
  %6693 = fsub fast float %6689, %6679
  %6694 = fsub fast float %6690, %6681
  %6695 = fsub fast float %6691, %6683
  %6696 = fsub fast float %6692, %6685
  %6697 = fmul fast float %6693, %6687
  %6698 = fmul fast float %6694, %6687
  %6699 = fmul fast float %6695, %6687
  %6700 = fmul fast float %6696, %6687
  %6701 = fadd fast float %6697, %6679
  %6702 = fadd fast float %6698, %6681
  %6703 = fadd fast float %6699, %6683
  %6704 = fadd fast float %6700, %6685
  %6705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6706 = extractvalue %dx.types.ResRet.i32 %6705, 0
  %6707 = and i32 %6706, 536870911
  %6708 = uitofp i32 %6707 to float
  %6709 = fmul fast float %6708, %6555
  %6710 = fmul fast float %6708, %6559
  %6711 = fptoui float %6709 to i32
  %6712 = fptoui float %6710 to i32
  %6713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6714 = extractvalue %dx.types.ResRet.i32 %6713, 0
  %6715 = and i32 %6714, 31
  %6716 = lshr i32 %6711, %6715
  %6717 = lshr i32 %6712, %6715
  %6718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6719 = extractvalue %dx.types.ResRet.i32 %6718, 0
  %6720 = and i32 %6719, 31
  %6721 = shl i32 1, %6720
  %6722 = call i32 @dx.op.binary.i32(i32 40, i32 %6721, i32 4)  ; UMin(a,b)
  %6723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6724 = extractvalue %dx.types.ResRet.i32 %6723, 0
  %6725 = extractvalue %dx.types.ResRet.i32 %6723, 1
  %6726 = icmp eq i32 %6722, 0
  br i1 %6726, label %6768, label %6727

; <label>:6727                                    ; preds = %6671
  br label %6728

; <label>:6728                                    ; preds = %6756, %6727
  %6729 = phi i32 [ %6759, %6756 ], [ 0, %6727 ]
  %6730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6731 = extractvalue %dx.types.ResRet.i32 %6730, 0
  %6732 = lshr i32 %6731, 16
  %6733 = and i32 %6732, 31
  %6734 = shl i32 %6717, %6733
  %6735 = add i32 %6734, %6716
  %6736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6737 = extractvalue %dx.types.ResRet.i32 %6736, 0
  %6738 = and i32 %6737, 31
  %6739 = shl i32 %6735, %6738
  %6740 = add i32 %6739, %6729
  %6741 = shl i32 %6740, 2
  %6742 = add i32 %6741, 32
  %6743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6742, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.i32 %6743, 0
  %6745 = icmp slt i32 %6744, 0
  %6746 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6729
  %6747 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6729
  %6748 = bitcast float* %6746 to i32*
  %6749 = bitcast float* %6747 to i32*
  br i1 %6745, label %6750, label %6756

; <label>:6750                                    ; preds = %6728
  %6751 = and i32 %6744, 1073741823
  %6752 = add nuw nsw i32 %6751, 20
  %6753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6752, i32 undef)  ; BufferLoad(srv,index,wot)
  %6754 = extractvalue %dx.types.ResRet.i32 %6753, 0
  %6755 = extractvalue %dx.types.ResRet.i32 %6753, 1
  br label %6756

; <label>:6756                                    ; preds = %6750, %6728
  %6757 = phi i32 [ %6754, %6750 ], [ %6724, %6728 ]
  %6758 = phi i32 [ %6755, %6750 ], [ %6725, %6728 ]
  store i32 %6757, i32* %6748, align 4
  store i32 %6758, i32* %6749, align 4
  %6759 = add nuw i32 %6729, 1
  %6760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.i32 %6760, 2
  %6762 = icmp eq i32 %6761, 0
  %6763 = icmp ugt i32 %6744, -1073741825
  %6764 = and i1 %6763, %6762
  %6765 = icmp ult i32 %6759, %6722
  %6766 = and i1 %6764, %6765
  br i1 %6766, label %6728, label %6767

; <label>:6767                                    ; preds = %6756
  br label %6768

; <label>:6768                                    ; preds = %6767, %6671
  %6769 = phi i32 [ 0, %6671 ], [ %6759, %6767 ]
  %6770 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6771 = fptoui float %6770 to i32
  %6772 = icmp eq i32 %6771, 0
  br i1 %6772, label %6824, label %6773

; <label>:6773                                    ; preds = %6768
  br label %6774

; <label>:6774                                    ; preds = %6819, %6773
  %6775 = phi i32 [ %6820, %6819 ], [ %6769, %6773 ]
  %6776 = phi i32 [ %6821, %6819 ], [ 0, %6773 ]
  %6777 = lshr i32 %6776, 2
  %6778 = and i32 %6776, 3
  %6779 = add nuw nsw i32 %6777, 83
  %6780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6779)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.i32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.i32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.i32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.i32 %6780, 3
  %6785 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6781, i32* %6785, align 4
  %6786 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6782, i32* %6786, align 4
  %6787 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6783, i32* %6787, align 4
  %6788 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6784, i32* %6788, align 4
  %6789 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6778
  %6790 = load i32, i32* %6789, align 4, !tbaa !102, !noalias !106
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = lshr i32 %6792, 16
  %6794 = and i32 %6793, 31
  %6795 = shl i32 %6717, %6794
  %6796 = add i32 %6795, %6716
  %6797 = shl i32 %6796, 2
  %6798 = add i32 %6797, %6790
  %6799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6798, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.i32 %6799, 0
  %6801 = icmp eq i32 %6800, 0
  br i1 %6801, label %6819, label %6802

; <label>:6802                                    ; preds = %6774
  %6803 = icmp slt i32 %6800, 0
  %6804 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6775
  %6805 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6775
  %6806 = bitcast float* %6804 to i32*
  %6807 = bitcast float* %6805 to i32*
  br i1 %6803, label %6808, label %6815

; <label>:6808                                    ; preds = %6802
  %6809 = and i32 %6800, 1073741823
  %6810 = add i32 %6790, 20
  %6811 = add i32 %6810, %6809
  %6812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6811, i32 undef)  ; BufferLoad(srv,index,wot)
  %6813 = extractvalue %dx.types.ResRet.i32 %6812, 0
  %6814 = extractvalue %dx.types.ResRet.i32 %6812, 1
  br label %6815

; <label>:6815                                    ; preds = %6808, %6802
  %6816 = phi i32 [ %6813, %6808 ], [ %6724, %6802 ]
  %6817 = phi i32 [ %6814, %6808 ], [ %6725, %6802 ]
  store i32 %6816, i32* %6806, align 4
  store i32 %6817, i32* %6807, align 4
  %6818 = add i32 %6775, 1
  br label %6819

; <label>:6819                                    ; preds = %6815, %6774
  %6820 = phi i32 [ %6775, %6774 ], [ %6818, %6815 ]
  %6821 = add nuw i32 %6776, 1
  %6822 = icmp eq i32 %6821, %6771
  br i1 %6822, label %6823, label %6774

; <label>:6823                                    ; preds = %6819
  br label %6824

; <label>:6824                                    ; preds = %6823, %6768
  %6825 = phi i32 [ %6769, %6768 ], [ %6820, %6823 ]
  %6826 = icmp eq i32 %6825, 1
  %6827 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  %6828 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  br i1 %6826, label %6829, label %6832

; <label>:6829                                    ; preds = %6824
  %6830 = load float, float* %6827, align 4
  %6831 = load float, float* %6828, align 4
  br label %6859

; <label>:6832                                    ; preds = %6824
  %6833 = load float, float* %6827, align 4
  %6834 = load float, float* %6828, align 4
  %6835 = fdiv fast float 1.000000e+00, %6834
  %6836 = fsub fast float %6833, %6835
  %6837 = icmp ugt i32 %6825, 1
  br i1 %6837, label %6838, label %6854

; <label>:6838                                    ; preds = %6832
  br label %6839

; <label>:6839                                    ; preds = %6839, %6838
  %6840 = phi float [ %6849, %6839 ], [ %6836, %6838 ]
  %6841 = phi float [ %6850, %6839 ], [ %6833, %6838 ]
  %6842 = phi i32 [ %6851, %6839 ], [ 1, %6838 ]
  %6843 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6842
  %6844 = load float, float* %6843, align 4
  %6845 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6842
  %6846 = load float, float* %6845, align 4
  %6847 = fdiv fast float 1.000000e+00, %6846
  %6848 = fsub fast float %6844, %6847
  %6849 = call float @dx.op.binary.f32(i32 36, float %6840, float %6848)  ; FMin(a,b)
  %6850 = call float @dx.op.binary.f32(i32 35, float %6841, float %6844)  ; FMax(a,b)
  %6851 = add nuw i32 %6842, 1
  %6852 = icmp eq i32 %6851, %6825
  br i1 %6852, label %6853, label %6839

; <label>:6853                                    ; preds = %6839
  br label %6854

; <label>:6854                                    ; preds = %6853, %6832
  %6855 = phi float [ %6836, %6832 ], [ %6849, %6853 ]
  %6856 = phi float [ %6833, %6832 ], [ %6850, %6853 ]
  %6857 = fsub fast float %6856, %6855
  %6858 = fdiv fast float 1.000000e+00, %6857
  br label %6859

; <label>:6859                                    ; preds = %6854, %6829
  %6860 = phi float [ %6830, %6829 ], [ %6856, %6854 ]
  %6861 = phi float [ %6831, %6829 ], [ %6858, %6854 ]
  %6862 = fadd fast float %6563, %6860
  %6863 = fmul fast float %6862, %6861
  %6864 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6865 = fmul fast float %6864, 2.000000e+00
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = fmul fast float %6701, %6701
  %6868 = fsub fast float %6702, %6867
  %6869 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6868)  ; FMax(a,b)
  %6870 = fdiv fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6702, %6701
  %6872 = fsub fast float %6703, %6871
  %6873 = fsub fast float %6866, %6701
  %6874 = fmul fast float %6866, %6866
  %6875 = fsub fast float %6874, %6702
  %6876 = fmul fast float %6870, %6872
  %6877 = fmul fast float %6876, %6873
  %6878 = fsub fast float %6875, %6877
  %6879 = fmul fast float %6702, %6702
  %6880 = fsub fast float %6704, %6879
  %6881 = fmul fast float %6872, %6872
  %6882 = fmul fast float %6881, %6870
  %6883 = fsub fast float %6880, %6882
  %6884 = fdiv fast float %6878, %6883
  %6885 = fmul fast float %6884, %6872
  %6886 = fsub fast float %6873, %6885
  %6887 = fmul fast float %6886, %6870
  %6888 = fmul fast float %6887, %6701
  %6889 = fsub fast float 1.000000e+00, %6888
  %6890 = fmul fast float %6884, %6702
  %6891 = fsub fast float %6889, %6890
  %6892 = fmul fast float %6887, %6887
  %6893 = fmul fast float %6884, 4.000000e+00
  %6894 = fmul fast float %6893, %6891
  %6895 = fsub fast float %6892, %6894
  %6896 = call float @dx.op.unary.f32(i32 24, float %6895)  ; Sqrt(value)
  %6897 = fcmp fast oge float %6887, 0.000000e+00
  %6898 = fsub fast float -0.000000e+00, %6896
  %6899 = select i1 %6897, float %6898, float %6896
  %6900 = fsub fast float %6899, %6887
  %6901 = fdiv fast float %6900, %6884
  %6902 = fdiv fast float %6891, %6900
  %6903 = fmul fast float %6901, 5.000000e-01
  %6904 = fmul fast float %6902, 2.000000e+00
  %6905 = select i1 %6897, float %6903, float %6904
  %6906 = select i1 %6897, float %6904, float %6903
  %6907 = call float @dx.op.binary.f32(i32 35, float %6905, float %6906)  ; FMax(a,b)
  %6908 = call float @dx.op.binary.f32(i32 36, float %6905, float %6906)  ; FMin(a,b)
  %6909 = fcmp fast ogt float %6866, %6907
  %6910 = fsub fast float %6866, %6908
  %6911 = fsub fast float %6866, %6907
  %6912 = fsub fast float %6907, %6908
  %6913 = select i1 %6909, float %6911, float %6912
  %6914 = fmul float %6910, %6913
  %6915 = select i1 %6909, float %6908, float %6866
  %6916 = fcmp fast ogt float %6866, %6908
  %6917 = fmul fast float %6915, %6907
  %6918 = fadd fast float %6915, %6907
  %6919 = fmul fast float %6918, %6701
  %6920 = fadd fast float %6917, %6702
  %6921 = fsub fast float %6920, %6919
  %6922 = fdiv fast float %6921, %6914
  %6923 = select i1 %6916, float %6922, float 0.000000e+00
  %6924 = fsub fast float 1.000000e+00, %6923
  %6925 = select i1 %6909, float %6924, float %6923
  %6926 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6686, 3
  %6928 = fmul fast float %6927, %6926
  %6929 = fsub fast float 1.000000e+00, %6928
  br label %6930

; <label>:6930                                    ; preds = %6859, %6571, %6536, %6532, %6498
  %6931 = phi float [ 1.000000e+00, %6498 ], [ %6929, %6859 ], [ 1.000000e+00, %6536 ], [ 1.000000e+00, %6571 ], [ 1.000000e+00, %6532 ]
  %6932 = fcmp fast ogt float %6528, 0.000000e+00
  br i1 %6932, label %6933, label %6939, !dx.controlflow.hints !115

; <label>:6933                                    ; preds = %6930
  %6934 = fadd fast float %6441, %6415
  %6935 = call float @dx.op.binary.f32(i32 35, float %6934, float 0.000000e+00)  ; FMax(a,b)
  %6936 = fadd fast float %6935, 0x3F10000000000000
  %6937 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6430, float %6431, float undef, float undef, i32 0, i32 0, i32 undef, float %6936)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  br label %6939

; <label>:6939                                    ; preds = %6933, %6930
  %6940 = phi float [ %6938, %6933 ], [ 1.000000e+00, %6930 ]
  %6941 = fcmp fast ogt float %6526, 0.000000e+00
  br i1 %6941, label %6942, label %6948, !dx.controlflow.hints !116

; <label>:6942                                    ; preds = %6939
  %6943 = fadd fast float %6471, %6415
  %6944 = call float @dx.op.binary.f32(i32 35, float %6943, float 0.000000e+00)  ; FMax(a,b)
  %6945 = fadd fast float %6944, 0x3F10000000000000
  %6946 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6422, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6945)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6947 = extractvalue %dx.types.ResRet.f32 %6946, 0
  br label %6948

; <label>:6948                                    ; preds = %6942, %6939
  %6949 = phi float [ %6947, %6942 ], [ 1.000000e+00, %6939 ]
  %6950 = fcmp fast ogt float %6525, 0.000000e+00
  br i1 %6950, label %6951, label %6958, !dx.controlflow.hints !117

; <label>:6951                                    ; preds = %6948
  %6952 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6953 = fadd fast float %6952, %6415
  %6954 = call float @dx.op.binary.f32(i32 35, float %6953, float 0.000000e+00)  ; FMax(a,b)
  %6955 = fadd fast float %6954, 0x3F10000000000000
  %6956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6407, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  br label %6958

; <label>:6958                                    ; preds = %6951, %6948
  %6959 = phi float [ %6957, %6951 ], [ 1.000000e+00, %6948 ]
  %6960 = fsub fast float %6940, %6931
  %6961 = fmul fast float %6960, %6469
  %6962 = fadd fast float %6961, %6931
  %6963 = fsub fast float %6949, %6962
  %6964 = fmul fast float %6963, %6499
  %6965 = fadd fast float %6964, %6962
  %6966 = fsub fast float %6959, %6965
  %6967 = fmul fast float %6966, %6525
  %6968 = fadd fast float %6967, %6965
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6971 = fcmp fast ogt float %6970, 0.000000e+00
  br i1 %6971, label %6972, label %7012, !dx.controlflow.hints !118

; <label>:6972                                    ; preds = %6958
  %6973 = fcmp fast ugt float %6970, 0.000000e+00
  br i1 %6973, label %6974, label %7009

; <label>:6974                                    ; preds = %6972
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.f32 %6980, 0
  %6982 = extractvalue %dx.types.CBufRet.f32 %6980, 1
  %6983 = extractvalue %dx.types.CBufRet.f32 %6980, 2
  %6984 = extractvalue %dx.types.CBufRet.f32 %6980, 3
  %6985 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6986 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %6991 = fadd fast float %6988, %6384
  %6992 = fadd fast float %6989, %6385
  %6993 = fadd fast float %6990, %6386
  %6994 = fmul fast float %6991, %6976
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6977, float %6992, float %6994)  ; FMad(a,b,c)
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6978, float %6993, float %6995)  ; FMad(a,b,c)
  %6997 = fadd fast float %6996, %6979
  %6998 = fmul fast float %6991, %6981
  %6999 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6992, float %6998)  ; FMad(a,b,c)
  %7000 = call float @dx.op.tertiary.f32(i32 46, float %6983, float %6993, float %6999)  ; FMad(a,b,c)
  %7001 = fadd fast float %7000, %6984
  %7002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6997, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = fmul fast float %7003, %6986
  %7005 = fadd fast float %7004, %6985
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7007 = fmul fast float %7006, %6970
  %7008 = fsub fast float 1.000000e+00, %7007
  br label %7009

; <label>:7009                                    ; preds = %6974, %6972
  %7010 = phi float [ %7008, %6974 ], [ 1.000000e+00, %6972 ]
  %7011 = fmul fast float %7010, %6968
  br label %7012

; <label>:7012                                    ; preds = %7009, %6958, %6364
  %7013 = phi float [ 1.000000e+00, %6364 ], [ %7011, %7009 ], [ %6968, %6958 ]
  %7014 = call float @dx.op.binary.f32(i32 36, float %7013, float %7013)  ; FMin(a,b)
  %7015 = call float @dx.op.binary.f32(i32 36, float %7013, float %7014)  ; FMin(a,b)
  %7016 = fcmp fast ogt float %7015, 0.000000e+00
  br i1 %7016, label %7017, label %7177, !dx.controlflow.hints !119

; <label>:7017                                    ; preds = %7012
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.CBufRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7018, 3
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.CBufRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %7032 = extractvalue %dx.types.CBufRet.f32 %7028, 3
  %7033 = fmul fast float %7019, %6384
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %7020, float %7033)  ; FMad(a,b,c)
  %7035 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %7021, float %7034)  ; FMad(a,b,c)
  %7036 = fadd fast float %7035, %7022
  %7037 = fmul fast float %7024, %6384
  %7038 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %7025, float %7037)  ; FMad(a,b,c)
  %7039 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %7026, float %7038)  ; FMad(a,b,c)
  %7040 = fadd fast float %7039, %7027
  %7041 = fmul fast float %7029, %6384
  %7042 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %7030, float %7041)  ; FMad(a,b,c)
  %7043 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %7031, float %7042)  ; FMad(a,b,c)
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7048 = fmul fast float %7047, %7036
  %7049 = fmul fast float %7047, %7040
  %7050 = fadd fast float %7048, %7045
  %7051 = fadd fast float %7049, %7046
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = fsub fast float %7050, %7053
  %7056 = fsub fast float %7051, %7054
  %7057 = fcmp fast olt float %7055, 0.000000e+00
  %7058 = fcmp fast olt float %7056, 0.000000e+00
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.CBufRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7063 = extractvalue %dx.types.CBufRet.f32 %7059, 3
  %7064 = select i1 %7057, float %7060, float %7062
  %7065 = select i1 %7058, float %7061, float %7063
  %7066 = fmul fast float %7064, %7055
  %7067 = fmul fast float %7065, %7056
  %7068 = call float @dx.op.unary.f32(i32 6, float %7066)  ; FAbs(value)
  %7069 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7070 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %7071 = call float @dx.op.binary.f32(i32 35, float %7068, float %7069)  ; FMax(a,b)
  %7072 = fsub fast float %7070, %7071
  %7073 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7074 = fcmp fast ogt float %7073, 0.000000e+00
  br i1 %7074, label %7075, label %7116, !dx.controlflow.hints !120

; <label>:7075                                    ; preds = %7017
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %7050, float %7051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7078 = fcmp fast ogt float %7077, 0.000000e+00
  br i1 %7078, label %7079, label %7111

; <label>:7079                                    ; preds = %7075
  %7080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %7050, float %7051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7081 = extractvalue %dx.types.ResRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.ResRet.f32 %7080, 1
  %7083 = extractvalue %dx.types.ResRet.f32 %7080, 2
  %7084 = extractvalue %dx.types.ResRet.f32 %7080, 3
  %7085 = fsub fast float 1.000000e+00, %7032
  %7086 = fsub fast float %7085, %7043
  %7087 = fmul fast float %7086, 0x400921FB60000000
  %7088 = fadd fast float %7087, 0x3FF921FB60000000
  %7089 = call float @dx.op.unary.f32(i32 13, float %7088)  ; Sin(value)
  %7090 = fadd fast float %7089, -1.000000e+00
  %7091 = fmul fast float %7090, 0x3FD45F3060000000
  %7092 = fmul fast float %7086, 0x401921FB60000000
  %7093 = fadd fast float %7092, 0x400921FB60000000
  %7094 = call float @dx.op.unary.f32(i32 13, float %7093)  ; Sin(value)
  %7095 = fadd fast float %7094, 0x3E7777A5C0000000
  %7096 = fmul fast float %7095, 0x3FC45F3060000000
  %7097 = fmul fast float %7086, 0x4022D97C80000000
  %7098 = fadd fast float %7097, 0x4012D97C80000000
  %7099 = call float @dx.op.unary.f32(i32 13, float %7098)  ; Sin(value)
  %7100 = fadd fast float %7099, 1.000000e+00
  %7101 = fmul fast float %7100, 0x3FBB2995E0000000
  %7102 = fmul fast float %7086, 0x402921FB60000000
  %7103 = fadd fast float %7102, 0x401921FB60000000
  %7104 = call float @dx.op.unary.f32(i32 13, float %7103)  ; Sin(value)
  %7105 = fadd fast float %7104, 0xBE8777A5C0000000
  %7106 = fmul fast float %7105, 0x3FB45F3060000000
  %7107 = call float @dx.op.dot4.f32(i32 56, float %7081, float %7082, float %7083, float %7084, float %7091, float %7096, float %7101, float %7106)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7108 = fmul fast float %7107, 0xBFF7154760000000
  %7109 = call float @dx.op.unary.f32(i32 21, float %7108)  ; Exp(value)
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  br label %7111

; <label>:7111                                    ; preds = %7079, %7075
  %7112 = phi float [ %7110, %7079 ], [ 1.000000e+00, %7075 ]
  %7113 = fadd fast float %7112, -1.000000e+00
  %7114 = fmul fast float %7113, %7073
  %7115 = fadd fast float %7114, 1.000000e+00
  br label %7116

; <label>:7116                                    ; preds = %7111, %7017
  %7117 = phi float [ %7115, %7111 ], [ 1.000000e+00, %7017 ]
  %7118 = fmul fast float %7117, %7013
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7123 = fadd fast float %7120, %158
  %7124 = fadd fast float %7121, %159
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7127 = fsub fast float -0.000000e+00, %7123
  %7128 = fsub fast float -0.000000e+00, %7124
  %7129 = fsub fast float %5712, %7122
  %7130 = fadd fast float %7129, %7126
  %7131 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7127, float %7128, float %7130)  ; Dot3(ax,ay,az,bx,by,bz)
  %7132 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6365, float %6366, float %6367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7133 = fdiv fast float 1.000000e+00, %7132
  %7134 = fmul fast float %7133, %7131
  %7135 = fmul fast float %6365, %7134
  %7136 = fmul fast float %6366, %7134
  %7137 = fadd fast float %7135, %7123
  %7138 = fadd fast float %7136, %7124
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = fsub fast float %7137, %7140
  %7143 = fsub fast float %7138, %7141
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7147 = fmul fast float %7142, %7145
  %7148 = fmul fast float %7143, %7146
  %7149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.i32 %7149, 3
  %7151 = icmp eq i32 %7150, 0
  br i1 %7151, label %7157, label %7152

; <label>:7152                                    ; preds = %7116
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7147, float %7148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  br label %7162

; <label>:7157                                    ; preds = %7116
  %7158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7147, float %7148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.ResRet.f32 %7158, 2
  br label %7162

; <label>:7162                                    ; preds = %7157, %7152
  %7163 = phi float [ %7154, %7152 ], [ %7159, %7157 ]
  %7164 = phi float [ %7155, %7152 ], [ %7160, %7157 ]
  %7165 = phi float [ %7156, %7152 ], [ %7161, %7157 ]
  %7166 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7167 = fmul fast float %7166, %7163
  %7168 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7169 = fsub fast float %7134, %7168
  %7170 = fsub fast float %7169, %7167
  %7171 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7170)  ; FMax(a,b)
  %7172 = fmul fast float %7171, %7164
  %7173 = call float @dx.op.binary.f32(i32 36, float %7165, float %7172)  ; FMin(a,b)
  %7174 = fmul fast float %7173, 0xBFF7154760000000
  %7175 = call float @dx.op.unary.f32(i32 21, float %7174)  ; Exp(value)
  %7176 = fmul fast float %7118, %7175
  br label %7177

; <label>:7177                                    ; preds = %7162, %7012
  %7178 = phi float [ %7176, %7162 ], [ %7013, %7012 ]
  %7179 = call float @dx.op.binary.f32(i32 36, float %7178, float %7178)  ; FMin(a,b)
  %7180 = call float @dx.op.binary.f32(i32 36, float %7178, float %7179)  ; FMin(a,b)
  %7181 = fcmp fast ogt float %7180, 0.000000e+00
  br i1 %7181, label %7182, label %7568, !dx.controlflow.hints !121

; <label>:7182                                    ; preds = %7177
  %7183 = fmul fast float %7178, %6376
  %7184 = fmul fast float %7178, %6377
  %7185 = fmul fast float %7178, %6378
  %7186 = fsub fast float %160, %5500
  %7187 = fcmp fast ogt float %7186, 0.000000e+00
  %7188 = fmul fast float %6365, 5.120000e+02
  %7189 = fmul fast float %6366, 5.120000e+02
  %7190 = fmul fast float %6367, 5.120000e+02
  %7191 = fadd fast float %7190, %160
  %7192 = fsub fast float %5500, %7191
  %7193 = fmul fast float %7192, 2.000000e+00
  %7194 = fadd fast float %7193, %7191
  %7195 = select i1 %7187, float %7194, float %7191
  %7196 = fsub fast float %7195, %160
  %7197 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7196, float %7188, float %7189, float %7196)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = call float @dx.op.unary.f32(i32 25, float %7197)  ; Rsqrt(value)
  %7199 = fmul fast float %7198, %7188
  %7200 = fmul fast float %7198, %7189
  %7201 = fmul fast float %7198, %7196
  %7202 = fsub fast float %5500, %160
  %7203 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7202)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7199, float %7200, float %7201)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = fdiv fast float 1.000000e+00, %7204
  %7206 = fmul fast float %7205, %7203
  %7207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7186, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = fcmp fast olt float %7207, 0.000000e+00
  %7210 = zext i1 %7208 to i32
  %7211 = zext i1 %7209 to i32
  %7212 = sub nsw i32 %7210, %7211
  %7213 = sitofp i32 %7212 to float
  %7214 = fsub fast float %7195, %5500
  %7215 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7214, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = fcmp fast ogt float %7215, 0.000000e+00
  %7217 = fcmp fast olt float %7215, 0.000000e+00
  %7218 = zext i1 %7216 to i32
  %7219 = zext i1 %7217 to i32
  %7220 = sub nsw i32 %7218, %7219
  %7221 = sitofp i32 %7220 to float
  %7222 = fcmp fast une float %7213, %7221
  br i1 %7222, label %7223, label %7233

; <label>:7223                                    ; preds = %7182
  %7224 = fmul fast float %7206, %7201
  %7225 = fmul fast float %7206, %7200
  %7226 = fmul fast float %7206, %7199
  %7227 = fmul fast float %7226, %7226
  %7228 = fmul fast float %7225, %7225
  %7229 = fadd fast float %7227, %7228
  %7230 = fmul fast float %7224, %7224
  %7231 = fadd fast float %7229, %7230
  %7232 = call float @dx.op.unary.f32(i32 24, float %7231)  ; Sqrt(value)
  br label %7243

; <label>:7233                                    ; preds = %7182
  %7234 = icmp slt i32 %7212, 0
  br i1 %7234, label %7235, label %7243

; <label>:7235                                    ; preds = %7233
  %7236 = fsub fast float %160, %7195
  %7237 = fmul fast float %7188, %7188
  %7238 = fmul fast float %7189, %7189
  %7239 = fadd fast float %7237, %7238
  %7240 = fmul fast float %7236, %7236
  %7241 = fadd fast float %7239, %7240
  %7242 = call float @dx.op.unary.f32(i32 24, float %7241)  ; Sqrt(value)
  br label %7243

; <label>:7243                                    ; preds = %7235, %7233, %7223
  %7244 = phi float [ %7232, %7223 ], [ %7242, %7235 ], [ 0.000000e+00, %7233 ]
  %7245 = fsub fast float -0.000000e+00, %7244
  %7246 = select i1 %7187, float -0.000000e+00, float %7245
  %7247 = fmul fast float %5501, 0x3FF7154760000000
  %7248 = fmul fast float %7247, %7246
  %7249 = fmul fast float %5502, 0x3FF7154760000000
  %7250 = fmul fast float %7249, %7246
  %7251 = fmul fast float %5503, 0x3FF7154760000000
  %7252 = fmul fast float %7251, %7246
  %7253 = call float @dx.op.unary.f32(i32 21, float %7248)  ; Exp(value)
  %7254 = call float @dx.op.unary.f32(i32 21, float %7250)  ; Exp(value)
  %7255 = call float @dx.op.unary.f32(i32 21, float %7252)  ; Exp(value)
  %7256 = call float @dx.op.unary.f32(i32 7, float %7253)  ; Saturate(value)
  %7257 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7258 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7259 = fmul fast float %7183, %7256
  %7260 = fmul fast float %7184, %7257
  %7261 = fmul fast float %7185, %7258
  %7262 = fsub fast float %6365, %5700
  %7263 = fsub fast float %6366, %5699
  %7264 = fsub fast float %6367, %5698
  %7265 = call float @dx.op.dot3.f32(i32 55, float %7262, float %7263, float %7264, float %7262, float %7263, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7266 = call float @dx.op.unary.f32(i32 25, float %7265)  ; Rsqrt(value)
  %7267 = fmul fast float %7266, %7262
  %7268 = fmul fast float %7266, %7263
  %7269 = fmul fast float %7266, %7264
  %7270 = call float @dx.op.dot3.f32(i32 55, float %6365, float %6366, float %6367, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %7271 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7267, float %7268, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7273 = fmul fast float %7272, %7272
  %7274 = fmul fast float %7273, %5762
  %7275 = call float @dx.op.unary.f32(i32 7, float %7274)  ; Saturate(value)
  %7276 = fmul fast float %7275, %7272
  %7277 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %7267, float %7268, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7278 = fmul fast float %7277, %7277
  %7279 = call float @dx.op.unary.f32(i32 6, float %7270)  ; FAbs(value)
  %7280 = call float @dx.op.binary.f32(i32 35, float %6197, float 0x3F847AE140000000)  ; FMax(a,b)
  %7281 = fmul fast float %7280, %7280
  %7282 = fmul fast float %7281, %7281
  %7283 = fsub fast float 1.000000e+00, %7282
  %7284 = fmul fast float %5749, %5749
  %7285 = fmul fast float %7284, %7283
  %7286 = fadd fast float %7285, %7282
  %7287 = bitcast float %7286 to i32
  %7288 = ashr i32 %7287, 1
  %7289 = add nsw i32 %7288, 532487669
  %7290 = bitcast i32 %7289 to float
  %7291 = fadd fast float %7290, %5749
  %7292 = fmul fast float %7282, %7278
  %7293 = fsub fast float 1.000000e+00, %7278
  %7294 = fadd fast float %7293, %7292
  %7295 = fmul fast float %7279, %7279
  %7296 = fmul fast float %7295, %7283
  %7297 = fadd fast float %7296, %7282
  %7298 = bitcast float %7297 to i32
  %7299 = ashr i32 %7298, 1
  %7300 = add nsw i32 %7299, 532487669
  %7301 = bitcast i32 %7300 to float
  %7302 = fadd fast float %7301, %7279
  %7303 = fmul fast float %7294, %7294
  %7304 = fmul fast float %7303, %7291
  %7305 = fmul fast float %7304, %7302
  %7306 = fdiv fast float 0x3FF0A00000000000, %7305
  %7307 = fmul fast float %7306, %7282
  %7308 = fmul fast float %6038, 0x3FF9999980000000
  %7309 = fsub fast float 5.000000e+00, %7308
  %7310 = call float @dx.op.unary.f32(i32 6, float %7271)  ; FAbs(value)
  %7311 = fsub fast float 1.000000e+00, %7310
  %7312 = fmul fast float %6038, 0x41D9660740000000
  %7313 = fadd fast float %7312, 0xC1EFBF8940000000
  %7314 = bitcast float %7311 to i32
  %7315 = sitofp i32 %7314 to float
  %7316 = fmul fast float %7315, %7309
  %7317 = fadd fast float %7313, %7316
  %7318 = fptosi float %7317 to i32
  %7319 = bitcast i32 %7318 to float
  %7320 = fsub fast float 1.000000e+00, %5707
  %7321 = fsub fast float 1.000000e+00, %5708
  %7322 = fsub fast float 1.000000e+00, %5747
  %7323 = fmul fast float %7319, %7320
  %7324 = fmul fast float %7319, %7321
  %7325 = fmul fast float %7319, %7322
  %7326 = fadd fast float %7323, %5707
  %7327 = fadd fast float %7324, %5708
  %7328 = fadd fast float %7325, %5747
  br i1 %6061, label %7329, label %7352

; <label>:7329                                    ; preds = %7243
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7334 = fadd fast float %7331, -5.000000e-01
  %7335 = fadd fast float %7332, -5.000000e-01
  %7336 = fadd fast float %7333, -5.000000e-01
  %7337 = fmul fast float %5707, 4.000000e+00
  %7338 = fmul fast float %7337, %7320
  %7339 = fmul fast float %7338, %7334
  %7340 = fmul fast float %5708, 4.000000e+00
  %7341 = fmul fast float %7340, %7321
  %7342 = fmul fast float %7341, %7335
  %7343 = fmul fast float %5747, 4.000000e+00
  %7344 = fmul fast float %7343, %7322
  %7345 = fmul fast float %7344, %7336
  %7346 = fadd fast float %7339, %7326
  %7347 = fadd fast float %7342, %7327
  %7348 = fadd fast float %7345, %7328
  %7349 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7350 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7351 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  br label %7352

; <label>:7352                                    ; preds = %7329, %7243
  %7353 = phi float [ %7349, %7329 ], [ %7326, %7243 ]
  %7354 = phi float [ %7350, %7329 ], [ %7327, %7243 ]
  %7355 = phi float [ %7351, %7329 ], [ %7328, %7243 ]
  %7356 = fmul fast float %7270, 9.843750e-01
  %7357 = fadd fast float %7356, 7.812500e-03
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7357, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.ResRet.f32 %7358, 2
  %7362 = extractvalue %dx.types.ResRet.f32 %7358, 3
  %7363 = fsub fast float %7361, %7359
  %7364 = fsub fast float %7362, %7360
  %7365 = fmul fast float %7363, %6048
  %7366 = fmul fast float %7364, %6048
  %7367 = fadd fast float %7365, %7359
  %7368 = fadd fast float %7366, %7360
  %7369 = fmul fast float %7367, %5707
  %7370 = fmul fast float %7367, %5708
  %7371 = fmul fast float %7367, %5747
  %7372 = fadd fast float %7369, %7368
  %7373 = fadd fast float %7370, %7368
  %7374 = fadd fast float %7371, %7368
  br i1 %6061, label %7375, label %7398

; <label>:7375                                    ; preds = %7352
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %7270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = fadd fast float %7377, -5.000000e-01
  %7381 = fadd fast float %7378, -5.000000e-01
  %7382 = fadd fast float %7379, -5.000000e-01
  %7383 = fmul fast float %5707, 4.000000e+00
  %7384 = fmul fast float %7383, %7320
  %7385 = fmul fast float %7384, %7380
  %7386 = fmul fast float %5708, 4.000000e+00
  %7387 = fmul fast float %7386, %7321
  %7388 = fmul fast float %7387, %7381
  %7389 = fmul fast float %5747, 4.000000e+00
  %7390 = fmul fast float %7389, %7322
  %7391 = fmul fast float %7390, %7382
  %7392 = fadd fast float %7385, %7372
  %7393 = fadd fast float %7388, %7373
  %7394 = fadd fast float %7391, %7374
  %7395 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7396 = call float @dx.op.unary.f32(i32 7, float %7393)  ; Saturate(value)
  %7397 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  br label %7398

; <label>:7398                                    ; preds = %7375, %7352
  %7399 = phi float [ %7395, %7375 ], [ %7372, %7352 ]
  %7400 = phi float [ %7396, %7375 ], [ %7373, %7352 ]
  %7401 = phi float [ %7397, %7375 ], [ %7374, %7352 ]
  %7402 = call float @dx.op.binary.f32(i32 35, float %7400, float %7401)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7399, float %7402)  ; FMax(a,b)
  %7404 = fsub fast float 1.000000e+00, %7403
  %7405 = call float @dx.op.binary.f32(i32 35, float %7279, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7406 = fdiv fast float %4424, %7405
  %7407 = fmul fast float %6138, %7406
  %7408 = fmul fast float %6140, %7406
  %7409 = fmul fast float %6142, %7406
  %7410 = call float @dx.op.unary.f32(i32 21, float %7407)  ; Exp(value)
  %7411 = call float @dx.op.unary.f32(i32 21, float %7408)  ; Exp(value)
  %7412 = call float @dx.op.unary.f32(i32 21, float %7409)  ; Exp(value)
  %7413 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7414 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7415 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7416 = select i1 %6135, float %7413, float 0.000000e+00
  %7417 = select i1 %6136, float %7414, float 0.000000e+00
  %7418 = select i1 %6137, float %7415, float 0.000000e+00
  %7419 = fsub fast float -0.000000e+00, %5704
  %7420 = fsub fast float -0.000000e+00, %5705
  %7421 = fsub fast float -0.000000e+00, %5706
  %7422 = call float @dx.op.dot3.f32(i32 55, float %6365, float %6366, float %6367, float %7419, float %7420, float %7421)  ; Dot3(ax,ay,az,bx,by,bz)
  %7423 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7424 = fmul fast float %7423, 9.843750e-01
  %7425 = fadd fast float %7424, 7.812500e-03
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %7425, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.ResRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.ResRet.f32 %7426, 2
  %7430 = extractvalue %dx.types.ResRet.f32 %7426, 3
  %7431 = fsub fast float %7429, %7427
  %7432 = fsub fast float %7430, %7428
  %7433 = fmul fast float %7431, %6048
  %7434 = fmul fast float %7432, %6048
  %7435 = fadd fast float %7433, %7427
  %7436 = fadd fast float %7434, %7428
  %7437 = fmul fast float %7435, %5707
  %7438 = fmul fast float %7435, %5708
  %7439 = fmul fast float %7435, %5747
  %7440 = fadd fast float %7437, %7436
  %7441 = fadd fast float %7438, %7436
  %7442 = fadd fast float %7439, %7436
  br i1 %6061, label %7443, label %7466

; <label>:7443                                    ; preds = %7398
  %7444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %7423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = fadd fast float %7445, -5.000000e-01
  %7449 = fadd fast float %7446, -5.000000e-01
  %7450 = fadd fast float %7447, -5.000000e-01
  %7451 = fmul fast float %5707, 4.000000e+00
  %7452 = fmul fast float %7451, %7320
  %7453 = fmul fast float %7452, %7448
  %7454 = fmul fast float %5708, 4.000000e+00
  %7455 = fmul fast float %7454, %7321
  %7456 = fmul fast float %7455, %7449
  %7457 = fmul fast float %5747, 4.000000e+00
  %7458 = fmul fast float %7457, %7322
  %7459 = fmul fast float %7458, %7450
  %7460 = fadd fast float %7453, %7440
  %7461 = fadd fast float %7456, %7441
  %7462 = fadd fast float %7459, %7442
  %7463 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7464 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7465 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  br label %7466

; <label>:7466                                    ; preds = %7443, %7398
  %7467 = phi float [ %7463, %7443 ], [ %7440, %7398 ]
  %7468 = phi float [ %7464, %7443 ], [ %7441, %7398 ]
  %7469 = phi float [ %7465, %7443 ], [ %7442, %7398 ]
  %7470 = call float @dx.op.binary.f32(i32 35, float %7468, float %7469)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7467, float %7470)  ; FMax(a,b)
  %7472 = fsub fast float 1.000000e+00, %7471
  %7473 = fmul fast float %6197, %6203
  %7474 = fadd fast float %6196, %7473
  %7475 = call float @dx.op.unary.f32(i32 7, float %7474)  ; Saturate(value)
  %7476 = fsub fast float %6365, %5755
  %7477 = fsub fast float %6366, %5756
  %7478 = fsub fast float %6367, %5757
  %7479 = call float @dx.op.dot3.f32(i32 55, float %7476, float %7477, float %7478, float %7476, float %7477, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7480 = call float @dx.op.unary.f32(i32 25, float %7479)  ; Rsqrt(value)
  %7481 = fmul fast float %7480, %7476
  %7482 = fmul fast float %7480, %7477
  %7483 = fmul fast float %7480, %7478
  %7484 = call float @dx.op.dot3.f32(i32 55, float %7419, float %7420, float %7421, float %7481, float %7482, float %7483)  ; Dot3(ax,ay,az,bx,by,bz)
  %7485 = fmul fast float %7484, %7484
  %7486 = call float @dx.op.unary.f32(i32 6, float %7423)  ; FAbs(value)
  %7487 = call float @dx.op.binary.f32(i32 35, float %7475, float 0x3F847AE140000000)  ; FMax(a,b)
  %7488 = fmul fast float %7487, %7487
  %7489 = fmul fast float %7488, %7488
  %7490 = fsub fast float 1.000000e+00, %7489
  %7491 = fmul fast float %7284, %7490
  %7492 = fadd fast float %7491, %7489
  %7493 = bitcast float %7492 to i32
  %7494 = ashr i32 %7493, 1
  %7495 = add nsw i32 %7494, 532487669
  %7496 = bitcast i32 %7495 to float
  %7497 = fadd fast float %7496, %5749
  %7498 = fmul fast float %7489, %7485
  %7499 = fsub fast float 1.000000e+00, %7485
  %7500 = fadd fast float %7499, %7498
  %7501 = fmul fast float %7486, %7486
  %7502 = fmul fast float %7501, %7490
  %7503 = fadd fast float %7502, %7489
  %7504 = bitcast float %7503 to i32
  %7505 = ashr i32 %7504, 1
  %7506 = add nsw i32 %7505, 532487669
  %7507 = bitcast i32 %7506 to float
  %7508 = fadd fast float %7507, %7486
  %7509 = fmul fast float %7500, %7500
  %7510 = fmul fast float %7509, %7497
  %7511 = fmul fast float %7510, %7508
  %7512 = fdiv fast float 0x3FF0A00000000000, %7511
  %7513 = fmul fast float %7512, %7489
  %7514 = fmul fast float %7423, %7416
  %7515 = fmul fast float %7423, %7417
  %7516 = fmul fast float %7423, %7418
  %7517 = fmul fast float %7514, %7472
  %7518 = fmul fast float %7517, %7513
  %7519 = fmul fast float %7515, %7472
  %7520 = fmul fast float %7519, %7513
  %7521 = fmul fast float %7516, %7472
  %7522 = fmul fast float %7521, %7513
  %7523 = fmul fast float %7353, %7307
  %7524 = fmul fast float %7354, %7307
  %7525 = fmul fast float %7355, %7307
  %7526 = fsub fast float 1.000000e+00, %7271
  %7527 = bitcast float %7526 to i32
  %7528 = sitofp i32 %7527 to float
  %7529 = fmul fast float %7528, 5.000000e+00
  %7530 = fadd fast float %7529, 0xC1EFBF8940000000
  %7531 = fptosi float %7530 to i32
  %7532 = bitcast i32 %7531 to float
  %7533 = fmul fast float %7532, %5071
  %7534 = fmul fast float %7404, %7533
  %7535 = fmul fast float %7534, %6129
  %7536 = fmul fast float %7534, %6130
  %7537 = fmul fast float %7534, %6131
  %7538 = fadd fast float %7535, %7523
  %7539 = fadd fast float %7536, %7524
  %7540 = fadd fast float %7537, %7525
  %7541 = fmul fast float %7538, %7276
  %7542 = fmul fast float %7539, %7276
  %7543 = fmul fast float %7540, %7276
  %7544 = fmul fast float %7276, %7259
  %7545 = fmul fast float %7544, %7404
  %7546 = fmul fast float %7276, %7260
  %7547 = fmul fast float %7546, %7404
  %7548 = fmul fast float %7276, %7261
  %7549 = fmul fast float %7548, %7404
  %7550 = fadd fast float %7541, %7518
  %7551 = fadd fast float %7542, %7520
  %7552 = fadd fast float %7543, %7522
  %7553 = fmul fast float %7550, %7259
  %7554 = fmul fast float %7551, %7260
  %7555 = fmul fast float %7552, %7261
  %7556 = fadd fast float %7545, %6111
  %7557 = fmul fast float %7556, %5067
  %7558 = fadd fast float %7547, %6113
  %7559 = fmul fast float %7558, %5067
  %7560 = fadd fast float %7549, %6115
  %7561 = fmul fast float %7560, %5067
  %7562 = fadd fast float %7553, %6351
  %7563 = fmul fast float %7562, %5067
  %7564 = fadd fast float %7554, %6355
  %7565 = fmul fast float %7564, %5067
  %7566 = fadd fast float %7555, %6359
  %7567 = fmul fast float %7566, %5067
  br label %7568

; <label>:7568                                    ; preds = %7466, %7177, %6335
  %7569 = phi float [ %6352, %6335 ], [ %6352, %7177 ], [ %7563, %7466 ]
  %7570 = phi float [ %6356, %6335 ], [ %6356, %7177 ], [ %7565, %7466 ]
  %7571 = phi float [ %6360, %6335 ], [ %6360, %7177 ], [ %7567, %7466 ]
  %7572 = phi float [ %6224, %6335 ], [ %6224, %7177 ], [ %7557, %7466 ]
  %7573 = phi float [ %6225, %6335 ], [ %6225, %7177 ], [ %7559, %7466 ]
  %7574 = phi float [ %6226, %6335 ], [ %6226, %7177 ], [ %7561, %7466 ]
  %7575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.i32 %7575, 0
  %7577 = icmp eq i32 %7576, 0
  br i1 %7577, label %8352, label %7578

; <label>:7578                                    ; preds = %7568
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 2
  %7581 = extractvalue %dx.types.CBufRet.f32 %7579, 3
  %7582 = fmul fast float %7580, %103
  %7583 = fmul fast float %7581, %104
  %7584 = fptoui float %7582 to i32
  %7585 = fptoui float %7583 to i32
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 2
  %7589 = extractvalue %dx.types.CBufRet.f32 %7586, 3
  %7590 = fadd fast float %94, -4.000000e+00
  %7591 = call float @dx.op.binary.f32(i32 35, float %7590, float 0.000000e+00)  ; FMax(a,b)
  %7592 = fadd fast float %7591, %7587
  %7593 = fmul fast float %7592, %7588
  %7594 = call float @dx.op.unary.f32(i32 23, float %7593)  ; Log(value)
  %7595 = fmul fast float %7594, %7589
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 2
  %7598 = fmul fast float %7595, %7597
  %7599 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.i32 %7600, 1
  %7602 = add i32 %7601, -1
  %7603 = uitofp i32 %7601 to float
  %7604 = fmul fast float %7603, %7599
  %7605 = fptoui float %7604 to i32
  %7606 = call i32 @dx.op.binary.i32(i32 40, i32 %7605, i32 %7602)  ; UMin(a,b)
  %7607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.i32 %7607, 2
  %7609 = extractvalue %dx.types.CBufRet.i32 %7607, 3
  %7610 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7585, i32 %7608, i32 %7584)  ; UMad(a,b,c)
  %7611 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7606, i32 %7609, i32 %7610)  ; UMad(a,b,c)
  %7612 = add nsw i32 %7576, -1
  %7613 = call i32 @dx.op.binary.i32(i32 37, i32 %7612, i32 0)  ; IMax(a,b)
  %7614 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %7615 = fptoui float %7614 to i32
  %7616 = lshr i32 %7615, 5
  %7617 = call i32 @dx.op.binary.i32(i32 40, i32 %7616, i32 8191)  ; UMin(a,b)
  %7618 = shl i32 %7617, 2
  %7619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7618, i32 undef)  ; BufferLoad(srv,index,wot)
  %7620 = extractvalue %dx.types.ResRet.i32 %7619, 0
  %7621 = lshr i32 %7620, 16
  %7622 = and i32 %7620, 65535
  %7623 = lshr i32 %7620, 21
  %7624 = lshr i32 %7622, 5
  %7625 = call i32 @dx.op.binary.i32(i32 40, i32 %7624, i32 %7613)  ; UMin(a,b)
  %7626 = icmp ugt i32 %7623, %7625
  br i1 %7626, label %8352, label %7627

; <label>:7627                                    ; preds = %7578
  br label %7628

; <label>:7628                                    ; preds = %8342, %7627
  %7629 = phi i32 [ %8349, %8342 ], [ %7623, %7627 ]
  %7630 = phi float [ %8343, %8342 ], [ %7569, %7627 ]
  %7631 = phi float [ %8344, %8342 ], [ %7570, %7627 ]
  %7632 = phi float [ %8345, %8342 ], [ %7571, %7627 ]
  %7633 = phi float [ %8346, %8342 ], [ %7572, %7627 ]
  %7634 = phi float [ %8347, %8342 ], [ %7573, %7627 ]
  %7635 = phi float [ %8348, %8342 ], [ %7574, %7627 ]
  %7636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.i32 %7636, 0
  %7638 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7611, i32 %7637, i32 %7629)  ; UMad(a,b,c)
  %7639 = shl i32 %7638, 2
  %7640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7639, i32 undef)  ; BufferLoad(srv,index,wot)
  %7641 = extractvalue %dx.types.ResRet.i32 %7640, 0
  %7642 = shl i32 %7629, 5
  %7643 = sub nsw i32 %7621, %7642
  %7644 = call i32 @dx.op.binary.i32(i32 37, i32 %7643, i32 0)  ; IMax(a,b)
  %7645 = call i32 @dx.op.binary.i32(i32 38, i32 %7644, i32 31)  ; IMin(a,b)
  %7646 = sub nsw i32 1, %7621
  %7647 = add nsw i32 %7646, %7622
  %7648 = call i32 @dx.op.binary.i32(i32 37, i32 %7647, i32 0)  ; IMax(a,b)
  %7649 = call i32 @dx.op.binary.i32(i32 38, i32 %7648, i32 32)  ; IMin(a,b)
  %7650 = and i32 %7649, 31
  %7651 = shl i32 -1, %7650
  %7652 = xor i32 %7651, -1
  %7653 = and i32 %7645, 31
  %7654 = shl i32 %7652, %7653
  %7655 = icmp eq i32 %7649, 32
  %7656 = select i1 %7655, i32 -1, i32 %7654
  %7657 = and i32 %7656, %7641
  %7658 = icmp eq i32 %7657, 0
  br i1 %7658, label %8342, label %7659

; <label>:7659                                    ; preds = %7628
  br label %7660

; <label>:7660                                    ; preds = %7795, %7659
  %7661 = phi i32 [ %7672, %7795 ], [ %7657, %7659 ]
  %7662 = phi float [ %7796, %7795 ], [ %7630, %7659 ]
  %7663 = phi float [ %7797, %7795 ], [ %7631, %7659 ]
  %7664 = phi float [ %7798, %7795 ], [ %7632, %7659 ]
  %7665 = phi float [ %7799, %7795 ], [ %7633, %7659 ]
  %7666 = phi float [ %7800, %7795 ], [ %7634, %7659 ]
  %7667 = phi float [ %7801, %7795 ], [ %7635, %7659 ]
  %7668 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7661)  ; FirstbitLo(value)
  %7669 = add i32 %7668, %7642
  %7670 = and i32 %7668, 31
  %7671 = shl i32 1, %7670
  %7672 = xor i32 %7671, %7661
  %7673 = mul i32 %7669, 112
  %7674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7673, i32 undef)  ; BufferLoad(srv,index,wot)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.ResRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.ResRet.f32 %7674, 2
  %7678 = or i32 %7673, 12
  %7679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7678, i32 undef)  ; BufferLoad(srv,index,wot)
  %7680 = extractvalue %dx.types.ResRet.f32 %7679, 0
  %7681 = add i32 %7673, 16
  %7682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7681, i32 undef)  ; BufferLoad(srv,index,wot)
  %7683 = extractvalue %dx.types.ResRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.ResRet.f32 %7682, 1
  %7685 = extractvalue %dx.types.ResRet.f32 %7682, 2
  %7686 = add i32 %7673, 28
  %7687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7686, i32 undef)  ; BufferLoad(srv,index,wot)
  %7688 = extractvalue %dx.types.ResRet.i32 %7687, 0
  %7689 = add i32 %7673, 44
  %7690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7689, i32 undef)  ; BufferLoad(srv,index,wot)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = add i32 %7673, 48
  %7693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7692, i32 undef)  ; BufferLoad(srv,index,wot)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.ResRet.f32 %7693, 3
  %7698 = add i32 %7673, 64
  %7699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7698, i32 undef)  ; BufferLoad(srv,index,wot)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.ResRet.f32 %7699, 1
  %7702 = extractvalue %dx.types.ResRet.f32 %7699, 2
  %7703 = extractvalue %dx.types.ResRet.f32 %7699, 3
  %7704 = add i32 %7673, 80
  %7705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7704, i32 undef)  ; BufferLoad(srv,index,wot)
  %7706 = extractvalue %dx.types.ResRet.f32 %7705, 1
  %7707 = extractvalue %dx.types.ResRet.f32 %7705, 2
  %7708 = add i32 %7673, 92
  %7709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7708, i32 undef)  ; BufferLoad(srv,index,wot)
  %7710 = extractvalue %dx.types.ResRet.i32 %7709, 0
  %7711 = call float @dx.op.dot3.f32(i32 55, float %7675, float %7676, float %7677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7712 = select i1 %220, float %7706, float %7675
  %7713 = select i1 %220, float %7711, float %7676
  %7714 = select i1 %220, float %7707, float %7677
  %7715 = and i32 %7710, 65535
  %7716 = uitofp i32 %7715 to float
  %7717 = lshr i32 %7710, 16
  %7718 = uitofp i32 %7717 to float
  %7719 = and i32 %7688, 65535
  %7720 = and i32 %7688, 50331648
  %7721 = icmp slt i32 %7688, 0
  %7722 = icmp eq i32 %7720, 33554432
  %7723 = fsub fast float %7694, %158
  %7724 = fsub fast float %7695, %159
  %7725 = fsub fast float %7696, %160
  %7726 = call float @dx.op.dot3.f32(i32 55, float %7723, float %7724, float %7725, float %7723, float %7724, float %7725)  ; Dot3(ax,ay,az,bx,by,bz)
  %7727 = call float @dx.op.unary.f32(i32 24, float %7726)  ; Sqrt(value)
  %7728 = fdiv fast float 1.000000e+00, %7727
  %7729 = fmul fast float %7728, %7723
  %7730 = fmul fast float %7728, %7724
  %7731 = fmul fast float %7728, %7725
  %7732 = fadd fast float %7727, %7680
  %7733 = fdiv fast float 1.000000e+00, %7732
  %7734 = fmul float %7691, %7733
  %7735 = fmul float %7734, %7734
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  br i1 %7722, label %7737, label %7758

; <label>:7737                                    ; preds = %7660
  %7738 = fmul fast float %7702, %7683
  %7739 = fmul fast float %7702, %7684
  %7740 = fmul fast float %7702, %7685
  %7741 = fadd fast float %7723, %7738
  %7742 = fadd fast float %7724, %7739
  %7743 = fadd fast float %7725, %7740
  %7744 = call float @dx.op.dot3.f32(i32 55, float %7741, float %7742, float %7743, float %7741, float %7742, float %7743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7745 = call float @dx.op.unary.f32(i32 25, float %7744)  ; Rsqrt(value)
  %7746 = fmul fast float %7745, %7741
  %7747 = fmul fast float %7745, %7742
  %7748 = fmul fast float %7745, %7743
  %7749 = fsub fast float %158, %7694
  %7750 = fsub fast float %159, %7695
  %7751 = fsub fast float %160, %7696
  %7752 = fsub fast float -0.000000e+00, %7749
  %7753 = fsub fast float -0.000000e+00, %7750
  %7754 = fsub fast float -0.000000e+00, %7751
  %7755 = call float @dx.op.dot3.f32(i32 55, float %7752, float %7753, float %7754, float %7683, float %7684, float %7685)  ; Dot3(ax,ay,az,bx,by,bz)
  %7756 = fcmp fast ogt float %7755, 0.000000e+00
  %7757 = uitofp i1 %7756 to float
  br label %7758

; <label>:7758                                    ; preds = %7737, %7660
  %7759 = phi float [ %7757, %7737 ], [ 1.000000e+00, %7660 ]
  %7760 = phi float [ %7746, %7737 ], [ %7729, %7660 ]
  %7761 = phi float [ %7747, %7737 ], [ %7730, %7660 ]
  %7762 = phi float [ %7748, %7737 ], [ %7731, %7660 ]
  %7763 = call float @dx.op.dot3.f32(i32 55, float %7683, float %7684, float %7685, float %7760, float %7761, float %7762)  ; Dot3(ax,ay,az,bx,by,bz)
  %7764 = fmul fast float %7763, %7763
  %7765 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  %7766 = fsub fast float 1.000000e+00, %7765
  %7767 = fmul fast float %7766, 5.000000e-01
  %7768 = fcmp fast ogt float %7763, 0.000000e+00
  %7769 = fsub fast float 1.000000e+00, %7767
  %7770 = select i1 %7768, float %7767, float %7769
  %7771 = fmul fast float %7770, %7718
  %7772 = fadd fast float %7771, %7716
  %7773 = fmul fast float %7772, 0x3EF0001000000000
  %7774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %7773, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7775 = extractvalue %dx.types.ResRet.f32 %7774, 0
  %7776 = fmul fast float %7763, %7700
  %7777 = fadd fast float %7776, %7701
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = select i1 %7722, float 1.000000e+00, float %7778
  %7780 = select i1 %7722, float %7778, float 1.000000e+00
  %7781 = fmul fast float %7727, %7697
  %7782 = fsub fast float 1.000000e+00, %7781
  %7783 = fmul fast float %7782, %7703
  %7784 = call float @dx.op.unary.f32(i32 7, float %7783)  ; Saturate(value)
  %7785 = fmul fast float %7784, %7780
  %7786 = fmul fast float %7785, 2.000000e+00
  %7787 = fsub fast float 3.000000e+00, %7786
  %7788 = fmul fast float %7775, %7759
  %7789 = fmul fast float %7785, %7785
  %7790 = fmul fast float %7789, %7788
  %7791 = fmul fast float %7790, %7787
  %7792 = call float @dx.op.binary.f32(i32 36, float %7791, float %7791)  ; FMin(a,b)
  %7793 = call float @dx.op.binary.f32(i32 36, float %7791, float %7792)  ; FMin(a,b)
  %7794 = fcmp fast ogt float %7793, 0.000000e+00
  br i1 %7794, label %7803, label %7795, !dx.controlflow.hints !122

; <label>:7795                                    ; preds = %8295, %7903, %7758
  %7796 = phi float [ %7662, %7903 ], [ %7662, %7758 ], [ %8338, %8295 ]
  %7797 = phi float [ %7663, %7903 ], [ %7663, %7758 ], [ %8339, %8295 ]
  %7798 = phi float [ %7664, %7903 ], [ %7664, %7758 ], [ %8340, %8295 ]
  %7799 = phi float [ %7665, %7903 ], [ %7665, %7758 ], [ %8332, %8295 ]
  %7800 = phi float [ %7666, %7903 ], [ %7666, %7758 ], [ %8333, %8295 ]
  %7801 = phi float [ %7667, %7903 ], [ %7667, %7758 ], [ %8334, %8295 ]
  %7802 = icmp eq i32 %7661, %7671
  br i1 %7802, label %8341, label %7660

; <label>:7803                                    ; preds = %7758
  %7804 = icmp eq i32 %7719, 255
  br i1 %7804, label %7903, label %7805, !dx.controlflow.hints !123

; <label>:7805                                    ; preds = %7803
  %7806 = mul nuw nsw i32 %7719, 176
  %7807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7806, i32 undef)  ; BufferLoad(srv,index,wot)
  %7808 = extractvalue %dx.types.ResRet.f32 %7807, 0
  %7809 = extractvalue %dx.types.ResRet.f32 %7807, 1
  %7810 = extractvalue %dx.types.ResRet.f32 %7807, 2
  %7811 = extractvalue %dx.types.ResRet.f32 %7807, 3
  %7812 = add nuw nsw i32 %7806, 16
  %7813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7812, i32 undef)  ; BufferLoad(srv,index,wot)
  %7814 = extractvalue %dx.types.ResRet.f32 %7813, 0
  %7815 = extractvalue %dx.types.ResRet.f32 %7813, 1
  %7816 = add nuw nsw i32 %7806, 32
  %7817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7816, i32 undef)  ; BufferLoad(srv,index,wot)
  %7818 = extractvalue %dx.types.ResRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.ResRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.ResRet.f32 %7817, 2
  %7821 = add nuw nsw i32 %7806, 48
  %7822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7821, i32 undef)  ; BufferLoad(srv,index,wot)
  %7823 = extractvalue %dx.types.ResRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.ResRet.f32 %7822, 1
  %7825 = extractvalue %dx.types.ResRet.f32 %7822, 2
  %7826 = extractvalue %dx.types.ResRet.f32 %7822, 3
  %7827 = add nuw nsw i32 %7806, 64
  %7828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7827, i32 undef)  ; BufferLoad(srv,index,wot)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.ResRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.ResRet.f32 %7828, 2
  %7832 = extractvalue %dx.types.ResRet.f32 %7828, 3
  %7833 = add nuw nsw i32 %7806, 80
  %7834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7833, i32 undef)  ; BufferLoad(srv,index,wot)
  %7835 = extractvalue %dx.types.ResRet.f32 %7834, 0
  %7836 = extractvalue %dx.types.ResRet.f32 %7834, 1
  %7837 = extractvalue %dx.types.ResRet.f32 %7834, 2
  %7838 = extractvalue %dx.types.ResRet.f32 %7834, 3
  %7839 = add nuw nsw i32 %7806, 96
  %7840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7839, i32 undef)  ; BufferLoad(srv,index,wot)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.ResRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.ResRet.f32 %7840, 2
  %7844 = extractvalue %dx.types.ResRet.f32 %7840, 3
  %7845 = bitcast float %7815 to i32
  %7846 = fmul fast float %7820, %110
  %7847 = fmul fast float %7820, %111
  %7848 = fmul fast float %7820, %112
  %7849 = fadd fast float %7846, %158
  %7850 = fadd fast float %7847, %159
  %7851 = fadd fast float %7848, %160
  %7852 = fmul fast float %7849, %7823
  %7853 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7829, float %7852)  ; FMad(a,b,c)
  %7854 = call float @dx.op.tertiary.f32(i32 46, float %7851, float %7835, float %7853)  ; FMad(a,b,c)
  %7855 = fadd fast float %7854, %7841
  %7856 = fmul fast float %7849, %7824
  %7857 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7830, float %7856)  ; FMad(a,b,c)
  %7858 = call float @dx.op.tertiary.f32(i32 46, float %7851, float %7836, float %7857)  ; FMad(a,b,c)
  %7859 = fadd fast float %7858, %7842
  %7860 = fmul fast float %7849, %7825
  %7861 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7831, float %7860)  ; FMad(a,b,c)
  %7862 = call float @dx.op.tertiary.f32(i32 46, float %7851, float %7837, float %7861)  ; FMad(a,b,c)
  %7863 = fadd fast float %7862, %7843
  %7864 = fmul fast float %7849, %7826
  %7865 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7832, float %7864)  ; FMad(a,b,c)
  %7866 = call float @dx.op.tertiary.f32(i32 46, float %7851, float %7838, float %7865)  ; FMad(a,b,c)
  %7867 = fadd fast float %7866, %7844
  %7868 = fdiv fast float %7855, %7867
  %7869 = fdiv fast float %7859, %7867
  %7870 = fdiv fast float %7863, %7867
  %7871 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7870)  ; FMax(a,b)
  %7872 = fmul fast float %233, 0x401921FB60000000
  %7873 = call float @dx.op.unary.f32(i32 13, float %7872)  ; Sin(value)
  %7874 = call float @dx.op.unary.f32(i32 12, float %7872)  ; Cos(value)
  %7875 = fsub fast float -0.000000e+00, %7873
  %7876 = fmul fast float %7810, 5.000000e-01
  %7877 = call float @dx.op.dot2.f32(i32 54, float %233, float %233, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7878 = call float @dx.op.unary.f32(i32 22, float %7877)  ; Frc(value)
  %7879 = fmul fast float %7878, 0x404A7DD040000000
  %7880 = call float @dx.op.unary.f32(i32 22, float %7879)  ; Frc(value)
  %7881 = fmul fast float %7880, %7819
  %7882 = fadd fast float %7881, %7876
  %7883 = call float @dx.op.tertiary.f32(i32 46, float %7882, float %7875, float 0.000000e+00)  ; FMad(a,b,c)
  %7884 = call float @dx.op.tertiary.f32(i32 46, float %7882, float %7874, float 0.000000e+00)  ; FMad(a,b,c)
  %7885 = fadd fast float %7883, %7868
  %7886 = fadd fast float %7884, %7869
  %7887 = fmul fast float %7885, %7814
  %7888 = fmul fast float %7886, %7814
  %7889 = call float @dx.op.binary.f32(i32 35, float %7887, float %7810)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 35, float %7888, float %7810)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 36, float %7889, float %7811)  ; FMin(a,b)
  %7892 = call float @dx.op.binary.f32(i32 36, float %7890, float %7811)  ; FMin(a,b)
  %7893 = fadd fast float %7891, %7808
  %7894 = fadd fast float %7892, %7809
  %7895 = uitofp i32 %7845 to float
  %7896 = fadd fast float %7871, %7818
  %7897 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %7893, float %7894, float %7895, float undef, i32 0, i32 0, i32 undef, float %7896)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7898 = extractvalue %dx.types.ResRet.f32 %7897, 0
  %7899 = fadd fast float %7898, -1.000000e+00
  %7900 = fmul fast float %7899, %7779
  %7901 = fadd fast float %7900, 1.000000e+00
  %7902 = fmul fast float %7901, %7791
  br label %7903

; <label>:7903                                    ; preds = %7805, %7803
  %7904 = phi float [ %7902, %7805 ], [ %7791, %7803 ]
  %7905 = call float @dx.op.binary.f32(i32 36, float %7904, float %7904)  ; FMin(a,b)
  %7906 = call float @dx.op.binary.f32(i32 36, float %7904, float %7905)  ; FMin(a,b)
  %7907 = fcmp fast ogt float %7906, 0.000000e+00
  br i1 %7907, label %7908, label %7795, !dx.controlflow.hints !124

; <label>:7908                                    ; preds = %7903
  %7909 = fmul fast float %7904, %7712
  %7910 = fmul fast float %7904, %7713
  %7911 = fmul fast float %7904, %7714
  %7912 = fsub fast float %7696, %5500
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  %7914 = fsub fast float %160, %5500
  %7915 = fcmp fast ogt float %7914, 0.000000e+00
  %7916 = xor i1 %7915, %7913
  %7917 = fsub fast float %5500, %7696
  %7918 = fmul fast float %7917, 2.000000e+00
  %7919 = fadd fast float %7918, %7696
  %7920 = select i1 %7916, float %7696, float %7919
  %7921 = fsub fast float %7920, %160
  %7922 = call float @dx.op.dot3.f32(i32 55, float %7723, float %7724, float %7921, float %7723, float %7724, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = call float @dx.op.unary.f32(i32 25, float %7922)  ; Rsqrt(value)
  %7924 = fmul fast float %7923, %7723
  %7925 = fmul fast float %7923, %7724
  %7926 = fmul fast float %7923, %7921
  %7927 = fsub fast float %5500, %160
  %7928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7924, float %7925, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7930 = fdiv fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7930, %7928
  %7932 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7914, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7933 = fcmp fast ogt float %7932, 0.000000e+00
  %7934 = fcmp fast olt float %7932, 0.000000e+00
  %7935 = zext i1 %7933 to i32
  %7936 = zext i1 %7934 to i32
  %7937 = sub nsw i32 %7935, %7936
  %7938 = sitofp i32 %7937 to float
  %7939 = fsub fast float %7920, %5500
  %7940 = call float @dx.op.dot3.f32(i32 55, float %7723, float %7724, float %7939, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  %7942 = fcmp fast olt float %7940, 0.000000e+00
  %7943 = zext i1 %7941 to i32
  %7944 = zext i1 %7942 to i32
  %7945 = sub nsw i32 %7943, %7944
  %7946 = sitofp i32 %7945 to float
  %7947 = fcmp fast une float %7938, %7946
  br i1 %7947, label %7948, label %7958

; <label>:7948                                    ; preds = %7908
  %7949 = fmul fast float %7931, %7926
  %7950 = fmul fast float %7931, %7925
  %7951 = fmul fast float %7931, %7924
  %7952 = fmul fast float %7951, %7951
  %7953 = fmul fast float %7950, %7950
  %7954 = fadd fast float %7952, %7953
  %7955 = fmul fast float %7949, %7949
  %7956 = fadd fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 24, float %7956)  ; Sqrt(value)
  br label %7970

; <label>:7958                                    ; preds = %7908
  %7959 = icmp slt i32 %7937, 0
  br i1 %7959, label %7960, label %7970

; <label>:7960                                    ; preds = %7958
  %7961 = fsub fast float %158, %7694
  %7962 = fsub fast float %159, %7695
  %7963 = fsub fast float %160, %7920
  %7964 = fmul fast float %7961, %7961
  %7965 = fmul fast float %7962, %7962
  %7966 = fadd fast float %7964, %7965
  %7967 = fmul fast float %7963, %7963
  %7968 = fadd fast float %7966, %7967
  %7969 = call float @dx.op.unary.f32(i32 24, float %7968)  ; Sqrt(value)
  br label %7970

; <label>:7970                                    ; preds = %7960, %7958, %7948
  %7971 = phi float [ %7957, %7948 ], [ %7969, %7960 ], [ 0.000000e+00, %7958 ]
  %7972 = and i1 %7915, %7913
  %7973 = fsub fast float -0.000000e+00, %7971
  %7974 = select i1 %7972, float -0.000000e+00, float %7973
  %7975 = fmul fast float %5501, 0x3FF7154760000000
  %7976 = fmul fast float %7975, %7974
  %7977 = fmul fast float %5502, 0x3FF7154760000000
  %7978 = fmul fast float %7977, %7974
  %7979 = fmul fast float %5503, 0x3FF7154760000000
  %7980 = fmul fast float %7979, %7974
  %7981 = call float @dx.op.unary.f32(i32 21, float %7976)  ; Exp(value)
  %7982 = call float @dx.op.unary.f32(i32 21, float %7978)  ; Exp(value)
  %7983 = call float @dx.op.unary.f32(i32 21, float %7980)  ; Exp(value)
  %7984 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7985 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7986 = call float @dx.op.unary.f32(i32 7, float %7983)  ; Saturate(value)
  %7987 = fmul fast float %7909, %7984
  %7988 = fmul fast float %7910, %7985
  %7989 = fmul fast float %7911, %7986
  %7990 = fsub fast float %7729, %5700
  %7991 = fsub fast float %7730, %5699
  %7992 = fsub fast float %7731, %5698
  %7993 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %7992, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.unary.f32(i32 25, float %7993)  ; Rsqrt(value)
  %7995 = fmul fast float %7994, %7990
  %7996 = fmul fast float %7994, %7991
  %7997 = fmul fast float %7994, %7992
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7729, float %7730, float %7731, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7995, float %7996, float %7997)  ; Dot3(ax,ay,az,bx,by,bz)
  %8000 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8001 = fmul fast float %8000, %7736
  %8002 = fmul fast float %8000, %8000
  %8003 = fmul fast float %8002, %5762
  %8004 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8005 = fmul fast float %8001, %8004
  %8006 = bitcast float %7726 to i32
  %8007 = ashr i32 %8006, 1
  %8008 = sub nsw i32 1597463007, %8007
  %8009 = bitcast i32 %8008 to float
  %8010 = fmul fast float %8009, %7723
  %8011 = fmul fast float %8009, %7724
  %8012 = fmul fast float %8009, %7725
  %8013 = fsub fast float %8010, %5700
  %8014 = fsub fast float %8011, %5699
  %8015 = fsub fast float %8012, %5698
  %8016 = call float @dx.op.dot3.f32(i32 55, float %8013, float %8014, float %8015, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = call float @dx.op.unary.f32(i32 25, float %8016)  ; Rsqrt(value)
  %8018 = fmul fast float %8013, %8017
  %8019 = fmul fast float %8014, %8017
  %8020 = fmul fast float %8015, %8017
  %8021 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %8018, float %8019, float %8020)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = fmul fast float %8021, %8021
  %8023 = call float @dx.op.unary.f32(i32 6, float %7998)  ; FAbs(value)
  %8024 = call float @dx.op.binary.f32(i32 35, float %6197, float 0x3F847AE140000000)  ; FMax(a,b)
  %8025 = fmul fast float %8024, %8024
  %8026 = fmul fast float %8025, %8025
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %5749, %5749
  %8029 = fmul fast float %8028, %8027
  %8030 = fadd fast float %8029, %8026
  %8031 = bitcast float %8030 to i32
  %8032 = ashr i32 %8031, 1
  %8033 = add nsw i32 %8032, 532487669
  %8034 = bitcast i32 %8033 to float
  %8035 = fadd fast float %8034, %5749
  %8036 = fmul fast float %8026, %8022
  %8037 = fsub fast float 1.000000e+00, %8022
  %8038 = fadd fast float %8037, %8036
  %8039 = fmul fast float %8023, %8023
  %8040 = fmul fast float %8039, %8027
  %8041 = fadd fast float %8040, %8026
  %8042 = bitcast float %8041 to i32
  %8043 = ashr i32 %8042, 1
  %8044 = add nsw i32 %8043, 532487669
  %8045 = bitcast i32 %8044 to float
  %8046 = fadd fast float %8045, %8023
  %8047 = fmul fast float %8038, %8038
  %8048 = fmul fast float %8047, %8035
  %8049 = fmul fast float %8048, %8046
  %8050 = fdiv fast float 1.000000e+00, %8049
  %8051 = bitcast float %8026 to i32
  %8052 = sitofp i32 %8051 to float
  %8053 = fmul fast float %8052, 0x3FE7F73180000000
  %8054 = fadd fast float %8053, 0x41AFE27C40000000
  %8055 = fptosi float %8054 to i32
  %8056 = bitcast i32 %8055 to float
  %8057 = fmul fast float %7691, 0x3FD80E9D60000000
  %8058 = fmul fast float %8057, %8009
  %8059 = fadd fast float %8056, %8058
  %8060 = bitcast float %8059 to i32
  %8061 = sub nsw i32 2129859010, %8060
  %8062 = bitcast i32 %8061 to float
  %8063 = fmul fast float %8026, %8050
  %8064 = fmul fast float %8063, %8056
  %8065 = fmul fast float %8064, %8062
  %8066 = fmul fast float %6038, 0x3FF9999980000000
  %8067 = fsub fast float 5.000000e+00, %8066
  %8068 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8069 = fsub fast float 1.000000e+00, %8068
  %8070 = fmul fast float %6038, 0x41D9660740000000
  %8071 = fadd fast float %8070, 0xC1EFBF8940000000
  %8072 = bitcast float %8069 to i32
  %8073 = sitofp i32 %8072 to float
  %8074 = fmul fast float %8073, %8067
  %8075 = fadd fast float %8071, %8074
  %8076 = fptosi float %8075 to i32
  %8077 = bitcast i32 %8076 to float
  %8078 = fsub fast float 1.000000e+00, %5707
  %8079 = fsub fast float 1.000000e+00, %5708
  %8080 = fsub fast float 1.000000e+00, %5747
  %8081 = fmul fast float %8077, %8078
  %8082 = fmul fast float %8077, %8079
  %8083 = fmul fast float %8077, %8080
  %8084 = fadd fast float %8081, %5707
  %8085 = fadd fast float %8082, %5708
  %8086 = fadd fast float %8083, %5747
  br i1 %6061, label %8087, label %8110

; <label>:8087                                    ; preds = %7970
  %8088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %8068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8089 = extractvalue %dx.types.ResRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.ResRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.ResRet.f32 %8088, 2
  %8092 = fadd fast float %8089, -5.000000e-01
  %8093 = fadd fast float %8090, -5.000000e-01
  %8094 = fadd fast float %8091, -5.000000e-01
  %8095 = fmul fast float %5707, 4.000000e+00
  %8096 = fmul fast float %8095, %8078
  %8097 = fmul fast float %8096, %8092
  %8098 = fmul fast float %5708, 4.000000e+00
  %8099 = fmul fast float %8098, %8079
  %8100 = fmul fast float %8099, %8093
  %8101 = fmul fast float %5747, 4.000000e+00
  %8102 = fmul fast float %8101, %8080
  %8103 = fmul fast float %8102, %8094
  %8104 = fadd fast float %8097, %8084
  %8105 = fadd fast float %8100, %8085
  %8106 = fadd fast float %8103, %8086
  %8107 = call float @dx.op.unary.f32(i32 7, float %8104)  ; Saturate(value)
  %8108 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8109 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  br label %8110

; <label>:8110                                    ; preds = %8087, %7970
  %8111 = phi float [ %8107, %8087 ], [ %8084, %7970 ]
  %8112 = phi float [ %8108, %8087 ], [ %8085, %7970 ]
  %8113 = phi float [ %8109, %8087 ], [ %8086, %7970 ]
  %8114 = fmul fast float %7998, 9.843750e-01
  %8115 = fadd fast float %8114, 7.812500e-03
  %8116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8115, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8117 = extractvalue %dx.types.ResRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.ResRet.f32 %8116, 1
  %8119 = extractvalue %dx.types.ResRet.f32 %8116, 2
  %8120 = extractvalue %dx.types.ResRet.f32 %8116, 3
  %8121 = fsub fast float %8119, %8117
  %8122 = fsub fast float %8120, %8118
  %8123 = fmul fast float %8121, %6048
  %8124 = fmul fast float %8122, %6048
  %8125 = fadd fast float %8123, %8117
  %8126 = fadd fast float %8124, %8118
  %8127 = fmul fast float %8125, %5707
  %8128 = fmul fast float %8125, %5708
  %8129 = fmul fast float %8125, %5747
  %8130 = fadd fast float %8127, %8126
  %8131 = fadd fast float %8128, %8126
  %8132 = fadd fast float %8129, %8126
  br i1 %6061, label %8133, label %8156

; <label>:8133                                    ; preds = %8110
  %8134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %7998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8135 = extractvalue %dx.types.ResRet.f32 %8134, 0
  %8136 = extractvalue %dx.types.ResRet.f32 %8134, 1
  %8137 = extractvalue %dx.types.ResRet.f32 %8134, 2
  %8138 = fadd fast float %8135, -5.000000e-01
  %8139 = fadd fast float %8136, -5.000000e-01
  %8140 = fadd fast float %8137, -5.000000e-01
  %8141 = fmul fast float %5707, 4.000000e+00
  %8142 = fmul fast float %8141, %8078
  %8143 = fmul fast float %8142, %8138
  %8144 = fmul fast float %5708, 4.000000e+00
  %8145 = fmul fast float %8144, %8079
  %8146 = fmul fast float %8145, %8139
  %8147 = fmul fast float %5747, 4.000000e+00
  %8148 = fmul fast float %8147, %8080
  %8149 = fmul fast float %8148, %8140
  %8150 = fadd fast float %8143, %8130
  %8151 = fadd fast float %8146, %8131
  %8152 = fadd fast float %8149, %8132
  %8153 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  %8154 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8155 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  br label %8156

; <label>:8156                                    ; preds = %8133, %8110
  %8157 = phi float [ %8153, %8133 ], [ %8130, %8110 ]
  %8158 = phi float [ %8154, %8133 ], [ %8131, %8110 ]
  %8159 = phi float [ %8155, %8133 ], [ %8132, %8110 ]
  %8160 = call float @dx.op.binary.f32(i32 35, float %8158, float %8159)  ; FMax(a,b)
  %8161 = call float @dx.op.binary.f32(i32 35, float %8157, float %8160)  ; FMax(a,b)
  %8162 = fsub fast float 1.000000e+00, %8161
  %8163 = call float @dx.op.binary.f32(i32 35, float %8023, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8164 = fdiv fast float %4424, %8163
  %8165 = fmul fast float %6138, %8164
  %8166 = fmul fast float %6140, %8164
  %8167 = fmul fast float %6142, %8164
  %8168 = call float @dx.op.unary.f32(i32 21, float %8165)  ; Exp(value)
  %8169 = call float @dx.op.unary.f32(i32 21, float %8166)  ; Exp(value)
  %8170 = call float @dx.op.unary.f32(i32 21, float %8167)  ; Exp(value)
  %8171 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8172 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8173 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8174 = select i1 %6135, float %8171, float 0.000000e+00
  %8175 = select i1 %6136, float %8172, float 0.000000e+00
  %8176 = select i1 %6137, float %8173, float 0.000000e+00
  %8177 = fsub fast float -0.000000e+00, %5704
  %8178 = fsub fast float -0.000000e+00, %5705
  %8179 = fsub fast float -0.000000e+00, %5706
  %8180 = call float @dx.op.dot3.f32(i32 55, float %7729, float %7730, float %7731, float %8177, float %8178, float %8179)  ; Dot3(ax,ay,az,bx,by,bz)
  %8181 = call float @dx.op.unary.f32(i32 7, float %8180)  ; Saturate(value)
  %8182 = fmul fast float %8181, %7736
  %8183 = fmul fast float %8181, 9.843750e-01
  %8184 = fadd fast float %8183, 7.812500e-03
  %8185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %8184, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8186 = extractvalue %dx.types.ResRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.ResRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.ResRet.f32 %8185, 2
  %8189 = extractvalue %dx.types.ResRet.f32 %8185, 3
  %8190 = fsub fast float %8188, %8186
  %8191 = fsub fast float %8189, %8187
  %8192 = fmul fast float %8190, %6048
  %8193 = fmul fast float %8191, %6048
  %8194 = fadd fast float %8192, %8186
  %8195 = fadd fast float %8193, %8187
  %8196 = fmul fast float %8194, %5707
  %8197 = fmul fast float %8194, %5708
  %8198 = fmul fast float %8194, %5747
  %8199 = fadd fast float %8196, %8195
  %8200 = fadd fast float %8197, %8195
  %8201 = fadd fast float %8198, %8195
  br i1 %6061, label %8202, label %8225

; <label>:8202                                    ; preds = %8156
  %8203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %5070, float %8181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8204 = extractvalue %dx.types.ResRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.ResRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.ResRet.f32 %8203, 2
  %8207 = fadd fast float %8204, -5.000000e-01
  %8208 = fadd fast float %8205, -5.000000e-01
  %8209 = fadd fast float %8206, -5.000000e-01
  %8210 = fmul fast float %5707, 4.000000e+00
  %8211 = fmul fast float %8210, %8078
  %8212 = fmul fast float %8211, %8207
  %8213 = fmul fast float %5708, 4.000000e+00
  %8214 = fmul fast float %8213, %8079
  %8215 = fmul fast float %8214, %8208
  %8216 = fmul fast float %5747, 4.000000e+00
  %8217 = fmul fast float %8216, %8080
  %8218 = fmul fast float %8217, %8209
  %8219 = fadd fast float %8212, %8199
  %8220 = fadd fast float %8215, %8200
  %8221 = fadd fast float %8218, %8201
  %8222 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8223 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8224 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  br label %8225

; <label>:8225                                    ; preds = %8202, %8156
  %8226 = phi float [ %8222, %8202 ], [ %8199, %8156 ]
  %8227 = phi float [ %8223, %8202 ], [ %8200, %8156 ]
  %8228 = phi float [ %8224, %8202 ], [ %8201, %8156 ]
  %8229 = call float @dx.op.binary.f32(i32 35, float %8227, float %8228)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 35, float %8226, float %8229)  ; FMax(a,b)
  %8231 = fsub fast float 1.000000e+00, %8230
  %8232 = fmul fast float %6197, %6203
  %8233 = fadd fast float %6196, %8232
  %8234 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8235 = fsub fast float %8010, %5755
  %8236 = fsub fast float %8011, %5756
  %8237 = fsub fast float %8012, %5757
  %8238 = call float @dx.op.dot3.f32(i32 55, float %8235, float %8236, float %8237, float %8235, float %8236, float %8237)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = call float @dx.op.unary.f32(i32 25, float %8238)  ; Rsqrt(value)
  %8240 = fmul fast float %8235, %8239
  %8241 = fmul fast float %8236, %8239
  %8242 = fmul fast float %8237, %8239
  %8243 = call float @dx.op.dot3.f32(i32 55, float %8177, float %8178, float %8179, float %8240, float %8241, float %8242)  ; Dot3(ax,ay,az,bx,by,bz)
  %8244 = fmul fast float %8243, %8243
  %8245 = call float @dx.op.unary.f32(i32 6, float %8181)  ; FAbs(value)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8234, float 0x3F847AE140000000)  ; FMax(a,b)
  %8247 = fmul fast float %8246, %8246
  %8248 = fmul fast float %8247, %8247
  %8249 = fsub fast float 1.000000e+00, %8248
  %8250 = fmul fast float %8028, %8249
  %8251 = fadd fast float %8250, %8248
  %8252 = bitcast float %8251 to i32
  %8253 = ashr i32 %8252, 1
  %8254 = add nsw i32 %8253, 532487669
  %8255 = bitcast i32 %8254 to float
  %8256 = fadd fast float %8255, %5749
  %8257 = fmul fast float %8248, %8244
  %8258 = fsub fast float 1.000000e+00, %8244
  %8259 = fadd fast float %8258, %8257
  %8260 = fmul fast float %8245, %8245
  %8261 = fmul fast float %8260, %8249
  %8262 = fadd fast float %8261, %8248
  %8263 = bitcast float %8262 to i32
  %8264 = ashr i32 %8263, 1
  %8265 = add nsw i32 %8264, 532487669
  %8266 = bitcast i32 %8265 to float
  %8267 = fadd fast float %8266, %8245
  %8268 = fmul fast float %8259, %8259
  %8269 = fmul fast float %8268, %8256
  %8270 = fmul fast float %8269, %8267
  %8271 = fdiv fast float 1.000000e+00, %8270
  %8272 = bitcast float %8248 to i32
  %8273 = sitofp i32 %8272 to float
  %8274 = fmul fast float %8273, 0x3FE7F73180000000
  %8275 = fadd fast float %8274, 0x41AFE27C40000000
  %8276 = fptosi float %8275 to i32
  %8277 = bitcast i32 %8276 to float
  %8278 = fadd fast float %8277, %8058
  %8279 = bitcast float %8278 to i32
  %8280 = sub nsw i32 2129859010, %8279
  %8281 = bitcast i32 %8280 to float
  %8282 = fmul fast float %8248, %8271
  %8283 = fmul fast float %8282, %8277
  %8284 = fmul fast float %8283, %8281
  br i1 %7721, label %8285, label %8295

; <label>:8285                                    ; preds = %8225
  %8286 = fmul fast float %8182, %8174
  %8287 = fmul fast float %8182, %8175
  %8288 = fmul fast float %8182, %8176
  %8289 = fmul fast float %8286, %8231
  %8290 = fmul fast float %8289, %8284
  %8291 = fmul fast float %8287, %8231
  %8292 = fmul fast float %8291, %8284
  %8293 = fmul fast float %8288, %8231
  %8294 = fmul fast float %8293, %8284
  br label %8295

; <label>:8295                                    ; preds = %8285, %8225
  %8296 = phi float [ %8290, %8285 ], [ 0.000000e+00, %8225 ]
  %8297 = phi float [ %8292, %8285 ], [ 0.000000e+00, %8225 ]
  %8298 = phi float [ %8294, %8285 ], [ 0.000000e+00, %8225 ]
  %8299 = fmul fast float %8111, %8065
  %8300 = fmul fast float %8112, %8065
  %8301 = fmul fast float %8113, %8065
  %8302 = fsub fast float 1.000000e+00, %7999
  %8303 = bitcast float %8302 to i32
  %8304 = sitofp i32 %8303 to float
  %8305 = fmul fast float %8304, 5.000000e+00
  %8306 = fadd fast float %8305, 0xC1EFBF8940000000
  %8307 = fptosi float %8306 to i32
  %8308 = bitcast i32 %8307 to float
  %8309 = fmul fast float %8308, %5071
  %8310 = fmul fast float %8162, %8309
  %8311 = fmul fast float %8310, %6129
  %8312 = fmul fast float %8310, %6130
  %8313 = fmul fast float %8310, %6131
  %8314 = fadd fast float %8311, %8299
  %8315 = fadd fast float %8312, %8300
  %8316 = fadd fast float %8313, %8301
  %8317 = fmul fast float %8314, %8005
  %8318 = fmul fast float %8315, %8005
  %8319 = fmul fast float %8316, %8005
  %8320 = fadd fast float %8317, %8296
  %8321 = fadd fast float %8318, %8297
  %8322 = fadd fast float %8319, %8298
  %8323 = fmul fast float %7987, %5067
  %8324 = fmul fast float %8323, %8005
  %8325 = fmul fast float %8324, %8162
  %8326 = fmul fast float %7988, %5067
  %8327 = fmul fast float %8326, %8005
  %8328 = fmul fast float %8327, %8162
  %8329 = fmul fast float %7989, %5067
  %8330 = fmul fast float %8329, %8005
  %8331 = fmul fast float %8330, %8162
  %8332 = fadd fast float %8325, %7665
  %8333 = fadd fast float %8328, %7666
  %8334 = fadd fast float %8331, %7667
  %8335 = fmul fast float %8323, %8320
  %8336 = fmul fast float %8326, %8321
  %8337 = fmul fast float %8329, %8322
  %8338 = fadd fast float %8335, %7662
  %8339 = fadd fast float %8336, %7663
  %8340 = fadd fast float %8337, %7664
  br label %7795

; <label>:8341                                    ; preds = %7795
  br label %8342

; <label>:8342                                    ; preds = %8341, %7628
  %8343 = phi float [ %7630, %7628 ], [ %7796, %8341 ]
  %8344 = phi float [ %7631, %7628 ], [ %7797, %8341 ]
  %8345 = phi float [ %7632, %7628 ], [ %7798, %8341 ]
  %8346 = phi float [ %7633, %7628 ], [ %7799, %8341 ]
  %8347 = phi float [ %7634, %7628 ], [ %7800, %8341 ]
  %8348 = phi float [ %7635, %7628 ], [ %7801, %8341 ]
  %8349 = add i32 %7629, 1
  %8350 = icmp ugt i32 %8349, %7625
  br i1 %8350, label %8351, label %7628

; <label>:8351                                    ; preds = %8342
  br label %8352

; <label>:8352                                    ; preds = %8351, %7578, %7568
  %8353 = phi float [ %7569, %7568 ], [ %7569, %7578 ], [ %8343, %8351 ]
  %8354 = phi float [ %7570, %7568 ], [ %7570, %7578 ], [ %8344, %8351 ]
  %8355 = phi float [ %7571, %7568 ], [ %7571, %7578 ], [ %8345, %8351 ]
  %8356 = phi float [ %7572, %7568 ], [ %7572, %7578 ], [ %8346, %8351 ]
  %8357 = phi float [ %7573, %7568 ], [ %7573, %7578 ], [ %8347, %8351 ]
  %8358 = phi float [ %7574, %7568 ], [ %7574, %7578 ], [ %8348, %8351 ]
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 0
  %8361 = fmul fast float %8360, %6210
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8364 = fsub fast float 1.000000e+00, %5074
  %8365 = call float @dx.op.unary.f32(i32 7, float %8364)  ; Saturate(value)
  %8366 = fadd fast float %8358, %5073
  %8367 = fmul fast float %8366, %5074
  %8368 = fmul fast float %8365, %8363
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 3
  %8371 = fmul fast float %8356, %5701
  %8372 = fmul fast float %8357, %5702
  %8373 = fmul fast float %8358, %5703
  %8374 = fcmp fast ogt float %94, %180
  %8375 = and i1 %8374, %5506
  %8376 = or i1 %5512, %8375
  %8377 = icmp eq i32 %5505, 2
  %8378 = fcmp fast ole float %94, %180
  %8379 = and i1 %8378, %8377
  %8380 = or i1 %8379, %8376
  br i1 %8375, label %8381, label %8630

; <label>:8381                                    ; preds = %8352
  %8382 = fmul fast float %6287, %103
  %8383 = fmul fast float %6288, %104
  %8384 = call float @dx.op.unary.f32(i32 7, float %8382)  ; Saturate(value)
  %8385 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8384, float %8385, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8387 = extractvalue %dx.types.ResRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.ResRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.ResRet.f32 %8386, 2
  %8390 = extractvalue %dx.types.ResRet.f32 %8386, 3
  %8391 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8384, float %8385, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8392 = extractvalue %dx.types.ResRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.ResRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.ResRet.f32 %8391, 2
  %8395 = extractvalue %dx.types.ResRet.f32 %8391, 3
  %8396 = call float @dx.op.binary.f32(i32 35, float %8388, float %8389)  ; FMax(a,b)
  %8397 = call float @dx.op.binary.f32(i32 35, float %8387, float %8396)  ; FMax(a,b)
  %8398 = call float @dx.op.binary.f32(i32 35, float %8397, float %8390)  ; FMax(a,b)
  %8399 = call float @dx.op.binary.f32(i32 36, float %8393, float %8394)  ; FMin(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8392, float %8399)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8400, float %8395)  ; FMin(a,b)
  %8402 = fmul fast float %8398, 2.550000e+02
  %8403 = fadd fast float %8402, 0x3F70101020000000
  %8404 = fptoui float %8403 to i32
  %8405 = fmul fast float %8401, 2.550000e+02
  %8406 = fadd fast float %8405, 0x3F70101020000000
  %8407 = fptoui float %8406 to i32
  %8408 = icmp ult i32 %8404, %8407
  br i1 %8408, label %8409, label %8575

; <label>:8409                                    ; preds = %8381
  %8410 = fcmp fast ogt float %93, 9.843750e-01
  %8411 = fadd fast float %94, -4.000000e+00
  %8412 = select i1 %8410, float -4.000000e+00, float %8411
  %8413 = call float @dx.op.binary.f32(i32 35, float %8412, float 0.000000e+00)  ; FMax(a,b)
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 0
  %8416 = fadd fast float %8415, %8413
  %8417 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8418 = fmul fast float %8416, %8417
  %8419 = call float @dx.op.unary.f32(i32 23, float %8418)  ; Log(value)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8414, 3
  %8421 = fmul fast float %8420, %8419
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8424 = fmul fast float %8421, %8423
  %8425 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8426 = uitofp i32 %8404 to float
  %8427 = uitofp i32 %8407 to float
  %8428 = fadd fast float %8426, 5.000000e-01
  %8429 = fadd fast float %8427, 5.000000e-01
  %8430 = fmul fast float %8423, %8428
  %8431 = fmul fast float %8423, %8429
  %8432 = fadd fast float %8430, 0x3F0FFB4800000000
  %8433 = fadd fast float %8431, 0xBF0FFB4800000000
  %8434 = call float @dx.op.binary.f32(i32 35, float %8425, float %8432)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8434, float %8433)  ; FMin(a,b)
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 1
  %8438 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8439 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  %8440 = fmul fast float %8437, %8435
  %8441 = fadd fast float %8439, %8440
  %8442 = fadd fast float %8439, %8438
  %8443 = fsub fast float %8437, %8438
  %8444 = fadd fast float %8443, %8439
  %8445 = call float @dx.op.binary.f32(i32 35, float %8441, float %8442)  ; FMax(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8445, float %8444)  ; FMin(a,b)
  %8447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8384, float %8385, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8448 = extractvalue %dx.types.ResRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.ResRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.ResRet.f32 %8447, 2
  %8451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.i32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.i32 %8451, 1
  %8454 = uitofp i32 %8452 to float
  %8455 = uitofp i32 %8453 to float
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = fmul fast float %8454, %8384
  %8460 = fmul fast float %8455, %8385
  %8461 = fadd fast float %8459, -5.000000e-01
  %8462 = fadd fast float %8460, -5.000000e-01
  %8463 = call float @dx.op.unary.f32(i32 22, float %8461)  ; Frc(value)
  %8464 = call float @dx.op.unary.f32(i32 22, float %8462)  ; Frc(value)
  %8465 = fmul fast float %8463, %8463
  %8466 = fmul fast float %8465, %8463
  %8467 = fsub fast float 3.000000e+00, %8463
  %8468 = fmul fast float %8465, %8467
  %8469 = fmul fast float %8463, 3.000000e+00
  %8470 = fmul fast float %8466, 3.000000e+00
  %8471 = fmul fast float %8465, 6.000000e+00
  %8472 = fsub fast float %8470, %8471
  %8473 = fadd fast float %8472, 4.000000e+00
  %8474 = fmul fast float %8473, 0x3FC5555560000000
  %8475 = fmul fast float %8466, -3.000000e+00
  %8476 = fadd fast float %8465, %8463
  %8477 = fmul fast float %8476, 3.000000e+00
  %8478 = fadd fast float %8475, 1.000000e+00
  %8479 = fadd fast float %8478, %8477
  %8480 = fmul fast float %8466, 0x3FC5555560000000
  %8481 = fmul fast float %8464, %8464
  %8482 = fmul fast float %8481, %8464
  %8483 = fsub fast float 3.000000e+00, %8464
  %8484 = fmul fast float %8481, %8483
  %8485 = fmul fast float %8464, 3.000000e+00
  %8486 = fmul fast float %8482, 3.000000e+00
  %8487 = fmul fast float %8481, 6.000000e+00
  %8488 = fsub fast float %8486, %8487
  %8489 = fadd fast float %8488, 4.000000e+00
  %8490 = fmul fast float %8489, 0x3FC5555560000000
  %8491 = fmul fast float %8482, -3.000000e+00
  %8492 = fadd fast float %8481, %8464
  %8493 = fmul fast float %8492, 3.000000e+00
  %8494 = fadd fast float %8491, 1.000000e+00
  %8495 = fadd fast float %8494, %8493
  %8496 = fmul fast float %8482, 0x3FC5555560000000
  %8497 = fadd fast float %8463, 1.000000e+00
  %8498 = fsub fast float 1.000000e+00, %8469
  %8499 = fadd fast float %8498, %8468
  %8500 = fadd fast float %8499, %8473
  %8501 = fmul fast float %8500, 0x3FC5555560000000
  %8502 = fdiv fast float %8474, %8501
  %8503 = fsub fast float %8497, %8502
  %8504 = fsub fast float 1.000000e+00, %8463
  %8505 = fadd fast float %8479, %8466
  %8506 = fmul fast float %8505, 0x3FC5555560000000
  %8507 = fdiv fast float %8480, %8506
  %8508 = fadd fast float %8504, %8507
  %8509 = fadd fast float %8464, 1.000000e+00
  %8510 = fsub fast float 1.000000e+00, %8485
  %8511 = fadd fast float %8510, %8484
  %8512 = fadd fast float %8511, %8489
  %8513 = fmul fast float %8512, 0x3FC5555560000000
  %8514 = fdiv fast float %8490, %8513
  %8515 = fsub fast float %8509, %8514
  %8516 = fsub fast float 1.000000e+00, %8464
  %8517 = fadd fast float %8495, %8482
  %8518 = fmul fast float %8517, 0x3FC5555560000000
  %8519 = fdiv fast float %8496, %8518
  %8520 = fadd fast float %8519, %8516
  %8521 = fmul fast float %8503, %8457
  %8522 = fsub fast float %8384, %8521
  %8523 = fmul fast float %8508, %8457
  %8524 = fadd fast float %8523, %8384
  %8525 = fmul fast float %8520, %8458
  %8526 = fadd fast float %8525, %8385
  %8527 = fmul fast float %8515, %8458
  %8528 = fsub fast float %8385, %8527
  %8529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8522, float %8528, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8524, float %8528, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8534 = extractvalue %dx.types.ResRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.ResRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.ResRet.f32 %8533, 2
  %8537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8522, float %8526, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8538 = extractvalue %dx.types.ResRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.ResRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.ResRet.f32 %8537, 2
  %8541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8524, float %8526, float %8446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.ResRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.ResRet.f32 %8541, 2
  %8545 = fsub fast float %8538, %8530
  %8546 = fsub fast float %8539, %8531
  %8547 = fsub fast float %8540, %8532
  %8548 = fmul fast float %8545, %8518
  %8549 = fmul fast float %8546, %8518
  %8550 = fmul fast float %8547, %8518
  %8551 = fadd fast float %8548, %8530
  %8552 = fadd fast float %8549, %8531
  %8553 = fadd fast float %8550, %8532
  %8554 = fsub fast float %8542, %8534
  %8555 = fsub fast float %8543, %8535
  %8556 = fsub fast float %8544, %8536
  %8557 = fmul fast float %8554, %8518
  %8558 = fmul fast float %8555, %8518
  %8559 = fmul fast float %8556, %8518
  %8560 = fsub fast float %8534, %8551
  %8561 = fadd fast float %8560, %8557
  %8562 = fsub fast float %8535, %8552
  %8563 = fadd fast float %8562, %8558
  %8564 = fsub fast float %8536, %8553
  %8565 = fadd fast float %8564, %8559
  %8566 = fmul fast float %8561, %8506
  %8567 = fmul fast float %8563, %8506
  %8568 = fmul fast float %8565, %8506
  %8569 = fadd fast float %8566, %8551
  %8570 = fadd fast float %8567, %8552
  %8571 = fadd fast float %8568, %8553
  %8572 = fmul fast float %8569, %6342
  %8573 = fmul fast float %8570, %6342
  %8574 = fmul fast float %8571, %6342
  br label %8575

; <label>:8575                                    ; preds = %8409, %8381
  %8576 = phi float [ %8448, %8409 ], [ 1.000000e+00, %8381 ]
  %8577 = phi float [ %8449, %8409 ], [ 1.000000e+00, %8381 ]
  %8578 = phi float [ %8450, %8409 ], [ 1.000000e+00, %8381 ]
  %8579 = phi float [ %8572, %8409 ], [ 0.000000e+00, %8381 ]
  %8580 = phi float [ %8573, %8409 ], [ 0.000000e+00, %8381 ]
  %8581 = phi float [ %8574, %8409 ], [ 0.000000e+00, %8381 ]
  %8582 = call float @dx.op.dot3.f32(i32 55, float %8576, float %8577, float %8578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8583 = call float @dx.op.dot3.f32(i32 55, float %8579, float %8580, float %8581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = select i1 %220, float %8582, float %8576
  %8585 = select i1 %220, float %8582, float %8577
  %8586 = select i1 %220, float 1.000000e+00, float %8578
  %8587 = select i1 %220, float %8583, float %8579
  %8588 = select i1 %220, float 0.000000e+00, float %8580
  %8589 = select i1 %220, float 0.000000e+00, float %8581
  %8590 = fmul fast float %8584, %8371
  %8591 = fmul fast float %8585, %8372
  %8592 = fmul fast float %8586, %8373
  %8593 = fadd fast float %8590, %8587
  %8594 = fadd fast float %8591, %8588
  %8595 = fadd fast float %8589, %8592
  %8596 = fmul fast float %8584, %8353
  %8597 = fmul fast float %8585, %8354
  %8598 = fmul fast float %8586, %8355
  %8599 = fmul fast float %128, %6287
  %8600 = fmul fast float %130, %6288
  %8601 = fsub fast float 1.000000e+00, %8599
  %8602 = fsub fast float 1.000000e+00, %8600
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.CBufRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8607 = fmul fast float %8601, %8604
  %8608 = fmul fast float %8601, %8605
  %8609 = fmul fast float %8601, %8606
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 0
  %8612 = extractvalue %dx.types.CBufRet.f32 %8610, 1
  %8613 = extractvalue %dx.types.CBufRet.f32 %8610, 2
  %8614 = fmul fast float %8602, %8611
  %8615 = fmul fast float %8602, %8612
  %8616 = fmul fast float %8602, %8613
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8621 = fadd fast float %8614, %8618
  %8622 = fadd fast float %8621, %8607
  %8623 = fadd fast float %8615, %8619
  %8624 = fadd fast float %8623, %8608
  %8625 = fadd fast float %8616, %8620
  %8626 = fadd fast float %8625, %8609
  %8627 = fmul fast float %8622, %180
  %8628 = fmul fast float %8624, %180
  %8629 = fmul fast float %8626, %180
  br label %8630

; <label>:8630                                    ; preds = %8575, %8352
  %8631 = phi float [ %8627, %8575 ], [ %158, %8352 ]
  %8632 = phi float [ %8628, %8575 ], [ %159, %8352 ]
  %8633 = phi float [ %8629, %8575 ], [ %160, %8352 ]
  %8634 = phi float [ %180, %8575 ], [ %94, %8352 ]
  %8635 = phi float [ %8593, %8575 ], [ %8371, %8352 ]
  %8636 = phi float [ %8594, %8575 ], [ %8372, %8352 ]
  %8637 = phi float [ %8595, %8575 ], [ %8373, %8352 ]
  %8638 = phi float [ %8596, %8575 ], [ %8353, %8352 ]
  %8639 = phi float [ %8597, %8575 ], [ %8354, %8352 ]
  %8640 = phi float [ %8598, %8575 ], [ %8355, %8352 ]
  %8641 = phi float [ %8576, %8575 ], [ 1.000000e+00, %8352 ]
  br i1 %8380, label %9783, label %8642

; <label>:8642                                    ; preds = %8630
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8647 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8653, 3
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = extractvalue %dx.types.CBufRet.f32 %8658, 1
  %8661 = extractvalue %dx.types.CBufRet.f32 %8658, 2
  %8662 = extractvalue %dx.types.CBufRet.f32 %8658, 3
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 3
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 3
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %8668 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8669 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8670 = fcmp fast olt float %8669, -5.000000e-01
  %8671 = call float @dx.op.dot3.f32(i32 55, float %8631, float %8632, float %8633, float %8631, float %8632, float %8633)  ; Dot3(ax,ay,az,bx,by,bz)
  %8672 = call float @dx.op.unary.f32(i32 25, float %8671)  ; Rsqrt(value)
  %8673 = fmul fast float %8672, %8671
  %8674 = fmul fast float %8672, %8631
  %8675 = fmul fast float %8672, %8632
  %8676 = fmul fast float %8672, %8633
  %8677 = fadd fast float %8673, %8647
  %8678 = call float @dx.op.dot3.f32(i32 55, float %8674, float %8675, float %8676, float %8644, float %8645, float %8646)  ; Dot3(ax,ay,az,bx,by,bz)
  %8679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.i32 %8679, 1
  %8681 = and i32 %8680, 1
  %8682 = icmp ne i32 %8681, 0
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8685 = fcmp fast ogt float %8684, 0.000000e+00
  %8686 = and i1 %8682, %8685
  br i1 %8686, label %8687, label %9093, !dx.controlflow.hints !125

; <label>:8687                                    ; preds = %8642
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.f32 %8690, 2
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 2
  %8694 = fsub fast float %8691, %8693
  %8695 = and i32 %8680, 2
  %8696 = extractvalue %dx.types.CBufRet.i32 %8679, 0
  %8697 = call i32 @dx.op.binary.i32(i32 40, i32 %8696, i32 3)  ; UMin(a,b)
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.CBufRet.f32 %8692, 0
  %8702 = extractvalue %dx.types.CBufRet.f32 %8692, 1
  %8703 = fsub fast float %8699, %8701
  %8704 = fsub fast float %8700, %8702
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = fcmp fast ogt float %8706, 0.000000e+00
  %8708 = fsub fast float -0.000000e+00, %8703
  %8709 = fsub fast float -0.000000e+00, %8704
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8674, float %8675)  ; Dot2(ax,ay,bx,by)
  %8711 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8712 = fmul fast float %8711, 2.000000e+00
  %8713 = call float @dx.op.dot2.f32(i32 54, float %8708, float %8709, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8714 = fmul fast float %8706, %8706
  %8715 = fsub fast float %8713, %8714
  %8716 = fmul fast float %8712, %8712
  %8717 = fmul fast float %8710, 4.000000e+00
  %8718 = fmul fast float %8717, %8715
  %8719 = fsub fast float %8716, %8718
  %8720 = fcmp fast ogt float %8719, 0.000000e+00
  br i1 %8720, label %8721, label %8736

; <label>:8721                                    ; preds = %8687
  %8722 = fcmp fast ogt float %8712, 0.000000e+00
  %8723 = call float @dx.op.unary.f32(i32 24, float %8719)  ; Sqrt(value)
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = select i1 %8722, float %8723, float %8724
  %8726 = fadd fast float %8725, %8712
  %8727 = fmul float %8726, -5.000000e-01
  %8728 = fdiv fast float %8727, %8710
  %8729 = call float @dx.op.binary.f32(i32 35, float %8728, float 0.000000e+00)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8673, float %8729)  ; FMin(a,b)
  %8731 = fdiv fast float %8715, %8727
  %8732 = call float @dx.op.binary.f32(i32 35, float %8731, float 0.000000e+00)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8673, float %8732)  ; FMin(a,b)
  %8734 = call float @dx.op.binary.f32(i32 36, float %8730, float %8733)  ; FMin(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8730, float %8733)  ; FMax(a,b)
  br label %8736

; <label>:8736                                    ; preds = %8721, %8687
  %8737 = phi float [ %8735, %8721 ], [ -1.000000e+00, %8687 ]
  %8738 = phi float [ %8734, %8721 ], [ -1.000000e+00, %8687 ]
  %8739 = phi i1 [ true, %8721 ], [ false, %8687 ]
  %8740 = and i1 %8707, %8739
  br i1 %8740, label %8741, label %8743

; <label>:8741                                    ; preds = %8736
  %8742 = fcmp fast oeq float %8738, %8737
  br i1 %8742, label %9046, label %8744

; <label>:8743                                    ; preds = %8736
  br i1 %8707, label %9046, label %8744

; <label>:8744                                    ; preds = %8743, %8741
  %8745 = phi float [ %8673, %8743 ], [ %8737, %8741 ]
  %8746 = phi float [ 0.000000e+00, %8743 ], [ %8738, %8741 ]
  %8747 = icmp ne i32 %8695, 0
  %8748 = fmul fast float %8745, %8676
  %8749 = fadd fast float %8748, %8689
  %8750 = fmul fast float %8749, %8745
  %8751 = select i1 %8747, float 0.000000e+00, float %8750
  %8752 = fcmp fast oeq float %8676, 0.000000e+00
  %8753 = fdiv fast float %8694, %8676
  %8754 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8753)  ; FMax(a,b)
  %8755 = select i1 %8752, float %8745, float %8754
  %8756 = call float @dx.op.binary.f32(i32 36, float %8745, float %8755)  ; FMin(a,b)
  %8757 = fcmp fast ogt float %8676, 0.000000e+00
  %8758 = fcmp fast olt float %8694, 0.000000e+00
  br i1 %8757, label %8759, label %8816

; <label>:8759                                    ; preds = %8744
  %8760 = icmp eq i32 %8695, 0
  br i1 %8758, label %8761, label %8805

; <label>:8761                                    ; preds = %8759
  %8762 = select i1 %8760, float %8745, float 0.000000e+00
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = call float @dx.op.unary.f32(i32 6, float %8763)  ; FAbs(value)
  %8765 = fmul fast float %8762, %8676
  %8766 = fadd fast float %8765, %8689
  %8767 = fmul fast float %8764, %8766
  %8768 = fsub fast float %8751, %8767
  %8769 = fsub fast float %8745, %8764
  %8770 = select i1 %8760, float %8769, float 0.000000e+00
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 0
  %8773 = extractvalue %dx.types.CBufRet.f32 %8771, 1
  %8774 = extractvalue %dx.types.CBufRet.f32 %8771, 2
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 0
  %8777 = extractvalue %dx.types.CBufRet.f32 %8775, 1
  %8778 = extractvalue %dx.types.CBufRet.f32 %8775, 2
  %8779 = extractvalue %dx.types.CBufRet.f32 %8775, 3
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 3
  %8782 = call float @dx.op.binary.f32(i32 36, float %8768, float %8781)  ; FMin(a,b)
  %8783 = fmul fast float %8779, %8770
  %8784 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8785 = fsub fast float %8776, %8772
  %8786 = fsub fast float %8777, %8773
  %8787 = fsub fast float %8778, %8774
  %8788 = fmul fast float %8784, %8785
  %8789 = fmul fast float %8784, %8786
  %8790 = fmul fast float %8784, %8787
  %8791 = fadd fast float %8788, %8772
  %8792 = fadd fast float %8789, %8773
  %8793 = fadd fast float %8790, %8774
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 0
  %8796 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %8797 = fadd fast float %8796, %8795
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %8800 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8801 = fadd fast float %8800, %8799
  %8802 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8803 = fmul fast float %8798, %8782
  %8804 = fmul fast float %8803, %8802
  br label %9046

; <label>:8805                                    ; preds = %8759
  br i1 %8760, label %8806, label %8827

; <label>:8806                                    ; preds = %8805
  %8807 = call float @dx.op.binary.f32(i32 36, float %8756, float %8746)  ; FMin(a,b)
  %8808 = fsub fast float %8756, %8807
  %8809 = fsub fast float %8808, %8745
  %8810 = call float @dx.op.unary.f32(i32 6, float %8809)  ; FAbs(value)
  %8811 = fadd fast float %8808, %8745
  %8812 = fmul fast float %8811, %8676
  %8813 = fadd fast float %8812, %8689
  %8814 = fmul fast float %8813, %8810
  %8815 = fsub fast float %8751, %8814
  br label %8827

; <label>:8816                                    ; preds = %8744
  br i1 %8758, label %8817, label %8827

; <label>:8817                                    ; preds = %8816
  %8818 = call float @dx.op.binary.f32(i32 35, float %8746, float %8756)  ; FMax(a,b)
  %8819 = icmp eq i32 %8695, 0
  %8820 = select i1 %8819, float %8756, float 0.000000e+00
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = call float @dx.op.unary.f32(i32 6, float %8821)  ; FAbs(value)
  %8823 = fmul fast float %8820, %8676
  %8824 = fadd fast float %8823, %8689
  %8825 = fmul fast float %8822, %8824
  %8826 = fsub fast float %8751, %8825
  br label %8827

; <label>:8827                                    ; preds = %8817, %8816, %8806, %8805
  %8828 = phi float [ %8746, %8805 ], [ %8746, %8806 ], [ %8818, %8817 ], [ %8746, %8816 ]
  %8829 = phi float [ 0.000000e+00, %8805 ], [ %8810, %8806 ], [ %8822, %8817 ], [ 0.000000e+00, %8816 ]
  %8830 = phi float [ %8751, %8805 ], [ %8815, %8806 ], [ %8826, %8817 ], [ %8751, %8816 ]
  %8831 = phi float [ %8756, %8805 ], [ %8756, %8806 ], [ %8745, %8817 ], [ %8745, %8816 ]
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8832, align 4, !tbaa !126, !noalias !128
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8833, align 4, !tbaa !126, !noalias !128
  %8834 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8834, align 4, !tbaa !126, !noalias !128
  %8835 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8835, align 4, !tbaa !126, !noalias !128
  %8836 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8836, align 4, !tbaa !126, !noalias !128
  %8837 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8837, align 4, !tbaa !126, !noalias !128
  %8838 = icmp sgt i32 %8697, 0
  br i1 %8838, label %8839, label %8900

; <label>:8839                                    ; preds = %8827
  br label %8840

; <label>:8840                                    ; preds = %8889, %8839
  %8841 = phi i32 [ %8890, %8889 ], [ 0, %8839 ]
  %8842 = phi i32 [ %8891, %8889 ], [ 0, %8839 ]
  %8843 = add nuw i32 %8842, 171
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8843)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = fsub fast float %8845, %8848
  %8851 = fsub fast float %8846, %8849
  %8852 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8853 = fsub fast float -0.000000e+00, %8850
  %8854 = fsub fast float -0.000000e+00, %8851
  %8855 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8853, float %8854)  ; Dot2(ax,ay,bx,by)
  %8856 = fmul fast float %8855, 2.000000e+00
  %8857 = call float @dx.op.dot2.f32(i32 54, float %8853, float %8854, float %8853, float %8854)  ; Dot2(ax,ay,bx,by)
  %8858 = fmul fast float %8852, %8852
  %8859 = fsub fast float %8857, %8858
  %8860 = fmul fast float %8856, %8856
  %8861 = fmul fast float %8717, %8859
  %8862 = fsub fast float %8860, %8861
  %8863 = fcmp fast ogt float %8862, 0.000000e+00
  br i1 %8863, label %8864, label %8879

; <label>:8864                                    ; preds = %8840
  %8865 = fcmp fast ogt float %8856, 0.000000e+00
  %8866 = call float @dx.op.unary.f32(i32 24, float %8862)  ; Sqrt(value)
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = select i1 %8865, float %8866, float %8867
  %8869 = fadd fast float %8868, %8856
  %8870 = fmul float %8869, -5.000000e-01
  %8871 = fdiv fast float %8870, %8710
  %8872 = call float @dx.op.binary.f32(i32 35, float %8871, float 0.000000e+00)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8745, float %8872)  ; FMin(a,b)
  %8874 = fdiv fast float %8859, %8870
  %8875 = call float @dx.op.binary.f32(i32 35, float %8874, float 0.000000e+00)  ; FMax(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8745, float %8875)  ; FMin(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8873, float %8876)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 35, float %8873, float %8876)  ; FMax(a,b)
  br label %8879

; <label>:8879                                    ; preds = %8864, %8840
  %8880 = phi float [ %8878, %8864 ], [ -1.000000e+00, %8840 ]
  %8881 = phi float [ %8877, %8864 ], [ -1.000000e+00, %8840 ]
  %8882 = phi i1 [ true, %8864 ], [ false, %8840 ]
  br i1 %8882, label %8883, label %8889

; <label>:8883                                    ; preds = %8879
  %8884 = call float @dx.op.binary.f32(i32 35, float %8828, float %8881)  ; FMax(a,b)
  %8885 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8842
  store float %8884, float* %8885, align 4, !tbaa !126, !noalias !128
  %8886 = call float @dx.op.binary.f32(i32 35, float %8828, float %8880)  ; FMax(a,b)
  %8887 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8842
  store float %8886, float* %8887, align 4, !tbaa !126, !noalias !128
  %8888 = add nsw i32 %8841, 1
  br label %8889

; <label>:8889                                    ; preds = %8883, %8879
  %8890 = phi i32 [ %8888, %8883 ], [ %8841, %8879 ]
  %8891 = add nuw nsw i32 %8842, 1
  %8892 = icmp eq i32 %8891, %8697
  br i1 %8892, label %8893, label %8840

; <label>:8893                                    ; preds = %8889
  %8894 = load float, float* %8834, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8895 = load float, float* %8833, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %8896 = load float, float* %8832, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %8897 = load float, float* %8837, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8898 = load float, float* %8836, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %8899 = load float, float* %8835, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %8900

; <label>:8900                                    ; preds = %8893, %8827
  %8901 = phi float [ -1.000000e+00, %8827 ], [ %8899, %8893 ]
  %8902 = phi float [ -1.000000e+00, %8827 ], [ %8898, %8893 ]
  %8903 = phi float [ -1.000000e+00, %8827 ], [ %8897, %8893 ]
  %8904 = phi float [ -1.000000e+00, %8827 ], [ %8896, %8893 ]
  %8905 = phi float [ -1.000000e+00, %8827 ], [ %8895, %8893 ]
  %8906 = phi float [ -1.000000e+00, %8827 ], [ %8894, %8893 ]
  %8907 = phi i32 [ 0, %8827 ], [ %8890, %8893 ]
  %8908 = call float @dx.op.binary.f32(i32 36, float %8905, float %8906)  ; FMin(a,b)
  %8909 = call float @dx.op.binary.f32(i32 36, float %8904, float %8908)  ; FMin(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8904, float %8905)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8910, float %8906)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8904, float %8905)  ; FMin(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8912, float %8911)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8905, float %8906)  ; FMax(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8904, float %8914)  ; FMax(a,b)
  store float %8909, float* %8832, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %8913, float* %8833, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %8915, float* %8834, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %8916 = call float @dx.op.binary.f32(i32 36, float %8902, float %8903)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8901, float %8916)  ; FMin(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8901, float %8902)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 36, float %8918, float %8903)  ; FMin(a,b)
  %8920 = call float @dx.op.binary.f32(i32 36, float %8901, float %8902)  ; FMin(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float %8920, float %8919)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 35, float %8902, float %8903)  ; FMax(a,b)
  %8923 = call float @dx.op.binary.f32(i32 35, float %8901, float %8922)  ; FMax(a,b)
  store float %8917, float* %8835, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %8921, float* %8836, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %8923, float* %8837, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %8924 = sub nsw i32 3, %8907
  %8925 = icmp sgt i32 %8924, 2
  br i1 %8925, label %8926, label %8964

; <label>:8926                                    ; preds = %8900
  %8927 = icmp eq i32 %8695, 0
  %8928 = fsub fast float %8745, %8829
  %8929 = select i1 %8927, float %8928, float %8829
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = extractvalue %dx.types.CBufRet.f32 %8930, 1
  %8933 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.CBufRet.f32 %8934, 2
  %8938 = extractvalue %dx.types.CBufRet.f32 %8934, 3
  %8939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8940 = extractvalue %dx.types.CBufRet.f32 %8939, 3
  %8941 = call float @dx.op.binary.f32(i32 36, float %8830, float %8940)  ; FMin(a,b)
  %8942 = fmul fast float %8938, %8929
  %8943 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8944 = fsub fast float %8935, %8931
  %8945 = fsub fast float %8936, %8932
  %8946 = fsub fast float %8937, %8933
  %8947 = fmul fast float %8943, %8944
  %8948 = fmul fast float %8943, %8945
  %8949 = fmul fast float %8943, %8946
  %8950 = fadd fast float %8947, %8931
  %8951 = fadd fast float %8948, %8932
  %8952 = fadd fast float %8949, %8933
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = fadd fast float %8955, %8954
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8959 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8960 = fadd fast float %8959, %8958
  %8961 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  %8962 = fmul fast float %8957, %8941
  %8963 = fmul fast float %8962, %8961
  br label %9046

; <label>:8964                                    ; preds = %8900
  %8965 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8924
  %8966 = load float, float* %8965, align 4, !tbaa !126, !noalias !128
  %8967 = fcmp fast olt float %8966, %8831
  %8968 = icmp sgt i32 %8907, 0
  %8969 = and i1 %8968, %8967
  br i1 %8969, label %8970, label %9007

; <label>:8970                                    ; preds = %8964
  br label %8971

; <label>:8971                                    ; preds = %9000, %8970
  %8972 = phi float [ %9001, %9000 ], [ %8829, %8970 ]
  %8973 = phi float [ %9002, %9000 ], [ %8830, %8970 ]
  %8974 = phi float [ %8982, %9000 ], [ %8966, %8970 ]
  %8975 = phi i32 [ %8979, %9000 ], [ %8924, %8970 ]
  %8976 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8975
  %8977 = load float, float* %8976, align 4, !tbaa !126, !noalias !128
  %8978 = icmp slt i32 %8975, 2
  %8979 = add nsw i32 %8975, 1
  %8980 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8979
  %8981 = load float, float* %8980, align 4, !tbaa !126, !noalias !128
  %8982 = select i1 %8978, float %8981, float %8745
  %8983 = call float @dx.op.binary.f32(i32 36, float %8982, float %8977)  ; FMin(a,b)
  %8984 = call float @dx.op.binary.f32(i32 36, float %8831, float %8983)  ; FMin(a,b)
  %8985 = icmp eq i32 %8695, 0
  %8986 = fadd fast float %8984, %8974
  %8987 = fmul fast float %8986, %8676
  %8988 = fadd fast float %8987, %8689
  br i1 %8985, label %8994, label %8989

; <label>:8989                                    ; preds = %8971
  %8990 = fsub fast float %8984, %8974
  %8991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8990)  ; FMax(a,b)
  %8992 = fmul fast float %8991, %8988
  %8993 = fadd fast float %8992, %8973
  br label %9000

; <label>:8994                                    ; preds = %8971
  %8995 = fsub fast float %8974, %8984
  %8996 = call float @dx.op.unary.f32(i32 6, float %8995)  ; FAbs(value)
  %8997 = fadd fast float %8996, %8972
  %8998 = fmul fast float %8996, %8988
  %8999 = fsub fast float %8973, %8998
  br label %9000

; <label>:9000                                    ; preds = %8994, %8989
  %9001 = phi float [ %8991, %8989 ], [ %8997, %8994 ]
  %9002 = phi float [ %8993, %8989 ], [ %8999, %8994 ]
  %9003 = fcmp fast olt float %8982, %8831
  %9004 = icmp slt i32 %8979, 3
  %9005 = and i1 %9004, %9003
  br i1 %9005, label %8971, label %9006

; <label>:9006                                    ; preds = %9000
  br label %9007

; <label>:9007                                    ; preds = %9006, %8964
  %9008 = phi float [ %8829, %8964 ], [ %9001, %9006 ]
  %9009 = phi float [ %8830, %8964 ], [ %9002, %9006 ]
  %9010 = fsub fast float %8745, %9008
  %9011 = select i1 %8747, float %9008, float %9010
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.CBufRet.f32 %9016, 2
  %9020 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9023 = call float @dx.op.binary.f32(i32 36, float %9009, float %9022)  ; FMin(a,b)
  %9024 = fmul fast float %9020, %9011
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = fsub fast float %9017, %9013
  %9027 = fsub fast float %9018, %9014
  %9028 = fsub fast float %9019, %9015
  %9029 = fmul fast float %9025, %9026
  %9030 = fmul fast float %9025, %9027
  %9031 = fmul fast float %9025, %9028
  %9032 = fadd fast float %9029, %9013
  %9033 = fadd fast float %9030, %9014
  %9034 = fadd fast float %9031, %9015
  %9035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.CBufRet.f32 %9035, 1
  %9038 = fadd fast float %9037, %9036
  %9039 = call float @dx.op.unary.f32(i32 7, float %9038)  ; Saturate(value)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9035, 2
  %9041 = extractvalue %dx.types.CBufRet.f32 %9035, 3
  %9042 = fadd fast float %9041, %9040
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fmul fast float %9039, %9023
  %9045 = fmul fast float %9044, %9043
  br label %9046

; <label>:9046                                    ; preds = %9007, %8926, %8761, %8743, %8741
  %9047 = phi float [ %8770, %8761 ], [ %8929, %8926 ], [ %9011, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9048 = phi float [ %8804, %8761 ], [ %8963, %8926 ], [ %9045, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9049 = phi float [ %8791, %8761 ], [ %8950, %8926 ], [ %9032, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9050 = phi float [ %8792, %8761 ], [ %8951, %8926 ], [ %9033, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9051 = phi float [ %8793, %8761 ], [ %8952, %8926 ], [ %9034, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9052 = fmul fast float %8684, %9048
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9055 = fsub fast float %8691, %9054
  %9056 = fcmp fast olt float %9052, -2.000000e+01
  %9057 = call float @dx.op.unary.f32(i32 21, float %9052)  ; Exp(value)
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9060 = extractvalue %dx.types.CBufRet.f32 %9058, 3
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9063 = fmul fast float %9060, %9055
  %9064 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9065 = fsub fast float 1.000000e+00, %9064
  %9066 = fmul fast float %8676, 5.000000e-01
  %9067 = fadd fast float %9066, 5.000000e-01
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fsub fast float 1.000000e+00, %9068
  %9070 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9065)  ; FMax(a,b)
  %9071 = fdiv fast float %9069, %9070
  %9072 = fsub fast float %9055, %8633
  %9073 = call float @dx.op.unary.f32(i32 6, float %9072)  ; FAbs(value)
  %9074 = fmul fast float %9073, %9059
  %9075 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9076 = fsub fast float 1.000000e+00, %9074
  %9077 = fmul fast float %9076, %9075
  %9078 = fadd fast float %9077, %9074
  %9079 = fmul fast float %9062, %9055
  %9080 = call float @dx.op.unary.f32(i32 7, float %9079)  ; Saturate(value)
  %9081 = fsub fast float 1.000000e+00, %9078
  %9082 = fmul fast float %9081, %9080
  %9083 = fadd fast float %9082, %9078
  %9084 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9085 = fadd fast float %9057, -1.000000e+00
  %9086 = select i1 %9056, float -1.000000e+00, float %9085
  %9087 = fmul fast float %9084, %9086
  %9088 = fadd fast float %9087, 1.000000e+00
  %9089 = fsub fast float -0.000000e+00, %9087
  %9090 = fmul fast float %9049, %9089
  %9091 = fmul fast float %9050, %9089
  %9092 = fmul fast float %9051, %9089
  br label %9093

; <label>:9093                                    ; preds = %9046, %8642
  %9094 = phi float [ %9047, %9046 ], [ 0.000000e+00, %8642 ]
  %9095 = phi float [ %9088, %9046 ], [ 1.000000e+00, %8642 ]
  %9096 = phi float [ %9090, %9046 ], [ 0.000000e+00, %8642 ]
  %9097 = phi float [ %9091, %9046 ], [ 0.000000e+00, %8642 ]
  %9098 = phi float [ %9092, %9046 ], [ 0.000000e+00, %8642 ]
  %9099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9100 = extractvalue %dx.types.CBufRet.f32 %9099, 1
  %9101 = fsub fast float 1.000000e+00, %9095
  %9102 = fmul fast float %9101, %8677
  %9103 = fmul fast float %9102, %9100
  %9104 = fsub fast float %8677, %9103
  br i1 %8670, label %9105, label %9134, !dx.controlflow.hints !164

; <label>:9105                                    ; preds = %9093
  %9106 = fmul fast float %8678, %8667
  %9107 = fadd fast float %9106, %8668
  %9108 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9109 = fmul fast float %8649, %9104
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fmul fast float %8650, %9104
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = call float @dx.op.unary.f32(i32 21, float %9110)  ; Exp(value)
  %9114 = call float @dx.op.unary.f32(i32 21, float %9112)  ; Exp(value)
  %9115 = call float @dx.op.binary.f32(i32 35, float %8657, float %9113)  ; FMax(a,b)
  %9116 = call float @dx.op.binary.f32(i32 35, float %8657, float %9114)  ; FMax(a,b)
  %9117 = fsub fast float %9116, %9115
  %9118 = fmul fast float %9117, %9108
  %9119 = fadd fast float %9118, %9115
  %9120 = call float @dx.op.unary.f32(i32 7, float %9119)  ; Saturate(value)
  %9121 = fsub fast float %8654, %8659
  %9122 = fsub fast float %8655, %8660
  %9123 = fsub fast float %8656, %8661
  %9124 = fmul fast float %9108, %9121
  %9125 = fmul fast float %9108, %9122
  %9126 = fmul fast float %9108, %9123
  %9127 = fadd fast float %9124, %8659
  %9128 = fadd fast float %9125, %8660
  %9129 = fadd fast float %9126, %8661
  %9130 = fsub fast float 1.000000e+00, %9120
  %9131 = fmul fast float %9130, %9127
  %9132 = fmul fast float %9130, %9128
  %9133 = fmul fast float %9130, %9129
  br label %9193

; <label>:9134                                    ; preds = %9093
  %9135 = fmul fast float %9104, %8666
  %9136 = call float @dx.op.unary.f32(i32 7, float %9135)  ; Saturate(value)
  %9137 = fsub fast float 2.000000e+00, %9136
  %9138 = fmul fast float %9136, 9.921875e-01
  %9139 = fmul fast float %9138, %9137
  %9140 = fadd fast float %9139, 3.906250e-03
  %9141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %9140, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9142 = extractvalue %dx.types.ResRet.f32 %9141, 0
  %9143 = fsub fast float %9136, %9142
  %9144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9143)  ; FMax(a,b)
  %9145 = fmul fast float %8652, %8633
  %9146 = call float @dx.op.unary.f32(i32 6, float %9145)  ; FAbs(value)
  %9147 = fcmp fast ogt float %9146, 0x3EB0C6F7A0000000
  br i1 %9147, label %9148, label %9154, !dx.controlflow.hints !165

; <label>:9148                                    ; preds = %9134
  %9149 = fmul fast float %9145, 0xBFF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fdiv fast float %9151, %9145
  %9153 = fmul fast float %9152, %8662
  br label %9154

; <label>:9154                                    ; preds = %9148, %9134
  %9155 = phi float [ %9153, %9148 ], [ %8662, %9134 ]
  %9156 = fadd fast float %9155, %8664
  %9157 = fmul fast float %9156, %9144
  %9158 = fmul fast float %8649, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fmul fast float %8650, %9157
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = fmul fast float %8651, %9157
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = call float @dx.op.unary.f32(i32 21, float %9159)  ; Exp(value)
  %9165 = call float @dx.op.unary.f32(i32 21, float %9161)  ; Exp(value)
  %9166 = call float @dx.op.unary.f32(i32 21, float %9163)  ; Exp(value)
  %9167 = fmul fast float %8678, %8678
  %9168 = fadd fast float %9167, 1.000000e+00
  %9169 = fmul fast float %9168, 0x3FAE8EC8A0000000
  %9170 = fmul fast float %9169, %8659
  %9171 = fmul fast float %9169, %8660
  %9172 = fmul fast float %9169, %8661
  %9173 = fmul fast float %8678, %8657
  %9174 = fsub fast float 1.000000e+00, %9173
  %9175 = fmul fast float %8657, %8657
  %9176 = fsub fast float 1.000000e+00, %9175
  %9177 = fmul fast float %9176, 0x3FB45F3060000000
  %9178 = fmul fast float %9174, %9174
  %9179 = fdiv fast float 1.000000e+00, %9178
  %9180 = fmul fast float %9177, %9179
  %9181 = fmul fast float %9180, %8654
  %9182 = fmul fast float %9180, %8655
  %9183 = fmul fast float %9180, %8656
  %9184 = fadd fast float %9181, %9170
  %9185 = fadd fast float %9182, %9171
  %9186 = fadd fast float %9183, %9172
  %9187 = fsub fast float 1.000000e+00, %9164
  %9188 = fsub fast float 1.000000e+00, %9165
  %9189 = fsub fast float 1.000000e+00, %9166
  %9190 = fmul fast float %9184, %9187
  %9191 = fmul fast float %9185, %9188
  %9192 = fmul fast float %9186, %9189
  br label %9193

; <label>:9193                                    ; preds = %9154, %9105
  %9194 = phi float [ %9131, %9105 ], [ %9190, %9154 ]
  %9195 = phi float [ %9132, %9105 ], [ %9191, %9154 ]
  %9196 = phi float [ %9133, %9105 ], [ %9192, %9154 ]
  %9197 = phi float [ %9120, %9105 ], [ %9164, %9154 ]
  %9198 = phi float [ %9120, %9105 ], [ %9165, %9154 ]
  %9199 = phi float [ %9120, %9105 ], [ %9166, %9154 ]
  br i1 %8686, label %9200, label %9398, !dx.controlflow.hints !166

; <label>:9200                                    ; preds = %9193
  %9201 = extractvalue %dx.types.CBufRet.f32 %9099, 0
  %9202 = fmul fast float %9201, %9101
  %9203 = fsub fast float %9096, %9194
  %9204 = fsub fast float %9097, %9195
  %9205 = fsub fast float %9098, %9196
  %9206 = fmul fast float %9202, %9203
  %9207 = fmul fast float %9202, %9204
  %9208 = fmul fast float %9202, %9205
  %9209 = fadd fast float %9206, %9194
  %9210 = fadd fast float %9207, %9195
  %9211 = fadd fast float %9208, %9196
  %9212 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9197)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9198)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9199)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9095)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9094, float %9104)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9216)  ; FMax(a,b)
  %9218 = fdiv fast float %9094, %9217
  %9219 = call float @dx.op.unary.f32(i32 7, float %9218)  ; Saturate(value)
  %9220 = fdiv fast float %9104, %9217
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fcmp fast une float %9215, 1.000000e+00
  br i1 %9222, label %9223, label %9236, !dx.controlflow.hints !167

; <label>:9223                                    ; preds = %9200
  %9224 = call float @dx.op.unary.f32(i32 23, float %9215)  ; Log(value)
  %9225 = fmul fast float %9224, 0x3FE62E4300000000
  %9226 = fmul fast float %9096, %9225
  %9227 = fsub fast float -0.000000e+00, %9226
  %9228 = fmul fast float %9097, %9225
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fmul fast float %9098, %9225
  %9231 = fsub fast float -0.000000e+00, %9230
  %9232 = fsub fast float 1.000000e+00, %9215
  %9233 = fdiv fast float %9227, %9232
  %9234 = fdiv fast float %9229, %9232
  %9235 = fdiv fast float %9231, %9232
  br label %9236

; <label>:9236                                    ; preds = %9223, %9200
  %9237 = phi float [ %9233, %9223 ], [ %9096, %9200 ]
  %9238 = phi float [ %9234, %9223 ], [ %9097, %9200 ]
  %9239 = phi float [ %9235, %9223 ], [ %9098, %9200 ]
  %9240 = phi float [ %9225, %9223 ], [ 0.000000e+00, %9200 ]
  %9241 = fcmp fast une float %9212, 1.000000e+00
  br i1 %9241, label %9242, label %9249, !dx.controlflow.hints !168

; <label>:9242                                    ; preds = %9236
  %9243 = call float @dx.op.unary.f32(i32 23, float %9212)  ; Log(value)
  %9244 = fmul fast float %9243, 0x3FE62E4300000000
  %9245 = fmul fast float %9209, %9244
  %9246 = fsub fast float -0.000000e+00, %9245
  %9247 = fsub fast float 1.000000e+00, %9212
  %9248 = fdiv fast float %9246, %9247
  br label %9249

; <label>:9249                                    ; preds = %9242, %9236
  %9250 = phi float [ %9248, %9242 ], [ %9209, %9236 ]
  %9251 = phi float [ %9244, %9242 ], [ 0.000000e+00, %9236 ]
  %9252 = fcmp fast une float %9213, 1.000000e+00
  br i1 %9252, label %9253, label %9260, !dx.controlflow.hints !168

; <label>:9253                                    ; preds = %9249
  %9254 = call float @dx.op.unary.f32(i32 23, float %9213)  ; Log(value)
  %9255 = fmul fast float %9254, 0x3FE62E4300000000
  %9256 = fmul fast float %9210, %9255
  %9257 = fsub fast float -0.000000e+00, %9256
  %9258 = fsub fast float 1.000000e+00, %9213
  %9259 = fdiv fast float %9257, %9258
  br label %9260

; <label>:9260                                    ; preds = %9253, %9249
  %9261 = phi float [ %9259, %9253 ], [ %9210, %9249 ]
  %9262 = phi float [ %9255, %9253 ], [ 0.000000e+00, %9249 ]
  %9263 = fcmp fast une float %9214, 1.000000e+00
  br i1 %9263, label %9264, label %9271, !dx.controlflow.hints !168

; <label>:9264                                    ; preds = %9260
  %9265 = call float @dx.op.unary.f32(i32 23, float %9214)  ; Log(value)
  %9266 = fmul fast float %9265, 0x3FE62E4300000000
  %9267 = fmul fast float %9211, %9266
  %9268 = fsub fast float -0.000000e+00, %9267
  %9269 = fsub fast float 1.000000e+00, %9214
  %9270 = fdiv fast float %9268, %9269
  br label %9271

; <label>:9271                                    ; preds = %9264, %9260
  %9272 = phi float [ %9270, %9264 ], [ %9211, %9260 ]
  %9273 = phi float [ %9266, %9264 ], [ 0.000000e+00, %9260 ]
  %9274 = fmul fast float %9237, %9221
  %9275 = fmul fast float %9238, %9221
  %9276 = fmul fast float %9239, %9221
  %9277 = fmul fast float %9240, %9221
  %9278 = fmul fast float %9250, %9219
  %9279 = fmul fast float %9261, %9219
  %9280 = fmul fast float %9272, %9219
  %9281 = fmul fast float %9251, %9219
  %9282 = fmul fast float %9262, %9219
  %9283 = fmul fast float %9273, %9219
  %9284 = fadd fast float %9278, %9274
  %9285 = fadd fast float %9279, %9275
  %9286 = fadd fast float %9280, %9276
  %9287 = fadd fast float %9281, %9277
  %9288 = fadd fast float %9282, %9277
  %9289 = fadd fast float %9283, %9277
  %9290 = fcmp fast une float %9287, 0.000000e+00
  br i1 %9290, label %9291, label %9298, !dx.controlflow.hints !169

; <label>:9291                                    ; preds = %9271
  %9292 = fmul fast float %9287, 0x3FF7154760000000
  %9293 = call float @dx.op.unary.f32(i32 21, float %9292)  ; Exp(value)
  %9294 = fsub fast float 1.000000e+00, %9293
  %9295 = fmul fast float %9284, %9294
  %9296 = fsub fast float -0.000000e+00, %9295
  %9297 = fdiv fast float %9296, %9287
  br label %9298

; <label>:9298                                    ; preds = %9291, %9271
  %9299 = phi float [ %9293, %9291 ], [ 1.000000e+00, %9271 ]
  %9300 = phi float [ %9297, %9291 ], [ %9284, %9271 ]
  %9301 = fcmp fast une float %9288, 0.000000e+00
  br i1 %9301, label %9302, label %9309, !dx.controlflow.hints !169

; <label>:9302                                    ; preds = %9298
  %9303 = fmul fast float %9288, 0x3FF7154760000000
  %9304 = call float @dx.op.unary.f32(i32 21, float %9303)  ; Exp(value)
  %9305 = fsub fast float 1.000000e+00, %9304
  %9306 = fmul fast float %9285, %9305
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = fdiv fast float %9307, %9288
  br label %9309

; <label>:9309                                    ; preds = %9302, %9298
  %9310 = phi float [ %9304, %9302 ], [ 1.000000e+00, %9298 ]
  %9311 = phi float [ %9308, %9302 ], [ %9285, %9298 ]
  %9312 = fcmp fast une float %9289, 0.000000e+00
  br i1 %9312, label %9313, label %9320, !dx.controlflow.hints !169

; <label>:9313                                    ; preds = %9309
  %9314 = fmul fast float %9289, 0x3FF7154760000000
  %9315 = call float @dx.op.unary.f32(i32 21, float %9314)  ; Exp(value)
  %9316 = fsub fast float 1.000000e+00, %9315
  %9317 = fmul fast float %9286, %9316
  %9318 = fsub fast float -0.000000e+00, %9317
  %9319 = fdiv fast float %9318, %9289
  br label %9320

; <label>:9320                                    ; preds = %9313, %9309
  %9321 = phi float [ %9315, %9313 ], [ 1.000000e+00, %9309 ]
  %9322 = phi float [ %9319, %9313 ], [ %9286, %9309 ]
  %9323 = fcmp fast ogt float %9219, %9221
  br i1 %9323, label %9324, label %9344

; <label>:9324                                    ; preds = %9320
  %9325 = fsub fast float 1.000000e+00, %9221
  %9326 = fmul fast float %9237, %9325
  %9327 = fmul fast float %9238, %9325
  %9328 = fmul fast float %9239, %9325
  %9329 = fmul fast float %9240, %9325
  %9330 = fcmp fast une float %9329, 0.000000e+00
  br i1 %9330, label %9331, label %9382, !dx.controlflow.hints !170

; <label>:9331                                    ; preds = %9324
  %9332 = fmul fast float %9329, 0x3FF7154760000000
  %9333 = call float @dx.op.unary.f32(i32 21, float %9332)  ; Exp(value)
  %9334 = fsub fast float 1.000000e+00, %9333
  %9335 = fmul fast float %9326, %9334
  %9336 = fsub fast float -0.000000e+00, %9335
  %9337 = fmul fast float %9327, %9334
  %9338 = fsub fast float -0.000000e+00, %9337
  %9339 = fmul fast float %9328, %9334
  %9340 = fsub fast float -0.000000e+00, %9339
  %9341 = fdiv fast float %9336, %9329
  %9342 = fdiv fast float %9338, %9329
  %9343 = fdiv fast float %9340, %9329
  br label %9382

; <label>:9344                                    ; preds = %9320
  %9345 = fsub fast float 1.000000e+00, %9219
  %9346 = fmul fast float %9250, %9345
  %9347 = fmul fast float %9261, %9345
  %9348 = fmul fast float %9272, %9345
  %9349 = fmul fast float %9251, %9345
  %9350 = fmul fast float %9262, %9345
  %9351 = fmul fast float %9273, %9345
  %9352 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9352, label %9353, label %9360, !dx.controlflow.hints !169

; <label>:9353                                    ; preds = %9344
  %9354 = fmul fast float %9349, 0x3FF7154760000000
  %9355 = call float @dx.op.unary.f32(i32 21, float %9354)  ; Exp(value)
  %9356 = fsub fast float 1.000000e+00, %9355
  %9357 = fmul fast float %9346, %9356
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fdiv fast float %9358, %9349
  br label %9360

; <label>:9360                                    ; preds = %9353, %9344
  %9361 = phi float [ %9359, %9353 ], [ %9346, %9344 ]
  %9362 = phi float [ %9355, %9353 ], [ 1.000000e+00, %9344 ]
  %9363 = fcmp fast une float %9350, 0.000000e+00
  br i1 %9363, label %9364, label %9371, !dx.controlflow.hints !169

; <label>:9364                                    ; preds = %9360
  %9365 = fmul fast float %9350, 0x3FF7154760000000
  %9366 = call float @dx.op.unary.f32(i32 21, float %9365)  ; Exp(value)
  %9367 = fsub fast float 1.000000e+00, %9366
  %9368 = fmul fast float %9347, %9367
  %9369 = fsub fast float -0.000000e+00, %9368
  %9370 = fdiv fast float %9369, %9350
  br label %9371

; <label>:9371                                    ; preds = %9364, %9360
  %9372 = phi float [ %9370, %9364 ], [ %9347, %9360 ]
  %9373 = phi float [ %9366, %9364 ], [ 1.000000e+00, %9360 ]
  %9374 = fcmp fast une float %9351, 0.000000e+00
  br i1 %9374, label %9375, label %9382, !dx.controlflow.hints !169

; <label>:9375                                    ; preds = %9371
  %9376 = fmul fast float %9351, 0x3FF7154760000000
  %9377 = call float @dx.op.unary.f32(i32 21, float %9376)  ; Exp(value)
  %9378 = fsub fast float 1.000000e+00, %9377
  %9379 = fmul fast float %9348, %9378
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fdiv fast float %9380, %9351
  br label %9382

; <label>:9382                                    ; preds = %9375, %9371, %9331, %9324
  %9383 = phi float [ %9381, %9375 ], [ %9343, %9331 ], [ %9328, %9324 ], [ %9348, %9371 ]
  %9384 = phi float [ %9372, %9375 ], [ %9342, %9331 ], [ %9327, %9324 ], [ %9372, %9371 ]
  %9385 = phi float [ %9361, %9375 ], [ %9341, %9331 ], [ %9326, %9324 ], [ %9361, %9371 ]
  %9386 = phi float [ %9377, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ 1.000000e+00, %9371 ]
  %9387 = phi float [ %9373, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ %9373, %9371 ]
  %9388 = phi float [ %9362, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ %9362, %9371 ]
  %9389 = fmul fast float %9388, %9300
  %9390 = fmul fast float %9387, %9311
  %9391 = fmul fast float %9386, %9322
  %9392 = fadd fast float %9389, %9385
  %9393 = fadd fast float %9390, %9384
  %9394 = fadd fast float %9391, %9383
  %9395 = fmul fast float %9388, %9299
  %9396 = fmul fast float %9387, %9310
  %9397 = fmul fast float %9386, %9321
  br label %9398

; <label>:9398                                    ; preds = %9382, %9193
  %9399 = phi float [ %9397, %9382 ], [ %9199, %9193 ]
  %9400 = phi float [ %9396, %9382 ], [ %9198, %9193 ]
  %9401 = phi float [ %9395, %9382 ], [ %9197, %9193 ]
  %9402 = phi float [ %9394, %9382 ], [ %9196, %9193 ]
  %9403 = phi float [ %9393, %9382 ], [ %9195, %9193 ]
  %9404 = phi float [ %9392, %9382 ], [ %9194, %9193 ]
  %9405 = fmul fast float %9401, %8641
  %9406 = call float @dx.op.dot3.f32(i32 55, float %9401, float %9400, float %9399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9407 = call float @dx.op.dot3.f32(i32 55, float %9404, float %9403, float %9402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9408 = select i1 %220, float %9406, float %9401
  %9409 = select i1 %220, float %9406, float %9400
  %9410 = select i1 %220, float 1.000000e+00, float %9399
  %9411 = select i1 %220, float %9407, float %9404
  %9412 = select i1 %220, float 0.000000e+00, float %9403
  %9413 = select i1 %220, float 0.000000e+00, float %9402
  %9414 = fmul fast float %9408, %8635
  %9415 = fmul fast float %9409, %8636
  %9416 = fmul fast float %9410, %8637
  %9417 = fadd fast float %9414, %9411
  %9418 = fadd fast float %9415, %9412
  %9419 = fadd fast float %9413, %9416
  %9420 = fmul fast float %9408, %8638
  %9421 = fmul fast float %9409, %8639
  %9422 = fmul fast float %9410, %8640
  %9423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9424 = extractvalue %dx.types.CBufRet.i32 %9423, 0
  %9425 = icmp eq i32 %9424, 0
  br i1 %9425, label %9783, label %9426, !dx.controlflow.hints !171

; <label>:9426                                    ; preds = %9398
  %9427 = fmul fast float %6287, %103
  %9428 = fmul fast float %6288, %104
  %9429 = fmul fast float %9427, 2.000000e+00
  %9430 = fmul fast float %9428, 2.000000e+00
  %9431 = fsub fast float 1.000000e+00, %9429
  %9432 = fsub fast float 1.000000e+00, %9430
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9436 = extractvalue %dx.types.CBufRet.f32 %9433, 2
  %9437 = fmul fast float %9431, %9434
  %9438 = fmul fast float %9431, %9435
  %9439 = fmul fast float %9431, %9436
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 0
  %9442 = extractvalue %dx.types.CBufRet.f32 %9440, 1
  %9443 = extractvalue %dx.types.CBufRet.f32 %9440, 2
  %9444 = fmul fast float %9432, %9441
  %9445 = fmul fast float %9432, %9442
  %9446 = fmul fast float %9432, %9443
  %9447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9448 = extractvalue %dx.types.CBufRet.f32 %9447, 0
  %9449 = extractvalue %dx.types.CBufRet.f32 %9447, 1
  %9450 = extractvalue %dx.types.CBufRet.f32 %9447, 2
  %9451 = fadd fast float %9444, %9448
  %9452 = fadd fast float %9451, %9437
  %9453 = fadd fast float %9445, %9449
  %9454 = fadd fast float %9453, %9438
  %9455 = fadd fast float %9446, %9450
  %9456 = fadd fast float %9455, %9439
  %9457 = fmul fast float %9452, %8634
  %9458 = fmul fast float %9454, %8634
  %9459 = fmul fast float %9456, %8634
  %9460 = fmul fast float %9457, %9457
  %9461 = fmul fast float %9458, %9458
  %9462 = fadd fast float %9460, %9461
  %9463 = fmul fast float %9459, %9459
  %9464 = fadd fast float %9462, %9463
  %9465 = call float @dx.op.unary.f32(i32 24, float %9464)  ; Sqrt(value)
  %9466 = extractvalue %dx.types.CBufRet.f32 %8369, 0
  %9467 = fsub fast float %9465, %9466
  %9468 = extractvalue %dx.types.CBufRet.f32 %8369, 2
  %9469 = fmul fast float %9467, %9468
  %9470 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9471 = fadd fast float %9470, -5.000000e-01
  %9472 = fmul fast float %9471, 2.000000e+00
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9475 = call float @dx.op.binary.f32(i32 36, float %9474, float %9472)  ; FMin(a,b)
  %9476 = fsub fast float -0.000000e+00, %9474
  %9477 = fcmp fast ogt float %9475, %9476
  br i1 %9477, label %9478, label %9783, !dx.controlflow.hints !172

; <label>:9478                                    ; preds = %9426
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9481 = fcmp fast ogt float %9480, 0.000000e+00
  br i1 %9481, label %9482, label %9555, !dx.controlflow.hints !173

; <label>:9482                                    ; preds = %9478
  %9483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9484 = extractvalue %dx.types.Dimensions %9483, 0
  %9485 = sitofp i32 %9484 to float
  %9486 = extractvalue %dx.types.Dimensions %9483, 1
  %9487 = sitofp i32 %9486 to float
  %9488 = fmul fast float %9427, %9485
  %9489 = fmul fast float %9428, %9487
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9492 = fsub fast float -0.000000e+00, %9491
  %9493 = fptoui float %9492 to i32
  %9494 = fptoui float %9488 to i32
  %9495 = fptoui float %9489 to i32
  %9496 = and i32 %9493, 31
  %9497 = lshr i32 %9494, %9496
  %9498 = lshr i32 %9495, %9496
  %9499 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9493, i32 %9497, i32 %9498, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9500 = extractvalue %dx.types.ResRet.f32 %9499, 0
  %9501 = fcmp fast olt float %9500, -1.000000e+00
  %9502 = fcmp fast ogt float %9500, -1.000000e+00
  %9503 = select i1 %9502, float %6295, float 1.000000e+00
  %9504 = fadd fast float %9500, 1.000000e+00
  %9505 = fmul fast float %9503, %9504
  %9506 = call float @dx.op.unary.f32(i32 6, float %9505)  ; FAbs(value)
  %9507 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %9508 = fcmp fast oge float %9506, %9507
  %9509 = select i1 %9508, float 0x4197782600000000, float %9506
  %9510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9511 = extractvalue %dx.types.CBufRet.f32 %9510, 0
  %9512 = extractvalue %dx.types.CBufRet.f32 %9510, 1
  %9513 = extractvalue %dx.types.CBufRet.f32 %9510, 2
  %9514 = select i1 %9501, float %9511, float %9434
  %9515 = select i1 %9501, float %9512, float %9435
  %9516 = select i1 %9501, float %9513, float %9436
  %9517 = fmul fast float %9514, %9431
  %9518 = fmul fast float %9515, %9431
  %9519 = fmul fast float %9516, %9431
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 0
  %9522 = extractvalue %dx.types.CBufRet.f32 %9520, 1
  %9523 = extractvalue %dx.types.CBufRet.f32 %9520, 2
  %9524 = select i1 %9501, float %9521, float %9441
  %9525 = select i1 %9501, float %9522, float %9442
  %9526 = select i1 %9501, float %9523, float %9443
  %9527 = fmul fast float %9524, %9432
  %9528 = fmul fast float %9525, %9432
  %9529 = fmul fast float %9526, %9432
  %9530 = fadd fast float %9527, %9517
  %9531 = fadd fast float %9528, %9518
  %9532 = fadd fast float %9529, %9519
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = select i1 %9501, float %9534, float %9448
  %9538 = select i1 %9501, float %9535, float %9449
  %9539 = select i1 %9501, float %9536, float %9450
  %9540 = fadd fast float %9530, %9537
  %9541 = fadd fast float %9531, %9538
  %9542 = fadd fast float %9532, %9539
  %9543 = fmul fast float %9540, %9509
  %9544 = fmul fast float %9541, %9509
  %9545 = fmul fast float %9542, %9509
  %9546 = fmul fast float %9543, %9543
  %9547 = fmul fast float %9544, %9544
  %9548 = fadd fast float %9546, %9547
  %9549 = fmul fast float %9545, %9545
  %9550 = fadd fast float %9548, %9549
  %9551 = call float @dx.op.unary.f32(i32 24, float %9550)  ; Sqrt(value)
  %9552 = fsub fast float %9551, %9466
  %9553 = fmul fast float %9552, %9468
  %9554 = call float @dx.op.unary.f32(i32 7, float %9553)  ; Saturate(value)
  br label %9555

; <label>:9555                                    ; preds = %9482, %9478
  %9556 = phi float [ %9554, %9482 ], [ 1.000000e+00, %9478 ]
  %9557 = fmul fast float %9475, 5.000000e-01
  %9558 = fadd fast float %9557, 5.000000e-01
  %9559 = call float @dx.op.unary.f32(i32 22, float %9558)  ; Frc(value)
  %9560 = call float @dx.op.unary.f32(i32 27, float %9559)  ; Round_ni(value)
  %9561 = call float @dx.op.unary.f32(i32 22, float %9559)  ; Frc(value)
  %9562 = fmul fast float %9561, 2.000000e+00
  %9563 = fadd fast float %9562, -1.000000e+00
  %9564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9427, float %9428, float %9560, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9565 = extractvalue %dx.types.ResRet.f32 %9564, 0
  %9566 = extractvalue %dx.types.ResRet.f32 %9564, 1
  %9567 = extractvalue %dx.types.ResRet.f32 %9564, 2
  %9568 = extractvalue %dx.types.ResRet.f32 %9564, 3
  %9569 = fadd fast float %9565, -5.000000e-01
  %9570 = fadd fast float %9567, -5.000000e-01
  %9571 = fmul fast float %9569, 0xBFD5555560000000
  %9572 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9570, float %9571)  ; FMad(a,b,c)
  %9573 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9566, float 0.000000e+00)  ; FMad(a,b,c)
  %9574 = fadd fast float %9573, %9568
  %9575 = fmul fast float %9569, -7.500000e-01
  %9576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9570, float %9575)  ; FMad(a,b,c)
  %9577 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9566, float 0.000000e+00)  ; FMad(a,b,c)
  %9578 = fadd fast float %9577, %9568
  %9579 = call float @dx.op.binary.f32(i32 35, float %9572, float -1.000000e+00)  ; FMax(a,b)
  %9580 = call float @dx.op.binary.f32(i32 35, float %9574, float -1.000000e+00)  ; FMax(a,b)
  %9581 = call float @dx.op.binary.f32(i32 35, float %9576, float -1.000000e+00)  ; FMax(a,b)
  %9582 = call float @dx.op.binary.f32(i32 35, float %9578, float -1.000000e+00)  ; FMax(a,b)
  %9583 = call float @dx.op.binary.f32(i32 36, float %9579, float 1.000000e+00)  ; FMin(a,b)
  %9584 = call float @dx.op.binary.f32(i32 36, float %9580, float 1.000000e+00)  ; FMin(a,b)
  %9585 = call float @dx.op.binary.f32(i32 36, float %9581, float 1.000000e+00)  ; FMin(a,b)
  %9586 = call float @dx.op.binary.f32(i32 36, float %9582, float 1.000000e+00)  ; FMin(a,b)
  %9587 = fcmp fast olt float %9583, 0x3FEFFF8020000000
  br i1 %9587, label %9588, label %9703, !dx.controlflow.hints !174

; <label>:9588                                    ; preds = %9555
  %9589 = extractvalue %dx.types.CBufRet.f32 %9473, 3
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = extractvalue %dx.types.CBufRet.f32 %9590, 3
  %9595 = fsub fast float %9591, %9583
  %9596 = fsub fast float %9592, %9584
  %9597 = fsub fast float %9593, %9585
  %9598 = fsub fast float %9594, %9586
  %9599 = fmul fast float %9595, %9589
  %9600 = fmul fast float %9596, %9589
  %9601 = fmul fast float %9597, %9589
  %9602 = fmul fast float %9598, %9589
  %9603 = fadd fast float %9599, %9583
  %9604 = fadd fast float %9600, %9584
  %9605 = fsub fast float -0.000000e+00, %9604
  %9606 = fadd fast float %9601, %9585
  %9607 = fadd fast float %9602, %9586
  %9608 = fmul fast float %9603, %9603
  %9609 = fsub fast float %9604, %9608
  %9610 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9609)  ; FMax(a,b)
  %9611 = fdiv fast float 1.000000e+00, %9610
  %9612 = fmul fast float %9604, %9603
  %9613 = fsub fast float %9606, %9612
  %9614 = fsub fast float %9563, %9603
  %9615 = fmul fast float %9563, %9563
  %9616 = fsub fast float %9615, %9604
  %9617 = fmul fast float %9614, %9611
  %9618 = fmul fast float %9617, %9613
  %9619 = fsub fast float %9616, %9618
  %9620 = fmul fast float %9604, %9604
  %9621 = fsub fast float %9607, %9620
  %9622 = fmul fast float %9613, %9613
  %9623 = fmul fast float %9622, %9611
  %9624 = fsub fast float %9621, %9623
  %9625 = fdiv fast float %9619, %9624
  %9626 = fmul fast float %9613, %9625
  %9627 = fsub fast float %9614, %9626
  %9628 = fmul fast float %9627, %9611
  %9629 = fmul fast float %9628, %9603
  %9630 = fsub fast float 1.000000e+00, %9629
  %9631 = fmul fast float %9604, %9625
  %9632 = fsub fast float %9630, %9631
  %9633 = fmul fast float %9628, %9628
  %9634 = fmul fast float %9625, 4.000000e+00
  %9635 = fmul fast float %9634, %9632
  %9636 = fsub fast float %9633, %9635
  %9637 = call float @dx.op.unary.f32(i32 24, float %9636)  ; Sqrt(value)
  %9638 = fcmp fast oge float %9628, 0.000000e+00
  %9639 = fsub fast float -0.000000e+00, %9637
  %9640 = select i1 %9638, float %9639, float %9637
  %9641 = fsub fast float %9640, %9628
  %9642 = fdiv fast float %9641, %9625
  %9643 = fdiv fast float %9632, %9641
  %9644 = fmul fast float %9642, 5.000000e-01
  %9645 = fmul fast float %9643, 2.000000e+00
  %9646 = select i1 %9638, float %9644, float %9645
  %9647 = select i1 %9638, float %9645, float %9644
  %9648 = call float @dx.op.binary.f32(i32 35, float %9646, float %9647)  ; FMax(a,b)
  %9649 = call float @dx.op.binary.f32(i32 36, float %9646, float %9647)  ; FMin(a,b)
  %9650 = fcmp fast ogt float %9563, %9649
  br i1 %9650, label %9651, label %9661

; <label>:9651                                    ; preds = %9588
  %9652 = fsub fast float %9563, %9649
  %9653 = fsub fast float %9648, %9649
  %9654 = fmul fast float %9652, %9653
  %9655 = fmul fast float %9648, %9563
  %9656 = fadd fast float %9648, %9563
  %9657 = fmul fast float %9656, %9603
  %9658 = fadd fast float %9655, %9604
  %9659 = fsub fast float %9658, %9657
  %9660 = fdiv fast float %9659, %9654
  br label %9661

; <label>:9661                                    ; preds = %9651, %9588
  %9662 = phi float [ %9660, %9651 ], [ 0.000000e+00, %9588 ]
  %9663 = fcmp fast ogt float %9563, %9648
  %9664 = fsub fast float %9563, %9648
  br i1 %9663, label %9665, label %9675

; <label>:9665                                    ; preds = %9661
  %9666 = fsub fast float %9648, %9649
  %9667 = fmul fast float %9666, %9664
  %9668 = fmul fast float %9649, %9563
  %9669 = fadd fast float %9649, %9563
  %9670 = fmul fast float %9669, %9603
  %9671 = fsub fast float %9605, %9668
  %9672 = fadd fast float %9671, %9670
  %9673 = fdiv fast float %9672, %9667
  %9674 = fadd fast float %9673, %9662
  br label %9675

; <label>:9675                                    ; preds = %9665, %9661
  %9676 = phi float [ %9674, %9665 ], [ %9662, %9661 ]
  %9677 = fsub fast float %9563, %9649
  %9678 = fmul fast float %9677, %9664
  %9679 = fmul fast float %9649, %9648
  %9680 = fadd fast float %9649, %9648
  %9681 = fmul fast float %9680, %9603
  %9682 = fadd fast float %9679, %9604
  %9683 = fsub fast float %9682, %9681
  %9684 = fdiv fast float %9683, %9678
  %9685 = call float @dx.op.unary.f32(i32 7, float %9676)  ; Saturate(value)
  %9686 = fcmp fast oeq float %8370, 0.000000e+00
  %9687 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9688 = fcmp fast oeq float %9687, 0.000000e+00
  %9689 = or i1 %9686, %9688
  %9690 = fmul fast float %9687, 2.000000e+00
  %9691 = fadd fast float %9474, %9475
  %9692 = fdiv fast float %9691, %9690
  %9693 = call float @dx.op.unary.f32(i32 7, float %9692)  ; Saturate(value)
  %9694 = fmul fast float %9693, 2.000000e+00
  %9695 = fsub fast float 3.000000e+00, %9694
  %9696 = fmul fast float %9693, %9693
  %9697 = fmul fast float %9696, %9695
  %9698 = select i1 %9689, float 1.000000e+00, float %9697
  %9699 = fmul fast float %9684, %8370
  %9700 = fadd fast float %9685, %9699
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = fmul fast float %9698, %9701
  br label %9703

; <label>:9703                                    ; preds = %9675, %9555
  %9704 = phi float [ %9702, %9675 ], [ 0.000000e+00, %9555 ]
  %9705 = fsub fast float 1.000000e+00, %9704
  %9706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9427, float %9428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9707 = extractvalue %dx.types.ResRet.f32 %9706, 0
  %9708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9709 = extractvalue %dx.types.CBufRet.i32 %9708, 2
  %9710 = icmp eq i32 %9709, 0
  br i1 %9710, label %9716, label %9711

; <label>:9711                                    ; preds = %9703
  %9712 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9713 = fadd fast float %9707, -1.000000e+00
  %9714 = fmul fast float %9712, %9713
  %9715 = fadd fast float %9714, 1.000000e+00
  br label %9716

; <label>:9716                                    ; preds = %9711, %9703
  %9717 = phi float [ %9715, %9711 ], [ %9705, %9703 ]
  br i1 %9481, label %9718, label %9736

; <label>:9718                                    ; preds = %9716
  %9719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9720 = extractvalue %dx.types.CBufRet.f32 %9719, 1
  %9721 = fsub fast float %9556, %9720
  %9722 = call float @dx.op.unary.f32(i32 7, float %9721)  ; Saturate(value)
  %9723 = fsub fast float %9556, %9480
  %9724 = call float @dx.op.unary.f32(i32 7, float %9723)  ; Saturate(value)
  %9725 = fsub fast float %9722, %9724
  %9726 = fsub fast float %9558, %9724
  %9727 = fdiv fast float %9726, %9725
  %9728 = call float @dx.op.unary.f32(i32 7, float %9727)  ; Saturate(value)
  %9729 = fmul fast float %9728, 2.000000e+00
  %9730 = fsub fast float 3.000000e+00, %9729
  %9731 = fsub fast float %9707, %9717
  %9732 = fmul fast float %9728, %9728
  %9733 = fmul fast float %9732, %9731
  %9734 = fmul fast float %9733, %9730
  %9735 = fadd fast float %9734, %9717
  br label %9736

; <label>:9736                                    ; preds = %9718, %9716
  %9737 = phi float [ %9735, %9718 ], [ %9717, %9716 ]
  %9738 = call float @dx.op.binary.f32(i32 35, float %9707, float %9737)  ; FMax(a,b)
  %9739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9740 = extractvalue %dx.types.CBufRet.i32 %9739, 2
  %9741 = and i32 %9740, 1
  %9742 = icmp eq i32 %9741, 0
  %9743 = fcmp fast une float %9738, 1.000000e+00
  %9744 = and i1 %9743, %9742
  br i1 %9744, label %9745, label %9762

; <label>:9745                                    ; preds = %9736
  %9746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9427, float %9428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9747 = extractvalue %dx.types.ResRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.ResRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.ResRet.f32 %9746, 2
  %9750 = fmul fast float %6342, %9747
  %9751 = fmul fast float %6342, %9748
  %9752 = fmul fast float %6342, %9749
  %9753 = fcmp fast ogt float %9707, 0x3FEFFF2E40000000
  %9754 = fsub fast float 1.000000e+00, %9738
  %9755 = fsub fast float 1.000000e+00, %9707
  %9756 = fdiv fast float %9754, %9755
  %9757 = call float @dx.op.unary.f32(i32 7, float %9756)  ; Saturate(value)
  %9758 = select i1 %9753, float 0.000000e+00, float %9757
  %9759 = fmul fast float %9750, %9758
  %9760 = fmul fast float %9751, %9758
  %9761 = fmul fast float %9752, %9758
  br label %9762

; <label>:9762                                    ; preds = %9745, %9736
  %9763 = phi float [ 0.000000e+00, %9736 ], [ %9759, %9745 ]
  %9764 = phi float [ 0.000000e+00, %9736 ], [ %9760, %9745 ]
  %9765 = phi float [ 0.000000e+00, %9736 ], [ %9761, %9745 ]
  %9766 = fmul fast float %9738, %9405
  %9767 = call float @dx.op.dot3.f32(i32 55, float %9738, float %9738, float %9738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9768 = call float @dx.op.dot3.f32(i32 55, float %9763, float %9764, float %9765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9769 = select i1 %220, float %9767, float %9738
  %9770 = select i1 %220, float 1.000000e+00, float %9738
  %9771 = select i1 %220, float %9768, float %9763
  %9772 = select i1 %220, float 0.000000e+00, float %9764
  %9773 = select i1 %220, float 0.000000e+00, float %9765
  %9774 = fmul fast float %9769, %9417
  %9775 = fmul fast float %9769, %9418
  %9776 = fmul fast float %9770, %9419
  %9777 = fadd fast float %9774, %9771
  %9778 = fadd fast float %9775, %9772
  %9779 = fadd fast float %9773, %9776
  %9780 = fmul fast float %9769, %9420
  %9781 = fmul fast float %9769, %9421
  %9782 = fmul fast float %9770, %9422
  br label %9783

; <label>:9783                                    ; preds = %9762, %9426, %9398, %8630
  %9784 = phi float [ %8635, %8630 ], [ %9417, %9398 ], [ %9777, %9762 ], [ %9417, %9426 ]
  %9785 = phi float [ %8636, %8630 ], [ %9418, %9398 ], [ %9778, %9762 ], [ %9418, %9426 ]
  %9786 = phi float [ %8637, %8630 ], [ %9419, %9398 ], [ %9779, %9762 ], [ %9419, %9426 ]
  %9787 = phi float [ %8638, %8630 ], [ %9420, %9398 ], [ %9780, %9762 ], [ %9420, %9426 ]
  %9788 = phi float [ %8639, %8630 ], [ %9421, %9398 ], [ %9781, %9762 ], [ %9421, %9426 ]
  %9789 = phi float [ %8640, %8630 ], [ %9422, %9398 ], [ %9782, %9762 ], [ %9422, %9426 ]
  %9790 = phi float [ %8641, %8630 ], [ %9405, %9398 ], [ %9766, %9762 ], [ %9405, %9426 ]
  %9791 = fmul fast float %6287, %103
  %9792 = fmul fast float %6288, %104
  %9793 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9794 = call float @dx.op.unary.f32(i32 7, float %9792)  ; Saturate(value)
  %9795 = select i1 %8380, i32 2, i32 0
  %9796 = or i32 %9795, 1
  %9797 = uitofp i32 %9796 to float
  %9798 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9793, float %9794, float %9797, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9799 = extractvalue %dx.types.ResRet.f32 %9798, 0
  %9800 = extractvalue %dx.types.ResRet.f32 %9798, 1
  %9801 = extractvalue %dx.types.ResRet.f32 %9798, 2
  %9802 = extractvalue %dx.types.ResRet.f32 %9798, 3
  %9803 = add nuw nsw i32 %9795, 2
  %9804 = uitofp i32 %9803 to float
  %9805 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9793, float %9794, float %9804, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9806 = extractvalue %dx.types.ResRet.f32 %9805, 0
  %9807 = extractvalue %dx.types.ResRet.f32 %9805, 1
  %9808 = extractvalue %dx.types.ResRet.f32 %9805, 2
  %9809 = extractvalue %dx.types.ResRet.f32 %9805, 3
  %9810 = call float @dx.op.binary.f32(i32 35, float %9800, float %9801)  ; FMax(a,b)
  %9811 = call float @dx.op.binary.f32(i32 35, float %9799, float %9810)  ; FMax(a,b)
  %9812 = call float @dx.op.binary.f32(i32 35, float %9811, float %9802)  ; FMax(a,b)
  %9813 = call float @dx.op.binary.f32(i32 36, float %9807, float %9808)  ; FMin(a,b)
  %9814 = call float @dx.op.binary.f32(i32 36, float %9806, float %9813)  ; FMin(a,b)
  %9815 = call float @dx.op.binary.f32(i32 36, float %9814, float %9809)  ; FMin(a,b)
  %9816 = fmul fast float %9812, 2.550000e+02
  %9817 = fadd fast float %9816, 0x3F70101020000000
  %9818 = fptoui float %9817 to i32
  %9819 = fmul fast float %9815, 2.550000e+02
  %9820 = fadd fast float %9819, 0x3F70101020000000
  %9821 = fptoui float %9820 to i32
  %9822 = icmp ult i32 %9818, %9821
  br i1 %9822, label %9823, label %9990

; <label>:9823                                    ; preds = %9783
  %9824 = fcmp fast ogt float %93, 9.843750e-01
  %9825 = fadd fast float %8634, -4.000000e+00
  %9826 = select i1 %9824, float -4.000000e+00, float %9825
  %9827 = call float @dx.op.binary.f32(i32 35, float %9826, float 0.000000e+00)  ; FMax(a,b)
  %9828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9829 = extractvalue %dx.types.CBufRet.f32 %9828, 0
  %9830 = fadd fast float %9829, %9827
  %9831 = extractvalue %dx.types.CBufRet.f32 %9828, 2
  %9832 = fmul fast float %9830, %9831
  %9833 = call float @dx.op.unary.f32(i32 23, float %9832)  ; Log(value)
  %9834 = extractvalue %dx.types.CBufRet.f32 %9828, 3
  %9835 = fmul fast float %9834, %9833
  %9836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9837 = extractvalue %dx.types.CBufRet.f32 %9836, 2
  %9838 = fmul fast float %9835, %9837
  %9839 = call float @dx.op.unary.f32(i32 7, float %9838)  ; Saturate(value)
  %9840 = uitofp i32 %9818 to float
  %9841 = uitofp i32 %9821 to float
  %9842 = fadd fast float %9840, 5.000000e-01
  %9843 = fadd fast float %9841, 5.000000e-01
  %9844 = fmul fast float %9837, %9842
  %9845 = fmul fast float %9837, %9843
  %9846 = fadd fast float %9844, 0x3F0FFB4800000000
  %9847 = fadd fast float %9845, 0xBF0FFB4800000000
  %9848 = call float @dx.op.binary.f32(i32 35, float %9839, float %9846)  ; FMax(a,b)
  %9849 = call float @dx.op.binary.f32(i32 36, float %9848, float %9847)  ; FMin(a,b)
  %9850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9851 = extractvalue %dx.types.CBufRet.f32 %9850, 1
  %9852 = extractvalue %dx.types.CBufRet.f32 %9850, 2
  %9853 = extractvalue %dx.types.CBufRet.f32 %9850, 0
  %9854 = select i1 %8380, float %9853, float 0.000000e+00
  %9855 = fmul fast float %9851, %9849
  %9856 = fadd fast float %9854, %9855
  %9857 = fadd fast float %9854, %9852
  %9858 = fsub fast float %9851, %9852
  %9859 = fadd fast float %9858, %9854
  %9860 = call float @dx.op.binary.f32(i32 35, float %9856, float %9857)  ; FMax(a,b)
  %9861 = call float @dx.op.binary.f32(i32 36, float %9860, float %9859)  ; FMin(a,b)
  %9862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9793, float %9794, float %9861, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9863 = extractvalue %dx.types.ResRet.f32 %9862, 0
  %9864 = extractvalue %dx.types.ResRet.f32 %9862, 1
  %9865 = extractvalue %dx.types.ResRet.f32 %9862, 2
  %9866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.i32 %9866, 0
  %9868 = extractvalue %dx.types.CBufRet.i32 %9866, 1
  %9869 = uitofp i32 %9867 to float
  %9870 = uitofp i32 %9868 to float
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 0
  %9873 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9874 = fmul fast float %9869, %9793
  %9875 = fmul fast float %9870, %9794
  %9876 = fadd fast float %9874, -5.000000e-01
  %9877 = fadd fast float %9875, -5.000000e-01
  %9878 = call float @dx.op.unary.f32(i32 22, float %9876)  ; Frc(value)
  %9879 = call float @dx.op.unary.f32(i32 22, float %9877)  ; Frc(value)
  %9880 = fmul fast float %9878, %9878
  %9881 = fmul fast float %9880, %9878
  %9882 = fsub fast float 3.000000e+00, %9878
  %9883 = fmul fast float %9880, %9882
  %9884 = fmul fast float %9878, 3.000000e+00
  %9885 = fmul fast float %9881, 3.000000e+00
  %9886 = fmul fast float %9880, 6.000000e+00
  %9887 = fsub fast float %9885, %9886
  %9888 = fadd fast float %9887, 4.000000e+00
  %9889 = fmul fast float %9888, 0x3FC5555560000000
  %9890 = fmul fast float %9881, -3.000000e+00
  %9891 = fadd fast float %9880, %9878
  %9892 = fmul fast float %9891, 3.000000e+00
  %9893 = fadd fast float %9890, 1.000000e+00
  %9894 = fadd fast float %9893, %9892
  %9895 = fmul fast float %9881, 0x3FC5555560000000
  %9896 = fmul fast float %9879, %9879
  %9897 = fmul fast float %9896, %9879
  %9898 = fsub fast float 3.000000e+00, %9879
  %9899 = fmul fast float %9896, %9898
  %9900 = fmul fast float %9879, 3.000000e+00
  %9901 = fmul fast float %9897, 3.000000e+00
  %9902 = fmul fast float %9896, 6.000000e+00
  %9903 = fsub fast float %9901, %9902
  %9904 = fadd fast float %9903, 4.000000e+00
  %9905 = fmul fast float %9904, 0x3FC5555560000000
  %9906 = fmul fast float %9897, -3.000000e+00
  %9907 = fadd fast float %9896, %9879
  %9908 = fmul fast float %9907, 3.000000e+00
  %9909 = fadd fast float %9906, 1.000000e+00
  %9910 = fadd fast float %9909, %9908
  %9911 = fmul fast float %9897, 0x3FC5555560000000
  %9912 = fadd fast float %9878, 1.000000e+00
  %9913 = fsub fast float 1.000000e+00, %9884
  %9914 = fadd fast float %9913, %9883
  %9915 = fadd fast float %9914, %9888
  %9916 = fmul fast float %9915, 0x3FC5555560000000
  %9917 = fdiv fast float %9889, %9916
  %9918 = fsub fast float %9912, %9917
  %9919 = fsub fast float 1.000000e+00, %9878
  %9920 = fadd fast float %9894, %9881
  %9921 = fmul fast float %9920, 0x3FC5555560000000
  %9922 = fdiv fast float %9895, %9921
  %9923 = fadd fast float %9919, %9922
  %9924 = fadd fast float %9879, 1.000000e+00
  %9925 = fsub fast float 1.000000e+00, %9900
  %9926 = fadd fast float %9925, %9899
  %9927 = fadd fast float %9926, %9904
  %9928 = fmul fast float %9927, 0x3FC5555560000000
  %9929 = fdiv fast float %9905, %9928
  %9930 = fsub fast float %9924, %9929
  %9931 = fsub fast float 1.000000e+00, %9879
  %9932 = fadd fast float %9910, %9897
  %9933 = fmul fast float %9932, 0x3FC5555560000000
  %9934 = fdiv fast float %9911, %9933
  %9935 = fadd fast float %9934, %9931
  %9936 = fmul fast float %9918, %9872
  %9937 = fsub fast float %9793, %9936
  %9938 = fmul fast float %9923, %9872
  %9939 = fadd fast float %9938, %9793
  %9940 = fmul fast float %9935, %9873
  %9941 = fadd fast float %9940, %9794
  %9942 = fmul fast float %9930, %9873
  %9943 = fsub fast float %9794, %9942
  %9944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9937, float %9943, float %9861, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9945 = extractvalue %dx.types.ResRet.f32 %9944, 0
  %9946 = extractvalue %dx.types.ResRet.f32 %9944, 1
  %9947 = extractvalue %dx.types.ResRet.f32 %9944, 2
  %9948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9939, float %9943, float %9861, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9949 = extractvalue %dx.types.ResRet.f32 %9948, 0
  %9950 = extractvalue %dx.types.ResRet.f32 %9948, 1
  %9951 = extractvalue %dx.types.ResRet.f32 %9948, 2
  %9952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9937, float %9941, float %9861, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9953 = extractvalue %dx.types.ResRet.f32 %9952, 0
  %9954 = extractvalue %dx.types.ResRet.f32 %9952, 1
  %9955 = extractvalue %dx.types.ResRet.f32 %9952, 2
  %9956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9939, float %9941, float %9861, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9957 = extractvalue %dx.types.ResRet.f32 %9956, 0
  %9958 = extractvalue %dx.types.ResRet.f32 %9956, 1
  %9959 = extractvalue %dx.types.ResRet.f32 %9956, 2
  %9960 = fsub fast float %9953, %9945
  %9961 = fsub fast float %9954, %9946
  %9962 = fsub fast float %9955, %9947
  %9963 = fmul fast float %9960, %9933
  %9964 = fmul fast float %9961, %9933
  %9965 = fmul fast float %9962, %9933
  %9966 = fadd fast float %9963, %9945
  %9967 = fadd fast float %9964, %9946
  %9968 = fadd fast float %9965, %9947
  %9969 = fsub fast float %9957, %9949
  %9970 = fsub fast float %9958, %9950
  %9971 = fsub fast float %9959, %9951
  %9972 = fmul fast float %9969, %9933
  %9973 = fmul fast float %9970, %9933
  %9974 = fmul fast float %9971, %9933
  %9975 = fsub fast float %9949, %9966
  %9976 = fadd fast float %9975, %9972
  %9977 = fsub fast float %9950, %9967
  %9978 = fadd fast float %9977, %9973
  %9979 = fsub fast float %9951, %9968
  %9980 = fadd fast float %9979, %9974
  %9981 = fmul fast float %9976, %9921
  %9982 = fmul fast float %9978, %9921
  %9983 = fmul fast float %9980, %9921
  %9984 = fadd fast float %9981, %9966
  %9985 = fadd fast float %9982, %9967
  %9986 = fadd fast float %9983, %9968
  %9987 = fmul fast float %9984, %6342
  %9988 = fmul fast float %9985, %6342
  %9989 = fmul fast float %9986, %6342
  br label %9990

; <label>:9990                                    ; preds = %9823, %9783
  %9991 = phi float [ %9863, %9823 ], [ 1.000000e+00, %9783 ]
  %9992 = phi float [ %9864, %9823 ], [ 1.000000e+00, %9783 ]
  %9993 = phi float [ %9865, %9823 ], [ 1.000000e+00, %9783 ]
  %9994 = phi float [ %9987, %9823 ], [ 0.000000e+00, %9783 ]
  %9995 = phi float [ %9988, %9823 ], [ 0.000000e+00, %9783 ]
  %9996 = phi float [ %9989, %9823 ], [ 0.000000e+00, %9783 ]
  %9997 = fmul fast float %9991, %9790
  %9998 = call float @dx.op.dot3.f32(i32 55, float %9991, float %9992, float %9993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9999 = call float @dx.op.dot3.f32(i32 55, float %9994, float %9995, float %9996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10000 = select i1 %220, float %9998, float %9991
  %10001 = select i1 %220, float %9998, float %9992
  %10002 = select i1 %220, float 1.000000e+00, float %9993
  %10003 = select i1 %220, float %9999, float %9994
  %10004 = select i1 %220, float 0.000000e+00, float %9995
  %10005 = select i1 %220, float 0.000000e+00, float %9996
  %10006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10007 = extractvalue %dx.types.CBufRet.i32 %10006, 3
  %10008 = and i32 %10007, 3
  %10009 = icmp ne i32 %10008, 0
  %10010 = and i32 %10007, 4
  %10011 = icmp ne i32 %10010, 0
  %10012 = and i1 %10009, %10011
  %10013 = and i1 %220, %10012
  br i1 %10013, label %10014, label %10020

; <label>:10014                                   ; preds = %9990
  %10015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10016 = extractvalue %dx.types.CBufRet.f32 %10015, 1
  %10017 = fadd fast float %9997, -1.000000e+00
  %10018 = fmul fast float %10016, %10017
  %10019 = fadd fast float %10018, 1.000000e+00
  br label %10020

; <label>:10020                                   ; preds = %10014, %9990
  %10021 = phi float [ %10019, %10014 ], [ %9997, %9990 ]
  %10022 = fadd fast float %9787, %9784
  %10023 = fmul fast float %10000, %10022
  %10024 = fadd fast float %10023, %10003
  %10025 = fadd fast float %9788, %9785
  %10026 = fmul fast float %10001, %10025
  %10027 = fadd fast float %10026, %10004
  %10028 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  br i1 %220, label %10029, label %10044

; <label>:10029                                   ; preds = %10020
  %10030 = fadd fast float %10024, %10027
  %10031 = fmul fast float %10028, %10030
  %10032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10033 = extractvalue %dx.types.CBufRet.f32 %10032, 3
  %10034 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %10035 = fsub fast float %8367, %8361
  %10036 = fadd fast float %10035, %8368
  %10037 = fsub fast float %10036, %10034
  %10038 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %10039 = fmul fast float %10037, %10038
  %10040 = call float @dx.op.unary.f32(i32 7, float %10039)  ; Saturate(value)
  %10041 = fsub fast float %10040, %10033
  %10042 = fmul fast float %10041, %10021
  %10043 = fadd fast float %10042, %10033
  br label %10068

; <label>:10044                                   ; preds = %10020
  %10045 = fadd fast float %9789, %9786
  %10046 = fmul fast float %10002, %10045
  %10047 = fadd fast float %10046, %10005
  %10048 = fmul fast float %10028, %10024
  %10049 = fmul fast float %10028, %10027
  %10050 = fmul fast float %10028, %10047
  %10051 = call float @dx.op.binary.f32(i32 35, float %10049, float %10050)  ; FMax(a,b)
  %10052 = call float @dx.op.binary.f32(i32 35, float %10048, float %10051)  ; FMax(a,b)
  %10053 = call float @dx.op.binary.f32(i32 35, float %10052, float 1.000000e+00)  ; FMax(a,b)
  %10054 = fcmp fast ugt float %10053, 0x3F10000000000000
  br i1 %10054, label %10056, label %10055

; <label>:10055                                   ; preds = %10044
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10056

; <label>:10056                                   ; preds = %10055, %10044
  %10057 = add i32 %56, 356
  %10058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %10057, i32 undef)  ; BufferLoad(srv,index,wot)
  %10059 = extractvalue %dx.types.ResRet.i32 %10058, 0
  %10060 = and i32 %10059, 32
  %10061 = icmp eq i32 %10060, 0
  br i1 %10061, label %10068, label %10062

; <label>:10062                                   ; preds = %10056
  %10063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10064 = extractvalue %dx.types.CBufRet.f32 %10063, 0
  %10065 = fmul fast float %10064, 0x3FE99999A0000000
  %10066 = fadd fast float %10064, %10048
  %10067 = fadd fast float %10065, %10050
  br label %10068

; <label>:10068                                   ; preds = %10062, %10056, %10029
  %10069 = phi float [ %10031, %10029 ], [ %10066, %10062 ], [ %10048, %10056 ]
  %10070 = phi float [ %10043, %10029 ], [ %10049, %10062 ], [ %10049, %10056 ]
  %10071 = phi float [ 1.000000e+00, %10029 ], [ %10067, %10062 ], [ %10050, %10056 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10072 = call float @dx.op.binary.f32(i32 36, float %10069, float 3.225500e+04)  ; FMin(a,b)
  %10073 = call float @dx.op.binary.f32(i32 36, float %10070, float 3.225500e+04)  ; FMin(a,b)
  %10074 = call float @dx.op.binary.f32(i32 36, float %10071, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10072)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10073)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10074)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!70 = !{[50 x i32] [i32 48, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !95}
!72 = !{!73, !93, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !90, !92}
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
!88 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 10, i8 0, !89}
!89 = !{i32 3, i32 8}
!90 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 11, i8 0, !91}
!91 = !{i32 3, i32 13}
!92 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
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
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

