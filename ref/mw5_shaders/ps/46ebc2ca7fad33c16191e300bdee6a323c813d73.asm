;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 334130f3014bb36659df4d307b0dd269
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
; SV_IsFrontFace           0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t49,space1     1
;                                   texture    byte         r/o     T10     t50,space1     1
;                                   texture    byte         r/o     T11     t51,space1     1
;                                   texture    byte         r/o     T12     t52,space1     1
;                                   texture    byte         r/o     T13     t16,space1     1
;                                   texture    byte         r/o     T14     t17,space1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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

@interfaceFresnelMs.i.i.i.2.hca = internal unnamed_addr constant [2 x float] zeroinitializer

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = icmp ne i32 %33, 0
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = alloca [2 x float], align 4
  %72 = alloca [2 x float], align 4
  %73 = alloca [2 x float], align 4
  %74 = alloca [2 x float], align 4
  %75 = alloca [2 x float], align 4
  %76 = alloca [2 x float], align 4
  %77 = alloca [2 x float], align 4
  %78 = alloca [2 x float], align 4
  %79 = alloca [2 x float], align 4
  %80 = alloca [2 x float], align 4
  %81 = alloca [2 x float], align 4
  %82 = alloca [2 x float], align 4
  %83 = alloca [2 x float], align 4
  %84 = alloca [2 x float], align 4
  %85 = alloca [2 x float], align 4
  %86 = alloca [2 x float], align 4
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fmul fast float %90, %68
  %92 = fmul fast float %90, %69
  %93 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %94 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %60, %93
  %100 = fmul fast float %99, %98
  %101 = fmul fast float %61, %93
  %102 = fmul fast float %101, %98
  %103 = fmul fast float %62, %93
  %104 = fmul fast float %103, %98
  %105 = fmul fast float %61, %58
  %106 = fmul fast float %62, %57
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %62, %56
  %109 = fmul fast float %60, %58
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %60, %57
  %112 = fmul fast float %61, %56
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %107, %59
  %115 = fmul fast float %110, %59
  %116 = fmul fast float %113, %59
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %120 = fmul fast float %91, 2.000000e+00
  %121 = fmul fast float %120, %118
  %122 = fmul fast float %92, 2.000000e+00
  %123 = fmul fast float %122, %119
  %124 = fsub fast float 1.000000e+00, %121
  %125 = fsub fast float 1.000000e+00, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %124, %127
  %131 = fmul fast float %124, %128
  %132 = fmul fast float %124, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %125, %134
  %138 = fmul fast float %125, %135
  %139 = fmul fast float %125, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fadd fast float %137, %141
  %145 = fadd fast float %144, %130
  %146 = fadd fast float %138, %142
  %147 = fadd fast float %146, %131
  %148 = fadd fast float %139, %143
  %149 = fadd fast float %148, %132
  %150 = fmul fast float %145, %70
  %151 = fmul fast float %147, %70
  %152 = fmul fast float %149, %70
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %91
  %157 = fmul fast float %155, %92
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 114688
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %161, float %156, float 0.000000e+00
  %163 = select i1 %161, float %157, float 0.000000e+00
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fmul fast float %165, 2.550000e+02
  %167 = fptoui float %166 to i32
  %168 = select i1 %161, i32 %167, i32 0
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp ne i32 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %188

; <label>:177                                     ; preds = %0
  %178 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %179 = fmul fast float %178, %92
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fmul fast float %180, %91
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %181, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fcmp fast olt float %184, %186
  br label %191

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %174, 0
  %190 = and i1 %173, %189
  br label %191

; <label>:191                                     ; preds = %188, %177
  %192 = phi i1 [ %187, %177 ], [ %190, %188 ]
  %193 = add i32 %35, 156
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %35, 216
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %207, 8
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = add i32 %35, 36
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %35, 288
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %230, 0x3F50624DE0000000
  %234 = fmul fast float %232, 0x3F50624DE0000000
  %235 = add i32 %35, 172
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %247 = add i32 %35, 232
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %261 = add i32 %35, 52
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %35, 304
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %35, 188
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %289 = add i32 %35, 248
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %303 = add i32 %35, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %35, 320
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %35, 204
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %331 = add i32 %35, 264
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %345 = add i32 %35, 84
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %35, 336
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %35, 348
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 32
  %365 = and i32 %363, 64
  %366 = and i32 %363, 128
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 2
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %384, label %371

; <label>:371                                     ; preds = %191
  %372 = add i32 %35, 472
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = add i32 %374, 0
  %376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %376, %dx.types.Handle %88, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = fmul fast float %378, %65
  %382 = fmul fast float %379, %66
  %383 = fmul fast float %380, %67
  br label %384

; <label>:384                                     ; preds = %371, %191
  %385 = phi float [ %67, %191 ], [ %383, %371 ]
  %386 = phi float [ %66, %191 ], [ %382, %371 ]
  %387 = phi float [ %65, %191 ], [ %381, %371 ]
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 2
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %411, label %392

; <label>:392                                     ; preds = %384
  %393 = add i32 %35, 44
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 1
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %397, float %387, float 1.000000e+00
  %399 = add i32 %35, 60
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %386, float 1.000000e+00
  %405 = add i32 %35, 76
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %385, float 1.000000e+00
  br label %411

; <label>:411                                     ; preds = %392, %384
  %412 = phi float [ %385, %384 ], [ %410, %392 ]
  %413 = phi float [ %386, %384 ], [ %404, %392 ]
  %414 = phi float [ %387, %384 ], [ %398, %392 ]
  %415 = lshr i32 %389, 20
  %416 = and i32 %415, 3
  %417 = add nuw nsw i32 %416, 1
  %418 = icmp eq i32 %416, 0
  %419 = icmp ne i32 %416, 0
  %420 = icmp eq i32 %364, 0
  %421 = or i1 %419, %420
  br i1 %421, label %1063, label %422

; <label>:422                                     ; preds = %411
  %423 = add i32 %35, 40
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %35, 44
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = or i32 %428, %425
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %1063, label %431

; <label>:431                                     ; preds = %422
  %432 = and i32 %425, 262144
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %38, float 1.000000e+00
  %435 = select i1 %433, float %39, float 0.000000e+00
  %436 = select i1 %433, float %40, float 0.000000e+00
  %437 = select i1 %433, float %41, float 1.000000e+00
  %438 = select i1 %433, float %42, float %63
  %439 = select i1 %433, float %43, float %64
  %440 = add i32 %35, 300
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %444, 0x3F50624DE0000000
  %446 = add i32 %35, 104
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  %451 = lshr i32 %448, 24
  %452 = add i32 %35, 308
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = lshr i32 %454, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = add i32 %35, 48
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = lshr i32 %461, 22
  %463 = shl nuw nsw i32 %462, 5
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = shl i32 %461, 4
  %466 = and i32 %465, 32752
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %461, 7
  %469 = and i32 %468, 32752
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 3
  %473 = fmul fast float %472, 1.000000e+03
  %474 = fmul fast float %473, %275
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = fadd fast float %475, %265
  %477 = fmul fast float %473, %276
  %478 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %479 = fadd fast float %478, %267
  %480 = fmul fast float %445, %473
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fmul fast float %481, 0x401921FB60000000
  %483 = fadd fast float %482, %464
  %484 = call float @dx.op.unary.f32(i32 13, float %483)  ; Sin(value)
  %485 = call float @dx.op.unary.f32(i32 12, float %483)  ; Cos(value)
  %486 = fsub fast float -0.000000e+00, %484
  %487 = fadd fast float %438, -5.000000e-01
  %488 = fadd fast float %439, -5.000000e-01
  %489 = fmul fast float %456, %487
  %490 = fmul fast float %458, %488
  %491 = fadd fast float %489, 5.000000e-01
  %492 = fadd fast float %490, 5.000000e-01
  %493 = fmul fast float %467, %491
  %494 = fmul fast float %470, %492
  %495 = fmul fast float %485, %493
  %496 = call float @dx.op.tertiary.f32(i32 46, float %486, float %494, float %495)  ; FMad(a,b,c)
  %497 = fmul fast float %484, %493
  %498 = call float @dx.op.tertiary.f32(i32 46, float %485, float %494, float %497)  ; FMad(a,b,c)
  %499 = fadd fast float %476, %496
  %500 = fadd fast float %479, %498
  %501 = icmp ugt i32 %450, 1
  %502 = icmp ugt i32 %448, 33554431
  %503 = or i1 %502, %501
  br i1 %503, label %504, label %529

; <label>:504                                     ; preds = %431
  %505 = add i32 %35, 244
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = lshr i32 %507, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = fmul fast float %472, %509
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = mul nuw nsw i32 %450, %451
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %511, %513
  %515 = call float @dx.op.unary.f32(i32 27, float %514)  ; Round_ni(value)
  %516 = fptoui float %515 to i32
  %517 = urem i32 %516, %450
  %518 = udiv i32 %516, %451
  %519 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %520 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %521 = uitofp i32 %517 to float
  %522 = uitofp i32 %518 to float
  %523 = fadd fast float %519, %521
  %524 = fadd fast float %520, %522
  %525 = uitofp i32 %450 to float
  %526 = uitofp i32 %451 to float
  %527 = fdiv fast float %523, %525
  %528 = fdiv fast float %524, %526
  br label %529

; <label>:529                                     ; preds = %504, %431
  %530 = phi float [ %527, %504 ], [ %499, %431 ]
  %531 = phi float [ %528, %504 ], [ %500, %431 ]
  %532 = and i32 %425, 16777216
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %643, label %534

; <label>:534                                     ; preds = %529
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = fadd fast float %536, %150
  %540 = fadd fast float %537, %151
  %541 = fadd fast float %538, %152
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %545 = icmp eq i32 %36, 65535
  br i1 %545, label %640, label %546

; <label>:546                                     ; preds = %534
  %547 = lshr i32 %36, 1
  %548 = shl i32 %547, 2
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %36, 1
  %552 = icmp ne i32 %551, 0
  %553 = lshr i32 %550, 16
  %554 = and i32 %550, 65535
  %555 = select i1 %552, i32 %553, i32 %554
  %556 = icmp eq i32 %555, 65535
  br i1 %556, label %636, label %557

; <label>:557                                     ; preds = %546
  %558 = mul nuw nsw i32 %555, 40
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = add nuw nsw i32 %558, 12
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = extractvalue %dx.types.ResRet.f32 %564, 2
  %568 = add nuw nsw i32 %558, 24
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = extractvalue %dx.types.ResRet.f32 %569, 1
  %572 = extractvalue %dx.types.ResRet.f32 %569, 2
  %573 = add nuw nsw i32 %558, 36
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = fsub fast float %539, %560
  %577 = fsub fast float %540, %561
  %578 = fsub fast float %541, %562
  %579 = fmul fast float %575, %576
  %580 = fmul fast float %575, %577
  %581 = fmul fast float %575, %578
  %582 = call float @dx.op.unary.f32(i32 27, float %579)  ; Round_ni(value)
  %583 = call float @dx.op.unary.f32(i32 27, float %580)  ; Round_ni(value)
  %584 = call float @dx.op.unary.f32(i32 27, float %581)  ; Round_ni(value)
  %585 = fadd fast float %582, 5.000000e-01
  %586 = fadd fast float %583, 5.000000e-01
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fmul fast float %585, %565
  %589 = fmul fast float %586, %566
  %590 = fmul fast float %587, %567
  %591 = shl i32 %36, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = add i32 %593, 0
  %595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %596 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %597 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %598 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %595, %dx.types.Handle %30, float %596, float %597, float %598, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = fmul fast float %600, 1.023000e+03
  %604 = fmul fast float %601, 1.023000e+03
  %605 = fmul fast float %602, 1.023000e+03
  %606 = fadd fast float %603, 5.000000e-01
  %607 = fadd fast float %604, 5.000000e-01
  %608 = fadd fast float %605, 5.000000e-01
  %609 = call float @dx.op.unary.f32(i32 27, float %606)  ; Round_ni(value)
  %610 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %611 = call float @dx.op.unary.f32(i32 27, float %608)  ; Round_ni(value)
  %612 = fsub fast float %579, %582
  %613 = fsub fast float %580, %583
  %614 = fsub fast float %581, %584
  %615 = fmul fast float %612, 7.500000e-01
  %616 = fmul fast float %613, 7.500000e-01
  %617 = fmul fast float %614, 7.500000e-01
  %618 = fadd fast float %582, 1.250000e-01
  %619 = fadd fast float %618, %615
  %620 = fadd fast float %619, %609
  %621 = fadd fast float %583, 1.250000e-01
  %622 = fadd fast float %621, %616
  %623 = fadd fast float %622, %610
  %624 = fadd fast float %584, 1.250000e-01
  %625 = fadd fast float %624, %617
  %626 = fadd fast float %625, %611
  %627 = fmul fast float %620, %570
  %628 = fmul fast float %623, %571
  %629 = fmul fast float %626, %572
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %633, %dx.types.Handle %28, float %627, float %628, float %629, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  br label %636

; <label>:636                                     ; preds = %557, %546
  %637 = phi float [ %635, %557 ], [ -1.000000e+00, %546 ]
  %638 = fadd fast float %637, %544
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  br label %640

; <label>:640                                     ; preds = %636, %534
  %641 = phi float [ %639, %636 ], [ %544, %534 ]
  %642 = fmul fast float %641, %414
  br label %643

; <label>:643                                     ; preds = %640, %529
  %644 = phi float [ %642, %640 ], [ %414, %529 ]
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 256
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %695, label %649

; <label>:649                                     ; preds = %643
  %650 = add i32 %35, 428
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = add i32 %652, 0
  %654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %654, %dx.types.Handle %88, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = add i32 %35, 116
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = shl i32 %659, 4
  %661 = and i32 %660, 32752
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %659, 7
  %664 = and i32 %663, 32752
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = fsub fast float 1.000000e+00, %644
  %667 = call float @dx.op.binary.f32(i32 35, float %666, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %668 = bitcast float %644 to i32
  %669 = sitofp i32 %668 to float
  %670 = fadd fast float %669, 0xC1CFBF8940000000
  %671 = fmul fast float %665, %670
  %672 = fadd fast float %671, 0x41CFBF8940000000
  %673 = fptosi float %672 to i32
  %674 = bitcast i32 %673 to float
  %675 = bitcast float %667 to i32
  %676 = sitofp i32 %675 to float
  %677 = fadd fast float %676, 0xC1CFBF8940000000
  %678 = fmul fast float %677, %665
  %679 = fadd fast float %678, 0x41CFBF8940000000
  %680 = fptosi float %679 to i32
  %681 = bitcast i32 %680 to float
  %682 = fmul fast float %674, %662
  %683 = fmul fast float %681, %662
  %684 = fsub fast float %667, %682
  %685 = fadd fast float %683, %667
  %686 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %687 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %688 = fsub fast float %656, %686
  %689 = fsub fast float %687, %686
  %690 = bitcast float %689 to i32
  %691 = sub nsw i32 2129859010, %690
  %692 = bitcast i32 %691 to float
  %693 = fmul fast float %692, %688
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  br label %695

; <label>:695                                     ; preds = %649, %643
  %696 = phi float [ %694, %649 ], [ %644, %643 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 128
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %717, label %701

; <label>:701                                     ; preds = %695
  %702 = add i32 %35, 412
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %704, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %706, %dx.types.Handle %88, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 524288
  %712 = icmp ne i32 %711, 0
  %713 = fcmp fast ogt float %708, 0x3FE0101020000000
  %714 = select i1 %713, float 1.000000e+00, float 0.000000e+00
  %715 = select i1 %712, float %714, float %708
  %716 = fmul fast float %715, %696
  br label %717

; <label>:717                                     ; preds = %701, %695
  %718 = phi float [ %716, %701 ], [ %696, %695 ]
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 16
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %921, label %723

; <label>:723                                     ; preds = %717
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %35, 364
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = add i32 %728, 0
  %730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %730, %dx.types.Handle %87, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  %736 = and i32 %725, 255
  %737 = uitofp i32 %736 to float
  %738 = lshr i32 %725, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %735, %737
  %742 = fadd fast float %741, %740
  %743 = fmul fast float %742, 0x3F70101000000000
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 512
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %756, label %748

; <label>:748                                     ; preds = %723
  %749 = add i32 %35, 444
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = add i32 %751, 0
  %753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %753, %dx.types.Handle %88, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  br label %756

; <label>:756                                     ; preds = %748, %723
  %757 = phi float [ %755, %748 ], [ 1.000000e+00, %723 ]
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 33554432
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %868, label %762

; <label>:762                                     ; preds = %756
  %763 = add i32 %35, 240
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 65535
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = lshr i32 %765, 16
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = add i32 %35, 244
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 24
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = and i32 %776, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F70101020000000
  %783 = lshr i32 %776, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %776, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = add i32 %35, 236
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 24
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101020000000
  %797 = and i32 %793, 255
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3F70101020000000
  %800 = lshr i32 %793, 8
  %801 = and i32 %800, 255
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F70101020000000
  %804 = lshr i32 %793, 16
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = bitcast float %732 to i32
  %809 = ashr i32 %808, 1
  %810 = sub nsw i32 1597463174, %809
  %811 = bitcast i32 %810 to float
  %812 = fmul fast float %732, 5.000000e-01
  %813 = fmul fast float %811, %811
  %814 = fmul fast float %813, %812
  %815 = fsub fast float 1.500000e+00, %814
  %816 = fmul fast float %811, %732
  %817 = fmul fast float %816, %815
  %818 = bitcast float %733 to i32
  %819 = ashr i32 %818, 1
  %820 = sub nsw i32 1597463174, %819
  %821 = bitcast i32 %820 to float
  %822 = fmul fast float %733, 5.000000e-01
  %823 = fmul fast float %821, %821
  %824 = fmul fast float %823, %822
  %825 = fsub fast float 1.500000e+00, %824
  %826 = fmul fast float %821, %733
  %827 = fmul fast float %826, %825
  %828 = bitcast float %734 to i32
  %829 = ashr i32 %828, 1
  %830 = sub nsw i32 1597463174, %829
  %831 = bitcast i32 %830 to float
  %832 = fmul fast float %734, 5.000000e-01
  %833 = fmul fast float %831, %831
  %834 = fmul fast float %833, %832
  %835 = fsub fast float 1.500000e+00, %834
  %836 = fmul fast float %831, %734
  %837 = fmul fast float %836, %835
  %838 = fsub fast float %817, %799
  %839 = fsub fast float %827, %803
  %840 = fsub fast float %837, %807
  %841 = fmul fast float %838, %767
  %842 = fmul fast float %839, %769
  %843 = fmul fast float %840, %774
  %844 = fadd fast float %841, %782
  %845 = fadd fast float %842, %786
  %846 = fadd fast float %843, %790
  %847 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %849 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %850 = fmul fast float %847, %847
  %851 = fmul fast float %848, %848
  %852 = fmul fast float %849, %849
  %853 = fsub fast float %850, %732
  %854 = fsub fast float %851, %733
  %855 = fsub fast float %852, %734
  %856 = fmul fast float %853, %757
  %857 = fmul fast float %854, %757
  %858 = fmul fast float %855, %757
  %859 = fadd fast float %856, %732
  %860 = fadd fast float %857, %733
  %861 = fadd fast float %858, %734
  %862 = fadd fast float %779, %743
  %863 = fsub fast float %862, %796
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %865 = fsub fast float %864, %743
  %866 = fmul fast float %865, %757
  %867 = fadd fast float %866, %743
  br label %921

; <label>:868                                     ; preds = %756
  %869 = and i32 %759, 134217728
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %905, label %871

; <label>:871                                     ; preds = %868
  %872 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %873 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %874 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %875 = fadd fast float %872, -5.000000e-01
  %876 = fadd fast float %873, -5.000000e-01
  %877 = fadd fast float %874, -5.000000e-01
  %878 = fmul fast float %875, %757
  %879 = fmul fast float %876, %757
  %880 = fmul fast float %877, %757
  %881 = fadd fast float %878, 5.000000e-01
  %882 = fadd fast float %879, 5.000000e-01
  %883 = fadd fast float %880, 5.000000e-01
  %884 = call float @dx.op.unary.f32(i32 24, float %732)  ; Sqrt(value)
  %885 = call float @dx.op.unary.f32(i32 24, float %733)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %887 = fmul fast float %881, 2.000000e+00
  %888 = fsub fast float 1.000000e+00, %887
  %889 = fmul fast float %888, %884
  %890 = fadd fast float %889, %887
  %891 = fmul fast float %890, %884
  %892 = fmul fast float %882, 2.000000e+00
  %893 = fsub fast float 1.000000e+00, %892
  %894 = fmul fast float %893, %885
  %895 = fadd fast float %894, %892
  %896 = fmul fast float %895, %885
  %897 = fmul fast float %883, 2.000000e+00
  %898 = fsub fast float 1.000000e+00, %897
  %899 = fmul fast float %898, %886
  %900 = fadd fast float %899, %897
  %901 = fmul fast float %900, %886
  %902 = fmul fast float %891, %891
  %903 = fmul fast float %896, %896
  %904 = fmul fast float %901, %901
  br label %921

; <label>:905                                     ; preds = %868
  %906 = fmul fast float %252, %252
  %907 = fmul fast float %256, %256
  %908 = fmul fast float %260, %260
  %909 = fadd fast float %906, -1.000000e+00
  %910 = fadd fast float %907, -1.000000e+00
  %911 = fadd fast float %908, -1.000000e+00
  %912 = fmul fast float %757, %909
  %913 = fmul fast float %757, %910
  %914 = fmul fast float %757, %911
  %915 = fadd fast float %912, 1.000000e+00
  %916 = fadd fast float %913, 1.000000e+00
  %917 = fadd fast float %914, 1.000000e+00
  %918 = fmul fast float %915, %732
  %919 = fmul fast float %916, %733
  %920 = fmul fast float %917, %734
  br label %921

; <label>:921                                     ; preds = %905, %871, %762, %717
  %922 = phi float [ %867, %762 ], [ %743, %871 ], [ %743, %905 ], [ 0x3FA23C0BE0000000, %717 ]
  %923 = phi float [ %859, %762 ], [ %902, %871 ], [ %918, %905 ], [ 0.000000e+00, %717 ]
  %924 = phi float [ %860, %762 ], [ %903, %871 ], [ %919, %905 ], [ 0.000000e+00, %717 ]
  %925 = phi float [ %861, %762 ], [ %904, %871 ], [ %920, %905 ], [ 0.000000e+00, %717 ]
  %926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.i32 %926, 1
  %928 = and i32 %927, 1
  %929 = icmp ne i32 %928, 0
  %930 = add i32 %35, 356
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 32
  %934 = icmp ne i32 %933, 0
  %935 = and i1 %929, %934
  %936 = select i1 %935, float 1.000000e+00, float %923
  %937 = select i1 %935, float 0x3FD3333340000000, float %924
  %938 = select i1 %935, float 0x3FD3333340000000, float %925
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 32
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1015, label %943

; <label>:943                                     ; preds = %921
  %944 = add i32 %35, 108
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = add i32 %35, 380
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = add i32 %949, 0
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %951, %dx.types.Handle %87, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = extractvalue %dx.types.ResRet.f32 %952, 1
  %955 = extractvalue %dx.types.ResRet.f32 %952, 2
  %956 = extractvalue %dx.types.ResRet.f32 %952, 3
  %957 = and i32 %946, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %946, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = lshr i32 %946, 16
  %963 = and i32 %962, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F70101000000000
  %966 = fmul fast float %953, %958
  %967 = fadd fast float %966, %961
  %968 = fmul fast float %967, 0x3F70101000000000
  %969 = fadd fast float %954, -5.000000e-01
  %970 = fadd fast float %956, -5.000000e-01
  %971 = fmul fast float %969, %965
  %972 = fmul fast float %970, %965
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fmul fast float %973, 2.000000e+00
  %976 = fadd fast float %975, -1.000000e+00
  %977 = fmul fast float %974, 2.000000e+00
  %978 = fadd fast float %977, -1.000000e+00
  %979 = fadd fast float %976, %978
  %980 = fmul fast float %979, 5.000000e-01
  %981 = fsub fast float %976, %978
  %982 = fmul fast float %981, 5.000000e-01
  %983 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %984 = fsub fast float 1.000000e+00, %983
  %985 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %986 = fsub fast float %984, %985
  %987 = call float @dx.op.dot3.f32(i32 55, float %980, float %982, float %986, float %980, float %982, float %986)  ; Dot3(ax,ay,az,bx,by,bz)
  %988 = call float @dx.op.unary.f32(i32 25, float %987)  ; Rsqrt(value)
  %989 = fmul fast float %980, %988
  %990 = fmul fast float %982, %988
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 67108864
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1011, label %995

; <label>:995                                     ; preds = %943
  %996 = add i32 %35, 296
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, 65535
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 65535
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = lshr i32 %998, 16
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = fsub fast float %968, %1006
  %1008 = fmul fast float %1007, %1000
  %1009 = fadd fast float %1008, %1004
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br label %1011

; <label>:1011                                    ; preds = %995, %943
  %1012 = phi float [ %1010, %995 ], [ %968, %943 ]
  %1013 = call float @dx.op.dot2.f32(i32 54, float %989, float %990, float %434, float %435)  ; Dot2(ax,ay,bx,by)
  %1014 = call float @dx.op.dot2.f32(i32 54, float %989, float %990, float %436, float %437)  ; Dot2(ax,ay,bx,by)
  br label %1015

; <label>:1015                                    ; preds = %1011, %921
  %1016 = phi float [ %1012, %1011 ], [ 0x3FD6666660000000, %921 ]
  %1017 = phi float [ %1013, %1011 ], [ 0.000000e+00, %921 ]
  %1018 = phi float [ %1014, %1011 ], [ 0.000000e+00, %921 ]
  %1019 = phi float [ %955, %1011 ], [ 1.000000e+00, %921 ]
  %1020 = add i32 %35, 176
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 22
  %1024 = shl nuw nsw i32 %1023, 5
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 64
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1063, label %1030

; <label>:1030                                    ; preds = %1015
  %1031 = add i32 %35, 396
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = add i32 %1033, 0
  %1035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 131072
  %1039 = icmp eq i32 %1038, 0
  %1040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1035, %dx.types.Handle %87, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = fmul fast float %1041, %240
  %1045 = fmul fast float %1042, %243
  %1046 = fmul fast float %1043, %246
  br i1 %1039, label %1053, label %1047

; <label>:1047                                    ; preds = %1030
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = fmul fast float %1049, %1044
  %1051 = fmul fast float %1049, %1045
  %1052 = fmul fast float %1049, %1046
  br label %1053

; <label>:1053                                    ; preds = %1047, %1030
  %1054 = phi float [ %1050, %1047 ], [ %1044, %1030 ]
  %1055 = phi float [ %1051, %1047 ], [ %1045, %1030 ]
  %1056 = phi float [ %1052, %1047 ], [ %1046, %1030 ]
  %1057 = fmul fast float %1054, %1025
  %1058 = select i1 %192, float %1057, float %1054
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1055, float %1056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = select i1 %192, float 0.000000e+00, float %1054
  %1061 = select i1 %192, float %1059, float %1055
  %1062 = select i1 %192, float 0.000000e+00, float %1056
  br label %1063

; <label>:1063                                    ; preds = %1053, %1015, %422, %411
  %1064 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %1017, %1015 ], [ %1017, %1053 ]
  %1065 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %1018, %1015 ], [ %1018, %1053 ]
  %1066 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ 0.000000e+00, %1015 ], [ %1060, %1053 ]
  %1067 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ 0.000000e+00, %1015 ], [ %1061, %1053 ]
  %1068 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ 0.000000e+00, %1015 ], [ %1062, %1053 ]
  %1069 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %936, %1015 ], [ %936, %1053 ]
  %1070 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %937, %1015 ], [ %937, %1053 ]
  %1071 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %938, %1015 ], [ %938, %1053 ]
  %1072 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %922, %1015 ], [ %922, %1053 ]
  %1073 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %718, %1015 ], [ %718, %1053 ]
  %1074 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %1016, %1015 ], [ %1016, %1053 ]
  %1075 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %411 ], [ %1019, %1015 ], [ %1019, %1053 ]
  %1076 = icmp eq i32 %417, 2
  %1077 = icmp ugt i32 %417, 2
  %1078 = icmp eq i32 %365, 0
  %1079 = or i1 %1077, %1078
  br i1 %1079, label %1890, label %1080

; <label>:1080                                    ; preds = %1063
  %1081 = add i32 %35, 56
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %35, 60
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = or i32 %1086, %1083
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1890, label %1089

; <label>:1089                                    ; preds = %1080
  %1090 = and i32 %1083, 262144
  %1091 = icmp ne i32 %1090, 0
  %1092 = select i1 %1091, float %38, float 1.000000e+00
  %1093 = select i1 %1091, float %39, float 0.000000e+00
  %1094 = select i1 %1091, float %40, float 0.000000e+00
  %1095 = select i1 %1091, float %41, float 1.000000e+00
  %1096 = select i1 %1091, float %42, float %63
  %1097 = select i1 %1091, float %43, float %64
  %1098 = add i32 %35, 316
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = lshr i32 %1100, 16
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = fmul fast float %1102, 0x3F50624DE0000000
  %1104 = add i32 %35, 120
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = lshr i32 %1106, 16
  %1108 = and i32 %1107, 255
  %1109 = lshr i32 %1106, 24
  %1110 = add i32 %35, 324
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 65535
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1112, 16
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = add i32 %35, 64
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = lshr i32 %1119, 22
  %1121 = shl nuw nsw i32 %1120, 5
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = shl i32 %1119, 4
  %1124 = and i32 %1123, 32752
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = lshr i32 %1119, 7
  %1127 = and i32 %1126, 32752
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = fmul fast float %1130, 1.000000e+03
  %1132 = fmul fast float %1131, %317
  %1133 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1134 = fadd fast float %1133, %307
  %1135 = fmul fast float %1131, %318
  %1136 = call float @dx.op.unary.f32(i32 22, float %1135)  ; Frc(value)
  %1137 = fadd fast float %1136, %309
  %1138 = fmul fast float %1103, %1131
  %1139 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1140 = fmul fast float %1139, 0x401921FB60000000
  %1141 = fadd fast float %1140, %1122
  %1142 = call float @dx.op.unary.f32(i32 13, float %1141)  ; Sin(value)
  %1143 = call float @dx.op.unary.f32(i32 12, float %1141)  ; Cos(value)
  %1144 = fsub fast float -0.000000e+00, %1142
  %1145 = fadd fast float %1096, -5.000000e-01
  %1146 = fadd fast float %1097, -5.000000e-01
  %1147 = fmul fast float %1114, %1145
  %1148 = fmul fast float %1116, %1146
  %1149 = fadd fast float %1147, 5.000000e-01
  %1150 = fadd fast float %1148, 5.000000e-01
  %1151 = fmul fast float %1125, %1149
  %1152 = fmul fast float %1128, %1150
  %1153 = fmul fast float %1143, %1151
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %1152, float %1153)  ; FMad(a,b,c)
  %1155 = fmul fast float %1142, %1151
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1152, float %1155)  ; FMad(a,b,c)
  %1157 = fadd fast float %1134, %1154
  %1158 = fadd fast float %1137, %1156
  %1159 = icmp ugt i32 %1108, 1
  %1160 = icmp ugt i32 %1106, 33554431
  %1161 = or i1 %1160, %1159
  br i1 %1161, label %1162, label %1187

; <label>:1162                                    ; preds = %1089
  %1163 = add i32 %35, 260
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 16
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1130, %1167
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = mul nuw nsw i32 %1108, %1109
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1169, %1171
  %1173 = call float @dx.op.unary.f32(i32 27, float %1172)  ; Round_ni(value)
  %1174 = fptoui float %1173 to i32
  %1175 = urem i32 %1174, %1108
  %1176 = udiv i32 %1174, %1109
  %1177 = call float @dx.op.unary.f32(i32 22, float %1157)  ; Frc(value)
  %1178 = call float @dx.op.unary.f32(i32 22, float %1158)  ; Frc(value)
  %1179 = uitofp i32 %1175 to float
  %1180 = uitofp i32 %1176 to float
  %1181 = fadd fast float %1177, %1179
  %1182 = fadd fast float %1178, %1180
  %1183 = uitofp i32 %1108 to float
  %1184 = uitofp i32 %1109 to float
  %1185 = fdiv fast float %1181, %1183
  %1186 = fdiv fast float %1182, %1184
  br label %1187

; <label>:1187                                    ; preds = %1162, %1089
  %1188 = phi float [ %1185, %1162 ], [ %1157, %1089 ]
  %1189 = phi float [ %1186, %1162 ], [ %1158, %1089 ]
  %1190 = and i32 %1083, 16777216
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1301, label %1192

; <label>:1192                                    ; preds = %1187
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = fadd fast float %1194, %150
  %1198 = fadd fast float %1195, %151
  %1199 = fadd fast float %1196, %152
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = icmp eq i32 %36, 65535
  br i1 %1203, label %1298, label %1204

; <label>:1204                                    ; preds = %1192
  %1205 = lshr i32 %36, 1
  %1206 = shl i32 %1205, 2
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %36, 1
  %1210 = icmp ne i32 %1209, 0
  %1211 = lshr i32 %1208, 16
  %1212 = and i32 %1208, 65535
  %1213 = select i1 %1210, i32 %1211, i32 %1212
  %1214 = icmp eq i32 %1213, 65535
  br i1 %1214, label %1294, label %1215

; <label>:1215                                    ; preds = %1204
  %1216 = mul nuw nsw i32 %1213, 40
  %1217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = add nuw nsw i32 %1216, 12
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = add nuw nsw i32 %1216, 24
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = add nuw nsw i32 %1216, 36
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = fsub fast float %1197, %1218
  %1235 = fsub fast float %1198, %1219
  %1236 = fsub fast float %1199, %1220
  %1237 = fmul fast float %1233, %1234
  %1238 = fmul fast float %1233, %1235
  %1239 = fmul fast float %1233, %1236
  %1240 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1241 = call float @dx.op.unary.f32(i32 27, float %1238)  ; Round_ni(value)
  %1242 = call float @dx.op.unary.f32(i32 27, float %1239)  ; Round_ni(value)
  %1243 = fadd fast float %1240, 5.000000e-01
  %1244 = fadd fast float %1241, 5.000000e-01
  %1245 = fadd fast float %1242, 5.000000e-01
  %1246 = fmul fast float %1243, %1223
  %1247 = fmul fast float %1244, %1224
  %1248 = fmul fast float %1245, %1225
  %1249 = shl i32 %36, 2
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1255 = call float @dx.op.unary.f32(i32 22, float %1247)  ; Frc(value)
  %1256 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1253, %dx.types.Handle %30, float %1254, float %1255, float %1256, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = fmul fast float %1258, 1.023000e+03
  %1262 = fmul fast float %1259, 1.023000e+03
  %1263 = fmul fast float %1260, 1.023000e+03
  %1264 = fadd fast float %1261, 5.000000e-01
  %1265 = fadd fast float %1262, 5.000000e-01
  %1266 = fadd fast float %1263, 5.000000e-01
  %1267 = call float @dx.op.unary.f32(i32 27, float %1264)  ; Round_ni(value)
  %1268 = call float @dx.op.unary.f32(i32 27, float %1265)  ; Round_ni(value)
  %1269 = call float @dx.op.unary.f32(i32 27, float %1266)  ; Round_ni(value)
  %1270 = fsub fast float %1237, %1240
  %1271 = fsub fast float %1238, %1241
  %1272 = fsub fast float %1239, %1242
  %1273 = fmul fast float %1270, 7.500000e-01
  %1274 = fmul fast float %1271, 7.500000e-01
  %1275 = fmul fast float %1272, 7.500000e-01
  %1276 = fadd fast float %1240, 1.250000e-01
  %1277 = fadd fast float %1276, %1273
  %1278 = fadd fast float %1277, %1267
  %1279 = fadd fast float %1241, 1.250000e-01
  %1280 = fadd fast float %1279, %1274
  %1281 = fadd fast float %1280, %1268
  %1282 = fadd fast float %1242, 1.250000e-01
  %1283 = fadd fast float %1282, %1275
  %1284 = fadd fast float %1283, %1269
  %1285 = fmul fast float %1278, %1228
  %1286 = fmul fast float %1281, %1229
  %1287 = fmul fast float %1284, %1230
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = add i32 %1289, 0
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1291, %dx.types.Handle %28, float %1285, float %1286, float %1287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  br label %1294

; <label>:1294                                    ; preds = %1215, %1204
  %1295 = phi float [ %1293, %1215 ], [ -1.000000e+00, %1204 ]
  %1296 = fadd fast float %1295, %1202
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  br label %1298

; <label>:1298                                    ; preds = %1294, %1192
  %1299 = phi float [ %1297, %1294 ], [ %1202, %1192 ]
  %1300 = fmul fast float %1299, %413
  br label %1301

; <label>:1301                                    ; preds = %1298, %1187
  %1302 = phi float [ %1300, %1298 ], [ %413, %1187 ]
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 256
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1353, label %1307

; <label>:1307                                    ; preds = %1301
  %1308 = add i32 %35, 432
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %1310, 0
  %1312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1312, %dx.types.Handle %88, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = add i32 %35, 132
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = shl i32 %1317, 4
  %1319 = and i32 %1318, 32752
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = lshr i32 %1317, 7
  %1322 = and i32 %1321, 32752
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = fsub fast float 1.000000e+00, %1302
  %1325 = call float @dx.op.binary.f32(i32 35, float %1324, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1326 = bitcast float %1302 to i32
  %1327 = sitofp i32 %1326 to float
  %1328 = fadd fast float %1327, 0xC1CFBF8940000000
  %1329 = fmul fast float %1323, %1328
  %1330 = fadd fast float %1329, 0x41CFBF8940000000
  %1331 = fptosi float %1330 to i32
  %1332 = bitcast i32 %1331 to float
  %1333 = bitcast float %1325 to i32
  %1334 = sitofp i32 %1333 to float
  %1335 = fadd fast float %1334, 0xC1CFBF8940000000
  %1336 = fmul fast float %1335, %1323
  %1337 = fadd fast float %1336, 0x41CFBF8940000000
  %1338 = fptosi float %1337 to i32
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1332, %1320
  %1341 = fmul fast float %1339, %1320
  %1342 = fsub fast float %1325, %1340
  %1343 = fadd fast float %1341, %1325
  %1344 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1345 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1346 = fsub fast float %1314, %1344
  %1347 = fsub fast float %1345, %1344
  %1348 = bitcast float %1347 to i32
  %1349 = sub nsw i32 2129859010, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1350, %1346
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br label %1353

; <label>:1353                                    ; preds = %1307, %1301
  %1354 = phi float [ %1352, %1307 ], [ %1302, %1301 ]
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 128
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1375, label %1359

; <label>:1359                                    ; preds = %1353
  %1360 = add i32 %35, 416
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = add i32 %1362, 0
  %1364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1364, %dx.types.Handle %88, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 524288
  %1370 = icmp ne i32 %1369, 0
  %1371 = fcmp fast ogt float %1366, 0x3FE0101020000000
  %1372 = select i1 %1371, float 1.000000e+00, float 0.000000e+00
  %1373 = select i1 %1370, float %1372, float %1366
  %1374 = fmul fast float %1373, %1354
  br label %1375

; <label>:1375                                    ; preds = %1359, %1353
  %1376 = phi float [ %1374, %1359 ], [ %1354, %1353 ]
  %1377 = fcmp fast oge float %1376, 0x3F70101020000000
  %1378 = or i1 %1076, %1377
  br i1 %1378, label %1379, label %1890

; <label>:1379                                    ; preds = %1375
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 16
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1582, label %1384

; <label>:1384                                    ; preds = %1379
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = add i32 %35, 368
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = add i32 %1389, 0
  %1391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1391, %dx.types.Handle %87, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.ResRet.f32 %1392, 3
  %1397 = and i32 %1386, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = lshr i32 %1386, 8
  %1400 = and i32 %1399, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1396, %1398
  %1403 = fadd fast float %1402, %1401
  %1404 = fmul fast float %1403, 0x3F70101000000000
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 512
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1417, label %1409

; <label>:1409                                    ; preds = %1384
  %1410 = add i32 %35, 448
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %88, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  br label %1417

; <label>:1417                                    ; preds = %1409, %1384
  %1418 = phi float [ %1416, %1409 ], [ 1.000000e+00, %1384 ]
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 33554432
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1529, label %1423

; <label>:1423                                    ; preds = %1417
  %1424 = add i32 %35, 256
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 65535
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = lshr i32 %1426, 16
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = add i32 %35, 260
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 65535
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = lshr i32 %1437, 24
  %1439 = uitofp i32 %1438 to float
  %1440 = fmul fast float %1439, 0x3F70101020000000
  %1441 = and i32 %1437, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101020000000
  %1444 = lshr i32 %1437, 8
  %1445 = and i32 %1444, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = fmul fast float %1446, 0x3F70101020000000
  %1448 = lshr i32 %1437, 16
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = add i32 %35, 252
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = lshr i32 %1454, 24
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = and i32 %1454, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = fmul fast float %1459, 0x3F70101020000000
  %1461 = lshr i32 %1454, 8
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1463, 0x3F70101020000000
  %1465 = lshr i32 %1454, 16
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101020000000
  %1469 = bitcast float %1393 to i32
  %1470 = ashr i32 %1469, 1
  %1471 = sub nsw i32 1597463174, %1470
  %1472 = bitcast i32 %1471 to float
  %1473 = fmul fast float %1393, 5.000000e-01
  %1474 = fmul fast float %1472, %1472
  %1475 = fmul fast float %1474, %1473
  %1476 = fsub fast float 1.500000e+00, %1475
  %1477 = fmul fast float %1472, %1393
  %1478 = fmul fast float %1477, %1476
  %1479 = bitcast float %1394 to i32
  %1480 = ashr i32 %1479, 1
  %1481 = sub nsw i32 1597463174, %1480
  %1482 = bitcast i32 %1481 to float
  %1483 = fmul fast float %1394, 5.000000e-01
  %1484 = fmul fast float %1482, %1482
  %1485 = fmul fast float %1484, %1483
  %1486 = fsub fast float 1.500000e+00, %1485
  %1487 = fmul fast float %1482, %1394
  %1488 = fmul fast float %1487, %1486
  %1489 = bitcast float %1395 to i32
  %1490 = ashr i32 %1489, 1
  %1491 = sub nsw i32 1597463174, %1490
  %1492 = bitcast i32 %1491 to float
  %1493 = fmul fast float %1395, 5.000000e-01
  %1494 = fmul fast float %1492, %1492
  %1495 = fmul fast float %1494, %1493
  %1496 = fsub fast float 1.500000e+00, %1495
  %1497 = fmul fast float %1492, %1395
  %1498 = fmul fast float %1497, %1496
  %1499 = fsub fast float %1478, %1460
  %1500 = fsub fast float %1488, %1464
  %1501 = fsub fast float %1498, %1468
  %1502 = fmul fast float %1499, %1428
  %1503 = fmul fast float %1500, %1430
  %1504 = fmul fast float %1501, %1435
  %1505 = fadd fast float %1502, %1443
  %1506 = fadd fast float %1503, %1447
  %1507 = fadd fast float %1504, %1451
  %1508 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1509 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = fmul fast float %1508, %1508
  %1512 = fmul fast float %1509, %1509
  %1513 = fmul fast float %1510, %1510
  %1514 = fsub fast float %1511, %1393
  %1515 = fsub fast float %1512, %1394
  %1516 = fsub fast float %1513, %1395
  %1517 = fmul fast float %1514, %1418
  %1518 = fmul fast float %1515, %1418
  %1519 = fmul fast float %1516, %1418
  %1520 = fadd fast float %1517, %1393
  %1521 = fadd fast float %1518, %1394
  %1522 = fadd fast float %1519, %1395
  %1523 = fadd fast float %1440, %1404
  %1524 = fsub fast float %1523, %1457
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = fsub fast float %1525, %1404
  %1527 = fmul fast float %1526, %1418
  %1528 = fadd fast float %1527, %1404
  br label %1582

; <label>:1529                                    ; preds = %1417
  %1530 = and i32 %1420, 134217728
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1566, label %1532

; <label>:1532                                    ; preds = %1529
  %1533 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1534 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1535 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1536 = fadd fast float %1533, -5.000000e-01
  %1537 = fadd fast float %1534, -5.000000e-01
  %1538 = fadd fast float %1535, -5.000000e-01
  %1539 = fmul fast float %1536, %1418
  %1540 = fmul fast float %1537, %1418
  %1541 = fmul fast float %1538, %1418
  %1542 = fadd fast float %1539, 5.000000e-01
  %1543 = fadd fast float %1540, 5.000000e-01
  %1544 = fadd fast float %1541, 5.000000e-01
  %1545 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1546 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1547 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1548 = fmul fast float %1542, 2.000000e+00
  %1549 = fsub fast float 1.000000e+00, %1548
  %1550 = fmul fast float %1549, %1545
  %1551 = fadd fast float %1550, %1548
  %1552 = fmul fast float %1551, %1545
  %1553 = fmul fast float %1543, 2.000000e+00
  %1554 = fsub fast float 1.000000e+00, %1553
  %1555 = fmul fast float %1554, %1546
  %1556 = fadd fast float %1555, %1553
  %1557 = fmul fast float %1556, %1546
  %1558 = fmul fast float %1544, 2.000000e+00
  %1559 = fsub fast float 1.000000e+00, %1558
  %1560 = fmul fast float %1559, %1547
  %1561 = fadd fast float %1560, %1558
  %1562 = fmul fast float %1561, %1547
  %1563 = fmul fast float %1552, %1552
  %1564 = fmul fast float %1557, %1557
  %1565 = fmul fast float %1562, %1562
  br label %1582

; <label>:1566                                    ; preds = %1529
  %1567 = fmul fast float %294, %294
  %1568 = fmul fast float %298, %298
  %1569 = fmul fast float %302, %302
  %1570 = fadd fast float %1567, -1.000000e+00
  %1571 = fadd fast float %1568, -1.000000e+00
  %1572 = fadd fast float %1569, -1.000000e+00
  %1573 = fmul fast float %1418, %1570
  %1574 = fmul fast float %1418, %1571
  %1575 = fmul fast float %1418, %1572
  %1576 = fadd fast float %1573, 1.000000e+00
  %1577 = fadd fast float %1574, 1.000000e+00
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fmul fast float %1576, %1393
  %1580 = fmul fast float %1577, %1394
  %1581 = fmul fast float %1578, %1395
  br label %1582

; <label>:1582                                    ; preds = %1566, %1532, %1423, %1379
  %1583 = phi float [ %1528, %1423 ], [ %1404, %1532 ], [ %1404, %1566 ], [ 0x3FA23C0BE0000000, %1379 ]
  %1584 = phi float [ %1520, %1423 ], [ %1563, %1532 ], [ %1579, %1566 ], [ 0.000000e+00, %1379 ]
  %1585 = phi float [ %1521, %1423 ], [ %1564, %1532 ], [ %1580, %1566 ], [ 0.000000e+00, %1379 ]
  %1586 = phi float [ %1522, %1423 ], [ %1565, %1532 ], [ %1581, %1566 ], [ 0.000000e+00, %1379 ]
  %1587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.i32 %1587, 1
  %1589 = and i32 %1588, 1
  %1590 = icmp ne i32 %1589, 0
  %1591 = add i32 %35, 356
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 32
  %1595 = icmp ne i32 %1594, 0
  %1596 = and i1 %1590, %1595
  %1597 = select i1 %1596, float 1.000000e+00, float %1584
  %1598 = select i1 %1596, float 0x3FD3333340000000, float %1585
  %1599 = select i1 %1596, float 0x3FD3333340000000, float %1586
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 32
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1676, label %1604

; <label>:1604                                    ; preds = %1582
  %1605 = add i32 %35, 124
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = add i32 %35, 384
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = add i32 %1610, 0
  %1612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1612, %dx.types.Handle %87, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = extractvalue %dx.types.ResRet.f32 %1613, 3
  %1618 = and i32 %1607, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = lshr i32 %1607, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = lshr i32 %1607, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101000000000
  %1627 = fmul fast float %1614, %1619
  %1628 = fadd fast float %1627, %1622
  %1629 = fmul fast float %1628, 0x3F70101000000000
  %1630 = fadd fast float %1615, -5.000000e-01
  %1631 = fadd fast float %1617, -5.000000e-01
  %1632 = fmul fast float %1630, %1626
  %1633 = fmul fast float %1631, %1626
  %1634 = fadd fast float %1632, 5.000000e-01
  %1635 = fadd fast float %1633, 5.000000e-01
  %1636 = fmul fast float %1634, 2.000000e+00
  %1637 = fadd fast float %1636, -1.000000e+00
  %1638 = fmul fast float %1635, 2.000000e+00
  %1639 = fadd fast float %1638, -1.000000e+00
  %1640 = fadd fast float %1637, %1639
  %1641 = fmul fast float %1640, 5.000000e-01
  %1642 = fsub fast float %1637, %1639
  %1643 = fmul fast float %1642, 5.000000e-01
  %1644 = call float @dx.op.unary.f32(i32 6, float %1641)  ; FAbs(value)
  %1645 = fsub fast float 1.000000e+00, %1644
  %1646 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1647 = fsub fast float %1645, %1646
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1641, float %1643, float %1647, float %1641, float %1643, float %1647)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.unary.f32(i32 25, float %1648)  ; Rsqrt(value)
  %1650 = fmul fast float %1641, %1649
  %1651 = fmul fast float %1643, %1649
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 67108864
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1672, label %1656

; <label>:1656                                    ; preds = %1604
  %1657 = add i32 %35, 312
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 65535
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 65535
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = lshr i32 %1659, 16
  %1667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1666)  ; LegacyF16ToF32(value)
  %1668 = fsub fast float %1629, %1667
  %1669 = fmul fast float %1668, %1661
  %1670 = fadd fast float %1669, %1665
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  br label %1672

; <label>:1672                                    ; preds = %1656, %1604
  %1673 = phi float [ %1671, %1656 ], [ %1629, %1604 ]
  %1674 = call float @dx.op.dot2.f32(i32 54, float %1650, float %1651, float %1092, float %1093)  ; Dot2(ax,ay,bx,by)
  %1675 = call float @dx.op.dot2.f32(i32 54, float %1650, float %1651, float %1094, float %1095)  ; Dot2(ax,ay,bx,by)
  br label %1676

; <label>:1676                                    ; preds = %1672, %1582
  %1677 = phi float [ %1673, %1672 ], [ 0x3FD6666660000000, %1582 ]
  %1678 = phi float [ %1674, %1672 ], [ 0.000000e+00, %1582 ]
  %1679 = phi float [ %1675, %1672 ], [ 0.000000e+00, %1582 ]
  %1680 = phi float [ %1616, %1672 ], [ 1.000000e+00, %1582 ]
  %1681 = add i32 %35, 192
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = lshr i32 %1683, 22
  %1685 = shl nuw nsw i32 %1684, 5
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 64
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1724, label %1691

; <label>:1691                                    ; preds = %1676
  %1692 = add i32 %35, 400
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %1694, 0
  %1696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = and i32 %1698, 131072
  %1700 = icmp eq i32 %1699, 0
  %1701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1696, %dx.types.Handle %87, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.ResRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.ResRet.f32 %1701, 2
  %1705 = fmul fast float %1702, %282
  %1706 = fmul fast float %1703, %285
  %1707 = fmul fast float %1704, %288
  br i1 %1700, label %1714, label %1708

; <label>:1708                                    ; preds = %1691
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = fmul fast float %1710, %1705
  %1712 = fmul fast float %1710, %1706
  %1713 = fmul fast float %1710, %1707
  br label %1714

; <label>:1714                                    ; preds = %1708, %1691
  %1715 = phi float [ %1711, %1708 ], [ %1705, %1691 ]
  %1716 = phi float [ %1712, %1708 ], [ %1706, %1691 ]
  %1717 = phi float [ %1713, %1708 ], [ %1707, %1691 ]
  %1718 = fmul fast float %1715, %1686
  %1719 = select i1 %192, float %1718, float %1715
  %1720 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1716, float %1717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1721 = select i1 %192, float 0.000000e+00, float %1715
  %1722 = select i1 %192, float %1720, float %1716
  %1723 = select i1 %192, float 0.000000e+00, float %1717
  br label %1724

; <label>:1724                                    ; preds = %1714, %1676
  %1725 = phi float [ %1721, %1714 ], [ 0.000000e+00, %1676 ]
  %1726 = phi float [ %1722, %1714 ], [ 0.000000e+00, %1676 ]
  %1727 = phi float [ %1723, %1714 ], [ 0.000000e+00, %1676 ]
  br i1 %1076, label %1890, label %1728

; <label>:1728                                    ; preds = %1724
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 3
  %1732 = icmp eq i32 %1731, 3
  br i1 %1732, label %1808, label %1733

; <label>:1733                                    ; preds = %1728
  %1734 = and i32 %1730, 16
  %1735 = icmp ne i32 %1734, 0
  %1736 = select i1 %1735, float %1376, float 0.000000e+00
  %1737 = icmp eq i32 %1731, 0
  br i1 %1737, label %1738, label %1763

; <label>:1738                                    ; preds = %1733
  %1739 = and i32 %1730, 64
  %1740 = icmp ne i32 %1739, 0
  %1741 = select i1 %1740, float %1376, float 0.000000e+00
  %1742 = fsub fast float %1597, %1069
  %1743 = fsub fast float %1598, %1070
  %1744 = fsub fast float %1599, %1071
  %1745 = fmul fast float %1736, %1742
  %1746 = fmul fast float %1736, %1743
  %1747 = fmul fast float %1736, %1744
  %1748 = fadd fast float %1745, %1069
  %1749 = fadd fast float %1746, %1070
  %1750 = fadd fast float %1747, %1071
  %1751 = fsub fast float %1583, %1072
  %1752 = fmul fast float %1736, %1751
  %1753 = fadd fast float %1752, %1072
  %1754 = fsub fast float %1725, %1066
  %1755 = fsub fast float %1726, %1067
  %1756 = fsub fast float %1727, %1068
  %1757 = fmul fast float %1741, %1754
  %1758 = fmul fast float %1741, %1755
  %1759 = fmul fast float %1741, %1756
  %1760 = fadd fast float %1757, %1066
  %1761 = fadd fast float %1758, %1067
  %1762 = fadd fast float %1759, %1068
  br label %1808

; <label>:1763                                    ; preds = %1733
  %1764 = icmp eq i32 %1731, 1
  br i1 %1764, label %1765, label %1778

; <label>:1765                                    ; preds = %1763
  %1766 = fadd fast float %1597, -1.000000e+00
  %1767 = fadd fast float %1598, -1.000000e+00
  %1768 = fadd fast float %1599, -1.000000e+00
  %1769 = fmul fast float %1736, %1766
  %1770 = fmul fast float %1736, %1767
  %1771 = fmul fast float %1736, %1768
  %1772 = fadd fast float %1769, 1.000000e+00
  %1773 = fadd fast float %1770, 1.000000e+00
  %1774 = fadd fast float %1771, 1.000000e+00
  %1775 = fmul fast float %1772, %1069
  %1776 = fmul fast float %1773, %1070
  %1777 = fmul fast float %1774, %1071
  br label %1808

; <label>:1778                                    ; preds = %1763
  %1779 = icmp eq i32 %1731, 2
  br i1 %1779, label %1780, label %1808

; <label>:1780                                    ; preds = %1778
  %1781 = call float @dx.op.unary.f32(i32 24, float %1597)  ; Sqrt(value)
  %1782 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %1783 = call float @dx.op.unary.f32(i32 24, float %1599)  ; Sqrt(value)
  %1784 = fadd fast float %1781, -5.000000e-01
  %1785 = fadd fast float %1782, -5.000000e-01
  %1786 = fadd fast float %1783, -5.000000e-01
  %1787 = fmul fast float %1784, %1736
  %1788 = fmul fast float %1785, %1736
  %1789 = fmul fast float %1786, %1736
  %1790 = fadd fast float %1787, 5.000000e-01
  %1791 = fadd fast float %1788, 5.000000e-01
  %1792 = fadd fast float %1789, 5.000000e-01
  %1793 = fmul fast float %1790, 2.000000e+00
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = fmul fast float %1794, %1069
  %1796 = fadd fast float %1795, %1793
  %1797 = fmul fast float %1796, %1069
  %1798 = fmul fast float %1791, 2.000000e+00
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = fmul fast float %1799, %1070
  %1801 = fadd fast float %1800, %1798
  %1802 = fmul fast float %1801, %1070
  %1803 = fmul fast float %1792, 2.000000e+00
  %1804 = fsub fast float 1.000000e+00, %1803
  %1805 = fmul fast float %1804, %1071
  %1806 = fadd fast float %1805, %1803
  %1807 = fmul fast float %1806, %1071
  br label %1808

; <label>:1808                                    ; preds = %1780, %1778, %1765, %1738, %1728
  %1809 = phi float [ %1066, %1728 ], [ %1066, %1780 ], [ %1066, %1778 ], [ %1066, %1765 ], [ %1760, %1738 ]
  %1810 = phi float [ %1067, %1728 ], [ %1067, %1780 ], [ %1067, %1778 ], [ %1067, %1765 ], [ %1761, %1738 ]
  %1811 = phi float [ %1068, %1728 ], [ %1068, %1780 ], [ %1068, %1778 ], [ %1068, %1765 ], [ %1762, %1738 ]
  %1812 = phi float [ %1069, %1728 ], [ %1797, %1780 ], [ %1069, %1778 ], [ %1775, %1765 ], [ %1748, %1738 ]
  %1813 = phi float [ %1070, %1728 ], [ %1802, %1780 ], [ %1070, %1778 ], [ %1776, %1765 ], [ %1749, %1738 ]
  %1814 = phi float [ %1071, %1728 ], [ %1807, %1780 ], [ %1071, %1778 ], [ %1777, %1765 ], [ %1750, %1738 ]
  %1815 = phi float [ %1072, %1728 ], [ %1072, %1780 ], [ %1072, %1778 ], [ %1072, %1765 ], [ %1753, %1738 ]
  %1816 = and i32 %1730, 12
  %1817 = icmp eq i32 %1816, 12
  br i1 %1817, label %1890, label %1818

; <label>:1818                                    ; preds = %1808
  %1819 = and i32 %1730, 2097184
  %1820 = icmp eq i32 %1819, 2097184
  %1821 = select i1 %1820, float %1376, float 0.000000e+00
  %1822 = and i32 %1730, 4194336
  %1823 = icmp eq i32 %1822, 4194336
  %1824 = select i1 %1823, float %1376, float 0.000000e+00
  %1825 = and i32 %1730, 8388640
  %1826 = icmp eq i32 %1825, 8388640
  %1827 = select i1 %1826, float %1376, float 0.000000e+00
  %1828 = icmp eq i32 %1816, 0
  br i1 %1828, label %1829, label %1842

; <label>:1829                                    ; preds = %1818
  %1830 = fsub fast float %1678, %1064
  %1831 = fsub fast float %1679, %1065
  %1832 = fmul fast float %1821, %1830
  %1833 = fmul fast float %1821, %1831
  %1834 = fadd fast float %1832, %1064
  %1835 = fadd fast float %1833, %1065
  %1836 = fsub fast float %1680, %1075
  %1837 = fmul fast float %1824, %1836
  %1838 = fadd fast float %1837, %1075
  %1839 = fsub fast float %1677, %1074
  %1840 = fmul fast float %1827, %1839
  %1841 = fadd fast float %1840, %1074
  br label %1890

; <label>:1842                                    ; preds = %1818
  %1843 = icmp eq i32 %1816, 4
  br i1 %1843, label %1844, label %1876

; <label>:1844                                    ; preds = %1842
  %1845 = fmul fast float %1821, %1678
  %1846 = fmul fast float %1821, %1679
  %1847 = fadd fast float %1845, %1064
  %1848 = fadd fast float %1846, %1065
  %1849 = call float @dx.op.binary.f32(i32 36, float %1075, float %1680)  ; FMin(a,b)
  %1850 = fsub fast float %1849, %1075
  %1851 = fmul fast float %1850, %1824
  %1852 = fadd fast float %1851, %1075
  %1853 = fadd fast float %1677, %1074
  %1854 = fmul fast float %1853, 0x3FF337FAE0000000
  %1855 = fmul fast float %1074, %1074
  %1856 = fmul fast float %1677, %1677
  %1857 = fadd fast float %1856, %1855
  %1858 = fmul fast float %1857, 0x3FE5152B00000000
  %1859 = fmul fast float %1074, 0xBFCC1F85E0000000
  %1860 = fmul fast float %1859, %1677
  %1861 = fadd fast float %1860, 0xBFE1363700000000
  %1862 = fadd fast float %1861, %1854
  %1863 = fsub fast float %1862, %1858
  %1864 = fmul fast float %1853, 0x3FBA6F0D00000000
  %1865 = fmul fast float %1857, 0x3FD0432880000000
  %1866 = fmul fast float %1074, 0xBFEF110800000000
  %1867 = fmul fast float %1866, %1677
  %1868 = fadd fast float %1867, 1.000000e+00
  %1869 = fsub fast float %1868, %1864
  %1870 = fadd fast float %1869, %1865
  %1871 = fdiv fast float %1863, %1870
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1873 = fsub fast float %1872, %1074
  %1874 = fmul fast float %1873, %1827
  %1875 = fadd fast float %1874, %1074
  br label %1890

; <label>:1876                                    ; preds = %1842
  %1877 = icmp eq i32 %1816, 8
  br i1 %1877, label %1878, label %1890

; <label>:1878                                    ; preds = %1876
  %1879 = fmul fast float %1821, %1678
  %1880 = fmul fast float %1821, %1679
  %1881 = fadd fast float %1879, %1064
  %1882 = fadd fast float %1880, %1065
  %1883 = call float @dx.op.binary.f32(i32 36, float %1075, float %1680)  ; FMin(a,b)
  %1884 = fsub fast float %1883, %1075
  %1885 = fmul fast float %1884, %1824
  %1886 = fadd fast float %1885, %1075
  %1887 = fsub fast float %1677, %1074
  %1888 = fmul fast float %1827, %1887
  %1889 = fadd fast float %1888, %1074
  br label %1890

; <label>:1890                                    ; preds = %1878, %1876, %1844, %1829, %1808, %1724, %1375, %1080, %1063
  %1891 = phi float [ %1064, %1808 ], [ %1064, %1080 ], [ %1064, %1375 ], [ %1834, %1829 ], [ %1847, %1844 ], [ %1064, %1876 ], [ %1881, %1878 ], [ %1064, %1063 ], [ %1678, %1724 ]
  %1892 = phi float [ %1065, %1808 ], [ %1065, %1080 ], [ %1065, %1375 ], [ %1835, %1829 ], [ %1848, %1844 ], [ %1065, %1876 ], [ %1882, %1878 ], [ %1065, %1063 ], [ %1679, %1724 ]
  %1893 = phi float [ %1809, %1808 ], [ %1066, %1080 ], [ %1066, %1375 ], [ %1809, %1829 ], [ %1809, %1844 ], [ %1809, %1876 ], [ %1809, %1878 ], [ %1066, %1063 ], [ %1725, %1724 ]
  %1894 = phi float [ %1810, %1808 ], [ %1067, %1080 ], [ %1067, %1375 ], [ %1810, %1829 ], [ %1810, %1844 ], [ %1810, %1876 ], [ %1810, %1878 ], [ %1067, %1063 ], [ %1726, %1724 ]
  %1895 = phi float [ %1811, %1808 ], [ %1068, %1080 ], [ %1068, %1375 ], [ %1811, %1829 ], [ %1811, %1844 ], [ %1811, %1876 ], [ %1811, %1878 ], [ %1068, %1063 ], [ %1727, %1724 ]
  %1896 = phi float [ %1812, %1808 ], [ %1069, %1080 ], [ %1069, %1375 ], [ %1812, %1829 ], [ %1812, %1844 ], [ %1812, %1876 ], [ %1812, %1878 ], [ %1069, %1063 ], [ %1597, %1724 ]
  %1897 = phi float [ %1813, %1808 ], [ %1070, %1080 ], [ %1070, %1375 ], [ %1813, %1829 ], [ %1813, %1844 ], [ %1813, %1876 ], [ %1813, %1878 ], [ %1070, %1063 ], [ %1598, %1724 ]
  %1898 = phi float [ %1814, %1808 ], [ %1071, %1080 ], [ %1071, %1375 ], [ %1814, %1829 ], [ %1814, %1844 ], [ %1814, %1876 ], [ %1814, %1878 ], [ %1071, %1063 ], [ %1599, %1724 ]
  %1899 = phi float [ %1815, %1808 ], [ %1072, %1080 ], [ %1072, %1375 ], [ %1815, %1829 ], [ %1815, %1844 ], [ %1815, %1876 ], [ %1815, %1878 ], [ %1072, %1063 ], [ %1583, %1724 ]
  %1900 = phi float [ %1073, %1808 ], [ %1073, %1080 ], [ %1073, %1375 ], [ %1073, %1829 ], [ %1073, %1844 ], [ %1073, %1876 ], [ %1073, %1878 ], [ %1073, %1063 ], [ %1376, %1724 ]
  %1901 = phi float [ %1074, %1808 ], [ %1074, %1080 ], [ %1074, %1375 ], [ %1841, %1829 ], [ %1875, %1844 ], [ %1074, %1876 ], [ %1889, %1878 ], [ %1074, %1063 ], [ %1677, %1724 ]
  %1902 = phi float [ %1075, %1808 ], [ %1075, %1080 ], [ %1075, %1375 ], [ %1838, %1829 ], [ %1852, %1844 ], [ %1075, %1876 ], [ %1886, %1878 ], [ %1075, %1063 ], [ %1680, %1724 ]
  %1903 = icmp eq i32 %417, 3
  %1904 = icmp ugt i32 %417, 3
  %1905 = icmp eq i32 %366, 0
  %1906 = or i1 %1905, %1904
  br i1 %1906, label %2717, label %1907

; <label>:1907                                    ; preds = %1890
  %1908 = add i32 %35, 72
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = add i32 %35, 76
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = or i32 %1913, %1910
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %2717, label %1916

; <label>:1916                                    ; preds = %1907
  %1917 = and i32 %1910, 262144
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %38, float 1.000000e+00
  %1920 = select i1 %1918, float %39, float 0.000000e+00
  %1921 = select i1 %1918, float %40, float 0.000000e+00
  %1922 = select i1 %1918, float %41, float 1.000000e+00
  %1923 = select i1 %1918, float %42, float %63
  %1924 = select i1 %1918, float %43, float %64
  %1925 = add i32 %35, 332
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = lshr i32 %1927, 16
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = fmul fast float %1929, 0x3F50624DE0000000
  %1931 = add i32 %35, 136
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 16
  %1935 = and i32 %1934, 255
  %1936 = lshr i32 %1933, 24
  %1937 = add i32 %35, 340
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = and i32 %1939, 65535
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = lshr i32 %1939, 16
  %1943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1942)  ; LegacyF16ToF32(value)
  %1944 = add i32 %35, 80
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = lshr i32 %1946, 22
  %1948 = shl nuw nsw i32 %1947, 5
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = shl i32 %1946, 4
  %1951 = and i32 %1950, 32752
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = lshr i32 %1946, 7
  %1954 = and i32 %1953, 32752
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 3
  %1958 = fmul fast float %1957, 1.000000e+03
  %1959 = fmul fast float %359, %1958
  %1960 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1961 = fadd fast float %1960, %349
  %1962 = fmul fast float %360, %1958
  %1963 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1964 = fadd fast float %1963, %351
  %1965 = fmul fast float %1930, %1958
  %1966 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1967 = fmul fast float %1966, 0x401921FB60000000
  %1968 = fadd fast float %1967, %1949
  %1969 = call float @dx.op.unary.f32(i32 13, float %1968)  ; Sin(value)
  %1970 = call float @dx.op.unary.f32(i32 12, float %1968)  ; Cos(value)
  %1971 = fsub fast float -0.000000e+00, %1969
  %1972 = fadd fast float %1923, -5.000000e-01
  %1973 = fadd fast float %1924, -5.000000e-01
  %1974 = fmul fast float %1941, %1972
  %1975 = fmul fast float %1943, %1973
  %1976 = fadd fast float %1974, 5.000000e-01
  %1977 = fadd fast float %1975, 5.000000e-01
  %1978 = fmul fast float %1952, %1976
  %1979 = fmul fast float %1955, %1977
  %1980 = fmul fast float %1970, %1978
  %1981 = call float @dx.op.tertiary.f32(i32 46, float %1971, float %1979, float %1980)  ; FMad(a,b,c)
  %1982 = fmul fast float %1969, %1978
  %1983 = call float @dx.op.tertiary.f32(i32 46, float %1970, float %1979, float %1982)  ; FMad(a,b,c)
  %1984 = fadd fast float %1961, %1981
  %1985 = fadd fast float %1964, %1983
  %1986 = icmp ugt i32 %1935, 1
  %1987 = icmp ugt i32 %1933, 33554431
  %1988 = or i1 %1987, %1986
  br i1 %1988, label %1989, label %2014

; <label>:1989                                    ; preds = %1916
  %1990 = add i32 %35, 276
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = lshr i32 %1992, 16
  %1994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1993)  ; LegacyF16ToF32(value)
  %1995 = fmul fast float %1957, %1994
  %1996 = call float @dx.op.unary.f32(i32 22, float %1995)  ; Frc(value)
  %1997 = mul nuw nsw i32 %1935, %1936
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1996, %1998
  %2000 = call float @dx.op.unary.f32(i32 27, float %1999)  ; Round_ni(value)
  %2001 = fptoui float %2000 to i32
  %2002 = urem i32 %2001, %1935
  %2003 = udiv i32 %2001, %1936
  %2004 = call float @dx.op.unary.f32(i32 22, float %1984)  ; Frc(value)
  %2005 = call float @dx.op.unary.f32(i32 22, float %1985)  ; Frc(value)
  %2006 = uitofp i32 %2002 to float
  %2007 = uitofp i32 %2003 to float
  %2008 = fadd fast float %2004, %2006
  %2009 = fadd fast float %2005, %2007
  %2010 = uitofp i32 %1935 to float
  %2011 = uitofp i32 %1936 to float
  %2012 = fdiv fast float %2008, %2010
  %2013 = fdiv fast float %2009, %2011
  br label %2014

; <label>:2014                                    ; preds = %1989, %1916
  %2015 = phi float [ %2012, %1989 ], [ %1984, %1916 ]
  %2016 = phi float [ %2013, %1989 ], [ %1985, %1916 ]
  %2017 = and i32 %1910, 16777216
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2128, label %2019

; <label>:2019                                    ; preds = %2014
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = fadd fast float %2021, %150
  %2025 = fadd fast float %2022, %151
  %2026 = fadd fast float %2023, %152
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = icmp eq i32 %36, 65535
  br i1 %2030, label %2125, label %2031

; <label>:2031                                    ; preds = %2019
  %2032 = lshr i32 %36, 1
  %2033 = shl i32 %2032, 2
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %36, 1
  %2037 = icmp ne i32 %2036, 0
  %2038 = lshr i32 %2035, 16
  %2039 = and i32 %2035, 65535
  %2040 = select i1 %2037, i32 %2038, i32 %2039
  %2041 = icmp eq i32 %2040, 65535
  br i1 %2041, label %2121, label %2042

; <label>:2042                                    ; preds = %2031
  %2043 = mul nuw nsw i32 %2040, 40
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = add nuw nsw i32 %2043, 12
  %2049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = add nuw nsw i32 %2043, 24
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.ResRet.f32 %2054, 2
  %2058 = add nuw nsw i32 %2043, 36
  %2059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = fsub fast float %2024, %2045
  %2062 = fsub fast float %2025, %2046
  %2063 = fsub fast float %2026, %2047
  %2064 = fmul fast float %2060, %2061
  %2065 = fmul fast float %2060, %2062
  %2066 = fmul fast float %2060, %2063
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fmul fast float %2070, %2050
  %2074 = fmul fast float %2071, %2051
  %2075 = fmul fast float %2072, %2052
  %2076 = shl i32 %36, 2
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = add i32 %2078, 0
  %2080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2081 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2082 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2083 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2080, %dx.types.Handle %30, float %2081, float %2082, float %2083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = fmul fast float %2085, 1.023000e+03
  %2089 = fmul fast float %2086, 1.023000e+03
  %2090 = fmul fast float %2087, 1.023000e+03
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2095 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2096 = call float @dx.op.unary.f32(i32 27, float %2093)  ; Round_ni(value)
  %2097 = fsub fast float %2064, %2067
  %2098 = fsub fast float %2065, %2068
  %2099 = fsub fast float %2066, %2069
  %2100 = fmul fast float %2097, 7.500000e-01
  %2101 = fmul fast float %2098, 7.500000e-01
  %2102 = fmul fast float %2099, 7.500000e-01
  %2103 = fadd fast float %2067, 1.250000e-01
  %2104 = fadd fast float %2103, %2100
  %2105 = fadd fast float %2104, %2094
  %2106 = fadd fast float %2068, 1.250000e-01
  %2107 = fadd fast float %2106, %2101
  %2108 = fadd fast float %2107, %2095
  %2109 = fadd fast float %2069, 1.250000e-01
  %2110 = fadd fast float %2109, %2102
  %2111 = fadd fast float %2110, %2096
  %2112 = fmul fast float %2105, %2055
  %2113 = fmul fast float %2108, %2056
  %2114 = fmul fast float %2111, %2057
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %2116, 0
  %2118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2118, %dx.types.Handle %28, float %2112, float %2113, float %2114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  br label %2121

; <label>:2121                                    ; preds = %2042, %2031
  %2122 = phi float [ %2120, %2042 ], [ -1.000000e+00, %2031 ]
  %2123 = fadd fast float %2122, %2029
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  br label %2125

; <label>:2125                                    ; preds = %2121, %2019
  %2126 = phi float [ %2124, %2121 ], [ %2029, %2019 ]
  %2127 = fmul fast float %2126, %412
  br label %2128

; <label>:2128                                    ; preds = %2125, %2014
  %2129 = phi float [ %2127, %2125 ], [ %412, %2014 ]
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 256
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2180, label %2134

; <label>:2134                                    ; preds = %2128
  %2135 = add i32 %35, 436
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2139, %dx.types.Handle %88, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = add i32 %35, 148
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = shl i32 %2144, 4
  %2146 = and i32 %2145, 32752
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = lshr i32 %2144, 7
  %2149 = and i32 %2148, 32752
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = fsub fast float 1.000000e+00, %2129
  %2152 = call float @dx.op.binary.f32(i32 35, float %2151, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2153 = bitcast float %2129 to i32
  %2154 = sitofp i32 %2153 to float
  %2155 = fadd fast float %2154, 0xC1CFBF8940000000
  %2156 = fmul fast float %2150, %2155
  %2157 = fadd fast float %2156, 0x41CFBF8940000000
  %2158 = fptosi float %2157 to i32
  %2159 = bitcast i32 %2158 to float
  %2160 = bitcast float %2152 to i32
  %2161 = sitofp i32 %2160 to float
  %2162 = fadd fast float %2161, 0xC1CFBF8940000000
  %2163 = fmul fast float %2162, %2150
  %2164 = fadd fast float %2163, 0x41CFBF8940000000
  %2165 = fptosi float %2164 to i32
  %2166 = bitcast i32 %2165 to float
  %2167 = fmul fast float %2159, %2147
  %2168 = fmul fast float %2166, %2147
  %2169 = fsub fast float %2152, %2167
  %2170 = fadd fast float %2168, %2152
  %2171 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2173 = fsub fast float %2141, %2171
  %2174 = fsub fast float %2172, %2171
  %2175 = bitcast float %2174 to i32
  %2176 = sub nsw i32 2129859010, %2175
  %2177 = bitcast i32 %2176 to float
  %2178 = fmul fast float %2177, %2173
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  br label %2180

; <label>:2180                                    ; preds = %2134, %2128
  %2181 = phi float [ %2179, %2134 ], [ %2129, %2128 ]
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 128
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2202, label %2186

; <label>:2186                                    ; preds = %2180
  %2187 = add i32 %35, 420
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %2189, 0
  %2191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2191, %dx.types.Handle %88, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 524288
  %2197 = icmp ne i32 %2196, 0
  %2198 = fcmp fast ogt float %2193, 0x3FE0101020000000
  %2199 = select i1 %2198, float 1.000000e+00, float 0.000000e+00
  %2200 = select i1 %2197, float %2199, float %2193
  %2201 = fmul fast float %2200, %2181
  br label %2202

; <label>:2202                                    ; preds = %2186, %2180
  %2203 = phi float [ %2201, %2186 ], [ %2181, %2180 ]
  %2204 = fcmp fast oge float %2203, 0x3F70101020000000
  %2205 = or i1 %1903, %2204
  br i1 %2205, label %2206, label %2717

; <label>:2206                                    ; preds = %2202
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 16
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2409, label %2211

; <label>:2211                                    ; preds = %2206
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %35, 372
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %2216, 0
  %2218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2218, %dx.types.Handle %87, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2220 = extractvalue %dx.types.ResRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.ResRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.ResRet.f32 %2219, 2
  %2223 = extractvalue %dx.types.ResRet.f32 %2219, 3
  %2224 = and i32 %2213, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = lshr i32 %2213, 8
  %2227 = and i32 %2226, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2223, %2225
  %2230 = fadd fast float %2229, %2228
  %2231 = fmul fast float %2230, 0x3F70101000000000
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 512
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2244, label %2236

; <label>:2236                                    ; preds = %2211
  %2237 = add i32 %35, 452
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = add i32 %2239, 0
  %2241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2241, %dx.types.Handle %88, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  br label %2244

; <label>:2244                                    ; preds = %2236, %2211
  %2245 = phi float [ %2243, %2236 ], [ 1.000000e+00, %2211 ]
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 33554432
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2356, label %2250

; <label>:2250                                    ; preds = %2244
  %2251 = add i32 %35, 272
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 65535
  %2255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2254)  ; LegacyF16ToF32(value)
  %2256 = lshr i32 %2253, 16
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = add i32 %35, 276
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 65535
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = lshr i32 %2264, 24
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = and i32 %2264, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2264, 8
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = lshr i32 %2264, 16
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = add i32 %35, 268
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = lshr i32 %2281, 24
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101020000000
  %2285 = and i32 %2281, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = lshr i32 %2281, 8
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = lshr i32 %2281, 16
  %2293 = and i32 %2292, 255
  %2294 = uitofp i32 %2293 to float
  %2295 = fmul fast float %2294, 0x3F70101020000000
  %2296 = bitcast float %2220 to i32
  %2297 = ashr i32 %2296, 1
  %2298 = sub nsw i32 1597463174, %2297
  %2299 = bitcast i32 %2298 to float
  %2300 = fmul fast float %2220, 5.000000e-01
  %2301 = fmul fast float %2299, %2299
  %2302 = fmul fast float %2301, %2300
  %2303 = fsub fast float 1.500000e+00, %2302
  %2304 = fmul fast float %2299, %2220
  %2305 = fmul fast float %2304, %2303
  %2306 = bitcast float %2221 to i32
  %2307 = ashr i32 %2306, 1
  %2308 = sub nsw i32 1597463174, %2307
  %2309 = bitcast i32 %2308 to float
  %2310 = fmul fast float %2221, 5.000000e-01
  %2311 = fmul fast float %2309, %2309
  %2312 = fmul fast float %2311, %2310
  %2313 = fsub fast float 1.500000e+00, %2312
  %2314 = fmul fast float %2309, %2221
  %2315 = fmul fast float %2314, %2313
  %2316 = bitcast float %2222 to i32
  %2317 = ashr i32 %2316, 1
  %2318 = sub nsw i32 1597463174, %2317
  %2319 = bitcast i32 %2318 to float
  %2320 = fmul fast float %2222, 5.000000e-01
  %2321 = fmul fast float %2319, %2319
  %2322 = fmul fast float %2321, %2320
  %2323 = fsub fast float 1.500000e+00, %2322
  %2324 = fmul fast float %2319, %2222
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float %2305, %2287
  %2327 = fsub fast float %2315, %2291
  %2328 = fsub fast float %2325, %2295
  %2329 = fmul fast float %2326, %2255
  %2330 = fmul fast float %2327, %2257
  %2331 = fmul fast float %2328, %2262
  %2332 = fadd fast float %2329, %2270
  %2333 = fadd fast float %2330, %2274
  %2334 = fadd fast float %2331, %2278
  %2335 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2336 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2337 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2338 = fmul fast float %2335, %2335
  %2339 = fmul fast float %2336, %2336
  %2340 = fmul fast float %2337, %2337
  %2341 = fsub fast float %2338, %2220
  %2342 = fsub fast float %2339, %2221
  %2343 = fsub fast float %2340, %2222
  %2344 = fmul fast float %2341, %2245
  %2345 = fmul fast float %2342, %2245
  %2346 = fmul fast float %2343, %2245
  %2347 = fadd fast float %2344, %2220
  %2348 = fadd fast float %2345, %2221
  %2349 = fadd fast float %2346, %2222
  %2350 = fadd fast float %2267, %2231
  %2351 = fsub fast float %2350, %2284
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = fsub fast float %2352, %2231
  %2354 = fmul fast float %2353, %2245
  %2355 = fadd fast float %2354, %2231
  br label %2409

; <label>:2356                                    ; preds = %2244
  %2357 = and i32 %2247, 134217728
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2393, label %2359

; <label>:2359                                    ; preds = %2356
  %2360 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2361 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2362 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2363 = fadd fast float %2360, -5.000000e-01
  %2364 = fadd fast float %2361, -5.000000e-01
  %2365 = fadd fast float %2362, -5.000000e-01
  %2366 = fmul fast float %2363, %2245
  %2367 = fmul fast float %2364, %2245
  %2368 = fmul fast float %2365, %2245
  %2369 = fadd fast float %2366, 5.000000e-01
  %2370 = fadd fast float %2367, 5.000000e-01
  %2371 = fadd fast float %2368, 5.000000e-01
  %2372 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2373 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2374 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2375 = fmul fast float %2369, 2.000000e+00
  %2376 = fsub fast float 1.000000e+00, %2375
  %2377 = fmul fast float %2376, %2372
  %2378 = fadd fast float %2377, %2375
  %2379 = fmul fast float %2378, %2372
  %2380 = fmul fast float %2370, 2.000000e+00
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = fmul fast float %2381, %2373
  %2383 = fadd fast float %2382, %2380
  %2384 = fmul fast float %2383, %2373
  %2385 = fmul fast float %2371, 2.000000e+00
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2386, %2374
  %2388 = fadd fast float %2387, %2385
  %2389 = fmul fast float %2388, %2374
  %2390 = fmul fast float %2379, %2379
  %2391 = fmul fast float %2384, %2384
  %2392 = fmul fast float %2389, %2389
  br label %2409

; <label>:2393                                    ; preds = %2356
  %2394 = fmul fast float %336, %336
  %2395 = fmul fast float %340, %340
  %2396 = fmul fast float %344, %344
  %2397 = fadd fast float %2394, -1.000000e+00
  %2398 = fadd fast float %2395, -1.000000e+00
  %2399 = fadd fast float %2396, -1.000000e+00
  %2400 = fmul fast float %2245, %2397
  %2401 = fmul fast float %2245, %2398
  %2402 = fmul fast float %2245, %2399
  %2403 = fadd fast float %2400, 1.000000e+00
  %2404 = fadd fast float %2401, 1.000000e+00
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fmul fast float %2403, %2220
  %2407 = fmul fast float %2404, %2221
  %2408 = fmul fast float %2405, %2222
  br label %2409

; <label>:2409                                    ; preds = %2393, %2359, %2250, %2206
  %2410 = phi float [ %2355, %2250 ], [ %2231, %2359 ], [ %2231, %2393 ], [ 0x3FA23C0BE0000000, %2206 ]
  %2411 = phi float [ %2347, %2250 ], [ %2390, %2359 ], [ %2406, %2393 ], [ 0.000000e+00, %2206 ]
  %2412 = phi float [ %2348, %2250 ], [ %2391, %2359 ], [ %2407, %2393 ], [ 0.000000e+00, %2206 ]
  %2413 = phi float [ %2349, %2250 ], [ %2392, %2359 ], [ %2408, %2393 ], [ 0.000000e+00, %2206 ]
  %2414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.i32 %2414, 1
  %2416 = and i32 %2415, 1
  %2417 = icmp ne i32 %2416, 0
  %2418 = add i32 %35, 356
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 32
  %2422 = icmp ne i32 %2421, 0
  %2423 = and i1 %2417, %2422
  %2424 = select i1 %2423, float 1.000000e+00, float %2411
  %2425 = select i1 %2423, float 0x3FD3333340000000, float %2412
  %2426 = select i1 %2423, float 0x3FD3333340000000, float %2413
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 32
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2503, label %2431

; <label>:2431                                    ; preds = %2409
  %2432 = add i32 %35, 140
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %35, 388
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %2437, 0
  %2439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2439, %dx.types.Handle %87, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = extractvalue %dx.types.ResRet.f32 %2440, 3
  %2445 = and i32 %2434, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = lshr i32 %2434, 8
  %2448 = and i32 %2447, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = lshr i32 %2434, 16
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = fmul fast float %2452, 0x3F70101000000000
  %2454 = fmul fast float %2441, %2446
  %2455 = fadd fast float %2454, %2449
  %2456 = fmul fast float %2455, 0x3F70101000000000
  %2457 = fadd fast float %2442, -5.000000e-01
  %2458 = fadd fast float %2444, -5.000000e-01
  %2459 = fmul fast float %2457, %2453
  %2460 = fmul fast float %2458, %2453
  %2461 = fadd fast float %2459, 5.000000e-01
  %2462 = fadd fast float %2460, 5.000000e-01
  %2463 = fmul fast float %2461, 2.000000e+00
  %2464 = fadd fast float %2463, -1.000000e+00
  %2465 = fmul fast float %2462, 2.000000e+00
  %2466 = fadd fast float %2465, -1.000000e+00
  %2467 = fadd fast float %2464, %2466
  %2468 = fmul fast float %2467, 5.000000e-01
  %2469 = fsub fast float %2464, %2466
  %2470 = fmul fast float %2469, 5.000000e-01
  %2471 = call float @dx.op.unary.f32(i32 6, float %2468)  ; FAbs(value)
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = call float @dx.op.unary.f32(i32 6, float %2470)  ; FAbs(value)
  %2474 = fsub fast float %2472, %2473
  %2475 = call float @dx.op.dot3.f32(i32 55, float %2468, float %2470, float %2474, float %2468, float %2470, float %2474)  ; Dot3(ax,ay,az,bx,by,bz)
  %2476 = call float @dx.op.unary.f32(i32 25, float %2475)  ; Rsqrt(value)
  %2477 = fmul fast float %2468, %2476
  %2478 = fmul fast float %2470, %2476
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 67108864
  %2482 = icmp eq i32 %2481, 0
  br i1 %2482, label %2499, label %2483

; <label>:2483                                    ; preds = %2431
  %2484 = add i32 %35, 328
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 65535
  %2488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2487)  ; LegacyF16ToF32(value)
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %2490, 65535
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = lshr i32 %2486, 16
  %2494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2493)  ; LegacyF16ToF32(value)
  %2495 = fsub fast float %2456, %2494
  %2496 = fmul fast float %2495, %2488
  %2497 = fadd fast float %2496, %2492
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  br label %2499

; <label>:2499                                    ; preds = %2483, %2431
  %2500 = phi float [ %2498, %2483 ], [ %2456, %2431 ]
  %2501 = call float @dx.op.dot2.f32(i32 54, float %2477, float %2478, float %1919, float %1920)  ; Dot2(ax,ay,bx,by)
  %2502 = call float @dx.op.dot2.f32(i32 54, float %2477, float %2478, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  br label %2503

; <label>:2503                                    ; preds = %2499, %2409
  %2504 = phi float [ %2500, %2499 ], [ 0x3FD6666660000000, %2409 ]
  %2505 = phi float [ %2501, %2499 ], [ 0.000000e+00, %2409 ]
  %2506 = phi float [ %2502, %2499 ], [ 0.000000e+00, %2409 ]
  %2507 = phi float [ %2443, %2499 ], [ 1.000000e+00, %2409 ]
  %2508 = add i32 %35, 208
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = lshr i32 %2510, 22
  %2512 = shl nuw nsw i32 %2511, 5
  %2513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2512)  ; LegacyF16ToF32(value)
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = and i32 %2515, 64
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2551, label %2518

; <label>:2518                                    ; preds = %2503
  %2519 = add i32 %35, 404
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = and i32 %2525, 131072
  %2527 = icmp eq i32 %2526, 0
  %2528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2523, %dx.types.Handle %87, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = fmul fast float %2529, %324
  %2533 = fmul fast float %2530, %327
  %2534 = fmul fast float %2531, %330
  br i1 %2527, label %2541, label %2535

; <label>:2535                                    ; preds = %2518
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = fmul fast float %2537, %2532
  %2539 = fmul fast float %2537, %2533
  %2540 = fmul fast float %2537, %2534
  br label %2541

; <label>:2541                                    ; preds = %2535, %2518
  %2542 = phi float [ %2538, %2535 ], [ %2532, %2518 ]
  %2543 = phi float [ %2539, %2535 ], [ %2533, %2518 ]
  %2544 = phi float [ %2540, %2535 ], [ %2534, %2518 ]
  %2545 = fmul fast float %2542, %2513
  %2546 = select i1 %192, float %2545, float %2542
  %2547 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2543, float %2544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2548 = select i1 %192, float 0.000000e+00, float %2542
  %2549 = select i1 %192, float %2547, float %2543
  %2550 = select i1 %192, float 0.000000e+00, float %2544
  br label %2551

; <label>:2551                                    ; preds = %2541, %2503
  %2552 = phi float [ %2548, %2541 ], [ 0.000000e+00, %2503 ]
  %2553 = phi float [ %2549, %2541 ], [ 0.000000e+00, %2503 ]
  %2554 = phi float [ %2550, %2541 ], [ 0.000000e+00, %2503 ]
  br i1 %1903, label %2717, label %2555

; <label>:2555                                    ; preds = %2551
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 3
  %2559 = icmp eq i32 %2558, 3
  br i1 %2559, label %2635, label %2560

; <label>:2560                                    ; preds = %2555
  %2561 = and i32 %2557, 16
  %2562 = icmp ne i32 %2561, 0
  %2563 = select i1 %2562, float %2203, float 0.000000e+00
  %2564 = icmp eq i32 %2558, 0
  br i1 %2564, label %2565, label %2590

; <label>:2565                                    ; preds = %2560
  %2566 = and i32 %2557, 64
  %2567 = icmp ne i32 %2566, 0
  %2568 = select i1 %2567, float %2203, float 0.000000e+00
  %2569 = fsub fast float %2424, %1896
  %2570 = fsub fast float %2425, %1897
  %2571 = fsub fast float %2426, %1898
  %2572 = fmul fast float %2563, %2569
  %2573 = fmul fast float %2563, %2570
  %2574 = fmul fast float %2563, %2571
  %2575 = fadd fast float %2572, %1896
  %2576 = fadd fast float %2573, %1897
  %2577 = fadd fast float %2574, %1898
  %2578 = fsub fast float %2410, %1899
  %2579 = fmul fast float %2563, %2578
  %2580 = fadd fast float %2579, %1899
  %2581 = fsub fast float %2552, %1893
  %2582 = fsub fast float %2553, %1894
  %2583 = fsub fast float %2554, %1895
  %2584 = fmul fast float %2568, %2581
  %2585 = fmul fast float %2568, %2582
  %2586 = fmul fast float %2568, %2583
  %2587 = fadd fast float %2584, %1893
  %2588 = fadd fast float %2585, %1894
  %2589 = fadd fast float %2586, %1895
  br label %2635

; <label>:2590                                    ; preds = %2560
  %2591 = icmp eq i32 %2558, 1
  br i1 %2591, label %2592, label %2605

; <label>:2592                                    ; preds = %2590
  %2593 = fadd fast float %2424, -1.000000e+00
  %2594 = fadd fast float %2425, -1.000000e+00
  %2595 = fadd fast float %2426, -1.000000e+00
  %2596 = fmul fast float %2563, %2593
  %2597 = fmul fast float %2563, %2594
  %2598 = fmul fast float %2563, %2595
  %2599 = fadd fast float %2596, 1.000000e+00
  %2600 = fadd fast float %2597, 1.000000e+00
  %2601 = fadd fast float %2598, 1.000000e+00
  %2602 = fmul fast float %2599, %1896
  %2603 = fmul fast float %2600, %1897
  %2604 = fmul fast float %2601, %1898
  br label %2635

; <label>:2605                                    ; preds = %2590
  %2606 = icmp eq i32 %2558, 2
  br i1 %2606, label %2607, label %2635

; <label>:2607                                    ; preds = %2605
  %2608 = call float @dx.op.unary.f32(i32 24, float %2424)  ; Sqrt(value)
  %2609 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2610 = call float @dx.op.unary.f32(i32 24, float %2426)  ; Sqrt(value)
  %2611 = fadd fast float %2608, -5.000000e-01
  %2612 = fadd fast float %2609, -5.000000e-01
  %2613 = fadd fast float %2610, -5.000000e-01
  %2614 = fmul fast float %2611, %2563
  %2615 = fmul fast float %2612, %2563
  %2616 = fmul fast float %2613, %2563
  %2617 = fadd fast float %2614, 5.000000e-01
  %2618 = fadd fast float %2615, 5.000000e-01
  %2619 = fadd fast float %2616, 5.000000e-01
  %2620 = fmul fast float %2617, 2.000000e+00
  %2621 = fsub fast float 1.000000e+00, %2620
  %2622 = fmul fast float %2621, %1896
  %2623 = fadd fast float %2622, %2620
  %2624 = fmul fast float %2623, %1896
  %2625 = fmul fast float %2618, 2.000000e+00
  %2626 = fsub fast float 1.000000e+00, %2625
  %2627 = fmul fast float %2626, %1897
  %2628 = fadd fast float %2627, %2625
  %2629 = fmul fast float %2628, %1897
  %2630 = fmul fast float %2619, 2.000000e+00
  %2631 = fsub fast float 1.000000e+00, %2630
  %2632 = fmul fast float %2631, %1898
  %2633 = fadd fast float %2632, %2630
  %2634 = fmul fast float %2633, %1898
  br label %2635

; <label>:2635                                    ; preds = %2607, %2605, %2592, %2565, %2555
  %2636 = phi float [ %1893, %2555 ], [ %1893, %2607 ], [ %1893, %2605 ], [ %1893, %2592 ], [ %2587, %2565 ]
  %2637 = phi float [ %1894, %2555 ], [ %1894, %2607 ], [ %1894, %2605 ], [ %1894, %2592 ], [ %2588, %2565 ]
  %2638 = phi float [ %1895, %2555 ], [ %1895, %2607 ], [ %1895, %2605 ], [ %1895, %2592 ], [ %2589, %2565 ]
  %2639 = phi float [ %1896, %2555 ], [ %2624, %2607 ], [ %1896, %2605 ], [ %2602, %2592 ], [ %2575, %2565 ]
  %2640 = phi float [ %1897, %2555 ], [ %2629, %2607 ], [ %1897, %2605 ], [ %2603, %2592 ], [ %2576, %2565 ]
  %2641 = phi float [ %1898, %2555 ], [ %2634, %2607 ], [ %1898, %2605 ], [ %2604, %2592 ], [ %2577, %2565 ]
  %2642 = phi float [ %1899, %2555 ], [ %1899, %2607 ], [ %1899, %2605 ], [ %1899, %2592 ], [ %2580, %2565 ]
  %2643 = and i32 %2557, 12
  %2644 = icmp eq i32 %2643, 12
  br i1 %2644, label %2717, label %2645

; <label>:2645                                    ; preds = %2635
  %2646 = and i32 %2557, 2097184
  %2647 = icmp eq i32 %2646, 2097184
  %2648 = select i1 %2647, float %2203, float 0.000000e+00
  %2649 = and i32 %2557, 4194336
  %2650 = icmp eq i32 %2649, 4194336
  %2651 = select i1 %2650, float %2203, float 0.000000e+00
  %2652 = and i32 %2557, 8388640
  %2653 = icmp eq i32 %2652, 8388640
  %2654 = select i1 %2653, float %2203, float 0.000000e+00
  %2655 = icmp eq i32 %2643, 0
  br i1 %2655, label %2656, label %2669

; <label>:2656                                    ; preds = %2645
  %2657 = fsub fast float %2505, %1891
  %2658 = fsub fast float %2506, %1892
  %2659 = fmul fast float %2648, %2657
  %2660 = fmul fast float %2648, %2658
  %2661 = fadd fast float %2659, %1891
  %2662 = fadd fast float %2660, %1892
  %2663 = fsub fast float %2507, %1902
  %2664 = fmul fast float %2651, %2663
  %2665 = fadd fast float %2664, %1902
  %2666 = fsub fast float %2504, %1901
  %2667 = fmul fast float %2654, %2666
  %2668 = fadd fast float %2667, %1901
  br label %2717

; <label>:2669                                    ; preds = %2645
  %2670 = icmp eq i32 %2643, 4
  br i1 %2670, label %2671, label %2703

; <label>:2671                                    ; preds = %2669
  %2672 = fmul fast float %2648, %2505
  %2673 = fmul fast float %2648, %2506
  %2674 = fadd fast float %2672, %1891
  %2675 = fadd fast float %2673, %1892
  %2676 = call float @dx.op.binary.f32(i32 36, float %1902, float %2507)  ; FMin(a,b)
  %2677 = fsub fast float %2676, %1902
  %2678 = fmul fast float %2677, %2651
  %2679 = fadd fast float %2678, %1902
  %2680 = fadd fast float %2504, %1901
  %2681 = fmul fast float %2680, 0x3FF337FAE0000000
  %2682 = fmul fast float %1901, %1901
  %2683 = fmul fast float %2504, %2504
  %2684 = fadd fast float %2683, %2682
  %2685 = fmul fast float %2684, 0x3FE5152B00000000
  %2686 = fmul fast float %1901, 0xBFCC1F85E0000000
  %2687 = fmul fast float %2686, %2504
  %2688 = fadd fast float %2687, 0xBFE1363700000000
  %2689 = fadd fast float %2688, %2681
  %2690 = fsub fast float %2689, %2685
  %2691 = fmul fast float %2680, 0x3FBA6F0D00000000
  %2692 = fmul fast float %2684, 0x3FD0432880000000
  %2693 = fmul fast float %1901, 0xBFEF110800000000
  %2694 = fmul fast float %2693, %2504
  %2695 = fadd fast float %2694, 1.000000e+00
  %2696 = fsub fast float %2695, %2691
  %2697 = fadd fast float %2696, %2692
  %2698 = fdiv fast float %2690, %2697
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fsub fast float %2699, %1901
  %2701 = fmul fast float %2700, %2654
  %2702 = fadd fast float %2701, %1901
  br label %2717

; <label>:2703                                    ; preds = %2669
  %2704 = icmp eq i32 %2643, 8
  br i1 %2704, label %2705, label %2717

; <label>:2705                                    ; preds = %2703
  %2706 = fmul fast float %2648, %2505
  %2707 = fmul fast float %2648, %2506
  %2708 = fadd fast float %2706, %1891
  %2709 = fadd fast float %2707, %1892
  %2710 = call float @dx.op.binary.f32(i32 36, float %1902, float %2507)  ; FMin(a,b)
  %2711 = fsub fast float %2710, %1902
  %2712 = fmul fast float %2711, %2651
  %2713 = fadd fast float %2712, %1902
  %2714 = fsub fast float %2504, %1901
  %2715 = fmul fast float %2654, %2714
  %2716 = fadd fast float %2715, %1901
  br label %2717

; <label>:2717                                    ; preds = %2705, %2703, %2671, %2656, %2635, %2551, %2202, %1907, %1890
  %2718 = phi float [ %1891, %2635 ], [ %1891, %1907 ], [ %1891, %2202 ], [ %2661, %2656 ], [ %2674, %2671 ], [ %1891, %2703 ], [ %2708, %2705 ], [ %1891, %1890 ], [ %2505, %2551 ]
  %2719 = phi float [ %1892, %2635 ], [ %1892, %1907 ], [ %1892, %2202 ], [ %2662, %2656 ], [ %2675, %2671 ], [ %1892, %2703 ], [ %2709, %2705 ], [ %1892, %1890 ], [ %2506, %2551 ]
  %2720 = phi float [ %2636, %2635 ], [ %1893, %1907 ], [ %1893, %2202 ], [ %2636, %2656 ], [ %2636, %2671 ], [ %2636, %2703 ], [ %2636, %2705 ], [ %1893, %1890 ], [ %2552, %2551 ]
  %2721 = phi float [ %2637, %2635 ], [ %1894, %1907 ], [ %1894, %2202 ], [ %2637, %2656 ], [ %2637, %2671 ], [ %2637, %2703 ], [ %2637, %2705 ], [ %1894, %1890 ], [ %2553, %2551 ]
  %2722 = phi float [ %2638, %2635 ], [ %1895, %1907 ], [ %1895, %2202 ], [ %2638, %2656 ], [ %2638, %2671 ], [ %2638, %2703 ], [ %2638, %2705 ], [ %1895, %1890 ], [ %2554, %2551 ]
  %2723 = phi float [ %2639, %2635 ], [ %1896, %1907 ], [ %1896, %2202 ], [ %2639, %2656 ], [ %2639, %2671 ], [ %2639, %2703 ], [ %2639, %2705 ], [ %1896, %1890 ], [ %2424, %2551 ]
  %2724 = phi float [ %2640, %2635 ], [ %1897, %1907 ], [ %1897, %2202 ], [ %2640, %2656 ], [ %2640, %2671 ], [ %2640, %2703 ], [ %2640, %2705 ], [ %1897, %1890 ], [ %2425, %2551 ]
  %2725 = phi float [ %2641, %2635 ], [ %1898, %1907 ], [ %1898, %2202 ], [ %2641, %2656 ], [ %2641, %2671 ], [ %2641, %2703 ], [ %2641, %2705 ], [ %1898, %1890 ], [ %2426, %2551 ]
  %2726 = phi float [ %2642, %2635 ], [ %1899, %1907 ], [ %1899, %2202 ], [ %2642, %2656 ], [ %2642, %2671 ], [ %2642, %2703 ], [ %2642, %2705 ], [ %1899, %1890 ], [ %2410, %2551 ]
  %2727 = phi float [ %1900, %2635 ], [ %1900, %1907 ], [ %1900, %2202 ], [ %1900, %2656 ], [ %1900, %2671 ], [ %1900, %2703 ], [ %1900, %2705 ], [ %1900, %1890 ], [ %2203, %2551 ]
  %2728 = phi float [ %1901, %2635 ], [ %1901, %1907 ], [ %1901, %2202 ], [ %2668, %2656 ], [ %2702, %2671 ], [ %1901, %2703 ], [ %2716, %2705 ], [ %1901, %1890 ], [ %2504, %2551 ]
  %2729 = phi float [ %1902, %2635 ], [ %1902, %1907 ], [ %1902, %2202 ], [ %2665, %2656 ], [ %2679, %2671 ], [ %1902, %2703 ], [ %2713, %2705 ], [ %1902, %1890 ], [ %2507, %2551 ]
  %2730 = add i32 %35, 24
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = add i32 %35, 28
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = or i32 %2735, %2732
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %3196, label %2738

; <label>:2738                                    ; preds = %2717
  %2739 = and i32 %2732, 262144
  %2740 = icmp ne i32 %2739, 0
  %2741 = select i1 %2740, float %38, float 1.000000e+00
  %2742 = select i1 %2740, float %39, float 0.000000e+00
  %2743 = select i1 %2740, float %40, float 0.000000e+00
  %2744 = select i1 %2740, float %41, float 1.000000e+00
  %2745 = select i1 %2740, float %42, float %63
  %2746 = select i1 %2740, float %43, float %64
  %2747 = add i32 %35, 284
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = lshr i32 %2749, 16
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = fmul fast float %2751, 0x3F50624DE0000000
  %2753 = add i32 %35, 88
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 16
  %2757 = and i32 %2756, 255
  %2758 = lshr i32 %2755, 24
  %2759 = add i32 %35, 292
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 65535
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = lshr i32 %2761, 16
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = add i32 %35, 32
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 22
  %2770 = shl nuw nsw i32 %2769, 5
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = shl i32 %2768, 4
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = lshr i32 %2768, 7
  %2776 = and i32 %2775, 32752
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 3
  %2780 = fmul fast float %2779, 1.000000e+03
  %2781 = fmul fast float %233, %2780
  %2782 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2783 = fadd fast float %2782, %223
  %2784 = fmul fast float %234, %2780
  %2785 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2786 = fadd fast float %2785, %225
  %2787 = fmul fast float %2752, %2780
  %2788 = call float @dx.op.unary.f32(i32 22, float %2787)  ; Frc(value)
  %2789 = fmul fast float %2788, 0x401921FB60000000
  %2790 = fadd fast float %2789, %2771
  %2791 = call float @dx.op.unary.f32(i32 13, float %2790)  ; Sin(value)
  %2792 = call float @dx.op.unary.f32(i32 12, float %2790)  ; Cos(value)
  %2793 = fsub fast float -0.000000e+00, %2791
  %2794 = fadd fast float %2745, -5.000000e-01
  %2795 = fadd fast float %2746, -5.000000e-01
  %2796 = fmul fast float %2763, %2794
  %2797 = fmul fast float %2765, %2795
  %2798 = fadd fast float %2796, 5.000000e-01
  %2799 = fadd fast float %2797, 5.000000e-01
  %2800 = fmul fast float %2774, %2798
  %2801 = fmul fast float %2777, %2799
  %2802 = fmul fast float %2792, %2800
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2801, float %2802)  ; FMad(a,b,c)
  %2804 = fmul fast float %2791, %2800
  %2805 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2801, float %2804)  ; FMad(a,b,c)
  %2806 = fadd fast float %2783, %2803
  %2807 = fadd fast float %2786, %2805
  %2808 = icmp ugt i32 %2757, 1
  %2809 = icmp ugt i32 %2755, 33554431
  %2810 = or i1 %2809, %2808
  br i1 %2810, label %2811, label %2836

; <label>:2811                                    ; preds = %2738
  %2812 = add i32 %35, 228
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = lshr i32 %2814, 16
  %2816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2815)  ; LegacyF16ToF32(value)
  %2817 = fmul fast float %2779, %2816
  %2818 = call float @dx.op.unary.f32(i32 22, float %2817)  ; Frc(value)
  %2819 = mul nuw nsw i32 %2757, %2758
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2818, %2820
  %2822 = call float @dx.op.unary.f32(i32 27, float %2821)  ; Round_ni(value)
  %2823 = fptoui float %2822 to i32
  %2824 = urem i32 %2823, %2757
  %2825 = udiv i32 %2823, %2758
  %2826 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2827 = call float @dx.op.unary.f32(i32 22, float %2807)  ; Frc(value)
  %2828 = uitofp i32 %2824 to float
  %2829 = uitofp i32 %2825 to float
  %2830 = fadd fast float %2826, %2828
  %2831 = fadd fast float %2827, %2829
  %2832 = uitofp i32 %2757 to float
  %2833 = uitofp i32 %2758 to float
  %2834 = fdiv fast float %2830, %2832
  %2835 = fdiv fast float %2831, %2833
  br label %2836

; <label>:2836                                    ; preds = %2811, %2738
  %2837 = phi float [ %2834, %2811 ], [ %2806, %2738 ]
  %2838 = phi float [ %2835, %2811 ], [ %2807, %2738 ]
  %2839 = and i32 %2732, 16
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %3037, label %2841

; <label>:2841                                    ; preds = %2836
  %2842 = add i32 %35, 360
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = add i32 %2844, 0
  %2846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2846, %dx.types.Handle %87, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = extractvalue %dx.types.ResRet.f32 %2847, 3
  %2852 = and i32 %2755, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2755, 8
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2851, %2853
  %2858 = fadd fast float %2857, %2856
  %2859 = fmul fast float %2858, 0x3F70101000000000
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 512
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2872, label %2864

; <label>:2864                                    ; preds = %2841
  %2865 = add i32 %35, 440
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = add i32 %2867, 0
  %2869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2869, %dx.types.Handle %88, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  br label %2872

; <label>:2872                                    ; preds = %2864, %2841
  %2873 = phi float [ %2871, %2864 ], [ 1.000000e+00, %2841 ]
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 33554432
  %2877 = icmp eq i32 %2876, 0
  br i1 %2877, label %2984, label %2878

; <label>:2878                                    ; preds = %2872
  %2879 = add i32 %35, 224
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = lshr i32 %2881, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = add i32 %35, 228
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = lshr i32 %2892, 24
  %2894 = uitofp i32 %2893 to float
  %2895 = fmul fast float %2894, 0x3F70101020000000
  %2896 = and i32 %2892, 255
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101020000000
  %2899 = lshr i32 %2892, 8
  %2900 = and i32 %2899, 255
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2901, 0x3F70101020000000
  %2903 = lshr i32 %2892, 16
  %2904 = and i32 %2903, 255
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2905, 0x3F70101020000000
  %2907 = add i32 %35, 220
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 24
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2911, 0x3F70101020000000
  %2913 = and i32 %2909, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = fmul fast float %2914, 0x3F70101020000000
  %2916 = lshr i32 %2909, 8
  %2917 = and i32 %2916, 255
  %2918 = uitofp i32 %2917 to float
  %2919 = fmul fast float %2918, 0x3F70101020000000
  %2920 = lshr i32 %2909, 16
  %2921 = and i32 %2920, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3F70101020000000
  %2924 = bitcast float %2848 to i32
  %2925 = ashr i32 %2924, 1
  %2926 = sub nsw i32 1597463174, %2925
  %2927 = bitcast i32 %2926 to float
  %2928 = fmul fast float %2848, 5.000000e-01
  %2929 = fmul fast float %2927, %2927
  %2930 = fmul fast float %2929, %2928
  %2931 = fsub fast float 1.500000e+00, %2930
  %2932 = fmul fast float %2927, %2848
  %2933 = fmul fast float %2932, %2931
  %2934 = bitcast float %2849 to i32
  %2935 = ashr i32 %2934, 1
  %2936 = sub nsw i32 1597463174, %2935
  %2937 = bitcast i32 %2936 to float
  %2938 = fmul fast float %2849, 5.000000e-01
  %2939 = fmul fast float %2937, %2937
  %2940 = fmul fast float %2939, %2938
  %2941 = fsub fast float 1.500000e+00, %2940
  %2942 = fmul fast float %2937, %2849
  %2943 = fmul fast float %2942, %2941
  %2944 = bitcast float %2850 to i32
  %2945 = ashr i32 %2944, 1
  %2946 = sub nsw i32 1597463174, %2945
  %2947 = bitcast i32 %2946 to float
  %2948 = fmul fast float %2850, 5.000000e-01
  %2949 = fmul fast float %2947, %2947
  %2950 = fmul fast float %2949, %2948
  %2951 = fsub fast float 1.500000e+00, %2950
  %2952 = fmul fast float %2947, %2850
  %2953 = fmul fast float %2952, %2951
  %2954 = fsub fast float %2933, %2915
  %2955 = fsub fast float %2943, %2919
  %2956 = fsub fast float %2953, %2923
  %2957 = fmul fast float %2954, %2883
  %2958 = fmul fast float %2955, %2885
  %2959 = fmul fast float %2956, %2890
  %2960 = fadd fast float %2957, %2898
  %2961 = fadd fast float %2958, %2902
  %2962 = fadd fast float %2959, %2906
  %2963 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2964 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2965 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2966 = fmul fast float %2963, %2963
  %2967 = fmul fast float %2964, %2964
  %2968 = fmul fast float %2965, %2965
  %2969 = fsub fast float %2966, %2848
  %2970 = fsub fast float %2967, %2849
  %2971 = fsub fast float %2968, %2850
  %2972 = fmul fast float %2969, %2873
  %2973 = fmul fast float %2970, %2873
  %2974 = fmul fast float %2971, %2873
  %2975 = fadd fast float %2972, %2848
  %2976 = fadd fast float %2973, %2849
  %2977 = fadd fast float %2974, %2850
  %2978 = fadd fast float %2895, %2859
  %2979 = fsub fast float %2978, %2912
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2981 = fsub fast float %2980, %2859
  %2982 = fmul fast float %2981, %2873
  %2983 = fadd fast float %2982, %2859
  br label %3037

; <label>:2984                                    ; preds = %2872
  %2985 = and i32 %2875, 134217728
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %3021, label %2987

; <label>:2987                                    ; preds = %2984
  %2988 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %2989 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %2990 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %2991 = fadd fast float %2988, -5.000000e-01
  %2992 = fadd fast float %2989, -5.000000e-01
  %2993 = fadd fast float %2990, -5.000000e-01
  %2994 = fmul fast float %2991, %2873
  %2995 = fmul fast float %2992, %2873
  %2996 = fmul fast float %2993, %2873
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = fadd fast float %2996, 5.000000e-01
  %3000 = call float @dx.op.unary.f32(i32 24, float %2848)  ; Sqrt(value)
  %3001 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %3002 = call float @dx.op.unary.f32(i32 24, float %2850)  ; Sqrt(value)
  %3003 = fmul fast float %2997, 2.000000e+00
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = fmul fast float %3004, %3000
  %3006 = fadd fast float %3005, %3003
  %3007 = fmul fast float %3006, %3000
  %3008 = fmul fast float %2998, 2.000000e+00
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = fmul fast float %3009, %3001
  %3011 = fadd fast float %3010, %3008
  %3012 = fmul fast float %3011, %3001
  %3013 = fmul fast float %2999, 2.000000e+00
  %3014 = fsub fast float 1.000000e+00, %3013
  %3015 = fmul fast float %3014, %3002
  %3016 = fadd fast float %3015, %3013
  %3017 = fmul fast float %3016, %3002
  %3018 = fmul fast float %3007, %3007
  %3019 = fmul fast float %3012, %3012
  %3020 = fmul fast float %3017, %3017
  br label %3037

; <label>:3021                                    ; preds = %2984
  %3022 = fmul fast float %210, %210
  %3023 = fmul fast float %214, %214
  %3024 = fmul fast float %218, %218
  %3025 = fadd fast float %3022, -1.000000e+00
  %3026 = fadd fast float %3023, -1.000000e+00
  %3027 = fadd fast float %3024, -1.000000e+00
  %3028 = fmul fast float %2873, %3025
  %3029 = fmul fast float %2873, %3026
  %3030 = fmul fast float %2873, %3027
  %3031 = fadd fast float %3028, 1.000000e+00
  %3032 = fadd fast float %3029, 1.000000e+00
  %3033 = fadd fast float %3030, 1.000000e+00
  %3034 = fmul fast float %3031, %2848
  %3035 = fmul fast float %3032, %2849
  %3036 = fmul fast float %3033, %2850
  br label %3037

; <label>:3037                                    ; preds = %3021, %2987, %2878, %2836
  %3038 = phi float [ %2983, %2878 ], [ %2859, %2987 ], [ %2859, %3021 ], [ 0x3FA23C0BE0000000, %2836 ]
  %3039 = phi float [ %2975, %2878 ], [ %3018, %2987 ], [ %3034, %3021 ], [ 1.000000e+00, %2836 ]
  %3040 = phi float [ %2976, %2878 ], [ %3019, %2987 ], [ %3035, %3021 ], [ 1.000000e+00, %2836 ]
  %3041 = phi float [ %2977, %2878 ], [ %3020, %2987 ], [ %3036, %3021 ], [ 1.000000e+00, %2836 ]
  %3042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.i32 %3042, 1
  %3044 = and i32 %3043, 1
  %3045 = icmp ne i32 %3044, 0
  %3046 = add i32 %35, 356
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 32
  %3050 = icmp ne i32 %3049, 0
  %3051 = and i1 %3045, %3050
  %3052 = select i1 %3051, float 1.000000e+00, float %3039
  %3053 = select i1 %3051, float 0x3FD3333340000000, float %3040
  %3054 = select i1 %3051, float 0x3FD3333340000000, float %3041
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = and i32 %3056, 32
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3131, label %3059

; <label>:3059                                    ; preds = %3037
  %3060 = add i32 %35, 92
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = add i32 %35, 376
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3067, %dx.types.Handle %87, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3072 = extractvalue %dx.types.ResRet.f32 %3068, 3
  %3073 = and i32 %3062, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3062, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = lshr i32 %3062, 16
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = fmul fast float %3080, 0x3F70101000000000
  %3082 = fmul fast float %3069, %3074
  %3083 = fadd fast float %3082, %3077
  %3084 = fmul fast float %3083, 0x3F70101000000000
  %3085 = fadd fast float %3070, -5.000000e-01
  %3086 = fadd fast float %3072, -5.000000e-01
  %3087 = fmul fast float %3085, %3081
  %3088 = fmul fast float %3086, %3081
  %3089 = fadd fast float %3087, 5.000000e-01
  %3090 = fadd fast float %3088, 5.000000e-01
  %3091 = fmul fast float %3089, 2.000000e+00
  %3092 = fadd fast float %3091, -1.000000e+00
  %3093 = fmul fast float %3090, 2.000000e+00
  %3094 = fadd fast float %3093, -1.000000e+00
  %3095 = fadd fast float %3092, %3094
  %3096 = fmul fast float %3095, 5.000000e-01
  %3097 = fsub fast float %3092, %3094
  %3098 = fmul fast float %3097, 5.000000e-01
  %3099 = call float @dx.op.unary.f32(i32 6, float %3096)  ; FAbs(value)
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = call float @dx.op.unary.f32(i32 6, float %3098)  ; FAbs(value)
  %3102 = fsub fast float %3100, %3101
  %3103 = call float @dx.op.dot3.f32(i32 55, float %3096, float %3098, float %3102, float %3096, float %3098, float %3102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = call float @dx.op.unary.f32(i32 25, float %3103)  ; Rsqrt(value)
  %3105 = fmul fast float %3096, %3104
  %3106 = fmul fast float %3098, %3104
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 67108864
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3127, label %3111

; <label>:3111                                    ; preds = %3059
  %3112 = add i32 %35, 280
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 65535
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 65535
  %3120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3119)  ; LegacyF16ToF32(value)
  %3121 = lshr i32 %3114, 16
  %3122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3121)  ; LegacyF16ToF32(value)
  %3123 = fsub fast float %3084, %3122
  %3124 = fmul fast float %3123, %3116
  %3125 = fadd fast float %3124, %3120
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  br label %3127

; <label>:3127                                    ; preds = %3111, %3059
  %3128 = phi float [ %3126, %3111 ], [ %3084, %3059 ]
  %3129 = call float @dx.op.dot2.f32(i32 54, float %3105, float %3106, float %2741, float %2742)  ; Dot2(ax,ay,bx,by)
  %3130 = call float @dx.op.dot2.f32(i32 54, float %3105, float %3106, float %2743, float %2744)  ; Dot2(ax,ay,bx,by)
  br label %3131

; <label>:3131                                    ; preds = %3127, %3037
  %3132 = phi float [ %3128, %3127 ], [ 0x3FD6666660000000, %3037 ]
  %3133 = phi float [ %3129, %3127 ], [ 0.000000e+00, %3037 ]
  %3134 = phi float [ %3130, %3127 ], [ 0.000000e+00, %3037 ]
  %3135 = phi float [ %3071, %3127 ], [ 1.000000e+00, %3037 ]
  %3136 = add i32 %35, 160
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = lshr i32 %3138, 22
  %3140 = shl nuw nsw i32 %3139, 5
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 64
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3179, label %3146

; <label>:3146                                    ; preds = %3131
  %3147 = add i32 %35, 392
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %3149, 0
  %3151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 131072
  %3155 = icmp eq i32 %3154, 0
  %3156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3151, %dx.types.Handle %87, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = fmul fast float %3157, %198
  %3161 = fmul fast float %3158, %201
  %3162 = fmul fast float %3159, %204
  br i1 %3155, label %3169, label %3163

; <label>:3163                                    ; preds = %3146
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = fmul fast float %3165, %3160
  %3167 = fmul fast float %3165, %3161
  %3168 = fmul fast float %3165, %3162
  br label %3169

; <label>:3169                                    ; preds = %3163, %3146
  %3170 = phi float [ %3166, %3163 ], [ %3160, %3146 ]
  %3171 = phi float [ %3167, %3163 ], [ %3161, %3146 ]
  %3172 = phi float [ %3168, %3163 ], [ %3162, %3146 ]
  %3173 = fmul fast float %3170, %3141
  %3174 = select i1 %192, float %3173, float %3170
  %3175 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3171, float %3172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3176 = select i1 %192, float 0.000000e+00, float %3170
  %3177 = select i1 %192, float %3175, float %3171
  %3178 = select i1 %192, float 0.000000e+00, float %3172
  br label %3179

; <label>:3179                                    ; preds = %3169, %3131
  %3180 = phi float [ %3176, %3169 ], [ 0.000000e+00, %3131 ]
  %3181 = phi float [ %3177, %3169 ], [ 0.000000e+00, %3131 ]
  %3182 = phi float [ %3178, %3169 ], [ 0.000000e+00, %3131 ]
  %3183 = add i32 %35, 96
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = lshr i32 %3185, 8
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = call float @dx.op.dot3.f32(i32 55, float %3052, float %3053, float %3054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = fmul fast float %3190, %3191
  %3193 = fadd fast float %3192, %3187
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  br label %3196

; <label>:3196                                    ; preds = %3179, %2717
  %3197 = phi float [ %3133, %3179 ], [ 0.000000e+00, %2717 ]
  %3198 = phi float [ %3134, %3179 ], [ 0.000000e+00, %2717 ]
  %3199 = phi float [ %3180, %3179 ], [ 0.000000e+00, %2717 ]
  %3200 = phi float [ %3181, %3179 ], [ 0.000000e+00, %2717 ]
  %3201 = phi float [ %3182, %3179 ], [ 0.000000e+00, %2717 ]
  %3202 = phi float [ %3052, %3179 ], [ 0.000000e+00, %2717 ]
  %3203 = phi float [ %3053, %3179 ], [ 0.000000e+00, %2717 ]
  %3204 = phi float [ %3054, %3179 ], [ 0.000000e+00, %2717 ]
  %3205 = phi float [ %3038, %3179 ], [ 0.000000e+00, %2717 ]
  %3206 = phi float [ 1.000000e+00, %3179 ], [ 0.000000e+00, %2717 ]
  %3207 = phi float [ %3132, %3179 ], [ 0.000000e+00, %2717 ]
  %3208 = phi float [ %3135, %3179 ], [ 0.000000e+00, %2717 ]
  %3209 = phi float [ %3195, %3179 ], [ 0.000000e+00, %2717 ]
  %3210 = or i1 %418, %420
  br i1 %3210, label %4036, label %3211

; <label>:3211                                    ; preds = %3196
  %3212 = add i32 %35, 40
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = add i32 %35, 44
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = or i32 %3217, %3214
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %4036, label %3220

; <label>:3220                                    ; preds = %3211
  %3221 = and i32 %3214, 262144
  %3222 = icmp ne i32 %3221, 0
  %3223 = select i1 %3222, float %38, float 1.000000e+00
  %3224 = select i1 %3222, float %39, float 0.000000e+00
  %3225 = select i1 %3222, float %40, float 0.000000e+00
  %3226 = select i1 %3222, float %41, float 1.000000e+00
  %3227 = select i1 %3222, float %42, float %63
  %3228 = select i1 %3222, float %43, float %64
  %3229 = add i32 %35, 300
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = lshr i32 %3231, 16
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = fmul fast float %3233, 0x3F50624DE0000000
  %3235 = add i32 %35, 104
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = lshr i32 %3237, 16
  %3239 = and i32 %3238, 255
  %3240 = lshr i32 %3237, 24
  %3241 = add i32 %35, 308
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 65535
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = lshr i32 %3243, 16
  %3247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3246)  ; LegacyF16ToF32(value)
  %3248 = add i32 %35, 48
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = lshr i32 %3250, 22
  %3252 = shl nuw nsw i32 %3251, 5
  %3253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3252)  ; LegacyF16ToF32(value)
  %3254 = shl i32 %3250, 4
  %3255 = and i32 %3254, 32752
  %3256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3255)  ; LegacyF16ToF32(value)
  %3257 = lshr i32 %3250, 7
  %3258 = and i32 %3257, 32752
  %3259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3258)  ; LegacyF16ToF32(value)
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 3
  %3262 = fmul fast float %3261, 1.000000e+03
  %3263 = fmul fast float %3262, %275
  %3264 = call float @dx.op.unary.f32(i32 22, float %3263)  ; Frc(value)
  %3265 = fadd fast float %3264, %265
  %3266 = fmul fast float %3262, %276
  %3267 = call float @dx.op.unary.f32(i32 22, float %3266)  ; Frc(value)
  %3268 = fadd fast float %3267, %267
  %3269 = fmul fast float %3234, %3262
  %3270 = call float @dx.op.unary.f32(i32 22, float %3269)  ; Frc(value)
  %3271 = fmul fast float %3270, 0x401921FB60000000
  %3272 = fadd fast float %3271, %3253
  %3273 = call float @dx.op.unary.f32(i32 13, float %3272)  ; Sin(value)
  %3274 = call float @dx.op.unary.f32(i32 12, float %3272)  ; Cos(value)
  %3275 = fsub fast float -0.000000e+00, %3273
  %3276 = fadd fast float %3227, -5.000000e-01
  %3277 = fadd fast float %3228, -5.000000e-01
  %3278 = fmul fast float %3245, %3276
  %3279 = fmul fast float %3247, %3277
  %3280 = fadd fast float %3278, 5.000000e-01
  %3281 = fadd fast float %3279, 5.000000e-01
  %3282 = fmul fast float %3256, %3280
  %3283 = fmul fast float %3259, %3281
  %3284 = fmul fast float %3274, %3282
  %3285 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3283, float %3284)  ; FMad(a,b,c)
  %3286 = fmul fast float %3273, %3282
  %3287 = call float @dx.op.tertiary.f32(i32 46, float %3274, float %3283, float %3286)  ; FMad(a,b,c)
  %3288 = fadd fast float %3265, %3285
  %3289 = fadd fast float %3268, %3287
  %3290 = icmp ugt i32 %3239, 1
  %3291 = icmp ugt i32 %3237, 33554431
  %3292 = or i1 %3291, %3290
  br i1 %3292, label %3293, label %3318

; <label>:3293                                    ; preds = %3220
  %3294 = add i32 %35, 244
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = lshr i32 %3296, 16
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = fmul fast float %3261, %3298
  %3300 = call float @dx.op.unary.f32(i32 22, float %3299)  ; Frc(value)
  %3301 = mul nuw nsw i32 %3239, %3240
  %3302 = uitofp i32 %3301 to float
  %3303 = fmul fast float %3300, %3302
  %3304 = call float @dx.op.unary.f32(i32 27, float %3303)  ; Round_ni(value)
  %3305 = fptoui float %3304 to i32
  %3306 = urem i32 %3305, %3239
  %3307 = udiv i32 %3305, %3240
  %3308 = call float @dx.op.unary.f32(i32 22, float %3288)  ; Frc(value)
  %3309 = call float @dx.op.unary.f32(i32 22, float %3289)  ; Frc(value)
  %3310 = uitofp i32 %3306 to float
  %3311 = uitofp i32 %3307 to float
  %3312 = fadd fast float %3308, %3310
  %3313 = fadd fast float %3309, %3311
  %3314 = uitofp i32 %3239 to float
  %3315 = uitofp i32 %3240 to float
  %3316 = fdiv fast float %3312, %3314
  %3317 = fdiv fast float %3313, %3315
  br label %3318

; <label>:3318                                    ; preds = %3293, %3220
  %3319 = phi float [ %3316, %3293 ], [ %3288, %3220 ]
  %3320 = phi float [ %3317, %3293 ], [ %3289, %3220 ]
  %3321 = and i32 %3214, 16777216
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3432, label %3323

; <label>:3323                                    ; preds = %3318
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.CBufRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.CBufRet.f32 %3324, 2
  %3328 = fadd fast float %3325, %150
  %3329 = fadd fast float %3326, %151
  %3330 = fadd fast float %3327, %152
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = icmp eq i32 %36, 65535
  br i1 %3334, label %3429, label %3335

; <label>:3335                                    ; preds = %3323
  %3336 = lshr i32 %36, 1
  %3337 = shl i32 %3336, 2
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %36, 1
  %3341 = icmp ne i32 %3340, 0
  %3342 = lshr i32 %3339, 16
  %3343 = and i32 %3339, 65535
  %3344 = select i1 %3341, i32 %3342, i32 %3343
  %3345 = icmp eq i32 %3344, 65535
  br i1 %3345, label %3425, label %3346

; <label>:3346                                    ; preds = %3335
  %3347 = mul nuw nsw i32 %3344, 40
  %3348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = add nuw nsw i32 %3347, 12
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = add nuw nsw i32 %3347, 24
  %3358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3362 = add nuw nsw i32 %3347, 36
  %3363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = fsub fast float %3328, %3349
  %3366 = fsub fast float %3329, %3350
  %3367 = fsub fast float %3330, %3351
  %3368 = fmul fast float %3364, %3365
  %3369 = fmul fast float %3364, %3366
  %3370 = fmul fast float %3364, %3367
  %3371 = call float @dx.op.unary.f32(i32 27, float %3368)  ; Round_ni(value)
  %3372 = call float @dx.op.unary.f32(i32 27, float %3369)  ; Round_ni(value)
  %3373 = call float @dx.op.unary.f32(i32 27, float %3370)  ; Round_ni(value)
  %3374 = fadd fast float %3371, 5.000000e-01
  %3375 = fadd fast float %3372, 5.000000e-01
  %3376 = fadd fast float %3373, 5.000000e-01
  %3377 = fmul fast float %3374, %3354
  %3378 = fmul fast float %3375, %3355
  %3379 = fmul fast float %3376, %3356
  %3380 = shl i32 %36, 2
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %3382, 0
  %3384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3385 = call float @dx.op.unary.f32(i32 22, float %3377)  ; Frc(value)
  %3386 = call float @dx.op.unary.f32(i32 22, float %3378)  ; Frc(value)
  %3387 = call float @dx.op.unary.f32(i32 22, float %3379)  ; Frc(value)
  %3388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3384, %dx.types.Handle %30, float %3385, float %3386, float %3387, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = fmul fast float %3389, 1.023000e+03
  %3393 = fmul fast float %3390, 1.023000e+03
  %3394 = fmul fast float %3391, 1.023000e+03
  %3395 = fadd fast float %3392, 5.000000e-01
  %3396 = fadd fast float %3393, 5.000000e-01
  %3397 = fadd fast float %3394, 5.000000e-01
  %3398 = call float @dx.op.unary.f32(i32 27, float %3395)  ; Round_ni(value)
  %3399 = call float @dx.op.unary.f32(i32 27, float %3396)  ; Round_ni(value)
  %3400 = call float @dx.op.unary.f32(i32 27, float %3397)  ; Round_ni(value)
  %3401 = fsub fast float %3368, %3371
  %3402 = fsub fast float %3369, %3372
  %3403 = fsub fast float %3370, %3373
  %3404 = fmul fast float %3401, 7.500000e-01
  %3405 = fmul fast float %3402, 7.500000e-01
  %3406 = fmul fast float %3403, 7.500000e-01
  %3407 = fadd fast float %3371, 1.250000e-01
  %3408 = fadd fast float %3407, %3404
  %3409 = fadd fast float %3408, %3398
  %3410 = fadd fast float %3372, 1.250000e-01
  %3411 = fadd fast float %3410, %3405
  %3412 = fadd fast float %3411, %3399
  %3413 = fadd fast float %3373, 1.250000e-01
  %3414 = fadd fast float %3413, %3406
  %3415 = fadd fast float %3414, %3400
  %3416 = fmul fast float %3409, %3359
  %3417 = fmul fast float %3412, %3360
  %3418 = fmul fast float %3415, %3361
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = add i32 %3420, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3422, %dx.types.Handle %28, float %3416, float %3417, float %3418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  br label %3425

; <label>:3425                                    ; preds = %3346, %3335
  %3426 = phi float [ %3424, %3346 ], [ -1.000000e+00, %3335 ]
  %3427 = fadd fast float %3426, %3333
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  br label %3429

; <label>:3429                                    ; preds = %3425, %3323
  %3430 = phi float [ %3428, %3425 ], [ %3333, %3323 ]
  %3431 = fmul fast float %3430, %414
  br label %3432

; <label>:3432                                    ; preds = %3429, %3318
  %3433 = phi float [ %3431, %3429 ], [ %414, %3318 ]
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 256
  %3437 = icmp eq i32 %3436, 0
  br i1 %3437, label %3484, label %3438

; <label>:3438                                    ; preds = %3432
  %3439 = add i32 %35, 428
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3443, %dx.types.Handle %88, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = add i32 %35, 116
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = shl i32 %3448, 4
  %3450 = and i32 %3449, 32752
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = lshr i32 %3448, 7
  %3453 = and i32 %3452, 32752
  %3454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3453)  ; LegacyF16ToF32(value)
  %3455 = fsub fast float 1.000000e+00, %3433
  %3456 = call float @dx.op.binary.f32(i32 35, float %3455, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3457 = bitcast float %3433 to i32
  %3458 = sitofp i32 %3457 to float
  %3459 = fadd fast float %3458, 0xC1CFBF8940000000
  %3460 = fmul fast float %3454, %3459
  %3461 = fadd fast float %3460, 0x41CFBF8940000000
  %3462 = fptosi float %3461 to i32
  %3463 = bitcast i32 %3462 to float
  %3464 = bitcast float %3456 to i32
  %3465 = sitofp i32 %3464 to float
  %3466 = fadd fast float %3465, 0xC1CFBF8940000000
  %3467 = fmul fast float %3466, %3454
  %3468 = fadd fast float %3467, 0x41CFBF8940000000
  %3469 = fptosi float %3468 to i32
  %3470 = bitcast i32 %3469 to float
  %3471 = fmul fast float %3463, %3451
  %3472 = fmul fast float %3470, %3451
  %3473 = fsub fast float %3456, %3471
  %3474 = fadd fast float %3472, %3456
  %3475 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  %3476 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3477 = fsub fast float %3445, %3475
  %3478 = fsub fast float %3476, %3475
  %3479 = bitcast float %3478 to i32
  %3480 = sub nsw i32 2129859010, %3479
  %3481 = bitcast i32 %3480 to float
  %3482 = fmul fast float %3481, %3477
  %3483 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  br label %3484

; <label>:3484                                    ; preds = %3438, %3432
  %3485 = phi float [ %3483, %3438 ], [ %3433, %3432 ]
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = and i32 %3487, 128
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3506, label %3490

; <label>:3490                                    ; preds = %3484
  %3491 = add i32 %35, 412
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = add i32 %3493, 0
  %3495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3495, %dx.types.Handle %88, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 524288
  %3501 = icmp ne i32 %3500, 0
  %3502 = fcmp fast ogt float %3497, 0x3FE0101020000000
  %3503 = select i1 %3502, float 1.000000e+00, float 0.000000e+00
  %3504 = select i1 %3501, float %3503, float %3497
  %3505 = fmul fast float %3504, %3485
  br label %3506

; <label>:3506                                    ; preds = %3490, %3484
  %3507 = phi float [ %3505, %3490 ], [ %3485, %3484 ]
  %3508 = fcmp fast ult float %3507, 0x3F70101020000000
  br i1 %3508, label %4036, label %3509

; <label>:3509                                    ; preds = %3506
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 16
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3712, label %3514

; <label>:3514                                    ; preds = %3509
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = add i32 %35, 364
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3517, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = add i32 %3519, 0
  %3521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3521, %dx.types.Handle %87, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.ResRet.f32 %3522, 2
  %3526 = extractvalue %dx.types.ResRet.f32 %3522, 3
  %3527 = and i32 %3516, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = lshr i32 %3516, 8
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = fmul fast float %3526, %3528
  %3533 = fadd fast float %3532, %3531
  %3534 = fmul fast float %3533, 0x3F70101000000000
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 512
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3547, label %3539

; <label>:3539                                    ; preds = %3514
  %3540 = add i32 %35, 444
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = add i32 %3542, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3544, %dx.types.Handle %88, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  br label %3547

; <label>:3547                                    ; preds = %3539, %3514
  %3548 = phi float [ %3546, %3539 ], [ 1.000000e+00, %3514 ]
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 33554432
  %3552 = icmp eq i32 %3551, 0
  br i1 %3552, label %3659, label %3553

; <label>:3553                                    ; preds = %3547
  %3554 = add i32 %35, 240
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 65535
  %3558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3557)  ; LegacyF16ToF32(value)
  %3559 = lshr i32 %3556, 16
  %3560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3559)  ; LegacyF16ToF32(value)
  %3561 = add i32 %35, 244
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 65535
  %3565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3564)  ; LegacyF16ToF32(value)
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = lshr i32 %3567, 24
  %3569 = uitofp i32 %3568 to float
  %3570 = fmul fast float %3569, 0x3F70101020000000
  %3571 = and i32 %3567, 255
  %3572 = uitofp i32 %3571 to float
  %3573 = fmul fast float %3572, 0x3F70101020000000
  %3574 = lshr i32 %3567, 8
  %3575 = and i32 %3574, 255
  %3576 = uitofp i32 %3575 to float
  %3577 = fmul fast float %3576, 0x3F70101020000000
  %3578 = lshr i32 %3567, 16
  %3579 = and i32 %3578, 255
  %3580 = uitofp i32 %3579 to float
  %3581 = fmul fast float %3580, 0x3F70101020000000
  %3582 = add i32 %35, 236
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = lshr i32 %3584, 24
  %3586 = uitofp i32 %3585 to float
  %3587 = fmul fast float %3586, 0x3F70101020000000
  %3588 = and i32 %3584, 255
  %3589 = uitofp i32 %3588 to float
  %3590 = fmul fast float %3589, 0x3F70101020000000
  %3591 = lshr i32 %3584, 8
  %3592 = and i32 %3591, 255
  %3593 = uitofp i32 %3592 to float
  %3594 = fmul fast float %3593, 0x3F70101020000000
  %3595 = lshr i32 %3584, 16
  %3596 = and i32 %3595, 255
  %3597 = uitofp i32 %3596 to float
  %3598 = fmul fast float %3597, 0x3F70101020000000
  %3599 = bitcast float %3523 to i32
  %3600 = ashr i32 %3599, 1
  %3601 = sub nsw i32 1597463174, %3600
  %3602 = bitcast i32 %3601 to float
  %3603 = fmul fast float %3523, 5.000000e-01
  %3604 = fmul fast float %3602, %3602
  %3605 = fmul fast float %3604, %3603
  %3606 = fsub fast float 1.500000e+00, %3605
  %3607 = fmul fast float %3602, %3523
  %3608 = fmul fast float %3607, %3606
  %3609 = bitcast float %3524 to i32
  %3610 = ashr i32 %3609, 1
  %3611 = sub nsw i32 1597463174, %3610
  %3612 = bitcast i32 %3611 to float
  %3613 = fmul fast float %3524, 5.000000e-01
  %3614 = fmul fast float %3612, %3612
  %3615 = fmul fast float %3614, %3613
  %3616 = fsub fast float 1.500000e+00, %3615
  %3617 = fmul fast float %3612, %3524
  %3618 = fmul fast float %3617, %3616
  %3619 = bitcast float %3525 to i32
  %3620 = ashr i32 %3619, 1
  %3621 = sub nsw i32 1597463174, %3620
  %3622 = bitcast i32 %3621 to float
  %3623 = fmul fast float %3525, 5.000000e-01
  %3624 = fmul fast float %3622, %3622
  %3625 = fmul fast float %3624, %3623
  %3626 = fsub fast float 1.500000e+00, %3625
  %3627 = fmul fast float %3622, %3525
  %3628 = fmul fast float %3627, %3626
  %3629 = fsub fast float %3608, %3590
  %3630 = fsub fast float %3618, %3594
  %3631 = fsub fast float %3628, %3598
  %3632 = fmul fast float %3629, %3558
  %3633 = fmul fast float %3630, %3560
  %3634 = fmul fast float %3631, %3565
  %3635 = fadd fast float %3632, %3573
  %3636 = fadd fast float %3633, %3577
  %3637 = fadd fast float %3634, %3581
  %3638 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3639 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3640 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3641 = fmul fast float %3638, %3638
  %3642 = fmul fast float %3639, %3639
  %3643 = fmul fast float %3640, %3640
  %3644 = fsub fast float %3641, %3523
  %3645 = fsub fast float %3642, %3524
  %3646 = fsub fast float %3643, %3525
  %3647 = fmul fast float %3644, %3548
  %3648 = fmul fast float %3645, %3548
  %3649 = fmul fast float %3646, %3548
  %3650 = fadd fast float %3647, %3523
  %3651 = fadd fast float %3648, %3524
  %3652 = fadd fast float %3649, %3525
  %3653 = fadd fast float %3570, %3534
  %3654 = fsub fast float %3653, %3587
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = fsub fast float %3655, %3534
  %3657 = fmul fast float %3656, %3548
  %3658 = fadd fast float %3657, %3534
  br label %3712

; <label>:3659                                    ; preds = %3547
  %3660 = and i32 %3550, 134217728
  %3661 = icmp eq i32 %3660, 0
  br i1 %3661, label %3696, label %3662

; <label>:3662                                    ; preds = %3659
  %3663 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %3664 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %3665 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %3666 = fadd fast float %3663, -5.000000e-01
  %3667 = fadd fast float %3664, -5.000000e-01
  %3668 = fadd fast float %3665, -5.000000e-01
  %3669 = fmul fast float %3666, %3548
  %3670 = fmul fast float %3667, %3548
  %3671 = fmul fast float %3668, %3548
  %3672 = fadd fast float %3669, 5.000000e-01
  %3673 = fadd fast float %3670, 5.000000e-01
  %3674 = fadd fast float %3671, 5.000000e-01
  %3675 = call float @dx.op.unary.f32(i32 24, float %3523)  ; Sqrt(value)
  %3676 = call float @dx.op.unary.f32(i32 24, float %3524)  ; Sqrt(value)
  %3677 = call float @dx.op.unary.f32(i32 24, float %3525)  ; Sqrt(value)
  %3678 = fmul fast float %3672, 2.000000e+00
  %3679 = fsub fast float 1.000000e+00, %3678
  %3680 = fmul fast float %3679, %3675
  %3681 = fadd fast float %3680, %3678
  %3682 = fmul fast float %3681, %3675
  %3683 = fmul fast float %3673, 2.000000e+00
  %3684 = fsub fast float 1.000000e+00, %3683
  %3685 = fmul fast float %3684, %3676
  %3686 = fadd fast float %3685, %3683
  %3687 = fmul fast float %3686, %3676
  %3688 = fmul fast float %3674, 2.000000e+00
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = fmul fast float %3689, %3677
  %3691 = fadd fast float %3690, %3688
  %3692 = fmul fast float %3691, %3677
  %3693 = fmul fast float %3682, %3682
  %3694 = fmul fast float %3687, %3687
  %3695 = fmul fast float %3692, %3692
  br label %3712

; <label>:3696                                    ; preds = %3659
  %3697 = fmul fast float %252, %252
  %3698 = fmul fast float %256, %256
  %3699 = fmul fast float %260, %260
  %3700 = fadd fast float %3697, -1.000000e+00
  %3701 = fadd fast float %3698, -1.000000e+00
  %3702 = fadd fast float %3699, -1.000000e+00
  %3703 = fmul fast float %3548, %3700
  %3704 = fmul fast float %3548, %3701
  %3705 = fmul fast float %3548, %3702
  %3706 = fadd fast float %3703, 1.000000e+00
  %3707 = fadd fast float %3704, 1.000000e+00
  %3708 = fadd fast float %3705, 1.000000e+00
  %3709 = fmul fast float %3706, %3523
  %3710 = fmul fast float %3707, %3524
  %3711 = fmul fast float %3708, %3525
  br label %3712

; <label>:3712                                    ; preds = %3696, %3662, %3553, %3509
  %3713 = phi float [ %3658, %3553 ], [ %3534, %3662 ], [ %3534, %3696 ], [ 0x3FA23C0BE0000000, %3509 ]
  %3714 = phi float [ %3650, %3553 ], [ %3693, %3662 ], [ %3709, %3696 ], [ 1.000000e+00, %3509 ]
  %3715 = phi float [ %3651, %3553 ], [ %3694, %3662 ], [ %3710, %3696 ], [ 1.000000e+00, %3509 ]
  %3716 = phi float [ %3652, %3553 ], [ %3695, %3662 ], [ %3711, %3696 ], [ 1.000000e+00, %3509 ]
  %3717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.i32 %3717, 1
  %3719 = and i32 %3718, 1
  %3720 = icmp ne i32 %3719, 0
  %3721 = add i32 %35, 356
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 32
  %3725 = icmp ne i32 %3724, 0
  %3726 = and i1 %3720, %3725
  %3727 = select i1 %3726, float 1.000000e+00, float %3714
  %3728 = select i1 %3726, float 0x3FD3333340000000, float %3715
  %3729 = select i1 %3726, float 0x3FD3333340000000, float %3716
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 32
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3806, label %3734

; <label>:3734                                    ; preds = %3712
  %3735 = add i32 %35, 108
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = add i32 %35, 380
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3738, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = add i32 %3740, 0
  %3742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3742, %dx.types.Handle %87, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = extractvalue %dx.types.ResRet.f32 %3743, 3
  %3748 = and i32 %3737, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = lshr i32 %3737, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = lshr i32 %3737, 16
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101000000000
  %3757 = fmul fast float %3744, %3749
  %3758 = fadd fast float %3757, %3752
  %3759 = fmul fast float %3758, 0x3F70101000000000
  %3760 = fadd fast float %3745, -5.000000e-01
  %3761 = fadd fast float %3747, -5.000000e-01
  %3762 = fmul fast float %3760, %3756
  %3763 = fmul fast float %3761, %3756
  %3764 = fadd fast float %3762, 5.000000e-01
  %3765 = fadd fast float %3763, 5.000000e-01
  %3766 = fmul fast float %3764, 2.000000e+00
  %3767 = fadd fast float %3766, -1.000000e+00
  %3768 = fmul fast float %3765, 2.000000e+00
  %3769 = fadd fast float %3768, -1.000000e+00
  %3770 = fadd fast float %3767, %3769
  %3771 = fmul fast float %3770, 5.000000e-01
  %3772 = fsub fast float %3767, %3769
  %3773 = fmul fast float %3772, 5.000000e-01
  %3774 = call float @dx.op.unary.f32(i32 6, float %3771)  ; FAbs(value)
  %3775 = fsub fast float 1.000000e+00, %3774
  %3776 = call float @dx.op.unary.f32(i32 6, float %3773)  ; FAbs(value)
  %3777 = fsub fast float %3775, %3776
  %3778 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3773, float %3777, float %3771, float %3773, float %3777)  ; Dot3(ax,ay,az,bx,by,bz)
  %3779 = call float @dx.op.unary.f32(i32 25, float %3778)  ; Rsqrt(value)
  %3780 = fmul fast float %3771, %3779
  %3781 = fmul fast float %3773, %3779
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = and i32 %3783, 67108864
  %3785 = icmp eq i32 %3784, 0
  br i1 %3785, label %3802, label %3786

; <label>:3786                                    ; preds = %3734
  %3787 = add i32 %35, 296
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = and i32 %3789, 65535
  %3791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3790)  ; LegacyF16ToF32(value)
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = and i32 %3793, 65535
  %3795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3794)  ; LegacyF16ToF32(value)
  %3796 = lshr i32 %3789, 16
  %3797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3796)  ; LegacyF16ToF32(value)
  %3798 = fsub fast float %3759, %3797
  %3799 = fmul fast float %3798, %3791
  %3800 = fadd fast float %3799, %3795
  %3801 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  br label %3802

; <label>:3802                                    ; preds = %3786, %3734
  %3803 = phi float [ %3801, %3786 ], [ %3759, %3734 ]
  %3804 = call float @dx.op.dot2.f32(i32 54, float %3780, float %3781, float %3223, float %3224)  ; Dot2(ax,ay,bx,by)
  %3805 = call float @dx.op.dot2.f32(i32 54, float %3780, float %3781, float %3225, float %3226)  ; Dot2(ax,ay,bx,by)
  br label %3806

; <label>:3806                                    ; preds = %3802, %3712
  %3807 = phi float [ %3803, %3802 ], [ 0x3FD6666660000000, %3712 ]
  %3808 = phi float [ %3804, %3802 ], [ 0.000000e+00, %3712 ]
  %3809 = phi float [ %3805, %3802 ], [ 0.000000e+00, %3712 ]
  %3810 = phi float [ %3746, %3802 ], [ 1.000000e+00, %3712 ]
  %3811 = add i32 %35, 176
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = lshr i32 %3813, 22
  %3815 = shl nuw nsw i32 %3814, 5
  %3816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3815)  ; LegacyF16ToF32(value)
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = and i32 %3818, 64
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3854, label %3821

; <label>:3821                                    ; preds = %3806
  %3822 = add i32 %35, 396
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = add i32 %3824, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = and i32 %3828, 131072
  %3830 = icmp eq i32 %3829, 0
  %3831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3826, %dx.types.Handle %87, float %3319, float %3320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = fmul fast float %3832, %240
  %3836 = fmul fast float %3833, %243
  %3837 = fmul fast float %3834, %246
  br i1 %3830, label %3844, label %3838

; <label>:3838                                    ; preds = %3821
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = fmul fast float %3840, %3835
  %3842 = fmul fast float %3840, %3836
  %3843 = fmul fast float %3840, %3837
  br label %3844

; <label>:3844                                    ; preds = %3838, %3821
  %3845 = phi float [ %3841, %3838 ], [ %3835, %3821 ]
  %3846 = phi float [ %3842, %3838 ], [ %3836, %3821 ]
  %3847 = phi float [ %3843, %3838 ], [ %3837, %3821 ]
  %3848 = fmul fast float %3845, %3816
  %3849 = select i1 %192, float %3848, float %3845
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3846, float %3847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = select i1 %192, float 0.000000e+00, float %3845
  %3852 = select i1 %192, float %3850, float %3846
  %3853 = select i1 %192, float 0.000000e+00, float %3847
  br label %3854

; <label>:3854                                    ; preds = %3844, %3806
  %3855 = phi float [ %3851, %3844 ], [ 0.000000e+00, %3806 ]
  %3856 = phi float [ %3852, %3844 ], [ 0.000000e+00, %3806 ]
  %3857 = phi float [ %3853, %3844 ], [ 0.000000e+00, %3806 ]
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = add i32 %35, 112
  %3861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = lshr i32 %3862, 8
  %3866 = and i32 %3865, 255
  %3867 = uitofp i32 %3866 to float
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3727, float %3728, float %3729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = fmul fast float %3867, %3868
  %3870 = fadd fast float %3869, %3864
  %3871 = fmul fast float %3870, 0x3F70101020000000
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = and i32 %3859, 3
  %3874 = icmp eq i32 %3873, 3
  br i1 %3874, label %3953, label %3875

; <label>:3875                                    ; preds = %3854
  %3876 = and i32 %3859, 16
  %3877 = icmp ne i32 %3876, 0
  %3878 = select i1 %3877, float %3507, float 0.000000e+00
  %3879 = icmp eq i32 %3873, 0
  br i1 %3879, label %3880, label %3908

; <label>:3880                                    ; preds = %3875
  %3881 = and i32 %3859, 64
  %3882 = icmp ne i32 %3881, 0
  %3883 = select i1 %3882, float %3507, float 0.000000e+00
  %3884 = fsub fast float %3727, %3202
  %3885 = fsub fast float %3728, %3203
  %3886 = fsub fast float %3729, %3204
  %3887 = fmul fast float %3878, %3884
  %3888 = fmul fast float %3878, %3885
  %3889 = fmul fast float %3878, %3886
  %3890 = fadd fast float %3887, %3202
  %3891 = fadd fast float %3888, %3203
  %3892 = fadd fast float %3889, %3204
  %3893 = fsub fast float %3713, %3205
  %3894 = fmul fast float %3878, %3893
  %3895 = fadd fast float %3894, %3205
  %3896 = fsub fast float %3855, %3199
  %3897 = fsub fast float %3856, %3200
  %3898 = fsub fast float %3857, %3201
  %3899 = fmul fast float %3883, %3896
  %3900 = fmul fast float %3883, %3897
  %3901 = fmul fast float %3883, %3898
  %3902 = fadd fast float %3899, %3199
  %3903 = fadd fast float %3900, %3200
  %3904 = fadd fast float %3901, %3201
  %3905 = fsub fast float %3872, %3209
  %3906 = fmul fast float %3878, %3905
  %3907 = fadd fast float %3906, %3209
  br label %3953

; <label>:3908                                    ; preds = %3875
  %3909 = icmp eq i32 %3873, 1
  br i1 %3909, label %3910, label %3923

; <label>:3910                                    ; preds = %3908
  %3911 = fadd fast float %3727, -1.000000e+00
  %3912 = fadd fast float %3728, -1.000000e+00
  %3913 = fadd fast float %3729, -1.000000e+00
  %3914 = fmul fast float %3878, %3911
  %3915 = fmul fast float %3878, %3912
  %3916 = fmul fast float %3878, %3913
  %3917 = fadd fast float %3914, 1.000000e+00
  %3918 = fadd fast float %3915, 1.000000e+00
  %3919 = fadd fast float %3916, 1.000000e+00
  %3920 = fmul fast float %3917, %3202
  %3921 = fmul fast float %3918, %3203
  %3922 = fmul fast float %3919, %3204
  br label %3953

; <label>:3923                                    ; preds = %3908
  %3924 = icmp eq i32 %3873, 2
  br i1 %3924, label %3925, label %3953

; <label>:3925                                    ; preds = %3923
  %3926 = call float @dx.op.unary.f32(i32 24, float %3727)  ; Sqrt(value)
  %3927 = call float @dx.op.unary.f32(i32 24, float %3728)  ; Sqrt(value)
  %3928 = call float @dx.op.unary.f32(i32 24, float %3729)  ; Sqrt(value)
  %3929 = fadd fast float %3926, -5.000000e-01
  %3930 = fadd fast float %3927, -5.000000e-01
  %3931 = fadd fast float %3928, -5.000000e-01
  %3932 = fmul fast float %3929, %3878
  %3933 = fmul fast float %3930, %3878
  %3934 = fmul fast float %3931, %3878
  %3935 = fadd fast float %3932, 5.000000e-01
  %3936 = fadd fast float %3933, 5.000000e-01
  %3937 = fadd fast float %3934, 5.000000e-01
  %3938 = fmul fast float %3935, 2.000000e+00
  %3939 = fsub fast float 1.000000e+00, %3938
  %3940 = fmul fast float %3939, %3202
  %3941 = fadd fast float %3940, %3938
  %3942 = fmul fast float %3941, %3202
  %3943 = fmul fast float %3936, 2.000000e+00
  %3944 = fsub fast float 1.000000e+00, %3943
  %3945 = fmul fast float %3944, %3203
  %3946 = fadd fast float %3945, %3943
  %3947 = fmul fast float %3946, %3203
  %3948 = fmul fast float %3937, 2.000000e+00
  %3949 = fsub fast float 1.000000e+00, %3948
  %3950 = fmul fast float %3949, %3204
  %3951 = fadd fast float %3950, %3948
  %3952 = fmul fast float %3951, %3204
  br label %3953

; <label>:3953                                    ; preds = %3925, %3923, %3910, %3880, %3854
  %3954 = phi float [ %3199, %3854 ], [ %3199, %3925 ], [ %3199, %3923 ], [ %3199, %3910 ], [ %3902, %3880 ]
  %3955 = phi float [ %3200, %3854 ], [ %3200, %3925 ], [ %3200, %3923 ], [ %3200, %3910 ], [ %3903, %3880 ]
  %3956 = phi float [ %3201, %3854 ], [ %3201, %3925 ], [ %3201, %3923 ], [ %3201, %3910 ], [ %3904, %3880 ]
  %3957 = phi float [ %3202, %3854 ], [ %3942, %3925 ], [ %3202, %3923 ], [ %3920, %3910 ], [ %3890, %3880 ]
  %3958 = phi float [ %3203, %3854 ], [ %3947, %3925 ], [ %3203, %3923 ], [ %3921, %3910 ], [ %3891, %3880 ]
  %3959 = phi float [ %3204, %3854 ], [ %3952, %3925 ], [ %3204, %3923 ], [ %3922, %3910 ], [ %3892, %3880 ]
  %3960 = phi float [ %3205, %3854 ], [ %3205, %3925 ], [ %3205, %3923 ], [ %3205, %3910 ], [ %3895, %3880 ]
  %3961 = phi float [ %3209, %3854 ], [ %3209, %3925 ], [ %3209, %3923 ], [ %3209, %3910 ], [ %3907, %3880 ]
  %3962 = and i32 %3859, 12
  %3963 = icmp eq i32 %3962, 12
  br i1 %3963, label %4036, label %3964

; <label>:3964                                    ; preds = %3953
  %3965 = and i32 %3859, 2097184
  %3966 = icmp eq i32 %3965, 2097184
  %3967 = select i1 %3966, float %3507, float 0.000000e+00
  %3968 = and i32 %3859, 4194336
  %3969 = icmp eq i32 %3968, 4194336
  %3970 = select i1 %3969, float %3507, float 0.000000e+00
  %3971 = and i32 %3859, 8388640
  %3972 = icmp eq i32 %3971, 8388640
  %3973 = select i1 %3972, float %3507, float 0.000000e+00
  %3974 = icmp eq i32 %3962, 0
  br i1 %3974, label %3975, label %3988

; <label>:3975                                    ; preds = %3964
  %3976 = fsub fast float %3808, %3197
  %3977 = fsub fast float %3809, %3198
  %3978 = fmul fast float %3967, %3976
  %3979 = fmul fast float %3967, %3977
  %3980 = fadd fast float %3978, %3197
  %3981 = fadd fast float %3979, %3198
  %3982 = fsub fast float %3810, %3208
  %3983 = fmul fast float %3970, %3982
  %3984 = fadd fast float %3983, %3208
  %3985 = fsub fast float %3807, %3207
  %3986 = fmul fast float %3973, %3985
  %3987 = fadd fast float %3986, %3207
  br label %4036

; <label>:3988                                    ; preds = %3964
  %3989 = icmp eq i32 %3962, 4
  br i1 %3989, label %3990, label %4022

; <label>:3990                                    ; preds = %3988
  %3991 = fmul fast float %3967, %3808
  %3992 = fmul fast float %3967, %3809
  %3993 = fadd fast float %3991, %3197
  %3994 = fadd fast float %3992, %3198
  %3995 = call float @dx.op.binary.f32(i32 36, float %3208, float %3810)  ; FMin(a,b)
  %3996 = fsub fast float %3995, %3208
  %3997 = fmul fast float %3996, %3970
  %3998 = fadd fast float %3997, %3208
  %3999 = fadd fast float %3807, %3207
  %4000 = fmul fast float %3999, 0x3FF337FAE0000000
  %4001 = fmul fast float %3207, %3207
  %4002 = fmul fast float %3807, %3807
  %4003 = fadd fast float %4002, %4001
  %4004 = fmul fast float %4003, 0x3FE5152B00000000
  %4005 = fmul fast float %3207, 0xBFCC1F85E0000000
  %4006 = fmul fast float %4005, %3807
  %4007 = fadd fast float %4006, 0xBFE1363700000000
  %4008 = fadd fast float %4007, %4000
  %4009 = fsub fast float %4008, %4004
  %4010 = fmul fast float %3999, 0x3FBA6F0D00000000
  %4011 = fmul fast float %4003, 0x3FD0432880000000
  %4012 = fmul fast float %3207, 0xBFEF110800000000
  %4013 = fmul fast float %4012, %3807
  %4014 = fadd fast float %4013, 1.000000e+00
  %4015 = fsub fast float %4014, %4010
  %4016 = fadd fast float %4015, %4011
  %4017 = fdiv fast float %4009, %4016
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fsub fast float %4018, %3207
  %4020 = fmul fast float %4019, %3973
  %4021 = fadd fast float %4020, %3207
  br label %4036

; <label>:4022                                    ; preds = %3988
  %4023 = icmp eq i32 %3962, 8
  br i1 %4023, label %4024, label %4036

; <label>:4024                                    ; preds = %4022
  %4025 = fmul fast float %3967, %3808
  %4026 = fmul fast float %3967, %3809
  %4027 = fadd fast float %4025, %3197
  %4028 = fadd fast float %4026, %3198
  %4029 = call float @dx.op.binary.f32(i32 36, float %3208, float %3810)  ; FMin(a,b)
  %4030 = fsub fast float %4029, %3208
  %4031 = fmul fast float %4030, %3970
  %4032 = fadd fast float %4031, %3208
  %4033 = fsub fast float %3807, %3207
  %4034 = fmul fast float %3973, %4033
  %4035 = fadd fast float %4034, %3207
  br label %4036

; <label>:4036                                    ; preds = %4024, %4022, %3990, %3975, %3953, %3506, %3211, %3196
  %4037 = phi float [ %3197, %3953 ], [ %3197, %3506 ], [ %3197, %3211 ], [ %3980, %3975 ], [ %3993, %3990 ], [ %3197, %4022 ], [ %4027, %4024 ], [ %3197, %3196 ]
  %4038 = phi float [ %3198, %3953 ], [ %3198, %3506 ], [ %3198, %3211 ], [ %3981, %3975 ], [ %3994, %3990 ], [ %3198, %4022 ], [ %4028, %4024 ], [ %3198, %3196 ]
  %4039 = phi float [ %3954, %3953 ], [ %3199, %3506 ], [ %3199, %3211 ], [ %3954, %3975 ], [ %3954, %3990 ], [ %3954, %4022 ], [ %3954, %4024 ], [ %3199, %3196 ]
  %4040 = phi float [ %3955, %3953 ], [ %3200, %3506 ], [ %3200, %3211 ], [ %3955, %3975 ], [ %3955, %3990 ], [ %3955, %4022 ], [ %3955, %4024 ], [ %3200, %3196 ]
  %4041 = phi float [ %3956, %3953 ], [ %3201, %3506 ], [ %3201, %3211 ], [ %3956, %3975 ], [ %3956, %3990 ], [ %3956, %4022 ], [ %3956, %4024 ], [ %3201, %3196 ]
  %4042 = phi float [ %3957, %3953 ], [ %3202, %3506 ], [ %3202, %3211 ], [ %3957, %3975 ], [ %3957, %3990 ], [ %3957, %4022 ], [ %3957, %4024 ], [ %3202, %3196 ]
  %4043 = phi float [ %3958, %3953 ], [ %3203, %3506 ], [ %3203, %3211 ], [ %3958, %3975 ], [ %3958, %3990 ], [ %3958, %4022 ], [ %3958, %4024 ], [ %3203, %3196 ]
  %4044 = phi float [ %3959, %3953 ], [ %3204, %3506 ], [ %3204, %3211 ], [ %3959, %3975 ], [ %3959, %3990 ], [ %3959, %4022 ], [ %3959, %4024 ], [ %3204, %3196 ]
  %4045 = phi float [ %3960, %3953 ], [ %3205, %3506 ], [ %3205, %3211 ], [ %3960, %3975 ], [ %3960, %3990 ], [ %3960, %4022 ], [ %3960, %4024 ], [ %3205, %3196 ]
  %4046 = phi float [ %3207, %3953 ], [ %3207, %3506 ], [ %3207, %3211 ], [ %3987, %3975 ], [ %4021, %3990 ], [ %3207, %4022 ], [ %4035, %4024 ], [ %3207, %3196 ]
  %4047 = phi float [ %3208, %3953 ], [ %3208, %3506 ], [ %3208, %3211 ], [ %3984, %3975 ], [ %3998, %3990 ], [ %3208, %4022 ], [ %4032, %4024 ], [ %3208, %3196 ]
  %4048 = phi float [ %3961, %3953 ], [ %3209, %3506 ], [ %3209, %3211 ], [ %3961, %3975 ], [ %3961, %3990 ], [ %3961, %4022 ], [ %3961, %4024 ], [ %3209, %3196 ]
  %4049 = icmp ult i32 %417, 3
  %4050 = or i1 %4049, %1078
  br i1 %4050, label %4876, label %4051

; <label>:4051                                    ; preds = %4036
  %4052 = add i32 %35, 56
  %4053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.i32 %4053, 0
  %4055 = add i32 %35, 60
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = or i32 %4057, %4054
  %4059 = icmp eq i32 %4058, 0
  br i1 %4059, label %4876, label %4060

; <label>:4060                                    ; preds = %4051
  %4061 = and i32 %4054, 262144
  %4062 = icmp ne i32 %4061, 0
  %4063 = select i1 %4062, float %38, float 1.000000e+00
  %4064 = select i1 %4062, float %39, float 0.000000e+00
  %4065 = select i1 %4062, float %40, float 0.000000e+00
  %4066 = select i1 %4062, float %41, float 1.000000e+00
  %4067 = select i1 %4062, float %42, float %63
  %4068 = select i1 %4062, float %43, float %64
  %4069 = add i32 %35, 316
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4069, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = lshr i32 %4071, 16
  %4073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4072)  ; LegacyF16ToF32(value)
  %4074 = fmul fast float %4073, 0x3F50624DE0000000
  %4075 = add i32 %35, 120
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = lshr i32 %4077, 16
  %4079 = and i32 %4078, 255
  %4080 = lshr i32 %4077, 24
  %4081 = add i32 %35, 324
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 65535
  %4085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4084)  ; LegacyF16ToF32(value)
  %4086 = lshr i32 %4083, 16
  %4087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4086)  ; LegacyF16ToF32(value)
  %4088 = add i32 %35, 64
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = lshr i32 %4090, 22
  %4092 = shl nuw nsw i32 %4091, 5
  %4093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4092)  ; LegacyF16ToF32(value)
  %4094 = shl i32 %4090, 4
  %4095 = and i32 %4094, 32752
  %4096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4095)  ; LegacyF16ToF32(value)
  %4097 = lshr i32 %4090, 7
  %4098 = and i32 %4097, 32752
  %4099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4098)  ; LegacyF16ToF32(value)
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4102 = fmul fast float %4101, 1.000000e+03
  %4103 = fmul fast float %4102, %317
  %4104 = call float @dx.op.unary.f32(i32 22, float %4103)  ; Frc(value)
  %4105 = fadd fast float %4104, %307
  %4106 = fmul fast float %4102, %318
  %4107 = call float @dx.op.unary.f32(i32 22, float %4106)  ; Frc(value)
  %4108 = fadd fast float %4107, %309
  %4109 = fmul fast float %4074, %4102
  %4110 = call float @dx.op.unary.f32(i32 22, float %4109)  ; Frc(value)
  %4111 = fmul fast float %4110, 0x401921FB60000000
  %4112 = fadd fast float %4111, %4093
  %4113 = call float @dx.op.unary.f32(i32 13, float %4112)  ; Sin(value)
  %4114 = call float @dx.op.unary.f32(i32 12, float %4112)  ; Cos(value)
  %4115 = fsub fast float -0.000000e+00, %4113
  %4116 = fadd fast float %4067, -5.000000e-01
  %4117 = fadd fast float %4068, -5.000000e-01
  %4118 = fmul fast float %4085, %4116
  %4119 = fmul fast float %4087, %4117
  %4120 = fadd fast float %4118, 5.000000e-01
  %4121 = fadd fast float %4119, 5.000000e-01
  %4122 = fmul fast float %4096, %4120
  %4123 = fmul fast float %4099, %4121
  %4124 = fmul fast float %4114, %4122
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4123, float %4124)  ; FMad(a,b,c)
  %4126 = fmul fast float %4113, %4122
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4123, float %4126)  ; FMad(a,b,c)
  %4128 = fadd fast float %4105, %4125
  %4129 = fadd fast float %4108, %4127
  %4130 = icmp ugt i32 %4079, 1
  %4131 = icmp ugt i32 %4077, 33554431
  %4132 = or i1 %4131, %4130
  br i1 %4132, label %4133, label %4158

; <label>:4133                                    ; preds = %4060
  %4134 = add i32 %35, 260
  %4135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.i32 %4135, 0
  %4137 = lshr i32 %4136, 16
  %4138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4137)  ; LegacyF16ToF32(value)
  %4139 = fmul fast float %4101, %4138
  %4140 = call float @dx.op.unary.f32(i32 22, float %4139)  ; Frc(value)
  %4141 = mul nuw nsw i32 %4079, %4080
  %4142 = uitofp i32 %4141 to float
  %4143 = fmul fast float %4140, %4142
  %4144 = call float @dx.op.unary.f32(i32 27, float %4143)  ; Round_ni(value)
  %4145 = fptoui float %4144 to i32
  %4146 = urem i32 %4145, %4079
  %4147 = udiv i32 %4145, %4080
  %4148 = call float @dx.op.unary.f32(i32 22, float %4128)  ; Frc(value)
  %4149 = call float @dx.op.unary.f32(i32 22, float %4129)  ; Frc(value)
  %4150 = uitofp i32 %4146 to float
  %4151 = uitofp i32 %4147 to float
  %4152 = fadd fast float %4148, %4150
  %4153 = fadd fast float %4149, %4151
  %4154 = uitofp i32 %4079 to float
  %4155 = uitofp i32 %4080 to float
  %4156 = fdiv fast float %4152, %4154
  %4157 = fdiv fast float %4153, %4155
  br label %4158

; <label>:4158                                    ; preds = %4133, %4060
  %4159 = phi float [ %4156, %4133 ], [ %4128, %4060 ]
  %4160 = phi float [ %4157, %4133 ], [ %4129, %4060 ]
  %4161 = and i32 %4054, 16777216
  %4162 = icmp eq i32 %4161, 0
  br i1 %4162, label %4272, label %4163

; <label>:4163                                    ; preds = %4158
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4168 = fadd fast float %4165, %150
  %4169 = fadd fast float %4166, %151
  %4170 = fadd fast float %4167, %152
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = icmp eq i32 %36, 65535
  br i1 %4174, label %4269, label %4175

; <label>:4175                                    ; preds = %4163
  %4176 = lshr i32 %36, 1
  %4177 = shl i32 %4176, 2
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = and i32 %36, 1
  %4181 = icmp ne i32 %4180, 0
  %4182 = lshr i32 %4179, 16
  %4183 = and i32 %4179, 65535
  %4184 = select i1 %4181, i32 %4182, i32 %4183
  %4185 = icmp eq i32 %4184, 65535
  br i1 %4185, label %4265, label %4186

; <label>:4186                                    ; preds = %4175
  %4187 = mul nuw nsw i32 %4184, 40
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = add nuw nsw i32 %4187, 12
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = add nuw nsw i32 %4187, 24
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = add nuw nsw i32 %4187, 36
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = fsub fast float %4168, %4189
  %4206 = fsub fast float %4169, %4190
  %4207 = fsub fast float %4170, %4191
  %4208 = fmul fast float %4204, %4205
  %4209 = fmul fast float %4204, %4206
  %4210 = fmul fast float %4204, %4207
  %4211 = call float @dx.op.unary.f32(i32 27, float %4208)  ; Round_ni(value)
  %4212 = call float @dx.op.unary.f32(i32 27, float %4209)  ; Round_ni(value)
  %4213 = call float @dx.op.unary.f32(i32 27, float %4210)  ; Round_ni(value)
  %4214 = fadd fast float %4211, 5.000000e-01
  %4215 = fadd fast float %4212, 5.000000e-01
  %4216 = fadd fast float %4213, 5.000000e-01
  %4217 = fmul fast float %4214, %4194
  %4218 = fmul fast float %4215, %4195
  %4219 = fmul fast float %4216, %4196
  %4220 = shl i32 %36, 2
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = add i32 %4222, 0
  %4224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %4223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4225 = call float @dx.op.unary.f32(i32 22, float %4217)  ; Frc(value)
  %4226 = call float @dx.op.unary.f32(i32 22, float %4218)  ; Frc(value)
  %4227 = call float @dx.op.unary.f32(i32 22, float %4219)  ; Frc(value)
  %4228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4224, %dx.types.Handle %30, float %4225, float %4226, float %4227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = fmul fast float %4229, 1.023000e+03
  %4233 = fmul fast float %4230, 1.023000e+03
  %4234 = fmul fast float %4231, 1.023000e+03
  %4235 = fadd fast float %4232, 5.000000e-01
  %4236 = fadd fast float %4233, 5.000000e-01
  %4237 = fadd fast float %4234, 5.000000e-01
  %4238 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4239 = call float @dx.op.unary.f32(i32 27, float %4236)  ; Round_ni(value)
  %4240 = call float @dx.op.unary.f32(i32 27, float %4237)  ; Round_ni(value)
  %4241 = fsub fast float %4208, %4211
  %4242 = fsub fast float %4209, %4212
  %4243 = fsub fast float %4210, %4213
  %4244 = fmul fast float %4241, 7.500000e-01
  %4245 = fmul fast float %4242, 7.500000e-01
  %4246 = fmul fast float %4243, 7.500000e-01
  %4247 = fadd fast float %4211, 1.250000e-01
  %4248 = fadd fast float %4247, %4244
  %4249 = fadd fast float %4248, %4238
  %4250 = fadd fast float %4212, 1.250000e-01
  %4251 = fadd fast float %4250, %4245
  %4252 = fadd fast float %4251, %4239
  %4253 = fadd fast float %4213, 1.250000e-01
  %4254 = fadd fast float %4253, %4246
  %4255 = fadd fast float %4254, %4240
  %4256 = fmul fast float %4249, %4199
  %4257 = fmul fast float %4252, %4200
  %4258 = fmul fast float %4255, %4201
  %4259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.i32 %4259, 0
  %4261 = add i32 %4260, 0
  %4262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %4261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4262, %dx.types.Handle %28, float %4256, float %4257, float %4258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  br label %4265

; <label>:4265                                    ; preds = %4186, %4175
  %4266 = phi float [ %4264, %4186 ], [ -1.000000e+00, %4175 ]
  %4267 = fadd fast float %4266, %4173
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  br label %4269

; <label>:4269                                    ; preds = %4265, %4163
  %4270 = phi float [ %4268, %4265 ], [ %4173, %4163 ]
  %4271 = fmul fast float %4270, %413
  br label %4272

; <label>:4272                                    ; preds = %4269, %4158
  %4273 = phi float [ %4271, %4269 ], [ %413, %4158 ]
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = and i32 %4275, 256
  %4277 = icmp eq i32 %4276, 0
  br i1 %4277, label %4324, label %4278

; <label>:4278                                    ; preds = %4272
  %4279 = add i32 %35, 432
  %4280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.i32 %4280, 0
  %4282 = add i32 %4281, 0
  %4283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4283, %dx.types.Handle %88, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = add i32 %35, 132
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = shl i32 %4288, 4
  %4290 = and i32 %4289, 32752
  %4291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4290)  ; LegacyF16ToF32(value)
  %4292 = lshr i32 %4288, 7
  %4293 = and i32 %4292, 32752
  %4294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4293)  ; LegacyF16ToF32(value)
  %4295 = fsub fast float 1.000000e+00, %4273
  %4296 = call float @dx.op.binary.f32(i32 35, float %4295, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4297 = bitcast float %4273 to i32
  %4298 = sitofp i32 %4297 to float
  %4299 = fadd fast float %4298, 0xC1CFBF8940000000
  %4300 = fmul fast float %4294, %4299
  %4301 = fadd fast float %4300, 0x41CFBF8940000000
  %4302 = fptosi float %4301 to i32
  %4303 = bitcast i32 %4302 to float
  %4304 = bitcast float %4296 to i32
  %4305 = sitofp i32 %4304 to float
  %4306 = fadd fast float %4305, 0xC1CFBF8940000000
  %4307 = fmul fast float %4306, %4294
  %4308 = fadd fast float %4307, 0x41CFBF8940000000
  %4309 = fptosi float %4308 to i32
  %4310 = bitcast i32 %4309 to float
  %4311 = fmul fast float %4303, %4291
  %4312 = fmul fast float %4310, %4291
  %4313 = fsub fast float %4296, %4311
  %4314 = fadd fast float %4312, %4296
  %4315 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4317 = fsub fast float %4285, %4315
  %4318 = fsub fast float %4316, %4315
  %4319 = bitcast float %4318 to i32
  %4320 = sub nsw i32 2129859010, %4319
  %4321 = bitcast i32 %4320 to float
  %4322 = fmul fast float %4321, %4317
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  br label %4324

; <label>:4324                                    ; preds = %4278, %4272
  %4325 = phi float [ %4323, %4278 ], [ %4273, %4272 ]
  %4326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4327 = extractvalue %dx.types.ResRet.i32 %4326, 0
  %4328 = and i32 %4327, 128
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %4346, label %4330

; <label>:4330                                    ; preds = %4324
  %4331 = add i32 %35, 416
  %4332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.i32 %4332, 0
  %4334 = add i32 %4333, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4335, %dx.types.Handle %88, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.i32 %4338, 0
  %4340 = and i32 %4339, 524288
  %4341 = icmp ne i32 %4340, 0
  %4342 = fcmp fast ogt float %4337, 0x3FE0101020000000
  %4343 = select i1 %4342, float 1.000000e+00, float 0.000000e+00
  %4344 = select i1 %4341, float %4343, float %4337
  %4345 = fmul fast float %4344, %4325
  br label %4346

; <label>:4346                                    ; preds = %4330, %4324
  %4347 = phi float [ %4345, %4330 ], [ %4325, %4324 ]
  %4348 = fcmp fast ult float %4347, 0x3F70101020000000
  br i1 %4348, label %4876, label %4349

; <label>:4349                                    ; preds = %4346
  %4350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.i32 %4350, 0
  %4352 = and i32 %4351, 16
  %4353 = icmp eq i32 %4352, 0
  br i1 %4353, label %4552, label %4354

; <label>:4354                                    ; preds = %4349
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = add i32 %35, 368
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = add i32 %4359, 0
  %4361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4361, %dx.types.Handle %87, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = extractvalue %dx.types.ResRet.f32 %4362, 3
  %4367 = and i32 %4356, 255
  %4368 = uitofp i32 %4367 to float
  %4369 = lshr i32 %4356, 8
  %4370 = and i32 %4369, 255
  %4371 = uitofp i32 %4370 to float
  %4372 = fmul fast float %4366, %4368
  %4373 = fadd fast float %4372, %4371
  %4374 = fmul fast float %4373, 0x3F70101000000000
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = and i32 %4376, 512
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4387, label %4379

; <label>:4379                                    ; preds = %4354
  %4380 = add i32 %35, 448
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = add i32 %4382, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4384, %dx.types.Handle %88, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  br label %4387

; <label>:4387                                    ; preds = %4379, %4354
  %4388 = phi float [ %4386, %4379 ], [ 1.000000e+00, %4354 ]
  %4389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.i32 %4389, 0
  %4391 = and i32 %4390, 33554432
  %4392 = icmp eq i32 %4391, 0
  br i1 %4392, label %4499, label %4393

; <label>:4393                                    ; preds = %4387
  %4394 = add i32 %35, 256
  %4395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.i32 %4395, 0
  %4397 = and i32 %4396, 65535
  %4398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4397)  ; LegacyF16ToF32(value)
  %4399 = lshr i32 %4396, 16
  %4400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4399)  ; LegacyF16ToF32(value)
  %4401 = add i32 %35, 260
  %4402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.i32 %4402, 0
  %4404 = and i32 %4403, 65535
  %4405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4404)  ; LegacyF16ToF32(value)
  %4406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.i32 %4406, 0
  %4408 = lshr i32 %4407, 24
  %4409 = uitofp i32 %4408 to float
  %4410 = fmul fast float %4409, 0x3F70101020000000
  %4411 = and i32 %4407, 255
  %4412 = uitofp i32 %4411 to float
  %4413 = fmul fast float %4412, 0x3F70101020000000
  %4414 = lshr i32 %4407, 8
  %4415 = and i32 %4414, 255
  %4416 = uitofp i32 %4415 to float
  %4417 = fmul fast float %4416, 0x3F70101020000000
  %4418 = lshr i32 %4407, 16
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = fmul fast float %4420, 0x3F70101020000000
  %4422 = add i32 %35, 252
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = lshr i32 %4424, 24
  %4426 = uitofp i32 %4425 to float
  %4427 = fmul fast float %4426, 0x3F70101020000000
  %4428 = and i32 %4424, 255
  %4429 = uitofp i32 %4428 to float
  %4430 = fmul fast float %4429, 0x3F70101020000000
  %4431 = lshr i32 %4424, 8
  %4432 = and i32 %4431, 255
  %4433 = uitofp i32 %4432 to float
  %4434 = fmul fast float %4433, 0x3F70101020000000
  %4435 = lshr i32 %4424, 16
  %4436 = and i32 %4435, 255
  %4437 = uitofp i32 %4436 to float
  %4438 = fmul fast float %4437, 0x3F70101020000000
  %4439 = bitcast float %4363 to i32
  %4440 = ashr i32 %4439, 1
  %4441 = sub nsw i32 1597463174, %4440
  %4442 = bitcast i32 %4441 to float
  %4443 = fmul fast float %4363, 5.000000e-01
  %4444 = fmul fast float %4442, %4442
  %4445 = fmul fast float %4444, %4443
  %4446 = fsub fast float 1.500000e+00, %4445
  %4447 = fmul fast float %4442, %4363
  %4448 = fmul fast float %4447, %4446
  %4449 = bitcast float %4364 to i32
  %4450 = ashr i32 %4449, 1
  %4451 = sub nsw i32 1597463174, %4450
  %4452 = bitcast i32 %4451 to float
  %4453 = fmul fast float %4364, 5.000000e-01
  %4454 = fmul fast float %4452, %4452
  %4455 = fmul fast float %4454, %4453
  %4456 = fsub fast float 1.500000e+00, %4455
  %4457 = fmul fast float %4452, %4364
  %4458 = fmul fast float %4457, %4456
  %4459 = bitcast float %4365 to i32
  %4460 = ashr i32 %4459, 1
  %4461 = sub nsw i32 1597463174, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4365, 5.000000e-01
  %4464 = fmul fast float %4462, %4462
  %4465 = fmul fast float %4464, %4463
  %4466 = fsub fast float 1.500000e+00, %4465
  %4467 = fmul fast float %4462, %4365
  %4468 = fmul fast float %4467, %4466
  %4469 = fsub fast float %4448, %4430
  %4470 = fsub fast float %4458, %4434
  %4471 = fsub fast float %4468, %4438
  %4472 = fmul fast float %4469, %4398
  %4473 = fmul fast float %4470, %4400
  %4474 = fmul fast float %4471, %4405
  %4475 = fadd fast float %4472, %4413
  %4476 = fadd fast float %4473, %4417
  %4477 = fadd fast float %4474, %4421
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = fmul fast float %4478, %4478
  %4482 = fmul fast float %4479, %4479
  %4483 = fmul fast float %4480, %4480
  %4484 = fsub fast float %4481, %4363
  %4485 = fsub fast float %4482, %4364
  %4486 = fsub fast float %4483, %4365
  %4487 = fmul fast float %4484, %4388
  %4488 = fmul fast float %4485, %4388
  %4489 = fmul fast float %4486, %4388
  %4490 = fadd fast float %4487, %4363
  %4491 = fadd fast float %4488, %4364
  %4492 = fadd fast float %4489, %4365
  %4493 = fadd fast float %4410, %4374
  %4494 = fsub fast float %4493, %4427
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fsub fast float %4495, %4374
  %4497 = fmul fast float %4496, %4388
  %4498 = fadd fast float %4497, %4374
  br label %4552

; <label>:4499                                    ; preds = %4387
  %4500 = and i32 %4390, 134217728
  %4501 = icmp eq i32 %4500, 0
  br i1 %4501, label %4536, label %4502

; <label>:4502                                    ; preds = %4499
  %4503 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %4504 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %4505 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %4506 = fadd fast float %4503, -5.000000e-01
  %4507 = fadd fast float %4504, -5.000000e-01
  %4508 = fadd fast float %4505, -5.000000e-01
  %4509 = fmul fast float %4506, %4388
  %4510 = fmul fast float %4507, %4388
  %4511 = fmul fast float %4508, %4388
  %4512 = fadd fast float %4509, 5.000000e-01
  %4513 = fadd fast float %4510, 5.000000e-01
  %4514 = fadd fast float %4511, 5.000000e-01
  %4515 = call float @dx.op.unary.f32(i32 24, float %4363)  ; Sqrt(value)
  %4516 = call float @dx.op.unary.f32(i32 24, float %4364)  ; Sqrt(value)
  %4517 = call float @dx.op.unary.f32(i32 24, float %4365)  ; Sqrt(value)
  %4518 = fmul fast float %4512, 2.000000e+00
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = fmul fast float %4519, %4515
  %4521 = fadd fast float %4520, %4518
  %4522 = fmul fast float %4521, %4515
  %4523 = fmul fast float %4513, 2.000000e+00
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = fmul fast float %4524, %4516
  %4526 = fadd fast float %4525, %4523
  %4527 = fmul fast float %4526, %4516
  %4528 = fmul fast float %4514, 2.000000e+00
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = fmul fast float %4529, %4517
  %4531 = fadd fast float %4530, %4528
  %4532 = fmul fast float %4531, %4517
  %4533 = fmul fast float %4522, %4522
  %4534 = fmul fast float %4527, %4527
  %4535 = fmul fast float %4532, %4532
  br label %4552

; <label>:4536                                    ; preds = %4499
  %4537 = fmul fast float %294, %294
  %4538 = fmul fast float %298, %298
  %4539 = fmul fast float %302, %302
  %4540 = fadd fast float %4537, -1.000000e+00
  %4541 = fadd fast float %4538, -1.000000e+00
  %4542 = fadd fast float %4539, -1.000000e+00
  %4543 = fmul fast float %4388, %4540
  %4544 = fmul fast float %4388, %4541
  %4545 = fmul fast float %4388, %4542
  %4546 = fadd fast float %4543, 1.000000e+00
  %4547 = fadd fast float %4544, 1.000000e+00
  %4548 = fadd fast float %4545, 1.000000e+00
  %4549 = fmul fast float %4546, %4363
  %4550 = fmul fast float %4547, %4364
  %4551 = fmul fast float %4548, %4365
  br label %4552

; <label>:4552                                    ; preds = %4536, %4502, %4393, %4349
  %4553 = phi float [ %4498, %4393 ], [ %4374, %4502 ], [ %4374, %4536 ], [ 0x3FA23C0BE0000000, %4349 ]
  %4554 = phi float [ %4490, %4393 ], [ %4533, %4502 ], [ %4549, %4536 ], [ 1.000000e+00, %4349 ]
  %4555 = phi float [ %4491, %4393 ], [ %4534, %4502 ], [ %4550, %4536 ], [ 1.000000e+00, %4349 ]
  %4556 = phi float [ %4492, %4393 ], [ %4535, %4502 ], [ %4551, %4536 ], [ 1.000000e+00, %4349 ]
  %4557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.i32 %4557, 1
  %4559 = and i32 %4558, 1
  %4560 = icmp ne i32 %4559, 0
  %4561 = add i32 %35, 356
  %4562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.i32 %4562, 0
  %4564 = and i32 %4563, 32
  %4565 = icmp ne i32 %4564, 0
  %4566 = and i1 %4560, %4565
  %4567 = select i1 %4566, float 1.000000e+00, float %4554
  %4568 = select i1 %4566, float 0x3FD3333340000000, float %4555
  %4569 = select i1 %4566, float 0x3FD3333340000000, float %4556
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = and i32 %4571, 32
  %4573 = icmp eq i32 %4572, 0
  br i1 %4573, label %4646, label %4574

; <label>:4574                                    ; preds = %4552
  %4575 = add i32 %35, 124
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = add i32 %35, 384
  %4579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = add i32 %4580, 0
  %4582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4582, %dx.types.Handle %87, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = extractvalue %dx.types.ResRet.f32 %4583, 3
  %4588 = and i32 %4577, 255
  %4589 = uitofp i32 %4588 to float
  %4590 = lshr i32 %4577, 8
  %4591 = and i32 %4590, 255
  %4592 = uitofp i32 %4591 to float
  %4593 = lshr i32 %4577, 16
  %4594 = and i32 %4593, 255
  %4595 = uitofp i32 %4594 to float
  %4596 = fmul fast float %4595, 0x3F70101000000000
  %4597 = fmul fast float %4584, %4589
  %4598 = fadd fast float %4597, %4592
  %4599 = fmul fast float %4598, 0x3F70101000000000
  %4600 = fadd fast float %4585, -5.000000e-01
  %4601 = fadd fast float %4587, -5.000000e-01
  %4602 = fmul fast float %4600, %4596
  %4603 = fmul fast float %4601, %4596
  %4604 = fadd fast float %4602, 5.000000e-01
  %4605 = fadd fast float %4603, 5.000000e-01
  %4606 = fmul fast float %4604, 2.000000e+00
  %4607 = fadd fast float %4606, -1.000000e+00
  %4608 = fmul fast float %4605, 2.000000e+00
  %4609 = fadd fast float %4608, -1.000000e+00
  %4610 = fadd fast float %4607, %4609
  %4611 = fmul fast float %4610, 5.000000e-01
  %4612 = fsub fast float %4607, %4609
  %4613 = fmul fast float %4612, 5.000000e-01
  %4614 = call float @dx.op.unary.f32(i32 6, float %4611)  ; FAbs(value)
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4617 = fsub fast float %4615, %4616
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4613, float %4617, float %4611, float %4613, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = call float @dx.op.unary.f32(i32 25, float %4618)  ; Rsqrt(value)
  %4620 = fmul fast float %4611, %4619
  %4621 = fmul fast float %4613, %4619
  %4622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = and i32 %4623, 67108864
  %4625 = icmp eq i32 %4624, 0
  br i1 %4625, label %4642, label %4626

; <label>:4626                                    ; preds = %4574
  %4627 = add i32 %35, 312
  %4628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.i32 %4628, 0
  %4630 = and i32 %4629, 65535
  %4631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4630)  ; LegacyF16ToF32(value)
  %4632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4069, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.i32 %4632, 0
  %4634 = and i32 %4633, 65535
  %4635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4634)  ; LegacyF16ToF32(value)
  %4636 = lshr i32 %4629, 16
  %4637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4636)  ; LegacyF16ToF32(value)
  %4638 = fsub fast float %4599, %4637
  %4639 = fmul fast float %4638, %4631
  %4640 = fadd fast float %4639, %4635
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  br label %4642

; <label>:4642                                    ; preds = %4626, %4574
  %4643 = phi float [ %4641, %4626 ], [ %4599, %4574 ]
  %4644 = call float @dx.op.dot2.f32(i32 54, float %4620, float %4621, float %4063, float %4064)  ; Dot2(ax,ay,bx,by)
  %4645 = call float @dx.op.dot2.f32(i32 54, float %4620, float %4621, float %4065, float %4066)  ; Dot2(ax,ay,bx,by)
  br label %4646

; <label>:4646                                    ; preds = %4642, %4552
  %4647 = phi float [ %4643, %4642 ], [ 0x3FD6666660000000, %4552 ]
  %4648 = phi float [ %4644, %4642 ], [ 0.000000e+00, %4552 ]
  %4649 = phi float [ %4645, %4642 ], [ 0.000000e+00, %4552 ]
  %4650 = phi float [ %4586, %4642 ], [ 1.000000e+00, %4552 ]
  %4651 = add i32 %35, 192
  %4652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.i32 %4652, 0
  %4654 = lshr i32 %4653, 22
  %4655 = shl nuw nsw i32 %4654, 5
  %4656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4655)  ; LegacyF16ToF32(value)
  %4657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.i32 %4657, 0
  %4659 = and i32 %4658, 64
  %4660 = icmp eq i32 %4659, 0
  br i1 %4660, label %4694, label %4661

; <label>:4661                                    ; preds = %4646
  %4662 = add i32 %35, 400
  %4663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4662, i32 undef)  ; BufferLoad(srv,index,wot)
  %4664 = extractvalue %dx.types.ResRet.i32 %4663, 0
  %4665 = add i32 %4664, 0
  %4666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = and i32 %4668, 131072
  %4670 = icmp eq i32 %4669, 0
  %4671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4666, %dx.types.Handle %87, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4671, 2
  %4675 = fmul fast float %4672, %282
  %4676 = fmul fast float %4673, %285
  %4677 = fmul fast float %4674, %288
  br i1 %4670, label %4684, label %4678

; <label>:4678                                    ; preds = %4661
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 0
  %4681 = fmul fast float %4680, %4675
  %4682 = fmul fast float %4680, %4676
  %4683 = fmul fast float %4680, %4677
  br label %4684

; <label>:4684                                    ; preds = %4678, %4661
  %4685 = phi float [ %4681, %4678 ], [ %4675, %4661 ]
  %4686 = phi float [ %4682, %4678 ], [ %4676, %4661 ]
  %4687 = phi float [ %4683, %4678 ], [ %4677, %4661 ]
  %4688 = fmul fast float %4685, %4656
  %4689 = select i1 %192, float %4688, float %4685
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4686, float %4687, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = select i1 %192, float 0.000000e+00, float %4685
  %4692 = select i1 %192, float %4690, float %4686
  %4693 = select i1 %192, float 0.000000e+00, float %4687
  br label %4694

; <label>:4694                                    ; preds = %4684, %4646
  %4695 = phi float [ %4691, %4684 ], [ 0.000000e+00, %4646 ]
  %4696 = phi float [ %4692, %4684 ], [ 0.000000e+00, %4646 ]
  %4697 = phi float [ %4693, %4684 ], [ 0.000000e+00, %4646 ]
  %4698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.i32 %4698, 0
  %4700 = add i32 %35, 128
  %4701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.i32 %4701, 0
  %4703 = and i32 %4702, 255
  %4704 = uitofp i32 %4703 to float
  %4705 = lshr i32 %4702, 8
  %4706 = and i32 %4705, 255
  %4707 = uitofp i32 %4706 to float
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = fmul fast float %4707, %4708
  %4710 = fadd fast float %4709, %4704
  %4711 = fmul fast float %4710, 0x3F70101020000000
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = and i32 %4699, 3
  %4714 = icmp eq i32 %4713, 3
  br i1 %4714, label %4793, label %4715

; <label>:4715                                    ; preds = %4694
  %4716 = and i32 %4699, 16
  %4717 = icmp ne i32 %4716, 0
  %4718 = select i1 %4717, float %4347, float 0.000000e+00
  %4719 = icmp eq i32 %4713, 0
  br i1 %4719, label %4720, label %4748

; <label>:4720                                    ; preds = %4715
  %4721 = and i32 %4699, 64
  %4722 = icmp ne i32 %4721, 0
  %4723 = select i1 %4722, float %4347, float 0.000000e+00
  %4724 = fsub fast float %4567, %4042
  %4725 = fsub fast float %4568, %4043
  %4726 = fsub fast float %4569, %4044
  %4727 = fmul fast float %4718, %4724
  %4728 = fmul fast float %4718, %4725
  %4729 = fmul fast float %4718, %4726
  %4730 = fadd fast float %4727, %4042
  %4731 = fadd fast float %4728, %4043
  %4732 = fadd fast float %4729, %4044
  %4733 = fsub fast float %4553, %4045
  %4734 = fmul fast float %4718, %4733
  %4735 = fadd fast float %4734, %4045
  %4736 = fsub fast float %4695, %4039
  %4737 = fsub fast float %4696, %4040
  %4738 = fsub fast float %4697, %4041
  %4739 = fmul fast float %4723, %4736
  %4740 = fmul fast float %4723, %4737
  %4741 = fmul fast float %4723, %4738
  %4742 = fadd fast float %4739, %4039
  %4743 = fadd fast float %4740, %4040
  %4744 = fadd fast float %4741, %4041
  %4745 = fsub fast float %4712, %4048
  %4746 = fmul fast float %4718, %4745
  %4747 = fadd fast float %4746, %4048
  br label %4793

; <label>:4748                                    ; preds = %4715
  %4749 = icmp eq i32 %4713, 1
  br i1 %4749, label %4750, label %4763

; <label>:4750                                    ; preds = %4748
  %4751 = fadd fast float %4567, -1.000000e+00
  %4752 = fadd fast float %4568, -1.000000e+00
  %4753 = fadd fast float %4569, -1.000000e+00
  %4754 = fmul fast float %4718, %4751
  %4755 = fmul fast float %4718, %4752
  %4756 = fmul fast float %4718, %4753
  %4757 = fadd fast float %4754, 1.000000e+00
  %4758 = fadd fast float %4755, 1.000000e+00
  %4759 = fadd fast float %4756, 1.000000e+00
  %4760 = fmul fast float %4757, %4042
  %4761 = fmul fast float %4758, %4043
  %4762 = fmul fast float %4759, %4044
  br label %4793

; <label>:4763                                    ; preds = %4748
  %4764 = icmp eq i32 %4713, 2
  br i1 %4764, label %4765, label %4793

; <label>:4765                                    ; preds = %4763
  %4766 = call float @dx.op.unary.f32(i32 24, float %4567)  ; Sqrt(value)
  %4767 = call float @dx.op.unary.f32(i32 24, float %4568)  ; Sqrt(value)
  %4768 = call float @dx.op.unary.f32(i32 24, float %4569)  ; Sqrt(value)
  %4769 = fadd fast float %4766, -5.000000e-01
  %4770 = fadd fast float %4767, -5.000000e-01
  %4771 = fadd fast float %4768, -5.000000e-01
  %4772 = fmul fast float %4769, %4718
  %4773 = fmul fast float %4770, %4718
  %4774 = fmul fast float %4771, %4718
  %4775 = fadd fast float %4772, 5.000000e-01
  %4776 = fadd fast float %4773, 5.000000e-01
  %4777 = fadd fast float %4774, 5.000000e-01
  %4778 = fmul fast float %4775, 2.000000e+00
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = fmul fast float %4779, %4042
  %4781 = fadd fast float %4780, %4778
  %4782 = fmul fast float %4781, %4042
  %4783 = fmul fast float %4776, 2.000000e+00
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = fmul fast float %4784, %4043
  %4786 = fadd fast float %4785, %4783
  %4787 = fmul fast float %4786, %4043
  %4788 = fmul fast float %4777, 2.000000e+00
  %4789 = fsub fast float 1.000000e+00, %4788
  %4790 = fmul fast float %4789, %4044
  %4791 = fadd fast float %4790, %4788
  %4792 = fmul fast float %4791, %4044
  br label %4793

; <label>:4793                                    ; preds = %4765, %4763, %4750, %4720, %4694
  %4794 = phi float [ %4039, %4694 ], [ %4039, %4765 ], [ %4039, %4763 ], [ %4039, %4750 ], [ %4742, %4720 ]
  %4795 = phi float [ %4040, %4694 ], [ %4040, %4765 ], [ %4040, %4763 ], [ %4040, %4750 ], [ %4743, %4720 ]
  %4796 = phi float [ %4041, %4694 ], [ %4041, %4765 ], [ %4041, %4763 ], [ %4041, %4750 ], [ %4744, %4720 ]
  %4797 = phi float [ %4042, %4694 ], [ %4782, %4765 ], [ %4042, %4763 ], [ %4760, %4750 ], [ %4730, %4720 ]
  %4798 = phi float [ %4043, %4694 ], [ %4787, %4765 ], [ %4043, %4763 ], [ %4761, %4750 ], [ %4731, %4720 ]
  %4799 = phi float [ %4044, %4694 ], [ %4792, %4765 ], [ %4044, %4763 ], [ %4762, %4750 ], [ %4732, %4720 ]
  %4800 = phi float [ %4045, %4694 ], [ %4045, %4765 ], [ %4045, %4763 ], [ %4045, %4750 ], [ %4735, %4720 ]
  %4801 = phi float [ %4048, %4694 ], [ %4048, %4765 ], [ %4048, %4763 ], [ %4048, %4750 ], [ %4747, %4720 ]
  %4802 = and i32 %4699, 12
  %4803 = icmp eq i32 %4802, 12
  br i1 %4803, label %4876, label %4804

; <label>:4804                                    ; preds = %4793
  %4805 = and i32 %4699, 2097184
  %4806 = icmp eq i32 %4805, 2097184
  %4807 = select i1 %4806, float %4347, float 0.000000e+00
  %4808 = and i32 %4699, 4194336
  %4809 = icmp eq i32 %4808, 4194336
  %4810 = select i1 %4809, float %4347, float 0.000000e+00
  %4811 = and i32 %4699, 8388640
  %4812 = icmp eq i32 %4811, 8388640
  %4813 = select i1 %4812, float %4347, float 0.000000e+00
  %4814 = icmp eq i32 %4802, 0
  br i1 %4814, label %4815, label %4828

; <label>:4815                                    ; preds = %4804
  %4816 = fsub fast float %4648, %4037
  %4817 = fsub fast float %4649, %4038
  %4818 = fmul fast float %4807, %4816
  %4819 = fmul fast float %4807, %4817
  %4820 = fadd fast float %4818, %4037
  %4821 = fadd fast float %4819, %4038
  %4822 = fsub fast float %4650, %4047
  %4823 = fmul fast float %4810, %4822
  %4824 = fadd fast float %4823, %4047
  %4825 = fsub fast float %4647, %4046
  %4826 = fmul fast float %4813, %4825
  %4827 = fadd fast float %4826, %4046
  br label %4876

; <label>:4828                                    ; preds = %4804
  %4829 = icmp eq i32 %4802, 4
  br i1 %4829, label %4830, label %4862

; <label>:4830                                    ; preds = %4828
  %4831 = fmul fast float %4807, %4648
  %4832 = fmul fast float %4807, %4649
  %4833 = fadd fast float %4831, %4037
  %4834 = fadd fast float %4832, %4038
  %4835 = call float @dx.op.binary.f32(i32 36, float %4047, float %4650)  ; FMin(a,b)
  %4836 = fsub fast float %4835, %4047
  %4837 = fmul fast float %4836, %4810
  %4838 = fadd fast float %4837, %4047
  %4839 = fadd fast float %4647, %4046
  %4840 = fmul fast float %4839, 0x3FF337FAE0000000
  %4841 = fmul fast float %4046, %4046
  %4842 = fmul fast float %4647, %4647
  %4843 = fadd fast float %4842, %4841
  %4844 = fmul fast float %4843, 0x3FE5152B00000000
  %4845 = fmul fast float %4046, 0xBFCC1F85E0000000
  %4846 = fmul fast float %4845, %4647
  %4847 = fadd fast float %4846, 0xBFE1363700000000
  %4848 = fadd fast float %4847, %4840
  %4849 = fsub fast float %4848, %4844
  %4850 = fmul fast float %4839, 0x3FBA6F0D00000000
  %4851 = fmul fast float %4843, 0x3FD0432880000000
  %4852 = fmul fast float %4046, 0xBFEF110800000000
  %4853 = fmul fast float %4852, %4647
  %4854 = fadd fast float %4853, 1.000000e+00
  %4855 = fsub fast float %4854, %4850
  %4856 = fadd fast float %4855, %4851
  %4857 = fdiv fast float %4849, %4856
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fsub fast float %4858, %4046
  %4860 = fmul fast float %4859, %4813
  %4861 = fadd fast float %4860, %4046
  br label %4876

; <label>:4862                                    ; preds = %4828
  %4863 = icmp eq i32 %4802, 8
  br i1 %4863, label %4864, label %4876

; <label>:4864                                    ; preds = %4862
  %4865 = fmul fast float %4807, %4648
  %4866 = fmul fast float %4807, %4649
  %4867 = fadd fast float %4865, %4037
  %4868 = fadd fast float %4866, %4038
  %4869 = call float @dx.op.binary.f32(i32 36, float %4047, float %4650)  ; FMin(a,b)
  %4870 = fsub fast float %4869, %4047
  %4871 = fmul fast float %4870, %4810
  %4872 = fadd fast float %4871, %4047
  %4873 = fsub fast float %4647, %4046
  %4874 = fmul fast float %4813, %4873
  %4875 = fadd fast float %4874, %4046
  br label %4876

; <label>:4876                                    ; preds = %4864, %4862, %4830, %4815, %4793, %4346, %4051, %4036
  %4877 = phi float [ %4037, %4793 ], [ %4037, %4346 ], [ %4037, %4051 ], [ %4820, %4815 ], [ %4833, %4830 ], [ %4037, %4862 ], [ %4867, %4864 ], [ %4037, %4036 ]
  %4878 = phi float [ %4038, %4793 ], [ %4038, %4346 ], [ %4038, %4051 ], [ %4821, %4815 ], [ %4834, %4830 ], [ %4038, %4862 ], [ %4868, %4864 ], [ %4038, %4036 ]
  %4879 = phi float [ %4794, %4793 ], [ %4039, %4346 ], [ %4039, %4051 ], [ %4794, %4815 ], [ %4794, %4830 ], [ %4794, %4862 ], [ %4794, %4864 ], [ %4039, %4036 ]
  %4880 = phi float [ %4795, %4793 ], [ %4040, %4346 ], [ %4040, %4051 ], [ %4795, %4815 ], [ %4795, %4830 ], [ %4795, %4862 ], [ %4795, %4864 ], [ %4040, %4036 ]
  %4881 = phi float [ %4796, %4793 ], [ %4041, %4346 ], [ %4041, %4051 ], [ %4796, %4815 ], [ %4796, %4830 ], [ %4796, %4862 ], [ %4796, %4864 ], [ %4041, %4036 ]
  %4882 = phi float [ %4797, %4793 ], [ %4042, %4346 ], [ %4042, %4051 ], [ %4797, %4815 ], [ %4797, %4830 ], [ %4797, %4862 ], [ %4797, %4864 ], [ %4042, %4036 ]
  %4883 = phi float [ %4798, %4793 ], [ %4043, %4346 ], [ %4043, %4051 ], [ %4798, %4815 ], [ %4798, %4830 ], [ %4798, %4862 ], [ %4798, %4864 ], [ %4043, %4036 ]
  %4884 = phi float [ %4799, %4793 ], [ %4044, %4346 ], [ %4044, %4051 ], [ %4799, %4815 ], [ %4799, %4830 ], [ %4799, %4862 ], [ %4799, %4864 ], [ %4044, %4036 ]
  %4885 = phi float [ %4800, %4793 ], [ %4045, %4346 ], [ %4045, %4051 ], [ %4800, %4815 ], [ %4800, %4830 ], [ %4800, %4862 ], [ %4800, %4864 ], [ %4045, %4036 ]
  %4886 = phi float [ %4046, %4793 ], [ %4046, %4346 ], [ %4046, %4051 ], [ %4827, %4815 ], [ %4861, %4830 ], [ %4046, %4862 ], [ %4875, %4864 ], [ %4046, %4036 ]
  %4887 = phi float [ %4047, %4793 ], [ %4047, %4346 ], [ %4047, %4051 ], [ %4824, %4815 ], [ %4838, %4830 ], [ %4047, %4862 ], [ %4872, %4864 ], [ %4047, %4036 ]
  %4888 = phi float [ %4801, %4793 ], [ %4048, %4346 ], [ %4048, %4051 ], [ %4801, %4815 ], [ %4801, %4830 ], [ %4801, %4862 ], [ %4801, %4864 ], [ %4048, %4036 ]
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = call float @dx.op.dot2.f32(i32 54, float %4877, float %4878, float %4877, float %4878)  ; Dot2(ax,ay,bx,by)
  %4892 = fmul fast float %4891, 0x3FE3333340000000
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4893, float %4877, float %4878, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4895, %4877
  %4897 = fmul fast float %4895, %4878
  %4898 = fmul fast float %4893, %4895
  %4899 = fmul fast float %4898, %100
  %4900 = fmul fast float %4898, %102
  %4901 = fmul fast float %4898, %104
  %4902 = fmul fast float %4896, %56
  %4903 = fmul fast float %4896, %57
  %4904 = fmul fast float %4896, %58
  %4905 = fadd fast float %4899, %4902
  %4906 = fadd fast float %4900, %4903
  %4907 = fadd fast float %4901, %4904
  %4908 = fmul fast float %4897, %114
  %4909 = fmul fast float %4897, %115
  %4910 = fmul fast float %4897, %116
  %4911 = fadd fast float %4905, %4908
  %4912 = fadd fast float %4906, %4909
  %4913 = fadd fast float %4907, %4910
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 25, float %4914)  ; Rsqrt(value)
  %4916 = fmul fast float %4911, %4915
  %4917 = fmul fast float %4912, %4915
  %4918 = fmul fast float %4913, %4915
  %4919 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2718, float %2719)  ; Dot2(ax,ay,bx,by)
  %4920 = fmul fast float %4919, 0x3FE3333340000000
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = call float @dx.op.dot3.f32(i32 55, float %2718, float %2719, float %4921, float %2718, float %2719, float %4921)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 25, float %4922)  ; Rsqrt(value)
  %4924 = fmul fast float %4923, %2718
  %4925 = fmul fast float %4923, %2719
  %4926 = fmul fast float %4921, %4923
  %4927 = fmul fast float %4926, %100
  %4928 = fmul fast float %4926, %102
  %4929 = fmul fast float %4926, %104
  %4930 = fmul fast float %4924, %56
  %4931 = fmul fast float %4924, %57
  %4932 = fmul fast float %4924, %58
  %4933 = fadd fast float %4927, %4930
  %4934 = fadd fast float %4928, %4931
  %4935 = fadd fast float %4929, %4932
  %4936 = fmul fast float %4925, %114
  %4937 = fmul fast float %4925, %115
  %4938 = fmul fast float %4925, %116
  %4939 = fadd fast float %4933, %4936
  %4940 = fadd fast float %4934, %4937
  %4941 = fadd fast float %4935, %4938
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float %4939, float %4940, float %4941)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = call float @dx.op.unary.f32(i32 25, float %4942)  ; Rsqrt(value)
  %4944 = fmul fast float %4939, %4943
  %4945 = fmul fast float %4940, %4943
  %4946 = fmul fast float %4941, %4943
  %4947 = and i32 %37, 1
  %4948 = icmp eq i32 %4947, 0
  br i1 %4948, label %4949, label %5451

; <label>:4949                                    ; preds = %4876
  %4950 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %4951 = call float @dx.op.unary.f32(i32 83, float %151)  ; DerivCoarseX(value)
  %4952 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4953 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %4954 = call float @dx.op.unary.f32(i32 84, float %151)  ; DerivCoarseY(value)
  %4955 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4956 = fadd fast float %4950, %150
  %4957 = fadd fast float %4951, %151
  %4958 = fadd fast float %4952, %152
  %4959 = fadd fast float %4953, %150
  %4960 = fadd fast float %4954, %151
  %4961 = fadd fast float %4955, %152
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %4969 = fmul fast float %4963, %91
  %4970 = fmul fast float %4969, %4967
  %4971 = fmul fast float %4964, %92
  %4972 = fmul fast float %4971, %4968
  %4973 = fptoui float %4970 to i32
  %4974 = fptoui float %4972 to i32
  %4975 = fadd fast float %4963, -1.000000e+00
  %4976 = fadd fast float %4964, -1.000000e+00
  %4977 = fptoui float %4975 to i32
  %4978 = fptoui float %4976 to i32
  %4979 = call i32 @dx.op.binary.i32(i32 40, i32 %4973, i32 %4977)  ; UMin(a,b)
  %4980 = call i32 @dx.op.binary.i32(i32 40, i32 %4974, i32 %4978)  ; UMin(a,b)
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4984 = fmul fast float %4982, %70
  %4985 = fsub fast float %4984, %4983
  %4986 = fadd fast float %4965, -1.000000e+00
  %4987 = call float @dx.op.binary.f32(i32 36, float %4985, float %4986)  ; FMin(a,b)
  %4988 = fptoui float %4987 to i32
  %4989 = fptoui float %4963 to i32
  %4990 = fptoui float %4964 to i32
  %4991 = mul i32 %4988, %4990
  %4992 = add i32 %4991, %4980
  %4993 = mul i32 %4992, %4989
  %4994 = add i32 %4993, %4979
  %4995 = shl i32 %4994, 2
  %4996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4995, i32 undef)  ; BufferLoad(srv,index,wot)
  %4997 = extractvalue %dx.types.ResRet.i32 %4996, 0
  %4998 = and i32 %4997, 1023
  %4999 = lshr i32 %4997, 10
  %5000 = icmp eq i32 %4998, 0
  br i1 %5000, label %5421, label %5001

; <label>:5001                                    ; preds = %4949
  %5002 = and i32 %4997, 1023
  br label %5003

; <label>:5003                                    ; preds = %5128, %5001
  %5004 = phi i32 [ %5078, %5128 ], [ 0, %5001 ]
  %5005 = phi float [ %5129, %5128 ], [ %4890, %5001 ]
  %5006 = phi float [ %5130, %5128 ], [ %4888, %5001 ]
  %5007 = phi float [ %5131, %5128 ], [ 0.000000e+00, %5001 ]
  %5008 = phi float [ %5132, %5128 ], [ 0.000000e+00, %5001 ]
  %5009 = phi float [ %5133, %5128 ], [ %2720, %5001 ]
  %5010 = phi float [ %5134, %5128 ], [ %2721, %5001 ]
  %5011 = phi float [ %5135, %5128 ], [ %2722, %5001 ]
  %5012 = phi float [ %5136, %5128 ], [ %4944, %5001 ]
  %5013 = phi float [ %5137, %5128 ], [ %4945, %5001 ]
  %5014 = phi float [ %5138, %5128 ], [ %4946, %5001 ]
  %5015 = phi float [ %5139, %5128 ], [ %2729, %5001 ]
  %5016 = phi float [ %5140, %5128 ], [ %2728, %5001 ]
  %5017 = phi float [ %5141, %5128 ], [ 0.000000e+00, %5001 ]
  %5018 = phi float [ %5142, %5128 ], [ %2726, %5001 ]
  %5019 = phi float [ %5143, %5128 ], [ %2723, %5001 ]
  %5020 = phi float [ %5144, %5128 ], [ %2724, %5001 ]
  %5021 = phi float [ %5145, %5128 ], [ %2725, %5001 ]
  %5022 = add nuw nsw i32 %5004, %4999
  %5023 = shl i32 %5022, 2
  %5024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.i32 %5024, 0
  %5026 = shl i32 %5025, 8
  %5027 = or i32 %5026, 48
  %5028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.ResRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.ResRet.f32 %5028, 2
  %5032 = extractvalue %dx.types.ResRet.f32 %5028, 3
  %5033 = or i32 %5026, 64
  %5034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.i32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.i32 %5034, 1
  %5037 = or i32 %5026, 80
  %5038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5037, i32 undef)  ; BufferLoad(srv,index,wot)
  %5039 = extractvalue %dx.types.ResRet.f32 %5038, 2
  %5040 = extractvalue %dx.types.ResRet.f32 %5038, 3
  %5041 = or i32 %5026, 96
  %5042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5041, i32 undef)  ; BufferLoad(srv,index,wot)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = extractvalue %dx.types.ResRet.f32 %5042, 3
  %5047 = or i32 %5026, 112
  %5048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5050 = or i32 %5026, 128
  %5051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5050, i32 undef)  ; BufferLoad(srv,index,wot)
  %5052 = extractvalue %dx.types.ResRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.ResRet.f32 %5051, 1
  %5054 = extractvalue %dx.types.ResRet.f32 %5051, 2
  %5055 = extractvalue %dx.types.ResRet.f32 %5051, 3
  %5056 = or i32 %5026, 144
  %5057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.ResRet.f32 %5057, 2
  %5061 = extractvalue %dx.types.ResRet.f32 %5057, 3
  %5062 = or i32 %5026, 160
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.ResRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.ResRet.f32 %5063, 2
  %5067 = extractvalue %dx.types.ResRet.f32 %5063, 3
  %5068 = or i32 %5026, 192
  %5069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.i32 %5069, 0
  %5071 = or i32 %5026, 208
  %5072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = or i32 %5026, 248
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = add nuw nsw i32 %5004, 1
  %5079 = bitcast float %5032 to i32
  %5080 = and i32 %5079, 512
  %5081 = icmp eq i32 %5080, 0
  %5082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  %5086 = extractvalue %dx.types.ResRet.f32 %5082, 3
  %5087 = call float @dx.op.dot4.f32(i32 56, float %5083, float %5084, float %5085, float %5086, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5088 = or i32 %5026, 16
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5088, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.ResRet.f32 %5089, 2
  %5093 = extractvalue %dx.types.ResRet.f32 %5089, 3
  %5094 = call float @dx.op.dot4.f32(i32 56, float %5090, float %5091, float %5092, float %5093, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5095 = or i32 %5026, 32
  %5096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5095, i32 undef)  ; BufferLoad(srv,index,wot)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.ResRet.f32 %5096, 1
  %5099 = extractvalue %dx.types.ResRet.f32 %5096, 2
  %5100 = extractvalue %dx.types.ResRet.f32 %5096, 3
  %5101 = call float @dx.op.dot4.f32(i32 56, float %5097, float %5098, float %5099, float %5100, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5102 = call float @dx.op.unary.f32(i32 27, float %5087)  ; Round_ni(value)
  %5103 = call float @dx.op.unary.f32(i32 6, float %5102)  ; FAbs(value)
  %5104 = call float @dx.op.unary.f32(i32 27, float %5094)  ; Round_ni(value)
  %5105 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5106 = call float @dx.op.unary.f32(i32 6, float %5101)  ; FAbs(value)
  %5107 = call float @dx.op.unary.f32(i32 27, float %5106)  ; Round_ni(value)
  %5108 = fadd fast float %5105, %5103
  %5109 = fadd fast float %5108, %5107
  %5110 = fcmp fast oeq float %5109, 0.000000e+00
  %5111 = call float @dx.op.dot4.f32(i32 56, float %5083, float %5084, float %5085, float %5086, float %4956, float %4957, float %4958, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5112 = call float @dx.op.dot4.f32(i32 56, float %5090, float %5091, float %5092, float %5093, float %4956, float %4957, float %4958, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5113 = call float @dx.op.dot4.f32(i32 56, float %5083, float %5084, float %5085, float %5086, float %4959, float %4960, float %4961, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5114 = call float @dx.op.dot4.f32(i32 56, float %5090, float %5091, float %5092, float %5093, float %4959, float %4960, float %4961, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5115 = fsub fast float %5111, %5087
  %5116 = fsub fast float %5113, %5087
  %5117 = fsub fast float %5112, %5094
  %5118 = fsub fast float %5114, %5094
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float %100, float %102, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5122 = fadd fast float %5121, %5119
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5125 = fcmp fast ogt float %5123, %5124
  %5126 = and i1 %5110, %5125
  %5127 = and i1 %5081, %5126
  br i1 %5127, label %5147, label %5128

; <label>:5128                                    ; preds = %5407, %5228, %5147, %5003
  %5129 = phi float [ %5005, %5147 ], [ %5005, %5228 ], [ %5382, %5407 ], [ %5005, %5003 ]
  %5130 = phi float [ %5006, %5147 ], [ %5006, %5228 ], [ %5380, %5407 ], [ %5006, %5003 ]
  %5131 = phi float [ %5007, %5147 ], [ %5007, %5228 ], [ %5352, %5407 ], [ %5007, %5003 ]
  %5132 = phi float [ %5008, %5147 ], [ %5008, %5228 ], [ %5350, %5407 ], [ %5008, %5003 ]
  %5133 = phi float [ %5009, %5147 ], [ %5009, %5228 ], [ %5417, %5407 ], [ %5009, %5003 ]
  %5134 = phi float [ %5010, %5147 ], [ %5010, %5228 ], [ %5418, %5407 ], [ %5010, %5003 ]
  %5135 = phi float [ %5011, %5147 ], [ %5011, %5228 ], [ %5419, %5407 ], [ %5011, %5003 ]
  %5136 = phi float [ %5012, %5147 ], [ %5012, %5228 ], [ %5331, %5407 ], [ %5012, %5003 ]
  %5137 = phi float [ %5013, %5147 ], [ %5013, %5228 ], [ %5332, %5407 ], [ %5013, %5003 ]
  %5138 = phi float [ %5014, %5147 ], [ %5014, %5228 ], [ %5333, %5407 ], [ %5014, %5003 ]
  %5139 = phi float [ %5015, %5147 ], [ %5015, %5228 ], [ %5360, %5407 ], [ %5015, %5003 ]
  %5140 = phi float [ %5016, %5147 ], [ %5016, %5228 ], [ %5357, %5407 ], [ %5016, %5003 ]
  %5141 = phi float [ %5017, %5147 ], [ %5017, %5228 ], [ %5354, %5407 ], [ %5017, %5003 ]
  %5142 = phi float [ %5018, %5147 ], [ %5018, %5228 ], [ %5348, %5407 ], [ %5018, %5003 ]
  %5143 = phi float [ %5019, %5147 ], [ %5019, %5228 ], [ %5343, %5407 ], [ %5019, %5003 ]
  %5144 = phi float [ %5020, %5147 ], [ %5020, %5228 ], [ %5344, %5407 ], [ %5020, %5003 ]
  %5145 = phi float [ %5021, %5147 ], [ %5021, %5228 ], [ %5345, %5407 ], [ %5021, %5003 ]
  %5146 = icmp eq i32 %5078, %5002
  br i1 %5146, label %5420, label %5003

; <label>:5147                                    ; preds = %5003
  %5148 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5149 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5150 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5038, 1
  %5152 = extractvalue %dx.types.ResRet.f32 %5038, 0
  %5153 = extractvalue %dx.types.ResRet.i32 %5034, 3
  %5154 = extractvalue %dx.types.ResRet.i32 %5034, 2
  %5155 = add i32 %5153, 0
  %5156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5156, %dx.types.Handle %5157, float %5087, float %5094, float undef, float undef, i32 0, i32 0, i32 undef, float %5115, float %5117, float undef, float %5116, float %5118, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = fmul fast float %5159, %5152
  %5161 = fadd fast float %5160, %5151
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = fmul fast float %5087, %5043
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %5044, float %5094, float %5163)  ; FMad(a,b,c)
  %5165 = fadd fast float %5164, %5150
  %5166 = fmul fast float %5087, %5045
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5094, float %5166)  ; FMad(a,b,c)
  %5168 = fadd fast float %5167, %5149
  %5169 = fmul fast float %5115, %5043
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5044, float %5117, float %5169)  ; FMad(a,b,c)
  %5171 = fmul fast float %5115, %5045
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5117, float %5171)  ; FMad(a,b,c)
  %5173 = fmul fast float %5116, %5043
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5044, float %5118, float %5173)  ; FMad(a,b,c)
  %5175 = fmul fast float %5116, %5045
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5118, float %5175)  ; FMad(a,b,c)
  %5177 = add i32 %5154, 0
  %5178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5178, %dx.types.Handle %5157, float %5165, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5170, float %5172, float undef, float %5174, float %5176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = and i32 %5079, 1024
  %5182 = icmp ne i32 %5181, 0
  %5183 = fcmp fast ogt float %5180, 0x3FE0101020000000
  %5184 = uitofp i1 %5183 to float
  %5185 = select i1 %5182, float %5184, float %5180
  %5186 = and i32 %5079, 8192
  %5187 = icmp ne i32 %5186, 0
  %5188 = select i1 %5187, float %5148, float 1.000000e+00
  %5189 = fmul fast float %5087, 2.000000e+00
  %5190 = fadd fast float %5189, -1.000000e+00
  %5191 = call float @dx.op.unary.f32(i32 6, float %5190)  ; FAbs(value)
  %5192 = fmul fast float %5191, %5076
  %5193 = fsub fast float %5192, %5076
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5094, 2.000000e+00
  %5196 = fadd fast float %5195, -1.000000e+00
  %5197 = call float @dx.op.unary.f32(i32 6, float %5196)  ; FAbs(value)
  %5198 = fmul fast float %5197, %5077
  %5199 = fsub fast float %5198, %5077
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fmul fast float %5106, %5039
  %5202 = fsub fast float %5201, %5039
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fmul fast float %5162, %5188
  %5205 = fmul fast float %5204, %5159
  %5206 = fmul fast float %5205, %5194
  %5207 = fmul fast float %5206, %5185
  %5208 = fmul fast float %5207, %5200
  %5209 = fmul fast float %5208, %5203
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5213 = fsub fast float %5123, %5212
  %5214 = fmul fast float %5213, %5211
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fmul fast float %5209, %5040
  %5217 = fadd fast float %5209, %5040
  %5218 = fmul fast float %5217, %5049
  %5219 = fsub fast float %5218, %5049
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = and i32 %5079, 128
  %5222 = icmp ne i32 %5221, 0
  %5223 = select i1 %5222, float %5220, float %5216
  %5224 = fmul fast float %5223, %5215
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = fcmp fast ugt float %5224, %5226
  br i1 %5227, label %5228, label %5128

; <label>:5228                                    ; preds = %5147
  br i1 %5187, label %5128, label %5229

; <label>:5229                                    ; preds = %5228
  %5230 = and i32 %5079, 4
  %5231 = and i32 %5079, 8
  %5232 = add i32 %5035, 0
  %5233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5233, %dx.types.Handle %5234, float %5165, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5170, float %5172, float undef, float %5174, float %5176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = bitcast float %5061 to i32
  %5241 = and i32 %5240, 255
  %5242 = uitofp i32 %5241 to float
  %5243 = lshr i32 %5240, 8
  %5244 = and i32 %5243, 255
  %5245 = uitofp i32 %5244 to float
  %5246 = fmul fast float %5239, %5242
  %5247 = fadd fast float %5246, %5245
  %5248 = fmul fast float %5247, 0x3F70101000000000
  %5249 = add i32 %5036, 0
  %5250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5249, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5250, %dx.types.Handle %5234, float %5165, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5170, float %5172, float undef, float %5174, float %5176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = extractvalue %dx.types.ResRet.f32 %5251, 3
  %5256 = bitcast float %5055 to i32
  %5257 = and i32 %5256, 255
  %5258 = uitofp i32 %5257 to float
  %5259 = lshr i32 %5256, 8
  %5260 = and i32 %5259, 255
  %5261 = uitofp i32 %5260 to float
  %5262 = lshr i32 %5256, 16
  %5263 = and i32 %5262, 255
  %5264 = uitofp i32 %5263 to float
  %5265 = fmul fast float %5264, 0x3F70101000000000
  %5266 = fmul fast float %5252, %5258
  %5267 = fadd fast float %5266, %5261
  %5268 = fmul fast float %5267, 0x3F70101000000000
  %5269 = fadd fast float %5253, -5.000000e-01
  %5270 = fadd fast float %5255, -5.000000e-01
  %5271 = fmul fast float %5269, %5265
  %5272 = fmul fast float %5270, %5265
  %5273 = fadd fast float %5271, 5.000000e-01
  %5274 = fadd fast float %5272, 5.000000e-01
  %5275 = fmul fast float %5236, %5064
  %5276 = fmul fast float %5237, %5065
  %5277 = fmul fast float %5238, %5066
  %5278 = fmul fast float %5273, 2.000000e+00
  %5279 = fadd fast float %5278, -1.000000e+00
  %5280 = fmul fast float %5274, 2.000000e+00
  %5281 = fadd fast float %5280, -1.000000e+00
  %5282 = fadd fast float %5279, %5281
  %5283 = fmul fast float %5282, 5.000000e-01
  %5284 = fsub fast float %5279, %5281
  %5285 = fmul fast float %5284, 5.000000e-01
  %5286 = call float @dx.op.unary.f32(i32 6, float %5283)  ; FAbs(value)
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5289 = fsub fast float %5287, %5288
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5285, float %5289, float %5283, float %5285, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 25, float %5290)  ; Rsqrt(value)
  %5292 = fmul fast float %5283, %5291
  %5293 = fmul fast float %5285, %5291
  %5294 = fmul fast float %5291, %5289
  %5295 = fmul fast float %5294, %5029
  %5296 = fmul fast float %5294, %5030
  %5297 = fmul fast float %5294, %5031
  %5298 = fmul fast float %5292, %5052
  %5299 = fmul fast float %5292, %5053
  %5300 = fmul fast float %5292, %5054
  %5301 = fadd fast float %5298, %5295
  %5302 = fadd fast float %5299, %5296
  %5303 = fadd fast float %5300, %5297
  %5304 = fmul fast float %5293, %5058
  %5305 = fmul fast float %5293, %5059
  %5306 = fmul fast float %5293, %5060
  %5307 = fadd fast float %5301, %5304
  %5308 = fadd fast float %5302, %5305
  %5309 = fadd fast float %5303, %5306
  %5310 = call float @dx.op.dot3.f32(i32 55, float %5307, float %5308, float %5309, float %5307, float %5308, float %5309)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.unary.f32(i32 25, float %5310)  ; Rsqrt(value)
  %5312 = fmul fast float %5307, %5311
  %5313 = fmul fast float %5308, %5311
  %5314 = fmul fast float %5309, %5311
  %5315 = icmp ne i32 %5231, 0
  %5316 = select i1 %5315, float 1.000000e+00, float 0.000000e+00
  %5317 = fmul fast float %5224, %5316
  %5318 = and i32 %5079, 1
  %5319 = icmp eq i32 %5318, 0
  br i1 %5319, label %5320, label %5324

; <label>:5320                                    ; preds = %5229
  %5321 = fsub fast float %5312, %5012
  %5322 = fsub fast float %5313, %5013
  %5323 = fsub fast float %5314, %5014
  br label %5324

; <label>:5324                                    ; preds = %5320, %5229
  %5325 = phi float [ %5321, %5320 ], [ %5312, %5229 ]
  %5326 = phi float [ %5322, %5320 ], [ %5313, %5229 ]
  %5327 = phi float [ %5323, %5320 ], [ %5314, %5229 ]
  %5328 = fmul float %5327, %5317
  %5329 = fmul float %5326, %5317
  %5330 = fmul float %5325, %5317
  %5331 = fadd fast float %5330, %5012
  %5332 = fadd fast float %5329, %5013
  %5333 = fadd fast float %5328, %5014
  %5334 = icmp ne i32 %5230, 0
  %5335 = select i1 %5334, float 1.000000e+00, float 0.000000e+00
  %5336 = fmul fast float %5224, %5335
  %5337 = fsub fast float %5275, %5019
  %5338 = fsub fast float %5276, %5020
  %5339 = fsub fast float %5277, %5021
  %5340 = fmul fast float %5337, %5336
  %5341 = fmul fast float %5338, %5336
  %5342 = fmul fast float %5339, %5336
  %5343 = fadd fast float %5340, %5019
  %5344 = fadd fast float %5341, %5020
  %5345 = fadd fast float %5342, %5021
  %5346 = fsub fast float %5248, %5018
  %5347 = fmul fast float %5346, %5336
  %5348 = fadd fast float %5347, %5018
  %5349 = fmul fast float %5336, %5008
  %5350 = fsub fast float %5008, %5349
  %5351 = fmul fast float %5336, %5007
  %5352 = fsub fast float %5007, %5351
  %5353 = fadd fast float %5224, %5017
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fsub fast float %5268, %5016
  %5356 = fmul fast float %5355, %5317
  %5357 = fadd fast float %5356, %5016
  %5358 = fsub fast float %5254, %5015
  %5359 = fmul fast float %5358, %5317
  %5360 = fadd fast float %5359, %5015
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.CBufRet.f32 %5362, 1
  %5365 = fmul fast float %5364, %5361
  %5366 = fadd fast float %5365, %5363
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = bitcast float %5067 to i32
  %5369 = and i32 %5368, 65535
  %5370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5369)  ; LegacyF16ToF32(value)
  %5371 = lshr i32 %5368, 16
  %5372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5371)  ; LegacyF16ToF32(value)
  %5373 = fcmp fast oge float %5370, 0.000000e+00
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = select i1 %5373, float %5370, float %5375
  %5377 = fadd fast float %5376, %5372
  %5378 = fsub fast float %5367, %5006
  %5379 = fmul fast float %5378, %5224
  %5380 = fadd fast float %5379, %5006
  %5381 = fmul fast float %5377, %5224
  %5382 = call float @dx.op.binary.f32(i32 35, float %5005, float %5381)  ; FMax(a,b)
  %5383 = and i32 %5079, 16
  %5384 = icmp eq i32 %5383, 0
  br i1 %5384, label %5407, label %5385

; <label>:5385                                    ; preds = %5324
  %5386 = bitcast float %5073 to i32
  %5387 = add i32 %5070, 0
  %5388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5387, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5388, %dx.types.Handle %5234, float %5165, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5170, float %5172, float undef, float %5174, float %5176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = and i32 %5386, 65535
  %5394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5393)  ; LegacyF16ToF32(value)
  %5395 = fmul fast float %5390, %5064
  %5396 = fmul fast float %5391, %5065
  %5397 = fmul fast float %5392, %5066
  %5398 = and i32 %5079, 16384
  %5399 = icmp ne i32 %5398, 0
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = select i1 %5399, float %5401, float 1.000000e+00
  %5403 = fmul fast float %5402, %5394
  %5404 = fmul fast float %5395, %5403
  %5405 = fmul fast float %5396, %5403
  %5406 = fmul fast float %5397, %5403
  br label %5407

; <label>:5407                                    ; preds = %5385, %5324
  %5408 = phi float [ %5404, %5385 ], [ 0.000000e+00, %5324 ]
  %5409 = phi float [ %5405, %5385 ], [ 0.000000e+00, %5324 ]
  %5410 = phi float [ %5406, %5385 ], [ 0.000000e+00, %5324 ]
  %5411 = fsub fast float %5408, %5009
  %5412 = fsub fast float %5409, %5010
  %5413 = fsub fast float %5410, %5011
  %5414 = fmul fast float %5411, %5224
  %5415 = fmul fast float %5412, %5224
  %5416 = fmul fast float %5413, %5224
  %5417 = fadd fast float %5414, %5009
  %5418 = fadd fast float %5415, %5010
  %5419 = fadd fast float %5416, %5011
  br label %5128

; <label>:5420                                    ; preds = %5128
  br label %5421

; <label>:5421                                    ; preds = %5420, %4949
  %5422 = phi float [ %4890, %4949 ], [ %5129, %5420 ]
  %5423 = phi float [ %4888, %4949 ], [ %5130, %5420 ]
  %5424 = phi float [ 0.000000e+00, %4949 ], [ %5131, %5420 ]
  %5425 = phi float [ 0.000000e+00, %4949 ], [ %5132, %5420 ]
  %5426 = phi float [ %2720, %4949 ], [ %5133, %5420 ]
  %5427 = phi float [ %2721, %4949 ], [ %5134, %5420 ]
  %5428 = phi float [ %2722, %4949 ], [ %5135, %5420 ]
  %5429 = phi float [ %4944, %4949 ], [ %5136, %5420 ]
  %5430 = phi float [ %4945, %4949 ], [ %5137, %5420 ]
  %5431 = phi float [ %4946, %4949 ], [ %5138, %5420 ]
  %5432 = phi float [ %2729, %4949 ], [ %5139, %5420 ]
  %5433 = phi float [ %2728, %4949 ], [ %5140, %5420 ]
  %5434 = phi float [ 0.000000e+00, %4949 ], [ %5141, %5420 ]
  %5435 = phi float [ %2726, %4949 ], [ %5142, %5420 ]
  %5436 = phi float [ %2723, %4949 ], [ %5143, %5420 ]
  %5437 = phi float [ %2724, %4949 ], [ %5144, %5420 ]
  %5438 = phi float [ %2725, %4949 ], [ %5145, %5420 ]
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = call float @dx.op.unary.f32(i32 25, float %5439)  ; Rsqrt(value)
  %5441 = fmul fast float %5440, %5429
  %5442 = fmul fast float %5440, %5430
  %5443 = fmul fast float %5440, %5431
  %5444 = fadd fast float %5434, %2727
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 25, float %5446)  ; Rsqrt(value)
  %5448 = fmul fast float %5447, %5441
  %5449 = fmul fast float %5447, %5442
  %5450 = fmul fast float %5447, %5443
  br label %5451

; <label>:5451                                    ; preds = %5421, %4876
  %5452 = phi float [ %5448, %5421 ], [ %4944, %4876 ]
  %5453 = phi float [ %5449, %5421 ], [ %4945, %4876 ]
  %5454 = phi float [ %5450, %5421 ], [ %4946, %4876 ]
  %5455 = phi float [ %5426, %5421 ], [ %2720, %4876 ]
  %5456 = phi float [ %5427, %5421 ], [ %2721, %4876 ]
  %5457 = phi float [ %5428, %5421 ], [ %2722, %4876 ]
  %5458 = phi float [ %5436, %5421 ], [ %2723, %4876 ]
  %5459 = phi float [ %5437, %5421 ], [ %2724, %4876 ]
  %5460 = phi float [ %5438, %5421 ], [ %2725, %4876 ]
  %5461 = phi float [ %5435, %5421 ], [ %2726, %4876 ]
  %5462 = phi float [ %5445, %5421 ], [ %2727, %4876 ]
  %5463 = phi float [ %5433, %5421 ], [ %2728, %4876 ]
  %5464 = phi float [ %5432, %5421 ], [ %2729, %4876 ]
  %5465 = phi float [ %5425, %5421 ], [ 0.000000e+00, %4876 ]
  %5466 = phi float [ %5424, %5421 ], [ 0.000000e+00, %4876 ]
  %5467 = phi float [ %5422, %5421 ], [ %4890, %4876 ]
  %5468 = phi float [ %5423, %5421 ], [ %4888, %4876 ]
  %5469 = fadd fast float %4885, 0xBFB99999A0000000
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = fmul fast float %5470, 0x3FF1C71C80000000
  %5472 = call float @dx.op.binary.f32(i32 36, float %4885, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5473 = fsub fast float 1.000000e+00, %5471
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fmul fast float %5474, %4882
  %5476 = fmul fast float %5474, %4883
  %5477 = fmul fast float %5474, %4884
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5481 = fmul fast float %5471, %4882
  %5482 = fmul fast float %5471, %4883
  %5483 = fmul fast float %5471, %4884
  %5484 = fadd fast float %5481, %5472
  %5485 = fadd fast float %5482, %5472
  %5486 = fadd fast float %5483, %5472
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5490 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %5491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.i32 %5491, 3
  %5493 = and i32 %5492, 8
  %5494 = icmp ne i32 %5493, 0
  %5495 = call float @dx.op.binary.f32(i32 35, float %5478, float %4882)  ; FMax(a,b)
  %5496 = call float @dx.op.binary.f32(i32 35, float %5479, float %4882)  ; FMax(a,b)
  %5497 = call float @dx.op.binary.f32(i32 35, float %5480, float %4882)  ; FMax(a,b)
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = select i1 %192, float %4882, float %5478
  %5500 = select i1 %192, float %5498, float %5479
  %5501 = select i1 %192, float 1.000000e+00, float %5480
  %5502 = select i1 %5494, float %5495, float %5499
  %5503 = select i1 %5494, float %5496, float %5500
  %5504 = select i1 %5494, float %5497, float %5501
  %5505 = fadd fast float %5461, 0xBFB99999A0000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = fmul fast float %5506, 0x3FF1C71C80000000
  %5508 = call float @dx.op.binary.f32(i32 36, float %5461, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5509 = fsub fast float 1.000000e+00, %5507
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5510, %5458
  %5512 = fmul fast float %5510, %5459
  %5513 = fmul fast float %5510, %5460
  %5514 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5517 = fmul fast float %5507, %5458
  %5518 = fmul fast float %5507, %5459
  %5519 = fmul fast float %5507, %5460
  %5520 = fadd fast float %5517, %5508
  %5521 = fadd fast float %5518, %5508
  %5522 = fadd fast float %5519, %5508
  %5523 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5524 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5527 = call float @dx.op.binary.f32(i32 35, float %5514, float %4882)  ; FMax(a,b)
  %5528 = call float @dx.op.binary.f32(i32 35, float %5515, float %4882)  ; FMax(a,b)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5516, float %4882)  ; FMax(a,b)
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = select i1 %192, float %4882, float %5514
  %5532 = select i1 %192, float %5530, float %5515
  %5533 = select i1 %192, float 1.000000e+00, float %5516
  %5534 = select i1 %5494, float %5527, float %5531
  %5535 = select i1 %5494, float %5528, float %5532
  %5536 = select i1 %5494, float %5529, float %5533
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.CBufRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.CBufRet.f32 %5537, 2
  %5541 = fadd fast float %5538, %150
  %5542 = fadd fast float %5539, %151
  %5543 = fadd fast float %5540, %152
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = fsub fast float %5541, %5545
  %5548 = fsub fast float %5542, %5546
  %5549 = fmul fast float %5547, %5547
  %5550 = fmul fast float %5548, %5548
  %5551 = fadd fast float %5549, %5550
  %5552 = call float @dx.op.unary.f32(i32 24, float %5551)  ; Sqrt(value)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %5554 = fcmp fast olt float %5552, %5553
  br i1 %5554, label %5555, label %5622

; <label>:5555                                    ; preds = %5451
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5562 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5563 = extractvalue %dx.types.CBufRet.f32 %5558, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5560, 1
  %5565 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5566 = extractvalue %dx.types.CBufRet.f32 %5558, 3
  %5567 = extractvalue %dx.types.CBufRet.f32 %5560, 3
  %5568 = fadd fast float %5565, %5541
  %5569 = fadd fast float %5566, %5542
  %5570 = fadd fast float %5567, %5543
  %5571 = fmul fast float %5568, %5557
  %5572 = call float @dx.op.tertiary.f32(i32 46, float %5569, float %5559, float %5571)  ; FMad(a,b,c)
  %5573 = call float @dx.op.tertiary.f32(i32 46, float %5570, float %5561, float %5572)  ; FMad(a,b,c)
  %5574 = fmul fast float %5568, %5562
  %5575 = call float @dx.op.tertiary.f32(i32 46, float %5569, float %5563, float %5574)  ; FMad(a,b,c)
  %5576 = call float @dx.op.tertiary.f32(i32 46, float %5570, float %5564, float %5575)  ; FMad(a,b,c)
  %5577 = fsub fast float %5573, %5565
  %5578 = fsub fast float %5576, %5566
  %5579 = fsub fast float %5577, %5545
  %5580 = fadd fast float %5579, %5553
  %5581 = fsub fast float %5578, %5546
  %5582 = fadd fast float %5581, %5553
  %5583 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5584 = fmul fast float %5580, %5583
  %5585 = fmul fast float %5582, %5583
  %5586 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5588 = fsub fast float 1.000000e+00, %5586
  %5589 = fsub fast float 1.000000e+00, %5587
  %5590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %5588, float %5589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = fcmp fast ugt float %5591, 0.000000e+00
  br i1 %5592, label %5593, label %5896

; <label>:5593                                    ; preds = %5555
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5596 = fmul fast float %5595, %5591
  %5597 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5598 = fadd fast float %5597, %5596
  %5599 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5600 = fadd fast float %5598, %5567
  %5601 = fmul fast float %5573, %5561
  %5602 = call float @dx.op.tertiary.f32(i32 46, float %5576, float %5564, float %5601)  ; FMad(a,b,c)
  %5603 = call float @dx.op.tertiary.f32(i32 46, float %5600, float %5599, float %5602)  ; FMad(a,b,c)
  %5604 = fsub fast float %5603, %5567
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5607 = fsub fast float %5604, %5606
  %5608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %5588, float %5589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %5588, float %5589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = fadd fast float %5613, %5609
  %5617 = fmul fast float %5616, 0x3F847AE140000000
  %5618 = fadd fast float %5614, %5610
  %5619 = fmul fast float %5618, 0x3F847AE140000000
  %5620 = fadd fast float %5615, %5611
  %5621 = fmul fast float %5620, 0x3F847AE140000000
  br label %5896

; <label>:5622                                    ; preds = %5451
  %5623 = and i32 %168, 1
  %5624 = icmp eq i32 %5623, 0
  br i1 %5624, label %5896, label %5625

; <label>:5625                                    ; preds = %5622
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5633 = extractvalue %dx.types.CBufRet.f32 %5628, 1
  %5634 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5636 = extractvalue %dx.types.CBufRet.f32 %5628, 3
  %5637 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5638 = fadd fast float %5635, %5541
  %5639 = fadd fast float %5636, %5542
  %5640 = fadd fast float %5637, %5543
  %5641 = fmul fast float %5638, %5627
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5639, float %5629, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5631, float %5642)  ; FMad(a,b,c)
  %5644 = fmul fast float %5638, %5632
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5639, float %5633, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5634, float %5645)  ; FMad(a,b,c)
  %5647 = fsub fast float %5643, %5635
  %5648 = fsub fast float %5646, %5636
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5653 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.i32 %5656, 0
  %5658 = extractvalue %dx.types.CBufRet.i32 %5656, 1
  %5659 = udiv i32 %5658, %5657
  %5660 = fsub fast float %5647, %5650
  %5661 = fsub fast float %5648, %5651
  %5662 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 35, float %5661, float 0.000000e+00)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 36, float %5662, float %5652)  ; FMin(a,b)
  %5665 = call float @dx.op.binary.f32(i32 36, float %5663, float %5653)  ; FMin(a,b)
  %5666 = add i32 %5657, -1
  %5667 = add i32 %5659, -1
  %5668 = fmul fast float %5664, %5655
  %5669 = fmul fast float %5665, %5655
  %5670 = fptoui float %5668 to i32
  %5671 = fptoui float %5669 to i32
  %5672 = call i32 @dx.op.binary.i32(i32 40, i32 %5670, i32 %5666)  ; UMin(a,b)
  %5673 = call i32 @dx.op.binary.i32(i32 40, i32 %5671, i32 %5667)  ; UMin(a,b)
  %5674 = mul i32 %5673, %5657
  %5675 = add i32 %5674, %5672
  %5676 = shl i32 %5675, 2
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5676, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = icmp eq i32 %5678, -1
  br i1 %5679, label %5896, label %5680

; <label>:5680                                    ; preds = %5625
  %5681 = mul i32 %5678, 148
  %5682 = add i32 %5681, 4
  %5683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = add i32 %5681, 8
  %5686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5685, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = add i32 %5681, 36
  %5689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5688, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.f32 %5689, 0
  %5691 = add i32 %5681, 60
  %5692 = add i32 %5681, 92
  %5693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5692, i32 undef)  ; BufferLoad(srv,index,wot)
  %5694 = extractvalue %dx.types.ResRet.i32 %5693, 0
  %5695 = add i32 %5681, 116
  %5696 = fsub fast float %5647, %5684
  %5697 = fsub fast float %5648, %5687
  %5698 = fmul fast float %5655, %5696
  %5699 = fmul fast float %5655, %5697
  %5700 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5705 = call float @dx.op.unary.f32(i32 83, float %5700)  ; DerivCoarseX(value)
  %5706 = call float @dx.op.unary.f32(i32 83, float %5702)  ; DerivCoarseX(value)
  %5707 = call float @dx.op.unary.f32(i32 84, float %5700)  ; DerivCoarseY(value)
  %5708 = call float @dx.op.unary.f32(i32 84, float %5702)  ; DerivCoarseY(value)
  %5709 = fmul fast float %5705, %5704
  %5710 = fmul fast float %5706, %5704
  %5711 = fmul fast float %5707, %5704
  %5712 = fmul fast float %5708, %5704
  %5713 = call float @dx.op.dot2.f32(i32 54, float %5711, float %5712, float %5711, float %5712)  ; Dot2(ax,ay,bx,by)
  %5714 = call float @dx.op.dot2.f32(i32 54, float %5709, float %5710, float %5709, float %5710)  ; Dot2(ax,ay,bx,by)
  %5715 = call float @dx.op.binary.f32(i32 35, float %5714, float %5713)  ; FMax(a,b)
  %5716 = call float @dx.op.unary.f32(i32 23, float %5715)  ; Log(value)
  %5717 = fmul fast float %5716, 5.000000e-01
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5720 = fadd fast float %5719, %5717
  %5721 = call float @dx.op.binary.f32(i32 35, float %5720, float 0.000000e+00)  ; FMax(a,b)
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5724 = fadd fast float %5723, %5721
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 3
  %5727 = fadd fast float %5724, %5726
  %5728 = add i32 %5694, 0
  %5729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5730 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5729, i32 0)  ; GetDimensions(handle,mipLevel)
  %5731 = extractvalue %dx.types.Dimensions %5730, 0
  %5732 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5731)  ; FirstbitLo(value)
  %5733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.i32 %5733, 1
  %5735 = sub nsw i32 %5734, %5732
  %5736 = sitofp i32 %5735 to float
  %5737 = fsub fast float %5727, %5736
  %5738 = call float @dx.op.binary.f32(i32 35, float %5737, float 0.000000e+00)  ; FMax(a,b)
  %5739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5729, %dx.types.Handle %27, float %5700, float %5702, float %5690, float undef, i32 0, i32 0, i32 undef, float %5738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 0
  %5741 = fcmp ule float %5740, 0x3FE0101020000000
  %5742 = extractvalue %dx.types.CBufRet.i32 %5733, 0
  %5743 = and i32 %5742, 128
  %5744 = icmp ne i32 %5743, 0
  %5745 = and i1 %5741, %5744
  br i1 %5745, label %5896, label %5746

; <label>:5746                                    ; preds = %5680
  %5747 = add i32 %5681, 20
  %5748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5747, i32 undef)  ; BufferLoad(srv,index,wot)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = add i32 %5681, 24
  %5751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5750, i32 undef)  ; BufferLoad(srv,index,wot)
  %5752 = extractvalue %dx.types.ResRet.f32 %5751, 0
  %5753 = add i32 %5681, 40
  %5754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5753, i32 undef)  ; BufferLoad(srv,index,wot)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = add i32 %5681, 96
  %5757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.i32 %5757, 0
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5761 = fmul fast float %5760, %5700
  %5762 = fmul fast float %5760, %5702
  %5763 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5764 = fadd fast float %5761, %5763
  %5765 = fadd fast float %5762, %5763
  %5766 = add i32 %5758, 0
  %5767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5768 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5767, i32 0)  ; GetDimensions(handle,mipLevel)
  %5769 = extractvalue %dx.types.Dimensions %5768, 0
  %5770 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5769)  ; FirstbitLo(value)
  %5771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.i32 %5771, 1
  %5773 = sub nsw i32 %5772, %5770
  %5774 = sitofp i32 %5773 to float
  %5775 = fsub fast float %5724, %5774
  %5776 = call float @dx.op.binary.f32(i32 35, float %5775, float 0.000000e+00)  ; FMax(a,b)
  %5777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5767, %dx.types.Handle %27, float %5764, float %5765, float %5755, float undef, i32 0, i32 0, i32 undef, float %5776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  %5779 = fmul fast float %5778, %5749
  %5780 = fadd fast float %5779, %5752
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5789 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5790 = fadd fast float %5786, %5647
  %5791 = fadd fast float %5788, %5648
  %5792 = fadd fast float %5780, %5789
  %5793 = fmul fast float %5790, %5782
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5783, float %5793)  ; FMad(a,b,c)
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5784, float %5794)  ; FMad(a,b,c)
  %5796 = fsub fast float %5795, %5789
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5799 = fsub fast float %5796, %5798
  %5800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.i32 %5800, 0
  %5802 = call i32 @dx.op.binary.i32(i32 40, i32 %5678, i32 %5801)  ; UMin(a,b)
  %5803 = mul i32 %5802, 36
  %5804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.i32 %5804, 0
  %5806 = add i32 %5803, 4
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = fmul fast float %5808, %5700
  %5810 = fmul fast float %5808, %5702
  %5811 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5812 = fadd fast float %5809, %5811
  %5813 = fadd fast float %5810, %5811
  %5814 = icmp eq i32 %5805, 0
  br i1 %5814, label %5883, label %5815

; <label>:5815                                    ; preds = %5746
  br label %5816

; <label>:5816                                    ; preds = %5873, %5815
  %5817 = phi float [ %5874, %5873 ], [ 0.000000e+00, %5815 ]
  %5818 = phi float [ %5875, %5873 ], [ 0.000000e+00, %5815 ]
  %5819 = phi float [ %5876, %5873 ], [ 0.000000e+00, %5815 ]
  %5820 = phi float [ %5877, %5873 ], [ 0.000000e+00, %5815 ]
  %5821 = phi float [ %5878, %5873 ], [ 0.000000e+00, %5815 ]
  %5822 = phi float [ %5879, %5873 ], [ 0.000000e+00, %5815 ]
  %5823 = phi i32 [ %5880, %5873 ], [ 0, %5815 ]
  %5824 = shl i32 %5823, 2
  %5825 = add i32 %5691, %5824
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = add i32 %5695, %5824
  %5829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.i32 %5829, 0
  %5831 = add i32 %5830, 0
  %5832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5831, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5833 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5832, i32 0)  ; GetDimensions(handle,mipLevel)
  %5834 = extractvalue %dx.types.Dimensions %5833, 0
  %5835 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5834)  ; FirstbitLo(value)
  %5836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.i32 %5836, 1
  %5838 = sub nsw i32 %5837, %5835
  %5839 = sitofp i32 %5838 to float
  %5840 = fsub fast float %5724, %5839
  %5841 = call float @dx.op.binary.f32(i32 35, float %5840, float 0.000000e+00)  ; FMax(a,b)
  %5842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5832, %dx.types.Handle %27, float %5812, float %5813, float %5827, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = fcmp fast ogt float %5843, 0.000000e+00
  br i1 %5844, label %5845, label %5873

; <label>:5845                                    ; preds = %5816
  %5846 = add i32 %5806, %5824
  %5847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.i32 %5847, 0
  %5849 = and i32 %5848, 32767
  %5850 = mul nuw nsw i32 %5849, 928
  %5851 = add nuw nsw i32 %5850, 48
  %5852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5851, i32 undef)  ; BufferLoad(srv,index,wot)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.ResRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.ResRet.f32 %5852, 2
  %5856 = add nuw nsw i32 %5850, 60
  %5857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = fmul fast float %5853, %5843
  %5862 = fmul fast float %5854, %5843
  %5863 = fmul fast float %5855, %5843
  %5864 = fadd fast float %5861, %5817
  %5865 = fadd fast float %5862, %5818
  %5866 = fadd fast float %5863, %5819
  %5867 = fmul fast float %5858, %5843
  %5868 = fmul fast float %5859, %5843
  %5869 = fmul fast float %5860, %5843
  %5870 = fadd fast float %5867, %5820
  %5871 = fadd fast float %5868, %5821
  %5872 = fadd fast float %5869, %5822
  br label %5873

; <label>:5873                                    ; preds = %5845, %5816
  %5874 = phi float [ %5864, %5845 ], [ %5817, %5816 ]
  %5875 = phi float [ %5865, %5845 ], [ %5818, %5816 ]
  %5876 = phi float [ %5866, %5845 ], [ %5819, %5816 ]
  %5877 = phi float [ %5870, %5845 ], [ %5820, %5816 ]
  %5878 = phi float [ %5871, %5845 ], [ %5821, %5816 ]
  %5879 = phi float [ %5872, %5845 ], [ %5822, %5816 ]
  %5880 = add nuw i32 %5823, 1
  %5881 = icmp eq i32 %5880, %5805
  br i1 %5881, label %5882, label %5816

; <label>:5882                                    ; preds = %5873
  br label %5883

; <label>:5883                                    ; preds = %5882, %5746
  %5884 = phi float [ 0.000000e+00, %5746 ], [ %5874, %5882 ]
  %5885 = phi float [ 0.000000e+00, %5746 ], [ %5875, %5882 ]
  %5886 = phi float [ 0.000000e+00, %5746 ], [ %5876, %5882 ]
  %5887 = phi float [ 0.000000e+00, %5746 ], [ %5877, %5882 ]
  %5888 = phi float [ 0.000000e+00, %5746 ], [ %5878, %5882 ]
  %5889 = phi float [ 0.000000e+00, %5746 ], [ %5879, %5882 ]
  %5890 = fadd fast float %5887, %5884
  %5891 = fmul fast float %5890, 0x3F847AE140000000
  %5892 = fadd fast float %5888, %5885
  %5893 = fmul fast float %5892, 0x3F847AE140000000
  %5894 = fadd fast float %5889, %5886
  %5895 = fmul fast float %5894, 0x3F847AE140000000
  br label %5896

; <label>:5896                                    ; preds = %5883, %5680, %5625, %5622, %5593, %5555
  %5897 = phi float [ %5607, %5593 ], [ -1.310720e+05, %5555 ], [ %5799, %5883 ], [ -1.310720e+05, %5625 ], [ -1.310720e+05, %5680 ], [ -1.310720e+05, %5622 ]
  %5898 = phi float [ %5617, %5593 ], [ 0.000000e+00, %5555 ], [ %5891, %5883 ], [ 0.000000e+00, %5625 ], [ 0.000000e+00, %5680 ], [ 0.000000e+00, %5622 ]
  %5899 = phi float [ %5619, %5593 ], [ 0.000000e+00, %5555 ], [ %5893, %5883 ], [ 0.000000e+00, %5625 ], [ 0.000000e+00, %5680 ], [ 0.000000e+00, %5622 ]
  %5900 = phi float [ %5621, %5593 ], [ 0.000000e+00, %5555 ], [ %5895, %5883 ], [ 0.000000e+00, %5625 ], [ 0.000000e+00, %5680 ], [ 0.000000e+00, %5622 ]
  %5901 = phi i1 [ true, %5593 ], [ false, %5555 ], [ true, %5883 ], [ false, %5625 ], [ false, %5680 ], [ false, %5622 ]
  %5902 = and i32 %168, 3
  %5903 = icmp eq i32 %5902, 1
  %5904 = select i1 %5903, float 1.000000e+00, float 0.000000e+00
  %5905 = fsub fast float %5897, %152
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = select i1 %5901, float %5906, float 1.000000e+00
  %5908 = fmul fast float %5907, %5904
  %5909 = icmp eq i32 %5902, 3
  %5910 = select i1 %5909, float 1.000000e+00, float %5908
  %5911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5910)  ; FMax(a,b)
  %5912 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  %5913 = fcmp fast une float %5912, 0.000000e+00
  %5914 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = call float @dx.op.unary.f32(i32 25, float %5914)  ; Rsqrt(value)
  br i1 %5913, label %5923, label %5916

; <label>:5916                                    ; preds = %5896
  %5917 = fmul fast float %5915, %150
  %5918 = fmul fast float %5915, %151
  %5919 = fmul fast float %5915, %152
  %5920 = fsub fast float -0.000000e+00, %5917
  %5921 = fsub fast float -0.000000e+00, %5918
  %5922 = fsub fast float -0.000000e+00, %5919
  br label %6091

; <label>:5923                                    ; preds = %5896
  %5924 = fmul fast float %150, %5915
  %5925 = fsub fast float -0.000000e+00, %5924
  %5926 = fmul fast float %151, %5915
  %5927 = fsub fast float -0.000000e+00, %5926
  %5928 = fmul fast float %152, %5915
  %5929 = fsub fast float -0.000000e+00, %5928
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5927, float %5929, float %100, float %102, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fmul fast float %5912, 2.500000e+00
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5912, 0x4013FFFFE0000000
  %5934 = fadd fast float %5933, 0xBFFFFFFFE0000000
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = fmul fast float %5912, 0x4004000020000000
  %5937 = fadd fast float %5936, 0xBFF8000040000000
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5940 = fmul fast float %5469, 1.000000e+01
  %5941 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5942 = fmul fast float %5941, 2.000000e+00
  %5943 = fsub fast float 3.000000e+00, %5942
  %5944 = fmul fast float %5941, %5941
  %5945 = fmul fast float %5944, %5943
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = fsub fast float 0x3FE3333340000000, %5526
  %5948 = fmul fast float %5947, 0x400AAAAAA0000000
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fmul fast float %5946, %5949
  %5951 = fmul fast float %5534, 0x3FEA2B8620000000
  %5952 = fmul fast float %5535, 0x3FEA2B8620000000
  %5953 = fmul fast float %5536, 0x3FEA2B8620000000
  %5954 = fadd fast float %5951, 0x3FC81DFBA0000000
  %5955 = fmul fast float %5954, %5534
  %5956 = fadd fast float %5955, 0x3F910E6020000000
  %5957 = fadd fast float %5952, 0x3FC81DFBA0000000
  %5958 = fmul fast float %5957, %5535
  %5959 = fadd fast float %5958, 0x3F910E6020000000
  %5960 = fadd fast float %5953, 0x3FC81DFBA0000000
  %5961 = fmul fast float %5960, %5536
  %5962 = fadd fast float %5961, 0x3F910E6020000000
  %5963 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5966 = fsub fast float %5963, %5534
  %5967 = fsub fast float %5964, %5535
  %5968 = fsub fast float %5965, %5536
  %5969 = fmul fast float %5966, %5939
  %5970 = fmul fast float %5969, %5950
  %5971 = fmul fast float %5967, %5939
  %5972 = fmul fast float %5971, %5950
  %5973 = fmul fast float %5968, %5939
  %5974 = fmul fast float %5973, %5950
  %5975 = fadd fast float %5970, %5534
  %5976 = fadd fast float %5972, %5535
  %5977 = fadd fast float %5974, %5536
  %5978 = fmul fast float %4887, %4887
  %5979 = fmul fast float %5978, %5978
  %5980 = fadd fast float %5935, 1.000000e+00
  %5981 = fsub fast float %5980, %5950
  %5982 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5983 = call float @dx.op.dot3.f32(i32 55, float %100, float %102, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5985 = fsub fast float 1.000000e+00, %5979
  %5986 = call float @dx.op.binary.f32(i32 36, float %5982, float %5985)  ; FMin(a,b)
  %5987 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5986, float %5987)  ; FMax(a,b)
  %5989 = fadd fast float %5984, 0xBFE4CCCCC0000000
  %5990 = fmul fast float %5989, 0x4006DB6DA0000000
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = fmul fast float %5991, 2.000000e+00
  %5993 = fsub fast float 3.000000e+00, %5992
  %5994 = bitcast float %5523 to i32
  %5995 = ashr i32 %5994, 1
  %5996 = add nsw i32 %5995, 532487669
  %5997 = bitcast i32 %5996 to float
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = bitcast float %5998 to i32
  %6000 = sub nsw i32 2129859010, %5999
  %6001 = bitcast i32 %6000 to float
  %6002 = fmul fast float %6001, 2.000000e+00
  %6003 = bitcast float %5524 to i32
  %6004 = ashr i32 %6003, 1
  %6005 = add nsw i32 %6004, 532487669
  %6006 = bitcast i32 %6005 to float
  %6007 = fsub fast float 1.000000e+00, %6006
  %6008 = bitcast float %6007 to i32
  %6009 = sub nsw i32 2129859010, %6008
  %6010 = bitcast i32 %6009 to float
  %6011 = fmul fast float %6010, 2.000000e+00
  %6012 = bitcast float %5525 to i32
  %6013 = ashr i32 %6012, 1
  %6014 = add nsw i32 %6013, 532487669
  %6015 = bitcast i32 %6014 to float
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = bitcast float %6016 to i32
  %6018 = sub nsw i32 2129859010, %6017
  %6019 = bitcast i32 %6018 to float
  %6020 = fmul fast float %6019, 2.000000e+00
  %6021 = fsub fast float 0x4002A9FBE0000000, %6002
  %6022 = fadd fast float %6002, 0x3FD54FDF00000000
  %6023 = bitcast float %6022 to i32
  %6024 = sub nsw i32 2129859010, %6023
  %6025 = bitcast i32 %6024 to float
  %6026 = fmul fast float %6025, %6021
  %6027 = fmul fast float %6026, %6026
  %6028 = fsub fast float 0x4002A9FBE0000000, %6011
  %6029 = fadd fast float %6011, 0x3FD54FDF00000000
  %6030 = bitcast float %6029 to i32
  %6031 = sub nsw i32 2129859010, %6030
  %6032 = bitcast i32 %6031 to float
  %6033 = fmul fast float %6032, %6028
  %6034 = fmul fast float %6033, %6033
  %6035 = fsub fast float 0x4002A9FBE0000000, %6020
  %6036 = fadd fast float %6020, 0x3FD54FDF00000000
  %6037 = bitcast float %6036 to i32
  %6038 = sub nsw i32 2129859010, %6037
  %6039 = bitcast i32 %6038 to float
  %6040 = fmul fast float %6039, %6035
  %6041 = fmul fast float %6040, %6040
  %6042 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6027)  ; FMax(a,b)
  %6043 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6034)  ; FMax(a,b)
  %6044 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6041)  ; FMax(a,b)
  %6045 = fsub fast float 1.000000e+00, %5930
  %6046 = fadd fast float %6045, %5946
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6048 = fsub fast float 1.000000e+00, %5910
  %6049 = fmul fast float %5988, %6048
  %6050 = fmul fast float %5991, %5991
  %6051 = fmul fast float %6050, %6049
  %6052 = fmul fast float %6051, %5993
  %6053 = fmul fast float %6048, 0xBFE99999A0000000
  %6054 = fmul fast float %6053, %5939
  %6055 = fmul fast float %6054, %5950
  %6056 = fadd fast float %6055, 1.000000e+00
  %6057 = fadd fast float %5526, -1.000000e+00
  %6058 = fmul fast float %6056, %6057
  %6059 = fadd fast float %6058, 1.000000e+00
  %6060 = fsub fast float %6042, %5523
  %6061 = fsub fast float %6043, %5524
  %6062 = fsub fast float %6044, %5525
  %6063 = fmul fast float %6052, %6060
  %6064 = fmul fast float %6052, %6061
  %6065 = fmul fast float %6052, %6062
  %6066 = fadd fast float %6063, %5523
  %6067 = fadd fast float %6064, %5524
  %6068 = fadd fast float %6065, %5525
  %6069 = fsub fast float %100, %5452
  %6070 = fsub fast float %102, %5453
  %6071 = fsub fast float %104, %5454
  %6072 = fmul fast float %6052, %6069
  %6073 = fmul fast float %6052, %6070
  %6074 = fmul fast float %6052, %6071
  %6075 = fadd fast float %6072, %5452
  %6076 = fadd fast float %6073, %5453
  %6077 = fadd fast float %6074, %5454
  %6078 = fmul fast float %6052, %6047
  %6079 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6080 = fsub fast float 1.000000e+00, %6079
  %6081 = fmul fast float %6078, %6080
  %6082 = fadd fast float %6081, %6079
  %6083 = fsub fast float 1.000000e+00, %5464
  %6084 = fmul fast float %6052, %6083
  %6085 = fadd fast float %6084, %5464
  %6086 = call float @dx.op.dot3.f32(i32 55, float %6075, float %6076, float %6077, float %6075, float %6076, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = call float @dx.op.unary.f32(i32 25, float %6086)  ; Rsqrt(value)
  %6088 = fmul fast float %6075, %6087
  %6089 = fmul fast float %6076, %6087
  %6090 = fmul fast float %6077, %6087
  br label %6091

; <label>:6091                                    ; preds = %5923, %5916
  %6092 = phi float [ %5922, %5916 ], [ %5929, %5923 ]
  %6093 = phi float [ %5921, %5916 ], [ %5927, %5923 ]
  %6094 = phi float [ %5920, %5916 ], [ %5925, %5923 ]
  %6095 = phi float [ %5919, %5916 ], [ %5928, %5923 ]
  %6096 = phi float [ %5918, %5916 ], [ %5926, %5923 ]
  %6097 = phi float [ %5917, %5916 ], [ %5924, %5923 ]
  %6098 = phi float [ %5534, %5916 ], [ %5975, %5923 ]
  %6099 = phi float [ %5535, %5916 ], [ %5976, %5923 ]
  %6100 = phi float [ %5536, %5916 ], [ %5977, %5923 ]
  %6101 = phi float [ %5523, %5916 ], [ %6066, %5923 ]
  %6102 = phi float [ %5524, %5916 ], [ %6067, %5923 ]
  %6103 = phi float [ %5525, %5916 ], [ %6068, %5923 ]
  %6104 = phi float [ %5452, %5916 ], [ %6088, %5923 ]
  %6105 = phi float [ %5453, %5916 ], [ %6089, %5923 ]
  %6106 = phi float [ %5454, %5916 ], [ %6090, %5923 ]
  %6107 = phi float [ %5526, %5916 ], [ %6082, %5923 ]
  %6108 = phi float [ %5464, %5916 ], [ %6085, %5923 ]
  %6109 = select i1 %192, float 0.000000e+00, float %5489
  %6110 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %6094, float %6093, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6112 = call float @dx.op.binary.f32(i32 36, float %4887, float 1.000000e+00)  ; FMin(a,b)
  %6113 = fsub fast float 1.000000e+00, %4887
  %6114 = bitcast float %6113 to i32
  %6115 = sub nsw i32 2129859010, %6114
  %6116 = select i1 %192, float 0.000000e+00, float %6103
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6094, float %6093, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = call float @dx.op.dot3.f32(i32 55, float %6097, float %6096, float %6095, float %6104, float %6105, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = fmul fast float %6119, 2.000000e+00
  %6121 = fmul fast float %6120, %6104
  %6122 = fmul fast float %6120, %6105
  %6123 = fmul fast float %6120, %6106
  %6124 = fsub fast float %6097, %6121
  %6125 = fsub fast float %6096, %6122
  %6126 = fsub fast float %6095, %6123
  %6127 = fsub fast float 1.000000e+00, %6108
  %6128 = bitcast float %6127 to i32
  %6129 = sub nsw i32 2129859010, %6128
  %6130 = bitcast i32 %6115 to float
  %6131 = bitcast i32 %6129 to float
  %6132 = fmul fast float %5462, %5455
  %6133 = fmul fast float %5462, %5456
  %6134 = fmul fast float %5462, %5457
  %6135 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %6136 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = fcmp fast oeq float %6136, 0.000000e+00
  %6138 = fcmp fast oeq float %6135, 0.000000e+00
  %6139 = or i1 %6138, %6137
  br i1 %6139, label %6169, label %6140

; <label>:6140                                    ; preds = %6091
  %6141 = fsub fast float -0.000000e+00, %55
  %6142 = fsub fast float -0.000000e+00, %53
  %6143 = call float @dx.op.unary.f32(i32 24, float %6136)  ; Sqrt(value)
  %6144 = fdiv fast float %6143, %6135
  %6145 = fcmp fast ogt float %6144, 0x3FFB6F8900000000
  %6146 = select i1 %6145, float 0x3FFB6F8900000000, float %6144
  %6147 = fmul fast float %6146, 0x3FE8A23460000000
  %6148 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6149 = call float @dx.op.binary.f32(i32 35, float %6146, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6150 = fmul fast float %6148, %6135
  %6151 = fmul fast float %6149, 0x3FF279A740000000
  %6152 = fadd fast float %6151, -1.000000e+00
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6141, float %6142, float %54, float %6141, float %6142, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = call float @dx.op.unary.f32(i32 25, float %6153)  ; Rsqrt(value)
  %6155 = fmul fast float %6154, %6141
  %6156 = fmul fast float %6154, %6142
  %6157 = fmul fast float %6154, %54
  %6158 = fmul fast float %6152, %6152
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = fmul fast float %6149, 0x40005F8BE0000000
  %6161 = fsub fast float 0x400C5BF8A0000000, %6160
  %6162 = fdiv fast float %6150, %6161
  %6163 = fmul fast float %6162, 0x3FEE31C3C0000000
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %6149, 0x3FDACB7480000000
  %6166 = fadd fast float %6165, 0xBFD7347680000000
  %6167 = fmul fast float %6166, %6162
  %6168 = fmul fast float %6167, %6159
  br label %6169

; <label>:6169                                    ; preds = %6140, %6091
  %6170 = phi float [ %6155, %6140 ], [ 0.000000e+00, %6091 ]
  %6171 = phi float [ %6156, %6140 ], [ 0.000000e+00, %6091 ]
  %6172 = phi float [ %6157, %6140 ], [ 0.000000e+00, %6091 ]
  %6173 = phi float [ %6164, %6140 ], [ 0.000000e+00, %6091 ]
  %6174 = phi float [ %6168, %6140 ], [ 0.000000e+00, %6091 ]
  %6175 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6176 = fmul fast float %6175, %6175
  %6177 = fmul fast float %6176, 0x3FEE471020000000
  %6178 = fadd fast float %6177, 0xBFD42F6020000000
  %6179 = fmul fast float %6135, 0x3FD20DD760000000
  %6180 = fmul fast float %6178, %6174
  %6181 = fmul fast float %6173, 0x3FDF454380000000
  %6182 = fmul fast float %6181, %6175
  %6183 = fadd fast float %6182, %6179
  %6184 = fadd fast float %6183, %6180
  %6185 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float %6124, float %6125, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6186 = fmul fast float %6185, 0x3FDF454380000000
  %6187 = fmul fast float %6185, %6185
  %6188 = fmul fast float %6187, 0x3FEE471020000000
  %6189 = fadd fast float %6188, 0xBFD42F6020000000
  %6190 = call float @dx.op.dot3.f32(i32 55, float %6135, float %6173, float %6174, float 0x3FD20DD760000000, float %6186, float %6189)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %6192 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fcmp fast oeq float %6192, 0.000000e+00
  %6194 = fcmp fast oeq float %6191, 0.000000e+00
  %6195 = or i1 %6194, %6193
  br i1 %6195, label %6225, label %6196

; <label>:6196                                    ; preds = %6169
  %6197 = fsub fast float -0.000000e+00, %51
  %6198 = fsub fast float -0.000000e+00, %49
  %6199 = call float @dx.op.unary.f32(i32 24, float %6192)  ; Sqrt(value)
  %6200 = fdiv fast float %6199, %6191
  %6201 = fcmp fast ogt float %6200, 0x3FFB6F8900000000
  %6202 = select i1 %6201, float 0x3FFB6F8900000000, float %6200
  %6203 = fmul fast float %6202, 0x3FE8A23460000000
  %6204 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6205 = call float @dx.op.binary.f32(i32 35, float %6202, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6206 = fmul fast float %6204, %6191
  %6207 = fmul fast float %6205, 0x3FF279A740000000
  %6208 = fadd fast float %6207, -1.000000e+00
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6197, float %6198, float %50, float %6197, float %6198, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = call float @dx.op.unary.f32(i32 25, float %6209)  ; Rsqrt(value)
  %6211 = fmul fast float %6210, %6197
  %6212 = fmul fast float %6210, %6198
  %6213 = fmul fast float %6210, %50
  %6214 = fmul fast float %6208, %6208
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6205, 0x40005F8BE0000000
  %6217 = fsub fast float 0x400C5BF8A0000000, %6216
  %6218 = fdiv fast float %6206, %6217
  %6219 = fmul fast float %6218, 0x3FEE31C3C0000000
  %6220 = fmul fast float %6219, %6215
  %6221 = fmul fast float %6205, 0x3FDACB7480000000
  %6222 = fadd fast float %6221, 0xBFD7347680000000
  %6223 = fmul fast float %6222, %6218
  %6224 = fmul fast float %6223, %6215
  br label %6225

; <label>:6225                                    ; preds = %6196, %6169
  %6226 = phi float [ %6211, %6196 ], [ 0.000000e+00, %6169 ]
  %6227 = phi float [ %6212, %6196 ], [ 0.000000e+00, %6169 ]
  %6228 = phi float [ %6213, %6196 ], [ 0.000000e+00, %6169 ]
  %6229 = phi float [ %6220, %6196 ], [ 0.000000e+00, %6169 ]
  %6230 = phi float [ %6224, %6196 ], [ 0.000000e+00, %6169 ]
  %6231 = call float @dx.op.dot3.f32(i32 55, float %6226, float %6227, float %6228, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = fmul fast float %6231, %6231
  %6233 = fmul fast float %6232, 0x3FEE471020000000
  %6234 = fadd fast float %6233, 0xBFD42F6020000000
  %6235 = fmul fast float %6191, 0x3FD20DD760000000
  %6236 = fmul fast float %6234, %6230
  %6237 = fmul fast float %6229, 0x3FDF454380000000
  %6238 = fmul fast float %6237, %6231
  %6239 = fadd fast float %6238, %6235
  %6240 = fadd fast float %6239, %6236
  %6241 = call float @dx.op.dot3.f32(i32 55, float %6226, float %6227, float %6228, float %6124, float %6125, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = fmul fast float %6241, 0x3FDF454380000000
  %6243 = fmul fast float %6241, %6241
  %6244 = fmul fast float %6243, 0x3FEE471020000000
  %6245 = fadd fast float %6244, 0xBFD42F6020000000
  %6246 = call float @dx.op.dot3.f32(i32 55, float %6191, float %6229, float %6230, float 0x3FD20DD760000000, float %6242, float %6245)  ; Dot3(ax,ay,az,bx,by,bz)
  %6247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %6248 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %6249 = fcmp fast oeq float %6248, 0.000000e+00
  %6250 = fcmp fast oeq float %6247, 0.000000e+00
  %6251 = or i1 %6250, %6249
  br i1 %6251, label %6281, label %6252

; <label>:6252                                    ; preds = %6225
  %6253 = fsub fast float -0.000000e+00, %47
  %6254 = fsub fast float -0.000000e+00, %45
  %6255 = call float @dx.op.unary.f32(i32 24, float %6248)  ; Sqrt(value)
  %6256 = fdiv fast float %6255, %6247
  %6257 = fcmp fast ogt float %6256, 0x3FFB6F8900000000
  %6258 = select i1 %6257, float 0x3FFB6F8900000000, float %6256
  %6259 = fmul fast float %6258, 0x3FE8A23460000000
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = call float @dx.op.binary.f32(i32 35, float %6258, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6262 = fmul fast float %6260, %6247
  %6263 = fmul fast float %6261, 0x3FF279A740000000
  %6264 = fadd fast float %6263, -1.000000e+00
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %46, float %6253, float %6254, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = call float @dx.op.unary.f32(i32 25, float %6265)  ; Rsqrt(value)
  %6267 = fmul fast float %6266, %6253
  %6268 = fmul fast float %6266, %6254
  %6269 = fmul fast float %6266, %46
  %6270 = fmul fast float %6264, %6264
  %6271 = fsub fast float 1.000000e+00, %6270
  %6272 = fmul fast float %6261, 0x40005F8BE0000000
  %6273 = fsub fast float 0x400C5BF8A0000000, %6272
  %6274 = fdiv fast float %6262, %6273
  %6275 = fmul fast float %6274, 0x3FEE31C3C0000000
  %6276 = fmul fast float %6275, %6271
  %6277 = fmul fast float %6261, 0x3FDACB7480000000
  %6278 = fadd fast float %6277, 0xBFD7347680000000
  %6279 = fmul fast float %6278, %6274
  %6280 = fmul fast float %6279, %6271
  br label %6281

; <label>:6281                                    ; preds = %6252, %6225
  %6282 = phi float [ %6267, %6252 ], [ 0.000000e+00, %6225 ]
  %6283 = phi float [ %6268, %6252 ], [ 0.000000e+00, %6225 ]
  %6284 = phi float [ %6269, %6252 ], [ 0.000000e+00, %6225 ]
  %6285 = phi float [ %6276, %6252 ], [ 0.000000e+00, %6225 ]
  %6286 = phi float [ %6280, %6252 ], [ 0.000000e+00, %6225 ]
  %6287 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = fmul fast float %6287, %6287
  %6289 = fmul fast float %6288, 0x3FEE471020000000
  %6290 = fadd fast float %6289, 0xBFD42F6020000000
  %6291 = fmul fast float %6247, 0x3FD20DD760000000
  %6292 = fmul fast float %6290, %6286
  %6293 = fmul fast float %6285, 0x3FDF454380000000
  %6294 = fmul fast float %6293, %6287
  %6295 = fadd fast float %6294, %6291
  %6296 = fadd fast float %6295, %6292
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6124, float %6125, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = fmul fast float %6297, 0x3FDF454380000000
  %6299 = fmul fast float %6297, %6297
  %6300 = fmul fast float %6299, 0x3FEE471020000000
  %6301 = fadd fast float %6300, 0xBFD42F6020000000
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6247, float %6285, float %6286, float 0x3FD20DD760000000, float %6298, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = call float @dx.op.binary.f32(i32 35, float %6184, float 0.000000e+00)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float %6240, float 0.000000e+00)  ; FMax(a,b)
  %6305 = call float @dx.op.binary.f32(i32 35, float %6296, float 0.000000e+00)  ; FMax(a,b)
  %6306 = call float @dx.op.binary.f32(i32 35, float %6190, float 0.000000e+00)  ; FMax(a,b)
  %6307 = call float @dx.op.binary.f32(i32 35, float %6246, float 0.000000e+00)  ; FMax(a,b)
  %6308 = call float @dx.op.binary.f32(i32 35, float %6302, float 0.000000e+00)  ; FMax(a,b)
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = call float @dx.op.binary.f32(i32 36, float %5502, float %6310)  ; FMin(a,b)
  %6312 = fsub fast float 1.000000e+00, %6112
  %6313 = fmul fast float %6311, %6312
  %6314 = fsub fast float 1.000000e+00, %6313
  %6315 = bitcast float %6314 to i32
  %6316 = sub nsw i32 2129859010, %6315
  %6317 = bitcast i32 %6316 to float
  %6318 = call float @dx.op.binary.f32(i32 36, float %5503, float %6310)  ; FMin(a,b)
  %6319 = fmul fast float %6318, %6312
  %6320 = fsub fast float 1.000000e+00, %6319
  %6321 = bitcast float %6320 to i32
  %6322 = sub nsw i32 2129859010, %6321
  %6323 = bitcast i32 %6322 to float
  %6324 = call float @dx.op.binary.f32(i32 36, float %5504, float %6310)  ; FMin(a,b)
  %6325 = fmul fast float %6324, %6312
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = bitcast float %6326 to i32
  %6328 = sub nsw i32 2129859010, %6327
  %6329 = bitcast i32 %6328 to float
  %6330 = fmul fast float %6303, %6112
  %6331 = fmul fast float %6330, %6317
  %6332 = fmul fast float %6304, %6112
  %6333 = fmul fast float %6332, %6323
  %6334 = fmul fast float %6305, %6112
  %6335 = fmul fast float %6334, %6329
  %6336 = call float @dx.op.binary.f32(i32 36, float %5487, float %6310)  ; FMin(a,b)
  %6337 = fmul fast float %6336, %6312
  %6338 = fsub fast float 1.000000e+00, %6337
  %6339 = bitcast float %6338 to i32
  %6340 = sub nsw i32 2129859010, %6339
  %6341 = bitcast i32 %6340 to float
  %6342 = call float @dx.op.binary.f32(i32 36, float %5488, float %6310)  ; FMin(a,b)
  %6343 = fmul fast float %6342, %6312
  %6344 = fsub fast float 1.000000e+00, %6343
  %6345 = bitcast float %6344 to i32
  %6346 = sub nsw i32 2129859010, %6345
  %6347 = bitcast i32 %6346 to float
  %6348 = call float @dx.op.binary.f32(i32 36, float %6109, float %6310)  ; FMin(a,b)
  %6349 = fmul fast float %6348, %6312
  %6350 = fsub fast float 1.000000e+00, %6349
  %6351 = bitcast float %6350 to i32
  %6352 = sub nsw i32 2129859010, %6351
  %6353 = bitcast i32 %6352 to float
  %6354 = fmul fast float %6306, %6112
  %6355 = fmul fast float %6354, %6341
  %6356 = fmul fast float %6307, %6112
  %6357 = fmul fast float %6356, %6347
  %6358 = fmul fast float %6308, %6112
  %6359 = fmul fast float %6358, %6353
  %6360 = call float @dx.op.dot3.f32(i32 55, float %6331, float %6333, float %6335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6361 = select i1 %192, float 0.000000e+00, float %6331
  %6362 = select i1 %192, float %6360, float %6333
  %6363 = select i1 %192, float 0.000000e+00, float %6335
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6355, float %6357, float %6359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = select i1 %192, float 0.000000e+00, float %6355
  %6366 = select i1 %192, float %6364, float %6357
  %6367 = select i1 %192, float 0.000000e+00, float %6359
  %6368 = getelementptr [2 x float], [2 x float]* %85, i32 0, i32 0
  %6369 = getelementptr [2 x float], [2 x float]* %71, i32 0, i32 0
  %6370 = getelementptr [2 x float], [2 x float]* %72, i32 0, i32 0
  %6371 = getelementptr [2 x float], [2 x float]* %73, i32 0, i32 0
  %6372 = getelementptr [2 x float], [2 x float]* %83, i32 0, i32 0
  %6373 = getelementptr [2 x float], [2 x float]* %74, i32 0, i32 0
  %6374 = getelementptr [2 x float], [2 x float]* %75, i32 0, i32 0
  %6375 = getelementptr [2 x float], [2 x float]* %76, i32 0, i32 0
  %6376 = getelementptr [2 x float], [2 x float]* %84, i32 0, i32 0
  store float %5502, float* %6369, align 4
  store float %5503, float* %6370, align 4
  store float %5504, float* %6371, align 4
  store float %3206, float* %6372, align 4
  store float %4879, float* %6373, align 4
  store float %4880, float* %6374, align 4
  store float %4881, float* %6375, align 4
  store float 0.000000e+00, float* %6376, align 4
  store float %6111, float* %6368, align 4
  %6377 = getelementptr [2 x float], [2 x float]* %85, i32 0, i32 1
  %6378 = getelementptr [2 x float], [2 x float]* %71, i32 0, i32 1
  %6379 = getelementptr [2 x float], [2 x float]* %72, i32 0, i32 1
  %6380 = getelementptr [2 x float], [2 x float]* %73, i32 0, i32 1
  %6381 = getelementptr [2 x float], [2 x float]* %83, i32 0, i32 1
  %6382 = getelementptr [2 x float], [2 x float]* %74, i32 0, i32 1
  %6383 = getelementptr [2 x float], [2 x float]* %75, i32 0, i32 1
  %6384 = getelementptr [2 x float], [2 x float]* %76, i32 0, i32 1
  %6385 = getelementptr [2 x float], [2 x float]* %84, i32 0, i32 1
  store float %6098, float* %6378, align 4
  store float %6099, float* %6379, align 4
  store float %6100, float* %6380, align 4
  store float %5462, float* %6381, align 4
  store float %5455, float* %6382, align 4
  store float %5456, float* %6383, align 4
  store float %5457, float* %6384, align 4
  store float %5466, float* %6385, align 4
  store float %6118, float* %6377, align 4
  %6386 = getelementptr [2 x float], [2 x float]* %77, i32 0, i32 0
  %6387 = getelementptr [2 x float], [2 x float]* %78, i32 0, i32 0
  %6388 = getelementptr [2 x float], [2 x float]* %79, i32 0, i32 0
  store float %6365, float* %6386, align 4
  store float %6366, float* %6387, align 4
  store float %6367, float* %6388, align 4
  %6389 = getelementptr [2 x float], [2 x float]* %77, i32 0, i32 1
  %6390 = getelementptr [2 x float], [2 x float]* %78, i32 0, i32 1
  %6391 = getelementptr [2 x float], [2 x float]* %79, i32 0, i32 1
  store float %6365, float* %6389, align 4
  store float %6366, float* %6390, align 4
  store float %6367, float* %6391, align 4
  %6392 = fmul fast float %6118, 9.843750e-01
  %6393 = fmul fast float %6107, 9.843750e-01
  %6394 = fadd fast float %6392, 7.812500e-03
  %6395 = fadd fast float %6393, 7.812500e-03
  %6396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6394, float %6395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 2
  %6398 = extractvalue %dx.types.ResRet.f32 %6396, 3
  %6399 = fmul fast float %6397, %6101
  %6400 = fmul fast float %6397, %6102
  %6401 = fmul fast float %6397, %6116
  %6402 = fadd fast float %6399, %6398
  %6403 = fadd fast float %6400, %6398
  %6404 = fadd fast float %6401, %6398
  %6405 = fcmp fast ogt float %5465, 0.000000e+00
  br i1 %6405, label %6406, label %6432

; <label>:6406                                    ; preds = %6281
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5465, float %6118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = fadd fast float %6408, -5.000000e-01
  %6412 = fadd fast float %6409, -5.000000e-01
  %6413 = fadd fast float %6410, -5.000000e-01
  %6414 = fsub fast float 1.000000e+00, %6101
  %6415 = fsub fast float 1.000000e+00, %6102
  %6416 = fsub fast float 1.000000e+00, %6116
  %6417 = fmul fast float %6101, 4.000000e+00
  %6418 = fmul fast float %6417, %6414
  %6419 = fmul fast float %6418, %6411
  %6420 = fmul fast float %6102, 4.000000e+00
  %6421 = fmul fast float %6420, %6415
  %6422 = fmul fast float %6421, %6412
  %6423 = fmul fast float %6116, 4.000000e+00
  %6424 = fmul fast float %6423, %6416
  %6425 = fmul fast float %6424, %6413
  %6426 = fadd fast float %6419, %6402
  %6427 = fadd fast float %6422, %6403
  %6428 = fadd fast float %6425, %6404
  %6429 = call float @dx.op.unary.f32(i32 7, float %6426)  ; Saturate(value)
  %6430 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  %6431 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  br label %6432

; <label>:6432                                    ; preds = %6406, %6281
  %6433 = phi float [ %6429, %6406 ], [ %6402, %6281 ]
  %6434 = phi float [ %6430, %6406 ], [ %6403, %6281 ]
  %6435 = phi float [ %6431, %6406 ], [ %6404, %6281 ]
  %6436 = getelementptr [2 x float], [2 x float]* %80, i32 0, i32 1
  %6437 = getelementptr [2 x float], [2 x float]* %81, i32 0, i32 1
  %6438 = getelementptr [2 x float], [2 x float]* %82, i32 0, i32 1
  store float %6433, float* %6436, align 4
  store float %6434, float* %6437, align 4
  store float %6435, float* %6438, align 4
  %6439 = call float @dx.op.binary.f32(i32 35, float %6434, float %6435)  ; FMax(a,b)
  %6440 = call float @dx.op.binary.f32(i32 35, float %6433, float %6439)  ; FMax(a,b)
  %6441 = fsub fast float 1.000000e+00, %6440
  %6442 = getelementptr inbounds [2 x float], [2 x float]* %86, i32 0, i32 1
  store float %6441, float* %6442, align 4, !tbaa !75, !noalias !79
  %6443 = fmul fast float %6111, 9.843750e-01
  %6444 = fmul fast float %5490, 9.843750e-01
  %6445 = fadd fast float %6443, 7.812500e-03
  %6446 = fadd fast float %6444, 7.812500e-03
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6445, float %6446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 3
  %6450 = fmul fast float %6448, %5487
  %6451 = fmul fast float %6448, %5488
  %6452 = fmul fast float %6448, %6109
  %6453 = fadd fast float %6450, %6449
  %6454 = fadd fast float %6451, %6449
  %6455 = fadd fast float %6452, %6449
  %6456 = getelementptr [2 x float], [2 x float]* %80, i32 0, i32 0
  %6457 = getelementptr [2 x float], [2 x float]* %81, i32 0, i32 0
  %6458 = getelementptr [2 x float], [2 x float]* %82, i32 0, i32 0
  store float %6453, float* %6456, align 4
  store float %6454, float* %6457, align 4
  store float %6455, float* %6458, align 4
  %6459 = call float @dx.op.binary.f32(i32 35, float %6454, float %6455)  ; FMax(a,b)
  %6460 = call float @dx.op.binary.f32(i32 35, float %6453, float %6459)  ; FMax(a,b)
  %6461 = fsub fast float 1.000000e+00, %6460
  %6462 = getelementptr inbounds [2 x float], [2 x float]* %86, i32 0, i32 0
  store float %6461, float* %6462, align 4, !tbaa !75, !noalias !79
  br label %6463

; <label>:6463                                    ; preds = %6577, %6432
  %6464 = phi float [ %6636, %6577 ], [ %6118, %6432 ]
  %6465 = phi float [ %6634, %6577 ], [ 0.000000e+00, %6432 ]
  %6466 = phi float [ %6632, %6577 ], [ 0.000000e+00, %6432 ]
  %6467 = phi float [ %6630, %6577 ], [ 0.000000e+00, %6432 ]
  %6468 = phi float [ %6628, %6577 ], [ %6435, %6432 ]
  %6469 = phi float [ %6626, %6577 ], [ %6434, %6432 ]
  %6470 = phi float [ %6624, %6577 ], [ %6433, %6432 ]
  %6471 = phi float [ %6622, %6577 ], [ %6367, %6432 ]
  %6472 = phi float [ %6620, %6577 ], [ %6366, %6432 ]
  %6473 = phi float [ %6618, %6577 ], [ %6365, %6432 ]
  %6474 = phi float [ %6616, %6577 ], [ 0.000000e+00, %6432 ]
  %6475 = phi float [ %6614, %6577 ], [ 0.000000e+00, %6432 ]
  %6476 = phi float [ %6612, %6577 ], [ 0.000000e+00, %6432 ]
  %6477 = phi float [ %6610, %6577 ], [ %5466, %6432 ]
  %6478 = phi float [ %6608, %6577 ], [ %6441, %6432 ]
  %6479 = phi float [ %6606, %6577 ], [ %5457, %6432 ]
  %6480 = phi float [ %6604, %6577 ], [ %5456, %6432 ]
  %6481 = phi float [ %6602, %6577 ], [ %5455, %6432 ]
  %6482 = phi float [ %6600, %6577 ], [ %5462, %6432 ]
  %6483 = phi float [ %6598, %6577 ], [ %6100, %6432 ]
  %6484 = phi float [ %6596, %6577 ], [ %6099, %6432 ]
  %6485 = phi float [ %6594, %6577 ], [ %6098, %6432 ]
  %6486 = phi float [ %6592, %6577 ], [ 1.000000e+00, %6432 ]
  %6487 = phi float [ %6587, %6577 ], [ 1.000000e+00, %6432 ]
  %6488 = phi float [ %6582, %6577 ], [ 1.000000e+00, %6432 ]
  %6489 = phi i32 [ %6575, %6577 ], [ 1, %6432 ]
  %6490 = phi float [ %6572, %6577 ], [ %6132, %6432 ]
  %6491 = phi float [ %6573, %6577 ], [ %6133, %6432 ]
  %6492 = phi float [ %6574, %6577 ], [ %6134, %6432 ]
  %6493 = phi float [ %6566, %6577 ], [ 0.000000e+00, %6432 ]
  %6494 = phi float [ %6567, %6577 ], [ 0.000000e+00, %6432 ]
  %6495 = phi float [ %6568, %6577 ], [ 0.000000e+00, %6432 ]
  %6496 = fmul fast float %6486, %6486
  %6497 = fmul fast float %6487, %6487
  %6498 = fmul fast float %6488, %6488
  %6499 = icmp ne i32 %6489, 1
  %6500 = fmul fast float %6481, %6486
  %6501 = fmul fast float %6480, %6487
  %6502 = fmul fast float %6479, %6488
  %6503 = select i1 %6499, float %6500, float 0.000000e+00
  %6504 = select i1 %6499, float %6501, float 0.000000e+00
  %6505 = select i1 %6499, float %6502, float 0.000000e+00
  %6506 = call float @dx.op.dot3.f32(i32 55, float %6485, float %6484, float %6483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6507 = fcmp fast ogt float %6506, 0x3E7FF19E20000000
  %6508 = fdiv fast float 1.000000e+00, %6506
  %6509 = select i1 %6507, float %6508, float 0.000000e+00
  %6510 = fmul fast float %6509, %6485
  %6511 = fmul fast float %6509, %6484
  %6512 = fmul fast float %6509, %6483
  %6513 = fadd fast float %6510, -1.000000e+00
  %6514 = fadd fast float %6511, -1.000000e+00
  %6515 = fadd fast float %6512, -1.000000e+00
  %6516 = fmul fast float %6513, 5.000000e-01
  %6517 = fmul fast float %6514, 5.000000e-01
  %6518 = fmul fast float %6515, 5.000000e-01
  %6519 = fadd fast float %6516, 1.000000e+00
  %6520 = fadd fast float %6517, 1.000000e+00
  %6521 = fadd fast float %6518, 1.000000e+00
  %6522 = fmul fast float %6470, %6473
  %6523 = fmul fast float %6469, %6472
  %6524 = fmul fast float %6468, %6471
  %6525 = fsub fast float 1.000000e+00, %6464
  %6526 = bitcast float %6525 to i32
  %6527 = sitofp i32 %6526 to float
  %6528 = fmul fast float %6527, 5.000000e+00
  %6529 = fadd fast float %6528, 0xC1EFBF8940000000
  %6530 = fptosi float %6529 to i32
  %6531 = bitcast i32 %6530 to float
  %6532 = fmul fast float %6531, %6477
  %6533 = fmul fast float %6519, %6478
  %6534 = fmul fast float %6533, %6532
  %6535 = fmul fast float %6520, %6478
  %6536 = fmul fast float %6535, %6532
  %6537 = fmul fast float %6521, %6478
  %6538 = fmul fast float %6537, %6532
  %6539 = fadd fast float %6534, %6467
  %6540 = fmul fast float %6539, %6361
  %6541 = fadd fast float %6540, %6522
  %6542 = fmul fast float %6541, %6496
  %6543 = fadd fast float %6542, %6503
  %6544 = fadd fast float %6536, %6466
  %6545 = fmul fast float %6544, %6362
  %6546 = fadd fast float %6545, %6523
  %6547 = fmul fast float %6546, %6497
  %6548 = fadd fast float %6547, %6504
  %6549 = fadd fast float %6538, %6465
  %6550 = fmul fast float %6549, %6363
  %6551 = fadd fast float %6550, %6524
  %6552 = fmul fast float %6551, %6498
  %6553 = fadd fast float %6552, %6505
  %6554 = fmul fast float %6496, %6361
  %6555 = fmul fast float %6554, %6485
  %6556 = fmul fast float %6555, %6482
  %6557 = fmul fast float %6556, %6478
  %6558 = fmul fast float %6497, %6362
  %6559 = fmul fast float %6558, %6484
  %6560 = fmul fast float %6559, %6482
  %6561 = fmul fast float %6560, %6478
  %6562 = fmul fast float %6498, %6363
  %6563 = fmul fast float %6562, %6483
  %6564 = fmul fast float %6563, %6482
  %6565 = fmul fast float %6564, %6478
  %6566 = fadd fast float %6557, %6493
  %6567 = fadd fast float %6561, %6494
  %6568 = fadd fast float %6565, %6495
  %6569 = fmul fast float %6543, %6482
  %6570 = fmul fast float %6548, %6482
  %6571 = fmul fast float %6553, %6482
  %6572 = fadd fast float %6569, %6490
  %6573 = fadd fast float %6570, %6491
  %6574 = fadd fast float %6571, %6492
  %6575 = add nsw i32 %6489, -1
  %6576 = icmp sgt i32 %6489, 0
  br i1 %6576, label %6577, label %6637, !llvm.loop !87

; <label>:6577                                    ; preds = %6463
  %6578 = fmul fast float %6478, %6474
  %6579 = fadd fast float %6578, -1.000000e+00
  %6580 = fmul fast float %6579, %6482
  %6581 = fadd fast float %6580, 1.000000e+00
  %6582 = fmul fast float %6581, %6488
  %6583 = fmul fast float %6478, %6475
  %6584 = fadd fast float %6583, -1.000000e+00
  %6585 = fmul fast float %6584, %6482
  %6586 = fadd fast float %6585, 1.000000e+00
  %6587 = fmul fast float %6586, %6487
  %6588 = fmul fast float %6478, %6476
  %6589 = fadd fast float %6588, -1.000000e+00
  %6590 = fmul fast float %6589, %6482
  %6591 = fadd fast float %6590, 1.000000e+00
  %6592 = fmul fast float %6591, %6486
  %6593 = getelementptr [2 x float], [2 x float]* %71, i32 0, i32 %6575
  %6594 = load float, float* %6593, align 4
  %6595 = getelementptr [2 x float], [2 x float]* %72, i32 0, i32 %6575
  %6596 = load float, float* %6595, align 4
  %6597 = getelementptr [2 x float], [2 x float]* %73, i32 0, i32 %6575
  %6598 = load float, float* %6597, align 4
  %6599 = getelementptr inbounds [2 x float], [2 x float]* %83, i32 0, i32 %6575
  %6600 = load float, float* %6599, align 4, !tbaa !75, !noalias !79
  %6601 = getelementptr [2 x float], [2 x float]* %74, i32 0, i32 %6575
  %6602 = load float, float* %6601, align 4
  %6603 = getelementptr [2 x float], [2 x float]* %75, i32 0, i32 %6575
  %6604 = load float, float* %6603, align 4
  %6605 = getelementptr [2 x float], [2 x float]* %76, i32 0, i32 %6575
  %6606 = load float, float* %6605, align 4
  %6607 = getelementptr inbounds [2 x float], [2 x float]* %86, i32 0, i32 %6575
  %6608 = load float, float* %6607, align 4, !tbaa !75, !noalias !79
  %6609 = getelementptr inbounds [2 x float], [2 x float]* %84, i32 0, i32 %6575
  %6610 = load float, float* %6609, align 4, !tbaa !75, !noalias !79
  %6611 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6612 = load float, float* %6611, align 4
  %6613 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6614 = load float, float* %6613, align 4
  %6615 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6616 = load float, float* %6615, align 4
  %6617 = getelementptr [2 x float], [2 x float]* %77, i32 0, i32 %6575
  %6618 = load float, float* %6617, align 4
  %6619 = getelementptr [2 x float], [2 x float]* %78, i32 0, i32 %6575
  %6620 = load float, float* %6619, align 4
  %6621 = getelementptr [2 x float], [2 x float]* %79, i32 0, i32 %6575
  %6622 = load float, float* %6621, align 4
  %6623 = getelementptr [2 x float], [2 x float]* %80, i32 0, i32 %6575
  %6624 = load float, float* %6623, align 4
  %6625 = getelementptr [2 x float], [2 x float]* %81, i32 0, i32 %6575
  %6626 = load float, float* %6625, align 4
  %6627 = getelementptr [2 x float], [2 x float]* %82, i32 0, i32 %6575
  %6628 = load float, float* %6627, align 4
  %6629 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6630 = load float, float* %6629, align 4
  %6631 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6632 = load float, float* %6631, align 4
  %6633 = getelementptr [2 x float], [2 x float]* @interfaceFresnelMs.i.i.i.2.hca, i32 0, i32 %6575
  %6634 = load float, float* %6633, align 4
  %6635 = getelementptr inbounds [2 x float], [2 x float]* %85, i32 0, i32 %6575
  %6636 = load float, float* %6635, align 4, !tbaa !75, !noalias !79
  br label %6463

; <label>:6637                                    ; preds = %6463
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6640 = fcmp fast oeq float %6639, 0.000000e+00
  br i1 %6640, label %6972, label %6641

; <label>:6641                                    ; preds = %6637
  %6642 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6643 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6644 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.CBufRet.f32 %6649, 1
  %6652 = call float @dx.op.dot3.f32(i32 55, float %6646, float %6647, float %6648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6653 = select i1 %192, float %6650, float %6646
  %6654 = select i1 %192, float %6652, float %6647
  %6655 = select i1 %192, float %6651, float %6648
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6658 = fcmp fast une float %6657, 0.000000e+00
  br i1 %6658, label %6659, label %6676

; <label>:6659                                    ; preds = %6641
  %6660 = fptoui float %91 to i32
  %6661 = fptoui float %92 to i32
  %6662 = lshr i32 %6660, 4
  %6663 = lshr i32 %6661, 4
  %6664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6665 = extractvalue %dx.types.CBufRet.f32 %6664, 0
  %6666 = fptoui float %6665 to i32
  %6667 = add i32 %6666, 15
  %6668 = lshr i32 %6667, 4
  %6669 = mul i32 %6668, %6663
  %6670 = add i32 %6669, %6662
  %6671 = shl i32 %6670, 3
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6671, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = and i32 %6673, -268435456
  %6675 = icmp eq i32 %6674, -1342177280
  br i1 %6675, label %6686, label %6676

; <label>:6676                                    ; preds = %6659, %6641
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6680 = fmul fast float %6678, %91
  %6681 = fmul fast float %6679, %92
  %6682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %6680, float %6681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.ResRet.f32 %6682, 2
  br label %6686

; <label>:6686                                    ; preds = %6676, %6659
  %6687 = phi float [ %6683, %6676 ], [ 0.000000e+00, %6659 ]
  %6688 = phi float [ %6684, %6676 ], [ 0.000000e+00, %6659 ]
  %6689 = phi float [ %6685, %6676 ], [ 0.000000e+00, %6659 ]
  %6690 = call float @dx.op.binary.f32(i32 36, float %6688, float %6689)  ; FMin(a,b)
  %6691 = call float @dx.op.binary.f32(i32 36, float %6687, float %6690)  ; FMin(a,b)
  %6692 = fcmp fast ogt float %6691, 0.000000e+00
  br i1 %6692, label %6693, label %6972, !dx.controlflow.hints !89

; <label>:6693                                    ; preds = %6686
  %6694 = fmul fast float %6687, %6653
  %6695 = fmul fast float %6688, %6654
  %6696 = fmul fast float %6689, %6655
  %6697 = fsub fast float %6642, %6097
  %6698 = fsub fast float %6643, %6096
  %6699 = fsub fast float %6644, %6095
  %6700 = call float @dx.op.dot3.f32(i32 55, float %6697, float %6698, float %6699, float %6697, float %6698, float %6699)  ; Dot3(ax,ay,az,bx,by,bz)
  %6701 = call float @dx.op.unary.f32(i32 25, float %6700)  ; Rsqrt(value)
  %6702 = fmul fast float %6701, %6697
  %6703 = fmul fast float %6701, %6698
  %6704 = fmul fast float %6701, %6699
  %6705 = call float @dx.op.dot3.f32(i32 55, float %6642, float %6643, float %6644, float %6104, float %6105, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = call float @dx.op.dot3.f32(i32 55, float %6094, float %6093, float %6092, float %6702, float %6703, float %6704)  ; Dot3(ax,ay,az,bx,by,bz)
  %6707 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6708 = fmul fast float %6707, %6707
  %6709 = fmul fast float %6708, %6131
  %6710 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6711 = fmul fast float %6710, %6707
  %6712 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6702, float %6703, float %6704)  ; Dot3(ax,ay,az,bx,by,bz)
  %6713 = fmul fast float %6712, %6712
  %6714 = call float @dx.op.unary.f32(i32 6, float %6705)  ; FAbs(value)
  %6715 = fsub fast float 1.000000e+00, %6107
  %6716 = call float @dx.op.binary.f32(i32 35, float %6715, float 0x3F847AE140000000)  ; FMax(a,b)
  %6717 = fmul fast float %6716, %6716
  %6718 = fmul fast float %6717, %6717
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6118, %6118
  %6721 = fmul fast float %6720, %6719
  %6722 = fadd fast float %6721, %6718
  %6723 = bitcast float %6722 to i32
  %6724 = ashr i32 %6723, 1
  %6725 = add nsw i32 %6724, 532487669
  %6726 = bitcast i32 %6725 to float
  %6727 = fadd fast float %6726, %6118
  %6728 = fmul fast float %6718, %6713
  %6729 = fsub fast float 1.000000e+00, %6713
  %6730 = fadd fast float %6729, %6728
  %6731 = fmul fast float %6714, %6714
  %6732 = fmul fast float %6731, %6719
  %6733 = fadd fast float %6732, %6718
  %6734 = bitcast float %6733 to i32
  %6735 = ashr i32 %6734, 1
  %6736 = add nsw i32 %6735, 532487669
  %6737 = bitcast i32 %6736 to float
  %6738 = fadd fast float %6737, %6714
  %6739 = fmul fast float %6730, %6730
  %6740 = fmul fast float %6739, %6727
  %6741 = fmul fast float %6740, %6738
  %6742 = fdiv fast float 0x3FF0A00000000000, %6741
  %6743 = fmul fast float %6742, %6718
  %6744 = call float @dx.op.unary.f32(i32 6, float %6706)  ; FAbs(value)
  %6745 = fsub fast float 1.000000e+00, %6744
  %6746 = bitcast float %6745 to i32
  %6747 = sitofp i32 %6746 to float
  %6748 = fmul fast float %6747, 5.000000e+00
  %6749 = fadd fast float %6748, 0xC1EFBF8940000000
  %6750 = fptosi float %6749 to i32
  %6751 = bitcast i32 %6750 to float
  %6752 = fsub fast float 1.000000e+00, %6101
  %6753 = fsub fast float 1.000000e+00, %6102
  %6754 = fsub fast float 1.000000e+00, %6116
  %6755 = fmul fast float %6751, %6752
  %6756 = fmul fast float %6751, %6753
  %6757 = fmul fast float %6751, %6754
  %6758 = fadd fast float %6755, %6101
  %6759 = fadd fast float %6756, %6102
  %6760 = fadd fast float %6757, %6116
  br i1 %6405, label %6761, label %6784

; <label>:6761                                    ; preds = %6693
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5465, float %6744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.ResRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.ResRet.f32 %6762, 2
  %6766 = fadd fast float %6763, -5.000000e-01
  %6767 = fadd fast float %6764, -5.000000e-01
  %6768 = fadd fast float %6765, -5.000000e-01
  %6769 = fmul fast float %6101, 4.000000e+00
  %6770 = fmul fast float %6769, %6752
  %6771 = fmul fast float %6770, %6766
  %6772 = fmul fast float %6102, 4.000000e+00
  %6773 = fmul fast float %6772, %6753
  %6774 = fmul fast float %6773, %6767
  %6775 = fmul fast float %6116, 4.000000e+00
  %6776 = fmul fast float %6775, %6754
  %6777 = fmul fast float %6776, %6768
  %6778 = fadd fast float %6771, %6758
  %6779 = fadd fast float %6774, %6759
  %6780 = fadd fast float %6777, %6760
  %6781 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  br label %6784

; <label>:6784                                    ; preds = %6761, %6693
  %6785 = phi float [ %6781, %6761 ], [ %6758, %6693 ]
  %6786 = phi float [ %6782, %6761 ], [ %6759, %6693 ]
  %6787 = phi float [ %6783, %6761 ], [ %6760, %6693 ]
  %6788 = fmul fast float %6705, 9.843750e-01
  %6789 = fadd fast float %6788, 7.812500e-03
  %6790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6789, float %6395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6791 = extractvalue %dx.types.ResRet.f32 %6790, 2
  %6792 = extractvalue %dx.types.ResRet.f32 %6790, 3
  %6793 = fmul fast float %6791, %6101
  %6794 = fmul fast float %6791, %6102
  %6795 = fmul fast float %6791, %6116
  %6796 = fadd fast float %6793, %6792
  %6797 = fadd fast float %6794, %6792
  %6798 = fadd fast float %6795, %6792
  br i1 %6405, label %6799, label %6822

; <label>:6799                                    ; preds = %6784
  %6800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5465, float %6705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.ResRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.ResRet.f32 %6800, 2
  %6804 = fadd fast float %6801, -5.000000e-01
  %6805 = fadd fast float %6802, -5.000000e-01
  %6806 = fadd fast float %6803, -5.000000e-01
  %6807 = fmul fast float %6101, 4.000000e+00
  %6808 = fmul fast float %6807, %6752
  %6809 = fmul fast float %6808, %6804
  %6810 = fmul fast float %6102, 4.000000e+00
  %6811 = fmul fast float %6810, %6753
  %6812 = fmul fast float %6811, %6805
  %6813 = fmul fast float %6116, 4.000000e+00
  %6814 = fmul fast float %6813, %6754
  %6815 = fmul fast float %6814, %6806
  %6816 = fadd fast float %6809, %6796
  %6817 = fadd fast float %6812, %6797
  %6818 = fadd fast float %6815, %6798
  %6819 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  %6820 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6821 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  br label %6822

; <label>:6822                                    ; preds = %6799, %6784
  %6823 = phi float [ %6819, %6799 ], [ %6796, %6784 ]
  %6824 = phi float [ %6820, %6799 ], [ %6797, %6784 ]
  %6825 = phi float [ %6821, %6799 ], [ %6798, %6784 ]
  %6826 = call float @dx.op.binary.f32(i32 35, float %6824, float %6825)  ; FMax(a,b)
  %6827 = call float @dx.op.binary.f32(i32 35, float %6823, float %6826)  ; FMax(a,b)
  %6828 = fsub fast float 1.000000e+00, %6827
  %6829 = fmul fast float %6785, %6743
  %6830 = fmul fast float %6786, %6743
  %6831 = fmul fast float %6787, %6743
  %6832 = call float @dx.op.dot3.f32(i32 55, float %6098, float %6099, float %6100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6833 = fcmp fast ogt float %6832, 0x3E7FF19E20000000
  %6834 = fdiv fast float 1.000000e+00, %6832
  %6835 = select i1 %6833, float %6834, float 0.000000e+00
  %6836 = fmul fast float %6835, %6098
  %6837 = fmul fast float %6835, %6099
  %6838 = fmul fast float %6835, %6100
  %6839 = fadd fast float %6836, -1.000000e+00
  %6840 = fadd fast float %6837, -1.000000e+00
  %6841 = fadd fast float %6838, -1.000000e+00
  %6842 = fmul fast float %6839, 5.000000e-01
  %6843 = fmul fast float %6840, 5.000000e-01
  %6844 = fmul fast float %6841, 5.000000e-01
  %6845 = fadd fast float %6842, 1.000000e+00
  %6846 = fadd fast float %6843, 1.000000e+00
  %6847 = fadd fast float %6844, 1.000000e+00
  %6848 = fsub fast float 1.000000e+00, %6706
  %6849 = bitcast float %6848 to i32
  %6850 = sitofp i32 %6849 to float
  %6851 = fmul fast float %6850, 5.000000e+00
  %6852 = fadd fast float %6851, 0xC1EFBF8940000000
  %6853 = fptosi float %6852 to i32
  %6854 = bitcast i32 %6853 to float
  %6855 = fmul fast float %6854, %5466
  %6856 = fmul fast float %6828, %6855
  %6857 = fmul fast float %6856, %6845
  %6858 = fmul fast float %6856, %6846
  %6859 = fmul fast float %6856, %6847
  %6860 = fsub fast float 1.000000e+00, %5462
  %6861 = fadd fast float %6857, %6829
  %6862 = fadd fast float %6858, %6830
  %6863 = fadd fast float %6859, %6831
  %6864 = fmul fast float %6098, %5462
  %6865 = fmul fast float %6864, %6711
  %6866 = fmul fast float %6865, %6828
  %6867 = fmul fast float %6099, %5462
  %6868 = fmul fast float %6867, %6711
  %6869 = fmul fast float %6868, %6828
  %6870 = fmul fast float %6100, %5462
  %6871 = fmul fast float %6870, %6711
  %6872 = fmul fast float %6871, %6828
  %6873 = fmul fast float %6711, %5462
  %6874 = fmul fast float %6873, %6861
  %6875 = fmul fast float %6873, %6862
  %6876 = fmul fast float %6873, %6863
  %6877 = call float @dx.op.dot3.f32(i32 55, float %6642, float %6643, float %6644, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6878 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6879 = fmul fast float %6878, %6878
  %6880 = fmul fast float %6879, %6130
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = fmul fast float %6881, %6878
  %6883 = fmul fast float %6860, %6860
  %6884 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %6702, float %6703, float %6704)  ; Dot3(ax,ay,az,bx,by,bz)
  %6885 = fmul fast float %6884, %6884
  %6886 = call float @dx.op.unary.f32(i32 6, float %6877)  ; FAbs(value)
  %6887 = fsub fast float 1.000000e+00, %5490
  %6888 = call float @dx.op.binary.f32(i32 35, float %6887, float 0x3F847AE140000000)  ; FMax(a,b)
  %6889 = fmul fast float %6888, %6888
  %6890 = fmul fast float %6889, %6889
  %6891 = fsub fast float 1.000000e+00, %6890
  %6892 = fmul fast float %6111, %6111
  %6893 = fmul fast float %6892, %6891
  %6894 = fadd fast float %6893, %6890
  %6895 = bitcast float %6894 to i32
  %6896 = ashr i32 %6895, 1
  %6897 = add nsw i32 %6896, 532487669
  %6898 = bitcast i32 %6897 to float
  %6899 = fadd fast float %6898, %6111
  %6900 = fmul fast float %6890, %6885
  %6901 = fsub fast float 1.000000e+00, %6885
  %6902 = fadd fast float %6901, %6900
  %6903 = fmul fast float %6886, %6886
  %6904 = fmul fast float %6903, %6891
  %6905 = fadd fast float %6904, %6890
  %6906 = bitcast float %6905 to i32
  %6907 = ashr i32 %6906, 1
  %6908 = add nsw i32 %6907, 532487669
  %6909 = bitcast i32 %6908 to float
  %6910 = fadd fast float %6909, %6886
  %6911 = fmul fast float %6902, %6902
  %6912 = fmul fast float %6911, %6899
  %6913 = fmul fast float %6912, %6910
  %6914 = fdiv fast float 0x3FF0A00000000000, %6913
  %6915 = fmul fast float %6914, %6890
  %6916 = fsub fast float 1.000000e+00, %5487
  %6917 = fsub fast float 1.000000e+00, %5488
  %6918 = fsub fast float 1.000000e+00, %6109
  %6919 = fmul fast float %6751, %6916
  %6920 = fmul fast float %6751, %6917
  %6921 = fmul fast float %6751, %6918
  %6922 = fadd fast float %6919, %5487
  %6923 = fadd fast float %6920, %5488
  %6924 = fadd fast float %6921, %6109
  %6925 = fmul fast float %6877, 9.843750e-01
  %6926 = fadd fast float %6925, 7.812500e-03
  %6927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6926, float %6446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 2
  %6929 = extractvalue %dx.types.ResRet.f32 %6927, 3
  %6930 = fmul fast float %6928, %5487
  %6931 = fmul fast float %6928, %5488
  %6932 = fmul fast float %6928, %6109
  %6933 = fadd fast float %6930, %6929
  %6934 = fadd fast float %6931, %6929
  %6935 = fadd fast float %6932, %6929
  %6936 = call float @dx.op.binary.f32(i32 35, float %6934, float %6935)  ; FMax(a,b)
  %6937 = call float @dx.op.binary.f32(i32 35, float %6933, float %6936)  ; FMax(a,b)
  %6938 = fsub fast float 1.000000e+00, %6937
  %6939 = fmul fast float %6883, %3206
  %6940 = fmul fast float %6939, %5502
  %6941 = fmul fast float %6940, %6882
  %6942 = fmul fast float %6941, %6938
  %6943 = fmul fast float %6939, %5503
  %6944 = fmul fast float %6943, %6882
  %6945 = fmul fast float %6944, %6938
  %6946 = fmul fast float %6939, %5504
  %6947 = fmul fast float %6946, %6882
  %6948 = fmul fast float %6947, %6938
  %6949 = fadd fast float %6942, %6866
  %6950 = fmul fast float %6949, %6694
  %6951 = fadd fast float %6950, %6566
  %6952 = fadd fast float %6945, %6869
  %6953 = fmul fast float %6952, %6695
  %6954 = fadd fast float %6953, %6567
  %6955 = fadd fast float %6948, %6872
  %6956 = fmul fast float %6955, %6696
  %6957 = fadd fast float %6956, %6568
  %6958 = fmul fast float %6939, %6882
  %6959 = fmul fast float %6958, %6915
  %6960 = fmul fast float %6959, %6922
  %6961 = fmul fast float %6959, %6923
  %6962 = fmul fast float %6959, %6924
  %6963 = fadd fast float %6960, %6874
  %6964 = fmul fast float %6963, %6694
  %6965 = fadd fast float %6964, %6572
  %6966 = fadd fast float %6961, %6875
  %6967 = fmul fast float %6966, %6695
  %6968 = fadd fast float %6967, %6573
  %6969 = fadd fast float %6962, %6876
  %6970 = fmul fast float %6969, %6696
  %6971 = fadd fast float %6970, %6574
  br label %6972

; <label>:6972                                    ; preds = %6822, %6686, %6637
  %6973 = phi float [ %6572, %6637 ], [ %6572, %6686 ], [ %6965, %6822 ]
  %6974 = phi float [ %6573, %6637 ], [ %6573, %6686 ], [ %6968, %6822 ]
  %6975 = phi float [ %6574, %6637 ], [ %6574, %6686 ], [ %6971, %6822 ]
  %6976 = phi float [ %6566, %6637 ], [ %6566, %6686 ], [ %6951, %6822 ]
  %6977 = phi float [ %6567, %6637 ], [ %6567, %6686 ], [ %6954, %6822 ]
  %6978 = phi float [ %6568, %6637 ], [ %6568, %6686 ], [ %6957, %6822 ]
  %6979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.i32 %6979, 0
  %6981 = icmp eq i32 %6980, 0
  br i1 %6981, label %7538, label %6982

; <label>:6982                                    ; preds = %6972
  %6983 = fptoui float %91 to i32
  %6984 = fptoui float %92 to i32
  %6985 = lshr i32 %6983, 4
  %6986 = lshr i32 %6984, 4
  %6987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.i32 %6987, 0
  %6989 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6986, i32 %6988, i32 %6985)  ; UMad(a,b,c)
  %6990 = add nsw i32 %6980, -1
  %6991 = call i32 @dx.op.binary.i32(i32 37, i32 %6990, i32 0)  ; IMax(a,b)
  %6992 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %6993 = fptoui float %6992 to i32
  %6994 = lshr i32 %6993, 5
  %6995 = call i32 @dx.op.binary.i32(i32 40, i32 %6994, i32 8191)  ; UMin(a,b)
  %6996 = shl i32 %6995, 2
  %6997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6996, i32 undef)  ; BufferLoad(srv,index,wot)
  %6998 = extractvalue %dx.types.ResRet.i32 %6997, 0
  %6999 = lshr i32 %6998, 16
  %7000 = and i32 %6998, 65535
  %7001 = lshr i32 %6998, 21
  %7002 = lshr i32 %7000, 5
  %7003 = call i32 @dx.op.binary.i32(i32 40, i32 %7002, i32 %6991)  ; UMin(a,b)
  %7004 = icmp ugt i32 %7001, %7003
  br i1 %7004, label %7538, label %7005

; <label>:7005                                    ; preds = %6982
  br label %7006

; <label>:7006                                    ; preds = %7528, %7005
  %7007 = phi i32 [ %7535, %7528 ], [ %7001, %7005 ]
  %7008 = phi float [ %7529, %7528 ], [ %6973, %7005 ]
  %7009 = phi float [ %7530, %7528 ], [ %6974, %7005 ]
  %7010 = phi float [ %7531, %7528 ], [ %6975, %7005 ]
  %7011 = phi float [ %7532, %7528 ], [ %6976, %7005 ]
  %7012 = phi float [ %7533, %7528 ], [ %6977, %7005 ]
  %7013 = phi float [ %7534, %7528 ], [ %6978, %7005 ]
  %7014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.i32 %7014, 0
  %7016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6989, i32 %7015, i32 %7007)  ; UMad(a,b,c)
  %7017 = shl i32 %7016, 2
  %7018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %7017, i32 undef)  ; BufferLoad(srv,index,wot)
  %7019 = extractvalue %dx.types.ResRet.i32 %7018, 0
  %7020 = shl i32 %7007, 5
  %7021 = sub nsw i32 %6999, %7020
  %7022 = call i32 @dx.op.binary.i32(i32 37, i32 %7021, i32 0)  ; IMax(a,b)
  %7023 = call i32 @dx.op.binary.i32(i32 38, i32 %7022, i32 31)  ; IMin(a,b)
  %7024 = sub nsw i32 1, %6999
  %7025 = add nsw i32 %7024, %7000
  %7026 = call i32 @dx.op.binary.i32(i32 37, i32 %7025, i32 0)  ; IMax(a,b)
  %7027 = call i32 @dx.op.binary.i32(i32 38, i32 %7026, i32 32)  ; IMin(a,b)
  %7028 = and i32 %7027, 31
  %7029 = shl i32 -1, %7028
  %7030 = xor i32 %7029, -1
  %7031 = and i32 %7023, 31
  %7032 = shl i32 %7030, %7031
  %7033 = icmp eq i32 %7027, 32
  %7034 = select i1 %7033, i32 -1, i32 %7032
  %7035 = and i32 %7034, %7019
  %7036 = icmp eq i32 %7035, 0
  br i1 %7036, label %7528, label %7037

; <label>:7037                                    ; preds = %7006
  br label %7038

; <label>:7038                                    ; preds = %7118, %7037
  %7039 = phi i32 [ %7050, %7118 ], [ %7035, %7037 ]
  %7040 = phi float [ %7119, %7118 ], [ %7008, %7037 ]
  %7041 = phi float [ %7120, %7118 ], [ %7009, %7037 ]
  %7042 = phi float [ %7121, %7118 ], [ %7010, %7037 ]
  %7043 = phi float [ %7122, %7118 ], [ %7011, %7037 ]
  %7044 = phi float [ %7123, %7118 ], [ %7012, %7037 ]
  %7045 = phi float [ %7124, %7118 ], [ %7013, %7037 ]
  %7046 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7039)  ; FirstbitLo(value)
  %7047 = add i32 %7046, %7020
  %7048 = and i32 %7046, 31
  %7049 = shl i32 1, %7048
  %7050 = xor i32 %7049, %7039
  %7051 = mul i32 %7047, 112
  %7052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7051, i32 undef)  ; BufferLoad(srv,index,wot)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7056 = or i32 %7051, 12
  %7057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7056, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 0
  %7059 = add i32 %7051, 44
  %7060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7059, i32 undef)  ; BufferLoad(srv,index,wot)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = add i32 %7051, 48
  %7063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7062, i32 undef)  ; BufferLoad(srv,index,wot)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = extractvalue %dx.types.ResRet.f32 %7063, 1
  %7066 = extractvalue %dx.types.ResRet.f32 %7063, 2
  %7067 = add i32 %7051, 80
  %7068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7067, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 2
  %7071 = call float @dx.op.dot3.f32(i32 55, float %7053, float %7054, float %7055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7072 = select i1 %192, float %7069, float %7053
  %7073 = select i1 %192, float %7071, float %7054
  %7074 = select i1 %192, float %7070, float %7055
  %7075 = fsub fast float %7064, %150
  %7076 = fsub fast float %7065, %151
  %7077 = fsub fast float %7066, %152
  %7078 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.unary.f32(i32 24, float %7078)  ; Sqrt(value)
  %7080 = fdiv fast float 1.000000e+00, %7079
  %7081 = fmul fast float %7080, %7075
  %7082 = fmul fast float %7080, %7076
  %7083 = fmul fast float %7080, %7077
  %7084 = fadd fast float %7079, %7058
  %7085 = fdiv fast float 1.000000e+00, %7084
  %7086 = fmul float %7061, %7085
  %7087 = fmul float %7086, %7086
  %7088 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7089 = and i32 %7049, %7035
  %7090 = icmp eq i32 %7089, 0
  br i1 %7090, label %7113, label %7091, !dx.controlflow.hints !90

; <label>:7091                                    ; preds = %7038
  %7092 = lshr i32 %6983, 5
  %7093 = lshr i32 %6984, 5
  %7094 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %7092, i32 %7093, i32 %7047, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7095 = extractvalue %dx.types.ResRet.i32 %7094, 0
  %7096 = and i32 %7095, 3
  %7097 = icmp eq i32 %7096, 0
  %7098 = select i1 %7097, float 1.000000e+00, float 0.000000e+00
  %7099 = icmp eq i32 %7096, 3
  br i1 %7099, label %7100, label %7113

; <label>:7100                                    ; preds = %7091
  %7101 = lshr i32 %7095, 10
  %7102 = and i32 %7101, 8160
  %7103 = and i32 %6984, 31
  %7104 = or i32 %7102, %7103
  %7105 = lshr i32 %7095, 1
  %7106 = and i32 %7105, 16352
  %7107 = and i32 %6983, 31
  %7108 = or i32 %7106, %7107
  %7109 = lshr i32 %7095, 23
  %7110 = and i32 %7109, 255
  %7111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %7108, i32 %7104, i32 %7110, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 0
  br label %7113

; <label>:7113                                    ; preds = %7100, %7091, %7038
  %7114 = phi float [ %7112, %7100 ], [ %7098, %7091 ], [ 0.000000e+00, %7038 ]
  %7115 = call float @dx.op.binary.f32(i32 36, float %7114, float %7114)  ; FMin(a,b)
  %7116 = call float @dx.op.binary.f32(i32 36, float %7114, float %7115)  ; FMin(a,b)
  %7117 = fcmp fast ogt float %7116, 0.000000e+00
  br i1 %7117, label %7126, label %7118, !dx.controlflow.hints !91

; <label>:7118                                    ; preds = %7362, %7113
  %7119 = phi float [ %7040, %7113 ], [ %7520, %7362 ]
  %7120 = phi float [ %7041, %7113 ], [ %7523, %7362 ]
  %7121 = phi float [ %7042, %7113 ], [ %7526, %7362 ]
  %7122 = phi float [ %7043, %7113 ], [ %7504, %7362 ]
  %7123 = phi float [ %7044, %7113 ], [ %7507, %7362 ]
  %7124 = phi float [ %7045, %7113 ], [ %7510, %7362 ]
  %7125 = icmp eq i32 %7039, %7049
  br i1 %7125, label %7527, label %7038

; <label>:7126                                    ; preds = %7113
  %7127 = fmul fast float %7114, %7072
  %7128 = fmul fast float %7114, %7073
  %7129 = fmul fast float %7114, %7074
  %7130 = fsub fast float %7066, %5897
  %7131 = fcmp fast ogt float %7130, 0.000000e+00
  %7132 = fsub fast float %152, %5897
  %7133 = fcmp fast ogt float %7132, 0.000000e+00
  %7134 = xor i1 %7133, %7131
  %7135 = fsub fast float %5897, %7066
  %7136 = fmul fast float %7135, 2.000000e+00
  %7137 = fadd fast float %7136, %7066
  %7138 = select i1 %7134, float %7066, float %7137
  %7139 = fsub fast float %7138, %152
  %7140 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7139, float %7075, float %7076, float %7139)  ; Dot3(ax,ay,az,bx,by,bz)
  %7141 = call float @dx.op.unary.f32(i32 25, float %7140)  ; Rsqrt(value)
  %7142 = fmul fast float %7141, %7075
  %7143 = fmul fast float %7141, %7076
  %7144 = fmul fast float %7141, %7139
  %7145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5905)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7142, float %7143, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7147 = fdiv fast float 1.000000e+00, %7146
  %7148 = fmul fast float %7147, %7145
  %7149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7132, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  %7151 = fcmp fast olt float %7149, 0.000000e+00
  %7152 = zext i1 %7150 to i32
  %7153 = zext i1 %7151 to i32
  %7154 = sub nsw i32 %7152, %7153
  %7155 = sitofp i32 %7154 to float
  %7156 = fsub fast float %7138, %5897
  %7157 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7156, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = fcmp fast ogt float %7157, 0.000000e+00
  %7159 = fcmp fast olt float %7157, 0.000000e+00
  %7160 = zext i1 %7158 to i32
  %7161 = zext i1 %7159 to i32
  %7162 = sub nsw i32 %7160, %7161
  %7163 = sitofp i32 %7162 to float
  %7164 = fcmp fast une float %7155, %7163
  br i1 %7164, label %7165, label %7175

; <label>:7165                                    ; preds = %7126
  %7166 = fmul fast float %7148, %7144
  %7167 = fmul fast float %7148, %7143
  %7168 = fmul fast float %7148, %7142
  %7169 = fmul fast float %7168, %7168
  %7170 = fmul fast float %7167, %7167
  %7171 = fadd fast float %7169, %7170
  %7172 = fmul fast float %7166, %7166
  %7173 = fadd fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  br label %7187

; <label>:7175                                    ; preds = %7126
  %7176 = icmp slt i32 %7154, 0
  br i1 %7176, label %7177, label %7187

; <label>:7177                                    ; preds = %7175
  %7178 = fsub fast float %150, %7064
  %7179 = fsub fast float %151, %7065
  %7180 = fsub fast float %152, %7138
  %7181 = fmul fast float %7178, %7178
  %7182 = fmul fast float %7179, %7179
  %7183 = fadd fast float %7181, %7182
  %7184 = fmul fast float %7180, %7180
  %7185 = fadd fast float %7183, %7184
  %7186 = call float @dx.op.unary.f32(i32 24, float %7185)  ; Sqrt(value)
  br label %7187

; <label>:7187                                    ; preds = %7177, %7175, %7165
  %7188 = phi float [ %7174, %7165 ], [ %7186, %7177 ], [ 0.000000e+00, %7175 ]
  %7189 = and i1 %7133, %7131
  %7190 = fsub fast float -0.000000e+00, %7188
  %7191 = select i1 %7189, float -0.000000e+00, float %7190
  %7192 = fmul fast float %5898, 0x3FF7154760000000
  %7193 = fmul fast float %7192, %7191
  %7194 = fmul fast float %5899, 0x3FF7154760000000
  %7195 = fmul fast float %7194, %7191
  %7196 = fmul fast float %5900, 0x3FF7154760000000
  %7197 = fmul fast float %7196, %7191
  %7198 = call float @dx.op.unary.f32(i32 21, float %7193)  ; Exp(value)
  %7199 = call float @dx.op.unary.f32(i32 21, float %7195)  ; Exp(value)
  %7200 = call float @dx.op.unary.f32(i32 21, float %7197)  ; Exp(value)
  %7201 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = fmul fast float %7127, %7201
  %7205 = fmul fast float %7128, %7202
  %7206 = fmul fast float %7129, %7203
  %7207 = fsub fast float %7081, %6097
  %7208 = fsub fast float %7082, %6096
  %7209 = fsub fast float %7083, %6095
  %7210 = call float @dx.op.dot3.f32(i32 55, float %7207, float %7208, float %7209, float %7207, float %7208, float %7209)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = call float @dx.op.unary.f32(i32 25, float %7210)  ; Rsqrt(value)
  %7212 = fmul fast float %7211, %7207
  %7213 = fmul fast float %7211, %7208
  %7214 = fmul fast float %7211, %7209
  %7215 = call float @dx.op.dot3.f32(i32 55, float %7081, float %7082, float %7083, float %6104, float %6105, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = call float @dx.op.dot3.f32(i32 55, float %6094, float %6093, float %6092, float %7212, float %7213, float %7214)  ; Dot3(ax,ay,az,bx,by,bz)
  %7217 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  %7218 = fmul fast float %7217, %7088
  %7219 = fmul fast float %7217, %7217
  %7220 = fmul fast float %7219, %6131
  %7221 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7222 = fmul fast float %7218, %7221
  %7223 = bitcast float %7078 to i32
  %7224 = ashr i32 %7223, 1
  %7225 = sub nsw i32 1597463007, %7224
  %7226 = bitcast i32 %7225 to float
  %7227 = fmul fast float %7226, %7075
  %7228 = fmul fast float %7226, %7076
  %7229 = fmul fast float %7226, %7077
  %7230 = fsub fast float %7227, %6097
  %7231 = fsub fast float %7228, %6096
  %7232 = fsub fast float %7229, %6095
  %7233 = call float @dx.op.dot3.f32(i32 55, float %7230, float %7231, float %7232, float %7230, float %7231, float %7232)  ; Dot3(ax,ay,az,bx,by,bz)
  %7234 = call float @dx.op.unary.f32(i32 25, float %7233)  ; Rsqrt(value)
  %7235 = fmul fast float %7230, %7234
  %7236 = fmul fast float %7231, %7234
  %7237 = fmul fast float %7232, %7234
  %7238 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %7235, float %7236, float %7237)  ; Dot3(ax,ay,az,bx,by,bz)
  %7239 = fmul fast float %7238, %7238
  %7240 = call float @dx.op.unary.f32(i32 6, float %7215)  ; FAbs(value)
  %7241 = fsub fast float 1.000000e+00, %6107
  %7242 = call float @dx.op.binary.f32(i32 35, float %7241, float 0x3F847AE140000000)  ; FMax(a,b)
  %7243 = fmul fast float %7242, %7242
  %7244 = fmul fast float %7243, %7243
  %7245 = fsub fast float 1.000000e+00, %7244
  %7246 = fmul fast float %6118, %6118
  %7247 = fmul fast float %7246, %7245
  %7248 = fadd fast float %7247, %7244
  %7249 = bitcast float %7248 to i32
  %7250 = ashr i32 %7249, 1
  %7251 = add nsw i32 %7250, 532487669
  %7252 = bitcast i32 %7251 to float
  %7253 = fadd fast float %7252, %6118
  %7254 = fmul fast float %7244, %7239
  %7255 = fsub fast float 1.000000e+00, %7239
  %7256 = fadd fast float %7255, %7254
  %7257 = fmul fast float %7240, %7240
  %7258 = fmul fast float %7257, %7245
  %7259 = fadd fast float %7258, %7244
  %7260 = bitcast float %7259 to i32
  %7261 = ashr i32 %7260, 1
  %7262 = add nsw i32 %7261, 532487669
  %7263 = bitcast i32 %7262 to float
  %7264 = fadd fast float %7263, %7240
  %7265 = fmul fast float %7256, %7256
  %7266 = fmul fast float %7265, %7253
  %7267 = fmul fast float %7266, %7264
  %7268 = fdiv fast float 1.000000e+00, %7267
  %7269 = bitcast float %7244 to i32
  %7270 = sitofp i32 %7269 to float
  %7271 = fmul fast float %7270, 0x3FE7F73180000000
  %7272 = fadd fast float %7271, 0x41AFE27C40000000
  %7273 = fptosi float %7272 to i32
  %7274 = bitcast i32 %7273 to float
  %7275 = fmul fast float %7061, 0x3FD80E9D60000000
  %7276 = fmul fast float %7275, %7226
  %7277 = fadd fast float %7274, %7276
  %7278 = bitcast float %7277 to i32
  %7279 = sub nsw i32 2129859010, %7278
  %7280 = bitcast i32 %7279 to float
  %7281 = fmul fast float %7244, %7268
  %7282 = fmul fast float %7281, %7274
  %7283 = fmul fast float %7282, %7280
  %7284 = call float @dx.op.unary.f32(i32 6, float %7216)  ; FAbs(value)
  %7285 = fsub fast float 1.000000e+00, %7284
  %7286 = bitcast float %7285 to i32
  %7287 = sitofp i32 %7286 to float
  %7288 = fmul fast float %7287, 5.000000e+00
  %7289 = fadd fast float %7288, 0xC1EFBF8940000000
  %7290 = fptosi float %7289 to i32
  %7291 = bitcast i32 %7290 to float
  %7292 = fsub fast float 1.000000e+00, %6101
  %7293 = fsub fast float 1.000000e+00, %6102
  %7294 = fsub fast float 1.000000e+00, %6116
  %7295 = fmul fast float %7291, %7292
  %7296 = fmul fast float %7291, %7293
  %7297 = fmul fast float %7291, %7294
  %7298 = fadd fast float %7295, %6101
  %7299 = fadd fast float %7296, %6102
  %7300 = fadd fast float %7297, %6116
  br i1 %6405, label %7301, label %7324

; <label>:7301                                    ; preds = %7187
  %7302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5465, float %7284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7303 = extractvalue %dx.types.ResRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.ResRet.f32 %7302, 1
  %7305 = extractvalue %dx.types.ResRet.f32 %7302, 2
  %7306 = fadd fast float %7303, -5.000000e-01
  %7307 = fadd fast float %7304, -5.000000e-01
  %7308 = fadd fast float %7305, -5.000000e-01
  %7309 = fmul fast float %6101, 4.000000e+00
  %7310 = fmul fast float %7309, %7292
  %7311 = fmul fast float %7310, %7306
  %7312 = fmul fast float %6102, 4.000000e+00
  %7313 = fmul fast float %7312, %7293
  %7314 = fmul fast float %7313, %7307
  %7315 = fmul fast float %6116, 4.000000e+00
  %7316 = fmul fast float %7315, %7294
  %7317 = fmul fast float %7316, %7308
  %7318 = fadd fast float %7311, %7298
  %7319 = fadd fast float %7314, %7299
  %7320 = fadd fast float %7317, %7300
  %7321 = call float @dx.op.unary.f32(i32 7, float %7318)  ; Saturate(value)
  %7322 = call float @dx.op.unary.f32(i32 7, float %7319)  ; Saturate(value)
  %7323 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  br label %7324

; <label>:7324                                    ; preds = %7301, %7187
  %7325 = phi float [ %7321, %7301 ], [ %7298, %7187 ]
  %7326 = phi float [ %7322, %7301 ], [ %7299, %7187 ]
  %7327 = phi float [ %7323, %7301 ], [ %7300, %7187 ]
  %7328 = fmul fast float %7215, 9.843750e-01
  %7329 = fadd fast float %7328, 7.812500e-03
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %7329, float %6395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 2
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 3
  %7333 = fmul fast float %7331, %6101
  %7334 = fmul fast float %7331, %6102
  %7335 = fmul fast float %7331, %6116
  %7336 = fadd fast float %7333, %7332
  %7337 = fadd fast float %7334, %7332
  %7338 = fadd fast float %7335, %7332
  br i1 %6405, label %7339, label %7362

; <label>:7339                                    ; preds = %7324
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5465, float %7215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = extractvalue %dx.types.ResRet.f32 %7340, 1
  %7343 = extractvalue %dx.types.ResRet.f32 %7340, 2
  %7344 = fadd fast float %7341, -5.000000e-01
  %7345 = fadd fast float %7342, -5.000000e-01
  %7346 = fadd fast float %7343, -5.000000e-01
  %7347 = fmul fast float %6101, 4.000000e+00
  %7348 = fmul fast float %7347, %7292
  %7349 = fmul fast float %7348, %7344
  %7350 = fmul fast float %6102, 4.000000e+00
  %7351 = fmul fast float %7350, %7293
  %7352 = fmul fast float %7351, %7345
  %7353 = fmul fast float %6116, 4.000000e+00
  %7354 = fmul fast float %7353, %7294
  %7355 = fmul fast float %7354, %7346
  %7356 = fadd fast float %7349, %7336
  %7357 = fadd fast float %7352, %7337
  %7358 = fadd fast float %7355, %7338
  %7359 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7360 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7361 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  br label %7362

; <label>:7362                                    ; preds = %7339, %7324
  %7363 = phi float [ %7359, %7339 ], [ %7336, %7324 ]
  %7364 = phi float [ %7360, %7339 ], [ %7337, %7324 ]
  %7365 = phi float [ %7361, %7339 ], [ %7338, %7324 ]
  %7366 = call float @dx.op.binary.f32(i32 35, float %7364, float %7365)  ; FMax(a,b)
  %7367 = call float @dx.op.binary.f32(i32 35, float %7363, float %7366)  ; FMax(a,b)
  %7368 = fsub fast float 1.000000e+00, %7367
  %7369 = fmul fast float %7325, %7283
  %7370 = fmul fast float %7326, %7283
  %7371 = fmul fast float %7327, %7283
  %7372 = call float @dx.op.dot3.f32(i32 55, float %6098, float %6099, float %6100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7373 = fcmp fast ogt float %7372, 0x3E7FF19E20000000
  %7374 = fdiv fast float 1.000000e+00, %7372
  %7375 = select i1 %7373, float %7374, float 0.000000e+00
  %7376 = fmul fast float %7375, %6098
  %7377 = fmul fast float %7375, %6099
  %7378 = fmul fast float %7375, %6100
  %7379 = fadd fast float %7376, -1.000000e+00
  %7380 = fadd fast float %7377, -1.000000e+00
  %7381 = fadd fast float %7378, -1.000000e+00
  %7382 = fmul fast float %7379, 5.000000e-01
  %7383 = fmul fast float %7380, 5.000000e-01
  %7384 = fmul fast float %7381, 5.000000e-01
  %7385 = fadd fast float %7382, 1.000000e+00
  %7386 = fadd fast float %7383, 1.000000e+00
  %7387 = fadd fast float %7384, 1.000000e+00
  %7388 = fsub fast float 1.000000e+00, %7216
  %7389 = bitcast float %7388 to i32
  %7390 = sitofp i32 %7389 to float
  %7391 = fmul fast float %7390, 5.000000e+00
  %7392 = fadd fast float %7391, 0xC1EFBF8940000000
  %7393 = fptosi float %7392 to i32
  %7394 = bitcast i32 %7393 to float
  %7395 = fmul fast float %7394, %5466
  %7396 = fmul fast float %7368, %7395
  %7397 = fmul fast float %7396, %7385
  %7398 = fmul fast float %7396, %7386
  %7399 = fmul fast float %7396, %7387
  %7400 = fsub fast float 1.000000e+00, %5462
  %7401 = fadd fast float %7397, %7369
  %7402 = fadd fast float %7398, %7370
  %7403 = fadd fast float %7399, %7371
  %7404 = fmul fast float %6098, %5462
  %7405 = fmul fast float %7404, %7222
  %7406 = fmul fast float %7405, %7368
  %7407 = fmul fast float %6099, %5462
  %7408 = fmul fast float %7407, %7222
  %7409 = fmul fast float %7408, %7368
  %7410 = fmul fast float %6100, %5462
  %7411 = fmul fast float %7410, %7222
  %7412 = fmul fast float %7411, %7368
  %7413 = fmul fast float %7222, %5462
  %7414 = fmul fast float %7413, %7401
  %7415 = fmul fast float %7413, %7402
  %7416 = fmul fast float %7413, %7403
  %7417 = call float @dx.op.dot3.f32(i32 55, float %7081, float %7082, float %7083, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7419 = fmul fast float %7418, %7088
  %7420 = fmul fast float %7418, %7418
  %7421 = fmul fast float %7420, %6130
  %7422 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7423 = fmul fast float %7419, %7422
  %7424 = fmul fast float %7400, %7400
  %7425 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %7235, float %7236, float %7237)  ; Dot3(ax,ay,az,bx,by,bz)
  %7426 = fmul fast float %7425, %7425
  %7427 = call float @dx.op.unary.f32(i32 6, float %7417)  ; FAbs(value)
  %7428 = fsub fast float 1.000000e+00, %5490
  %7429 = call float @dx.op.binary.f32(i32 35, float %7428, float 0x3F847AE140000000)  ; FMax(a,b)
  %7430 = fmul fast float %7429, %7429
  %7431 = fmul fast float %7430, %7430
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %6111, %6111
  %7434 = fmul fast float %7433, %7432
  %7435 = fadd fast float %7434, %7431
  %7436 = bitcast float %7435 to i32
  %7437 = ashr i32 %7436, 1
  %7438 = add nsw i32 %7437, 532487669
  %7439 = bitcast i32 %7438 to float
  %7440 = fadd fast float %7439, %6111
  %7441 = fmul fast float %7431, %7426
  %7442 = fsub fast float 1.000000e+00, %7426
  %7443 = fadd fast float %7442, %7441
  %7444 = fmul fast float %7427, %7427
  %7445 = fmul fast float %7444, %7432
  %7446 = fadd fast float %7445, %7431
  %7447 = bitcast float %7446 to i32
  %7448 = ashr i32 %7447, 1
  %7449 = add nsw i32 %7448, 532487669
  %7450 = bitcast i32 %7449 to float
  %7451 = fadd fast float %7450, %7427
  %7452 = fmul fast float %7443, %7443
  %7453 = fmul fast float %7452, %7440
  %7454 = fmul fast float %7453, %7451
  %7455 = fdiv fast float 1.000000e+00, %7454
  %7456 = bitcast float %7431 to i32
  %7457 = sitofp i32 %7456 to float
  %7458 = fmul fast float %7457, 0x3FE7F73180000000
  %7459 = fadd fast float %7458, 0x41AFE27C40000000
  %7460 = fptosi float %7459 to i32
  %7461 = bitcast i32 %7460 to float
  %7462 = fadd fast float %7461, %7276
  %7463 = bitcast float %7462 to i32
  %7464 = sub nsw i32 2129859010, %7463
  %7465 = bitcast i32 %7464 to float
  %7466 = fmul fast float %7431, %7455
  %7467 = fmul fast float %7466, %7461
  %7468 = fmul fast float %7467, %7465
  %7469 = fsub fast float 1.000000e+00, %5487
  %7470 = fsub fast float 1.000000e+00, %5488
  %7471 = fsub fast float 1.000000e+00, %6109
  %7472 = fmul fast float %7291, %7469
  %7473 = fmul fast float %7291, %7470
  %7474 = fmul fast float %7291, %7471
  %7475 = fadd fast float %7472, %5487
  %7476 = fadd fast float %7473, %5488
  %7477 = fadd fast float %7474, %6109
  %7478 = fmul fast float %7417, 9.843750e-01
  %7479 = fadd fast float %7478, 7.812500e-03
  %7480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %7479, float %6446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 3
  %7483 = fmul fast float %7481, %5487
  %7484 = fmul fast float %7481, %5488
  %7485 = fmul fast float %7481, %6109
  %7486 = fadd fast float %7483, %7482
  %7487 = fadd fast float %7484, %7482
  %7488 = fadd fast float %7485, %7482
  %7489 = call float @dx.op.binary.f32(i32 35, float %7487, float %7488)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float %7486, float %7489)  ; FMax(a,b)
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = fmul fast float %7424, %3206
  %7493 = fmul fast float %7492, %5502
  %7494 = fmul fast float %7493, %7423
  %7495 = fmul fast float %7494, %7491
  %7496 = fmul fast float %7492, %5503
  %7497 = fmul fast float %7496, %7423
  %7498 = fmul fast float %7497, %7491
  %7499 = fmul fast float %7492, %5504
  %7500 = fmul fast float %7499, %7423
  %7501 = fmul fast float %7500, %7491
  %7502 = fadd fast float %7495, %7406
  %7503 = fmul fast float %7502, %7204
  %7504 = fadd fast float %7503, %7043
  %7505 = fadd fast float %7498, %7409
  %7506 = fmul fast float %7505, %7205
  %7507 = fadd fast float %7506, %7044
  %7508 = fadd fast float %7501, %7412
  %7509 = fmul fast float %7508, %7206
  %7510 = fadd fast float %7509, %7045
  %7511 = fmul fast float %7492, %7423
  %7512 = fmul fast float %7511, %7475
  %7513 = fmul fast float %7512, %7468
  %7514 = fmul fast float %7511, %7476
  %7515 = fmul fast float %7514, %7468
  %7516 = fmul fast float %7511, %7477
  %7517 = fmul fast float %7516, %7468
  %7518 = fadd fast float %7513, %7414
  %7519 = fmul fast float %7518, %7204
  %7520 = fadd fast float %7519, %7040
  %7521 = fadd fast float %7515, %7415
  %7522 = fmul fast float %7521, %7205
  %7523 = fadd fast float %7522, %7041
  %7524 = fadd fast float %7517, %7416
  %7525 = fmul fast float %7524, %7206
  %7526 = fadd fast float %7525, %7042
  br label %7118

; <label>:7527                                    ; preds = %7118
  br label %7528

; <label>:7528                                    ; preds = %7527, %7006
  %7529 = phi float [ %7008, %7006 ], [ %7119, %7527 ]
  %7530 = phi float [ %7009, %7006 ], [ %7120, %7527 ]
  %7531 = phi float [ %7010, %7006 ], [ %7121, %7527 ]
  %7532 = phi float [ %7011, %7006 ], [ %7122, %7527 ]
  %7533 = phi float [ %7012, %7006 ], [ %7123, %7527 ]
  %7534 = phi float [ %7013, %7006 ], [ %7124, %7527 ]
  %7535 = add i32 %7007, 1
  %7536 = icmp ugt i32 %7535, %7003
  br i1 %7536, label %7537, label %7006

; <label>:7537                                    ; preds = %7528
  br label %7538

; <label>:7538                                    ; preds = %7537, %6982, %6972
  %7539 = phi float [ %6973, %6972 ], [ %6973, %6982 ], [ %7529, %7537 ]
  %7540 = phi float [ %6974, %6972 ], [ %6974, %6982 ], [ %7530, %7537 ]
  %7541 = phi float [ %6975, %6972 ], [ %6975, %6982 ], [ %7531, %7537 ]
  %7542 = phi float [ %6976, %6972 ], [ %6976, %6982 ], [ %7532, %7537 ]
  %7543 = phi float [ %6977, %6972 ], [ %6977, %6982 ], [ %7533, %7537 ]
  %7544 = phi float [ %6978, %6972 ], [ %6978, %6982 ], [ %7534, %7537 ]
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 0
  br i1 %192, label %7547, label %7568

; <label>:7547                                    ; preds = %7538
  %7548 = fadd fast float %7544, %5467
  %7549 = fmul fast float %7548, %5468
  %7550 = fsub fast float 1.000000e+00, %5468
  %7551 = call float @dx.op.unary.f32(i32 7, float %7550)  ; Saturate(value)
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 3
  %7554 = fmul fast float %7553, %7551
  %7555 = fadd fast float %7554, %7549
  %7556 = fsub fast float 1.000000e+00, %6111
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = fmul fast float %7558, %7556
  %7560 = fsub fast float %7555, %7559
  %7561 = fadd fast float %7543, %7542
  %7562 = fmul fast float %7546, %7561
  %7563 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7564 = fsub fast float %7560, %7563
  %7565 = extractvalue %dx.types.CBufRet.f32 %7552, 2
  %7566 = fmul fast float %7564, %7565
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  br label %7583

; <label>:7568                                    ; preds = %7538
  %7569 = fmul fast float %7546, %7542
  %7570 = fmul fast float %7546, %7543
  %7571 = fmul fast float %7546, %7544
  %7572 = add i32 %35, 356
  %7573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %7572, i32 undef)  ; BufferLoad(srv,index,wot)
  %7574 = extractvalue %dx.types.ResRet.i32 %7573, 0
  %7575 = and i32 %7574, 32
  %7576 = icmp eq i32 %7575, 0
  br i1 %7576, label %7583, label %7577

; <label>:7577                                    ; preds = %7568
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 0
  %7580 = fmul fast float %7579, 0x3FE99999A0000000
  %7581 = fadd fast float %7579, %7569
  %7582 = fadd fast float %7580, %7571
  br label %7583

; <label>:7583                                    ; preds = %7577, %7568, %7547
  %7584 = phi float [ %7562, %7547 ], [ %7581, %7577 ], [ %7569, %7568 ]
  %7585 = phi float [ %7567, %7547 ], [ %7570, %7577 ], [ %7570, %7568 ]
  %7586 = phi float [ 1.000000e+00, %7547 ], [ %7582, %7577 ], [ %7571, %7568 ]
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = fmul fast float %7588, %7540
  %7590 = fmul fast float %7588, %7541
  %7591 = fadd fast float %7540, %7539
  %7592 = select i1 %192, float %7591, float %7539
  %7593 = fmul float %7592, %7588
  %7594 = select i1 %192, float 0.000000e+00, float %7589
  %7595 = select i1 %192, float 0.000000e+00, float %7590
  %7596 = fadd fast float %7593, %7584
  %7597 = fadd fast float %7594, %7585
  %7598 = fadd fast float %7595, %7586
  %7599 = select i1 %192, float %7585, float %7597
  %7600 = select i1 %192, float %7586, float %7598
  %7601 = call float @dx.op.binary.f32(i32 36, float %7596, float 3.225500e+04)  ; FMin(a,b)
  %7602 = call float @dx.op.binary.f32(i32 36, float %7599, float 3.225500e+04)  ; FMin(a,b)
  %7603 = call float @dx.op.binary.f32(i32 36, float %7600, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7603)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !74}
!49 = !{!50, !72, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!55 = !{i32 3, i32 14}
!56 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!63 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, !61}
!65 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 8, i8 0, !57}
!66 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!67 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 10, i8 0, !68}
!68 = !{i32 3, i32 13}
!69 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 11, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!74 = !{i32 0, i64 24}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !82, !83, !85}
!80 = distinct !{!80, !81, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y01$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z: %lightingOutput"}
!81 = distinct !{!81, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y01$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z"}
!82 = distinct !{!82, !81, !"\01?LightingModel_ApplySecondaryLighting@@YAXULocalAttributes@@Y01$$CBUSurfaceAttributes@@USecondaryLighting@@ULightIteratorOutput_PhysicallyBased@@AIAV?$vector@M$02@@@Z: %outRayTransmittance"}
!83 = distinct !{!83, !84, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y01$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!84 = distinct !{!84, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y01$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!85 = distinct !{!85, !86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!86 = distinct !{!86, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}

